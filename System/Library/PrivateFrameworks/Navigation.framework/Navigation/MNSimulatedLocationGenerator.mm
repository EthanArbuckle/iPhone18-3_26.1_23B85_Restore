@interface MNSimulatedLocationGenerator
- ($212C09783140BCCD23384160D545CE0D)_simulationStartRouteCoordinate;
- (MNSimulatedLocationGenerator)initWithSimulationParameters:(id)a3;
- (id)nextSimulatedLocationWithElapsedTime:(double)a3;
- (void)_updateStartState;
- (void)changeState:(id)a3;
- (void)setSpeedOverride:(double)a3;
- (void)updatePosition:(double)a3;
- (void)updateWithRouteInfo:(id)a3 rerouteReason:(unint64_t)a4;
@end

@implementation MNSimulatedLocationGenerator

- ($212C09783140BCCD23384160D545CE0D)_simulationStartRouteCoordinate
{
  v2 = [(_MNLocationSimulationData *)self->_data routeToFollow];
  Integer = GEOConfigGetInteger();
  if (Integer < 0 || (v4 = Integer) == 0)
  {
    LODWORD(v13) = *MEMORY[0x1E69A1918];
    v14 = *(MEMORY[0x1E69A1918] + 4);
  }

  else
  {
    GEOConfigGetDouble();
    v6 = v5;
    v7 = [v2 legs];
    v8 = [v7 count];
    if (v6 <= 0.0)
    {

      v15 = [v2 legs];
      v16 = v15;
      if (v4 >= v8)
      {
        v17 = [v15 lastObject];
        v18 = [v17 endPointIndex];
      }

      else
      {
        v17 = [v15 objectAtIndexedSubscript:v4];
        v18 = [v17 startPointIndex];
      }

      LODWORD(v13) = v18;

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
      v11 = [v2 legs];
      v12 = [v11 objectAtIndexedSubscript:v10];

      v13 = [v2 routeCoordinateAtDistance:objc_msgSend(v12 beforeRouteCoordinate:{"endRouteCoordinate"), v6}];
      if ([v12 startPointIndex] > v13)
      {
        v13 = [v12 startRouteCoordinate];
      }

      v14 = HIDWORD(v13);
    }
  }

  return (v13 | (v14 << 32));
}

