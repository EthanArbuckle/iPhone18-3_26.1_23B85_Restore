@interface MapsSuggestionsSignalPipeline
- (BOOL)addFeeler:(id)feeler;
- (BOOL)feeler:(id)feeler sendsSignalPack:(id)pack;
- (BOOL)removeFeeler:(id)feeler;
- (BOOL)setAlgorithm:(id)algorithm;
- (BOOL)start;
- (BOOL)stop;
- (MapsSuggestionsSignalPipeline)initWithNetworkRequester:(id)requester;
- (MapsSuggestionsSignalPipelineUpdater)updaterDelegate;
- (NSString)uniqueName;
- (char)guessTransportModesForDestinationEntry:(id)entry originCoordinate:(CLLocationCoordinate2D)coordinate handler:(id)handler;
- (char)guessTransportModesForDestinationMapItem:(id)item originCoordinate:(CLLocationCoordinate2D)coordinate handler:(id)handler;
- (id).cxx_construct;
- (id)mergedCommonSignalPack;
- (id)mergedSignalPackForDestinationEntry:(id)entry originCoordinate:(CLLocationCoordinate2D)coordinate;
- (id)mergedSignalPackForDestinationMapItem:(id)item originCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)dealloc;
- (void)resetData;
@end

@implementation MapsSuggestionsSignalPipeline

- (BOOL)start
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100002EB8;
  v4[3] = &unk_100075178;
  objc_copyWeak(&v5, &location);
  dispatch_async(self->_queue._innerQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
  return 1;
}

- (MapsSuggestionsSignalPipelineUpdater)updaterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_updaterDelegate);

  return WeakRetained;
}

- (id)mergedCommonSignalPack
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100006584;
  v4[3] = &unk_1000752A8;
  v4[4] = self;
  v2 = sub_100005B00(&self->_queue, v4);

  return v2;
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (MapsSuggestionsSignalPipeline)initWithNetworkRequester:(id)requester
{
  requesterCopy = requester;
  v25.receiver = self;
  v25.super_class = MapsSuggestionsSignalPipeline;
  v6 = [(MapsSuggestionsSignalPipeline *)&v25 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    sub_100003654(&location, @"MapsSuggestionsSignalPipeline", v7);
    v8 = location;
    location = 0;
    v9 = *(v6 + 1);
    *(v6 + 1) = v8;

    v10 = v24;
    v24 = 0;
    v11 = *(v6 + 2);
    *(v6 + 2) = v10;

    v12 = objc_alloc_init(MapsSuggestionsMutableSignalPack);
    v13 = *(v6 + 3);
    *(v6 + 3) = v12;

    v14 = objc_alloc_init(NSMutableArray);
    v15 = *(v6 + 5);
    *(v6 + 5) = v14;

    v16 = objc_alloc_init(NSMutableArray);
    v17 = *(v6 + 6);
    *(v6 + 6) = v16;

    v18 = objc_alloc_init(NSMutableDictionary);
    v19 = *(v6 + 8);
    *(v6 + 8) = v18;

    objc_storeStrong(v6 + 9, requester);
    objc_initWeak(&location, v6);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000E200;
    block[3] = &unk_100075178;
    objc_copyWeak(&v22, &location);
    dispatch_async(*(v6 + 1), block);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)dealloc
{
  sub_10000E3AC(self);
  v3.receiver = self;
  v3.super_class = MapsSuggestionsSignalPipeline;
  [(MapsSuggestionsSignalPipeline *)&v3 dealloc];
}

- (BOOL)addFeeler:(id)feeler
{
  feelerCopy = feeler;
  v5 = feelerCopy;
  if (feelerCopy)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000E664;
    v9[3] = &unk_100075280;
    v9[4] = self;
    v10 = feelerCopy;
    v6 = sub_10000313C(&self->_queue, v9);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPipeline.mm";
      v13 = 1024;
      v14 = 128;
      v15 = 2082;
      v16 = "[MapsSuggestionsSignalPipeline addFeeler:]";
      v17 = 2082;
      v18 = "nil == (feeler)";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a feeler", buf, 0x26u);
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)removeFeeler:(id)feeler
{
  feelerCopy = feeler;
  v5 = feelerCopy;
  if (feelerCopy)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000E8D8;
    v9[3] = &unk_100075280;
    v9[4] = self;
    v10 = feelerCopy;
    v6 = sub_10000313C(&self->_queue, v9);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPipeline.mm";
      v13 = 1024;
      v14 = 137;
      v15 = 2082;
      v16 = "[MapsSuggestionsSignalPipeline removeFeeler:]";
      v17 = 2082;
      v18 = "nil == (feeler)";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a feeler", buf, 0x26u);
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)setAlgorithm:(id)algorithm
{
  algorithmCopy = algorithm;
  v5 = algorithmCopy;
  if (algorithmCopy)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000EAF0;
    v9[3] = &unk_100075280;
    v9[4] = self;
    v10 = algorithmCopy;
    v6 = sub_10000313C(&self->_queue, v9);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPipeline.mm";
      v13 = 1024;
      v14 = 146;
      v15 = 2082;
      v16 = "[MapsSuggestionsSignalPipeline setAlgorithm:]";
      v17 = 2082;
      v18 = "nil == (algorithm)";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a signal algorithm", buf, 0x26u);
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)stop
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000EBB8;
  v4[3] = &unk_100075178;
  objc_copyWeak(&v5, &location);
  dispatch_async(self->_queue._innerQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
  return 1;
}

- (void)resetData
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000ED7C;
  v3[3] = &unk_100075178;
  objc_copyWeak(&v4, &location);
  dispatch_async(self->_queue._innerQueue, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (id)mergedSignalPackForDestinationEntry:(id)entry originCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  entryCopy = entry;
  v8 = entryCopy;
  if (entryCopy)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000F044;
    v12[3] = &unk_1000752D0;
    v12[4] = self;
    v13 = entryCopy;
    v14 = latitude;
    v15 = longitude;
    v9 = sub_100005B00(&self->_queue, v12);
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPipeline.mm";
      v18 = 1024;
      v19 = 194;
      v20 = 2082;
      v21 = "[MapsSuggestionsSignalPipeline mergedSignalPackForDestinationEntry:originCoordinate:]";
      v22 = 2082;
      v23 = "nil == (entry)";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry", buf, 0x26u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)mergedSignalPackForDestinationMapItem:(id)item originCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  itemCopy = item;
  v8 = itemCopy;
  if (itemCopy)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000F2AC;
    v12[3] = &unk_1000752D0;
    v12[4] = self;
    v13 = itemCopy;
    v14 = latitude;
    v15 = longitude;
    v9 = sub_100005B00(&self->_queue, v12);
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPipeline.mm";
      v18 = 1024;
      v19 = 205;
      v20 = 2082;
      v21 = "[MapsSuggestionsSignalPipeline mergedSignalPackForDestinationMapItem:originCoordinate:]";
      v22 = 2082;
      v23 = "nil == (mapItem)";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an mapItem", buf, 0x26u);
    }

    v9 = 0;
  }

  return v9;
}

