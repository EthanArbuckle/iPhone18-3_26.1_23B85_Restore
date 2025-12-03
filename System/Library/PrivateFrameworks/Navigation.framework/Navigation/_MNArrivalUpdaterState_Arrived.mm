@interface _MNArrivalUpdaterState_Arrived
- (BOOL)_checkForDeparture;
- (BOOL)_updateForDeparture;
- (double)parkingDetectionExcludeRadius;
- (void)dealloc;
- (void)onEnterState:(id)state;
- (void)updateForEVChargingState:(BOOL)state;
- (void)updateForEVReachedTargetBatteryCharge;
- (void)updateForLocation;
@end

@implementation _MNArrivalUpdaterState_Arrived

- (BOOL)_checkForDeparture
{
  v21 = *MEMORY[0x1E69E9840];
  targetLeg = [(_MNArrivalUpdaterState *)self targetLeg];
  legIndex = [targetLeg legIndex];

  route = [(_MNArrivalUpdaterState *)self route];
  legs = [route legs];
  v7 = [legs count] - 1;

  if (legIndex == v7)
  {
    goto LABEL_2;
  }

  legs2 = [route legs];
  v10 = [legs2 count];

  if (legIndex >= v10)
  {
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20[0] = 67109120;
      v20[1] = legIndex;
      _os_log_impl(&dword_1D311E000, v17, OS_LOG_TYPE_ERROR, "Checking departure when target leg index is not valid (%d). Allowing departure", v20, 8u);
    }

    v8 = 1;
  }

  else
  {
    details = [(_MNArrivalUpdaterState *)self details];
    isEVCharging = [details isEVCharging];

    if (isEVCharging)
    {
LABEL_2:
      v8 = 0;
      goto LABEL_11;
    }

    departureUpdater = self->_departureUpdater;
    if (!departureUpdater)
    {
      v14 = [[MNDepartureUpdater alloc] initWithRoute:route arrivalLegIndex:legIndex];
      v15 = self->_departureUpdater;
      self->_departureUpdater = v14;

      departureUpdater = self->_departureUpdater;
    }

    location = [(_MNArrivalUpdaterState *)self location];
    v8 = [(MNDepartureUpdater *)departureUpdater allowDepartureForLocation:location];
  }

LABEL_11:

  v18 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)_updateForDeparture
{
  _checkForDeparture = [(_MNArrivalUpdaterState_Arrived *)self _checkForDeparture];
  if (_checkForDeparture)
  {
    arrivalUpdater = [(_MNArrivalUpdaterState *)self arrivalUpdater];
    v5 = [[_MNArrivalUpdaterState_None alloc] initWithDepartureReason:1];
    [arrivalUpdater changeState:v5];
  }

  return _checkForDeparture;
}

- (double)parkingDetectionExcludeRadius
{
  location = [(_MNArrivalUpdaterState *)self location];
  [location horizontalAccuracy];
  v4 = v3 + 10.0;

  return v4;
}

- (void)updateForEVReachedTargetBatteryCharge
{
  arrivalUpdater = [(_MNArrivalUpdaterState *)self arrivalUpdater];
  v2 = [[_MNArrivalUpdaterState_None alloc] initWithDepartureReason:2];
  [arrivalUpdater changeState:v2];
}

- (void)updateForEVChargingState:(BOOL)state
{
  if (!state)
  {
    arrivalUpdater = [(_MNArrivalUpdaterState *)self arrivalUpdater];
    v4 = [[_MNArrivalUpdaterState_None alloc] initWithDepartureReason:2];
    [arrivalUpdater changeState:v4];
  }
}

- (void)updateForLocation
{
  if (![(_MNArrivalUpdaterState_Arrived *)self _updateForDeparture]&& ![(_MNArrivalUpdaterState *)self _checkForArrival])
  {

    [(_MNArrivalUpdaterState *)self _updateForSearchingForParking];
  }
}

- (void)onEnterState:(id)state
{
  stateCopy = state;
  [(_MNArrivalUpdaterState *)self sendArrivalInfoFromPreviousState:stateCopy];
  targetLeg = [(_MNArrivalUpdaterState *)self targetLeg];
  legIndex = [targetLeg legIndex];

  arrivalUpdater = [(_MNArrivalUpdaterState *)self arrivalUpdater];
  safeDelegate = [arrivalUpdater safeDelegate];
  arrivalUpdater2 = [(_MNArrivalUpdaterState *)self arrivalUpdater];
  [safeDelegate arrivalUpdater:arrivalUpdater2 didArriveAtEndOfLegIndex:legIndex];

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
  v20[1] = legIndex;
  v14 = [(MNDispatchTimer *)v12 initWithTime:v13 queue:v19 handler:v11 * 60.0];
  departureTimer = self->_departureTimer;
  self->_departureTimer = v14;

  [(MNDispatchTimer *)self->_departureTimer activate];
  arrivalUpdater3 = [(_MNArrivalUpdaterState *)self arrivalUpdater];
  [arrivalUpdater3 startMonitoringForEV];

  details = [(_MNArrivalUpdaterState *)self details];
  evChargingStateMonitor = [details evChargingStateMonitor];
  [evChargingStateMonitor updateForArrival];

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