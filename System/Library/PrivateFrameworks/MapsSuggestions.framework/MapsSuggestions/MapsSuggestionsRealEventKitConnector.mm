@interface MapsSuggestionsRealEventKitConnector
- (BOOL)removeEvent:(id)a3 span:(int64_t)a4 error:(id *)a5;
- (MapsSuggestionsEventKitConnectorDelegate)delegate;
- (MapsSuggestionsRealEventKitConnector)init;
- (NSString)uniqueName;
- (id)calVisibilityManager;
- (id)calendarsForEntityType:(unint64_t)a3;
- (id)eventWithIdentifier:(id)a3;
- (id)eventsMatchingPredicate:(id)a3;
- (id)predicateForEventsWithStartDate:(id)a3 endDate:(id)a4 calendars:(id)a5;
- (id)visibleCalendars;
- (void)_eventStoreDidChange:(id)a3;
- (void)_q_eventStoreDidChange;
- (void)startListeningForChanges;
- (void)stopListeningForChanges;
@end

@implementation MapsSuggestionsRealEventKitConnector

- (void)_q_eventStoreDidChange
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    dispatch_assert_queue_V2(a1[1]);
    v2 = [(dispatch_queue_t *)a1 delegate];
    v3 = v2;
    if (v2)
    {
      [v2 eventKitDidChange:a1];
    }

    else
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = 136446722;
        v6 = "MapsSuggestionsRealEventKitConnector.m";
        v7 = 1026;
        v8 = 134;
        v9 = 2082;
        v10 = "[MapsSuggestionsRealEventKitConnector _q_eventStoreDidChange]";
        _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongDelegate went away in %{public}s", &v5, 0x1Cu);
      }
    }
  }
}

- (MapsSuggestionsEventKitConnectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)startListeningForChanges
{
  v3 = +[MapsSuggestionsSharedEventStore sharedEventStore];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__eventStoreDidChange_ name:*MEMORY[0x1E6966928] object:0];
}

- (id)visibleCalendars
{
  v2 = [(MapsSuggestionsRealEventKitConnector *)self calVisibilityManager];
  v3 = [v2 visibleCalendars];

  return v3;
}

- (id)calVisibilityManager
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__MapsSuggestionsRealEventKitConnector_calVisibilityManager__block_invoke;
    block[3] = &unk_1E81F6168;
    block[4] = a1;
    if (qword_1EDC51EE0 != -1)
    {
      dispatch_once(&qword_1EDC51EE0, block);
    }

    v1 = _MergedGlobals_3;
    if (_MergedGlobals_3)
    {
      v2 = _MergedGlobals_3;
    }

    else
    {
      v3 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v7 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealEventKitConnector.m";
        v8 = 1024;
        v9 = 61;
        v10 = 2082;
        v11 = "[MapsSuggestionsRealEventKitConnector calVisibilityManager]";
        v12 = 2082;
        v13 = "nil == (s_calVisibilityManager)";
        _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. EKCalendarVisibilityManager cannot be nil!", buf, 0x26u);
      }
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (MapsSuggestionsRealEventKitConnector)init
{
  v7.receiver = self;
  v7.super_class = MapsSuggestionsRealEventKitConnector;
  v2 = [(MapsSuggestionsRealEventKitConnector *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("MapsSuggestionsRealEventKitConnectorQueue", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

void __60__MapsSuggestionsRealEventKitConnector_calVisibilityManager__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, *(a1 + 32));
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 32) uniqueName];
    *buf = 138412546;
    v20 = v3;
    v21 = 2080;
    v22 = "EKCalendarVisibilityManagerInit";
    _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v4 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "EKCalendarVisibilityManagerInit", "", buf, 2u);
  }

  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __60__MapsSuggestionsRealEventKitConnector_calVisibilityManager__block_invoke_10;
  v16 = &unk_1E81F53E8;
  objc_copyWeak(&v17, &location);
  v5 = _Block_copy(&v13);
  v6 = objc_alloc(MEMORY[0x1E69669B8]);
  v7 = [MapsSuggestionsSharedEventStore sharedEventStore:v13];
  v8 = [v6 initWithEventStore:v7 visibilityChangedCallback:v5 queue:*(*(a1 + 32) + 8)];
  v9 = _MergedGlobals_3;
  _MergedGlobals_3 = v8;

  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [*(a1 + 32) uniqueName];
    *buf = 138412546;
    v20 = v11;
    v21 = 2080;
    v22 = "EKCalendarVisibilityManagerInit";
    _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
  }

  v12 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "EKCalendarVisibilityManagerInit", "", buf, 2u);
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __60__MapsSuggestionsRealEventKitConnector_calVisibilityManager__block_invoke_10(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = GEOFindOrCreateLog();
  v3 = v2;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v5) = 0;
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "Received a visibility change callback from EKCalendarVisibilityManager", &v5, 2u);
    }

    [WeakRetained _eventStoreDidChange:0];
  }

  else
  {
    v4 = v2;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsRealEventKitConnector.m";
      v7 = 1026;
      v8 = 50;
      v9 = 2082;
      v10 = "[MapsSuggestionsRealEventKitConnector calVisibilityManager]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

- (id)calendarsForEntityType:(unint64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = +[MapsSuggestionsSharedEventStore sharedEventStore];

  if (v4)
  {
    v5 = +[MapsSuggestionsSharedEventStore sharedEventStore];
    v6 = [v5 calendarsForEntityType:a3];
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136446978;
      v10 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/UT_Never/MapsSuggestionsRealEventKitConnector.m";
      v11 = 1024;
      v12 = 75;
      v13 = 2082;
      v14 = "[MapsSuggestionsRealEventKitConnector calendarsForEntityType:]";
      v15 = 2082;
      v16 = "nil == ([MapsSuggestionsSharedEventStore sharedEventStore])";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. EKEventStore cannot be nil!", &v9, 0x26u);
    }

    v6 = 0;
  }

  return v6;
}

- (id)predicateForEventsWithStartDate:(id)a3 endDate:(id)a4 calendars:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[MapsSuggestionsSharedEventStore sharedEventStore];
  v11 = [v10 predicateForEventsWithStartDate:v9 endDate:v8 calendars:v7];

  return v11;
}

- (id)eventsMatchingPredicate:(id)a3
{
  v3 = a3;
  v4 = +[MapsSuggestionsSharedEventStore sharedEventStore];
  v5 = [v4 eventsMatchingPredicate:v3];

  return v5;
}

- (id)eventWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[MapsSuggestionsSharedEventStore sharedEventStore];
  v5 = [v4 eventWithIdentifier:v3];

  return v5;
}

- (BOOL)removeEvent:(id)a3 span:(int64_t)a4 error:(id *)a5
{
  v7 = a3;
  v8 = +[MapsSuggestionsSharedEventStore sharedEventStore];
  LOBYTE(a5) = [v8 removeEvent:v7 span:a4 error:a5];

  return a5;
}

- (void)stopListeningForChanges
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E6966928] object:0];
}

- (void)_eventStoreDidChange:(id)a3
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__MapsSuggestionsRealEventKitConnector__eventStoreDidChange___block_invoke;
  v5[3] = &unk_1E81F53E8;
  objc_copyWeak(&v6, &location);
  dispatch_async(queue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __61__MapsSuggestionsRealEventKitConnector__eventStoreDidChange___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsRealEventKitConnector *)WeakRetained _q_eventStoreDidChange];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsRealEventKitConnector.m";
      v6 = 1026;
      v7 = 125;
      v8 = 2082;
      v9 = "[MapsSuggestionsRealEventKitConnector _eventStoreDidChange:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

@end