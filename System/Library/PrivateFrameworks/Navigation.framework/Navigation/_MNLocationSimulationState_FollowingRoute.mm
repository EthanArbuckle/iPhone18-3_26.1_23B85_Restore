@interface _MNLocationSimulationState_FollowingRoute
- ($212C09783140BCCD23384160D545CE0D)_projectedCoordinateOnRouteFrom:(id)a3 overTimeDelta:(double)a4 outSpeed:(double *)a5;
- (BOOL)_shouldProceedToWaypointForLeg:(id)a3;
- (_MNLocationSimulationState_FollowingRoute)initWithStartRouteCoordinate:(id)a3;
- (id)_routeToFollow;
- (id)nextSimulatedLocationWithElapsedTime:(double)a3;
- (void)onEnterState;
- (void)updateWithRouteInfo:(id)a3 rerouteReason:(unint64_t)a4;
@end

@implementation _MNLocationSimulationState_FollowingRoute

- (id)_routeToFollow
{
  v2 = [(_MNLocationSimulationState *)self data];
  v3 = [v2 routeToFollow];

  return v3;
}

- (BOOL)_shouldProceedToWaypointForLeg:(id)a3
{
  v4 = a3;
  v5 = [(_MNLocationSimulationState_FollowingRoute *)self _routeToFollow];
  v6 = [v5 legs];
  v7 = [v6 lastObject];

  if (v7 == v4 || (GEOConfigGetBOOL() & 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v9 = [v4 destination];
    v10 = [v9 chargingInfo];
    v8 = v10 != 0;
  }

  return v8;
}

- ($212C09783140BCCD23384160D545CE0D)_projectedCoordinateOnRouteFrom:(id)a3 overTimeDelta:(double)a4 outSpeed:(double *)a5
{
  if (GEOPolylineCoordinateIsValid())
  {
    v9 = [(_MNLocationSimulationState_FollowingRoute *)self _routeToFollow];
    v10 = [v9 legs];
    v11 = [(_MNLocationSimulationState *)self data];
    v12 = [v10 objectAtIndexedSubscript:{objc_msgSend(v11, "currentLegIndex")}];

    if ([(_MNLocationSimulationState_FollowingRoute *)self _isCoordinate:a3 atEndOfLeg:v12])
    {
      if (a5)
      {
        *a5 = 0.0;
      }

      v13 = ([v9 pointCount] - 1);
    }

    else
    {
      v14 = [v9 stepForPointIndex:a3];
      v15 = [(_MNLocationSimulationState *)self data];
      [v15 speedOverride];
      v17 = v16;

      if (v17 >= 0.0)
      {
        v26 = [(_MNLocationSimulationState *)self data];
        [v26 speedOverride];
        v19 = v27;

        v23 = [(_MNLocationSimulationState *)self data];
        [v23 speedOverride];
        v25 = v28;
      }

      else
      {
        [v14 distance];
        v19 = v18 / [v14 duration];
        v20 = [(_MNLocationSimulationState *)self data];
        [v20 minimumSpeed];
        v22 = v21;

        v23 = [(_MNLocationSimulationState *)self data];
        [v23 speedMultiplier];
        v25 = v24 * fmax(v22, fmin(v19, 50.0));
      }

      if (a5)
      {
        *a5 = v19;
      }

      v13 = [v9 routeCoordinateForDistance:a3 afterRouteCoordinate:v25 * a4];
      v29 = [v14 endRouteCoordinate];
      if (GEOPolylineCoordinateIsABeforeB())
      {
        v13 = v29;
      }
    }
  }

  else
  {
    return *MEMORY[0x1E69A1918];
  }

  return v13;
}

- (void)updateWithRouteInfo:(id)a3 rerouteReason:(unint64_t)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(_MNLocationSimulationState *)self data];
  v8 = [v7 simulationType];

  if (v8 == 2)
  {
    if (a4 == 13)
    {
      v9 = [(_MNLocationSimulationState *)self data];
      [v9 setCurrentLegIndex:0];

      v10 = objc_alloc_init(_MNLocationSimulationState_ProceedingToStartOfLeg);
      v11 = [(_MNLocationSimulationState *)self delegate];
      [v11 changeState:v10];
    }

    else
    {
      v12 = objc_alloc(MEMORY[0x1E69A2548]);
      v13 = [v6 route];
      v10 = [v12 initWithRoute:v13 auditToken:0];

      v14 = objc_alloc(MEMORY[0x1E69A1E70]);
      v15 = [(_MNLocationSimulationState *)self data];
      v16 = [v15 lastLocation];
      v17 = [v14 initWithCLLocation:v16];

      v18 = [(_MNLocationSimulationState_ProceedingToStartOfLeg *)v10 matchToRouteWithLocation:v17];
      v19 = [v18 routeCoordinate];
      v20 = [(_MNLocationSimulationState *)self data];
      [v20 setLastRouteCoordinate:v19];

      v21 = [v18 legIndex];
      v22 = [(_MNLocationSimulationState *)self data];
      [v22 setCurrentLegIndex:v21];

      v23 = MNGetMNNavigationSimulationLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [(_MNLocationSimulationState *)self data];
        v25 = [v24 lastRouteCoordinate];
        v26 = [(_MNLocationSimulationState *)self data];
        v27 = COERCE_FLOAT([v26 lastRouteCoordinate] >> 32);
        v28 = [(_MNLocationSimulationState *)self data];
        v29 = [v28 currentLegIndex];
        [v18 distanceFromRoute];
        v32[0] = 67109888;
        v32[1] = v25;
        v33 = 2048;
        v34 = v27;
        v35 = 1024;
        v36 = v29;
        v37 = 2048;
        v38 = v30;
        _os_log_impl(&dword_1D311E000, v23, OS_LOG_TYPE_DEFAULT, "Putting location at [%u, %0.2f] and leg %d on new route. Was %0.1f meters away", v32, 0x22u);
      }
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (id)nextSimulatedLocationWithElapsedTime:(double)a3
{
  v43 = 0.0;
  v5 = [(_MNLocationSimulationState *)self data];
  v6 = -[_MNLocationSimulationState_FollowingRoute _projectedCoordinateOnRouteFrom:overTimeDelta:outSpeed:](self, "_projectedCoordinateOnRouteFrom:overTimeDelta:outSpeed:", [v5 lastRouteCoordinate], &v43, a3);

  if (GEOPolylineCoordinateIsValid())
  {
    v7 = [(_MNLocationSimulationState_FollowingRoute *)self _routeToFollow];
    [v7 pointAtRouteCoordinate:v6];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v7 courseAtRouteCoordinateIndex:v6];
    v15 = [(_MNLocationSimulationState *)self _locationWithCoordinate:v9 course:v11 speed:v13, v14, v43];
    v16 = [(_MNLocationSimulationState *)self data];
    [v16 setLastRouteCoordinate:v6];

    v17 = [v7 legs];
    v18 = [(_MNLocationSimulationState *)self data];
    v19 = [v17 objectAtIndexedSubscript:{objc_msgSend(v18, "currentLegIndex")}];

    v20 = [v19 legIndex];
    v21 = [v7 legs];
    v22 = [v21 count] - 1;

    LODWORD(v21) = [v7 transportType];
    v23 = [(_MNLocationSimulationState *)self data];
    v24 = [v23 simulationType];

    if (v21)
    {
      v25 = 0;
    }

    else
    {
      v25 = v24 == 2;
    }

    v27 = v25 && v20 >= v22;
    Integer = GEOConfigGetInteger();
    v29 = Integer;
    if (v27 == 1 && Integer == 1 && ([v19 arrivalParameters], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "containsCoordinate:arrivalRegionType:", 6, v9, v11, v13), v30, v31))
    {
      v32 = [(_MNLocationSimulationState *)self delegate];
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
        v32 = [(_MNLocationSimulationState *)self delegate];
        v33 = _MNLocationSimulationState_SearchingForParkingAfterArrival;
      }

      else if ([(_MNLocationSimulationState_FollowingRoute *)self _shouldProceedToWaypointForLeg:v19])
      {
        v32 = [(_MNLocationSimulationState *)self delegate];
        v33 = _MNLocationSimulationState_ProceedingToWaypoint;
      }

      else
      {
        GEOConfigGetDouble();
        if (v35 >= 0.0)
        {
          v32 = [(_MNLocationSimulationState *)self delegate];
          v41 = [_MNLocationSimulationState_WaitingAtWaypoint alloc];
          v39 = [(_MNLocationSimulationState *)self data];
          [v39 currentTime];
          v42 = [_MNLocationSimulationState_WaitingAtWaypoint initWithStartTime:v41 waitDuration:"initWithStartTime:waitDuration:"];
          [v32 changeState:v42];

          goto LABEL_26;
        }

        v36 = [(_MNLocationSimulationState *)self data];
        v37 = [v36 currentLegIndex];
        v38 = [(_MNLocationSimulationState *)self data];
        [v38 setCurrentLegIndex:v37 + 1];

        v32 = [(_MNLocationSimulationState *)self delegate];
        v33 = _MNLocationSimulationState_ProceedingToStartOfLeg;
      }
    }

    v39 = objc_alloc_init(v33);
    [v32 changeState:v39];
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
    v5 = [(_MNLocationSimulationState *)self data];
    [v5 setLastRouteCoordinate:v4];

    v8 = [(_MNLocationSimulationState_FollowingRoute *)self _routeToFollow];
    v6 = [v8 legIndexForRouteCoordinate:*&self->_startRouteCoordinate];
    v7 = [(_MNLocationSimulationState *)self data];
    [v7 setCurrentLegIndex:v6];
  }
}

- (_MNLocationSimulationState_FollowingRoute)initWithStartRouteCoordinate:(id)a3
{
  v8.receiver = self;
  v8.super_class = _MNLocationSimulationState_FollowingRoute;
  v4 = [(_MNLocationSimulationState_FollowingRoute *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_startRouteCoordinate = a3;
    v6 = v4;
  }

  return v5;
}

@end