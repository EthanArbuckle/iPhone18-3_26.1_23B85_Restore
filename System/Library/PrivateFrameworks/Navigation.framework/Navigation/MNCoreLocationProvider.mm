@interface MNCoreLocationProvider
- (BOOL)coarseModeEnabled;
- (BOOL)isAuthorized;
- (MNCoreLocationProvider)init;
- (MNCoreLocationProvider)initWithEffectiveBundle:(id)bundle;
- (MNCoreLocationProvider)initWithEffectiveBundleIdentifier:(id)identifier;
- (MNLocationProviderDelegate)delegate;
- (void)_forceUpdateAuthorizationStatusWithCompletionHandler:(id)handler;
- (void)_startUpdatingLocationWithDeterminedAuthorization;
- (void)_updateForCLParameters:(id)parameters;
- (void)dealloc;
- (void)locationManager:(id)manager didEnterRegion:(id)region;
- (void)locationManager:(id)manager didExitRegion:(id)region;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateHeading:(id)heading;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManager:(id)manager didUpdateVehicleHeading:(id)heading;
- (void)locationManager:(id)manager didUpdateVehicleSpeed:(id)speed;
- (void)locationManager:(id)manager monitoringDidFailForRegion:(id)region withError:(id)error;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)locationManagerDidPauseLocationUpdates:(id)updates;
- (void)locationManagerDidResumeLocationUpdates:(id)updates;
- (void)requestLocation;
- (void)resetForActiveTileGroupChanged;
- (void)setCLParameters:(id)parameters;
- (void)setDesiredAccuracy:(double)accuracy;
- (void)setDistanceFilter:(double)filter;
- (void)startUpdatingHeading;
- (void)startUpdatingLocation;
- (void)startUpdatingVehicleHeading;
- (void)startUpdatingVehicleSpeed;
- (void)stopUpdatingHeading;
- (void)stopUpdatingLocation;
- (void)stopUpdatingVehicleHeading;
- (void)stopUpdatingVehicleSpeed;
@end

@implementation MNCoreLocationProvider

- (BOOL)coarseModeEnabled
{
  isAuthorized = [(MNCoreLocationProvider *)self isAuthorized];
  v6 = self->_authorizationIsolater;
  _geo_isolate_lock_data();
  v4 = isAuthorized && self->_accuracyAuthorization == 1;
  _geo_isolate_unlock();

  return v4;
}

- (BOOL)isAuthorized
{
  selfCopy = self;
  v4 = self->_authorizationIsolater;
  _geo_isolate_lock();
  LOBYTE(selfCopy) = (selfCopy->_authorizationStatus - 3) < 2;
  _geo_isolate_unlock();

  return selfCopy;
}

- (MNLocationProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)locationManager:(id)manager monitoringDidFailForRegion:(id)region withError:(id)error
{
  regionCopy = region;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 locationProvider:self monitoringDidFailForRegion:regionCopy withError:errorCopy];
  }
}

- (void)locationManager:(id)manager didExitRegion:(id)region
{
  regionCopy = region;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 locationProvider:self didExitRegion:regionCopy];
  }
}

- (void)locationManager:(id)manager didEnterRegion:(id)region
{
  regionCopy = region;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 locationProvider:self didEnterRegion:regionCopy];
  }
}

- (void)locationManagerDidResumeLocationUpdates:(id)updates
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained locationProviderDidResumeLocationUpdates:self];
}

