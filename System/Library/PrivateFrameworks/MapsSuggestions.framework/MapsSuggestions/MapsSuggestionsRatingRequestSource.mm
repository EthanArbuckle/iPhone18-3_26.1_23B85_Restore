@interface MapsSuggestionsRatingRequestSource
+ (BOOL)isEnabled;
- (MapsSuggestionsRatingRequestSource)initWithMapsSync:(id)sync routine:(id)routine delegate:(id)delegate name:(id)name;
- (double)updateSuggestionEntriesWithHandler:(id)handler;
- (id)initFromResourceDepot:(id)depot name:(id)name;
- (void)_q_updateHistoryEntriesWithHandler:(uint64_t)handler;
@end

@implementation MapsSuggestionsRatingRequestSource

+ (BOOL)isEnabled
{
  if (MapsFeature_IsEnabled_LagunaBeach() && (GEODoesUserHaveValidAccountForMakingContributions() & 1) != 0 || (BOOL = GEOConfigGetBOOL()) != 0)
  {

    LOBYTE(BOOL) = GEOConfigGetBOOL();
  }

  return BOOL;
}

- (MapsSuggestionsRatingRequestSource)initWithMapsSync:(id)sync routine:(id)routine delegate:(id)delegate name:(id)name
{
  syncCopy = sync;
  routineCopy = routine;
  delegateCopy = delegate;
  nameCopy = name;
  v34.receiver = self;
  v34.super_class = MapsSuggestionsRatingRequestSource;
  v15 = [(MapsSuggestionsBaseSource *)&v34 initWithDelegate:delegateCopy name:nameCopy];
  if (v15)
  {
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("MapsSuggestionsRatingRequestSourceQueue", v16);
    queue = v15->_queue;
    v15->_queue = v17;

    objc_storeStrong(&v15->_mapsSync, sync);
    objc_storeStrong(&v15->_routine, routine);
    v19 = [[MapsSuggestionsBudget alloc] initWithDelegate:v15 name:@"MapsSuggestionsRatingRequestSource"];
    budget = v15->_budget;
    v15->_budget = v19;

    v21 = v15->_budget;
    Integer = GEOConfigGetInteger();
    GEOConfigGetDouble();
    location = (v23 * 1000000000.0);
    [(MapsSuggestionsBudget *)v21 addRollingWindowOfCount:Integer perDuration:&location name:@"Short"];
    v24 = v15->_budget;
    v25 = GEOConfigGetInteger();
    GEOConfigGetDouble();
    location = (v26 * 1000000000.0);
    [(MapsSuggestionsBudget *)v24 addRollingWindowOfCount:v25 perDuration:&location name:@"Long"];
    objc_initWeak(&location, v15);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v28 = *MEMORY[0x1E69A16A8];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __77__MapsSuggestionsRatingRequestSource_initWithMapsSync_routine_delegate_name___block_invoke;
    v31[3] = &unk_1E81F7DC8;
    objc_copyWeak(&v32, &location);
    v29 = [defaultCenter addObserverForName:v28 object:0 queue:0 usingBlock:v31];

    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  return v15;
}

void __77__MapsSuggestionsRatingRequestSource_initWithMapsSync_routine_delegate_name___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
LABEL_12:

      [WeakRetained updateSuggestionEntriesWithHandler:0];
      goto LABEL_13;
    }

    v6 = [MEMORY[0x1E69A22E8] activeStateForCohortId:*MEMORY[0x1E69A1A78]];
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = @"YES";
        goto LABEL_11;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        __77__MapsSuggestionsRatingRequestSource_initWithMapsSync_routine_delegate_name___block_invoke_cold_1(v6);
      }
    }

    v7 = @"NO";
LABEL_11:
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_INFO, "Offline state changed: %@", &v10, 0xCu);
    goto LABEL_12;
  }

  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = 136446722;
    v11 = "MapsSuggestionsRatingRequestSource.mm";
    v12 = 1026;
    v13 = 96;
    v14 = 2082;
    v15 = "[MapsSuggestionsRatingRequestSource initWithMapsSync:routine:delegate:name:]_block_invoke";
    _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v10, 0x1Cu);
  }

LABEL_13:
}

