@interface MNArrivalUpdater
- (BOOL)_checkForParkingDetectionRegion;
- (GEOComposedRoute)route;
- (GEOComposedRouteLeg)targetLeg;
- (MNArrivalUpdater)init;
- (id)captureStatePlistWithHints:(os_state_hints_s *)hints;
- (void)_updateForParkingDetectionRegion;
- (void)_updateTimeoutRegions;
- (void)arrivalRegionTimerDidFire:(id)fire;
- (void)changeState:(id)state;
- (void)dealloc;
- (void)evChargingStateMonitorShouldShowChargingInfo:(id)info;
- (void)forceDepartureForCurrentLeg:(unint64_t)leg;
- (void)parkedVehicleDetectorDidDetectParkedVehicle:(id)vehicle;
- (void)parkedVehicleDetectorDidDetectResumeDriving:(id)driving;
- (void)setDelegate:(id)delegate;
- (void)setNavigationSessionState:(id)state;
- (void)start;
- (void)startMonitoringForEV;
- (void)stop;
- (void)stopMonitoringForEV;
- (void)updateForLocation:(id)location;
@end

@implementation MNArrivalUpdater

- (GEOComposedRoute)route
{
  navigationSessionState = [(_MNArrivalUpdaterDetails *)self->_details navigationSessionState];
  currentRouteInfo = [navigationSessionState currentRouteInfo];
  route = [currentRouteInfo route];

  return route;
}

- (void)_updateForParkingDetectionRegion
{
  _checkForParkingDetectionRegion = [(MNArrivalUpdater *)self _checkForParkingDetectionRegion];
  if (_checkForParkingDetectionRegion != [(_MNArrivalUpdaterDetails *)self->_details isInParkingDetectionRegion])
  {
    [(_MNArrivalUpdaterDetails *)self->_details setIsInParkingDetectionRegion:_checkForParkingDetectionRegion];
    v4 = GEOFindOrCreateLog();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (_checkForParkingDetectionRegion)
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
  route = [(MNArrivalUpdater *)self route];
  transportType = [route transportType];

  if (transportType)
  {
    return 0;
  }

  navigationSessionState = [(_MNArrivalUpdaterDetails *)self->_details navigationSessionState];
  isOnLastLeg = [navigationSessionState isOnLastLeg];

  if (!isOnLastLeg)
  {
    return 0;
  }

  navigationSessionState2 = [(_MNArrivalUpdaterDetails *)self->_details navigationSessionState];
  location = [navigationSessionState2 location];

  navigationSessionState3 = [(_MNArrivalUpdaterDetails *)self->_details navigationSessionState];
  targetLeg = [navigationSessionState3 targetLeg];
  arrivalParameters = [targetLeg arrivalParameters];

  v12 = objc_opt_new();
  [(_MNArrivalUpdaterState *)self->_currentState parkingDetectionExcludeRadius];
  [v12 setExcludeDistancePadding:?];
  if ([arrivalParameters containsLocation:location arrivalRegionType:6 parameters:v12])
  {
    v13 = 1;
  }

  else
  {
    v13 = [arrivalParameters containsLocation:location arrivalRegionType:8 parameters:v12];
  }

  return v13;
}

- (id)captureStatePlistWithHints:(os_state_hints_s *)hints
{
  v16[4] = *MEMORY[0x1E69E9840];
  v15[0] = @"state";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_MNArrivalUpdaterState state](self->_currentState, "state", hints)}];
  v16[0] = v4;
  v15[1] = @"targetLegIndex";
  v5 = MEMORY[0x1E696AD98];
  targetLeg = [(MNArrivalUpdater *)self targetLeg];
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(targetLeg, "legIndex")}];
  v16[1] = v7;
  v15[2] = @"isMonitoringWaypoint";
  v8 = MEMORY[0x1E696AD98];
  evChargingStateMonitor = [(_MNArrivalUpdaterDetails *)self->_details evChargingStateMonitor];
  v10 = [v8 numberWithInt:evChargingStateMonitor != 0];
  v16[2] = v10;
  v15[3] = @"isCharging";
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_MNArrivalUpdaterDetails isEVCharging](self->_details, "isEVCharging")}];
  v16[3] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)parkedVehicleDetectorDidDetectResumeDriving:(id)driving
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_DEFAULT, "Detected resume driving.", v5, 2u);
  }

  [(_MNArrivalUpdaterState *)self->_currentState updateForResumeDriving];
}

