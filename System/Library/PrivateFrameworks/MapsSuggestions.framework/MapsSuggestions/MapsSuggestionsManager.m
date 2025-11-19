@interface MapsSuggestionsManager
- (BOOL)_removeEntry:(void *)a3 sourceName:;
- (BOOL)loadStorageFromFile:(id)a3;
- (MapsSuggestionsLocationUpdater)locationUpdater;
- (MapsSuggestionsManager)initWithStrategy:(id)a3 locationUpdater:(id)a4 network:(id)a5 flightUpdater:(id)a6 ETARequirements:(id)a7 virtualGarage:(id)a8;
- (NSString)uniqueName;
- (char)loadStorageFromFile:(id)a3 callback:(id)a4 callbackQueue:(id)a5;
- (char)oneShotTopSuggestionsForSink:(id)a3 count:(unint64_t)a4 queue:(id)a5 handler:(id)a6;
- (char)oneShotTopSuggestionsForSink:(id)a3 transportType:(int)a4 count:(unint64_t)a5 queue:(id)a6 handler:(id)a7;
- (char)removeEntry:(id)a3 behavior:(int64_t)a4 handler:(id)a5;
- (char)saveStorageToFile:(id)a3 callback:(id)a4;
- (char)topSuggestionsForSink:(id)a3 count:(unint64_t)a4 queue:(id)a5 handler:(id)a6;
- (char)topSuggestionsForSink:(id)a3 transportType:(int)a4 count:(unint64_t)a5 queue:(id)a6 handler:(id)a7;
- (dispatch_queue_t)_updateExpiryDatesForEntries:(void *)a3 withEntry:;
- (id)_filteredEntries:(void *)a3 forSink:(unint64_t)a4 limit:;
- (id)_pruneExpiredFromEntries:(dispatch_queue_t *)a1;
- (id)sinks;
- (id)storage;
- (id)storageForSource:(id)a3;
- (uint64_t)_addOrUpdateSuggestionEntries:(void *)a3 source:;
- (uint64_t)_loadStorageFromFile:(uint64_t)a1;
- (uint64_t)_sink:(void *)a3 allowsEntry:;
- (uint64_t)_updateResult;
- (unint64_t)addOrUpdateSuggestionEntries:(id)a3 source:(id)a4;
- (void)_deleteEntries:(void *)a3 source:;
- (void)_pruneExpiredSourceEntries;
- (void)_pruneSourceEntriesNotRepresentedIn:(uint64_t)a1;
- (void)_restartLocationUpdaterIfNeeded;
- (void)_scheduleInvalidateSinksOnFirstExpiredOfEntries:(uint64_t)a1;
- (void)_sendInvalidateToAllSinks;
- (void)_sq_deleteEntries:(void *)a3 source:;
- (void)_startAllSources;
- (void)_startLocationUpdater;
- (void)_startSource:(uint64_t)a1;
- (void)_stopAllSources;
- (void)_stopLocationUpdater;
- (void)_updateAllSourcesOnceWithHandler:(uint64_t)a1;
- (void)_updateCurrentLocation:(uint64_t)a1;
- (void)_updateResult;
- (void)_updateSource:(void *)a3 forType:(int)a4 repeat:(void *)a5 handler:;
- (void)_wipeStaleETAs;
- (void)addAdditionalFilter:(id)a3 forSink:(id)a4;
- (void)attachSink:(id)a3;
- (void)attachSource:(id)a3;
- (void)awaitGatheringQueue;
- (void)dealloc;
- (void)detachSink:(id)a3;
- (void)detachSource:(id)a3;
- (void)didLoseLocationPermission;
- (void)didUpdateLocation:(id)a3;
- (void)feedbackForContact:(id)a3 action:(int64_t)a4;
- (void)feedbackForEntry:(id)a3 action:(int64_t)a4;
- (void)feedbackForMapItem:(id)a3 action:(int64_t)a4;
- (void)hintRefreshOfType:(int64_t)a3;
- (void)removeAdditionalFilter:(id)a3 forSink:(id)a4;
- (void)removeEntry:(id)a3;
- (void)removeEntry:(void *)a3 sourceName:;
- (void)setAutomobileOptions:(id)a3;
- (void)setMapType:(int)a3;
- (void)setTitleFormatter:(uint64_t)a3 forType:;
- (void)trackerRefreshedETAsUntil:(id)a3;
@end

@implementation MapsSuggestionsManager

- (uint64_t)_updateResult
{
  v59 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 24))
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = [a1 uniqueName];
      *buf = 138412546;
      *&buf[4] = v3;
      v53 = 2080;
      v54 = "_updateResult";
      _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
    }

    v4 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_updateResult", "", buf, 2u);
    }

    v41 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(a1 + 72), "count")}];
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v5 = *(a1 + 72);
    v6 = [v5 countByEnumeratingWithState:&v47 objects:v58 count:16];
    if (v6)
    {
      v7 = *v48;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v48 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v47 + 1) + 8 * i);
          v10 = [*(a1 + 72) objectForKeyedSubscript:v9];
          v11 = [v10 mutableCopy];
          [v41 setObject:v11 forKeyedSubscript:v9];
        }

        v6 = [v5 countByEnumeratingWithState:&v47 objects:v58 count:16];
      }

      while (v6);
    }

    v39 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:*(a1 + 80) copyItems:1];
    v12 = *(a1 + 24);
    v46 = 0;
    v13 = [v12 topSuggestionsWithSourceEntries:v41 error:&v46];
    v40 = v46;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v42 objects:v57 count:16];
    if (v15)
    {
      v16 = *v43;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v43 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v42 + 1) + 8 * j);
          if ([v18 containsKey:@"MapsSuggestionsNewSourceKey"])
          {
            v19 = [v18 originatingSourceName];
            v20 = [v18 stringForKey:@"MapsSuggestionsNewSourceKey"];
            if (([v19 isEqualToString:v20] & 1) == 0)
            {
              v21 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412802;
                *&buf[4] = v19;
                v53 = 2112;
                v54 = v20;
                v55 = 2112;
                v56 = v18;
                _os_log_impl(&dword_1C5126000, v21, OS_LOG_TYPE_DEBUG, "RELINKING from %@ to %@: %@", buf, 0x20u);
              }

              v22 = [*(a1 + 72) objectForKeyedSubscript:v19];
              [v22 removeObjectIdenticalTo:v18];

              v23 = [*(a1 + 72) objectForKeyedSubscript:v20];
              [v23 addObject:v18];

              [v18 setOriginatingSourceName:v20];
            }

            [v18 setString:0 forKey:@"MapsSuggestionsNewSourceKey"];
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v42 objects:v57 count:16];
      }

      while (v15);
    }

    v24 = v40 == 0;
    if (v40)
    {
      v25 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = NSStringFromSelector(sel__updateResult);
        *buf = 138412546;
        *&buf[4] = v26;
        v53 = 2112;
        v54 = v40;
        _os_log_impl(&dword_1C5126000, v25, OS_LOG_TYPE_ERROR, "%@ received error: %@", buf, 0x16u);
      }

      v27 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v28 = [a1 uniqueName];
        *buf = 138412546;
        *&buf[4] = v28;
        v53 = 2080;
        v54 = "_updateResult";
        _os_log_impl(&dword_1C5126000, v27, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", buf, 0x16u);
      }

      v29 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v29))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5126000, v29, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_updateResult", "", buf, 2u);
      }

      goto LABEL_48;
    }

    [(MapsSuggestionsManager *)a1 _pruneExpiredSourceEntries];
    v31 = [(MapsSuggestionsManager *)a1 _pruneExpiredFromEntries:v14];

    [(MapsSuggestionsManager *)a1 _pruneSourceEntriesNotRepresentedIn:v31];
    if ([v39 isEqualToArray:v31])
    {
      v32 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v33 = NSStringFromSelector(sel__updateResult);
        *buf = 138412290;
        *&buf[4] = v33;
        _os_log_impl(&dword_1C5126000, v32, OS_LOG_TYPE_DEBUG, "%@ found no changes to previous result.", buf, 0xCu);
      }

      v34 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        v35 = [a1 uniqueName];
        *buf = 138412546;
        *&buf[4] = v35;
        v53 = 2080;
        v54 = "_updateResult";
        _os_log_impl(&dword_1C5126000, v34, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
      }

      v29 = GEOFindOrCreateLog();
      if (!os_signpost_enabled(v29))
      {
        goto LABEL_47;
      }

      *buf = 0;
    }

    else
    {
      objc_storeStrong((a1 + 80), v31);
      [(MapsSuggestionsManager *)a1 _scheduleInvalidateSinksOnFirstExpiredOfEntries:?];
      [*(a1 + 40) trackSuggestionEntries:v31 transportType:*(a1 + 88)];
      [(MapsSuggestionsManager *)a1 _sendInvalidateToAllSinks];
      v36 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        v37 = [a1 uniqueName];
        *buf = 138412546;
        *&buf[4] = v37;
        v53 = 2080;
        v54 = "_updateResult";
        _os_log_impl(&dword_1C5126000, v36, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
      }

      v29 = GEOFindOrCreateLog();
      if (!os_signpost_enabled(v29))
      {
        goto LABEL_47;
      }

      *buf = 0;
    }

    _os_signpost_emit_with_name_impl(&dword_1C5126000, v29, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_updateResult", "", buf, 2u);
LABEL_47:
    v14 = v31;
LABEL_48:

    v30 = v41;
    goto LABEL_49;
  }

  [(MapsSuggestionsManager *)buf _updateResult];
  v30 = *buf;
  v24 = v51;
LABEL_49:

  return v24;
}

- (void)_pruneExpiredSourceEntries
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    v12 = *(a1 + 72);
    v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(a1 + 72), "count")}];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = v12;
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = *v14;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v14 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v13 + 1) + 8 * i);
          v8 = [v3 objectForKeyedSubscript:v7];
          v9 = [(MapsSuggestionsManager *)a1 _pruneExpiredFromEntries:v8];
          v10 = [v9 mutableCopy];
          [v2 setObject:v10 forKeyedSubscript:v7];
        }

        v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v4);
    }

    v11 = *(a1 + 72);
    *(a1 + 72) = v2;
  }
}

- (void)_sendInvalidateToAllSinks
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "_sendInvalidateToAllSinks", buf, 2u);
    }

    objc_initWeak(buf, a1);
    v3 = *(a1 + 56);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __51__MapsSuggestionsManager__sendInvalidateToAllSinks__block_invoke;
    v4[3] = &unk_1E81F5920;
    objc_copyWeak(&v5, buf);
    [v3 callBlock:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(buf);
  }
}

- (void)_startLocationUpdater
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "Starting location updater", v5, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 144));
    v4 = [WeakRetained startLocationUpdatesForDelegate:a1];

    if (MapsSuggestionsIsInCoarseLocation())
    {
      [a1 didLoseLocationPermission];
    }

    [(MapsSuggestionsManager *)a1 _updateCurrentLocation:v4];
  }
}

- (void)_startAllSources
{
  OUTLINED_FUNCTION_8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_1C5126000, v1, OS_LOG_TYPE_DEBUG, "Sources already started. No need to start again", v3, 2u);
  }

  *v0 = v1;
}

- (void)_wipeStaleETAs
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    v2 = *(a1 + 48);
    if (v2)
    {
      if (!MapsSuggestionsIsInTheFuture(v2))
      {
        objc_initWeak(&location, a1);
        v3 = *(a1 + 16);
        v4[0] = MEMORY[0x1E69E9820];
        v4[1] = 3221225472;
        v4[2] = __40__MapsSuggestionsManager__wipeStaleETAs__block_invoke;
        v4[3] = &unk_1E81F5208;
        objc_copyWeak(&v5, &location);
        dispatch_async(v3, v4);
        objc_destroyWeak(&v5);
        objc_destroyWeak(&location);
      }
    }
  }
}

- (void)dealloc
{
  [(MapsSuggestionsCanKicker *)self->_expiredEntryInvalidator cancel];
  [(MapsSuggestionsCanKicker *)self->_wipeStaleETAWiper cancel];
  [(MapsSuggestionsCanKicker *)self->_deferredSourcesUpdater cancel];
  [(MapsSuggestionsManager *)self _stopAllSources];
  v3.receiver = self;
  v3.super_class = MapsSuggestionsManager;
  [(MapsSuggestionsManager *)&v3 dealloc];
}

