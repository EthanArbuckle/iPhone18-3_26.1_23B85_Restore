@interface MNCyclingTurnByTurnLocationTracker
- (MNCyclingTurnByTurnLocationTracker)initWithNavigationSession:(id)session;
- (id)_matchedLocationForLocation:(id)location;
- (id)_newMapMatcherForRoute:(id)route;
- (id)_overrideLocationForLocation:(id)location;
- (void)_updateForAlternateRoutes:(id)routes;
- (void)_updateForArrivalAtLegIndex:(unint64_t)index;
- (void)_updateForLocation:(id)location;
- (void)_updateForReroute:(id)reroute rerouteReason:(unint64_t)reason request:(id)request response:(id)response;
- (void)_updateForSelectedNewRoute:(id)route alternateRoutes:(id)routes;
- (void)startTrackingWithInitialLocation:(id)location targetLegIndex:(unint64_t)index;
- (void)stopTracking;
- (void)tunnelLocationProjector:(id)projector didUpdateLocation:(id)location;
@end

@implementation MNCyclingTurnByTurnLocationTracker

- (void)_updateForAlternateRoutes:(id)routes
{
  v29 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  if ([(MNLocationTracker *)self state]!= 2)
  {
    lastMatchedLocation = [(MNLocationTracker *)self lastMatchedLocation];
    [lastMatchedLocation coordinate];
    navigationSession = [(MNLocationTracker *)self navigationSession];
    destination = [navigationSession destination];

    geoMapItem = [destination geoMapItem];
    [geoMapItem centerCoordinate];
    GEOCalculateDistance();
    v10 = v9;

    if (v10 < 1000.0)
    {

      routesCopy = 0;
    }
  }

  navigationSession2 = [(MNLocationTracker *)self navigationSession];
  routeManager = [navigationSession2 routeManager];
  currentRouteInfo = [routeManager currentRouteInfo];

  if ([(MNAlternateRoutesUpdater *)self->_alternateRoutesUpdater setAlternateRoutes:routesCopy forMainRoute:currentRouteInfo])
  {
    delegate = [(MNLocationTracker *)self delegate];
    alternateRoutes = [(MNAlternateRoutesUpdater *)self->_alternateRoutesUpdater alternateRoutes];
    [delegate locationTracker:self didUpdateAlternateRoutes:alternateRoutes];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  alternateRoutes2 = [(MNAlternateRoutesUpdater *)self->_alternateRoutesUpdater alternateRoutes];
  v17 = [alternateRoutes2 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      v20 = 0;
      do
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(alternateRoutes2);
        }

        v21 = *(*(&v24 + 1) + 8 * v20);
        delegate2 = [(MNLocationTracker *)self delegate];
        [delegate2 locationTracker:self didUpdateETAForRoute:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [alternateRoutes2 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v18);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)tunnelLocationProjector:(id)projector didUpdateLocation:(id)location
{
  locationCopy = location;
  v5 = +[MNLocationManager shared];
  [v5 pushLocation:locationCopy];
}

- (void)_updateForSelectedNewRoute:(id)route alternateRoutes:(id)routes
{
  [(MNAlternateRoutesUpdater *)self->_alternateRoutesUpdater setAlternateRoutes:routes forMainRoute:route];
  delegate = [(MNLocationTracker *)self delegate];
  alternateRoutes = [(MNAlternateRoutesUpdater *)self->_alternateRoutesUpdater alternateRoutes];
  [delegate locationTracker:self didUpdateAlternateRoutes:alternateRoutes];
}

- (void)_updateForArrivalAtLegIndex:(unint64_t)index
{
  [(MNTunnelLocationProjector *)self->_tunnelLocationProjector setDelegate:0];
  [(MNTunnelLocationProjector *)self->_tunnelLocationProjector stop];
  v5.receiver = self;
  v5.super_class = MNCyclingTurnByTurnLocationTracker;
  [(MNTurnByTurnLocationTracker *)&v5 _updateForArrivalAtLegIndex:index];
}

- (void)_updateForReroute:(id)reroute rerouteReason:(unint64_t)reason request:(id)request response:(id)response
{
  rerouteCopy = reroute;
  alternateRoutesUpdater = self->_alternateRoutesUpdater;
  responseCopy = response;
  requestCopy = request;
  [(MNAlternateRoutesUpdater *)alternateRoutesUpdater updateForReroute:rerouteCopy rerouteReason:reason];
  alternateRoutes = [(MNAlternateRoutesUpdater *)self->_alternateRoutesUpdater alternateRoutes];
  route = [rerouteCopy route];
  etauPositions = [route etauPositions];
  v16 = [etauPositions mutableCopy];
  etauPositions = self->_etauPositions;
  self->_etauPositions = v16;

  delegate = [(MNLocationTracker *)self delegate];
  [delegate locationTracker:self didReroute:rerouteCopy newAlternateRoutes:alternateRoutes rerouteReason:reason request:requestCopy response:responseCopy];

  if (reason != 11)
  {
    firstObject = [alternateRoutes firstObject];
    v20 = [MNTrafficIncidentAlert validTrafficIncidentAlertsForNewRoute:rerouteCopy alternateRouteInfo:firstObject];
    [(MNTurnByTurnLocationTracker *)self _updateForNewTrafficIncidentAlerts:v20];
  }
}

- (void)_updateForLocation:(id)location
{
  locationCopy = location;
  [(MNTunnelLocationProjector *)self->_tunnelLocationProjector updateLocation:locationCopy];
  if ([(MNAlternateRoutesUpdater *)self->_alternateRoutesUpdater updateForLocation:locationCopy])
  {
    delegate = [(MNLocationTracker *)self delegate];
    alternateRoutes = [(MNAlternateRoutesUpdater *)self->_alternateRoutesUpdater alternateRoutes];
    [delegate locationTracker:self didUpdateAlternateRoutes:alternateRoutes];
  }

  firstObject = [(NSMutableArray *)self->_etauPositions firstObject];
  if (firstObject)
  {
    routeMatch = [locationCopy routeMatch];
    [routeMatch routeCoordinate];
    [firstObject routeCoordinate];
    v8 = GEOPolylineCoordinateCompare();

    if (v8 != -1)
    {
      delegate2 = [(MNLocationTracker *)self delegate];
      [delegate2 locationTracker:self didReachETAUpdatePosition:firstObject];

      [(NSMutableArray *)self->_etauPositions removeObject:firstObject];
    }
  }
}

- (id)_overrideLocationForLocation:(id)location
{
  locationCopy = location;
  v5 = locationCopy;
  if (self->_lastKnownCourse >= 0.0)
  {
    [locationCopy rawCourse];
    if (v6 >= 0.0)
    {
      [v5 rawCourse];
      self->_lastKnownCourse = v14;
      goto LABEL_17;
    }
  }

  [v5 rawCourse];
  v8 = v7;
  [v5 courseAccuracy];
  if (v9 >= 0.0 && v9 < 20.0)
  {
    goto LABEL_15;
  }

  lastKnownCourse = self->_lastKnownCourse;
  [v5 speed];
  if (v8 < 0.0)
  {
    self->_consecutiveValidCourseCount = 1.0;
    lastKnownCourse = self->_lastKnownCourse;
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *v17 = 0;
      _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_DEBUG, "Current course less than 0. Setting _consecutiveValidCourseCount to 1.", v17, 2u);
    }

    goto LABEL_16;
  }

  if (v12 > 3.0)
  {
    v15 = self->_consecutiveValidCourseCount + 1.0;
    self->_consecutiveValidCourseCount = v15;
    if (v15 > 3.0)
    {
      self->_consecutiveValidCourseCount = 0.0;
LABEL_15:
      lastKnownCourse = v8;
    }
  }

LABEL_16:
  self->_lastKnownCourse = lastKnownCourse;
  [v5 setCourse:lastKnownCourse];
LABEL_17:

  return v5;
}

