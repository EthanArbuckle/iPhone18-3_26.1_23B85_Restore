@interface MNDrivingTurnByTurnLocationTracker
- (MNDrivingTurnByTurnLocationTracker)initWithNavigationSession:(id)a3;
- (id)_currentVehicleParkingInfoForParkingType:(int64_t)a3;
- (id)_matchedLocationForLocation:(id)a3;
- (id)_newMapMatcherForRoute:(id)a3;
- (id)_overrideLocationForLocation:(id)a3;
- (int)_detectedMotionForLocation:(id)a3;
- (void)_updateForArrivalAtLegIndex:(unint64_t)a3;
- (void)_updateForLocation:(id)a3;
- (void)_updateForNewAlternateRoutes:(id)a3;
- (void)_updateForReroute:(id)a3 rerouteReason:(unint64_t)a4 request:(id)a5 response:(id)a6;
- (void)_updateForSelectedNewRoute:(id)a3 alternateRoutes:(id)a4;
- (void)_updateWalkingRouteBackgroundLoader;
- (void)arrivalUpdater:(id)a3 didUpdateArrivalInfo:(id)a4 previousState:(int64_t)a5;
- (void)arrivalUpdater:(id)a3 didUpdateVehicleParkingType:(int64_t)a4;
- (void)setNavigationSessionState:(id)a3;
- (void)startTrackingWithInitialLocation:(id)a3 targetLegIndex:(unint64_t)a4;
- (void)stopTracking;
- (void)tunnelLocationProjector:(id)a3 didUpdateLocation:(id)a4;
- (void)updateForETAUResponse:(id)a3;
- (void)updateRequestForETAUpdate:(id)a3;
- (void)walkingRouteBackgroundLoader:(id)a3 didUpdateWalkingRoute:(id)a4;
@end

@implementation MNDrivingTurnByTurnLocationTracker

- (void)walkingRouteBackgroundLoader:(id)a3 didUpdateWalkingRoute:(id)a4
{
  v5 = a4;
  v6 = [(MNLocationTracker *)self delegate];
  [v6 locationTracker:self didUpdateBackgroundWalkingRoute:v5];
}

- (void)tunnelLocationProjector:(id)a3 didUpdateLocation:(id)a4
{
  v4 = a4;
  v5 = +[MNLocationManager shared];
  [v5 pushLocation:v4];
}

- (void)arrivalUpdater:(id)a3 didUpdateVehicleParkingType:(int64_t)a4
{
  v6 = [(MNDrivingTurnByTurnLocationTracker *)self _currentVehicleParkingInfoForParkingType:a4];
  v5 = [(MNLocationTracker *)self delegate];
  [v5 locationTracker:self didUpdateVehicleParkingInfo:v6];
}

- (void)_updateWalkingRouteBackgroundLoader
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(MNLocationTracker *)self navigationSessionState];
  v4 = [v3 arrivalState];
  isInParkingDetectionRegion = 0;
  if (v4 > 4)
  {
    if (v4 == 6)
    {
      isInParkingDetectionRegion = self->_isInParkingDetectionRegion;
      goto LABEL_12;
    }

    if (v4 != 5)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_12;
    }

LABEL_7:
    isInParkingDetectionRegion = 1;
    goto LABEL_12;
  }

  if (self->_isInParkingDetectionRegion)
  {
    isInParkingDetectionRegion = [v3 isDisplayingNavigationTray];
  }

  else
  {
    isInParkingDetectionRegion = 0;
  }

