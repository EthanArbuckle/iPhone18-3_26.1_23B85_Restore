@interface _MNLocationSimulationState_WaitingForParkingSignal
- (id)nextSimulatedLocationWithElapsedTime:(double)time;
- (void)updateWithRouteInfo:(id)info rerouteReason:(unint64_t)reason;
@end

@implementation _MNLocationSimulationState_WaitingForParkingSignal

- (void)updateWithRouteInfo:(id)info rerouteReason:(unint64_t)reason
{
  route = [info route];
  transportType = [route transportType];

  if (transportType == 2)
  {
    delegate = [(_MNLocationSimulationState *)self delegate];
    v7 = [(_MNLocationSimulationState *)self _followRouteStateWithStartRouteCoordinate:*MEMORY[0x1E69A1928]];
    [delegate changeState:v7];
  }
}

- (id)nextSimulatedLocationWithElapsedTime:(double)time
{
  data = [(_MNLocationSimulationState *)self data];
  lastLocation = [data lastLocation];
  [lastLocation _navigation_geoCoordinate3D];
  v7 = v6;
  v9 = v8;
  v11 = v10;

  data2 = [(_MNLocationSimulationState *)self data];
  lastLocation2 = [data2 lastLocation];
  [lastLocation2 course];
  v15 = [(_MNLocationSimulationState *)self _locationWithCoordinate:v7 course:v9 speed:v11, v14, 0.0];

  return v15;
}

@end