@interface MNEVChargingStateMonitor
- (MNEVChargingStateMonitor)initWithTargetBatteryCharge:(id)charge;
- (MNEVChargingStateMonitorDelegate)delegate;
- (void)_notifyShouldShowChargingInfo;
- (void)_startTimer;
- (void)_updateForVehicle:(id)vehicle forceDelegateCallback:(BOOL)callback;
- (void)dealloc;
- (void)updateForLocation:(id)location;
@end

@implementation MNEVChargingStateMonitor

- (MNEVChargingStateMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateForVehicle:(id)vehicle forceDelegateCallback:(BOOL)callback
{
  vehicleCopy = vehicle;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__MNEVChargingStateMonitor__updateForVehicle_forceDelegateCallback___block_invoke;
  v8[3] = &unk_1E842F9D8;
  v9 = vehicleCopy;
  selfCopy = self;
  callbackCopy = callback;
  v7 = vehicleCopy;
  MNRunAsyncOnNavigationQueue(v8);
}

void __68__MNEVChargingStateMonitor__updateForVehicle_forceDelegateCallback___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) currentVehicleState];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) isPureElectricVehicle];

    if (v4)
    {
      v5 = [*(a1 + 32) currentVehicleState];
      v6 = [v5 isCharging];

      if (*(*(a1 + 40) + 16) != v6)
      {
        v7 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 67109120;
          v22 = v6;
          _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "VirtualGarage did change charging state: %d", &v21, 8u);
        }

        *(*(a1 + 40) + 16) = v6;
        v8 = [*(a1 + 40) delegate];
        [v8 evChargingStateMonitor:*(a1 + 40) didChangeChargingState:v6];
      }

      v9 = [*(a1 + 32) currentVehicleState];
      v10 = [v9 currentBatteryCapacity];
      v11 = [v10 isGreaterThanOrEqualToMeasurement:*(*(a1 + 40) + 40)];

      if (v11)
      {
        v12 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [*(a1 + 32) currentVehicleState];
          v14 = [v13 currentBatteryCapacity];
          v15 = [MEMORY[0x1E696B030] kilowattHours];
          v16 = [v14 measurementByConvertingToUnit:v15];
          [v16 doubleValue];
          v21 = 67109120;
          v22 = (v17 * 1000.0);
          _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_DEFAULT, "Target battery charge reached. Current battery: %d Wh", &v21, 8u);
        }

        v18 = [*(a1 + 40) delegate];
        [v18 evChargingStateMonitor:*(a1 + 40) didReachTargetBatteryCharge:*(*(a1 + 40) + 40)];
      }

      if (v6 && ((*(a1 + 48) & 1) != 0 || (*(*(a1 + 40) + 17) & 1) == 0))
      {
        v19 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v21) = 0;
          _os_log_impl(&dword_1D311E000, v19, OS_LOG_TYPE_DEFAULT, "Notify should show charging info because charging state set to true", &v21, 2u);
        }

        [*(a1 + 40) _notifyShouldShowChargingInfo];
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_notifyShouldShowChargingInfo
{
  if (!self->_shouldShowChargingInfo)
  {
    self->_shouldShowChargingInfo = 1;
    [(MNDispatchTimer *)self->_timer cancel];
    delegate = [(MNEVChargingStateMonitor *)self delegate];
    [delegate evChargingStateMonitorShouldShowChargingInfo:self];
  }
}

- (void)_startTimer
{
  if (!self->_timer)
  {
    v3 = [MEMORY[0x1E695DF00] now];
    arrivalDate = self->_arrivalDate;
    self->_arrivalDate = v3;

    GEOConfigGetDouble();
    v6 = v5;
    objc_initWeak(&location, self);
    v7 = [MNDispatchTimer alloc];
    v8 = MNNavigationQueue();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __39__MNEVChargingStateMonitor__startTimer__block_invoke;
    v11[3] = &unk_1E8430F10;
    v12[1] = v6;
    objc_copyWeak(v12, &location);
    v9 = [(MNDispatchTimer *)v7 initWithTime:v8 queue:v11 handler:*&v6];
    timer = self->_timer;
    self->_timer = v9;

    [(MNDispatchTimer *)self->_timer activate];
    objc_destroyWeak(v12);
    objc_destroyWeak(&location);
  }
}

void __39__MNEVChargingStateMonitor__startTimer__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_DEFAULT, "Notifying should show charging info because max timer fired after %g seconds.", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyShouldShowChargingInfo];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)updateForLocation:(id)location
{
  locationCopy = location;
  if (!self->_shouldShowChargingInfo)
  {
    v5 = [MEMORY[0x1E695DF00] now];
    [v5 timeIntervalSinceDate:self->_arrivalDate];
    v7 = v6;
    GEOConfigGetDouble();
    v9 = v8;

    if (v7 > v9)
    {
      [locationCopy speed];
      v11 = v10;
      GEOConfigGetDouble();
      if (v11 <= v12)
      {
        v13 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_DEFAULT, "Notifying should show charging info because user stopped near charging station waypoint.", v14, 2u);
        }

        [(MNEVChargingStateMonitor *)self _notifyShouldShowChargingInfo];
      }
    }
  }
}

- (void)dealloc
{
  v3 = +[MNVirtualGarageManager sharedManager];
  [v3 unregisterObserver:self];

  [(MNDispatchTimer *)self->_timer cancel];
  v4.receiver = self;
  v4.super_class = MNEVChargingStateMonitor;
  [(MNEVChargingStateMonitor *)&v4 dealloc];
}

- (MNEVChargingStateMonitor)initWithTargetBatteryCharge:(id)charge
{
  v22 = *MEMORY[0x1E69E9840];
  chargeCopy = charge;
  v19.receiver = self;
  v19.super_class = MNEVChargingStateMonitor;
  v6 = [(MNEVChargingStateMonitor *)&v19 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v6->_targetBatteryCharge, charge);
  v7->_shouldShowChargingInfo = 0;
  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    kilowattHours = [MEMORY[0x1E696B030] kilowattHours];
    v10 = [chargeCopy measurementByConvertingToUnit:kilowattHours];
    [v10 doubleValue];
    *buf = 67109120;
    v21 = (v11 * 1000.0);
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "Monitoring battery charge updates. Target battery charge: %d Wh", buf, 8u);
  }

  v12 = +[MNVirtualGarageManager sharedManager];
  [v12 registerObserver:v7];
  lastVehicle = [v12 lastVehicle];

  if (lastVehicle)
  {
    lastVehicle2 = [v12 lastVehicle];
    [(MNEVChargingStateMonitor *)v7 _updateForVehicle:lastVehicle2 forceDelegateCallback:1];

LABEL_6:
    v15 = v7;
    goto LABEL_10;
  }

  v16 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_ERROR, "Failed to get selected vehicle.", buf, 2u);
  }

  v15 = 0;
LABEL_10:

  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

@end