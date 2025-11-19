@interface MapsSuggestionsPLCRoutineSource
+ (BOOL)isEnabled;
- (BOOL)canProduceEntriesOfType:(int64_t)a3;
- (MapsSuggestionsPLCRoutineSource)initWithRoutine:(id)a3 delegate:(id)a4 name:(id)a5;
- (char)removeEntry:(id)a3 behavior:(int64_t)a4 handler:(id)a5;
- (char)suggestionsEntriesAtLocation:(id)a3 period:(id)a4 handler:(id)a5;
- (double)updateSuggestionEntriesWithHandler:(id)a3;
- (id).cxx_construct;
- (id)initFromResourceDepot:(id)a3 name:(id)a4;
- (uint64_t)_clearedToFetchSuggestionsUsingHandler:(dispatch_queue_t *)a1;
- (void)_q_updateSuggestionEntriesWithHandler:(uint64_t)a1;
- (void)start;
- (void)stop;
@end

@implementation MapsSuggestionsPLCRoutineSource

+ (BOOL)isEnabled
{
  BOOL = GEOConfigGetBOOL();
  if (BOOL)
  {

    LOBYTE(BOOL) = MapsFeature_IsEnabled_LocationIntelligenceMaps();
  }

  return BOOL;
}

- (MapsSuggestionsPLCRoutineSource)initWithRoutine:(id)a3 delegate:(id)a4 name:(id)a5
{
  v9 = a3;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = MapsSuggestionsPLCRoutineSource;
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
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/MapsSuggestionsPLCRoutineSource.mm";
      v17 = 1024;
      v18 = 72;
      v19 = 2082;
      v20 = "[MapsSuggestionsPLCRoutineSource initFromResourceDepot:name:]";
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
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/MapsSuggestionsPLCRoutineSource.mm";
      v17 = 1024;
      v18 = 73;
      v19 = 2082;
      v20 = "[MapsSuggestionsPLCRoutineSource initFromResourceDepot:name:]";
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
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/MapsSuggestionsPLCRoutineSource.mm";
      v17 = 1024;
      v18 = 74;
      v19 = 2082;
      v20 = "[MapsSuggestionsPLCRoutineSource initFromResourceDepot:name:]";
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
  self = [(MapsSuggestionsPLCRoutineSource *)self initWithRoutine:v10 delegate:v11 name:v7];

  v12 = self;
LABEL_14:

  return v12;
}

- (uint64_t)_clearedToFetchSuggestionsUsingHandler:(dispatch_queue_t *)a1
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(a1[4]);
    objc_initWeak(&location, a1);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__MapsSuggestionsPLCRoutineSource__clearedToFetchSuggestionsUsingHandler___block_invoke;
    aBlock[3] = &unk_1E81F8340;
    objc_copyWeak(&v19, &location);
    v18 = v3;
    v4 = _Block_copy(aBlock);
    BOOL = GEOConfigGetBOOL();
    v6 = [MEMORY[0x1E69B3730] tccPrompted];
    v7 = [MEMORY[0x1E69B3730] isEligible];
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = @"NOT ELIGIBLE";
      if (v7)
      {
        v9 = @"ELIGIBLE";
      }

      *buf = 138412290;
      v22 = v9;
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "OS_Eligibility for Route Genius PLC Source: %@", buf, 0xCu);
    }

    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = @"SHOULD NOT CHECK FOR TCC";
      if (BOOL)
      {
        v11 = @"SHOULD CHECK FOR TCC";
      }

      *buf = 138412290;
      v22 = v11;
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "Should check prompt (Joe Switch) for Route Genius PLC Source: %@", buf, 0xCu);
    }

    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = @"NO";
      if (v6)
      {
        v13 = @"YES";
      }

      *buf = 138412290;
      v22 = v13;
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_DEBUG, "FR TCC Prompted for Route Genius PLC Source? %@", buf, 0xCu);
    }

    v14 = MapsFeature_IsEnabled_LocationIntelligenceMaps() & v7;
    v15 = 1;
    if (v14 == 1 && ((BOOL ^ 1 | v6) & 1) != 0)
    {
      v15 = v4[2](v4);
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t __74__MapsSuggestionsPLCRoutineSource__clearedToFetchSuggestionsUsingHandler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v17 = "MapsSuggestionsPLCRoutineSource.mm";
      v18 = 1026;
      v19 = 88;
      v20 = 2082;
      v21 = "[MapsSuggestionsPLCRoutineSource _clearedToFetchSuggestionsUsingHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    goto LABEL_16;
  }

  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "Inside an eligible market for Familiar Routes", buf, 2u);
  }

  v4 = [MEMORY[0x1E69B3730] isAuthorizedForPurpose:1];
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = @"NO";
    if (v4)
    {
      v6 = @"YES";
    }

    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "Authorized for Familiar Routes? %@", buf, 0xCu);
  }

  if ((v4 & 1) == 0)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "LocIntel is ON but user is not authorized for Familiar Routes", buf, 2u);
    }

    v10 = WeakRetained[4];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __74__MapsSuggestionsPLCRoutineSource__clearedToFetchSuggestionsUsingHandler___block_invoke_222;
    v13[3] = &unk_1E81F5190;
    v11 = v10;
    objc_copyWeak(&v15, (a1 + 40));
    v14 = *(a1 + 32);
    dispatch_async(v11, v13);

    objc_destroyWeak(&v15);
