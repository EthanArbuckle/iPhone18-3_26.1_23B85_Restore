@interface MapsSuggestionsDonationsXPCPeer
- (MapsSuggestionsDaemonMemory)memory;
- (MapsSuggestionsDonationsXPCPeer)initWithXPCConnection:(id)connection memory:(id)memory;
- (NSString)description;
- (void)dealloc;
- (void)donateETAData:(id)data destinationKey:(id)key handler:(id)handler;
- (void)donateSignalPackData:(id)data handler:(id)handler;
@end

@implementation MapsSuggestionsDonationsXPCPeer

- (MapsSuggestionsDonationsXPCPeer)initWithXPCConnection:(id)connection memory:(id)memory
{
  connectionCopy = connection;
  objc_initWeak(&location, memory);
  v17.receiver = self;
  v17.super_class = MapsSuggestionsDonationsXPCPeer;
  v8 = [(MapsSuggestionsDonationsXPCPeer *)&v17 init];
  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("MapsSuggestionsDonationsXPCPeerQueue", v9);
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
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "DonationsXPCPeer{%@} created.", buf, 0xCu);
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
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "DonationsXPCPeer{%@} destroying...", buf, 0xCu);
  }

  [(NSXPCConnection *)self->_connection invalidate];
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = self->_connection;
    *buf = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "DonationsXPCPeer{%@} destroyed.", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = MapsSuggestionsDonationsXPCPeer;
  [(MapsSuggestionsDonationsXPCPeer *)&v7 dealloc];
}

- (NSString)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  connection = [(MapsSuggestionsDonationsXPCPeer *)self connection];
  v6 = [connection debugDescription];
  v7 = [v3 initWithFormat:@"%@<%p> from %@", v4, self, v6];

  return v7;
}

- (void)donateETAData:(id)data destinationKey:(id)key handler:(id)handler
{
  dataCopy = data;
  keyCopy = key;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v22 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/MapsSuggestionsDonationsServer.m";
      v23 = 1024;
      v24 = 70;
      v25 = 2082;
      v26 = "[MapsSuggestionsDonationsXPCPeer donateETAData:destinationKey:handler:]";
      v27 = 2082;
      v28 = "nil == (handler)";
      v15 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, v15, buf, 0x26u);
    }

LABEL_11:

    goto LABEL_12;
  }

  v11 = GEOFindOrCreateLog();
  v12 = v11;
  if (!keyCopy)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v22 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/MapsSuggestionsDonationsServer.m";
      v23 = 1024;
      v24 = 71;
      v25 = 2082;
      v26 = "[MapsSuggestionsDonationsXPCPeer donateETAData:destinationKey:handler:]";
      v27 = 2082;
      v28 = "nil == (destinationKey)";
      v15 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a destination key";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    connection = self->_connection;
    *buf = 138412290;
    v22 = connection;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "DonationsXPCPeer{%@} Received donateETAData...", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000231FC;
  v16[3] = &unk_1000755B0;
  objc_copyWeak(&v20, buf);
  v17 = dataCopy;
  v18 = keyCopy;
  v19 = handlerCopy;
  dispatch_async(queue, v16);

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
LABEL_12:
}

- (void)donateSignalPackData:(id)data handler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  if (dataCopy)
  {
    objc_initWeak(location, self);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100023604;
    block[3] = &unk_100075990;
    objc_copyWeak(&v13, location);
    v11 = dataCopy;
    v12 = handlerCopy;
    dispatch_async(queue, block);

    objc_destroyWeak(&v13);
    objc_destroyWeak(location);
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/MapsSuggestionsDonationsServer.m";
      v15 = 1024;
      v16 = 91;
      v17 = 2082;
      v18 = "[MapsSuggestionsDonationsXPCPeer donateSignalPackData:handler:]";
      v19 = 2082;
      v20 = "nil == (signalPackData)";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires signalPackData", location, 0x26u);
    }
  }
}

- (MapsSuggestionsDaemonMemory)memory
{
  WeakRetained = objc_loadWeakRetained(&self->_memory);

  return WeakRetained;
}

@end