- (void)_stopAllSources
{
  OUTLINED_FUNCTION_13(a1, a2, 5.778e-34);
  *(v3 + 14) = "Stop Sources";
  _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", v5, 0x16u);
}

- (MapsSuggestionsManager)initWithStrategy:(id)a3 locationUpdater:(id)a4 network:(id)a5 flightUpdater:(id)a6 ETARequirements:(id)a7 virtualGarage:(id)a8
{
  v69 = *MEMORY[0x1E69E9840];
  v15 = a3;
  obj = a4;
  v52 = a5;
  v53 = a6;
  v16 = a7;
  v17 = a8;
  if (v15)
  {
    v61.receiver = self;
    v61.super_class = MapsSuggestionsManager;
    v18 = [(MapsSuggestionsManager *)&v61 init];
    if (v18)
    {
      objc_initWeak(location, v18);
      v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      attr = dispatch_queue_attr_make_with_qos_class(v19, QOS_CLASS_USER_INITIATED, 0);

      v20 = dispatch_queue_create("MapsSuggestionsManagerGatheringQueue", attr);
      gatheringQueue = v18->_gatheringQueue;
      v18->_gatheringQueue = v20;

      v22 = dispatch_queue_create("MapsSuggestionsManagerStorageQueue", attr);
      storageQueue = v18->_storageQueue;
      v18->_storageQueue = v22;

      [(MapsSuggestionsCanKicker *)v18->_deferredSourcesUpdater cancel];
      objc_storeStrong(&v18->_strategy, a3);
      [(MapsSuggestionsStrategy *)v18->_strategy setManager:v18];
      objc_storeWeak(&v18->_locationUpdater, obj);
      if (v16)
      {
        v24 = [[MapsSuggestionsTracker alloc] initWithManager:v18 requirements:v16 network:v52 flightUpdater:v53 virtualGarage:v17];
        tracker = v18->_tracker;
        v18->_tracker = v24;
      }

      v26 = [[MapsSuggestionsCompositeSource alloc] initWithDelegate:v18 name:@"MapsSuggestionsBuiltinCompositeSource"];
      compositeSource = v18->_compositeSource;
      v18->_compositeSource = v26;

      v28 = [[MapsSuggestionsObservers alloc] initWithCallbackQueue:v18->_storageQueue name:@"MapsSuggestionsManagerSinks"];
      sinks = v18->_sinks;
      v18->_sinks = v28;

      v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
      storage = v18->_storage;
      v18->_storage = v30;

      v18->_defaultTansportType = GEOTransportTypeFromUserPreference();
      v32 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
      additionalFiltersPerSink = v18->_additionalFiltersPerSink;
      v18->_additionalFiltersPerSink = v32;

      v34 = [MapsSuggestionsCanKicker alloc];
      v35 = v18->_storageQueue;
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __111__MapsSuggestionsManager_initWithStrategy_locationUpdater_network_flightUpdater_ETARequirements_virtualGarage___block_invoke;
      v59[3] = &unk_1E81F5208;
      objc_copyWeak(&v60, location);
      v36 = [(MapsSuggestionsCanKicker *)v34 initWithName:@"MapsSuggestionsManagerExpiredEntryInvalidator" queue:v35 block:v59];
      expiredEntryInvalidator = v18->_expiredEntryInvalidator;
      v18->_expiredEntryInvalidator = v36;

      v38 = [MapsSuggestionsCanKicker alloc];
      v39 = v18->_storageQueue;
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __111__MapsSuggestionsManager_initWithStrategy_locationUpdater_network_flightUpdater_ETARequirements_virtualGarage___block_invoke_152;
      v57[3] = &unk_1E81F5208;
      objc_copyWeak(&v58, location);
      v40 = [(MapsSuggestionsCanKicker *)v38 initWithName:@"MapsSuggestionsManagerETAWiper" queue:v39 block:v57];
      wipeStaleETAWiper = v18->_wipeStaleETAWiper;
      v18->_wipeStaleETAWiper = v40;

      GEOConfigGetDouble();
      v43 = v42;
      v44 = [MapsSuggestionsCanKicker alloc];
      v45 = v18->_gatheringQueue;
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __111__MapsSuggestionsManager_initWithStrategy_locationUpdater_network_flightUpdater_ETARequirements_virtualGarage___block_invoke_156;
      v55[3] = &unk_1E81F5208;
      objc_copyWeak(&v56, location);
      v46 = [(MapsSuggestionsCanKicker *)v44 initWithName:@"MapsSuggestionsManagerDeferredUpdater" time:v45 queue:v55 block:v43];
      deferredSourcesUpdater = v18->_deferredSourcesUpdater;
      v18->_deferredSourcesUpdater = v46;

      v18->_mapType = 0;
      v18->_sourcesRunning = 0;
      objc_destroyWeak(&v56);
      objc_destroyWeak(&v58);
      objc_destroyWeak(&v60);

      objc_destroyWeak(location);
    }

    self = v18;
    v48 = self;
  }

  else
  {
    v49 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsManager.mm";
      v63 = 1024;
      v64 = 114;
      v65 = 2082;
      v66 = "[MapsSuggestionsManager initWithStrategy:locationUpdater:network:flightUpdater:ETARequirements:virtualGarage:]";
      v67 = 2082;
      v68 = "nil == (strategy)";
      _os_log_impl(&dword_1C5126000, v49, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. A strategy is required.", location, 0x26u);
    }

    v48 = 0;
  }

  return v48;
}

void __111__MapsSuggestionsManager_initWithStrategy_locationUpdater_network_flightUpdater_ETARequirements_virtualGarage___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsManager *)WeakRetained _sendInvalidateToAllSinks];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsManager.mm";
      v6 = 1026;
      v7 = 151;
      v8 = 2082;
      v9 = "[MapsSuggestionsManager initWithStrategy:locationUpdater:network:flightUpdater:ETARequirements:virtualGarage:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void __111__MapsSuggestionsManager_initWithStrategy_locationUpdater_network_flightUpdater_ETARequirements_virtualGarage___block_invoke_152(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsManager *)WeakRetained _wipeStaleETAs];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsManager.mm";
      v6 = 1026;
      v7 = 157;
      v8 = 2082;
      v9 = "[MapsSuggestionsManager initWithStrategy:locationUpdater:network:flightUpdater:ETARequirements:virtualGarage:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void __111__MapsSuggestionsManager_initWithStrategy_locationUpdater_network_flightUpdater_ETARequirements_virtualGarage___block_invoke_156(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsManager *)WeakRetained _updateAllSourcesOnceWithHandler:?];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsManager.mm";
      v6 = 1026;
      v7 = 164;
      v8 = 2082;
      v9 = "[MapsSuggestionsManager initWithStrategy:locationUpdater:network:flightUpdater:ETARequirements:virtualGarage:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

- (void)setMapType:(int)a3
{
  if (self->_mapType != a3)
  {
    self->_mapType = a3;
    [(MapsSuggestionsTracker *)self->_tracker setMapType:?];
  }
}

- (void)setAutomobileOptions:(id)a3
{
  v5 = a3;
  if (self->_automobileOptions != v5)
  {
    objc_storeStrong(&self->_automobileOptions, a3);
    [(MapsSuggestionsTracker *)self->_tracker setAutomobileOptions:v5];
  }
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (void)_updateCurrentLocation:(uint64_t)a1
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    if (MapsSuggestionsLoggingIsVerbose())
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v16 = 138412290;
        v17 = v3;
        _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "LOCATION UPDATE %@", &v16, 0xCu);
      }
    }

    if (v3)
    {
      MapsSuggestionsSetMostRecentLocation(v3);
      IsUsableLocation = MapsSuggestionsTrackerIsUsableLocation(*(a1 + 120));
      [v3 distanceFromLocation:*(a1 + 120)];
      v7 = v6;
      v8 = MapsSuggestionsCurrentBestLocation();
      v9 = *(a1 + 120);
      *(a1 + 120) = v8;

      v10 = *(a1 + 40);
      v11 = MapsSuggestionsCurrentBestLocation();
      [v10 setLocation:v11];

      if ([*(a1 + 56) count])
      {
        if ((IsUsableLocation & 1) == 0 && MapsSuggestionsTrackerIsUsableLocation(v3))
        {
          v12 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v16) = 0;
            v13 = "_updateAllSourcesOnce schedule (usability)";
LABEL_15:
            _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_DEBUG, v13, &v16, 2u);
            goto LABEL_16;
          }

          goto LABEL_16;
        }

        GEOConfigGetDouble();
        if (v7 > v14)
        {
          v12 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v16) = 0;
            v13 = "_updateAllSourcesOnce schedule (distance)";
            goto LABEL_15;
          }

LABEL_16:

          [*(a1 + 112) kickCanBySameTime];
        }
      }

      else if (MapsSuggestionsLoggingIsVerbose())
      {
        v15 = GEOFindOrCreateLog();
        [MapsSuggestionsManager _updateCurrentLocation:v15];
      }
    }
  }
}

- (void)_startSource:(uint64_t)a1
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [v3 uniqueName];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "Starting SOURCE{%@}", &v6, 0xCu);
    }

    [v3 start];
  }
}

- (void)_updateSource:(void *)a3 forType:(int)a4 repeat:(void *)a5 handler:
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a5;
  if (a1)
  {
    dispatch_assert_queue_V2(a1[1]);
    v11 = NSStringFromMapsSuggestionsEntryType(a3);
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [v9 uniqueName];
      v14 = NSStringFromMapsSuggestionsCurrentBestLocation();
      *buf = 138412802;
      v23 = v13;
      v24 = 2112;
      v25 = v11;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_DEBUG, "{MSgDebug} UPDATING SOURCE{%@} for TYPE{%@} at LATLONG{%@}", buf, 0x20u);
    }

    [v9 updateSuggestionEntriesOfType:a3 handler:v10];
    if (a4)
    {
      v16 = v15;
      if (v15 > 0.0)
      {
        objc_initWeak(buf, a1);
        v17 = dispatch_time(0, (v16 * 1000000000.0));
        v18 = a1[1];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __63__MapsSuggestionsManager__updateSource_forType_repeat_handler___block_invoke;
        block[3] = &unk_1E81F58A8;
        objc_copyWeak(v21, buf);
        v20 = v9;
        v21[1] = a3;
        dispatch_after(v17, v18, block);

        objc_destroyWeak(v21);
        objc_destroyWeak(buf);
      }
    }
  }
}

void __63__MapsSuggestionsManager__updateSource_forType_repeat_handler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsManager *)WeakRetained _updateSource:*(a1 + 48) forType:1 repeat:0 handler:?];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsManager.mm";
      v7 = 1026;
      v8 = 282;
      v9 = 2082;
      v10 = "[MapsSuggestionsManager _updateSource:forType:repeat:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

void __59__MapsSuggestionsManager__updateAllSourcesOnceWithHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__MapsSuggestionsManager__updateAllSourcesOnceWithHandler___block_invoke_2;
  v3[3] = &unk_1E81F5190;
  objc_copyWeak(&v5, (a1 + 48));
  v4 = *(a1 + 40);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v5);
}

void __59__MapsSuggestionsManager__updateAllSourcesOnceWithHandler___block_invoke_2(uint64_t a1)
{
  *&v14[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = [WeakRetained uniqueName];
      *buf = 138412546;
      v12 = v4;
      v13 = 2080;
      *v14 = "_updateAllSourcesOnce";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
    }

    v5 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_updateAllSourcesOnce", "", buf, 2u);
    }

    v6 = WeakRetained[8];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__MapsSuggestionsManager__updateAllSourcesOnceWithHandler___block_invoke_160;
    v8[3] = &unk_1E81F5190;
    objc_copyWeak(&v10, (a1 + 40));
    v9 = *(a1 + 32);
    [(MapsSuggestionsManager *)WeakRetained _updateSource:v6 forType:0 repeat:0 handler:v8];

    objc_destroyWeak(&v10);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v12 = "MapsSuggestionsManager.mm";
      v13 = 1026;
      *v14 = 301;
      v14[2] = 2082;
      *&v14[3] = "[MapsSuggestionsManager _updateAllSourcesOnceWithHandler:]_block_invoke_2";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __59__MapsSuggestionsManager__updateAllSourcesOnceWithHandler___block_invoke_160(uint64_t a1)
{
  *&v11[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = [WeakRetained uniqueName];
      v8 = 138412546;
      v9 = v4;
      v10 = 2080;
      *v11 = "_updateAllSourcesOnce";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v8, 0x16u);
    }

    v5 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v5))
    {
      LOWORD(v8) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_updateAllSourcesOnce", "", &v8, 2u);
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      (*(v6 + 16))();
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsManager.mm";
      v10 = 1026;
      *v11 = 308;
      v11[2] = 2082;
      *&v11[3] = "[MapsSuggestionsManager _updateAllSourcesOnceWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

- (void)_stopLocationUpdater
{
  if (a1)
  {
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "Stopping location updater", v4, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 144));
    [WeakRetained stopLocationUpdatesForDelegate:a1];
  }
}

