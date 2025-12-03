@interface MNSimulatedLocationGenerator
- ($212C09783140BCCD23384160D545CE0D)_simulationStartRouteCoordinate;
- (MNSimulatedLocationGenerator)initWithSimulationParameters:(id)parameters;
- (id)nextSimulatedLocationWithElapsedTime:(double)time;
- (void)_updateStartState;
- (void)changeState:(id)state;
- (void)setSpeedOverride:(double)override;
- (void)updatePosition:(double)position;
- (void)updateWithRouteInfo:(id)info rerouteReason:(unint64_t)reason;
@end

@implementation MNSimulatedLocationGenerator

- ($212C09783140BCCD23384160D545CE0D)_simulationStartRouteCoordinate
{
  routeToFollow = [(_MNLocationSimulationData *)self->_data routeToFollow];
  Integer = GEOConfigGetInteger();
  if (Integer < 0 || (v4 = Integer) == 0)
  {
    LODWORD(startRouteCoordinate) = *MEMORY[0x1E69A1918];
    v14 = *(MEMORY[0x1E69A1918] + 4);
  }

  else
  {
    GEOConfigGetDouble();
    v6 = v5;
    legs = [routeToFollow legs];
    v8 = [legs count];
    if (v6 <= 0.0)
    {

      legs2 = [routeToFollow legs];
      v16 = legs2;
      if (v4 >= v8)
      {
        lastObject = [legs2 lastObject];
        endPointIndex = [lastObject endPointIndex];
      }

      else
      {
        lastObject = [legs2 objectAtIndexedSubscript:v4];
        endPointIndex = [lastObject startPointIndex];
      }

      LODWORD(startRouteCoordinate) = endPointIndex;

      v14 = 0;
    }

    else
    {

      if (v4 >= v8)
      {
        v9 = v8;
      }

      else
      {
        v9 = v4;
      }

      v10 = v9 - 1;
      legs3 = [routeToFollow legs];
      v12 = [legs3 objectAtIndexedSubscript:v10];

      startRouteCoordinate = [routeToFollow routeCoordinateAtDistance:objc_msgSend(v12 beforeRouteCoordinate:{"endRouteCoordinate"), v6}];
      if ([v12 startPointIndex] > startRouteCoordinate)
      {
        startRouteCoordinate = [v12 startRouteCoordinate];
      }

      v14 = HIDWORD(startRouteCoordinate);
    }
  }

  return (startRouteCoordinate | (v14 << 32));
}

- (void)_updateStartState
{
  v23 = *MEMORY[0x1E69E9840];
  routeToFollow = [(_MNLocationSimulationData *)self->_data routeToFollow];

  if (!routeToFollow)
  {
    v14 = MNGetMNNavigationSimulationLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_DEFAULT, "Location simulation starting at end state because no route was provided.", &v19, 2u);
    }

    [(_MNLocationSimulationData *)self->_data setLastRouteCoordinate:*MEMORY[0x1E69A1918]];
    v7 = _MNLocationSimulationState_End;
    goto LABEL_13;
  }

  _simulationStartRouteCoordinate = [(MNSimulatedLocationGenerator *)self _simulationStartRouteCoordinate];
  if ((GEOPolylineCoordinateIsValid() & 1) == 0)
  {
    lastLocation = [(_MNLocationSimulationData *)self->_data lastLocation];

    if (lastLocation)
    {
      v6 = MNGetMNNavigationSimulationLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
      }

      [(_MNLocationSimulationData *)self->_data setLastRouteCoordinate:*MEMORY[0x1E69A1918]];
      v7 = _MNLocationSimulationState_ProceedingToStartOfLeg;
LABEL_13:
      v15 = objc_alloc_init(v7);
      goto LABEL_20;
    }
  }

  routeToFollow2 = [(_MNLocationSimulationData *)self->_data routeToFollow];
  v9 = [routeToFollow2 legIndexForRouteCoordinate:_simulationStartRouteCoordinate];

  IsValid = GEOPolylineCoordinateIsValid();
  v11 = MNGetMNNavigationSimulationLog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (IsValid)
  {
    if (v12)
    {
      v13 = GEOPolylineCoordinateAsFullString();
      v19 = 138412546;
      v20 = v13;
      v21 = 1024;
      v22 = v9;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEFAULT, "Location simulation starting on route due to debug settings. Route coordinate: [%@] | Leg: %d", &v19, 0x12u);
    }
  }

  else if (v12)
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEFAULT, "Location simulation starting on route because there is no initial location.", &v19, 2u);
  }

  if ([(_MNLocationSimulationData *)self->_data simulationType]== 4)
  {
    v16 = _MNLocationSimulationState_SearchingForOffRoute;
  }

  else
  {
    v16 = _MNLocationSimulationState_FollowingRoute;
  }

  v15 = [[v16 alloc] initWithStartRouteCoordinate:_simulationStartRouteCoordinate];
