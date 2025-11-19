@interface CLMicroLocationLoiBridge
- (CLMicroLocationLoiBridge)initWithQueue:(id)a3;
- (id)retrieveAllActiveGeofences;
- (int64_t)generateLocationManagerNotAvailableError;
- (int64_t)generateRegionMonitorNotAvailableError;
- (unint64_t)convertMonitoringEventToGeofenceState:(id)a3;
- (void)dealloc;
- (void)fetchLocationOfInterestAtLocation:(id)a3;
- (void)fetchPlaceInferenceAtCurrentLocationWithPolicy:(unint64_t)a3;
- (void)fetchRelatedLoisForLoi:(id)a3;
- (void)generateGeofenceUpdateToClient:(id)a3;
- (void)getAllActiveGeofences;
- (void)getCurrentLocation;
- (void)invalidateFetchPlaceInferenceTimer;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManager:(id)a3 didVisit:(id)a4;
- (void)regionMonitor:(id)a3 didGenerateEvent:(id)a4;
- (void)removeGeofenceWithRegionId:(id)a3;
- (void)removeGeofencesNearLocationWithLatitude:(double)a3 andLongitude:(double)a4;
- (void)requestBootstrapWithLastGeofenceStates;
- (void)setGeofenceAtLocation:(id)a3;
- (void)setupFetchPlaceInferenceTimer;
- (void)setupRegionMonitoring;
- (void)startLeechingLocationUpdates;
- (void)startVisitMonitoring;
- (void)stopLeechingLocationUpdates;
@end

@implementation CLMicroLocationLoiBridge

- (CLMicroLocationLoiBridge)initWithQueue:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = CLMicroLocationLoiBridge;
  v5 = [(CLMicroLocationLoiBridge *)&v23 init];
  if (v5)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [CLMicroLocationLoiBridge initWithQueue:];
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "#LOI Bridge, Init", v22, 2u);
    }

    [(CLMicroLocationLoiBridge *)v5 setQueue:v4];
    [(CLMicroLocationLoiBridge *)v5 setFetchPlaceInferenceTimer:0];
    v7 = objc_alloc_init(MEMORY[0x277D01280]);
    [(CLMicroLocationLoiBridge *)v5 setRoutineManager:v7];

    v8 = objc_alloc(MEMORY[0x277CBFC10]);
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/System/Library/LocationBundles/Milod.bundle"];
    v10 = [(CLMicroLocationLoiBridge *)v5 queue];
    v11 = [v8 initWithEffectiveBundlePath:v9 delegate:v5 onQueue:v10];
    [(CLMicroLocationLoiBridge *)v5 setClLocationManager:v11];

    v12 = [(CLMicroLocationLoiBridge *)v5 clLocationManager];

    if (!v12)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [CLMicroLocationLoiBridge initWithQueue:];
      }

      v13 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
      {
        *v22 = 0;
        _os_log_impl(&dword_258FE9000, v13, OS_LOG_TYPE_FAULT, "Failed to create location manager using MicroLocation bundle", v22, 2u);
      }
    }

    v14 = [(CLMicroLocationLoiBridge *)v5 clLocationManager];
    [v14 setDesiredAccuracy:*MEMORY[0x277CE4250]];

    v15 = +[ULDefaultsSingleton shared];
    v16 = [v15 defaultsDictionary];

    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULEnabled"];
    v18 = [v16 objectForKey:v17];
    if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v19 = [v18 BOOLValue];
    }

    else
    {
      v19 = [MEMORY[0x277CBEC38] BOOLValue];
    }

    v20 = v19;

    if (v20)
    {
      [(CLMicroLocationLoiBridge *)v5 startVisitMonitoring];
    }
  }

  return v5;
}

- (void)dealloc
{
  v3 = [(CLMicroLocationLoiBridge *)self clLocationManager];
  [v3 stopMonitoringVisits];

  v4.receiver = self;
  v4.super_class = CLMicroLocationLoiBridge;
  [(CLMicroLocationLoiBridge *)&v4 dealloc];
}

- (void)setupRegionMonitoring
{
  v3 = [(CLMicroLocationLoiBridge *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CLMicroLocationLoiBridge *)self regionMonitorConfiguration];

  if (!v4)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [CLMicroLocationLoiBridge setupRegionMonitoring];
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "#LOI Bridge, setupRegionMonitoring", buf, 2u);
    }

    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__CLMicroLocationLoiBridge_setupRegionMonitoring__block_invoke;
    aBlock[3] = &unk_2798D5308;
    objc_copyWeak(&v21, buf);
    v6 = _Block_copy(aBlock);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __49__CLMicroLocationLoiBridge_setupRegionMonitoring__block_invoke_2;
    v18 = &unk_2798D5330;
    objc_copyWeak(&v19, buf);
    v7 = _Block_copy(&v15);
    v8 = objc_alloc(MEMORY[0x277CBFC38]);
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"ULRegionMonitor", v15, v16, v17, v18}];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/var/mobile/Library/com.apple.milod/"];
    v11 = [(CLMicroLocationLoiBridge *)self queue];
    v12 = [v8 initWithName:v9 path:v10 onQueue:v11 eventHandler:v7 useMonitorQueueForVendingMonitor:1 vendingHandler:v6];
    [(CLMicroLocationLoiBridge *)self setRegionMonitorConfiguration:v12];

    v13 = [(CLMicroLocationLoiBridge *)self clLocationManager];
    v14 = [(CLMicroLocationLoiBridge *)self regionMonitorConfiguration];
    [v13 requestMonitorWithConfiguration:v14 completion:v6];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }
}

