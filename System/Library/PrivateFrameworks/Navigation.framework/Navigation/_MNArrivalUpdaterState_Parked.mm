@interface _MNArrivalUpdaterState_Parked
- (void)onEnterState:(id)a3;
- (void)updateForResumeDriving;
@end

@implementation _MNArrivalUpdaterState_Parked

- (void)updateForResumeDriving
{
  v3 = [(_MNArrivalUpdaterState *)self arrivalUpdater];
  v2 = objc_alloc_init(_MNArrivalUpdaterState_None);
  [v3 changeState:v2];
}

- (void)onEnterState:(id)a3
{
  [(_MNArrivalUpdaterState *)self sendArrivalInfoFromPreviousState:a3];
  v6 = [(_MNArrivalUpdaterState *)self arrivalUpdater];
  v4 = [v6 safeDelegate];
  v5 = [(_MNArrivalUpdaterState *)self arrivalUpdater];
  [v4 arrivalUpdater:v5 didUpdateVehicleParkingType:1];
}

@end