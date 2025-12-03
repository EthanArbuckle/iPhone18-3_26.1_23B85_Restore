@interface _MNArrivalUpdaterState_ApproachingWaypoint
- (void)onEnterState:(id)state;
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

- (void)onEnterState:(id)state
{
  [(_MNArrivalUpdaterState *)self sendArrivalInfoFromPreviousState:state];
  arrivalUpdater = [(_MNArrivalUpdaterState *)self arrivalUpdater];
  safeDelegate = [arrivalUpdater safeDelegate];
  arrivalUpdater2 = [(_MNArrivalUpdaterState *)self arrivalUpdater];
  targetLeg = [(_MNArrivalUpdaterState *)self targetLeg];
  [safeDelegate arrivalUpdater:arrivalUpdater2 isApproachingEndOfLeg:{objc_msgSend(targetLeg, "legIndex")}];
}

@end