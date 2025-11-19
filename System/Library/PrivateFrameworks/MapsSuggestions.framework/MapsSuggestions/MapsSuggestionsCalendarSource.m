@interface MapsSuggestionsCalendarSource
- (BOOL)removeEntry:(id)a3 behavior:(int64_t)a4 handler:(id)a5;
- (BOOL)suggestionsEntriesAtLocation:(id)a3 period:(id)a4 handler:(id)a5;
- (MapsSuggestionsCalendarSource)initWithDelegate:(id)a3 eventKit:(id)a4 guardian:(id)a5 name:(id)a6;
- (double)updateSuggestionEntriesWithHandler:(id)a3;
- (id)initFromResourceDepot:(id)a3 name:(id)a4;
- (void)_q_updateSuggestionEntriesWithHandler:(uint64_t)a1;
- (void)eventKitDidChange:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation MapsSuggestionsCalendarSource

- (void)start
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "start, adding self observer for EKEventStoreChangedNotification", buf, 2u);
  }

  [(MapsSuggestionsEventKit *)self->_eventKit registerObserver:self];
  [(MapsSuggestionsAppGuardian *)self->_guardian registerBundleID:MapsSuggestionsCalendarAppBundleID withSource:self];
  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__MapsSuggestionsCalendarSource_start__block_invoke;
  block[3] = &unk_1E81F53E8;
  objc_copyWeak(&v6, buf);
  dispatch_async(queue, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __38__MapsSuggestionsCalendarSource_start__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(WeakRetained[5]);
    [(dispatch_queue_t *)v2 updateSuggestionEntriesWithHandler:0];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsCalendarSource.m";
      v6 = 1026;
      v7 = 91;
      v8 = 2082;
      v9 = "[MapsSuggestionsCalendarSource start]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

- (MapsSuggestionsCalendarSource)initWithDelegate:(id)a3 eventKit:(id)a4 guardian:(id)a5 name:(id)a6
{
  v11 = a4;
  v12 = a5;
  v18.receiver = self;
  v18.super_class = MapsSuggestionsCalendarSource;
  v13 = [(MapsSuggestionsBaseSource *)&v18 initWithDelegate:a3 name:a6];
  if (v13)
  {
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("MapsSuggestionsCalendarSourceQueue", v14);
    queue = v13->_queue;
    v13->_queue = v15;

    objc_storeStrong(&v13->_eventKit, a4);
    objc_storeStrong(&v13->_guardian, a5);
  }

  return v13;
}

- (id)initFromResourceDepot:(id)a3 name:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v14 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v17 = 136446978;
    v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCalendarSource.m";
    v19 = 1024;
    v20 = 62;
    v21 = 2082;
    v22 = "[MapsSuggestionsCalendarSource initFromResourceDepot:name:]";
    v23 = 2082;
    v24 = "nil == (resourceDepot)";
    v15 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a resource depot to buid!";
LABEL_11:
    _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, v15, &v17, 0x26u);
    goto LABEL_12;
  }

  v8 = [v6 oneSourceDelegate];

  if (!v8)
  {
    v14 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v17 = 136446978;
    v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCalendarSource.m";
    v19 = 1024;
    v20 = 63;
    v21 = 2082;
    v22 = "[MapsSuggestionsCalendarSource initFromResourceDepot:name:]";
    v23 = 2082;
    v24 = "nil == (resourceDepot.oneSourceDelegate)";
    v15 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires one SourceDelegate!";
    goto LABEL_11;
  }

  v9 = [v6 oneEventKit];

  if (!v9)
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = 136446978;
      v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCalendarSource.m";
      v19 = 1024;
      v20 = 64;
      v21 = 2082;
      v22 = "[MapsSuggestionsCalendarSource initFromResourceDepot:name:]";
      v23 = 2082;
      v24 = "nil == (resourceDepot.oneEventKit)";
      v15 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires one EventKit!";
      goto LABEL_11;
    }

LABEL_12:

    v13 = 0;
    goto LABEL_13;
  }

  v10 = [v6 oneSourceDelegate];
  v11 = [v6 oneEventKit];
  v12 = [v6 oneAppGuardian];
  self = [(MapsSuggestionsCalendarSource *)self initWithDelegate:v10 eventKit:v11 guardian:v12 name:v7];

  v13 = self;
LABEL_13:

  return v13;
}

- (void)stop
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "stop, removing self as observer for EKEventStoreChangedNotification", v4, 2u);
  }

  [(MapsSuggestionsAppGuardian *)self->_guardian unregisterBundleID:MapsSuggestionsCalendarAppBundleID withSource:self];
  [(MapsSuggestionsEventKit *)self->_eventKit unregisterObserver:self];
}

