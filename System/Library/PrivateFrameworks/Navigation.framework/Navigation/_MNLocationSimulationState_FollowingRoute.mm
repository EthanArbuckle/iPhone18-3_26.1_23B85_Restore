@interface _MNLocationSimulationState_FollowingRoute
- ($212C09783140BCCD23384160D545CE0D)_projectedCoordinateOnRouteFrom:(id)from overTimeDelta:(double)delta outSpeed:(double *)speed;
- (BOOL)_shouldProceedToWaypointForLeg:(id)leg;
- (_MNLocationSimulationState_FollowingRoute)initWithStartRouteCoordinate:(id)coordinate;
- (id)_routeToFollow;
- (id)nextSimulatedLocationWithElapsedTime:(double)time;
- (void)onEnterState;
- (void)updateWithRouteInfo:(id)info rerouteReason:(unint64_t)reason;
@end

@implementation _MNLocationSimulationState_FollowingRoute

- (id)_routeToFollow
{
  data = [(_MNLocationSimulationState *)self data];
  routeToFollow = [data routeToFollow];

  return routeToFollow;
}

- (BOOL)_shouldProceedToWaypointForLeg:(id)leg
{
  legCopy = leg;
  _routeToFollow = [(_MNLocationSimulationState_FollowingRoute *)self _routeToFollow];
  legs = [_routeToFollow legs];
  lastObject = [legs lastObject];

  if (lastObject == legCopy || (GEOConfigGetBOOL() & 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    destination = [legCopy destination];
    chargingInfo = [destination chargingInfo];
    v8 = chargingInfo != 0;
  }

  return v8;
}

- ($212C09783140BCCD23384160D545CE0D)_projectedCoordinateOnRouteFrom:(id)from overTimeDelta:(double)delta outSpeed:(double *)speed
{
  if (GEOPolylineCoordinateIsValid())
  {
    _routeToFollow = [(_MNLocationSimulationState_FollowingRoute *)self _routeToFollow];
    legs = [_routeToFollow legs];
    data = [(_MNLocationSimulationState *)self data];
    v12 = [legs objectAtIndexedSubscript:{objc_msgSend(data, "currentLegIndex")}];

    if ([(_MNLocationSimulationState_FollowingRoute *)self _isCoordinate:from atEndOfLeg:v12])
    {
      if (speed)
      {
        *speed = 0.0;
      }

      delta = ([_routeToFollow pointCount] - 1);
    }

    else
    {
      v14 = [_routeToFollow stepForPointIndex:from];
      data2 = [(_MNLocationSimulationState *)self data];
      [data2 speedOverride];
      v17 = v16;

      if (v17 >= 0.0)
      {
        data3 = [(_MNLocationSimulationState *)self data];
        [data3 speedOverride];
        v19 = v27;

        data4 = [(_MNLocationSimulationState *)self data];
        [data4 speedOverride];
        v25 = v28;
      }

      else
      {
        [v14 distance];
        v19 = v18 / [v14 duration];
        data5 = [(_MNLocationSimulationState *)self data];
        [data5 minimumSpeed];
        v22 = v21;

        data4 = [(_MNLocationSimulationState *)self data];
        [data4 speedMultiplier];
        v25 = v24 * fmax(v22, fmin(v19, 50.0));
      }

      if (speed)
      {
        *speed = v19;
      }

      delta = [_routeToFollow routeCoordinateForDistance:from afterRouteCoordinate:v25 * delta];
      endRouteCoordinate = [v14 endRouteCoordinate];
      if (GEOPolylineCoordinateIsABeforeB())
      {
        delta = endRouteCoordinate;
      }
    }
  }

  else
  {
    return *MEMORY[0x1E69A1918];
  }

  return delta;
}

- (void)updateWithRouteInfo:(id)info rerouteReason:(unint64_t)reason
{
  v39 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  data = [(_MNLocationSimulationState *)self data];
  simulationType = [data simulationType];

  if (simulationType == 2)
  {
    if (reason == 13)
    {
      data2 = [(_MNLocationSimulationState *)self data];
      [data2 setCurrentLegIndex:0];

      v10 = objc_alloc_init(_MNLocationSimulationState_ProceedingToStartOfLeg);
      delegate = [(_MNLocationSimulationState *)self delegate];
      [delegate changeState:v10];
    }

    else
    {
      v12 = objc_alloc(MEMORY[0x1E69A2548]);
      route = [infoCopy route];
      v10 = [v12 initWithRoute:route auditToken:0];

      v14 = objc_alloc(MEMORY[0x1E69A1E70]);
      data3 = [(_MNLocationSimulationState *)self data];
      lastLocation = [data3 lastLocation];
      v17 = [v14 initWithCLLocation:lastLocation];

      v18 = [(_MNLocationSimulationState_ProceedingToStartOfLeg *)v10 matchToRouteWithLocation:v17];
      routeCoordinate = [v18 routeCoordinate];
      data4 = [(_MNLocationSimulationState *)self data];
      [data4 setLastRouteCoordinate:routeCoordinate];

      legIndex = [v18 legIndex];
      data5 = [(_MNLocationSimulationState *)self data];
      [data5 setCurrentLegIndex:legIndex];

      v23 = MNGetMNNavigationSimulationLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        data6 = [(_MNLocationSimulationState *)self data];
        lastRouteCoordinate = [data6 lastRouteCoordinate];
        data7 = [(_MNLocationSimulationState *)self data];
        v27 = COERCE_FLOAT([data7 lastRouteCoordinate] >> 32);
        data8 = [(_MNLocationSimulationState *)self data];
        currentLegIndex = [data8 currentLegIndex];
        [v18 distanceFromRoute];
        v32[0] = 67109888;
        v32[1] = lastRouteCoordinate;
        v33 = 2048;
        v34 = v27;
        v35 = 1024;
        v36 = currentLegIndex;
        v37 = 2048;
        v38 = v30;
        _os_log_impl(&dword_1D311E000, v23, OS_LOG_TYPE_DEFAULT, "Putting location at [%u, %0.2f] and leg %d on new route. Was %0.1f meters away", v32, 0x22u);
      }
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (id)nextSimulatedLocationWithElapsedTime:(double)time
{
  v43 = 0.0;
  data = [(_MNLocationSimulationState *)self data];
  v6 = -[_MNLocationSimulationState_FollowingRoute _projectedCoordinateOnRouteFrom:overTimeDelta:outSpeed:](self, "_projectedCoordinateOnRouteFrom:overTimeDelta:outSpeed:", [data lastRouteCoordinate], &v43, time);

  if (GEOPolylineCoordinateIsValid())
  {
    _routeToFollow = [(_MNLocationSimulationState_FollowingRoute *)self _routeToFollow];
    [_routeToFollow pointAtRouteCoordinate:v6];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [_routeToFollow courseAtRouteCoordinateIndex:v6];
    v15 = [(_MNLocationSimulationState *)self _locationWithCoordinate:v9 course:v11 speed:v13, v14, v43];
    data2 = [(_MNLocationSimulationState *)self data];
    [data2 setLastRouteCoordinate:v6];

    legs = [_routeToFollow legs];
    data3 = [(_MNLocationSimulationState *)self data];
    v19 = [legs objectAtIndexedSubscript:{objc_msgSend(data3, "currentLegIndex")}];

    legIndex = [v19 legIndex];
    legs2 = [_routeToFollow legs];
    v22 = [legs2 count] - 1;

    LODWORD(legs2) = [_routeToFollow transportType];
    data4 = [(_MNLocationSimulationState *)self data];
    simulationType = [data4 simulationType];

    if (legs2)
    {
      v25 = 0;
    }

    else
    {
      v25 = simulationType == 2;
    }

    v27 = v25 && legIndex >= v22;
    Integer = GEOConfigGetInteger();
    v29 = Integer;
    if (v27 == 1 && Integer == 1 && ([v19 arrivalParameters], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "containsCoordinate:arrivalRegionType:", 6, v9, v11, v13), v30, v31))
    {
      delegate = [(_MNLocationSimulationState *)self delegate];
      v33 = _MNLocationSimulationState_SearchingForParkingBeforeArrival;
    }

    else
    {
      if (![(_MNLocationSimulationState_FollowingRoute *)self _isCoordinate:v6 atEndOfLeg:v19])
      {
LABEL_27:

        goto LABEL_28;
      }

      if ((v29 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v34 = v27;
      }

      else
      {
        v34 = 0;
      }

      if (v34 == 1)
      {
        delegate = [(_MNLocationSimulationState *)self delegate];
        v33 = _MNLocationSimulationState_SearchingForParkingAfterArrival;
      }

      else if ([(_MNLocationSimulationState_FollowingRoute *)self _shouldProceedToWaypointForLeg:v19])
      {
        delegate = [(_MNLocationSimulationState *)self delegate];
        v33 = _MNLocationSimulationState_ProceedingToWaypoint;
      }

      else
      {
        GEOConfigGetDouble();
        if (v35 >= 0.0)
        {
          delegate = [(_MNLocationSimulationState *)self delegate];
          v41 = [_MNLocationSimulationState_WaitingAtWaypoint alloc];
          data5 = [(_MNLocationSimulationState *)self data];
          [data5 currentTime];
          v42 = [_MNLocationSimulationState_WaitingAtWaypoint initWithStartTime:v41 waitDuration:"initWithStartTime:waitDuration:"];
          [delegate changeState:v42];

          goto LABEL_26;
        }

        data6 = [(_MNLocationSimulationState *)self data];
        currentLegIndex = [data6 currentLegIndex];
        data7 = [(_MNLocationSimulationState *)self data];
        [data7 setCurrentLegIndex:currentLegIndex + 1];

        delegate = [(_MNLocationSimulationState *)self delegate];
        v33 = _MNLocationSimulationState_ProceedingToStartOfLeg;
      }
    }

    data5 = objc_alloc_init(v33);
    [delegate changeState:data5];
LABEL_26:

    goto LABEL_27;
  }

  v15 = 0;
LABEL_28:

  return v15;
}

- (void)onEnterState
{
  startRouteCoordinate = self->_startRouteCoordinate;
  if (GEOPolylineCoordinateIsValid())
  {
    v4 = self->_startRouteCoordinate;
    data = [(_MNLocationSimulationState *)self data];
    [data setLastRouteCoordinate:v4];

    _routeToFollow = [(_MNLocationSimulationState_FollowingRoute *)self _routeToFollow];
    v6 = [_routeToFollow legIndexForRouteCoordinate:*&self->_startRouteCoordinate];
    data2 = [(_MNLocationSimulationState *)self data];
    [data2 setCurrentLegIndex:v6];
  }
}

- (_MNLocationSimulationState_FollowingRoute)initWithStartRouteCoordinate:(id)coordinate
{
  v8.receiver = self;
  v8.super_class = _MNLocationSimulationState_FollowingRoute;
  v4 = [(_MNLocationSimulationState_FollowingRoute *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_startRouteCoordinate = coordinate;
    v6 = v4;
  }

  return v5;
}

@end