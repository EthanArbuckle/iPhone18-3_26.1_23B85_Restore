@interface MapsSuggestionsTracker
- (BOOL)_q_hasTitleFormatterForType:(uint64_t)a1;
- (MapsSuggestionsTracker)initWithManager:(id)a3 requirements:(id)a4 network:(id)a5 flightUpdater:(id)a6 virtualGarage:(id)a7;
- (NSString)uniqueName;
- (id)_q_bestValidOfflineETAForEntry:(void *)a3 destinationKey:;
- (id)_q_distanceTitleFormatterForType:(uint64_t)a1;
- (id)_q_etaChargeTitleFormatterForType:(uint64_t)a1;
- (id)_q_etaTitleFormatterForType:(uint64_t)a1;
- (uint64_t)_q_isUnusableETA:(uint64_t)a1;
- (uint64_t)_q_scheduleRefresh;
- (void)_q_captureSignalsFromEntries:(uint64_t)a1;
- (void)_q_decorateETA:(void *)a3 forEntry:;
- (void)_q_decorateEntry:(void *)a3 eta:(void *)a4 requiredChargeLevel:(void *)a5 currentChargeLevel:;
- (void)_q_decorateFlightInfoForEntry:(dispatch_queue_t *)a1;
- (void)_q_prunePreviousETAs;
- (void)_q_refresh;
- (void)_q_rememberETA:(void *)a3 forEntry:;
- (void)_q_requestChargeInfoAndDecorateEntry:(void *)a3 eta:;
- (void)_q_requestDistances;
- (void)_q_requestETAs;
- (void)_q_requestFlightInfo;
- (void)_q_resetAllTitleFormatting;
- (void)_q_scheduleRefreshIfCurrentLocationIsMuchBetterThanLocation:(uint64_t)a1;
- (void)_unschedule;
- (void)clearLocationAndETAs;
- (void)dealloc;
- (void)rescheduleRefreshOnlyIfAlreadyRunning;
- (void)resetAllTitleFormatting;
- (void)scheduleRefresh;
- (void)setAutomobileOptions:(id)a3;
- (void)setLocation:(id)a3;
- (void)setMapType:(int)a3;
- (void)setTitleFormatter:(id)a3 forType:(int64_t)a4;
- (void)trackSuggestionEntries:(id)a3 transportType:(int)a4;
- (void)unschedule;
@end

@implementation MapsSuggestionsTracker

- (void)_q_prunePreviousETAs
{
  if (a1)
  {
    OUTLINED_FUNCTION_22(a1);
    v2 = *(v1 + 128);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __46__MapsSuggestionsTracker__q_prunePreviousETAs__block_invoke;
    v5[3] = &unk_1E81F6860;
    v5[4] = v1;
    v3 = [v2 MSg_mutableCopyIf:v5];
    v4 = *(v1 + 128);
    *(v1 + 128) = v3;
  }
}

- (void)scheduleRefresh
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "scheduleRefresh", buf, 2u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__MapsSuggestionsTracker_scheduleRefresh__block_invoke;
  block[3] = &unk_1E81F53E8;
  objc_copyWeak(&v6, buf);
  dispatch_async(queue, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __41__MapsSuggestionsTracker_scheduleRefresh__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 96) = 1;
    [(MapsSuggestionsTracker *)WeakRetained _q_scheduleRefresh];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsTracker.m";
      v6 = 1026;
      v7 = 913;
      v8 = 2082;
      v9 = "[MapsSuggestionsTracker scheduleRefresh]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

- (uint64_t)_q_scheduleRefresh
{
  if (result)
  {
    OUTLINED_FUNCTION_22(result);
    v3 = GEOFindOrCreateLog();
    if (OUTLINED_FUNCTION_17(v3))
    {
      *v6 = 0;
      OUTLINED_FUNCTION_7(&dword_1C5126000, v4, v5, "_refresh schedule", v6);
    }

    return [*(v1 + 24) scheduleWithTimeInterval:*(v1 + 48) repeatAfter:*(v1 + 32) leeway:*(v1 + 40)];
  }

  return result;
}

- (MapsSuggestionsTracker)initWithManager:(id)a3 requirements:(id)a4 network:(id)a5 flightUpdater:(id)a6 virtualGarage:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v60.receiver = self;
  v60.super_class = MapsSuggestionsTracker;
  v17 = [(MapsSuggestionsTracker *)&v60 init];
  if (v17)
  {
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("MapsSuggestionsTrackerQueue", v18);
    queue = v17->_queue;
    v17->_queue = v19;

    objc_storeWeak(&v17->_manager, v12);
    v21 = [v13 copy];
    requirements = v17->_requirements;
    v17->_requirements = v21;

    GEOConfigGetDouble();
    v17->_refreshInterval = v23;
    GEOConfigGetDouble();
    v17->_refreshLeeway = v24;
    GEOConfigGetDouble();
    v26 = v25;
    GEOConfigGetDouble();
    v17->_refreshDeferTime = v27;
    v17->_transportType = GEOTransportTypeFromUserPreference();
    v17->_mapType = 0;
    v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
    etaTitleFormatters = v17->_etaTitleFormatters;
    v17->_etaTitleFormatters = v28;

    v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
    distanceTitleFormatters = v17->_distanceTitleFormatters;
    v17->_distanceTitleFormatters = v30;

    v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
    etaChargeTitleFormatters = v17->_etaChargeTitleFormatters;
    v17->_etaChargeTitleFormatters = v32;

    v34 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:5];
    previousETAs = v17->_previousETAs;
    v17->_previousETAs = v34;

    v36 = objc_alloc_init(MapsSuggestionsDonater);
    donater = v17->_donater;
    v17->_donater = v36;

    objc_initWeak(&location, v17);
    v57[1] = MEMORY[0x1E69E9820];
    v57[2] = 3221225472;
    v57[3] = __91__MapsSuggestionsTracker_initWithManager_requirements_network_flightUpdater_virtualGarage___block_invoke;
    v57[4] = &unk_1E81F5258;
    objc_copyWeak(&v58, &location);
    v38 = _GEOConfigAddBlockListenerForKey();
    transportTypeChangedListener = v17->_transportTypeChangedListener;
    v17->_transportTypeChangedListener = v38;

    objc_storeStrong(&v17->_networkRequester, a5);
    v40 = +[MapsSuggestionsPredictor sharedPredictor];
    predictor = v17->_predictor;
    v17->_predictor = v40;

    v42 = [[MapsSuggestionsETARequester alloc] initWithNetworkRequester:v17->_networkRequester transportModePredictor:v17->_predictor requirements:v13];
    etaRequester = v17->_etaRequester;
    v17->_etaRequester = v42;

    objc_storeStrong(&v17->_virtualGarage, a7);
    objc_storeStrong(&v17->_flightUpdater, a6);
    v44 = [MapsSuggestionsGCDTimer alloc];
    v45 = v17->_queue;
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __91__MapsSuggestionsTracker_initWithManager_requirements_network_flightUpdater_virtualGarage___block_invoke_225;
    v56[3] = &unk_1E81F53E8;
    objc_copyWeak(v57, &location);
    v46 = [(MapsSuggestionsGCDTimer *)v44 initWithName:@"MapsSuggestionsTrackerRefreshTimer" queue:v45 block:v56];
    refreshTimer = v17->_refreshTimer;
    v17->_refreshTimer = v46;

    v48 = [MapsSuggestionsCanKicker alloc];
    v49 = v17->_queue;
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __91__MapsSuggestionsTracker_initWithManager_requirements_network_flightUpdater_virtualGarage___block_invoke_231;
    v54[3] = &unk_1E81F53E8;
    objc_copyWeak(&v55, &location);
    v50 = [(MapsSuggestionsCanKicker *)v48 initWithName:@"MapsSuggestionsTrackerLocationWiper" time:v49 queue:v54 block:v26];
    currentLocationWiper = v17->_currentLocationWiper;
    v17->_currentLocationWiper = v50;

    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, v17, onLocaleCurrentLocaleDidChangeNotification, *MEMORY[0x1E695E6E0], 0, CFNotificationSuspensionBehaviorCoalesce);
    objc_destroyWeak(&v55);
    objc_destroyWeak(v57);
    objc_destroyWeak(&v58);
    objc_destroyWeak(&location);
  }

  return v17;
}

