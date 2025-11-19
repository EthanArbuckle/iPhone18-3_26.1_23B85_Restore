@interface _MNLocationSimulationState_WaitingForParkingSignal
- (id)nextSimulatedLocationWithElapsedTime:(double)a3;
- (void)updateWithRouteInfo:(id)a3 rerouteReason:(unint64_t)a4;
@end

@implementation _MNLocationSimulationState_WaitingForParkingSignal

- (void)updateWithRouteInfo:(id)a3 rerouteReason:(unint64_t)a4
{
  v5 = [a3 route];
  v6 = [v5 transportType];

  if (v6 == 2)
  {
    v8 = [(_MNLocationSimulationState *)self delegate];
    v7 = [(_MNLocationSimulationState *)self _followRouteStateWithStartRouteCoordinate:*MEMORY[0x1E69A1928]];
    [v8 changeState:v7];
  }
}

- (id)nextSimulatedLocationWithElapsedTime:(double)a3
{
  v4 = [(_MNLocationSimulationState *)self data];
  v5 = [v4 lastLocation];
  [v5 _navigation_geoCoordinate3D];
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(_MNLocationSimulationState *)self data];
  v13 = [v12 lastLocation];
  [v13 course];
  v15 = [(_MNLocationSimulationState *)self _locationWithCoordinate:v7 course:v9 speed:v11, v14, 0.0];

  return v15;
}

@end