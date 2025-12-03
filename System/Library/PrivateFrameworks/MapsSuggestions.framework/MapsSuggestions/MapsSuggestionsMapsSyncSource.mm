@interface MapsSuggestionsMapsSyncSource
- (BOOL)canProduceEntriesOfType:(int64_t)type;
- (BOOL)removeEntry:(id)entry behavior:(int64_t)behavior handler:(id)handler;
- (MapsSuggestionsMapsSyncSource)initWithMapsSync:(id)sync delegate:(id)delegate name:(id)name;
- (double)updateSuggestionEntriesWithHandler:(id)handler;
- (id)initFromResourceDepot:(id)depot name:(id)name;
- (void)_q_updateRecentHistoryEntriesWithHandler:(uint64_t)handler;
- (void)mapsSync:(id)sync didChangeForContentType:(int64_t)type;
- (void)start;
- (void)stop;
@end

@implementation MapsSuggestionsMapsSyncSource

- (void)start
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "start", v4, 2u);
  }

  [(MapsSuggestionsMapsSync *)self->_mapsSync addMapsSyncObserver:self forContentType:1];
  [(MapsSuggestionsMapsSyncSource *)self updateSuggestionEntriesWithHandler:0];
}

- (MapsSuggestionsMapsSyncSource)initWithMapsSync:(id)sync delegate:(id)delegate name:(id)name
{
  v26 = *MEMORY[0x1E69E9840];
  syncCopy = sync;
  if (syncCopy)
  {
    v17.receiver = self;
    v17.super_class = MapsSuggestionsMapsSyncSource;
    v10 = [(MapsSuggestionsBaseSource *)&v17 initWithDelegate:delegate name:name];
    if (v10)
    {
      v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v12 = dispatch_queue_create("MapsSuggestionsMapsSyncSourceQueue", v11);
      queue = v10->_queue;
      v10->_queue = v12;

      objc_storeStrong(&v10->_mapsSync, sync);
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSyncSource.m";
      v20 = 1024;
      v21 = 59;
      v22 = 2082;
      v23 = "[MapsSuggestionsMapsSyncSource initWithMapsSync:delegate:name:]";
      v24 = 2082;
      v25 = "nil == (mapsSync)";
      _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. This version requires a MapsSync", buf, 0x26u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)initFromResourceDepot:(id)depot name:(id)name
{
  v24 = *MEMORY[0x1E69E9840];
  depotCopy = depot;
  nameCopy = name;
  if (!depotCopy)
  {
    v13 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v16 = 136446978;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSyncSource.m";
    v18 = 1024;
    v19 = 76;
    v20 = 2082;
    v21 = "[MapsSuggestionsMapsSyncSource initFromResourceDepot:name:]";
    v22 = 2082;
    v23 = "nil == (resourceDepot)";
    v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a resource depot to buid!";
LABEL_11:
    _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, v14, &v16, 0x26u);
    goto LABEL_12;
  }

  oneSourceDelegate = [depotCopy oneSourceDelegate];

  if (!oneSourceDelegate)
  {
    v13 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v16 = 136446978;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSyncSource.m";
    v18 = 1024;
    v19 = 77;
    v20 = 2082;
    v21 = "[MapsSuggestionsMapsSyncSource initFromResourceDepot:name:]";
    v22 = 2082;
    v23 = "nil == (resourceDepot.oneSourceDelegate)";
    v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires one SourceDelegate!";
    goto LABEL_11;
  }

  oneMapsSync = [depotCopy oneMapsSync];

  if (!oneMapsSync)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSyncSource.m";
      v18 = 1024;
      v19 = 78;
      v20 = 2082;
      v21 = "[MapsSuggestionsMapsSyncSource initFromResourceDepot:name:]";
      v22 = 2082;
      v23 = "nil == (resourceDepot.oneMapsSync)";
      v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires one MapsSync!";
      goto LABEL_11;
    }

LABEL_12:

    selfCopy = 0;
    goto LABEL_13;
  }

  oneMapsSync2 = [depotCopy oneMapsSync];
  oneSourceDelegate2 = [depotCopy oneSourceDelegate];
  self = [(MapsSuggestionsMapsSyncSource *)self initWithMapsSync:oneMapsSync2 delegate:oneSourceDelegate2 name:nameCopy];

  selfCopy = self;
LABEL_13:

  return selfCopy;
}

