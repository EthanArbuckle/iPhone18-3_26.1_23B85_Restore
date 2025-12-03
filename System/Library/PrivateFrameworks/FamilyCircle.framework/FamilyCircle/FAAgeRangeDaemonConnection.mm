@interface FAAgeRangeDaemonConnection
- (FAAgeRangeDaemonConnection)initWithListenerEndpoint:(id)endpoint;
- (id)_connection;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)_connectionInterruptionHandler;
- (void)_connectionInvalidationHandler;
- (void)dealloc;
@end

@implementation FAAgeRangeDaemonConnection

- (FAAgeRangeDaemonConnection)initWithListenerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v9.receiver = self;
  v9.super_class = FAAgeRangeDaemonConnection;
  v6 = [(FAAgeRangeDaemonConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listenerEndpoint, endpoint);
    v7->_unfairLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_1B70B0000, a2, OS_LOG_TYPE_DEBUG, "%@ deallocated", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _connection = [(FAAgeRangeDaemonConnection *)self _connection];
  v6 = [_connection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _connection = [(FAAgeRangeDaemonConnection *)self _connection];
  v6 = [_connection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (id)_connection
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__FAAgeRangeDaemonConnection__connection__block_invoke;
  v5[3] = &unk_1E7CA5330;
  v5[4] = self;
  os_unfair_lock_lock(&self->_unfairLock);
  v3 = __41__FAAgeRangeDaemonConnection__connection__block_invoke(v5);
  os_unfair_lock_unlock(&self->_unfairLock);

  return v3;
}

id __41__FAAgeRangeDaemonConnection__connection__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  if (!v3)
  {
    objc_initWeak(&location, v2);
    v4 = *(*(a1 + 32) + 24);
    v5 = objc_alloc(MEMORY[0x1E696B0B8]);
    if (v4)
    {
      v6 = [v5 initWithListenerEndpoint:v4];
    }

    else
    {
      v6 = [v5 initWithMachServiceName:@"com.apple.family.ageRange.xpc" options:0];
    }

    v7 = v6;

    v8 = *(a1 + 32);
    v9 = *(v8 + 16);
    *(v8 + 16) = v7;

    v10 = *(*(a1 + 32) + 16);
    v11 = +[FAAgeRangeDaemonInterface XPCInterface];
    [v10 setRemoteObjectInterface:v11];

    v12 = *(*(a1 + 32) + 16);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __41__FAAgeRangeDaemonConnection__connection__block_invoke_2;
    v25[3] = &unk_1E7CA5308;
    objc_copyWeak(&v26, &location);
    [v12 setInterruptionHandler:v25];
    v13 = *(*(a1 + 32) + 16);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __41__FAAgeRangeDaemonConnection__connection__block_invoke_3;
    v23[3] = &unk_1E7CA5308;
    objc_copyWeak(&v24, &location);
    [v13 setInvalidationHandler:v23];
    [*(*(a1 + 32) + 16) resume];
    v14 = _FALogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __41__FAAgeRangeDaemonConnection__connection__block_invoke_cold_1(v14, v15, v16, v17, v18, v19, v20, v21);
    }

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
    v3 = *(*(a1 + 32) + 16);
  }

  return v3;
}

void __41__FAAgeRangeDaemonConnection__connection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInterruptionHandler];
}

void __41__FAAgeRangeDaemonConnection__connection__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInvalidationHandler];
}

- (void)_connectionInterruptionHandler
{
  v2 = _FALogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [(FAAgeRangeDaemonConnection *)v2 _connectionInterruptionHandler:v3];
  }
}

- (void)_connectionInvalidationHandler
{
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(FAAgeRangeDaemonConnection *)v3 _connectionInvalidationHandler:v4];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__FAAgeRangeDaemonConnection__connectionInvalidationHandler__block_invoke;
  v11[3] = &unk_1E7CA5358;
  v11[4] = self;
  os_unfair_lock_lock(&self->_unfairLock);
  __60__FAAgeRangeDaemonConnection__connectionInvalidationHandler__block_invoke(v11);
  os_unfair_lock_unlock(&self->_unfairLock);
}

void __60__FAAgeRangeDaemonConnection__connectionInvalidationHandler__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
}

@end