- (void)_restartLocationUpdaterIfNeeded
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    if ([*(a1 + 56) count])
    {
      if (MapsSuggestionsLoggingIsVerbose())
      {
        v2 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
        {
          *v5 = 0;
          _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "Restarting location updater", v5, 2u);
        }
      }

      WeakRetained = objc_loadWeakRetained((a1 + 144));
      v4 = [WeakRetained restartLocationUpdatesForDelegate:a1];

      MapsSuggestionsSetMostRecentLocation(v4);
    }
  }
}

- (id)_pruneExpiredFromEntries:(dispatch_queue_t *)a1
{
  v31 = *MEMORY[0x1E69E9840];
  v15 = a2;
  if (!a1)
  {
    v16 = 0;
LABEL_21:
    v13 = v15;
    goto LABEL_23;
  }

  dispatch_assert_queue_V2(a1[2]);
  if ([v15 count])
  {
    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v15, "count")}];
    v17 = a1;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = v15;
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v30 count:16];
    if (v5)
    {
      v6 = *v19;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v18 + 1) + 8 * i);
          if (([v8 deleted] & 1) != 0 || objc_msgSend(v8, "hasExpired"))
          {
            [v8 setDeleted:1];
            v9 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
            {
              v10 = [(dispatch_queue_t *)v17 uniqueName];
              IsVerbose = MapsSuggestionsLoggingIsVerbose();
              v12 = &stru_1F444C108;
              if (IsVerbose)
              {
                v2 = [v8 serializedBase64String];
                v12 = v2;
              }

              *buf = 138413058;
              v23 = v10;
              v24 = 2048;
              v25 = v8;
              v26 = 2112;
              v27 = v12;
              v28 = 2112;
              v29 = v8;
              _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "{MSgDebug} PRUNED by OBJECT{%@} {%p:%@}:\n%@", buf, 0x2Au);
              if (IsVerbose)
              {
              }
            }
          }

          else
          {
            [v16 addObject:v8];
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v18 objects:v30 count:16];
      }

      while (v5);
    }

    goto LABEL_21;
  }

  v13 = v15;
  v16 = v15;
LABEL_23:

  return v16;
}

- (void)_pruneSourceEntriesNotRepresentedIn:(uint64_t)a1
{
  v22 = *MEMORY[0x1E69E9840];
  v14 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    v13 = *(a1 + 72);
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(a1 + 72), "count")}];
    v12 = a1;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = v13;
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = *v18;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v17 + 1) + 8 * i);
          v9 = [v4 objectForKeyedSubscript:{v8, v12}];
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __62__MapsSuggestionsManager__pruneSourceEntriesNotRepresentedIn___block_invoke;
          v15[3] = &unk_1E81F58F8;
          v16 = v14;
          v10 = [v9 MSg_mutableCopyIf:v15];
          [v3 setObject:v10 forKeyedSubscript:v8];
        }

        v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v5);
    }

    v11 = *(v12 + 72);
    *(v12 + 72) = v3;
  }
}

BOOL __62__MapsSuggestionsManager__pruneSourceEntriesNotRepresentedIn___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) indexOfObjectIdenticalTo:v3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "Kicking out non-result sourceEntry: %@", &v7, 0xCu);
    }
  }

  return v4 != 0x7FFFFFFFFFFFFFFFLL;
}

void __51__MapsSuggestionsManager__sendInvalidateToAllSinks__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [v3 invalidateForMapsSuggestionsManager:WeakRetained];
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsManager.mm";
      v8 = 1026;
      v9 = 442;
      v10 = 2082;
      v11 = "[MapsSuggestionsManager _sendInvalidateToAllSinks]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

- (void)_scheduleInvalidateSinksOnFirstExpiredOfEntries:(uint64_t)a1
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    if ([v3 count])
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v4 = v3;
      v5 = 0;
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        v7 = *v15;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v15 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v14 + 1) + 8 * i);
            if ([v9 deleted])
            {
              v11 = v9;

              v5 = v11;
              goto LABEL_16;
            }

            if (!v5 || [v9 expiresBeforeEntry:v5])
            {
              v10 = v9;

              v5 = v10;
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:

      v12 = [v5 expires];
      v13 = v12;
      if (v12)
      {
        [*(a1 + 96) kickCanByTime:MapsSuggestionsSecondsTo(v12)];
      }
    }

    else
    {
      [*(a1 + 96) cancel];
    }
  }
}

- (void)hintRefreshOfType:(int64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = NSStringFromMapsSuggestionsEntryType(a3);
    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "hintRefreshOfType:%@", buf, 0xCu);
  }

  if (a3)
  {
    objc_initWeak(buf, self);
    gatheringQueue = self->_gatheringQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __44__MapsSuggestionsManager_hintRefreshOfType___block_invoke;
    v8[3] = &unk_1E81F5948;
    objc_copyWeak(v9, buf);
    v9[1] = a3;
    dispatch_async(gatheringQueue, v8);
    objc_destroyWeak(v9);
    objc_destroyWeak(buf);
  }
}

void __44__MapsSuggestionsManager_hintRefreshOfType___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained[8] canProduceEntriesOfType:*(a1 + 40)])
    {
      [(MapsSuggestionsManager *)v3 _updateSource:*(a1 + 40) forType:0 repeat:0 handler:?];
    }
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsManager.mm";
      v7 = 1026;
      v8 = 563;
      v9 = 2082;
      v10 = "[MapsSuggestionsManager hintRefreshOfType:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

- (void)attachSource:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [v4 uniqueName];
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "attachSource:%@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    gatheringQueue = self->_gatheringQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __39__MapsSuggestionsManager_attachSource___block_invoke;
    v9[3] = &unk_1E81F5970;
    objc_copyWeak(&v11, buf);
    v10 = v4;
    dispatch_async(gatheringQueue, v9);

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsManager.mm";
      v14 = 1024;
      v15 = 572;
      v16 = 2082;
      v17 = "[MapsSuggestionsManager attachSource:]";
      v18 = 2082;
      v19 = "nil == (source)";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a source to attach to.", buf, 0x26u);
    }
  }
}

void __39__MapsSuggestionsManager_attachSource___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[8] attachSource:*(a1 + 32)];
    [(MapsSuggestionsManager *)v3 _startSource:?];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsManager.mm";
      v7 = 1026;
      v8 = 579;
      v9 = 2082;
      v10 = "[MapsSuggestionsManager attachSource:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

- (void)detachSource:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [v4 uniqueName];
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "detachSource:%@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    gatheringQueue = self->_gatheringQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __39__MapsSuggestionsManager_detachSource___block_invoke;
    v9[3] = &unk_1E81F5970;
    objc_copyWeak(&v11, buf);
    v10 = v4;
    dispatch_async(gatheringQueue, v9);

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsManager.mm";
      v14 = 1024;
      v15 = 587;
      v16 = 2082;
      v17 = "[MapsSuggestionsManager detachSource:]";
      v18 = 2082;
      v19 = "nil == (source)";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a source to detach from.", buf, 0x26u);
    }
  }
}

void __39__MapsSuggestionsManager_detachSource___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = [*(a1 + 32) uniqueName];
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "Stopping SOURCE{%@} (because of detach)", &v6, 0xCu);
    }

    [WeakRetained[8] detachSource:*(a1 + 32)];
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsManager.mm";
      v8 = 1026;
      v9 = 594;
      v10 = 2082;
      v11 = "[MapsSuggestionsManager detachSource:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

- (void)attachSink:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [v4 uniqueName];
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "attachSink:%@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v7 = self->_sinks;
    storageQueue = self->_storageQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__MapsSuggestionsManager_attachSink___block_invoke;
    block[3] = &unk_1E81F5998;
    v12 = v7;
    v13 = v4;
    v9 = v7;
    objc_copyWeak(&v14, buf);
    dispatch_async(storageQueue, block);
    objc_destroyWeak(&v14);

    objc_destroyWeak(buf);
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsManager.mm";
      v17 = 1024;
      v18 = 603;
      v19 = 2082;
      v20 = "[MapsSuggestionsManager attachSink:]";
      v21 = 2082;
      v22 = "nil == (sink)";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a sink to attach to.", buf, 0x26u);
    }
  }
}

void __37__MapsSuggestionsManager_attachSink___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37__MapsSuggestionsManager_attachSink___block_invoke_2;
  v3[3] = &unk_1E81F55C8;
  objc_copyWeak(&v4, (a1 + 48));
  [v1 registerObserver:v2 handler:v3];
  objc_destroyWeak(&v4);
}

void __37__MapsSuggestionsManager_attachSink___block_invoke_2(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = WeakRetained;
    if (WeakRetained)
    {
      [*(WeakRetained + 5) scheduleRefresh];
      v5 = v4[1];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __37__MapsSuggestionsManager_attachSink___block_invoke_176;
      block[3] = &unk_1E81F5208;
      objc_copyWeak(&v8, (a1 + 32));
      dispatch_async(v5, block);
      objc_destroyWeak(&v8);
    }

    else
    {
      v6 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v10 = "MapsSuggestionsManager.mm";
        v11 = 1026;
        v12 = 613;
        v13 = 2082;
        v14 = "[MapsSuggestionsManager attachSink:]_block_invoke_2";
        _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
      }
    }
  }
}

void __37__MapsSuggestionsManager_attachSink___block_invoke_176(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsManager *)WeakRetained _startLocationUpdater];
    [(MapsSuggestionsManager *)v2 _startAllSources];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsManager.mm";
      v6 = 1026;
      v7 = 618;
      v8 = 2082;
      v9 = "[MapsSuggestionsManager attachSink:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: gatheringStrongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

- (void)detachSink:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [v4 uniqueName];
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "detachSink:%@", buf, 0xCu);
    }

    v7 = self->_sinks;
    storageQueue = self->_storageQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__MapsSuggestionsManager_detachSink___block_invoke;
    block[3] = &unk_1E81F5A10;
    v11 = v7;
    v12 = v4;
    v13 = self;
    v9 = v7;
    dispatch_async(storageQueue, block);
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsManager.mm";
      v16 = 1024;
      v17 = 629;
      v18 = 2082;
      v19 = "[MapsSuggestionsManager detachSink:]";
      v20 = 2082;
      v21 = "nil == (sink)";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a sink to detach from.", buf, 0x26u);
    }
  }
}

void __37__MapsSuggestionsManager_detachSink___block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__MapsSuggestionsManager_detachSink___block_invoke_2;
  v6[3] = &unk_1E81F59E8;
  v4 = v2;
  v5 = a1[6];
  v7 = v4;
  v8 = v5;
  [v3 unregisterObserver:v4 handler:v6];
}

void __37__MapsSuggestionsManager_detachSink___block_invoke_2(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [*(a1 + 32) uniqueName];
    *buf = 138412290;
    v12 = v5;
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "Removed Sink: '%@'", buf, 0xCu);
  }

  if (a2)
  {
    v7 = *(a1 + 40);
    v6 = (a1 + 40);
    [*(v7 + 40) unschedule];
    v8 = *v6;
    v9 = *(*v6 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__MapsSuggestionsManager_detachSink___block_invoke_178;
    block[3] = &unk_1E81F59C0;
    block[4] = v8;
    dispatch_async(v9, block);
  }
}

void __37__MapsSuggestionsManager_detachSink___block_invoke_178(uint64_t a1)
{
  [(MapsSuggestionsManager *)*(a1 + 32) _stopAllSources];
  v2 = *(a1 + 32);

  [(MapsSuggestionsManager *)v2 _stopLocationUpdater];
}

