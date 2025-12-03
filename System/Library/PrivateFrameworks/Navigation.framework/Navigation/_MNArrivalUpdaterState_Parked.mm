@interface _MNArrivalUpdaterState_Parked
- (void)onEnterState:(id)state;
- (void)updateForResumeDriving;
@end

@implementation _MNArrivalUpdaterState_Parked

- (void)updateForResumeDriving
{
  arrivalUpdater = [(_MNArrivalUpdaterState *)self arrivalUpdater];
  v2 = objc_alloc_init(_MNArrivalUpdaterState_None);
  [arrivalUpdater changeState:v2];
}

- (void)onEnterState:(id)state
{
  [(_MNArrivalUpdaterState *)self sendArrivalInfoFromPreviousState:state];
  arrivalUpdater = [(_MNArrivalUpdaterState *)self arrivalUpdater];
  safeDelegate = [arrivalUpdater safeDelegate];
  arrivalUpdater2 = [(_MNArrivalUpdaterState *)self arrivalUpdater];
  [safeDelegate arrivalUpdater:arrivalUpdater2 didUpdateVehicleParkingType:1];
}

@end