- (id)_newMapMatcherForRoute:(id)route
{
  v4 = MEMORY[0x1E69A2278];
  routeCopy = route;
  v6 = [v4 alloc];
  _auditToken = [(MNLocationTracker *)self _auditToken];
  v8 = [v6 initWithRoute:routeCopy auditToken:_auditToken];

  [v8 setUseMatchedCoordinateForMatching:1];
  return v8;
}

- (id)_matchedLocationForLocation:(id)location
{
  v33 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v5 = MNGetPuckTrackingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    uuid = [locationCopy uuid];
    *buf = 138412290;
    v32 = uuid;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "[MN] [%@] - Processing - in MNCyclingLocationTracker::_matchedLocationForLocation:", buf, 0xCu);
  }

  v7 = MNGetMNLocationTrackerLog();
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "MatchedCyclingTBTLocationForLocation", "", buf, 2u);
  }

  if ([(MNTunnelLocationProjector *)self->_tunnelLocationProjector isProjecting])
  {
    [locationCopy horizontalAccuracy];
    if (v11 > 65.0 || ([locationCopy course], v12 < 0.0) || (objc_msgSend(locationCopy, "speed"), v13 < 0.0))
    {
      uuid2 = GEOFindOrCreateLog();
      if (!os_log_type_enabled(uuid2, OS_LOG_TYPE_DEBUG))
      {
LABEL_13:
        v16 = 0;
LABEL_20:

        goto LABEL_21;
      }

      *buf = 0;
      v15 = "We are still projecting and have not processed a high quality location. Ignoring current location.";
LABEL_12:
      _os_log_impl(&dword_1D311E000, uuid2, OS_LOG_TYPE_DEBUG, v15, buf, 2u);
      goto LABEL_13;
    }

    lastMatchedLocation = [(MNLocationTracker *)self lastMatchedLocation];
    timestamp = [lastMatchedLocation timestamp];
    [timestamp timeIntervalSinceReferenceDate];
    v20 = v19;

    timestamp2 = [locationCopy timestamp];
    [timestamp2 timeIntervalSinceReferenceDate];
    v23 = v22;

    if (v23 + 2.0 < v20)
    {
      uuid2 = GEOFindOrCreateLog();
      if (!os_log_type_enabled(uuid2, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_13;
      }

      *buf = 0;
      v15 = "Filtering location was generated more than 2 seconds before our last projected location.";
      goto LABEL_12;
    }
  }

  v30.receiver = self;
  v30.super_class = MNCyclingTurnByTurnLocationTracker;
  v16 = [(MNTurnByTurnLocationTracker *)&v30 _matchedLocationForLocation:locationCopy];
  v24 = v10;
  v25 = v24;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v25, OS_SIGNPOST_INTERVAL_END, v8, "MatchedCyclingTBTLocationForLocation", "", buf, 2u);
  }

  v26 = *MEMORY[0x1E69A19F8];
  v27 = *(MEMORY[0x1E69A19F8] + 8);
  if (GEOConfigGetBOOL())
  {
    uuid2 = [locationCopy uuid];
    [v16 setUuid:uuid2];
    goto LABEL_20;
  }

