@interface MNSimulationLocationProvider
- (MNLocationProviderDelegate)delegate;
- (MNSimulationLocationProvider)initWithSimulationParameters:(id)a3 alternateRouteInfos:(id)a4;
- (MNSimulationLocationProvider)initWithStartNavigationDetails:(id)a3;
- (void)_resetLocationUpdateInterval;
- (void)_sendLocationUpdate;
- (void)dealloc;
- (void)setUpdateIntervalSpeedMultiplier:(double)a3;
- (void)startMonitoringForRegion:(id)a3;
- (void)startUpdatingLocation;
- (void)stopMonitoringForRegion:(id)a3;
- (void)stopUpdatingLocation;
@end

@implementation MNSimulationLocationProvider

- (MNLocationProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)stopMonitoringForRegion:(id)a3
{
  v5 = a3;
  [(GEOPerformanceEventLogger *)self->_performanceEventLogger logPerformanceEvent:"[MNSimulationLocationProvider stopMonitoringForRegion:]"];
  v4 = self->_monitoredGeoFences;
  objc_sync_enter(v4);
  if (self->_simulateGeoFences)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NSMutableArray *)self->_monitoredGeoFences removeObject:v5];
      [(NSMutableArray *)self->_currentGeoFences removeObject:v5];
    }
  }

  objc_sync_exit(v4);
}

- (void)startMonitoringForRegion:(id)a3
{
  v5 = a3;
  [(GEOPerformanceEventLogger *)self->_performanceEventLogger logPerformanceEvent:"[MNSimulationLocationProvider startMonitoringForRegion:]"];
  v4 = self->_monitoredGeoFences;
  objc_sync_enter(v4);
  if (self->_simulateGeoFences)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NSMutableArray *)self->_monitoredGeoFences addObject:v5];
    }
  }

  objc_sync_exit(v4);
}

- (void)stopUpdatingLocation
{
  v24 = *MEMORY[0x1E69E9840];
  [(GEOPerformanceEventLogger *)self->_performanceEventLogger logPerformanceEvent:"[MNSimulationLocationProvider stopUpdatingLocation]"];
  v3 = MNGetMNNavigationSimulationLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "Stopping navigation simulation location updates.", buf, 2u);
  }

  locationUpdateTimer = self->_locationUpdateTimer;
  if (locationUpdateTimer)
  {
    [(MNDispatchTimer *)locationUpdateTimer cancel];
    v5 = self->_locationUpdateTimer;
    self->_locationUpdateTimer = 0;

    v6 = [(MNSimulatedLocationGenerator *)self->_locationGenerator lastLocation];
    if (GEOConfigGetBOOL())
    {
      v7 = MNGetMNNavigationSimulationLog();
      v8 = v7;
      if (v6)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          [v6 coordinate];
          v10 = v9;
          [v6 coordinate];
          *buf = 134283777;
          *&buf[4] = v10;
          *&buf[12] = 2049;
          *&buf[14] = v11;
          _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "Setting simulated location to %{private}f, %{private}f", buf, 0x16u);
        }

        v22 = 0u;
        memset(v23, 0, 28);
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        memset(buf, 0, sizeof(buf));
        [v6 clientLocation];
        *&buf[44] = 0;
        if (*&buf[28] == 1.79769313e308)
        {
          *&buf[28] = 0;
        }

        v12 = objc_alloc(MEMORY[0x1E6985C40]);
        v16[6] = v21;
        v16[7] = v22;
        v17[0] = v23[0];
        *(v17 + 12) = *(v23 + 12);
        v16[2] = *&buf[32];
        v16[3] = *&buf[48];
        v16[4] = v19;
        v16[5] = v20;
        v16[0] = *buf;
        v16[1] = *&buf[16];
        v13 = [v12 initWithClientLocation:v16];
        v14 = objc_alloc_init(MEMORY[0x1E695FC40]);
        [v14 setLocationRepeatBehavior:1];
        [v14 clearSimulatedLocations];
        [v14 appendSimulatedLocation:v13];
        [v14 startLocationSimulation];
      }

      else
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_ERROR, "Set simulated location after ending navigation was set, but no simulation location was set. Ignoring.", buf, 2u);
        }

        v6 = 0;
      }
    }
  }

  else
  {
    v6 = MNGetMNNavigationSimulationLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_ERROR, "-stopUpdatingLocation called after location updates have already been stopped.", buf, 2u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)startUpdatingLocation
{
  [(GEOPerformanceEventLogger *)self->_performanceEventLogger logPerformanceEvent:"[MNSimulationLocationProvider startUpdatingLocation]"];
  v3 = MNGetMNNavigationSimulationLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "Starting navigation simulation location updates.", buf, 2u);
  }

  self->_simulateGeoFences = GEOConfigGetBOOL();
  v4 = self->_monitoredGeoFences;
  objc_sync_enter(v4);
  [(NSMutableArray *)self->_monitoredGeoFences removeAllObjects];
  [(NSMutableArray *)self->_currentGeoFences removeAllObjects];
  objc_sync_exit(v4);

  if (self->_locationUpdateTimer)
  {
    v5 = MNGetMNNavigationSimulationLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_ERROR, "-startUpdatingLocation called after location updates have already been started.", v6, 2u);
    }
  }

  else
  {
    [(MNSimulationLocationProvider *)self _resetLocationUpdateInterval];
  }
}