- (id)initFromResourceDepot:(id)depot name:(id)name
{
  v25 = *MEMORY[0x1E69E9840];
  depotCopy = depot;
  nameCopy = name;
  if (!depotCopy)
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = 136446978;
      v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRatingRequestSource.mm";
      v19 = 1024;
      v20 = 108;
      v21 = 2082;
      v22 = "[MapsSuggestionsRatingRequestSource initFromResourceDepot:name:]";
      v23 = 2082;
      v24 = "nil == (resourceDepot)";
      _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a resource depot to buid!", &v17, 0x26u);
    }

    goto LABEL_17;
  }

  oneSourceDelegate = [depotCopy oneSourceDelegate];

  if (!oneSourceDelegate)
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = 136446978;
      v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRatingRequestSource.mm";
      v19 = 1024;
      v20 = 109;
      v21 = 2082;
      v22 = "[MapsSuggestionsRatingRequestSource initFromResourceDepot:name:]";
      v23 = 2082;
      v24 = "nil == (resourceDepot.oneSourceDelegate)";
      _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires one SourceDelegate!", &v17, 0x26u);
    }

    goto LABEL_17;
  }

  oneMapsSync = [depotCopy oneMapsSync];

  if (!oneMapsSync)
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = 136446978;
      v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRatingRequestSource.mm";
      v19 = 1024;
      v20 = 110;
      v21 = 2082;
      v22 = "[MapsSuggestionsRatingRequestSource initFromResourceDepot:name:]";
      v23 = 2082;
      v24 = "nil == (resourceDepot.oneMapsSync)";
      _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires one MapsSync!", &v17, 0x26u);
    }

    goto LABEL_17;
  }

  oneRoutine = [depotCopy oneRoutine];

  if (!oneRoutine)
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = 136446978;
      v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRatingRequestSource.mm";
      v19 = 1024;
      v20 = 111;
      v21 = 2082;
      v22 = "[MapsSuggestionsRatingRequestSource initFromResourceDepot:name:]";
      v23 = 2082;
      v24 = "nil == (resourceDepot.oneRoutine)";
      _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires one Routine!", &v17, 0x26u);
    }

LABEL_17:

    selfCopy = 0;
    goto LABEL_18;
  }

  oneMapsSync2 = [depotCopy oneMapsSync];
  oneRoutine2 = [depotCopy oneRoutine];
  oneSourceDelegate2 = [depotCopy oneSourceDelegate];
  self = [(MapsSuggestionsRatingRequestSource *)self initWithMapsSync:oneMapsSync2 routine:oneRoutine2 delegate:oneSourceDelegate2 name:nameCopy];

  selfCopy = self;
LABEL_18:

  return selfCopy;
}

- (double)updateSuggestionEntriesWithHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__MapsSuggestionsRatingRequestSource_updateSuggestionEntriesWithHandler___block_invoke;
  block[3] = &unk_1E81F5190;
  objc_copyWeak(&v12, &location);
  v11 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, block);
  GEOConfigGetDouble();
  v8 = v7;

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  return v8;
}

void __73__MapsSuggestionsRatingRequestSource_updateSuggestionEntriesWithHandler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsRatingRequestSource *)WeakRetained _q_updateHistoryEntriesWithHandler:?];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsRatingRequestSource.mm";
      v7 = 1026;
      v8 = 130;
      v9 = 2082;
      v10 = "[MapsSuggestionsRatingRequestSource updateSuggestionEntriesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

- (void)_q_updateHistoryEntriesWithHandler:(uint64_t)handler
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!handler)
  {
    goto LABEL_17;
  }

  dispatch_assert_queue_V2(*(handler + 24));
  v4 = [MEMORY[0x1E69A22E8] activeStateForCohortId:*MEMORY[0x1E69A1A78]];
  if (v4 < 2)
  {
    goto LABEL_3;
  }

  if (v4 != 2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      __77__MapsSuggestionsRatingRequestSource_initWithMapsSync_routine_delegate_name___block_invoke_cold_1(v4);
    }

