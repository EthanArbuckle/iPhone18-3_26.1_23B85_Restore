@interface _MNLocationSimulationState_WaitingAtWaypoint
- (_MNLocationSimulationState_WaitingAtWaypoint)initWithStartTime:(double)a3 waitDuration:(double)a4;
- (id)nextSimulatedLocationWithElapsedTime:(double)a3;
@end

@implementation _MNLocationSimulationState_WaitingAtWaypoint

- (id)nextSimulatedLocationWithElapsedTime:(double)a3
{
  v4 = [(_MNLocationSimulationState *)self data];
  v5 = [v4 lastLocation];

  if (v5)
  {
    if (self->_startTime <= 0.0)
    {
      v6 = [(_MNLocationSimulationState *)self data];
      [v6 currentTime];
      self->_startTime = v7;
    }

    v8 = [(_MNLocationSimulationState *)self data];
    v9 = [v8 currentLegIndex];
    v10 = [(_MNLocationSimulationState *)self data];
    v11 = [v10 routeToFollow];
    v12 = [v11 legs];
    v13 = [v12 count] - 1;

    v14 = [(_MNLocationSimulationState *)self data];
    v15 = v14;
    if (v9 >= v13)
    {
      v22 = [v14 endAtFinalDestination];

      if (v22)
      {
        v21 = off_1E8428FD8;
        goto LABEL_9;
      }
    }

    else
    {
      [v14 currentTime];
      v17 = v16 - self->_startTime;

      if (v17 > self->_waitDuration)
      {
        v18 = [(_MNLocationSimulationState *)self data];
        v19 = [v18 currentLegIndex];
        v20 = [(_MNLocationSimulationState *)self data];
        [v20 setCurrentLegIndex:v19 + 1];

        v21 = off_1E8428FE8;
LABEL_9:
        v23 = [(_MNLocationSimulationState *)self delegate];
        v24 = objc_alloc_init(*v21);
        [v23 changeState:v24];
      }
    }

    v25 = [(_MNLocationSimulationState *)self data];
    v26 = [v25 lastLocation];
    [v26 _navigation_geoCoordinate3D];
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v33 = [(_MNLocationSimulationState *)self data];
    v34 = [v33 lastLocation];
    [v34 course];
    v36 = [(_MNLocationSimulationState *)self _locationWithCoordinate:v28 course:v30 speed:v32, v35, 0.0];

    goto LABEL_11;
  }

  v36 = 0;
LABEL_11:

  return v36;
}

- (_MNLocationSimulationState_WaitingAtWaypoint)initWithStartTime:(double)a3 waitDuration:(double)a4
{
  v10.receiver = self;
  v10.super_class = _MNLocationSimulationState_WaitingAtWaypoint;
  v6 = [(_MNLocationSimulationState_WaitingAtWaypoint *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_startTime = a3;
    v6->_waitDuration = a4;
    v8 = v6;
  }

  return v7;
}

@end