- (void)parkedVehicleDetectorDidDetectParkedVehicle:(id)vehicle
{
  navigationSessionState = [(_MNArrivalUpdaterDetails *)self->_details navigationSessionState];
  isOnLastLeg = [navigationSessionState isOnLastLeg];

  if (isOnLastLeg && [(_MNArrivalUpdaterDetails *)self->_details isInParkingDetectionRegion])
  {
    v6 = objc_alloc_init(_MNArrivalUpdaterState_Parked);
    [(MNArrivalUpdater *)self changeState:v6];
  }
}

- (void)evChargingStateMonitorShouldShowChargingInfo:(id)info
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_DEFAULT, "Should show EV charging info", v7, 2u);
  }

  navigationSessionState = [(_MNArrivalUpdaterDetails *)self->_details navigationSessionState];
  currentWaypoint = [navigationSessionState currentWaypoint];

  [(GEOObserverHashTable *)self->_safeDelegate arrivalUpdater:self shouldShowChargingInfoForWaypoint:currentWaypoint];
}

- (void)arrivalRegionTimerDidFire:(id)fire
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_INFO, "Arrival region timeout fired.", v7, 2u);
  }

  safeDelegate = self->_safeDelegate;
  targetLeg = [(MNArrivalUpdater *)self targetLeg];
  -[GEOObserverHashTable arrivalUpdater:didTimeoutAtLegIndex:withReason:](safeDelegate, "arrivalUpdater:didTimeoutAtLegIndex:withReason:", self, [targetLeg legIndex], 0);
}

- (GEOComposedRouteLeg)targetLeg
{
  navigationSessionState = [(_MNArrivalUpdaterDetails *)self->_details navigationSessionState];
  targetLeg = [navigationSessionState targetLeg];

  return targetLeg;
}

- (void)stopMonitoringForEV
{
  evChargingStateMonitor = [(_MNArrivalUpdaterDetails *)self->_details evChargingStateMonitor];
  [evChargingStateMonitor setDelegate:0];

  details = self->_details;

  [(_MNArrivalUpdaterDetails *)details setEvChargingStateMonitor:0];
}

- (void)startMonitoringForEV
{
  evChargingStateMonitor = [(_MNArrivalUpdaterDetails *)self->_details evChargingStateMonitor];

  if (!evChargingStateMonitor)
  {
    route = [(MNArrivalUpdater *)self route];
    isEVRoute = [route isEVRoute];

    if (isEVRoute)
    {
      targetLeg = [(MNArrivalUpdater *)self targetLeg];
      chargingStationInfo = [targetLeg chargingStationInfo];
      [chargingStationInfo batteryChargeAfterCharging];
      v8 = v7 * 0.001;
      if (v7 * 0.001 > 0.0)
      {
        v9 = objc_alloc(MEMORY[0x1E696AD28]);
        kilowattHours = [MEMORY[0x1E696B030] kilowattHours];
        v11 = [v9 initWithDoubleValue:kilowattHours unit:v8];

        v12 = [[MNEVChargingStateMonitor alloc] initWithTargetBatteryCharge:v11];
        [(_MNArrivalUpdaterDetails *)self->_details setEvChargingStateMonitor:v12];

        evChargingStateMonitor2 = [(_MNArrivalUpdaterDetails *)self->_details evChargingStateMonitor];
        [evChargingStateMonitor2 setDelegate:self];
      }
    }
  }
}