void __91__MapsSuggestionsTracker_initWithManager_requirements_network_flightUpdater_virtualGarage___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsTracker *)WeakRetained _q_scheduleRefresh];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsTracker.m";
      v6 = 1026;
      v7 = 141;
      v8 = 2082;
      v9 = "[MapsSuggestionsTracker initWithManager:requirements:network:flightUpdater:virtualGarage:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void __91__MapsSuggestionsTracker_initWithManager_requirements_network_flightUpdater_virtualGarage___block_invoke_225(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsTracker *)WeakRetained _q_refresh];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsTracker.m";
      v6 = 1026;
      v7 = 157;
      v8 = 2082;
      v9 = "[MapsSuggestionsTracker initWithManager:requirements:network:flightUpdater:virtualGarage:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void __91__MapsSuggestionsTracker_initWithManager_requirements_network_flightUpdater_virtualGarage___block_invoke_231(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained resetAllTitleFormatting];
    [v2 setCurrentLocation:0];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsTracker.m";
      v6 = 1026;
      v7 = 165;
      v8 = 2082;
      v9 = "[MapsSuggestionsTracker initWithManager:requirements:network:flightUpdater:virtualGarage:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

- (void)dealloc
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveEveryObserver(LocalCenter, self);
  [(MapsSuggestionsVirtualGarage *)self->_virtualGarage closeConnection];
  [(MapsSuggestionsTracker *)self _unschedule];
  [(MapsSuggestionsTracker *)self setTrackedEntries:0];
  [(MapsSuggestionsCanKicker *)self->_currentLocationWiper cancel];
  queue = self->_queue;
  self->_queue = 0;

  GEOConfigRemoveBlockListener();
  v5.receiver = self;
  v5.super_class = MapsSuggestionsTracker;
  [(MapsSuggestionsTracker *)&v5 dealloc];
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (void)setTitleFormatter:(id)a3 forType:(int64_t)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__MapsSuggestionsTracker_setTitleFormatter_forType___block_invoke;
    block[3] = &unk_1E81F6838;
    v11 = v6;
    v12 = self;
    v13 = a4;
    dispatch_sync(queue, block);
    v9 = v11;
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsTracker.m";
      v16 = 1024;
      v17 = 202;
      v18 = 2082;
      v19 = "[MapsSuggestionsTracker setTitleFormatter:forType:]";
      v20 = 2082;
      v21 = "nil == (titleFormatter)";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a title formatter", buf, 0x26u);
    }
  }
}

void __52__MapsSuggestionsTracker_setTitleFormatter_forType___block_invoke(uint64_t *a1)
{
  if ([a1[4] conformsToProtocol:&unk_1F44735C0])
  {
    v2 = a1[4];
    v3 = *(a1[5] + 72);
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:a1[6]];
    [v3 setObject:v2 forKeyedSubscript:v4];
  }

  if ([a1[4] conformsToProtocol:&unk_1F4475608])
  {
    v5 = a1[4];
    v6 = *(a1[5] + 80);
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:a1[6]];
    [v6 setObject:v5 forKeyedSubscript:v7];
  }

  if ([a1[4] conformsToProtocol:&unk_1F447D490])
  {
    v8 = a1[4];
    v9 = *(a1[5] + 88);
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:a1[6]];
    [v9 setObject:v8 forKeyedSubscript:v10];
  }
}

- (void)trackSuggestionEntries:(id)a3 transportType:(int)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__MapsSuggestionsTracker_trackSuggestionEntries_transportType___block_invoke;
  block[3] = &unk_1E81F6888;
  block[4] = self;
  v8 = v6;
  v14 = a4;
  v12 = v8;
  v13 = &v15;
  dispatch_sync(queue, block);
  if (*(v16 + 24) == 1)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *v10 = 0;
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "New entries contained one or more previously-untracked entries. Forcing immediate update.", v10, 2u);
    }

    [(MapsSuggestionsTracker *)self scheduleRefresh];
  }

  _Block_object_dispose(&v15, 8);
}

- (void)_q_requestETAs
{
  v3 = GEOFindOrCreateLog();
  if (OUTLINED_FUNCTION_17(v3))
  {
    *v6 = 0;
    OUTLINED_FUNCTION_7(&dword_1C5126000, v4, v5, "No current location, can't make an ETA request.", v6);
  }

  *a1 = v1;
}

void __40__MapsSuggestionsTracker__q_requestETAs__block_invoke_309(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "Error while getting ETAs: %@", buf, 0xCu);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = WeakRetained;
    if (WeakRetained)
    {
      v6 = *(WeakRetained + 1);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __40__MapsSuggestionsTracker__q_requestETAs__block_invoke_310;
      v8[3] = &unk_1E81F4F48;
      objc_copyWeak(&v10, (a1 + 40));
      v9 = *(a1 + 32);
      dispatch_async(v6, v8);

      objc_destroyWeak(&v10);
    }

    else
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v12 = "MapsSuggestionsTracker.m";
        v13 = 1026;
        v14 = 606;
        v15 = 2082;
        v16 = "[MapsSuggestionsTracker _q_requestETAs]_block_invoke";
        _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: outerStrongSelf went away in %{public}s", buf, 0x1Cu);
      }
    }
  }
}