LABEL_12:
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = isInParkingDetectionRegion & 1;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "Should start walking route background loader: %d", v11, 8u);
  }

  walkingRouteBackgroundLoader = self->_walkingRouteBackgroundLoader;
  if (isInParkingDetectionRegion)
  {
    if (!walkingRouteBackgroundLoader)
    {
      v8 = objc_alloc_init(MNWalkingRouteBackgroundLoader);
      v9 = self->_walkingRouteBackgroundLoader;
      self->_walkingRouteBackgroundLoader = v8;

      [(MNWalkingRouteBackgroundLoader *)self->_walkingRouteBackgroundLoader setDelegate:self];
      walkingRouteBackgroundLoader = self->_walkingRouteBackgroundLoader;
    }

    [(MNWalkingRouteBackgroundLoader *)walkingRouteBackgroundLoader setNavigationSessionState:v3];
    [(MNWalkingRouteBackgroundLoader *)self->_walkingRouteBackgroundLoader start];
  }

  else
  {
    [(MNWalkingRouteBackgroundLoader *)walkingRouteBackgroundLoader stop];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)arrivalUpdater:(id)a3 didUpdateArrivalInfo:(id)a4 previousState:(int64_t)a5
{
  v11 = a4;
  v7 = [v11 arrivalState];
  if (v7 <= 6 && ((1 << v7) & 0x62) != 0)
  {
    [(MNDrivingTurnByTurnLocationTracker *)self _updateWalkingRouteBackgroundLoader];
    if ([v11 arrivalState] == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    v10 = [(MNDrivingTurnByTurnLocationTracker *)self _currentVehicleParkingInfoForParkingType:v9];
    [v11 setVehicleParkingInfo:v10];
  }

  [(MNLocationTracker *)self _updateArrivalInfo:v11 previousState:a5];
}

- (int)_detectedMotionForLocation:(id)a3
{
  v4 = a3;
  if (([v4 locationUnreliable] & 1) != 0 || (objc_msgSend(v4, "horizontalAccuracy"), v5 >= 50.0))
  {
    self->_vehicleExitConfidence = 0;
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *v15 = 0;
      _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_DEBUG, "Unreliable location to detect motion. Resetting motion.", v15, 2u);
    }

    detectedTransportType = 4;
  }

  else
  {
    v6 = [(MNLocationTracker *)self navigationSession];
    v7 = [v6 motionContext];

    if ([v7 isDriving])
    {
      if ([v7 confidence])
      {
        v8 = 0;
      }

      else
      {
        v8 = self->_vehicleExitConfidence & 0xFFFFFFFE;
      }

      self->_vehicleExitConfidence = v8;
      self->_detectedTransportType = 0;
    }

    else
    {
      if (!self->_vehicleExitConfidence)
      {
        v11 = [v4 rawLocation];
        [v11 coordinate];
        self->_vehicleExitCoordinate.latitude = v12;
        self->_vehicleExitCoordinate.longitude = v13;
      }

      if (([v7 isWalking] & 1) != 0 || objc_msgSend(v7, "isRunning"))
      {
        self->_vehicleExitConfidence |= 1uLL;
        self->_detectedTransportType = 2;
      }

      if ([v7 exitType] == 1)
      {
        self->_vehicleExitConfidence |= 4uLL;
      }

      if ([v7 exitType] == 2)
      {
        self->_vehicleExitConfidence |= 6uLL;
      }
    }

    detectedTransportType = self->_detectedTransportType;
  }

  return detectedTransportType;
}

- (void)_updateForNewAlternateRoutes:(id)a3
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

    if (v10 < 1600.0)
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
  v5.super_class = MNDrivingTurnByTurnLocationTracker;
  [(MNTurnByTurnLocationTracker *)&v5 _updateForArrivalAtLegIndex:a3];
}

