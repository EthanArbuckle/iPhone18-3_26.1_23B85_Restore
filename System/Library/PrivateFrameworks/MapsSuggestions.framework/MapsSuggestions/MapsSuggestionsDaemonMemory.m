@interface MapsSuggestionsDaemonMemory
- (BOOL)hasSourceData;
- (BOOL)removeEntries:(id)a3 sourceName:(id)a4;
- (BOOL)replaceEntries:(id)a3 sourceName:(id)a4;
- (BOOL)setETA:(id)a3 destinationKey:(id)a4;
- (BOOL)setSignalPack:(id)a3;
- (MapsSuggestionsDaemonMemory)init;
- (NSString)uniqueName;
- (id).cxx_construct;
- (id)entriesForSourceName:(id)a3;
- (id)getETAForDestinationKey:(id)a3;
- (id)signalPack;
- (id)sourceNames;
- (void)clear;
- (void)clearETAs;
@end

@implementation MapsSuggestionsDaemonMemory

- (BOOL)hasSourceData
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100003274;
  v3[3] = &unk_100075A30;
  v3[4] = self;
  return sub_10000313C(&self->_queue, v3);
}

- (id)sourceNames
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000034BC;
  v4[3] = &unk_100075A58;
  v4[4] = self;
  v2 = sub_1000032D8(&self->_queue, v4);

  return v2;
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (MapsSuggestionsDaemonMemory)init
{
  v32.receiver = self;
  v32.super_class = MapsSuggestionsDaemonMemory;
  v2 = [(MapsSuggestionsDaemonMemory *)&v32 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    sub_100003654(&v28, @"MapsSuggestionsDaemonMemoryQueue", v3);
    v4 = v28;
    v28 = 0;
    innerQueue = v2->_queue._innerQueue;
    v2->_queue._innerQueue = v4;

    v6 = v29;
    v29 = 0;
    name = v2->_queue._name;
    v2->_queue._name = v6;

    v8 = [[MapsSuggestionsSelfBuildingResourceDepot alloc] initWithName:@"destinationdResourceDepot"];
    resourceDepot = v2->_resourceDepot;
    v2->_resourceDepot = v8;

    v10 = objc_alloc_init(NSMutableDictionary);
    storage = v2->_storage;
    v2->_storage = v10;

    if (GEOConfigGetBOOL())
    {
      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Destination Graph is enabled, creating destination graph object", &v28, 2u);
      }

      v13 = objc_alloc_init(MapsSuggestionsDestinationGraph);
      destinationGraph = v2->_destinationGraph;
      v2->_destinationGraph = v13;
    }

    v15 = objc_alloc_init(NSMutableDictionary);
    etas = v2->_etas;
    v2->_etas = v15;

    v17 = objc_alloc_init(MapsSuggestionsMutableSignalPack);
    signalPack = v2->_signalPack;
    v2->_signalPack = v17;

    v19 = objc_alloc_init(MapsSuggestionsLeechingLocationUpdater);
    locationUpdater = v2->_locationUpdater;
    v2->_locationUpdater = v19;

    sub_100025E50(v2->_resourceDepot, &v28);
    objc_storeStrong(&v31, v2->_locationUpdater);
    v21 = sub_100024720(&v28);
    pipeline = v2->_pipeline;
    v2->_pipeline = v21;

    v23 = [(MapsSuggestionsBaseFeeler *)[MapsSuggestionsMapsAppFeeler alloc] initWithDelegate:v2->_pipeline];
    mapsAppFeeler = v2->_mapsAppFeeler;
    v2->_mapsAppFeeler = v23;

    v25 = [[MapsSuggestionsSourceWrapper alloc] initWithMemory:v2 locationUpdater:v2->_locationUpdater];
    sourceWrapper = v2->_sourceWrapper;
    v2->_sourceWrapper = v25;

    [(MapsSuggestionsSignalPipeline *)v2->_pipeline addFeeler:v2->_mapsAppFeeler];
  }

  return v2;
}

- (id)entriesForSourceName:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100024D60;
  v6[3] = &unk_100075A80;
  v7 = self;
  v8 = a3;
  v3 = v8;
  v4 = sub_1000034C8(&v7->_queue, v6);

  return v4;
}

