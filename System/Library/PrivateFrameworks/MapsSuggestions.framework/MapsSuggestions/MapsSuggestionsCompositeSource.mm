@interface MapsSuggestionsCompositeSource
- (BOOL)addChildSource:(id)source;
- (BOOL)canProduceEntriesOfType:(int64_t)type;
- (BOOL)removeChildSource:(id)source;
- (MapsSuggestionsCompositeSource)initWithDelegate:(id)delegate name:(id)name;
- (char)removeEntry:(id)entry behavior:(int64_t)behavior handler:(id)handler;
- (double)_suppressionTimeForEntry:(int)entry snoozeOnly:;
- (double)_updateChildSource:(void *)source handler:;
- (double)test_suppressionDurationForBehavior:(int64_t)behavior type:(int64_t)type;
- (double)updateSuggestionEntriesOfType:(int64_t)type handler:(id)handler;
- (double)updateSuggestionEntriesWithHandler:(id)handler;
- (id).cxx_construct;
- (id)children;
- (id)initFromResourceDepot:(id)depot name:(id)name;
- (id)test_dateUntilSuppressedEntry:(id)entry;
- (uint64_t)_shouldUpdateSource:(uint64_t)source;
- (unint64_t)addOrUpdateSuggestionEntries:(id)entries source:(id)source;
- (void)_initUpdateTimerIfNecessary;
- (void)_scheduleNextUpdateChildSourcesWithin:(uint64_t)within;
- (void)_startUpdateChildSources;
- (void)_stopUpdateChildSources;
- (void)_updateChildSourcesForType:(void *)type handler:;
- (void)_updateChildSourcesForceAll:(void *)all handler:;
- (void)dealloc;
- (void)feedbackForContact:(id)contact action:(int64_t)action;
- (void)feedbackForEntry:(id)entry action:(int64_t)action;
- (void)feedbackForMapItem:(id)item action:(int64_t)action;
- (void)start;
- (void)stop;
- (void)test_resetSuppressions;
@end

@implementation MapsSuggestionsCompositeSource

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  return self;
}

- (void)start
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "start", buf, 2u);
  }

  [(MapsSuggestionsSuppressor *)self->_suppressor purge];
  objc_initWeak(buf, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__MapsSuggestionsCompositeSource_start__block_invoke;
  block[3] = &unk_1E81F5208;
  objc_copyWeak(&v5, buf);
  dispatch_async(self->_queue._innerQueue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
}

- (void)_initUpdateTimerIfNecessary
{
  if (self)
  {
    dispatch_assert_queue_V2(self[5]);
    if (!self[7])
    {
      v2 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "Re-initializing the _updateTimer", buf, 2u);
      }

      objc_initWeak(buf, self);
      v3 = self[5];
      v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v3);
      v5 = self[7];
      self[7] = v4;

      dispatch_source_set_timer(self[7], 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      v6 = self[7];
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __61__MapsSuggestionsCompositeSource__initUpdateTimerIfNecessary__block_invoke;
      handler[3] = &unk_1E81F5208;
      objc_copyWeak(&v8, buf);
      dispatch_source_set_event_handler(v6, handler);
      dispatch_resume(self[7]);
      objc_destroyWeak(&v8);
      objc_destroyWeak(buf);
    }
  }
}

void __39__MapsSuggestionsCompositeSource_start__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsCompositeSource *)WeakRetained _startUpdateChildSources];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsCompositeSource.mm";
      v6 = 1026;
      v7 = 392;
      v8 = 2082;
      v9 = "[MapsSuggestionsCompositeSource start]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

- (void)_startUpdateChildSources
{
  dispatch_assert_queue_V2(*(self + 40));
  *a2 = *MEMORY[0x1E69A1B08];
  v5 = GEOFindOrCreateLog();
  *a3 = v5;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "_startUpdateChildSources", v6, 2u);
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
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__MapsSuggestionsCompositeSource_stop__block_invoke;
  block[3] = &unk_1E81F5208;
  objc_copyWeak(&v5, buf);
  dispatch_async(self->_queue._innerQueue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
}

void __38__MapsSuggestionsCompositeSource_stop__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsCompositeSource *)WeakRetained _stopUpdateChildSources];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsCompositeSource.mm";
      v6 = 1026;
      v7 = 403;
      v8 = 2082;
      v9 = "[MapsSuggestionsCompositeSource stop]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

- (void)_stopUpdateChildSources
{
  v24 = *MEMORY[0x1E69E9840];
  if (self)
  {
    *(self + 80) = 0;
    v2 = *(self + 56);
    if (v2)
    {
      dispatch_source_set_timer(v2, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_source_cancel(*(self + 56));
      v3 = *(self + 56);
      *(self + 56) = 0;

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      obj = *(self + 24);
      v4 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v4)
      {
        v5 = *v18;
        do
        {
          for (i = 0; i != v4; ++i)
          {
            if (*v18 != v5)
            {
              objc_enumerationMutation(obj);
            }

            v7 = *(*(&v17 + 1) + 8 * i);
            v8 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
            {
              uniqueName = [v7 uniqueName];
              *buf = 138412290;
              v22 = uniqueName;
              _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "SOURCE{%@} stop", buf, 0xCu);
            }

            v10 = *(self + 72);
            uniqueName2 = [v7 uniqueName];
            v12 = [v10 objectForKeyedSubscript:uniqueName2];
            bOOLValue = [v12 BOOLValue];

            if (bOOLValue)
            {
              [v7 stop];
              v14 = *(self + 72);
              uniqueName3 = [v7 uniqueName];
              [v14 setObject:MEMORY[0x1E695E110] forKeyedSubscript:uniqueName3];
            }
          }

          v4 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
        }

        while (v4);
      }
    }
  }
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  [(MapsSuggestionsCompositeSource *)self _stopUpdateChildSources];
  [(NSMutableSet *)self->_sources removeAllObjects];
  sources = self->_sources;
  self->_sources = 0;

  nextUpdateTimes = self->_nextUpdateTimes;
  self->_nextUpdateTimes = 0;

  if (self->_updateTimer)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v8 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCompositeSource.mm";
      v9 = 1024;
      v10 = 379;
      v11 = 2082;
      v12 = "[MapsSuggestionsCompositeSource dealloc]";
      v13 = 2082;
      v14 = "_updateTimer != nil";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. The timer is still there. Are you sure -stop was called before?", buf, 0x26u);
    }
  }

  v6.receiver = self;
  v6.super_class = MapsSuggestionsCompositeSource;
  [(MapsSuggestionsCompositeSource *)&v6 dealloc];
}

