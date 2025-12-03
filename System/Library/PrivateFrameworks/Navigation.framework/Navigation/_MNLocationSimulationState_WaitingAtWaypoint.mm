@interface _MNLocationSimulationState_WaitingAtWaypoint
- (_MNLocationSimulationState_WaitingAtWaypoint)initWithStartTime:(double)time waitDuration:(double)duration;
- (id)nextSimulatedLocationWithElapsedTime:(double)time;
@end

@implementation _MNLocationSimulationState_WaitingAtWaypoint

- (id)nextSimulatedLocationWithElapsedTime:(double)time
{
  data = [(_MNLocationSimulationState *)self data];
  lastLocation = [data lastLocation];

  if (lastLocation)
  {
    if (self->_startTime <= 0.0)
    {
      data2 = [(_MNLocationSimulationState *)self data];
      [data2 currentTime];
      self->_startTime = v7;
    }

    data3 = [(_MNLocationSimulationState *)self data];
    currentLegIndex = [data3 currentLegIndex];
    data4 = [(_MNLocationSimulationState *)self data];
    routeToFollow = [data4 routeToFollow];
    legs = [routeToFollow legs];
    v13 = [legs count] - 1;

    data5 = [(_MNLocationSimulationState *)self data];
    v15 = data5;
    if (currentLegIndex >= v13)
    {
      endAtFinalDestination = [data5 endAtFinalDestination];

      if (endAtFinalDestination)
      {
        v21 = off_1E8428FD8;
        goto LABEL_9;
      }
    }

    else
    {
      [data5 currentTime];
      v17 = v16 - self->_startTime;

      if (v17 > self->_waitDuration)
      {
        data6 = [(_MNLocationSimulationState *)self data];
        currentLegIndex2 = [data6 currentLegIndex];
        data7 = [(_MNLocationSimulationState *)self data];
        [data7 setCurrentLegIndex:currentLegIndex2 + 1];

        v21 = off_1E8428FE8;
LABEL_9:
        delegate = [(_MNLocationSimulationState *)self delegate];
        v24 = objc_alloc_init(*v21);
        [delegate changeState:v24];
      }
    }

    data8 = [(_MNLocationSimulationState *)self data];
    lastLocation2 = [data8 lastLocation];
    [lastLocation2 _navigation_geoCoordinate3D];
    v28 = v27;
    v30 = v29;
    v32 = v31;

    data9 = [(_MNLocationSimulationState *)self data];
    lastLocation3 = [data9 lastLocation];
    [lastLocation3 course];
    v36 = [(_MNLocationSimulationState *)self _locationWithCoordinate:v28 course:v30 speed:v32, v35, 0.0];

    goto LABEL_11;
  }

  v36 = 0;
LABEL_11:

  return v36;
}

- (_MNLocationSimulationState_WaitingAtWaypoint)initWithStartTime:(double)time waitDuration:(double)duration
{
  v10.receiver = self;
  v10.super_class = _MNLocationSimulationState_WaitingAtWaypoint;
  v6 = [(_MNLocationSimulationState_WaitingAtWaypoint *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_startTime = time;
    v6->_waitDuration = duration;
    v8 = v6;
  }

  return v7;
}

@end