- (void)_updateForReroute:(id)a3 rerouteReason:(unint64_t)a4 request:(id)a5 response:(id)a6
{
  v32 = a3;
  v10 = a6;
  v11 = a5;
  Integer = GEOConfigGetInteger();
  if (Integer)
  {
    v13 = Integer;
    v14 = [(MNLocationTracker *)self lastMatchedLocation];
    if (v14)
    {
      v15 = [(MNLocationTracker *)self lastMatchedLocation];
      v16 = [v15 routeMatch];

      if (v16)
      {
        v17 = [(MNLocationTracker *)self lastMatchedLocation];
        v18 = [v17 routeMatch];

        v19 = [v32 route];
        [v19 distanceToEndFromRouteCoordinate:{objc_msgSend(v18, "routeCoordinate")}];
        v14 = v20;
      }

      else
      {
        v14 = 0;
      }
    }

    v21 = [(MNLocationTracker *)self targetLegIndex];
    v22 = [(MNAlternateRoutesUpdater *)self->_alternateRoutesUpdater alternateRoutes];
    v23 = [v22 firstObject];
    [v10 addFakeTrafficIncidentAlert:v13 targetLegIndex:v21 mainRouteInfo:v32 alternateRouteInfo:v23 currentDistance:v14];
  }

  [(MNTunnelLocationProjector *)self->_tunnelLocationProjector updateForRouteInfo:v32];
  [(MNAlternateRoutesUpdater *)self->_alternateRoutesUpdater updateForReroute:v32 rerouteReason:a4];
  v24 = [(MNAlternateRoutesUpdater *)self->_alternateRoutesUpdater alternateRoutes];
  v25 = [v32 route];
  v26 = [v25 etauPositions];
  v27 = [v26 mutableCopy];
  etauPositions = self->_etauPositions;
  self->_etauPositions = v27;

  v29 = [(MNLocationTracker *)self delegate];
  [v29 locationTracker:self didReroute:v32 newAlternateRoutes:v24 rerouteReason:a4 request:v11 response:v10];

  if (a4 != 11)
  {
    v30 = [v24 firstObject];
    v31 = [MNTrafficIncidentAlert validTrafficIncidentAlertsForNewRoute:v32 alternateRouteInfo:v30];
    [(MNTurnByTurnLocationTracker *)self _updateForNewTrafficIncidentAlerts:v31];
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
  v4 = MEMORY[0x1E69A2280];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(MNLocationTracker *)self _auditToken];
  v8 = [v6 initWithRoute:v5 auditToken:v7];

  [v8 setUseMatchedCoordinateForMatching:GEOConfigGetBOOL()];
  return v8;
}

- (id)_matchedLocationForLocation:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MNGetPuckTrackingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 uuid];
    *buf = 138412290;
    v29 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "[MN] [%@] - Processing - in MNDrivingTurnByTurnLocationTracker::_matchedLocationForLocation:", buf, 0xCu);
  }

  v7 = MNGetMNLocationTrackerLog();
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "MatchedDrivingTBTLocationForLocation", "", buf, 2u);
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
        goto LABEL_18;
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

  v27.receiver = self;
  v27.super_class = MNDrivingTurnByTurnLocationTracker;
  v16 = [(MNTurnByTurnLocationTracker *)&v27 _matchedLocationForLocation:v4];
  v24 = v10;
  v14 = v24;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v14, OS_SIGNPOST_INTERVAL_END, v8, "MatchedDrivingTBTLocationForLocation", "", buf, 2u);
  }