LABEL_3:
    if (GEOConfigGetBOOL())
    {
      if (+[MapsSuggestionsSiri isEnabled]&& !MapsSuggestionsIsInCoarseLocation())
      {
        v12 = MapsSuggestionsCurrentBestLocation();
        v13 = v12 == 0;

        if (v13)
        {
          v27 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_1C5126000, v27, OS_LOG_TYPE_DEBUG, "Current location is nil", buf, 2u);
          }

          objc_initWeak(buf, handler);
          v28 = *(handler + 24);
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __73__MapsSuggestionsRatingRequestSource__q_updateHistoryEntriesWithHandler___block_invoke_239;
          v40[3] = &unk_1E81F5190;
          objc_copyWeak(&v42, buf);
          v41 = v3;
          dispatch_async(v28, v40);

          objc_destroyWeak(&v42);
          objc_destroyWeak(buf);
        }

        else
        {
          v14 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            uniqueName = [handler uniqueName];
            v16 = NSStringFromMapsSuggestionsEntryType(0x15uLL);
            v17 = NSStringFromMapsSuggestionsCurrentBestLocation();
            *buf = 138412802;
            *&buf[4] = uniqueName;
            *&buf[12] = 2112;
            *&buf[14] = v16;
            *&buf[22] = 2112;
            v53 = v17;
            _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_DEBUG, "{MSgDebug} UPDATING SOURCE{%@} for TYPE{%@} at LATLONG{%@}", buf, 0x20u);
          }

          GEOConfigGetDouble();
          v19 = v18;
          GEOConfigGetDouble();
          v21 = v20;
          GEOConfigGetDouble();
          v23 = v22;
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v53 = __Block_byref_object_copy__16;
          v54 = __Block_byref_object_dispose__16;
          v55 = MapsSuggestionsNowWithOffset(-v19);
          v38[0] = 0;
          v38[1] = v38;
          v38[2] = 0x3032000000;
          v38[3] = __Block_byref_object_copy__16;
          v38[4] = __Block_byref_object_dispose__16;
          v39 = 0;
          v36[0] = 0;
          v36[1] = v36;
          v36[2] = 0x2020000000;
          v37 = 0;
          objc_initWeak(&location, handler);
          v24 = *(handler + 32);
          GEOConfigGetDouble();
          v26 = v25;
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __73__MapsSuggestionsRatingRequestSource__q_updateHistoryEntriesWithHandler___block_invoke_240;
          v29[3] = &unk_1E81F7F58;
          objc_copyWeak(v34, &location);
          v30 = v3;
          v31 = buf;
          v32 = v38;
          v33 = v36;
          v34[1] = v23;
          v34[2] = v21;
          [v24 mapItemsForHistoricPlaces:1 routes:1 maxAge:v29 handler:v26];

          objc_destroyWeak(v34);
          objc_destroyWeak(&location);
          _Block_object_dispose(v36, 8);
          _Block_object_dispose(v38, 8);

          _Block_object_dispose(buf, 8);
        }
      }

      else
      {
        v5 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "User turned off Siri for Maps or is in coarse location", buf, 2u);
        }

        objc_initWeak(buf, handler);
        v6 = *(handler + 24);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __73__MapsSuggestionsRatingRequestSource__q_updateHistoryEntriesWithHandler___block_invoke_238;
        block[3] = &unk_1E81F5190;
        objc_copyWeak(&v45, buf);
        v44 = v3;
        dispatch_async(v6, block);

        objc_destroyWeak(&v45);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "Laguna Beach Suggestions has been disabled in the Maps Settings!", buf, 2u);
      }

      objc_initWeak(buf, handler);
      v10 = *(handler + 24);
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __73__MapsSuggestionsRatingRequestSource__q_updateHistoryEntriesWithHandler___block_invoke_236;
      v46[3] = &unk_1E81F5190;
      objc_copyWeak(&v48, buf);
      v47 = v3;
      dispatch_async(v10, v46);

      objc_destroyWeak(&v48);
      objc_destroyWeak(buf);
    }

    goto LABEL_17;
  }

  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "Maps is Offline. Not running Ratings Request Source.", buf, 2u);
  }

  objc_initWeak(buf, handler);
  v8 = *(handler + 24);
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __73__MapsSuggestionsRatingRequestSource__q_updateHistoryEntriesWithHandler___block_invoke;
  v49[3] = &unk_1E81F5190;
  objc_copyWeak(&v51, buf);
  v50 = v3;
  dispatch_async(v8, v49);

  objc_destroyWeak(&v51);
  objc_destroyWeak(buf);
LABEL_17:
}

void __73__MapsSuggestionsRatingRequestSource__q_updateHistoryEntriesWithHandler___block_invoke(uint64_t a1)
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
      v7 = "MapsSuggestionsRatingRequestSource.mm";
      v8 = 1026;
      v9 = 255;
      v10 = 2082;
      v11 = "[MapsSuggestionsRatingRequestSource _q_updateHistoryEntriesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