- (void)_resetLocationUpdateInterval
{
  v19 = *MEMORY[0x1E69E9840];
  locationUpdateTimer = self->_locationUpdateTimer;
  if (locationUpdateTimer)
  {
    [(MNDispatchTimer *)locationUpdateTimer cancel];
    v4 = self->_locationUpdateTimer;
    self->_locationUpdateTimer = 0;
  }

  updateIntervalSpeedMultiplier = self->_updateIntervalSpeedMultiplier;
  if (updateIntervalSpeedMultiplier <= 0.0)
  {
    v13 = MNGetMNNavigationSimulationLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_DEFAULT, "Pausing navigation simulation because update interval speed multiplier is 0.", buf, 2u);
    }
  }

  else
  {
    v6 = 1.0 / updateIntervalSpeedMultiplier;
    v7 = MNGetMNNavigationSimulationLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v18 = v6;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "Running navigation simulation with update interval of %0.2f seconds", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v8 = [MNDispatchTimer alloc];
    v9 = MNNavigationQueue();
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __60__MNSimulationLocationProvider__resetLocationUpdateInterval__block_invoke;
    v15[3] = &unk_1E8430EA0;
    objc_copyWeak(&v16, buf);
    v10 = [(MNDispatchTimer *)v8 initWithTime:1 repeating:v9 queue:v15 handler:v6];
    v12 = self->_locationUpdateTimer;
    p_locationUpdateTimer = &self->_locationUpdateTimer;
    *p_locationUpdateTimer = v10;

    [*p_locationUpdateTimer activate];
    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __60__MNSimulationLocationProvider__resetLocationUpdateInterval__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sendLocationUpdate];
}

