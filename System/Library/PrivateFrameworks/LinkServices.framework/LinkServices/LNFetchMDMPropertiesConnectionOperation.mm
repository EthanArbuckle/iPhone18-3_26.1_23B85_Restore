@interface LNFetchMDMPropertiesConnectionOperation
- (LNFetchMDMPropertiesConnectionOperation)initWithConnectionInterface:(id)interface action:(id)action queue:(id)queue completionHandler:(id)handler;
- (void)finishWithError:(id)error;
- (void)start;
@end

@implementation LNFetchMDMPropertiesConnectionOperation

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(LNFetchMDMPropertiesConnectionOperation *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(LNFetchMDMPropertiesConnectionOperation *)self completionHandler];
    accountIdentifier = [(LNFetchMDMPropertiesConnectionOperation *)self accountIdentifier];
    (completionHandler2)[2](completionHandler2, accountIdentifier, errorCopy);

    [(LNFetchMDMPropertiesConnectionOperation *)self setCompletionHandler:0];
  }

  v8.receiver = self;
  v8.super_class = LNFetchMDMPropertiesConnectionOperation;
  [(LNConnectionOperation *)&v8 finishWithError:errorCopy];
}

- (void)start
{
  v12 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = LNFetchMDMPropertiesConnectionOperation;
  [(LNConnectionOperation *)&v9 start];
  v3 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    action = [(LNFetchMDMPropertiesConnectionOperation *)self action];
    *buf = 138412290;
    v11 = action;
    _os_log_impl(&dword_19763D000, v3, OS_LOG_TYPE_INFO, "Fetching MDM properties for action %@", buf, 0xCu);
  }

  connectionInterface = [(LNInterfaceConnectionOperation *)self connectionInterface];
  action2 = [(LNFetchMDMPropertiesConnectionOperation *)self action];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__LNFetchMDMPropertiesConnectionOperation_start__block_invoke;
  v8[3] = &unk_1E74B0BE8;
  v8[4] = self;
  [connectionInterface fetchDestinationMDMAccountIdentifierForAction:action2 completionHandler:v8];

  v7 = *MEMORY[0x1E69E9840];
}

void __48__LNFetchMDMPropertiesConnectionOperation_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  os_activity_scope_enter(v7, &v8);

  [*(a1 + 32) setAccountIdentifier:v5];
  [*(a1 + 32) finishWithError:v6];
  os_activity_scope_leave(&v8);
}

- (LNFetchMDMPropertiesConnectionOperation)initWithConnectionInterface:(id)interface action:(id)action queue:(id)queue completionHandler:(id)handler
{
  interfaceCopy = interface;
  actionCopy = action;
  queueCopy = queue;
  handlerCopy = handler;
  if (interfaceCopy)
  {
    if (actionCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNFetchMDMPropertiesConnectionOperation.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"action"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNFetchMDMPropertiesConnectionOperation.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

  if (!actionCopy)
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
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNFetchMDMPropertiesConnectionOperation.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v26.receiver = self;
  v26.super_class = LNFetchMDMPropertiesConnectionOperation;
  v16 = [(LNInterfaceConnectionOperation *)&v26 initWithIdentifier:uUID connectionInterface:interfaceCopy priority:1 queue:queueCopy activity:&__block_literal_global_3108];

  if (v16)
  {
    v17 = [actionCopy copy];
    action = v16->_action;
    v16->_action = v17;

    v19 = [handlerCopy copy];
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v19;

    v21 = v16;
  }

  return v16;
}

os_activity_t __102__LNFetchMDMPropertiesConnectionOperation_initWithConnectionInterface_action_queue_completionHandler___block_invoke()
{
  v0 = _os_activity_create(&dword_19763D000, "appintents:fetch MDM properties", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v0;
}

@end