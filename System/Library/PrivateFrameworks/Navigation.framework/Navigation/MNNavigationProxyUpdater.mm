@interface MNNavigationProxyUpdater
- (MNNavigationProxyUpdater)init;
- (int)_geoNavigationTypeForNavigationType:(int64_t)a3;
- (void)navigationSession:(id)a3 didReroute:(id)a4 withLocation:(id)a5 withAlternateRoutes:(id)a6 rerouteReason:(unint64_t)a7;
- (void)navigationSession:(id)a3 didResumeNavigatingFromWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5 reason:(unint64_t)a6;
- (void)navigationSession:(id)a3 didSendNavigationServiceCallback:(id)a4;
- (void)navigationSession:(id)a3 didUpdateDisplayETA:(id)a4 remainingDistance:(id)a5 batteryChargeInfo:(id)a6;
- (void)navigationSession:(id)a3 didUpdateETAResponseForRoute:(id)a4;
- (void)navigationSession:(id)a3 didUpdateMatchedLocation:(id)a4;
- (void)navigationSessionStopped:(id)a3;
- (void)updateClusteredSectionSelectedRideForNavigationSession:(id)a3;
@end

@implementation MNNavigationProxyUpdater

- (void)navigationSession:(id)a3 didSendNavigationServiceCallback:(id)a4
{
  v6 = a3;
  if ([a4 type] == 2)
  {
    [(MNNavigationProxyUpdater *)self navigationSessionStopped:v6];
  }
}

- (void)navigationSession:(id)a3 didReroute:(id)a4 withLocation:(id)a5 withAlternateRoutes:(id)a6 rerouteReason:(unint64_t)a7
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = [a4 route];
  v9 = [v8 waypoints];
  v10 = [v9 count];

  if (v10 <= 1)
  {
    v19 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315906;
      v21 = "[MNNavigationProxyUpdater navigationSession:didReroute:withLocation:withAlternateRoutes:rerouteReason:]";
      v22 = 2080;
      v23 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationProxyUpdater.m";
      v24 = 1024;
      v25 = 204;
      v26 = 2080;
      v27 = "route.waypoints.count >= 2";
      _os_log_impl(&dword_1D311E000, v19, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", &v20, 0x26u);
    }
  }

  navigationProxy = self->_navigationProxy;
  v12 = [v8 waypoints];
  v13 = [v12 lastObject];
  v14 = [v13 navDisplayName];
  v15 = [v8 waypoints];
  v16 = [v15 objectAtIndexedSubscript:1];
  v17 = [v16 navDisplayName];
  [(GEONavigationProxy *)navigationProxy setDestinationName:v14 nextDestinationName:v17];

  [(GEONavigationProxy *)self->_navigationProxy setRoute:v8];
  v18 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)a3 didUpdateETAResponseForRoute:(id)a4
{
  v15 = a4;
  v6 = [a3 routeManager];
  v7 = [v6 currentRouteInfo];

  v8 = v15;
  if (v7 == v15)
  {
    v9 = [v15 route];
    navigationProxy = self->_navigationProxy;
    v11 = [v9 mutableData];
    v12 = [v11 etaRoute];
    [(GEONavigationProxy *)navigationProxy setETARoute:v12];

    v13 = self->_navigationProxy;
    v14 = [v9 traffic];
    [(GEONavigationProxy *)v13 setTrafficForCurrentRoute:v14];

    v8 = v15;
  }
}

