@interface _MNArrivalUpdaterState_Arrived
- (BOOL)_checkForDeparture;
- (BOOL)_updateForDeparture;
- (double)parkingDetectionExcludeRadius;
- (void)dealloc;
- (void)onEnterState:(id)a3;
- (void)updateForEVChargingState:(BOOL)a3;
- (void)updateForEVReachedTargetBatteryCharge;
- (void)updateForLocation;
@end

@implementation _MNArrivalUpdaterState_Arrived

- (BOOL)_checkForDeparture
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(_MNArrivalUpdaterState *)self targetLeg];
  v4 = [v3 legIndex];

  v5 = [(_MNArrivalUpdaterState *)self route];
  v6 = [v5 legs];
  v7 = [v6 count] - 1;

  if (v4 == v7)
  {
    goto LABEL_2;
  }

  v9 = [v5 legs];
  v10 = [v9 count];

  if (v4 >= v10)
  {
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20[0] = 67109120;
      v20[1] = v4;
      _os_log_impl(&dword_1D311E000, v17, OS_LOG_TYPE_ERROR, "Checking departure when target leg index is not valid (%d). Allowing departure", v20, 8u);
    }

    v8 = 1;
  }

  else
  {
    v11 = [(_MNArrivalUpdaterState *)self details];
    v12 = [v11 isEVCharging];

    if (v12)
    {
LABEL_2:
      v8 = 0;
      goto LABEL_11;
    }

    departureUpdater = self->_departureUpdater;
    if (!departureUpdater)
    {
      v14 = [[MNDepartureUpdater alloc] initWithRoute:v5 arrivalLegIndex:v4];
      v15 = self->_departureUpdater;
      self->_departureUpdater = v14;

      departureUpdater = self->_departureUpdater;
    }

    v16 = [(_MNArrivalUpdaterState *)self location];
    v8 = [(MNDepartureUpdater *)departureUpdater allowDepartureForLocation:v16];
  }

LABEL_11:

  v18 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)_updateForDeparture
{
  v3 = [(_MNArrivalUpdaterState_Arrived *)self _checkForDeparture];
  if (v3)
  {
    v4 = [(_MNArrivalUpdaterState *)self arrivalUpdater];
    v5 = [[_MNArrivalUpdaterState_None alloc] initWithDepartureReason:1];
    [v4 changeState:v5];
  }

  return v3;
}

- (double)parkingDetectionExcludeRadius
{
  v2 = [(_MNArrivalUpdaterState *)self location];
  [v2 horizontalAccuracy];
  v4 = v3 + 10.0;

  return v4;
}

- (void)updateForEVReachedTargetBatteryCharge
{
  v3 = [(_MNArrivalUpdaterState *)self arrivalUpdater];
  v2 = [[_MNArrivalUpdaterState_None alloc] initWithDepartureReason:2];
  [v3 changeState:v2];
}

- (void)updateForEVChargingState:(BOOL)a3
{
  if (!a3)
  {
    v5 = [(_MNArrivalUpdaterState *)self arrivalUpdater];
    v4 = [[_MNArrivalUpdaterState_None alloc] initWithDepartureReason:2];
    [v5 changeState:v4];
  }
}

- (void)updateForLocation
{
  if (![(_MNArrivalUpdaterState_Arrived *)self _updateForDeparture]&& ![(_MNArrivalUpdaterState *)self _checkForArrival])
  {

    [(_MNArrivalUpdaterState *)self _updateForSearchingForParking];
  }
}

- (void)onEnterState:(id)a3
{
  v4 = a3;
  [(_MNArrivalUpdaterState *)self sendArrivalInfoFromPreviousState:v4];
  v5 = [(_MNArrivalUpdaterState *)self targetLeg];
  v6 = [v5 legIndex];

  v7 = [(_MNArrivalUpdaterState *)self arrivalUpdater];
  v8 = [v7 safeDelegate];
  v9 = [(_MNArrivalUpdaterState *)self arrivalUpdater];
  [v8 arrivalUpdater:v9 didArriveAtEndOfLegIndex:v6];

  GEOConfigGetDouble();
  v11 = v10;
  objc_initWeak(&location, self);
  v12 = [MNDispatchTimer alloc];
  v13 = MNNavigationQueue();
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __47___MNArrivalUpdaterState_Arrived_onEnterState___block_invoke;
  v19[3] = &unk_1E8430F10;
  objc_copyWeak(v20, &location);
  v20[1] = v6;
  v14 = [(MNDispatchTimer *)v12 initWithTime:v13 queue:v19 handler:v11 * 60.0];
  departureTimer = self->_departureTimer;
  self->_departureTimer = v14;

  [(MNDispatchTimer *)self->_departureTimer activate];
  v16 = [(_MNArrivalUpdaterState *)self arrivalUpdater];
  [v16 startMonitoringForEV];

  v17 = [(_MNArrivalUpdaterState *)self details];
  v18 = [v17 evChargingStateMonitor];
  [v18 updateForArrival];

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  [(MNDispatchTimer *)self->_departureTimer cancel];
  v3.receiver = self;
  v3.super_class = _MNArrivalUpdaterState_Arrived;
  [(_MNArrivalUpdaterState_Arrived *)&v3 dealloc];
}

@end