LABEL_16:
    v7 = 0;
    goto LABEL_17;
  }

  v7 = 1;
LABEL_17:

  return v7;
}

void __74__MapsSuggestionsPLCRoutineSource__clearedToFetchSuggestionsUsingHandler___block_invoke_222(uint64_t a1)
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
      v7 = "MapsSuggestionsPLCRoutineSource.mm";
      v8 = 1026;
      v9 = 97;
      v10 = 2082;
      v11 = "[MapsSuggestionsPLCRoutineSource _clearedToFetchSuggestionsUsingHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

- (void)_q_updateSuggestionEntriesWithHandler:(uint64_t)a1
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    objc_initWeak(&location, a1);
    if (+[MapsSuggestionsSiri isEnabled]&& !MapsSuggestionsIsInCoarseLocation())
    {
      if (([(MapsSuggestionsPLCRoutineSource *)a1 _clearedToFetchSuggestionsUsingHandler:v3]& 1) != 0)
      {
        v7 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v8 = [a1 uniqueName];
          v9 = NSStringFromMapsSuggestionsCurrentBestLocation();
          *buf = 138412802;
          v32 = v8;
          v33 = 2112;
          v34 = @"ALL";
          v35 = 2112;
          v36 = v9;
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
            v32 = v15;
            v33 = 2080;
            v34 = "_updateSuggestionEntries";
            _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
          }

          v16 = GEOFindOrCreateLog();
          if (os_signpost_enabled(v16))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C5126000, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_updateSuggestionEntries", "", buf, 2u);
          }

          v17 = *(a1 + 24);
          BOOL = GEOConfigGetBOOL();
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __73__MapsSuggestionsPLCRoutineSource__q_updateSuggestionEntriesWithHandler___block_invoke_243;
          v24[3] = &unk_1E81F62D0;
          objc_copyWeak(&v26, &location);
          v19 = v3;
          v25 = v19;
          if (![v17 fetchEntriesUsingPLC:v13 period:v12 includeFrequentLocationEntries:BOOL handler:v24])
          {
            v20 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_ERROR, "Routine returned WillNotCallBack.", buf, 2u);
            }

            v19[2](v19);
          }

          objc_destroyWeak(&v26);
        }

        else
        {
          v22 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = [a1 uniqueName];
            *buf = 138412290;
            v32 = v23;
            _os_log_impl(&dword_1C5126000, v22, OS_LOG_TYPE_ERROR, "%@ did not have a current location fix to query with.", buf, 0xCu);
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
        v21 = GEOFindOrCreateLog();
        [MapsSuggestionsPLCRoutineSource _q_updateSuggestionEntriesWithHandler:v21];
      }
    }

    else
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "Siri not enabled or Maps doesn't have precise location.", buf, 2u);
      }

      v5 = *(a1 + 32);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __73__MapsSuggestionsPLCRoutineSource__q_updateSuggestionEntriesWithHandler___block_invoke;
      block[3] = &unk_1E81F5190;
      v6 = v5;
      objc_copyWeak(&v29, &location);
      v28 = v3;
      dispatch_async(v6, block);

      objc_destroyWeak(&v29);
    }

    objc_destroyWeak(&location);
  }
}