- (uint64_t)_shouldUpdateSource:(uint64_t)source
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!source)
  {
    v8 = 0;
    goto LABEL_13;
  }

  if (!v3)
  {
    v9 = GEOFindOrCreateLog();
    [(MapsSuggestionsCompositeSource *)v9 _shouldUpdateSource:buf, &v14];
    v7 = *buf;
    v8 = v14;
    goto LABEL_12;
  }

  dispatch_assert_queue_V2(*(source + 40));
  v5 = *(source + 32);
  uniqueName = [v4 uniqueName];
  v7 = [v5 objectForKeyedSubscript:uniqueName];

  if (!v7)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      uniqueName2 = [v4 uniqueName];
      [(MapsSuggestionsCompositeSource *)uniqueName2 _shouldUpdateSource:buf, v10];
    }

    goto LABEL_11;
  }

  if (!MapsSuggestionsIsInThePast(v7))
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      uniqueName3 = [v4 uniqueName];
      [(MapsSuggestionsCompositeSource *)uniqueName3 _shouldUpdateSource:buf, v10];
    }

LABEL_11:

    v8 = 0;
    goto LABEL_12;
  }

  v8 = 1;
LABEL_12:

LABEL_13:
  return v8;
}

void __61__MapsSuggestionsCompositeSource__initUpdateTimerIfNecessary__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsCompositeSource *)WeakRetained _updateChildSourcesForceAll:0 handler:?];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsCompositeSource.mm";
      v6 = 1026;
      v7 = 81;
      v8 = 2082;
      v9 = "[MapsSuggestionsCompositeSource _initUpdateTimerIfNecessary]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