void __40__MapsSuggestionsManager__wipeStaleETAs__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "Wiping out a previous, stale ETA UPDATE", buf, 2u);
    }

    [*(WeakRetained + 5) resetAllTitleFormatting];
    v4 = MapsSuggestionsCurrentBestLocation();
    IsUsableLocation = MapsSuggestionsTrackerIsUsableLocation(v4);
    v6 = *(WeakRetained + 5);
    if (IsUsableLocation)
    {
      [v6 setLocation:v4];
      [*(WeakRetained + 5) rescheduleRefreshOnlyIfAlreadyRunning];
    }

    else
    {
      [v6 setLocation:0];
      v7 = *(WeakRetained + 1);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __40__MapsSuggestionsManager__wipeStaleETAs__block_invoke_179;
      block[3] = &unk_1E81F5208;
      objc_copyWeak(&v9, (a1 + 32));
      dispatch_async(v7, block);
      objc_destroyWeak(&v9);
    }
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v11 = "MapsSuggestionsManager.mm";
      v12 = 1026;
      v13 = 692;
      v14 = 2082;
      v15 = "[MapsSuggestionsManager _wipeStaleETAs]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __40__MapsSuggestionsManager__wipeStaleETAs__block_invoke_179(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsManager *)WeakRetained _restartLocationUpdaterIfNeeded];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsManager.mm";
      v6 = 1026;
      v7 = 710;
      v8 = 2082;
      v9 = "[MapsSuggestionsManager _wipeStaleETAs]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

- (char)topSuggestionsForSink:(id)a3 transportType:(int)a4 count:(unint64_t)a5 queue:(id)a6 handler:(id)a7
{
  v39 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  if (!v14)
  {
    v22 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v34 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsManager.mm";
      v35 = 1024;
      *v36 = 735;
      *&v36[4] = 2082;
      *&v36[6] = "[MapsSuggestionsManager topSuggestionsForSink:transportType:count:queue:handler:]";
      v37 = 2082;
      v38 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v22, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", buf, 0x26u);
    }

    goto LABEL_27;
  }

  if (!v12)
  {
    v22 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v34 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsManager.mm";
      v35 = 1024;
      *v36 = 736;
      *&v36[4] = 2082;
      *&v36[6] = "[MapsSuggestionsManager topSuggestionsForSink:transportType:count:queue:handler:]";
      v37 = 2082;
      v38 = "nil == (sink)";
      _os_log_impl(&dword_1C5126000, v22, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a sink", buf, 0x26u);
    }

    goto LABEL_27;
  }

  if (!v13)
  {
    v22 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v34 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsManager.mm";
      v35 = 1024;
      *v36 = 737;
      *&v36[4] = 2082;
      *&v36[6] = "[MapsSuggestionsManager topSuggestionsForSink:transportType:count:queue:handler:]";
      v37 = 2082;
      v38 = "nil == (queue)";
      _os_log_impl(&dword_1C5126000, v22, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a callback queue", buf, 0x26u);
    }

    goto LABEL_27;
  }

  if (!a5)
  {
    v22 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v34 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsManager.mm";
      v35 = 1024;
      *v36 = 738;
      *&v36[4] = 2082;
      *&v36[6] = "[MapsSuggestionsManager topSuggestionsForSink:transportType:count:queue:handler:]";
      v37 = 2082;
      v38 = "0u == count";
      _os_log_impl(&dword_1C5126000, v22, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. A count of zero doesn't make sense", buf, 0x26u);
    }

    goto LABEL_27;
  }

  self->_defaultTansportType = a4;
  v15 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = [(MapsSuggestionsManager *)self uniqueName];
    *buf = 138412546;
    v34 = v16;
    v35 = 2080;
    *v36 = "topSuggestionsForSink";
    _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v17 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v17, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "topSuggestionsForSink", "", buf, 2u);
  }

  if (!self->_strategy)
  {
    v23 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-13 reason:@"Cannot do anything without a Strategy."];
    v14[2](v14, 0, v23);

    v24 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = [(MapsSuggestionsManager *)self uniqueName];
      *buf = 138412546;
      v34 = v25;
      v35 = 2080;
      *v36 = "topSuggestionsForSink";
      _os_log_impl(&dword_1C5126000, v24, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", buf, 0x16u);
    }

    v22 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v22, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "topSuggestionsForSink", "", buf, 2u);
    }

LABEL_27:

    v21 = 0;
    goto LABEL_28;
  }

  v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a5];
  objc_initWeak(buf, self);
  storageQueue = self->_storageQueue;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __82__MapsSuggestionsManager_topSuggestionsForSink_transportType_count_queue_handler___block_invoke;
  v27[3] = &unk_1E81F5A60;
  objc_copyWeak(v32, buf);
  v28 = v18;
  v29 = v12;
  v32[1] = a5;
  v30 = v13;
  v31 = v14;
  v20 = v18;
  dispatch_async(storageQueue, v27);

  objc_destroyWeak(v32);
  objc_destroyWeak(buf);
  v21 = 1;
LABEL_28:

  return v21;
}

void __82__MapsSuggestionsManager_topSuggestionsForSink_transportType_count_queue_handler___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [(MapsSuggestionsManager *)WeakRetained _pruneExpiredFromEntries:?];
    v5 = v3[10];
    v3[10] = v4;

    [(MapsSuggestionsManager *)v3 _wipeStaleETAs];
    v6 = v3[10];
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) uniqueName];
    v9 = [(MapsSuggestionsManager *)v3 _filteredEntries:v6 forSink:v8 limit:*(a1 + 72)];
    [v7 addObjectsFromArray:v9];

    v10 = *(a1 + 48);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __82__MapsSuggestionsManager_topSuggestionsForSink_transportType_count_queue_handler___block_invoke_191;
    v12[3] = &unk_1E81F5A38;
    objc_copyWeak(&v16, (a1 + 64));
    v13 = *(a1 + 32);
    v15 = *(a1 + 56);
    v14 = *(a1 + 40);
    dispatch_async(v10, v12);

    objc_destroyWeak(&v16);
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v18 = "MapsSuggestionsManager.mm";
      v19 = 1026;
      v20 = 759;
      v21 = 2082;
      v22 = "[MapsSuggestionsManager topSuggestionsForSink:transportType:count:queue:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

- (id)_filteredEntries:(void *)a3 forSink:(unint64_t)a4 limit:
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = a2;
  v7 = a3;
  v8 = v7;
  if (!a1)
  {
    goto LABEL_18;
  }

  if (![v7 length])
  {
    v17 = GEOFindOrCreateLog();
    [MapsSuggestionsManager _filteredEntries:v17 forSink:? limit:?];
LABEL_18:
    v16 = 0;
    goto LABEL_19;
  }

  if (!a4)
  {
    v18 = GEOFindOrCreateLog();
    [MapsSuggestionsManager _filteredEntries:v18 forSink:? limit:?];
    goto LABEL_18;
  }

  dispatch_assert_queue_V2(*(a1 + 16));
  if ([v20 count])
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a4];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v20;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = 0;
      v13 = *v22;
LABEL_7:
      v14 = 0;
      while (1)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if (v12 >= a4)
        {
          break;
        }

        v15 = *(*(&v21 + 1) + 8 * v14);
        if ([(MapsSuggestionsManager *)a1 _sink:v8 allowsEntry:v15])
        {
          [v9 addObject:v15];
          ++v12;
        }

        if (v11 == ++v14)
        {
          v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v11)
          {
            goto LABEL_7;
          }

          break;
        }
      }
    }

    v16 = [v9 copy];
  }

  else
  {
    v16 = v20;
  }

LABEL_19:

  return v16;
}

void __82__MapsSuggestionsManager_topSuggestionsForSink_transportType_count_queue_handler___block_invoke_191(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v2 = *(a1 + 32);
    [v2 sortUsingComparator:&__block_literal_global_387];
    v3 = [v2 copy];

    v19 = v3;
    (*(*(a1 + 48) + 16))();
    v4 = *MEMORY[0x1E69A1B08];
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [WeakRetained uniqueName];
      *buf = 138412546;
      *v22 = v6;
      *&v22[8] = 2080;
      *&v22[10] = "topSuggestionsForSink";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
    }

    v7 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "topSuggestionsForSink", "", buf, 2u);
    }

    context = objc_autoreleasePoolPush();
    for (i = 0; i < [*(a1 + 32) count]; ++i)
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = [*(a1 + 40) uniqueName];
        v11 = [*(a1 + 32) objectAtIndexedSubscript:i];
        IsVerbose = MapsSuggestionsLoggingIsVerbose();
        v13 = &stru_1F444C108;
        if (IsVerbose)
        {
          v20 = [*(a1 + 32) objectAtIndexedSubscript:i];
          v18 = [v20 serializedBase64String];
          v13 = v18;
        }

        v14 = v4;
        v15 = [*(a1 + 32) objectAtIndexedSubscript:i];
        *buf = 67110146;
        *v22 = i;
        *&v22[4] = 2112;
        *&v22[6] = v10;
        *&v22[14] = 2048;
        *&v22[16] = v11;
        v23 = 2112;
        v24 = v13;
        v25 = 2112;
        v26 = v15;
        _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "{MSgDebug} SERVED as #%u to SINK{%@} {%p:%@}:\n%@", buf, 0x30u);

        v3 = v19;
        v4 = v14;
        if (IsVerbose)
        {
        }
      }
    }

    objc_autoreleasePoolPop(context);
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *v22 = "MapsSuggestionsManager.mm";
      *&v22[8] = 1026;
      *&v22[10] = 767;
      *&v22[14] = 2082;
      *&v22[16] = "[MapsSuggestionsManager topSuggestionsForSink:transportType:count:queue:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

- (char)topSuggestionsForSink:(id)a3 count:(unint64_t)a4 queue:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  LOBYTE(a4) = [(MapsSuggestionsManager *)self topSuggestionsForSink:v10 transportType:GEOTransportTypeFromUserPreference() count:a4 queue:v11 handler:v12];

  return a4;
}

- (char)oneShotTopSuggestionsForSink:(id)a3 transportType:(int)a4 count:(unint64_t)a5 queue:(id)a6 handler:(id)a7
{
  v34 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  if (!v14)
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v29 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsManager.mm";
      v30 = 1024;
      *v31 = 814;
      *&v31[4] = 2082;
      *&v31[6] = "[MapsSuggestionsManager oneShotTopSuggestionsForSink:transportType:count:queue:handler:]";
      v32 = 2082;
      v33 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", buf, 0x26u);
    }

    goto LABEL_16;
  }

  if (!v12)
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v29 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsManager.mm";
      v30 = 1024;
      *v31 = 815;
      *&v31[4] = 2082;
      *&v31[6] = "[MapsSuggestionsManager oneShotTopSuggestionsForSink:transportType:count:queue:handler:]";
      v32 = 2082;
      v33 = "nil == (sink)";
      _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a sink", buf, 0x26u);
    }

    goto LABEL_16;
  }

  if (!v13)
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v29 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsManager.mm";
      v30 = 1024;
      *v31 = 816;
      *&v31[4] = 2082;
      *&v31[6] = "[MapsSuggestionsManager oneShotTopSuggestionsForSink:transportType:count:queue:handler:]";
      v32 = 2082;
      v33 = "nil == (queue)";
      _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a callback queue", buf, 0x26u);
    }

    goto LABEL_16;
  }

  if (!a5)
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v29 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsManager.mm";
      v30 = 1024;
      *v31 = 817;
      *&v31[4] = 2082;
      *&v31[6] = "[MapsSuggestionsManager oneShotTopSuggestionsForSink:transportType:count:queue:handler:]";
      v32 = 2082;
      v33 = "0u == count";
      _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. A count of zero doesn't make sense", buf, 0x26u);
    }

LABEL_16:

    v16 = 0;
    goto LABEL_17;
  }

  v18 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = [(MapsSuggestionsManager *)self uniqueName];
    *buf = 138412546;
    v29 = v19;
    v30 = 2080;
    *v31 = "oneShotTopSuggestionsForSink";
    _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v20 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v20, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "oneShotTopSuggestionsForSink", "", buf, 2u);
  }

  [(MapsSuggestionsManager *)self attachSink:v12];
  objc_initWeak(buf, self);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __89__MapsSuggestionsManager_oneShotTopSuggestionsForSink_transportType_count_queue_handler___block_invoke;
  v22[3] = &unk_1E81F5AB0;
  objc_copyWeak(v26, buf);
  v21 = v12;
  v27 = a4;
  v23 = v21;
  v26[1] = a5;
  v24 = v13;
  v25 = v14;
  [(MapsSuggestionsManager *)self _updateAllSourcesOnceWithHandler:v22];

  objc_destroyWeak(v26);
  objc_destroyWeak(buf);
  v16 = 1;
