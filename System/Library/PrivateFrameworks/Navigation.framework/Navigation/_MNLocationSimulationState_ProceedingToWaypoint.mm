@interface _MNLocationSimulationState_ProceedingToWaypoint
- (id)nextSimulatedLocationWithElapsedTime:(double)time;
@end

@implementation _MNLocationSimulationState_ProceedingToWaypoint

- (id)nextSimulatedLocationWithElapsedTime:(double)time
{
  data = [(_MNLocationSimulationState *)self data];
  routeToFollow = [data routeToFollow];

  data2 = [(_MNLocationSimulationState *)self data];
  currentLegIndex = [data2 currentLegIndex];
  legs = [routeToFollow legs];
  v10 = [legs count];

  if (currentLegIndex >= v10)
  {
    v52 = 0;
  }

  else
  {
    legs2 = [routeToFollow legs];
    data3 = [(_MNLocationSimulationState *)self data];
    v13 = [legs2 objectAtIndexedSubscript:{objc_msgSend(data3, "currentLegIndex")}];

    destination = [v13 destination];
    [destination coordinate];
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v54 = 0.0;
    v55 = -1.0;
    data4 = [(_MNLocationSimulationState *)self data];
    lastLocation = [data4 lastLocation];

    if (lastLocation)
    {
      data5 = [(_MNLocationSimulationState *)self data];
      lastLocation2 = [data5 lastLocation];
      [lastLocation2 _navigation_geoCoordinate3D];
      v26 = v25;
      v28 = v27;
      v30 = v29;

      [(_MNLocationSimulationState *)self _projectedCoordinateOffRouteFrom:&v55 toCoordinate:&v54 overTimeDelta:v26 outCourse:v28 outSpeed:v30, v16, v18, v20, time];
      v32 = v31;
      v34 = v33;
      v36 = v35;
    }

    else
    {
      [routeToFollow pointAt:{objc_msgSend(v13, "endPointIndex")}];
      v32 = v37;
      v34 = v38;
      v36 = v39;
      [routeToFollow courseAtRouteCoordinateIndex:{objc_msgSend(v13, "endPointIndex")}];
      v55 = v40;
    }

    GEOCalculateDistance();
    if (v41 < 0.000001)
    {
      data6 = [(_MNLocationSimulationState *)self data];
      currentLegIndex2 = [data6 currentLegIndex];
      legs3 = [routeToFollow legs];
      v45 = [legs3 count] - 1;

      if (currentLegIndex2 >= v45 && (-[_MNLocationSimulationState data](self, "data"), v46 = objc_claimAutoreleasedReturnValue(), v47 = [v46 endAtFinalDestination], v46, v47))
      {
        v48 = objc_alloc_init(_MNLocationSimulationState_End);
      }

      else
      {
        v49 = [_MNLocationSimulationState_WaitingAtWaypoint alloc];
        data7 = [(_MNLocationSimulationState *)self data];
        [data7 currentTime];
        v48 = [_MNLocationSimulationState_WaitingAtWaypoint initWithStartTime:v49 waitDuration:"initWithStartTime:waitDuration:"];
      }

      delegate = [(_MNLocationSimulationState *)self delegate];
      [delegate changeState:v48];
    }

    v52 = [(_MNLocationSimulationState *)self _locationWithCoordinate:v32 course:v34 speed:v36, v55, v54];
  }

  return v52;
}

@end