class FormsController < ApplicationController
  def index
    @form_sections = Form.all
  end

  def bulk_update
    StandardFormsService.persist params[:default_forms]
    redirect_to forms_path
  end
end
