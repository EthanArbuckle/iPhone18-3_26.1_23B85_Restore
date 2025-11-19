@interface MTXPCConnectionProvider
+ (MTXPCConnectionProvider)providerWithConnectionInfo:(id)a3 errorHandler:(id)a4;
+ (MTXPCConnectionProvider)providerWithConnectionInfo:(id)a3 reconnectHandler:(id)a4;
- (MTXPCConnectionProvider)initWithConnectionInfo:(id)a3 errorHandler:(id)a4 reconnectHandler:(id)a5;
- (id)_asyncRemoteObjectProxyWithErrorHandler:(id)a3;
- (id)_connectionRebuildingIfNecessary;
- (id)_remoteObjectProxyWithXPCConnectionProvider:(id)a3 remoteObjectProxyProvider:(id)a4 errorHandler:(id)a5;
- (id)_retryConnection;
- (id)_syncRemoteObjectProxyWithErrorHandler:(id)a3;
- (id)connection;
- (id)description;
- (void)_didInterruptConnection;
- (void)_didInvalidateConnection;
- (void)_retryConnectionWithRecover:(BOOL)a3;
- (void)dealloc;
- (void)didReceiveLifecycleNotification;
- (void)invalidate;
- (void)performRemoteBlock:(id)a3 withErrorHandler:(id)a4 isSynchronous:(BOOL)a5;
@end

@implementation MTXPCConnectionProvider

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MTXPCConnectionProvider *)self info];
  v6 = [v5 machServiceName];
  v7 = [v3 stringWithFormat:@"<%@:%p %@>", v4, self, v6];

  return v7;
}

- (id)_connectionRebuildingIfNecessary
{
  v25 = *MEMORY[0x1E69E9840];
  connection = self->_connection;
  if (!connection)
  {
    v4 = MTLogForCategory(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v24 = self;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "%{public}@ rebuilding connection", buf, 0xCu);
    }

    v5 = objc_alloc(MEMORY[0x1E696B0B8]);
    v6 = [(MTXPCConnectionProvider *)self info];
    v7 = [v6 machServiceName];
    v8 = [(MTXPCConnectionProvider *)self info];
    v9 = [v5 initWithMachServiceName:v7 options:{objc_msgSend(v8, "options")}];
    v10 = self->_connection;
    self->_connection = v9;

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __59__MTXPCConnectionProvider__connectionRebuildingIfNecessary__block_invoke;
    v22[3] = &unk_1E7B0C9D8;
    v22[4] = self;
    [(NSXPCConnection *)self->_connection setInterruptionHandler:v22];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __59__MTXPCConnectionProvider__connectionRebuildingIfNecessary__block_invoke_2;
    v21[3] = &unk_1E7B0C9D8;
    v21[4] = self;
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v21];
    v11 = [(MTXPCConnectionProvider *)self info];
    v12 = [v11 remoteObjectInterface];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v12];

    v13 = [(MTXPCConnectionProvider *)self info];
    v14 = [v13 exportedObject];

    if (v14)
    {
      v15 = [(MTXPCConnectionProvider *)self info];
      v16 = [v15 exportedObjectInterface];
      [(NSXPCConnection *)self->_connection setExportedInterface:v16];

      v17 = [(MTXPCConnectionProvider *)self info];
      v18 = [v17 exportedObject];
      [(NSXPCConnection *)self->_connection setExportedObject:v18];
    }

    [(NSXPCConnection *)self->_connection resume];
    connection = self->_connection;
  }

  v19 = *MEMORY[0x1E69E9840];

  return connection;
}

- (id)connection
{
  os_unfair_lock_lock(&self->_connectionLock);
  v3 = [(MTXPCConnectionProvider *)self _connectionRebuildingIfNecessary];
  os_unfair_lock_unlock(&self->_connectionLock);

  return v3;
}

+ (MTXPCConnectionProvider)providerWithConnectionInfo:(id)a3 errorHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithConnectionInfo:v6 errorHandler:v5 reconnectHandler:0];

  return v7;
}