- (double)updateSuggestionEntriesWithHandler:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(MapsSuggestionsBaseSource *)self uniqueName];
    v7 = NSStringFromMapsSuggestionsCurrentBestLocation();
    *buf = 138412802;
    v41 = v6;
    v42 = 2112;
    v43 = @"ALL";
    v44 = 2112;
    v45 = v7;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} UPDATING SOURCE{%@} for TYPE{%@} at LATLONG{%@}", buf, 0x20u);
  }

  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [(MapsSuggestionsBaseSource *)self uniqueName];
    *buf = 138412546;
    v41 = v9;
    v42 = 2080;
    v43 = "updateSuggestionEntries";
    _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v10 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntries", "", buf, 2u);
  }

  objc_initWeak(buf, self);
  if ([(MapsSuggestionsAppGuardian *)self->_guardian isBundleIDLocked:MapsSuggestionsCalendarAppBundleID forSource:self])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__MapsSuggestionsCalendarSource_updateSuggestionEntriesWithHandler___block_invoke;
    block[3] = &unk_1E81F5CB0;
    objc_copyWeak(&v39, buf);
    v38 = v4;
    dispatch_async(queue, block);

    objc_destroyWeak(&v39);
LABEL_14:
    v18 = 0.0;
    goto LABEL_23;
  }

  if (![MapsSuggestionsSiri canLearnFromBundleID:MapsSuggestionsCalendarAppBundleID])
  {
    v17 = self->_queue;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __68__MapsSuggestionsCalendarSource_updateSuggestionEntriesWithHandler___block_invoke_627;
    v34[3] = &unk_1E81F5CB0;
    objc_copyWeak(&v36, buf);
    v35 = v4;
    dispatch_async(v17, v34);

    objc_destroyWeak(&v36);
    goto LABEL_14;
  }

  v12 = MapsSuggestionsCurrentBestLocation();
  if (v12)
  {
    if (+[MapsSuggestionsSiri isEnabled])
    {
      v13 = self->_queue;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __68__MapsSuggestionsCalendarSource_updateSuggestionEntriesWithHandler___block_invoke_630;
      v24[3] = &unk_1E81F5CB0;
      v14 = &v26;
      objc_copyWeak(&v26, buf);
      v15 = &v25;
      v25 = v4;
      v16 = v24;
    }

    else
    {
      v22 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *v33 = 0;
        _os_log_impl(&dword_1C5126000, v22, OS_LOG_TYPE_DEBUG, "User turned off Siri: we're not using our suggestions", v33, 2u);
      }

      v13 = self->_queue;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __68__MapsSuggestionsCalendarSource_updateSuggestionEntriesWithHandler___block_invoke_629;
      v27[3] = &unk_1E81F5CB0;
      v14 = &v29;
      objc_copyWeak(&v29, buf);
      v15 = &v28;
      v28 = v4;
      v16 = v27;
    }

    dispatch_async(v13, v16);
    v18 = 0.0;
  }

  else
  {
    v19 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *v33 = 0;
      _os_log_impl(&dword_1C5126000, v19, OS_LOG_TYPE_DEBUG, "No current location to work with.", v33, 2u);
    }

    v20 = self->_queue;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __68__MapsSuggestionsCalendarSource_updateSuggestionEntriesWithHandler___block_invoke_628;
    v30[3] = &unk_1E81F5CB0;
    v14 = &v32;
    objc_copyWeak(&v32, buf);
    v31 = v4;
    dispatch_async(v20, v30);
    GEOConfigGetDouble();
    v18 = v21;
    v15 = &v31;
  }

  objc_destroyWeak(v14);
LABEL_23:
  objc_destroyWeak(buf);

  return v18;
}

