@interface MapsSuggestionsSourceWrapper
- (BOOL)attachSource:(id)source;
- (BOOL)detachSource:(id)source;
- (MapsSuggestionsDaemonMemory)memory;
- (MapsSuggestionsSourceWrapper)initWithMemory:(id)memory locationUpdater:(id)updater;
- (NSString)description;
- (NSString)uniqueName;
- (unint64_t)addOrUpdateSuggestionEntries:(id)entries source:(id)source;
- (void)addMonitoredXPCConnection:(id)connection;
- (void)dealloc;
- (void)didLoseLocationPermission;
- (void)didUpdateLocation:(id)location;
- (void)feedbackForContact:(id)contact action:(int64_t)action forXPCConnection:(id)connection;
- (void)feedbackForEntryData:(id)data action:(int64_t)action forXPCConnection:(id)connection;
- (void)feedbackForMapItem:(id)item action:(int64_t)action forXPCConnection:(id)connection;
- (void)forceEarlyUpdateForType:(int64_t)type forXPCConnection:(id)connection handler:(id)handler;
- (void)removeEntryData:(id)data behavior:(int64_t)behavior forXPCConnection:(id)connection handler:(id)handler;
- (void)removeMonitoredXPCConnection:(id)connection;
@end

@implementation MapsSuggestionsSourceWrapper

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (MapsSuggestionsSourceWrapper)initWithMemory:(id)memory locationUpdater:(id)updater
{
  objc_initWeak(&location, memory);
  objc_initWeak(&v25, updater);
  v24.receiver = self;
  v24.super_class = MapsSuggestionsSourceWrapper;
  v6 = [(MapsSuggestionsSourceWrapper *)&v24 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("MapsSuggestionsSourceWrapperQueue", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    v10 = objc_loadWeakRetained(&location);
    v11 = objc_loadWeakRetained(&v25);
    v12 = objc_storeWeak(&v6->_locationUpdater, v11);

    resourceDepot = [v10 resourceDepot];
    [resourceDepot setOneSourceDelegate:v6];

    objc_storeWeak(&v6->_memory, v10);
    if (v12)
    {
      resourceDepot2 = [v10 resourceDepot];
      [resourceDepot2 setOneLocationUpdater:v12];
    }

    v15 = [v12 startLocationUpdatesForDelegate:v6];
    v16 = MapsSuggestionsBestLocation();
    bestLocation = v6->_bestLocation;
    v6->_bestLocation = v16;

    v18 = objc_alloc_init(NSMutableArray);
    connections = v6->_connections;
    v6->_connections = v18;

    resourceDepot3 = [v10 resourceDepot];
    v21 = [MapsSuggestionsCompositeSourceBuilder buildCompositeSourceFromResourceDepot:resourceDepot3];
    source = v6->_source;
    v6->_source = v21;
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
  return v6;
}

- (void)dealloc
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_connections;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v6) invalidate];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7.receiver = self;
  v7.super_class = MapsSuggestionsSourceWrapper;
  [(MapsSuggestionsSourceWrapper *)&v7 dealloc];
}

- (NSString)description
{
  v2 = [[NSString alloc] initWithFormat:@"%@<%p> to %@ (%u connections)", objc_opt_class(), self, self->_source, -[NSMutableArray count](self->_connections, "count")];

  return v2;
}

- (void)addMonitoredXPCConnection:(id)connection
{
  connectionCopy = connection;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v12 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "addMonitoredXPCConnection:%@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003CBAC;
  v8[3] = &unk_100075060;
  objc_copyWeak(&v10, buf);
  v9 = connectionCopy;
  v7 = connectionCopy;
  dispatch_async(queue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)removeMonitoredXPCConnection:(id)connection
{
  connectionCopy = connection;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v11 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "removeMonitoredXPCConnection:%@", buf, 0xCu);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003CE24;
  v8[3] = &unk_100075230;
  v8[4] = self;
  v9 = connectionCopy;
  v7 = connectionCopy;
  dispatch_sync(queue, v8);
}

- (void)forceEarlyUpdateForType:(int64_t)type forXPCConnection:(id)connection handler:(id)handler
{
  connectionCopy = connection;
  handlerCopy = handler;
  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 67109378;
    HIDWORD(buf) = type;
    v19 = 2112;
    v20 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "forceEarlyUpdateForType:%d forXPCConnection:%@", &buf, 0x12u);
  }

  objc_initWeak(&buf, self);
  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10003CFE4;
  v14[3] = &unk_1000763A8;
  objc_copyWeak(v17, &buf);
  v17[1] = type;
  v15 = connectionCopy;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = connectionCopy;
  dispatch_async(queue, v14);

  objc_destroyWeak(v17);
  objc_destroyWeak(&buf);
}

