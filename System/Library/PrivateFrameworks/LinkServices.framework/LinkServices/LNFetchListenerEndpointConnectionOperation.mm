@interface LNFetchListenerEndpointConnectionOperation
- (LNFetchListenerEndpointConnectionOperation)initWithConnectionInterface:(id)interface queue:(id)queue bundleIdentifier:(id)identifier action:(id)action completionHandler:(id)handler;
- (void)finishWithError:(id)error;
- (void)finishWithXPCListenerEndpoint:(id)endpoint auditTokenData:(id)data resolvedAction:(id)action error:(id)error;
- (void)start;
@end

@implementation LNFetchListenerEndpointConnectionOperation

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(LNFetchListenerEndpointConnectionOperation *)self completionHandler];

  if (completionHandler)
  {
    v6 = [(LNConnectionOperation *)self validatingResult:0 error:errorCopy];

    completionHandler2 = [(LNFetchListenerEndpointConnectionOperation *)self completionHandler];
    completionHandler2[2](completionHandler2, 0, 0, 0, v6);

    [(LNFetchListenerEndpointConnectionOperation *)self setCompletionHandler:0];
    errorCopy = v6;
  }

  v8.receiver = self;
  v8.super_class = LNFetchListenerEndpointConnectionOperation;
  [(LNConnectionOperation *)&v8 finishWithError:errorCopy];
}

- (void)finishWithXPCListenerEndpoint:(id)endpoint auditTokenData:(id)data resolvedAction:(id)action error:(id)error
{
  endpointCopy = endpoint;
  dataCopy = data;
  actionCopy = action;
  errorCopy = error;
  completionHandler = [(LNFetchListenerEndpointConnectionOperation *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(LNFetchListenerEndpointConnectionOperation *)self completionHandler];
    (completionHandler2)[2](completionHandler2, endpointCopy, dataCopy, actionCopy, errorCopy);

    [(LNFetchListenerEndpointConnectionOperation *)self setCompletionHandler:0];
  }

  v16.receiver = self;
  v16.super_class = LNFetchListenerEndpointConnectionOperation;
  [(LNConnectionOperation *)&v16 finishWithError:errorCopy];
}

- (void)start
{
  v9.receiver = self;
  v9.super_class = LNFetchListenerEndpointConnectionOperation;
  [(LNConnectionOperation *)&v9 start];
  v3 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19763D000, v3, OS_LOG_TYPE_INFO, "Fetching XPC listener endpoint", buf, 2u);
  }

  connectionInterface = [(LNInterfaceConnectionOperation *)self connectionInterface];
  bundleIdentifier = [(LNFetchListenerEndpointConnectionOperation *)self bundleIdentifier];
  action = [(LNFetchListenerEndpointConnectionOperation *)self action];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__LNFetchListenerEndpointConnectionOperation_start__block_invoke;
  v7[3] = &unk_1E74B2630;
  v7[4] = self;
  [connectionInterface getListenerEndpointForBundleIdentifier:bundleIdentifier action:action completionHandler:v7];
}

void __51__LNFetchListenerEndpointConnectionOperation_start__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [*(a1 + 32) activity];
  os_activity_scope_enter(v13, &v14);

  [*(a1 + 32) finishWithXPCListenerEndpoint:v9 auditTokenData:v10 resolvedAction:v11 error:v12];
  os_activity_scope_leave(&v14);
}

- (LNFetchListenerEndpointConnectionOperation)initWithConnectionInterface:(id)interface queue:(id)queue bundleIdentifier:(id)identifier action:(id)action completionHandler:(id)handler
{
  interfaceCopy = interface;
  queueCopy = queue;
  identifierCopy = identifier;
  actionCopy = action;
  handlerCopy = handler;
  v18 = handlerCopy;
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNFetchListenerEndpointConnectionOperation.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"connectionInterface"}];

    if (v18)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNFetchListenerEndpointConnectionOperation.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v29.receiver = self;
  v29.super_class = LNFetchListenerEndpointConnectionOperation;
  v20 = [(LNInterfaceConnectionOperation *)&v29 initWithIdentifier:uUID connectionInterface:interfaceCopy priority:1 queue:queueCopy activity:&__block_literal_global_14165];

  if (v20)
  {
    v21 = _Block_copy(v18);
    completionHandler = v20->_completionHandler;
    v20->_completionHandler = v21;

    v23 = [identifierCopy copy];
    bundleIdentifier = v20->_bundleIdentifier;
    v20->_bundleIdentifier = v23;

    objc_storeStrong(&v20->_action, action);
    v25 = v20;
  }

  return v20;
}

os_activity_t __122__LNFetchListenerEndpointConnectionOperation_initWithConnectionInterface_queue_bundleIdentifier_action_completionHandler___block_invoke()
{
  v0 = _os_activity_create(&dword_19763D000, "appintents:fetch listener endpoint", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v0;
}

@end