- (void)_sendLocationUpdate
{
  v70 = *MEMORY[0x1E69E9840];
  [(GEOPerformanceEventLogger *)self->_performanceEventLogger logPerformanceEvent:"[MNSimulationLocationProvider _sendLocationUpdate]"];
  v52 = [(MNSimulatedLocationGenerator *)self->_locationGenerator nextSimulatedLocationWithElapsedTime:1.0];
  v3 = MNGetMNNavigationSimulationLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

  if (v4)
  {
    v5 = [(MNSimulatedLocationGenerator *)self->_locationGenerator currentStateType];
    v6 = v5;
    v7 = MEMORY[0x1E696AD60];
    if (v52)
    {
      [v52 coordinate];
      v9 = v8;
      [v52 coordinate];
      v11 = v10;
      [v52 course];
      v13 = v12;
      [v52 speed];
      if (v6 > 0xA)
      {
        v15 = @"Unknown";
      }

      else
      {
        v15 = off_1E842ED18[v6];
      }

      v17 = [v7 stringWithFormat:@"Sending simulated location: %f, %f | %0.1f | %0.1f m/s | %@", v9, v11, v13, v14, v15];
      if (v6 == 2)
      {
        [(MNSimulatedLocationGenerator *)self->_locationGenerator lastRouteCoordinate];
        v18 = GEOPolylineCoordinateAsShortString();
        [v17 appendFormat:@" [%@]", v18];
      }
    }

    else
    {
      if (v5 > 0xA)
      {
        v16 = @"Unknown";
      }

      else
      {
        v16 = off_1E842ED18[v5];
      }

      v17 = [MEMORY[0x1E696AD60] stringWithFormat:@"Location is nil. State: %@", v16];
    }

    v19 = MNGetMNNavigationSimulationLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v69 = v17;
      _os_log_impl(&dword_1D311E000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  if (v52)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = objc_loadWeakRetained(&self->_delegate);
      [v22 locationProvider:self didUpdateLocation:v52];
    }
  }

  if (self->_simulateGeoFences)
  {
    v49 = self->_monitoredGeoFences;
    objc_sync_enter(v49);
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = self->_monitoredGeoFences;
    v23 = [(NSMutableArray *)obj countByEnumeratingWithState:&v61 objects:v67 count:16];
    if (v23)
    {
      v50 = 0;
      v24 = 0;
      v25 = *v62;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v62 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v61 + 1) + 8 * i);
          v28 = [(NSMutableArray *)self->_currentGeoFences indexOfObject:v27];
          v29 = [v52 rawLocation];
          [v29 coordinate];
          v30 = [v27 containsCoordinate:?];

          if (((v28 == 0x7FFFFFFFFFFFFFFFLL) & v30) == 1)
          {
            v31 = objc_loadWeakRetained(&self->_delegate);
            v32 = objc_opt_respondsToSelector();

            if (v32)
            {
              [(NSMutableArray *)self->_currentGeoFences addObject:v27];
              if (!v24)
              {
                v24 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
              }

              [v24 addObject:v27];
            }
          }

          else if (!((v28 == 0x7FFFFFFFFFFFFFFFLL) | v30 & 1))
          {
            v33 = objc_loadWeakRetained(&self->_delegate);
            v34 = objc_opt_respondsToSelector();

            if (v34)
            {
              [(NSMutableArray *)self->_currentGeoFences removeObjectAtIndex:v28];
              v35 = v50;
              if (!v50)
              {
                v35 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
              }

              v50 = v35;
              [v35 addObject:v27];
            }
          }
        }

        v23 = [(NSMutableArray *)obj countByEnumeratingWithState:&v61 objects:v67 count:16];
      }

      while (v23);
    }

    else
    {
      v50 = 0;
      v24 = 0;
    }

    objc_sync_exit(v49);
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v36 = v24;
    v37 = [v36 countByEnumeratingWithState:&v57 objects:v66 count:16];
    if (v37)
    {
      v38 = *v58;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v58 != v38)
          {
            objc_enumerationMutation(v36);
          }

          v40 = *(*(&v57 + 1) + 8 * j);
          v41 = objc_loadWeakRetained(&self->_delegate);
          [v41 locationProvider:self didEnterRegion:v40];
        }

        v37 = [v36 countByEnumeratingWithState:&v57 objects:v66 count:16];
      }

      while (v37);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v42 = v50;
    v43 = [v42 countByEnumeratingWithState:&v53 objects:v65 count:16];
    if (v43)
    {
      v44 = *v54;
      do
      {
        for (k = 0; k != v43; ++k)
        {
          if (*v54 != v44)
          {
            objc_enumerationMutation(v42);
          }

          v46 = *(*(&v53 + 1) + 8 * k);
          v47 = objc_loadWeakRetained(&self->_delegate);
          [v47 locationProvider:self didExitRegion:v46];
        }

        v43 = [v42 countByEnumeratingWithState:&v53 objects:v65 count:16];
      }

      while (v43);
    }
  }

  v48 = *MEMORY[0x1E69E9840];
}

- (void)setUpdateIntervalSpeedMultiplier:(double)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (vabdd_f64(self->_updateIntervalSpeedMultiplier, a3) >= 0.01)
  {
    v5 = MNGetMNNavigationSimulationLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 1.0 / self->_updateIntervalSpeedMultiplier;
      v8 = 134218240;
      v9 = v6;
      v10 = 2048;
      v11 = 1.0 / a3;
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "Setting simulation update interval from %0.2fs to %0.2fs.", &v8, 0x16u);
    }

    self->_updateIntervalSpeedMultiplier = a3;
    [(MNSimulationLocationProvider *)self _resetLocationUpdateInterval];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(MNDispatchTimer *)self->_locationUpdateTimer cancel];
  locationUpdateTimer = self->_locationUpdateTimer;
  self->_locationUpdateTimer = 0;

  v4.receiver = self;
  v4.super_class = MNSimulationLocationProvider;
  [(MNSimulationLocationProvider *)&v4 dealloc];
}

