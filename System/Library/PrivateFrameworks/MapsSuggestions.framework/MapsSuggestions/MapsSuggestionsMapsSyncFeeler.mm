@interface MapsSuggestionsMapsSyncFeeler
- (BOOL)startUpdatingSignals;
- (BOOL)stopUpdatingSignals;
- (BOOL)updateSignals;
- (MapsSuggestionsMapsSyncFeeler)initWithDelegate:(id)delegate mapsSync:(id)sync;
- (void)mapsSync:(id)sync didChangeForContentType:(int64_t)type;
@end

@implementation MapsSuggestionsMapsSyncFeeler

- (BOOL)startUpdatingSignals
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100004330;
  v5[3] = &unk_1000753F0;
  objc_copyWeak(&v6, &location);
  [(MapsSuggestionsQueue *)queue asyncBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
  return 1;
}

- (BOOL)updateSignals
{
  sub_100004950(self);
  sub_100003B18(self);
  sub_100003C84(self);
  return 1;
}

- (MapsSuggestionsMapsSyncFeeler)initWithDelegate:(id)delegate mapsSync:(id)sync
{
  objc_initWeak(&location, delegate);
  syncCopy = sync;
  if (syncCopy)
  {
    v7 = objc_loadWeakRetained(&location);
    v16.receiver = self;
    v16.super_class = MapsSuggestionsMapsSyncFeeler;
    v8 = [(MapsSuggestionsBaseFeeler *)&v16 initWithDelegate:v7];

    if (v8)
    {
      v9 = [[MapsSuggestionsMutableSignalPack alloc] initWithCapacity:3];
      signalPack = v8->_signalPack;
      v8->_signalPack = v9;

      objc_storeStrong(&v8->_mapsSync, sync);
      v11 = [[MapsSuggestionsQueue alloc] initSerialQueueWithName:@"MapsSuggestionsMapsSyncFeelerQueue"];
      queue = v8->_queue;
      v8->_queue = v11;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSyncFeeler.m";
      v20 = 1024;
      v21 = 35;
      v22 = 2082;
      v23 = "[MapsSuggestionsMapsSyncFeeler initWithDelegate:mapsSync:]";
      v24 = 2082;
      v25 = "nil == (mapsSync)";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. mapsSync cannot be nil", buf, 0x26u);
    }

    selfCopy = 0;
  }

  objc_destroyWeak(&location);
  return selfCopy;
}

- (void)mapsSync:(id)sync didChangeForContentType:(int64_t)type
{
  syncCopy = sync;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002FE18;
  v8[3] = &unk_100075EC8;
  objc_copyWeak(v9, &location);
  v9[1] = type;
  [(MapsSuggestionsQueue *)queue asyncBlock:v8];
  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (BOOL)stopUpdatingSignals
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000300E4;
  v5[3] = &unk_1000753F0;
  objc_copyWeak(&v6, &location);
  [(MapsSuggestionsQueue *)queue asyncBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
  return 1;
}

@end