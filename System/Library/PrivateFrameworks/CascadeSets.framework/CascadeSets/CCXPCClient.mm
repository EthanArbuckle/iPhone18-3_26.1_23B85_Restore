@interface CCXPCClient
- (CCXPCClient)init;
- (id)_errorHandlerWithCompletion:(id)a3;
- (id)_failureHandlerWithResponse:(unsigned __int16)a3;
- (id)_remoteObjectProxy:(BOOL)a3 errorCompletion:(id)a4;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CCXPCClient

- (void)dealloc
{
  [(CCXPCClient *)self invalidate];
  v3.receiver = self;
  v3.super_class = CCXPCClient;
  [(CCXPCClient *)&v3 dealloc];
}

- (void)invalidate
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 clientId];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_DEBUG, "Invalidating XPC connection for client %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (CCXPCClient)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (id)_failureHandlerWithResponse:(unsigned __int16)a3
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__CCXPCClient__failureHandlerWithResponse___block_invoke;
  aBlock[3] = &unk_1E7C8B8E0;
  objc_copyWeak(&v7, &location);
  v8 = a3;
  v4 = _Block_copy(aBlock);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

void __43__CCXPCClient__failureHandlerWithResponse___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = __biome_log_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __43__CCXPCClient__failureHandlerWithResponse___block_invoke_cold_1(a1, WeakRetained, v3);
    }

    [WeakRetained setFailureCode:*(a1 + 40)];
    v4 = [WeakRetained connection];
    [v4 invalidate];

    [WeakRetained setConnection:0];
  }
}

- (id)_errorHandlerWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__CCXPCClient__errorHandlerWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C8B908;
  objc_copyWeak(&v10, &location);
  v9 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

void __43__CCXPCClient__errorHandlerWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __43__CCXPCClient__errorHandlerWithCompletion___block_invoke_cold_1(v3, WeakRetained, v5);
    }

    v6 = [WeakRetained interruptionCode];
    [WeakRetained setFailureCode:v6];
    [WeakRetained setConnection:0];
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }
}

- (id)_remoteObjectProxy:(BOOL)a3 errorCompletion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(CCXPCClient *)self _errorHandlerWithCompletion:v6];
  v8 = [(CCXPCClient *)self connection];
  v9 = v8;
  if (v4)
  {
    [v8 synchronousRemoteObjectProxyWithErrorHandler:v7];
  }

  else
  {
    [v8 remoteObjectProxyWithErrorHandler:v7];
  }
  v10 = ;

  if (v6 && !v10)
  {
    v6[2](v6, [(CCXPCClient *)self failureCode]);
  }

  return v10;
}

void __60__CCXPCClient_serviceThrowingRequest_completion_usingBlock___block_invoke(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v4 = MEMORY[0x1E696ABC0];
    v8 = [*(*(a1 + 32) + 24) remoteObjectInterface];
    v5 = [v8 protocol];
    v6 = NSStringFromProtocol(v5);
    v7 = [v4 errorWithDomain:v6 code:a2 userInfo:0];
    (*(v2 + 16))(v2, v7);
  }
}

uint64_t __68__CCXPCClient_servicePriorsRespondingRequest_completion_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0, 0);
  }

  return result;
}

void __66__CCXPCClient_requestBiomeEndpointForAppScopedService_user_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)initWithRemoteObjectXPCInterface:(uint64_t)a1 exportedXPCInterface:(NSObject *)a2 connection:clientId:interruptionCode:invalidationCode:useCase:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_DEBUG, "Client %@ connecting to XPC service", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __43__CCXPCClient__failureHandlerWithResponse___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = [a2 clientId];
  v7[0] = 67109378;
  v7[1] = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&dword_1B6DB2000, a3, OS_LOG_TYPE_DEBUG, "XPC connection terminated (%u) for client %@", v7, 0x12u);

  v6 = *MEMORY[0x1E69E9840];
}

void __43__CCXPCClient__errorHandlerWithCompletion___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a2 clientId];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_1B6DB2000, a3, OS_LOG_TYPE_ERROR, "XPC request hit error (%@) for client %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end