+ (MTXPCConnectionProvider)providerWithConnectionInfo:(id)a3 reconnectHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithConnectionInfo:v6 errorHandler:0 reconnectHandler:v5];

  return v7;
}

- (MTXPCConnectionProvider)initWithConnectionInfo:(id)a3 errorHandler:(id)a4 reconnectHandler:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10)
  {
    [MTXPCConnectionProvider initWithConnectionInfo:a2 errorHandler:self reconnectHandler:?];
  }

  v26.receiver = self;
  v26.super_class = MTXPCConnectionProvider;
  v13 = [(MTXPCConnectionProvider *)&v26 init];
  if (v13)
  {
    v14 = MTLogForCategory(2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v28 = v13;
      v29 = 2114;
      v30 = v10;
      _os_log_impl(&dword_1B1F9F000, v14, OS_LOG_TYPE_INFO, "Initializing %{public}@ with info %{public}@", buf, 0x16u);
    }

    v13->_connectionLock._os_unfair_lock_opaque = 0;
    v15 = [MEMORY[0x1E69B3790] mtMainThreadScheduler];
    callbackScheduler = v13->_callbackScheduler;
    v13->_callbackScheduler = v15;

    objc_storeStrong(&v13->_info, a3);
    v17 = [v11 copy];
    errorHandler = v13->_errorHandler;
    v13->_errorHandler = v17;

    v19 = [v12 copy];
    reconnectHandler = v13->_reconnectHandler;
    v13->_reconnectHandler = v19;

    v13->_alive = 1;
    v21 = [v10 lifecycleNotification];

    if (v21)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      v23 = [v10 lifecycleNotification];
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v13, _handleLifeCycleNotification, v23, v13, 1025);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v7 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ deallocing...", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_connectionLock);
  self->_alive = 0;
  os_unfair_lock_unlock(&self->_connectionLock);
  [(MTXPCConnectionProvider *)self invalidate];
  v5.receiver = self;
  v5.super_class = MTXPCConnectionProvider;
  [(MTXPCConnectionProvider *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_didInterruptConnection
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, v0, v1, "%{public}@ connection interrupted", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __50__MTXPCConnectionProvider__didInterruptConnection__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) errorHandler];
  v1 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4097 userInfo:0];
  v2[2](v2, v1);
}

- (void)_didInvalidateConnection
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, v0, v1, "%{public}@ not retrying invalidated connection", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __51__MTXPCConnectionProvider__didInvalidateConnection__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) errorHandler];
  v1 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4099 userInfo:0];
  v2[2](v2, v1);
}

- (void)didReceiveLifecycleNotification
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, v0, v1, "%{public}@ received lifecycle darwin notification but does not have a reconnection handler.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __58__MTXPCConnectionProvider_didReceiveLifecycleNotification__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) reconnectHandler];
  v1[2]();
}

- (id)_retryConnection
{
  v3 = objc_opt_new();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__MTXPCConnectionProvider__retryConnection__block_invoke;
  v10[3] = &unk_1E7B0D120;
  v11 = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__MTXPCConnectionProvider__retryConnection__block_invoke_2;
  v8[3] = &unk_1E7B0D148;
  v8[4] = self;
  v4 = v11;
  v9 = v4;
  [(MTXPCConnectionProvider *)self performRemoteBlock:v10 withErrorHandler:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

void __43__MTXPCConnectionProvider__retryConnection__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __43__MTXPCConnectionProvider__retryConnection__block_invoke_2_cold_1(a1);
  }

  [*(a1 + 40) finishWithError:v3];
}

- (void)_retryConnectionWithRecover:(BOOL)a3
{
  v3 = a3;
  v5 = [(MTXPCConnectionProvider *)self _retryConnection];
  v6 = v5;
  if (v3)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55__MTXPCConnectionProvider__retryConnectionWithRecover___block_invoke;
    v10[3] = &unk_1E7B0D170;
    v10[4] = self;
    v7 = [v5 recover:v10];

    v6 = v7;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__MTXPCConnectionProvider__retryConnectionWithRecover___block_invoke_19;
  v9[3] = &unk_1E7B0D198;
  v9[4] = self;
  v8 = [v6 addCompletionBlock:v9];
}

