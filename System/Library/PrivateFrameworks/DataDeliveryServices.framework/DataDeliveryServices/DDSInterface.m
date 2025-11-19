@interface DDSInterface
+ (id)interface;
+ (unint64_t)xpcConnectionOptionsForServer;
- (DDSInterface)initWithXPCServiceName:(id)a3;
- (DDSManagingDelegate)delegate;
- (id)server;
- (id)serviceObjectProxy;
- (id)syncServer;
- (id)syncServiceObjectProxy;
- (void)_teardownXPCConnection;
- (void)addAssertionForQuery:(id)a3 policy:(id)a4 assertionID:(id)a5 clientID:(id)a6;
- (void)assertionIDsForClientID:(id)a3 reply:(id)a4;
- (void)createConnectionIfNecessary;
- (void)dealloc;
- (void)fetchAssetUpdateStatusForQuery:(id)a3 callback:(id)a4;
- (void)removeAssertionWithID:(id)a3;
- (void)server;
- (void)syncServer;
- (void)teardownXPCConnection;
- (void)triggerDumpWithReply:(id)a3;
- (void)triggerUpdate;
- (void)updateAssetForQuery:(id)a3 callback:(id)a4;
@end

@implementation DDSInterface

- (id)syncServer
{
  v3 = [(DDSInterface *)self connectionUsageQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(DDSInterface *)self serverOverride];

  if (v4)
  {
    v5 = DefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Using test local server", v9, 2u);
    }

    v6 = [(DDSInterface *)self serverOverride];
  }

  else
  {
    v6 = [(DDSInterface *)self syncServiceObjectProxy];
    v7 = DefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [DDSInterface syncServer];
    }
  }

  return v6;
}

- (id)syncServiceObjectProxy
{
  v3 = [(DDSInterface *)self connectionUsageQueue];
  dispatch_assert_queue_V2(v3);

  [(DDSInterface *)self createConnectionIfNecessary];
  remoteServer = self->_remoteServer;

  return [(NSXPCConnection *)remoteServer synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_11];
}

- (void)createConnectionIfNecessary
{
  v3 = [(DDSInterface *)self connectionUsageQueue];
  dispatch_assert_queue_V2(v3);

  if (!self->_remoteServer)
  {
    v4 = objc_alloc(MEMORY[0x1E696B0B8]);
    v5 = [(DDSInterface *)self xpcServiceName];
    v6 = [v4 initWithMachServiceName:v5 options:{objc_msgSend(objc_opt_class(), "xpcConnectionOptionsForServer")}];
    remoteServer = self->_remoteServer;
    self->_remoteServer = v6;

    [(NSXPCConnection *)self->_remoteServer setExportedObject:self];
    v8 = [objc_opt_class() interface];
    [(NSXPCConnection *)self->_remoteServer setExportedInterface:v8];

    v9 = +[DDSServer interface];
    [(NSXPCConnection *)self->_remoteServer setRemoteObjectInterface:v9];

    objc_initWeak(&location, self);
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __43__DDSInterface_createConnectionIfNecessary__block_invoke;
    v13 = &unk_1E86C61F8;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)self->_remoteServer setInvalidationHandler:&v10];
    [(NSXPCConnection *)self->_remoteServer setInterruptionHandler:&__block_literal_global_2, v10, v11, v12, v13];
    [(NSXPCConnection *)self->_remoteServer resume];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

- (DDSInterface)initWithXPCServiceName:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DDSInterface;
  v5 = [(DDSInterface *)&v11 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.DataDeliveryServices.ddsinterface.queue", 0);
    connectionUsageQueue = v5->_connectionUsageQueue;
    v5->_connectionUsageQueue = v6;

    v8 = [v4 copy];
    xpcServiceName = v5->_xpcServiceName;
    v5->_xpcServiceName = v8;
  }

  return v5;
}

- (void)addAssertionForQuery:(id)a3 policy:(id)a4 assertionID:(id)a5 clientID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(DDSInterface *)self connectionUsageQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__DDSInterface_addAssertionForQuery_policy_assertionID_clientID___block_invoke;
  block[3] = &unk_1E86C6158;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_sync(v14, block);
}

void __65__DDSInterface_addAssertionForQuery_policy_assertionID_clientID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) server];
  [v2 addAssertionForQuery:*(a1 + 40) policy:*(a1 + 48) assertionID:*(a1 + 56) clientID:*(a1 + 64)];
}

- (void)removeAssertionWithID:(id)a3
{
  v4 = a3;
  v5 = [(DDSInterface *)self connectionUsageQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__DDSInterface_removeAssertionWithID___block_invoke;
  v7[3] = &unk_1E86C5C70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __38__DDSInterface_removeAssertionWithID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) server];
  [v2 removeAssertionWithID:*(a1 + 40)];
}

- (void)assertionIDsForClientID:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DDSInterface *)self connectionUsageQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__DDSInterface_assertionIDsForClientID_reply___block_invoke;
  block[3] = &unk_1E86C5C48;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

void __46__DDSInterface_assertionIDsForClientID_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) syncServer];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__DDSInterface_assertionIDsForClientID_reply___block_invoke_2;
  v4[3] = &unk_1E86C6180;
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 assertionIDsForClientID:v3 reply:v4];
}

