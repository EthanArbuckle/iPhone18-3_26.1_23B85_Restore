@interface MapsSuggestionsRoutineFeeler
- (MapsSuggestionsRoutineFeeler)initWithDelegate:(id)a3 name:(id)a4;
- (double)updateSignals;
@end

@implementation MapsSuggestionsRoutineFeeler

- (double)updateSignals
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "updateSignals", v8, 2u);
  }

  v4 = dispatch_group_create();
  v5 = self;
  objc_sync_enter(v5);
  sub_100012074(v5, 0, v4);
  sub_100012074(v5, 1uLL, v4);
  sub_100012250(v5, v4);
  sub_10001243C(v5, v4);
  sub_10004C6F4(v5, v4);
  pollingFrequency = v5->_pollingFrequency;
  objc_sync_exit(v5);

  return pollingFrequency;
}

- (MapsSuggestionsRoutineFeeler)initWithDelegate:(id)a3 name:(id)a4
{
  objc_initWeak(&location, a3);
  v6 = a4;
  v7 = objc_loadWeakRetained(&location);
  v16.receiver = self;
  v16.super_class = MapsSuggestionsRoutineFeeler;
  v8 = [(MapsSuggestionsBaseFeeler *)&v16 initWithDelegate:v7 name:v6];

  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("MapsSuggestionsRoutineFeeler", v9);
    queue = v8->_queue;
    v8->_queue = v10;

    GEOConfigGetDouble();
    v8->_pollingFrequency = v12;
    v13 = [[MapsSuggestionsMutableSignalPack alloc] initWithCapacity:4];
    signalPack = v8->_signalPack;
    v8->_signalPack = v13;
  }

  objc_destroyWeak(&location);
  return v8;
}

@end