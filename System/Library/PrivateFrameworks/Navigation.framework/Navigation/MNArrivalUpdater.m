@interface MNArrivalUpdater
- (BOOL)_checkForParkingDetectionRegion;
- (GEOComposedRoute)route;
- (GEOComposedRouteLeg)targetLeg;
- (MNArrivalUpdater)init;
- (id)captureStatePlistWithHints:(os_state_hints_s *)a3;
- (void)_updateForParkingDetectionRegion;
- (void)_updateTimeoutRegions;
- (void)arrivalRegionTimerDidFire:(id)a3;
- (void)changeState:(id)a3;
- (void)dealloc;
- (void)evChargingStateMonitorShouldShowChargingInfo:(id)a3;
- (void)forceDepartureForCurrentLeg:(unint64_t)a3;
- (void)parkedVehicleDetectorDidDetectParkedVehicle:(id)a3;
- (void)parkedVehicleDetectorDidDetectResumeDriving:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setNavigationSessionState:(id)a3;
- (void)start;
- (void)startMonitoringForEV;
- (void)stop;
- (void)stopMonitoringForEV;
- (void)updateForLocation:(id)a3;
@end

@implementation MNArrivalUpdater

- (GEOComposedRoute)route
{
  v2 = [(_MNArrivalUpdaterDetails *)self->_details navigationSessionState];
  v3 = [v2 currentRouteInfo];
  v4 = [v3 route];

  return v4;
}

- (void)_updateForParkingDetectionRegion
{
  v3 = [(MNArrivalUpdater *)self _checkForParkingDetectionRegion];
  if (v3 != [(_MNArrivalUpdaterDetails *)self->_details isInParkingDetectionRegion])
  {
    [(_MNArrivalUpdaterDetails *)self->_details setIsInParkingDetectionRegion:v3];
    v4 = GEOFindOrCreateLog();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        *buf = 0;
        _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_DEFAULT, "Entered parking detection region.", buf, 2u);
      }

      [(GEOObserverHashTable *)self->_safeDelegate arrivalUpdaterDidEnterParkingDetectionRegion:self];
    }

    else
    {
      if (v5)
      {
        *v6 = 0;
        _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_DEFAULT, "Left parking detection region.", v6, 2u);
      }

      [(GEOObserverHashTable *)self->_safeDelegate arrivalUpdaterDidLeaveParkingDetectionRegion:self];
    }
  }
}

- (BOOL)_checkForParkingDetectionRegion
{
  v3 = [(MNArrivalUpdater *)self route];
  v4 = [v3 transportType];

  if (v4)
  {
    return 0;
  }

  v5 = [(_MNArrivalUpdaterDetails *)self->_details navigationSessionState];
  v6 = [v5 isOnLastLeg];

  if (!v6)
  {
    return 0;
  }

  v7 = [(_MNArrivalUpdaterDetails *)self->_details navigationSessionState];
  v8 = [v7 location];

  v9 = [(_MNArrivalUpdaterDetails *)self->_details navigationSessionState];
  v10 = [v9 targetLeg];
  v11 = [v10 arrivalParameters];

  v12 = objc_opt_new();
  [(_MNArrivalUpdaterState *)self->_currentState parkingDetectionExcludeRadius];
  [v12 setExcludeDistancePadding:?];
  if ([v11 containsLocation:v8 arrivalRegionType:6 parameters:v12])
  {
    v13 = 1;
  }

  else
  {
    v13 = [v11 containsLocation:v8 arrivalRegionType:8 parameters:v12];
  }

  return v13;
}

- (id)captureStatePlistWithHints:(os_state_hints_s *)a3
{
  v16[4] = *MEMORY[0x1E69E9840];
  v15[0] = @"state";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_MNArrivalUpdaterState state](self->_currentState, "state", a3)}];
  v16[0] = v4;
  v15[1] = @"targetLegIndex";
  v5 = MEMORY[0x1E696AD98];
  v6 = [(MNArrivalUpdater *)self targetLeg];
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "legIndex")}];
  v16[1] = v7;
  v15[2] = @"isMonitoringWaypoint";
  v8 = MEMORY[0x1E696AD98];
  v9 = [(_MNArrivalUpdaterDetails *)self->_details evChargingStateMonitor];
  v10 = [v8 numberWithInt:v9 != 0];
  v16[2] = v10;
  v15[3] = @"isCharging";
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_MNArrivalUpdaterDetails isEVCharging](self->_details, "isEVCharging")}];
  v16[3] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)parkedVehicleDetectorDidDetectResumeDriving:(id)a3
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_DEFAULT, "Detected resume driving.", v5, 2u);
  }

  [(_MNArrivalUpdaterState *)self->_currentState updateForResumeDriving];
}

- (void)parkedVehicleDetectorDidDetectParkedVehicle:(id)a3
{
  v4 = [(_MNArrivalUpdaterDetails *)self->_details navigationSessionState];
  v5 = [v4 isOnLastLeg];

  if (v5 && [(_MNArrivalUpdaterDetails *)self->_details isInParkingDetectionRegion])
  {
    v6 = objc_alloc_init(_MNArrivalUpdaterState_Parked);
    [(MNArrivalUpdater *)self changeState:v6];
  }
}

