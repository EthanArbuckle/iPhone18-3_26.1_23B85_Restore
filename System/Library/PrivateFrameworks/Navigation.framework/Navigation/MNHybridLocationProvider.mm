@interface MNHybridLocationProvider
- (BOOL)locationProviderShouldPauseLocationUpdates:(id)a3;
- (MNHybridLocationProvider)initWithEffectiveBundle:(id)a3;
- (MNHybridLocationProvider)initWithEffectiveBundleIdentifier:(id)a3;
- (MNLocationProviderDelegate)delegate;
- (void)_setEffectiveAccuracy:(double)a3;
- (void)_sharedInit;
- (void)locationProvider:(id)a3 didEnterRegion:(id)a4;
- (void)locationProvider:(id)a3 didExitRegion:(id)a4;
- (void)locationProvider:(id)a3 didReceiveError:(id)a4;
- (void)locationProvider:(id)a3 didUpdateHeading:(id)a4;
- (void)locationProvider:(id)a3 didUpdateLocation:(id)a4;
- (void)locationProvider:(id)a3 didUpdateVehicleHeading:(double)a4 timestamp:(id)a5;
- (void)locationProvider:(id)a3 didUpdateVehicleSpeed:(double)a4 timestamp:(id)a5;
- (void)locationProvider:(id)a3 monitoringDidFailForRegion:(id)a4 withError:(id)a5;
- (void)locationProviderDidChangeAuthorizationStatus:(id)a3;
- (void)locationProviderDidPauseLocationUpdates:(id)a3;
- (void)locationProviderDidResumeLocationUpdates:(id)a3;
- (void)resetForActiveTileGroupChanged;
- (void)setDesiredAccuracy:(double)a3;
- (void)setDistanceFilter:(double)a3;
- (void)setHeadingOrientation:(int)a3;
- (void)setMode:(unint64_t)a3;
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

- (void)locationProvider:(id)a3 monitoringDidFailForRegion:(id)a4 withError:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = [(MNHybridLocationProvider *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(MNHybridLocationProvider *)self delegate];
    [v10 locationProvider:self monitoringDidFailForRegion:v11 withError:v7];
  }
}

- (void)locationProvider:(id)a3 didExitRegion:(id)a4
{
  v8 = a4;
  v5 = [(MNHybridLocationProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MNHybridLocationProvider *)self delegate];
    [v7 locationProvider:self didExitRegion:v8];
  }
}

- (void)locationProvider:(id)a3 didEnterRegion:(id)a4
{
  v8 = a4;
  v5 = [(MNHybridLocationProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MNHybridLocationProvider *)self delegate];
    [v7 locationProvider:self didEnterRegion:v8];
  }
}

- (void)locationProvider:(id)a3 didUpdateVehicleHeading:(double)a4 timestamp:(id)a5
{
  v7 = a5;
  v8 = [(MNHybridLocationProvider *)self delegate];
  [v8 locationProvider:self didUpdateVehicleHeading:v7 timestamp:a4];
}

- (void)locationProvider:(id)a3 didUpdateVehicleSpeed:(double)a4 timestamp:(id)a5
{
  v7 = a5;
  v8 = [(MNHybridLocationProvider *)self delegate];
  [v8 locationProvider:self didUpdateVehicleSpeed:v7 timestamp:a4];
}

- (void)locationProviderDidResumeLocationUpdates:(id)a3
{
  v4 = [(MNHybridLocationProvider *)self delegate];
  [v4 locationProviderDidResumeLocationUpdates:self];
}

- (void)locationProviderDidPauseLocationUpdates:(id)a3
{
  v4 = [(MNHybridLocationProvider *)self delegate];
  [v4 locationProviderDidPauseLocationUpdates:self];
}

- (BOOL)locationProviderShouldPauseLocationUpdates:(id)a3
{
  v3 = self;
  v4 = [(MNHybridLocationProvider *)self delegate];
  LOBYTE(v3) = [v4 locationProviderShouldPauseLocationUpdates:v3];

  return v3;
}

