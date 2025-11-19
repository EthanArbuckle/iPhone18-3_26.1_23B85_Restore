@interface DMFConnection
+ (DMFConnection)currentUserConnection;
+ (id)connectionForAppleID:(id)a3;
- (DMFConnection)initWithTransportProvider:(id)a3 userInfo:(id)a4;
- (DMFTransportProvider)transportProvider;
- (id)batchOperationToPerformOperations:(id)a3;
- (id)makeNewTransport;
- (id)prepareOperationForRequest:(id)a3;
- (void)_operationDidFinish:(id)a3 completion:(id)a4;
- (void)_reconnectTaskClient;
- (void)client:(id)a3 didInterruptWithError:(id)a4;
- (void)clientDidConnect:(id)a3;
- (void)clientDidDisconnect:(id)a3;
- (void)clientDidInvalidate:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)performRequest:(id)a3 completion:(id)a4;
@end

@implementation DMFConnection

+ (DMFConnection)currentUserConnection
{
  v3 = getuid();

  return [a1 connectionForUID:v3];
}

uint64_t __34__DMFConnection_connectionForUID___block_invoke()
{
  connectionForUID__connectionByUID = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0 valueOptions:0];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)connectionForAppleID:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    +[DMFConnection connectionForAppleID:];
  }

  v5 = [a1 alloc];
  v10 = @"DMFConnectionAppleIDKey";
  v11[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v5 initWithUserInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (DMFConnection)initWithTransportProvider:(id)a3 userInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
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
    objc_storeWeak(&v9->_transportProvider, v6);
    v12 = objc_opt_new();
    taskClient = v9->_taskClient;
    v9->_taskClient = v12;

    [(CATTaskClient *)v9->_taskClient setDelegate:v9];
    v14 = [v7 copy];
    [(CATTaskClient *)v9->_taskClient setUserInfo:v14];

    [(DMFConnection *)v9 _reconnectTaskClient];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [(DMFConnection *)self taskClient];
  [v3 setDelegate:0];

  v4 = [(DMFConnection *)self taskClient];
  [v4 disconnect];

  v5 = [(DMFConnection *)self taskClient];
  [v5 invalidate];

  v6.receiver = self;
  v6.super_class = DMFConnection;
  [(DMFConnection *)&v6 dealloc];
}

- (void)performRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [DMFConnection performRequest:completion:];
  }

  v8 = [(DMFConnection *)self prepareOperationForRequest:v6];
  if (v8 && !+[DMFConnection isFactoryBuild])
  {
    if (v7)
    {
      v12 = MEMORY[0x1E128DE70](v7);
      v13 = dispatch_get_global_queue(25, 0);
      [v8 addTarget:self selector:sel__operationDidFinish_completion_ forOperationEvents:6 userInfo:v12 delegateQueue:v13];
    }

    v11 = [(DMFConnection *)self operationQueue];
    [v11 addOperation:v8];
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
    v16 = v7;
    v11 = v9;
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

- (id)prepareOperationForRequest:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [DMFConnection prepareOperationForRequest:];
  }

  if (+[DMFConnection isFactoryBuild])
  {
    v5 = DMFErrorWithCodeAndUserInfo(7, 0);
    v6 = [(DMFConnection *)self taskClient];
    [v6 invalidateWithError:v5];

    v7 = 0;
  }

  else
  {
    if (![(DMFConnection *)self connectionState])
    {
      [(DMFConnection *)self _reconnectTaskClient];
    }

    v5 = [(DMFConnection *)self taskClient];
    v7 = [v5 prepareTaskOperationForRequest:v4];
  }

  return v7;
}

- (id)batchOperationToPerformOperations:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(DMFConnection *)self prepareOperationForRequest:v5];
  v7 = [[DMFBatchRequestOperation alloc] initWithActivityTransactionOperation:v6 subOperations:v4];

  return v7;
}

- (void)invalidate
{
  v2 = [(DMFConnection *)self taskClient];
  [v2 invalidate];
}

- (id)makeNewTransport
{
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.dmd" options:4096];
  v3 = [objc_alloc(MEMORY[0x1E6993AD0]) initWithXPCConnection:v2];

  return v3;
}

- (void)clientDidConnect:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = a3;
    _os_log_impl(&dword_1DBFFF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Client did connect: %{public}@", &v6, 0xCu);
  }

  [(DMFConnection *)self setConnectionState:2];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)clientDidDisconnect:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = a3;
    _os_log_impl(&dword_1DBFFF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Client did disconnect: %{public}@", &v6, 0xCu);
  }

  [(DMFConnection *)self setConnectionState:0];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)clientDidInvalidate:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = a3;
    _os_log_impl(&dword_1DBFFF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Client did invalidate: %{public}@", &v6, 0xCu);
  }

  [(DMFConnection *)self setConnectionState:0];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)client:(id)a3 didInterruptWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [DMFConnection client:v6 didInterruptWithError:v7];
  }

  [(DMFConnection *)self setConnectionState:0];
  v8 = [(DMFConnection *)self operationQueue];
  v9 = [v8 operations];
  v10 = [v9 count];

  if (v10)
  {
    [(DMFConnection *)self _reconnectTaskClient];
  }
}

- (void)_operationDidFinish:(id)a3 completion:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = [v8 error];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v8 resultObject];
  }

  v5[2](v5, v7, v6);
}

- (void)_reconnectTaskClient
{
  [(DMFConnection *)self setConnectionState:1];
  v5 = [(DMFConnection *)self taskClient];
  v3 = [(DMFConnection *)self transportProvider];
  v4 = [v3 makeNewTransport];
  [v5 connectWithTransport:v4];
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