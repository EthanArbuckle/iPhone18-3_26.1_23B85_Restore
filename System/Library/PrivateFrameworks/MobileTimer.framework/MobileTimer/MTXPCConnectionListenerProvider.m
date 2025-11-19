@interface MTXPCConnectionListenerProvider
+ (MTXPCConnectionListenerProvider)providerWithConnectionInfo:(id)a3 errorHandler:(id)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (MTXPCConnectionListenerProvider)initWithConnectionInfo:(id)a3 errorHandler:(id)a4;
- (NSArray)connectedClients;
- (NSString)description;
- (id)_connectedClients;
- (id)_currentClientForConnection:(id)a3;
- (id)currentClient;
- (void)_didInterruptConnection;
- (void)_didInvalidateConnection:(id)a3;
- (void)_performBlockOnClientInfos:(id)a3 excludingClient:(id)a4;
- (void)addClientConnection:(id)a3 clientLink:(id)a4;
- (void)dealloc;
- (void)performBlockOnAllClients:(id)a3 excludingClient:(id)a4;
- (void)performBlockOnClientInfos:(id)a3 excludeCurrent:(BOOL)a4;
- (void)performBlockOnCurrentClient:(id)a3;
- (void)removeClientConnection:(id)a3;
- (void)startListening;
@end

@implementation MTXPCConnectionListenerProvider

+ (MTXPCConnectionListenerProvider)providerWithConnectionInfo:(id)a3 errorHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithConnectionInfo:v6 errorHandler:v5];

  return v7;
}

- (MTXPCConnectionListenerProvider)initWithConnectionInfo:(id)a3 errorHandler:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    [MTXPCConnectionListenerProvider initWithConnectionInfo:a2 errorHandler:self];
  }

  v23.receiver = self;
  v23.super_class = MTXPCConnectionListenerProvider;
  v10 = [(MTXPCConnectionListenerProvider *)&v23 init];
  if (v10)
  {
    v11 = +[MTScheduler serialSchedulerWithName:priority:](MTScheduler, "serialSchedulerWithName:priority:", @"com.apple.MTXPCConnectionListenerProvider.serialqueue", +[MTScheduler defaultPriority]);
    serializer = v10->_serializer;
    v10->_serializer = v11;

    objc_storeStrong(&v10->_info, a3);
    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    clients = v10->_clients;
    v10->_clients = v13;

    v15 = [v9 copy];
    errorHandler = v10->_errorHandler;
    v10->_errorHandler = v15;

    v17 = objc_alloc(MEMORY[0x1E696B0D8]);
    v18 = [(MTXPCConnectionListenerProvider *)v10 info];
    v19 = [v18 machServiceName];
    v20 = [v17 initWithMachServiceName:v19];
    connectionListener = v10->_connectionListener;
    v10->_connectionListener = v20;

    [(NSXPCListener *)v10->_connectionListener setDelegate:v10];
  }

  return v10;
}

