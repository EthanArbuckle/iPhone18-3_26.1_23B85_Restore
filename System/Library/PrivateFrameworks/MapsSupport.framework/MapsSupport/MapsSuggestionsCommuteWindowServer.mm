@interface MapsSuggestionsCommuteWindowServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MapsSuggestionsCommuteWindowServer)initWithResourceDepot:(id)depot conditions:(id)conditions engine:(id)engine;
@end

@implementation MapsSuggestionsCommuteWindowServer

- (MapsSuggestionsCommuteWindowServer)initWithResourceDepot:(id)depot conditions:(id)conditions engine:(id)engine
{
  depotCopy = depot;
  engineCopy = engine;
  v21.receiver = self;
  v21.super_class = MapsSuggestionsCommuteWindowServer;
  v10 = [(MapsSuggestionsCommuteWindowServer *)&v21 init];
  if (v10)
  {
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("MapsSuggestionsCommuteWindowServerQueue", v11);
    queue = v10->_queue;
    v10->_queue = v12;

    objc_storeStrong(&v10->_resourceDepot, depot);
    v14 = objc_alloc_init(NSMutableArray);
    peers = v10->_peers;
    v10->_peers = v14;

    v16 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.navd.commutewindow"];
    listener = v10->_listener;
    v10->_listener = v16;

    [(NSXPCListener *)v10->_listener setDelegate:v10];
    objc_storeStrong(&v10->_doomEngineWrapper, engine);
    [(NSXPCListener *)v10->_listener resume];
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Commute Window Server Listener created and resumed.", v20, 2u);
    }
  }

  return v10;
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
      v30 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Incoming XPC connection %@.", buf, 0xCu);
    }

    v10 = [[MapsSuggestionsCommuteWindowXPCPeer alloc] initWithXPCConnection:connectionCopy resourceDepot:self->_resourceDepot conditions:0 doomEngine:self->_doomEngineWrapper];
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000095C0;
    block[3] = &unk_1000650C0;
    block[4] = self;
    v9 = v10;
    v28 = v9;
    dispatch_sync(queue, block);
    v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MapsSuggestionsCommuteWindowProxy];
    [connectionCopy setExportedInterface:v12];

    [connectionCopy setExportedObject:v9];
    objc_initWeak(buf, self);
    objc_initWeak(&location, v9);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000095CC;
    v22[3] = &unk_100065110;
    objc_copyWeak(&v24, buf);
    objc_copyWeak(&v25, &location);
    v13 = connectionCopy;
    v23 = v13;
    [v13 setInvalidationHandler:v22];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100009854;
    v18[3] = &unk_100065110;
    objc_copyWeak(&v20, buf);
    objc_copyWeak(&v21, &location);
    v14 = v13;
    v19 = v14;
    [v14 setInterruptionHandler:v18];
    [v14 resume];
    [(MapsSuggestionsCommuteWindowServer *)self _debugPrintOverviewOfConnections];
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Connection resumed.", &v17, 2u);
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&v20);

    objc_destroyWeak(&v25);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446978;
    v30 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/DOoM & Location Intelligence/MapsSuggestionsCommuteWindowServer.m";
    v31 = 1024;
    v32 = 142;
    v33 = 2082;
    v34 = "[MapsSuggestionsCommuteWindowServer listener:shouldAcceptNewConnection:]";
    v35 = 2082;
    v36 = "nil == (newConnection)";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a newConnection", buf, 0x26u);
  }

  return connectionCopy != 0;
}

@end