void __49__CLMicroLocationLoiBridge_setupRegionMonitoring__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v4 = WeakRetained;
      v5 = [WeakRetained queue];
      dispatch_assert_queue_V2(v5);

      [v4 setRegionMonitor:v6];
      [v4 requestBootstrapWithLastGeofenceStates];
    }
  }
}

void __49__CLMicroLocationLoiBridge_setupRegionMonitoring__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained queue];
    dispatch_assert_queue_V2(v8);

    [v7 regionMonitor:v9 didGenerateEvent:v5];
  }
}

- (void)requestBootstrapWithLastGeofenceStates
{
  v32 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    [CLMicroLocationLoiBridge setupRegionMonitoring];
  }

  v3 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "#LOI Bridge, Bootstrapping", buf, 2u);
  }

  v4 = [(CLMicroLocationLoiBridge *)self regionMonitor];
  v5 = v4 == 0;

  if (v5)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [CLMicroLocationLoiBridge initWithQueue:];
    }

    v20 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_258FE9000, v20, OS_LOG_TYPE_ERROR, "#LOI Bridge, Attempted bootstraping when region monitor was not available", buf, 2u);
    }
  }

  else
  {
    objc_initWeak(buf, self);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = [(CLMicroLocationLoiBridge *)self regionMonitor];
    v7 = [v6 monitoredIdentifiers];

    v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v8)
    {
      v9 = *v27;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v26 + 1) + 8 * i);
          v12 = [(CLMicroLocationLoiBridge *)self regionMonitor];
          v13 = [v12 monitoringRecordForIdentifier:v11];

          v14 = [v13 lastEvent];
          LOBYTE(v12) = v14 == 0;

          if ((v12 & 1) == 0)
          {
            v15 = [(CLMicroLocationLoiBridge *)self queue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __66__CLMicroLocationLoiBridge_requestBootstrapWithLastGeofenceStates__block_invoke;
            block[3] = &unk_2798D4E30;
            objc_copyWeak(&v25, buf);
            v24 = v13;
            dispatch_async(v15, block);

            objc_destroyWeak(&v25);
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v8);
    }

    v16 = [(CLMicroLocationLoiBridge *)self regionMonitor];
    v17 = [v16 monitoredIdentifiers];
    v18 = [v17 count] == 0;

    if (v18)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [CLMicroLocationLoiBridge initWithQueue:];
      }

      v19 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_DEFAULT, "#LOI Bridge, No Geofences to bootstrap", v22, 2u);
      }
    }

    objc_destroyWeak(buf);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __66__CLMicroLocationLoiBridge_requestBootstrapWithLastGeofenceStates__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [CLMicroLocationLoiBridge setupRegionMonitoring];
    }

    v3 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [*(a1 + 32) lastEvent];
      v5 = [v4 identifier];
      v6 = [v5 UTF8String];
      v7 = [*(a1 + 32) lastEvent];
      v10[0] = 68289539;
      v10[1] = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2081;
      v14 = v6;
      v15 = 1025;
      v16 = [v7 state];
      _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:LOI Bridge, generating bootstrap geofence update, Geofence Id:%{private, location:escape_only}s, state:%{private}d}", v10, 0x22u);
    }

    v8 = [*(a1 + 32) lastEvent];
    [WeakRetained generateGeofenceUpdateToClient:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (int64_t)generateLocationManagerNotAvailableError
{
  if (onceToken_MicroLocation_Default != -1)
  {
    [CLMicroLocationLoiBridge setupRegionMonitoring];
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_ERROR, "#LOI Bridge, Attempted LOI request when location manager was not available", v4, 2u);
  }

  return 3;
}

- (int64_t)generateRegionMonitorNotAvailableError
{
  if (onceToken_MicroLocation_Default != -1)
  {
    [CLMicroLocationLoiBridge setupRegionMonitoring];
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_ERROR, "#LOI Bridge, Attempted geofence request when region monitor was not available", v4, 2u);
  }

  return 4;
}

- (void)generateGeofenceUpdateToClient:(id)a3
{
  v4 = a3;
  v5 = [(CLMicroLocationLoiBridge *)self convertMonitoringEventToGeofenceState:v4];
  objc_initWeak(&location, self);
  v6 = [(CLMicroLocationLoiBridge *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__CLMicroLocationLoiBridge_generateGeofenceUpdateToClient___block_invoke;
  v8[3] = &unk_2798D5358;
  objc_copyWeak(v10, &location);
  v9 = v4;
  v10[1] = v5;
  v7 = v4;
  dispatch_async(v6, v8);

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

void __59__CLMicroLocationLoiBridge_generateGeofenceUpdateToClient___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained microLocationLoiDelegate];
    v4 = [*(a1 + 32) identifier];
    (*(*v3 + 64))(v3, v4, *(a1 + 48));

    WeakRetained = v5;
  }
}

