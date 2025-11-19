@interface MNCyclingTurnByTurnLocationTracker
- (MNCyclingTurnByTurnLocationTracker)initWithNavigationSession:(id)a3;
- (id)_matchedLocationForLocation:(id)a3;
- (id)_newMapMatcherForRoute:(id)a3;
- (id)_overrideLocationForLocation:(id)a3;
- (void)_updateForAlternateRoutes:(id)a3;
- (void)_updateForArrivalAtLegIndex:(unint64_t)a3;
- (void)_updateForLocation:(id)a3;
- (void)_updateForReroute:(id)a3 rerouteReason:(unint64_t)a4 request:(id)a5 response:(id)a6;
- (void)_updateForSelectedNewRoute:(id)a3 alternateRoutes:(id)a4;
- (void)startTrackingWithInitialLocation:(id)a3 targetLegIndex:(unint64_t)a4;
- (void)stopTracking;
- (void)tunnelLocationProjector:(id)a3 didUpdateLocation:(id)a4;
@end

@implementation MNCyclingTurnByTurnLocationTracker

- (void)_updateForAlternateRoutes:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(MNLocationTracker *)self state]!= 2)
  {
    v5 = [(MNLocationTracker *)self lastMatchedLocation];
    [v5 coordinate];
    v6 = [(MNLocationTracker *)self navigationSession];
    v7 = [v6 destination];

    v8 = [v7 geoMapItem];
    [v8 centerCoordinate];
    GEOCalculateDistance();
    v10 = v9;

    if (v10 < 1000.0)
    {

      v4 = 0;
    }
  }

  v11 = [(MNLocationTracker *)self navigationSession];
  v12 = [v11 routeManager];
  v13 = [v12 currentRouteInfo];

  if ([(MNAlternateRoutesUpdater *)self->_alternateRoutesUpdater setAlternateRoutes:v4 forMainRoute:v13])
  {
    v14 = [(MNLocationTracker *)self delegate];
    v15 = [(MNAlternateRoutesUpdater *)self->_alternateRoutesUpdater alternateRoutes];
    [v14 locationTracker:self didUpdateAlternateRoutes:v15];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = [(MNAlternateRoutesUpdater *)self->_alternateRoutesUpdater alternateRoutes];
  v17 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v24 + 1) + 8 * v20);
        v22 = [(MNLocationTracker *)self delegate];
        [v22 locationTracker:self didUpdateETAForRoute:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v18);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)tunnelLocationProjector:(id)a3 didUpdateLocation:(id)a4
{
  v4 = a4;
  v5 = +[MNLocationManager shared];
  [v5 pushLocation:v4];
}

- (void)_updateForSelectedNewRoute:(id)a3 alternateRoutes:(id)a4
{
  [(MNAlternateRoutesUpdater *)self->_alternateRoutesUpdater setAlternateRoutes:a4 forMainRoute:a3];
  v6 = [(MNLocationTracker *)self delegate];
  v5 = [(MNAlternateRoutesUpdater *)self->_alternateRoutesUpdater alternateRoutes];
  [v6 locationTracker:self didUpdateAlternateRoutes:v5];
}

- (void)_updateForArrivalAtLegIndex:(unint64_t)a3
{
  [(MNTunnelLocationProjector *)self->_tunnelLocationProjector setDelegate:0];
  [(MNTunnelLocationProjector *)self->_tunnelLocationProjector stop];
  v5.receiver = self;
  v5.super_class = MNCyclingTurnByTurnLocationTracker;
  [(MNTurnByTurnLocationTracker *)&v5 _updateForArrivalAtLegIndex:a3];
}

- (void)_updateForReroute:(id)a3 rerouteReason:(unint64_t)a4 request:(id)a5 response:(id)a6
{
  v21 = a3;
  alternateRoutesUpdater = self->_alternateRoutesUpdater;
  v11 = a6;
  v12 = a5;
  [(MNAlternateRoutesUpdater *)alternateRoutesUpdater updateForReroute:v21 rerouteReason:a4];
  v13 = [(MNAlternateRoutesUpdater *)self->_alternateRoutesUpdater alternateRoutes];
  v14 = [v21 route];
  v15 = [v14 etauPositions];
  v16 = [v15 mutableCopy];
  etauPositions = self->_etauPositions;
  self->_etauPositions = v16;

  v18 = [(MNLocationTracker *)self delegate];
  [v18 locationTracker:self didReroute:v21 newAlternateRoutes:v13 rerouteReason:a4 request:v12 response:v11];

  if (a4 != 11)
  {
    v19 = [v13 firstObject];
    v20 = [MNTrafficIncidentAlert validTrafficIncidentAlertsForNewRoute:v21 alternateRouteInfo:v19];
    [(MNTurnByTurnLocationTracker *)self _updateForNewTrafficIncidentAlerts:v20];
  }
}

