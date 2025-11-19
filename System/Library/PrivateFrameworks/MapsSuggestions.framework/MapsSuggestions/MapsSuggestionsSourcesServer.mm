@interface MapsSuggestionsSourcesServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (MapsSuggestionsSourcesServer)initWithMemory:(id)a3;
- (NSString)uniqueName;
- (void)dealloc;
- (void)didUpdateLocation:(id)a3;
@end

@implementation MapsSuggestionsSourcesServer

- (MapsSuggestionsSourcesServer)initWithMemory:(id)a3
{
  objc_initWeak(&location, a3);
  v56.receiver = self;
  v56.super_class = MapsSuggestionsSourcesServer;
  v4 = [(MapsSuggestionsSourcesServer *)&v56 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("MapsSuggestionsSourcesServerQueue", v5);
    queue = v4->_queue;
    v4->_queue = v6;

    v8 = objc_loadWeakRetained(&location);
    v9 = v8;
    if (!v8)
    {
      v41 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v73 = "MapsSuggestionsSourcesServer.m";
        v74 = 1026;
        v75 = 312;
        v76 = 2082;
        v77 = "[MapsSuggestionsSourcesServer initWithMemory:]";
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongMemory went away in %{public}s", buf, 0x1Cu);
      }

      v40 = 0;
      goto LABEL_55;
    }

    v10 = [v8 locationUpdater];
    locationUpdater = v4->_locationUpdater;
    v4->_locationUpdater = v10;

    v12 = [v9 sourceWrapper];
    wrapper = v4->_wrapper;
    v4->_wrapper = v12;

    v14 = [v9 destinationGraph];
    graph = v4->_graph;
    v4->_graph = v14;

    v16 = objc_alloc_init(NSMutableArray);
    peers = v4->_peers;
    v4->_peers = v16;

    if (!MapsSuggestionsIsDestinationGraphEnabled())
    {
LABEL_48:
      v45 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.maps.destinationd.sources"];
      listener = v4->_listener;
      v4->_listener = v45;

      [(NSXPCListener *)v4->_listener setDelegate:v4];
      v47 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEBUG, "Sources Listener created.", buf, 2u);
      }

      [(NSXPCListener *)v4->_listener resume];
      v48 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "Sources Listener resumed.", buf, 2u);
      }

      v49 = [(MapsSuggestionsLocationUpdater *)v4->_locationUpdater startLocationUpdatesForDelegate:v4];
      v50 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "LocationUpdater started.", buf, 2u);
      }

      v40 = v4;
LABEL_55:

      goto LABEL_56;
    }

    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Preloading Graph.", buf, 2u);
    }

    v19 = v4->_graph;
    v20 = [(MapsSuggestionsSourceWrapper *)v4->_wrapper source];
    v21 = v19;
    v22 = v20;
    v23 = v22;
    if (v21)
    {
      if (v22)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v54 = v23;
          context = objc_autoreleasePoolPush();
          v55 = MapsSuggestionsCurrentBestLocation();
          if (!v55)
          {
            v24 = GEOFindOrCreateLog();
            if (os_log_type_enabled(&v24->super, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v73 = "_rebuildGraph";
              _os_log_impl(&_mh_execute_header, &v24->super, OS_LOG_TYPE_ERROR, "Got no current location to work with in %s", buf, 0xCu);
            }

            goto LABEL_46;
          }

          v24 = [[MapsSuggestionsDestinationGraphUpdater alloc] initWithDestinationGraph:v21];
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v25 = [v54 children];
          v26 = [v25 countByEnumeratingWithState:&v66 objects:buf count:16];
          if (v26)
          {
            v52 = v21;
            v27 = 0;
            v28 = *v67;
            do
            {
              for (i = 0; i != v26; i = i + 1)
              {
                if (*v67 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                v30 = *(*(&v66 + 1) + 8 * i);
                if ([v30 conformsToProtocol:&OBJC_PROTOCOL___MapsSuggestionsPreloadableSource])
                {
                  [(MapsSuggestionsDestinationGraphUpdater *)v24 addPreloadableSource:v30];
                  v27 = 1;
                }
              }

              v26 = [v25 countByEnumeratingWithState:&v66 objects:buf count:16];
            }

            while (v26);

            v21 = v52;
            if (v27)
            {
              v64[0] = 0;
              v64[1] = v64;
              v64[2] = 0x2020000000;
              v65 = 0;
              v31 = [NSDateInterval alloc];
              v32 = MapsSuggestionsNow();
              GEOConfigGetDouble();
              v33 = [v31 initWithStartDate:v32 duration:?];

              v34 = dispatch_semaphore_create(0);
              *v58 = _NSConcreteStackBlock;
              v59 = 3221225472;
              v60 = sub_10002A97C;
              v61 = &unk_100075C48;
              v63 = v64;
              v35 = v34;
              v62 = v35;
              if (([(MapsSuggestionsDestinationGraphUpdater *)v24 rebuildForPeriod:v33 location:v55 handler:v58]& 1) != 0)
              {
                GEOConfigGetDouble();
                v37 = dispatch_time(0, (v36 * 1000000000.0));
                if (!dispatch_semaphore_wait(v35, v37))
                {
LABEL_45:

                  _Block_object_dispose(v64, 8);
LABEL_46:

                  objc_autoreleasePoolPop(context);
                  v42 = v54;
                  goto LABEL_47;
                }

                v38 = GEOFindOrCreateLog();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                {
                  *v70 = 136315138;
                  v71 = "_rebuildGraph";
                  v39 = "Timeout on %s";
LABEL_43:
                  _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, v39, v70, 0xCu);
                }
              }

              else
              {
                v38 = GEOFindOrCreateLog();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                {
                  *v70 = 136315138;
                  v71 = "_rebuildGraph";
                  v39 = "DestinationGraphUpdater did not like our input in %s";
                  goto LABEL_43;
                }
              }

              goto LABEL_45;
            }
          }

          else
          {
          }

          v44 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            *v58 = 0;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Our DestinationGraphUpdater doesn't have any Sources to preload", v58, 2u);
          }

          goto LABEL_46;
        }

        v42 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446978;
          v73 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/MapsSuggestionsSourcesServer.m";
          v74 = 1024;
          v75 = 34;
          v76 = 2082;
          v77 = "BOOL _rebuildGraph(MapsSuggestionsDestinationGraph *__strong, __strong id<MapsSuggestionsSource>)";
          v78 = 2082;
          v79 = "! [source isKindOfClass:[MapsSuggestionsCompositeSource class]]";
          v43 = "At %{public}s:%d, %{public}s forbids: %{public}s. Only supports CompositeSource at the moment";
          goto LABEL_34;
        }