LABEL_17:

  return v16;
}

void __89__MapsSuggestionsManager_oneShotTopSuggestionsForSink_transportType_count_queue_handler___block_invoke(uint64_t a1)
{
  *&v19[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 64);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __89__MapsSuggestionsManager_oneShotTopSuggestionsForSink_transportType_count_queue_handler___block_invoke_193;
    v13[3] = &unk_1E81F5A88;
    v15 = *(a1 + 48);
    v13[4] = WeakRetained;
    v14 = *(a1 + 32);
    if (![WeakRetained topSuggestionsForSink:v5 transportType:v3 count:v4 queue:v6 handler:v13])
    {
      v7 = *(a1 + 48);
      v8 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-12 reason:@"topSuggestionsForSink failed with ContractForbids"];
      (*(v7 + 16))(v7, MEMORY[0x1E695E0F0], v8);

      [WeakRetained detachSink:*(a1 + 32)];
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = [WeakRetained uniqueName];
        *buf = 138412546;
        v17 = v10;
        v18 = 2080;
        *v19 = "oneShotTopSuggestionsForSink";
        _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", buf, 0x16u);
      }

      v11 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v11))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5126000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "oneShotTopSuggestionsForSink", "", buf, 2u);
      }
    }

    v12 = v15;
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v17 = "MapsSuggestionsManager.mm";
      v18 = 1026;
      *v19 = 826;
      v19[2] = 2082;
      *&v19[3] = "[MapsSuggestionsManager oneShotTopSuggestionsForSink:transportType:count:queue:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __89__MapsSuggestionsManager_oneShotTopSuggestionsForSink_transportType_count_queue_handler___block_invoke_193(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) detachSink:*(a1 + 40)];
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [*(a1 + 32) uniqueName];
    v10 = 138412546;
    v11 = v8;
    v12 = 2080;
    v13 = "oneShotTopSuggestionsForSink";
    _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v10, 0x16u);
  }

  v9 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v9))
  {
    LOWORD(v10) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "oneShotTopSuggestionsForSink", "", &v10, 2u);
  }
}

- (char)oneShotTopSuggestionsForSink:(id)a3 count:(unint64_t)a4 queue:(id)a5 handler:(id)a6
{
  objc_initWeak(&location, a3);
  v10 = a5;
  v11 = a6;
  v12 = objc_loadWeakRetained(&location);
  LOBYTE(a4) = [(MapsSuggestionsManager *)self oneShotTopSuggestionsForSink:v12 transportType:GEOTransportTypeFromUserPreference() count:a4 queue:v10 handler:v11];

  objc_destroyWeak(&location);
  return a4;
}

- (void)addAdditionalFilter:(id)a3 forSink:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsManager.mm";
      v16 = 1024;
      v17 = 858;
      v18 = 2082;
      v19 = "[MapsSuggestionsManager addAdditionalFilter:forSink:]";
      v20 = 2082;
      v21 = "nil == (filter)";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires filter", location, 0x26u);
    }

    goto LABEL_9;
  }

  if (![v7 length])
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsManager.mm";
      v16 = 1024;
      v17 = 859;
      v18 = 2082;
      v19 = "[MapsSuggestionsManager addAdditionalFilter:forSink:]";
      v20 = 2082;
      v21 = "0u == sinkName.length";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires sinkName", location, 0x26u);
    }

LABEL_9:

    goto LABEL_10;
  }

  objc_initWeak(location, self);
  storageQueue = self->_storageQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__MapsSuggestionsManager_addAdditionalFilter_forSink___block_invoke;
  block[3] = &unk_1E81F5AD8;
  objc_copyWeak(&v14, location);
  v12 = v8;
  v13 = v6;
  dispatch_async(storageQueue, block);

  objc_destroyWeak(&v14);
  objc_destroyWeak(location);
LABEL_10:
}

void __54__MapsSuggestionsManager_addAdditionalFilter_forSink___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[4] objectForKeyedSubscript:*(a1 + 32)];
    if (!v4)
    {
      v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
      [v3[4] setObject:? forKeyedSubscript:?];
    }

    [v4 addObject:*(a1 + 40)];
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsManager.mm";
      v8 = 1026;
      v9 = 864;
      v10 = 2082;
      v11 = "[MapsSuggestionsManager addAdditionalFilter:forSink:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

- (void)removeAdditionalFilter:(id)a3 forSink:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsManager.mm";
      v16 = 1024;
      v17 = 877;
      v18 = 2082;
      v19 = "[MapsSuggestionsManager removeAdditionalFilter:forSink:]";
      v20 = 2082;
      v21 = "nil == (filter)";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires filter", location, 0x26u);
    }

    goto LABEL_9;
  }

  if (![v7 length])
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsManager.mm";
      v16 = 1024;
      v17 = 878;
      v18 = 2082;
      v19 = "[MapsSuggestionsManager removeAdditionalFilter:forSink:]";
      v20 = 2082;
      v21 = "0u == sinkName.length";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires sinkName", location, 0x26u);
    }

LABEL_9:

    goto LABEL_10;
  }

  objc_initWeak(location, self);
  storageQueue = self->_storageQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__MapsSuggestionsManager_removeAdditionalFilter_forSink___block_invoke;
  block[3] = &unk_1E81F5AD8;
  objc_copyWeak(&v14, location);
  v12 = v8;
  v13 = v6;
  dispatch_async(storageQueue, block);

  objc_destroyWeak(&v14);
  objc_destroyWeak(location);
LABEL_10:
}

void __57__MapsSuggestionsManager_removeAdditionalFilter_forSink___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[4] objectForKeyedSubscript:*(a1 + 32)];
    [v4 removeObject:*(a1 + 40)];
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsManager.mm";
      v8 = 1026;
      v9 = 882;
      v10 = 2082;
      v11 = "[MapsSuggestionsManager removeAdditionalFilter:forSink:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

- (uint64_t)_sink:(void *)a3 allowsEntry:
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    v13 = 0;
    goto LABEL_28;
  }

  if ([v5 length])
  {
    if (v6)
    {
      dispatch_assert_queue_V2(*(a1 + 16));
      v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
      v8 = v7;
      if (v7)
      {
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v19 objects:v31 count:16];
        if (v9)
        {
          v10 = *v20;
          while (2)
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v20 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = *(*(&v19 + 1) + 8 * i);
              if (([v12 shouldKeepEntry:{v6, v19}] & 1) == 0)
              {
                v14 = GEOFindOrCreateLog();
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
                {
                  v15 = [v12 uniqueName];
                  IsVerbose = MapsSuggestionsLoggingIsVerbose();
                  if (IsVerbose)
                  {
                    v17 = [v6 serializedBase64String];
                  }

                  else
                  {
                    v17 = &stru_1F444C108;
                  }

                  *buf = 138413058;
                  *&buf[4] = v15;
                  v25 = 2048;
                  v26 = v6;
                  v27 = 2112;
                  v28 = v17;
                  v29 = 2112;
                  v30 = v6;
                  _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_DEBUG, "{MSgDebug} FILTERED by FILTER{%@} {%p:%@}:\n%@", buf, 0x2Au);
                  if (IsVerbose)
                  {
                  }
                }

                v13 = 0;
                goto LABEL_26;
              }
            }

            v9 = [v8 countByEnumeratingWithState:&v19 objects:v31 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        v13 = 1;
LABEL_26:
      }

      else
      {
        v13 = 1;
      }

      goto LABEL_27;
    }

    GEOFindOrCreateLog();
    objc_claimAutoreleasedReturnValue();
    [MapsSuggestionsManager _sink:allowsEntry:];
  }

  else
  {
    GEOFindOrCreateLog();
    objc_claimAutoreleasedReturnValue();
    [MapsSuggestionsManager _sink:allowsEntry:];
  }

  v8 = *buf;
  v13 = v23;
LABEL_27:

LABEL_28:
  return v13;
}

- (char)saveStorageToFile:(id)a3 callback:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "saveStorageToFile:%@", buf, 0xCu);
  }

  if ([v6 length])
  {
    objc_initWeak(buf, self);
    storageQueue = self->_storageQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__MapsSuggestionsManager_saveStorageToFile_callback___block_invoke;
    block[3] = &unk_1E81F5B00;
    objc_copyWeak(&v14, buf);
    v12 = v6;
    v13 = v7;
    dispatch_async(storageQueue, block);

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }

  return v7 != 0;
}

void __53__MapsSuggestionsManager_saveStorageToFile_callback___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [MapsSuggestionsCache saveToFilePath:*(a1 + 32) storage:WeakRetained[9] ETAValidUntilDate:WeakRetained[6]];
    if (!v3)
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 32);
        v8 = 138412290;
        v9 = v5;
        _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "Failed to write to %@.", &v8, 0xCu);
      }
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, v3);
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsManager.mm";
      v10 = 1026;
      v11 = 955;
      v12 = 2082;
      v13 = "[MapsSuggestionsManager saveStorageToFile:callback:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

- (BOOL)loadStorageFromFile:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 length])
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = v4;
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "loadStorageFromFile:%@ sync", buf, 0xCu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    buf[24] = 1;
    storageQueue = self->_storageQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__MapsSuggestionsManager_loadStorageFromFile___block_invoke;
    block[3] = &unk_1E81F5B28;
    v12 = buf;
    block[4] = self;
    v11 = v4;
    dispatch_sync(storageQueue, block);
    v7 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 971;
      *&buf[18] = 2082;
      *&buf[20] = "[MapsSuggestionsManager loadStorageFromFile:]";
      v14 = 2082;
      v15 = "0u == path.length";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Needs a file path", buf, 0x26u);
    }

    v7 = 0;
  }

  return v7 & 1;
}

uint64_t __46__MapsSuggestionsManager_loadStorageFromFile___block_invoke(uint64_t a1)
{
  result = [(MapsSuggestionsManager *)*(a1 + 32) _loadStorageFromFile:?];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (uint64_t)_loadStorageFromFile:(uint64_t)a1
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 length])
    {
      dispatch_assert_queue_V2(*(a1 + 16));
      v5 = [MEMORY[0x1E696AC08] defaultManager];
      v6 = [v5 fileExistsAtPath:v4];

      if (v6)
      {
        if ([*(a1 + 72) count])
        {
          v7 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "Already loaded from Storage. Aborting this load", buf, 2u);
          }

          goto LABEL_12;
        }

        [*(a1 + 24) clearData];
        v9 = objc_autoreleasePoolPush();
        v18 = 0;
        v19 = 0;
        v10 = [MapsSuggestionsCache loadFromFilePath:v4 storage:&v19 ETAValidUntilDate:&v18];
        v11 = v19;
        v12 = v18;
        v13 = *(a1 + 72);
        *(a1 + 72) = v11;
        v14 = v11;

        v15 = *(a1 + 48);
        *(a1 + 48) = v12;

        objc_autoreleasePoolPop(v9);
        if (v10)
        {
LABEL_12:
          [(MapsSuggestionsManager *)a1 _updateResult];
          a1 = 1;
          goto LABEL_15;
        }

        v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v8 = *(a1 + 72);
        *(a1 + 72) = v16;
      }

      else
      {
        v8 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v4;
          _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "File does not exist: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      GEOFindOrCreateLog();
      objc_claimAutoreleasedReturnValue();
      [MapsSuggestionsManager _loadStorageFromFile:];
      v8 = *buf;
    }

    a1 = 0;
  }

LABEL_15:

  return a1;
}

- (char)loadStorageFromFile:(id)a3 callback:(id)a4 callbackQueue:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v22 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsManager.mm";
      v23 = 1024;
      v24 = 988;
      v25 = 2082;
      v26 = "[MapsSuggestionsManager loadStorageFromFile:callback:callbackQueue:]";
      v27 = 2082;
      v28 = "nil == (callback)";
      _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a callback block", buf, 0x26u);
    }

    goto LABEL_11;
  }

  if (!v10)
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v22 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsManager.mm";
      v23 = 1024;
      v24 = 989;
      v25 = 2082;
      v26 = "[MapsSuggestionsManager loadStorageFromFile:callback:callbackQueue:]";
      v27 = 2082;
      v28 = "NULL == callbackQueue";
      _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a callback queue", buf, 0x26u);
    }

