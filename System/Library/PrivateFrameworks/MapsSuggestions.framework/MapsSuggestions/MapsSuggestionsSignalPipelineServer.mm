@interface MapsSuggestionsSignalPipelineServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MapsSuggestionsDaemonMemory)memory;
- (MapsSuggestionsSignalPipelineServer)initWithMemory:(id)memory;
- (id).cxx_construct;
- (void)_addConnection:(id)connection;
- (void)_removeConnection:(id)connection;
- (void)_removeConnectionSynchronously:(id)synchronously;
- (void)_sendSignalPack:(id)pack toConnection:(id)connection;
- (void)signalPipelineUpdated:(id)updated;
@end

@implementation MapsSuggestionsSignalPipelineServer

- (MapsSuggestionsDaemonMemory)memory
{
  WeakRetained = objc_loadWeakRetained(&self->_memory);

  return WeakRetained;
}

- (MapsSuggestionsSignalPipelineServer)initWithMemory:(id)memory
{
  memoryCopy = memory;
  v24.receiver = self;
  v24.super_class = MapsSuggestionsSignalPipelineServer;
  v5 = [(MapsSuggestionsSignalPipelineServer *)&v24 init];
  v6 = v5;
  if (v5)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    sub_100003654(&v22, @"MapsSuggestionsSignalPipelineServerQueue", v7);
    v8 = v22;
    v22 = 0;
    innerQueue = v5->_queue._innerQueue;
    v5->_queue._innerQueue = v8;

    v10 = v23;
    v23 = 0;
    name = v5->_queue._name;
    v5->_queue._name = v10;

    signalPipeline = [memoryCopy signalPipeline];
    [signalPipeline setUpdaterDelegate:v5];

    objc_storeWeak(&v5->_memory, memoryCopy);
    v13 = objc_alloc_init(NSMutableArray);
    peers = v5->_peers;
    v5->_peers = v13;

    v15 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.maps.destinationd.signalPipeline"];
    listener = v5->_listener;
    v5->_listener = v15;

    [(NSXPCListener *)v5->_listener setDelegate:v5];
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Feeler Listener created.", &v22, 2u);
    }

    [(NSXPCListener *)v5->_listener resume];
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Feeler Listener resumed.", &v22, 2u);
    }

    v19 = objc_alloc_init(NSMutableArray);
    connections = v6->_connections;
    v6->_connections = v19;
  }

  return v6;
}

- (void)_removeConnectionSynchronously:(id)synchronously
{
  synchronouslyCopy = synchronously;
  innerQueue = self->_queue._innerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001EB2C;
  v7[3] = &unk_100075230;
  v7[4] = self;
  v8 = synchronouslyCopy;
  v6 = synchronouslyCopy;
  dispatch_sync(innerQueue, v7);
}

- (void)_removeConnection:(id)connection
{
  connectionCopy = connection;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "_removeConnection:%@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_memory);
  if (!WeakRetained)
  {
    signalPipeline = GEOFindOrCreateLog();
    if (os_log_type_enabled(signalPipeline, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsSignalPipelineServer.mm";
      v10 = 1026;
      v11 = 190;
      v12 = 2082;
      v13 = "[MapsSuggestionsSignalPipelineServer _removeConnection:]";
      _os_log_impl(&_mh_execute_header, signalPipeline, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongMemory went away in %{public}s", &v8, 0x1Cu);
    }

    goto LABEL_9;
  }

  [(NSMutableArray *)self->_connections removeObject:connectionCopy];
  if (![(NSMutableArray *)self->_connections count])
  {
    signalPipeline = [WeakRetained signalPipeline];
    [signalPipeline stop];
LABEL_9:
  }
}

- (void)_addConnection:(id)connection
{
  connectionCopy = connection;
  if (connectionCopy)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v20 = 138412290;
      v21 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "_addConnection:%@", &v20, 0xCu);
    }

    if ([(NSMutableArray *)self->_connections containsObject:connectionCopy])
    {
      v6 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v20 = 138412290;
        v21 = connectionCopy;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "WARNING: already had connection %@", &v20, 0xCu);
      }
    }

    v7 = MapsSuggestionsIPCPeerIdentifier();
    v8 = MapsSuggestionsIPCPayloadForNSString();
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v20 = 138412546;
      v21 = v7;
      v22 = 2048;
      *v23 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Incoming connection comes from %@ (%llu)", &v20, 0x16u);
    }

    [(NSMutableArray *)self->_connections addObject:connectionCopy];
    v10 = [(NSMutableArray *)self->_connections count];
    WeakRetained = objc_loadWeakRetained(&self->_memory);
    if (WeakRetained)
    {
      if (v10 == 1)
      {
        v12 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v20) = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "This is the first connection", &v20, 2u);
        }

        signalPipeline = [WeakRetained signalPipeline];
        [signalPipeline start];
      }

      remoteObjectProxy = [connectionCopy remoteObjectProxy];
      v15 = objc_opt_respondsToSelector();

      if ((v15 & 1) == 0)
      {
        v19 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = 138412290;
          v21 = connectionCopy;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "For some weird reason, our connection is not right: %@", &v20, 0xCu);
        }

        [connectionCopy invalidate];
        [(MapsSuggestionsSignalPipelineServer *)self _removeConnectionSynchronously:connectionCopy];
        goto LABEL_29;
      }

      signalPipeline2 = [WeakRetained signalPipeline];
      mergedCommonSignalPack = [signalPipeline2 mergedCommonSignalPack];

      if (mergedCommonSignalPack)
      {
        v18 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v20) = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Already sending the SignalPackData we have to the incoming connection", &v20, 2u);
        }

        [(MapsSuggestionsSignalPipelineServer *)self _sendSignalPack:mergedCommonSignalPack toConnection:connectionCopy];
      }
    }

    else
    {
      mergedCommonSignalPack = GEOFindOrCreateLog();
      if (os_log_type_enabled(mergedCommonSignalPack, OS_LOG_TYPE_ERROR))
      {
        v20 = 136446722;
        v21 = "MapsSuggestionsSignalPipelineServer.mm";
        v22 = 1026;
        *v23 = 219;
        *&v23[4] = 2082;
        *&v23[6] = "[MapsSuggestionsSignalPipelineServer _addConnection:]";
        _os_log_impl(&_mh_execute_header, mergedCommonSignalPack, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongMemory went away in %{public}s", &v20, 0x1Cu);
      }
    }

LABEL_29:
    goto LABEL_30;
  }

  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    v20 = 136446978;
    v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/DestinationdLocationBundleiOS/MapsSuggestionsSignalPipelineServer.mm";
    v22 = 1024;
    *v23 = 201;
    *&v23[4] = 2082;
    *&v23[6] = "[MapsSuggestionsSignalPipelineServer _addConnection:]";
    v24 = 2082;
    v25 = "nil == (connection)";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Needs a connection", &v20, 0x26u);
  }

