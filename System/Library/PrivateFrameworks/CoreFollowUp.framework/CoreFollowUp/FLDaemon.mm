@interface FLDaemon
+ (id)daemonWithErrorHandler:(id)handler;
+ (id)sharedInstance;
- (FLDaemon)daemonWithErrorHandler:(id)handler;
- (FLDaemon)init;
- (id)connection;
- (id)remoteObjectInterface;
- (id)synchronousDaemonWithErrorHandler:(id)handler;
- (void)dealloc;
- (void)invalidateConnection;
- (void)setDaemonXPCEndpoint:(id)endpoint;
@end

@implementation FLDaemon

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[FLDaemon sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

- (id)connection
{
  [(NSLock *)self->_connLock lock];
  conn = self->_conn;
  if (!conn)
  {
    daemonXPCEndpoint = self->_daemonXPCEndpoint;
    v5 = objc_alloc(MEMORY[0x277CCAE80]);
    if (daemonXPCEndpoint)
    {
      v6 = [v5 initWithListenerEndpoint:self->_daemonXPCEndpoint];
    }

    else
    {
      v6 = [v5 initWithMachServiceName:@"com.apple.corefollowup.agent" options:0];
    }

    v7 = self->_conn;
    self->_conn = v6;

    v8 = self->_conn;
    remoteObjectInterface = [(FLDaemon *)self remoteObjectInterface];
    [(NSXPCConnection *)v8 setRemoteObjectInterface:remoteObjectInterface];

    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3032000000;
    v16[3] = __Block_byref_object_copy_;
    v16[4] = __Block_byref_object_dispose_;
    selfCopy = self;
    v10 = self->_conn;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __22__FLDaemon_connection__block_invoke;
    v15[3] = &unk_2788528D0;
    v15[4] = v16;
    [(NSXPCConnection *)v10 setInterruptionHandler:v15];
    v11 = self->_conn;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __22__FLDaemon_connection__block_invoke_6;
    v14[3] = &unk_2788528D0;
    v14[4] = v16;
    [(NSXPCConnection *)v11 setInvalidationHandler:v14];
    [(NSXPCConnection *)self->_conn resume];
    _Block_object_dispose(v16, 8);

    conn = self->_conn;
  }

  v12 = conn;
  [(NSLock *)self->_connLock unlock];

  return v12;
}

uint64_t __26__FLDaemon_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_alloc_init(FLDaemon);

  return MEMORY[0x2821F96F8]();
}

- (FLDaemon)init
{
  v6.receiver = self;
  v6.super_class = FLDaemon;
  v2 = [(FLDaemon *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    connLock = v2->_connLock;
    v2->_connLock = v3;
  }

  return v2;
}

- (id)remoteObjectInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28433BDC0];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v4, v5, objc_opt_class(), 0}];
  [v2 setClasses:v6 forSelector:sel_pendingFollowUpItemsForClientIdentifier_completion_ argumentIndex:0 ofReply:1];

  return v2;
}

+ (id)daemonWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[FLDaemon sharedInstance];
  v5 = [v4 daemonWithErrorHandler:handlerCopy];

  return v5;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_conn invalidate];
  v3.receiver = self;
  v3.super_class = FLDaemon;
  [(FLDaemon *)&v3 dealloc];
}

uint64_t __22__FLDaemon_connection__block_invoke(uint64_t result)
{
  v1 = result + 32;
  if (*(*(*(result + 32) + 8) + 40))
  {
    v2 = _FLLogSystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __22__FLDaemon_connection__block_invoke_cold_1(v1);
    }

    [*(*(*(*v1 + 8) + 40) + 16) lock];
    [*(*(*(*v1 + 8) + 40) + 8) invalidate];
    v3 = *(*(*v1 + 8) + 40);
    v4 = *(v3 + 8);
    *(v3 + 8) = 0;

    return [*(*(*(*v1 + 8) + 40) + 16) unlock];
  }

  return result;
}

uint64_t __22__FLDaemon_connection__block_invoke_6(uint64_t result)
{
  v1 = result + 32;
  if (*(*(*(result + 32) + 8) + 40))
  {
    v2 = _FLLogSystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __22__FLDaemon_connection__block_invoke_6_cold_1(v1);
    }

    [*(*(*(*v1 + 8) + 40) + 16) lock];
    v3 = *(*(*v1 + 8) + 40);
    v4 = *(v3 + 8);
    *(v3 + 8) = 0;

    return [*(*(*(*v1 + 8) + 40) + 16) unlock];
  }

  return result;
}

- (void)setDaemonXPCEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  [(FLDaemon *)self invalidateConnection];
  [(NSLock *)self->_connLock lock];
  daemonXPCEndpoint = self->_daemonXPCEndpoint;
  self->_daemonXPCEndpoint = endpointCopy;
  v6 = endpointCopy;

  [(NSLock *)self->_connLock unlock];
}

- (void)invalidateConnection
{
  [(NSLock *)self->_connLock lock];
  [(NSXPCConnection *)self->_conn invalidate];
  conn = self->_conn;
  self->_conn = 0;

  connLock = self->_connLock;

  [(NSLock *)connLock unlock];
}

- (FLDaemon)daemonWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(FLDaemon *)self connection];
  v6 = [connection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (id)synchronousDaemonWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(FLDaemon *)self connection];
  v6 = [connection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

void __22__FLDaemon_connection__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0(a1, *MEMORY[0x277D85DE8]);
  v4 = 138412290;
  v5 = v1;
  _os_log_error_impl(&dword_22E696000, v2, OS_LOG_TYPE_ERROR, "%@: Daemon connection interrupted", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __22__FLDaemon_connection__block_invoke_6_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0(a1, *MEMORY[0x277D85DE8]);
  v4 = 138412290;
  v5 = v1;
  _os_log_error_impl(&dword_22E696000, v2, OS_LOG_TYPE_ERROR, "%@: Daemon connection invalidated", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end