@interface MDMDaemonXPCInvalidationManager
- (MDMDaemonXPCInvalidationManager)initWithXPCConnection:(id)a3;
- (NSXPCConnection)xpcConnection;
- (void)_executeInvalidationHandlers;
- (void)registerInvalidationHandlerForTask:(id)a3 handler:(id)a4;
- (void)unregisterInvalidationHandlerForTask:(id)a3;
@end

@implementation MDMDaemonXPCInvalidationManager

- (MDMDaemonXPCInvalidationManager)initWithXPCConnection:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MDMDaemonXPCInvalidationManager;
  v5 = [(MDMDaemonXPCInvalidationManager *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_xpcConnection, v4);
    v7 = objc_opt_new();
    invalidationHandlers = v6->_invalidationHandlers;
    v6->_invalidationHandlers = v7;

    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v10 = dispatch_queue_create("MDMDaemonXPCDisconnectionManager_queue", v9);
    queue = v6->_queue;
    v6->_queue = v10;

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __57__MDMDaemonXPCInvalidationManager_initWithXPCConnection___block_invoke;
    v14[3] = &unk_27982BA78;
    v15 = v6;
    WeakRetained = objc_loadWeakRetained(&v6->_xpcConnection);
    [WeakRetained setInvalidationHandler:v14];
  }

  return v6;
}

uint64_t __57__MDMDaemonXPCInvalidationManager_initWithXPCConnection___block_invoke(uint64_t a1)
{
  v2 = *DMCLogObjects();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2561F5000, v2, OS_LOG_TYPE_DEFAULT, "MDMDaemonXPCInvalidationManager: invalidationHandler called", v4, 2u);
  }

  return [*(a1 + 32) _executeInvalidationHandlers];
}

- (void)registerInvalidationHandlerForTask:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MDMDaemonXPCInvalidationManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__MDMDaemonXPCInvalidationManager_registerInvalidationHandlerForTask_handler___block_invoke;
  block[3] = &unk_27982BAA0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async_and_wait(v8, block);
}

void __78__MDMDaemonXPCInvalidationManager_registerInvalidationHandlerForTask_handler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) invalidationHandlers];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (!v3)
  {
    v5 = _Block_copy(*(a1 + 48));
    v4 = [*(a1 + 32) invalidationHandlers];
    [v4 setObject:v5 forKeyedSubscript:*(a1 + 40)];
  }
}

- (void)unregisterInvalidationHandlerForTask:(id)a3
{
  v4 = a3;
  v5 = [(MDMDaemonXPCInvalidationManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__MDMDaemonXPCInvalidationManager_unregisterInvalidationHandlerForTask___block_invoke;
  v7[3] = &unk_27982BAC8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __72__MDMDaemonXPCInvalidationManager_unregisterInvalidationHandlerForTask___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) invalidationHandlers];
  [v2 setObject:0 forKeyedSubscript:*(a1 + 40)];
}

- (void)_executeInvalidationHandlers
{
  v3 = [(MDMDaemonXPCInvalidationManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__MDMDaemonXPCInvalidationManager__executeInvalidationHandlers__block_invoke;
  block[3] = &unk_27982BA78;
  block[4] = self;
  dispatch_async_and_wait(v3, block);
}

void __63__MDMDaemonXPCInvalidationManager__executeInvalidationHandlers__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = [*(a1 + 32) invalidationHandlers];
  v2 = [v1 allValues];

  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v8 + 1) + 8 * v6++) + 16))();
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (NSXPCConnection)xpcConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);

  return WeakRetained;
}

@end