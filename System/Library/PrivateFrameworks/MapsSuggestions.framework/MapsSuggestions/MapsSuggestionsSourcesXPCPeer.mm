@interface MapsSuggestionsSourcesXPCPeer
- (MapsSuggestionsSourcesXPCPeer)initWithXPCConnection:(id)connection sourceWrapper:(id)wrapper graph:(id)graph;
- (NSString)description;
- (void)_stopMonitoring;
- (void)dealloc;
- (void)feedbackForContact:(id)contact action:(int64_t)action;
- (void)feedbackForEntryData:(id)data action:(int64_t)action;
- (void)feedbackForMapItem:(id)item action:(int64_t)action;
- (void)forceEarlyUpdateForType:(int64_t)type handler:(id)handler;
- (void)removeEntryData:(id)data behavior:(int64_t)behavior handler:(id)handler;
- (void)startMonitoringWithHandler:(id)handler;
- (void)stopMonitoringWithHandler:(id)handler;
- (void)updateGraphWithHandler:(id)handler;
@end

@implementation MapsSuggestionsSourcesXPCPeer

- (MapsSuggestionsSourcesXPCPeer)initWithXPCConnection:(id)connection sourceWrapper:(id)wrapper graph:(id)graph
{
  connectionCopy = connection;
  wrapperCopy = wrapper;
  graphCopy = graph;
  v20.receiver = self;
  v20.super_class = MapsSuggestionsSourcesXPCPeer;
  v12 = [(MapsSuggestionsSourcesXPCPeer *)&v20 init];
  if (v12)
  {
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("MapsSuggestionsSourcesXPCPeerQueue", v13);
    queue = v12->_queue;
    v12->_queue = v14;

    objc_storeStrong(&v12->_connection, connection);
    objc_storeStrong(&v12->_wrapper, wrapper);
    objc_storeStrong(&v12->_graph, graph);
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      connection = v12->_connection;
      *buf = 138412290;
      connectionCopy2 = connection;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "SourcesXPCPeer{%@} created.", buf, 0xCu);
    }

    v18 = v12;
  }

  return v12;
}

- (void)startMonitoringWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = GEOFindOrCreateLog();
  v6 = v5;
  if (handlerCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      connection = self->_connection;
      *buf = 138412290;
      v15 = connection;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "SourcesXPCPeer{%@} Received start...", buf, 0xCu);
    }

    v8 = [handlerCopy copy];
    objc_initWeak(buf, self);
    queue = self->_queue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000270C4;
    v11[3] = &unk_100075B88;
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
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/MapsSuggestionsSourcesServer.m";
      v16 = 1024;
      v17 = 126;
      v18 = 2082;
      v19 = "[MapsSuggestionsSourcesXPCPeer startMonitoringWithHandler:]";
      v20 = 2082;
      v21 = "NULL == handler";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", buf, 0x26u);
    }
  }
}

- (void)stopMonitoringWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = GEOFindOrCreateLog();
  v6 = v5;
  if (handlerCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      connection = self->_connection;
      *buf = 138412290;
      v12 = connection;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "SourcesXPCPeer{%@} Received stop...", buf, 0xCu);
    }

    queue = self->_queue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10002746C;
    v9[3] = &unk_100075BB0;
    v9[4] = self;
    v10 = handlerCopy;
    dispatch_async(queue, v9);
    v6 = v10;
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446978;
    v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/MapsSuggestionsSourcesServer.m";
    v13 = 1024;
    v14 = 143;
    v15 = 2082;
    v16 = "[MapsSuggestionsSourcesXPCPeer stopMonitoringWithHandler:]";
    v17 = 2082;
    v18 = "NULL == handler";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", buf, 0x26u);
  }
}

- (void)forceEarlyUpdateForType:(int64_t)type handler:(id)handler
{
  handlerCopy = handler;
  v7 = GEOFindOrCreateLog();
  v8 = v7;
  if (handlerCopy)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      connection = self->_connection;
      *buf = 138412546;
      v15 = connection;
      v16 = 1024;
      typeCopy = type;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "SourcesXPCPeer{%@} Received forceEarlyUpdateForType:%d...", buf, 0x12u);
    }

    objc_initWeak(buf, self);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000276A8;
    block[3] = &unk_100075BD8;
    objc_copyWeak(v13, buf);
    v13[1] = type;
    v12 = handlerCopy;
    dispatch_async(queue, block);

    objc_destroyWeak(v13);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/MapsSuggestionsSourcesServer.m";
      v16 = 1024;
      typeCopy = 157;
      v18 = 2082;
      v19 = "[MapsSuggestionsSourcesXPCPeer forceEarlyUpdateForType:handler:]";
      v20 = 2082;
      v21 = "NULL == handler";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", buf, 0x26u);
    }
  }
}