- (void)locationManagerDidPauseLocationUpdates:(id)updates
{
  updatesCopy = updates;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained locationProviderShouldPauseLocationUpdates:self];

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 locationProviderDidPauseLocationUpdates:self];
  }

  else
  {
    [updatesCopy startUpdatingLocation];
  }
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v22 = *MEMORY[0x1E69E9840];
  authorizationCopy = authorization;
  coarseModeEnabled = [(MNCoreLocationProvider *)self coarseModeEnabled];
  authorizationStatus = [authorizationCopy authorizationStatus];
  accuracyAuthorization = [authorizationCopy accuracyAuthorization];

  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    *buf = 138412802;
    v17 = identifier;
    v18 = 1024;
    v19 = authorizationStatus;
    v20 = 1024;
    v21 = accuracyAuthorization;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "[%@] CoreLocation changed authorization: %d, accuracy authorization: %d", buf, 0x18u);
  }

  authorizationIsolater = self->_authorizationIsolater;
  geo_isolate_sync_data();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained locationProviderDidChangeAuthorizationStatus:self];

  coarseModeEnabled2 = [(MNCoreLocationProvider *)self coarseModeEnabled];
  if (coarseModeEnabled != coarseModeEnabled2)
  {
    v13 = coarseModeEnabled2;
    v14 = objc_loadWeakRetained(&self->_delegate);
    [v14 locationProvider:self didChangeCoarseMode:v13];
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __64__MNCoreLocationProvider_locationManagerDidChangeAuthorization___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  *(*(result + 32) + 40) = *(result + 48);
  *(*(result + 32) + 48) = v1;
  return result;
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  v14 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    identifier = self->_identifier;
    v10 = 138412547;
    v11 = identifier;
    v12 = 2113;
    v13 = errorCopy;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_ERROR, "[%@] CoreLocation error: %{private}@", &v10, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained locationProvider:self didReceiveError:errorCopy];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)locationManager:(id)manager didUpdateHeading:(id)heading
{
  headingCopy = heading;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained locationProvider:self didUpdateHeading:headingCopy];
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  v22 = *MEMORY[0x1E69E9840];
  locationsCopy = locations;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    identifier = self->_identifier;
    v20 = 138412290;
    v21 = identifier;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "[%@] locationManager:didUpdateLocations", &v20, 0xCu);
  }

  v8 = MNGetMNLocationProviderLog();
  v9 = os_signpost_id_generate(v8);
  v10 = v8;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(v20) = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "DidUpdateLocations", "", &v20, 2u);
  }

  lastObject = [locationsCopy lastObject];

  v13 = [[MNLocation alloc] initWithCLLocation:lastObject];
  [(CLLocation *)v13 _navigation_setGtLog:1];
  v14 = MNGetPuckTrackingLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    uuid = [(MNLocation *)v13 uuid];
    v20 = 138412290;
    v21 = uuid;
    _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_INFO, "[MN] [%@] - Received - from MNCoreLocationProvider", &v20, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained locationProvider:self didUpdateLocation:v13];

  v17 = v11;
  v18 = v17;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    LOWORD(v20) = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v18, OS_SIGNPOST_INTERVAL_END, v9, "DidUpdateLocations", "", &v20, 2u);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)resetForActiveTileGroupChanged
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    v6 = 138412290;
    v7 = identifier;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "[%@] resetForActiveTileGroupChanged", &v6, 0xCu);
  }

  [(CLLocationManager *)self->_clLocationManager requestLocation];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)stopUpdatingVehicleHeading
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    v6 = 138412290;
    v7 = identifier;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "[%@] stopUpdatingVehicleHeading", &v6, 0xCu);
  }

  [(CLLocationManager *)self->_clLocationManager stopUpdatingVehicleHeading];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)startUpdatingVehicleHeading
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    v6 = 138412290;
    v7 = identifier;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "[%@] startUpdatingVehicleHeading", &v6, 0xCu);
  }

  [(CLLocationManager *)self->_clLocationManager startUpdatingVehicleHeading];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)stopUpdatingVehicleSpeed
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    v6 = 138412290;
    v7 = identifier;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "[%@] stopUpdatingVehicleSpeed", &v6, 0xCu);
  }

  [(CLLocationManager *)self->_clLocationManager stopUpdatingVehicleSpeed];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)startUpdatingVehicleSpeed
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    v6 = 138412290;
    v7 = identifier;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "[%@] startUpdatingVehicleSpeed", &v6, 0xCu);
  }

  [(CLLocationManager *)self->_clLocationManager startUpdatingVehicleSpeed];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)stopUpdatingHeading
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    v6 = 138412290;
    v7 = identifier;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "[%@] stopUpdatingHeading", &v6, 0xCu);
  }

  [(CLLocationManager *)self->_clLocationManager stopUpdatingHeading];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)startUpdatingHeading
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    v6 = 138412290;
    v7 = identifier;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "[%@] startUpdatingHeading", &v6, 0xCu);
  }

  [(CLLocationManager *)self->_clLocationManager startUpdatingHeading];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)requestLocation
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    v6 = 138412290;
    v7 = identifier;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "[%@] requestLocation", &v6, 0xCu);
  }

  [(CLLocationManager *)self->_clLocationManager requestLocation];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)stopUpdatingLocation
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    v6 = 138412290;
    v7 = identifier;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "[%@] stopUpdatingLocation", &v6, 0xCu);
  }

  [(CLLocationManager *)self->_clLocationManager stopUpdatingLocation];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_startUpdatingLocationWithDeterminedAuthorization
{
  v10 = *MEMORY[0x1E69E9840];
  if (![(MNCoreLocationProvider *)self isAuthorized])
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      identifier = self->_identifier;
      v8 = 138412290;
      v9 = identifier;
      _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_ERROR, "[%@] Trying to start Navigation location updates without location authorization", &v8, 0xCu);
    }
  }

  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = self->_identifier;
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "[%@] Calling [CLLocationManager startUpdatingLocation]", &v8, 0xCu);
  }

  [(CLLocationManager *)self->_clLocationManager startUpdatingLocation];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)startUpdatingLocation
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    LODWORD(buf) = 138412290;
    *(&buf + 4) = identifier;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "[%@] startUpdatingLocation", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v14 = 0x2020000000;
  v15 = 0;
  authorizationIsolater = self->_authorizationIsolater;
  v10[1] = MEMORY[0x1E69E9820];
  v10[2] = 3221225472;
  v10[3] = __47__MNCoreLocationProvider_startUpdatingLocation__block_invoke;
  v10[4] = &unk_1E8430960;
  v10[5] = self;
  v10[6] = &buf;
  geo_isolate_sync_data();
  if (*(*(&buf + 1) + 24))
  {
    [(MNCoreLocationProvider *)self _startUpdatingLocationWithDeterminedAuthorization];
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = self->_identifier;
      *v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEBUG, "[%@] Authorization not determined, updating manually.", v11, 0xCu);
    }

    objc_initWeak(v11, self);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__MNCoreLocationProvider_startUpdatingLocation__block_invoke_53;
    v9[3] = &unk_1E8430EA0;
    objc_copyWeak(v10, v11);
    [(MNCoreLocationProvider *)self _forceUpdateAuthorizationStatusWithCompletionHandler:v9];
    objc_destroyWeak(v10);
    objc_destroyWeak(v11);
  }

  _Block_object_dispose(&buf, 8);
  v8 = *MEMORY[0x1E69E9840];
}