- (void)startListening
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ resuming connection", &v11, 0xCu);
  }

  [(NSXPCListener *)self->_connectionListener resume];
  v4 = [(MTXPCConnectionInfo *)self->_info lifecycleNotification];

  if (v4)
  {
    v5 = MTLogForCategory(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(MTXPCConnectionInfo *)self->_info lifecycleNotification];
      v11 = 138543618;
      v12 = self;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "Listener %{public}@ posting lifecycle darwin notification %{public}@", &v11, 0x16u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v8 = [(MTXPCConnectionListenerProvider *)self info];
    v9 = [v8 lifecycleNotification];
    CFNotificationCenterPostNotification(DarwinNotifyCenter, v9, 0, 0, 1u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MTXPCConnectionListenerProvider *)self info];
  v9 = [v8 requiredEntitlement];
  if (!v9)
  {

    goto LABEL_7;
  }

  v10 = v9;
  v11 = [(MTXPCConnectionListenerProvider *)self info];
  v12 = [v11 requiredEntitlement];
  v13 = [v7 valueForEntitlement:v12];
  v14 = [v13 BOOLValue];

  if (v14)
  {
LABEL_7:
    v17 = [(MTXPCConnectionListenerProvider *)self info];
    v18 = [v17 exportedObjectInterface];
    [v7 setExportedInterface:v18];

    v19 = [(MTXPCConnectionListenerProvider *)self info];
    v20 = [v19 exportedObject];
    [v7 setExportedObject:v20];

    v21 = [(MTXPCConnectionListenerProvider *)self info];
    v22 = [v21 remoteObjectInterface];
    [v7 setRemoteObjectInterface:v22];

    objc_initWeak(&location, self);
    objc_initWeak(&from, v7);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __70__MTXPCConnectionListenerProvider_listener_shouldAcceptNewConnection___block_invoke;
    v30[3] = &unk_1E7B0F878;
    objc_copyWeak(&v31, &location);
    objc_copyWeak(&v32, &from);
    v23 = [v7 remoteObjectProxyWithErrorHandler:v30];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __70__MTXPCConnectionListenerProvider_listener_shouldAcceptNewConnection___block_invoke_2;
    v27[3] = &unk_1E7B0F8A0;
    objc_copyWeak(&v28, &location);
    objc_copyWeak(&v29, &from);
    [v7 setInvalidationHandler:v27];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __70__MTXPCConnectionListenerProvider_listener_shouldAcceptNewConnection___block_invoke_17;
    v25[3] = &unk_1E7B0CF70;
    objc_copyWeak(&v26, &location);
    [v7 setInterruptionHandler:v25];
    [(MTXPCConnectionListenerProvider *)self addClientConnection:v7 clientLink:v23];
    [v7 resume];
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&v28);

    objc_destroyWeak(&v32);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
    v16 = 1;
    goto LABEL_8;
  }

  v15 = MTLogForCategory(2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [MTXPCConnectionListenerProvider listener:v7 shouldAcceptNewConnection:v15];
  }

  v16 = 0;
LABEL_8:

  return v16;
}

void __70__MTXPCConnectionListenerProvider_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didInvalidateConnection:v2];
}

void __70__MTXPCConnectionListenerProvider_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 _xpcConnection];
  if (v4)
  {
    v5 = [v3 _xpcConnection];
    v6 = xpc_connection_copy_invalidation_reason();
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8 = "unknown";
  if (v6)
  {
    v8 = v6;
  }

  v9 = [v7 initWithFormat:@"%s", v8];
  free(v6);
  v10 = MTLogForCategory(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v13 = WeakRetained;
    v14 = 2114;
    v15 = v3;
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ invalidation handler called for connection %{public}@ with error: %{public}@", buf, 0x20u);
  }

  [WeakRetained _didInvalidateConnection:v3];
  v11 = *MEMORY[0x1E69E9840];
}

void __70__MTXPCConnectionListenerProvider_listener_shouldAcceptNewConnection___block_invoke_17(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didInterruptConnection];
}

- (void)_didInterruptConnection
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 info];
  v8 = [v1 machServiceName];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_didInvalidateConnection:(id)a3
{
  v4 = a3;
  v5 = MTLogForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MTXPCConnectionListenerProvider _didInvalidateConnection:?];
  }

  [(MTXPCConnectionListenerProvider *)self removeClientConnection:v4];
  v6 = [(MTXPCConnectionListenerProvider *)self errorHandler];

  if (v6)
  {
    v7 = [(MTXPCConnectionListenerProvider *)self errorHandler];
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4099 userInfo:0];
    (v7)[2](v7, v8);
  }
}

- (void)addClientConnection:(id)a3 clientLink:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MTXPCConnectionListenerProvider *)self serializer];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__MTXPCConnectionListenerProvider_addClientConnection_clientLink___block_invoke;
  v11[3] = &unk_1E7B0C9A0;
  v12 = v7;
  v13 = v6;
  v14 = self;
  v9 = v6;
  v10 = v7;
  [v8 performBlock:v11];
}