- (unint64_t)convertMonitoringEventToGeofenceState:(id)a3
{
  v3 = [a3 state];
  if (v3 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (v3 == 2);
  }
}

- (void)regionMonitor:(id)a3 didGenerateEvent:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(CLMicroLocationLoiBridge *)self queue];
  dispatch_assert_queue_V2(v6);

  if (onceToken_MicroLocation_Default != -1)
  {
    [CLMicroLocationLoiBridge setupRegionMonitoring];
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v5 identifier];
    v10[0] = 68289539;
    v10[1] = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2081;
    v14 = [v8 UTF8String];
    v15 = 1025;
    v16 = [v5 state];
    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:LOI Bridge, got geofence update, Geofence Id:%{private, location:escape_only}s, state:%{private}d}", v10, 0x22u);
  }

  [(CLMicroLocationLoiBridge *)self generateGeofenceUpdateToClient:v5];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)startVisitMonitoring
{
  v3 = [(CLMicroLocationLoiBridge *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CLMicroLocationLoiBridge *)self clLocationManager];
  [v4 _startLeechingVisits];
}

- (void)setupFetchPlaceInferenceTimer
{
  objc_initWeak(&location, self);
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __57__CLMicroLocationLoiBridge_setupFetchPlaceInferenceTimer__block_invoke;
  v7 = &unk_2798D4348;
  objc_copyWeak(&v8, &location);
  v3 = [ULTimerFactory timerOnPrimaryQueueWithInterval:&unk_286A732B0 repeats:MEMORY[0x277CBEC28] block:&v4];
  [(CLMicroLocationLoiBridge *)self setFetchPlaceInferenceTimer:v3, v4, v5, v6, v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __57__CLMicroLocationLoiBridge_setupFetchPlaceInferenceTimer__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [CLMicroLocationLoiBridge setupRegionMonitoring];
    }

    v2 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v6 = 68289026;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:fetchPlaceInferenceAtCurrentLocation, timed out waiting for fetching place inference, this shouldn't happen}", &v6, 0x12u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [CLMicroLocationLoiBridge initWithQueue:];
    }

    v3 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      v6 = 68289026;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "fetchPlaceInferenceAtCurrentLocation, timed out waiting for fetching place inference, this shouldn't happen", "{msg%{public}.0s:fetchPlaceInferenceAtCurrentLocation, timed out waiting for fetching place inference, this shouldn't happen}", &v6, 0x12u);
    }

    [WeakRetained invalidateFetchPlaceInferenceTimer];
    v4 = [WeakRetained microLocationLoiDelegate];
    (*(*v4 + 8))(v4, 0, 1);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)invalidateFetchPlaceInferenceTimer
{
  v3 = [(CLMicroLocationLoiBridge *)self fetchPlaceInferenceTimer];
  [v3 invalidate];

  [(CLMicroLocationLoiBridge *)self setFetchPlaceInferenceTimer:0];
}

