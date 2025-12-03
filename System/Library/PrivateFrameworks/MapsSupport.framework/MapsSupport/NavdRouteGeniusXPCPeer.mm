@interface NavdRouteGeniusXPCPeer
- (NSString)description;
- (NavdRouteGeniusXPCPeer)initWithXPCConnection:(id)connection delegate:(id)delegate;
- (void)_stopMonitoring;
- (void)dealloc;
- (void)forceReroute;
- (void)startWithHandler:(id)handler;
- (void)stopWithHandler:(id)handler;
@end

@implementation NavdRouteGeniusXPCPeer

- (NavdRouteGeniusXPCPeer)initWithXPCConnection:(id)connection delegate:(id)delegate
{
  connectionCopy = connection;
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = NavdRouteGeniusXPCPeer;
  v9 = [(NavdRouteGeniusXPCPeer *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, connection);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("NavdXPCPeerQueue", v11);
    queue = v10->_queue;
    v10->_queue = v12;

    objc_storeStrong(&v10->_delegate, delegate);
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      connection = v10->_connection;
      *buf = 138412290;
      connectionCopy2 = connection;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "RouteGeniusXPCPeer{%@} created.", buf, 0xCu);
    }

    v16 = v10;
  }

  return v10;
}

- (void)startWithHandler:(id)handler
{
  handlerCopy = handler;
  [(GEOPerformanceEventLogger *)self->_performanceEventLogger logPerformanceEvent:"[NavdRouteGeniusXPCPeer startWithHandler:]"];
  v5 = GEOFindOrCreateLog();
  v6 = v5;
  if (handlerCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      connection = self->_connection;
      *buf = 138412290;
      v15 = connection;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "RouteGeniusXPCPeer{%@} Received start...", buf, 0xCu);
    }

    v8 = [handlerCopy copy];
    objc_initWeak(buf, self);
    queue = self->_queue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10002B864;
    v11[3] = &unk_100066000;
    objc_copyWeak(&v13, buf);
    v12 = v8;
    v10 = v8;
    dispatch_async(queue, v11);

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/navd/RouteGenius/NavdRouteGeniusServer.m";
      v16 = 1024;
      v17 = 61;
      v18 = 2082;
      v19 = "[NavdRouteGeniusXPCPeer startWithHandler:]";
      v20 = 2082;
      v21 = "nil == (handler)";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", buf, 0x26u);
    }
  }
}

- (void)stopWithHandler:(id)handler
{
  handlerCopy = handler;
  [(GEOPerformanceEventLogger *)self->_performanceEventLogger logPerformanceEvent:"[NavdRouteGeniusXPCPeer stopWithHandler:]"];
  v5 = GEOFindOrCreateLog();
  v6 = v5;
  if (handlerCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      connection = self->_connection;
      *buf = 138412290;
      v12 = connection;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "RouteGeniusXPCPeer{%@} Received stop...", buf, 0xCu);
    }

    queue = self->_queue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10002BC0C;
    v9[3] = &unk_100065FD8;
    v9[4] = self;
    v10 = handlerCopy;
    dispatch_async(queue, v9);
    v6 = v10;
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446978;
    v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/navd/RouteGenius/NavdRouteGeniusServer.m";
    v13 = 1024;
    v14 = 78;
    v15 = 2082;
    v16 = "[NavdRouteGeniusXPCPeer stopWithHandler:]";
    v17 = 2082;
    v18 = "nil == (handler)";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", buf, 0x26u);
  }
}

- (void)forceReroute
{
  [(GEOPerformanceEventLogger *)self->_performanceEventLogger logPerformanceEvent:"[NavdRouteGeniusXPCPeer forceReroute]"];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    connection = self->_connection;
    *buf = 138412290;
    v9 = connection;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "RouteGeniusXPCPeer{%@} Received forceUpdate ...", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002BD98;
  block[3] = &unk_100067670;
  objc_copyWeak(&v7, buf);
  dispatch_async(queue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

- (void)_stopMonitoring
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    connection = self->_connection;
    v9 = 138412290;
    v10 = connection;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "RouteGeniusXPCPeer{%@} stopping...", &v9, 0xCu);
  }

  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = self->_connection;
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "RouteGeniusXPCPeer{%@} stopped.", &v9, 0xCu);
  }

  completionBlock = self->_completionBlock;
  if (completionBlock)
  {
    completionBlock[2]();
    v8 = self->_completionBlock;
    self->_completionBlock = 0;
  }

  [(NSXPCConnection *)self->_connection invalidate];
}

- (void)dealloc
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    connection = self->_connection;
    *buf = 138412290;
    v9 = connection;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "RouteGeniusXPCPeer{%@} destroying...", buf, 0xCu);
  }

  [(NavdRouteGeniusXPCPeer *)self _stopMonitoring];
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = self->_connection;
    *buf = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "RouteGeniusXPCPeer{%@} destroyed.", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = NavdRouteGeniusXPCPeer;
  [(NavdRouteGeniusXPCPeer *)&v7 dealloc];
}

- (NSString)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  connection = [(NavdRouteGeniusXPCPeer *)self connection];
  v6 = [connection debugDescription];
  v7 = [v3 initWithFormat:@"%@<%p> from %@", v4, self, v6];

  return v7;
}

@end