@interface MapsSuggestionsContactActivitySource
+ (BOOL)isEnabled;
- (MapsSuggestionsContactActivitySource)initWithContactActivity:(id)activity delegate:(id)delegate guardian:(id)guardian name:(id)name;
- (double)updateSuggestionEntriesWithHandler:(id)handler;
- (id)initFromResourceDepot:(id)depot name:(id)name;
- (void)contactActivityUpdated;
- (void)start;
- (void)stop;
@end

@implementation MapsSuggestionsContactActivitySource

- (void)start
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "start", v4, 2u);
  }

  [(MapsSuggestionsAppGuardian *)self->_guardian registerBundleID:MapsSuggestionsFindMyAppBundleID withSource:self];
}

- (MapsSuggestionsContactActivitySource)initWithContactActivity:(id)activity delegate:(id)delegate guardian:(id)guardian name:(id)name
{
  activityCopy = activity;
  guardianCopy = guardian;
  v18.receiver = self;
  v18.super_class = MapsSuggestionsContactActivitySource;
  v13 = [(MapsSuggestionsBaseSource *)&v18 initWithDelegate:delegate name:name];
  if (v13)
  {
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("MapsSuggestionsContactActivitySource", v14);
    queue = v13->_queue;
    v13->_queue = v15;

    objc_storeStrong(&v13->_contactActivity, activity);
    [(MapsSuggestionsContactActivity *)v13->_contactActivity setContactActivityDelegate:v13];
    objc_storeStrong(&v13->_guardian, guardian);
  }

  return v13;
}

- (id)initFromResourceDepot:(id)depot name:(id)name
{
  v24 = *MEMORY[0x1E69E9840];
  depotCopy = depot;
  nameCopy = name;
  if (!depotCopy)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsContactActivitySource.m";
      v18 = 1024;
      v19 = 49;
      v20 = 2082;
      v21 = "[MapsSuggestionsContactActivitySource initFromResourceDepot:name:]";
      v22 = 2082;
      v23 = "nil == (resourceDepot)";
      v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a resource depot to buid!";
LABEL_8:
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, v14, &v16, 0x26u);
    }

LABEL_9:

    selfCopy = 0;
    goto LABEL_10;
  }

  oneContactActivity = [depotCopy oneContactActivity];

  if (!oneContactActivity)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsContactActivitySource.m";
      v18 = 1024;
      v19 = 50;
      v20 = 2082;
      v21 = "[MapsSuggestionsContactActivitySource initFromResourceDepot:name:]";
      v22 = 2082;
      v23 = "nil == (resourceDepot.oneContactActivity)";
      v14 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires one ContactActivity!";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  oneContactActivity2 = [depotCopy oneContactActivity];
  oneSourceDelegate = [depotCopy oneSourceDelegate];
  oneAppGuardian = [depotCopy oneAppGuardian];
  self = [(MapsSuggestionsContactActivitySource *)self initWithContactActivity:oneContactActivity2 delegate:oneSourceDelegate guardian:oneAppGuardian name:nameCopy];

  selfCopy = self;
LABEL_10:

  return selfCopy;
}

+ (BOOL)isEnabled
{
  BOOL = GEOConfigGetBOOL();
  if (BOOL)
  {

    LOBYTE(BOOL) = MEMORY[0x1EEE0BE98]();
  }

  return BOOL;
}

- (void)stop
{
  [(MapsSuggestionsAppGuardian *)self->_guardian unregisterBundleID:MapsSuggestionsFindMyAppBundleID withSource:self];
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "stop", v3, 2u);
  }
}

- (void)contactActivityUpdated
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_INFO, "Received a real-time update from Biome. New SmartReplies/FindMy activity. Checking with Biome.", v4, 2u);
  }

  [(MapsSuggestionsContactActivitySource *)self updateSuggestionEntriesWithHandler:0];
}

- (double)updateSuggestionEntriesWithHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsBaseSource *)self uniqueName];
    *buf = 138412546;
    v24 = uniqueName;
    v25 = 2080;
    v26 = "updateSuggestionEntriesWithHandler";
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v7 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntriesWithHandler", "", buf, 2u);
  }

  if (!+[MapsSuggestionsSiri isEnabled])
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_INFO, "Siri is not enabled. Returning.", buf, 2u);
    }

    [(MapsSuggestionsBaseSource *)self addOrUpdateMySuggestionEntries:MEMORY[0x1E695E0F0]];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }

    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      uniqueName2 = [(MapsSuggestionsBaseSource *)self uniqueName];
      *buf = 138412546;
      v24 = uniqueName2;
      v25 = 2080;
      v26 = "updateSuggestionEntries";
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
    }

    v11 = GEOFindOrCreateLog();
    if (!os_signpost_enabled(v11))
    {
      goto LABEL_24;
    }

    *buf = 0;
    goto LABEL_23;
  }

  if ([(MapsSuggestionsAppGuardian *)self->_guardian isBundleIDLocked:MapsSuggestionsFindMyAppBundleID forSource:self])
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_INFO, "App is locked. Returning.", buf, 2u);
    }

    [(MapsSuggestionsBaseSource *)self addOrUpdateMySuggestionEntries:MEMORY[0x1E695E0F0]];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }

    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      uniqueName3 = [(MapsSuggestionsBaseSource *)self uniqueName];
      *buf = 138412546;
      v24 = uniqueName3;
      v25 = 2080;
      v26 = "updateSuggestionEntries";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
    }

    v11 = GEOFindOrCreateLog();
    if (!os_signpost_enabled(v11))
    {
      goto LABEL_24;
    }

    *buf = 0;
    goto LABEL_23;
  }

  if ([MapsSuggestionsSiri canLearnFromBundleID:MapsSuggestionsFindMyAppBundleID])
  {
    objc_initWeak(buf, self);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__MapsSuggestionsContactActivitySource_updateSuggestionEntriesWithHandler___block_invoke;
    block[3] = &unk_1E81F5DB0;
    objc_copyWeak(&v22, buf);
    block[4] = self;
    v21 = handlerCopy;
    dispatch_async(queue, block);

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
    goto LABEL_25;
  }

  v17 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5126000, v17, OS_LOG_TYPE_INFO, "App prevents us from Learning. Returning.", buf, 2u);
  }

  [(MapsSuggestionsBaseSource *)self addOrUpdateMySuggestionEntries:MEMORY[0x1E695E0F0]];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }

  v18 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    uniqueName4 = [(MapsSuggestionsBaseSource *)self uniqueName];
    *buf = 138412546;
    v24 = uniqueName4;
    v25 = 2080;
    v26 = "updateSuggestionEntries";
    _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
  }

  v11 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v11))
  {
    *buf = 0;
LABEL_23:
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntries", "", buf, 2u);
  }

LABEL_24:

LABEL_25:
  return 0.0;
}

void __75__MapsSuggestionsContactActivitySource_updateSuggestionEntriesWithHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = GEOFindOrCreateLog();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = [WeakRetained uniqueName];
      v6 = NSStringFromMapsSuggestionsCurrentBestLocation();
      *buf = 138412802;
      v14 = v5;
      v15 = 2112;
      *v16 = @"ALL";
      *&v16[8] = 2112;
      *&v16[10] = v6;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "{MSgDebug} UPDATING SOURCE{%@} for TYPE{%@} at LATLONG{%@}", buf, 0x20u);
    }

    v7 = WeakRetained[3];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __75__MapsSuggestionsContactActivitySource_updateSuggestionEntriesWithHandler___block_invoke_620;
    v10[3] = &unk_1E81F66A8;
    objc_copyWeak(&v12, (a1 + 48));
    v8 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v8;
    [v7 contactActivityEntriesWith:v10];

    objc_destroyWeak(&v12);
  }

  else
  {
    v9 = v3;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v14 = "MapsSuggestionsContactActivitySource.m";
      v15 = 1026;
      *v16 = 113;
      *&v16[4] = 2082;
      *&v16[6] = "[MapsSuggestionsContactActivitySource updateSuggestionEntriesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __75__MapsSuggestionsContactActivitySource_updateSuggestionEntriesWithHandler___block_invoke_620(uint64_t a1, void *a2, void *a3)
{
  *&v24[13] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [v6 localizedDescription];
        v21 = 138412290;
        v22 = v9;
        _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "Received an error inside contactActivityEntriesWith: %@", &v21, 0xCu);
      }

      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = [*(a1 + 32) uniqueName];
        v21 = 138412546;
        v22 = v11;
        v23 = 2080;
        *v24 = "updateSuggestionEntriesWithHandler";
        _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", &v21, 0x16u);
      }

      v12 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v12))
      {
        LOWORD(v21) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5126000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntriesWithHandler", "", &v21, 2u);
      }
    }

    v13 = MEMORY[0x1E695E0F0];
    if (v5)
    {
      v13 = v5;
    }

    v14 = v13;
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = NSStringFromMapsSuggestionsEntries(v14);
      v21 = 138412290;
      v22 = v16;
      _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_DEBUG, "Sending: %@", &v21, 0xCu);
    }

    [WeakRetained addOrUpdateMySuggestionEntries:v14];
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = [WeakRetained uniqueName];
      v21 = 138412546;
      v22 = v18;
      v23 = 2080;
      *v24 = "updateSuggestionEntriesWithHandler";
      _os_log_impl(&dword_1C5126000, v17, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v21, 0x16u);
    }

    v19 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v19))
    {
      LOWORD(v21) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntriesWithHandler", "", &v21, 2u);
    }

    v20 = *(a1 + 40);
    if (v20)
    {
      (*(v20 + 16))();
    }
  }

  else
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v21 = 136446722;
      v22 = "MapsSuggestionsContactActivitySource.m";
      v23 = 1026;
      *v24 = 117;
      v24[2] = 2082;
      *&v24[3] = "[MapsSuggestionsContactActivitySource updateSuggestionEntriesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", &v21, 0x1Cu);
    }
  }
}

@end