- (void)removeEntryData:(id)data behavior:(int64_t)behavior forXPCConnection:(id)connection handler:(id)handler
{
  dataCopy = data;
  connectionCopy = connection;
  handlerCopy = handler;
  v13 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v24 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "removeEntryData:behavior:forXPCConnection:%@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003D528;
  block[3] = &unk_1000763D0;
  objc_copyWeak(v22, buf);
  v19 = connectionCopy;
  v20 = dataCopy;
  v22[1] = behavior;
  v21 = handlerCopy;
  v15 = handlerCopy;
  v16 = dataCopy;
  v17 = connectionCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v22);
  objc_destroyWeak(buf);
}

- (void)feedbackForEntryData:(id)data action:(int64_t)action forXPCConnection:(id)connection
{
  dataCopy = data;
  connectionCopy = connection;
  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v19 = "[MapsSuggestionsSourceWrapper feedbackForEntryData:action:forXPCConnection:]";
    v20 = 2112;
    v21 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10003D87C;
  v14[3] = &unk_1000763F8;
  objc_copyWeak(v17, buf);
  v15 = connectionCopy;
  v16 = dataCopy;
  v17[1] = action;
  v12 = dataCopy;
  v13 = connectionCopy;
  dispatch_async(queue, v14);

  objc_destroyWeak(v17);
  objc_destroyWeak(buf);
}

- (void)feedbackForMapItem:(id)item action:(int64_t)action forXPCConnection:(id)connection
{
  itemCopy = item;
  connectionCopy = connection;
  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v19 = "[MapsSuggestionsSourceWrapper feedbackForMapItem:action:forXPCConnection:]";
    v20 = 2112;
    v21 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10003DBB8;
  v14[3] = &unk_1000763F8;
  objc_copyWeak(v17, buf);
  v15 = connectionCopy;
  v16 = itemCopy;
  v17[1] = action;
  v12 = itemCopy;
  v13 = connectionCopy;
  dispatch_async(queue, v14);

  objc_destroyWeak(v17);
  objc_destroyWeak(buf);
}

- (void)feedbackForContact:(id)contact action:(int64_t)action forXPCConnection:(id)connection
{
  contactCopy = contact;
  connectionCopy = connection;
  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v19 = "[MapsSuggestionsSourceWrapper feedbackForContact:action:forXPCConnection:]";
    v20 = 2112;
    v21 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10003DEC0;
  v14[3] = &unk_1000763F8;
  objc_copyWeak(v17, buf);
  v15 = connectionCopy;
  v16 = contactCopy;
  v17[1] = action;
  v12 = contactCopy;
  v13 = connectionCopy;
  dispatch_async(queue, v14);

  objc_destroyWeak(v17);
  objc_destroyWeak(buf);
}

- (unint64_t)addOrUpdateSuggestionEntries:(id)entries source:(id)source
{
  entriesCopy = entries;
  sourceCopy = source;
  objc_copyWeak(&to, &self->_memory);
  v8 = [entriesCopy copy];
  objc_initWeak(&location, self);
  queue = self->_queue;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10003E280;
  v17 = &unk_100076460;
  objc_copyWeak(&v20, &location);
  objc_copyWeak(&v21, &to);
  v10 = v8;
  v18 = v10;
  v11 = sourceCopy;
  v19 = v11;
  dispatch_async(queue, &v14);
  v12 = [v10 count];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  objc_destroyWeak(&to);
  return v12;
}

- (BOOL)attachSource:(id)source
{
  sourceCopy = source;
  v5 = sourceCopy;
  if (sourceCopy)
  {
    queue = self->_queue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10003E600;
    v9[3] = &unk_100075230;
    v9[4] = self;
    v10 = sourceCopy;
    dispatch_sync(queue, v9);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSourceWrapper.mm";
      v13 = 1024;
      v14 = 388;
      v15 = 2082;
      v16 = "[MapsSuggestionsSourceWrapper attachSource:]";
      v17 = 2082;
      v18 = "nil == (source)";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a source", buf, 0x26u);
    }
  }

  return v5 != 0;
}

- (BOOL)detachSource:(id)source
{
  sourceCopy = source;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003E7A8;
  v8[3] = &unk_100075230;
  v9 = sourceCopy;
  selfCopy = self;
  v6 = sourceCopy;
  dispatch_sync(queue, v8);

  return 1;
}

- (void)didUpdateLocation:(id)location
{
  locationCopy = location;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003E9B0;
  block[3] = &unk_100075060;
  objc_copyWeak(&v9, &location);
  v8 = locationCopy;
  v6 = locationCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)didLoseLocationPermission
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003EC10;
  v4[3] = &unk_100075178;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (MapsSuggestionsDaemonMemory)memory
{
  WeakRetained = objc_loadWeakRetained(&self->_memory);

  return WeakRetained;
}

@end