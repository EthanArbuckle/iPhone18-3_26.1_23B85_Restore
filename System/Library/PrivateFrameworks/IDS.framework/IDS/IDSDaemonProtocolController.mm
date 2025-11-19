@interface IDSDaemonProtocolController
+ (id)sharedInstance;
- (IDSDaemonProtocolController)init;
- (IDSGroupContextCacheMiddlewareDaemonProtocol)groupContextCacheMiddleware;
- (IDSGroupContextDataSourceDaemonProtocol)groupContextDataSource;
- (NSXPCConnection)connection;
- (void)setConnection:(id)a3;
@end

@implementation IDSDaemonProtocolController

+ (id)sharedInstance
{
  if (qword_1ED5DE0B0 != -1)
  {
    sub_195B308CC();
  }

  v3 = qword_1ED5DE070;

  return v3;
}

- (IDSDaemonProtocolController)init
{
  if (_IDSRunningInDaemon())
  {
    v3 = +[IDSLogging DaemonProxy];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_195B268D8(self, v3);
    }

    v4 = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = IDSDaemonProtocolController;
    self = [(IDSDaemonProtocolController *)&v6 init];
    v4 = self;
  }

  return v4;
}

- (NSXPCConnection)connection
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  connection = v2->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.identityservicesd.nsxpc.auth" options:4096];
    v5 = v2->_connection;
    v2->_connection = v4;

    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A52E88];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    [v6 setClasses:v9 forSelector:sel_fetchAllKnownGroups_ argumentIndex:0 ofReply:1];

    [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v6];
    v10 = objc_alloc_init(IDSGroupContextNotifyingObserver);
    observer = v2->_observer;
    v2->_observer = v10;

    v12 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A34FD8];
    [(NSXPCConnection *)v2->_connection setExportedInterface:v12];

    v13 = [(IDSDaemonProtocolController *)v2 observer];
    [(NSXPCConnection *)v2->_connection setExportedObject:v13];

    v14 = +[IDSLogging DaemonProxy];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(IDSDaemonProtocolController *)v2 observer];
      *buf = 138412290;
      v22 = v15;
      _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "Client has set export object %@", buf, 0xCu);
    }

    objc_initWeak(buf, v2);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_195A7F140;
    v19[3] = &unk_1E743EE18;
    objc_copyWeak(&v20, buf);
    [(NSXPCConnection *)v2->_connection setInvalidationHandler:v19];
    [(NSXPCConnection *)v2->_connection setInterruptionHandler:&unk_1F09E61A0];
    [(NSXPCConnection *)v2->_connection resume];
    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);

    connection = v2->_connection;
  }

  v16 = connection;
  objc_sync_exit(v2);

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)setConnection:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  connection = obj->_connection;
  obj->_connection = v4;

  objc_sync_exit(obj);
}

- (IDSGroupContextDataSourceDaemonProtocol)groupContextDataSource
{
  v2 = [(IDSDaemonProtocolController *)self connection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

- (IDSGroupContextCacheMiddlewareDaemonProtocol)groupContextCacheMiddleware
{
  v2 = [(IDSDaemonProtocolController *)self connection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

@end