LABEL_11:

    v13 = 0;
    goto LABEL_12;
  }

  v11 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v22 = v8;
    _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_DEBUG, "loadStorageFromFile:%@ async", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  storageQueue = self->_storageQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__MapsSuggestionsManager_loadStorageFromFile_callback_callbackQueue___block_invoke;
  v16[3] = &unk_1E81F5B78;
  objc_copyWeak(&v20, buf);
  v17 = v8;
  v18 = v10;
  v19 = v9;
  dispatch_async(storageQueue, v16);

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
  v13 = 1;
LABEL_12:

  return v13;
}

void __69__MapsSuggestionsManager_loadStorageFromFile_callback_callbackQueue___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [(MapsSuggestionsManager *)WeakRetained _loadStorageFromFile:?];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __69__MapsSuggestionsManager_loadStorageFromFile_callback_callbackQueue___block_invoke_207;
    v7[3] = &unk_1E81F5B50;
    v5 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = v4;
    dispatch_async(v5, v7);
    v6 = v8;
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v11 = "MapsSuggestionsManager.mm";
      v12 = 1026;
      v13 = 995;
      v14 = 2082;
      v15 = "[MapsSuggestionsManager loadStorageFromFile:callback:callbackQueue:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

- (dispatch_queue_t)_updateExpiryDatesForEntries:(void *)a3 withEntry:
{
  v25 = *MEMORY[0x1E69E9840];
  v17 = a2;
  v5 = a3;
  if (a1)
  {
    dispatch_assert_queue_V2(a1[2]);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = v17;
    v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (!v6)
    {
      goto LABEL_15;
    }

    v19 = *v21;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        if (MapsSuggestionsEntriesAreBothOfType([v8 type], v8, v5))
        {
          v9 = [v5 uniqueIdentifier];
          v10 = [v8 uniqueIdentifier];
          if ([v9 isEqualToString:v10])
          {
            v11 = [v5 expires];
            v12 = [v8 expires];
            v13 = [v11 earlierDate:v12];
            v14 = [v5 expires];
            v15 = v13 == v14;

            if (!v15)
            {
              continue;
            }

            v9 = [v5 expires];
            [v8 setExpires:v9];
          }

          else
          {
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (!v6)
      {
LABEL_15:

        a1 = obj;
        break;
      }
    }
  }

  return a1;
}

- (uint64_t)_addOrUpdateSuggestionEntries:(void *)a3 source:
{
  v61 = *MEMORY[0x1E69E9840];
  v31 = a2;
  v5 = a3;
  v40 = v5;
  if (!a1)
  {
    v39 = 0;
    goto LABEL_63;
  }

  v6 = v5;
  if (![v5 length])
  {
    GEOFindOrCreateLog();
    objc_claimAutoreleasedReturnValue();
    [MapsSuggestionsManager _addOrUpdateSuggestionEntries:source:];
LABEL_59:
    v8 = v49;
    v39 = *buf;
    goto LABEL_62;
  }

  if (!v31)
  {
    GEOFindOrCreateLog();
    objc_claimAutoreleasedReturnValue();
    [MapsSuggestionsManager _addOrUpdateSuggestionEntries:source:];
    goto LABEL_59;
  }

  if (![v31 count])
  {
    GEOFindOrCreateLog();
    objc_claimAutoreleasedReturnValue();
    [MapsSuggestionsManager _addOrUpdateSuggestionEntries:source:];
    goto LABEL_59;
  }

  dispatch_assert_queue_V2(*(a1 + 16));
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = v6;
    _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "Adding/Updating for %@", buf, 0xCu);
  }

  v8 = [*(a1 + 72) objectForKey:v40];
  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [*(a1 + 72) setObject:? forKey:?];
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v9 = v31;
  v10 = [(__CFString *)v9 countByEnumeratingWithState:&v45 objects:v60 count:16];
  if (v10)
  {
    v11 = *v46;
    do
    {
      v12 = 0;
      v13 = v8;
      do
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v8 = [(MapsSuggestionsManager *)a1 _updateExpiryDatesForEntries:v13 withEntry:*(*(&v45 + 1) + 8 * v12)];

        ++v12;
        v13 = v8;
      }

      while (v10 != v12);
      v10 = [(__CFString *)v9 countByEnumeratingWithState:&v45 objects:v60 count:16];
    }

    while (v10);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v9;
  v14 = [(__CFString *)obj countByEnumeratingWithState:&v41 objects:v59 count:16];
  if (!v14)
  {
    v39 = 0;
    goto LABEL_61;
  }

  v39 = 0;
  v37 = *v42;
  do
  {
    v38 = v14;
    for (i = 0; i != v38; ++i)
    {
      if (*v42 != v37)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v41 + 1) + 8 * i);
      v17 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        IsVerbose = MapsSuggestionsLoggingIsVerbose();
        v19 = &stru_1F444C108;
        if (IsVerbose)
        {
          v9 = [(__CFString *)v16 serializedBase64String];
          v19 = v9;
        }

        *buf = 138413058;
        *&buf[4] = v40;
        v51 = 2048;
        v52 = v16;
        v53 = 2112;
        v54 = v19;
        v55 = 2112;
        v56 = v16;
        _os_log_impl(&dword_1C5126000, v17, OS_LOG_TYPE_DEBUG, "{MSgDebug} NEW INJECT from SOURCE{%@} {%p:%@}:\n%@", buf, 0x2Au);
        if (IsVerbose)
        {
        }
      }

      [(__CFString *)v16 setOriginatingSourceName:v40];
      if ([(__CFString *)v16 deleted])
      {
        [v8 addObject:v16];
        GEOFindOrCreateLog();
        v20 = ++v39;
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_53;
        }

        v21 = [a1 uniqueName];
        v22 = MapsSuggestionsLoggingIsVerbose();
        v23 = &stru_1F444C108;
        if (v22)
        {
          v35 = [(__CFString *)v16 serializedBase64String];
          v23 = v35;
        }

        *buf = 136316162;
        *&buf[4] = "ADDDEL";
        v51 = 2112;
        v52 = v21;
        v53 = 2048;
        v54 = v16;
        v55 = 2112;
        v56 = v23;
        v57 = 2112;
        v58 = v16;
        _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_DEBUG, "{MSgDebug} %s by OBJECT{%@} {%p:%@}:\n%@", buf, 0x34u);
        if (v22)
        {
        }
      }

      else if ([v8 containsObject:v16])
      {
        v20 = GEOFindOrCreateLog();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_53;
        }

        v21 = [a1 uniqueName];
        v24 = MapsSuggestionsLoggingIsVerbose();
        v25 = &stru_1F444C108;
        if (v24)
        {
          v34 = [(__CFString *)v16 serializedBase64String];
          v25 = v34;
        }

        *buf = 136316162;
        *&buf[4] = "SKIPPED";
        v51 = 2112;
        v52 = v21;
        v53 = 2048;
        v54 = v16;
        v55 = 2112;
        v56 = v25;
        v57 = 2112;
        v58 = v16;
        _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_DEBUG, "{MSgDebug} %s by OBJECT{%@} {%p:%@}:\n%@", buf, 0x34u);
        if (v24)
        {
        }
      }

      else if ([*(a1 + 24) preFiltersKept:v16])
      {
        [v8 addObject:v16];
        GEOFindOrCreateLog();
        v20 = ++v39;
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_53;
        }

        v21 = [a1 uniqueName];
        v26 = MapsSuggestionsLoggingIsVerbose();
        v27 = &stru_1F444C108;
        if (v26)
        {
          v32 = [(__CFString *)v16 serializedBase64String];
          v27 = v32;
        }

        *buf = 136316162;
        *&buf[4] = "ADDED";
        v51 = 2112;
        v52 = v21;
        v53 = 2048;
        v54 = v16;
        v55 = 2112;
        v56 = v27;
        v57 = 2112;
        v58 = v16;
        _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_DEBUG, "{MSgDebug} %s by OBJECT{%@} {%p:%@}:\n%@", buf, 0x34u);
        if (v26)
        {
        }
      }

      else
      {
        v20 = GEOFindOrCreateLog();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_53;
        }

        v21 = [*(a1 + 24) uniqueName];
        v28 = MapsSuggestionsLoggingIsVerbose();
        v29 = &stru_1F444C108;
        if (v28)
        {
          v33 = [(__CFString *)v16 serializedBase64String];
          v29 = v33;
        }

        *buf = 136316162;
        *&buf[4] = "UNKEPT";
        v51 = 2112;
        v52 = v21;
        v53 = 2048;
        v54 = v16;
        v55 = 2112;
        v56 = v29;
        v57 = 2112;
        v58 = v16;
        _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_DEBUG, "{MSgDebug} %s by OBJECT{%@} {%p:%@}:\n%@", buf, 0x34u);
        if (v28)
        {
        }
      }

LABEL_53:
    }

    v14 = [(__CFString *)obj countByEnumeratingWithState:&v41 objects:v59 count:16];
  }

  while (v14);
LABEL_61:

  [(MapsSuggestionsManager *)a1 _updateResult];
LABEL_62:

LABEL_63:
  return v39;
}

- (unint64_t)addOrUpdateSuggestionEntries:(id)a3 source:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v30 = v7;
    v31 = 1024;
    LODWORD(v32) = [v6 count];
    _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "addOrUpdate from SOURCE{%@} with %u entries", buf, 0x12u);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v10)
  {
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v25 + 1) + 8 * v12++) setDeleted:0];
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v10);
  }

  v13 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = [(MapsSuggestionsManager *)self uniqueName];
    *buf = 138412546;
    v30 = v14;
    v31 = 2080;
    v32 = "addOrUpdateSuggestionEntries";
    _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v15 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v15, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "addOrUpdateSuggestionEntries", "", buf, 2u);
  }

  objc_initWeak(buf, self);
  storageQueue = self->_storageQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__MapsSuggestionsManager_addOrUpdateSuggestionEntries_source___block_invoke;
  block[3] = &unk_1E81F5AD8;
  objc_copyWeak(&v24, buf);
  v17 = v7;
  v22 = v17;
  v18 = v9;
  v23 = v18;
  dispatch_async(storageQueue, block);
  v19 = [v18 count];

  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);

  return v19;
}

void __62__MapsSuggestionsManager_addOrUpdateSuggestionEntries_source___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v19 = WeakRetained;
  if (WeakRetained)
  {
    v23 = a1;
    v18 = [*(WeakRetained + 9) objectForKeyedSubscript:*(a1 + 32)];
    if ([v18 count])
    {
      v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v18, "count")}];
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      obj = v18;
      v3 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v3)
      {
        v22 = *v29;
        do
        {
          for (i = 0; i != v3; ++i)
          {
            if (*v29 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v5 = *(*(&v28 + 1) + 8 * i);
            v24 = 0u;
            v25 = 0u;
            v26 = 0u;
            v27 = 0u;
            v6 = *(v23 + 40);
            v7 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v7)
            {
              v8 = *v25;
              while (2)
              {
                for (j = 0; j != v7; ++j)
                {
                  if (*v25 != v8)
                  {
                    objc_enumerationMutation(v6);
                  }

                  v10 = *(*(&v24 + 1) + 8 * j);
                  v11 = [v5 type];
                  if (v11 == [v10 type])
                  {
                    v12 = [v5 uniqueIdentifier];
                    v13 = [v10 uniqueIdentifier];
                    v14 = [v12 isEqualToString:v13];

                    if (v14)
                    {

                      goto LABEL_19;
                    }
                  }
                }

                v7 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
                if (v7)
                {
                  continue;
                }

                break;
              }
            }

            [v20 addObject:v5];
LABEL_19:
            ;
          }

          v3 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v3);
      }

      if ([v20 count])
      {
        [(MapsSuggestionsManager *)v19 _sq_deleteEntries:v20 source:*(v23 + 32)];
      }
    }

    if ([*(v23 + 40) count])
    {
      [(MapsSuggestionsManager *)v19 _addOrUpdateSuggestionEntries:*(v23 + 32) source:?];
    }

    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = [(dispatch_queue_t *)v19 uniqueName];
      *buf = 138412546;
      v35 = v16;
      v36 = 2080;
      *v37 = "addOrUpdateSuggestionEntries";
      _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
    }

    v17 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "addOrUpdateSuggestionEntries", "", buf, 2u);
    }
  }

  else
  {
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v35 = "MapsSuggestionsManager.mm";
      v36 = 1026;
      *v37 = 1140;
      *&v37[4] = 2082;
      *&v37[6] = "[MapsSuggestionsManager addOrUpdateSuggestionEntries:source:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v17, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v18 = v17;
  }
}