- (void)fetchPlaceInferenceAtCurrentLocationWithPolicy:(unint64_t)a3
{
  objc_initWeak(&location, self);
  v5 = [(CLMicroLocationLoiBridge *)self clLocationManager];

  if (!v5)
  {
    v6 = [(CLMicroLocationLoiBridge *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__CLMicroLocationLoiBridge_fetchPlaceInferenceAtCurrentLocationWithPolicy___block_invoke;
    block[3] = &unk_2798D4348;
    objc_copyWeak(&v11, &location);
    dispatch_async(v6, block);

    objc_destroyWeak(&v11);
  }

  [(CLMicroLocationLoiBridge *)self setupFetchPlaceInferenceTimer];
  v7 = [(CLMicroLocationLoiBridge *)self clLocationManager];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__CLMicroLocationLoiBridge_fetchPlaceInferenceAtCurrentLocationWithPolicy___block_invoke_2;
  v8[3] = &unk_2798D4370;
  objc_copyWeak(&v9, &location);
  [v7 _fetchPlaceInferencesWithFidelityPolicy:a3 handler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __75__CLMicroLocationLoiBridge_fetchPlaceInferenceAtCurrentLocationWithPolicy___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = [WeakRetained microLocationLoiDelegate];
    (*(*v1 + 8))(v1, 0, [WeakRetained generateLocationManagerNotAvailableError]);
  }
}

void __75__CLMicroLocationLoiBridge_fetchPlaceInferenceAtCurrentLocationWithPolicy___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v21 = a2;
  v22 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v8 = [WeakRetained queue];
    dispatch_assert_queue_V2(v8);

    [v6 invalidateFetchPlaceInferenceTimer];
    if (v22)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [CLMicroLocationLoiBridge setupRegionMonitoring];
      }

      v9 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289283;
        v29 = 0;
        v30 = 2082;
        v31 = "";
        v32 = 2113;
        v33 = v22;
        _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:fetchPlaceInferenceAtCurrentLocation, failed to request place inference, we will start leeching and wait for next location update, Error Reason:%{private, location:escape_only}@}", buf, 0x1Cu);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        [CLMicroLocationLoiBridge initWithQueue:];
      }

      log = logObject_MicroLocation_Default;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v22 domain];
        v11 = v10;
        v12 = [v10 UTF8String];
        v13 = [v22 code];
        *buf = 68289539;
        v29 = 0;
        v30 = 2082;
        v31 = "";
        v32 = 2081;
        v33 = v12;
        v34 = 1025;
        v35 = v13;
        _os_log_impl(&dword_258FE9000, log, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:fetchPlaceInferenceAtCurrentLocation, failed to request place inference with error, error_domain:%{private, location:escape_only}s, error_code:%{private}d}", buf, 0x22u);
      }

      v14 = 5;
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      log = v21;
      v14 = [log countByEnumeratingWithState:&v24 objects:v36 count:16];
      if (v14)
      {
        v15 = *v25;
        do
        {
          v16 = 0;
          do
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(log);
            }

            v17 = *(*(&v24 + 1) + 8 * v16);
            if (onceToken_MicroLocation_Default != -1)
            {
              [CLMicroLocationLoiBridge initWithQueue:];
            }

            v18 = logObject_MicroLocation_Default;
            if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289283;
              v29 = 0;
              v30 = 2082;
              v31 = "";
              v32 = 2117;
              v33 = v17;
              _os_log_impl(&dword_258FE9000, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:fetchPlaceInferenceAtCurrentLocation, received Place Inference, PI:%{sensitive, location:escape_only}@}", buf, 0x1Cu);
            }

            ++v16;
          }

          while (v14 != v16);
          v6 = v7;
          v14 = [log countByEnumeratingWithState:&v24 objects:v36 count:16];
        }

        while (v14);
      }
    }

    v19 = [v6 microLocationLoiDelegate];
    (*(*v19 + 8))(v19, v21, v14);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)fetchLocationOfInterestAtLocation:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(CLMicroLocationLoiBridge *)self routineManager];

  if (!v5)
  {
    v6 = [(CLMicroLocationLoiBridge *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__CLMicroLocationLoiBridge_fetchLocationOfInterestAtLocation___block_invoke;
    block[3] = &unk_2798D4E30;
    objc_copyWeak(&v14, &location);
    v13 = v4;
    dispatch_async(v6, block);

    objc_destroyWeak(&v14);
  }

  v7 = [(CLMicroLocationLoiBridge *)self routineManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__CLMicroLocationLoiBridge_fetchLocationOfInterestAtLocation___block_invoke_2;
  v9[3] = &unk_2798D53A8;
  v9[4] = self;
  objc_copyWeak(&v11, &location);
  v8 = v4;
  v10 = v8;
  [v7 fetchLocationOfInterestAtLocation:v8 withHandler:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __62__CLMicroLocationLoiBridge_fetchLocationOfInterestAtLocation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = [WeakRetained microLocationLoiDelegate];
    (*(*v2 + 16))(v2, 0, *(a1 + 32), 2);
  }
}

void __62__CLMicroLocationLoiBridge_fetchLocationOfInterestAtLocation___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [CLMicroLocationLoi alloc];
  v8 = [v5 identifier];
  v9 = -[CLMicroLocationLoi initWithIdentifier:andType:](v7, "initWithIdentifier:andType:", v8, [v5 type]);

  v10 = [a1[4] queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__CLMicroLocationLoiBridge_fetchLocationOfInterestAtLocation___block_invoke_3;
  v13[3] = &unk_2798D5380;
  objc_copyWeak(&v17, a1 + 6);
  v14 = v6;
  v15 = v9;
  v16 = a1[5];
  v11 = v9;
  v12 = v6;
  dispatch_async(v10, v13);

  objc_destroyWeak(&v17);
}

void __62__CLMicroLocationLoiBridge_fetchLocationOfInterestAtLocation___block_invoke_3(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [CLMicroLocationLoiBridge setupRegionMonitoring];
      }

      v3 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = [*(a1 + 32) domain];
        v5 = [v4 UTF8String];
        v6 = [*(a1 + 32) code];
        v10[0] = 68289539;
        v10[1] = 0;
        v11 = 2082;
        v12 = "";
        v13 = 2081;
        v14 = v5;
        v15 = 1025;
        v16 = v6;
        _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:fetchLocationOfInterestAtLocation, failed with error, error_domain:%{private, location:escape_only}s, error_code:%{private}d}", v10, 0x22u);
      }

      v7 = 5;
    }

    else
    {
      v7 = 0;
    }

    v8 = [WeakRetained microLocationLoiDelegate];
    (*(*v8 + 16))(v8, *(a1 + 40), *(a1 + 48), v7);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)fetchRelatedLoisForLoi:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(CLMicroLocationLoiBridge *)self routineManager];

  if (!v5)
  {
    v6 = [(CLMicroLocationLoiBridge *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__CLMicroLocationLoiBridge_fetchRelatedLoisForLoi___block_invoke;
    block[3] = &unk_2798D4348;
    objc_copyWeak(&v11, &location);
    dispatch_async(v6, block);

    objc_destroyWeak(&v11);
  }

  v7 = [(CLMicroLocationLoiBridge *)self routineManager];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__CLMicroLocationLoiBridge_fetchRelatedLoisForLoi___block_invoke_2;
  v8[3] = &unk_2798D4370;
  objc_copyWeak(&v9, &location);
  [v7 fetchDedupedLocationOfInterestIdentifiersWithIdentifier:v4 handler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __51__CLMicroLocationLoiBridge_fetchRelatedLoisForLoi___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = [WeakRetained microLocationLoiDelegate];
    (*(*v1 + 24))(v1, 0, 2);
  }
}

void __51__CLMicroLocationLoiBridge_fetchRelatedLoisForLoi___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__CLMicroLocationLoiBridge_fetchRelatedLoisForLoi___block_invoke_3;
    block[3] = &unk_2798D53D0;
    objc_copyWeak(&v13, (a1 + 32));
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);

    objc_destroyWeak(&v13);
  }
}