- (void)stop
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "stop", v4, 2u);
  }

  [(MapsSuggestionsMapsSync *)self->_mapsSync removeMapsSyncObserver:self forContentType:1];
}

- (double)updateSuggestionEntriesWithHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsBaseSource *)self uniqueName];
    *buf = 138412546;
    v15 = uniqueName;
    v16 = 2080;
    v17 = "updateSuggestionEntries";
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v7 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntries", "", buf, 2u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__MapsSuggestionsMapsSyncSource_updateSuggestionEntriesWithHandler___block_invoke;
  v11[3] = &unk_1E81F5CB0;
  objc_copyWeak(&v13, buf);
  v12 = handlerCopy;
  v9 = handlerCopy;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
  return 0.0;
}

void __68__MapsSuggestionsMapsSyncSource_updateSuggestionEntriesWithHandler___block_invoke(uint64_t a1)
{
  *&v10[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsMapsSyncSource *)WeakRetained _q_updateRecentHistoryEntriesWithHandler:?];
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [v3 uniqueName];
      v7 = 138412546;
      v8 = v5;
      v9 = 2080;
      *v10 = "updateSuggestionEntries";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v7, 0x16u);
    }

    v6 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v6))
    {
      LOWORD(v7) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntries", "", &v7, 2u);
    }
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "MapsSuggestionsMapsSyncSource.m";
      v9 = 1026;
      *v10 = 113;
      v10[2] = 2082;
      *&v10[3] = "[MapsSuggestionsMapsSyncSource updateSuggestionEntriesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v7, 0x1Cu);
    }
  }
}

- (void)_q_updateRecentHistoryEntriesWithHandler:(uint64_t)handler
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (handler)
  {
    dispatch_assert_queue_V2(*(handler + 24));
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      uniqueName = [handler uniqueName];
      v6 = NSStringFromMapsSuggestionsEntryType(5uLL);
      v7 = NSStringFromMapsSuggestionsCurrentBestLocation();
      *buf = 138412802;
      v16 = uniqueName;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "{MSgDebug} UPDATING SOURCE{%@} for TYPE{%@} at LATLONG{%@}", buf, 0x20u);
    }

    objc_initWeak(buf, handler);
    v8 = *(handler + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __74__MapsSuggestionsMapsSyncSource__q_updateRecentHistoryEntriesWithHandler___block_invoke;
    v12[3] = &unk_1E81F60F0;
    objc_copyWeak(&v14, buf);
    v9 = v3;
    v13 = v9;
    if (([v8 entriesFromHistoryWithHandler:v12] & 1) == 0)
    {
      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "MapsSuggestionsMapsSync did not call back?", v11, 2u);
      }

      [handler addOrUpdateMySuggestionEntries:MEMORY[0x1E695E0F0]];
      if (v9)
      {
        v9[2](v9);
      }
    }

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }
}

- (BOOL)canProduceEntriesOfType:(int64_t)type
{
  v14 = *MEMORY[0x1E69E9840];
  if (type >= 0x1A)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446978;
      v7 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSyncSource.m";
      v8 = 1024;
      v9 = 157;
      v10 = 2082;
      v11 = "[MapsSuggestionsMapsSyncSource canProduceEntriesOfType:]";
      v12 = 2082;
      v13 = "YES";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Detected an unsupported MapsSuggestionsEntryType!", &v6, 0x26u);
    }

    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = 0x820u >> type;
  }

  return v3 & 1;
}