void __73__MapsSuggestionsRatingRequestSource__q_updateHistoryEntriesWithHandler___block_invoke_236(uint64_t a1)
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
      v7 = "MapsSuggestionsRatingRequestSource.mm";
      v8 = 1026;
      v9 = 261;
      v10 = 2082;
      v11 = "[MapsSuggestionsRatingRequestSource _q_updateHistoryEntriesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

void __73__MapsSuggestionsRatingRequestSource__q_updateHistoryEntriesWithHandler___block_invoke_238(uint64_t a1)
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
      v7 = "MapsSuggestionsRatingRequestSource.mm";
      v8 = 1026;
      v9 = 266;
      v10 = 2082;
      v11 = "[MapsSuggestionsRatingRequestSource _q_updateHistoryEntriesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

void __73__MapsSuggestionsRatingRequestSource__q_updateHistoryEntriesWithHandler___block_invoke_239(uint64_t a1)
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
      v7 = "MapsSuggestionsRatingRequestSource.mm";
      v8 = 1026;
      v9 = 271;
      v10 = 2082;
      v11 = "[MapsSuggestionsRatingRequestSource _q_updateHistoryEntriesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

void __73__MapsSuggestionsRatingRequestSource__q_updateHistoryEntriesWithHandler___block_invoke_240(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    LODWORD(v21) = [v5 count];
    _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "Received %u mapItems from MapsSync", buf, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained[3];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__MapsSuggestionsRatingRequestSource__q_updateHistoryEntriesWithHandler___block_invoke_241;
    block[3] = &unk_1E81F7F30;
    objc_copyWeak(&v18, (a1 + 64));
    v13 = v6;
    v14 = v5;
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v17 = *(a1 + 56);
    v19 = *(a1 + 72);
    dispatch_async(v10, block);

    objc_destroyWeak(&v18);
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v21 = "MapsSuggestionsRatingRequestSource.mm";
      v22 = 1026;
      v23 = 291;
      v24 = 2082;
      v25 = "[MapsSuggestionsRatingRequestSource _q_updateHistoryEntriesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __73__MapsSuggestionsRatingRequestSource__q_updateHistoryEntriesWithHandler___block_invoke_241(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (!WeakRetained)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v48 = "MapsSuggestionsRatingRequestSource.mm";
      v49 = 1026;
      v50 = 293;
      v51 = 2082;
      v52 = "[MapsSuggestionsRatingRequestSource _q_updateHistoryEntriesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", buf, 0x1Cu);
    }

    v6 = v5;
    goto LABEL_28;
  }

  if (!*(a1 + 32) && *(a1 + 40))
  {
    v7 = dispatch_group_create();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__MapsSuggestionsRatingRequestSource__q_updateHistoryEntriesWithHandler___block_invoke_242;
    aBlock[3] = &unk_1E81F7E40;
    v6 = v7;
    v41 = v6;
    v42 = WeakRetained;
    v45[1] = *(a1 + 88);
    objc_copyWeak(v45, (a1 + 80));
    v43 = *(a1 + 56);
    v44 = *(a1 + 72);
    v25 = _Block_copy(aBlock);
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = *(a1 + 40);
    v8 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v8)
    {
      v10 = *v37;
      *&v9 = 138412290;
      v24 = v9;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v37 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v36 + 1) + 8 * i);
          if ([v12 _hasMUID])
          {
            dispatch_group_enter(v6);
            v13 = WeakRetained[4];
            v14 = *(a1 + 96);
            v32[0] = MEMORY[0x1E69E9820];
            v32[1] = 3221225472;
            v32[2] = __73__MapsSuggestionsRatingRequestSource__q_updateHistoryEntriesWithHandler___block_invoke_247;
            v32[3] = &unk_1E81F7E90;
            objc_copyWeak(&v35, (a1 + 80));
            v32[4] = v12;
            v15 = v6;
            v33 = v15;
            v34 = v25;
            if (![v13 canProduceRatingRequestForMapItem:v12 maxAge:v32 handler:v14])
            {
              v16 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                *buf = v24;
                v48 = v12;
                _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, "We got no response from MSgMapsSync for %@", buf, 0xCu);
              }

              dispatch_group_leave(v15);
            }

            objc_destroyWeak(&v35);
          }

          else
          {
            v17 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              v18 = [v12 name];
              *buf = v24;
              v48 = v18;
              _os_log_impl(&dword_1C5126000, v17, OS_LOG_TYPE_DEBUG, "We're skipping mapItem: %@ without MUIDs", buf, 0xCu);
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
      }

      while (v8);
    }

    v19 = WeakRetained[3];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__MapsSuggestionsRatingRequestSource__q_updateHistoryEntriesWithHandler___block_invoke_250;
    block[3] = &unk_1E81F7F08;
    objc_copyWeak(&v31, (a1 + 80));
    v20 = *(a1 + 64);
    v21 = *(a1 + 48);
    *&v22 = *(a1 + 72);
    *(&v22 + 1) = *(a1 + 56);
    *&v23 = v21;
    *(&v23 + 1) = v20;
    v29 = v23;
    v30 = v22;
    dispatch_group_notify(v6, v19, block);

    objc_destroyWeak(&v31);
    objc_destroyWeak(v45);
    v5 = v41;
