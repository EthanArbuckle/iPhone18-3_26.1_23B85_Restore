@interface MapsSuggestionsLocationChangedTrigger
- (MapsSuggestionsLocationChangedTrigger)initWithLocationUpdater:(id)a3;
- (MapsSuggestionsLocationChangedTrigger)initWithLocationUpdater:(id)a3 forcingLocationUpdater:(id)a4;
- (uint64_t)stopForcingUpdate;
- (void)_cancelLocationForceUpdate;
- (void)_kickForceUpdateWithTime:(void *)a1;
- (void)changeMinDistance:(double)a3;
- (void)didUpdateLocation:(id)a3;
- (void)restartWithUpdateTime:(double)a3;
- (void)startWithMinimumDistance:(double)a3;
- (void)startWithMinimumUpdateTime:(double)a3 minimumDistance:(double)a4;
- (void)stop;
@end

@implementation MapsSuggestionsLocationChangedTrigger

- (MapsSuggestionsLocationChangedTrigger)initWithLocationUpdater:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v11.receiver = self;
    v11.super_class = MapsSuggestionsLocationChangedTrigger;
    v6 = [(MapsSuggestionsBaseTrigger *)&v11 initWithName:@"MapsSuggestionsLocationChangedTrigger"];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_locationUpdater, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsLocationChangedTrigger.m";
      v14 = 1024;
      v15 = 68;
      v16 = 2082;
      v17 = "[MapsSuggestionsLocationChangedTrigger initWithLocationUpdater:]";
      v18 = 2082;
      v19 = "nil == (locationUpdater)";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a location updater", buf, 0x26u);
    }

    v8 = 0;
  }

  return v8;
}

- (MapsSuggestionsLocationChangedTrigger)initWithLocationUpdater:(id)a3 forcingLocationUpdater:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v12 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v15 = 136446978;
    v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsLocationChangedTrigger.m";
    v17 = 1024;
    v18 = 80;
    v19 = 2082;
    v20 = "[MapsSuggestionsLocationChangedTrigger initWithLocationUpdater:forcingLocationUpdater:]";
    v21 = 2082;
    v22 = "nil == (locationUpdater)";
    v13 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a location updater";
LABEL_13:
    _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, v13, &v15, 0x26u);
    goto LABEL_14;
  }

  if (!v7)
  {
    v12 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v15 = 136446978;
    v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsLocationChangedTrigger.m";
    v17 = 1024;
    v18 = 81;
    v19 = 2082;
    v20 = "[MapsSuggestionsLocationChangedTrigger initWithLocationUpdater:forcingLocationUpdater:]";
    v21 = 2082;
    v22 = "nil == (forcingLocationUpdater)";
    v13 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a location updater or use initWithLocationUpdater:";
    goto LABEL_13;
  }

  if (v6 == v7)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 136446978;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsLocationChangedTrigger.m";
      v17 = 1024;
      v18 = 82;
      v19 = 2082;
      v20 = "[MapsSuggestionsLocationChangedTrigger initWithLocationUpdater:forcingLocationUpdater:]";
      v21 = 2082;
      v22 = "locationUpdater == forcingLocationUpdater";
      v13 = "At %{public}s:%d, %{public}s forbids: %{public}s. The location updates cannot be the same (because we will stop only one of them)";
      goto LABEL_13;
    }

LABEL_14:

    v11 = 0;
    goto LABEL_15;
  }

  v9 = [(MapsSuggestionsLocationChangedTrigger *)self initWithLocationUpdater:v6];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_forcingLocationUpdater, a4);
  }

  self = v10;
  v11 = self;
LABEL_15:

  return v11;
}

- (void)_kickForceUpdateWithTime:(void *)a1
{
  if (a1)
  {
    v3 = a1;
    objc_sync_enter(v3);
    if (*(v3 + 9))
    {
      if (a2 == 0.0)
      {
        v9 = GEOFindOrCreateLog();
        [MapsSuggestionsLocationChangedTrigger _kickForceUpdateWithTime:v9];
      }

      else
      {
        if (*(v3 + 8) != a2 || (v8 = *(v3 + 7)) == 0)
        {
          objc_initWeak(&location, v3);
          *(v3 + 8) = a2;
          v4 = [MapsSuggestionsCanKicker alloc];
          v5 = [v3 dispatchQueue];
          v10 = MEMORY[0x1E69E9820];
          v11 = 3221225472;
          v12 = __66__MapsSuggestionsLocationChangedTrigger__kickForceUpdateWithTime___block_invoke;
          v13 = &unk_1E81F53E8;
          objc_copyWeak(&v14, &location);
          v6 = [(MapsSuggestionsCanKicker *)v4 initWithName:@"LocationForceUpdateCanKicker" time:v5 queue:&v10 block:a2];
          v7 = *(v3 + 7);
          *(v3 + 7) = v6;

          objc_destroyWeak(&v14);
          objc_destroyWeak(&location);
          v8 = *(v3 + 7);
        }

        [v8 kickCanBySameTime];
      }
    }

    else
    {
      [(MapsSuggestionsLocationChangedTrigger *)v3 _cancelLocationForceUpdate];
    }

    objc_sync_exit(v3);
  }
}

