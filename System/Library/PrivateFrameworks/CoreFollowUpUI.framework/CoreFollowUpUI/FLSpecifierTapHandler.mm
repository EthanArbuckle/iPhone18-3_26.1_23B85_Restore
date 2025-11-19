@interface FLSpecifierTapHandler
- (FLSpecifierTapHandlerDelegate)delegate;
- (id)description;
- (void)_handleActionForItem:(id)a3 fromSpecifier:(id)a4 eventSource:(unint64_t)a5 withCompletionHandler:(id)a6;
- (void)actionTapped:(id)a3 eventSource:(unint64_t)a4 withCompletionHandler:(id)a5;
- (void)dealloc;
@end

@implementation FLSpecifierTapHandler

- (void)actionTapped:(id)a3 eventSource:(unint64_t)a4 withCompletionHandler:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = _FLLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v8;
    _os_log_impl(&dword_245383000, v10, OS_LOG_TYPE_DEFAULT, "Handling specifier %@", buf, 0xCu);
  }

  [v8 fl_startSpinner];
  v11 = [v8 propertyForKey:*MEMORY[0x277CFE418]];
  v12 = [MEMORY[0x277CFE530] sharedTelemetryController];
  [v12 captureActionForItem:v11 withEvent:2 source:4];

  v13 = [(FLSpecifierTapHandler *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v11 groupIdentifier], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", *MEMORY[0x277CFE430]), v14, v15))
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __72__FLSpecifierTapHandler_actionTapped_eventSource_withCompletionHandler___block_invoke;
    v17[3] = &unk_278E35EF8;
    v17[4] = self;
    v18 = v11;
    v19 = v8;
    v21 = a4;
    v20 = v9;
    [v13 preflightNetworkConnectivityForHandler:self withCompletionHandler:v17];
  }

  else
  {
    [(FLSpecifierTapHandler *)self _handleActionForItem:v11 fromSpecifier:v8 eventSource:a4 withCompletionHandler:v9];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __72__FLSpecifierTapHandler_actionTapped_eventSource_withCompletionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) _handleActionForItem:*(a1 + 40) fromSpecifier:*(a1 + 48) eventSource:*(a1 + 64) withCompletionHandler:*(a1 + 56)];
  }

  else
  {
    [*(a1 + 48) fl_stopSpinner];
    (*(*(a1 + 56) + 16))();
  }
}

- (void)_handleActionForItem:(id)a3 fromSpecifier:(id)a4 eventSource:(unint64_t)a5 withCompletionHandler:(id)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__2;
  v33 = __Block_byref_object_dispose__2;
  v34 = [(FLHeadlessActionHandler *)FLFollowUpActionHandler handlerWithItem:v10];
  v13 = _FLLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v30[5];
    *buf = 138412290;
    v36 = v14;
    _os_log_impl(&dword_245383000, v13, OS_LOG_TYPE_DEFAULT, "Handling item with handler: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v15 = v30[5];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __94__FLSpecifierTapHandler__handleActionForItem_fromSpecifier_eventSource_withCompletionHandler___block_invoke;
  v26[3] = &unk_278E35F20;
  objc_copyWeak(&v28, buf);
  v16 = v10;
  v27 = v16;
  [v15 setExtensionRequestedViewControllerPresentation:v26];
  v17 = [v11 propertyForKey:*MEMORY[0x277CFE410]];
  [v17 setEventSource:a5];
  v18 = v30[5];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __94__FLSpecifierTapHandler__handleActionForItem_fromSpecifier_eventSource_withCompletionHandler___block_invoke_2;
  v22[3] = &unk_278E35F48;
  v19 = v11;
  v23 = v19;
  v25 = &v29;
  v20 = v12;
  v24 = v20;
  [v18 handleAction:v17 completion:v22];

  objc_destroyWeak(&v28);
  objc_destroyWeak(buf);
  _Block_object_dispose(&v29, 8);

  v21 = *MEMORY[0x277D85DE8];
}

void __94__FLSpecifierTapHandler__handleActionForItem_fromSpecifier_eventSource_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = [*(a1 + 32) userInfo];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CFE4C8]];

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v5 BOOLValue])
    {
      v6 = 1;
    }

    else
    {
      [v8 setModalPresentationStyle:5];
      v6 = 0;
    }

    v7 = [WeakRetained delegate];
    [v7 startPresentingForHandler:WeakRetained withRemoteController:v8 customPresentationStyle:v6];
  }
}

void __94__FLSpecifierTapHandler__handleActionForItem_fromSpecifier_eventSource_withCompletionHandler___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[4];
  v7 = a3;
  [v4 fl_stopSpinner];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  (*(a1[5] + 16))();
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() description];
  v5 = [v3 stringWithFormat:@"<%@: %p>", v4, self];

  return v5;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _FLLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = self;
    _os_log_impl(&dword_245383000, v3, OS_LOG_TYPE_DEFAULT, "%@ going away", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = FLSpecifierTapHandler;
  [(FLSpecifierTapHandler *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (FLSpecifierTapHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end