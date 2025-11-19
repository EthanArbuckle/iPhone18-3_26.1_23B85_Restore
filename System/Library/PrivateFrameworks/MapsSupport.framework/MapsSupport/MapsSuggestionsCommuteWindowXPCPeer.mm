@interface MapsSuggestionsCommuteWindowXPCPeer
- (MapsSuggestionsCommuteWindowXPCPeer)initWithXPCConnection:(id)a3 resourceDepot:(id)a4 conditions:(id)a5 doomEngine:(id)a6;
- (NSString)description;
- (void)commuteStatusFromDOoMEngine:(id)a3;
- (void)commuteWindowIs:(id)a3 forNextDestination:(id)a4 travelTime:(double)a5 commuteRouteSet:(id)a6;
- (void)dealloc;
@end

@implementation MapsSuggestionsCommuteWindowXPCPeer

- (MapsSuggestionsCommuteWindowXPCPeer)initWithXPCConnection:(id)a3 resourceDepot:(id)a4 conditions:(id)a5 doomEngine:(id)a6
{
  v9 = a3;
  v10 = a6;
  v19.receiver = self;
  v19.super_class = MapsSuggestionsCommuteWindowXPCPeer;
  v11 = [(MapsSuggestionsCommuteWindowXPCPeer *)&v19 init];
  if (v11)
  {
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("MapsSuggestionsCommuteWindowXPCPeerQueue", v12);
    queue = v11->_queue;
    v11->_queue = v13;

    objc_storeStrong(&v11->_connection, a3);
    objc_storeStrong(&v11->_doomEngineWrapper, a6);
    [(MapsSuggestionsDOoMEngineWrapper *)v11->_doomEngineWrapper setStatusUpdateDelegate:v11];
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      connection = v11->_connection;
      *buf = 138412290;
      v21 = connection;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "CommuteWindowXPCPeer{%@} created.", buf, 0xCu);
    }

    v17 = v11;
  }

  return v11;
}

- (void)commuteWindowIs:(id)a3 forNextDestination:(id)a4 travelTime:(double)a5 commuteRouteSet:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (self->_queue)
  {
    objc_initWeak(location, self);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000089E8;
    block[3] = &unk_100065070;
    objc_copyWeak(v20, location);
    v17 = v10;
    v18 = v11;
    v20[1] = *&a5;
    v19 = v12;
    dispatch_async(queue, block);

    objc_destroyWeak(v20);
    objc_destroyWeak(location);
  }

  else
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = self->_queue;
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "_queue seems to have gone away. _queue(%@) is nil. Maybe self is tearing down?", location, 0xCu);
    }
  }
}

- (void)dealloc
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    connection = self->_connection;
    *buf = 138412290;
    v9 = connection;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "CommuteWindowXPCXPCPeer{%@} destroying...", buf, 0xCu);
  }

  [(MapsSuggestionsDOoMEngineWrapper *)self->_doomEngineWrapper setStatusUpdateDelegate:0];
  [(NSXPCConnection *)self->_connection invalidate];
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = self->_connection;
    *buf = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "CommuteWindowXPCPeer{%@} destroyed.", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = MapsSuggestionsCommuteWindowXPCPeer;
  [(MapsSuggestionsCommuteWindowXPCPeer *)&v7 dealloc];
}

- (NSString)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  v5 = [(MapsSuggestionsCommuteWindowXPCPeer *)self connection];
  v6 = [v5 debugDescription];
  v7 = [v3 initWithFormat:@"%@<%p> from %@", v4, self, v6];

  return v7;
}

- (void)commuteStatusFromDOoMEngine:(id)a3
{
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      connection = self->_connection;
      *buf = 138412290;
      v12 = connection;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "CommuteWindowXPCPeer{%@} Received isDeviceInCommuteWindow()...", buf, 0xCu);
    }

    queue = self->_queue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100008ECC;
    v9[3] = &unk_100065098;
    v9[4] = self;
    v10 = v4;
    dispatch_async(queue, v9);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/DOoM & Location Intelligence/MapsSuggestionsCommuteWindowServer.m";
      v13 = 1024;
      v14 = 93;
      v15 = 2082;
      v16 = "[MapsSuggestionsCommuteWindowXPCPeer commuteStatusFromDOoMEngine:]";
      v17 = 2082;
      v18 = "nil == (handler)";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a non-nill handler", buf, 0x26u);
    }
  }
}

@end