void __66__MTXPCConnectionListenerProvider_addClientConnection_clientLink___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AE30] processInfo];
  if (*(a1 + 32))
  {
    v3 = [*(a1 + 40) processIdentifier];
    if (v3 != [v2 processIdentifier])
    {
      v4 = [MTXPCClientInfo clientInfoForConnection:*(a1 + 40) clientLink:*(a1 + 32)];
      v5 = [*(a1 + 48) clients];
      v6 = [v5 containsObject:v4];

      v7 = MTLogForCategory(2);
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        if (v8)
        {
          v9 = [*(a1 + 48) info];
          v10 = [v9 machServiceName];
          v18 = 138543618;
          v19 = v10;
          v20 = 2114;
          v21 = v4;
          _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Already has XPC client: %{public}@", &v18, 0x16u);
        }
      }

      else
      {
        if (v8)
        {
          v11 = [*(a1 + 48) info];
          v12 = [v11 machServiceName];
          v18 = 138543618;
          v19 = v12;
          v20 = 2114;
          v21 = v4;
          _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Adding XPC client: %{public}@", &v18, 0x16u);
        }

        v7 = [*(a1 + 48) clients];
        [v7 addObject:v4];
      }

      v13 = MTLogForCategory(2);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [*(a1 + 48) info];
        v15 = [v14 machServiceName];
        v16 = *(*(a1 + 48) + 40);
        v18 = 138543618;
        v19 = v15;
        v20 = 2114;
        v21 = v16;
        _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Current XPC clients: %{public}@", &v18, 0x16u);
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)removeClientConnection:(id)a3
{
  v4 = a3;
  v5 = [(MTXPCConnectionListenerProvider *)self serializer];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__MTXPCConnectionListenerProvider_removeClientConnection___block_invoke;
  v7[3] = &unk_1E7B0C928;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

void __58__MTXPCConnectionListenerProvider_removeClientConnection___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [*(a1 + 32) _connectedClients];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = [v7 connection];
        v9 = *(a1 + 40);

        if (v8 == v9)
        {
          v10 = MTLogForCategory(2);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = [*(a1 + 32) info];
            v12 = [v11 machServiceName];
            *buf = 138543618;
            v24 = v12;
            v25 = 2114;
            v26 = v7;
            _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Removing XPC client: %{public}@", buf, 0x16u);
          }

          v13 = [*(a1 + 32) clients];
          [v13 removeObject:v7];

          goto LABEL_13;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v14 = MTLogForCategory(2);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [*(a1 + 32) info];
    v16 = [v15 machServiceName];
    v17 = *(*(a1 + 32) + 40);
    *buf = 138543618;
    v24 = v16;
    v25 = 2114;
    v26 = v17;
    _os_log_impl(&dword_1B1F9F000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Current XPC clients: %{public}@", buf, 0x16u);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (NSArray)connectedClients
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__14;
  v15 = __Block_byref_object_dispose__14;
  v16 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = [(MTXPCConnectionListenerProvider *)self serializer];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__MTXPCConnectionListenerProvider_connectedClients__block_invoke;
  v8[3] = &unk_1E7B0CB10;
  v10 = &v11;
  v8[4] = self;
  v5 = v3;
  v9 = v5;
  [v4 performBlock:v8];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

intptr_t __51__MTXPCConnectionListenerProvider_connectedClients__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _connectedClients];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 40);

  return dispatch_semaphore_signal(v5);
}

- (id)_connectedClients
{
  v2 = [(MTXPCConnectionListenerProvider *)self clients];
  v3 = [v2 allObjects];

  return v3;
}

- (id)currentClient
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__14;
  v18 = __Block_byref_object_dispose__14;
  v19 = 0;
  v3 = [MEMORY[0x1E696B0B8] currentConnection];
  v4 = dispatch_semaphore_create(0);
  v5 = [(MTXPCConnectionListenerProvider *)self serializer];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__MTXPCConnectionListenerProvider_currentClient__block_invoke;
  v10[3] = &unk_1E7B0F8C8;
  v13 = &v14;
  v10[4] = self;
  v6 = v3;
  v11 = v6;
  v7 = v4;
  v12 = v7;
  [v5 performBlock:v10];

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

intptr_t __48__MTXPCConnectionListenerProvider_currentClient__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentClientForConnection:*(a1 + 40)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 48);

  return dispatch_semaphore_signal(v5);
}