LABEL_28:

    goto LABEL_29;
  }

  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v48 = v3;
    _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_ERROR, "Error reading MapsSync: %@", buf, 0xCu);
  }

  [WeakRetained addOrUpdateMySuggestionEntries:MEMORY[0x1E695E0F0]];
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))();
  }

LABEL_29:
}

void __73__MapsSuggestionsRatingRequestSource__q_updateHistoryEntriesWithHandler___block_invoke_242(uint64_t a1, void *a2, char a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  dispatch_group_enter(*(a1 + 32));
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v5 name];
    *buf = 138412290;
    v20 = v7;
    _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "fetchLastVisitAtMapItem: %@", buf, 0xCu);
  }

  v8 = *(*(a1 + 40) + 40);
  v9 = *(a1 + 80);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__MapsSuggestionsRatingRequestSource__q_updateHistoryEntriesWithHandler___block_invoke_243;
  v12[3] = &unk_1E81F7E18;
  objc_copyWeak(&v17, (a1 + 72));
  v13 = *(a1 + 32);
  v10 = v5;
  v14 = v10;
  v15 = *(a1 + 48);
  v16 = *(a1 + 64);
  v18 = a3;
  if (![v8 fetchLastVisitAtMapItem:v10 withinDistance:v12 handler:v9])
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v10;
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "We got no response from MSgRoutine for %@", buf, 0xCu);
    }

    dispatch_group_leave(*(a1 + 32));
  }

  objc_destroyWeak(&v17);
}

void __73__MapsSuggestionsRatingRequestSource__q_updateHistoryEntriesWithHandler___block_invoke_243(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = WeakRetained[3];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__MapsSuggestionsRatingRequestSource__q_updateHistoryEntriesWithHandler___block_invoke_244;
    block[3] = &unk_1E81F7DF0;
    v15 = v9;
    v16 = *(a1 + 32);
    v17 = v7;
    v18 = v8;
    v19 = *(a1 + 40);
    v20 = *(a1 + 48);
    v21 = *(a1 + 64);
    v22 = *(a1 + 80);
    dispatch_async(v12, block);

    v13 = v15;
  }

  else
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v24 = "MapsSuggestionsRatingRequestSource.mm";
      v25 = 1026;
      v26 = 311;
      v27 = 2082;
      v28 = "[MapsSuggestionsRatingRequestSource _q_updateHistoryEntriesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf3 went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __73__MapsSuggestionsRatingRequestSource__q_updateHistoryEntriesWithHandler___block_invoke_244(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32) == 0;
  v3 = GEOFindOrCreateLog();
  v4 = v3;
  if (v2)
  {
    v6 = v3;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 48);
      v7 = *(a1 + 56);
      v9 = [*(a1 + 64) _hasPlaceQuestionnaire];
      v10 = [*(a1 + 64) name];
      v19 = 138413058;
      v20 = v8;
      v21 = 2112;
      v22 = v7;
      v23 = 1024;
      v24 = v9;
      v25 = 2112;
      v26 = v10;
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "lastVisitStartTime: %@; lastVisitEndTime: %@; _hasPlaceQuestionnaire: %d for mapItem: %@", &v19, 0x26u);
    }

    v11 = 56;
    if (!*(a1 + 56))
    {
      v11 = 48;
    }

    v12 = *(a1 + v11);
    v13 = v12;
    if (v13)
    {
      v14 = [*(*(*(a1 + 72) + 8) + 40) laterDate:v13];
      v15 = v14;
      if (v14 == v13)
      {
        v16 = [*(a1 + 64) _hasPlaceQuestionnaire];

        if (v16)
        {
          v17 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v18 = [*(a1 + 64) name];
            v19 = 138412290;
            v20 = v18;
            _os_log_impl(&dword_1C5126000, v17, OS_LOG_TYPE_DEBUG, "Updating mostRecentDate/MapItem/IsBrandNew for mapItem: %@", &v19, 0xCu);
          }

          objc_storeStrong((*(*(a1 + 72) + 8) + 40), v12);
          objc_storeStrong((*(*(a1 + 80) + 8) + 40), *(a1 + 64));
          *(*(*(a1 + 88) + 8) + 24) = *(a1 + 96);
        }
      }

      else
      {
      }
    }

    dispatch_group_leave(*(a1 + 40));
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v19 = 138412290;
      v20 = v5;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "Error getting last visit: %@", &v19, 0xCu);
    }

    dispatch_group_leave(*(a1 + 40));
  }
}

