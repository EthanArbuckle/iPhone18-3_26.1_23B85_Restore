@interface MapsSuggestionsPredictionsXPCPeer
- (MapsSuggestionsDaemonMemory)memory;
- (MapsSuggestionsPredictionsXPCPeer)initWithXPCConnection:(id)connection memory:(id)memory;
- (NSString)description;
- (void)dealloc;
- (void)predictedTransportModeForDestinationEntryData:(id)data originCoordinateData:(id)coordinateData handler:(id)handler;
- (void)predictedTransportModeForDestinationMapItemData:(id)data originCoordinateData:(id)coordinateData handler:(id)handler;
@end

@implementation MapsSuggestionsPredictionsXPCPeer

- (MapsSuggestionsPredictionsXPCPeer)initWithXPCConnection:(id)connection memory:(id)memory
{
  connectionCopy = connection;
  objc_initWeak(&location, memory);
  v17.receiver = self;
  v17.super_class = MapsSuggestionsPredictionsXPCPeer;
  v8 = [(MapsSuggestionsPredictionsXPCPeer *)&v17 init];
  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("MapsSuggestionsPredictionsXPCPeerQueue", v9);
    queue = v8->_queue;
    v8->_queue = v10;

    objc_storeStrong(&v8->_connection, connection);
    v12 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v8->_memory, v12);

    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      connection = v8->_connection;
      *buf = 138412290;
      connectionCopy2 = connection;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "PredictionsXPCPeer{%@} created.", buf, 0xCu);
    }

    v15 = v8;
  }

  objc_destroyWeak(&location);

  return v8;
}

- (void)dealloc
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    connection = self->_connection;
    *buf = 138412290;
    v9 = connection;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "PredictionsXPCPeer{%@} destroying...", buf, 0xCu);
  }

  [(NSXPCConnection *)self->_connection invalidate];
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = self->_connection;
    *buf = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "PredictionsXPCPeer{%@} destroyed.", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = MapsSuggestionsPredictionsXPCPeer;
  [(MapsSuggestionsPredictionsXPCPeer *)&v7 dealloc];
}

- (NSString)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  connection = [(MapsSuggestionsPredictionsXPCPeer *)self connection];
  v6 = [connection debugDescription];
  v7 = [v3 initWithFormat:@"%@<%p> from %@", v4, self, v6];

  return v7;
}

- (void)predictedTransportModeForDestinationEntryData:(id)data originCoordinateData:(id)coordinateData handler:(id)handler
{
  dataCopy = data;
  coordinateDataCopy = coordinateData;
  handlerCopy = handler;
  if (handlerCopy)
  {
    objc_initWeak(location, self);
    queue = self->_queue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10001AA7C;
    v13[3] = &unk_1000756D0;
    objc_copyWeak(&v17, location);
    v14 = dataCopy;
    v15 = coordinateDataCopy;
    v16 = handlerCopy;
    dispatch_async(queue, v13);

    objc_destroyWeak(&v17);
    objc_destroyWeak(location);
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/MapsSuggestionsPredictionsServer.mm";
      v19 = 1024;
      v20 = 65;
      v21 = 2082;
      v22 = "[MapsSuggestionsPredictionsXPCPeer predictedTransportModeForDestinationEntryData:originCoordinateData:handler:]";
      v23 = 2082;
      v24 = "nil == (handler)";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", location, 0x26u);
    }
  }
}

- (void)predictedTransportModeForDestinationMapItemData:(id)data originCoordinateData:(id)coordinateData handler:(id)handler
{
  dataCopy = data;
  coordinateDataCopy = coordinateData;
  handlerCopy = handler;
  if (handlerCopy)
  {
    objc_initWeak(location, self);
    queue = self->_queue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10001B2B4;
    v13[3] = &unk_1000756D0;
    objc_copyWeak(&v17, location);
    v14 = dataCopy;
    v15 = coordinateDataCopy;
    v16 = handlerCopy;
    dispatch_async(queue, v13);

    objc_destroyWeak(&v17);
    objc_destroyWeak(location);
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/MapsSuggestionsPredictionsServer.mm";
      v19 = 1024;
      v20 = 116;
      v21 = 2082;
      v22 = "[MapsSuggestionsPredictionsXPCPeer predictedTransportModeForDestinationMapItemData:originCoordinateData:handler:]";
      v23 = 2082;
      v24 = "nil == (handler)";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", location, 0x26u);
    }
  }
}

- (MapsSuggestionsDaemonMemory)memory
{
  WeakRetained = objc_loadWeakRetained(&self->_memory);

  return WeakRetained;
}

@end