@interface MNDrivingTurnByTurnLocationTracker
- (MNDrivingTurnByTurnLocationTracker)initWithNavigationSession:(id)session;
- (id)_currentVehicleParkingInfoForParkingType:(int64_t)type;
- (id)_matchedLocationForLocation:(id)location;
- (id)_newMapMatcherForRoute:(id)route;
- (id)_overrideLocationForLocation:(id)location;
- (int)_detectedMotionForLocation:(id)location;
- (void)_updateForArrivalAtLegIndex:(unint64_t)index;
- (void)_updateForLocation:(id)location;
- (void)_updateForNewAlternateRoutes:(id)routes;
- (void)_updateForReroute:(id)reroute rerouteReason:(unint64_t)reason request:(id)request response:(id)response;
- (void)_updateForSelectedNewRoute:(id)route alternateRoutes:(id)routes;
- (void)_updateWalkingRouteBackgroundLoader;
- (void)arrivalUpdater:(id)updater didUpdateArrivalInfo:(id)info previousState:(int64_t)state;
- (void)arrivalUpdater:(id)updater didUpdateVehicleParkingType:(int64_t)type;
- (void)setNavigationSessionState:(id)state;
- (void)startTrackingWithInitialLocation:(id)location targetLegIndex:(unint64_t)index;
- (void)stopTracking;
- (void)tunnelLocationProjector:(id)projector didUpdateLocation:(id)location;
- (void)updateForETAUResponse:(id)response;
- (void)updateRequestForETAUpdate:(id)update;
- (void)walkingRouteBackgroundLoader:(id)loader didUpdateWalkingRoute:(id)route;
@end

@implementation MNDrivingTurnByTurnLocationTracker

- (void)walkingRouteBackgroundLoader:(id)loader didUpdateWalkingRoute:(id)route
{
  routeCopy = route;
  delegate = [(MNLocationTracker *)self delegate];
  [delegate locationTracker:self didUpdateBackgroundWalkingRoute:routeCopy];
}

- (void)tunnelLocationProjector:(id)projector didUpdateLocation:(id)location
{
  locationCopy = location;
  v5 = +[MNLocationManager shared];
  [v5 pushLocation:locationCopy];
}

- (void)arrivalUpdater:(id)updater didUpdateVehicleParkingType:(int64_t)type
{
  v6 = [(MNDrivingTurnByTurnLocationTracker *)self _currentVehicleParkingInfoForParkingType:type];
  delegate = [(MNLocationTracker *)self delegate];
  [delegate locationTracker:self didUpdateVehicleParkingInfo:v6];
}

- (void)_updateWalkingRouteBackgroundLoader
{
  v12 = *MEMORY[0x1E69E9840];
  navigationSessionState = [(MNLocationTracker *)self navigationSessionState];
  arrivalState = [navigationSessionState arrivalState];
  isInParkingDetectionRegion = 0;
  if (arrivalState > 4)
  {
    if (arrivalState == 6)
    {
      isInParkingDetectionRegion = self->_isInParkingDetectionRegion;
      goto LABEL_12;
    }

    if (arrivalState != 5)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (arrivalState)
  {
    if (arrivalState != 1)
    {
      goto LABEL_12;
    }

LABEL_7:
    isInParkingDetectionRegion = 1;
    goto LABEL_12;
  }

  if (self->_isInParkingDetectionRegion)
  {
    isInParkingDetectionRegion = [navigationSessionState isDisplayingNavigationTray];
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

    [(MNWalkingRouteBackgroundLoader *)walkingRouteBackgroundLoader setNavigationSessionState:navigationSessionState];
    [(MNWalkingRouteBackgroundLoader *)self->_walkingRouteBackgroundLoader start];
  }

  else
  {
    [(MNWalkingRouteBackgroundLoader *)walkingRouteBackgroundLoader stop];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)arrivalUpdater:(id)updater didUpdateArrivalInfo:(id)info previousState:(int64_t)state
{
  infoCopy = info;
  arrivalState = [infoCopy arrivalState];
  if (arrivalState <= 6 && ((1 << arrivalState) & 0x62) != 0)
  {
    [(MNDrivingTurnByTurnLocationTracker *)self _updateWalkingRouteBackgroundLoader];
    if ([infoCopy arrivalState] == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    v10 = [(MNDrivingTurnByTurnLocationTracker *)self _currentVehicleParkingInfoForParkingType:v9];
    [infoCopy setVehicleParkingInfo:v10];
  }

  [(MNLocationTracker *)self _updateArrivalInfo:infoCopy previousState:state];
}

- (int)_detectedMotionForLocation:(id)location
{
  locationCopy = location;
  if (([locationCopy locationUnreliable] & 1) != 0 || (objc_msgSend(locationCopy, "horizontalAccuracy"), v5 >= 50.0))
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
    navigationSession = [(MNLocationTracker *)self navigationSession];
    motionContext = [navigationSession motionContext];

    if ([motionContext isDriving])
    {
      if ([motionContext confidence])
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
        rawLocation = [locationCopy rawLocation];
        [rawLocation coordinate];
        self->_vehicleExitCoordinate.latitude = v12;
        self->_vehicleExitCoordinate.longitude = v13;
      }

      if (([motionContext isWalking] & 1) != 0 || objc_msgSend(motionContext, "isRunning"))
      {
        self->_vehicleExitConfidence |= 1uLL;
        self->_detectedTransportType = 2;
      }

      if ([motionContext exitType] == 1)
      {
        self->_vehicleExitConfidence |= 4uLL;
      }

      if ([motionContext exitType] == 2)
      {
        self->_vehicleExitConfidence |= 6uLL;
      }
    }

    detectedTransportType = self->_detectedTransportType;
  }

  return detectedTransportType;
}

- (void)_updateForNewAlternateRoutes:(id)routes
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

    if (v10 < 1600.0)
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
  v5.super_class = MNDrivingTurnByTurnLocationTracker;
  [(MNTurnByTurnLocationTracker *)&v5 _updateForArrivalAtLegIndex:index];
}