void __40__MapsSuggestionsTracker__q_requestETAs__block_invoke_310(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * v7);
          if ([v8 BOOLeanForKey:@"MapsSuggestionsIsNotADestinationKey" is:{1, v11}] & 1) == 0 && objc_msgSend(v8, "BOOLeanForKey:", @"MapsSuggestionsNeedsETATrackingKey") && objc_msgSend(v8, "containsKey:", @"MapsSuggestionsETAKey") && (__40__MapsSuggestionsTracker__q_requestETAs__block_invoke_310_cold_1(v8, WeakRetained + 14, WeakRetained, buf))
          {
            v10 = *buf;
            goto LABEL_19;
          }

          ++v7;
        }

        while (v5 != v7);
        v9 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        v5 = v9;
      }

      while (v9);
    }
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "MapsSuggestionsTracker.m";
      v17 = 1026;
      v18 = 608;
      v19 = 2082;
      v20 = "[MapsSuggestionsTracker _q_requestETAs]_block_invoke";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v3 = v10;
LABEL_19:
  }
}

- (void)_q_requestChargeInfoAndDecorateEntry:(void *)a3 eta:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    v7 = [v5 numberForKey:@"MapsSuggestionsRequiredChargeForEVKey"];
    v8 = [v5 stringForKey:@"MapsSuggestionsVehicleIdentifierKey"];
    v9 = v8;
    if (v7 && v8)
    {
      [*(a1 + 144) openConnection];
      objc_initWeak(&location, a1);
      v10 = *(a1 + 144);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __67__MapsSuggestionsTracker__q_requestChargeInfoAndDecorateEntry_eta___block_invoke;
      v11[3] = &unk_1E81F6900;
      objc_copyWeak(&v15, &location);
      v12 = v5;
      v13 = v6;
      v14 = v7;
      [v10 stateOfChargeForVehicleWithIdentifier:v9 handler:v11];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    else
    {
      [MapsSuggestionsTracker _q_requestChargeInfoAndDecorateEntry:eta:];
    }
  }
}

void __67__MapsSuggestionsTracker__q_requestChargeInfoAndDecorateEntry_eta___block_invoke(id *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[1];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__MapsSuggestionsTracker__q_requestChargeInfoAndDecorateEntry_eta___block_invoke_312;
    v11[3] = &unk_1E81F68D8;
    objc_copyWeak(&v17, a1 + 7);
    v12 = v6;
    v13 = a1[4];
    v14 = a1[5];
    v15 = a1[6];
    v16 = v5;
    dispatch_async(v9, v11);

    objc_destroyWeak(&v17);
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v19 = "MapsSuggestionsTracker.m";
      v20 = 1026;
      v21 = 667;
      v22 = 2082;
      v23 = "[MapsSuggestionsTracker _q_requestChargeInfoAndDecorateEntry:eta:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __67__MapsSuggestionsTracker__q_requestChargeInfoAndDecorateEntry_eta___block_invoke_312(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      __67__MapsSuggestionsTracker__q_requestChargeInfoAndDecorateEntry_eta___block_invoke_312_cold_1(a1 + 32, a1, WeakRetained);
    }

    else
    {
      __67__MapsSuggestionsTracker__q_requestChargeInfoAndDecorateEntry_eta___block_invoke_312_cold_2(a1, WeakRetained);
    }
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsTracker.m";
      v6 = 1026;
      v7 = 670;
      v8 = 2082;
      v9 = "[MapsSuggestionsTracker _q_requestChargeInfoAndDecorateEntry:eta:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

- (void)_q_requestFlightInfo
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_INFO, "Live flight updates have been disabled", v3, 2u);
  }

  *a1 = v2;
}

void __46__MapsSuggestionsTracker__q_requestFlightInfo__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 32) == v5)
    {
      if (!v6)
      {
        v11 = WeakRetained[1];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __46__MapsSuggestionsTracker__q_requestFlightInfo__block_invoke_315;
        v12[3] = &unk_1E81F4F48;
        objc_copyWeak(&v14, (a1 + 40));
        v13 = v5;
        dispatch_async(v11, v12);

        objc_destroyWeak(&v14);
        goto LABEL_9;
      }

      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v5 uniqueIdentifier];
        *buf = 138412546;
        v16 = v10;
        v17 = 2112;
        *v18 = v6;
        _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "Error when updating Flight for Entry %@: %@", buf, 0x16u);
      }
    }

    else
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsTracker.m";
        v17 = 1024;
        *v18 = 721;
        *&v18[4] = 2082;
        *&v18[6] = "[MapsSuggestionsTracker _q_requestFlightInfo]_block_invoke";
        v19 = 2082;
        v20 = "returnedEntry != entry";
        _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. The returned Entry must always equal the one we asked for", buf, 0x26u);
      }
    }
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v16 = "MapsSuggestionsTracker.m";
      v17 = 1026;
      *v18 = 720;
      *&v18[4] = 2082;
      *&v18[6] = "[MapsSuggestionsTracker _q_requestFlightInfo]_block_invoke";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }

LABEL_9:
}

void __46__MapsSuggestionsTracker__q_requestFlightInfo__block_invoke_315(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsTracker *)WeakRetained _q_decorateFlightInfoForEntry:?];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsTracker.m";
      v7 = 1026;
      v8 = 728;
      v9 = 2082;
      v10 = "[MapsSuggestionsTracker _q_requestFlightInfo]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

- (void)setLocation:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__MapsSuggestionsTracker_setLocation___block_invoke;
  v7[3] = &unk_1E81F60A0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __38__MapsSuggestionsTracker_setLocation___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (MapsSuggestionsLoggingIsVerbose())
  {
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 32);
      v12 = 138412290;
      v13 = v3;
      _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "LOCATION received: %@", &v12, 0xCu);
    }
  }

  if (MapsSuggestionsTrackerIsUsableLocation(*(a1 + 32)))
  {
    v9 = [*(a1 + 40) currentLocation];
    [*(*(a1 + 40) + 120) kickCanBySameTime];
    if (MapsSuggestionsLoggingIsVerbose())
    {
      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(a1 + 32);
        v12 = 138412290;
        v13 = v11;
        _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "LOCATION accepted: %@", &v12, 0xCu);
      }
    }

    [*(a1 + 40) setCurrentLocation:*(a1 + 32)];
    [(MapsSuggestionsTracker *)*(a1 + 40) _q_scheduleRefreshIfCurrentLocationIsMuchBetterThanLocation:v9];
  }

  else
  {
    if (MapsSuggestionsLoggingIsVerbose())
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = [*(a1 + 40) currentLocation];
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "LOCATION dropped for current one: %@", &v12, 0xCu);
      }
    }

    v6 = [*(a1 + 40) currentLocation];
    IsUsableLocation = MapsSuggestionsTrackerIsUsableLocation(v6);

    if ((IsUsableLocation & 1) == 0)
    {
      if (MapsSuggestionsLoggingIsVerbose())
      {
        v8 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v12) = 0;
          _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "LOCATION reset to nil", &v12, 2u);
        }
      }

      [*(a1 + 40) setCurrentLocation:0];
    }
  }
}

