@interface LNFetchActionForAppShortcutIdentifierOperation
- (LNFetchActionForAppShortcutIdentifierOperation)initWithConnectionInterface:(id)interface appShortcutIdentifier:(id)identifier queue:(id)queue completionHandler:(id)handler;
- (void)finishWithError:(id)error;
- (void)start;
@end

@implementation LNFetchActionForAppShortcutIdentifierOperation

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(LNFetchActionForAppShortcutIdentifierOperation *)self completionHandler];

  if (completionHandler)
  {
    result = [(LNFetchActionForAppShortcutIdentifierOperation *)self result];
    v7 = [(LNConnectionOperation *)self validatingResult:result error:errorCopy];

    completionHandler2 = [(LNFetchActionForAppShortcutIdentifierOperation *)self completionHandler];
    result2 = [(LNFetchActionForAppShortcutIdentifierOperation *)self result];
    (completionHandler2)[2](completionHandler2, result2, v7);

    [(LNFetchActionForAppShortcutIdentifierOperation *)self setCompletionHandler:0];
    errorCopy = v7;
  }

  v10.receiver = self;
  v10.super_class = LNFetchActionForAppShortcutIdentifierOperation;
  [(LNConnectionOperation *)&v10 finishWithError:errorCopy];
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
    appShortcutIdentifier = [(LNFetchActionForAppShortcutIdentifierOperation *)self appShortcutIdentifier];
    *buf = 138412290;
    v11 = appShortcutIdentifier;
  }

  connectionInterface = [(LNInterfaceConnectionOperation *)self connectionInterface];
  appShortcutIdentifier2 = [(LNFetchActionForAppShortcutIdentifierOperation *)self appShortcutIdentifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__LNFetchActionForAppShortcutIdentifierOperation_start__block_invoke;
  v8[3] = &unk_1E74B1EC0;
  v8[4] = self;
  [connectionInterface fetchActionForAppShortcutIdentifier:appShortcutIdentifier2 completionHandler:v8];

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

- (LNFetchActionForAppShortcutIdentifierOperation)initWithConnectionInterface:(id)interface appShortcutIdentifier:(id)identifier queue:(id)queue completionHandler:(id)handler
{
  interfaceCopy = interface;
  identifierCopy = identifier;
  queueCopy = queue;
  handlerCopy = handler;
  if (interfaceCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNFetchActionForAppShortcutIdentifierOperation.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"appShortcutIdentifier"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNFetchActionForAppShortcutIdentifierOperation.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

  if (!identifierCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (handlerCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNFetchActionForAppShortcutIdentifierOperation.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v26.receiver = self;
  v26.super_class = LNFetchActionForAppShortcutIdentifierOperation;
  v16 = [(LNInterfaceConnectionOperation *)&v26 initWithIdentifier:uUID connectionInterface:interfaceCopy priority:1 queue:queueCopy activity:&__block_literal_global_11008];

  if (v16)
  {
    v17 = [identifierCopy copy];
    appShortcutIdentifier = v16->_appShortcutIdentifier;
    v16->_appShortcutIdentifier = v17;

    v19 = [handlerCopy copy];
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