- (BOOL)replaceEntries:(id)a3 sourceName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/MapsSuggestionsDaemonMemory.mm";
      v17 = 1024;
      v18 = 93;
      v19 = 2082;
      v20 = "[MapsSuggestionsDaemonMemory replaceEntries:sourceName:]";
      v21 = 2082;
      v22 = "nil == (entries)";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires zero or more entries", buf, 0x26u);
    }

    goto LABEL_9;
  }

  if (!v7)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/MapsSuggestionsDaemonMemory.mm";
      v17 = 1024;
      v18 = 94;
      v19 = 2082;
      v20 = "[MapsSuggestionsDaemonMemory replaceEntries:sourceName:]";
      v21 = 2082;
      v22 = "nil == (sourceName)";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a source name", buf, 0x26u);
    }

LABEL_9:

    v9 = 0;
    goto LABEL_10;
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100025018;
  v12[3] = &unk_100075AA8;
  v12[4] = self;
  v13 = v6;
  v14 = v8;
  v9 = sub_10000313C(&self->_queue, v12);

LABEL_10:
  return v9;
}

- (BOOL)removeEntries:(id)a3 sourceName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/MapsSuggestionsDaemonMemory.mm";
      v19 = 1024;
      v20 = 105;
      v21 = 2082;
      v22 = "[MapsSuggestionsDaemonMemory removeEntries:sourceName:]";
      v23 = 2082;
      v24 = "nil == (entries)";
      v11 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires zero or more entries";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, v11, buf, 0x26u);
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  if (!v7)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/MapsSuggestionsDaemonMemory.mm";
      v19 = 1024;
      v20 = 106;
      v21 = 2082;
      v22 = "[MapsSuggestionsDaemonMemory removeEntries:sourceName:]";
      v23 = 2082;
      v24 = "nil == (sourceName)";
      v11 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a source name";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000252C8;
  v13[3] = &unk_100075AA8;
  v14 = v6;
  v15 = self;
  v16 = v8;
  v9 = sub_10000313C(&self->_queue, v13);

  v10 = v14;
LABEL_10:

  return v9;
}

- (BOOL)setETA:(id)a3 destinationKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [v6 copy];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000255E0;
    v12[3] = &unk_100075AA8;
    v12[4] = self;
    v13 = v7;
    v14 = v8;
    v9 = v8;
    v10 = sub_10000313C(&self->_queue, v12);
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/MapsSuggestionsDaemonMemory.mm";
      v17 = 1024;
      v18 = 119;
      v19 = 2082;
      v20 = "[MapsSuggestionsDaemonMemory setETA:destinationKey:]";
      v21 = 2082;
      v22 = "nil == (destinationKey)";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a destinationd key", buf, 0x26u);
    }

    v10 = 0;
  }

  return v10;
}

- (id)getETAForDestinationKey:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000259BC;
    v9[3] = &unk_100075AD0;
    v9[4] = self;
    v10 = v4;
    v6 = sub_100005974(&self->_queue, v9);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/destinationd/MapsSuggestionsDaemonMemory.mm";
      v13 = 1024;
      v14 = 146;
      v15 = 2082;
      v16 = "[MapsSuggestionsDaemonMemory getETAForDestinationKey:]";
      v17 = 2082;
      v18 = "nil == (destinationKey)";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a destinationd key", buf, 0x26u);
    }

    v6 = 0;
  }

  return v6;
}

- (void)clearETAs
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Clearing all donated ETAs", v4, 2u);
  }

  sub_100025A5C(&self->_queue, self, &stru_100075B10);
}

- (BOOL)setSignalPack:(id)a3
{
  v4 = self;
  v5 = a3;
  objc_sync_enter(v4);
  v6 = [v5 copy];

  LOBYTE(v5) = [v6 mergeIntoSignalPack:v4->_signalPack];
  objc_sync_exit(v4);

  return v5;
}

- (id)signalPack
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MapsSuggestionsMutableSignalPack *)v2->_signalPack copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)clear
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100025D84;
  block[3] = &unk_100075B38;
  block[4] = self;
  dispatch_sync(self->_queue._innerQueue, block);
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end