@interface MNNavigationProxyUpdater
- (MNNavigationProxyUpdater)init;
- (int)_geoNavigationTypeForNavigationType:(int64_t)type;
- (void)navigationSession:(id)session didReroute:(id)reroute withLocation:(id)location withAlternateRoutes:(id)routes rerouteReason:(unint64_t)reason;
- (void)navigationSession:(id)session didResumeNavigatingFromWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index reason:(unint64_t)reason;
- (void)navigationSession:(id)session didSendNavigationServiceCallback:(id)callback;
- (void)navigationSession:(id)session didUpdateDisplayETA:(id)a remainingDistance:(id)distance batteryChargeInfo:(id)info;
- (void)navigationSession:(id)session didUpdateETAResponseForRoute:(id)route;
- (void)navigationSession:(id)session didUpdateMatchedLocation:(id)location;
- (void)navigationSessionStopped:(id)stopped;
- (void)updateClusteredSectionSelectedRideForNavigationSession:(id)session;
@end

@implementation MNNavigationProxyUpdater

- (void)navigationSession:(id)session didSendNavigationServiceCallback:(id)callback
{
  sessionCopy = session;
  if ([callback type] == 2)
  {
    [(MNNavigationProxyUpdater *)self navigationSessionStopped:sessionCopy];
  }
}

- (void)navigationSession:(id)session didReroute:(id)reroute withLocation:(id)location withAlternateRoutes:(id)routes rerouteReason:(unint64_t)reason
{
  v28 = *MEMORY[0x1E69E9840];
  route = [reroute route];
  waypoints = [route waypoints];
  v10 = [waypoints count];

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
  waypoints2 = [route waypoints];
  lastObject = [waypoints2 lastObject];
  navDisplayName = [lastObject navDisplayName];
  waypoints3 = [route waypoints];
  v16 = [waypoints3 objectAtIndexedSubscript:1];
  navDisplayName2 = [v16 navDisplayName];
  [(GEONavigationProxy *)navigationProxy setDestinationName:navDisplayName nextDestinationName:navDisplayName2];

  [(GEONavigationProxy *)self->_navigationProxy setRoute:route];
  v18 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)session didUpdateETAResponseForRoute:(id)route
{
  routeCopy = route;
  routeManager = [session routeManager];
  currentRouteInfo = [routeManager currentRouteInfo];

  v8 = routeCopy;
  if (currentRouteInfo == routeCopy)
  {
    route = [routeCopy route];
    navigationProxy = self->_navigationProxy;
    mutableData = [route mutableData];
    etaRoute = [mutableData etaRoute];
    [(GEONavigationProxy *)navigationProxy setETARoute:etaRoute];

    v13 = self->_navigationProxy;
    traffic = [route traffic];
    [(GEONavigationProxy *)v13 setTrafficForCurrentRoute:traffic];

    v8 = routeCopy;
  }
}

- (void)navigationSession:(id)session didUpdateDisplayETA:(id)a remainingDistance:(id)distance batteryChargeInfo:(id)info
{
  v39 = *MEMORY[0x1E69E9840];
  aCopy = a;
  distanceCopy = distance;
  routeManager = [session routeManager];
  currentRoute = [routeManager currentRoute];
  uniqueRouteID = [currentRoute uniqueRouteID];
  routeID = [aCopy routeID];
  v15 = uniqueRouteID;
  v16 = routeID;
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

  v19 = [aCopy displayRemainingMinutesToEndOfLeg] * 60.0;
  [distanceCopy distanceRemainingToEndOfLeg];
  selfCopy = self;
  [(GEONavigationProxy *)self->_navigationProxy setPositionFromDestination:v19, v20];
  v21 = objc_alloc_init(MEMORY[0x1E69A1B70]);
  v22 = MEMORY[0x1E695DF70];
  legInfos = [aCopy legInfos];
  v24 = [v22 arrayWithCapacity:{objc_msgSend(legInfos, "count")}];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = aCopy;
  legInfos2 = [aCopy legInfos];
  v26 = [legInfos2 countByEnumeratingWithState:&v34 objects:v38 count:16];
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
          objc_enumerationMutation(legInfos2);
        }

        v30 = [objc_alloc(MEMORY[0x1E69A1B78]) initWithLegIndex:objc_msgSend(*(*(&v34 + 1) + 8 * i) remainingTime:{"legIndex"), (60 * objc_msgSend(*(*(&v34 + 1) + 8 * i), "remainingMinutes"))}];
        [v24 addObject:v30];
      }

      v27 = [legInfos2 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v27);
  }

  [v21 setArrivalTimeInfo:v24];
  [distanceCopy distanceRemainingToEndOfLeg];
  [v21 setDistanceRemainingToEndOfLeg:?];
  [distanceCopy distanceRemainingToEndOfRoute];
  [v21 setDistanceRemainingToEndOfRoute:?];
  [(GEONavigationProxy *)selfCopy->_navigationProxy setETAUpdate:v21];

  aCopy = v33;
