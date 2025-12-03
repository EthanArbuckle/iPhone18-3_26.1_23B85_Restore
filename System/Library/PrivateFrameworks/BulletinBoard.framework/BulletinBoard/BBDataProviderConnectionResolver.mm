@interface BBDataProviderConnectionResolver
+ (id)resolverForConnection:(id)connection;
+ (id)xpcInterface;
- (BBDataProviderConnection)dataProviderConnection;
- (BBDataProviderConnectionResolver)initWithConnection:(id)connection;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)_invalidate;
- (void)_queue_registerWithServer:(id)server;
- (void)_registerForPublicationNotification;
- (void)dealloc;
- (void)invalidate;
- (void)ping:(id)ping;
@end

@implementation BBDataProviderConnectionResolver

- (BBDataProviderConnectionResolver)initWithConnection:(id)connection
{
  connectionCopy = connection;
  if (!connectionCopy)
  {
    [(BBDataProviderConnectionResolver *)a2 initWithConnection:?];
  }

  v19.receiver = self;
  v19.super_class = BBDataProviderConnectionResolver;
  v6 = [(BBDataProviderConnectionResolver *)&v19 init];
  v7 = v6;
  if (v6)
  {
    [(BBDataProviderConnectionResolver *)v6 setDataProviderConnection:connectionCopy];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.bulletinboard.BBDataProviderConnectionResolver", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    v11 = objc_alloc(MEMORY[0x277CCAE98]);
    serviceName = [connectionCopy serviceName];
    v13 = [v11 initWithMachServiceName:serviceName];
    wakeupListener = v7->_wakeupListener;
    v7->_wakeupListener = v13;

    [(NSXPCListener *)v7->_wakeupListener setDelegate:v7];
    [(NSXPCListener *)v7->_wakeupListener resume];
    v15 = v7->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__BBDataProviderConnectionResolver_initWithConnection___block_invoke;
    block[3] = &unk_278D2A600;
    v18 = v7;
    dispatch_async(v15, block);
  }

  return v7;
}

void __55__BBDataProviderConnectionResolver_initWithConnection___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __55__BBDataProviderConnectionResolver_initWithConnection___block_invoke_2;
  v2[3] = &unk_278D2A600;
  v3 = v1;
  [v3 _queue_registerWithServer:v2];
}

+ (id)resolverForConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [[BBDataProviderConnectionResolver alloc] initWithConnection:connectionCopy];

  return v4;
}

- (void)dealloc
{
  [(BBDataProviderConnectionResolver *)self _invalidate];
  v3.receiver = self;
  v3.super_class = BBDataProviderConnectionResolver;
  [(BBDataProviderConnectionResolver *)&v3 dealloc];
}

- (void)_invalidate
{
  notify_cancel(self->_listeningToken);
  self->_listeningToken = -1;
  [(NSXPCListener *)self->_wakeupListener invalidate];
  wakeupListener = self->_wakeupListener;
  self->_wakeupListener = 0;

  [(NSXPCConnection *)self->_connectionToServer invalidate];
  connectionToServer = self->_connectionToServer;
  self->_connectionToServer = 0;

  [(BBDataProviderConnectionResolver *)self setDataProviderConnection:0];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__BBDataProviderConnectionResolver_invalidate__block_invoke;
  block[3] = &unk_278D2A600;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_registerForPublicationNotification
{
  queue = self->_queue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __71__BBDataProviderConnectionResolver__registerForPublicationNotification__block_invoke;
  handler[3] = &unk_278D2B138;
  handler[4] = self;
  notify_register_dispatch(BBServerListeningForConnectionsKey, &self->_listeningToken, queue, handler);
}

uint64_t __71__BBDataProviderConnectionResolver__registerForPublicationNotification__block_invoke(uint64_t result, int token)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(*(result + 32) + 32) == token)
  {
    v2 = result;
    state64 = 0;
    result = notify_get_state(token, &state64);
    if (state64 == 1)
    {
      v3 = BBLogConnection;
      if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(v2 + 32);
        v5 = v3;
        v6 = [v4 dataProviderConnection];
        v7 = [v6 serviceName];
        *buf = 138543362;
        v11 = v7;
        _os_log_impl(&dword_241EFF000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ notified that BBServer is ready for publication.", buf, 0xCu);
      }

      result = [*(v2 + 32) _queue_registerWithServer:0];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_queue_registerWithServer:(id)server
{
  v38 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  if (self->_connectionToServer)
  {
    dataProviderConnection = [(BBDataProviderConnectionResolver *)self dataProviderConnection];
    [dataProviderConnection setServerProxy:0];

    [(NSXPCConnection *)self->_connectionToServer invalidate];
    connectionToServer = self->_connectionToServer;
    self->_connectionToServer = 0;
  }

  v8 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.bulletinboard.dataproviderconnection" options:0];
  v9 = self->_connectionToServer;
  self->_connectionToServer = v8;

  v10 = self->_connectionToServer;
  v11 = BBDataProviderConnectionCheckinServerInterface();
  [(NSXPCConnection *)v10 setRemoteObjectInterface:v11];

  objc_initWeak(&location, self);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __62__BBDataProviderConnectionResolver__queue_registerWithServer___block_invoke;
  v30[3] = &unk_278D2B250;
  objc_copyWeak(&v31, &location);
  v12 = MEMORY[0x245D05D40](v30);
  [(NSXPCConnection *)self->_connectionToServer setInterruptionHandler:v12];
  [(NSXPCConnection *)self->_connectionToServer setInvalidationHandler:v12];
  [(NSXPCConnection *)self->_connectionToServer resume];
  v13 = self->_connectionToServer;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __62__BBDataProviderConnectionResolver__queue_registerWithServer___block_invoke_18;
  v28[3] = &unk_278D2B6D8;
  v28[4] = self;
  v14 = serverCopy;
  v29 = v14;
  v15 = [(NSXPCConnection *)v13 remoteObjectProxyWithErrorHandler:v28];
  if (v15)
  {
    dataProviderConnection2 = [(BBDataProviderConnectionResolver *)self dataProviderConnection];
    serviceName = [dataProviderConnection2 serviceName];
    if (!dataProviderConnection2)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"BBDataProviderConnectionResolver.m" lineNumber:131 description:@"dataProviderConnection is nil"];
    }

    if (!serviceName)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"BBDataProviderConnectionResolver.m" lineNumber:132 description:@"Must register a non-nil service name with BBDataProviderConnectionCheckinServer"];
    }

    v18 = BBLogConnection;
    if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = serviceName;
      _os_log_impl(&dword_241EFF000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ is registering with BulletinBoard", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__8;
    v36 = __Block_byref_object_dispose__8;
    v37 = self->_connectionToServer;
    bundleID = [dataProviderConnection2 bundleID];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __62__BBDataProviderConnectionResolver__queue_registerWithServer___block_invoke_26;
    v24[3] = &unk_278D2B700;
    p_buf = &buf;
    v24[4] = self;
    v20 = dataProviderConnection2;
    v25 = v20;
    v26 = v14;
    [v15 registerServiceName:serviceName appBundleID:bundleID completion:v24];

    _Block_object_dispose(&buf, 8);
  }

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);

  v21 = *MEMORY[0x277D85DE8];
}