- (void)_cancelLocationForceUpdate
{
  v1 = a1[7];
  a1[7] = 0;

  objc_sync_exit(a1);
}

void __66__MapsSuggestionsLocationChangedTrigger__kickForceUpdateWithTime___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _forceLocationUpdate];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsLocationChangedTrigger.m";
      v6 = 1026;
      v7 = 108;
      v8 = 2082;
      v9 = "[MapsSuggestionsLocationChangedTrigger _kickForceUpdateWithTime:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

- (void)changeMinDistance:(double)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = self;
  objc_sync_enter(v4);
  v4->_minDistance = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    minDistance = v4->_minDistance;
    v7 = 134217984;
    v8 = minDistance;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "Minimum distance set to %f", &v7, 0xCu);
  }

  objc_sync_exit(v4);
}

- (void)restartWithUpdateTime:(double)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134217984;
    v7 = a3;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "restartWithUpdateTime: %f", &v6, 0xCu);
  }

  [(MapsSuggestionsLocationChangedTrigger *)self _kickForceUpdateWithTime:a3];
}

- (void)startWithMinimumUpdateTime:(double)a3 minimumDistance:(double)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134218240;
    v12 = a3;
    v13 = 2048;
    v14 = a4;
    _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "Starting Trigger with Time:%f Distance:%f", &v11, 0x16u);
  }

  v8 = self;
  objc_sync_enter(v8);
  GEOConfigGetDouble();
  if (v9 > a3)
  {
    GEOConfigGetDouble();
    a3 = v10;
  }

  objc_sync_exit(v8);

  [(MapsSuggestionsLocationChangedTrigger *)v8 startWithMinimumDistance:a4];
  [(MapsSuggestionsLocationChangedTrigger *)v8 _kickForceUpdateWithTime:a3];
}

- (void)startWithMinimumDistance:(double)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v12 = 134217984;
    v13 = a3;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "Starting Trigger with Distance:%f", &v12, 0xCu);
  }

  v6 = self;
  objc_sync_enter(v6);
  v6->_minDistance = a3;
  GEOConfigGetDouble();
  if (v7 > a3)
  {
    GEOConfigGetDouble();
    v6->_minDistance = v8;
  }

  v9 = MapsSuggestionsCurrentBestLocation();
  previousLocation = v6->_previousLocation;
  v6->_previousLocation = v9;

  objc_sync_exit(v6);
  v11 = [(MapsSuggestionsLocationUpdater *)v6->_locationUpdater startLocationUpdatesForDelegate:v6];
}

- (void)didUpdateLocation:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    [(MapsSuggestionsLocationChangedTrigger *)self stopForcingUpdate];
    [(MapsSuggestionsLocationChangedTrigger *)self _kickForceUpdateWithTime:?];
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [v5 coordinate];
      v8 = v7;
      [v5 coordinate];
      v14 = 134218240;
      v15 = v8;
      v16 = 2048;
      v17 = v9;
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "we received location <%+.6f,%+.6f>", &v14, 0x16u);
    }

    v10 = self;
    objc_sync_enter(v10);
    previousLocation = v10->_previousLocation;
    if (previousLocation && ([(CLLocation *)previousLocation distanceFromLocation:v5], v12 < v10->_minDistance))
    {
      objc_sync_exit(v10);
    }

    else
    {
      v13 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_DEBUG, "Trigger Observers", &v14, 2u);
      }

      objc_storeStrong(&v10->_previousLocation, a3);
      objc_sync_exit(v10);

      [(MapsSuggestionsBaseTrigger *)v10 triggerMyObservers];
    }
  }
}

- (uint64_t)stopForcingUpdate
{
  if (result)
  {
    v1 = result;
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_11(&dword_1C5126000, v3, v4, "Stopping forcing LocationUpdater", v5, v6, v7, v8, 0);
    }

    return [*(v1 + 72) stopLocationUpdatesForDelegate:v1];
  }

  return result;
}

- (void)stop
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_11(&dword_1C5126000, v4, v5, "Stopping Trigger", v6, v7, v8, v9, 0);
  }

  [(MapsSuggestionsLocationChangedTrigger *)self stopForcingUpdate];
  [(MapsSuggestionsLocationChangedTrigger *)self _cancelLocationForceUpdate];
  [(MapsSuggestionsLocationUpdater *)self->_locationUpdater stopLocationUpdatesForDelegate:self];
}

- (void)_kickForceUpdateWithTime:(NSObject *)a1 .cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_impl(&dword_1C5126000, a1, OS_LOG_TYPE_ERROR, "Trying to init location Force Update with time 0.0!", v2, 2u);
  }
}

@end