- (void)_updateForLocation:(id)a3
{
  v10 = a3;
  [(MNTunnelLocationProjector *)self->_tunnelLocationProjector updateLocation:v10];
  if ([(MNAlternateRoutesUpdater *)self->_alternateRoutesUpdater updateForLocation:v10])
  {
    v4 = [(MNLocationTracker *)self delegate];
    v5 = [(MNAlternateRoutesUpdater *)self->_alternateRoutesUpdater alternateRoutes];
    [v4 locationTracker:self didUpdateAlternateRoutes:v5];
  }

  v6 = [(NSMutableArray *)self->_etauPositions firstObject];
  if (v6)
  {
    v7 = [v10 routeMatch];
    [v7 routeCoordinate];
    [v6 routeCoordinate];
    v8 = GEOPolylineCoordinateCompare();

    if (v8 != -1)
    {
      v9 = [(MNLocationTracker *)self delegate];
      [v9 locationTracker:self didReachETAUpdatePosition:v6];

      [(NSMutableArray *)self->_etauPositions removeObject:v6];
    }
  }
}

- (id)_overrideLocationForLocation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_lastKnownCourse >= 0.0)
  {
    [v4 rawCourse];
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

- (id)_newMapMatcherForRoute:(id)a3
{
  v4 = MEMORY[0x1E69A2278];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(MNLocationTracker *)self _auditToken];
  v8 = [v6 initWithRoute:v5 auditToken:v7];

  [v8 setUseMatchedCoordinateForMatching:1];
  return v8;
}

- (id)_matchedLocationForLocation:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MNGetPuckTrackingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 uuid];
    *buf = 138412290;
    v32 = v6;
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
    [v4 horizontalAccuracy];
    if (v11 > 65.0 || ([v4 course], v12 < 0.0) || (objc_msgSend(v4, "speed"), v13 < 0.0))
    {
      v14 = GEOFindOrCreateLog();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
LABEL_13:
        v16 = 0;
LABEL_20:

        goto LABEL_21;
      }

      *buf = 0;
      v15 = "We are still projecting and have not processed a high quality location. Ignoring current location.";
LABEL_12:
      _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_DEBUG, v15, buf, 2u);
      goto LABEL_13;
    }

    v17 = [(MNLocationTracker *)self lastMatchedLocation];
    v18 = [v17 timestamp];
    [v18 timeIntervalSinceReferenceDate];
    v20 = v19;

    v21 = [v4 timestamp];
    [v21 timeIntervalSinceReferenceDate];
    v23 = v22;

    if (v23 + 2.0 < v20)
    {
      v14 = GEOFindOrCreateLog();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
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
  v16 = [(MNTurnByTurnLocationTracker *)&v30 _matchedLocationForLocation:v4];
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
    v14 = [v4 uuid];
    [v16 setUuid:v14];
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

- (void)startTrackingWithInitialLocation:(id)a3 targetLegIndex:(unint64_t)a4
{
  v20.receiver = self;
  v20.super_class = MNCyclingTurnByTurnLocationTracker;
  [(MNTurnByTurnLocationTracker *)&v20 startTrackingWithInitialLocation:a3 targetLegIndex:a4];
  v5 = objc_alloc_init(MNTunnelLocationProjector);
  tunnelLocationProjector = self->_tunnelLocationProjector;
  self->_tunnelLocationProjector = v5;

  [(MNTunnelLocationProjector *)self->_tunnelLocationProjector setDelegate:self];
  v7 = [(MNLocationTracker *)self navigationSession];
  v8 = [v7 routeManager];

  v9 = objc_alloc_init(MNAlternateRoutesUpdater);
  alternateRoutesUpdater = self->_alternateRoutesUpdater;
  self->_alternateRoutesUpdater = v9;

  v11 = self->_alternateRoutesUpdater;
  v12 = [v8 alternateRoutes];
  v13 = [v8 currentRouteInfo];
  [(MNAlternateRoutesUpdater *)v11 setAlternateRoutes:v12 forMainRoute:v13];

  v14 = [(MNLocationTracker *)self delegate];
  v15 = [(MNAlternateRoutesUpdater *)self->_alternateRoutesUpdater alternateRoutes];
  [v14 locationTracker:self didUpdateAlternateRoutes:v15];

  v16 = [v8 currentRoute];
  v17 = [v16 etauPositions];
  v18 = [v17 mutableCopy];
  etauPositions = self->_etauPositions;
  self->_etauPositions = v18;
}

- (MNCyclingTurnByTurnLocationTracker)initWithNavigationSession:(id)a3
{
  v7.receiver = self;
  v7.super_class = MNCyclingTurnByTurnLocationTracker;
  v3 = [(MNTurnByTurnLocationTracker *)&v7 initWithNavigationSession:a3];
  v4 = v3;
  if (v3)
  {
    v3->_lastKnownCourse = -1.0;
    v5 = v3;
  }

  return v4;
}

@end