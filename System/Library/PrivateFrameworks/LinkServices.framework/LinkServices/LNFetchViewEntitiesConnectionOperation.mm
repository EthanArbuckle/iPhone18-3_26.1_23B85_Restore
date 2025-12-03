@interface LNFetchViewEntitiesConnectionOperation
- (LNFetchViewEntitiesConnectionOperation)initWithConnectionInterface:(id)interface interactionIDs:(id)ds queue:(id)queue completionHandler:(id)handler;
- (void)finishWithError:(id)error;
- (void)start;
@end

@implementation LNFetchViewEntitiesConnectionOperation

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(LNFetchViewEntitiesConnectionOperation *)self completionHandler];

  if (completionHandler)
  {
    result = [(LNFetchViewEntitiesConnectionOperation *)self result];
    v7 = [(LNConnectionOperation *)self validatingResult:result error:errorCopy];

    completionHandler2 = [(LNFetchViewEntitiesConnectionOperation *)self completionHandler];
    result2 = [(LNFetchViewEntitiesConnectionOperation *)self result];
    (completionHandler2)[2](completionHandler2, result2, v7);

    [(LNFetchViewEntitiesConnectionOperation *)self setCompletionHandler:0];
    errorCopy = v7;
  }

  v10.receiver = self;
  v10.super_class = LNFetchViewEntitiesConnectionOperation;
  [(LNConnectionOperation *)&v10 finishWithError:errorCopy];
}

- (void)start
{
  v8.receiver = self;
  v8.super_class = LNFetchViewEntitiesConnectionOperation;
  [(LNConnectionOperation *)&v8 start];
  v3 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19763D000, v3, OS_LOG_TYPE_INFO, "Fetching app view entities", buf, 2u);
  }

  connectionInterface = [(LNInterfaceConnectionOperation *)self connectionInterface];
  interactionIDs = self->_interactionIDs;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__LNFetchViewEntitiesConnectionOperation_start__block_invoke;
  v6[3] = &unk_1E74B1F78;
  v6[4] = self;
  [connectionInterface fetchViewEntitiesWithInteractionIDs:interactionIDs completionHandler:v6];
}

void __47__LNFetchViewEntitiesConnectionOperation_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  os_activity_scope_enter(v7, &v8);

  [*(a1 + 32) setResult:v5];
  [*(a1 + 32) finishWithError:v6];
  os_activity_scope_leave(&v8);
}

- (LNFetchViewEntitiesConnectionOperation)initWithConnectionInterface:(id)interface interactionIDs:(id)ds queue:(id)queue completionHandler:(id)handler
{
  interfaceCopy = interface;
  dsCopy = ds;
  queueCopy = queue;
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNFetchViewEntitiesConnectionOperation.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

    if (v15)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNFetchViewEntitiesConnectionOperation.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v24.receiver = self;
  v24.super_class = LNFetchViewEntitiesConnectionOperation;
  v17 = [(LNInterfaceConnectionOperation *)&v24 initWithIdentifier:uUID connectionInterface:interfaceCopy priority:2 queue:queueCopy activity:&__block_literal_global_6544];

  if (v17)
  {
    objc_storeStrong(&v17->_interactionIDs, ds);
    v18 = _Block_copy(v15);
    completionHandler = v17->_completionHandler;
    v17->_completionHandler = v18;

    v20 = v17;
  }

  return v17;
}

os_activity_t __109__LNFetchViewEntitiesConnectionOperation_initWithConnectionInterface_interactionIDs_queue_completionHandler___block_invoke()
{
  v0 = _os_activity_create(&dword_19763D000, "appintents:fetch view entities", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v0;
}

@end