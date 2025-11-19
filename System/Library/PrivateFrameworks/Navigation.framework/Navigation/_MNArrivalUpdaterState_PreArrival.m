@interface _MNArrivalUpdaterState_PreArrival
- (double)parkingDetectionExcludeRadius;
- (void)onEnterState:(id)a3;
- (void)updateForLocation;
@end

@implementation _MNArrivalUpdaterState_PreArrival

- (double)parkingDetectionExcludeRadius
{
  v2 = [(_MNArrivalUpdaterState *)self location];
  [v2 horizontalAccuracy];
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

- (void)onEnterState:(id)a3
{
  [(_MNArrivalUpdaterState *)self sendArrivalInfoFromPreviousState:a3];
  v7 = [(_MNArrivalUpdaterState *)self arrivalUpdater];
  v4 = [v7 safeDelegate];
  v5 = [(_MNArrivalUpdaterState *)self arrivalUpdater];
  v6 = [(_MNArrivalUpdaterState *)self targetLeg];
  [v4 arrivalUpdater:v5 didEnterPreArrivalStateForLegIndex:{objc_msgSend(v6, "legIndex")}];
}

@end