void __51__CLMicroLocationLoiBridge_fetchRelatedLoisForLoi___block_invoke_3(id *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = a1[4];
    if (v3)
    {
      v4 = [v3 componentsJoinedByString:{@", "}];
    }

    else
    {
      v4 = &stru_286A60C80;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [CLMicroLocationLoiBridge setupRegionMonitoring];
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [a1[4] count];
      v15 = 68289538;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2050;
      v20 = v6;
      v21 = 2082;
      v22 = [(__CFString *)v4 UTF8String];
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:LOI Bridge, received LOI Ids from CLRoutineMonitor, LOI ID Count:%{public}ld, LOI List:%{public, location:escape_only}s}", &v15, 0x26u);
    }

    if (a1[5])
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [CLMicroLocationLoiBridge initWithQueue:];
      }

      v7 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [a1[5] domain];
        v9 = v8;
        v10 = [v8 UTF8String];
        v11 = [a1[5] code];
        v15 = 68289539;
        v16 = 0;
        v17 = 2082;
        v18 = "";
        v19 = 2081;
        v20 = v10;
        v21 = 1025;
        LODWORD(v22) = v11;
        _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:fetchRelatedLoisForLoi, failed with error, error_domain:%{private, location:escape_only}s, error_code:%{private}d}", &v15, 0x22u);
      }

      v12 = 5;
    }

    else
    {
      v12 = 0;
    }

    v13 = [WeakRetained microLocationLoiDelegate];
    (*(*v13 + 24))(v13, a1[4], v12);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)retrieveAllActiveGeofences
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = [(CLMonitor *)self->_regionMonitor monitoredIdentifiers];
  v5 = v4;
  v6 = [v4 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v6)
  {
    v8 = *v29;
    *&v7 = 68289282;
    v27 = v7;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v28 + 1) + 8 * v9);
        v11 = [(CLMonitor *)self->_regionMonitor monitoringRecordForIdentifier:v10, v27];
        v12 = v11;
        if (v11)
        {
          v13 = [v11 condition];
          v14 = objc_alloc_init(CLMicroLocationGeofence);
          [(CLMicroLocationGeofence *)v14 setRegionId:v10];
          v15 = objc_alloc(MEMORY[0x277CE41F8]);
          [v13 center];
          v17 = v16;
          [v13 center];
          v18 = [v15 initWithLatitude:v17 longitude:?];
          [(CLMicroLocationGeofence *)v14 setRegionCenterLocation:v18];

          [v3 addObject:v14];
        }

        else
        {
          if (onceToken_MicroLocation_Default != -1)
          {
            [CLMicroLocationLoiBridge initWithQueue:];
          }

          v19 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = v10;
            v21 = [v10 UTF8String];
            *buf = 68289282;
            v33 = 2082;
            v34 = "";
            v35 = 2082;
            v36 = v21;
            _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#LoiBridge, was unable to retrieve monitor record for valid region identifier, identifier:%{public, location:escape_only}s}", buf, 0x1Cu);
          }

          if (onceToken_MicroLocation_Default != -1)
          {
            [CLMicroLocationLoiBridge initWithQueue:];
          }

          v13 = logObject_MicroLocation_Default;
          if (os_signpost_enabled(v13))
          {
            v22 = v10;
            v23 = [v10 UTF8String];
            *buf = v27;
            *&buf[4] = 0;
            v33 = 2082;
            v34 = "";
            v35 = 2082;
            v36 = v23;
            _os_signpost_emit_with_name_impl(&dword_258FE9000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#LoiBridge, was unable to retrieve monitor record for valid region identifier", "{msg%{public}.0s:#LoiBridge, was unable to retrieve monitor record for valid region identifier, identifier:%{public, location:escape_only}s}", buf, 0x1Cu);
          }
        }

        ++v9;
      }

      while (v6 != v9);
      v4 = v5;
      v6 = [v5 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v6);
  }

  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v3];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)getAllActiveGeofences
{
  v3 = [(CLMicroLocationLoiBridge *)self regionMonitor];

  if (v3)
  {
    v3 = [(CLMicroLocationLoiBridge *)self retrieveAllActiveGeofences];
    v4 = 0;
  }

  else
  {
    v4 = [(CLMicroLocationLoiBridge *)self generateRegionMonitorNotAvailableError];
  }

  objc_initWeak(&location, self);
  v5 = [(CLMicroLocationLoiBridge *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__CLMicroLocationLoiBridge_getAllActiveGeofences__block_invoke;
  v7[3] = &unk_2798D5358;
  objc_copyWeak(v9, &location);
  v8 = v3;
  v9[1] = v4;
  v6 = v3;
  dispatch_async(v5, v7);

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

void __49__CLMicroLocationLoiBridge_getAllActiveGeofences__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = [WeakRetained microLocationLoiDelegate];
    (*(*v2 + 48))(v2, *(a1 + 32), *(a1 + 48));
  }
}

- (void)removeGeofencesNearLocationWithLatitude:(double)a3 andLongitude:(double)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:a3 longitude:a4];
  if (self->_regionMonitor)
  {
    [(CLMicroLocationLoiBridge *)self retrieveAllActiveGeofences];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    obj = v31 = 0u;
    v6 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
    if (v6)
    {
      v7 = *v31;
      do
      {
        v8 = 0;
        do
        {
          if (*v31 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v30 + 1) + 8 * v8);
          v10 = objc_alloc(MEMORY[0x277CE41F8]);
          v11 = [v9 regionCenterLocation];
          [v11 coordinate];
          v13 = v12;
          v14 = [v9 regionCenterLocation];
          [v14 coordinate];
          v15 = [v10 initWithLatitude:v13 longitude:?];
          [v5 distanceFromLocation:v15];
          v17 = v16;

          v18 = ULSettings::get<ULSettings::CustomLoiGeofenceRadius>();
          if (v17 <= v18 + v18)
          {
            if (onceToken_MicroLocation_Default != -1)
            {
              [CLMicroLocationLoiBridge initWithQueue:];
            }

            v23 = logObject_MicroLocation_Default;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = [v9 regionId];
              v25 = v24;
              v26 = [v24 UTF8String];
              *buf = 68289539;
              v35 = 0;
              v36 = 2082;
              v37 = "";
              v38 = 2081;
              v39 = v26;
              v40 = 2049;
              v41 = v17;
              _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LOI Bridge, removing geofence because it overlap the geofence at the requested location, Geofence ID:%{private, location:escape_only}s, Distance Between Geofences:%{private}7f}", buf, 0x26u);
            }

            regionMonitor = self->_regionMonitor;
            v19 = [v9 regionId];
            [(CLMonitor *)regionMonitor removeConditionFromMonitoringWithIdentifier:v19];
          }

          else
          {
            if (onceToken_MicroLocation_Default != -1)
            {
              [CLMicroLocationLoiBridge initWithQueue:];
            }

            v19 = logObject_MicroLocation_Default;
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v20 = [v9 regionId];
              v21 = v20;
              v22 = [v20 UTF8String];
              *buf = 68289539;
              v35 = 0;
              v36 = 2082;
              v37 = "";
              v38 = 2081;
              v39 = v22;
              v40 = 2049;
              v41 = v17;
              _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#LOI Bridge, geofence does not overlap the geofence at the requested location, Geofence ID:%{private, location:escape_only}s, Distance Between Geofences:%{private}7f}", buf, 0x26u);
            }
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
      }

      while (v6);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)getCurrentLocation
{
  v3 = [(CLMicroLocationLoiBridge *)self clLocationManager];

  if (!v3)
  {
    objc_initWeak(location, self);
    v4 = [(CLMicroLocationLoiBridge *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__CLMicroLocationLoiBridge_getCurrentLocation__block_invoke;
    block[3] = &unk_2798D4348;
    objc_copyWeak(&v14, location);
    dispatch_async(v4, block);

    objc_destroyWeak(&v14);
    objc_destroyWeak(location);
  }

  v5 = [(CLMicroLocationLoiBridge *)self clLocationManager];
  [v5 desiredAccuracy];
  v7 = v6;
  v8 = *MEMORY[0x277CE4248];

  if (v7 == v8)
  {
    [(CLMicroLocationLoiBridge *)self stopLeechingLocationUpdates];
  }

  v9 = *MEMORY[0x277CE4250];
  v10 = [(CLMicroLocationLoiBridge *)self clLocationManager];
  [v10 setDesiredAccuracy:v9];

  if (onceToken_MicroLocation_Default != -1)
  {
    [CLMicroLocationLoiBridge initWithQueue:];
  }

  v11 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(location[0]) = 0;
    _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "#LOI Bridge, requesting Location", location, 2u);
  }

  v12 = [(CLMicroLocationLoiBridge *)self clLocationManager];
  [v12 requestLocation];
}