- (void)changeState:(id)state
{
  v20 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  p_currentState = &self->_currentState;
  currentState = self->_currentState;
  if (currentState && (v8 = -[_MNArrivalUpdaterState state](currentState, "state"), v8 == [stateCopy state]))
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 67109120;
      LODWORD(v17) = [stateCopy state];
      _os_log_impl(&dword_1D311E000, &v9->super, OS_LOG_TYPE_DEFAULT, "Arrival updater trying to change state to (%d), but is already in that state. This is allowed for now to support server auto advance.", &v16, 8u);
    }
  }

  else
  {
    [stateCopy setArrivalUpdater:self];
    [stateCopy setDetails:self->_details];
    v9 = self->_currentState;
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      state = [(_MNArrivalUpdaterState *)v9 state];
      if (state > 6)
      {
        v12 = @"MNArrivalState_Unknown";
      }

      else
      {
        v12 = off_1E84307A8[state];
      }

      state2 = [stateCopy state];
      if (state2 > 6)
      {
        v14 = @"MNArrivalState_Unknown";
      }

      else
      {
        v14 = off_1E84307A8[state2];
      }

      v16 = 138412546;
      v17 = v12;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_DEFAULT, "Arrival updater change state: '%@' => '%@'", &v16, 0x16u);
    }

    objc_storeStrong(p_currentState, state);
    [(_MNArrivalUpdaterState *)v9 onLeaveState:stateCopy];
    [stateCopy onEnterState:v9];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_updateTimeoutRegions
{
  v26 = *MEMORY[0x1E69E9840];
  timeoutRegions = self->_timeoutRegions;
  self->_timeoutRegions = 0;

  route = [(MNArrivalUpdater *)self route];
  if (route)
  {
    targetLeg = [(MNArrivalUpdater *)self targetLeg];
    arrivalParameters = [targetLeg arrivalParameters];

    if (arrivalParameters)
    {
      navigationSessionState = [(_MNArrivalUpdaterDetails *)self->_details navigationSessionState];
      location = [navigationSessionState location];

      array = [MEMORY[0x1E695DF70] array];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v20 = arrivalParameters;
      arrivalMapRegions = [arrivalParameters arrivalMapRegions];
      v11 = [arrivalMapRegions countByEnumeratingWithState:&v21 objects:v25 count:16];
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
              objc_enumerationMutation(arrivalMapRegions);
            }

            v15 = *(*(&v21 + 1) + 8 * i);
            if ([v15 arrivalRegionAction] == 4)
            {
              v16 = [[MNArrivalRegionTimer alloc] initWithArrivalRegion:v15];
              v17 = v16;
              if (v16)
              {
                [(MNArrivalRegionTimer *)v16 setDelegate:self];
                [(NSMutableArray *)array addObject:v17];
                if (location)
                {
                  [(MNArrivalRegionTimer *)v17 updateForLocation:location];
                }
              }
            }
          }

          v12 = [arrivalMapRegions countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v12);
      }

      v18 = self->_timeoutRegions;
      self->_timeoutRegions = array;

      arrivalParameters = v20;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)forceDepartureForCurrentLeg:(unint64_t)leg
{
  v4 = [[_MNArrivalUpdaterState_None alloc] initWithDepartureReason:leg];
  [(MNArrivalUpdater *)self changeState:v4];
}

- (void)updateForLocation:(id)location
{
  v17 = *MEMORY[0x1E69E9840];
  locationCopy = location;
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

        [*(*(&v12 + 1) + 8 * v9++) updateForLocation:{locationCopy, v12}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  evChargingStateMonitor = [(_MNArrivalUpdaterDetails *)self->_details evChargingStateMonitor];
  [evChargingStateMonitor updateForLocation:locationCopy];

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

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (delegateCopy)
  {
    v4 = objc_alloc(MEMORY[0x1E69A22D8]);
    v5 = MNNavigationQueue();
    v6 = [v4 initWithProtocol:&unk_1F4EEA9B0 queue:v5];
    safeDelegate = self->_safeDelegate;
    self->_safeDelegate = v6;

    [(GEOObserverHashTable *)self->_safeDelegate registerObserver:delegateCopy];
  }

  else
  {
    v8 = self->_safeDelegate;
    self->_safeDelegate = 0;
  }
}

- (void)setNavigationSessionState:(id)state
{
  stateCopy = state;
  currentRouteInfo = [stateCopy currentRouteInfo];
  routeID = [currentRouteInfo routeID];
  route = [(MNArrivalUpdater *)self route];
  uniqueRouteID = [route uniqueRouteID];
  v8 = [routeID isEqual:uniqueRouteID];

  targetLegIndex = [stateCopy targetLegIndex];
  navigationSessionState = [(MNArrivalUpdater *)self navigationSessionState];
  targetLegIndex2 = [navigationSessionState targetLegIndex];

  if (!self->_details)
  {
    v12 = objc_alloc_init(_MNArrivalUpdaterDetails);
    details = self->_details;
    self->_details = v12;

    [(_MNArrivalUpdaterState *)self->_currentState setDetails:self->_details];
  }

  v14 = [stateCopy copy];
  [(_MNArrivalUpdaterDetails *)self->_details setNavigationSessionState:v14];

  if (targetLegIndex == targetLegIndex2)
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
    route2 = [(MNArrivalUpdater *)self route];
    transportType = [route2 transportType];

    parkedVehicleDetector = self->_parkedVehicleDetector;
    if (transportType)
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
  location = [stateCopy location];
  [(MNParkedVehicleDetector *)v22 updateForLocation:location];
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