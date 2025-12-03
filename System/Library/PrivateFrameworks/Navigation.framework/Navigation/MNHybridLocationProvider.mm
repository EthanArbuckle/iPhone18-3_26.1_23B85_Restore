@interface MNHybridLocationProvider
- (BOOL)locationProviderShouldPauseLocationUpdates:(id)updates;
- (MNHybridLocationProvider)initWithEffectiveBundle:(id)bundle;
- (MNHybridLocationProvider)initWithEffectiveBundleIdentifier:(id)identifier;
- (MNLocationProviderDelegate)delegate;
- (void)_setEffectiveAccuracy:(double)accuracy;
- (void)_sharedInit;
- (void)locationProvider:(id)provider didEnterRegion:(id)region;
- (void)locationProvider:(id)provider didExitRegion:(id)region;
- (void)locationProvider:(id)provider didReceiveError:(id)error;
- (void)locationProvider:(id)provider didUpdateHeading:(id)heading;
- (void)locationProvider:(id)provider didUpdateLocation:(id)location;
- (void)locationProvider:(id)provider didUpdateVehicleHeading:(double)heading timestamp:(id)timestamp;
- (void)locationProvider:(id)provider didUpdateVehicleSpeed:(double)speed timestamp:(id)timestamp;
- (void)locationProvider:(id)provider monitoringDidFailForRegion:(id)region withError:(id)error;
- (void)locationProviderDidChangeAuthorizationStatus:(id)status;
- (void)locationProviderDidPauseLocationUpdates:(id)updates;
- (void)locationProviderDidResumeLocationUpdates:(id)updates;
- (void)resetForActiveTileGroupChanged;
- (void)setDesiredAccuracy:(double)accuracy;
- (void)setDistanceFilter:(double)filter;
- (void)setHeadingOrientation:(int)orientation;
- (void)setMode:(unint64_t)mode;
- (void)startUpdatingHeading;
- (void)startUpdatingLocation;
- (void)startUpdatingVehicleHeading;
- (void)startUpdatingVehicleSpeed;
- (void)stopUpdatingHeading;
- (void)stopUpdatingLocation;
- (void)stopUpdatingVehicleHeading;
- (void)stopUpdatingVehicleSpeed;
@end

@implementation MNHybridLocationProvider

- (MNLocationProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)locationProvider:(id)provider monitoringDidFailForRegion:(id)region withError:(id)error
{
  regionCopy = region;
  errorCopy = error;
  delegate = [(MNHybridLocationProvider *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(MNHybridLocationProvider *)self delegate];
    [delegate2 locationProvider:self monitoringDidFailForRegion:regionCopy withError:errorCopy];
  }
}

- (void)locationProvider:(id)provider didExitRegion:(id)region
{
  regionCopy = region;
  delegate = [(MNHybridLocationProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MNHybridLocationProvider *)self delegate];
    [delegate2 locationProvider:self didExitRegion:regionCopy];
  }
}

- (void)locationProvider:(id)provider didEnterRegion:(id)region
{
  regionCopy = region;
  delegate = [(MNHybridLocationProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MNHybridLocationProvider *)self delegate];
    [delegate2 locationProvider:self didEnterRegion:regionCopy];
  }
}

- (void)locationProvider:(id)provider didUpdateVehicleHeading:(double)heading timestamp:(id)timestamp
{
  timestampCopy = timestamp;
  delegate = [(MNHybridLocationProvider *)self delegate];
  [delegate locationProvider:self didUpdateVehicleHeading:timestampCopy timestamp:heading];
}

- (void)locationProvider:(id)provider didUpdateVehicleSpeed:(double)speed timestamp:(id)timestamp
{
  timestampCopy = timestamp;
  delegate = [(MNHybridLocationProvider *)self delegate];
  [delegate locationProvider:self didUpdateVehicleSpeed:timestampCopy timestamp:speed];
}

- (void)locationProviderDidResumeLocationUpdates:(id)updates
{
  delegate = [(MNHybridLocationProvider *)self delegate];
  [delegate locationProviderDidResumeLocationUpdates:self];
}

- (void)locationProviderDidPauseLocationUpdates:(id)updates
{
  delegate = [(MNHybridLocationProvider *)self delegate];
  [delegate locationProviderDidPauseLocationUpdates:self];
}

- (BOOL)locationProviderShouldPauseLocationUpdates:(id)updates
{
  selfCopy = self;
  delegate = [(MNHybridLocationProvider *)self delegate];
  LOBYTE(selfCopy) = [delegate locationProviderShouldPauseLocationUpdates:selfCopy];

  return selfCopy;
}

