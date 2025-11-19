@interface MapsSuggestionsRoutineSource
- (MapsSuggestionsRoutineSource)initWithRoutine:(id)a3 delegate:(id)a4 name:(id)a5;
- (char)removeEntry:(id)a3 behavior:(int64_t)a4 handler:(id)a5;
- (double)updateSuggestionEntriesWithHandler:(id)a3;
- (id).cxx_construct;
- (id)initFromResourceDepot:(id)a3 name:(id)a4;
- (void)_q_updateSuggestionEntriesWithHandler:(uint64_t)a1;
- (void)dealloc;
- (void)start;
- (void)stop;
@end

@implementation MapsSuggestionsRoutineSource

- (void)start
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "start", v4, 2u);
  }

  [(MapsSuggestionsRoutine *)self->_routine addParkedCarObserver:self];
}

- (MapsSuggestionsRoutineSource)initWithRoutine:(id)a3 delegate:(id)a4 name:(id)a5
{
  v9 = a3;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = MapsSuggestionsRoutineSource;
  v11 = [(MapsSuggestionsBaseSource *)&v21 initWithDelegate:a4 name:v10];
  if (v11)
  {
    v12 = [v10 stringByAppendingFormat:@"Queue"];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    MSg::Queue::Queue(&v19, v12, v13);
    v14 = v19;
    v19 = 0;
    innerQueue = v11->_queue._innerQueue;
    v11->_queue._innerQueue = v14;

    v16 = v20;
    v20 = 0;
    name = v11->_queue._name;
    v11->_queue._name = v16;

    objc_storeStrong(&v11->_routine, a3);
  }

  return v11;
}

- (id)initFromResourceDepot:(id)a3 name:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = 136446978;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutineSource.mm";
      v17 = 1024;
      v18 = 66;
      v19 = 2082;
      v20 = "[MapsSuggestionsRoutineSource initFromResourceDepot:name:]";
      v21 = 2082;
      v22 = "nil == (resourceDepot)";
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a resource depot to buid!", &v15, 0x26u);
    }

    goto LABEL_13;
  }

  v8 = [v6 oneSourceDelegate];

  if (!v8)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = 136446978;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutineSource.mm";
      v17 = 1024;
      v18 = 67;
      v19 = 2082;
      v20 = "[MapsSuggestionsRoutineSource initFromResourceDepot:name:]";
      v21 = 2082;
      v22 = "nil == (resourceDepot.oneSourceDelegate)";
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires one SourceDelegate!", &v15, 0x26u);
    }

    goto LABEL_13;
  }

  v9 = [v6 oneRoutine];

  if (!v9)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = 136446978;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRoutineSource.mm";
      v17 = 1024;
      v18 = 68;
      v19 = 2082;
      v20 = "[MapsSuggestionsRoutineSource initFromResourceDepot:name:]";
      v21 = 2082;
      v22 = "nil == (resourceDepot.oneRoutine)";
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires one Routine!", &v15, 0x26u);
    }

LABEL_13:

    v12 = 0;
    goto LABEL_14;
  }

  v10 = [v6 oneRoutine];
  v11 = [v6 oneSourceDelegate];
  self = [(MapsSuggestionsRoutineSource *)self initWithRoutine:v10 delegate:v11 name:v7];

  v12 = self;
LABEL_14:

  return v12;
}

- (void)dealloc
{
  [(MapsSuggestionsRoutine *)self->_routine removeParkedCarObserver:self];
  v3.receiver = self;
  v3.super_class = MapsSuggestionsRoutineSource;
  [(MapsSuggestionsRoutineSource *)&v3 dealloc];
}

- (void)_q_updateSuggestionEntriesWithHandler:(uint64_t)a1
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    if (+[MapsSuggestionsSiri isEnabled]&& !MapsSuggestionsIsInCoarseLocation())
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = [a1 uniqueName];
        v9 = NSStringFromMapsSuggestionsCurrentBestLocation();
        *buf = 138412802;
        v30 = v8;
        v31 = 2112;
        v32 = @"ALL";
        v33 = 2112;
        v34 = v9;
        _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "{MSgDebug} UPDATING SOURCE{%@} for TYPE{%@} at LATLONG{%@}", buf, 0x20u);
      }

      v10 = objc_alloc(MEMORY[0x1E696AB80]);
      v11 = MapsSuggestionsNow();
      GEOConfigGetDouble();
      v12 = [v10 initWithStartDate:v11 duration:?];

      v13 = MapsSuggestionsCurrentBestLocation();
      if (v13)
      {
        v14 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v15 = [a1 uniqueName];
          *buf = 138412546;
          v30 = v15;
          v31 = 2080;
          v32 = "_updateSuggestionEntries";
          _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
        }

        v16 = GEOFindOrCreateLog();
        if (os_signpost_enabled(v16))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C5126000, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_updateSuggestionEntries", "", buf, 2u);
        }

        objc_initWeak(buf, a1);
        v17 = *(a1 + 24);
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __70__MapsSuggestionsRoutineSource__q_updateSuggestionEntriesWithHandler___block_invoke_188;
        v23[3] = &unk_1E81F62D0;
        objc_copyWeak(&v25, buf);
        v18 = v3;
        v24 = v18;
        if (![v17 fetchEntriesForLocation:v13 period:v12 handler:v23])
        {
          v19 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *v22 = 0;
            _os_log_impl(&dword_1C5126000, v19, OS_LOG_TYPE_ERROR, "Routine returned WillNotCallBack.", v22, 2u);
          }

          v18[2](v18);
        }

        objc_destroyWeak(&v25);
        objc_destroyWeak(buf);
      }

      else
      {
        if (MapsSuggestionsLoggingIsVerbose())
        {
          v20 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = [a1 uniqueName];
            *buf = 138412290;
            v30 = v21;
            _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_ERROR, "%@ did not have a current location fix to query with.", buf, 0xCu);
          }
        }

        [a1 addOrUpdateMySuggestionEntries:MEMORY[0x1E695E0F0]];
        if (v3)
        {
          v3[2](v3);
        }
      }
    }

    else
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "User does not allow us to run.", buf, 2u);
      }

      objc_initWeak(buf, a1);
      v5 = *(a1 + 32);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __70__MapsSuggestionsRoutineSource__q_updateSuggestionEntriesWithHandler___block_invoke;
      block[3] = &unk_1E81F5190;
      v6 = v5;
      objc_copyWeak(&v28, buf);
      v27 = v3;
      dispatch_async(v6, block);

      objc_destroyWeak(&v28);
      objc_destroyWeak(buf);
    }
  }
}