LABEL_20:
  v17 = v15;
  [(MNSimulatedLocationGenerator *)self changeState:v15];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)changeState:(id)state
{
  v18 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  p_currentState = &self->_currentState;
  type = [(_MNLocationSimulationState *)self->_currentState type];
  if (type != [stateCopy type])
  {
    [(_MNLocationSimulationState *)self->_currentState setDelegate:0];
    [stateCopy setDelegate:self];
    [stateCopy setData:self->_data];
    v8 = MNGetMNNavigationSimulationLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      type2 = [(_MNLocationSimulationState *)*p_currentState type];
      if (type2 > 0xA)
      {
        v10 = @"Unknown";
      }

      else
      {
        v10 = off_1E842BE18[type2];
      }

      type3 = [stateCopy type];
      if (type3 > 0xA)
      {
        v12 = @"Unknown";
      }

      else
      {
        v12 = off_1E842BE18[type3];
      }

      v14 = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v12;
    }

    [(_MNLocationSimulationState *)*p_currentState onLeaveState];
    objc_storeStrong(p_currentState, state);
    [stateCopy onEnterState];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setSpeedOverride:(double)override
{
  v15 = *MEMORY[0x1E69E9840];
  if (override >= 0.0)
  {
    [(_MNLocationSimulationData *)self->_data setSpeedOverride:override];
    v8 = MNGetMNNavigationSimulationLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      overrideCopy = override;
      v9 = "Setting speed override to %0.1f m/s.";
      goto LABEL_7;
    }
  }

  else
  {
    GEOConfigGetDouble();
    data = self->_data;
    if (v5 <= 0.0)
    {
      [(_MNLocationSimulationData *)data setSpeedOverride:override];
      v8 = MNGetMNNavigationSimulationLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        v9 = "Removing speed override.";
        v10 = v8;
        v11 = 2;
        goto LABEL_10;
      }
    }

    else
    {
      v7 = v5;
      [(_MNLocationSimulationData *)data setSpeedOverride:?];
      v8 = MNGetMNNavigationSimulationLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 134217984;
        overrideCopy = v7;
LABEL_7:
        v10 = v8;
        v11 = 12;
LABEL_10:
        _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v13, v11);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)nextSimulatedLocationWithElapsedTime:(double)time
{
  routeToFollow = [(_MNLocationSimulationData *)self->_data routeToFollow];

  if (routeToFollow)
  {
    routeToFollow2 = [(_MNLocationSimulationData *)self->_data routeToFollow];
    if ([routeToFollow2 pointCount])
    {
      data = self->_data;
      [(_MNLocationSimulationData *)data currentTime];
      [(_MNLocationSimulationData *)data setCurrentTime:v8 + time];
      v9 = self->_currentState;
      v10 = [(_MNLocationSimulationState *)v9 nextSimulatedLocationWithElapsedTime:time];
      [(_MNLocationSimulationData *)self->_data setLastLocation:v10];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "MNSimulatedLocationGenerator cannot simulate with no route.", buf, 2u);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v12 = 0;
      _os_log_fault_impl(&dword_1D311E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: NO", v12, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (void)updatePosition:(double)position
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = fmin(fmax(position, 0.0), 1.0);
  routeToFollow = [(_MNLocationSimulationData *)self->_data routeToFollow];
  [routeToFollow distance];
  v7 = v6;

  v8 = v7 * v4;
  routeToFollow2 = [(_MNLocationSimulationData *)self->_data routeToFollow];
  v10 = [routeToFollow2 routeCoordinateForDistanceAfterStart:v8];

  v11 = MNGetMNNavigationSimulationLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = GEOPolylineCoordinateAsShortString();
    v16[0] = 67109634;
    v16[1] = (v4 * 100.0);
    v17 = 2112;
    v18 = v12;
    v19 = 2048;
    v20 = v8;
    _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEFAULT, "Setting simulation position to %d%% / [%@] / %0.1f meters.", v16, 0x1Cu);
  }

  if ([(_MNLocationSimulationState *)self->_currentState type]== 2)
  {
    v13 = objc_alloc_init(_MNLocationSimulationState_ProceedingToStartOfLeg);
    [(MNSimulatedLocationGenerator *)self changeState:v13];
  }

  v14 = [(_MNLocationSimulationState *)self->_currentState _followRouteStateWithStartRouteCoordinate:v10];
  [(MNSimulatedLocationGenerator *)self changeState:v14];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)updateWithRouteInfo:(id)info rerouteReason:(unint64_t)reason
{
  v25 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  [(_MNLocationSimulationData *)self->_data setRouteInfo:infoCopy];
  route = [infoCopy route];
  if ([route pointCount])
  {
    v8 = MEMORY[0x1E69A1E80];
    [route pointAt:0];
    v9 = [v8 isLocationShiftRequiredForCoordinate:?];
  }

  else
  {
    v9 = 0;
  }

  [(_MNLocationSimulationData *)self->_data setIsChinaShifted:v9];
  lastLocation = [(_MNLocationSimulationData *)self->_data lastLocation];

  if (lastLocation)
  {
    v11 = MNGetMNNavigationSimulationLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      route2 = [infoCopy route];
      name = [route2 name];
      if (reason - 1 > 0xF)
      {
        v14 = @"Unknown";
      }

      else
      {
        v14 = off_1E842BD98[reason - 1];
      }

      type = [(_MNLocationSimulationState *)self->_currentState type];
      if (type > 0xA)
      {
        v17 = @"Unknown";
      }

      else
      {
        v17 = off_1E842BE18[type];
      }

      v19 = 138412802;
      v20 = name;
      v21 = 2112;
      v22 = v14;
      v23 = 2112;
      v24 = v17;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEFAULT, "Route changed to %@. Reason: %@. Current state: %@", &v19, 0x20u);
    }

    [(_MNLocationSimulationState *)self->_currentState updateWithRouteInfo:infoCopy rerouteReason:reason];
  }

  else
  {
    [(MNSimulatedLocationGenerator *)self _updateStartState];
    v15 = MNGetMNNavigationSimulationLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1D311E000, v15, OS_LOG_TYPE_DEFAULT, "Route changed but no previous location.", &v19, 2u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (MNSimulatedLocationGenerator)initWithSimulationParameters:(id)parameters
{
  parametersCopy = parameters;
  v19.receiver = self;
  v19.super_class = MNSimulatedLocationGenerator;
  v5 = [(MNSimulatedLocationGenerator *)&v19 init];
  if (v5)
  {
    v6 = objc_alloc_init(_MNLocationSimulationData);
    data = v5->_data;
    v5->_data = v6;

    -[_MNLocationSimulationData setSimulationType:](v5->_data, "setSimulationType:", [parametersCopy simulationType]);
    initialRoute = [parametersCopy initialRoute];
    [(_MNLocationSimulationData *)v5->_data setRouteInfo:initialRoute];

    initialRoute2 = [parametersCopy initialRoute];
    [(_MNLocationSimulationData *)v5->_data setInitialRouteInfo:initialRoute2];

    startingLocation = [parametersCopy startingLocation];
    [(_MNLocationSimulationData *)v5->_data setLastLocation:startingLocation];

    [(_MNLocationSimulationData *)v5->_data setCurrentTime:0.0];
    [(_MNLocationSimulationData *)v5->_data setCurrentLegIndex:0];
    [(_MNLocationSimulationData *)v5->_data setEndAtFinalDestination:1];
    auditToken = [parametersCopy auditToken];
    [(_MNLocationSimulationData *)v5->_data setAuditToken:auditToken];

    requestingAppIdentifier = [parametersCopy requestingAppIdentifier];
    [(_MNLocationSimulationData *)v5->_data setRequestingAppIdentifier:requestingAppIdentifier];

    GEOConfigGetDouble();
    [(_MNLocationSimulationData *)v5->_data setSpeedOverride:?];
    [(_MNLocationSimulationData *)v5->_data speedOverride];
    if (v13 == 0.0)
    {
      [(_MNLocationSimulationData *)v5->_data setSpeedOverride:-1.0];
    }

    GEOConfigGetDouble();
    [(_MNLocationSimulationData *)v5->_data setSpeedMultiplier:?];
    GEOConfigGetDouble();
    [(_MNLocationSimulationData *)v5->_data setMinimumSpeed:?];
    [(MNSimulatedLocationGenerator *)v5 _updateStartState];
    routeInfo = [(_MNLocationSimulationData *)v5->_data routeInfo];
    route = [routeInfo route];

    if ([route pointCount])
    {
      v16 = MEMORY[0x1E69A1E80];
      [route pointAt:0];
      v17 = [v16 isLocationShiftRequiredForCoordinate:?];
    }

    else
    {
      v17 = 0;
    }

    [(_MNLocationSimulationData *)v5->_data setIsChinaShifted:v17];
  }

  return v5;
}

@end