void __62__BBDataProviderConnectionResolver__queue_registerWithServer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained dataProviderConnection];
  v3 = [v2 serviceName];
  v4 = v3;
  v5 = @"<unknown>";
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
  {
    __62__BBDataProviderConnectionResolver__queue_registerWithServer___block_invoke_cold_1(v6, v7);
  }
}

void __62__BBDataProviderConnectionResolver__queue_registerWithServer___block_invoke_18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
  {
    __62__BBDataProviderConnectionResolver__queue_registerWithServer___block_invoke_18_cold_1(a1, v4, v3);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

uint64_t __62__BBDataProviderConnectionResolver__queue_registerWithServer___block_invoke_26(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (*(*(*(a1 + 56) + 8) + 40) == *(*(a1 + 32) + 24))
  {
    [*(a1 + 40) setServerProxy:v3];
    v3 = v6;
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  return MEMORY[0x2821F96F8]();
}

+ (id)xpcInterface
{
  if (xpcInterface_onceToken_0 != -1)
  {
    +[BBDataProviderConnectionResolver xpcInterface];
  }

  v3 = xpcInterface___interface_0;

  return v3;
}

uint64_t __48__BBDataProviderConnectionResolver_xpcInterface__block_invoke()
{
  xpcInterface___interface_0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28543D510];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v23 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  listenerCopy = listener;
  dataProviderConnection = [(BBDataProviderConnectionResolver *)self dataProviderConnection];
  serviceName = [dataProviderConnection serviceName];

  v10 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543618;
    v20 = serviceName;
    v21 = 2112;
    v22 = connectionCopy;
    _os_log_impl(&dword_241EFF000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ received a connection request: %@", &v19, 0x16u);
  }

  wakeupListener = self->_wakeupListener;

  if (wakeupListener != listenerCopy)
  {
    goto LABEL_8;
  }

  v12 = [connectionCopy valueForEntitlement:@"com.apple.bulletinboard"];
  bOOLValue = [v12 BOOLValue];

  if (!bOOLValue)
  {
    v16 = BBLogConnection;
    if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
    {
      [BBDataProviderConnectionResolver listener:serviceName shouldAcceptNewConnection:v16];
    }

LABEL_8:
    v15 = 0;
    goto LABEL_9;
  }

  xpcInterface = [objc_opt_class() xpcInterface];
  [connectionCopy setExportedInterface:xpcInterface];

  [connectionCopy setExportedObject:self];
  [connectionCopy resume];
  v15 = 1;
LABEL_9:

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)ping:(id)ping
{
  (*(ping + 2))(ping, a2);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  [currentConnection invalidate];
}

- (BBDataProviderConnection)dataProviderConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_dataProviderConnection);

  return WeakRetained;
}

- (void)initWithConnection:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BBDataProviderConnectionResolver.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"connection != nil"}];
}

void __62__BBDataProviderConnectionResolver__queue_registerWithServer___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_241EFF000, a2, OS_LOG_TYPE_ERROR, "Your data provider for service '%{public}@' has been interrupted or invalidated. Either BulletinBoard has crashed or you are using the same service name from two different processes.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __62__BBDataProviderConnectionResolver__queue_registerWithServer___block_invoke_18_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v9 = 138543618;
  v10 = v7;
  v11 = 2114;
  v12 = a3;
  _os_log_error_impl(&dword_241EFF000, v5, OS_LOG_TYPE_ERROR, "%{public}@ unable to retrieve checkin server proxy: %{public}@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)listener:(uint64_t)a1 shouldAcceptNewConnection:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_241EFF000, a2, OS_LOG_TYPE_ERROR, "%{public}@ cancelling incoming connection because it lacks proper entitlement.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end