- (void)_updateChildSourcesForceAll:(void *)all handler:
{
  v65 = *MEMORY[0x1E69E9840];
  allCopy = all;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 40));
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      uniqueName = [self uniqueName];
      *buf = 138412546;
      *&buf[4] = uniqueName;
      v60 = 2080;
      v61 = "_updateChildSourcesForceAll";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
    }

    v7 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_updateChildSourcesForceAll", "", buf, 2u);
    }

    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = "NO";
      if (a2)
      {
        v9 = "YES";
      }

      *buf = 136315138;
      *&buf[4] = v9;
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "Forcing all? %s", buf, 0xCu);
    }

    if (*(self + 80))
    {
      GEOConfigGetDouble();
      v11 = v10;
      v12 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(*(self + 24), "count")}];
      group = dispatch_group_create();
      v47 = v12;
      v50 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      obj = *(self + 24);
      v13 = [obj countByEnumeratingWithState:&v55 objects:v64 count:16];
      if (v13)
      {
        v14 = "with";
        v15 = *v56;
        if (!allCopy)
        {
          v14 = "without";
        }

        v46 = v14;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v56 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v55 + 1) + 8 * i);
            if ((a2 & 1) != 0 || ([(MapsSuggestionsCompositeSource *)self _shouldUpdateSource:?]& 1) != 0)
            {
              v18 = v50;
              objc_sync_enter(v18);
              uniqueName2 = [v17 uniqueName];
              v20 = [v18 objectForKey:uniqueName2];
              v21 = v20 == 0;

              if (v21)
              {
                uniqueName3 = [v17 uniqueName];
                [v18 setValue:&unk_1F4470F48 forKey:uniqueName3];

                objc_sync_exit(v18);
                dispatch_group_enter(group);
                v25 = GEOFindOrCreateLog();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                {
                  uniqueName4 = [v17 uniqueName];
                  *buf = 138412802;
                  *&buf[4] = uniqueName4;
                  v60 = 2080;
                  v61 = v46;
                  v62 = 2112;
                  v63 = group;
                  _os_log_impl(&dword_1C5126000, v25, OS_LOG_TYPE_DEBUG, "_updateChildSourcesForceAll: SOURCE{%@} %s handler for group %@", buf, 0x20u);
                }

                v27 = v47;
                objc_sync_enter(v27);
                uniqueName5 = [v17 uniqueName];
                [v27 addObject:uniqueName5];

                objc_sync_exit(v27);
                v51[0] = MEMORY[0x1E69E9820];
                v51[1] = 3221225472;
                v51[2] = __70__MapsSuggestionsCompositeSource__updateChildSourcesForceAll_handler___block_invoke;
                v51[3] = &unk_1E81F7000;
                v51[4] = v17;
                v52 = v27;
                v53 = v18;
                v54 = group;
                v29 = [(MapsSuggestionsCompositeSource *)self _updateChildSource:v17 handler:v51];
                if (v29 >= v11)
                {
                  v30 = v11;
                }

                else
                {
                  v30 = v29;
                }

                if (v29 != 0.0)
                {
                  v11 = v30;
                }
              }

              else
              {
                v22 = GEOFindOrCreateLog();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  uniqueName6 = [v17 uniqueName];
                  *buf = 138412290;
                  *&buf[4] = uniqueName6;
                  _os_log_impl(&dword_1C5126000, v22, OS_LOG_TYPE_ERROR, "_updateChildSourcesForceAll: SOURCE{%@} has already been added", buf, 0xCu);
                }

                objc_sync_exit(v18);
              }
            }
          }

          v13 = [obj countByEnumeratingWithState:&v55 objects:v64 count:16];
        }

        while (v13);
      }

      [(MapsSuggestionsCompositeSource *)self _scheduleNextUpdateChildSourcesWithin:v11];
      if (_maxUpdateTimeInNSec(void)::s_onceToken != -1)
      {
        [MapsSuggestionsCompositeSource _updateChildSourcesForceAll:handler:];
      }

      v31 = dispatch_time(0, _maxUpdateTimeInNSec(void)::s_maxUpdateTimeInNSec);
      if (dispatch_group_wait(group, v31))
      {
        if (allCopy)
        {
          allCopy[2]();
        }

        v32 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          uniqueName7 = [self uniqueName];
          *buf = 138412546;
          *&buf[4] = uniqueName7;
          v60 = 2080;
          v61 = "_updateChildSourcesForceAll";
          _os_log_impl(&dword_1C5126000, v32, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", buf, 0x16u);
        }

        v34 = GEOFindOrCreateLog();
        if (os_signpost_enabled(v34))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C5126000, v34, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_updateChildSourcesForceAll", "", buf, 2u);
        }

        v35 = v47;
        objc_sync_enter(v35);
        v36 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          allObjects = [v35 allObjects];
          v38 = [allObjects componentsJoinedByString:{@", "}];
          [(MapsSuggestionsCompositeSource *)v38 _updateChildSourcesForceAll:buf handler:v36, allObjects];
        }

        objc_sync_exit(v35);
      }

      else
      {
        if (allCopy)
        {
          allCopy[2]();
        }

        v43 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          uniqueName8 = [self uniqueName];
          *buf = 138412546;
          *&buf[4] = uniqueName8;
          v60 = 2080;
          v61 = "_updateChildSourcesForceAll";
          _os_log_impl(&dword_1C5126000, v43, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
        }

        GEOFindOrCreateLog();
        objc_claimAutoreleasedReturnValue();
        [MapsSuggestionsCompositeSource _updateChildSourcesForceAll:handler:];
        v35 = *buf;
      }

      v42 = v47;
    }

    else
    {
      v39 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5126000, v39, OS_LOG_TYPE_DEBUG, "Shortcutting. We should not be updating when stopped.", buf, 2u);
      }

      if (allCopy)
      {
        allCopy[2]();
      }

      v40 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        uniqueName9 = [self uniqueName];
        *buf = 138412546;
        *&buf[4] = uniqueName9;
        v60 = 2080;
        v61 = "_updateChildSourcesForceAll";
        _os_log_impl(&dword_1C5126000, v40, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", buf, 0x16u);
      }

      GEOFindOrCreateLog();
      objc_claimAutoreleasedReturnValue();
      [MapsSuggestionsCompositeSource _updateChildSourcesForceAll:handler:];
      v42 = *buf;
    }
  }
}

- (double)_updateChildSource:(void *)source handler:
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  sourceCopy = source;
  if (!self)
  {
    v10 = 0.0;
    goto LABEL_9;
  }

  if (!v5)
  {
    v14 = GEOFindOrCreateLog();
    [(MapsSuggestionsCompositeSource *)v14 _updateChildSource:buf handler:?];
    v11 = v16;
    v10 = *buf;
    goto LABEL_8;
  }

  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [v5 uniqueName];
    *buf = 138412290;
    *&buf[4] = uniqueName;
    _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "SOURCE{%@} update", buf, 0xCu);
  }

  [v5 updateSuggestionEntriesWithHandler:sourceCopy];
  v10 = v9;
  if (v9 != 0.0)
  {
    v11 = MapsSuggestionsNowWithOffset(v9);
    v12 = *(self + 32);
    uniqueName2 = [v5 uniqueName];
    [v12 setObject:v11 forKeyedSubscript:uniqueName2];

LABEL_8:
  }

LABEL_9:

  return v10;
}

void __70__MapsSuggestionsCompositeSource__updateChildSourcesForceAll_handler___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 32) uniqueName];
    v19 = 138412290;
    v20 = v3;
    _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "_updateChildSourcesForceAll: SOURCE{%@} responded", &v19, 0xCu);
  }

  v4 = *(a1 + 40);
  objc_sync_enter(v4);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) uniqueName];
  LOBYTE(v5) = [v5 containsObject:v6];

  if ((v5 & 1) == 0)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) uniqueName];
      v19 = 138412290;
      v20 = v8;
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "❌ Missing Source: %@", &v19, 0xCu);
    }
  }

  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) uniqueName];
  [v9 removeObject:v10];

  objc_sync_exit(v4);
  v11 = *(a1 + 48);
  objc_sync_enter(v11);
  v12 = *(a1 + 48);
  v13 = [*(a1 + 32) uniqueName];
  v14 = [v12 objectForKey:v13];
  LODWORD(v12) = v14 == 0;

  if (v12)
  {
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v18 = [*(a1 + 32) uniqueName];
      v19 = 138412290;
      v20 = v18;
      _os_log_impl(&dword_1C5126000, v17, OS_LOG_TYPE_FAULT, "❌ SOURCE{%@} has already called back", &v19, 0xCu);
    }

    objc_sync_exit(v11);
  }

  else
  {
    v15 = *(a1 + 48);
    v16 = [*(a1 + 32) uniqueName];
    [v15 setValue:0 forKey:v16];

    objc_sync_exit(v11);
    dispatch_group_leave(*(a1 + 56));
  }
}

