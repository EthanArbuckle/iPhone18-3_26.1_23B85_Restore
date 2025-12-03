@interface MapsSuggestionsRoutineFeeler
- (MapsSuggestionsRoutineFeeler)initWithDelegate:(id)delegate name:(id)name;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sub_100012074(selfCopy, 0, v4);
  sub_100012074(selfCopy, 1uLL, v4);
  sub_100012250(selfCopy, v4);
  sub_10001243C(selfCopy, v4);
  sub_10004C6F4(selfCopy, v4);
  pollingFrequency = selfCopy->_pollingFrequency;
  objc_sync_exit(selfCopy);

  return pollingFrequency;
}

- (MapsSuggestionsRoutineFeeler)initWithDelegate:(id)delegate name:(id)name
{
  objc_initWeak(&location, delegate);
  nameCopy = name;
  v7 = objc_loadWeakRetained(&location);
  v16.receiver = self;
  v16.super_class = MapsSuggestionsRoutineFeeler;
  v8 = [(MapsSuggestionsBaseFeeler *)&v16 initWithDelegate:v7 name:nameCopy];

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