- (void)evChargingStateMonitorShouldShowChargingInfo:(id)a3
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_DEFAULT, "Should show EV charging info", v7, 2u);
  }

  v5 = [(_MNArrivalUpdaterDetails *)self->_details navigationSessionState];
  v6 = [v5 currentWaypoint];

  [(GEOObserverHashTable *)self->_safeDelegate arrivalUpdater:self shouldShowChargingInfoForWaypoint:v6];
}

- (void)arrivalRegionTimerDidFire:(id)a3
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_INFO, "Arrival region timeout fired.", v7, 2u);
  }

  safeDelegate = self->_safeDelegate;
  v6 = [(MNArrivalUpdater *)self targetLeg];
  -[GEOObserverHashTable arrivalUpdater:didTimeoutAtLegIndex:withReason:](safeDelegate, "arrivalUpdater:didTimeoutAtLegIndex:withReason:", self, [v6 legIndex], 0);
}

- (GEOComposedRouteLeg)targetLeg
{
  v2 = [(_MNArrivalUpdaterDetails *)self->_details navigationSessionState];
  v3 = [v2 targetLeg];

  return v3;
}

- (void)stopMonitoringForEV
{
  v3 = [(_MNArrivalUpdaterDetails *)self->_details evChargingStateMonitor];
  [v3 setDelegate:0];

  details = self->_details;

  [(_MNArrivalUpdaterDetails *)details setEvChargingStateMonitor:0];
}

- (void)startMonitoringForEV
{
  v3 = [(_MNArrivalUpdaterDetails *)self->_details evChargingStateMonitor];

  if (!v3)
  {
    v4 = [(MNArrivalUpdater *)self route];
    v5 = [v4 isEVRoute];

    if (v5)
    {
      v14 = [(MNArrivalUpdater *)self targetLeg];
      v6 = [v14 chargingStationInfo];
      [v6 batteryChargeAfterCharging];
      v8 = v7 * 0.001;
      if (v7 * 0.001 > 0.0)
      {
        v9 = objc_alloc(MEMORY[0x1E696AD28]);
        v10 = [MEMORY[0x1E696B030] kilowattHours];
        v11 = [v9 initWithDoubleValue:v10 unit:v8];

        v12 = [[MNEVChargingStateMonitor alloc] initWithTargetBatteryCharge:v11];
        [(_MNArrivalUpdaterDetails *)self->_details setEvChargingStateMonitor:v12];

        v13 = [(_MNArrivalUpdaterDetails *)self->_details evChargingStateMonitor];
        [v13 setDelegate:self];
      }
    }
  }
}

- (void)changeState:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  p_currentState = &self->_currentState;
  currentState = self->_currentState;
  if (currentState && (v8 = -[_MNArrivalUpdaterState state](currentState, "state"), v8 == [v5 state]))
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 67109120;
      LODWORD(v17) = [v5 state];
      _os_log_impl(&dword_1D311E000, &v9->super, OS_LOG_TYPE_DEFAULT, "Arrival updater trying to change state to (%d), but is already in that state. This is allowed for now to support server auto advance.", &v16, 8u);
    }
  }

  else
  {
    [v5 setArrivalUpdater:self];
    [v5 setDetails:self->_details];
    v9 = self->_currentState;
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(_MNArrivalUpdaterState *)v9 state];
      if (v11 > 6)
      {
        v12 = @"MNArrivalState_Unknown";
      }

      else
      {
        v12 = off_1E84307A8[v11];
      }

      v13 = [v5 state];
      if (v13 > 6)
      {
        v14 = @"MNArrivalState_Unknown";
      }

      else
      {
        v14 = off_1E84307A8[v13];
      }

      v16 = 138412546;
      v17 = v12;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_DEFAULT, "Arrival updater change state: '%@' => '%@'", &v16, 0x16u);
    }

    objc_storeStrong(p_currentState, a3);
    [(_MNArrivalUpdaterState *)v9 onLeaveState:v5];
    [v5 onEnterState:v9];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_updateTimeoutRegions
{
  v26 = *MEMORY[0x1E69E9840];
  timeoutRegions = self->_timeoutRegions;
  self->_timeoutRegions = 0;

  v4 = [(MNArrivalUpdater *)self route];
  if (v4)
  {
    v5 = [(MNArrivalUpdater *)self targetLeg];
    v6 = [v5 arrivalParameters];

    if (v6)
    {
      v7 = [(_MNArrivalUpdaterDetails *)self->_details navigationSessionState];
      v8 = [v7 location];

      v9 = [MEMORY[0x1E695DF70] array];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v20 = v6;
      v10 = [v6 arrivalMapRegions];
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v22;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v21 + 1) + 8 * i);
            if ([v15 arrivalRegionAction] == 4)
            {
              v16 = [[MNArrivalRegionTimer alloc] initWithArrivalRegion:v15];
              v17 = v16;
              if (v16)
              {
                [(MNArrivalRegionTimer *)v16 setDelegate:self];
                [(NSMutableArray *)v9 addObject:v17];
                if (v8)
                {
                  [(MNArrivalRegionTimer *)v17 updateForLocation:v8];
                }
              }
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v12);
      }

      v18 = self->_timeoutRegions;
      self->_timeoutRegions = v9;

      v6 = v20;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)forceDepartureForCurrentLeg:(unint64_t)a3
{
  v4 = [[_MNArrivalUpdaterState_None alloc] initWithDepartureReason:a3];
  [(MNArrivalUpdater *)self changeState:v4];
}

