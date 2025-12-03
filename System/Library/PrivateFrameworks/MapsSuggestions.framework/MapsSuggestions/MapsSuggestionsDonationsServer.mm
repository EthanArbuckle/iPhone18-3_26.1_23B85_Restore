@interface MapsSuggestionsDonationsServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MapsSuggestionsDaemonMemory)memory;
- (MapsSuggestionsDonationsServer)initWithMemory:(id)memory;
@end

@implementation MapsSuggestionsDonationsServer

- (MapsSuggestionsDaemonMemory)memory
{
  WeakRetained = objc_loadWeakRetained(&self->_memory);

  return WeakRetained;
}

- (MapsSuggestionsDonationsServer)initWithMemory:(id)memory
{
  memoryCopy = memory;
  v18.receiver = self;
  v18.super_class = MapsSuggestionsDonationsServer;
  v5 = [(MapsSuggestionsDonationsServer *)&v18 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("MapsSuggestionsDonationsServerQueue", v6);
    queue = v5->_queue;
    v5->_queue = v7;

    objc_storeWeak(&v5->_memory, memoryCopy);
    v9 = objc_alloc_init(NSMutableArray);
    peers = v5->_peers;
    v5->_peers = v9;

    v11 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.maps.destinationd.donations"];
    listener = v5->_listener;
    v5->_listener = v11;

    [(NSXPCListener *)v5->_listener setDelegate:v5];
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Donations Listener created.", v17, 2u);
    }

    [(NSXPCListener *)v5->_listener resume];
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Donations Listener resumed.", v17, 2u);
    }

    v15 = v5;
  }

  return v5;
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
      v32 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Incoming XPC connection %@.", buf, 0xCu);
    }

    v10 = [MapsSuggestionsDonationsXPCPeer alloc];
    memory = [(MapsSuggestionsDonationsServer *)self memory];
    v12 = [(MapsSuggestionsDonationsXPCPeer *)v10 initWithXPCConnection:connectionCopy memory:memory];

    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100023EEC;
    block[3] = &unk_1000759B8;
    block[4] = self;
    v9 = v12;
    v30 = v9;
    dispatch_sync(queue, block);
    v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MapsSuggestionsDonateeProxy];
    [connectionCopy setExportedInterface:v14];

    [connectionCopy setExportedObject:v9];
    objc_initWeak(buf, self);
    objc_initWeak(&location, v9);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100023EF8;
    v24[3] = &unk_100075A08;
    objc_copyWeak(&v26, buf);
    objc_copyWeak(&v27, &location);
    v15 = connectionCopy;
    v25 = v15;
    [v15 setInvalidationHandler:v24];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100024180;
    v20[3] = &unk_100075A08;
    objc_copyWeak(&v22, buf);
    objc_copyWeak(&v23, &location);
    v16 = v15;
    v21 = v16;
    [v16 setInterruptionHandler:v20];
    [v16 resume];
    [(MapsSuggestionsDonationsServer *)self _debugPrintOverviewOfConnections];
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Connection resumed.", &v19, 2u);
    }

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v22);

    objc_destroyWeak(&v27);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446978;
    v32 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/MapsSuggestionsDonationsServer.m";
    v33 = 1024;
    v34 = 150;
    v35 = 2082;
    v36 = "[MapsSuggestionsDonationsServer listener:shouldAcceptNewConnection:]";
    v37 = 2082;
    v38 = "nil == (newConnection)";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a newConnection", buf, 0x26u);
  }

  return connectionCopy != 0;
}

@end