- (void)_sq_deleteEntries:(void *)a3 source:
{
  v38 = *MEMORY[0x1E69E9840];
  v23 = a2;
  v6 = a3;
  v24 = a1;
  if (a1)
  {
    v22 = v6;
    if ([v6 length])
    {
      if (v23)
      {
        dispatch_assert_queue_V2(a1[2]);
        v7 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v8 = [(dispatch_queue_t *)a1 uniqueName];
          *buf = 138412546;
          *&buf[4] = v8;
          v31 = 2080;
          v32 = "deleteEntries";
          _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
        }

        v9 = GEOFindOrCreateLog();
        if (os_signpost_enabled(v9))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C5126000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "deleteEntries", "", buf, 2u);
        }

        if ([v23 count])
        {
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          obj = v23;
          v10 = [obj countByEnumeratingWithState:&v26 objects:v37 count:16];
          if (v10)
          {
            v11 = *v27;
            do
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v27 != v11)
                {
                  objc_enumerationMutation(obj);
                }

                v13 = *(*(&v26 + 1) + 8 * i);
                v14 = GEOFindOrCreateLog();
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
                {
                  v15 = [(dispatch_queue_t *)v24 uniqueName];
                  IsVerbose = MapsSuggestionsLoggingIsVerbose();
                  v17 = &stru_1F444C108;
                  if (IsVerbose)
                  {
                    v3 = [v13 serializedBase64String];
                    v17 = v3;
                  }

                  *buf = 138413058;
                  *&buf[4] = v15;
                  v31 = 2048;
                  v32 = v13;
                  v33 = 2112;
                  v34 = v17;
                  v35 = 2112;
                  v36 = v13;
                  _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_DEBUG, "{MSgDebug} DELETED by OBJECT{%@} {%p:%@}:\n%@", buf, 0x2Au);
                  if (IsVerbose)
                  {
                  }
                }

                [v13 setDeleted:1];
              }

              v10 = [obj countByEnumeratingWithState:&v26 objects:v37 count:16];
            }

            while (v10);
          }

          [(MapsSuggestionsManager *)v24 _addOrUpdateSuggestionEntries:v22 source:?];
          v18 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            v19 = [(dispatch_queue_t *)v24 uniqueName];
            *buf = 138412546;
            *&buf[4] = v19;
            v31 = 2080;
            v32 = "deleteEntries";
            _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
          }

          GEOFindOrCreateLog();
          objc_claimAutoreleasedReturnValue();
          [MapsSuggestionsManager _sq_deleteEntries:source:];
        }

        else
        {
          v20 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            v21 = [(dispatch_queue_t *)v24 uniqueName];
            *buf = 138412546;
            *&buf[4] = v21;
            v31 = 2080;
            v32 = "deleteEntries";
            _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
          }

          GEOFindOrCreateLog();
          objc_claimAutoreleasedReturnValue();
          [MapsSuggestionsManager _sq_deleteEntries:source:];
        }
      }

      else
      {
        GEOFindOrCreateLog();
        objc_claimAutoreleasedReturnValue();
        [MapsSuggestionsManager _sq_deleteEntries:source:];
      }
    }

    else
    {
      GEOFindOrCreateLog();
      objc_claimAutoreleasedReturnValue();
      [MapsSuggestionsManager _sq_deleteEntries:source:];
    }

    v6 = v22;
  }
}

- (void)removeEntry:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsManager.mm";
      v22 = 1024;
      v23 = 1181;
      v24 = 2082;
      v25 = "[MapsSuggestionsManager removeEntry:]";
      v26 = 2082;
      v27 = "nil == (entry)";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a suggestion entry";
      v13 = v11;
      v14 = 38;
LABEL_21:
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
    }

LABEL_22:

    goto LABEL_23;
  }

  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v21 = v4;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "REMOVE %@", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_storageQueue);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_storage;
  v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v7)
  {

    goto LABEL_19;
  }

  v8 = 0;
  v9 = *v16;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v8 = v8 || [(MapsSuggestionsManager *)self _removeEntry:v4 sourceName:*(*(&v15 + 1) + 8 * i)];
    }

    v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  }

  while (v7);

  if (!v8)
  {
LABEL_19:
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v4;
      v12 = "Could not find entry %@";
      v13 = v11;
      v14 = 12;
      goto LABEL_21;
    }

    goto LABEL_22;
  }

LABEL_23:
}

- (BOOL)_removeEntry:(void *)a3 sourceName:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!a1)
  {
    goto LABEL_10;
  }

  if (!v5)
  {
    v12 = GEOFindOrCreateLog();
    [MapsSuggestionsManager _removeEntry:v12 sourceName:?];
LABEL_10:
    v10 = 0;
    goto LABEL_7;
  }

  if (![v6 length])
  {
    v13 = GEOFindOrCreateLog();
    [MapsSuggestionsManager _removeEntry:v13 sourceName:?];
    goto LABEL_10;
  }

  dispatch_assert_queue_V2(*(a1 + 16));
  v8 = [*(a1 + 72) objectForKeyedSubscript:v7];
  v9 = [v8 indexOfObjectIdenticalTo:v5];
  v10 = v9 != 0x7FFFFFFFFFFFFFFFLL;
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v8 removeObjectAtIndex:v9];
  }

LABEL_7:
  return v10;
}

- (void)removeEntry:(void *)a3 sourceName:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    if (v5)
    {
      if ([v6 length])
      {
        objc_initWeak(&location, a1);
        v8 = a1[2];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __49__MapsSuggestionsManager_removeEntry_sourceName___block_invoke;
        v11[3] = &unk_1E81F5AD8;
        objc_copyWeak(&v14, &location);
        v12 = v5;
        v13 = v7;
        dispatch_async(v8, v11);

        objc_destroyWeak(&v14);
        objc_destroyWeak(&location);
      }

      else
      {
        v10 = GEOFindOrCreateLog();
        [MapsSuggestionsManager removeEntry:v10 sourceName:?];
      }
    }

    else
    {
      v9 = GEOFindOrCreateLog();
      [MapsSuggestionsManager removeEntry:v9 sourceName:?];
    }
  }
}

void __49__MapsSuggestionsManager_removeEntry_sourceName___block_invoke(void **a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsManager *)WeakRetained _removeEntry:a1[5] sourceName:?];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsManager.mm";
      v7 = 1026;
      v8 = 1222;
      v9 = 2082;
      v10 = "[MapsSuggestionsManager removeEntry:sourceName:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

void __48__MapsSuggestionsManager__deleteEntries_source___block_invoke(void **a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsManager *)WeakRetained _sq_deleteEntries:a1[5] source:?];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsManager.mm";
      v7 = 1026;
      v8 = 1232;
      v9 = 2082;
      v10 = "[MapsSuggestionsManager _deleteEntries:source:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

- (void)trackerRefreshedETAsUntil:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  etaValidUntil = self->_etaValidUntil;
  self->_etaValidUntil = v4;

  [(MapsSuggestionsCanKicker *)self->_wipeStaleETAWiper kickCanByTime:MapsSuggestionsSecondsTo(v6)];
}

void __52__MapsSuggestionsManager_setTitleFormatter_forType___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[5] setTitleFormatter:*(a1 + 32) forType:*(a1 + 48)];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsManager.mm";
      v7 = 1026;
      v8 = 1280;
      v9 = 2082;
      v10 = "[MapsSuggestionsManager setTitleFormatter:forType:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

- (char)removeEntry:(id)a3 behavior:(int64_t)a4 handler:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (!v8)
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v23 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsManager.mm";
      v24 = 1024;
      *v25 = 1292;
      *&v25[4] = 2082;
      *&v25[6] = "[MapsSuggestionsManager removeEntry:behavior:handler:]";
      *&v25[14] = 2082;
      *&v25[16] = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. entry cannot be nil", buf, 0x26u);
    }

    goto LABEL_15;
  }

  if (!v9)
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v23 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsManager.mm";
      v24 = 1024;
      *v25 = 1293;
      *&v25[4] = 2082;
      *&v25[6] = "[MapsSuggestionsManager removeEntry:behavior:handler:]";
      *&v25[14] = 2082;
      *&v25[16] = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. handler cannot be nil", buf, 0x26u);
    }

    goto LABEL_15;
  }

  v11 = [v8 availableRemovalBehaviors];
  v12 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = NSStringFromMapsSuggestionsRemovalBehavior(a4);
    *buf = 136315650;
    v23 = "[MapsSuggestionsManager removeEntry:behavior:handler:]";
    v24 = 2112;
    *v25 = v8;
    *&v25[8] = 2112;
    *&v25[10] = v13;
    _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_DEBUG, "%s User removed Entry %@ (using %@)", buf, 0x20u);
  }

  if ((v11 & a4) == 0)
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v23 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsManager.mm";
      v24 = 1024;
      *v25 = 1297;
      *&v25[4] = 2082;
      *&v25[6] = "[MapsSuggestionsManager removeEntry:behavior:handler:]";
      *&v25[14] = 2082;
      *&v25[16] = "0 == (supportedRemovalBehavior & behavior)";
      _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requested Suppression behavior is not supported by the entry", buf, 0x26u);
    }

LABEL_15:

    v15 = 0;
    goto LABEL_16;
  }

  objc_initWeak(buf, self);
  gatheringQueue = self->_gatheringQueue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __55__MapsSuggestionsManager_removeEntry_behavior_handler___block_invoke;
  v18[3] = &unk_1E81F5BA0;
  objc_copyWeak(v21, buf);
  v19 = v8;
  v21[1] = a4;
  v20 = v10;
  dispatch_async(gatheringQueue, v18);

  objc_destroyWeak(v21);
  objc_destroyWeak(buf);
  v15 = 1;
LABEL_16:

  return v15;
}

void __55__MapsSuggestionsManager_removeEntry_behavior_handler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 8);
    v5 = *(a1 + 32);
    v6 = *(a1 + 56);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__MapsSuggestionsManager_removeEntry_behavior_handler___block_invoke_219;
    v8[3] = &unk_1E81F5B00;
    objc_copyWeak(&v11, (a1 + 48));
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    if (![v4 removeEntry:v5 behavior:v6 handler:v8])
    {
      (*(*(a1 + 40) + 16))();
    }

    objc_destroyWeak(&v11);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v13 = "MapsSuggestionsManager.mm";
      v14 = 1026;
      v15 = 1304;
      v16 = 2082;
      v17 = "[MapsSuggestionsManager removeEntry:behavior:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __55__MapsSuggestionsManager_removeEntry_behavior_handler___block_invoke_219(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v11[0] = *(a1 + 32);
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v5 = [*(a1 + 32) originatingSourceName];
    [(MapsSuggestionsManager *)WeakRetained _deleteEntries:v4 source:v5];

    [WeakRetained hintRefreshOfType:{objc_msgSend(*(a1 + 32), "type")}];
    operator new();
  }

  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    buf[0] = 136446722;
    *&buf[1] = "MapsSuggestionsManager.mm";
    v7 = 1026;
    v8 = 1307;
    v9 = 2082;
    v10 = "[MapsSuggestionsManager removeEntry:behavior:handler:]_block_invoke";
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: removedStrongSelf went away in %{public}s", buf, 0x1Cu);
  }
}

- (void)feedbackForEntry:(id)a3 action:(int64_t)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = NSStringFromMapsSuggestionsEntryEngagement(a4);
      *buf = 136315650;
      v15 = "[MapsSuggestionsManager feedbackForEntry:action:]";
      v16 = 2112;
      *v17 = v8;
      *&v17[8] = 2112;
      *&v17[10] = v6;
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "%s UserAction %@ on entry %@", buf, 0x20u);
    }

    objc_initWeak(buf, self);
    gatheringQueue = self->_gatheringQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__MapsSuggestionsManager_feedbackForEntry_action___block_invoke;
    block[3] = &unk_1E81F58A8;
    objc_copyWeak(v13, buf);
    v12 = v6;
    v13[1] = a4;
    dispatch_async(gatheringQueue, block);

    objc_destroyWeak(v13);
    objc_destroyWeak(buf);
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsManager.mm";
      v16 = 1024;
      *v17 = 1328;
      *&v17[4] = 2082;
      *&v17[6] = "[MapsSuggestionsManager feedbackForEntry:action:]";
      *&v17[14] = 2082;
      *&v17[16] = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. entry cannot be nil", buf, 0x26u);
    }
  }
}

