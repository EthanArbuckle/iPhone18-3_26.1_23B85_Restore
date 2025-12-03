@interface MapsSuggestionsLocationChangedTrigger
- (MapsSuggestionsLocationChangedTrigger)initWithLocationUpdater:(id)updater;
- (MapsSuggestionsLocationChangedTrigger)initWithLocationUpdater:(id)updater forcingLocationUpdater:(id)locationUpdater;
- (uint64_t)stopForcingUpdate;
- (void)_cancelLocationForceUpdate;
- (void)_kickForceUpdateWithTime:(void *)time;
- (void)changeMinDistance:(double)distance;
- (void)didUpdateLocation:(id)location;
- (void)restartWithUpdateTime:(double)time;
- (void)startWithMinimumDistance:(double)distance;
- (void)startWithMinimumUpdateTime:(double)time minimumDistance:(double)distance;
- (void)stop;
@end

@implementation MapsSuggestionsLocationChangedTrigger

- (MapsSuggestionsLocationChangedTrigger)initWithLocationUpdater:(id)updater
{
  v20 = *MEMORY[0x1E69E9840];
  updaterCopy = updater;
  if (updaterCopy)
  {
    v11.receiver = self;
    v11.super_class = MapsSuggestionsLocationChangedTrigger;
    v6 = [(MapsSuggestionsBaseTrigger *)&v11 initWithName:@"MapsSuggestionsLocationChangedTrigger"];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_locationUpdater, updater);
    }

    self = v7;
    selfCopy = self;
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

    selfCopy = 0;
  }

  return selfCopy;
}

- (MapsSuggestionsLocationChangedTrigger)initWithLocationUpdater:(id)updater forcingLocationUpdater:(id)locationUpdater
{
  v23 = *MEMORY[0x1E69E9840];
  updaterCopy = updater;
  locationUpdaterCopy = locationUpdater;
  v8 = locationUpdaterCopy;
  if (!updaterCopy)
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

  if (!locationUpdaterCopy)
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

  if (updaterCopy == locationUpdaterCopy)
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

    selfCopy = 0;
    goto LABEL_15;
  }

  v9 = [(MapsSuggestionsLocationChangedTrigger *)self initWithLocationUpdater:updaterCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_forcingLocationUpdater, locationUpdater);
  }

  self = v10;
  selfCopy = self;
LABEL_15:

  return selfCopy;
}

- (void)_kickForceUpdateWithTime:(void *)time
{
  if (time)
  {
    timeCopy = time;
    objc_sync_enter(timeCopy);
    if (*(timeCopy + 9))
    {
      if (a2 == 0.0)
      {
        v9 = GEOFindOrCreateLog();
        [MapsSuggestionsLocationChangedTrigger _kickForceUpdateWithTime:v9];
      }

      else
      {
        if (*(timeCopy + 8) != a2 || (v8 = *(timeCopy + 7)) == 0)
        {
          objc_initWeak(&location, timeCopy);
          *(timeCopy + 8) = a2;
          v4 = [MapsSuggestionsCanKicker alloc];
          dispatchQueue = [timeCopy dispatchQueue];
          v10 = MEMORY[0x1E69E9820];
          v11 = 3221225472;
          v12 = __66__MapsSuggestionsLocationChangedTrigger__kickForceUpdateWithTime___block_invoke;
          v13 = &unk_1E81F53E8;
          objc_copyWeak(&v14, &location);
          v6 = [(MapsSuggestionsCanKicker *)v4 initWithName:@"LocationForceUpdateCanKicker" time:dispatchQueue queue:&v10 block:a2];
          v7 = *(timeCopy + 7);
          *(timeCopy + 7) = v6;

          objc_destroyWeak(&v14);
          objc_destroyWeak(&location);
          v8 = *(timeCopy + 7);
        }

        [v8 kickCanBySameTime];
      }
    }

    else
    {
      [(MapsSuggestionsLocationChangedTrigger *)timeCopy _cancelLocationForceUpdate];
    }

    objc_sync_exit(timeCopy);
  }
}

- (void)_cancelLocationForceUpdate
{
  v1 = self[7];
  self[7] = 0;

  objc_sync_exit(self);
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

- (void)changeMinDistance:(double)distance
{
  v9 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_minDistance = distance;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    minDistance = selfCopy->_minDistance;
    v7 = 134217984;
    v8 = minDistance;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "Minimum distance set to %f", &v7, 0xCu);
  }

  objc_sync_exit(selfCopy);
}

- (void)restartWithUpdateTime:(double)time
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134217984;
    timeCopy = time;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "restartWithUpdateTime: %f", &v6, 0xCu);
  }

  [(MapsSuggestionsLocationChangedTrigger *)self _kickForceUpdateWithTime:time];
}

- (void)startWithMinimumUpdateTime:(double)time minimumDistance:(double)distance
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134218240;
    timeCopy = time;
    v13 = 2048;
    distanceCopy = distance;
    _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "Starting Trigger with Time:%f Distance:%f", &v11, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  GEOConfigGetDouble();
  if (v9 > time)
  {
    GEOConfigGetDouble();
    time = v10;
  }

  objc_sync_exit(selfCopy);

  [(MapsSuggestionsLocationChangedTrigger *)selfCopy startWithMinimumDistance:distance];
  [(MapsSuggestionsLocationChangedTrigger *)selfCopy _kickForceUpdateWithTime:time];
}

- (void)startWithMinimumDistance:(double)distance
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v12 = 134217984;
    distanceCopy = distance;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "Starting Trigger with Distance:%f", &v12, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_minDistance = distance;
  GEOConfigGetDouble();
  if (v7 > distance)
  {
    GEOConfigGetDouble();
    selfCopy->_minDistance = v8;
  }

  v9 = MapsSuggestionsCurrentBestLocation();
  previousLocation = selfCopy->_previousLocation;
  selfCopy->_previousLocation = v9;

  objc_sync_exit(selfCopy);
  v11 = [(MapsSuggestionsLocationUpdater *)selfCopy->_locationUpdater startLocationUpdatesForDelegate:selfCopy];
}

- (void)didUpdateLocation:(id)location
{
  v18 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  if (locationCopy)
  {
    [(MapsSuggestionsLocationChangedTrigger *)self stopForcingUpdate];
    [(MapsSuggestionsLocationChangedTrigger *)self _kickForceUpdateWithTime:?];
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [locationCopy coordinate];
      v8 = v7;
      [locationCopy coordinate];
      v14 = 134218240;
      v15 = v8;
      v16 = 2048;
      v17 = v9;
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "we received location <%+.6f,%+.6f>", &v14, 0x16u);
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    previousLocation = selfCopy->_previousLocation;
    if (previousLocation && ([(CLLocation *)previousLocation distanceFromLocation:locationCopy], v12 < selfCopy->_minDistance))
    {
      objc_sync_exit(selfCopy);
    }

    else
    {
      v13 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_DEBUG, "Trigger Observers", &v14, 2u);
      }

      objc_storeStrong(&selfCopy->_previousLocation, location);
      objc_sync_exit(selfCopy);

      [(MapsSuggestionsBaseTrigger *)selfCopy triggerMyObservers];
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