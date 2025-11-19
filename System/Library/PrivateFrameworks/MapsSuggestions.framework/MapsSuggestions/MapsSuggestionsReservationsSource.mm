@interface MapsSuggestionsReservationsSource
- (double)updateSuggestionEntriesWithHandler:(id)a3;
- (id)initFromResourceDepot:(id)a3 name:(id)a4;
- (void)start;
- (void)stop;
@end

@implementation MapsSuggestionsReservationsSource

- (void)start
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005D0C;
  block[3] = &unk_100075830;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)initFromResourceDepot:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v19 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v24 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsReservationsSource.m";
      v25 = 1024;
      v26 = 591;
      v27 = 2082;
      v28 = "[MapsSuggestionsReservationsSource initFromResourceDepot:name:]";
      v29 = 2082;
      v30 = "nil == (resourceDepot)";
      v20 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a resource depot to buid!";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, v20, buf, 0x26u);
    }

LABEL_11:

    v18 = 0;
    goto LABEL_12;
  }

  v8 = [v6 oneSourceDelegate];

  if (!v8)
  {
    v19 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v24 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsReservationsSource.m";
      v25 = 1024;
      v26 = 592;
      v27 = 2082;
      v28 = "[MapsSuggestionsReservationsSource initFromResourceDepot:name:]";
      v29 = 2082;
      v30 = "nil == (resourceDepot.oneSourceDelegate)";
      v20 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires one SourceDelegate!";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v9 = [v6 oneSourceDelegate];
  v22.receiver = self;
  v22.super_class = MapsSuggestionsReservationsSource;
  v10 = [(MapsSuggestionsReservationsSource *)&v22 initWithDelegate:v9 name:v7];

  if (v10)
  {
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("MapsSuggestionsReservationsSourceQueue", v11);
    queue = v10->_queue;
    v10->_queue = v12;

    v10->_suspended = 1;
    v14 = [v6 oneAppGuardian];
    guardian = v10->_guardian;
    v10->_guardian = v14;

    v16 = [[MapsSuggestionsLimitedDictionary alloc] initWithMaximumCapacity:GEOConfigGetInteger()];
    mapItemCache = v10->_mapItemCache;
    v10->_mapItemCache = v16;
  }

  self = v10;
  v18 = self;
LABEL_12:

  return v18;
}

- (void)stop
{
  [(MapsSuggestionsAppGuardian *)self->_guardian unregisterAllBundleIDsForSource:self];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003A0D8;
  block[3] = &unk_100075830;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (double)updateSuggestionEntriesWithHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003A1F4;
  block[3] = &unk_100075B88;
  objc_copyWeak(&v12, &location);
  v6 = v4;
  v11 = v6;
  dispatch_async(queue, block);
  GEOConfigGetDouble();
  v8 = v7;

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v8;
}

@end