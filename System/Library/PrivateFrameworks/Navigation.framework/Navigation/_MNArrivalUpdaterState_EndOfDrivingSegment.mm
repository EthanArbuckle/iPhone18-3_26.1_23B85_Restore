@interface _MNArrivalUpdaterState_EndOfDrivingSegment
- (void)onEnterState:(id)state;
@end

@implementation _MNArrivalUpdaterState_EndOfDrivingSegment

- (void)onEnterState:(id)state
{
  [(_MNArrivalUpdaterState *)self sendArrivalInfoFromPreviousState:state];
  arrivalUpdater = [(_MNArrivalUpdaterState *)self arrivalUpdater];
  safeDelegate = [arrivalUpdater safeDelegate];
  arrivalUpdater2 = [(_MNArrivalUpdaterState *)self arrivalUpdater];
  [safeDelegate arrivalUpdater:arrivalUpdater2 didUpdateVehicleParkingType:2];
}

@end