- (BOOL)removeEntry:(id)entry behavior:(int64_t)behavior handler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  handlerCopy = handler;
  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "removeEntry", buf, 2u);
  }

  if (!handlerCopy)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSyncSource.m";
      v20 = 1024;
      v21 = 166;
      v22 = 2082;
      v23 = "[MapsSuggestionsMapsSyncSource removeEntry:behavior:handler:]";
      v24 = 2082;
      v25 = "nil == (handler)";
      v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. handler cannot be nil";
LABEL_13:
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0x26u);
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  if (!entryCopy)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSyncSource.m";
      v20 = 1024;
      v21 = 167;
      v22 = 2082;
      v23 = "[MapsSuggestionsMapsSyncSource removeEntry:behavior:handler:]";
      v24 = 2082;
      v25 = "nil == (entry)";
      v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a suggestion entry";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (behavior == 8 && -[MapsSuggestionsMapsSyncSource canProduceEntriesOfType:](self, "canProduceEntriesOfType:", [entryCopy type]))
  {
    mapsSync = self->_mapsSync;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __62__MapsSuggestionsMapsSyncSource_removeEntry_behavior_handler___block_invoke;
    v16[3] = &unk_1E81F6408;
    v17 = handlerCopy;
    v12 = [(MapsSuggestionsMapsSync *)mapsSync deleteEntry:entryCopy handler:v16];
    v13 = v17;
LABEL_15:

    goto LABEL_16;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

void __62__MapsSuggestionsMapsSyncSource_removeEntry_behavior_handler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "Deleted with error: %@", &v5, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __74__MapsSuggestionsMapsSyncSource__q_updateRecentHistoryEntriesWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = GEOFindOrCreateLog();
  v9 = v8;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = [v5 count];
      v11 = &stru_1F444C108;
      if (v6)
      {
        v11 = v6;
      }

      v15 = 67109378;
      *v16 = v10;
      *&v16[4] = 2112;
      *&v16[6] = v11;
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "Received %u entries%@", &v15, 0x12u);
    }

    v12 = [v5 copy];
    [WeakRetained addOrUpdateMySuggestionEntries:v12];

    v13 = *(a1 + 32);
    if (v13)
    {
      (*(v13 + 16))();
    }
  }

  else
  {
    v14 = v8;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = 136446722;
      *v16 = "MapsSuggestionsMapsSyncSource.m";
      *&v16[8] = 1026;
      *&v16[10] = 198;
      v17 = 2082;
      v18 = "[MapsSuggestionsMapsSyncSource _q_updateRecentHistoryEntriesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v15, 0x1Cu);
    }
  }
}

- (void)mapsSync:(id)sync didChangeForContentType:(int64_t)type
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = GEOFindOrCreateLog();
  v7 = v6;
  if (type == 1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "Detected changes in MapsSuggestionsMapsSyncTypeHistory", buf, 2u);
    }

    objc_initWeak(buf, self);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__MapsSuggestionsMapsSyncSource_mapsSync_didChangeForContentType___block_invoke;
    block[3] = &unk_1E81F53E8;
    objc_copyWeak(&v10, buf);
    dispatch_async(queue, block);
    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsMapsSyncSource.m";
      v13 = 1024;
      v14 = 216;
      v15 = 2082;
      v16 = "[MapsSuggestionsMapsSyncSource mapsSync:didChangeForContentType:]";
      v17 = 2082;
      v18 = "MapsSuggestionsMapsSyncTypeHistory != type";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. We shouldn't get changes we're not interested in", buf, 0x26u);
    }
  }
}

void __66__MapsSuggestionsMapsSyncSource_mapsSync_didChangeForContentType___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsMapsSyncSource *)WeakRetained _q_updateRecentHistoryEntriesWithHandler:?];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsMapsSyncSource.m";
      v6 = 1026;
      v7 = 222;
      v8 = 2082;
      v9 = "[MapsSuggestionsMapsSyncSource mapsSync:didChangeForContentType:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

@end