@interface DMFConnection
+ (DMFConnection)currentUserConnection;
+ (id)connectionForAppleID:(id)d;
- (DMFConnection)initWithTransportProvider:(id)provider userInfo:(id)info;
- (DMFTransportProvider)transportProvider;
- (id)batchOperationToPerformOperations:(id)operations;
- (id)makeNewTransport;
- (id)prepareOperationForRequest:(id)request;
- (void)_operationDidFinish:(id)finish completion:(id)completion;
- (void)_reconnectTaskClient;
- (void)client:(id)client didInterruptWithError:(id)error;
- (void)clientDidConnect:(id)connect;
- (void)clientDidDisconnect:(id)disconnect;
- (void)clientDidInvalidate:(id)invalidate;
- (void)dealloc;
- (void)invalidate;
- (void)performRequest:(id)request completion:(id)completion;
@end

@implementation DMFConnection

+ (DMFConnection)currentUserConnection
{
  v3 = getuid();

  return [self connectionForUID:v3];
}

uint64_t __34__DMFConnection_connectionForUID___block_invoke()
{
  connectionForUID__connectionByUID = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0 valueOptions:0];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)connectionForAppleID:(id)d
{
  v11[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy)
  {
    +[DMFConnection connectionForAppleID:];
  }

  v5 = [self alloc];
  v10 = @"DMFConnectionAppleIDKey";
  v11[0] = dCopy;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v5 initWithUserInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (DMFConnection)initWithTransportProvider:(id)provider userInfo:(id)info
{
  providerCopy = provider;
  infoCopy = info;
  if (!providerCopy)
  {
    [DMFConnection initWithTransportProvider:userInfo:];
  }

  v16.receiver = self;
  v16.super_class = DMFConnection;
  v8 = [(DMFConnection *)&v16 init];
  v9 = v8;
  if (v8)
  {
    v8->_connectionState = 0;
    v10 = objc_opt_new();
    operationQueue = v9->_operationQueue;
    v9->_operationQueue = v10;

    [(CATOperationQueue *)v9->_operationQueue setMaxConcurrentOperationCount:0x7FFFFFFFFFFFFFFFLL];
    objc_storeWeak(&v9->_transportProvider, providerCopy);
    v12 = objc_opt_new();
    taskClient = v9->_taskClient;
    v9->_taskClient = v12;

    [(CATTaskClient *)v9->_taskClient setDelegate:v9];
    v14 = [infoCopy copy];
    [(CATTaskClient *)v9->_taskClient setUserInfo:v14];

    [(DMFConnection *)v9 _reconnectTaskClient];
  }

  return v9;
}

- (void)dealloc
{
  taskClient = [(DMFConnection *)self taskClient];
  [taskClient setDelegate:0];

  taskClient2 = [(DMFConnection *)self taskClient];
  [taskClient2 disconnect];

  taskClient3 = [(DMFConnection *)self taskClient];
  [taskClient3 invalidate];

  v6.receiver = self;
  v6.super_class = DMFConnection;
  [(DMFConnection *)&v6 dealloc];
}

- (void)performRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (!requestCopy)
  {
    [DMFConnection performRequest:completion:];
  }

  v8 = [(DMFConnection *)self prepareOperationForRequest:requestCopy];
  if (v8 && !+[DMFConnection isFactoryBuild])
  {
    if (completionCopy)
    {
      v12 = MEMORY[0x1E128DE70](completionCopy);
      v13 = dispatch_get_global_queue(25, 0);
      [v8 addTarget:self selector:sel__operationDidFinish_completion_ forOperationEvents:6 userInfo:v12 delegateQueue:v13];
    }

    operationQueue = [(DMFConnection *)self operationQueue];
    [operationQueue addOperation:v8];
  }

  else
  {
    v9 = DMFErrorWithCodeAndUserInfo(7, 0);
    v10 = dispatch_get_global_queue(0, 0);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __43__DMFConnection_performRequest_completion___block_invoke;
    v14[3] = &unk_1E86162A8;
    v15 = v9;
    v16 = completionCopy;
    operationQueue = v9;
    dispatch_async(v10, v14);
  }
}

uint64_t __43__DMFConnection_performRequest_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