- (MNSimulationLocationProvider)initWithStartNavigationDetails:(id)a3
{
  v4 = a3;
  v5 = [v4 tracePlaybackPath];

  if (v5 || ([v4 simulationType] + 1) < 2)
  {
    v6 = 0;
  }

  else
  {
    v7 = [v4 routes];
    v8 = [v7 count];

    v9 = 0;
    if (v8)
    {
      v8 = 0;
      v10 = 0;
      do
      {
        v11 = [v4 routes];
        v12 = [v11 objectAtIndexedSubscript:v10];

        v13 = [v4 selectedRouteIndex];
        v14 = [[MNActiveRouteInfo alloc] initWithRoute:v12];
        v15 = v14;
        if (v10 == v13)
        {
          v16 = v14;

          v9 = v16;
        }

        else
        {
          if (!v8)
          {
            v8 = objc_opt_new();
          }

          [v8 addObject:v15];
        }

        ++v10;
        v17 = [v4 routes];
        v18 = [v17 count];
      }

      while (v10 < v18);
    }

    v19 = objc_opt_new();
    [v19 setSimulationType:{objc_msgSend(v4, "simulationType")}];
    [v19 setInitialRoute:v9];
    v20 = [(MNActiveRouteInfo *)v9 route];
    v21 = [v20 source] != 1;

    v22 = [MNSuggestedNavigationModeFinder alloc];
    v23 = [(MNActiveRouteInfo *)v9 route];
    v24 = [(MNSuggestedNavigationModeFinder *)v22 initWithRoute:v23 context:v21];

    v25 = [v4 initialUserLocation];
    v26 = [(MNSuggestedNavigationModeFinder *)v24 suggestedNavigationModeForLocation:v25];

    if (v26 == 1)
    {
      v27 = [v4 initialUserLocation];
      [v19 setStartingLocation:v27];
    }

    self = [(MNSimulationLocationProvider *)self initWithSimulationParameters:v19 alternateRouteInfos:v8];

    v6 = self;
  }

  return v6;
}

- (MNSimulationLocationProvider)initWithSimulationParameters:(id)a3 alternateRouteInfos:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v45.receiver = self;
  v45.super_class = MNSimulationLocationProvider;
  v8 = [(MNSimulationLocationProvider *)&v45 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E69A2338]) initWithClassName:@"MNSimulationLocationProvider"];
    performanceEventLogger = v8->_performanceEventLogger;
    v8->_performanceEventLogger = v9;

    v11 = [v6 simulationType];
    v8->_simulationType = v11;
    if (v11 == 3 && [v7 count])
    {
      v12 = [v7 firstObject];
      if ([v7 count] >= 2)
      {
        v36 = v8;
        v37 = v6;
        v40 = objc_alloc_init(MNRouteDivergenceFinder);
        v13 = [v12 route];
        [v13 endRouteCoordinate];

        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v35 = v7;
        obj = v7;
        v14 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
        if (v14)
        {
          v15 = v14;
          v39 = *v42;
          do
          {
            v16 = 0;
            do
            {
              if (*v42 != v39)
              {
                objc_enumerationMutation(obj);
              }

              v17 = *(*(&v41 + 1) + 8 * v16);
              v18 = [v12 route];
              v19 = [v17 route];
              v20 = [(MNRouteDivergenceFinder *)v40 findFirstDivergenceBetweenRoute:v18 andRoute:v19];
              v21 = [v20 firstObject];
              [v21 routeCoordinate];

              if (GEOPolylineCoordinateIsABeforeB())
              {
                v22 = v17;

                v12 = v22;
              }

              ++v16;
            }

            while (v15 != v16);
            v15 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
          }

          while (v15);
        }

        v8 = v36;
        v6 = v37;
        v7 = v35;
      }

      v23 = MNGetMNNavigationSimulationLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v12 route];
        v25 = [v24 name];
        *buf = 138412290;
        v47 = v25;
      }

      [v6 setInitialRoute:v12];
    }

    v26 = [[MNSimulatedLocationGenerator alloc] initWithSimulationParameters:v6];
    locationGenerator = v8->_locationGenerator;
    v8->_locationGenerator = v26;

    [(MNSimulatedLocationGenerator *)v8->_locationGenerator setEndAtFinalDestination:0];
    v8->_simulateGeoFences = 0;
    v28 = [MEMORY[0x1E695DF70] array];
    monitoredGeoFences = v8->_monitoredGeoFences;
    v8->_monitoredGeoFences = v28;

    v30 = [MEMORY[0x1E695DF70] array];
    currentGeoFences = v8->_currentGeoFences;
    v8->_currentGeoFences = v30;

    v8->_updateIntervalSpeedMultiplier = 1.0;
    v32 = v8;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v8;
}

@end