@interface MapsSuggestionsPredictionsServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MapsSuggestionsDaemonMemory)memory;
- (MapsSuggestionsPredictionsServer)initWithMemory:(id)memory;
- (id).cxx_construct;
@end

@implementation MapsSuggestionsPredictionsServer

- (MapsSuggestionsPredictionsServer)initWithMemory:(id)memory
{
  memoryCopy = memory;
  v21.receiver = self;
  v21.super_class = MapsSuggestionsPredictionsServer;
  v5 = [(MapsSuggestionsPredictionsServer *)&v21 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_memory, memoryCopy);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    sub_100003654(&v19, @"MapsSuggestionsPredictionsServerQueue", v7);
    v8 = v19;
    v19 = 0;
    innerQueue = v6->_queue._innerQueue;
    v6->_queue._innerQueue = v8;

    v10 = v20;
    v20 = 0;
    name = v6->_queue._name;
    v6->_queue._name = v10;

    v12 = objc_alloc_init(NSMutableArray);
    peers = v6->_peers;
    v6->_peers = v12;

    v14 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.maps.destinationd.predictions"];
    listener = v6->_listener;
    v6->_listener = v14;

    [(NSXPCListener *)v6->_listener setDelegate:v6];
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Predictions Listener created.", &v19, 2u);
    }

    [(NSXPCListener *)v6->_listener resume];
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Predictions Listener resumed.", &v19, 2u);
    }
  }

  return v6;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  if (connectionCopy)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v41 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Incoming XPC connection %@.", buf, 0xCu);
    }

    v7 = [MapsSuggestionsPredictionsXPCPeer alloc];
    memory = [(MapsSuggestionsPredictionsServer *)self memory];
    v9 = [(MapsSuggestionsPredictionsXPCPeer *)v7 initWithXPCConnection:connectionCopy memory:memory];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001C4C4;
    block[3] = &unk_100075230;
    block[4] = self;
    v10 = v9;
    v39 = v10;
    dispatch_sync(self->_queue._innerQueue, block);
    v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MapsSuggestionsPredictionsProxy];
    v12 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
    [v11 setClasses:v12 forSelector:"predictedTransportModeForDestinationEntryData:originCoordinateData:handler:" argumentIndex:0 ofReply:1];

    v13 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
    [v11 setClasses:v13 forSelector:"predictedTransportModeForDestinationEntryData:originCoordinateData:handler:" argumentIndex:1 ofReply:1];

    v14 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
    [v11 setClasses:v14 forSelector:"predictedTransportModeForDestinationEntryData:originCoordinateData:handler:" argumentIndex:2 ofReply:1];

    v15 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
    [v11 setClasses:v15 forSelector:"predictedTransportModeForDestinationEntryData:originCoordinateData:handler:" argumentIndex:3 ofReply:1];

    v16 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
    [v11 setClasses:v16 forSelector:"predictedTransportModeForDestinationEntryData:originCoordinateData:handler:" argumentIndex:0 ofReply:0];

    v17 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
    [v11 setClasses:v17 forSelector:"predictedTransportModeForDestinationEntryData:originCoordinateData:handler:" argumentIndex:1 ofReply:0];

    v18 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
    [v11 setClasses:v18 forSelector:"predictedTransportModeForDestinationMapItemData:originCoordinateData:handler:" argumentIndex:0 ofReply:1];

    v19 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
    [v11 setClasses:v19 forSelector:"predictedTransportModeForDestinationMapItemData:originCoordinateData:handler:" argumentIndex:1 ofReply:1];

    v20 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
    [v11 setClasses:v20 forSelector:"predictedTransportModeForDestinationMapItemData:originCoordinateData:handler:" argumentIndex:2 ofReply:1];

    v21 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
    [v11 setClasses:v21 forSelector:"predictedTransportModeForDestinationMapItemData:originCoordinateData:handler:" argumentIndex:3 ofReply:1];

    v22 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
    [v11 setClasses:v22 forSelector:"predictedTransportModeForDestinationMapItemData:originCoordinateData:handler:" argumentIndex:0 ofReply:0];

    v23 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
    [v11 setClasses:v23 forSelector:"predictedTransportModeForDestinationMapItemData:originCoordinateData:handler:" argumentIndex:1 ofReply:0];

    [connectionCopy setExportedInterface:v11];
    [connectionCopy setExportedObject:v10];
    objc_initWeak(buf, self);
    objc_initWeak(&location, v10);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10001C4D0;
    v33[3] = &unk_100075720;
    objc_copyWeak(&v35, buf);
    objc_copyWeak(&v36, &location);
    v24 = connectionCopy;
    v34 = v24;
    [v24 setInvalidationHandler:v33];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10001C838;
    v29[3] = &unk_100075720;
    objc_copyWeak(&v31, buf);
    objc_copyWeak(&v32, &location);
    v25 = v24;
    v30 = v25;
    [v25 setInterruptionHandler:v29];
    [v25 resume];
    [(MapsSuggestionsPredictionsServer *)self _debugPrintOverviewOfConnections];
    v26 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Connection resumed.", v28, 2u);
    }

    objc_destroyWeak(&v32);
    objc_destroyWeak(&v31);

    objc_destroyWeak(&v36);
    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v41 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/MapsSuggestionsPredictionsServer.mm";
      v42 = 1024;
      v43 = 212;
      v44 = 2082;
      v45 = "[MapsSuggestionsPredictionsServer listener:shouldAcceptNewConnection:]";
      v46 = 2082;
      v47 = "nil == (newConnection)";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a newConnection", buf, 0x26u);
    }
  }

  return connectionCopy != 0;
}

- (MapsSuggestionsDaemonMemory)memory
{
  WeakRetained = objc_loadWeakRetained(&self->_memory);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end