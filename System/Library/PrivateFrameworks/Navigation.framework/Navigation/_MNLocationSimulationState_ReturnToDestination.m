@interface _MNLocationSimulationState_ReturnToDestination
- (void)_findParkingLocation:(id)a3;
- (void)_handleReachedParkingLocation;
@end

@implementation _MNLocationSimulationState_ReturnToDestination

- (void)_handleReachedParkingLocation
{
  v6 = [(_MNLocationSimulationState *)self delegate];
  v3 = [_MNLocationSimulationState_WaitingAtWaypoint alloc];
  v4 = [(_MNLocationSimulationState *)self data];
  [v4 currentTime];
  v5 = [_MNLocationSimulationState_WaitingAtWaypoint initWithStartTime:v3 waitDuration:"initWithStartTime:waitDuration:"];
  [v6 changeState:v5];
}

- (void)_findParkingLocation:(id)a3
{
  v10 = a3;
  v4 = [(_MNLocationSimulationState *)self data];
  v5 = [v4 routeInfo];
  v6 = [v5 route];

  if (v6 && [v6 pointCount] >= 2)
  {
    [v6 pointAt:{objc_msgSend(v6, "pointCount") - 1}];
    v9 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithGEOCoordinate:{v7, v8}];
  }

  else
  {
    v9 = 0;
  }

  v10[2](v10, v9, v9 != 0);
}

@end