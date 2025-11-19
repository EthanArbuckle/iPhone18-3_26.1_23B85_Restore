@interface _MNLocationSimulationState
- ($1AB5FA073B851C12C2339EC22442E995)_projectedCoordinateOffRouteFrom:(id)a3 toCoordinate:(id)a4 overTimeDelta:(double)a5 outCourse:(double *)a6 outSpeed:(double *)a7;
- (_MNLocationSimulationStateDelegate)delegate;
- (double)_courseFromCoordinate:(id)a3 toCoordinate:(id)a4;
- (id)_followRouteStateWithStartRouteCoordinate:(id)a3;
- (id)_locationWithCoordinate:(id)a3 course:(double)a4 speed:(double)a5;
- (id)nextSimulatedLocationWithElapsedTime:(double)a3;
- (int64_t)type;
- (void)updateWithRouteInfo:(id)a3 rerouteReason:(unint64_t)a4;
@end

@implementation _MNLocationSimulationState

- (_MNLocationSimulationStateDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)_courseFromCoordinate:(id)a3 toCoordinate:(id)a4
{
  GEOBearingFromCoordinateToCoordinate();
    ;
  }

    ;
  }

  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)_projectedCoordinateOffRouteFrom:(id)a3 toCoordinate:(id)a4 overTimeDelta:(double)a5 outCourse:(double *)a6 outSpeed:(double *)a7
{
  var0 = a4.var0;
  var2 = a3.var2;
  var1 = a3.var1;
  v10 = a3.var0;
  v11 = -180.0;
  v12 = 1.79769313e308;
  if (fabs(a3.var1) > 180.0 || a3.var0 < -90.0)
  {
    v13 = -180.0;
    goto LABEL_15;
  }

  v36 = var2;
  v13 = -180.0;
  if (a3.var0 <= 90.0)
  {
    v17 = a4.var2;
    v18 = a4.var1;
    v20 = [(_MNLocationSimulationState *)self data];
    [v20 speedOverride];
    v22 = v21;

    v23 = 5.0;
    if (v22 >= 0.0)
    {
      v24 = [(_MNLocationSimulationState *)self data];
      [v24 speedOverride];
      v23 = v25;
    }

    if (a7)
    {
      *a7 = v23;
    }

    v26 = v23 * a5;
    GEOCalculateDistance();
    if (v26 <= v27)
    {
      v28 = v26 / v27;
      v13 = v10 + v28 * (var0 - v10);
      v11 = var1 + v28 * (v18 - var1);
      if (a6)
      {
        GEOCalculateDistance();
        if (v29 >= 0.000001)
        {
          [(_MNLocationSimulationState *)self _courseFromCoordinate:v10 toCoordinate:var1, v36, var0, v18, v17];
          *a6 = v33;
          v12 = v36;
          goto LABEL_15;
        }

        v30 = [(_MNLocationSimulationState *)self data];
        v31 = [v30 lastLocation];
        [v31 course];
        *a6 = v32;
      }

      v12 = v36;
    }

    else
    {
      v12 = v17;
      v11 = v18;
      v13 = var0;
    }
  }

LABEL_15:
  v34 = v13;
  v35 = v11;
  result.var2 = v12;
  result.var1 = v35;
  result.var0 = v34;
  return result;
}

- (id)_followRouteStateWithStartRouteCoordinate:(id)a3
{
  v4 = [(_MNLocationSimulationState *)self data];
  v5 = [v4 simulationType];

  v6 = &off_1E8428FF0;
  if (v5 != 4)
  {
    v6 = off_1E8428FE0;
  }

  v7 = [objc_alloc(*v6) initWithStartRouteCoordinate:a3];

  return v7;
}

- (id)_locationWithCoordinate:(id)a3 course:(double)a4 speed:(double)a5
{
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  v10 = [(_MNLocationSimulationState *)self data];
  if ([v10 isChinaShifted])
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v14 = 1;
  v15 = var0;
  v16 = var1;
  v17 = 0x4014000000000000;
  v18 = var2;
  v19 = 0x3FF0000000000000;
  v20 = a5;
  v21 = 0;
  v22 = a4;
  v23 = 0x4024000000000000;
  Current = CFAbsoluteTimeGetCurrent();
  v25 = 0;
  v26 = 0x100000000;
  v27 = var0;
  v28 = var1;
  v29 = a4;
  v30 = 0;
  v31 = v11;
  v32 = v11;
  v34 = 0;
  v33 = 0;
  v12 = [[MNLocation alloc] initWithClientLocation:&v14];

  return v12;
}

- (void)updateWithRouteInfo:(id)a3 rerouteReason:(unint64_t)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(_MNLocationSimulationState *)self data];
  if ([v6 simulationType] == 2)
  {
  }

  else
  {
    v7 = [(_MNLocationSimulationState *)self data];
    v8 = [v7 simulationType];

    if (v8 != 4)
    {
      goto LABEL_16;
    }
  }

  v9 = [(_MNLocationSimulationData *)self->_data lastLocation];
  [v9 coordinate];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = [v5 route];
  v11 = [v10 legs];

  v12 = [v11 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    v15 = 1.79769313e308;
    do
    {
      v16 = 0;
      do
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v29 + 1) + 8 * v16);
        v18 = [v5 route];
        [v18 pointAtRouteCoordinate:{objc_msgSend(v17, "startRouteCoordinate")}];

        GEOCalculateDistance();
        if (v19 < v15)
        {
          v20 = v19;
          v21 = [v17 legIndex];
          v22 = [(_MNLocationSimulationState *)self data];
          [v22 setCurrentLegIndex:v21];

          v15 = v20;
        }

        ++v16;
      }

      while (v13 != v16);
      v13 = [v11 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v13);
  }

  v23 = MNGetMNNavigationSimulationLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [(_MNLocationSimulationState *)self data];
    v25 = [v24 currentLegIndex];
    *buf = 67109120;
    v34 = v25;
    _os_log_impl(&dword_1D311E000, v23, OS_LOG_TYPE_DEFAULT, "Proceeding to start of leg %d of new route.", buf, 8u);
  }

  v26 = [(_MNLocationSimulationState *)self delegate];
  v27 = objc_alloc_init(_MNLocationSimulationState_ProceedingToStartOfLeg);
  [v26 changeState:v27];

LABEL_16:
  v28 = *MEMORY[0x1E69E9840];
}

- (id)nextSimulatedLocationWithElapsedTime:(double)a3
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *v4 = 0;
    _os_log_fault_impl(&dword_1D311E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unreachable reached: Must be implemented by subclasses.", v4, 2u);
  }

  return 0;
}

- (int64_t)type
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_1D311E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unreachable reached: Must be implemented by subclasses.", v3, 2u);
  }

  return 0;
}

@end