void __47__MNCoreLocationProvider_startUpdatingLocation__block_invoke_53(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startUpdatingLocationWithDeterminedAuthorization];
}

- (void)setDesiredAccuracy:(double)accuracy
{
  [(MNLocationProviderCLParameters *)self->_clParameters setDesiredAccuracy:?];
  clLocationManager = self->_clLocationManager;

  [(CLLocationManager *)clLocationManager setDesiredAccuracy:accuracy];
}

- (void)setDistanceFilter:(double)filter
{
  [(MNLocationProviderCLParameters *)self->_clParameters setDistanceFilter:?];
  clLocationManager = self->_clLocationManager;

  [(CLLocationManager *)clLocationManager setDistanceFilter:filter];
}

- (void)_forceUpdateAuthorizationStatusWithCompletionHandler:(id)handler
{
  v14 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    *buf = 138412290;
    v13 = identifier;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "[%@] Force updating authorization status.", buf, 0xCu);
  }

  locationsQueue = self->_locationsQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__MNCoreLocationProvider__forceUpdateAuthorizationStatusWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E842F580;
  v10[4] = self;
  v11 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(locationsQueue, v10);

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __79__MNCoreLocationProvider__forceUpdateAuthorizationStatusWithCompletionHandler___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 56);
  geo_isolate_sync_data();
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 64);
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "[%@] Finished force updating authorization status.", buf, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __79__MNCoreLocationProvider__forceUpdateAuthorizationStatusWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 40) = [*(*(a1 + 32) + 8) authorizationStatus];
  result = [*(*(a1 + 32) + 8) accuracyAuthorization];
  *(*(a1 + 32) + 48) = result;
  return result;
}

