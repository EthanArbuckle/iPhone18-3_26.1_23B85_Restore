@interface MapsSuggestionsLimitingLocationManager
- (MapsSuggestionsLimitingLocationManager)initWithEffectiveBundlePath:(id)path limitingBundleIdentifier:(id)identifier delegate:(id)delegate onQueue:(id)queue;
- (double)desiredAccuracy;
- (double)distanceFilter;
- (void)_startMonitoringSignificantLocationChanges;
- (void)_startMonitoringVisits;
- (void)_startUpdatingLocation;
- (void)_stopMonitoringSignificantLocationChanges;
- (void)_stopMonitoringVisits;
- (void)_stopUpdatingLocation;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManager:(id)manager didVisit:(id)visit;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)setDelegate:(id)delegate;
- (void)setDesiredAccuracy:(double)accuracy;
- (void)setDistanceFilter:(double)filter;
- (void)startMonitoringSignificantLocationChanges;
- (void)startMonitoringVisits;
- (void)startUpdatingLocation;
- (void)stopMonitoringSignificantLocationChanges;
- (void)stopMonitoringVisits;
- (void)stopUpdatingLocation;
@end

@implementation MapsSuggestionsLimitingLocationManager

- (MapsSuggestionsLimitingLocationManager)initWithEffectiveBundlePath:(id)path limitingBundleIdentifier:(id)identifier delegate:(id)delegate onQueue:(id)queue
{
  v37 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  identifierCopy = identifier;
  delegateCopy = delegate;
  queueCopy = queue;
  v28.receiver = self;
  v28.super_class = MapsSuggestionsLimitingLocationManager;
  v14 = [(MapsSuggestionsLimitingLocationManager *)&v28 init];
  if (!v14)
  {
    goto LABEL_5;
  }

  v15 = [objc_alloc(MEMORY[0x1E695FBE8]) initWithEffectiveBundlePath:pathCopy delegate:v14 onQueue:queueCopy];
  effectiveLocationManager = v14->_effectiveLocationManager;
  v14->_effectiveLocationManager = v15;

  if (!identifierCopy || (v17 = [objc_alloc(MEMORY[0x1E695FBE8]) initWithEffectiveBundleIdentifier:identifierCopy delegate:v14 onQueue:queueCopy], limitingLocationManager = v14->_limitingLocationManager, v14->_limitingLocationManager = v17, limitingLocationManager, v14->_limitingLocationManager))
  {
    objc_storeStrong(&v14->_delegate, delegate);
    v19 = objc_alloc_init(_MonitorState);
    locationUpdateState = v14->_locationUpdateState;
    v14->_locationUpdateState = v19;

    v21 = objc_alloc_init(_MonitorState);
    visitState = v14->_visitState;
    v14->_visitState = v21;

    v23 = objc_alloc_init(_MonitorState);
    significantLocationChanges = v14->_significantLocationChanges;
    v14->_significantLocationChanges = v23;

LABEL_5:
    v25 = v14;
    goto LABEL_6;
  }

  v27 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v30 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/MapsSuggestionsLimitingLocationManager.m";
    v31 = 1024;
    v32 = 102;
    v33 = 2082;
    v34 = "[MapsSuggestionsLimitingLocationManager initWithEffectiveBundlePath:limitingBundleIdentifier:delegate:onQueue:]";
    v35 = 2082;
    v36 = "nil == _limitingLocationManager";
    _os_log_impl(&dword_1C5126000, v27, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Failed to initialize limiting location manager", buf, 0x26u);
  }

  v25 = 0;
LABEL_6:

  return v25;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  obj = self;
  objc_sync_enter(obj);
  delegate = obj->_delegate;
  obj->_delegate = delegateCopy;

  objc_sync_exit(obj);
}

- (double)distanceFilter
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(CLLocationManager *)selfCopy->_effectiveLocationManager distanceFilter];
  v4 = v3;
  objc_sync_exit(selfCopy);

  return v4;
}

- (void)setDistanceFilter:(double)filter
{
  obj = self;
  objc_sync_enter(obj);
  [(CLLocationManager *)obj->_effectiveLocationManager setDistanceFilter:filter];
  objc_sync_exit(obj);
}

- (double)desiredAccuracy
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(CLLocationManager *)selfCopy->_effectiveLocationManager desiredAccuracy];
  v4 = v3;
  objc_sync_exit(selfCopy);

  return v4;
}

- (void)setDesiredAccuracy:(double)accuracy
{
  obj = self;
  objc_sync_enter(obj);
  [(CLLocationManager *)obj->_effectiveLocationManager setDesiredAccuracy:accuracy];
  objc_sync_exit(obj);
}

- (void)startUpdatingLocation
{
  [(_MonitorState *)self->_locationUpdateState setShouldBeMonitoring:1];

  [(MapsSuggestionsLimitingLocationManager *)self _startUpdatingLocation];
}