- (void)_updateChildSourcesForType:(void *)type handler:
{
  v29 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if (self)
  {
    v16 = typeCopy;
    dispatch_assert_queue_V2(*(self + 40));
    if (*(self + 80))
    {
      v6 = dispatch_group_create();
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v7 = *(self + 24);
      v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        v9 = *v22;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v22 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v21 + 1) + 8 * i);
            if ([v11 canProduceEntriesOfType:{a2, v16}])
            {
              dispatch_group_enter(v6);
              v19[0] = MEMORY[0x1E69E9820];
              v19[1] = 3221225472;
              v19[2] = __69__MapsSuggestionsCompositeSource__updateChildSourcesForType_handler___block_invoke;
              v19[3] = &unk_1E81F59C0;
              v20 = v6;
              [(MapsSuggestionsCompositeSource *)self _updateChildSource:v11 handler:v19];
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v8);
      }

      v12 = *(self + 40);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __69__MapsSuggestionsCompositeSource__updateChildSourcesForType_handler___block_invoke_2;
      block[3] = &unk_1E81F62F8;
      block[4] = self;
      v18 = v16;
      dispatch_group_notify(v6, v12, block);
    }

    else
    {
      v13 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_DEBUG, "Shortcutting. We should not be updating when stopped.", buf, 2u);
      }

      if (v16)
      {
        v16[2]();
      }

      v14 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        uniqueName = [self uniqueName];
        *buf = 138412546;
        *&buf[4] = uniqueName;
        v27 = 2080;
        v28 = "_updateChildSourcesForType";
        _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", buf, 0x16u);
      }

      GEOFindOrCreateLog();
      objc_claimAutoreleasedReturnValue();
      [MapsSuggestionsCompositeSource _updateChildSourcesForType:handler:];
      v6 = *buf;
    }

    typeCopy = v16;
  }
}

void __69__MapsSuggestionsCompositeSource__updateChildSourcesForType_handler___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [*(a1 + 32) uniqueName];
    v6 = 138412546;
    v7 = v4;
    v8 = 2080;
    v9 = "_updateChildSourcesForType";
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v6, 0x16u);
  }

  v5 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v6) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_updateChildSourcesForType", "", &v6, 2u);
  }
}

- (id)initFromResourceDepot:(id)depot name:(id)name
{
  v22 = *MEMORY[0x1E69E9840];
  depotCopy = depot;
  nameCopy = name;
  if (!depotCopy)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446978;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCompositeSource.mm";
      v16 = 1024;
      v17 = 324;
      v18 = 2082;
      v19 = "[MapsSuggestionsCompositeSource initFromResourceDepot:name:]";
      v20 = 2082;
      v21 = "nil == (resourceDepot)";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a resource depot to buid!", &v14, 0x26u);
    }

    goto LABEL_11;
  }

  oneSourceDelegate = [depotCopy oneSourceDelegate];

  if (!oneSourceDelegate)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446978;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCompositeSource.mm";
      v16 = 1024;
      v17 = 325;
      v18 = 2082;
      v19 = "[MapsSuggestionsCompositeSource initFromResourceDepot:name:]";
      v20 = 2082;
      v21 = "nil == (resourceDepot.oneSourceDelegate)";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires one SourceDelegate!", &v14, 0x26u);
    }

LABEL_11:

    selfCopy = 0;
    goto LABEL_12;
  }

  oneSourceDelegate2 = [depotCopy oneSourceDelegate];
  v10 = [(MapsSuggestionsCompositeSource *)self initWithDelegate:oneSourceDelegate2 name:nameCopy];

  if (v10)
  {
    [depotCopy setOneSourceDelegate:v10];
  }

  self = v10;
  selfCopy = self;
LABEL_12:

  return selfCopy;
}

- (MapsSuggestionsCompositeSource)initWithDelegate:(id)delegate name:(id)name
{
  delegateCopy = delegate;
  nameCopy = name;
  v25.receiver = self;
  v25.super_class = MapsSuggestionsCompositeSource;
  v8 = [(MapsSuggestionsBaseSource *)&v25 initWithDelegate:delegateCopy name:nameCopy];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    sources = v8->_sources;
    v8->_sources = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    nextUpdateTimes = v8->_nextUpdateTimes;
    v8->_nextUpdateTimes = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    MSg::Queue::Queue(&v23, @"MapsSuggestionsCompositeSourceQueue", v13);
    v14 = v23;
    v23 = 0;
    innerQueue = v8->_queue._innerQueue;
    v8->_queue._innerQueue = v14;

    v16 = v24;
    v24 = 0;
    name = v8->_queue._name;
    v8->_queue._name = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    hasStarted = v8->_hasStarted;
    v8->_hasStarted = v18;

    v20 = objc_alloc_init(MapsSuggestionsSuppressor);
    suppressor = v8->_suppressor;
    v8->_suppressor = v20;
  }

  return v8;
}

- (double)updateSuggestionEntriesWithHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__MapsSuggestionsCompositeSource_updateSuggestionEntriesWithHandler___block_invoke;
  block[3] = &unk_1E81F5190;
  objc_copyWeak(&v10, &location);
  v9 = handlerCopy;
  innerQueue = self->_queue._innerQueue;
  v6 = handlerCopy;
  dispatch_async(innerQueue, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
  return 0.0;
}

