@interface MNTimeAndDistanceUpdater
- (MNTimeAndDistanceUpdater)initWithNavigationSessionState:(id)a3;
- (MNTimeAndDistanceUpdaterDelegate)delegate;
- (id)_batteryChargeInfoForRoute:(id)a3 routeCoordinate:(id)a4;
- (id)_routeDistanceInfoForRoute:(id)a3 routeCoordinate:(id)a4;
- (void)_logDisplayETAInfo:(id)a3;
- (void)_startTimerToNextMinute;
- (void)dealloc;
- (void)setLocation:(id)a3 notificationType:(unint64_t)a4;
- (void)setRoutes:(id)a3 mainRoute:(id)a4 location:(id)a5 notificationType:(unint64_t)a6;
- (void)updateDisplayETAForRoute:(id)a3 notificationType:(unint64_t)a4;
@end

@implementation MNTimeAndDistanceUpdater

- (MNTimeAndDistanceUpdaterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_logDisplayETAInfo:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  mainRoute = self->_mainRoute;
  if (mainRoute)
  {
    v6 = [(MNActiveRouteInfo *)mainRoute routeID];
    v7 = [v4 routeID];
    v8 = [v6 isEqual:v7];

    if (v8)
    {
      v9 = [v4 isUsingServerDisplayETA];
      v10 = 1;
      if (v9)
      {
        v10 = 2;
      }

      if (v10 != self->_currentLogType)
      {
        v11 = v9;
        self->_currentLogType = v10;
        v12 = MNGetMNTimeAndDistanceUpdaterLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          if (v11)
          {
            v13 = @"server";
          }

          else
          {
            v13 = @"client";
          }

          v14 = [v4 routeID];
          v16 = 138412802;
          v17 = v13;
          v18 = 2112;
          v19 = v14;
          v20 = 2112;
          v21 = v4;
          _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_INFO, "Calculating %@ display ETA for route %@: %@", &v16, 0x20u);
        }
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_startTimerToNextMinute
{
  v24 = *MEMORY[0x1E69E9840];
  [(NSTimer *)self->_minuteTimer invalidate];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v4 = 60.0 - (v3 % 0x3C);
  if (v4 < 0.0 || v4 > 60.0)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid update time interval"];
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *location = 136316162;
      *&location[4] = "[MNTimeAndDistanceUpdater _startTimerToNextMinute]";
      v16 = 2080;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Navigation/TrafficETA/MNTimeAndDistanceUpdater.m";
      v18 = 1024;
      v19 = 256;
      v20 = 2080;
      v21 = "remainingSecondsToNextMinute >= 0 && remainingSecondsToNextMinute <= 60";
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", location, 0x30u);
    }
  }

  objc_initWeak(location, self);
  v6 = MEMORY[0x1E695DFF0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__MNTimeAndDistanceUpdater__startTimerToNextMinute__block_invoke;
  v13[3] = &unk_1E8430A38;
  objc_copyWeak(&v14, location);
  v7 = [v6 scheduledTimerWithTimeInterval:0 repeats:v13 block:v4];
  minuteTimer = self->_minuteTimer;
  self->_minuteTimer = v7;

  objc_destroyWeak(&v14);
  objc_destroyWeak(location);
  v9 = *MEMORY[0x1E69E9840];
}

void __51__MNTimeAndDistanceUpdater__startTimerToNextMinute__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = WeakRetained[3];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [v2 updateDisplayETAForRoute:*(*(&v9 + 1) + 8 * v7++) notificationType:{1, v9}];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    [v2 _startTimerToNextMinute];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)_batteryChargeInfoForRoute:(id)a3 routeCoordinate:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 route];
  v7 = [v6 isEVRoute];

  if (v7)
  {
    v8 = [v5 route];
    v9 = [v8 legIndexForRouteCoordinate:a4];

    v10 = [v5 route];
    v11 = [v10 lastEVStepInLegWithIndex:v9];
    v12 = [v11 evInfo];

    v13 = [v5 route];
    v14 = [v13 lastEVStep];
    v15 = [v14 evInfo];

    if (v12 && v15)
    {
      v16 = [MNBatteryChargeInfo alloc];
      v17 = [v12 remainingBatteryPercentage];
      v18 = [v15 remainingBatteryPercentage];
      v19 = [v5 routeID];
      v20 = [(MNBatteryChargeInfo *)v16 initWithBatteryChargeRemainingAtEndOfLeg:v9 batteryChargeRemainingAtEndOfRoute:v19 forLegIndex:v17 forRouteID:v18];
    }

    else
      v21 = {;
      v22 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v25 = 136316162;
        v26 = "[MNTimeAndDistanceUpdater _batteryChargeInfoForRoute:routeCoordinate:]";
        v27 = 2080;
        v28 = "/Library/Caches/com.apple.xbs/Sources/Navigation/TrafficETA/MNTimeAndDistanceUpdater.m";
        v29 = 1024;
        v30 = 238;
        v31 = 2080;
        v32 = "endOfLegEvInfo && endOfRouteEvInfo";
        v33 = 2112;
        v34 = v21;
        _os_log_impl(&dword_1D311E000, v22, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v25, 0x30u);
      }

      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)_routeDistanceInfoForRoute:(id)a3 routeCoordinate:(id)a4
{
  v5 = a3;
  v6 = [v5 route];
  v7 = [v6 legIndexForRouteCoordinate:a4];

  v8 = [v5 route];
  v9 = [v8 legs];
  v10 = [v9 objectAtIndexedSubscript:v7];

  v11 = [v5 route];
  [v11 distanceBetweenRouteCoordinate:a4 andRouteCoordinate:{objc_msgSend(v10, "endRouteCoordinate")}];
  v13 = v12;

  v14 = [v5 route];
  v15 = [v5 route];
  [v14 distanceBetweenRouteCoordinate:a4 andRouteCoordinate:{objc_msgSend(v15, "endRouteCoordinate")}];
  v17 = v16;

  v18 = [MNRouteDistanceInfo alloc];
  v19 = [v5 routeID];

  v20 = [(MNRouteDistanceInfo *)v18 initWithDistanceRemainingToEndOfLeg:v7 distanceRemainingToEndOfRoute:v19 forLegIndex:v13 forRouteID:v17];

  return v20;
}