void __73__MapsSuggestionsRatingRequestSource__q_updateHistoryEntriesWithHandler___block_invoke_247(uint64_t a1, char a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained[3];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__MapsSuggestionsRatingRequestSource__q_updateHistoryEntriesWithHandler___block_invoke_248;
    block[3] = &unk_1E81F7E68;
    v15 = a2;
    v9 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v12 = v9;
    v14 = *(a1 + 48);
    v13 = v5;
    dispatch_async(v8, block);
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v17 = "MapsSuggestionsRatingRequestSource.mm";
      v18 = 1026;
      v19 = 350;
      v20 = 2082;
      v21 = "[MapsSuggestionsRatingRequestSource _q_updateHistoryEntriesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf3 went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __73__MapsSuggestionsRatingRequestSource__q_updateHistoryEntriesWithHandler___block_invoke_248(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64))
  {
    v2 = *(a1 + 56);
    v3 = MapsSuggestionsMapItemConvertIfNeeded(*(a1 + 32));
    (*(v2 + 16))(v2, v3, *(a1 + 48) == 0);

    v4 = *(a1 + 40);

    dispatch_group_leave(v4);
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [*(a1 + 32) name];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "canProduceRatingRequestForMapItem returned NO. We should not suggest a RatingRequest for %@", &v7, 0xCu);
    }

    dispatch_group_leave(*(a1 + 40));
  }
}