id __55__MTXPCConnectionProvider__retryConnectionWithRecover___block_invoke(uint64_t a1)
{
  v2 = MTLogForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __55__MTXPCConnectionProvider__retryConnectionWithRecover___block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 32) _retryConnection];

  return v3;
}

void __55__MTXPCConnectionProvider__retryConnectionWithRecover___block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6 || ![v5 BOOLValue])
  {
    v12 = MTLogForCategory(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __55__MTXPCConnectionProvider__retryConnectionWithRecover___block_invoke_19_cold_1(a1);
    }
  }

  else
  {
    v7 = MTLogForCategory(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138543362;
      v16 = v8;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ attempting to reconnect.", buf, 0xCu);
    }

    v9 = [*(a1 + 32) reconnectHandler];

    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = *(v10 + 48);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __55__MTXPCConnectionProvider__retryConnectionWithRecover___block_invoke_20;
      v14[3] = &unk_1E7B0C9D8;
      v14[4] = v10;
      [v11 performBlock:v14];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __55__MTXPCConnectionProvider__retryConnectionWithRecover___block_invoke_20(uint64_t a1)
{
  v1 = [*(a1 + 32) reconnectHandler];
  v1[2]();
}

- (void)performRemoteBlock:(id)a3 withErrorHandler:(id)a4 isSynchronous:(BOOL)a5
{
  v8 = a3;
  if (a5)
  {
    [(MTXPCConnectionProvider *)self _syncRemoteObjectProxyWithErrorHandler:a4];
  }

  else
  {
    [(MTXPCConnectionProvider *)self _asyncRemoteObjectProxyWithErrorHandler:a4];
  }
  v9 = ;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__MTXPCConnectionProvider_performRemoteBlock_withErrorHandler_isSynchronous___block_invoke;
  v12[3] = &unk_1E7B0D1C0;
  v13 = v8;
  v10 = v8;
  v11 = [v9 addSuccessBlock:v12];
}

void __77__MTXPCConnectionProvider_performRemoteBlock_withErrorHandler_isSynchronous___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = NAEmptyResult();
  v4 = [v5 isEqual:v3];

  if ((v4 & 1) == 0)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (id)_asyncRemoteObjectProxyWithErrorHandler:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__MTXPCConnectionProvider__asyncRemoteObjectProxyWithErrorHandler___block_invoke;
  v5[3] = &unk_1E7B0D1E8;
  v5[4] = self;
  v3 = [(MTXPCConnectionProvider *)self _remoteObjectProxyWithXPCConnectionProvider:v5 remoteObjectProxyProvider:&__block_literal_global_11 errorHandler:a3];

  return v3;
}

id __67__MTXPCConnectionProvider__asyncRemoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E69B3780];
  v2 = [*(a1 + 32) connection];
  v3 = [v1 futureWithResult:v2];

  return v3;
}

- (id)_syncRemoteObjectProxyWithErrorHandler:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__MTXPCConnectionProvider__syncRemoteObjectProxyWithErrorHandler___block_invoke;
  v5[3] = &unk_1E7B0D1E8;
  v5[4] = self;
  v3 = [(MTXPCConnectionProvider *)self _remoteObjectProxyWithXPCConnectionProvider:v5 remoteObjectProxyProvider:&__block_literal_global_25 errorHandler:a3];

  return v3;
}

id __66__MTXPCConnectionProvider__syncRemoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E69B3780];
  v2 = [*(a1 + 32) connection];
  v3 = [v1 futureWithResult:v2];

  return v3;
}