LABEL_21:

  v28 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)stopTracking
{
  v5.receiver = self;
  v5.super_class = MNCyclingTurnByTurnLocationTracker;
  [(MNTurnByTurnLocationTracker *)&v5 stopTracking];
  alternateRoutesUpdater = self->_alternateRoutesUpdater;
  self->_alternateRoutesUpdater = 0;

  [(MNTunnelLocationProjector *)self->_tunnelLocationProjector setDelegate:0];
  [(MNTunnelLocationProjector *)self->_tunnelLocationProjector stop];
  tunnelLocationProjector = self->_tunnelLocationProjector;
  self->_tunnelLocationProjector = 0;
}

- (void)startTrackingWithInitialLocation:(id)location targetLegIndex:(unint64_t)index
{
  v20.receiver = self;
  v20.super_class = MNCyclingTurnByTurnLocationTracker;
  [(MNTurnByTurnLocationTracker *)&v20 startTrackingWithInitialLocation:location targetLegIndex:index];
  v5 = objc_alloc_init(MNTunnelLocationProjector);
  tunnelLocationProjector = self->_tunnelLocationProjector;
  self->_tunnelLocationProjector = v5;

  [(MNTunnelLocationProjector *)self->_tunnelLocationProjector setDelegate:self];
  navigationSession = [(MNLocationTracker *)self navigationSession];
  routeManager = [navigationSession routeManager];

  v9 = objc_alloc_init(MNAlternateRoutesUpdater);
  alternateRoutesUpdater = self->_alternateRoutesUpdater;
  self->_alternateRoutesUpdater = v9;

  v11 = self->_alternateRoutesUpdater;
  alternateRoutes = [routeManager alternateRoutes];
  currentRouteInfo = [routeManager currentRouteInfo];
  [(MNAlternateRoutesUpdater *)v11 setAlternateRoutes:alternateRoutes forMainRoute:currentRouteInfo];

  delegate = [(MNLocationTracker *)self delegate];
  alternateRoutes2 = [(MNAlternateRoutesUpdater *)self->_alternateRoutesUpdater alternateRoutes];
  [delegate locationTracker:self didUpdateAlternateRoutes:alternateRoutes2];

  currentRoute = [routeManager currentRoute];
  etauPositions = [currentRoute etauPositions];
  v18 = [etauPositions mutableCopy];
  etauPositions = self->_etauPositions;
  self->_etauPositions = v18;
}

- (MNCyclingTurnByTurnLocationTracker)initWithNavigationSession:(id)session
{
  v7.receiver = self;
  v7.super_class = MNCyclingTurnByTurnLocationTracker;
  v3 = [(MNTurnByTurnLocationTracker *)&v7 initWithNavigationSession:session];
  v4 = v3;
  if (v3)
  {
    v3->_lastKnownCourse = -1.0;
    v5 = v3;
  }

  return v4;
}

@end