void __73__MapsSuggestionsRatingRequestSource__q_updateHistoryEntriesWithHandler___block_invoke_250(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!WeakRetained)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "MapsSuggestionsRatingRequestSource.mm";
      *&buf[12] = 1026;
      *&buf[14] = 372;
      *&buf[18] = 2082;
      *&buf[20] = "[MapsSuggestionsRatingRequestSource _q_updateHistoryEntriesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelfNotify went away in %{public}s", buf, 0x1Cu);
    }

    goto LABEL_51;
  }

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = [*(*(*(a1 + 40) + 8) + 40) name];
      *buf = 138412290;
      *&buf[4] = v4;
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "Winning mapItem being sent for RatingRequest entry creation is: %@", buf, 0xCu);
    }

    if (*(*(*(a1 + 48) + 8) + 24) != 1 || ([*(WeakRetained + 6) hasBudgetLeft] & 1) != 0)
    {
      v5 = MapsSuggestionsMapItemConvertIfNeeded(*(*(*(a1 + 40) + 8) + 40));
      v6 = *(*(*(a1 + 56) + 8) + 40);
      v7 = v5;
      v45 = v6;
      v8 = [MapsSuggestionsEntry alloc];
      v9 = [v7 name];
      v10 = [(MapsSuggestionsEntry *)v8 initWithType:21 title:v9];

      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"RatingRequest_%llu", objc_msgSend(v7, "_muid")];
      [(MapsSuggestionsEntry *)v10 setString:v11 forKey:@"MapsSuggestionsMapsSyncSourcePK"];

      [(MapsSuggestionsEntry *)v10 setString:@"MapsSuggestionsMapsSyncSourcePK" forKey:@"MapsSuggestionsPrimaryKey"];
      [(MapsSuggestionsEntry *)v10 setBoolean:1 forKey:@"MapsSuggestionsIsNotADestinationKey"];
      [(MapsSuggestionsEntry *)v10 setDate:v45 forKey:@"MapsSuggestionsCoreRoutineLastVisit"];
      [(MapsSuggestionsEntry *)v10 setGeoMapItem:v7];
      GEOConfigGetDouble();
      [(MapsSuggestionsEntry *)v10 setWeight:?];
      v12 = v10;
      v13 = v12;
      if (v12)
      {
        v14 = [v12 geoMapItem];
        v15 = v14 == 0;

        if (!v15)
        {
          v16 = [v13 geoMapItem];
          v17 = MapsSuggestionsSetLocationFromMapItem(v13, v16, 6);

          v18 = [v13 geoMapItem];
          v19 = v18;
          if (!v18)
          {
            v23 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446978;
              *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRatingRequestSource.mm";
              *&buf[12] = 1024;
              *&buf[14] = 166;
              *&buf[18] = 2082;
              *&buf[20] = "NSArray<NSString *> *_extractTitleAndSubtitleFromMapItem(MapsSuggestionsMapItem *__strong)";
              *&buf[28] = 2082;
              *&buf[30] = "nil == (mapItem)";
              _os_log_impl(&dword_1C5126000, v23, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a mapItem", buf, 0x26u);
            }

            goto LABEL_36;
          }

          v20 = [v18 name];
          v21 = [v20 length] == 0;

          if (v21)
          {
            v23 = 0;
          }

          else
          {
            v22 = [v19 name];
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            *&buf[24] = __Block_byref_object_copy__16;
            *&buf[32] = __Block_byref_object_dispose__16;
            v53 = 0;
            v51[0] = MEMORY[0x1E69E9820];
            v51[1] = 3221225472;
            v51[2] = ___ZL18_firstLineOfStringP8NSString_block_invoke_0;
            v51[3] = &unk_1E81F7C60;
            v51[4] = buf;
            [v22 enumerateLinesUsingBlock:v51];
            v23 = *(*&buf[8] + 40);
            _Block_object_dispose(buf, 8);

            if (v23)
            {
              v24 = MapsSuggestionsMapItemShortAddress(v19);
              v25 = [v24 containsString:v23];

              if (!v25)
              {
LABEL_34:
                if ([v23 length])
                {
                  *buf = v23;
                  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
LABEL_37:

                  if ([v27 count])
                  {
                    v33 = [v27 firstObject];
                    [v13 setUndecoratedTitle:v33];

                    if ([v27 count]>= 2)
                    {
                      v34 = [v27 lastObject];
                      [v13 setUndecoratedSubtitle:v34];
                    }
                  }

                  goto LABEL_40;
                }

LABEL_36:
                v27 = 0;
                goto LABEL_37;
              }
            }
          }

          v32 = MapsSuggestionsMapItemShortAddress(v19);

          v23 = v32;
          goto LABEL_34;
        }

        v27 = GEOFindOrCreateLog();
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
LABEL_40:

          if (v13)
          {
            v35 = *(WeakRetained + 4);
            v36 = *(*(*(a1 + 40) + 8) + 40);
            v47[0] = MEMORY[0x1E69E9820];
            v47[1] = 3221225472;
            v47[2] = __73__MapsSuggestionsRatingRequestSource__q_updateHistoryEntriesWithHandler___block_invoke_251;
            v47[3] = &unk_1E81F7EE0;
            objc_copyWeak(&v50, (a1 + 64));
            v46 = *(a1 + 32);
            v37 = v46;
            v49 = v46;
            v38 = v13;
            v48 = v38;
            if (![v35 didProduceRatingRequestForMapItem:v36 handler:v47])
            {
              v39 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                v40 = *(*(*(a1 + 40) + 8) + 40);
                *buf = 138412290;
                *&buf[4] = v40;
                _os_log_impl(&dword_1C5126000, v39, OS_LOG_TYPE_ERROR, "Could not write the RatingRequest for MapItem %@", buf, 0xCu);
              }

              [WeakRetained addOrUpdateMySuggestionEntries:MEMORY[0x1E695E0F0]];
              v41 = *(a1 + 32);
              if (v41)
              {
                (*(v41 + 16))();
              }
            }

            objc_destroyWeak(&v50);
            v13 = v38;
          }

          else
          {
            v42 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              v43 = *(*(*(a1 + 40) + 8) + 40);
              *buf = 138412290;
              *&buf[4] = v43;
              _os_log_impl(&dword_1C5126000, v42, OS_LOG_TYPE_ERROR, "Could not make Entry out of MapItem %@", buf, 0xCu);
            }

            [WeakRetained addOrUpdateMySuggestionEntries:MEMORY[0x1E695E0F0]];
            v44 = *(a1 + 32);
            if (v44)
            {
              (*(v44 + 16))();
            }
          }