void __73__MapsSuggestionsPLCRoutineSource__q_updateSuggestionEntriesWithHandler___block_invoke(uint64_t a1)
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
      v7 = "MapsSuggestionsPLCRoutineSource.mm";
      v8 = 1026;
      v9 = 139;
      v10 = 2082;
      v11 = "[MapsSuggestionsPLCRoutineSource _q_updateSuggestionEntriesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

void __73__MapsSuggestionsPLCRoutineSource__q_updateSuggestionEntriesWithHandler___block_invoke_243(uint64_t a1, void *a2, void *a3)
{
  *&v21[13] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      v13 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v18 = 138412290;
        v19 = v6;
        _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "Error while fetching entries: %@", &v18, 0xCu);
      }

      if (v5)
      {
        v14 = v5;
      }

      else
      {
        v14 = MEMORY[0x1E695E0F0];
      }

      [v8 addOrUpdateMySuggestionEntries:v14];
      v15 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = [v8 uniqueName];
        v18 = 138412546;
        v19 = v16;
        v20 = 2080;
        *v21 = "_updateSuggestionEntries";
        _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", &v18, 0x16u);
      }

      v11 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v11))
      {
        LOWORD(v18) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5126000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_updateSuggestionEntries", "", &v18, 2u);
      }
    }

    else
    {
      [WeakRetained addOrUpdateMySuggestionEntries:v5];
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = [v8 uniqueName];
        v18 = 138412546;
        v19 = v10;
        v20 = 2080;
        *v21 = "_updateSuggestionEntries";
        _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v18, 0x16u);
      }

      v11 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v11))
      {
        LOWORD(v18) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5126000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_updateSuggestionEntries", "", &v18, 2u);
      }
    }

    v17 = *(a1 + 32);
    if (v17)
    {
      (*(v17 + 16))();
    }
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = 136446722;
      v19 = "MapsSuggestionsPLCRoutineSource.mm";
      v20 = 1026;
      *v21 = 171;
      v21[2] = 2082;
      *&v21[3] = "[MapsSuggestionsPLCRoutineSource _q_updateSuggestionEntriesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v18, 0x1Cu);
    }
  }
}

- (void)start
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "start", v3, 2u);
  }
}

- (void)stop
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "stop", v3, 2u);
  }
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
  v10[2] = __70__MapsSuggestionsPLCRoutineSource_updateSuggestionEntriesWithHandler___block_invoke;
  v10[3] = &unk_1E81F8368;
  v6 = v4;
  v11 = v6;
  MSg::Queue::async<MapsSuggestionsPLCRoutineSource>(&self->_queue, self, v10);
  GEOConfigGetDouble();
  v8 = v7;

  return v8;
}

- (char)suggestionsEntriesAtLocation:(id)a3 period:(id)a4 handler:(id)a5
{
  v5 = a5;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "suggestionsEntriesAtLocation called", v8, 2u);
  }

  if (v5)
  {
    (*(v5 + 2))(v5, 0, 0);
  }

  return 0;
}

- (BOOL)canProduceEntriesOfType:(int64_t)a3
{
  if ((a3 - 1) < 2)
  {
    return 1;
  }

  if (a3 == 4)
  {
    return GEOConfigGetBOOL();
  }

  return 0;
}

- (char)removeEntry:(id)a3 behavior:(int64_t)a4 handler:(id)a5
{
  v5 = a5;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "removeEntry called", v8, 2u);
  }

  if (v5)
  {
    v5[2](v5);
  }

  return 0;
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

- (void)_q_updateSuggestionEntriesWithHandler:(NSObject *)a1 .cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_impl(&dword_1C5126000, a1, OS_LOG_TYPE_ERROR, "Not cleared to fetch suggestions.", v2, 2u);
  }
}

@end