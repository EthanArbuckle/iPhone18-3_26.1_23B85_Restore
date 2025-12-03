@interface LNFetchAppShortcutParametersConnectionOperation
- (LNFetchAppShortcutParametersConnectionOperation)initWithConnectionInterface:(id)interface queue:(id)queue appShortcutProviderMangledName:(id)name completionHandler:(id)handler;
- (void)finishWithError:(id)error;
- (void)start;
@end

@implementation LNFetchAppShortcutParametersConnectionOperation

- (void)start
{
  v8.receiver = self;
  v8.super_class = LNFetchAppShortcutParametersConnectionOperation;
  [(LNConnectionOperation *)&v8 start];
  v3 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19763D000, v3, OS_LOG_TYPE_INFO, "Fetching AppShortcut parameters", buf, 2u);
  }

  connectionInterface = [(LNInterfaceConnectionOperation *)self connectionInterface];
  appShortcutProviderMangledName = [(LNFetchAppShortcutParametersConnectionOperation *)self appShortcutProviderMangledName];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__LNFetchAppShortcutParametersConnectionOperation_start__block_invoke;
  v6[3] = &unk_1E74B28B8;
  v6[4] = self;
  [connectionInterface fetchAppShortcutParametersForMangledName:appShortcutProviderMangledName withCompletionHandler:v6];
}

void __56__LNFetchAppShortcutParametersConnectionOperation_start__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [*(a1 + 32) activity];
  os_activity_scope_enter(v13, &v14);

  [*(a1 + 32) setAppShortcutSubstitutions:v9];
  [*(a1 + 32) setSpans:v10];
  [*(a1 + 32) setParameterPresentationSubstitutions:v11];
  [*(a1 + 32) finishWithError:v12];
  os_activity_scope_leave(&v14);
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(LNFetchAppShortcutParametersConnectionOperation *)self completionHandler];

  if (completionHandler)
  {
    appShortcutSubstitutions = [(LNFetchAppShortcutParametersConnectionOperation *)self appShortcutSubstitutions];
    v7 = [(LNConnectionOperation *)self validatingResult:appShortcutSubstitutions error:errorCopy];

    completionHandler2 = [(LNFetchAppShortcutParametersConnectionOperation *)self completionHandler];
    appShortcutSubstitutions2 = [(LNFetchAppShortcutParametersConnectionOperation *)self appShortcutSubstitutions];
    spans = [(LNFetchAppShortcutParametersConnectionOperation *)self spans];
    parameterPresentationSubstitutions = [(LNFetchAppShortcutParametersConnectionOperation *)self parameterPresentationSubstitutions];
    (completionHandler2)[2](completionHandler2, appShortcutSubstitutions2, spans, parameterPresentationSubstitutions, v7);

    [(LNFetchAppShortcutParametersConnectionOperation *)self setCompletionHandler:0];
    errorCopy = v7;
  }

  v12.receiver = self;
  v12.super_class = LNFetchAppShortcutParametersConnectionOperation;
  [(LNConnectionOperation *)&v12 finishWithError:errorCopy];
}

- (LNFetchAppShortcutParametersConnectionOperation)initWithConnectionInterface:(id)interface queue:(id)queue appShortcutProviderMangledName:(id)name completionHandler:(id)handler
{
  interfaceCopy = interface;
  queueCopy = queue;
  nameCopy = name;
  handlerCopy = handler;
  v15 = handlerCopy;
  if (interfaceCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNFetchAppShortcutParametersConnectionOperation.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

    if (v15)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNFetchAppShortcutParametersConnectionOperation.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v24.receiver = self;
  v24.super_class = LNFetchAppShortcutParametersConnectionOperation;
  v17 = [(LNInterfaceConnectionOperation *)&v24 initWithIdentifier:uUID connectionInterface:interfaceCopy priority:1 queue:queueCopy activity:&__block_literal_global_15115];

  if (v17)
  {
    objc_storeStrong(&v17->_appShortcutProviderMangledName, name);
    v18 = _Block_copy(v15);
    completionHandler = v17->_completionHandler;
    v17->_completionHandler = v18;

    v20 = v17;
  }

  return v17;
}

os_activity_t __134__LNFetchAppShortcutParametersConnectionOperation_initWithConnectionInterface_queue_appShortcutProviderMangledName_completionHandler___block_invoke()
{
  v0 = _os_activity_create(&dword_19763D000, "appintents:fetch AppShortcut parameters", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v0;
}

@end