- (void)setMapType:(int)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__MapsSuggestionsTracker_setMapType___block_invoke;
  v4[3] = &unk_1E81F5100;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(queue, v4);
}

uint64_t __37__MapsSuggestionsTracker_setMapType___block_invoke(uint64_t result)
{
  v3 = *(result + 32);
  v4 = *(result + 40);
  if (*(v3 + 160) != v4)
  {
    v8 = v1;
    v9 = v2;
    v5 = result;
    *(v3 + 160) = v4;
    [*(*(result + 32) + 104) setMapType:*(result + 40)];
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "MAP TYPE caused a Tracker REFRESH", v7, 2u);
    }

    return [(MapsSuggestionsTracker *)*(v5 + 32) _q_scheduleRefresh];
  }

  return result;
}

- (void)setAutomobileOptions:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__MapsSuggestionsTracker_setAutomobileOptions___block_invoke;
  v7[3] = &unk_1E81F60A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

uint64_t __47__MapsSuggestionsTracker_setAutomobileOptions___block_invoke(uint64_t a1)
{
  v1 = a1 + 32;
  result = *(*(a1 + 32) + 168);
  if (result != *(v1 + 8))
  {
    result = [result isEqual:?];
    if ((result & 1) == 0)
    {
      return __47__MapsSuggestionsTracker_setAutomobileOptions___block_invoke_cold_1((v1 + 8), v1);
    }
  }

  return result;
}

void __36__MapsSuggestionsTracker__q_refresh__block_invoke(uint64_t a1)
{
  *&v18[13] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained currentLocation];

    if (v3)
    {
      v4 = [v2 trackedEntries];
      v5 = [v4 count];

      if (v5)
      {
        if ((MapsSuggestionsIsInCoarseLocation() & 1) == 0)
        {
          [(MapsSuggestionsTracker *)v2 _q_requestDistances];
          [(MapsSuggestionsTracker *)v2 _q_requestETAs];
        }

        [(MapsSuggestionsTracker *)v2 _q_requestFlightInfo];
        v6 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v7 = [v2 uniqueName];
          v15 = 138412546;
          v16 = v7;
          v17 = 2080;
          *v18 = "_refresh";
          _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v15, 0x16u);
        }

        v8 = GEOFindOrCreateLog();
        if (os_signpost_enabled(v8))
        {
          LOWORD(v15) = 0;
LABEL_25:
          _os_signpost_emit_with_name_impl(&dword_1C5126000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_refresh", "", &v15, 2u);
        }
      }

      else
      {
        v12 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v15) = 0;
          _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_DEBUG, "_refresh had nothing to track", &v15, 2u);
        }

        v13 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v14 = [v2 uniqueName];
          v15 = 138412546;
          v16 = v14;
          v17 = 2080;
          *v18 = "_refresh";
          _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v15, 0x16u);
        }

        v8 = GEOFindOrCreateLog();
        if (os_signpost_enabled(v8))
        {
          LOWORD(v15) = 0;
          goto LABEL_25;
        }
      }
    }

    else
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "_refresh had no location", &v15, 2u);
      }

      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = [v2 uniqueName];
        v15 = 138412546;
        v16 = v11;
        v17 = 2080;
        *v18 = "_refresh";
        _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v15, 0x16u);
      }

      v8 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v8))
      {
        LOWORD(v15) = 0;
        goto LABEL_25;
      }
    }
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = 136446722;
      v16 = "MapsSuggestionsTracker.m";
      v17 = 1026;
      *v18 = 865;
      v18[2] = 2082;
      *&v18[3] = "[MapsSuggestionsTracker _q_refresh]_block_invoke";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v15, 0x1Cu);
    }
  }
}

- (void)rescheduleRefreshOnlyIfAlreadyRunning
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "rescheduleRefreshOnlyIfAlreadyRunning", buf, 2u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__MapsSuggestionsTracker_rescheduleRefreshOnlyIfAlreadyRunning__block_invoke;
  block[3] = &unk_1E81F53E8;
  objc_copyWeak(&v6, buf);
  dispatch_async(queue, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __63__MapsSuggestionsTracker_rescheduleRefreshOnlyIfAlreadyRunning__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 96))
    {
      [(MapsSuggestionsTracker *)WeakRetained _q_scheduleRefresh];
    }
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsTracker.m";
      v6 = 1026;
      v7 = 925;
      v8 = 2082;
      v9 = "[MapsSuggestionsTracker rescheduleRefreshOnlyIfAlreadyRunning]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

- (void)unschedule
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "unschedule", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__MapsSuggestionsTracker_unschedule__block_invoke;
  block[3] = &unk_1E81F6168;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)clearLocationAndETAs
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__MapsSuggestionsTracker_clearLocationAndETAs__block_invoke;
  v4[3] = &unk_1E81F53E8;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __46__MapsSuggestionsTracker_clearLocationAndETAs__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:5];
    v4 = WeakRetained[16];
    WeakRetained[16] = v3;

    [WeakRetained setCurrentLocation:0];
    [(MapsSuggestionsTracker *)WeakRetained _q_resetAllTitleFormatting];
  }

  else
  {
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsTracker.m";
      v7 = 1026;
      v8 = 962;
      v9 = 2082;
      v10 = "[MapsSuggestionsTracker clearLocationAndETAs]_block_invoke";
      _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

- (void)resetAllTitleFormatting
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__MapsSuggestionsTracker_resetAllTitleFormatting__block_invoke;
  v4[3] = &unk_1E81F53E8;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __49__MapsSuggestionsTracker_resetAllTitleFormatting__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsTracker *)WeakRetained _q_resetAllTitleFormatting];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsTracker.m";
      v6 = 1026;
      v7 = 988;
      v8 = 2082;
      v9 = "[MapsSuggestionsTracker resetAllTitleFormatting]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