void __68__MapsSuggestionsCalendarSource_updateSuggestionEntriesWithHandler___block_invoke(uint64_t a1)
{
  *&v11[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained addOrUpdateMySuggestionEntries:MEMORY[0x1E695E0F0]];
    v4 = *(a1 + 32);
    if (v4)
    {
      (*(v4 + 16))();
    }

    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [v3 uniqueName];
      v8 = 138412546;
      v9 = v6;
      v10 = 2080;
      *v11 = "updateSuggestionEntries";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v8, 0x16u);
    }

    v7 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v7))
    {
      LOWORD(v8) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntries", "", &v8, 2u);
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsCalendarSource.m";
      v10 = 1026;
      *v11 = 154;
      v11[2] = 2082;
      *&v11[3] = "[MapsSuggestionsCalendarSource updateSuggestionEntriesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

void __68__MapsSuggestionsCalendarSource_updateSuggestionEntriesWithHandler___block_invoke_627(uint64_t a1)
{
  *&v11[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained addOrUpdateMySuggestionEntries:MEMORY[0x1E695E0F0]];
    v4 = *(a1 + 32);
    if (v4)
    {
      (*(v4 + 16))();
    }

    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [v3 uniqueName];
      v8 = 138412546;
      v9 = v6;
      v10 = 2080;
      *v11 = "updateSuggestionEntries";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v8, 0x16u);
    }

    v7 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v7))
    {
      LOWORD(v8) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntries", "", &v8, 2u);
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsCalendarSource.m";
      v10 = 1026;
      *v11 = 158;
      v11[2] = 2082;
      *&v11[3] = "[MapsSuggestionsCalendarSource updateSuggestionEntriesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

void __68__MapsSuggestionsCalendarSource_updateSuggestionEntriesWithHandler___block_invoke_628(uint64_t a1)
{
  *&v11[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained addOrUpdateMySuggestionEntries:MEMORY[0x1E695E0F0]];
    v4 = *(a1 + 32);
    if (v4)
    {
      (*(v4 + 16))();
    }

    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [v3 uniqueName];
      v8 = 138412546;
      v9 = v6;
      v10 = 2080;
      *v11 = "updateSuggestionEntries";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v8, 0x16u);
    }

    v7 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v7))
    {
      LOWORD(v8) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntries", "", &v8, 2u);
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsCalendarSource.m";
      v10 = 1026;
      *v11 = 164;
      v11[2] = 2082;
      *&v11[3] = "[MapsSuggestionsCalendarSource updateSuggestionEntriesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

void __68__MapsSuggestionsCalendarSource_updateSuggestionEntriesWithHandler___block_invoke_629(uint64_t a1)
{
  *&v11[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained addOrUpdateMySuggestionEntries:MEMORY[0x1E695E0F0]];
    v4 = *(a1 + 32);
    if (v4)
    {
      (*(v4 + 16))();
    }

    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [v3 uniqueName];
      v8 = 138412546;
      v9 = v6;
      v10 = 2080;
      *v11 = "updateSuggestionEntries";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v8, 0x16u);
    }

    v7 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v7))
    {
      LOWORD(v8) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntries", "", &v8, 2u);
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsCalendarSource.m";
      v10 = 1026;
      *v11 = 170;
      v11[2] = 2082;
      *&v11[3] = "[MapsSuggestionsCalendarSource updateSuggestionEntriesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

void __68__MapsSuggestionsCalendarSource_updateSuggestionEntriesWithHandler___block_invoke_630(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    __68__MapsSuggestionsCalendarSource_updateSuggestionEntriesWithHandler___block_invoke_630_cold_1(&v4, WeakRetained, a1);
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v6 = "MapsSuggestionsCalendarSource.m";
      v7 = 1026;
      v8 = 174;
      v9 = 2082;
      v10 = "[MapsSuggestionsCalendarSource updateSuggestionEntriesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __68__MapsSuggestionsCalendarSource_updateSuggestionEntriesWithHandler___block_invoke_631(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "Error while creating Entries: %@", &v15, 0xCu);
    }

    [*(a1 + 32) addOrUpdateMySuggestionEntries:MEMORY[0x1E695E0F0]];
    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))();
    }

    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [*(a1 + 32) uniqueName];
      v15 = 138412546;
      v16 = v14;
      v17 = 2080;
      v18 = "updateSuggestionEntries";
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", &v15, 0x16u);
    }

    v10 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v10))
    {
      LOWORD(v15) = 0;
      goto LABEL_17;
    }
  }

  else
  {
    [*(a1 + 32) addOrUpdateMySuggestionEntries:a2];
    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))();
    }

    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [*(a1 + 32) uniqueName];
      v15 = 138412546;
      v16 = v9;
      v17 = 2080;
      v18 = "updateSuggestionEntries";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v15, 0x16u);
    }

    v10 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v10))
    {
      LOWORD(v15) = 0;
LABEL_17:
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntries", "", &v15, 2u);
    }
  }
}