- (void)fetchAssetUpdateStatusForQuery:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DDSInterface *)self connectionUsageQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__DDSInterface_fetchAssetUpdateStatusForQuery_callback___block_invoke;
  block[3] = &unk_1E86C5C48;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __56__DDSInterface_fetchAssetUpdateStatusForQuery_callback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) server];
  [v2 fetchAssetUpdateStatusForQuery:*(a1 + 40) callback:*(a1 + 48)];
}

- (void)updateAssetForQuery:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DDSInterface *)self connectionUsageQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__DDSInterface_updateAssetForQuery_callback___block_invoke;
  block[3] = &unk_1E86C5C48;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __45__DDSInterface_updateAssetForQuery_callback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) server];
  [v2 updateAssetForQuery:*(a1 + 40) callback:*(a1 + 48)];
}

- (void)triggerDumpWithReply:(id)a3
{
  v4 = a3;
  v5 = [(DDSInterface *)self connectionUsageQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__DDSInterface_triggerDumpWithReply___block_invoke;
  v7[3] = &unk_1E86C61D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __37__DDSInterface_triggerDumpWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) syncServer];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37__DDSInterface_triggerDumpWithReply___block_invoke_2;
  v3[3] = &unk_1E86C61A8;
  v4 = *(a1 + 40);
  [v2 triggerDumpWithReply:v3];
}

- (void)triggerUpdate
{
  v3 = [(DDSInterface *)self connectionUsageQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__DDSInterface_triggerUpdate__block_invoke;
  block[3] = &unk_1E86C5AF0;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __29__DDSInterface_triggerUpdate__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) server];
  [v1 triggerUpdate];
}

void __43__DDSInterface_createConnectionIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = DefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_1DF7C6000, v2, OS_LOG_TYPE_DEFAULT, "XPC connection to server invalidated.", v3, 2u);
    }

    [WeakRetained teardownXPCConnection];
  }
}

void __43__DDSInterface_createConnectionIfNecessary__block_invoke_6()
{
  v0 = DefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1DF7C6000, v0, OS_LOG_TYPE_DEFAULT, "XPC connection to server interrupted.", v1, 2u);
  }
}

+ (unint64_t)xpcConnectionOptionsForServer
{
  v2 = DefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DF7C6000, v2, OS_LOG_TYPE_DEFAULT, "Using NSXPCConnectionPrivileged for iOS connection", v4, 2u);
  }

  return 4096;
}

- (void)teardownXPCConnection
{
  v3 = [(DDSInterface *)self connectionUsageQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__DDSInterface_teardownXPCConnection__block_invoke;
  block[3] = &unk_1E86C5AF0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_teardownXPCConnection
{
  [(NSXPCConnection *)self->_remoteServer setInvalidationHandler:0];
  [(NSXPCConnection *)self->_remoteServer setInterruptionHandler:0];
  [(NSXPCConnection *)self->_remoteServer invalidate];
  remoteServer = self->_remoteServer;
  self->_remoteServer = 0;
}

- (id)serviceObjectProxy
{
  v3 = [(DDSInterface *)self connectionUsageQueue];
  dispatch_assert_queue_V2(v3);

  [(DDSInterface *)self createConnectionIfNecessary];
  remoteServer = self->_remoteServer;

  return [(NSXPCConnection *)remoteServer remoteObjectProxyWithErrorHandler:&__block_literal_global_9];
}

void __34__DDSInterface_serviceObjectProxy__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = DefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __34__DDSInterface_serviceObjectProxy__block_invoke_cold_1();
  }
}

void __38__DDSInterface_syncServiceObjectProxy__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = DefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __38__DDSInterface_syncServiceObjectProxy__block_invoke_cold_1();
  }
}

- (id)server
{
  v3 = [(DDSInterface *)self connectionUsageQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(DDSInterface *)self serverOverride];

  if (v4)
  {
    v5 = DefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Using test local server", v9, 2u);
    }

    v6 = [(DDSInterface *)self serverOverride];
  }

  else
  {
    v6 = [(DDSInterface *)self serviceObjectProxy];
    v7 = DefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [DDSInterface server];
    }
  }

  return v6;
}

+ (id)interface
{
  if (interface_onceToken_0 != -1)
  {
    +[DDSInterface interface];
  }

  v3 = interface_xpcInterface;

  return v3;
}

uint64_t __25__DDSInterface_interface__block_invoke()
{
  interface_xpcInterface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5AC6780];

  return MEMORY[0x1EEE66BB8]();
}

- (void)dealloc
{
  [(DDSInterface *)self _teardownXPCConnection];
  v3.receiver = self;
  v3.super_class = DDSInterface;
  [(DDSInterface *)&v3 dealloc];
}

- (DDSManagingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __34__DDSInterface_serviceObjectProxy__block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_1DF7C6000, v0, OS_LOG_TYPE_ERROR, "Error creating proxy (%{public}@)", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __38__DDSInterface_syncServiceObjectProxy__block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_1DF7C6000, v0, OS_LOG_TYPE_ERROR, "Error creating sync proxy (%{public}@)", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)server
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_1DF7C6000, v0, OS_LOG_TYPE_DEBUG, "Interface is using remote server: (%{public}@)", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)syncServer
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_1DF7C6000, v0, OS_LOG_TYPE_DEBUG, "Interface is using sync remote server: (%{public}@)", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end