LABEL_47:

        goto LABEL_48;
      }

      v42 = GEOFindOrCreateLog();
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_47;
      }

      *buf = 136446978;
      v73 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/MapsSuggestionsSourcesServer.m";
      v74 = 1024;
      v75 = 33;
      v76 = 2082;
      v77 = "BOOL _rebuildGraph(MapsSuggestionsDestinationGraph *__strong, __strong id<MapsSuggestionsSource>)";
      v78 = 2082;
      v79 = "nil == (source)";
      v43 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a source";
    }

    else
    {
      v42 = GEOFindOrCreateLog();
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_47;
      }

      *buf = 136446978;
      v73 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/MapsSuggestionsSourcesServer.m";
      v74 = 1024;
      v75 = 32;
      v76 = 2082;
      v77 = "BOOL _rebuildGraph(MapsSuggestionsDestinationGraph *__strong, __strong id<MapsSuggestionsSource>)";
      v78 = 2082;
      v79 = "nil == (graph)";
      v43 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a destination graph";
    }

LABEL_34:
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_FAULT, v43, buf, 0x26u);
    goto LABEL_47;
  }

  v40 = 0;
LABEL_56:
  objc_destroyWeak(&location);

  return v40;
}

- (void)dealloc
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "LocationUpdater stopping.", buf, 2u);
  }

  [(MapsSuggestionsLocationUpdater *)self->_locationUpdater stopLocationUpdatesForDelegate:self];
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "LocationUpdater stopped.", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = MapsSuggestionsSourcesServer;
  [(MapsSuggestionsSourcesServer *)&v5 dealloc];
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v19 = a3;
  v6 = a4;
  v7 = GEOFindOrCreateLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v33 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Incoming XPC connection %@.", buf, 0xCu);
    }

    v9 = [[MapsSuggestionsSourcesXPCPeer alloc] initWithXPCConnection:v6 sourceWrapper:self->_wrapper graph:self->_graph];
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002A18C;
    block[3] = &unk_1000759B8;
    block[4] = self;
    v8 = v9;
    v31 = v8;
    dispatch_sync(queue, block);
    v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MapsSuggestionsSourceDelegateProxy];
    v12 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0, v19}];
    [v11 setClasses:v12 forSelector:"addOrUpdateSuggestionEntriesData:sourceNameData:handler:" argumentIndex:0 ofReply:0];

    v13 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
    [v11 setClasses:v13 forSelector:"addOrUpdateSuggestionEntriesData:sourceNameData:handler:" argumentIndex:1 ofReply:0];

    [v6 setRemoteObjectInterface:v11];
    v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MapsSuggestionsSourceProxy];
    [v6 setExportedInterface:v14];

    [v6 setExportedObject:v8];
    objc_initWeak(buf, self);
    objc_initWeak(&location, v8);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10002A198;
    v25[3] = &unk_100075A08;
    objc_copyWeak(&v27, buf);
    objc_copyWeak(&v28, &location);
    v15 = v6;
    v26 = v15;
    [v15 setInvalidationHandler:v25];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10002A530;
    v21[3] = &unk_100075A08;
    objc_copyWeak(&v23, buf);
    objc_copyWeak(&v24, &location);
    v16 = v15;
    v22 = v16;
    [v16 setInterruptionHandler:v21];
    [v16 resume];
    [(MapsSuggestionsSourcesServer *)self _debugPrintOverviewOfConnections];
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Connection resumed.", v20, 2u);
    }

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v23);

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446978;
    v33 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/MapsSuggestionsSourcesServer.m";
    v34 = 1024;
    v35 = 356;
    v36 = 2082;
    v37 = "[MapsSuggestionsSourcesServer listener:shouldAcceptNewConnection:]";
    v38 = 2082;
    v39 = "nil == (newConnection)";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a newConnection", buf, 0x26u);
  }

  return v6 != 0;
}

- (void)didUpdateLocation:(id)a3
{
  v3 = a3;
  if (MapsSuggestionsLoggingIsVerbose())
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Received location update: %@", &v5, 0xCu);
    }
  }
}

@end