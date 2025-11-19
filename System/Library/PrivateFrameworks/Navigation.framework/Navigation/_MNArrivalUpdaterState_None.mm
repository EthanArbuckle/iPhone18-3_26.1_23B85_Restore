@interface _MNArrivalUpdaterState_None
- (_MNArrivalUpdaterState_None)initWithDepartureReason:(unint64_t)a3;
- (void)onEnterState:(id)a3;
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

- (void)onEnterState:(id)a3
{
  [(_MNArrivalUpdaterState *)self sendArrivalInfoFromPreviousState:a3];
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
    v6 = [(_MNArrivalUpdaterState *)self arrivalUpdater];
    v7 = [v6 safeDelegate];
    v8 = [(_MNArrivalUpdaterState *)self arrivalUpdater];
    v9 = [(_MNArrivalUpdaterState *)self targetLeg];
    [v7 arrivalUpdater:v8 didDepartFromLegIndex:objc_msgSend(v9 withReason:{"legIndex"), self->_departureReason}];
  }

  v10 = [(_MNArrivalUpdaterState *)self arrivalUpdater];
  [v10 stopMonitoringForEV];
}

- (_MNArrivalUpdaterState_None)initWithDepartureReason:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = _MNArrivalUpdaterState_None;
  v4 = [(_MNArrivalUpdaterState_None *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_departureReason = a3;
    v6 = v4;
  }

  return v5;
}

@end