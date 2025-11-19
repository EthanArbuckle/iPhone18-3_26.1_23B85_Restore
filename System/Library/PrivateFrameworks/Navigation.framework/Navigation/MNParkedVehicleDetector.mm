@interface MNParkedVehicleDetector
- (MNParkedVehicleDetectorDelegate)delegate;
- (void)_checkParkingConditions;
- (void)_expireVehicleDisconnectSignal;
- (void)_locationStoppedTimerFired;
- (void)_updateForParkedCar;
- (void)_updateForResumeDriving;
- (void)_updateVehicleMonitorShouldStart:(BOOL)a3;
- (void)dealloc;
- (void)startMonitoring;
- (void)stopMonitoring;
- (void)updateForLocation:(id)a3;
- (void)valueChangedForGEOConfigKey:(id)a3;
- (void)vehicleMonitorDidConnectToVehicle:(id)a3;
- (void)vehicleMonitorDidDisconnectFromVehicle:(id)a3;
@end

@implementation MNParkedVehicleDetector

- (MNParkedVehicleDetectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)vehicleMonitorDidDisconnectFromVehicle:(id)a3
{
  if (GEOConfigGetBOOL())
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __66__MNParkedVehicleDetector_vehicleMonitorDidDisconnectFromVehicle___block_invoke;
    v4[3] = &unk_1E8430ED8;
    v4[4] = self;
    MNRunAsyncOnNavigationQueue(v4);
  }
}

void __66__MNParkedVehicleDetector_vehicleMonitorDidDisconnectFromVehicle___block_invoke(uint64_t a1)
{
  v2 = MNGetMNParkedVehicleDetectorLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_DEFAULT, "Vehicle disconnect received from MNVehicleMonitor.", buf, 2u);
  }

  *(*(a1 + 32) + 72) = 1;
  [*(a1 + 32) _checkParkingConditions];
  GEOConfigGetDouble();
  v4 = v3;
  objc_initWeak(buf, *(a1 + 32));
  v5 = [MNDispatchTimer alloc];
  v6 = MNNavigationQueue();
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __66__MNParkedVehicleDetector_vehicleMonitorDidDisconnectFromVehicle___block_invoke_22;
  v13 = &unk_1E8430F10;
  objc_copyWeak(v14, buf);
  v14[1] = v4;
  v7 = [(MNDispatchTimer *)v5 initWithTime:v6 queue:&v10 handler:*&v4];
  v8 = *(a1 + 32);
  v9 = *(v8 + 64);
  *(v8 + 64) = v7;

  [*(*(a1 + 32) + 64) activate];
  objc_destroyWeak(v14);
  objc_destroyWeak(buf);
}

void __66__MNParkedVehicleDetector_vehicleMonitorDidDisconnectFromVehicle___block_invoke_22(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 72) == 1)
  {
    v4 = MNGetMNParkedVehicleDetectorLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v7 = 134217984;
      v8 = v5;
      _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_DEFAULT, "Expiring _vehicleDisconnectedCondition because %g seconds has elapsed since the vehicle disconnect.", &v7, 0xCu);
    }

    [v3 _expireVehicleDisconnectSignal];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)vehicleMonitorDidConnectToVehicle:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__MNParkedVehicleDetector_vehicleMonitorDidConnectToVehicle___block_invoke;
  v3[3] = &unk_1E8430ED8;
  v3[4] = self;
  MNRunAsyncOnNavigationQueue(v3);
}

- (void)valueChangedForGEOConfigKey:(id)a3
{
  if (a3.var0 == 92 && a3.var1 == &NavigationConfig_Parking_EasyParkingDetection_Metadata)
  {
    v5 = self->_isMonitoring & GEOConfigGetBOOL() & 1;

    [(MNParkedVehicleDetector *)self _updateVehicleMonitorShouldStart:v5];
  }
}

- (void)_expireVehicleDisconnectSignal
{
  self->_vehicleDisconnectedCondition = 0;
  vehicleDisconnectExpirationTimer = self->_vehicleDisconnectExpirationTimer;
  self->_vehicleDisconnectExpirationTimer = 0;
}