void __69__MapsSuggestionsCompositeSource_updateSuggestionEntriesWithHandler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = [WeakRetained uniqueName];
      v5 = NSStringFromMapsSuggestionsCurrentBestLocation();
      v7 = 138412802;
      v8 = v4;
      v9 = 2112;
      *v10 = @"ALL";
      *&v10[8] = 2112;
      *&v10[10] = v5;
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "{MSgDebug} UPDATING SOURCE{%@} for TYPE{%@} at LATLONG{%@}", &v7, 0x20u);
    }

    [(MapsSuggestionsCompositeSource *)WeakRetained _updateChildSourcesForceAll:*(a1 + 32) handler:?];
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "MapsSuggestionsCompositeSource.mm";
      v9 = 1026;
      *v10 = 412;
      *&v10[4] = 2082;
      *&v10[6] = "[MapsSuggestionsCompositeSource updateSuggestionEntriesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v7, 0x1Cu);
    }
  }
}

- (double)updateSuggestionEntriesOfType:(int64_t)type handler:(id)handler
{
  handlerCopy = handler;
  if (type)
  {
    if ([(MapsSuggestionsCompositeSource *)self canProduceEntriesOfType:type])
    {
      objc_initWeak(&location, self);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __72__MapsSuggestionsCompositeSource_updateSuggestionEntriesOfType_handler___block_invoke;
      v10[3] = &unk_1E81F7028;
      objc_copyWeak(v12, &location);
      v12[1] = type;
      v11 = handlerCopy;
      dispatch_async(self->_queue._innerQueue, v10);

      objc_destroyWeak(v12);
      objc_destroyWeak(&location);
      v7 = 0.0;
    }

    else
    {
      v7 = 0.0;
      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy);
      }
    }
  }

  else
  {
    [(MapsSuggestionsCompositeSource *)self updateSuggestionEntriesWithHandler:handlerCopy];
    v7 = v8;
  }

  return v7;
}

void __72__MapsSuggestionsCompositeSource_updateSuggestionEntriesOfType_handler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = [WeakRetained uniqueName];
      v5 = NSStringFromMapsSuggestionsEntryType(*(a1 + 48));
      v6 = NSStringFromMapsSuggestionsCurrentBestLocation();
      v8 = 138412802;
      v9 = v4;
      v10 = 2112;
      *v11 = v5;
      *&v11[8] = 2112;
      *&v11[10] = v6;
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "{MSgDebug} UPDATING SOURCE{%@} for TYPE{%@} at LATLONG{%@}", &v8, 0x20u);
    }

    [(MapsSuggestionsCompositeSource *)WeakRetained _updateChildSourcesForType:*(a1 + 32) handler:?];
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsCompositeSource.mm";
      v10 = 1026;
      *v11 = 435;
      *&v11[4] = 2082;
      *&v11[6] = "[MapsSuggestionsCompositeSource updateSuggestionEntriesOfType:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

- (BOOL)canProduceEntriesOfType:(int64_t)type
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__MapsSuggestionsCompositeSource_canProduceEntriesOfType___block_invoke;
  v4[3] = &unk_1E81F7050;
  v4[4] = self;
  v4[5] = type;
  return MSg::Queue::sync<BOOL>(&self->_queue, v4);
}

uint64_t __58__MapsSuggestionsCompositeSource_canProduceEntriesOfType___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * v5) canProduceEntriesOfType:{*(a1 + 40), v8}])
        {
          v6 = 1;
          goto LABEL_11;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v6 = 0;
LABEL_11:

  return v6;
}

- (double)_suppressionTimeForEntry:(int)entry snoozeOnly:
{
  v5 = a2;
  v6 = v5;
  v7 = 0.0;
  if (self)
  {
    if (entry)
    {
      switch([v5 type])
      {
        case 0:
          break;
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
        case 16:
        case 17:
        case 18:
        case 19:
        case 20:
        case 21:
        case 22:
        case 23:
        case 24:
        case 25:
          goto LABEL_5;
        default:
          GEOFindOrCreateLog();
          objc_claimAutoreleasedReturnValue();
          [MapsSuggestionsCompositeSource _suppressionTimeForEntry:snoozeOnly:];
          goto LABEL_9;
      }
    }

    else
    {
      switch([v5 type])
      {
        case 0:
          break;
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
        case 16:
        case 17:
        case 18:
        case 19:
        case 20:
        case 21:
        case 22:
        case 23:
        case 24:
        case 25:
LABEL_5:
          GEOConfigGetDouble();
          v7 = v8;
          break;
        default:
          GEOFindOrCreateLog();
          objc_claimAutoreleasedReturnValue();
          [MapsSuggestionsCompositeSource _suppressionTimeForEntry:snoozeOnly:];
LABEL_9:

          break;
      }
    }
  }

  return v7;
}

- (char)removeEntry:(id)entry behavior:(int64_t)behavior handler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  handlerCopy = handler;
  if (!entryCopy)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCompositeSource.mm";
      v20 = 1024;
      v21 = 592;
      v22 = 2082;
      v23 = "[MapsSuggestionsCompositeSource removeEntry:behavior:handler:]";
      v24 = 2082;
      v25 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires entry", buf, 0x26u);
    }

    goto LABEL_11;
  }

  if (!handlerCopy)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCompositeSource.mm";
      v20 = 1024;
      v21 = 593;
      v22 = 2082;
      v23 = "[MapsSuggestionsCompositeSource removeEntry:behavior:handler:]";
      v24 = 2082;
      v25 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. handle cannot be nil", buf, 0x26u);
    }

LABEL_11:

    v11 = 0;
    goto LABEL_12;
  }

  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v19 = "[MapsSuggestionsCompositeSource removeEntry:behavior:handler:]";
    _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__MapsSuggestionsCompositeSource_removeEntry_behavior_handler___block_invoke;
  v14[3] = &unk_1E81F7078;
  behaviorCopy = behavior;
  v14[4] = self;
  v15 = entryCopy;
  v16 = handlerCopy;
  v11 = MSg::Queue::sync<MSgCallbackPromise>(&self->_queue, v14);