void __46__CLMicroLocationLoiBridge_getCurrentLocation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = [WeakRetained microLocationLoiDelegate];
    (*(*v1 + 32))(v1, 0, [WeakRetained generateLocationManagerNotAvailableError]);
  }
}

- (void)setGeofenceAtLocation:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = [v5 UUIDString];
  if (onceToken_MicroLocation_Default != -1)
  {
    [CLMicroLocationLoiBridge setupRegionMonitoring];
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    [v4 coordinate];
    v9 = v8;
    [v4 coordinate];
    buf = 68289539;
    v32 = 2082;
    v33 = "";
    v34 = 2053;
    v35 = v9;
    v36 = 2053;
    v37 = v10;
    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:LOI Bridge, requested geofence at location, latitude:%{sensitive}7f, longitude:%{sensitive}7f}", &buf, 0x26u);
  }

  v11 = [(CLMicroLocationLoiBridge *)self regionMonitor];
  v12 = v11 == 0;

  if (v12)
  {
    v24 = [(CLMicroLocationLoiBridge *)self generateRegionMonitorNotAvailableError];
    v21 = 0;
    v23 = 0;
  }

  else
  {
    v13 = ULSettings::get<ULSettings::CustomLoiGeofenceRadius>();
    if (onceToken_MicroLocation_Default != -1)
    {
      [CLMicroLocationLoiBridge initWithQueue:];
    }

    v14 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289283;
      v32 = 2082;
      v33 = "";
      v34 = 2049;
      v35 = v13;
      _os_log_impl(&dword_258FE9000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LOI Bridge, setting geofence for custom LOI, Custom LOI Geofence radius:%{private}7f}", &buf, 0x1Cu);
    }

    v15 = objc_alloc(MEMORY[0x277CBFBC0]);
    [v4 coordinate];
    v16 = [v15 initWithCenter:? radius:?];
    v17 = [(CLMicroLocationLoiBridge *)self regionMonitor];
    [v17 addConditionForMonitoring:v16 identifier:v6];

    v18 = v6;
    v19 = [v6 UTF8String];
    v20 = strlen(v19);
    v21 = boost::uuids::string_generator::operator()<char const*>(&buf, v19, &v19[v20]);
    v23 = v22;

    v24 = 0;
  }

  objc_initWeak(&buf, self);
  v25 = [(CLMicroLocationLoiBridge *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__CLMicroLocationLoiBridge_setGeofenceAtLocation___block_invoke;
  block[3] = &unk_2798D53F8;
  objc_copyWeak(v30, &buf);
  v30[2] = v21;
  v30[3] = v23;
  v29 = v4;
  v30[1] = v24;
  v26 = v4;
  dispatch_async(v25, block);

  objc_destroyWeak(v30);
  objc_destroyWeak(&buf);

  v27 = *MEMORY[0x277D85DE8];
}

void __50__CLMicroLocationLoiBridge_setGeofenceAtLocation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = [WeakRetained microLocationLoiDelegate];
    (*(*v2 + 56))(v2, *(a1 + 32), *(a1 + 56), *(a1 + 64), *(a1 + 48));
  }
}