LABEL_18:

  v25 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)updateForETAUResponse:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v33.receiver = self;
  v33.super_class = MNDrivingTurnByTurnLocationTracker;
  [(MNTurnByTurnLocationTracker *)&v33 updateForETAUResponse:v4];
  v5 = [(MNLocationTracker *)self navigationSessionState];
  v6 = [v5 currentRouteInfo];
  v7 = [v6 route];

  v8 = objc_alloc(MEMORY[0x1E69A2538]);
  v9 = [v4 waypoints];
  v10 = [v4 request];
  v11 = [v10 routeAttributes];
  v12 = [v4 response];
  v13 = [v7 styleAttributes];
  v14 = [v8 initWithWaypoints:v9 routeAttributes:v11 etauResponse:v12 styleAttributes:v13];

  v15 = [v14 allETAUAlternateRouteInfos];
  v16 = [(MNLocationTracker *)self navigationSession];
  v17 = [v16 routeManager];
  v18 = [v17 currentRouteInfo];
  v19 = [v15 firstObject];
  v20 = [MNTrafficIncidentAlert validTrafficIncidentAlertsForETAUpdate:v18 alternateRouteInfo:v19];

  [(MNTurnByTurnLocationTracker *)self _updateForNewTrafficIncidentAlerts:v20];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v21 = v20;
  v22 = [v21 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (!v22)
  {

LABEL_11:
    [(MNDrivingTurnByTurnLocationTracker *)self _updateForNewAlternateRoutes:v15, v29];
    goto LABEL_12;
  }

  v23 = v22;
  v24 = 0;
  v25 = *v30;
  do
  {
    for (i = 0; i != v23; ++i)
    {
      if (*v30 != v25)
      {
        objc_enumerationMutation(v21);
      }

      v27 = [*(*(&v29 + 1) + 8 * i) alternateRoute];
      v24 |= v27 != 0;
    }

    v23 = [v21 countByEnumeratingWithState:&v29 objects:v34 count:16];
  }

  while (v23);

  if ((v24 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:

  v28 = *MEMORY[0x1E69E9840];
}

- (void)updateRequestForETAUpdate:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MNDrivingTurnByTurnLocationTracker;
  [(MNTurnByTurnLocationTracker *)&v11 updateRequestForETAUpdate:v4];
  v5 = [(MNLocationTracker *)self navigationSession];
  v6 = [v5 serverSessionStateInfo];
  v7 = [v6 displayedTrafficBanners];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__MNDrivingTurnByTurnLocationTracker_updateRequestForETAUpdate___block_invoke;
  v9[3] = &unk_1E842BA58;
  v10 = v4;
  v8 = v4;
  [v7 enumerateKeysAndObjectsUsingBlock:v9];
}

void __64__MNDrivingTurnByTurnLocationTracker_updateRequestForETAUpdate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = *(a1 + 32);
  v6 = [a2 copy];
  [v5 addDisplayedBannerId:v6];

  if ([v11 length])
  {
    v7 = [*(a1 + 32) clientFeedbackInfo];

    if (!v7)
    {
      v8 = objc_opt_new();
      [*(a1 + 32) setClientFeedbackInfo:v8];
    }

    v9 = [*(a1 + 32) clientFeedbackInfo];
    v10 = [v11 copy];
    [v9 addDisplayedBannerEventInfo:v10];
  }
}

- (void)stopTracking
{
  v6.receiver = self;
  v6.super_class = MNDrivingTurnByTurnLocationTracker;
  [(MNTurnByTurnLocationTracker *)&v6 stopTracking];
  alternateRoutesUpdater = self->_alternateRoutesUpdater;
  self->_alternateRoutesUpdater = 0;

  [(MNTunnelLocationProjector *)self->_tunnelLocationProjector setDelegate:0];
  [(MNTunnelLocationProjector *)self->_tunnelLocationProjector stop];
  tunnelLocationProjector = self->_tunnelLocationProjector;
  self->_tunnelLocationProjector = 0;

  [(MNWalkingRouteBackgroundLoader *)self->_walkingRouteBackgroundLoader stop];
  [(MNWalkingRouteBackgroundLoader *)self->_walkingRouteBackgroundLoader setDelegate:0];
  walkingRouteBackgroundLoader = self->_walkingRouteBackgroundLoader;
  self->_walkingRouteBackgroundLoader = 0;
}

