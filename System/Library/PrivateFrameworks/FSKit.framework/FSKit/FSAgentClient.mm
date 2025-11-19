@interface FSAgentClient
- (id)initToUser:(unsigned int)a3;
- (void)dealloc;
- (void)getNSXPCListenerEndpoint:(id)a3 instanceID:(id)a4 replyHandler:(id)a5;
- (void)handleInvalidated;
- (void)installedExtensions:(id)a3;
- (void)setInstanceDeathHandler:(id)a3;
- (void)setupHandlers;
- (void)startExtension:(id)a3 instanceID:(id)a4 replyHandler:(id)a5;
- (void)stopExtension:(id)a3 instanceID:(id)a4 replyHandler:(id)a5;
@end

@implementation FSAgentClient

- (void)setupHandlers
{
  objc_initWeak(&location, self);
  conn = self->_conn;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__FSAgentClient_setupHandlers__block_invoke;
  v7[3] = &unk_278FECDB8;
  objc_copyWeak(&v8, &location);
  [(NSXPCConnection *)conn setInterruptionHandler:v7];
  v4 = self->_conn;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__FSAgentClient_setupHandlers__block_invoke_3;
  v5[3] = &unk_278FECDB8;
  objc_copyWeak(&v6, &location);
  [(NSXPCConnection *)v4 setInvalidationHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __30__FSAgentClient_setupHandlers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__FSAgentClient_setupHandlers__block_invoke_2;
    block[3] = &unk_278FED278;
    block[4] = WeakRetained;
    dispatch_async(v2, block);
  }
}

void __30__FSAgentClient_setupHandlers__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__FSAgentClient_setupHandlers__block_invoke_4;
    block[3] = &unk_278FED278;
    block[4] = WeakRetained;
    dispatch_async(v2, block);
  }
}

- (void)handleInvalidated
{
  v2 = self;
  objc_sync_enter(v2);
  v5 = _Block_copy(v2->_interruptionHandler);
  interruptionHandler = v2->_interruptionHandler;
  v2->_interruptionHandler = 0;

  objc_sync_exit(v2);
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5);
    v4 = v5;
  }
}

- (id)initToUser:(unsigned int)a3
{
  v4 = fskit_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [FSAgentClient initToUser:v4];
  }

  return 0;
}

- (void)dealloc
{
  conn = self->_conn;
  if (conn)
  {
    [(NSXPCConnection *)conn invalidate];
    v4 = self->_conn;
    self->_conn = 0;
  }

  v5.receiver = self;
  v5.super_class = FSAgentClient;
  [(FSAgentClient *)&v5 dealloc];
}

- (void)setInstanceDeathHandler:(id)a3
{
  v6 = a3;
  v4 = _Block_copy(v6);
  instanceDeathHandler = self->_instanceDeathHandler;
  self->_instanceDeathHandler = v4;

  [(FSAgentClientDelegate *)self->_delegate setInstanceDeathHandler:v6];
}

- (void)installedExtensions:(id)a3
{
  v4 = a3;
  conn = self->_conn;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__FSAgentClient_installedExtensions___block_invoke;
  v8[3] = &unk_278FECE20;
  v9 = v4;
  v6 = v4;
  v7 = [(NSXPCConnection *)conn remoteObjectProxyWithErrorHandler:v8];
  [v7 installedExtensions:v6];
}

- (void)startExtension:(id)a3 instanceID:(id)a4 replyHandler:(id)a5
{
  v8 = a5;
  conn = self->_conn;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__FSAgentClient_startExtension_instanceID_replyHandler___block_invoke;
  v14[3] = &unk_278FECE20;
  v15 = v8;
  v10 = v8;
  v11 = a4;
  v12 = a3;
  v13 = [(NSXPCConnection *)conn remoteObjectProxyWithErrorHandler:v14];
  [v13 startExtension:v12 instanceID:v11 replyHandler:v10];
}

- (void)getNSXPCListenerEndpoint:(id)a3 instanceID:(id)a4 replyHandler:(id)a5
{
  v8 = a5;
  conn = self->_conn;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__FSAgentClient_getNSXPCListenerEndpoint_instanceID_replyHandler___block_invoke;
  v14[3] = &unk_278FECE20;
  v15 = v8;
  v10 = v8;
  v11 = a4;
  v12 = a3;
  v13 = [(NSXPCConnection *)conn remoteObjectProxyWithErrorHandler:v14];
  [v13 getNSXPCListenerEndpoint:v12 instanceID:v11 replyHandler:v10];
}

- (void)stopExtension:(id)a3 instanceID:(id)a4 replyHandler:(id)a5
{
  v8 = a5;
  conn = self->_conn;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__FSAgentClient_stopExtension_instanceID_replyHandler___block_invoke;
  v14[3] = &unk_278FECE20;
  v15 = v8;
  v10 = v8;
  v11 = a4;
  v12 = a3;
  v13 = [(NSXPCConnection *)conn remoteObjectProxyWithErrorHandler:v14];
  [v13 stopExtension:v12 instanceID:v11 replyHandler:v10];
}

@end