- (void)locationProviderDidChangeAuthorizationStatus:(id)a3
{
  v4 = [(MNHybridLocationProvider *)self delegate];
  [v4 locationProviderDidChangeAuthorizationStatus:self];
}

- (void)locationProvider:(id)a3 didReceiveError:(id)a4
{
  v5 = a4;
  v6 = [(MNHybridLocationProvider *)self delegate];
  [v6 locationProvider:self didReceiveError:v5];
}

- (void)locationProvider:(id)a3 didUpdateHeading:(id)a4
{
  v5 = a4;
  v6 = [(MNHybridLocationProvider *)self delegate];
  [v6 locationProvider:self didUpdateHeading:v5];
}

- (void)locationProvider:(id)a3 didUpdateLocation:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = MNGetPuckTrackingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 uuid];
    v13 = 138412290;
    v14 = v7;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "[MN] [%@] - Processing - in MNHybridLocationProvider::locationProvider:didUpdateLocation:", &v13, 0xCu);
  }

  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [(MNHybridLocationProvider *)self mode];
    v10 = @"Default";
    if (v9 == 1)
    {
      v10 = @"Leeching";
    }

    v13 = 138412546;
    v14 = v10;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEBUG, "Received location while in %@ mode:%@", &v13, 0x16u);
  }

  [v5 setIsLeeched:self->_mode == 1];
  v11 = [(MNHybridLocationProvider *)self delegate];
  [v11 locationProvider:self didUpdateLocation:v5];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setHeadingOrientation:(int)a3
{
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__MNHybridLocationProvider_setHeadingOrientation___block_invoke;
  block[3] = &unk_1E842FD50;
  objc_copyWeak(&v5, &location);
  v6 = a3;
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

- (void)_setEffectiveAccuracy:(double)a3
{
  self->_effectiveAccuracy = a3;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__MNHybridLocationProvider__setEffectiveAccuracy___block_invoke;
  block[3] = &unk_1E8430F10;
  objc_copyWeak(v5, &location);
  v5[1] = *&a3;
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

- (void)setDesiredAccuracy:(double)a3
{
  self->_nonLeechedDesiredAccuracy = a3;
  if (!self->_mode)
  {
    [(MNHybridLocationProvider *)self _setEffectiveAccuracy:?];
  }
}

- (void)setDistanceFilter:(double)a3
{
  self->_distanceFilter = a3;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__MNHybridLocationProvider_setDistanceFilter___block_invoke;
  block[3] = &unk_1E8430F10;
  objc_copyWeak(v5, &location);
  v5[1] = *&a3;
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

- (void)setMode:(unint64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_mode != a3)
  {
    p_nonLeechedDesiredAccuracy = &self->_nonLeechedDesiredAccuracy;
    if (a3 == 1)
    {
      p_nonLeechedDesiredAccuracy = MEMORY[0x1E6985C98];
    }

    [(MNHybridLocationProvider *)self _setEffectiveAccuracy:*p_nonLeechedDesiredAccuracy];
    self->_mode = a3;
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = @"Default";
      if (a3 == 1)
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

- (MNHybridLocationProvider)initWithEffectiveBundleIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MNHybridLocationProvider;
  v5 = [(MNHybridLocationProvider *)&v9 init];
  if (v5)
  {
    v6 = [[MNCoreLocationProvider alloc] initWithEffectiveBundleIdentifier:v4];
    coreLocationProvider = v5->_coreLocationProvider;
    v5->_coreLocationProvider = v6;

    [(MNHybridLocationProvider *)v5 _sharedInit];
  }

  return v5;
}

- (MNHybridLocationProvider)initWithEffectiveBundle:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MNHybridLocationProvider;
  v5 = [(MNHybridLocationProvider *)&v9 init];
  if (v5)
  {
    v6 = [[MNCoreLocationProvider alloc] initWithEffectiveBundle:v4];
    coreLocationProvider = v5->_coreLocationProvider;
    v5->_coreLocationProvider = v6;

    [(MNHybridLocationProvider *)v5 _sharedInit];
  }

  return v5;
}

@end