- (id)_currentClientForConnection:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(MTXPCConnectionListenerProvider *)self _connectedClients];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [v9 connection];

          if (v10 == v4)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)performBlockOnCurrentClient:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696B0B8] currentConnection];
  v6 = [(MTXPCConnectionListenerProvider *)self serializer];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__MTXPCConnectionListenerProvider_performBlockOnCurrentClient___block_invoke;
  v9[3] = &unk_1E7B0C5D8;
  v9[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  [v6 performBlock:v9];
}

void __63__MTXPCConnectionListenerProvider_performBlockOnCurrentClient___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _currentClientForConnection:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = [v4 clientLink];
  (*(v2 + 16))(v2, v3);
}

void __77__MTXPCConnectionListenerProvider_performBlockOnAllClients_excludingCurrent___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 clientLink];
  (*(v2 + 16))(v2, v3);
}

- (void)performBlockOnClientInfos:(id)a3 excludeCurrent:(BOOL)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696B0B8] currentConnection];
  v8 = [(MTXPCConnectionListenerProvider *)self serializer];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__MTXPCConnectionListenerProvider_performBlockOnClientInfos_excludeCurrent___block_invoke;
  v11[3] = &unk_1E7B0F918;
  v14 = a4;
  v11[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  [v8 performBlock:v11];
}

void __76__MTXPCConnectionListenerProvider_performBlockOnClientInfos_excludeCurrent___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = [*(a1 + 32) _currentClientForConnection:*(a1 + 40)];
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [*(a1 + 32) _performBlockOnClientInfos:*(a1 + 48) excludingClient:v2];
}

- (void)performBlockOnAllClients:(id)a3 excludingClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MTXPCConnectionListenerProvider *)self serializer];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__MTXPCConnectionListenerProvider_performBlockOnAllClients_excludingClient___block_invoke;
  v11[3] = &unk_1E7B0D8B8;
  v12 = v7;
  v13 = v6;
  v11[4] = self;
  v9 = v7;
  v10 = v6;
  [v8 performBlock:v11];
}

void __76__MTXPCConnectionListenerProvider_performBlockOnAllClients_excludingClient___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __76__MTXPCConnectionListenerProvider_performBlockOnAllClients_excludingClient___block_invoke_2;
  v3[3] = &unk_1E7B0F8F0;
  v4 = *(a1 + 48);
  [v2 _performBlockOnClientInfos:v3 excludingClient:*(a1 + 40)];
}

void __76__MTXPCConnectionListenerProvider_performBlockOnAllClients_excludingClient___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 clientLink];
  (*(v2 + 16))(v2, v3);
}

- (void)_performBlockOnClientInfos:(id)a3 excludingClient:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(MTXPCConnectionListenerProvider *)self _connectedClients];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        if (!v7 || ([*(*(&v15 + 1) + 8 * v12) isEqual:v7] & 1) == 0)
        {
          v6[2](v6, v13);
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MTXPCConnectionListenerProvider *)self info];
  v6 = [v5 machServiceName];
  v7 = [v3 stringWithFormat:@"<%@:%p %@>", v4, self, v6];

  return v7;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_connectionListener setDelegate:0];
  [(NSXPCListener *)self->_connectionListener invalidate];
  connectionListener = self->_connectionListener;
  self->_connectionListener = 0;

  v4.receiver = self;
  v4.super_class = MTXPCConnectionListenerProvider;
  [(MTXPCConnectionListenerProvider *)&v4 dealloc];
}

- (void)initWithConnectionInfo:(uint64_t)a1 errorHandler:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MTXPCConnectionListenerProvider.m" lineNumber:35 description:@"Connection info must be non-nil"];

  v5 = MTLogForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2_0();
    _os_log_error_impl(v6, v7, v8, v9, v10, 2u);
  }
}

- (void)listener:(uint64_t)a1 shouldAcceptNewConnection:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B1F9F000, a2, OS_LOG_TYPE_ERROR, "Connection %{public}@ not entitled", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_didInvalidateConnection:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 info];
  v8 = [v1 machServiceName];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

@end