@interface MNTimeAndDistanceUpdater
- (MNTimeAndDistanceUpdater)initWithNavigationSessionState:(id)state;
- (MNTimeAndDistanceUpdaterDelegate)delegate;
- (id)_batteryChargeInfoForRoute:(id)route routeCoordinate:(id)coordinate;
- (id)_routeDistanceInfoForRoute:(id)route routeCoordinate:(id)coordinate;
- (void)_logDisplayETAInfo:(id)info;
- (void)_startTimerToNextMinute;
- (void)dealloc;
- (void)setLocation:(id)location notificationType:(unint64_t)type;
- (void)setRoutes:(id)routes mainRoute:(id)route location:(id)location notificationType:(unint64_t)type;
- (void)updateDisplayETAForRoute:(id)route notificationType:(unint64_t)type;
@end

@implementation MNTimeAndDistanceUpdater

- (MNTimeAndDistanceUpdaterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_logDisplayETAInfo:(id)info
{
  v22 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  mainRoute = self->_mainRoute;
  if (mainRoute)
  {
    routeID = [(MNActiveRouteInfo *)mainRoute routeID];
    routeID2 = [infoCopy routeID];
    v8 = [routeID isEqual:routeID2];

    if (v8)
    {
      isUsingServerDisplayETA = [infoCopy isUsingServerDisplayETA];
      v10 = 1;
      if (isUsingServerDisplayETA)
      {
        v10 = 2;
      }

      if (v10 != self->_currentLogType)
      {
        v11 = isUsingServerDisplayETA;
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

          routeID3 = [infoCopy routeID];
          v16 = 138412802;
          v17 = v13;
          v18 = 2112;
          v19 = routeID3;
          v20 = 2112;
          v21 = infoCopy;
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

- (id)_batteryChargeInfoForRoute:(id)route routeCoordinate:(id)coordinate
{
  v35 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  route = [routeCopy route];
  isEVRoute = [route isEVRoute];

  if (isEVRoute)
  {
    route2 = [routeCopy route];
    v9 = [route2 legIndexForRouteCoordinate:coordinate];

    route3 = [routeCopy route];
    v11 = [route3 lastEVStepInLegWithIndex:v9];
    evInfo = [v11 evInfo];

    route4 = [routeCopy route];
    lastEVStep = [route4 lastEVStep];
    evInfo2 = [lastEVStep evInfo];

    if (evInfo && evInfo2)
    {
      v16 = [MNBatteryChargeInfo alloc];
      remainingBatteryPercentage = [evInfo remainingBatteryPercentage];
      remainingBatteryPercentage2 = [evInfo2 remainingBatteryPercentage];
      routeID = [routeCopy routeID];
      v20 = [(MNBatteryChargeInfo *)v16 initWithBatteryChargeRemainingAtEndOfLeg:v9 batteryChargeRemainingAtEndOfRoute:routeID forLegIndex:remainingBatteryPercentage forRouteID:remainingBatteryPercentage2];
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

- (id)_routeDistanceInfoForRoute:(id)route routeCoordinate:(id)coordinate
{
  routeCopy = route;
  route = [routeCopy route];
  v7 = [route legIndexForRouteCoordinate:coordinate];

  route2 = [routeCopy route];
  legs = [route2 legs];
  v10 = [legs objectAtIndexedSubscript:v7];

  route3 = [routeCopy route];
  [route3 distanceBetweenRouteCoordinate:coordinate andRouteCoordinate:{objc_msgSend(v10, "endRouteCoordinate")}];
  v13 = v12;

  route4 = [routeCopy route];
  route5 = [routeCopy route];
  [route4 distanceBetweenRouteCoordinate:coordinate andRouteCoordinate:{objc_msgSend(route5, "endRouteCoordinate")}];
  v17 = v16;

  v18 = [MNRouteDistanceInfo alloc];
  routeID = [routeCopy routeID];

  v20 = [(MNRouteDistanceInfo *)v18 initWithDistanceRemainingToEndOfLeg:v7 distanceRemainingToEndOfRoute:routeID forLegIndex:v13 forRouteID:v17];

  return v20;
}

- (void)updateDisplayETAForRoute:(id)route notificationType:(unint64_t)type
{
  v79 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  if (![(NSArray *)self->_routes containsObject:routeCopy])
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

  routeMatch = [(MNLocation *)self->_location routeMatch];
  routeCoordinate = [routeMatch routeCoordinate];

  routeMatch2 = [(MNLocation *)self->_location routeMatch];
  route = [routeMatch2 route];
  route2 = [(MNActiveRouteInfo *)routeCopy route];

  if (route != route2)
  {
    v12 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithCLLocation:self->_location];
    [v12 setCourse:-1.0];
    v13 = objc_alloc(MEMORY[0x1E69A2548]);
    route3 = [(MNActiveRouteInfo *)routeCopy route];
    v15 = [v13 initWithRoute:route3 auditToken:0];

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

      routeCoordinate = [v17 routeCoordinate];
    }

    else
    {
      routeCoordinate = *MEMORY[0x1E69A1928];
    }
  }

  if (self->_mainRoute == routeCopy && self->_location)
  {
    targetLegIndex = [(MNNavigationSessionState *)self->_navigationSessionState targetLegIndex];
    route4 = [(MNActiveRouteInfo *)routeCopy route];
    legs = [route4 legs];
    v25 = [legs count];

    if (targetLegIndex >= v25)
    {
      routeMatch3 = [(MNLocation *)self->_location routeMatch];
      v28 = [routeMatch3 leg];
    }

    else
    {
      routeMatch3 = [(MNActiveRouteInfo *)routeCopy route];
      legs2 = [routeMatch3 legs];
      v28 = [legs2 objectAtIndexedSubscript:targetLegIndex];
    }

    startRouteCoordinate = [v28 startRouteCoordinate];
    endRouteCoordinate = [v28 endRouteCoordinate];
    IsInvalid = GEOPolylineCoordinateIsInvalid();
    v32 = MEMORY[0x1E69A1918];
    if (IsInvalid)
    {
      v33 = *MEMORY[0x1E69A1918];
      v34 = *(MEMORY[0x1E69A1918] + 4);
    }

    else
    {
      v34 = *(&startRouteCoordinate + 1) - floorf(*(&startRouteCoordinate + 1));
      v33 = vcvtms_u32_f32(*(&startRouteCoordinate + 1)) + startRouteCoordinate;
    }

    v35 = v33 | (LODWORD(v34) << 32);
    if (GEOPolylineCoordinateIsInvalid())
    {
      v36 = *v32;
      v37 = *(v32 + 1);
    }

    else
    {
      v37 = *(&endRouteCoordinate + 1) - floorf(*(&endRouteCoordinate + 1));
      v36 = vcvtms_u32_f32(*(&endRouteCoordinate + 1)) + endRouteCoordinate;
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
      routeCoordinate = v40;
    }

    if (!GEOPolylineCoordinateIsABeforeB())
    {
      routeCoordinate = v38;
    }

    routeMatch4 = [(MNLocation *)self->_location routeMatch];
    step = [routeMatch4 step];

    [(MNLocation *)self->_location speed];
    v44 = v43;
    if ([(MNLocation *)self->_location state]== 1)
    {
      route5 = [(MNActiveRouteInfo *)routeCopy route];
      [route5 distanceBetweenRouteCoordinate:routeCoordinate andRouteCoordinate:{objc_msgSend(step, "maneuverStartRouteCoordinate")}];
      v47 = v46;

      v48 = fmax(v47, 0.0);
    }

    else
    {
      routeMatch5 = [(MNLocation *)self->_location routeMatch];
      [routeMatch5 distanceFromRoute];
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
    [WeakRetained timeAndDistanceUpdater:self currentStepIndex:objc_msgSend(step didUpdateDistanceUntilManeuver:"stepIndex") timeUntilManeuver:{v48, v51}];
  }

  v20 = [MNDisplayETAInfo displayETAInfoForRouteInfo:routeCopy routeCoordinate:routeCoordinate];
  if (v20)
  {
    if (self->_mainRoute == routeCopy)
    {
      [(MNTimeAndDistanceUpdater *)self _logDisplayETAInfo:v20];
    }

    shouldUseClientRounding = self->_shouldUseClientRounding;
    if (!shouldUseClientRounding)
    {
      displayETAInfo = [(MNActiveRouteInfo *)routeCopy displayETAInfo];
      v55 = [displayETAInfo isEqual:v20];

      if ((v55 & 1) == 0)
      {
        [(MNActiveRouteInfo *)routeCopy setDisplayETAInfo:v20];
      }
    }

    v21 = [(MNTimeAndDistanceUpdater *)self _routeDistanceInfoForRoute:routeCopy routeCoordinate:routeCoordinate];
    if (v21)
    {
      remainingDistanceInfo = [(MNActiveRouteInfo *)routeCopy remainingDistanceInfo];
      v57 = [remainingDistanceInfo isEqual:v21];

      if (v57)
      {
        v58 = !shouldUseClientRounding;
      }

      else
      {
        [(MNActiveRouteInfo *)routeCopy setRemainingDistanceInfo:v21];
        v58 = 1;
      }

      v59 = [(MNTimeAndDistanceUpdater *)self _batteryChargeInfoForRoute:routeCopy routeCoordinate:routeCoordinate];
      batteryChargeInfo = [(MNActiveRouteInfo *)routeCopy batteryChargeInfo];
      v61 = v59;
      if (v61 | batteryChargeInfo)
      {
        v62 = [batteryChargeInfo isEqual:v61];

        if ((v62 & 1) == 0)
        {
          [(MNActiveRouteInfo *)routeCopy setBatteryChargeInfo:v61];
          v58 = 1;
        }
      }

      if (type == 1)
      {
        v63 = v58;
      }

      else
      {
        v63 = 0;
      }

      if (type == 2 || v63)
      {
        v64 = objc_loadWeakRetained(&self->_delegate);
        displayETAInfo2 = [(MNActiveRouteInfo *)routeCopy displayETAInfo];
        remainingDistanceInfo2 = [(MNActiveRouteInfo *)routeCopy remainingDistanceInfo];
        batteryChargeInfo2 = [(MNActiveRouteInfo *)routeCopy batteryChargeInfo];
        [v64 timeAndDistanceUpdater:self didUpdateDisplayETA:displayETAInfo2 remainingDistance:remainingDistanceInfo2 batteryChargeInfo:batteryChargeInfo2];
      }
    }

LABEL_60:
  }

  v68 = *MEMORY[0x1E69E9840];
}

- (void)setRoutes:(id)routes mainRoute:(id)route location:(id)location notificationType:(unint64_t)type
{
  v28 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  routeCopy = route;
  locationCopy = location;
  v22 = routesCopy;
  v14 = [MEMORY[0x1E695DFA8] setWithArray:routesCopy];
  v21 = [MEMORY[0x1E695DFD8] setWithArray:self->_routes];
  [v14 minusSet:?];
  if (self->_mainRoute != routeCopy)
  {
    self->_currentLogType = 0;
  }

  objc_storeStrong(&self->_routes, routes);
  objc_storeStrong(&self->_location, location);
  objc_storeStrong(&self->_mainRoute, route);
  if (locationCopy)
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

          [(MNTimeAndDistanceUpdater *)self updateDisplayETAForRoute:*(*(&v23 + 1) + 8 * i) notificationType:type];
        }

        v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v17);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)setLocation:(id)location notificationType:(unint64_t)type
{
  v39 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  objc_storeStrong(&self->_location, location);
  routeMatch = [locationCopy routeMatch];
  route = [routeMatch route];
  route2 = [(MNActiveRouteInfo *)self->_mainRoute route];

  if (route != route2)
  {
    v17 = MEMORY[0x1E696AEC0];
    routeMatch2 = [locationCopy routeMatch];
    route3 = [routeMatch2 route];
    uniqueRouteID = [route3 uniqueRouteID];
    routeID = [(MNActiveRouteInfo *)self->_mainRoute routeID];
    v22 = [v17 stringWithFormat:@"Location matched to a route that is not the main route. Location route: %@ | Main route: %@", uniqueRouteID, routeID];

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

        [(MNTimeAndDistanceUpdater *)self updateDisplayETAForRoute:*(*(&v24 + 1) + 8 * v15++) notificationType:type];
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

- (MNTimeAndDistanceUpdater)initWithNavigationSessionState:(id)state
{
  stateCopy = state;
  v10.receiver = self;
  v10.super_class = MNTimeAndDistanceUpdater;
  v6 = [(MNTimeAndDistanceUpdater *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_navigationSessionState, state);
    v7->_shouldUseClientRounding = GEOConfigGetBOOL();
    v8 = v7;
  }

  return v7;
}

@end