- (void)_checkParkingConditions
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_isMonitoring)
  {
    v3 = MNGetMNParkedVehicleDetectorLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      vehicleDisconnectedCondition = self->_vehicleDisconnectedCondition;
      locationStoppedCondition = self->_locationStoppedCondition;
      v8[0] = 67109376;
      v8[1] = vehicleDisconnectedCondition;
      v9 = 1024;
      v10 = locationStoppedCondition;
      _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_INFO, "vehicleDisconnected: %d, locationStopped: %d", v8, 0xEu);
    }

    if (self->_vehicleDisconnectedCondition && self->_locationStoppedCondition)
    {
      v6 = MNGetMNParkedVehicleDetectorLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8[0]) = 0;
        _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "Triggering parked car event.", v8, 2u);
      }

      [(MNParkedVehicleDetector *)self _updateForParkedCar];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_updateVehicleMonitorShouldStart:(BOOL)a3
{
  v3 = a3;
  BOOL = GEOConfigGetBOOL();
  if (v3 && BOOL)
  {
    v6 = objc_alloc_init(MNVehicleMonitor);
    vehicleMonitor = self->_vehicleMonitor;
    self->_vehicleMonitor = v6;

    [(MNVehicleMonitor *)self->_vehicleMonitor setDelegate:self];
    [(MNVehicleMonitor *)self->_vehicleMonitor startMonitoring];
    v8 = MNGetMNParkedVehicleDetectorLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v9 = "Started monitoring vehicle events from MNVehicleMonitor";
      v10 = &v13;
LABEL_7:
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    }
  }

  else
  {
    [(MNVehicleMonitor *)self->_vehicleMonitor setDelegate:0];
    [(MNVehicleMonitor *)self->_vehicleMonitor stopMonitoring];
    v11 = self->_vehicleMonitor;
    self->_vehicleMonitor = 0;

    v8 = MNGetMNParkedVehicleDetectorLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v9 = "Stopped monitoring vehicle events from MNVehicleMonitor";
      v10 = &v12;
      goto LABEL_7;
    }
  }
}

- (void)_updateForResumeDriving
{
  if (self->_state)
  {
    self->_state = 0;
    self->_vehicleDisconnectedCondition = 0;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained parkedVehicleDetectorDidDetectResumeDriving:self];
  }
}

- (void)_updateForParkedCar
{
  if (self->_state != 1)
  {
    self->_state = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained parkedVehicleDetectorDidDetectParkedVehicle:self];
  }
}

- (void)_locationStoppedTimerFired
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __53__MNParkedVehicleDetector__locationStoppedTimerFired__block_invoke;
  v2[3] = &unk_1E8430ED8;
  v2[4] = self;
  MNRunAsyncOnNavigationQueue(v2);
}

uint64_t __53__MNParkedVehicleDetector__locationStoppedTimerFired__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = MNGetMNParkedVehicleDetectorLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    GEOConfigGetDouble();
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_INFO, "Detected stopped location for consecutive %g seconds.", &v6, 0xCu);
  }

  *(*(a1 + 32) + 56) = 1;
  result = [*(a1 + 32) _checkParkingConditions];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)updateForLocation:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 speed];
  v6 = v5;
  GEOConfigGetDouble();
  if (v6 >= v7)
  {
    self->_locationStoppedCondition = 0;
    if (self->_locationStoppedTimer)
    {
      v15 = MNGetMNParkedVehicleDetectorLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1D311E000, v15, OS_LOG_TYPE_DEBUG, "Resetting stopped location timer.", buf, 2u);
      }

      locationStoppedTimer = self->_locationStoppedTimer;
    }

    else
    {
      locationStoppedTimer = 0;
    }

    [(MNDispatchTimer *)locationStoppedTimer cancel];
    v17 = self->_locationStoppedTimer;
    self->_locationStoppedTimer = 0;
  }

  else if (!self->_locationStoppedTimer)
  {
    v8 = MNGetMNParkedVehicleDetectorLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEBUG, "Starting stopped location timer.", buf, 2u);
    }

    GEOConfigGetDouble();
    v10 = v9;
    objc_initWeak(buf, self);
    v11 = [MNDispatchTimer alloc];
    v12 = MNNavigationQueue();
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __45__MNParkedVehicleDetector_updateForLocation___block_invoke;
    v26[3] = &unk_1E8430EA0;
    objc_copyWeak(&v27, buf);
    v13 = [(MNDispatchTimer *)v11 initWithTime:v12 queue:v26 handler:v10];
    v14 = self->_locationStoppedTimer;
    self->_locationStoppedTimer = v13;

    [(MNDispatchTimer *)self->_locationStoppedTimer activate];
    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }

  GEOConfigGetDouble();
  v19 = v18;
  [v4 speed];
  if (v20 >= v19)
  {
    if (self->_state == 1)
    {
      v21 = MNGetMNParkedVehicleDetectorLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        [v4 speed];
        *buf = 134218240;
        v29 = v22;
        v30 = 2048;
        v31 = v19;
        _os_log_impl(&dword_1D311E000, v21, OS_LOG_TYPE_DEFAULT, "Location exceeds speed threshold while in parked state: %0.2f >= %0.2f", buf, 0x16u);
      }

      [(MNParkedVehicleDetector *)self _updateForResumeDriving];
    }

    else if (self->_vehicleDisconnectedCondition)
    {
      v23 = MNGetMNParkedVehicleDetectorLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        [v4 speed];
        *buf = 134218240;
        v29 = v24;
        v30 = 2048;
        v31 = v19;
        _os_log_impl(&dword_1D311E000, v23, OS_LOG_TYPE_DEFAULT, "Vehicle disconnect signal was detected but speed is too fast (%0.2f >= %0.2f) so ignoring signal.", buf, 0x16u);
      }

      [(MNParkedVehicleDetector *)self _expireVehicleDisconnectSignal];
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __45__MNParkedVehicleDetector_updateForLocation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _locationStoppedTimerFired];
}