- (void)_updateForReroute:(id)reroute rerouteReason:(unint64_t)reason request:(id)request response:(id)response
{
  rerouteCopy = reroute;
  responseCopy = response;
  requestCopy = request;
  Integer = GEOConfigGetInteger();
  if (Integer)
  {
    v13 = Integer;
    lastMatchedLocation = [(MNLocationTracker *)self lastMatchedLocation];
    if (lastMatchedLocation)
    {
      lastMatchedLocation2 = [(MNLocationTracker *)self lastMatchedLocation];
      routeMatch = [lastMatchedLocation2 routeMatch];

      if (routeMatch)
      {
        lastMatchedLocation3 = [(MNLocationTracker *)self lastMatchedLocation];
        routeMatch2 = [lastMatchedLocation3 routeMatch];

        route = [rerouteCopy route];
        [route distanceToEndFromRouteCoordinate:{objc_msgSend(routeMatch2, "routeCoordinate")}];
        lastMatchedLocation = v20;
      }

      else
      {
        lastMatchedLocation = 0;
      }
    }

    targetLegIndex = [(MNLocationTracker *)self targetLegIndex];
    alternateRoutes = [(MNAlternateRoutesUpdater *)self->_alternateRoutesUpdater alternateRoutes];
    firstObject = [alternateRoutes firstObject];
    [responseCopy addFakeTrafficIncidentAlert:v13 targetLegIndex:targetLegIndex mainRouteInfo:rerouteCopy alternateRouteInfo:firstObject currentDistance:lastMatchedLocation];
  }

  [(MNTunnelLocationProjector *)self->_tunnelLocationProjector updateForRouteInfo:rerouteCopy];
  [(MNAlternateRoutesUpdater *)self->_alternateRoutesUpdater updateForReroute:rerouteCopy rerouteReason:reason];
  alternateRoutes2 = [(MNAlternateRoutesUpdater *)self->_alternateRoutesUpdater alternateRoutes];
  route2 = [rerouteCopy route];
  etauPositions = [route2 etauPositions];
  v27 = [etauPositions mutableCopy];
  etauPositions = self->_etauPositions;
  self->_etauPositions = v27;

  delegate = [(MNLocationTracker *)self delegate];
  [delegate locationTracker:self didReroute:rerouteCopy newAlternateRoutes:alternateRoutes2 rerouteReason:reason request:requestCopy response:responseCopy];

  if (reason != 11)
  {
    firstObject2 = [alternateRoutes2 firstObject];
    v31 = [MNTrafficIncidentAlert validTrafficIncidentAlertsForNewRoute:rerouteCopy alternateRouteInfo:firstObject2];
    [(MNTurnByTurnLocationTracker *)self _updateForNewTrafficIncidentAlerts:v31];
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
  v4 = MEMORY[0x1E69A2280];
  routeCopy = route;
  v6 = [v4 alloc];
  _auditToken = [(MNLocationTracker *)self _auditToken];
  v8 = [v6 initWithRoute:routeCopy auditToken:_auditToken];

  [v8 setUseMatchedCoordinateForMatching:GEOConfigGetBOOL()];
  return v8;
}

- (id)_matchedLocationForLocation:(id)location
{
  v30 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v5 = MNGetPuckTrackingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    uuid = [locationCopy uuid];
    *buf = 138412290;
    v29 = uuid;
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
    [locationCopy horizontalAccuracy];
    if (v11 > 65.0 || ([locationCopy course], v12 < 0.0) || (objc_msgSend(locationCopy, "speed"), v13 < 0.0))
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

    lastMatchedLocation = [(MNLocationTracker *)self lastMatchedLocation];
    timestamp = [lastMatchedLocation timestamp];
    [timestamp timeIntervalSinceReferenceDate];
    v20 = v19;

    timestamp2 = [locationCopy timestamp];
    [timestamp2 timeIntervalSinceReferenceDate];
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
  v16 = [(MNTurnByTurnLocationTracker *)&v27 _matchedLocationForLocation:locationCopy];
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

- (void)updateForETAUResponse:(id)response
{
  v35 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  v33.receiver = self;
  v33.super_class = MNDrivingTurnByTurnLocationTracker;
  [(MNTurnByTurnLocationTracker *)&v33 updateForETAUResponse:responseCopy];
  navigationSessionState = [(MNLocationTracker *)self navigationSessionState];
  currentRouteInfo = [navigationSessionState currentRouteInfo];
  route = [currentRouteInfo route];

  v8 = objc_alloc(MEMORY[0x1E69A2538]);
  waypoints = [responseCopy waypoints];
  request = [responseCopy request];
  routeAttributes = [request routeAttributes];
  response = [responseCopy response];
  styleAttributes = [route styleAttributes];
  v14 = [v8 initWithWaypoints:waypoints routeAttributes:routeAttributes etauResponse:response styleAttributes:styleAttributes];

  allETAUAlternateRouteInfos = [v14 allETAUAlternateRouteInfos];
  navigationSession = [(MNLocationTracker *)self navigationSession];
  routeManager = [navigationSession routeManager];
  currentRouteInfo2 = [routeManager currentRouteInfo];
  firstObject = [allETAUAlternateRouteInfos firstObject];
  v20 = [MNTrafficIncidentAlert validTrafficIncidentAlertsForETAUpdate:currentRouteInfo2 alternateRouteInfo:firstObject];

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
    [(MNDrivingTurnByTurnLocationTracker *)self _updateForNewAlternateRoutes:allETAUAlternateRouteInfos, v29];
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

      alternateRoute = [*(*(&v29 + 1) + 8 * i) alternateRoute];
      v24 |= alternateRoute != 0;
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

- (void)updateRequestForETAUpdate:(id)update
{
  updateCopy = update;
  v11.receiver = self;
  v11.super_class = MNDrivingTurnByTurnLocationTracker;
  [(MNTurnByTurnLocationTracker *)&v11 updateRequestForETAUpdate:updateCopy];
  navigationSession = [(MNLocationTracker *)self navigationSession];
  serverSessionStateInfo = [navigationSession serverSessionStateInfo];
  displayedTrafficBanners = [serverSessionStateInfo displayedTrafficBanners];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__MNDrivingTurnByTurnLocationTracker_updateRequestForETAUpdate___block_invoke;
  v9[3] = &unk_1E842BA58;
  v10 = updateCopy;
  v8 = updateCopy;
  [displayedTrafficBanners enumerateKeysAndObjectsUsingBlock:v9];
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

- (void)startTrackingWithInitialLocation:(id)location targetLegIndex:(unint64_t)index
{
  v30.receiver = self;
  v30.super_class = MNDrivingTurnByTurnLocationTracker;
  [(MNTurnByTurnLocationTracker *)&v30 startTrackingWithInitialLocation:location targetLegIndex:index];
  navigationSession = [(MNLocationTracker *)self navigationSession];
  routeManager = [navigationSession routeManager];

  navigationSession2 = [(MNLocationTracker *)self navigationSession];
  routeManager2 = [navigationSession2 routeManager];
  currentRouteInfo = [routeManager2 currentRouteInfo];
  navigationSession3 = [(MNLocationTracker *)self navigationSession];
  routeManager3 = [navigationSession3 routeManager];
  alternateRoutes = [routeManager3 alternateRoutes];
  firstObject = [alternateRoutes firstObject];
  v14 = [MNTrafficIncidentAlert validTrafficIncidentAlertsForNewRoute:currentRouteInfo alternateRouteInfo:firstObject];
  [(MNTurnByTurnLocationTracker *)self _updateForNewTrafficIncidentAlerts:v14];

  v15 = objc_alloc_init(MNTunnelLocationProjector);
  tunnelLocationProjector = self->_tunnelLocationProjector;
  self->_tunnelLocationProjector = v15;

  [(MNTunnelLocationProjector *)self->_tunnelLocationProjector setDelegate:self];
  v17 = self->_tunnelLocationProjector;
  currentRouteInfo2 = [routeManager currentRouteInfo];
  [(MNTunnelLocationProjector *)v17 updateForRouteInfo:currentRouteInfo2];

  v19 = objc_alloc_init(MNAlternateRoutesUpdater);
  alternateRoutesUpdater = self->_alternateRoutesUpdater;
  self->_alternateRoutesUpdater = v19;

  v21 = self->_alternateRoutesUpdater;
  alternateRoutes2 = [routeManager alternateRoutes];
  currentRouteInfo3 = [routeManager currentRouteInfo];
  [(MNAlternateRoutesUpdater *)v21 setAlternateRoutes:alternateRoutes2 forMainRoute:currentRouteInfo3];

  delegate = [(MNLocationTracker *)self delegate];
  alternateRoutes3 = [(MNAlternateRoutesUpdater *)self->_alternateRoutesUpdater alternateRoutes];
  [delegate locationTracker:self didUpdateAlternateRoutes:alternateRoutes3];

  currentRoute = [routeManager currentRoute];
  etauPositions = [currentRoute etauPositions];
  v28 = [etauPositions mutableCopy];
  etauPositions = self->_etauPositions;
  self->_etauPositions = v28;
}

- (void)setNavigationSessionState:(id)state
{
  stateCopy = state;
  navigationSessionState = [(MNLocationTracker *)self navigationSessionState];
  arrivalState = [navigationSessionState arrivalState];
  arrivalState2 = [stateCopy arrivalState];

  navigationSessionState2 = [(MNLocationTracker *)self navigationSessionState];
  isDisplayingNavigationTray = [navigationSessionState2 isDisplayingNavigationTray];
  isDisplayingNavigationTray2 = [stateCopy isDisplayingNavigationTray];

  v11.receiver = self;
  v11.super_class = MNDrivingTurnByTurnLocationTracker;
  [(MNTurnByTurnLocationTracker *)&v11 setNavigationSessionState:stateCopy];
  [(MNWalkingRouteBackgroundLoader *)self->_walkingRouteBackgroundLoader setNavigationSessionState:stateCopy];

  if (arrivalState != arrivalState2 || isDisplayingNavigationTray != isDisplayingNavigationTray2)
  {
    [(MNDrivingTurnByTurnLocationTracker *)self _updateWalkingRouteBackgroundLoader];
  }
}

- (id)_currentVehicleParkingInfoForParkingType:(int64_t)type
{
  v5 = objc_alloc_init(MNVehicleParkingInfo);
  [(MNVehicleParkingInfo *)v5 setParkingType:type];
  walkingRouteBackgroundLoader = self->_walkingRouteBackgroundLoader;
  if (walkingRouteBackgroundLoader)
  {
    walkingRouteInfo = [(MNWalkingRouteBackgroundLoader *)walkingRouteBackgroundLoader walkingRouteInfo];
    route = [walkingRouteInfo route];
    [(MNVehicleParkingInfo *)v5 setRemainingWalkingRoute:route];

    walkingRouteInfo2 = [(MNWalkingRouteBackgroundLoader *)self->_walkingRouteBackgroundLoader walkingRouteInfo];
    displayETAInfo = [walkingRouteInfo2 displayETAInfo];
    [(MNVehicleParkingInfo *)v5 setWalkingRouteDisplayETAInfo:displayETAInfo];
  }

  return v5;
}

- (MNDrivingTurnByTurnLocationTracker)initWithNavigationSession:(id)session
{
  v7.receiver = self;
  v7.super_class = MNDrivingTurnByTurnLocationTracker;
  v3 = [(MNTurnByTurnLocationTracker *)&v7 initWithNavigationSession:session];
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