- (void)removeEntryData:(id)data behavior:(int64_t)behavior handler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  v10 = GEOFindOrCreateLog();
  v11 = v10;
  if (handlerCopy)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      connection = self->_connection;
      *buf = 138412290;
      v19 = connection;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "SourcesXPCPeer{%@} Received removeEntryData...", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    queue = self->_queue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100027A2C;
    v14[3] = &unk_100075C00;
    objc_copyWeak(v17, buf);
    v15 = dataCopy;
    v17[1] = behavior;
    v16 = handlerCopy;
    dispatch_async(queue, v14);

    objc_destroyWeak(v17);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/MapsSuggestionsSourcesServer.m";
      v20 = 1024;
      v21 = 173;
      v22 = 2082;
      v23 = "[MapsSuggestionsSourcesXPCPeer removeEntryData:behavior:handler:]";
      v24 = 2082;
      v25 = "NULL == block";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion block", buf, 0x26u);
    }
  }
}

- (void)feedbackForEntryData:(id)data action:(int64_t)action
{
  dataCopy = data;
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    connection = self->_connection;
    *buf = 138412290;
    v15 = connection;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "SourcesXPCPeer{%@} Received feedbackForEntryData...", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100027D04;
  block[3] = &unk_100075468;
  objc_copyWeak(v13, buf);
  v12 = dataCopy;
  v13[1] = action;
  v10 = dataCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v13);
  objc_destroyWeak(buf);
}

- (void)feedbackForMapItem:(id)item action:(int64_t)action
{
  itemCopy = item;
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    connection = self->_connection;
    *buf = 138412290;
    v15 = connection;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "SourcesXPCPeer{%@} Received feedbackForMapItem...", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100027FDC;
  block[3] = &unk_100075468;
  objc_copyWeak(v13, buf);
  v12 = itemCopy;
  v13[1] = action;
  v10 = itemCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v13);
  objc_destroyWeak(buf);
}

- (void)feedbackForContact:(id)contact action:(int64_t)action
{
  contactCopy = contact;
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    connection = self->_connection;
    *buf = 138412290;
    v15 = connection;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "SourcesXPCPeer{%@} Received feedbackForContact...", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000282B4;
  block[3] = &unk_100075468;
  objc_copyWeak(v13, buf);
  v12 = contactCopy;
  v13[1] = action;
  v10 = contactCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v13);
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
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "SourcesXPCPeer{%@} stopping...", &v9, 0xCu);
  }

  [(MapsSuggestionsSourceWrapper *)self->_wrapper removeMonitoredXPCConnection:self->_connection];
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = self->_connection;
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "SourcesXPCPeer{%@} stopped.", &v9, 0xCu);
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

- (void)updateGraphWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = GEOFindOrCreateLog();
  v6 = v5;
  if (handlerCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      connection = self->_connection;
      *buf = 138412290;
      v13 = connection;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "SourcesXPCPeer{%@} Received updateGraph", buf, 0xCu);
    }

    if (MapsSuggestionsIsDestinationGraphEnabled())
    {
      objc_initWeak(buf, self);
      queue = self->_queue;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100028780;
      v9[3] = &unk_100075B88;
      objc_copyWeak(&v11, buf);
      v10 = handlerCopy;
      dispatch_async(queue, v9);

      objc_destroyWeak(&v11);
      objc_destroyWeak(buf);
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 1);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/MapsSuggestionsSourcesServer.m";
      v14 = 1024;
      v15 = 252;
      v16 = 2082;
      v17 = "[MapsSuggestionsSourcesXPCPeer updateGraphWithHandler:]";
      v18 = 2082;
      v19 = "nil == (handler)";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", buf, 0x26u);
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
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "SourcesXPCPeer{%@} destroying...", buf, 0xCu);
  }

  [(MapsSuggestionsSourcesXPCPeer *)self _stopMonitoring];
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = self->_connection;
    *buf = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "SourcesXPCPeer{%@} destroyed.", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = MapsSuggestionsSourcesXPCPeer;
  [(MapsSuggestionsSourcesXPCPeer *)&v7 dealloc];
}

- (NSString)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  connection = [(MapsSuggestionsSourcesXPCPeer *)self connection];
  v6 = [connection debugDescription];
  v7 = [v3 initWithFormat:@"%@<%p> from %@ to %@", v4, self, v6, self->_wrapper];

  return v7;
}

@end