@interface _MNArrivalUpdaterState_None
- (_MNArrivalUpdaterState_None)initWithDepartureReason:(unint64_t)reason;
- (void)onEnterState:(id)state;
- (void)updateForLocation;
@end

@implementation _MNArrivalUpdaterState_None

- (void)updateForLocation
{
  if (![(_MNArrivalUpdaterState *)self _updateForArrival]&& ![(_MNArrivalUpdaterState *)self _updateForPreArrival]&& ![(_MNArrivalUpdaterState *)self _updateForEndOfDrivingSegment]&& ![(_MNArrivalUpdaterState *)self _updateForApproachingWaypoint])
  {

    [(_MNArrivalUpdaterState *)self _updateForEVMonitoring];
  }
}

- (void)onEnterState:(id)state
{
  [(_MNArrivalUpdaterState *)self sendArrivalInfoFromPreviousState:state];
  departureReason = self->_departureReason;
  if (departureReason)
  {
    v5 = departureReason == 6;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    arrivalUpdater = [(_MNArrivalUpdaterState *)self arrivalUpdater];
    safeDelegate = [arrivalUpdater safeDelegate];
    arrivalUpdater2 = [(_MNArrivalUpdaterState *)self arrivalUpdater];
    targetLeg = [(_MNArrivalUpdaterState *)self targetLeg];
    [safeDelegate arrivalUpdater:arrivalUpdater2 didDepartFromLegIndex:objc_msgSend(targetLeg withReason:{"legIndex"), self->_departureReason}];
  }

  arrivalUpdater3 = [(_MNArrivalUpdaterState *)self arrivalUpdater];
  [arrivalUpdater3 stopMonitoringForEV];
}

- (_MNArrivalUpdaterState_None)initWithDepartureReason:(unint64_t)reason
{
  v8.receiver = self;
  v8.super_class = _MNArrivalUpdaterState_None;
  v4 = [(_MNArrivalUpdaterState_None *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_departureReason = reason;
    v6 = v4;
  }

  return v5;
}

@end