LABEL_12:
  return v11;
}

uint64_t __63__MapsSuggestionsCompositeSource_removeEntry_behavior_handler___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 56))
  {
    v2 = (*(a1 + 56) & 3) == 0;
    v3 = GEOFindOrCreateLog();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
    if (v2)
    {
      if (v4)
      {
        *buf = 0;
        _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "About to suppress entry with Delete/Forget in all sources", buf, 2u);
      }

      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v8 = *(*(a1 + 32) + 24);
      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        v10 = *v14;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v8);
            }

            [*(*(&v13 + 1) + 8 * i) removeEntry:*(a1 + 40) behavior:*(a1 + 56) handler:{*(a1 + 48), v13}];
          }

          v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v9);
      }

      return 1;
    }

    else
    {
      if (v4)
      {
        *buf = 0;
        _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "About to suppress entry with Hide/Snooze", buf, 2u);
      }

      v5 = [*(*(a1 + 32) + 64) suppressEntry:*(a1 + 40) forTime:{-[MapsSuggestionsCompositeSource _suppressionTimeForEntry:snoozeOnly:](*(a1 + 32), *(a1 + 40), *(a1 + 56) & 1)}];
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromMapsSuggestionsRemovalBehavior(*(a1 + 56));
      *buf = 138412290;
      v19 = v7;
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_INFO, "Cannot suppress entry because removal behavior is %@", buf, 0xCu);
    }

    return 0;
  }

  return v5;
}

- (void)feedbackForEntry:(id)entry action:(int64_t)action
{
  v23 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  if (entryCopy)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v16 = "[MapsSuggestionsCompositeSource feedbackForEntry:action:]";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
    }

    if (action)
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "About to send feedback to all sources", buf, 2u);
      }

      objc_initWeak(buf, self);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __58__MapsSuggestionsCompositeSource_feedbackForEntry_action___block_invoke;
      block[3] = &unk_1E81F58A8;
      objc_copyWeak(v14, buf);
      v13 = entryCopy;
      v14[1] = action;
      dispatch_async(self->_queue._innerQueue, block);

      objc_destroyWeak(v14);
      objc_destroyWeak(buf);
    }

    else
    {
      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = NSStringFromMapsSuggestionsEntryEngagement(0);
        *buf = 138412290;
        v16 = v11;
        _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_INFO, "Cannot process feedback for entry because action is %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCompositeSource.mm";
      v17 = 1024;
      v18 = 632;
      v19 = 2082;
      v20 = "[MapsSuggestionsCompositeSource feedbackForEntry:action:]";
      v21 = 2082;
      v22 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires entry", buf, 0x26u);
    }
  }
}

void __58__MapsSuggestionsCompositeSource_feedbackForEntry_action___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v4 = WeakRetained[3];
    v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v5)
    {
      v6 = *v9;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v8 + 1) + 8 * i) feedbackForEntry:*(a1 + 32) action:{*(a1 + 48), v8}];
        }

        v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v14 = "MapsSuggestionsCompositeSource.mm";
      v15 = 1026;
      v16 = 643;
      v17 = 2082;
      v18 = "[MapsSuggestionsCompositeSource feedbackForEntry:action:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

- (void)feedbackForMapItem:(id)item action:(int64_t)action
{
  v22 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (itemCopy)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v15 = "[MapsSuggestionsCompositeSource feedbackForMapItem:action:]";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
    }

    if (action)
    {
      objc_initWeak(buf, self);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __60__MapsSuggestionsCompositeSource_feedbackForMapItem_action___block_invoke;
      block[3] = &unk_1E81F58A8;
      objc_copyWeak(v13, buf);
      v12 = itemCopy;
      v13[1] = action;
      dispatch_async(self->_queue._innerQueue, block);

      objc_destroyWeak(v13);
      objc_destroyWeak(buf);
    }

    else
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = NSStringFromMapsSuggestionsEntryEngagement(0);
        *buf = 138412290;
        v15 = v10;
        _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_INFO, "Cannot process feedback for entry because action is %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCompositeSource.mm";
      v16 = 1024;
      v17 = 654;
      v18 = 2082;
      v19 = "[MapsSuggestionsCompositeSource feedbackForMapItem:action:]";
      v20 = 2082;
      v21 = "nil == (mapItem)";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires mapItem", buf, 0x26u);
    }
  }
}

void __60__MapsSuggestionsCompositeSource_feedbackForMapItem_action___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v4 = WeakRetained[3];
    v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v5)
    {
      v6 = *v9;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v8 + 1) + 8 * i) feedbackForMapItem:*(a1 + 32) action:{*(a1 + 48), v8}];
        }

        v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v14 = "MapsSuggestionsCompositeSource.mm";
      v15 = 1026;
      v16 = 663;
      v17 = 2082;
      v18 = "[MapsSuggestionsCompositeSource feedbackForMapItem:action:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

- (void)feedbackForContact:(id)contact action:(int64_t)action
{
  v22 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if (contactCopy)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v15 = "[MapsSuggestionsCompositeSource feedbackForContact:action:]";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
    }

    if (action)
    {
      objc_initWeak(buf, self);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __60__MapsSuggestionsCompositeSource_feedbackForContact_action___block_invoke;
      block[3] = &unk_1E81F58A8;
      objc_copyWeak(v13, buf);
      v12 = contactCopy;
      v13[1] = action;
      dispatch_async(self->_queue._innerQueue, block);

      objc_destroyWeak(v13);
      objc_destroyWeak(buf);
    }

    else
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = NSStringFromMapsSuggestionsEntryEngagement(0);
        *buf = 138412290;
        v15 = v10;
        _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_INFO, "Cannot process feedback for entry because action is %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCompositeSource.mm";
      v16 = 1024;
      v17 = 674;
      v18 = 2082;
      v19 = "[MapsSuggestionsCompositeSource feedbackForContact:action:]";
      v20 = 2082;
      v21 = "nil == (contact)";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires contact", buf, 0x26u);
    }
  }
}

