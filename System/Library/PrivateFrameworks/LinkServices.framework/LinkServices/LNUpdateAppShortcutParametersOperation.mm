@interface LNUpdateAppShortcutParametersOperation
- (LNUpdateAppShortcutParametersOperation)initWithConnectionInterface:(id)interface queue:(id)queue completionHandler:(id)handler;
- (void)finishWithError:(id)error;
- (void)start;
@end

@implementation LNUpdateAppShortcutParametersOperation

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(LNUpdateAppShortcutParametersOperation *)self completionHandler];

  if (completionHandler)
  {
    v6 = [(LNConnectionOperation *)self validatingResult:0 error:errorCopy];

    completionHandler2 = [(LNUpdateAppShortcutParametersOperation *)self completionHandler];
    completionHandler2[2](completionHandler2, v6);

    [(LNUpdateAppShortcutParametersOperation *)self setCompletionHandler:0];
    errorCopy = v6;
  }

  v8.receiver = self;
  v8.super_class = LNUpdateAppShortcutParametersOperation;
  [(LNConnectionOperation *)&v8 finishWithError:errorCopy];
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

  connectionInterface = [(LNInterfaceConnectionOperation *)self connectionInterface];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__LNUpdateAppShortcutParametersOperation_start__block_invoke;
  v5[3] = &unk_1E74B1B90;
  v5[4] = self;
  [connectionInterface updateAppShortcutParametersWithCompletionHandler:v5];
}

void __47__LNUpdateAppShortcutParametersOperation_start__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) activity];
  os_activity_scope_enter(v4, &v5);

  [*(a1 + 32) finishWithError:v3];
  os_activity_scope_leave(&v5);
}

- (LNUpdateAppShortcutParametersOperation)initWithConnectionInterface:(id)interface queue:(id)queue completionHandler:(id)handler
{
  interfaceCopy = interface;
  queueCopy = queue;
  handlerCopy = handler;
  v12 = handlerCopy;
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNUpdateAppShortcutParametersOperation.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNUpdateAppShortcutParametersOperation.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v21.receiver = self;
  v21.super_class = LNUpdateAppShortcutParametersOperation;
  v14 = [(LNInterfaceConnectionOperation *)&v21 initWithIdentifier:uUID connectionInterface:interfaceCopy priority:1 queue:queueCopy activity:&__block_literal_global_4225];

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