- (char)guessTransportModesForDestinationMapItem:(id)item originCoordinate:(CLLocationCoordinate2D)coordinate handler:(id)handler
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  itemCopy = item;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (!self->_algorithm)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPipeline.mm";
      v22 = 1024;
      v23 = 217;
      v24 = 2082;
      v25 = "[MapsSuggestionsSignalPipeline guessTransportModesForDestinationMapItem:originCoordinate:handler:]";
      v26 = 2082;
      v27 = "nil == (_algorithm)";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a signal algorithm to be set", buf, 0x26u);
    }

    goto LABEL_13;
  }

  if (!handlerCopy)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPipeline.mm";
      v22 = 1024;
      v23 = 218;
      v24 = 2082;
      v25 = "[MapsSuggestionsSignalPipeline guessTransportModesForDestinationMapItem:originCoordinate:handler:]";
      v26 = 2082;
      v27 = "nil == (handler)";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a handler", buf, 0x26u);
    }

    goto LABEL_13;
  }

  if (!itemCopy)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPipeline.mm";
      v22 = 1024;
      v23 = 219;
      v24 = 2082;
      v25 = "[MapsSuggestionsSignalPipeline guessTransportModesForDestinationMapItem:originCoordinate:handler:]";
      v26 = 2082;
      v27 = "nil == (mapItem)";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a mapItem", buf, 0x26u);
    }

LABEL_13:

    v12 = 0;
    goto LABEL_14;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000F764;
  v15[3] = &unk_1000752F8;
  v15[4] = self;
  v16 = itemCopy;
  v18 = latitude;
  v19 = longitude;
  v17 = v11;
  v12 = sub_10000F69C(&self->_queue, v15);

LABEL_14:
  return v12;
}

- (char)guessTransportModesForDestinationEntry:(id)entry originCoordinate:(CLLocationCoordinate2D)coordinate handler:(id)handler
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  entryCopy = entry;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (!self->_algorithm)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPipeline.mm";
      v22 = 1024;
      v23 = 232;
      v24 = 2082;
      v25 = "[MapsSuggestionsSignalPipeline guessTransportModesForDestinationEntry:originCoordinate:handler:]";
      v26 = 2082;
      v27 = "nil == (_algorithm)";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a signal algorithm to be set", buf, 0x26u);
    }

    goto LABEL_13;
  }

  if (!handlerCopy)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPipeline.mm";
      v22 = 1024;
      v23 = 233;
      v24 = 2082;
      v25 = "[MapsSuggestionsSignalPipeline guessTransportModesForDestinationEntry:originCoordinate:handler:]";
      v26 = 2082;
      v27 = "nil == (handler)";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a handler", buf, 0x26u);
    }

    goto LABEL_13;
  }

  if (!entryCopy)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPipeline.mm";
      v22 = 1024;
      v23 = 234;
      v24 = 2082;
      v25 = "[MapsSuggestionsSignalPipeline guessTransportModesForDestinationEntry:originCoordinate:handler:]";
      v26 = 2082;
      v27 = "nil == (entry)";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry", buf, 0x26u);
    }

LABEL_13:

    v12 = 0;
    goto LABEL_14;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000FDBC;
  v15[3] = &unk_1000752F8;
  v15[4] = self;
  v16 = entryCopy;
  v18 = latitude;
  v19 = longitude;
  v17 = v11;
  v12 = sub_10000F69C(&self->_queue, v15);

LABEL_14:
  return v12;
}

- (BOOL)feeler:(id)feeler sendsSignalPack:(id)pack
{
  feelerCopy = feeler;
  packCopy = pack;
  if (feelerCopy)
  {
    objc_initWeak(location, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000102E8;
    block[3] = &unk_1000750D8;
    objc_copyWeak(&v13, location);
    v11 = packCopy;
    selfCopy = self;
    dispatch_async(self->_queue._innerQueue, block);

    objc_destroyWeak(&v13);
    objc_destroyWeak(location);
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPipeline.mm";
      v15 = 1024;
      v16 = 262;
      v17 = 2082;
      v18 = "[MapsSuggestionsSignalPipeline feeler:sendsSignalPack:]";
      v19 = 2082;
      v20 = "nil == (feeler)";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a feeler", location, 0x26u);
    }
  }

  return feelerCopy != 0;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end