@interface MOSuggestionsSheetClientProxyTarget
- (MOSuggestionsSheetClientProxyTarget)initWithController:(id)controller;
- (void)didGrantSandboxAccessFor:(id)for;
- (void)didReceiveStateUpdateRequest:(id)request;
- (void)performTask:(id)task suggestion:(id)suggestion;
- (void)sheetCancelled;
- (void)showBlankComposeView;
@end

@implementation MOSuggestionsSheetClientProxyTarget

- (MOSuggestionsSheetClientProxyTarget)initWithController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = MOSuggestionsSheetClientProxyTarget;
  v6 = [(MOSuggestionsSheetClientProxyTarget *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, controller);
  }

  return v7;
}

- (void)sheetCancelled
{
  delegate = [(MOSuggestionSheetController *)self->_controller delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MOSuggestionSheetController *)self->_controller delegate];
    [delegate2 suggestionSheetControllerDidCancel:self->_controller];
  }
}

- (void)showBlankComposeView
{
  delegate = [(MOSuggestionSheetController *)self->_controller delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MOSuggestionSheetController *)self->_controller delegate];
    [delegate2 suggestionSheetControllerShouldShowBlankComposeView:self->_controller];
  }
}

- (void)didReceiveStateUpdateRequest:(id)request
{
  v12 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = [requestCopy intValue];
    _os_log_impl(&dword_22D8C5000, v5, OS_LOG_TYPE_DEFAULT, "client proxy callback, transitioned to state=%d", v11, 8u);
  }

  delegate = [(MOSuggestionSheetController *)self->_controller delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    if (([requestCopy intValue] & 0x80000000) != 0)
    {
      unsignedIntValue = 0;
    }

    else
    {
      unsignedIntValue = [requestCopy unsignedIntValue];
    }

    delegate2 = [(MOSuggestionSheetController *)self->_controller delegate];
    [delegate2 suggestionSheetController:self->_controller didTransitionTo:unsignedIntValue];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)performTask:(id)task suggestion:(id)suggestion
{
  v15 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  suggestionCopy = suggestion;
  v8 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109120;
    v14[1] = [taskCopy intValue];
    _os_log_impl(&dword_22D8C5000, v8, OS_LOG_TYPE_DEFAULT, "client proxy callback, requested task=%d", v14, 8u);
  }

  delegate = [(MOSuggestionSheetController *)self->_controller delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    unsignedIntValue = [taskCopy unsignedIntValue];
    delegate2 = [(MOSuggestionSheetController *)self->_controller delegate];
    [delegate2 suggestionSheetController:self->_controller shouldPerformTask:unsignedIntValue forSuggestion:suggestionCopy];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)didGrantSandboxAccessFor:(id)for
{
  forCopy = for;
  [for UTF8String];
  v6 = sandbox_extension_consume();
  if (v6 != -1)
  {
    controller = self->_controller;
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:v6];
    [(MOSuggestionSheetController *)controller addSandboxHandle:v8];
  }
}

@end