- (void)navigationSession:(id)a3 didUpdateDisplayETA:(id)a4 remainingDistance:(id)a5 batteryChargeInfo:(id)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = [a3 routeManager];
  v12 = [v11 currentRoute];
  v13 = [v12 uniqueRouteID];
  v14 = [v9 routeID];
  v15 = v13;
  v16 = v14;
  if (v15 | v16)
  {
    v17 = v16;
    v18 = [v15 isEqual:v16];

    if ((v18 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v19 = [v9 displayRemainingMinutesToEndOfLeg] * 60.0;
  [v10 distanceRemainingToEndOfLeg];
  v32 = self;
  [(GEONavigationProxy *)self->_navigationProxy setPositionFromDestination:v19, v20];
  v21 = objc_alloc_init(MEMORY[0x1E69A1B70]);
  v22 = MEMORY[0x1E695DF70];
  v23 = [v9 legInfos];
  v24 = [v22 arrayWithCapacity:{objc_msgSend(v23, "count")}];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = v9;
  v25 = [v9 legInfos];
  v26 = [v25 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v35;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v35 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [objc_alloc(MEMORY[0x1E69A1B78]) initWithLegIndex:objc_msgSend(*(*(&v34 + 1) + 8 * i) remainingTime:{"legIndex"), (60 * objc_msgSend(*(*(&v34 + 1) + 8 * i), "remainingMinutes"))}];
        [v24 addObject:v30];
      }

      v27 = [v25 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v27);
  }

  [v21 setArrivalTimeInfo:v24];
  [v10 distanceRemainingToEndOfLeg];
  [v21 setDistanceRemainingToEndOfLeg:?];
  [v10 distanceRemainingToEndOfRoute];
  [v21 setDistanceRemainingToEndOfRoute:?];
  [(GEONavigationProxy *)v32->_navigationProxy setETAUpdate:v21];

  v9 = v33;
LABEL_12:

  v31 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)a3 didResumeNavigatingFromWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5 reason:(unint64_t)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [v9 routeManager];
  v12 = [v11 currentRoute];
  v13 = [v12 legs];
  v14 = [v13 count];

  if (a5 + 1 >= v14)
  {
    v21 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = 136315906;
      v23 = "[MNNavigationProxyUpdater navigationSession:didResumeNavigatingFromWaypoint:endOfLegIndex:reason:]";
      v24 = 2080;
      v25 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationProxyUpdater.m";
      v26 = 1024;
      v27 = 160;
      v28 = 2080;
      v29 = "(legIndex + 1) < navigationSession.routeManager.currentRoute.legs.count";
      _os_log_impl(&dword_1D311E000, v21, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", &v22, 0x26u);
    }
  }

  v15 = [v9 routeManager];
  v16 = [v15 currentRoute];
  v17 = [v16 waypoints];
  v18 = [v17 objectAtIndexedSubscript:a5 + 1];
  v19 = [v18 navDisplayName];

  [(GEONavigationProxy *)self->_navigationProxy setDestinationName:0 nextDestinationName:v19];
  [(GEONavigationProxy *)self->_navigationProxy setResumedNavigatingFromWaypoint:v10 endOfLegIndex:a5];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)a3 didUpdateMatchedLocation:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = MNGetPuckTrackingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 uuid];
    v16 = 138412290;
    v17 = v7;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "[MN] [%@] - Processing - in MNNavigationProxyUpdater::navigationSession:didUpdateMatchedLocation:", &v16, 0xCu);
  }

  v8 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithCLLocation:v5];
  navigationProxy = self->_navigationProxy;
  v10 = [v5 routeMatch];
  -[GEONavigationProxy setLastLocation:routeMatchedCoordinate:](navigationProxy, "setLastLocation:routeMatchedCoordinate:", v8, [v10 routeCoordinate]);

  v11 = self->_navigationProxy;
  v12 = [v5 routeMatch];
  [(GEONavigationProxy *)v11 setRouteMatch:v12];

  v13 = self->_navigationProxy;
  v14 = [v5 roadName];
  [(GEONavigationProxy *)v13 setCurrentRoadName:v14];

  v15 = *MEMORY[0x1E69E9840];
}

- (int)_geoNavigationTypeForNavigationType:(int64_t)a3
{
  if (a3 > 4)
  {
    return 1;
  }

  else
  {
    return dword_1D328D540[a3];
  }
}

- (void)updateClusteredSectionSelectedRideForNavigationSession:(id)a3
{
  v4 = [a3 routeManager];
  v5 = [v4 currentRoute];

  [(GEONavigationProxy *)self->_navigationProxy setClusteredSectionSelectedRideFromRoute:v5];
}

- (void)navigationSessionStopped:(id)a3
{
  v4 = [a3 routeManager];
  v6 = [v4 currentRoute];

  if (v6)
  {
    v5 = [v6 transportType];
  }

  else
  {
    v5 = 4;
  }

  [(GEONavigationProxy *)self->_navigationProxy setNavigationSessionState:0 transportType:v5 navigationType:0 isResumingMultipointRoute:0];
  [(GEONavigationProxy *)self->_navigationProxy stop];
}

- (MNNavigationProxyUpdater)init
{
  v8.receiver = self;
  v8.super_class = MNNavigationProxyUpdater;
  v2 = [(MNNavigationProxyUpdater *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69A2298]);
    navigationProxy = v2->_navigationProxy;
    v2->_navigationProxy = v3;

    v5 = objc_alloc_init(MNNanoFormattedStringFormatter);
    [(GEONavigationProxy *)v2->_navigationProxy setFormatter:v5];

    v6 = v2;
  }

  return v2;
}

@end