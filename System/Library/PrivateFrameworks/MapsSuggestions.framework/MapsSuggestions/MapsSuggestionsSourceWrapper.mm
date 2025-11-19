@interface MapsSuggestionsSourceWrapper
- (BOOL)attachSource:(id)a3;
- (BOOL)detachSource:(id)a3;
- (MapsSuggestionsDaemonMemory)memory;
- (MapsSuggestionsSourceWrapper)initWithMemory:(id)a3 locationUpdater:(id)a4;
- (NSString)description;
- (NSString)uniqueName;
- (unint64_t)addOrUpdateSuggestionEntries:(id)a3 source:(id)a4;
- (void)addMonitoredXPCConnection:(id)a3;
- (void)dealloc;
- (void)didLoseLocationPermission;
- (void)didUpdateLocation:(id)a3;
- (void)feedbackForContact:(id)a3 action:(int64_t)a4 forXPCConnection:(id)a5;
- (void)feedbackForEntryData:(id)a3 action:(int64_t)a4 forXPCConnection:(id)a5;
- (void)feedbackForMapItem:(id)a3 action:(int64_t)a4 forXPCConnection:(id)a5;
- (void)forceEarlyUpdateForType:(int64_t)a3 forXPCConnection:(id)a4 handler:(id)a5;
- (void)removeEntryData:(id)a3 behavior:(int64_t)a4 forXPCConnection:(id)a5 handler:(id)a6;
- (void)removeMonitoredXPCConnection:(id)a3;
@end

@implementation MapsSuggestionsSourceWrapper

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (MapsSuggestionsSourceWrapper)initWithMemory:(id)a3 locationUpdater:(id)a4
{
  objc_initWeak(&location, a3);
  objc_initWeak(&v25, a4);
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

    v13 = [v10 resourceDepot];
    [v13 setOneSourceDelegate:v6];

    objc_storeWeak(&v6->_memory, v10);
    if (v12)
    {
      v14 = [v10 resourceDepot];
      [v14 setOneLocationUpdater:v12];
    }

    v15 = [v12 startLocationUpdatesForDelegate:v6];
    v16 = MapsSuggestionsBestLocation();
    bestLocation = v6->_bestLocation;
    v6->_bestLocation = v16;

    v18 = objc_alloc_init(NSMutableArray);
    connections = v6->_connections;
    v6->_connections = v18;

    v20 = [v10 resourceDepot];
    v21 = [MapsSuggestionsCompositeSourceBuilder buildCompositeSourceFromResourceDepot:v20];
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

- (void)addMonitoredXPCConnection:(id)a3
{
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "addMonitoredXPCConnection:%@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003CBAC;
  v8[3] = &unk_100075060;
  objc_copyWeak(&v10, buf);
  v9 = v4;
  v7 = v4;
  dispatch_async(queue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)removeMonitoredXPCConnection:(id)a3
{
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "removeMonitoredXPCConnection:%@", buf, 0xCu);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003CE24;
  v8[3] = &unk_100075230;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(queue, v8);
}

- (void)forceEarlyUpdateForType:(int64_t)a3 forXPCConnection:(id)a4 handler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 67109378;
    HIDWORD(buf) = a3;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "forceEarlyUpdateForType:%d forXPCConnection:%@", &buf, 0x12u);
  }

  objc_initWeak(&buf, self);
  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10003CFE4;
  v14[3] = &unk_1000763A8;
  objc_copyWeak(v17, &buf);
  v17[1] = a3;
  v15 = v8;
  v16 = v9;
  v12 = v9;
  v13 = v8;
  dispatch_async(queue, v14);

  objc_destroyWeak(v17);
  objc_destroyWeak(&buf);
}

- (void)removeEntryData:(id)a3 behavior:(int64_t)a4 forXPCConnection:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "removeEntryData:behavior:forXPCConnection:%@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003D528;
  block[3] = &unk_1000763D0;
  objc_copyWeak(v22, buf);
  v19 = v11;
  v20 = v10;
  v22[1] = a4;
  v21 = v12;
  v15 = v12;
  v16 = v10;
  v17 = v11;
  dispatch_async(queue, block);

  objc_destroyWeak(v22);
  objc_destroyWeak(buf);
}

- (void)feedbackForEntryData:(id)a3 action:(int64_t)a4 forXPCConnection:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v19 = "[MapsSuggestionsSourceWrapper feedbackForEntryData:action:forXPCConnection:]";
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10003D87C;
  v14[3] = &unk_1000763F8;
  objc_copyWeak(v17, buf);
  v15 = v9;
  v16 = v8;
  v17[1] = a4;
  v12 = v8;
  v13 = v9;
  dispatch_async(queue, v14);

  objc_destroyWeak(v17);
  objc_destroyWeak(buf);
}

- (void)feedbackForMapItem:(id)a3 action:(int64_t)a4 forXPCConnection:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v19 = "[MapsSuggestionsSourceWrapper feedbackForMapItem:action:forXPCConnection:]";
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10003DBB8;
  v14[3] = &unk_1000763F8;
  objc_copyWeak(v17, buf);
  v15 = v9;
  v16 = v8;
  v17[1] = a4;
  v12 = v8;
  v13 = v9;
  dispatch_async(queue, v14);

  objc_destroyWeak(v17);
  objc_destroyWeak(buf);
}

- (void)feedbackForContact:(id)a3 action:(int64_t)a4 forXPCConnection:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v19 = "[MapsSuggestionsSourceWrapper feedbackForContact:action:forXPCConnection:]";
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10003DEC0;
  v14[3] = &unk_1000763F8;
  objc_copyWeak(v17, buf);
  v15 = v9;
  v16 = v8;
  v17[1] = a4;
  v12 = v8;
  v13 = v9;
  dispatch_async(queue, v14);

  objc_destroyWeak(v17);
  objc_destroyWeak(buf);
}

- (unint64_t)addOrUpdateSuggestionEntries:(id)a3 source:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_copyWeak(&to, &self->_memory);
  v8 = [v6 copy];
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
  v11 = v7;
  v19 = v11;
  dispatch_async(queue, &v14);
  v12 = [v10 count];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  objc_destroyWeak(&to);
  return v12;
}

- (BOOL)attachSource:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10003E600;
    v9[3] = &unk_100075230;
    v9[4] = self;
    v10 = v4;
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

- (BOOL)detachSource:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003E7A8;
  v8[3] = &unk_100075230;
  v9 = v4;
  v10 = self;
  v6 = v4;
  dispatch_sync(queue, v8);

  return 1;
}

- (void)didUpdateLocation:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003E9B0;
  block[3] = &unk_100075060;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
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