- (void)_updateForCLParameters:(id)parameters
{
  v26 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  v5 = parametersCopy;
  if (parametersCopy && self->_clLocationManager)
  {
    -[CLLocationManager setActivityType:](self->_clLocationManager, "setActivityType:", [parametersCopy activityType]);
    [v5 distanceFilter];
    [(CLLocationManager *)self->_clLocationManager setDistanceFilter:?];
    [v5 desiredAccuracy];
    [(CLLocationManager *)self->_clLocationManager setDesiredAccuracy:?];
    -[CLLocationManager setMatchInfoEnabled:](self->_clLocationManager, "setMatchInfoEnabled:", [v5 matchInfoEnabled]);
    -[CLLocationManager _setFusionInfoEnabled:](self->_clLocationManager, "_setFusionInfoEnabled:", [v5 fusionInfoEnabled]);
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      identifier = self->_identifier;
      activityType = [v5 activityType];
      [v5 distanceFilter];
      v10 = v9;
      [v5 desiredAccuracy];
      v14 = 138413570;
      v15 = identifier;
      v16 = 1024;
      v17 = activityType;
      v18 = 2048;
      v19 = v10;
      v20 = 2048;
      v21 = v11;
      v22 = 1024;
      matchInfoEnabled = [v5 matchInfoEnabled];
      v24 = 1024;
      fusionInfoEnabled = [v5 fusionInfoEnabled];
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "[%@] MNCoreLocationProvider setting CL parameters:\nactivityType:%d, distanceFilter:%g, desiredAccuracy:%g, matchInfoEnabled:%d, fusionInfoEnabled:%d", &v14, 0x32u);
    }

    clParameters = self->_clParameters;
    self->_clParameters = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setCLParameters:(id)parameters
{
  parametersCopy = parameters;
  v6 = parametersCopy;
  if (self->_clLocationManager)
  {
    [(MNCoreLocationProvider *)self _updateForCLParameters:parametersCopy];
  }

  else
  {
    objc_storeStrong(&self->_clParameters, parameters);
  }
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  [(CLLocationManager *)self->_clLocationManager stopUpdatingLocation];
  [(CLLocationManager *)self->_clLocationManager stopUpdatingHeading];
  [(CLLocationManager *)self->_clLocationManager setDelegate:0];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    *buf = 138412290;
    v8 = identifier;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "[%@] Deallocated.", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = MNCoreLocationProvider;
  [(MNCoreLocationProvider *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (MNCoreLocationProvider)initWithEffectiveBundleIdentifier:(id)identifier
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v6 = [(MNCoreLocationProvider *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = identifierCopy;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "[MNCoreLocationProvider initWithEffectiveBundleIdentifier:] - %@", &v14, 0xCu);
    }

    v9 = [objc_alloc(MEMORY[0x1E695FBE8]) initWithEffectiveBundleIdentifier:identifierCopy delegate:v7 onQueue:v7->_locationsQueue];
    clLocationManager = v7->_clLocationManager;
    v7->_clLocationManager = v9;

    [(CLLocationManager *)v7->_clLocationManager setDelegate:v7];
    v11 = v7;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

- (MNCoreLocationProvider)initWithEffectiveBundle:(id)bundle
{
  v19 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  v5 = [(MNCoreLocationProvider *)self init];
  if (v5)
  {
    bundleIdentifier = [bundleCopy bundleIdentifier];
    identifier = v5->_identifier;
    v5->_identifier = bundleIdentifier;

    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier2 = [bundleCopy bundleIdentifier];
      v17 = 138412290;
      v18 = bundleIdentifier2;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "[MNCoreLocationProvider initWithEffectiveBundle:] - %@", &v17, 0xCu);
    }

    v10 = objc_alloc(MEMORY[0x1E695FBE8]);
    bundlePath = [bundleCopy bundlePath];
    v12 = [v10 initWithEffectiveBundlePath:bundlePath delegate:v5 onQueue:v5->_locationsQueue];
    clLocationManager = v5->_clLocationManager;
    v5->_clLocationManager = v12;

    [(CLLocationManager *)v5->_clLocationManager setDelegate:v5];
    v14 = v5;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (MNCoreLocationProvider)init
{
  v9.receiver = self;
  v9.super_class = MNCoreLocationProvider;
  v2 = [(MNCoreLocationProvider *)&v9 init];
  if (v2)
  {
    v3 = geo_dispatch_queue_create();
    locationsQueue = v2->_locationsQueue;
    v2->_locationsQueue = v3;

    v2->_authorizationStatus = 0;
    v5 = geo_isolater_create();
    authorizationIsolater = v2->_authorizationIsolater;
    v2->_authorizationIsolater = v5;

    v7 = v2;
  }

  return v2;
}

- (void)locationManager:(id)manager didUpdateVehicleHeading:(id)heading
{
  v22 = *MEMORY[0x1E69E9840];
  headingCopy = heading;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    identifier = self->_identifier;
    [headingCopy trueHeading];
    v9 = v8;
    timestamp = [headingCopy timestamp];
    v16 = 138412803;
    v17 = identifier;
    v18 = 2048;
    v19 = v9;
    v20 = 2113;
    v21 = timestamp;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEBUG, "[%@] Got vehicle heading: %g | %{private}@", &v16, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [headingCopy trueHeading];
  v13 = v12;
  timestamp2 = [headingCopy timestamp];
  [WeakRetained locationProvider:self didUpdateVehicleHeading:timestamp2 timestamp:v13];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)locationManager:(id)manager didUpdateVehicleSpeed:(id)speed
{
  v22 = *MEMORY[0x1E69E9840];
  speedCopy = speed;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    identifier = self->_identifier;
    [speedCopy speed];
    v9 = v8;
    timestamp = [speedCopy timestamp];
    v16 = 138412803;
    v17 = identifier;
    v18 = 2048;
    v19 = v9;
    v20 = 2113;
    v21 = timestamp;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEBUG, "[%@] Got vehicle speed: %g | %{private}@", &v16, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [speedCopy speed];
  v13 = v12;
  timestamp2 = [speedCopy timestamp];
  [WeakRetained locationProvider:self didUpdateVehicleSpeed:timestamp2 timestamp:v13];

  v15 = *MEMORY[0x1E69E9840];
}

@end