- (id)prepareOperationForRequest:(id)request
{
  requestCopy = request;
  if (!requestCopy)
  {
    [DMFConnection prepareOperationForRequest:];
  }

  if (+[DMFConnection isFactoryBuild])
  {
    taskClient2 = DMFErrorWithCodeAndUserInfo(7, 0);
    taskClient = [(DMFConnection *)self taskClient];
    [taskClient invalidateWithError:taskClient2];

    v7 = 0;
  }

  else
  {
    if (![(DMFConnection *)self connectionState])
    {
      [(DMFConnection *)self _reconnectTaskClient];
    }

    taskClient2 = [(DMFConnection *)self taskClient];
    v7 = [taskClient2 prepareTaskOperationForRequest:requestCopy];
  }

  return v7;
}

- (id)batchOperationToPerformOperations:(id)operations
{
  operationsCopy = operations;
  v5 = objc_opt_new();
  v6 = [(DMFConnection *)self prepareOperationForRequest:v5];
  v7 = [[DMFBatchRequestOperation alloc] initWithActivityTransactionOperation:v6 subOperations:operationsCopy];

  return v7;
}

- (void)invalidate
{
  taskClient = [(DMFConnection *)self taskClient];
  [taskClient invalidate];
}

- (id)makeNewTransport
{
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.dmd" options:4096];
  v3 = [objc_alloc(MEMORY[0x1E6993AD0]) initWithXPCConnection:v2];

  return v3;
}

- (void)clientDidConnect:(id)connect
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    connectCopy = connect;
    _os_log_impl(&dword_1DBFFF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Client did connect: %{public}@", &v6, 0xCu);
  }

  [(DMFConnection *)self setConnectionState:2];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)clientDidDisconnect:(id)disconnect
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    disconnectCopy = disconnect;
    _os_log_impl(&dword_1DBFFF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Client did disconnect: %{public}@", &v6, 0xCu);
  }

  [(DMFConnection *)self setConnectionState:0];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)clientDidInvalidate:(id)invalidate
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    invalidateCopy = invalidate;
    _os_log_impl(&dword_1DBFFF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Client did invalidate: %{public}@", &v6, 0xCu);
  }

  [(DMFConnection *)self setConnectionState:0];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)client:(id)client didInterruptWithError:(id)error
{
  clientCopy = client;
  errorCopy = error;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [DMFConnection client:clientCopy didInterruptWithError:errorCopy];
  }

  [(DMFConnection *)self setConnectionState:0];
  operationQueue = [(DMFConnection *)self operationQueue];
  operations = [operationQueue operations];
  v10 = [operations count];

  if (v10)
  {
    [(DMFConnection *)self _reconnectTaskClient];
  }
}

- (void)_operationDidFinish:(id)finish completion:(id)completion
{
  finishCopy = finish;
  completionCopy = completion;
  error = [finishCopy error];
  if (error)
  {
    resultObject = 0;
  }

  else
  {
    resultObject = [finishCopy resultObject];
  }

  completionCopy[2](completionCopy, resultObject, error);
}

- (void)_reconnectTaskClient
{
  [(DMFConnection *)self setConnectionState:1];
  taskClient = [(DMFConnection *)self taskClient];
  transportProvider = [(DMFConnection *)self transportProvider];
  makeNewTransport = [transportProvider makeNewTransport];
  [taskClient connectWithTransport:makeNewTransport];
}

- (DMFTransportProvider)transportProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_transportProvider);

  return WeakRetained;
}

+ (void)connectionForAppleID:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3();
  [v0 handleFailureInMethod:@"appleID" object:? file:? lineNumber:? description:?];
}

- (void)initWithTransportProvider:userInfo:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3();
  [v0 handleFailureInMethod:@"transportProvider" object:? file:? lineNumber:? description:?];
}

- (void)performRequest:completion:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3();
  [v0 handleFailureInMethod:@"request" object:? file:? lineNumber:? description:?];
}

- (void)prepareOperationForRequest:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3();
  [v0 handleFailureInMethod:@"request" object:? file:? lineNumber:? description:?];
}

- (void)client:(uint64_t)a1 didInterruptWithError:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1DBFFF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Client did interrupt: %{public}@, error: %{public}@", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end