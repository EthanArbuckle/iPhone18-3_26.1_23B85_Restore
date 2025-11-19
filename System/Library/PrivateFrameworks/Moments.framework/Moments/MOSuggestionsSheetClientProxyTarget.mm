@interface MOSuggestionsSheetClientProxyTarget
- (MOSuggestionsSheetClientProxyTarget)initWithController:(id)a3;
- (void)didGrantSandboxAccessFor:(id)a3;
- (void)didReceiveStateUpdateRequest:(id)a3;
- (void)performTask:(id)a3 suggestion:(id)a4;
- (void)sheetCancelled;
- (void)showBlankComposeView;
@end

@implementation MOSuggestionsSheetClientProxyTarget

- (MOSuggestionsSheetClientProxyTarget)initWithController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MOSuggestionsSheetClientProxyTarget;
  v6 = [(MOSuggestionsSheetClientProxyTarget *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, a3);
  }

  return v7;
}

- (void)sheetCancelled
{
  v3 = [(MOSuggestionSheetController *)self->_controller delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MOSuggestionSheetController *)self->_controller delegate];
    [v5 suggestionSheetControllerDidCancel:self->_controller];
  }
}

- (void)showBlankComposeView
{
  v3 = [(MOSuggestionSheetController *)self->_controller delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MOSuggestionSheetController *)self->_controller delegate];
    [v5 suggestionSheetControllerShouldShowBlankComposeView:self->_controller];
  }
}

- (void)didReceiveStateUpdateRequest:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = [v4 intValue];
    _os_log_impl(&dword_22D8C5000, v5, OS_LOG_TYPE_DEFAULT, "client proxy callback, transitioned to state=%d", v11, 8u);
  }

  v6 = [(MOSuggestionSheetController *)self->_controller delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    if (([v4 intValue] & 0x80000000) != 0)
    {
      v8 = 0;
    }

    else
    {
      v8 = [v4 unsignedIntValue];
    }

    v9 = [(MOSuggestionSheetController *)self->_controller delegate];
    [v9 suggestionSheetController:self->_controller didTransitionTo:v8];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)performTask:(id)a3 suggestion:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109120;
    v14[1] = [v6 intValue];
    _os_log_impl(&dword_22D8C5000, v8, OS_LOG_TYPE_DEFAULT, "client proxy callback, requested task=%d", v14, 8u);
  }

  v9 = [(MOSuggestionSheetController *)self->_controller delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [v6 unsignedIntValue];
    v12 = [(MOSuggestionSheetController *)self->_controller delegate];
    [v12 suggestionSheetController:self->_controller shouldPerformTask:v11 forSuggestion:v7];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)didGrantSandboxAccessFor:(id)a3
{
  v5 = a3;
  [a3 UTF8String];
  v6 = sandbox_extension_consume();
  if (v6 != -1)
  {
    controller = self->_controller;
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:v6];
    [(MOSuggestionSheetController *)controller addSandboxHandle:v8];
  }
}

@end