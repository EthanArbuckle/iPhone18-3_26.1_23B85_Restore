@interface CCSetChangeRelayServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CCSetChangeRelayServer)initWithQueue:(id)queue;
- (void)activate;
- (void)notifyChangeToSet:(id)set completion:(id)completion;
@end

@implementation CCSetChangeRelayServer

- (CCSetChangeRelayServer)initWithQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = CCSetChangeRelayServer;
  v5 = [(CCSetChangeRelayServer *)&v11 init];
  if (v5)
  {
    v6 = +[CCSetChangeXPCNotifier sharedInstance];
    setChangeNotifier = v5->_setChangeNotifier;
    v5->_setChangeNotifier = v6;

    v8 = [objc_alloc(MEMORY[0x1E698EA30]) initWithMachServiceName:@"com.apple.cascade.SetChangeRelayService" queue:queueCopy];
    listener = v5->_listener;
    v5->_listener = v8;

    [(BMXPCListener *)v5->_listener setDelegate:v5];
  }

  return v5;
}

- (void)activate
{
  v8 = *MEMORY[0x1E69E9840];
  [(BMXPCListener *)self->_listener activate];
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    listener = self->_listener;
    v6 = 138412290;
    v7 = listener;
    _os_log_impl(&dword_1B6DB2000, v3, OS_LOG_TYPE_DEFAULT, "CCSetChangeRelayServer activated with listener: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [MEMORY[0x1E698E9D8] processWithXPCConnection:connectionCopy];
  v7 = __biome_log_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CCSetChangeRelayServer listener:v6 shouldAcceptNewConnection:v7];
  }

  processType = [v6 processType];
  if (processType == 5)
  {
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2ED35F0];
    [v9 setClass:objc_opt_class() forSelector:sel_notifyChangeToSet_completion_ argumentIndex:0 ofReply:0];
    [connectionCopy setExportedInterface:v9];
    [connectionCopy setExportedObject:self];
    [connectionCopy resume];
  }

  else
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CCSetChangeRelayServer listener:v6 shouldAcceptNewConnection:v10];
    }

    [connectionCopy invalidate];
  }

  return processType == 5;
}

- (void)notifyChangeToSet:(id)set completion:(id)completion
{
  setCopy = set;
  completionCopy = completion;
  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CCSetChangeRelayServer notifyChangeToSet:setCopy completion:v8];
  }

  [(CCSetChangeXPCNotifier *)self->_setChangeNotifier notifyChangeToSet:setCopy];
  completionCopy[2](completionCopy, 1);
}

- (void)listener:(void *)a1 shouldAcceptNewConnection:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = [a1 executableName];
  [a1 pid];
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_DEBUG, "CCSetChangeRelayServer received new connection request from %@(%d)", v6, 0x12u);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)listener:(void *)a1 shouldAcceptNewConnection:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = [a1 executableName];
  [a1 pid];
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_ERROR, "CCSetChangeRelayServer refusing connection from %{public}@(%d), process is not SetStoreUpdateService", v6, 0x12u);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)notifyChangeToSet:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_DEBUG, "CCSetChangeRelayServer notifying change to Set: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end