- (void)updateDisplayETAForRoute:(id)a3 notificationType:(unint64_t)a4
{
  v79 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (![(NSArray *)self->_routes containsObject:v6])
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Did not find route in set of routes."];
    v21 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v69 = 136316162;
      v70 = "[MNTimeAndDistanceUpdater updateDisplayETAForRoute:notificationType:]";
      v71 = 2080;
      v72 = "/Library/Caches/com.apple.xbs/Sources/Navigation/TrafficETA/MNTimeAndDistanceUpdater.m";
      v73 = 1024;
      v74 = 114;
      v75 = 2080;
      v76 = "NO";
      v77 = 2112;
      v78 = v20;
      _os_log_impl(&dword_1D311E000, v21, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v69, 0x30u);
    }

    goto LABEL_60;
  }

  v7 = [(MNLocation *)self->_location routeMatch];
  v8 = [v7 routeCoordinate];

  v9 = [(MNLocation *)self->_location routeMatch];
  v10 = [v9 route];
  v11 = [(MNActiveRouteInfo *)v6 route];

  if (v10 != v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithCLLocation:self->_location];
    [v12 setCourse:-1.0];
    v13 = objc_alloc(MEMORY[0x1E69A2548]);
    v14 = [(MNActiveRouteInfo *)v6 route];
    v15 = [v13 initWithRoute:v14 auditToken:0];

    v16 = [v15 matchToRouteWithLocation:v12];
    v17 = v16;
    if (v16)
    {
      if (([v16 isGoodMatch] & 1) == 0)
      {
        v18 = MNGetMNTimeAndDistanceUpdaterLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          [v17 distanceFromRoute];
          v69 = 134217984;
          v70 = v19;
          _os_log_impl(&dword_1D311E000, v18, OS_LOG_TYPE_INFO, "Unexpected poor route match when computing ETA along route. Attempting to compute ETA anyway but result may be inaccurate. Distance from route: %0.1f meters", &v69, 0xCu);
        }
      }

      v8 = [v17 routeCoordinate];
    }

    else
    {
      v8 = *MEMORY[0x1E69A1928];
    }
  }

  if (self->_mainRoute == v6 && self->_location)
  {
    v22 = [(MNNavigationSessionState *)self->_navigationSessionState targetLegIndex];
    v23 = [(MNActiveRouteInfo *)v6 route];
    v24 = [v23 legs];
    v25 = [v24 count];

    if (v22 >= v25)
    {
      v26 = [(MNLocation *)self->_location routeMatch];
      v28 = [v26 leg];
    }

    else
    {
      v26 = [(MNActiveRouteInfo *)v6 route];
      v27 = [v26 legs];
      v28 = [v27 objectAtIndexedSubscript:v22];
    }

    v29 = [v28 startRouteCoordinate];
    v30 = [v28 endRouteCoordinate];
    IsInvalid = GEOPolylineCoordinateIsInvalid();
    v32 = MEMORY[0x1E69A1918];
    if (IsInvalid)
    {
      v33 = *MEMORY[0x1E69A1918];
      v34 = *(MEMORY[0x1E69A1918] + 4);
    }

    else
    {
      v34 = *(&v29 + 1) - floorf(*(&v29 + 1));
      v33 = vcvtms_u32_f32(*(&v29 + 1)) + v29;
    }

    v35 = v33 | (LODWORD(v34) << 32);
    if (GEOPolylineCoordinateIsInvalid())
    {
      v36 = *v32;
      v37 = *(v32 + 1);
    }

    else
    {
      v37 = *(&v30 + 1) - floorf(*(&v30 + 1));
      v36 = vcvtms_u32_f32(*(&v30 + 1)) + v30;
    }

    v38 = v36 | (LODWORD(v37) << 32);
    IsABeforeB = GEOPolylineCoordinateIsABeforeB();
    if (IsABeforeB)
    {
      v40 = v38;
    }

    else
    {
      v40 = v35;
    }

    if (IsABeforeB)
    {
      v38 = v35;
    }

    if (!GEOPolylineCoordinateIsABeforeB())
    {
      v8 = v40;
    }

    if (!GEOPolylineCoordinateIsABeforeB())
    {
      v8 = v38;
    }

    v41 = [(MNLocation *)self->_location routeMatch];
    v42 = [v41 step];

    [(MNLocation *)self->_location speed];
    v44 = v43;
    if ([(MNLocation *)self->_location state]== 1)
    {
      v45 = [(MNActiveRouteInfo *)v6 route];
      [v45 distanceBetweenRouteCoordinate:v8 andRouteCoordinate:{objc_msgSend(v42, "maneuverStartRouteCoordinate")}];
      v47 = v46;

      v48 = fmax(v47, 0.0);
    }

    else
    {
      v49 = [(MNLocation *)self->_location routeMatch];
      [v49 distanceFromRoute];
      v48 = v50;
    }

    if (v44 <= 0.0)
    {
      v51 = 0.0;
    }

    else
    {
      v51 = v48 / v44;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained timeAndDistanceUpdater:self currentStepIndex:objc_msgSend(v42 didUpdateDistanceUntilManeuver:"stepIndex") timeUntilManeuver:{v48, v51}];
  }

  v20 = [MNDisplayETAInfo displayETAInfoForRouteInfo:v6 routeCoordinate:v8];
  if (v20)
  {
    if (self->_mainRoute == v6)
    {
      [(MNTimeAndDistanceUpdater *)self _logDisplayETAInfo:v20];
    }

    shouldUseClientRounding = self->_shouldUseClientRounding;
    if (!shouldUseClientRounding)
    {
      v54 = [(MNActiveRouteInfo *)v6 displayETAInfo];
      v55 = [v54 isEqual:v20];

      if ((v55 & 1) == 0)
      {
        [(MNActiveRouteInfo *)v6 setDisplayETAInfo:v20];
      }
    }

    v21 = [(MNTimeAndDistanceUpdater *)self _routeDistanceInfoForRoute:v6 routeCoordinate:v8];
    if (v21)
    {
      v56 = [(MNActiveRouteInfo *)v6 remainingDistanceInfo];
      v57 = [v56 isEqual:v21];

      if (v57)
      {
        v58 = !shouldUseClientRounding;
      }

      else
      {
        [(MNActiveRouteInfo *)v6 setRemainingDistanceInfo:v21];
        v58 = 1;
      }

      v59 = [(MNTimeAndDistanceUpdater *)self _batteryChargeInfoForRoute:v6 routeCoordinate:v8];
      v60 = [(MNActiveRouteInfo *)v6 batteryChargeInfo];
      v61 = v59;
      if (v61 | v60)
      {
        v62 = [v60 isEqual:v61];

        if ((v62 & 1) == 0)
        {
          [(MNActiveRouteInfo *)v6 setBatteryChargeInfo:v61];
          v58 = 1;
        }
      }

      if (a4 == 1)
      {
        v63 = v58;
      }

      else
      {
        v63 = 0;
      }

      if (a4 == 2 || v63)
      {
        v64 = objc_loadWeakRetained(&self->_delegate);
        v65 = [(MNActiveRouteInfo *)v6 displayETAInfo];
        v66 = [(MNActiveRouteInfo *)v6 remainingDistanceInfo];
        v67 = [(MNActiveRouteInfo *)v6 batteryChargeInfo];
        [v64 timeAndDistanceUpdater:self didUpdateDisplayETA:v65 remainingDistance:v66 batteryChargeInfo:v67];
      }
    }

LABEL_60:
  }

  v68 = *MEMORY[0x1E69E9840];
}