- (void)_q_refresh
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    OUTLINED_FUNCTION_22(a1);
    v3 = GEOFindOrCreateLog();
    if (OUTLINED_FUNCTION_21(v3))
    {
      v4 = [v1 uniqueName];
      *location = 138412546;
      *&location[4] = v4;
      v12 = 2080;
      v13 = "_refresh";
      OUTLINED_FUNCTION_9_2(&dword_1C5126000, v2, v5, "{MSgDebug} OBJECT{%@} %s BEGIN", location);
    }

    v6 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v6))
    {
      *location = 0;
      OUTLINED_FUNCTION_20(&dword_1C5126000, v6, v7, 0xEEEEB0B5B2B2EEEELL, "_refresh", "", location);
    }

    objc_initWeak(location, v1);
    v8 = v1[1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__MapsSuggestionsTracker__q_refresh__block_invoke;
    block[3] = &unk_1E81F53E8;
    objc_copyWeak(&v10, location);
    dispatch_async(v8, block);
    objc_destroyWeak(&v10);
    objc_destroyWeak(location);
  }
}

- (void)_unschedule
{
  if (result)
  {
    v2 = result;
    v3 = GEOFindOrCreateLog();
    if (OUTLINED_FUNCTION_17(v3))
    {
      v6[0] = 0;
      OUTLINED_FUNCTION_7(&dword_1C5126000, v4, v5, "_unschedule", v6);
    }

    result = v2[3];
    if (result)
    {
      return [result unschedule];
    }
  }

  return result;
}

- (BOOL)_q_hasTitleFormatterForType:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  dispatch_assert_queue_V2(*(a1 + 8));
  v4 = *(a1 + 72);
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  v6 = [v4 objectForKeyedSubscript:v5];
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = *(a1 + 80);
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    v10 = [v8 objectForKeyedSubscript:v9];
    if (v10)
    {
      v7 = 1;
    }

    else
    {
      v11 = *(a1 + 88);
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
      v13 = [v11 objectForKeyedSubscript:v12];
      v7 = v13 != 0;
    }
  }

  return v7;
}

- (id)_q_etaTitleFormatterForType:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_15(a1);
    [MEMORY[0x1E696AD98] numberWithInteger:v1];
    objc_claimAutoreleasedReturnValue();
    v3 = [OUTLINED_FUNCTION_11_2() objectForKeyedSubscript:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_q_distanceTitleFormatterForType:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_15(a1);
    [MEMORY[0x1E696AD98] numberWithInteger:v1];
    objc_claimAutoreleasedReturnValue();
    v3 = [OUTLINED_FUNCTION_11_2() objectForKeyedSubscript:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_q_etaChargeTitleFormatterForType:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_15(a1);
    [MEMORY[0x1E696AD98] numberWithInteger:v1];
    objc_claimAutoreleasedReturnValue();
    v3 = [OUTLINED_FUNCTION_11_2() objectForKeyedSubscript:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_q_rememberETA:(void *)a3 forEntry:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    if (v6)
    {
      [v6 setETA:v5 forKey:@"MapsSuggestionsETAKey"];
      v7 = MapsSuggestionsDestinationKey(v6);
      v8 = *(a1 + 128);
      if (v5)
      {
        [v8 setObject:v5 forKeyedSubscript:v7];
      }

      else
      {
        [v8 removeObjectForKey:v7];
      }
    }

    else
    {
      v9 = GEOFindOrCreateLog();
      if (OUTLINED_FUNCTION_14(v9))
      {
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_6_2();
        _os_log_impl(v10, v11, v12, v13, v14, 0x26u);
      }
    }
  }
}

- (uint64_t)_q_isUnusableETA:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    v4 = [v3 transportType];
    dispatch_assert_queue_V2(*(a1 + 8));
    v5 = *(a1 + 56);
    if (v5 == 4 || v5 == v4)
    {
      a1 = [v3 isValidForLocation:*(a1 + 176) requirements:*(a1 + 16)] ^ 1;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (id)_q_bestValidOfflineETAForEntry:(void *)a3 destinationKey:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 1));
    if (!v5)
    {
      v8 = GEOFindOrCreateLog();
      if (OUTLINED_FUNCTION_14(v8))
      {
LABEL_7:
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_6_2();
        _os_log_impl(v9, v10, v11, v12, v13, 0x26u);
      }

LABEL_8:

      a1 = 0;
      goto LABEL_9;
    }

    if (!v6)
    {
      v7 = GEOFindOrCreateLog();
      if (OUTLINED_FUNCTION_14(v7))
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }

    v15 = [*(a1 + 16) objectForKeyedSubscript:v6];
    if ([(MapsSuggestionsTracker *)a1 _q_isUnusableETA:v15])
    {

      v15 = 0;
    }

    if ([v5 containsKey:@"MapsSuggestionsETAKey"])
    {
      v16 = [v5 ETAForKey:@"MapsSuggestionsETAKey"];
      if (![(MapsSuggestionsTracker *)a1 _q_isUnusableETA:v16])
      {
        goto LABEL_16;
      }
    }

    v16 = 0;
LABEL_16:
    if ([v15 isBetterThanETA:v16 requirements:*(a1 + 2)])
    {
      v17 = v15;
    }

    else
    {
      v17 = v16;
    }

    a1 = v17;
  }

LABEL_9:

  return a1;
}

- (void)_q_captureSignalsFromEntries:(uint64_t)a1
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = v3;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          v10 = [v9 geoMapItem];

          if (v10)
          {
            v11 = [a1 currentLocation];
            [v11 coordinate];
            v12 = [MapsSuggestionsSignalPack extractFromDestinationEntry:v9 originCoordinate:?];

            v13 = *(a1 + 200);
            v14 = [v12 copy];
            v15 = [v9 geoMapItem];
            [v13 storeSignalPack:v14 forMapItem:v15 andEntry:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    v3 = v16;
  }
}

