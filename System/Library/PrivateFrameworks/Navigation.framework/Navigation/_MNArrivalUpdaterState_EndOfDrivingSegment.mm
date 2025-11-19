@interface _MNArrivalUpdaterState_EndOfDrivingSegment
- (void)onEnterState:(id)a3;
@end

@implementation _MNArrivalUpdaterState_EndOfDrivingSegment

- (void)onEnterState:(id)a3
{
  [(_MNArrivalUpdaterState *)self sendArrivalInfoFromPreviousState:a3];
  v6 = [(_MNArrivalUpdaterState *)self arrivalUpdater];
  v4 = [v6 safeDelegate];
  v5 = [(_MNArrivalUpdaterState *)self arrivalUpdater];
  [v4 arrivalUpdater:v5 didUpdateVehicleParkingType:2];
}

@end