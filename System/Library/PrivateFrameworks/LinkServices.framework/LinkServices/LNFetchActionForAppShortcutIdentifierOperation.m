@interface LNFetchActionForAppShortcutIdentifierOperation
- (LNFetchActionForAppShortcutIdentifierOperation)initWithConnectionInterface:(id)a3 appShortcutIdentifier:(id)a4 queue:(id)a5 completionHandler:(id)a6;
- (void)finishWithError:(id)a3;
- (void)start;
@end

@implementation LNFetchActionForAppShortcutIdentifierOperation

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v5 = [(LNFetchActionForAppShortcutIdentifierOperation *)self completionHandler];

  if (v5)
  {
    v6 = [(LNFetchActionForAppShortcutIdentifierOperation *)self result];
    v7 = [(LNConnectionOperation *)self validatingResult:v6 error:v4];

    v8 = [(LNFetchActionForAppShortcutIdentifierOperation *)self completionHandler];
    v9 = [(LNFetchActionForAppShortcutIdentifierOperation *)self result];
    (v8)[2](v8, v9, v7);

    [(LNFetchActionForAppShortcutIdentifierOperation *)self setCompletionHandler:0];
    v4 = v7;
  }

  v10.receiver = self;
  v10.super_class = LNFetchActionForAppShortcutIdentifierOperation;
  [(LNConnectionOperation *)&v10 finishWithError:v4];
}

- (void)start
{
  v12 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = LNFetchActionForAppShortcutIdentifierOperation;
  [(LNConnectionOperation *)&v9 start];
  v3 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(LNFetchActionForAppShortcutIdentifierOperation *)self appShortcutIdentifier];
    *buf = 138412290;
    v11 = v4;
  }

  v5 = [(LNInterfaceConnectionOperation *)self connectionInterface];
  v6 = [(LNFetchActionForAppShortcutIdentifierOperation *)self appShortcutIdentifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__LNFetchActionForAppShortcutIdentifierOperation_start__block_invoke;
  v8[3] = &unk_1E74B1EC0;
  v8[4] = self;
  [v5 fetchActionForAppShortcutIdentifier:v6 completionHandler:v8];

  v7 = *MEMORY[0x1E69E9840];
}

void __55__LNFetchActionForAppShortcutIdentifierOperation_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  os_activity_scope_enter(v7, &v8);

  [*(a1 + 32) setResult:v5];
  [*(a1 + 32) finishWithError:v6];
  os_activity_scope_leave(&v8);
}

- (LNFetchActionForAppShortcutIdentifierOperation)initWithConnectionInterface:(id)a3 appShortcutIdentifier:(id)a4 queue:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_8:
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"LNFetchActionForAppShortcutIdentifierOperation.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"appShortcutIdentifier"}];

    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"LNFetchActionForAppShortcutIdentifierOperation.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v14)
  {
    goto LABEL_4;
  }

LABEL_9:
  v25 = [MEMORY[0x1E696AAA8] currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"LNFetchActionForAppShortcutIdentifierOperation.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  v15 = [MEMORY[0x1E696AFB0] UUID];
  v26.receiver = self;
  v26.super_class = LNFetchActionForAppShortcutIdentifierOperation;
  v16 = [(LNInterfaceConnectionOperation *)&v26 initWithIdentifier:v15 connectionInterface:v11 priority:1 queue:v13 activity:&__block_literal_global_11008];

  if (v16)
  {
    v17 = [v12 copy];
    appShortcutIdentifier = v16->_appShortcutIdentifier;
    v16->_appShortcutIdentifier = v17;

    v19 = [v14 copy];
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v19;

    v21 = v16;
  }

  return v16;
}

os_activity_t __124__LNFetchActionForAppShortcutIdentifierOperation_initWithConnectionInterface_appShortcutIdentifier_queue_completionHandler___block_invoke()
{
  v0 = _os_activity_create(&dword_19763D000, "appintents:fetch action for appshortcut identifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v0;
}

@end