@interface FSAgentClient
- (id)initToUser:(unsigned int)user;
- (void)dealloc;
- (void)getNSXPCListenerEndpoint:(id)endpoint instanceID:(id)d replyHandler:(id)handler;
- (void)handleInvalidated;
- (void)installedExtensions:(id)extensions;
- (void)setInstanceDeathHandler:(id)handler;
- (void)setupHandlers;
- (void)startExtension:(id)extension instanceID:(id)d replyHandler:(id)handler;
- (void)stopExtension:(id)extension instanceID:(id)d replyHandler:(id)handler;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = _Block_copy(selfCopy->_interruptionHandler);
  interruptionHandler = selfCopy->_interruptionHandler;
  selfCopy->_interruptionHandler = 0;

  objc_sync_exit(selfCopy);
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5);
    v4 = v5;
  }
}

- (id)initToUser:(unsigned int)user
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

- (void)setInstanceDeathHandler:(id)handler
{
  handlerCopy = handler;
  v4 = _Block_copy(handlerCopy);
  instanceDeathHandler = self->_instanceDeathHandler;
  self->_instanceDeathHandler = v4;

  [(FSAgentClientDelegate *)self->_delegate setInstanceDeathHandler:handlerCopy];
}

- (void)installedExtensions:(id)extensions
{
  extensionsCopy = extensions;
  conn = self->_conn;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__FSAgentClient_installedExtensions___block_invoke;
  v8[3] = &unk_278FECE20;
  v9 = extensionsCopy;
  v6 = extensionsCopy;
  v7 = [(NSXPCConnection *)conn remoteObjectProxyWithErrorHandler:v8];
  [v7 installedExtensions:v6];
}

- (void)startExtension:(id)extension instanceID:(id)d replyHandler:(id)handler
{
  handlerCopy = handler;
  conn = self->_conn;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__FSAgentClient_startExtension_instanceID_replyHandler___block_invoke;
  v14[3] = &unk_278FECE20;
  v15 = handlerCopy;
  v10 = handlerCopy;
  dCopy = d;
  extensionCopy = extension;
  v13 = [(NSXPCConnection *)conn remoteObjectProxyWithErrorHandler:v14];
  [v13 startExtension:extensionCopy instanceID:dCopy replyHandler:v10];
}

- (void)getNSXPCListenerEndpoint:(id)endpoint instanceID:(id)d replyHandler:(id)handler
{
  handlerCopy = handler;
  conn = self->_conn;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__FSAgentClient_getNSXPCListenerEndpoint_instanceID_replyHandler___block_invoke;
  v14[3] = &unk_278FECE20;
  v15 = handlerCopy;
  v10 = handlerCopy;
  dCopy = d;
  endpointCopy = endpoint;
  v13 = [(NSXPCConnection *)conn remoteObjectProxyWithErrorHandler:v14];
  [v13 getNSXPCListenerEndpoint:endpointCopy instanceID:dCopy replyHandler:v10];
}

- (void)stopExtension:(id)extension instanceID:(id)d replyHandler:(id)handler
{
  handlerCopy = handler;
  conn = self->_conn;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__FSAgentClient_stopExtension_instanceID_replyHandler___block_invoke;
  v14[3] = &unk_278FECE20;
  v15 = handlerCopy;
  v10 = handlerCopy;
  dCopy = d;
  extensionCopy = extension;
  v13 = [(NSXPCConnection *)conn remoteObjectProxyWithErrorHandler:v14];
  [v13 stopExtension:extensionCopy instanceID:dCopy replyHandler:v10];
}

@end