- (BOOL)suggestionsEntriesAtLocation:(id)a3 period:(id)a4 handler:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v8)
  {
    v13 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v16 = 136446978;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCalendarSource.m";
    v18 = 1024;
    v19 = 196;
    v20 = 2082;
    v21 = "[MapsSuggestionsCalendarSource suggestionsEntriesAtLocation:period:handler:]";
    v22 = 2082;
    v23 = "nil == (location)";
    v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a location";
LABEL_11:
    _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, v14, &v16, 0x26u);
    goto LABEL_12;
  }

  if (!v9)
  {
    v13 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v16 = 136446978;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCalendarSource.m";
    v18 = 1024;
    v19 = 197;
    v20 = 2082;
    v21 = "[MapsSuggestionsCalendarSource suggestionsEntriesAtLocation:period:handler:]";
    v22 = 2082;
    v23 = "nil == (period)";
    v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a period";
    goto LABEL_11;
  }

  if (!v10)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCalendarSource.m";
      v18 = 1024;
      v19 = 198;
      v20 = 2082;
      v21 = "[MapsSuggestionsCalendarSource suggestionsEntriesAtLocation:period:handler:]";
      v22 = 2082;
      v23 = "nil == (handler)";
      v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a handler";
      goto LABEL_11;
    }

LABEL_12:

    v12 = 0;
    goto LABEL_13;
  }

  v12 = [(MapsSuggestionsEventKit *)self->_eventKit entriesForEventsAtLocation:v8 period:v9 fetchMapItems:1 handler:v10];
LABEL_13:

  return v12;
}

- (BOOL)removeEntry:(id)a3 behavior:(int64_t)a4 handler:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (!v9)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446978;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCalendarSource.m";
      v16 = 1024;
      v17 = 215;
      v18 = 2082;
      v19 = "[MapsSuggestionsCalendarSource removeEntry:behavior:handler:]";
      v20 = 2082;
      v21 = "nil == (handler)";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. handler cannot be nil";
LABEL_9:
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, v12, &v14, 0x26u);
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!v8)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446978;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCalendarSource.m";
      v16 = 1024;
      v17 = 216;
      v18 = 2082;
      v19 = "[MapsSuggestionsCalendarSource removeEntry:behavior:handler:]";
      v20 = 2082;
      v21 = "nil == (entry)";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a suggestion entry";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (a4 != 8)
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v10 = [(MapsSuggestionsEventKit *)self->_eventKit deleteOrDeclineEntry:v8 handler:v9];
LABEL_12:

  return v10;
}

- (void)eventKitDidChange:(id)a3
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__MapsSuggestionsCalendarSource_eventKitDidChange___block_invoke;
  v5[3] = &unk_1E81F53E8;
  objc_copyWeak(&v6, &location);
  dispatch_async(queue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __51__MapsSuggestionsCalendarSource_eventKitDidChange___block_invoke(uint64_t a1)
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
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "Reloading because of detected change", &v5, 2u);
    }

    dispatch_assert_queue_V2(WeakRetained[5]);
    [(dispatch_queue_t *)WeakRetained updateSuggestionEntriesWithHandler:0];
  }

  else
  {
    v4 = v2;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsCalendarSource.m";
      v7 = 1026;
      v8 = 233;
      v9 = 2082;
      v10 = "[MapsSuggestionsCalendarSource eventKitDidChange:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

- (void)_q_updateSuggestionEntriesWithHandler:(uint64_t)a1
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 40));
    v4 = MapsSuggestionsCurrentBestLocation();
    v5 = GEOFindOrCreateLog();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v12 = 138412290;
        v13 = v4;
        _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "Current Location: %@", &v12, 0xCu);
      }

      GEOConfigGetDouble();
      v6 = MapsSuggestionsNowWithOffset(-v7);
      GEOConfigGetDouble();
      v9 = MapsSuggestionsNowWithOffset(v8);
      v10 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v6 endDate:v9];
      if (([*(a1 + 24) entriesForEventsAtLocation:v4 period:v10 fetchMapItems:1 handler:v3] & 1) == 0)
      {
        v11 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-12 reason:@"Was not called back from MapsSuggestionsEventKit"];
        v3[2](v3, 0, v11);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCalendarSource.m";
      v14 = 1024;
      v15 = 115;
      v16 = 2082;
      v17 = "[MapsSuggestionsCalendarSource _q_updateSuggestionEntriesWithHandler:]";
      v18 = 2082;
      v19 = "nil == (currentLocation)";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. This should never be called without current location", &v12, 0x26u);
    }
  }
}

void __68__MapsSuggestionsCalendarSource_updateSuggestionEntriesWithHandler___block_invoke_630_cold_1(id *a1, uint64_t a2, uint64_t a3)
{
  *a1 = MEMORY[0x1E69E9820];
  a1[1] = 3221225472;
  a1[2] = __68__MapsSuggestionsCalendarSource_updateSuggestionEntriesWithHandler___block_invoke_631;
  a1[3] = &unk_1E81F5280;
  a1[4] = a2;
  a1[5] = *(a3 + 32);
  [(MapsSuggestionsCalendarSource *)a2 _q_updateSuggestionEntriesWithHandler:a1];
}

@end