- (void)startMonitoringSignificantLocationChanges
{
  [(_MonitorState *)self->_significantLocationChanges setShouldBeMonitoring:1];

  [(MapsSuggestionsLimitingLocationManager *)self _startMonitoringSignificantLocationChanges];
}

- (void)startMonitoringVisits
{
  [(_MonitorState *)self->_visitState setShouldBeMonitoring:1];

  [(MapsSuggestionsLimitingLocationManager *)self _startMonitoringVisits];
}

- (void)_startUpdatingLocation
{
  if ([(_MonitorState *)self->_locationUpdateState shouldBeMonitoring])
  {
    if ([(CLLocationManager *)self->_limitingLocationManager authorizationStatus]== kCLAuthorizationStatusAuthorizedWhenInUse || [(CLLocationManager *)self->_limitingLocationManager authorizationStatus]== kCLAuthorizationStatusAuthorizedAlways)
    {
      [(_MonitorState *)self->_locationUpdateState setMonitoring:1];
      [(CLLocationManager *)self->_effectiveLocationManager startUpdatingLocation];
      v3 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v6 = 0;
        v4 = "Started Updating Location.";
        v5 = &v6;
LABEL_8:
        _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, v4, v5, 2u);
      }
    }

    else
    {
      v3 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v4 = "message";
        v5 = buf;
        goto LABEL_8;
      }
    }
  }
}

- (void)_startMonitoringSignificantLocationChanges
{
  v10 = *MEMORY[0x1E69E9840];
  BOOL = GEOConfigGetBOOL();
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = @"NO";
    if (BOOL)
    {
      v5 = @"YES";
    }

    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "[PrivacyCheck] SLC Enabled? %@", &v8, 0xCu);
  }

  if (BOOL)
  {
    if (![(_MonitorState *)self->_significantLocationChanges shouldBeMonitoring])
    {
      return;
    }

    if ([(CLLocationManager *)self->_limitingLocationManager authorizationStatus]!= kCLAuthorizationStatusAuthorizedWhenInUse && [(CLLocationManager *)self->_limitingLocationManager authorizationStatus]!= kCLAuthorizationStatusAuthorizedAlways)
    {
      v6 = GEOFindOrCreateLog();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_14;
      }

      LOWORD(v8) = 0;
      v7 = "message";
      goto LABEL_13;
    }

    [(_MonitorState *)self->_significantLocationChanges setMonitoring:1];
    [(CLLocationManager *)self->_effectiveLocationManager startMonitoringSignificantLocationChanges];
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v8) = 0;
      v7 = "Started monitoring significant location changes.";
LABEL_13:
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, v7, &v8, 2u);
    }
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v8) = 0;
      v7 = "[PrivacyCheck] Early return, not starting SLC.";
      goto LABEL_13;
    }
  }

LABEL_14:
}

- (void)_startMonitoringVisits
{
  v10 = *MEMORY[0x1E69E9840];
  BOOL = GEOConfigGetBOOL();
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = @"NO";
    if (BOOL)
    {
      v5 = @"YES";
    }

    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "[PrivacyCheck] VM Enabled? %@", &v8, 0xCu);
  }

  if (BOOL)
  {
    if (![(_MonitorState *)self->_visitState shouldBeMonitoring])
    {
      return;
    }

    if ([(CLLocationManager *)self->_limitingLocationManager authorizationStatus]!= kCLAuthorizationStatusAuthorizedWhenInUse && [(CLLocationManager *)self->_limitingLocationManager authorizationStatus]!= kCLAuthorizationStatusAuthorizedAlways)
    {
      v6 = GEOFindOrCreateLog();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_14;
      }

      LOWORD(v8) = 0;
      v7 = "message";
      goto LABEL_13;
    }

    [(_MonitorState *)self->_visitState setMonitoring:1];
    [(CLLocationManager *)self->_effectiveLocationManager startMonitoringVisits];
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v8) = 0;
      v7 = "Started monitoring visits.";
LABEL_13:
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, v7, &v8, 2u);
    }
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v8) = 0;
      v7 = "[PrivacyCheck] Early return, not starting VisitMonitoring.";
      goto LABEL_13;
    }
  }

LABEL_14:
}

- (void)stopUpdatingLocation
{
  [(_MonitorState *)self->_locationUpdateState setShouldBeMonitoring:0];

  [(MapsSuggestionsLimitingLocationManager *)self _stopUpdatingLocation];
}

- (void)stopMonitoringSignificantLocationChanges
{
  [(_MonitorState *)self->_significantLocationChanges setShouldBeMonitoring:0];

  [(MapsSuggestionsLimitingLocationManager *)self _stopMonitoringSignificantLocationChanges];
}