void __63__MapsSuggestionsTracker_trackSuggestionEntries_transportType___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  [(MapsSuggestionsTracker *)*(a1 + 32) _q_captureSignalsFromEntries:?];
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v33;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v32 + 1) + 8 * i);
        if (-[MapsSuggestionsTracker _q_hasTitleFormatterForType:](*(a1 + 32), [v8 type]))
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v5);
  }

  v9 = *(a1 + 56);
  v10 = *(a1 + 32);
  if (v9 != *(v10 + 56))
  {
    *(v10 + 56) = v9;
    v10 = *(a1 + 32);
    v9 = *(v10 + 56);
  }

  if (v9 == 4)
  {
    v11 = GEOFindOrCreateLog();
    if (OUTLINED_FUNCTION_21(v11))
    {
      v31 = 0;
      OUTLINED_FUNCTION_13_0();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
    }

    *(*(a1 + 32) + 56) = GEOTransportTypeFromUserPreference();
    v10 = *(a1 + 32);
  }

  [(MapsSuggestionsTracker *)v10 _q_prunePreviousETAs];
  OUTLINED_FUNCTION_10_1();
  v17 = v2;
  v18 = [v17 countByEnumeratingWithState:v29 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v30;
    do
    {
      v21 = 0;
      do
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(v29[1] + 8 * v21);
        v23 = *(a1 + 32);
        [v22 type];
        v24 = [MapsSuggestionsTracker _q_etaTitleFormatterForType:v23];

        if (v24)
        {
          v25 = MapsSuggestionsDestinationKey(v22);
          v26 = [(MapsSuggestionsTracker *)*(a1 + 32) _q_bestValidOfflineETAForEntry:v22 destinationKey:v25];
          [(MapsSuggestionsTracker *)*(a1 + 32) _q_rememberETA:v26 forEntry:v22];
          if (v26)
          {
            if ((MapsSuggestionsIsInCoarseLocation() & 1) == 0)
            {
              [(MapsSuggestionsTracker *)*(a1 + 32) _q_decorateETA:v26 forEntry:v22];
            }
          }

          else
          {
            *(*(*(a1 + 48) + 8) + 24) = 1;
          }
        }

        ++v21;
      }

      while (v19 != v21);
      v27 = [v17 countByEnumeratingWithState:v29 objects:v36 count:16];
      v19 = v27;
    }

    while (v27);
  }

  v28 = [[MapsSuggestionsMutableWeakEntries alloc] initWithEntries:v17];
  [*(a1 + 32) setTrackedEntries:v28];
}

- (void)_q_decorateETA:(void *)a3 forEntry:
{
  v63 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (a1)
  {
    if (!v8)
    {
      v11 = GEOFindOrCreateLog();
      if (OUTLINED_FUNCTION_14(v11))
      {
        v57 = 136446978;
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_3();
        *&v62[6] = "nil == (entry)";
        goto LABEL_8;
      }

LABEL_9:

      goto LABEL_10;
    }

    if (!v7)
    {
      v10 = GEOFindOrCreateLog();
      if (OUTLINED_FUNCTION_14(v10))
      {
        v57 = 136446978;
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_3();
        *&v62[6] = "nil == (eta)";
LABEL_8:
        OUTLINED_FUNCTION_6_2();
        _os_log_impl(v12, v13, v14, v15, v16, 0x26u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }

    dispatch_assert_queue_V2(*(a1 + 8));
    GEOConfigGetDouble();
    v3 = MapsSuggestionsNowWithOffset(v17);
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained trackerRefreshedETAsUntil:v3];

    v19 = GEOFindOrCreateLog();
    if (OUTLINED_FUNCTION_5_0(v19))
    {
      v20 = NSStringFromMapsSuggestionsEntryType([v9 type]);
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_4_3();
      _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
    }

    v26 = GEOFindOrCreateLog();
    if (OUTLINED_FUNCTION_5_0(v26))
    {
      v27 = [a1 uniqueName];
      OUTLINED_FUNCTION_0_3();
      v60 = "_decorateETA";
      OUTLINED_FUNCTION_4_3();
      _os_log_impl(v28, v29, v30, v31, v32, 0x16u);
    }

    v33 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v33))
    {
      LOWORD(v57) = 0;
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_20(v34, v33, v35, v36, v37, v38, v39);
    }

    [v9 type];
    v40 = [MapsSuggestionsTracker _q_etaTitleFormatterForType:a1];
    if (v40)
    {
      [v9 setBoolean:1 forKey:@"MapsSuggestionsNeedsETATrackingKey"];
      [v9 setNumber:0 forKey:@"MapsSuggestionsRoutingNotAvailableKey"];
      if ([v40 formatTitlesForEntry:v9 eta:v7])
      {
        v41 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          v42 = [a1 uniqueName];
          IsVerbose = MapsSuggestionsLoggingIsVerbose();
          if (IsVerbose)
          {
            v44 = [v9 serializedBase64String];
          }

          else
          {
            v44 = &stru_1F444C108;
          }

          v57 = 138413058;
          v58 = v42;
          v59 = 2048;
          v60 = v9;
          v61 = 2112;
          *v62 = v44;
          *&v62[8] = 2112;
          *&v62[10] = v9;
          _os_log_impl(&dword_1C5126000, v41, OS_LOG_TYPE_DEBUG, "{MSgDebug} ETA UPDATE by TRACKER{%@} {%p:%@}:\n%@", &v57, 0x2Au);
          if (IsVerbose)
          {
          }
        }
      }

      v49 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        v50 = [a1 uniqueName];
        OUTLINED_FUNCTION_0_3();
        v60 = "_decorateETA";
        OUTLINED_FUNCTION_9_2(&dword_1C5126000, v49, v51, "{MSgDebug} OBJECT{%@} %s END", &v57);
      }

      v48 = GEOFindOrCreateLog();
      if (!os_signpost_enabled(v48))
      {
        goto LABEL_36;
      }

      LOWORD(v57) = 0;
    }

    else
    {
      v45 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        v46 = [a1 uniqueName];
        OUTLINED_FUNCTION_0_3();
        v60 = "_decorateETA";
        OUTLINED_FUNCTION_9_2(&dword_1C5126000, v45, v47, "{MSgDebug} OBJECT{%@} %s END", &v57);
      }

      v48 = GEOFindOrCreateLog();
      if (!os_signpost_enabled(v48))
      {
        goto LABEL_36;
      }

      LOWORD(v57) = 0;
    }

    OUTLINED_FUNCTION_7_0();
    _os_signpost_emit_with_name_impl(v52, v48, OS_SIGNPOST_INTERVAL_END, v53, v54, v55, v56, 2u);
LABEL_36:

    goto LABEL_9;
  }

LABEL_10:
}