- (void)updateForLocation:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(MNArrivalUpdater *)self _updateForParkingDetectionRegion];
  [(_MNArrivalUpdaterState *)self->_currentState updateForLocation];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_timeoutRegions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v12 + 1) + 8 * v9++) updateForLocation:{v4, v12}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = [(_MNArrivalUpdaterDetails *)self->_details evChargingStateMonitor];
  [v10 updateForLocation:v4];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)stop
{
  currentState = self->_currentState;
  self->_currentState = 0;

  [(MNParkedVehicleDetector *)self->_parkedVehicleDetector stopMonitoring];
  parkedVehicleDetector = self->_parkedVehicleDetector;

  [(MNParkedVehicleDetector *)parkedVehicleDetector setDelegate:0];
}

- (void)start
{
  if (!self->_currentState)
  {
    v4 = objc_alloc_init(_MNArrivalUpdaterState_None);
    [(MNArrivalUpdater *)self changeState:v4];
  }
}

- (void)setDelegate:(id)a3
{
  v9 = a3;
  if (v9)
  {
    v4 = objc_alloc(MEMORY[0x1E69A22D8]);
    v5 = MNNavigationQueue();
    v6 = [v4 initWithProtocol:&unk_1F4EEA9B0 queue:v5];
    safeDelegate = self->_safeDelegate;
    self->_safeDelegate = v6;

    [(GEOObserverHashTable *)self->_safeDelegate registerObserver:v9];
  }

  else
  {
    v8 = self->_safeDelegate;
    self->_safeDelegate = 0;
  }
}

- (void)setNavigationSessionState:(id)a3
{
  v24 = a3;
  v4 = [v24 currentRouteInfo];
  v5 = [v4 routeID];
  v6 = [(MNArrivalUpdater *)self route];
  v7 = [v6 uniqueRouteID];
  v8 = [v5 isEqual:v7];

  v9 = [v24 targetLegIndex];
  v10 = [(MNArrivalUpdater *)self navigationSessionState];
  v11 = [v10 targetLegIndex];

  if (!self->_details)
  {
    v12 = objc_alloc_init(_MNArrivalUpdaterDetails);
    details = self->_details;
    self->_details = v12;

    [(_MNArrivalUpdaterState *)self->_currentState setDetails:self->_details];
  }

  v14 = [v24 copy];
  [(_MNArrivalUpdaterDetails *)self->_details setNavigationSessionState:v14];

  if (v9 == v11)
  {
    v15 = v8;
  }

  else
  {
    v15 = 0;
  }

  if ((v15 & 1) == 0)
  {
    [(MNArrivalUpdater *)self _updateTimeoutRegions];
    v16 = [(MNArrivalUpdater *)self route];
    v17 = [v16 transportType];

    parkedVehicleDetector = self->_parkedVehicleDetector;
    if (v17)
    {
      if (parkedVehicleDetector)
      {
        [(MNParkedVehicleDetector *)parkedVehicleDetector stopMonitoring];
        [(MNParkedVehicleDetector *)self->_parkedVehicleDetector setDelegate:0];
        v19 = self->_parkedVehicleDetector;
        self->_parkedVehicleDetector = 0;
      }
    }

    else if (!parkedVehicleDetector)
    {
      v20 = objc_alloc_init(MNParkedVehicleDetector);
      v21 = self->_parkedVehicleDetector;
      self->_parkedVehicleDetector = v20;

      [(MNParkedVehicleDetector *)self->_parkedVehicleDetector setDelegate:self];
      [(MNParkedVehicleDetector *)self->_parkedVehicleDetector startMonitoring];
    }
  }

  v22 = self->_parkedVehicleDetector;
  v23 = [v24 location];
  [(MNParkedVehicleDetector *)v22 updateForLocation:v23];
}

- (void)dealloc
{
  [(MNArrivalUpdater *)self stop];
  GEOUnregisterStateCaptureLegacy();
  v3.receiver = self;
  v3.super_class = MNArrivalUpdater;
  [(MNArrivalUpdater *)&v3 dealloc];
}

- (MNArrivalUpdater)init
{
  v6.receiver = self;
  v6.super_class = MNArrivalUpdater;
  v2 = [(MNArrivalUpdater *)&v6 init];
  if (v2)
  {
    v3 = dispatch_get_global_queue(21, 0);
    GEORegisterPListStateCaptureLegacy();

    v4 = v2;
  }

  return v2;
}

@end