- (id)_remoteObjectProxyWithXPCConnectionProvider:(id)a3 remoteObjectProxyProvider:(id)a4 errorHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = (*(a3 + 2))(a3);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __110__MTXPCConnectionProvider__remoteObjectProxyWithXPCConnectionProvider_remoteObjectProxyProvider_errorHandler___block_invoke;
  v15[3] = &unk_1E7B0D258;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v11 = v8;
  v12 = v9;
  v13 = [v10 flatMap:v15];

  return v13;
}

uint64_t *__110__MTXPCConnectionProvider__remoteObjectProxyWithXPCConnectionProvider_remoteObjectProxyProvider_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = MTLogForCategory(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __110__MTXPCConnectionProvider__remoteObjectProxyWithXPCConnectionProvider_remoteObjectProxyProvider_errorHandler___block_invoke_cold_1(a1);
    }

    goto LABEL_11;
  }

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __110__MTXPCConnectionProvider__remoteObjectProxyWithXPCConnectionProvider_remoteObjectProxyProvider_errorHandler___block_invoke_2;
  v17 = &unk_1E7B0D230;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = (a1 + 32);
  v18 = v5;
  v19 = v4;
  v7 = _Block_copy(&v14);
  v10 = (*(v6[2] + 16))(v6[2], v3, v7, v8, v9);
  if (v10)
  {
    v6 = [MEMORY[0x1E69B3780] futureWithResult:{v10, v14, v15, v16, v17, v18}];
  }

  else
  {
    v12 = MTLogForCategory(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __110__MTXPCConnectionProvider__remoteObjectProxyWithXPCConnectionProvider_remoteObjectProxyProvider_errorHandler___block_invoke_cold_2(v6);
    }
  }

  if (!v10)
  {
LABEL_11:
    v6 = [MEMORY[0x1E69B3780] futureWithNoResult];
  }

  return v6;
}

void __110__MTXPCConnectionProvider__remoteObjectProxyWithXPCConnectionProvider_remoteObjectProxyProvider_errorHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __110__MTXPCConnectionProvider__remoteObjectProxyWithXPCConnectionProvider_remoteObjectProxyProvider_errorHandler___block_invoke_2_cold_1(a1);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)invalidate
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ invalidating", &v9, 0xCu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v5 = [(MTXPCConnectionProvider *)self info];
  v6 = [v5 lifecycleNotification];
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v6, self);

  os_unfair_lock_lock(&self->_connectionLock);
  [(NSXPCConnection *)self->_connection setInterruptionHandler:0];
  [(NSXPCConnection *)self->_connection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  os_unfair_lock_unlock(&self->_connectionLock);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)initWithConnectionInfo:(uint64_t)a1 errorHandler:(uint64_t)a2 reconnectHandler:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MTXPCConnectionProvider.m" lineNumber:43 description:@"Connection info must be non-nil"];

  v5 = MTLogForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_ERROR, "Connection info must be non-nil", v6, 2u);
  }
}

void __43__MTXPCConnectionProvider__retryConnection__block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v1, v2, "Failed to reconnect for provider %{public}@ with error %{public}@.");
  v3 = *MEMORY[0x1E69E9840];
}

void __55__MTXPCConnectionProvider__retryConnectionWithRecover___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, v1, v2, "%{public}@ retrying failed reconnect", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __55__MTXPCConnectionProvider__retryConnectionWithRecover___block_invoke_19_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, v1, v2, "%{public}@ failed to reconnect too many times", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __110__MTXPCConnectionProvider__remoteObjectProxyWithXPCConnectionProvider_remoteObjectProxyProvider_errorHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, v1, v2, "%{public}@ expected non-nil connection", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __110__MTXPCConnectionProvider__remoteObjectProxyWithXPCConnectionProvider_remoteObjectProxyProvider_errorHandler___block_invoke_cold_2(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, v2, v3, "%{public}@ expected non-nil proxy@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __110__MTXPCConnectionProvider__remoteObjectProxyWithXPCConnectionProvider_remoteObjectProxyProvider_errorHandler___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v1, v2, "%{public}@ received a remote proxy error: %{public}@");
  v3 = *MEMORY[0x1E69E9840];
}

@end