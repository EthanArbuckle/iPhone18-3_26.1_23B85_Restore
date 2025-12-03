@interface LNFetchOptionsDefaultValueConnectionOperation
- (LNFetchOptionsDefaultValueConnectionOperation)initWithConnectionInterface:(id)interface action:(id)action queue:(id)queue completionHandler:(id)handler;
- (void)finishWithError:(id)error;
- (void)start;
@end

@implementation LNFetchOptionsDefaultValueConnectionOperation

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(LNFetchOptionsDefaultValueConnectionOperation *)self completionHandler];

  if (completionHandler)
  {
    result = [(LNFetchOptionsDefaultValueConnectionOperation *)self result];
    v7 = [(LNConnectionOperation *)self validatingResult:result error:errorCopy];

    completionHandler2 = [(LNFetchOptionsDefaultValueConnectionOperation *)self completionHandler];
    result2 = [(LNFetchOptionsDefaultValueConnectionOperation *)self result];
    (completionHandler2)[2](completionHandler2, result2, v7);

    [(LNFetchOptionsDefaultValueConnectionOperation *)self setCompletionHandler:0];
    errorCopy = v7;
  }

  v10.receiver = self;
  v10.super_class = LNFetchOptionsDefaultValueConnectionOperation;
  [(LNConnectionOperation *)&v10 finishWithError:errorCopy];
}

- (void)start
{
  v13 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = LNFetchOptionsDefaultValueConnectionOperation;
  [(LNConnectionOperation *)&v10 start];
  v3 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    action = [(LNFetchOptionsDefaultValueConnectionOperation *)self action];
    identifier = [action identifier];
    *buf = 138412290;
    v12 = identifier;
    _os_log_impl(&dword_19763D000, v3, OS_LOG_TYPE_INFO, "Fetching options default values for action %@", buf, 0xCu);
  }

  connectionInterface = [(LNInterfaceConnectionOperation *)self connectionInterface];
  action2 = [(LNFetchOptionsDefaultValueConnectionOperation *)self action];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__LNFetchOptionsDefaultValueConnectionOperation_start__block_invoke;
  v9[3] = &unk_1E74B1958;
  v9[4] = self;
  [connectionInterface fetchOptionsDefaultValuesForAction:action2 completionHandler:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __54__LNFetchOptionsDefaultValueConnectionOperation_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  os_activity_scope_enter(v7, &v8);

  [*(a1 + 32) setResult:v5];
  [*(a1 + 32) finishWithError:v6];
  os_activity_scope_leave(&v8);
}

- (LNFetchOptionsDefaultValueConnectionOperation)initWithConnectionInterface:(id)interface action:(id)action queue:(id)queue completionHandler:(id)handler
{
  interfaceCopy = interface;
  actionCopy = action;
  queueCopy = queue;
  handlerCopy = handler;
  v15 = handlerCopy;
  if (actionCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNFetchOptionsDefaultValueConnectionOperation.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"action"}];

    if (v15)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNFetchOptionsDefaultValueConnectionOperation.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v26.receiver = self;
  v26.super_class = LNFetchOptionsDefaultValueConnectionOperation;
  v17 = [(LNInterfaceConnectionOperation *)&v26 initWithIdentifier:uUID connectionInterface:interfaceCopy priority:1 queue:queueCopy activity:&__block_literal_global_10078];

  if (v17)
  {
    v18 = [actionCopy copy];
    action = v17->_action;
    v17->_action = v18;

    v20 = [v15 copy];
    completionHandler = v17->_completionHandler;
    v17->_completionHandler = v20;

    v22 = v17;
  }

  return v17;
}

os_activity_t __108__LNFetchOptionsDefaultValueConnectionOperation_initWithConnectionInterface_action_queue_completionHandler___block_invoke()
{
  v0 = _os_activity_create(&dword_19763D000, "appintents:fetch options default", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v0;
}

@end