- (void)_updateStartState
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(_MNLocationSimulationData *)self->_data routeToFollow];

  if (!v3)
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

  v4 = [(MNSimulatedLocationGenerator *)self _simulationStartRouteCoordinate];
  if ((GEOPolylineCoordinateIsValid() & 1) == 0)
  {
    v5 = [(_MNLocationSimulationData *)self->_data lastLocation];

    if (v5)
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

  v8 = [(_MNLocationSimulationData *)self->_data routeToFollow];
  v9 = [v8 legIndexForRouteCoordinate:v4];

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

  v15 = [[v16 alloc] initWithStartRouteCoordinate:v4];
LABEL_20:
  v17 = v15;
  [(MNSimulatedLocationGenerator *)self changeState:v15];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)changeState:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  p_currentState = &self->_currentState;
  v7 = [(_MNLocationSimulationState *)self->_currentState type];
  if (v7 != [v5 type])
  {
    [(_MNLocationSimulationState *)self->_currentState setDelegate:0];
    [v5 setDelegate:self];
    [v5 setData:self->_data];
    v8 = MNGetMNNavigationSimulationLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(_MNLocationSimulationState *)*p_currentState type];
      if (v9 > 0xA)
      {
        v10 = @"Unknown";
      }

      else
      {
        v10 = off_1E842BE18[v9];
      }

      v11 = [v5 type];
      if (v11 > 0xA)
      {
        v12 = @"Unknown";
      }

      else
      {
        v12 = off_1E842BE18[v11];
      }

      v14 = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v12;
    }

    [(_MNLocationSimulationState *)*p_currentState onLeaveState];
    objc_storeStrong(p_currentState, a3);
    [v5 onEnterState];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setSpeedOverride:(double)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3 >= 0.0)
  {
    [(_MNLocationSimulationData *)self->_data setSpeedOverride:a3];
    v8 = MNGetMNNavigationSimulationLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      v14 = a3;
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
      [(_MNLocationSimulationData *)data setSpeedOverride:a3];
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
        v14 = v7;
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

- (id)nextSimulatedLocationWithElapsedTime:(double)a3
{
  v5 = [(_MNLocationSimulationData *)self->_data routeToFollow];

  if (v5)
  {
    v6 = [(_MNLocationSimulationData *)self->_data routeToFollow];
    if ([v6 pointCount])
    {
      data = self->_data;
      [(_MNLocationSimulationData *)data currentTime];
      [(_MNLocationSimulationData *)data setCurrentTime:v8 + a3];
      v9 = self->_currentState;
      v10 = [(_MNLocationSimulationState *)v9 nextSimulatedLocationWithElapsedTime:a3];
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

- (void)updatePosition:(double)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = fmin(fmax(a3, 0.0), 1.0);
  v5 = [(_MNLocationSimulationData *)self->_data routeToFollow];
  [v5 distance];
  v7 = v6;

  v8 = v7 * v4;
  v9 = [(_MNLocationSimulationData *)self->_data routeToFollow];
  v10 = [v9 routeCoordinateForDistanceAfterStart:v8];

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

- (void)updateWithRouteInfo:(id)a3 rerouteReason:(unint64_t)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(_MNLocationSimulationData *)self->_data setRouteInfo:v6];
  v7 = [v6 route];
  if ([v7 pointCount])
  {
    v8 = MEMORY[0x1E69A1E80];
    [v7 pointAt:0];
    v9 = [v8 isLocationShiftRequiredForCoordinate:?];
  }

  else
  {
    v9 = 0;
  }

  [(_MNLocationSimulationData *)self->_data setIsChinaShifted:v9];
  v10 = [(_MNLocationSimulationData *)self->_data lastLocation];

  if (v10)
  {
    v11 = MNGetMNNavigationSimulationLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v6 route];
      v13 = [v12 name];
      if (a4 - 1 > 0xF)
      {
        v14 = @"Unknown";
      }

      else
      {
        v14 = off_1E842BD98[a4 - 1];
      }

      v16 = [(_MNLocationSimulationState *)self->_currentState type];
      if (v16 > 0xA)
      {
        v17 = @"Unknown";
      }

      else
      {
        v17 = off_1E842BE18[v16];
      }

      v19 = 138412802;
      v20 = v13;
      v21 = 2112;
      v22 = v14;
      v23 = 2112;
      v24 = v17;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEFAULT, "Route changed to %@. Reason: %@. Current state: %@", &v19, 0x20u);
    }

    [(_MNLocationSimulationState *)self->_currentState updateWithRouteInfo:v6 rerouteReason:a4];
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

- (MNSimulatedLocationGenerator)initWithSimulationParameters:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = MNSimulatedLocationGenerator;
  v5 = [(MNSimulatedLocationGenerator *)&v19 init];
  if (v5)
  {
    v6 = objc_alloc_init(_MNLocationSimulationData);
    data = v5->_data;
    v5->_data = v6;

    -[_MNLocationSimulationData setSimulationType:](v5->_data, "setSimulationType:", [v4 simulationType]);
    v8 = [v4 initialRoute];
    [(_MNLocationSimulationData *)v5->_data setRouteInfo:v8];

    v9 = [v4 initialRoute];
    [(_MNLocationSimulationData *)v5->_data setInitialRouteInfo:v9];

    v10 = [v4 startingLocation];
    [(_MNLocationSimulationData *)v5->_data setLastLocation:v10];

    [(_MNLocationSimulationData *)v5->_data setCurrentTime:0.0];
    [(_MNLocationSimulationData *)v5->_data setCurrentLegIndex:0];
    [(_MNLocationSimulationData *)v5->_data setEndAtFinalDestination:1];
    v11 = [v4 auditToken];
    [(_MNLocationSimulationData *)v5->_data setAuditToken:v11];

    v12 = [v4 requestingAppIdentifier];
    [(_MNLocationSimulationData *)v5->_data setRequestingAppIdentifier:v12];

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
    v14 = [(_MNLocationSimulationData *)v5->_data routeInfo];
    v15 = [v14 route];

    if ([v15 pointCount])
    {
      v16 = MEMORY[0x1E69A1E80];
      [v15 pointAt:0];
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