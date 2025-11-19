@interface MapsSuggestionsDestinationGraph
- (BOOL)addBreadcrumb:(id)a3;
- (BOOL)addETA:(id)a3 from:(id)a4 to:(id)a5;
- (BOOL)addETA:(id)a3 to:(id)a4;
- (BOOL)addEntry:(id)a3;
- (BOOL)rebalance;
- (MapsSuggestionsDestinationGraph)init;
- (id).cxx_construct;
- (id)destinationAtEntry:(id)a3;
- (id)destinationAtLocation:(id)a3;
- (id)destinationAtMapItem:(id)a3;
- (id)destinationsAtTime:(id)a3;
- (id)objectForJSON;
- (id)predictedEntriesWithinPeriod:(id)a3;
- (id)testing_allDestinationLinks;
- (id)testing_allDestinations;
@end

@implementation MapsSuggestionsDestinationGraph

- (MapsSuggestionsDestinationGraph)init
{
  v15.receiver = self;
  v15.super_class = MapsSuggestionsDestinationGraph;
  v2 = [(MapsSuggestionsDestinationGraph *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    destinations = v2->_destinations;
    v2->_destinations = v3;

    v5 = objc_alloc_init(NSMutableArray);
    destinationLinks = v2->_destinationLinks;
    v2->_destinationLinks = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    sub_100003654(&v13, @"MapsSuggestionsDestinationGraphQueue", v7);
    v8 = v13;
    v13 = 0;
    innerQueue = v2->_queue._innerQueue;
    v2->_queue._innerQueue = v8;

    v10 = v14;
    v14 = 0;
    name = v2->_queue._name;
    v2->_queue._name = v10;
  }

  return v2;
}

- (BOOL)addEntry:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(location, self);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100008D34;
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
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestinationGraph.mm";
      v11 = 1024;
      v12 = 73;
      v13 = 2082;
      v14 = "[MapsSuggestionsDestinationGraph addEntry:]";
      v15 = 2082;
      v16 = "nil == (entry)";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry", location, 0x26u);
    }
  }

  return v4 != 0;
}

- (id)destinationAtEntry:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100009328;
    v9[3] = &unk_100075088;
    v9[4] = self;
    v10 = v4;
    v6 = sub_10000921C(&self->_queue, v9);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestinationGraph.mm";
      v13 = 1024;
      v14 = 99;
      v15 = 2082;
      v16 = "[MapsSuggestionsDestinationGraph destinationAtEntry:]";
      v17 = 2082;
      v18 = "nil == (entry)";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry", buf, 0x26u);
    }

    v6 = 0;
  }

  return v6;
}

- (id)destinationAtMapItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 coordinate];
    v8 = [[CLLocation alloc] initWithLatitude:v6 longitude:v7];
    v9 = [(MapsSuggestionsDestinationGraph *)self destinationAtLocation:v8];
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v12 = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestinationGraph.mm";
      v14 = 1024;
      v15 = 116;
      v16 = 2082;
      v17 = "[MapsSuggestionsDestinationGraph destinationAtMapItem:]";
      v18 = 2082;
      v19 = "nil == (mapItem)";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a mapItem", &v12, 0x26u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)destinationAtLocation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000097B8;
    v9[3] = &unk_100075088;
    v9[4] = self;
    v10 = v4;
    v6 = sub_10000921C(&self->_queue, v9);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestinationGraph.mm";
      v13 = 1024;
      v14 = 124;
      v15 = 2082;
      v16 = "[MapsSuggestionsDestinationGraph destinationAtLocation:]";
      v17 = 2082;
      v18 = "nil == (location)";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a location", buf, 0x26u);
    }

    v6 = 0;
  }

  return v6;
}

- (id)destinationsAtTime:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100009BB4;
    v9[3] = &unk_1000750B0;
    v9[4] = self;
    v10 = v4;
    v6 = sub_100009AA8(&self->_queue, v9);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestinationGraph.mm";
      v13 = 1024;
      v14 = 141;
      v15 = 2082;
      v16 = "[MapsSuggestionsDestinationGraph destinationsAtTime:]";
      v17 = 2082;
      v18 = "nil == (time)";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a time", buf, 0x26u);
    }

    v6 = 0;
  }

  return v6;
}