- (void)startTrackingWithInitialLocation:(id)a3 targetLegIndex:(unint64_t)a4
{
  v30.receiver = self;
  v30.super_class = MNDrivingTurnByTurnLocationTracker;
  [(MNTurnByTurnLocationTracker *)&v30 startTrackingWithInitialLocation:a3 targetLegIndex:a4];
  v5 = [(MNLocationTracker *)self navigationSession];
  v6 = [v5 routeManager];

  v7 = [(MNLocationTracker *)self navigationSession];
  v8 = [v7 routeManager];
  v9 = [v8 currentRouteInfo];
  v10 = [(MNLocationTracker *)self navigationSession];
  v11 = [v10 routeManager];
  v12 = [v11 alternateRoutes];
  v13 = [v12 firstObject];
  v14 = [MNTrafficIncidentAlert validTrafficIncidentAlertsForNewRoute:v9 alternateRouteInfo:v13];
  [(MNTurnByTurnLocationTracker *)self _updateForNewTrafficIncidentAlerts:v14];

  v15 = objc_alloc_init(MNTunnelLocationProjector);
  tunnelLocationProjector = self->_tunnelLocationProjector;
  self->_tunnelLocationProjector = v15;

  [(MNTunnelLocationProjector *)self->_tunnelLocationProjector setDelegate:self];
  v17 = self->_tunnelLocationProjector;
  v18 = [v6 currentRouteInfo];
  [(MNTunnelLocationProjector *)v17 updateForRouteInfo:v18];

  v19 = objc_alloc_init(MNAlternateRoutesUpdater);
  alternateRoutesUpdater = self->_alternateRoutesUpdater;
  self->_alternateRoutesUpdater = v19;

  v21 = self->_alternateRoutesUpdater;
  v22 = [v6 alternateRoutes];
  v23 = [v6 currentRouteInfo];
  [(MNAlternateRoutesUpdater *)v21 setAlternateRoutes:v22 forMainRoute:v23];

  v24 = [(MNLocationTracker *)self delegate];
  v25 = [(MNAlternateRoutesUpdater *)self->_alternateRoutesUpdater alternateRoutes];
  [v24 locationTracker:self didUpdateAlternateRoutes:v25];

  v26 = [v6 currentRoute];
  v27 = [v26 etauPositions];
  v28 = [v27 mutableCopy];
  etauPositions = self->_etauPositions;
  self->_etauPositions = v28;
}

- (void)setNavigationSessionState:(id)a3
{
  v4 = a3;
  v5 = [(MNLocationTracker *)self navigationSessionState];
  v6 = [v5 arrivalState];
  v7 = [v4 arrivalState];

  v8 = [(MNLocationTracker *)self navigationSessionState];
  v9 = [v8 isDisplayingNavigationTray];
  v10 = [v4 isDisplayingNavigationTray];

  v11.receiver = self;
  v11.super_class = MNDrivingTurnByTurnLocationTracker;
  [(MNTurnByTurnLocationTracker *)&v11 setNavigationSessionState:v4];
  [(MNWalkingRouteBackgroundLoader *)self->_walkingRouteBackgroundLoader setNavigationSessionState:v4];

  if (v6 != v7 || v9 != v10)
  {
    [(MNDrivingTurnByTurnLocationTracker *)self _updateWalkingRouteBackgroundLoader];
  }
}

- (id)_currentVehicleParkingInfoForParkingType:(int64_t)a3
{
  v5 = objc_alloc_init(MNVehicleParkingInfo);
  [(MNVehicleParkingInfo *)v5 setParkingType:a3];
  walkingRouteBackgroundLoader = self->_walkingRouteBackgroundLoader;
  if (walkingRouteBackgroundLoader)
  {
    v7 = [(MNWalkingRouteBackgroundLoader *)walkingRouteBackgroundLoader walkingRouteInfo];
    v8 = [v7 route];
    [(MNVehicleParkingInfo *)v5 setRemainingWalkingRoute:v8];

    v9 = [(MNWalkingRouteBackgroundLoader *)self->_walkingRouteBackgroundLoader walkingRouteInfo];
    v10 = [v9 displayETAInfo];
    [(MNVehicleParkingInfo *)v5 setWalkingRouteDisplayETAInfo:v10];
  }

  return v5;
}

- (MNDrivingTurnByTurnLocationTracker)initWithNavigationSession:(id)a3
{
  v7.receiver = self;
  v7.super_class = MNDrivingTurnByTurnLocationTracker;
  v3 = [(MNTurnByTurnLocationTracker *)&v7 initWithNavigationSession:a3];
  v4 = v3;
  if (v3)
  {
    v3->_detectedTransportType = 4;
    v3->_lastKnownCourse = -1.0;
    v5 = v3;
  }

  return v4;
}

@end