- (void)removeGeofenceWithRegionId:(id)a3
{
  v4 = a3;
  v5 = [(CLMicroLocationLoiBridge *)self regionMonitor];

  if (v5)
  {
    v6 = [(CLMicroLocationLoiBridge *)self regionMonitor];
    [v6 removeConditionFromMonitoringWithIdentifier:v4];

    v7 = 0;
  }

  else
  {
    v7 = [(CLMicroLocationLoiBridge *)self generateRegionMonitorNotAvailableError];
  }

  objc_initWeak(&location, self);
  v8 = [(CLMicroLocationLoiBridge *)self queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__CLMicroLocationLoiBridge_removeGeofenceWithRegionId___block_invoke;
  v10[3] = &unk_2798D5358;
  objc_copyWeak(v12, &location);
  v11 = v4;
  v12[1] = v7;
  v9 = v4;
  dispatch_async(v8, v10);

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

void __55__CLMicroLocationLoiBridge_removeGeofenceWithRegionId___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = [WeakRetained microLocationLoiDelegate];
    (*(*v2 + 72))(v2, *(a1 + 32), *(a1 + 48));
  }
}

- (void)startLeechingLocationUpdates
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(CLMicroLocationLoiBridge *)self clLocationManager];
  [v3 desiredAccuracy];
  v5 = v4;
  v6 = *MEMORY[0x277CE4248];

  if (v5 != v6)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [CLMicroLocationLoiBridge setupRegionMonitoring];
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 68289026;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LOI Bridge, Starting to leech location updates}", v11, 0x12u);
    }

    v8 = [(CLMicroLocationLoiBridge *)self clLocationManager];
    [v8 setDesiredAccuracy:v6];

    v9 = [(CLMicroLocationLoiBridge *)self clLocationManager];
    [v9 startUpdatingLocation];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stopLeechingLocationUpdates
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(CLMicroLocationLoiBridge *)self clLocationManager];
  [v3 desiredAccuracy];
  v5 = v4;
  v6 = *MEMORY[0x277CE4248];

  if (v5 == v6)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [CLMicroLocationLoiBridge setupRegionMonitoring];
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 68289026;
      v10[1] = 0;
      v11 = 2082;
      v12 = "";
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LOI Bridge, Stopping leech location updates}", v10, 0x12u);
    }

    v8 = [(CLMicroLocationLoiBridge *)self clLocationManager];
    [v8 stopUpdatingLocation];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)a3 didVisit:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(CLMicroLocationLoiBridge *)self queue];
  dispatch_assert_queue_V2(v6);

  if (v5)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [CLMicroLocationLoiBridge setupRegionMonitoring];
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 hasDepartureDate];
      v9 = "Entry";
      buf = 68289282;
      v17 = 2082;
      v18 = "";
      if (v8)
      {
        v9 = "Exit";
      }

      v19 = 2082;
      v20 = v9;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LOI Bridge, Got Visit Notification, Visit::%{public, location:escape_only}s}", &buf, 0x1Cu);
    }

    objc_initWeak(&buf, self);
    v10 = [(CLMicroLocationLoiBridge *)self queue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __53__CLMicroLocationLoiBridge_locationManager_didVisit___block_invoke;
    v13[3] = &unk_2798D4E30;
    objc_copyWeak(&v15, &buf);
    v14 = v5;
    dispatch_async(v10, v13);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&buf);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [CLMicroLocationLoiBridge setupRegionMonitoring];
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "LOI Bridge, Received nil visit notification", &buf, 2u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __53__CLMicroLocationLoiBridge_locationManager_didVisit___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = [WeakRetained microLocationLoiDelegate];
    (**v2)(v2, *(a1 + 32));
  }
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(CLMicroLocationLoiBridge *)self queue];
  dispatch_assert_queue_V2(v6);

  if (onceToken_MicroLocation_Default != -1)
  {
    [CLMicroLocationLoiBridge setupRegionMonitoring];
  }

  v7 = logObject_MicroLocation_Default;
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  v9 = MEMORY[0x277CE4250];
  if (v8)
  {
    v10 = [(CLMicroLocationLoiBridge *)self clLocationManager];
    [v10 desiredAccuracy];
    if (v11 == *v9)
    {
      v12 = "YES";
    }

    else
    {
      v12 = "NO";
    }

    v13 = [(CLMicroLocationLoiBridge *)self clLocationManager];
    [v13 desiredAccuracy];
    if (v14 == *MEMORY[0x277CE4248])
    {
      v15 = "YES";
    }

    else
    {
      v15 = "NO";
    }

    buf = 68289538;
    v29 = 2082;
    v30 = "";
    v31 = 2082;
    v32 = v12;
    v33 = 2082;
    v34 = v15;
    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LOI Bridge, Got Location Update, Waiting on location: :%{public, location:escape_only}s, Leeching location: :%{public, location:escape_only}s}", &buf, 0x26u);
  }

  if (v5 && [v5 count])
  {
    [v5 objectAtIndexedSubscript:0];
    v17 = v16 = 0;
  }

  else
  {
    v17 = 0;
    v16 = 6;
  }

  v18 = [(CLMicroLocationLoiBridge *)self clLocationManager];
  [v18 desiredAccuracy];
  if (v19 != *v9)
  {
    goto LABEL_18;
  }

  [v17 horizontalAccuracy];
  v21 = v20 > ULSettings::get<ULSettings::CustomLoiGeofenceRadius>();

  if (v21)
  {
    v16 = 6;
    v18 = v17;
    v17 = 0;
LABEL_18:
  }

  objc_initWeak(&buf, self);
  v22 = [(CLMicroLocationLoiBridge *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__CLMicroLocationLoiBridge_locationManager_didUpdateLocations___block_invoke;
  block[3] = &unk_2798D5358;
  objc_copyWeak(v27, &buf);
  v26 = v17;
  v27[1] = v16;
  v23 = v17;
  dispatch_async(v22, block);

  objc_destroyWeak(v27);
  objc_destroyWeak(&buf);

  v24 = *MEMORY[0x277D85DE8];
}

void __63__CLMicroLocationLoiBridge_locationManager_didUpdateLocations___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = [WeakRetained microLocationLoiDelegate];
    (*(*v2 + 32))(v2, *(a1 + 32), *(a1 + 48));
  }
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (onceToken_MicroLocation_Default != -1)
  {
    [CLMicroLocationLoiBridge setupRegionMonitoring];
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 68289282;
    v9[1] = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LOI Bridge, didFailWithError, error::%{public, location:escape_only}@}", v9, 0x1Cu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end