- (id)predictedEntriesWithinPeriod:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100009ECC;
    v9[3] = &unk_1000750B0;
    v9[4] = self;
    v10 = v4;
    v6 = sub_100009AA8(&self->_queue, v9);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestinationGraph.mm";
      v13 = 1024;
      v14 = 158;
      v15 = 2082;
      v16 = "[MapsSuggestionsDestinationGraph predictedEntriesWithinPeriod:]";
      v17 = 2082;
      v18 = "nil == (period)";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a period", buf, 0x26u);
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)addETA:(id)a3 to:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestinationGraph.mm";
      v17 = 1024;
      v18 = 186;
      v19 = 2082;
      v20 = "[MapsSuggestionsDestinationGraph addETA:to:]";
      v21 = 2082;
      v22 = "nil == (eta)";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an ETA", location, 0x26u);
    }

    goto LABEL_9;
  }

  if (!v7)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestinationGraph.mm";
      v17 = 1024;
      v18 = 187;
      v19 = 2082;
      v20 = "[MapsSuggestionsDestinationGraph addETA:to:]";
      v21 = 2082;
      v22 = "nil == (destination)";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a destination", location, 0x26u);
    }

LABEL_9:

    v9 = 0;
    goto LABEL_10;
  }

  objc_initWeak(location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A504;
  block[3] = &unk_1000750D8;
  objc_copyWeak(&v15, location);
  v13 = v8;
  v14 = v6;
  dispatch_async(self->_queue._innerQueue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(location);
  v9 = 1;
LABEL_10:

  return v9;
}

- (BOOL)addETA:(id)a3 from:(id)a4 to:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v8)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestinationGraph.mm";
      v21 = 1024;
      v22 = 211;
      v23 = 2082;
      v24 = "[MapsSuggestionsDestinationGraph addETA:from:to:]";
      v25 = 2082;
      v26 = "nil == (eta)";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an ETA", location, 0x26u);
    }

    goto LABEL_13;
  }

  if (!v9)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestinationGraph.mm";
      v21 = 1024;
      v22 = 212;
      v23 = 2082;
      v24 = "[MapsSuggestionsDestinationGraph addETA:from:to:]";
      v25 = 2082;
      v26 = "nil == (from)";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a from-destination", location, 0x26u);
    }

    goto LABEL_13;
  }

  if (!v10)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestinationGraph.mm";
      v21 = 1024;
      v22 = 213;
      v23 = 2082;
      v24 = "[MapsSuggestionsDestinationGraph addETA:from:to:]";
      v25 = 2082;
      v26 = "nil == (to)";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a to-destination", location, 0x26u);
    }

LABEL_13:

    v12 = 0;
    goto LABEL_14;
  }

  objc_initWeak(location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000AACC;
  v15[3] = &unk_100075100;
  objc_copyWeak(&v19, location);
  v16 = v11;
  v17 = v9;
  v18 = v8;
  dispatch_async(self->_queue._innerQueue, v15);

  objc_destroyWeak(&v19);
  objc_destroyWeak(location);
  v12 = 1;
LABEL_14:

  return v12;
}

- (BOOL)addBreadcrumb:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(location, self);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000AEC8;
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
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDestinationGraph.mm";
      v11 = 1024;
      v12 = 233;
      v13 = 2082;
      v14 = "[MapsSuggestionsDestinationGraph addBreadcrumb:]";
      v15 = 2082;
      v16 = "nil == (breadcrumb)";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a breadcrumb", location, 0x26u);
    }
  }

  return v4 != 0;
}

- (BOOL)rebalance
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000B870;
  v4[3] = &unk_100075178;
  objc_copyWeak(&v5, &location);
  dispatch_async(self->_queue._innerQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
  return 1;
}

- (id)objectForJSON
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000BE28;
  v4[3] = &unk_1000751A0;
  v4[4] = self;
  v2 = sub_10000BD1C(&self->_queue, v4);

  return v2;
}

- (id)testing_allDestinations
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000C17C;
  v4[3] = &unk_1000751C8;
  v4[4] = self;
  v2 = sub_100009AA8(&self->_queue, v4);

  return v2;
}

- (id)testing_allDestinationLinks
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000C230;
  v4[3] = &unk_1000751C8;
  v4[4] = self;
  v2 = sub_100009AA8(&self->_queue, v4);

  return v2;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end