- (void)locationProviderDidChangeAuthorizationStatus:(id)status
{
  delegate = [(MNHybridLocationProvider *)self delegate];
  [delegate locationProviderDidChangeAuthorizationStatus:self];
}

- (void)locationProvider:(id)provider didReceiveError:(id)error
{
  errorCopy = error;
  delegate = [(MNHybridLocationProvider *)self delegate];
  [delegate locationProvider:self didReceiveError:errorCopy];
}

- (void)locationProvider:(id)provider didUpdateHeading:(id)heading
{
  headingCopy = heading;
  delegate = [(MNHybridLocationProvider *)self delegate];
  [delegate locationProvider:self didUpdateHeading:headingCopy];
}

- (void)locationProvider:(id)provider didUpdateLocation:(id)location
{
  v17 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v6 = MNGetPuckTrackingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    uuid = [locationCopy uuid];
    v13 = 138412290;
    v14 = uuid;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "[MN] [%@] - Processing - in MNHybridLocationProvider::locationProvider:didUpdateLocation:", &v13, 0xCu);
  }

  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    mode = [(MNHybridLocationProvider *)self mode];
    v10 = @"Default";
    if (mode == 1)
    {
      v10 = @"Leeching";
    }

    v13 = 138412546;
    v14 = v10;
    v15 = 2112;
    v16 = locationCopy;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEBUG, "Received location while in %@ mode:%@", &v13, 0x16u);
  }

  [locationCopy setIsLeeched:self->_mode == 1];
  delegate = [(MNHybridLocationProvider *)self delegate];
  [delegate locationProvider:self didUpdateLocation:locationCopy];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setHeadingOrientation:(int)orientation
{
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__MNHybridLocationProvider_setHeadingOrientation___block_invoke;
  block[3] = &unk_1E842FD50;
  objc_copyWeak(&v5, &location);
  orientationCopy = orientation;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __50__MNHybridLocationProvider_setHeadingOrientation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained coreLocationProvider];
  [v2 setHeadingOrientation:*(a1 + 40)];
}

- (void)resetForActiveTileGroupChanged
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __58__MNHybridLocationProvider_resetForActiveTileGroupChanged__block_invoke;
  v2[3] = &unk_1E8430EA0;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __58__MNHybridLocationProvider_resetForActiveTileGroupChanged__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained coreLocationProvider];
  [v1 resetForActiveTileGroupChanged];
}

- (void)stopUpdatingVehicleHeading
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __54__MNHybridLocationProvider_stopUpdatingVehicleHeading__block_invoke;
  v2[3] = &unk_1E8430EA0;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __54__MNHybridLocationProvider_stopUpdatingVehicleHeading__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained coreLocationProvider];
  [v1 stopUpdatingVehicleHeading];
}

- (void)startUpdatingVehicleHeading
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __55__MNHybridLocationProvider_startUpdatingVehicleHeading__block_invoke;
  v2[3] = &unk_1E8430EA0;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __55__MNHybridLocationProvider_startUpdatingVehicleHeading__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained coreLocationProvider];
  [v1 startUpdatingVehicleHeading];
}

- (void)stopUpdatingVehicleSpeed
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __52__MNHybridLocationProvider_stopUpdatingVehicleSpeed__block_invoke;
  v2[3] = &unk_1E8430EA0;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __52__MNHybridLocationProvider_stopUpdatingVehicleSpeed__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained coreLocationProvider];
  [v1 stopUpdatingVehicleSpeed];
}

- (void)startUpdatingVehicleSpeed
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __53__MNHybridLocationProvider_startUpdatingVehicleSpeed__block_invoke;
  v2[3] = &unk_1E8430EA0;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __53__MNHybridLocationProvider_startUpdatingVehicleSpeed__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained coreLocationProvider];
  [v1 startUpdatingVehicleSpeed];
}

- (void)stopUpdatingHeading
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __47__MNHybridLocationProvider_stopUpdatingHeading__block_invoke;
  v2[3] = &unk_1E8430EA0;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __47__MNHybridLocationProvider_stopUpdatingHeading__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained coreLocationProvider];
  [v1 stopUpdatingHeading];
}

- (void)startUpdatingHeading
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __48__MNHybridLocationProvider_startUpdatingHeading__block_invoke;
  v2[3] = &unk_1E8430EA0;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __48__MNHybridLocationProvider_startUpdatingHeading__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained coreLocationProvider];
  [v1 startUpdatingHeading];
}

