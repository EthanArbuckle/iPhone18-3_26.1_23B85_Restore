@interface MapsSuggestionsVirtualGarageSource
- (MapsSuggestionsVirtualGarageSource)initWithVirtualGarage:(id)garage delegate:(id)delegate name:(id)name;
- (double)updateSuggestionEntriesWithHandler:(id)handler;
- (id)initFromResourceDepot:(id)depot name:(id)name;
- (void)start;
- (void)stop;
@end

@implementation MapsSuggestionsVirtualGarageSource

- (MapsSuggestionsVirtualGarageSource)initWithVirtualGarage:(id)garage delegate:(id)delegate name:(id)name
{
  garageCopy = garage;
  v15.receiver = self;
  v15.super_class = MapsSuggestionsVirtualGarageSource;
  v10 = [(MapsSuggestionsBaseSource *)&v15 initWithDelegate:delegate name:name];
  if (v10)
  {
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("MapsSuggestionsVirtualGarageSourceQueue", v11);
    queue = v10->_queue;
    v10->_queue = v12;

    objc_storeStrong(&v10->_virtualGarage, garage);
  }

  return v10;
}

- (id)initFromResourceDepot:(id)depot name:(id)name
{
  v23 = *MEMORY[0x1E69E9840];
  depotCopy = depot;
  nameCopy = name;
  if (!depotCopy)
  {
    v12 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v15 = 136446978;
    v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsVirtualGarageSource.m";
    v17 = 1024;
    v18 = 61;
    v19 = 2082;
    v20 = "[MapsSuggestionsVirtualGarageSource initFromResourceDepot:name:]";
    v21 = 2082;
    v22 = "nil == (resourceDepot)";
    v13 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a resource depot to build from!";
LABEL_11:
    _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, v13, &v15, 0x26u);
    goto LABEL_12;
  }

  oneSourceDelegate = [depotCopy oneSourceDelegate];

  if (!oneSourceDelegate)
  {
    v12 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v15 = 136446978;
    v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsVirtualGarageSource.m";
    v17 = 1024;
    v18 = 62;
    v19 = 2082;
    v20 = "[MapsSuggestionsVirtualGarageSource initFromResourceDepot:name:]";
    v21 = 2082;
    v22 = "nil == (resourceDepot.oneSourceDelegate)";
    v13 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires One SourceDelegate";
    goto LABEL_11;
  }

  if (!nameCopy)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 136446978;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsVirtualGarageSource.m";
      v17 = 1024;
      v18 = 63;
      v19 = 2082;
      v20 = "[MapsSuggestionsVirtualGarageSource initFromResourceDepot:name:]";
      v21 = 2082;
      v22 = "nil == (name)";
      v13 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a name";
      goto LABEL_11;
    }

LABEL_12:

    selfCopy = 0;
    goto LABEL_13;
  }

  oneVirtualGarage = [depotCopy oneVirtualGarage];
  oneSourceDelegate2 = [depotCopy oneSourceDelegate];
  self = [(MapsSuggestionsVirtualGarageSource *)self initWithVirtualGarage:oneVirtualGarage delegate:oneSourceDelegate2 name:nameCopy];

  selfCopy = self;
LABEL_13:

  return selfCopy;
}

- (void)start
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "start", buf, 2u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__MapsSuggestionsVirtualGarageSource_start__block_invoke;
  v5[3] = &unk_1E81F4F48;
  objc_copyWeak(&v6, buf);
  v5[4] = self;
  dispatch_async(queue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __43__MapsSuggestionsVirtualGarageSource_start__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[3] openConnection];
    [v3[3] registerObserver:*(a1 + 32)];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsVirtualGarageSource.m";
      v7 = 1026;
      v8 = 76;
      v9 = 2082;
      v10 = "[MapsSuggestionsVirtualGarageSource start]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

- (void)stop
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "stop", buf, 2u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__MapsSuggestionsVirtualGarageSource_stop__block_invoke;
  v5[3] = &unk_1E81F4F48;
  objc_copyWeak(&v6, buf);
  v5[4] = self;
  dispatch_async(queue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __42__MapsSuggestionsVirtualGarageSource_stop__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[3] unregisterObserver:*(a1 + 32)];
    [v3[3] closeConnection];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsVirtualGarageSource.m";
      v7 = 1026;
      v8 = 88;
      v9 = 2082;
      v10 = "[MapsSuggestionsVirtualGarageSource stop]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

- (double)updateSuggestionEntriesWithHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsBaseSource *)self uniqueName];
    *buf = 138412546;
    v17 = uniqueName;
    v18 = 2080;
    v19 = "updateSuggestionEntriesWithHandler";
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v7 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntriesWithHandler", "", buf, 2u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__MapsSuggestionsVirtualGarageSource_updateSuggestionEntriesWithHandler___block_invoke;
  v13[3] = &unk_1E81F5CB0;
  objc_copyWeak(&v15, buf);
  v9 = handlerCopy;
  v14 = v9;
  dispatch_async(queue, v13);
  GEOConfigGetDouble();
  v11 = v10;

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);

  return v11;
}

void __73__MapsSuggestionsVirtualGarageSource_updateSuggestionEntriesWithHandler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 3);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __73__MapsSuggestionsVirtualGarageSource_updateSuggestionEntriesWithHandler___block_invoke_144;
    v6[3] = &unk_1E81F5280;
    v6[4] = WeakRetained;
    v7 = *(a1 + 32);
    [v4 entriesForUnpairedVehiclesWithHandler:v6];
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "MapsSuggestionsVirtualGarageSource.m";
      v10 = 1026;
      v11 = 105;
      v12 = 2082;
      v13 = "[MapsSuggestionsVirtualGarageSource updateSuggestionEntriesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __73__MapsSuggestionsVirtualGarageSource_updateSuggestionEntriesWithHandler___block_invoke_144(uint64_t a1, uint64_t a2, void *a3)
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
      v18 = "updateSuggestionEntriesWithHandler";
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
      v18 = "updateSuggestionEntriesWithHandler";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v15, 0x16u);
    }

    v10 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v10))
    {
      LOWORD(v15) = 0;
LABEL_17:
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntriesWithHandler", "", &v15, 2u);
    }
  }
}

@end