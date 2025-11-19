@interface LNUpdateAppShortcutParametersOperation
- (LNUpdateAppShortcutParametersOperation)initWithConnectionInterface:(id)a3 queue:(id)a4 completionHandler:(id)a5;
- (void)finishWithError:(id)a3;
- (void)start;
@end

@implementation LNUpdateAppShortcutParametersOperation

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v5 = [(LNUpdateAppShortcutParametersOperation *)self completionHandler];

  if (v5)
  {
    v6 = [(LNConnectionOperation *)self validatingResult:0 error:v4];

    v7 = [(LNUpdateAppShortcutParametersOperation *)self completionHandler];
    v7[2](v7, v6);

    [(LNUpdateAppShortcutParametersOperation *)self setCompletionHandler:0];
    v4 = v6;
  }

  v8.receiver = self;
  v8.super_class = LNUpdateAppShortcutParametersOperation;
  [(LNConnectionOperation *)&v8 finishWithError:v4];
}

- (void)start
{
  v7.receiver = self;
  v7.super_class = LNUpdateAppShortcutParametersOperation;
  [(LNConnectionOperation *)&v7 start];
  v3 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19763D000, v3, OS_LOG_TYPE_INFO, "Updating App Shortcuts parameters", buf, 2u);
  }

  v4 = [(LNInterfaceConnectionOperation *)self connectionInterface];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__LNUpdateAppShortcutParametersOperation_start__block_invoke;
  v5[3] = &unk_1E74B1B90;
  v5[4] = self;
  [v4 updateAppShortcutParametersWithCompletionHandler:v5];
}

void __47__LNUpdateAppShortcutParametersOperation_start__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) activity];
  os_activity_scope_enter(v4, &v5);

  [*(a1 + 32) finishWithError:v3];
  os_activity_scope_leave(&v5);
}

- (LNUpdateAppShortcutParametersOperation)initWithConnectionInterface:(id)a3 queue:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v9)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"LNUpdateAppShortcutParametersOperation.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"LNUpdateAppShortcutParametersOperation.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v13 = [MEMORY[0x1E696AFB0] UUID];
  v21.receiver = self;
  v21.super_class = LNUpdateAppShortcutParametersOperation;
  v14 = [(LNInterfaceConnectionOperation *)&v21 initWithIdentifier:v13 connectionInterface:v9 priority:1 queue:v10 activity:&__block_literal_global_4225];

  if (v14)
  {
    v15 = _Block_copy(v12);
    completionHandler = v14->_completionHandler;
    v14->_completionHandler = v15;

    v17 = v14;
  }

  return v14;
}

os_activity_t __94__LNUpdateAppShortcutParametersOperation_initWithConnectionInterface_queue_completionHandler___block_invoke()
{
  v0 = _os_activity_create(&dword_19763D000, "appintents:update app shortcut parameters", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v0;
}

@end