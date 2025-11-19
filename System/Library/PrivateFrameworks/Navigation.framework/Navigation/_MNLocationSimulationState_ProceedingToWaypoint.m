@interface _MNLocationSimulationState_ProceedingToWaypoint
- (id)nextSimulatedLocationWithElapsedTime:(double)a3;
@end

@implementation _MNLocationSimulationState_ProceedingToWaypoint

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
    v52 = 0;
  }

  else
  {
    v11 = [v6 legs];
    v12 = [(_MNLocationSimulationState *)self data];
    v13 = [v11 objectAtIndexedSubscript:{objc_msgSend(v12, "currentLegIndex")}];

    v14 = [v13 destination];
    [v14 coordinate];
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v54 = 0.0;
    v55 = -1.0;
    v21 = [(_MNLocationSimulationState *)self data];
    v22 = [v21 lastLocation];

    if (v22)
    {
      v23 = [(_MNLocationSimulationState *)self data];
      v24 = [v23 lastLocation];
      [v24 _navigation_geoCoordinate3D];
      v26 = v25;
      v28 = v27;
      v30 = v29;

      [(_MNLocationSimulationState *)self _projectedCoordinateOffRouteFrom:&v55 toCoordinate:&v54 overTimeDelta:v26 outCourse:v28 outSpeed:v30, v16, v18, v20, a3];
      v32 = v31;
      v34 = v33;
      v36 = v35;
    }

    else
    {
      [v6 pointAt:{objc_msgSend(v13, "endPointIndex")}];
      v32 = v37;
      v34 = v38;
      v36 = v39;
      [v6 courseAtRouteCoordinateIndex:{objc_msgSend(v13, "endPointIndex")}];
      v55 = v40;
    }

    GEOCalculateDistance();
    if (v41 < 0.000001)
    {
      v42 = [(_MNLocationSimulationState *)self data];
      v43 = [v42 currentLegIndex];
      v44 = [v6 legs];
      v45 = [v44 count] - 1;

      if (v43 >= v45 && (-[_MNLocationSimulationState data](self, "data"), v46 = objc_claimAutoreleasedReturnValue(), v47 = [v46 endAtFinalDestination], v46, v47))
      {
        v48 = objc_alloc_init(_MNLocationSimulationState_End);
      }

      else
      {
        v49 = [_MNLocationSimulationState_WaitingAtWaypoint alloc];
        v50 = [(_MNLocationSimulationState *)self data];
        [v50 currentTime];
        v48 = [_MNLocationSimulationState_WaitingAtWaypoint initWithStartTime:v49 waitDuration:"initWithStartTime:waitDuration:"];
      }

      v51 = [(_MNLocationSimulationState *)self delegate];
      [v51 changeState:v48];
    }

    v52 = [(_MNLocationSimulationState *)self _locationWithCoordinate:v32 course:v34 speed:v36, v55, v54];
  }

  return v52;
}

@end