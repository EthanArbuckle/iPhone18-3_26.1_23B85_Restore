@interface _MNLocationSimulationState_ReturnToDestination
- (void)_findParkingLocation:(id)location;
- (void)_handleReachedParkingLocation;
@end

@implementation _MNLocationSimulationState_ReturnToDestination

- (void)_handleReachedParkingLocation
{
  delegate = [(_MNLocationSimulationState *)self delegate];
  v3 = [_MNLocationSimulationState_WaitingAtWaypoint alloc];
  data = [(_MNLocationSimulationState *)self data];
  [data currentTime];
  v5 = [_MNLocationSimulationState_WaitingAtWaypoint initWithStartTime:v3 waitDuration:"initWithStartTime:waitDuration:"];
  [delegate changeState:v5];
}

- (void)_findParkingLocation:(id)location
{
  locationCopy = location;
  data = [(_MNLocationSimulationState *)self data];
  routeInfo = [data routeInfo];
  route = [routeInfo route];

  if (route && [route pointCount] >= 2)
  {
    [route pointAt:{objc_msgSend(route, "pointCount") - 1}];
    v9 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithGEOCoordinate:{v7, v8}];
  }

  else
  {
    v9 = 0;
  }

  locationCopy[2](locationCopy, v9, v9 != 0);
}

@end