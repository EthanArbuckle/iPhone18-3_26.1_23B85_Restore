@interface MapsSuggestionsDestinationGraphUpdater
- (BOOL)addPreloadableSource:(id)a3;
- (MapsSuggestionsDestinationGraphUpdater)initWithDestinationGraph:(id)a3;
- (NSString)uniqueName;
- (char)rebuildForPeriod:(id)a3 location:(id)a4 handler:(id)a5;
- (id).cxx_construct;
@end

@implementation MapsSuggestionsDestinationGraphUpdater

- (MapsSuggestionsDestinationGraphUpdater)initWithDestinationGraph:(id)a3
{
  objc_initWeak(&location, a3);
  v16.receiver = self;
  v16.super_class = MapsSuggestionsDestinationGraphUpdater;
  v4 = [(MapsSuggestionsDestinationGraphUpdater *)&v16 init];
  if (v4)
  {
    v5 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v4->_graph, v5);

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    sub_100003654(&v14, @"MapsSuggestionsDestinationGraphUpdaterQueue", v6);
    v7 = v14;
    v14 = 0;
    innerQueue = v4->_queue._innerQueue;
    v4->_queue._innerQueue = v7;

    v9 = v15;
    v15 = 0;
    name = v4->_queue._name;
    v4->_queue._name = v9;

    v11 = [[NSMutableDictionary alloc] initWithCapacity:2];
    sources = v4->_sources;
    v4->_sources = v11;
  }

  objc_destroyWeak(&location);
  return v4;
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (BOOL)addPreloadableSource:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(location, self);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100030584;
    v7[3] = &unk_100075060;
    objc_copyWeak(&v9, location);
    v8 = v4;
    dispatch_async(self->_queue._innerQueue, v7);

    objc_destroyWeak(&v9);
    objc_destroyWeak(location);
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestinationGraphUpdater.mm";
      v11 = 1024;
      v12 = 81;
      v13 = 2082;
      v14 = "[MapsSuggestionsDestinationGraphUpdater addPreloadableSource:]";
      v15 = 2082;
      v16 = "nil == (source)";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a preloadable source", location, 0x26u);
    }
  }

  return v4 != 0;
}

- (char)rebuildForPeriod:(id)a3 location:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestinationGraphUpdater.mm";
      *&buf[12] = 1024;
      *&buf[14] = 206;
      *&buf[18] = 2082;
      *&buf[20] = "[MapsSuggestionsDestinationGraphUpdater rebuildForPeriod:location:handler:]";
      v27 = 2082;
      v28 = "nil == (handler)";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a handler", buf, 0x26u);
    }

    goto LABEL_17;
  }

  if (!v8)
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestinationGraphUpdater.mm";
      *&buf[12] = 1024;
      *&buf[14] = 207;
      *&buf[18] = 2082;
      *&buf[20] = "[MapsSuggestionsDestinationGraphUpdater rebuildForPeriod:location:handler:]";
      v27 = 2082;
      v28 = "nil == (period)";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a period", buf, 0x26u);
    }

    goto LABEL_17;
  }

  if (!v9)
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestinationGraphUpdater.mm";
      *&buf[12] = 1024;
      *&buf[14] = 208;
      *&buf[18] = 2082;
      *&buf[20] = "[MapsSuggestionsDestinationGraphUpdater rebuildForPeriod:location:handler:]";
      v27 = 2082;
      v28 = "nil == (location)";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a (current) location", buf, 0x26u);
    }

LABEL_17:

    v15 = 0;
    goto LABEL_18;
  }

  v11 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = [(MapsSuggestionsDestinationGraphUpdater *)self uniqueName];
    *buf = 138412546;
    *&buf[4] = v12;
    *&buf[12] = 2080;
    *&buf[14] = "rebuildForPeriod";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v13 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "rebuildForPeriod", "", buf, 2u);
  }

  v14 = [v8 startDate];
  sub_100031E38(buf, v14, v9);

  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1000319A4;
  block[3] = &unk_100075F68;
  objc_copyWeak(&v21, &location);
  v22 = *buf;
  v23 = *&buf[8];
  v24 = *&buf[16];
  v19 = v8;
  v20 = v10;
  dispatch_async(self->_queue._innerQueue, block);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  v15 = 1;
LABEL_18:

  return v15;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 18) = 1065353216;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  return self;
}

@end