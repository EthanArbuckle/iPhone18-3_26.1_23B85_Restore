@interface _MNArrivalUpdaterState_ApproachingWaypoint
- (void)onEnterState:(id)a3;
- (void)updateForLocation;
@end

@implementation _MNArrivalUpdaterState_ApproachingWaypoint

- (void)updateForLocation
{
  if (![(_MNArrivalUpdaterState *)self _updateForArrival]&& ![(_MNArrivalUpdaterState *)self _updateForPreArrival])
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
  [v4 arrivalUpdater:v5 isApproachingEndOfLeg:{objc_msgSend(v6, "legIndex")}];
}

@end