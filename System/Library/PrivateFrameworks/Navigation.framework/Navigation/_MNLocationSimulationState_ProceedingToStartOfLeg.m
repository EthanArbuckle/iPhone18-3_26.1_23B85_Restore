@interface _MNLocationSimulationState_ProceedingToStartOfLeg
- (id)nextSimulatedLocationWithElapsedTime:(double)a3;
- (void)onEnterState;
@end

@implementation _MNLocationSimulationState_ProceedingToStartOfLeg

- (id)nextSimulatedLocationWithElapsedTime:(double)a3
{
  v5 = [(_MNLocationSimulationState *)self data];
  v6 = [v5 routeToFollow];

  v7 = [(_MNLocationSimulationState *)self data];
  v8 = [v7 currentLegIndex];
  v9 = [v6 legs];
  v10 = [v9 count];

  if (v8 >= v10)
  {
    v39 = 0;
  }

  else
  {
    v11 = [v6 legs];
    v12 = [(_MNLocationSimulationState *)self data];
    v13 = [v11 objectAtIndexedSubscript:{objc_msgSend(v12, "currentLegIndex")}];

    [v6 pointAt:{objc_msgSend(v13, "startPointIndex")}];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v41 = 0.0;
    v42 = -1.0;
    v20 = [(_MNLocationSimulationState *)self data];
    v21 = [v20 lastLocation];
    [v21 _navigation_geoCoordinate3D];
    v23 = v22;
    v25 = v24;

    v26 = [(_MNLocationSimulationState *)self data];
    v27 = [v26 lastLocation];
    [v27 altitude];
    v29 = v28;

    [(_MNLocationSimulationState *)self _projectedCoordinateOffRouteFrom:&v42 toCoordinate:&v41 overTimeDelta:v23 outCourse:v25 outSpeed:v29, v15, v17, v19, a3];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    GEOCalculateDistance();
    if (v36 < 0.000001)
    {
      v37 = [(_MNLocationSimulationState *)self delegate];
      v38 = -[_MNLocationSimulationState _followRouteStateWithStartRouteCoordinate:](self, "_followRouteStateWithStartRouteCoordinate:", [v13 startRouteCoordinate]);
      [v37 changeState:v38];
    }

    v39 = [(_MNLocationSimulationState *)self _locationWithCoordinate:v31 course:v33 speed:v35, v42, v41];
  }

  return v39;
}

- (void)onEnterState
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = MNGetMNNavigationSimulationLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(_MNLocationSimulationState *)self data];
    v10 = 67109120;
    LODWORD(v11) = [v4 currentLegIndex];
  }

  v5 = [(_MNLocationSimulationState *)self data];
  v6 = [v5 lastLocation];

  if (!v6)
  {
    v7 = MNGetMNNavigationSimulationLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
    }

    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315650;
      v11 = "[_MNLocationSimulationState_ProceedingToStartOfLeg onEnterState]";
      v12 = 2080;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Simulation/MNSimulatedLocationGenerator.m";
      v14 = 1024;
      v15 = 539;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", &v10, 0x1Cu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end