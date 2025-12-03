@interface DDRObserverServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (DDRObserverServer)initWithQueue:(id)queue;
- (DDRObserverServerDelegate)delegate;
- (NSMutableArray)clients;
- (void)connect;
- (void)enumerateObserverConnections:(id)connections;
- (void)start;
@end

@implementation DDRObserverServer

- (DDRObserverServer)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = DDRObserverServer;
  v6 = [(DDRObserverServer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serverQueue, queue);
  }

  return v7;
}

- (void)start
{
  v3 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting up DDRObserverServer", v9, 2u);
  }

  v4 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.devicedatareset.DeviceDataResetObservationService.NonLaunching"];
  [(DDRObserverServer *)self setListener:v4];

  listener = [(DDRObserverServer *)self listener];
  [listener setDelegate:self];

  listener2 = [(DDRObserverServer *)self listener];
  _xpcConnection = [listener2 _xpcConnection];
  xpc_connection_set_non_launching();

  listener3 = [(DDRObserverServer *)self listener];
  [listener3 resume];
}

- (NSMutableArray)clients
{
  clients = self->_clients;
  if (!clients)
  {
    v4 = objc_opt_new();
    v5 = self->_clients;
    self->_clients = v4;

    clients = self->_clients;
  }

  return clients;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Checking incoming connection: %@ to DDRObserverServer", buf, 0xCu);
  }

  v9 = [BSAuditToken tokenFromNSXPCConnection:connectionCopy];
  delegate = [(DDRObserverServer *)self delegate];
  v11 = [delegate connectionHasRequiredEntitlements:v9];

  if (v11)
  {
    v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DDRServerObserverProtocol];
    [connectionCopy setExportedInterface:v12];
    [connectionCopy setExportedObject:self];
    v13 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DDRClientObserverProtocol];
    [connectionCopy setRemoteObjectInterface:v13];

    serverQueue = [(DDRObserverServer *)self serverQueue];
    [connectionCopy _setQueue:serverQueue];

    clients = [(DDRObserverServer *)self clients];
    [clients addObject:connectionCopy];

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000045D0;
    v27[3] = &unk_10000C358;
    v27[4] = self;
    v16 = connectionCopy;
    v28 = v16;
    [v16 setInvalidationHandler:v27];
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_10000465C;
    v24 = &unk_10000C358;
    selfCopy = self;
    v17 = v16;
    v26 = v17;
    [v17 setInterruptionHandler:&v21];
    [v17 resume];
    v18 = sub_100002D58(2uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v30 = listenerCopy;
      v31 = 2112;
      v32 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Adding client complete in DDRObserverServer, listener: %@, connection: %@", buf, 0x16u);
    }

    delegate2 = [(DDRObserverServer *)self delegate];
    [delegate2 didAddObserverClientWithXPCConnection:v17];
  }

  else
  {
    [connectionCopy invalidate];
  }

  return v11;
}

- (void)enumerateObserverConnections:(id)connections
{
  connectionsCopy = connections;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  clients = [(DDRObserverServer *)self clients];
  v6 = [clients countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(clients);
        }

        connectionsCopy[2](connectionsCopy, *(*(&v10 + 1) + 8 * v9));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [clients countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)connect
{
  v2 = sub_100002D58(2uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Incoming connection called connect", v3, 2u);
  }
}

- (DDRObserverServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end