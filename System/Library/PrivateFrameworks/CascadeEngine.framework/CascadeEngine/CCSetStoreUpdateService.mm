@interface CCSetStoreUpdateService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CCSetStoreUpdateService)initWithQueue:(id)queue;
@end

@implementation CCSetStoreUpdateService

- (CCSetStoreUpdateService)initWithQueue:(id)queue
{
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = CCSetStoreUpdateService;
  v6 = [(CCSetStoreUpdateService *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    defaultInstance = [MEMORY[0x1E69939B8] defaultInstance];
    writeAccess = v7->_writeAccess;
    v7->_writeAccess = defaultInstance;

    v10 = [[CCDonateRequestManager alloc] initWithWriteAccess:v7->_writeAccess];
    donateRequestManager = v7->_donateRequestManager;
    v7->_donateRequestManager = v10;

    v12 = [[CCDonateConnectionFactory alloc] initWithRequestManager:v7->_donateRequestManager];
    donateConnectionFactory = v7->_donateConnectionFactory;
    v7->_donateConnectionFactory = v12;

    if ([MEMORY[0x1E698E9A0] platform] == 7)
    {
      v14 = __biome_log_for_category();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_1DA444000, v14, OS_LOG_TYPE_DEFAULT, "CCSetStoreUpdateService is running on HomePod, will attempt to eager exit after handling each connection", v18, 2u);
      }

      v15 = [objc_alloc(MEMORY[0x1E69C5D80]) initWithQueue:v7->_queue operation:&__block_literal_global_2];
      eagerExitTimer = v7->_eagerExitTimer;
      v7->_eagerExitTimer = v15;
    }
  }

  return v7;
}

uint64_t __41__CCSetStoreUpdateService_initWithQueue___block_invoke()
{
  v0 = __biome_log_for_category();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1DA444000, v0, OS_LOG_TYPE_DEFAULT, "Eager-exit coalescing timer fired, will attempt to exit when clean", v2, 2u);
  }

  return xpc_transaction_exit_clean();
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v32 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = objc_autoreleasePoolPush();
  v9 = [MEMORY[0x1E698E9D8] processWithXPCConnection:connectionCopy];
  v10 = __biome_log_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    executableName = [v9 executableName];
    *buf = 138543618;
    v29 = executableName;
    v30 = 1024;
    v31 = [v9 pid];
    _os_log_impl(&dword_1DA444000, v10, OS_LOG_TYPE_DEFAULT, "Incoming connection from %{public}@(%d)", buf, 0x12u);
  }

  v12 = [MEMORY[0x1E698E970] policyForProcess:v9 connectionFlags:0 useCase:*MEMORY[0x1E698E948]];
  allowsConnectionToSetStoreUpdateService = [v12 allowsConnectionToSetStoreUpdateService];
  if (allowsConnectionToSetStoreUpdateService)
  {
    if (self->_eagerExitTimer)
    {
      v14 = __biome_log_for_category();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        executableName2 = [v9 executableName];
        v16 = [v9 pid];
        *buf = 138543618;
        v29 = executableName2;
        v30 = 1024;
        v31 = v16;
        _os_log_impl(&dword_1DA444000, v14, OS_LOG_TYPE_DEFAULT, "Resetting eager-exit timer for incoming connection from %{public}@(%d)", buf, 0x12u);
      }

      [(_PASSimpleCoalescingTimer *)self->_eagerExitTimer cancelPendingOperations];
    }

    v17 = [[CCSetStoreUpdateServiceExported alloc] initWithQueue:self->_queue process:v9 connection:connectionCopy writeAccess:self->_writeAccess donateConnectionFactory:self->_donateConnectionFactory];
    v18 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F55FA0D8];
    [connectionCopy setExportedInterface:v18];

    [connectionCopy setExportedObject:v17];
    v19 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5600938];
    [connectionCopy setRemoteObjectInterface:v19];

    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __62__CCSetStoreUpdateService_listener_shouldAcceptNewConnection___block_invoke;
    v25 = &unk_1E85C2F40;
    selfCopy = self;
    v27 = v9;
    [connectionCopy setInvalidationHandler:&v22];
    [connectionCopy resume];
  }

  else
  {
    v17 = __biome_log_for_category();
    if (os_log_type_enabled(&v17->super, OS_LOG_TYPE_ERROR))
    {
      [CCSetStoreUpdateService listener:v9 shouldAcceptNewConnection:?];
    }
  }

  objc_autoreleasePoolPop(v8);
  v20 = *MEMORY[0x1E69E9840];
  return allowsConnectionToSetStoreUpdateService;
}

uint64_t __62__CCSetStoreUpdateService_listener_shouldAcceptNewConnection___block_invoke(uint64_t result)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(*(result + 32) + 32))
  {
    v1 = result;
    v2 = __biome_log_for_category();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(v1 + 40) executableName];
      v4 = [*(v1 + 40) pid];
      v6 = 138543874;
      v7 = v3;
      v8 = 1024;
      v9 = v4;
      v10 = 2048;
      v11 = 10;
      _os_log_impl(&dword_1DA444000, v2, OS_LOG_TYPE_DEFAULT, "Connection from %{public}@(%d) was invalidated, will attempt to eager exit in %lu seconds if there are no more connections", &v6, 0x1Cu);
    }

    result = [*(*(v1 + 32) + 32) runAfterDelaySeconds:1 coalescingBehavior:10.0];
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)listener:(void *)a1 shouldAcceptNewConnection:.cold.1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = [a1 executableName];
  [a1 pid];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x1E69E9840];
}

@end