- (void)setRoutes:(id)a3 mainRoute:(id)a4 location:(id)a5 notificationType:(unint64_t)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v22 = v11;
  v14 = [MEMORY[0x1E695DFA8] setWithArray:v11];
  v21 = [MEMORY[0x1E695DFD8] setWithArray:self->_routes];
  [v14 minusSet:?];
  if (self->_mainRoute != v12)
  {
    self->_currentLogType = 0;
  }

  objc_storeStrong(&self->_routes, a3);
  objc_storeStrong(&self->_location, a5);
  objc_storeStrong(&self->_mainRoute, a4);
  if (v13)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [(MNTimeAndDistanceUpdater *)self updateDisplayETAForRoute:*(*(&v23 + 1) + 8 * i) notificationType:a6];
        }

        v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v17);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)setLocation:(id)a3 notificationType:(unint64_t)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  objc_storeStrong(&self->_location, a3);
  v8 = [v7 routeMatch];
  v9 = [v8 route];
  v10 = [(MNActiveRouteInfo *)self->_mainRoute route];

  if (v9 != v10)
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = [v7 routeMatch];
    v19 = [v18 route];
    v20 = [v19 uniqueRouteID];
    v21 = [(MNActiveRouteInfo *)self->_mainRoute routeID];
    v22 = [v17 stringWithFormat:@"Location matched to a route that is not the main route. Location route: %@ | Main route: %@", v20, v21];

    v23 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v30 = "[MNTimeAndDistanceUpdater setLocation:notificationType:]";
      v31 = 2080;
      v32 = "/Library/Caches/com.apple.xbs/Sources/Navigation/TrafficETA/MNTimeAndDistanceUpdater.m";
      v33 = 1024;
      v34 = 83;
      v35 = 2080;
      v36 = "location.routeMatch.route == _mainRoute.route";
      v37 = 2112;
      v38 = v22;
      _os_log_impl(&dword_1D311E000, v23, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = self->_routes;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      v15 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(MNTimeAndDistanceUpdater *)self updateDisplayETAForRoute:*(*(&v24 + 1) + 8 * v15++) notificationType:a4];
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(MNTimeAndDistanceUpdater *)self stopUpdating];
  v3.receiver = self;
  v3.super_class = MNTimeAndDistanceUpdater;
  [(MNTimeAndDistanceUpdater *)&v3 dealloc];
}

- (MNTimeAndDistanceUpdater)initWithNavigationSessionState:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MNTimeAndDistanceUpdater;
  v6 = [(MNTimeAndDistanceUpdater *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_navigationSessionState, a3);
    v7->_shouldUseClientRounding = GEOConfigGetBOOL();
    v8 = v7;
  }

  return v7;
}

@end