void __60__MapsSuggestionsCompositeSource_feedbackForContact_action___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v4 = WeakRetained[3];
    v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v5)
    {
      v6 = *v9;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v8 + 1) + 8 * i) feedbackForContact:*(a1 + 32) action:{*(a1 + 48), v8}];
        }

        v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v14 = "MapsSuggestionsCompositeSource.mm";
      v15 = 1026;
      v16 = 683;
      v17 = 2082;
      v18 = "[MapsSuggestionsCompositeSource feedbackForContact:action:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

- (unint64_t)addOrUpdateSuggestionEntries:(id)entries source:(id)source
{
  v32 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  sourceCopy = source;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v25 = sourceCopy;
    _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "passing on addOrUpdateSuggestionEntries for SOURCE{%@}", buf, 0xCu);
  }

  if (entriesCopy)
  {
    if (self->_suppressor)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = entriesCopy;
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        v9 = *v20;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v20 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v19 + 1) + 8 * i);
            if ([(MapsSuggestionsSuppressor *)self->_suppressor isSuppressedEntry:v11, sourceCopy])
            {
              [v11 setBoolean:1 forKey:@"MapsSuggestionsIsSuppressedKey"];
              v12 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
              {
                uniqueIdentifier = [v11 uniqueIdentifier];
                *buf = 138412290;
                v25 = uniqueIdentifier;
                _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_DEBUG, "isSuppressedEntry returned YES for %@", buf, 0xCu);
              }
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v8);
      }
    }

    delegate = [(MapsSuggestionsBaseSource *)self delegate];
    v15 = [delegate addOrUpdateSuggestionEntries:entriesCopy source:sourceCopy];
  }

  else
  {
    delegate = GEOFindOrCreateLog();
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v25 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCompositeSource.mm";
      v26 = 1024;
      v27 = 698;
      v28 = 2082;
      v29 = "[MapsSuggestionsCompositeSource addOrUpdateSuggestionEntries:source:]";
      v30 = 2082;
      v31 = "nil == (entries)";
      _os_log_impl(&dword_1C5126000, delegate, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires zero or more entries", buf, 0x26u);
    }

    v15 = 0;
  }

  return v15;
}

- (BOOL)addChildSource:(id)source
{
  v20 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  if (sourceCopy)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      uniqueName = [sourceCopy uniqueName];
      *buf = 138412290;
      v13 = uniqueName;
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "addChildSource:SOURCE{%@}", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__MapsSuggestionsCompositeSource_addChildSource___block_invoke;
    v9[3] = &unk_1E81F5970;
    objc_copyWeak(&v11, buf);
    v10 = sourceCopy;
    dispatch_async(self->_queue._innerQueue, v9);

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCompositeSource.mm";
      v14 = 1024;
      v15 = 726;
      v16 = 2082;
      v17 = "[MapsSuggestionsCompositeSource addChildSource:]";
      v18 = 2082;
      v19 = "nil == (source)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a child Source", buf, 0x26u);
    }
  }

  return sourceCopy != 0;
}

void __49__MapsSuggestionsCompositeSource_addChildSource___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[3] addObject:*(a1 + 32)];
    [*(a1 + 32) setDelegate:v3];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsCompositeSource.mm";
      v7 = 1026;
      v8 = 731;
      v9 = 2082;
      v10 = "[MapsSuggestionsCompositeSource addChildSource:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

- (BOOL)removeChildSource:(id)source
{
  v19 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  if (sourceCopy)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      uniqueName = [sourceCopy uniqueName];
      *buf = 138412290;
      v12 = uniqueName;
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "removeChildSource:SOURCE{%@}", buf, 0xCu);
    }

    [sourceCopy stop];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__MapsSuggestionsCompositeSource_removeChildSource___block_invoke;
    v9[3] = &unk_1E81F69F0;
    v9[4] = self;
    v10 = sourceCopy;
    dispatch_sync(self->_queue._innerQueue, v9);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCompositeSource.mm";
      v13 = 1024;
      v14 = 740;
      v15 = 2082;
      v16 = "[MapsSuggestionsCompositeSource removeChildSource:]";
      v17 = 2082;
      v18 = "nil == (source)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a child Source", buf, 0x26u);
    }
  }

  return sourceCopy != 0;
}

- (id)children
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__MapsSuggestionsCompositeSource_children__block_invoke;
  v4[3] = &unk_1E81F70A0;
  v4[4] = self;
  v2 = MSg::Queue::sync<objc_object * {__strong}>(&self->_queue, v4);

  return v2;
}

id __42__MapsSuggestionsCompositeSource_children__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 24) copy];

  return v1;
}

void __43__MapsSuggestionsCompositeSource_test_sync__block_invoke()
{
  v0 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C5126000, v0, OS_LOG_TYPE_DEBUG, "Test synced", v1, 2u);
  }
}

- (id)test_dateUntilSuppressedEntry:(id)entry
{
  v19 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  v5 = entryCopy;
  if (entryCopy)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__MapsSuggestionsCompositeSource_test_dateUntilSuppressedEntry___block_invoke;
    v9[3] = &unk_1E81F70C8;
    v9[4] = self;
    v10 = entryCopy;
    v6 = MSg::Queue::sync<NSDate * {__strong}>(&self->_queue, v9);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCompositeSource.mm";
      v13 = 1024;
      v14 = 773;
      v15 = 2082;
      v16 = "[MapsSuggestionsCompositeSource test_dateUntilSuppressedEntry:]";
      v17 = 2082;
      v18 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry", buf, 0x26u);
    }

    v6 = 0;
  }

  return v6;
}