- (void)stopMonitoring
{
  if (self->_isMonitoring)
  {
    v10 = v2;
    v11 = v3;
    [(MNDispatchTimer *)self->_locationStoppedTimer cancel];
    locationStoppedTimer = self->_locationStoppedTimer;
    self->_locationStoppedTimer = 0;

    [(MNDispatchTimer *)self->_vehicleDisconnectExpirationTimer cancel];
    vehicleDisconnectExpirationTimer = self->_vehicleDisconnectExpirationTimer;
    self->_vehicleDisconnectExpirationTimer = 0;

    notify_cancel(self->_simulateParkedVehicleEventToken);
    self->_simulateParkedVehicleEventToken = 0;
    GEOConfigRemoveDelegateListenerForAllKeys();
    [(MNParkedVehicleDetector *)self _updateVehicleMonitorShouldStart:0];
    v7 = [getRTRoutineManagerClass() defaultManager];
    [v7 stopMonitoringVehicleEvents];

    v8 = MNGetMNParkedVehicleDetectorLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "Stopped monitoring vehicle events from RTRoutineManager", v9, 2u);
    }

    self->_isMonitoring = 0;
  }
}

- (void)startMonitoring
{
  if (!self->_isMonitoring)
  {
    self->_isMonitoring = 1;
    self->_state = 0;
    objc_initWeak(&location, self);
    v3 = [getRTRoutineManagerClass() defaultManager];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __42__MNParkedVehicleDetector_startMonitoring__block_invoke;
    v10[3] = &unk_1E8430E20;
    objc_copyWeak(&v11, &location);
    [v3 startMonitoringVehicleEventsWithHandler:v10];

    v4 = MNGetMNParkedVehicleDetectorLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_DEFAULT, "Started monitoring vehicle events from RTRoutineManager", buf, 2u);
    }

    v5 = MNNavigationQueue();
    _GEOConfigAddDelegateListenerForKey();

    [(MNParkedVehicleDetector *)self _updateVehicleMonitorShouldStart:1];
    v6 = MNNavigationQueue();
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __42__MNParkedVehicleDetector_startMonitoring__block_invoke_19;
    handler[3] = &unk_1E8430E58;
    objc_copyWeak(&v8, &location);
    notify_register_dispatch("com.apple.navd.SimulateParkedVehicleEvent", &self->_simulateParkedVehicleEventToken, v6, handler);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __42__MNParkedVehicleDetector_startMonitoring__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__MNParkedVehicleDetector_startMonitoring__block_invoke_2;
  v9[3] = &unk_1E8430DF8;
  v7 = v6;
  v10 = v7;
  v8 = v5;
  v11 = v8;
  objc_copyWeak(&v12, (a1 + 32));
  MNRunAsyncOnNavigationQueue(v9);
  objc_destroyWeak(&v12);
}

void __42__MNParkedVehicleDetector_startMonitoring__block_invoke_19(uint64_t a1)
{
  v2 = MNGetMNParkedVehicleDetectorLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_DEFAULT, "Simulating parked vehicle event.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateForParkedCar];
}

void __42__MNParkedVehicleDetector_startMonitoring__block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = MNGetMNParkedVehicleDetectorLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v14 = 138412290;
      *v15 = v3;
      _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_ERROR, "Error monitoring vehicle events: %@", &v14, 0xCu);
    }

LABEL_8:

    goto LABEL_9;
  }

  if ([*(a1 + 40) count])
  {
    v2 = [*(a1 + 40) firstObject];
    v4 = MNGetMNParkedVehicleDetectorLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 40) count];
      v6 = [v2 identifier];
      v7 = [v2 location];
      [v7 latitude];
      v9 = v8;
      v10 = [v2 location];
      [v10 longitude];
      v14 = 67109890;
      *v15 = v5;
      *&v15[4] = 2112;
      *&v15[6] = v6;
      v16 = 2048;
      v17 = v9;
      v18 = 2048;
      v19 = v11;
      _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_DEFAULT, "Vehicle event (%d) received from RTRoutineManager: %@, %f, %f", &v14, 0x26u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _updateForParkedCar];

    goto LABEL_8;
  }

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(MNParkedVehicleDetector *)self stopMonitoring];
  v3.receiver = self;
  v3.super_class = MNParkedVehicleDetector;
  [(MNParkedVehicleDetector *)&v3 dealloc];
}

@end