LABEL_30:
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
      v36 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Incoming XPC connection %@.", buf, 0xCu);
    }

    v7 = [MapsSuggestionsFeelerXPCPeer alloc];
    memory = [(MapsSuggestionsSignalPipelineServer *)self memory];
    v9 = [(MapsSuggestionsFeelerXPCPeer *)v7 initWithXPCConnection:connectionCopy memory:memory];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001F820;
    block[3] = &unk_100075230;
    block[4] = self;
    v10 = v9;
    v34 = v10;
    dispatch_sync(self->_queue._innerQueue, block);
    v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MapsSuggestionsSignalPipelineProxy];
    [connectionCopy setExportedInterface:v11];

    v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MapsSuggestionsSignalPipelineUpdateProxy];
    v13 = [NSSet setWithObjects:objc_opt_class(), 0];
    [v12 setClasses:v13 forSelector:"signalPackUpdated:" argumentIndex:0 ofReply:0];

    [connectionCopy setRemoteObjectInterface:v12];
    [connectionCopy setExportedObject:v10];
    objc_initWeak(buf, self);
    objc_initWeak(&location, v10);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10001F82C;
    v28[3] = &unk_100075720;
    objc_copyWeak(&v30, buf);
    objc_copyWeak(&v31, &location);
    v14 = connectionCopy;
    v29 = v14;
    [v14 setInvalidationHandler:v28];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10001FBC4;
    v24[3] = &unk_100075720;
    objc_copyWeak(&v26, buf);
    objc_copyWeak(&v27, &location);
    v15 = v14;
    v25 = v15;
    [v15 setInterruptionHandler:v24];
    [v15 resume];
    innerQueue = self->_queue._innerQueue;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10001FF5C;
    v21[3] = &unk_100075060;
    v17 = innerQueue;
    objc_copyWeak(&v23, buf);
    v22 = v15;
    dispatch_async(v17, v21);

    [(MapsSuggestionsSignalPipelineServer *)self _debugPrintOverviewOfConnections];
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Connection resumed.", v20, 2u);
    }

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&v26);

    objc_destroyWeak(&v31);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v36 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/DestinationdLocationBundleiOS/MapsSuggestionsSignalPipelineServer.mm";
      v37 = 1024;
      v38 = 244;
      v39 = 2082;
      v40 = "[MapsSuggestionsSignalPipelineServer listener:shouldAcceptNewConnection:]";
      v41 = 2082;
      v42 = "nil == (newConnection)";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a newConnection", buf, 0x26u);
    }
  }

  return connectionCopy != 0;
}

- (void)_sendSignalPack:(id)pack toConnection:(id)connection
{
  packCopy = pack;
  v5 = [connection remoteObjectProxyWithErrorHandler:&stru_1000757C0];
  v6 = NSDataFromMapsSuggestionsSignalPack();
  [v5 signalPackUpdated:v6];
}

- (void)signalPipelineUpdated:(id)updated
{
  updatedCopy = updated;
  if (self->_queue._innerQueue)
  {
    objc_initWeak(location, self);
    innerQueue = self->_queue._innerQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000203D4;
    v8[3] = &unk_100075060;
    v6 = innerQueue;
    objc_copyWeak(&v10, location);
    v9 = updatedCopy;
    dispatch_async(v6, v8);

    objc_destroyWeak(&v10);
    objc_destroyWeak(location);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/DestinationdLocationBundleiOS/MapsSuggestionsSignalPipelineServer.mm";
      v12 = 1024;
      v13 = 330;
      v14 = 2082;
      v15 = "[MapsSuggestionsSignalPipelineServer signalPipelineUpdated:]";
      v16 = 2082;
      v17 = "nil == (_queue)";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. SignalPipelineServer's _queue cannot be nil", location, 0x26u);
    }
  }
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

@end