void __70__MapsSuggestionsRoutineSource__q_updateSuggestionEntriesWithHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
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
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsRoutineSource.mm";
      v8 = 1026;
      v9 = 88;
      v10 = 2082;
      v11 = "[MapsSuggestionsRoutineSource _q_updateSuggestionEntriesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

void __70__MapsSuggestionsRoutineSource__q_updateSuggestionEntriesWithHandler___block_invoke_188(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      v16 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = v6;
        _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, "Error while fetching entries: %@", buf, 0xCu);
      }

      if (v5)
      {
        v17 = v5;
      }

      else
      {
        v17 = MEMORY[0x1E695E0F0];
      }

      [WeakRetained addOrUpdateMySuggestionEntries:v17];
      v18 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = [WeakRetained uniqueName];
        *buf = 138412546;
        v28 = v19;
        v29 = 2080;
        *v30 = "_updateSuggestionEntries";
        _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", buf, 0x16u);
      }

      v20 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v20))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5126000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_updateSuggestionEntries", "", buf, 2u);
      }
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v8 = v5;
      v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v9)
      {
        v10 = *v23;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v23 != v10)
            {
              objc_enumerationMutation(v8);
            }

            [*(*(&v22 + 1) + 8 * i) setOriginatingSourceName:{@"MapsSuggestionsRoutineSource", v22}];
          }

          v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v9);
      }

      [WeakRetained addOrUpdateMySuggestionEntries:v8];
      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = [WeakRetained uniqueName];
        *buf = 138412546;
        v28 = v13;
        v29 = 2080;
        *v30 = "_updateSuggestionEntries";
        _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
      }

      v14 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v14))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5126000, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_updateSuggestionEntries", "", buf, 2u);
      }
    }

    v21 = *(a1 + 32);
    if (v21)
    {
      (*(v21 + 16))();
    }
  }

  else
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v28 = "MapsSuggestionsRoutineSource.mm";
      v29 = 1026;
      *v30 = 115;
      *&v30[4] = 2082;
      *&v30[6] = "[MapsSuggestionsRoutineSource _q_updateSuggestionEntriesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

- (void)stop
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "stop", v4, 2u);
  }

  [(MapsSuggestionsRoutine *)self->_routine removeParkedCarObserver:self];
}

- (double)updateSuggestionEntriesWithHandler:(id)a3
{
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "updateSuggestionEntriesWithHandler", buf, 2u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__MapsSuggestionsRoutineSource_updateSuggestionEntriesWithHandler___block_invoke;
  v10[3] = &unk_1E81F80E8;
  v6 = v4;
  v11 = v6;
  MSg::Queue::async<MapsSuggestionsRoutineSource>(&self->_queue, self, v10);
  GEOConfigGetDouble();
  v8 = v7;

  return v8;
}

- (char)removeEntry:(id)a3 behavior:(int64_t)a4 handler:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = NSStringFromMapsSuggestionsRemovalBehavior(a4);
  if ([v8 type] == 7)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = v10;
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_DEBUG, "About to %@ Parked Car entry in Source", buf, 0xCu);
    }

    if (a4 == 8)
    {
      v12 = 0;
      goto LABEL_14;
    }

    if (a4 == 4)
    {
      v12 = 1;
LABEL_14:
      [(MapsSuggestionsRoutine *)self->_routine removeParkedCarsAllowingFeature:v12 handler:v9];
LABEL_15:
      v16 = 1;
      goto LABEL_16;
    }
  }

  else if (a4 == 4 && [v8 wasEverOfType:4])
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [v8 uniqueIdentifier];
      *buf = 138412546;
      v23 = v10;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_DEBUG, "About to %@ FrequentLocation '%@' in the actual CR", buf, 0x16u);
    }

    routine = self->_routine;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __61__MapsSuggestionsRoutineSource_removeEntry_behavior_handler___block_invoke;
    v18[3] = &unk_1E81F7BA0;
    v19 = v10;
    v20 = v8;
    v21 = v9;
    [(MapsSuggestionsRoutine *)routine forgetLocationOfInterest:v20 handler:v18];

    goto LABEL_15;
  }

  v16 = 0;
LABEL_16:

  return v16;
}

void __61__MapsSuggestionsRoutineSource_removeEntry_behavior_handler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = [*(a1 + 40) uniqueIdentifier];
      v10 = 138412802;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "Error during %@ of '%@': %@", &v10, 0x20u);
    }
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 32);
      v8 = [*(a1 + 40) uniqueIdentifier];
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "Successful %@ of '%@'", &v10, 0x16u);
    }
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))();
  }
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

@end