- (void)_q_decorateFlightInfoForEntry:(dispatch_queue_t *)a1
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    if (!v4)
    {
      v6 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v58 = 136446978;
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_3();
        *&v63[6] = "nil == (entry)";
        _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry", &v58, 0x26u);
      }

      goto LABEL_5;
    }

    dispatch_assert_queue_V2(a1[1]);
    if ([v5 containsKey:@"MapsSuggestionsETAKey"])
    {
      v6 = [v5 ETAForKey:@"MapsSuggestionsETAKey"];
    }

    else
    {
      v6 = 0;
    }

    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v2 = [v5 stringForKey:@"MapsSuggestionsFullFlightNumberKey"];
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_19();
      _os_log_impl(v8, v9, OS_LOG_TYPE_DEBUG, v10, v11, 0xCu);
    }

    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v2 = [(dispatch_queue_t *)a1 uniqueName];
      OUTLINED_FUNCTION_0_3();
      v61 = "_decorateFlightInfoForEntry";
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_9_2(v13, v14, v15, v16, v17);
    }

    v18 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v18))
    {
      LOWORD(v58) = 0;
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_20(v19, v18, v20, v21, v22, v23, v24);
    }

    [v5 type];
    v25 = [MapsSuggestionsTracker _q_etaTitleFormatterForType:a1];
    v26 = v25;
    if (v25)
    {
      if ([v25 formatTitlesForEntry:v5 eta:v6])
      {
        v27 = GEOFindOrCreateLog();
        if (OUTLINED_FUNCTION_5_0(v27))
        {
          v28 = [(dispatch_queue_t *)a1 uniqueName];
          IsVerbose = MapsSuggestionsLoggingIsVerbose();
          if (IsVerbose)
          {
            v30 = [v5 serializedBase64String];
          }

          else
          {
            v30 = &stru_1F444C108;
          }

          v58 = 138413058;
          v59 = v28;
          v60 = 2048;
          v61 = v5;
          v62 = 2112;
          *v63 = v30;
          *&v63[8] = 2112;
          *&v63[10] = v5;
          OUTLINED_FUNCTION_4_3();
          _os_log_impl(v39, v40, v41, v42, v43, 0x2Au);
          if (IsVerbose)
          {
          }
        }
      }

      v44 = GEOFindOrCreateLog();
      if (OUTLINED_FUNCTION_5_0(v44))
      {
        v45 = [(dispatch_queue_t *)a1 uniqueName];
        OUTLINED_FUNCTION_0_3();
        v61 = "_decorateFlightInfoForEntry";
        OUTLINED_FUNCTION_4_3();
        _os_log_impl(v46, v47, v48, v49, v50, 0x16u);
      }

      v38 = GEOFindOrCreateLog();
      if (!os_signpost_enabled(v38))
      {
        goto LABEL_35;
      }

      LOWORD(v58) = 0;
    }

    else
    {
      v31 = GEOFindOrCreateLog();
      if (OUTLINED_FUNCTION_5_0(v31))
      {
        v32 = [(dispatch_queue_t *)a1 uniqueName];
        OUTLINED_FUNCTION_0_3();
        v61 = "_decorateFlightInfoForEntry";
        OUTLINED_FUNCTION_4_3();
        _os_log_impl(v33, v34, v35, v36, v37, 0x16u);
      }

      v38 = GEOFindOrCreateLog();
      if (!os_signpost_enabled(v38))
      {
        goto LABEL_35;
      }

      LOWORD(v58) = 0;
    }

    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_13_0();
    _os_signpost_emit_with_name_impl(v51, v52, v53, v54, v55, v56, v57, 2u);
LABEL_35:

LABEL_5:
  }
}

- (void)_q_decorateEntry:(void *)a3 eta:(void *)a4 requiredChargeLevel:(void *)a5 currentChargeLevel:
{
  v50 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    if (!v9)
    {
      v13 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v47 = 136446978;
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_3();
        v49 = "nil == (entry)";
        OUTLINED_FUNCTION_19();
        _os_log_impl(v14, v15, OS_LOG_TYPE_ERROR, v16, v17, 0x26u);
      }

      goto LABEL_5;
    }

    dispatch_assert_queue_V2(a1[1]);
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = [(dispatch_queue_t *)a1 uniqueName];
      OUTLINED_FUNCTION_0_3();
      v48 = "_decorateEntryEV";
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_9_2(v20, v21, v22, v23, v24);
    }

    v25 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v25))
    {
      *v47 = 0;
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_20(v26, v25, v27, v28, v29, v30, v31);
    }

    [v9 type];
    v32 = [MapsSuggestionsTracker _q_etaChargeTitleFormatterForType:a1];
    v13 = v32;
    if (v32)
    {
      if ([v32 formatTitlesForEntry:v9 eta:v10 requiredChargeLevel:v11 currentChargeLevel:v12])
      {
        v33 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = [v9 title];
          OUTLINED_FUNCTION_5_4();
          _os_log_impl(&dword_1C5126000, v33, OS_LOG_TYPE_INFO, "Update EV Resume Route entry title to %@", v47, 0xCu);
        }
      }

      v35 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        v36 = [(dispatch_queue_t *)a1 uniqueName];
        OUTLINED_FUNCTION_0_3();
        v48 = "_decorateEntryEV";
        OUTLINED_FUNCTION_9_2(&dword_1C5126000, v35, v37, "{MSgDebug} OBJECT{%@} %s END", v47);
      }

      v38 = GEOFindOrCreateLog();
      if (!os_signpost_enabled(v38))
      {
        goto LABEL_25;
      }

      *v47 = 0;
    }

    else
    {
      v39 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        v40 = [(dispatch_queue_t *)a1 uniqueName];
        OUTLINED_FUNCTION_0_3();
        v48 = "_decorateEntryEV";
        OUTLINED_FUNCTION_9_2(&dword_1C5126000, v39, v41, "{MSgDebug} OBJECT{%@} %s END", v47);
      }

      v38 = GEOFindOrCreateLog();
      if (!os_signpost_enabled(v38))
      {
        goto LABEL_25;
      }

      *v47 = 0;
    }

    OUTLINED_FUNCTION_7_0();
    _os_signpost_emit_with_name_impl(v42, v38, OS_SIGNPOST_INTERVAL_END, v43, v44, v45, v46, 2u);
LABEL_25:

LABEL_5:
  }
}