- (double)test_suppressionDurationForBehavior:(int64_t)behavior type:(int64_t)type
{
  v14 = *MEMORY[0x1E69E9840];
  if (behavior == 1)
  {
    switch(type)
    {
      case 0:
        return 0.0;
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
LABEL_5:

        GEOConfigGetDouble();
        return result;
      default:
        v5 = GEOFindOrCreateLog();
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_13;
        }

        v6 = 136446978;
        v7 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCompositeSource.mm";
        v8 = 1024;
        v9 = 516;
        v10 = 2082;
        v11 = "NSTimeInterval _snoozeTimeForEntryType(MapsSuggestionsEntryType)";
        v12 = 2082;
        v13 = "YES";
        goto LABEL_12;
    }
  }

  if (behavior == 2)
  {
    switch(type)
    {
      case 0:
        return 0.0;
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
        goto LABEL_5;
      default:
        v5 = GEOFindOrCreateLog();
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_13;
        }

        v6 = 136446978;
        v7 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsCompositeSource.mm";
        v8 = 1024;
        v9 = 577;
        v10 = 2082;
        v11 = "NSTimeInterval _hideTimeForEntryType(MapsSuggestionsEntryType)";
        v12 = 2082;
        v13 = "YES";
        break;
    }

LABEL_12:
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Detected an unsupported MapsSuggestionsEntryType!", &v6, 0x26u);
LABEL_13:
  }

  return 0.0;
}

- (void)test_resetSuppressions
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__MapsSuggestionsCompositeSource_test_resetSuppressions__block_invoke;
  block[3] = &unk_1E81F59C0;
  block[4] = self;
  dispatch_sync(self->_queue._innerQueue, block);
}

- (void)_scheduleNextUpdateChildSourcesWithin:(uint64_t)within
{
  v12 = *MEMORY[0x1E69E9840];
  if (within)
  {
    dispatch_assert_queue_V2(*(within + 40));
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v9 = 134217984;
      v10 = a2;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "_scheduleNextUpdateChildSourcesWithin:%0.3f", &v9, 0xCu);
    }

    if (*(within + 80))
    {
      [(MapsSuggestionsCompositeSource *)within _initUpdateTimerIfNecessary];
      v5 = *(within + 56);
      v6 = dispatch_time(0, (a2 * 1000000000.0));
      dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    }

    else
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = 136446978;
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_3();
        v11 = "NO == _running";
        OUTLINED_FUNCTION_6(&dword_1C5126000, v7, v8, "At %{public}s:%d, %{public}s forbids: %{public}s. This should not be called unless we're running", &v9);
      }
    }
  }
}

- (void)_shouldUpdateSource:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_impl(&dword_1C5126000, log, OS_LOG_TYPE_DEBUG, "SOURCE{%@} skip: too early", buf, 0xCu);
}

- (void)_shouldUpdateSource:(os_log_t)log .cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_impl(&dword_1C5126000, log, OS_LOG_TYPE_DEBUG, "SOURCE{%@} skip: lacking nextUpdateTime", buf, 0xCu);
}

- (void)_shouldUpdateSource:(_BYTE *)a3 .cold.3(NSObject *a1, NSObject **a2, _BYTE *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 136446978;
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    v8 = "nil == (source)";
    OUTLINED_FUNCTION_6(&dword_1C5126000, a1, v6, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a child Source", v7);
  }

  *a3 = 0;
  *a2 = a1;
}

- (void)_updateChildSourcesForceAll:(os_log_t)log handler:(void *)a4 .cold.2(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_impl(&dword_1C5126000, log, OS_LOG_TYPE_ERROR, "Not all Sources called back in time: {%{public}@}", buf, 0xCu);
}

- (void)_updateChildSourcesForceAll:handler:.cold.3()
{
  OUTLINED_FUNCTION_8();
  if (os_signpost_enabled(v2))
  {
    OUTLINED_FUNCTION_0_5(&dword_1C5126000, v3, v4, v5, "_updateChildSourcesForceAll", "", v6, v7, 0);
  }

  *v0 = v1;
}

- (void)_updateChildSource:(void *)a3 handler:.cold.1(NSObject *a1, NSObject **a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 136446978;
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    v8 = "nil == (source)";
    OUTLINED_FUNCTION_6(&dword_1C5126000, a1, v6, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a source", v7);
  }

  *a3 = 0;
  *a2 = a1;
}

- (void)_updateChildSourcesForType:handler:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (os_signpost_enabled(v2))
  {
    OUTLINED_FUNCTION_0_5(&dword_1C5126000, v3, v4, v5, "_updateChildSourcesForType", "", v6, v7, 0);
  }

  *v0 = v1;
}

- (void)_suppressionTimeForEntry:snoozeOnly:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 136446978;
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    v5 = "YES";
    OUTLINED_FUNCTION_6(&dword_1C5126000, v1, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Detected an unsupported MapsSuggestionsEntryType!", v4);
  }

  *v0 = v1;
}

- (void)_suppressionTimeForEntry:snoozeOnly:.cold.2()
{
  OUTLINED_FUNCTION_8();
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 136446978;
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    v5 = "YES";
    OUTLINED_FUNCTION_6(&dword_1C5126000, v1, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Detected an unsupported MapsSuggestionsEntryType!", v4);
  }

  *v0 = v1;
}

@end