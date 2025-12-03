@interface MapsSuggestionsFeelerXPCPeer
- (MapsSuggestionsDaemonMemory)memory;
- (MapsSuggestionsFeelerXPCPeer)initWithXPCConnection:(id)connection memory:(id)memory;
- (NSString)description;
- (id).cxx_construct;
- (void)dealloc;
- (void)signalPackForDestinationEntryData:(id)data originCoordinateData:(id)coordinateData handler:(id)handler;
- (void)signalPackForDestinationMapItemData:(id)data originCoordinateData:(id)coordinateData handler:(id)handler;
- (void)signalPackForLocation:(id)location handler:(id)handler;
@end

@implementation MapsSuggestionsFeelerXPCPeer

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (MapsSuggestionsFeelerXPCPeer)initWithXPCConnection:(id)connection memory:(id)memory
{
  connectionCopy = connection;
  objc_initWeak(&location, memory);
  v19.receiver = self;
  v19.super_class = MapsSuggestionsFeelerXPCPeer;
  v8 = [(MapsSuggestionsFeelerXPCPeer *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connection, connection);
    v10 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v9->_memory, v10);

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    sub_100003654(&buf, @"MapsSuggestionsFeelerXPCPeerQueue", v11);
    v12 = buf;
    *&buf = 0;
    innerQueue = v9->_queue._innerQueue;
    v9->_queue._innerQueue = v12;

    v14 = *(&buf + 1);
    *(&buf + 1) = 0;
    name = v9->_queue._name;
    v9->_queue._name = v14;

    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      connection = v9->_connection;
      LODWORD(buf) = 138412290;
      *(&buf + 4) = connection;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "FeelerXPCPeer{%@} created.", &buf, 0xCu);
    }
  }

  objc_destroyWeak(&location);

  return v9;
}

- (void)dealloc
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    connection = self->_connection;
    *buf = 138412290;
    v9 = connection;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "FeelerXPCPeer{%@} destroying...", buf, 0xCu);
  }

  [(NSXPCConnection *)self->_connection invalidate];
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = self->_connection;
    *buf = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "FeelerXPCPeer{%@} destroyed.", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = MapsSuggestionsFeelerXPCPeer;
  [(MapsSuggestionsFeelerXPCPeer *)&v7 dealloc];
}

- (NSString)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  connection = [(MapsSuggestionsFeelerXPCPeer *)self connection];
  v6 = [connection debugDescription];
  v7 = [v3 initWithFormat:@"%@<%p> from %@", v4, self, v6];

  return v7;
}

- (void)signalPackForDestinationMapItemData:(id)data originCoordinateData:(id)coordinateData handler:(id)handler
{
  dataCopy = data;
  coordinateDataCopy = coordinateData;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/DestinationdLocationBundleiOS/MapsSuggestionsSignalPipelineServer.mm";
      v21 = 1024;
      v22 = 69;
      v23 = 2082;
      v24 = "[MapsSuggestionsFeelerXPCPeer signalPackForDestinationMapItemData:originCoordinateData:handler:]";
      v25 = 2082;
      v26 = "nil == (handler)";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", buf, 0x26u);
    }

    goto LABEL_11;
  }

  if (!dataCopy)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/DestinationdLocationBundleiOS/MapsSuggestionsSignalPipelineServer.mm";
      v21 = 1024;
      v22 = 70;
      v23 = 2082;
      v24 = "[MapsSuggestionsFeelerXPCPeer signalPackForDestinationMapItemData:originCoordinateData:handler:]";
      v25 = 2082;
      v26 = "nil == (mapItemData)";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires mapItem data", buf, 0x26u);
    }

LABEL_11:

    goto LABEL_12;
  }

  v11 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    connection = self->_connection;
    *buf = 138412290;
    v20 = connection;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "FeelerXPCPeer{%@} Received signalPackForDestinationMapItemData...", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001DC44;
  v14[3] = &unk_1000756D0;
  objc_copyWeak(&v18, buf);
  v15 = dataCopy;
  v16 = coordinateDataCopy;
  v17 = handlerCopy;
  dispatch_async(self->_queue._innerQueue, v14);

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
LABEL_12:
}

- (void)signalPackForDestinationEntryData:(id)data originCoordinateData:(id)coordinateData handler:(id)handler
{
  dataCopy = data;
  coordinateDataCopy = coordinateData;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/DestinationdLocationBundleiOS/MapsSuggestionsSignalPipelineServer.mm";
      v21 = 1024;
      v22 = 95;
      v23 = 2082;
      v24 = "[MapsSuggestionsFeelerXPCPeer signalPackForDestinationEntryData:originCoordinateData:handler:]";
      v25 = 2082;
      v26 = "nil == (handler)";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", buf, 0x26u);
    }

    goto LABEL_11;
  }

  if (!dataCopy)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/DestinationdLocationBundleiOS/MapsSuggestionsSignalPipelineServer.mm";
      v21 = 1024;
      v22 = 96;
      v23 = 2082;
      v24 = "[MapsSuggestionsFeelerXPCPeer signalPackForDestinationEntryData:originCoordinateData:handler:]";
      v25 = 2082;
      v26 = "nil == (entryData)";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires entry data", buf, 0x26u);
    }

LABEL_11:

    goto LABEL_12;
  }

  v11 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    connection = self->_connection;
    *buf = 138412290;
    v20 = connection;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "FeelerXPCPeer{%@} Received signalPackForDestinationEntryData...", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001E1A4;
  v14[3] = &unk_1000756D0;
  objc_copyWeak(&v18, buf);
  v15 = dataCopy;
  v16 = coordinateDataCopy;
  v17 = handlerCopy;
  dispatch_async(self->_queue._innerQueue, v14);

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
LABEL_12:
}

- (void)signalPackForLocation:(id)location handler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      connection = self->_connection;
      *buf = 138412290;
      v13 = connection;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "FeelerXPCPeer{%@} Received signalPackForLocation...", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10001E610;
    v9[3] = &unk_100075780;
    objc_copyWeak(&v11, buf);
    v10 = handlerCopy;
    dispatch_async(self->_queue._innerQueue, v9);

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/DestinationdLocationBundleiOS/MapsSuggestionsSignalPipelineServer.mm";
      v14 = 1024;
      v15 = 119;
      v16 = 2082;
      v17 = "[MapsSuggestionsFeelerXPCPeer signalPackForLocation:handler:]";
      v18 = 2082;
      v19 = "nil == (handler)";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", buf, 0x26u);
    }
  }
}

- (MapsSuggestionsDaemonMemory)memory
{
  WeakRetained = objc_loadWeakRetained(&self->_memory);

  return WeakRetained;
}

@end