LABEL_12:

  v31 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)session didResumeNavigatingFromWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index reason:(unint64_t)reason
{
  v30 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  waypointCopy = waypoint;
  routeManager = [sessionCopy routeManager];
  currentRoute = [routeManager currentRoute];
  legs = [currentRoute legs];
  v14 = [legs count];

  if (index + 1 >= v14)
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

  routeManager2 = [sessionCopy routeManager];
  currentRoute2 = [routeManager2 currentRoute];
  waypoints = [currentRoute2 waypoints];
  v18 = [waypoints objectAtIndexedSubscript:index + 1];
  navDisplayName = [v18 navDisplayName];

  [(GEONavigationProxy *)self->_navigationProxy setDestinationName:0 nextDestinationName:navDisplayName];
  [(GEONavigationProxy *)self->_navigationProxy setResumedNavigatingFromWaypoint:waypointCopy endOfLegIndex:index];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)session didUpdateMatchedLocation:(id)location
{
  v18 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v6 = MNGetPuckTrackingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    uuid = [locationCopy uuid];
    v16 = 138412290;
    v17 = uuid;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "[MN] [%@] - Processing - in MNNavigationProxyUpdater::navigationSession:didUpdateMatchedLocation:", &v16, 0xCu);
  }

  v8 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithCLLocation:locationCopy];
  navigationProxy = self->_navigationProxy;
  routeMatch = [locationCopy routeMatch];
  -[GEONavigationProxy setLastLocation:routeMatchedCoordinate:](navigationProxy, "setLastLocation:routeMatchedCoordinate:", v8, [routeMatch routeCoordinate]);

  v11 = self->_navigationProxy;
  routeMatch2 = [locationCopy routeMatch];
  [(GEONavigationProxy *)v11 setRouteMatch:routeMatch2];

  v13 = self->_navigationProxy;
  roadName = [locationCopy roadName];
  [(GEONavigationProxy *)v13 setCurrentRoadName:roadName];

  v15 = *MEMORY[0x1E69E9840];
}

- (int)_geoNavigationTypeForNavigationType:(int64_t)type
{
  if (type > 4)
  {
    return 1;
  }

  else
  {
    return dword_1D328D540[type];
  }
}

- (void)updateClusteredSectionSelectedRideForNavigationSession:(id)session
{
  routeManager = [session routeManager];
  currentRoute = [routeManager currentRoute];

  [(GEONavigationProxy *)self->_navigationProxy setClusteredSectionSelectedRideFromRoute:currentRoute];
}

- (void)navigationSessionStopped:(id)stopped
{
  routeManager = [stopped routeManager];
  currentRoute = [routeManager currentRoute];

  if (currentRoute)
  {
    transportType = [currentRoute transportType];
  }

  else
  {
    transportType = 4;
  }

  [(GEONavigationProxy *)self->_navigationProxy setNavigationSessionState:0 transportType:transportType navigationType:0 isResumingMultipointRoute:0];
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