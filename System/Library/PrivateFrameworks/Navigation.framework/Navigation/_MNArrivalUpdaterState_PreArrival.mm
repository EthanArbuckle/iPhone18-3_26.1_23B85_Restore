@interface _MNArrivalUpdaterState_PreArrival
- (double)parkingDetectionExcludeRadius;
- (void)onEnterState:(id)state;
- (void)updateForLocation;
@end

@implementation _MNArrivalUpdaterState_PreArrival

- (double)parkingDetectionExcludeRadius
{
  location = [(_MNArrivalUpdaterState *)self location];
  [location horizontalAccuracy];
  v4 = v3 + 10.0;

  return v4;
}

- (void)updateForLocation
{
  if (![(_MNArrivalUpdaterState *)self _updateForArrival])
  {
    [(_MNArrivalUpdaterState *)self _updateForEVMonitoring];

    [(_MNArrivalUpdaterState *)self _updateForSearchingForParking];
  }
}

- (void)onEnterState:(id)state
{
  [(_MNArrivalUpdaterState *)self sendArrivalInfoFromPreviousState:state];
  arrivalUpdater = [(_MNArrivalUpdaterState *)self arrivalUpdater];
  safeDelegate = [arrivalUpdater safeDelegate];
  arrivalUpdater2 = [(_MNArrivalUpdaterState *)self arrivalUpdater];
  targetLeg = [(_MNArrivalUpdaterState *)self targetLeg];
  [safeDelegate arrivalUpdater:arrivalUpdater2 didEnterPreArrivalStateForLegIndex:{objc_msgSend(targetLeg, "legIndex")}];
}

@end