LABEL_51:

          goto LABEL_52;
        }

        *buf = 136446978;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRatingRequestSource.mm";
        *&buf[12] = 1024;
        *&buf[14] = 188;
        *&buf[18] = 2082;
        *&buf[20] = "BOOL _addFieldsToSuggestionsEntry(MapsSuggestionsEntry *__strong)";
        *&buf[28] = 2082;
        *&buf[30] = "nil == (entry.geoMapItem)";
        v28 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a mapItem to be set in advance";
      }

      else
      {
        v27 = GEOFindOrCreateLog();
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_40;
        }

        *buf = 136446978;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRatingRequestSource.mm";
        *&buf[12] = 1024;
        *&buf[14] = 187;
        *&buf[18] = 2082;
        *&buf[20] = "BOOL _addFieldsToSuggestionsEntry(MapsSuggestionsEntry *__strong)";
        *&buf[28] = 2082;
        *&buf[30] = "nil == (entry)";
        v28 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires suggestion entry";
      }

      _os_log_impl(&dword_1C5126000, v27, OS_LOG_TYPE_ERROR, v28, buf, 0x26u);
      goto LABEL_40;
    }

    v29 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v30 = [*(*(*(a1 + 40) + 8) + 40) name];
      *buf = 138412290;
      *&buf[4] = v30;
      _os_log_impl(&dword_1C5126000, v29, OS_LOG_TYPE_DEBUG, "No budget left to suggest this RatingRequest : %@", buf, 0xCu);
    }

    [WeakRetained addOrUpdateMySuggestionEntries:MEMORY[0x1E695E0F0]];
  }

  else
  {
    v26 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v26, OS_LOG_TYPE_DEBUG, "Found no suitable MapItem to generate RatingRequest entry", buf, 2u);
    }

    [WeakRetained addOrUpdateMySuggestionEntries:MEMORY[0x1E695E0F0]];
  }

  v31 = *(a1 + 32);
  if (v31)
  {
    (*(v31 + 16))();
  }

LABEL_52:
}

void __73__MapsSuggestionsRatingRequestSource__q_updateHistoryEntriesWithHandler___block_invoke_251(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[3];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__MapsSuggestionsRatingRequestSource__q_updateHistoryEntriesWithHandler___block_invoke_252;
    block[3] = &unk_1E81F7EB8;
    v14 = v6;
    v15 = v5;
    v12 = *(a1 + 40);
    v10 = v12;
    v18 = v12;
    v16 = *(a1 + 32);
    v17 = v8;
    dispatch_async(v9, block);

    v11 = v14;
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v20 = "MapsSuggestionsRatingRequestSource.mm";
      v21 = 1026;
      v22 = 397;
      v23 = 2082;
      v24 = "[MapsSuggestionsRatingRequestSource _q_updateHistoryEntriesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __73__MapsSuggestionsRatingRequestSource__q_updateHistoryEntriesWithHandler___block_invoke_252(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) || (v7 = *(a1 + 40)) == 0)
  {
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v3 = *(a1 + 40);
      v5 = [*(*(*(a1 + 72) + 8) + 40) name];
      *buf = 138412802;
      v19 = v4;
      v20 = 2112;
      v21 = v3;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_ERROR, "Error during the writing of the RatingRequest: %@ ; timeWritten: %@ ; for mapItem:%@", buf, 0x20u);
    }

    v6 = *(a1 + 64);
    if (v6)
    {
      (*(v6 + 16))();
    }
  }

  else
  {
    GEOConfigGetDouble();
    v8 = [v7 dateByAddingTimeInterval:?];
    [*(a1 + 48) setExpires:v8];

    v9 = *(a1 + 56);
    v17 = *(a1 + 48);
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
    [v9 addOrUpdateMySuggestionEntries:v10];

    v11 = [*(a1 + 48) uniqueIdentifier];
    v12 = GEOConfigGetString();
    v13 = v12;
    if (!v12 || ([v12 isEqualToString:v11] & 1) == 0)
    {
      v14 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = [*(a1 + 48) title];
        *buf = 138412290;
        v19 = v15;
        _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_DEBUG, "We will spend budget on this new Entry: %@", buf, 0xCu);
      }

      [*(*(a1 + 56) + 48) spendNow];
      GEOConfigSetString();
    }

    v16 = *(a1 + 64);
    if (v16)
    {
      (*(v16 + 16))();
    }
  }
}

void __77__MapsSuggestionsRatingRequestSource_initWithMapsSync_routine_delegate_name___block_invoke_cold_1(int a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_fault_impl(&dword_1C5126000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unreachable reached: invalid offline mode value %x", v1, 8u);
}

@end