- (void)stopUpdatingLocation
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __48__MNHybridLocationProvider_stopUpdatingLocation__block_invoke;
  v2[3] = &unk_1E8430EA0;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __48__MNHybridLocationProvider_stopUpdatingLocation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained coreLocationProvider];
  [v1 stopUpdatingLocation];
}

- (void)startUpdatingLocation
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __49__MNHybridLocationProvider_startUpdatingLocation__block_invoke;
  v2[3] = &unk_1E8430EA0;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __49__MNHybridLocationProvider_startUpdatingLocation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained coreLocationProvider];
  [v1 startUpdatingLocation];
}

- (void)_setEffectiveAccuracy:(double)accuracy
{
  self->_effectiveAccuracy = accuracy;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__MNHybridLocationProvider__setEffectiveAccuracy___block_invoke;
  block[3] = &unk_1E8430F10;
  objc_copyWeak(v5, &location);
  v5[1] = *&accuracy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(v5);
  objc_destroyWeak(&location);
}

void __50__MNHybridLocationProvider__setEffectiveAccuracy___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[5] setDesiredAccuracy:*(a1 + 40)];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[MNHybridLocationProvider _setEffectiveAccuracy:]_block_invoke";
      _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_ERROR, "strongSelf went away in %s", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_sharedInit
{
  v3 = objc_opt_new();
  [v3 setActivityType:1];
  [v3 setMatchInfoEnabled:0];
  [v3 setFusionInfoEnabled:0];
  [(MNCoreLocationProvider *)self->_coreLocationProvider setCLParameters:v3];
  [(MNHybridLocationProvider *)self setDesiredAccuracy:*MEMORY[0x1E6985C80]];
  [(MNHybridLocationProvider *)self setDistanceFilter:*MEMORY[0x1E6985C70]];
  [(MNCoreLocationProvider *)self->_coreLocationProvider setDelegate:self];
}

- (void)setDesiredAccuracy:(double)accuracy
{
  self->_nonLeechedDesiredAccuracy = accuracy;
  if (!self->_mode)
  {
    [(MNHybridLocationProvider *)self _setEffectiveAccuracy:?];
  }
}

- (void)setDistanceFilter:(double)filter
{
  self->_distanceFilter = filter;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__MNHybridLocationProvider_setDistanceFilter___block_invoke;
  block[3] = &unk_1E8430F10;
  objc_copyWeak(v5, &location);
  v5[1] = *&filter;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(v5);
  objc_destroyWeak(&location);
}

void __46__MNHybridLocationProvider_setDistanceFilter___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[5] setDistanceFilter:*(a1 + 40)];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[MNHybridLocationProvider setDistanceFilter:]_block_invoke";
      _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_ERROR, "strongSelf went away in %s", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)setMode:(unint64_t)mode
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_mode != mode)
  {
    p_nonLeechedDesiredAccuracy = &self->_nonLeechedDesiredAccuracy;
    if (mode == 1)
    {
      p_nonLeechedDesiredAccuracy = MEMORY[0x1E6985C98];
    }

    [(MNHybridLocationProvider *)self _setEffectiveAccuracy:*p_nonLeechedDesiredAccuracy];
    self->_mode = mode;
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = @"Default";
      if (mode == 1)
      {
        v7 = @"Leeching";
      }

      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEBUG, "Switched to %@ mode", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (MNHybridLocationProvider)initWithEffectiveBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = MNHybridLocationProvider;
  v5 = [(MNHybridLocationProvider *)&v9 init];
  if (v5)
  {
    v6 = [[MNCoreLocationProvider alloc] initWithEffectiveBundleIdentifier:identifierCopy];
    coreLocationProvider = v5->_coreLocationProvider;
    v5->_coreLocationProvider = v6;

    [(MNHybridLocationProvider *)v5 _sharedInit];
  }

  return v5;
}

- (MNHybridLocationProvider)initWithEffectiveBundle:(id)bundle
{
  bundleCopy = bundle;
  v9.receiver = self;
  v9.super_class = MNHybridLocationProvider;
  v5 = [(MNHybridLocationProvider *)&v9 init];
  if (v5)
  {
    v6 = [[MNCoreLocationProvider alloc] initWithEffectiveBundle:bundleCopy];
    coreLocationProvider = v5->_coreLocationProvider;
    v5->_coreLocationProvider = v6;

    [(MNHybridLocationProvider *)v5 _sharedInit];
  }

  return v5;
}

@end