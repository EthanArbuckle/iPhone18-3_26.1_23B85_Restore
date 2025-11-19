@interface LNFetchAppShortcutParametersConnectionOperation
- (LNFetchAppShortcutParametersConnectionOperation)initWithConnectionInterface:(id)a3 queue:(id)a4 appShortcutProviderMangledName:(id)a5 completionHandler:(id)a6;
- (void)finishWithError:(id)a3;
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

  v4 = [(LNInterfaceConnectionOperation *)self connectionInterface];
  v5 = [(LNFetchAppShortcutParametersConnectionOperation *)self appShortcutProviderMangledName];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__LNFetchAppShortcutParametersConnectionOperation_start__block_invoke;
  v6[3] = &unk_1E74B28B8;
  v6[4] = self;
  [v4 fetchAppShortcutParametersForMangledName:v5 withCompletionHandler:v6];
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

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v5 = [(LNFetchAppShortcutParametersConnectionOperation *)self completionHandler];

  if (v5)
  {
    v6 = [(LNFetchAppShortcutParametersConnectionOperation *)self appShortcutSubstitutions];
    v7 = [(LNConnectionOperation *)self validatingResult:v6 error:v4];

    v8 = [(LNFetchAppShortcutParametersConnectionOperation *)self completionHandler];
    v9 = [(LNFetchAppShortcutParametersConnectionOperation *)self appShortcutSubstitutions];
    v10 = [(LNFetchAppShortcutParametersConnectionOperation *)self spans];
    v11 = [(LNFetchAppShortcutParametersConnectionOperation *)self parameterPresentationSubstitutions];
    (v8)[2](v8, v9, v10, v11, v7);

    [(LNFetchAppShortcutParametersConnectionOperation *)self setCompletionHandler:0];
    v4 = v7;
  }

  v12.receiver = self;
  v12.super_class = LNFetchAppShortcutParametersConnectionOperation;
  [(LNConnectionOperation *)&v12 finishWithError:v4];
}

- (LNFetchAppShortcutParametersConnectionOperation)initWithConnectionInterface:(id)a3 queue:(id)a4 appShortcutProviderMangledName:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  if (v11)
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"LNFetchAppShortcutParametersConnectionOperation.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

    if (v15)
    {
      goto LABEL_3;
    }
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"LNFetchAppShortcutParametersConnectionOperation.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v16 = [MEMORY[0x1E696AFB0] UUID];
  v24.receiver = self;
  v24.super_class = LNFetchAppShortcutParametersConnectionOperation;
  v17 = [(LNInterfaceConnectionOperation *)&v24 initWithIdentifier:v16 connectionInterface:v11 priority:1 queue:v12 activity:&__block_literal_global_15115];

  if (v17)
  {
    objc_storeStrong(&v17->_appShortcutProviderMangledName, a5);
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