- (void)_q_requestDistances
{
  v31 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    OUTLINED_FUNCTION_22(a1);
    v2 = [v1 currentLocation];

    if (!v2)
    {
      v25 = GEOFindOrCreateLog();
      if (OUTLINED_FUNCTION_17(v25))
      {
        *v30 = 0;
        OUTLINED_FUNCTION_7(&dword_1C5126000, v26, v27, "No current location, can't calculate distance.", v30);
      }

      goto LABEL_25;
    }

    v3 = [v1 currentLocation];
    [v3 coordinate];
    v4 = CLLocationCoordinate2DIsValid(v32);

    if (v4 && [v1[10] count])
    {
      v5 = [v1 currentLocation];
      [v5 coordinate];
      v6 = [v1 currentLocation];
      [v6 coordinate];

      v7 = [v1 trackedEntries];
      v8 = [v7 strongArray];

      OUTLINED_FUNCTION_10_1();
      v2 = v8;
      OUTLINED_FUNCTION_18();
      v10 = [v9 countByEnumeratingWithState:? objects:? count:?];
      if (v10)
      {
        v11 = v10;
        v12 = *v29;
        v13 = @"MapsSuggestionsLongitudeKey";
        do
        {
          v14 = 0;
          do
          {
            if (*v29 != v12)
            {
              objc_enumerationMutation(v2);
            }

            v15 = *(v28 + 8 * v14);
            if (v15)
            {
              [*(v28 + 8 * v14) type];
              v16 = [MapsSuggestionsTracker _q_distanceTitleFormatterForType:v1];
              if (v16)
              {
                if ([v15 BOOLeanForKey:@"MapsSuggestionsNeedsDistanceTrackingKey"])
                {
                  if ([v15 containsKey:@"MapsSuggestionsLatitudeKey"])
                  {
                    if ([v15 containsKey:v13])
                    {
                      v17 = [v15 numberForKey:@"MapsSuggestionsLatitudeKey"];
                      [v17 doubleValue];
                      v19 = v18;
                      [v15 numberForKey:v13];
                      v21 = v20 = v13;
                      [v21 doubleValue];
                      v23 = v22;

                      v13 = v20;
                      if (fabs(v23) <= 180.0 && fabs(v19) <= 90.0)
                      {
                        GEOCalculateDistance();
                        [v16 formatTitlesForEntry:v15 distance:0 trafficString:?];
                      }
                    }
                  }
                }
              }
            }

            ++v14;
          }

          while (v11 != v14);
          OUTLINED_FUNCTION_18();
          v24 = [v2 countByEnumeratingWithState:? objects:? count:?];
          v11 = v24;
        }

        while (v24);
      }

LABEL_25:
    }
  }
}

- (void)_q_scheduleRefreshIfCurrentLocationIsMuchBetterThanLocation:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    if (*(a1 + 96))
    {
      v4 = [a1 currentLocation];
      IsUsableLocation = MapsSuggestionsTrackerIsUsableLocation(v4);

      if (IsUsableLocation)
      {
        v6 = [a1 currentLocation];
        [v6 distanceFromLocation:v3];
        v8 = v7;
        GEOConfigGetDouble();
        v10 = v9;

        if (v8 >= v10 || (MapsSuggestionsTrackerIsUsableLocation(v3) & 1) == 0)
        {
          v11 = GEOFindOrCreateLog();
          if (OUTLINED_FUNCTION_21(v11))
          {
            OUTLINED_FUNCTION_13_0();
            _os_log_impl(v12, v13, v14, v15, v16, 2u);
          }

          [(MapsSuggestionsTracker *)a1 _q_scheduleRefresh];
        }
      }
    }
  }
}

- (void)_q_resetAllTitleFormatting
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = GEOFindOrCreateLog();
    if (OUTLINED_FUNCTION_17(v3))
    {
      *v21 = 0;
      OUTLINED_FUNCTION_7(&dword_1C5126000, v4, v5, "_resetAllTitleFormatting", v21);
    }

    dispatch_assert_queue_V2(*(a1 + 8));
    v6 = [*(a1 + 184) strongArray];
    OUTLINED_FUNCTION_18();
    v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(v19 + 8 * i);
          [v12 setETA:0 forKey:@"MapsSuggestionsETAKey"];
          v13 = *(a1 + 72);
          v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v12, "type")}];
          v15 = [v13 objectForKeyedSubscript:v14];
          [v15 resetTitlesForEntry:v12];

          v16 = *(a1 + 80);
          v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v12, "type")}];
          v18 = [v16 objectForKeyedSubscript:v17];
          [v18 resetTitlesForEntry:v12];
        }

        OUTLINED_FUNCTION_18();
        v9 = [v6 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v9);
    }
  }
}

uint64_t __40__MapsSuggestionsTracker__q_requestETAs__block_invoke_310_cold_1(void *a1, id *a2, uint64_t a3, void *a4)
{
  v8 = [a1 ETAForKey:@"MapsSuggestionsETAKey"];
  *a4 = v8;
  [*a2 donateETA:v8 entry:a1];
  v9 = OUTLINED_FUNCTION_12_0();
  [(MapsSuggestionsTracker *)v9 _q_rememberETA:v10 forEntry:v11];
  if ([a1 containsKey:@"MapsSuggestionsIsResumingAnEVRoute"])
  {
    [(MapsSuggestionsTracker *)a3 _q_requestChargeInfoAndDecorateEntry:a1 eta:v8];
    return 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_12_0();
    [(MapsSuggestionsTracker *)v13 _q_decorateETA:v14 forEntry:v15];

    return 0;
  }
}

- (void)_q_requestChargeInfoAndDecorateEntry:eta:.cold.1()
{
  v0 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C5126000, v0, OS_LOG_TYPE_INFO, "This is a regular ResumeRoute entry.", v4, 2u);
  }

  v1 = OUTLINED_FUNCTION_12_0();
  [(MapsSuggestionsTracker *)v1 _q_decorateEntry:v2 eta:v3 requiredChargeLevel:0 currentChargeLevel:0];
}

void __67__MapsSuggestionsTracker__q_requestChargeInfoAndDecorateEntry_eta___block_invoke_312_cold_1(uint64_t a1, uint64_t a2, dispatch_queue_t *a3)
{
  v6 = GEOFindOrCreateLog();
  if (OUTLINED_FUNCTION_14(v6))
  {
    OUTLINED_FUNCTION_6_2();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
  }

  [(MapsSuggestionsTracker *)a3 _q_decorateEntry:*(a2 + 48) eta:0 requiredChargeLevel:0 currentChargeLevel:?];
}

void __67__MapsSuggestionsTracker__q_requestChargeInfoAndDecorateEntry_eta___block_invoke_312_cold_2(uint64_t a1, dispatch_queue_t *a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:{objc_msgSend(*(a1 + 64), "displayedBatteryPercentage") / 100.0}];
  [(MapsSuggestionsTracker *)a2 _q_decorateEntry:v3 eta:v4 requiredChargeLevel:v5 currentChargeLevel:v6];
}

uint64_t __47__MapsSuggestionsTracker_setAutomobileOptions___block_invoke_cold_1(id *a1, uint64_t *a2)
{
  objc_storeStrong((*a2 + 168), *a1);
  [*(*a2 + 104) setAutomobileOptions:*a1];
  v5 = GEOFindOrCreateLog();
  if (OUTLINED_FUNCTION_21(v5))
  {
    OUTLINED_FUNCTION_13_0();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
  }

  return [(MapsSuggestionsTracker *)*a2 _q_scheduleRefresh];
}

@end