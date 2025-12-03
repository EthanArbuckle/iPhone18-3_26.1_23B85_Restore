@interface NavdRouteGeniusServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NavdRouteGeniusServer)init;
- (id)uniqueName;
- (void)_q_start;
- (void)_q_stop;
- (void)didUpdateRouteGenius:(id)genius;
@end

@implementation NavdRouteGeniusServer

- (NavdRouteGeniusServer)init
{
  v15.receiver = self;
  v15.super_class = NavdRouteGeniusServer;
  v2 = [(NavdRouteGeniusServer *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("NavdRouteGeniusServerQueue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(NSMutableArray);
    peers = v2->_peers;
    v2->_peers = v6;

    v8 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.navd.routegenius"];
    listener = v2->_listener;
    v2->_listener = v8;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "RouteGenius Listener created.", v14, 2u);
    }

    [(NSXPCListener *)v2->_listener resume];
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "RouteGenius Listener resumed.", v14, 2u);
    }

    v12 = v2;
  }

  return v2;
}

- (id)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = GEOFindOrCreateLog();
  v9 = v8;
  if (connectionCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v31 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Incoming XPC connection %@.", buf, 0xCu);
    }

    v10 = [NavdRouteGeniusXPCPeer alloc];
    activatable = [(NavdRouteGeniusServer *)self activatable];
    v12 = [(NavdRouteGeniusXPCPeer *)v10 initWithXPCConnection:connectionCopy delegate:activatable];

    objc_initWeak(buf, self);
    v13 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MNRouteGeniusDelegateProxy];
    v14 = objc_opt_class();
    v15 = [NSSet setWithObjects:v14, objc_opt_class(), 0];
    [v13 setClasses:v15 forSelector:"didUpdateRouteGenius:" argumentIndex:0 ofReply:0];

    [connectionCopy setRemoteObjectInterface:v13];
    v16 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MNRouteGeniusProxy];
    [connectionCopy setExportedInterface:v16];

    [connectionCopy setExportedObject:v12];
    objc_initWeak(&location, v12);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10002C868;
    v25[3] = &unk_100065110;
    objc_copyWeak(&v27, buf);
    objc_copyWeak(&v28, &location);
    v17 = connectionCopy;
    v26 = v17;
    [v17 setInvalidationHandler:v25];
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002CBD0;
    block[3] = &unk_100064F58;
    objc_copyWeak(&v24, buf);
    v9 = v12;
    v23 = v9;
    dispatch_sync(queue, block);
    [v17 resume];
    [(NavdRouteGeniusServer *)self _debugPrintOverviewOfConnections];
    v19 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Connection resumed.", v21, 2u);
    }

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);

    objc_destroyWeak(buf);
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446978;
    v31 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/navd/RouteGenius/NavdRouteGeniusServer.m";
    v32 = 1024;
    v33 = 178;
    v34 = 2082;
    v35 = "[NavdRouteGeniusServer listener:shouldAcceptNewConnection:]";
    v36 = 2082;
    v37 = "nil == (newConnection)";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a newConnection", buf, 0x26u);
  }

  return connectionCopy != 0;
}

- (void)didUpdateRouteGenius:(id)genius
{
  geniusCopy = genius;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002CDB8;
  block[3] = &unk_100064F58;
  objc_copyWeak(&v9, &location);
  v8 = geniusCopy;
  v6 = geniusCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_q_start
{
  if (self->_isActive)
  {
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v7 = 0;
      v3 = "RouteGenius is already active, no need to start";
      v4 = &v7;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, v3, v4, 2u);
    }
  }

  else
  {
    self->_isActive = 1;
    activatable = [(NavdRouteGeniusServer *)self activatable];
    [activatable start];

    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v6 = 0;
      v3 = "Started RouteGenius";
      v4 = &v6;
      goto LABEL_6;
    }
  }
}

- (void)_q_stop
{
  if (self->_isActive)
  {
    self->_isActive = 0;
    activatable = [(NavdRouteGeniusServer *)self activatable];
    [activatable stop];

    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v6 = 0;
      v4 = "Stopped RouteGenius";
      v5 = &v6;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, v4, v5, 2u);
    }
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v4 = "RouteGenius is not active, no need to stop";
      v5 = buf;
      goto LABEL_6;
    }
  }
}

@end