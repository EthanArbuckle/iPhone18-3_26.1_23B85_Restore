@interface _MNArrivalUpdaterState_SearchingForParkingAfterArrival
- (BOOL)_checkForArrival;
- (void)onEnterState:(id)state;
@end

@implementation _MNArrivalUpdaterState_SearchingForParkingAfterArrival

- (BOOL)_checkForArrival
{
  details = [(_MNArrivalUpdaterState *)self details];
  navigationSessionState = [details navigationSessionState];
  targetLeg = [navigationSessionState targetLeg];
  arrivalParameters = [targetLeg arrivalParameters];

  location = [(_MNArrivalUpdaterState *)self location];
  if ([arrivalParameters containsLocation:location arrivalRegionType:7])
  {
    goto LABEL_4;
  }

  location2 = [(_MNArrivalUpdaterState *)self location];
  if ([arrivalParameters containsLocation:location2 arrivalRegionType:5])
  {

LABEL_4:
    goto LABEL_5;
  }

  location3 = [(_MNArrivalUpdaterState *)self location];
  v12 = [arrivalParameters containsLocation:location3 arrivalRegionType:8];

  if ((v12 & 1) == 0)
  {
    v13.receiver = self;
    v13.super_class = _MNArrivalUpdaterState_SearchingForParkingAfterArrival;
    _checkForArrival = [(_MNArrivalUpdaterState *)&v13 _checkForArrival];
    goto LABEL_6;
  }

LABEL_5:
  _checkForArrival = 1;
LABEL_6:

  return _checkForArrival;
}

- (void)onEnterState:(id)state
{
  [(_MNArrivalUpdaterState *)self sendArrivalInfoFromPreviousState:state];
  arrivalUpdater = [(_MNArrivalUpdaterState *)self arrivalUpdater];
  safeDelegate = [arrivalUpdater safeDelegate];
  arrivalUpdater2 = [(_MNArrivalUpdaterState *)self arrivalUpdater];
  [safeDelegate arrivalUpdater:arrivalUpdater2 didUpdateVehicleParkingType:2];
}

@end