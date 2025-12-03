@interface _MNLocationSimulationState
- ($1AB5FA073B851C12C2339EC22442E995)_projectedCoordinateOffRouteFrom:(id)from toCoordinate:(id)coordinate overTimeDelta:(double)delta outCourse:(double *)course outSpeed:(double *)speed;
- (_MNLocationSimulationStateDelegate)delegate;
- (double)_courseFromCoordinate:(id)coordinate toCoordinate:(id)toCoordinate;
- (id)_followRouteStateWithStartRouteCoordinate:(id)coordinate;
- (id)_locationWithCoordinate:(id)coordinate course:(double)course speed:(double)speed;
- (id)nextSimulatedLocationWithElapsedTime:(double)time;
- (int64_t)type;
- (void)updateWithRouteInfo:(id)info rerouteReason:(unint64_t)reason;
@end

@implementation _MNLocationSimulationState

- (_MNLocationSimulationStateDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)_courseFromCoordinate:(id)coordinate toCoordinate:(id)toCoordinate
{
  GEOBearingFromCoordinateToCoordinate();
    ;
  }

    ;
  }

  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)_projectedCoordinateOffRouteFrom:(id)from toCoordinate:(id)coordinate overTimeDelta:(double)delta outCourse:(double *)course outSpeed:(double *)speed
{
  var0 = coordinate.var0;
  var2 = from.var2;
  var1 = from.var1;
  v10 = from.var0;
  v11 = -180.0;
  v12 = 1.79769313e308;
  if (fabs(from.var1) > 180.0 || from.var0 < -90.0)
  {
    v13 = -180.0;
    goto LABEL_15;
  }

  v36 = var2;
  v13 = -180.0;
  if (from.var0 <= 90.0)
  {
    v17 = coordinate.var2;
    v18 = coordinate.var1;
    data = [(_MNLocationSimulationState *)self data];
    [data speedOverride];
    v22 = v21;

    v23 = 5.0;
    if (v22 >= 0.0)
    {
      data2 = [(_MNLocationSimulationState *)self data];
      [data2 speedOverride];
      v23 = v25;
    }

    if (speed)
    {
      *speed = v23;
    }

    v26 = v23 * delta;
    GEOCalculateDistance();
    if (v26 <= v27)
    {
      v28 = v26 / v27;
      v13 = v10 + v28 * (var0 - v10);
      v11 = var1 + v28 * (v18 - var1);
      if (course)
      {
        GEOCalculateDistance();
        if (v29 >= 0.000001)
        {
          [(_MNLocationSimulationState *)self _courseFromCoordinate:v10 toCoordinate:var1, v36, var0, v18, v17];
          *course = v33;
          v12 = v36;
          goto LABEL_15;
        }

        data3 = [(_MNLocationSimulationState *)self data];
        lastLocation = [data3 lastLocation];
        [lastLocation course];
        *course = v32;
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

- (id)_followRouteStateWithStartRouteCoordinate:(id)coordinate
{
  data = [(_MNLocationSimulationState *)self data];
  simulationType = [data simulationType];

  v6 = &off_1E8428FF0;
  if (simulationType != 4)
  {
    v6 = off_1E8428FE0;
  }

  v7 = [objc_alloc(*v6) initWithStartRouteCoordinate:coordinate];

  return v7;
}

- (id)_locationWithCoordinate:(id)coordinate course:(double)course speed:(double)speed
{
  var2 = coordinate.var2;
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  data = [(_MNLocationSimulationState *)self data];
  if ([data isChinaShifted])
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
  speedCopy = speed;
  v21 = 0;
  courseCopy = course;
  v23 = 0x4024000000000000;
  Current = CFAbsoluteTimeGetCurrent();
  v25 = 0;
  v26 = 0x100000000;
  v27 = var0;
  v28 = var1;
  courseCopy2 = course;
  v30 = 0;
  v31 = v11;
  v32 = v11;
  v34 = 0;
  v33 = 0;
  v12 = [[MNLocation alloc] initWithClientLocation:&v14];

  return v12;
}

- (void)updateWithRouteInfo:(id)info rerouteReason:(unint64_t)reason
{
  v36 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  data = [(_MNLocationSimulationState *)self data];
  if ([data simulationType] == 2)
  {
  }

  else
  {
    data2 = [(_MNLocationSimulationState *)self data];
    simulationType = [data2 simulationType];

    if (simulationType != 4)
    {
      goto LABEL_16;
    }
  }

  lastLocation = [(_MNLocationSimulationData *)self->_data lastLocation];
  [lastLocation coordinate];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  route = [infoCopy route];
  legs = [route legs];

  v12 = [legs countByEnumeratingWithState:&v29 objects:v35 count:16];
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
          objc_enumerationMutation(legs);
        }

        v17 = *(*(&v29 + 1) + 8 * v16);
        route2 = [infoCopy route];
        [route2 pointAtRouteCoordinate:{objc_msgSend(v17, "startRouteCoordinate")}];

        GEOCalculateDistance();
        if (v19 < v15)
        {
          v20 = v19;
          legIndex = [v17 legIndex];
          data3 = [(_MNLocationSimulationState *)self data];
          [data3 setCurrentLegIndex:legIndex];

          v15 = v20;
        }

        ++v16;
      }

      while (v13 != v16);
      v13 = [legs countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v13);
  }

  v23 = MNGetMNNavigationSimulationLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    data4 = [(_MNLocationSimulationState *)self data];
    currentLegIndex = [data4 currentLegIndex];
    *buf = 67109120;
    v34 = currentLegIndex;
    _os_log_impl(&dword_1D311E000, v23, OS_LOG_TYPE_DEFAULT, "Proceeding to start of leg %d of new route.", buf, 8u);
  }

  delegate = [(_MNLocationSimulationState *)self delegate];
  v27 = objc_alloc_init(_MNLocationSimulationState_ProceedingToStartOfLeg);
  [delegate changeState:v27];

LABEL_16:
  v28 = *MEMORY[0x1E69E9840];
}

- (id)nextSimulatedLocationWithElapsedTime:(double)time
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