void __50__MapsSuggestionsManager_feedbackForEntry_action___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[8] feedbackForEntry:*(a1 + 32) action:*(a1 + 48)];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsManager.mm";
      v7 = 1026;
      v8 = 1332;
      v9 = 2082;
      v10 = "[MapsSuggestionsManager feedbackForEntry:action:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

- (void)feedbackForMapItem:(id)a3 action:(int64_t)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [v6 name];
      *buf = 136315394;
      v15 = "[MapsSuggestionsManager feedbackForMapItem:action:]";
      v16 = 2112;
      *v17 = v8;
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "%s:%@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    gatheringQueue = self->_gatheringQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__MapsSuggestionsManager_feedbackForMapItem_action___block_invoke;
    block[3] = &unk_1E81F58A8;
    objc_copyWeak(v13, buf);
    v12 = v6;
    v13[1] = a4;
    dispatch_async(gatheringQueue, block);

    objc_destroyWeak(v13);
    objc_destroyWeak(buf);
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsManager.mm";
      v16 = 1024;
      *v17 = 1342;
      *&v17[4] = 2082;
      *&v17[6] = "[MapsSuggestionsManager feedbackForMapItem:action:]";
      v18 = 2082;
      v19 = "nil == (mapItem)";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires mapItem", buf, 0x26u);
    }
  }
}

void __52__MapsSuggestionsManager_feedbackForMapItem_action___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[8] feedbackForMapItem:*(a1 + 32) action:*(a1 + 48)];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsManager.mm";
      v7 = 1026;
      v8 = 1346;
      v9 = 2082;
      v10 = "[MapsSuggestionsManager feedbackForMapItem:action:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

- (void)feedbackForContact:(id)a3 action:(int64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v14 = "[MapsSuggestionsManager feedbackForContact:action:]";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    gatheringQueue = self->_gatheringQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__MapsSuggestionsManager_feedbackForContact_action___block_invoke;
    block[3] = &unk_1E81F58A8;
    objc_copyWeak(v12, buf);
    v11 = v6;
    v12[1] = a4;
    dispatch_async(gatheringQueue, block);

    objc_destroyWeak(v12);
    objc_destroyWeak(buf);
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v14 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsManager.mm";
      v15 = 1024;
      v16 = 1355;
      v17 = 2082;
      v18 = "[MapsSuggestionsManager feedbackForContact:action:]";
      v19 = 2082;
      v20 = "nil == (contact)";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires contact", buf, 0x26u);
    }
  }
}

void __52__MapsSuggestionsManager_feedbackForContact_action___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[8] feedbackForContact:*(a1 + 32) action:*(a1 + 48)];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsManager.mm";
      v7 = 1026;
      v8 = 1359;
      v9 = 2082;
      v10 = "[MapsSuggestionsManager feedbackForContact:action:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

- (void)didUpdateLocation:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  gatheringQueue = self->_gatheringQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MapsSuggestionsManager_didUpdateLocation___block_invoke;
  block[3] = &unk_1E81F5970;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(gatheringQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __44__MapsSuggestionsManager_didUpdateLocation___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsManager *)WeakRetained _updateCurrentLocation:?];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsManager.mm";
      v7 = 1026;
      v8 = 1372;
      v9 = 2082;
      v10 = "[MapsSuggestionsManager didUpdateLocation:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

- (void)didLoseLocationPermission
{
  objc_initWeak(&location, self);
  gatheringQueue = self->_gatheringQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__MapsSuggestionsManager_didLoseLocationPermission__block_invoke;
  v4[3] = &unk_1E81F5208;
  objc_copyWeak(&v5, &location);
  dispatch_async(gatheringQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __51__MapsSuggestionsManager_didLoseLocationPermission__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[5] clearLocationAndETAs];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsManager.mm";
      v6 = 1026;
      v7 = 1381;
      v8 = 2082;
      v9 = "[MapsSuggestionsManager didLoseLocationPermission]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

- (id)storage
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  storageQueue = self->_storageQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__MapsSuggestionsManager_storage__block_invoke;
  v5[3] = &unk_1E81F5BC8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(storageQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __33__MapsSuggestionsManager_storage__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)storageForSource:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  storageQueue = self->_storageQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__MapsSuggestionsManager_storageForSource___block_invoke;
  block[3] = &unk_1E81F5B28;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(storageQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __43__MapsSuggestionsManager_storageForSource___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  v6 = [*(a1 + 40) uniqueName];
  v3 = [v2 objectForKeyedSubscript:?];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)sinks
{
  v3 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[MapsSuggestionsObservers count](self->_sinks, "count")}];
  sinks = self->_sinks;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __31__MapsSuggestionsManager_sinks__block_invoke;
  v8[3] = &unk_1E81F5BF0;
  v5 = v3;
  v9 = v5;
  [(MapsSuggestionsObservers *)sinks synchronouslyCallBlock:v8];
  v6 = [v5 copy];

  return v6;
}

- (void)awaitGatheringQueue
{
  dispatch_barrier_sync(self->_gatheringQueue, &__block_literal_global_4);
  compositeSource = self->_compositeSource;

  [(MapsSuggestionsCompositeSource *)compositeSource test_awaitQueue];
}

- (MapsSuggestionsLocationUpdater)locationUpdater
{
  WeakRetained = objc_loadWeakRetained(&self->_locationUpdater);

  return WeakRetained;
}

- (void)_updateAllSourcesOnceWithHandler:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    v5 = *(a1 + 8);
    objc_initWeak(&location, a1);
    v6 = *(a1 + 16);
    OUTLINED_FUNCTION_2_3();
    v8[1] = 3221225472;
    v8[2] = __59__MapsSuggestionsManager__updateAllSourcesOnceWithHandler___block_invoke;
    v8[3] = &unk_1E81F58D0;
    v9 = v5;
    v7 = v5;
    objc_copyWeak((v2 + 48), &location);
    v10 = v4;
    dispatch_async(v6, v8);

    objc_destroyWeak((v2 + 48));
    objc_destroyWeak(&location);
  }
}

- (void)_deleteEntries:(void *)a3 source:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v8 = a1[2];
    OUTLINED_FUNCTION_2_3();
    v9[1] = 3221225472;
    v9[2] = __48__MapsSuggestionsManager__deleteEntries_source___block_invoke;
    v9[3] = &unk_1E81F5AD8;
    objc_copyWeak((v3 + 48), &location);
    v10 = v6;
    v11 = v7;
    dispatch_async(v8, v9);

    objc_destroyWeak((v3 + 48));
    objc_destroyWeak(&location);
  }
}

- (void)setTitleFormatter:(uint64_t)a3 forType:
{
  v6 = a2;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v7 = a1[2];
    OUTLINED_FUNCTION_2_3();
    v8[1] = 3221225472;
    v8[2] = __52__MapsSuggestionsManager_setTitleFormatter_forType___block_invoke;
    v8[3] = &unk_1E81F58A8;
    objc_copyWeak((v3 + 40), &location);
    v9 = v6;
    v10 = a3;
    dispatch_async(v7, v8);

    objc_destroyWeak((v3 + 40));
    objc_destroyWeak(&location);
  }
}

- (void)_updateCurrentLocation:(NSObject *)a1 .cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_impl(&dword_1C5126000, a1, OS_LOG_TYPE_DEBUG, "No Sinks are watching.", v2, 2u);
  }
}

- (void)_updateResult
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_9_0(&dword_1C5126000, v4, v5, "At %{public}s:%d, %{public}s forbids: %{public}s. Cannot do anything without a Strategy.", v6, v7, v8, v9, 2u);
  }

  *a2 = 0;
  OUTLINED_FUNCTION_10();
}

- (void)_filteredEntries:(NSObject *)a1 forSink:limit:.cold.1(NSObject *a1)
{
  if (OUTLINED_FUNCTION_11_0(a1, *MEMORY[0x1E69E9840]))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1(&dword_1C5126000, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires limit > 0", v4, v5, v6, v7, 2u);
  }
}

- (void)_filteredEntries:(NSObject *)a1 forSink:limit:.cold.2(NSObject *a1)
{
  if (OUTLINED_FUNCTION_11_0(a1, *MEMORY[0x1E69E9840]))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1(&dword_1C5126000, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires sinkName", v4, v5, v6, v7, 2u);
  }
}

- (void)_sink:allowsEntry:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  if (OUTLINED_FUNCTION_6_1(v1))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_9_0(&dword_1C5126000, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires entry", v4, v5, v6, v7, 2u);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_10();
}

- (void)_sink:allowsEntry:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  if (OUTLINED_FUNCTION_6_1(v1))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_9_0(&dword_1C5126000, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires sinkName", v4, v5, v6, v7, 2u);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_10();
}

- (void)_loadStorageFromFile:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_11_0(v2, *MEMORY[0x1E69E9840]))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_9(&dword_1C5126000, v3, v4, "At %{public}s:%d, %{public}s forbids: %{public}s. Needs a file path", v5, v6, v7, v8, 2u);
  }

  *v0 = v1;
}

- (void)_addOrUpdateSuggestionEntries:source:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  if (OUTLINED_FUNCTION_6_1(v1))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_9_0(&dword_1C5126000, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires at least one entry", v4, v5, v6, v7, 2u);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_10();
}

- (void)_addOrUpdateSuggestionEntries:source:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  if (OUTLINED_FUNCTION_6_1(v1))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_9_0(&dword_1C5126000, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a list of entries.", v4, v5, v6, v7, 2u);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_10();
}

- (void)_addOrUpdateSuggestionEntries:source:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  if (OUTLINED_FUNCTION_6_1(v1))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_9_0(&dword_1C5126000, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a source name.", v4, v5, v6, v7, 2u);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_10();
}

- (void)_sq_deleteEntries:source:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (os_signpost_enabled(v2))
  {
    OUTLINED_FUNCTION_7_0();
    _os_signpost_emit_with_name_impl(v3, v1, OS_SIGNPOST_INTERVAL_END, v4, v5, v6, v7, 2u);
  }

  *v0 = v1;
}

- (void)_sq_deleteEntries:source:.cold.3()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_11_0(v2, *MEMORY[0x1E69E9840]))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_9(&dword_1C5126000, v3, v4, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a list of entries", v5, v6, v7, v8, 2u);
  }

  *v0 = v1;
}

- (void)_sq_deleteEntries:source:.cold.4()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_11_0(v2, *MEMORY[0x1E69E9840]))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_9(&dword_1C5126000, v3, v4, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a source name", v5, v6, v7, v8, 2u);
  }

  *v0 = v1;
}

- (void)_removeEntry:(NSObject *)a1 sourceName:.cold.1(NSObject *a1)
{
  if (OUTLINED_FUNCTION_11_0(a1, *MEMORY[0x1E69E9840]))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1(&dword_1C5126000, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a source name", v4, v5, v6, v7, 2u);
  }
}

- (void)_removeEntry:(NSObject *)a1 sourceName:.cold.2(NSObject *a1)
{
  if (OUTLINED_FUNCTION_11_0(a1, *MEMORY[0x1E69E9840]))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1(&dword_1C5126000, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a suggestion entry", v4, v5, v6, v7, 2u);
  }
}

- (void)removeEntry:(NSObject *)a1 sourceName:.cold.1(NSObject *a1)
{
  if (OUTLINED_FUNCTION_11_0(a1, *MEMORY[0x1E69E9840]))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1(&dword_1C5126000, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a source name", v4, v5, v6, v7, 2u);
  }
}

- (void)removeEntry:(NSObject *)a1 sourceName:.cold.2(NSObject *a1)
{
  if (OUTLINED_FUNCTION_11_0(a1, *MEMORY[0x1E69E9840]))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1(&dword_1C5126000, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a suggestion entry", v4, v5, v6, v7, 2u);
  }
}

@end