- (void)stopMonitoringVisits
{
  [(_MonitorState *)self->_visitState setShouldBeMonitoring:0];

  [(MapsSuggestionsLimitingLocationManager *)self _stopMonitoringVisits];
}

- (void)_stopUpdatingLocation
{
  [(_MonitorState *)self->_locationUpdateState setMonitoring:0];
  [(CLLocationManager *)self->_effectiveLocationManager stopUpdatingLocation];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "Stopped Updating Location.", v4, 2u);
  }
}

- (void)_stopMonitoringSignificantLocationChanges
{
  v10 = *MEMORY[0x1E69E9840];
  BOOL = GEOConfigGetBOOL();
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = @"NO";
    if (BOOL)
    {
      v5 = @"YES";
    }

    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "[PrivacyCheck] SLC Enabled? %@", &v8, 0xCu);
  }

  if (BOOL)
  {
    [(_MonitorState *)self->_significantLocationChanges setMonitoring:0];
    [(CLLocationManager *)self->_effectiveLocationManager stopMonitoringSignificantLocationChanges];
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v8) = 0;
      v7 = "stopped monitoring significant location changes.";
LABEL_10:
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, v7, &v8, 2u);
    }
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v8) = 0;
      v7 = "[PrivacyCheck] Early return, not attempting to stop SLC.";
      goto LABEL_10;
    }
  }
}

- (void)_stopMonitoringVisits
{
  v10 = *MEMORY[0x1E69E9840];
  BOOL = GEOConfigGetBOOL();
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = @"NO";
    if (BOOL)
    {
      v5 = @"YES";
    }

    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "[PrivacyCheck] VM Enabled? %@", &v8, 0xCu);
  }

  if (BOOL)
  {
    [(_MonitorState *)self->_visitState setMonitoring:0];
    [(CLLocationManager *)self->_effectiveLocationManager stopMonitoringVisits];
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v8) = 0;
      v7 = "stopped monitoring visits.";
LABEL_10:
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, v7, &v8, 2u);
    }
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v8) = 0;
      v7 = "[PrivacyCheck] Early return, not attempting to stop VisitMonitoring.";
      goto LABEL_10;
    }
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  managerCopy = manager;
  locationsCopy = locations;
  if ([(CLLocationManager *)self->_limitingLocationManager authorizationStatus]== kCLAuthorizationStatusAuthorizedWhenInUse || [(CLLocationManager *)self->_limitingLocationManager authorizationStatus]== kCLAuthorizationStatusAuthorizedAlways)
  {
    if (self->_effectiveLocationManager == managerCopy)
    {
      [(CLLocationManagerDelegate *)self->_delegate locationManager:managerCopy didUpdateLocations:locationsCopy];
    }
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "message", v9, 2u);
    }
  }
}

- (void)locationManager:(id)manager didVisit:(id)visit
{
  managerCopy = manager;
  visitCopy = visit;
  if ([(CLLocationManager *)self->_limitingLocationManager authorizationStatus]== kCLAuthorizationStatusAuthorizedWhenInUse || [(CLLocationManager *)self->_limitingLocationManager authorizationStatus]== kCLAuthorizationStatusAuthorizedAlways)
  {
    [(CLLocationManagerDelegate *)self->_delegate locationManager:managerCopy didVisit:visitCopy];
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "message", v9, 2u);
    }
  }
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  if (([(CLLocationManager *)self->_limitingLocationManager authorizationStatus]== kCLAuthorizationStatusAuthorizedAlways || [(CLLocationManager *)self->_limitingLocationManager authorizationStatus]== kCLAuthorizationStatusAuthorizedWhenInUse) && ([(CLLocationManager *)self->_effectiveLocationManager authorizationStatus]== kCLAuthorizationStatusAuthorizedAlways || [(CLLocationManager *)self->_effectiveLocationManager authorizationStatus]== kCLAuthorizationStatusAuthorizedWhenInUse))
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "DidChangeAuthorization: received Authorization to use location.", buf, 2u);
    }

    [(MapsSuggestionsLimitingLocationManager *)self _startMonitoringVisits];
    [(MapsSuggestionsLimitingLocationManager *)self _startUpdatingLocation];
    [(MapsSuggestionsLimitingLocationManager *)self _startMonitoringSignificantLocationChanges];
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "DidChangeAuthorization: No Authorization to use location.", v7, 2u);
    }

    [(MapsSuggestionsLimitingLocationManager *)self _stopMonitoringVisits];
    [(MapsSuggestionsLimitingLocationManager *)self _stopUpdatingLocation];
    [(MapsSuggestionsLimitingLocationManager *)self _stopMonitoringSignificantLocationChanges];
    MapsSuggestionsResetCurrentLocation();
  }

  [(CLLocationManagerDelegate *)self->_delegate locationManagerDidChangeAuthorization:authorizationCopy];
}

@end