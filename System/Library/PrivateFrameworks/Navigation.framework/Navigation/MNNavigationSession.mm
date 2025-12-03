@interface MNNavigationSession
- (BOOL)repeatCurrentGuidance;
- (BOOL)repeatCurrentTrafficAlert;
- (BOOL)wantsETAUpdates;
- (MNNavigationSession)init;
- (MNNavigationSession)initWithRouteManager:(id)manager auditToken:(id)token traceManager:(id)traceManager;
- (id)routeInfoForUpdateManager:(id)manager reason:(unint64_t)reason;
- (void)_addProbeCrumbLocation:(id)location;
- (void)_closeTileLoader;
- (void)_openTileLoader;
- (void)_startAudioSessionWithGuidanceLevelOverride:(unint64_t)override;
- (void)_startIdleTimerUpdates;
- (void)_startLocationTrackingWithInitialLocation:(id)location targetLegIndex:(unint64_t)index;
- (void)_startMotionUpdates;
- (void)_startTravelTimeUpdates;
- (void)_startVirtualGarageUpdates;
- (void)_stopAudioSession;
- (void)_stopIdleTimerUpdates;
- (void)_stopLocationTracking;
- (void)_stopMotionUpdates;
- (void)_stopTravelTimeUpdates;
- (void)_stopVirtualGarageUpdates;
- (void)_updateNavigationSessionState:(id)state;
- (void)_updateResumeRouteInfoFrom:(id)from;
- (void)audioManager:(id)manager didChangeVoiceGuidanceLevel:(unint64_t)level;
- (void)dealloc;
- (void)guidanceManager:(id)manager announce:(id)announce isImportant:(BOOL)important shortPromptType:(unint64_t)type stage:(unint64_t)stage completionBlock:(id)block;
- (void)guidanceManager:(id)manager didUpdateNavTrayGuidance:(id)guidance;
- (void)insertWaypoint:(id)waypoint;
- (void)locationManager:(id)manager didUpdateHeading:(id)heading;
- (void)locationManager:(id)manager didUpdateLocation:(id)location;
- (void)locationTracker:(id)tracker didEnterPreArrivalStateForWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index;
- (void)locationTracker:(id)tracker didFailRerouteWithError:(id)error;
- (void)locationTracker:(id)tracker didReroute:(id)reroute newAlternateRoutes:(id)routes rerouteReason:(unint64_t)reason request:(id)request response:(id)response;
- (void)locationTracker:(id)tracker didResumeNavigatingFromWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index reason:(unint64_t)reason;
- (void)locationTracker:(id)tracker didSwitchToNewTransportTypeWithRoute:(id)route rerouteReason:(unint64_t)reason request:(id)request response:(id)response;
- (void)locationTracker:(id)tracker didUpdateAlternateRoutes:(id)routes;
- (void)locationTracker:(id)tracker didUpdateArrivalInfo:(id)info previousState:(int64_t)state;
- (void)locationTracker:(id)tracker didUpdateETAForRoute:(id)route;
- (void)locationTracker:(id)tracker didUpdateTargetLegIndex:(unint64_t)index;
- (void)locationTracker:(id)tracker dismissedTrafficIncidentAlert:(id)alert;
- (void)locationTracker:(id)tracker invalidatedTrafficIncidentAlert:(id)alert;
- (void)locationTracker:(id)tracker receivedTrafficIncidentAlert:(id)alert responseCallback:(id)callback;
- (void)locationTracker:(id)tracker updatedTrafficIncidentAlert:(id)alert;
- (void)locationTrackerDidArrive:(id)arrive;
- (void)locationTrackerDidEnterPreArrivalState:(id)state;
- (void)motionContextDidUpdateMotion:(id)motion;
- (void)removeWaypointAtIndex:(unint64_t)index;
- (void)rerouteWithWaypoints:(id)waypoints;
- (void)resumeOriginalDestination;
- (void)startArrivalInfoUpdates;
- (void)startLocationUpdates;
- (void)startNavigationSessionWithDetails:(id)details;
- (void)startTimedETAUpdates;
- (void)stopArrivalInfoUpdates;
- (void)stopLocationUpdates;
- (void)stopNavigationSessionWithReason:(unint64_t)reason;
- (void)stopTimedETAUpdates;
- (void)switchToRoute:(id)route;
- (void)tracePlayer:(id)player didJumpToRouteResponse:(id)response request:(id)request waypoints:(id)waypoints;
- (void)tracePlayer:(id)player didSeekToTime:(double)time fromTime:(double)fromTime location:(id)location;
- (void)tracePlayer:(id)player didUpdateCurrentRoute:(id)route reason:(unint64_t)reason;
- (void)updateDestination:(id)destination;
- (void)updateForLocation:(id)location;
- (void)updateForUserIncidentReport:(id)report;
- (void)updateManager:(id)manager didReceiveETAResponse:(id)response;
- (void)updateManager:(id)manager willSendETARequest:(id)request;
- (void)updateWithInitialLocation:(id)location;
- (void)valueChangedForGEOConfigKey:(id)key;
- (void)vehicleMonitorDidDisconnectFromVehicle:(id)vehicle;
@end

@implementation MNNavigationSession

- (void)startArrivalInfoUpdates
{
  selfCopy = self;
  MNNavigationSession.startArrivalInfoUpdates()();
}

- (void)stopArrivalInfoUpdates
{
  selfCopy = self;
  MNNavigationSession.stopArrivalInfoUpdates()();
}

- (void)startTimedETAUpdates
{
  selfCopy = self;
  MNNavigationSession.startTimedETAUpdates()();
}

- (void)stopTimedETAUpdates
{
  selfCopy = self;
  MNNavigationSession.stopTimedETAUpdates()();
}

- (void)updateForUserIncidentReport:(id)report
{
  reportCopy = report;
  selfCopy = self;
  MNNavigationSession.update(for:)(reportCopy);
}

- (void)startLocationUpdates
{
  selfCopy = self;
  MNNavigationSession.startLocationUpdates()();
}

- (void)stopLocationUpdates
{
  v2 = qword_1EC75BF68;
  selfCopy = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1EC75BF70;
  NavigationLocationManager.stopUpdatingLocation()();
  NavigationLocationManager.stopUpdatingHeading()();
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v5 = OBJC_IVAR___MNLocationManager_mapMatchingProvider;
  swift_beginAccess();
  sub_1D318865C(v6, v4 + v5);
  swift_endAccess();
  [*(v4 + OBJC_IVAR___MNLocationManager__observers) unregisterObserver_];
}

- (void)locationManager:(id)manager didUpdateLocation:(id)location
{
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  *(v6 + 24) = location;
  v11[4] = sub_1D3188860;
  v11[5] = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D3122E0C;
  v11[3] = &block_descriptor_7;
  v7 = _Block_copy(v11);
  locationCopy = location;
  selfCopy = self;
  v10 = locationCopy;

  MNRunAsyncOnNavigationQueue(v7);

  _Block_release(v7);
}

- (void)locationManager:(id)manager didUpdateHeading:(id)heading
{
  managerCopy = manager;
  headingCopy = heading;
  selfCopy = self;
  sub_1D31886DC(headingCopy);
}

- (void)valueChangedForGEOConfigKey:(id)key
{
  if (key.var0 == 8 && key.var1 == &NavigationConfig_LocationProjectionTimeSeconds_Metadata)
  {
    GEOConfigGetDouble();
    self->_locationProjectionTime = v4;
  }
}

- (id)routeInfoForUpdateManager:(id)manager reason:(unint64_t)reason
{
  managerCopy = manager;
  if (reason - 3 >= 4 && ([(MNLocationTracker *)self->_locationTracker isRerouting]|| [(MNNavigationSession *)self navigationState]== 6))
  {
    currentRouteInfo = 0;
  }

  else
  {
    currentRouteInfo = [(MNRouteManager *)self->_routeManager currentRouteInfo];
  }

  return currentRouteInfo;
}

- (BOOL)wantsETAUpdates
{
  if ((self->_navigationCapabilities & 1) == 0)
  {
    return 0;
  }

  currentRoute = [(MNRouteManager *)self->_routeManager currentRoute];
  transportType = [currentRoute transportType];

  if (self->_navigationType != 3)
  {
    return 0;
  }

  return !transportType || transportType == 3;
}

- (void)updateManager:(id)manager didReceiveETAResponse:(id)response
{
  responseCopy = response;
  [(MNLocationTracker *)self->_locationTracker updateForETAUResponse:responseCopy];
  serverSessionStateInfo = self->_serverSessionStateInfo;
  response = [responseCopy response];
  [(MNServerSessionStateInfo *)serverSessionStateInfo updateWithETAUResponse:response];

  lastMatchedLocation = [(MNNavigationSession *)self lastMatchedLocation];
  routeMatch = [lastMatchedLocation routeMatch];
  -[MNNavigationSession _updateResumeRouteInfoFrom:](self, "_updateResumeRouteInfoFrom:", [routeMatch routeCoordinate]);

  error = [responseCopy error];

  if (error)
  {
    v10 = objc_opt_new();
    error2 = [responseCopy error];
    [v10 setError:error2];

    [(GEOObserverHashTable *)self->_observers navigationSession:self didSendNavigationServiceCallback:v10];
  }
}

- (void)updateManager:(id)manager willSendETARequest:(id)request
{
  v19 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v6 = MNGetMNNavigationSessionLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    serverSessionStateInfo = self->_serverSessionStateInfo;
    v15 = 134218242;
    v16 = requestCopy;
    v17 = 2112;
    v18 = serverSessionStateInfo;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "willSendETARequest - Request: %p | %@", &v15, 0x16u);
  }

  sessionState = [(MNServerSessionStateInfo *)self->_serverSessionStateInfo sessionState];
  [requestCopy setSessionState:sessionState];

  currentRoute = [(MNRouteManager *)self->_routeManager currentRoute];
  directionsResponseID = [currentRoute directionsResponseID];
  [requestCopy setDirectionsResponseID:directionsResponseID];

  v11 = objc_opt_new();
  [requestCopy setTripInfo:v11];

  hasVisitedFirstStop = [(MNLocationTracker *)self->_locationTracker hasVisitedFirstStop];
  tripInfo = [requestCopy tripInfo];
  [tripInfo setHasVisitedFirstStop:hasVisitedFirstStop];

  [(MNLocationTracker *)self->_locationTracker updateRequestForETAUpdate:requestCopy];
  v14 = *MEMORY[0x1E69E9840];
}

- (void)audioManager:(id)manager didChangeVoiceGuidanceLevel:(unint64_t)level
{
  [(MNGuidanceManager *)self->_guidanceManager setPreferredGuidanceLevel:level];
  v6 = objc_alloc_init(MNNavigationServiceCallback_DidChangeVoiceGuidanceLevel);
  [(MNNavigationServiceCallback_DidChangeVoiceGuidanceLevel *)v6 setVoiceGuidanceLevel:level];
  [(GEOObserverHashTable *)self->_observers navigationSession:self didSendNavigationServiceCallback:v6];
  if (level == 2)
  {
    [(MNNavigationSession *)self repeatCurrentGuidance];
  }
}

- (void)vehicleMonitorDidDisconnectFromVehicle:(id)vehicle
{
  v22 = *MEMORY[0x1E69E9840];
  BOOL = GEOConfigGetBOOL();
  v5 = MNGetMNNavigationSessionLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (BOOL)
  {
    if (v6)
    {
      arrivalInfo = [(MNLocationTracker *)self->_locationTracker arrivalInfo];
      arrivalState = [arrivalInfo arrivalState];
      if (arrivalState > 6)
      {
        v9 = @"MNArrivalState_Unknown";
      }

      else
      {
        v9 = off_1E84301C8[arrivalState];
      }

      v20 = 138412290;
      v21 = v9;
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "Received vehicle monitor disconnect notification. Current arrival state: %@", &v20, 0xCu);
    }

    arrivalInfo2 = [(MNLocationTracker *)self->_locationTracker arrivalInfo];
    isInArrivalState = [arrivalInfo2 isInArrivalState];

    if (isInArrivalState)
    {
      isOnLastLeg = [(MNNavigationSessionState *)self->_navigationSessionState isOnLastLeg];
      v13 = MNGetMNNavigationSessionLog();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (isOnLastLeg)
      {
        if (v14)
        {
          LOWORD(v20) = 0;
          _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_DEFAULT, "Trying to end navigation because we are on last leg.", &v20, 2u);
        }

        observers = self->_observers;
        selfCopy2 = self;
        v17 = 5;
      }

      else
      {
        if (v14)
        {
          LOWORD(v20) = 0;
          _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_DEFAULT, "Trying to pause navigation because we are not on last leg.", &v20, 2u);
        }

        observers = self->_observers;
        selfCopy2 = self;
        v17 = 6;
      }

      [(GEOObserverHashTable *)observers navigationSession:selfCopy2 shouldEndWithReason:v17];
    }

    else
    {
      v18 = MNGetMNNavigationSessionLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_1D311E000, v18, OS_LOG_TYPE_DEFAULT, "Not ending navigation because not in arrival state.", &v20, 2u);
      }
    }
  }

  else
  {
    if (v6)
    {
      LOWORD(v20) = 0;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)tracePlayer:(id)player didUpdateCurrentRoute:(id)route reason:(unint64_t)reason
{
  routeCopy = route;
  v11 = [[MNActiveRouteInfo alloc] initWithRoute:routeCopy];
  waypoints = [routeCopy waypoints];

  lastObject = [waypoints lastObject];
  destination = self->_destination;
  self->_destination = lastObject;

  [(MNLocationTracker *)self->_locationTracker reroute:v11 reason:reason];
}

- (void)tracePlayer:(id)player didSeekToTime:(double)time fromTime:(double)fromTime location:(id)location
{
  playerCopy = player;
  locationCopy = location;
  if (time < fromTime)
  {
    [(MNGuidanceManager *)self->_guidanceManager reset];
  }

  if (locationCopy)
  {
    locationTracker = self->_locationTracker;
    routeManager = [(MNNavigationSession *)self routeManager];
    currentRoute = [routeManager currentRoute];
    [(MNLocationTracker *)locationTracker forceOnRoute:currentRoute atLocation:locationCopy];
  }
}

- (void)tracePlayer:(id)player didJumpToRouteResponse:(id)response request:(id)request waypoints:(id)waypoints
{
  v9 = MEMORY[0x1E69A2538];
  waypointsCopy = waypoints;
  requestCopy = request;
  responseCopy = response;
  v13 = [v9 alloc];
  routeAttributes = [requestCopy routeAttributes];

  v18 = [v13 initWithWaypoints:waypointsCopy routeAttributes:routeAttributes directionsResponse:responseCopy];
  mainRouteInfo = [v18 mainRouteInfo];
  lastObject = [waypointsCopy lastObject];

  destination = self->_destination;
  self->_destination = lastObject;

  [(MNLocationTracker *)self->_locationTracker reroute:mainRouteInfo reason:0];
}

- (void)guidanceManager:(id)manager didUpdateNavTrayGuidance:(id)guidance
{
  guidanceCopy = guidance;
  v6 = [[_TtC10Navigation52MNNavigationServiceCallback_DidUpdateNavTrayGuidance alloc] initWithNavTrayGuidanceEvent:guidanceCopy];

  [(GEOObserverHashTable *)self->_observers navigationSession:self didSendNavigationServiceCallback:v6];
}

- (void)guidanceManager:(id)manager announce:(id)announce isImportant:(BOOL)important shortPromptType:(unint64_t)type stage:(unint64_t)stage completionBlock:(id)block
{
  if (important)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  audioManager = self->_audioManager;
  announceCopy = announce;
  [(MNAudioManager *)audioManager requestSpeech:announceCopy guidanceLevel:v12 modifier:0 shortPromptType:type completionHandler:block];
  [(GEOObserverHashTable *)self->_observers navigationSession:self didAnnounce:announceCopy stage:stage];
}

- (void)locationTracker:(id)tracker updatedTrafficIncidentAlert:(id)alert
{
  alertCopy = alert;
  v6 = [[_TtC10Navigation57MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert alloc] initWithUpdateType:1 trafficIncidentAlert:alertCopy];

  [(GEOObserverHashTable *)self->_observers navigationSession:self didSendNavigationServiceCallback:v6];
}

- (void)locationTracker:(id)tracker dismissedTrafficIncidentAlert:(id)alert
{
  activeTrafficIncidentAlert = self->_activeTrafficIncidentAlert;
  self->_activeTrafficIncidentAlert = 0;
  alertCopy = alert;

  v7 = [[_TtC10Navigation57MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert alloc] initWithUpdateType:2 trafficIncidentAlert:alertCopy];
  [(GEOObserverHashTable *)self->_observers navigationSession:self didSendNavigationServiceCallback:v7];
}

- (void)locationTracker:(id)tracker invalidatedTrafficIncidentAlert:(id)alert
{
  activeTrafficIncidentAlert = self->_activeTrafficIncidentAlert;
  self->_activeTrafficIncidentAlert = 0;
  alertCopy = alert;

  v7 = [[_TtC10Navigation57MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert alloc] initWithUpdateType:3 trafficIncidentAlert:alertCopy];
  [(GEOObserverHashTable *)self->_observers navigationSession:self didSendNavigationServiceCallback:v7];
}

- (void)locationTracker:(id)tracker receivedTrafficIncidentAlert:(id)alert responseCallback:(id)callback
{
  alertCopy = alert;
  callbackCopy = callback;
  audioManager = self->_audioManager;
  spokenTexts = [alertCopy spokenTexts];
  firstObject = [spokenTexts firstObject];
  [(MNAudioManager *)audioManager requestSpeech:firstObject guidanceLevel:1 modifier:1 shortPromptType:0 completionHandler:0];

  objc_storeStrong(&self->_activeTrafficIncidentAlert, alert);
  trafficIncidentAlertCallbacks = self->_trafficIncidentAlertCallbacks;
  if (!trafficIncidentAlertCallbacks)
  {
    v13 = objc_opt_new();
    v14 = self->_trafficIncidentAlertCallbacks;
    self->_trafficIncidentAlertCallbacks = v13;

    trafficIncidentAlertCallbacks = self->_trafficIncidentAlertCallbacks;
  }

  v15 = _Block_copy(callbackCopy);
  alertID = [alertCopy alertID];
  [(NSMutableDictionary *)trafficIncidentAlertCallbacks setObject:v15 forKey:alertID];

  serverSessionStateInfo = self->_serverSessionStateInfo;
  bannerID = [alertCopy bannerID];
  eventInfo = [alertCopy eventInfo];
  [(MNServerSessionStateInfo *)serverSessionStateInfo addDisplayedBannerID:bannerID withEventInfo:eventInfo];

  v20 = [[_TtC10Navigation57MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert alloc] initWithUpdateType:0 trafficIncidentAlert:alertCopy];
  [(GEOObserverHashTable *)self->_observers navigationSession:self didSendNavigationServiceCallback:v20];
}

- (void)locationTracker:(id)tracker didSwitchToNewTransportTypeWithRoute:(id)route rerouteReason:(unint64_t)reason request:(id)request response:(id)response
{
  v38 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  responseCopy = response;
  requestCopy = request;
  route = [routeCopy route];
  transportType = [route transportType];

  route2 = [routeCopy route];
  v17 = [MNMapMatcher mapMatcherFor:route2];
  mapMatcher = self->_mapMatcher;
  self->_mapMatcher = v17;

  [(MNRouteManager *)self->_routeManager updateForReroute:routeCopy rerouteReason:reason request:requestCopy response:responseCopy];
  [(MNRouteManager *)self->_routeManager updateWithAlternateRoutes:0];
  [(MNNavigationSessionState *)self->_navigationSessionState updateCurrentRouteInfo:routeCopy rerouteReason:reason];
  [(MNNavigationSessionState *)self->_navigationSessionState setAlternateRouteInfos:0];
  if (reason == 13)
  {
    v19 = MNGetMNNavigationSessionLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      route3 = [routeCopy route];
      source = [route3 source];
      if ((source - 1) > 4)
      {
        v22 = @"Unknown";
      }

      else
      {
        v22 = off_1E84301A0[source - 1];
      }

      v36 = 138412290;
      v37 = v22;
      _os_log_impl(&dword_1D311E000, v19, OS_LOG_TYPE_DEFAULT, "Updating initial route source to %@.", &v36, 0xCu);
    }

    route4 = [routeCopy route];
    -[MNNavigationSessionState setInitialRouteSource:](self->_navigationSessionState, "setInitialRouteSource:", [route4 source]);
  }

  [(MNNavigationSession *)self _updateNavigationSessionState:self->_navigationSessionState];
  timeAndDistanceUpdater = self->_timeAndDistanceUpdater;
  allRoutes = [(MNRouteManager *)self->_routeManager allRoutes];
  currentRouteInfo = [(MNRouteManager *)self->_routeManager currentRouteInfo];
  lastMatchedLocation = [(MNLocationTracker *)self->_locationTracker lastMatchedLocation];
  [(MNTimeAndDistanceUpdater *)timeAndDistanceUpdater setRoutes:allRoutes mainRoute:currentRouteInfo location:lastMatchedLocation notificationType:0];

  [(MNNavigationSession *)self _stopLocationTracking];
  [(MNAudioManager *)self->_audioManager clearAllAnnouncements];
  if (transportType == 2)
  {
    v29 = @"Navigation_SwitchToWalkingNotification";
    v28 = 5;
    goto LABEL_12;
  }

  if (!transportType)
  {
    v28 = 0;
    v29 = @"Navigation_SwitchToDrivingNotification";
LABEL_12:
    v30 = _MNStringFromSpokenLocalization(v29);
    [(MNAudioManager *)self->_audioManager requestSpeech:v30 guidanceLevel:2 modifier:0 shortPromptType:v28 completionHandler:0];
  }

  [(GEOObserverHashTable *)self->_observers navigationSession:self didSwitchToNewTransportType:transportType newRoute:routeCopy rerouteReason:reason];
  [(MNNavigationSession *)self _startLocationTrackingWithInitialLocation:0 targetLegIndex:0];
  serverSessionStateInfo = self->_serverSessionStateInfo;
  route5 = [routeCopy route];
  [(MNServerSessionStateInfo *)serverSessionStateInfo updateWithRoute:route5];

  [(MNNavigationSession *)self _updateResumeRouteInfoFrom:*MEMORY[0x1E69A1928]];
  [(MNGuidanceManager *)self->_guidanceManager updateSessionStateForReroute:self->_navigationSessionState reason:6 location:0];
  [(MNAudioManager *)self->_audioManager changeTransportType:transportType];
  probeCrumbs = self->_probeCrumbs;
  route6 = [routeCopy route];
  [(GEOProbeCrumbs *)probeCrumbs resetStateWithRoute:route6];

  [(MNNavigationSession *)self _startGuidanceAllowMidRouteStart:1 announcementsToIgnore:0];
  v35 = *MEMORY[0x1E69E9840];
}

- (void)locationTracker:(id)tracker didUpdateAlternateRoutes:(id)routes
{
  routeManager = self->_routeManager;
  routesCopy = routes;
  [(MNRouteManager *)routeManager updateWithAlternateRoutes:routesCopy];
  [(MNNavigationSessionState *)self->_navigationSessionState setAlternateRouteInfos:routesCopy];
  [(MNNavigationSession *)self _updateNavigationSessionState:self->_navigationSessionState];
  timeAndDistanceUpdater = self->_timeAndDistanceUpdater;
  allRoutes = [(MNRouteManager *)self->_routeManager allRoutes];
  currentRouteInfo = [(MNRouteManager *)self->_routeManager currentRouteInfo];
  lastMatchedLocation = [(MNLocationTracker *)self->_locationTracker lastMatchedLocation];
  [(MNTimeAndDistanceUpdater *)timeAndDistanceUpdater setRoutes:allRoutes mainRoute:currentRouteInfo location:lastMatchedLocation notificationType:0];

  [(GEOObserverHashTable *)self->_observers navigationSession:self didUpdateAlternateRoutes:routesCopy];
}

- (void)locationTracker:(id)tracker didFailRerouteWithError:(id)error
{
  errorCopy = error;
  [(GEOObserverHashTable *)self->_observers navigationSession:self didFailRerouteWithError:errorCopy];
  if (errorCopy)
  {
    v5 = objc_opt_new();
    [v5 setError:errorCopy];
    [(GEOObserverHashTable *)self->_observers navigationSession:self didSendNavigationServiceCallback:v5];
  }
}

- (void)locationTracker:(id)tracker didReroute:(id)reroute newAlternateRoutes:(id)routes rerouteReason:(unint64_t)reason request:(id)request response:(id)response
{
  v39 = *MEMORY[0x1E69E9840];
  trackerCopy = tracker;
  rerouteCopy = reroute;
  routesCopy = routes;
  requestCopy = request;
  responseCopy = response;
  if (reason != 2 && reason != 4)
  {
    [(MNAudioManager *)self->_audioManager clearAllAnnouncements];
  }

  route = [rerouteCopy route];
  v19 = [MNMapMatcher mapMatcherFor:route];
  mapMatcher = self->_mapMatcher;
  self->_mapMatcher = v19;

  [(MNRouteManager *)self->_routeManager updateForReroute:rerouteCopy rerouteReason:reason request:requestCopy response:responseCopy];
  [(MNRouteManager *)self->_routeManager updateWithAlternateRoutes:routesCopy];
  [(MNNavigationSessionState *)self->_navigationSessionState updateCurrentRouteInfo:rerouteCopy rerouteReason:reason];
  [(MNNavigationSessionState *)self->_navigationSessionState setAlternateRouteInfos:routesCopy];
  [(MNNavigationSession *)self _updateNavigationSessionState:self->_navigationSessionState];
  if (reason == 13)
  {
    v21 = MNGetMNNavigationSessionLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      route2 = [rerouteCopy route];
      source = [route2 source];
      if ((source - 1) > 4)
      {
        v24 = @"Unknown";
      }

      else
      {
        v24 = off_1E84301A0[source - 1];
      }

      *buf = 138412290;
      v38 = v24;
      _os_log_impl(&dword_1D311E000, v21, OS_LOG_TYPE_DEFAULT, "Updating initial route source to %@.", buf, 0xCu);
    }

    route3 = [rerouteCopy route];
    -[MNNavigationSessionState setInitialRouteSource:](self->_navigationSessionState, "setInitialRouteSource:", [route3 source]);
  }

  lastMatchedLocation = [(MNLocationTracker *)self->_locationTracker lastMatchedLocation];
  [(MNGuidanceManager *)self->_guidanceManager updateSessionStateForReroute:self->_navigationSessionState reason:reason location:lastMatchedLocation];
  timeAndDistanceUpdater = self->_timeAndDistanceUpdater;
  allRoutes = [(MNRouteManager *)self->_routeManager allRoutes];
  currentRouteInfo = [(MNRouteManager *)self->_routeManager currentRouteInfo];
  [(MNTimeAndDistanceUpdater *)timeAndDistanceUpdater setRoutes:allRoutes mainRoute:currentRouteInfo location:lastMatchedLocation notificationType:0];

  [(GEOObserverHashTable *)self->_observers navigationSession:self didReroute:rerouteCopy withLocation:lastMatchedLocation withAlternateRoutes:routesCopy rerouteReason:reason];
  -[MNGuidanceManager updateGuidanceForLocation:navigatorState:](self->_guidanceManager, "updateGuidanceForLocation:navigatorState:", lastMatchedLocation, [trackerCopy state]);
  serverSessionStateInfo = self->_serverSessionStateInfo;
  route4 = [rerouteCopy route];
  [(MNServerSessionStateInfo *)serverSessionStateInfo updateWithRoute:route4];

  routeMatch = [lastMatchedLocation routeMatch];
  -[MNNavigationSession _updateResumeRouteInfoFrom:](self, "_updateResumeRouteInfoFrom:", [routeMatch routeCoordinate]);

  probeCrumbs = self->_probeCrumbs;
  route5 = [rerouteCopy route];
  [(GEOProbeCrumbs *)probeCrumbs resetStateWithRoute:route5];

  v35 = *MEMORY[0x1E69E9840];
}

- (void)locationTracker:(id)tracker didUpdateETAForRoute:(id)route
{
  timeAndDistanceUpdater = self->_timeAndDistanceUpdater;
  routeCopy = route;
  [(MNTimeAndDistanceUpdater *)timeAndDistanceUpdater updateDisplayETAForRoute:routeCopy notificationType:1];
  [(GEOObserverHashTable *)self->_observers navigationSession:self didUpdateETAResponseForRoute:routeCopy];
}

- (void)locationTrackerDidArrive:(id)arrive
{
  observers = self->_observers;
  arriveCopy = arrive;
  [(GEOObserverHashTable *)observers navigationSessionDidArrive:self];
  guidanceManager = self->_guidanceManager;
  lastMatchedLocation = [arriveCopy lastMatchedLocation];

  [(MNGuidanceManager *)guidanceManager updateGuidanceForLocation:lastMatchedLocation navigatorState:[(MNNavigationSession *)self navigationState]];
  if (GEOConfigGetBOOL())
  {
    v8 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__MNNavigationSession_locationTrackerDidArrive___block_invoke;
    block[3] = &unk_1E8430ED8;
    block[4] = self;
    dispatch_after(v8, MEMORY[0x1E69E96A0], block);
  }
}

- (void)locationTrackerDidEnterPreArrivalState:(id)state
{
  [(MNGuidanceManager *)self->_guidanceManager setIsInPreArrivalState:1];
  observers = self->_observers;

  [(GEOObserverHashTable *)observers navigationSessionDidEnterPreArrivalState:self];
}

- (void)locationTracker:(id)tracker didUpdateTargetLegIndex:(unint64_t)index
{
  [(MNNavigationSessionState *)self->_navigationSessionState setTargetLegIndex:index];
  [(MNNavigationSession *)self _updateNavigationSessionState:self->_navigationSessionState];
  v6 = [[_TtC10Navigation51MNNavigationServiceCallback_DidUpdateTargetLegIndex alloc] initWithTargetLegIndex:index];
  [(GEOObserverHashTable *)self->_observers navigationSession:self didSendNavigationServiceCallback:v6];
  [(GEOObserverHashTable *)self->_observers navigationSession:self didUpdateTargetLegIndex:index];
}

- (void)locationTracker:(id)tracker didResumeNavigatingFromWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index reason:(unint64_t)reason
{
  idleTimerUpdater = self->_idleTimerUpdater;
  waypointCopy = waypoint;
  [(MNIdleTimerUpdater *)idleTimerUpdater updateForStartNavigation];
  [(MNGuidanceManager *)self->_guidanceManager setShouldShowChargingInfo:0];
  [(MNGuidanceManager *)self->_guidanceManager setIsInPreArrivalState:0];
  guidanceManager = self->_guidanceManager;
  lastMatchedLocation = [(MNLocationTracker *)self->_locationTracker lastMatchedLocation];
  [(MNGuidanceManager *)guidanceManager updateGuidanceForLocation:lastMatchedLocation navigatorState:[(MNNavigationSession *)self navigationState]];

  [(GEOObserverHashTable *)self->_observers navigationSession:self didResumeNavigatingFromWaypoint:waypointCopy endOfLegIndex:index reason:reason];
}

- (void)locationTracker:(id)tracker didEnterPreArrivalStateForWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index
{
  guidanceManager = self->_guidanceManager;
  waypointCopy = waypoint;
  [(MNGuidanceManager *)guidanceManager setIsInPreArrivalState:1];
  [(GEOObserverHashTable *)self->_observers navigationSession:self didEnterPreArrivalStateForWaypoint:waypointCopy endOfLegIndex:index];
}

- (void)locationTracker:(id)tracker didUpdateArrivalInfo:(id)info previousState:(int64_t)state
{
  infoCopy = info;
  -[MNNavigationSessionState setArrivalState:](self->_navigationSessionState, "setArrivalState:", [infoCopy arrivalState]);
  v7 = objc_opt_new();
  [v7 setArrivalInfo:infoCopy];
  [v7 setPreviousState:state];
  [(GEOObserverHashTable *)self->_observers navigationSession:self didSendNavigationServiceCallback:v7];
  currentRoute = [(MNRouteManager *)self->_routeManager currentRoute];
  legs = [currentRoute legs];
  if ([legs count] >= 2)
  {
    isInArrivalState = [infoCopy isInArrivalState];

    if (!isInArrivalState)
    {
      goto LABEL_5;
    }

    currentRoute = [(MNNavigationSession *)self lastMatchedLocation];
    legs = [currentRoute routeMatch];
    -[MNNavigationSession _updateResumeRouteInfoFrom:](self, "_updateResumeRouteInfoFrom:", [legs routeCoordinate]);
  }

LABEL_5:
}

- (void)motionContextDidUpdateMotion:(id)motion
{
  observers = self->_observers;
  motionCopy = motion;
  motionType = [motionCopy motionType];
  confidence = [motionCopy confidence];

  [(GEOObserverHashTable *)observers navigationSession:self didUpdateMotionType:motionType confidence:confidence];
}

- (void)_stopVirtualGarageUpdates
{
  v3 = +[MNVirtualGarageManager sharedManager];
  [v3 unregisterObserver:self];
}

- (void)_startVirtualGarageUpdates
{
  if ((self->_navigationCapabilities & 0x20) != 0)
  {
    v4 = +[MNVirtualGarageManager sharedManager];
    [v4 registerObserver:self];
  }
}

- (void)_addProbeCrumbLocation:(id)location
{
  locationCopy = location;
  if ([locationCopy referenceFrame] == 2)
  {
    [locationCopy rawShiftedCoordinate];
  }

  else
  {
    [locationCopy rawCoordinate];
  }

  v6 = v4;
  v7 = v5;
  probeCrumbs = self->_probeCrumbs;
  routeMatch = [locationCopy routeMatch];
  routeCoordinate = [routeMatch routeCoordinate];
  timestamp = [locationCopy timestamp];
  [timestamp timeIntervalSinceReferenceDate];
  [(GEOProbeCrumbs *)probeCrumbs addLocation:routeCoordinate polyCoordinate:v12 timestamp:v6, v7];
}

- (void)_updateNavigationSessionState:(id)state
{
  v16 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_navigationSessionStateListeners;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) setNavigationSessionState:{stateCopy, v11}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_updateResumeRouteInfoFrom:(id)from
{
  if (!self->_serverSessionStateInfo)
  {
    return;
  }

  arrivalInfo = [(MNLocationTracker *)self->_locationTracker arrivalInfo];
  if (![arrivalInfo isInArrivalState])
  {
    goto LABEL_5;
  }

  isOnLastLeg = [(MNNavigationSessionState *)self->_navigationSessionState isOnLastLeg];

  if (!isOnLastLeg)
  {
    arrivalInfo = [(MNNavigationSessionState *)self->_navigationSessionState nextLeg];
    from = [arrivalInfo startRouteCoordinate];
LABEL_5:
  }

  v12 = objc_alloc_init(MEMORY[0x1E69A24A0]);
  sessionState = [(MNServerSessionStateInfo *)self->_serverSessionStateInfo sessionState];
  [v12 setServerSessionState:sessionState];

  currentRoute = [(MNRouteManager *)self->_routeManager currentRoute];
  v9 = [currentRoute geoOriginalWaypointRouteFromRouteCoordinate:from purpose:6];
  [v12 setRouteGeometry:v9];

  [v12 setHasVisitedFirstStop:{-[MNLocationTracker hasVisitedFirstStop](self->_locationTracker, "hasVisitedFirstStop")}];
  observers = self->_observers;
  v11 = [MNNavigationServiceCallback_DidUpdateResumeRouteHandle didUpdateResumeRouteHandle:v12];
  [(GEOObserverHashTable *)observers navigationSession:self didSendNavigationServiceCallback:v11];
}

- (void)_stopIdleTimerUpdates
{
  [(MNIdleTimerUpdater *)self->_idleTimerUpdater setDelegate:0];
  idleTimerUpdater = self->_idleTimerUpdater;
  self->_idleTimerUpdater = 0;
}

- (void)_startIdleTimerUpdates
{
  v3 = objc_alloc_init(MNIdleTimerUpdater);
  idleTimerUpdater = self->_idleTimerUpdater;
  self->_idleTimerUpdater = v3;

  [(MNIdleTimerUpdater *)self->_idleTimerUpdater setDelegate:self];
  [(MNIdleTimerUpdater *)self->_idleTimerUpdater setNavigationSessionState:self->_navigationSessionState];
  [(NSMutableArray *)self->_navigationSessionStateListeners addObject:self->_idleTimerUpdater];
  v5 = self->_idleTimerUpdater;

  [(MNIdleTimerUpdater *)v5 updateForStartNavigation];
}

- (void)_stopTravelTimeUpdates
{
  [(MNTimeAndDistanceUpdater *)self->_timeAndDistanceUpdater setDelegate:0];
  [(MNTimeAndDistanceUpdater *)self->_timeAndDistanceUpdater stopUpdating];
  timeAndDistanceUpdater = self->_timeAndDistanceUpdater;
  self->_timeAndDistanceUpdater = 0;
}

- (void)_startTravelTimeUpdates
{
  if ((GEOConfigGetBOOL() & 1) == 0)
  {
    v3 = [[MNTimeAndDistanceUpdater alloc] initWithNavigationSessionState:self->_navigationSessionState];
    timeAndDistanceUpdater = self->_timeAndDistanceUpdater;
    self->_timeAndDistanceUpdater = v3;

    [(MNTimeAndDistanceUpdater *)self->_timeAndDistanceUpdater setDelegate:self];
    [(MNTimeAndDistanceUpdater *)self->_timeAndDistanceUpdater setNavigationSessionState:self->_navigationSessionState];
    [(NSMutableArray *)self->_navigationSessionStateListeners addObject:self->_timeAndDistanceUpdater];
    v5 = self->_timeAndDistanceUpdater;
    allRoutes = [(MNRouteManager *)self->_routeManager allRoutes];
    currentRouteInfo = [(MNRouteManager *)self->_routeManager currentRouteInfo];
    lastMatchedLocation = [(MNLocationTracker *)self->_locationTracker lastMatchedLocation];
    [(MNTimeAndDistanceUpdater *)v5 setRoutes:allRoutes mainRoute:currentRouteInfo location:lastMatchedLocation notificationType:2];

    v9 = self->_timeAndDistanceUpdater;

    [(MNTimeAndDistanceUpdater *)v9 startUpdating];
  }
}

- (void)_stopAudioSession
{
  [(MNAudioManager *)self->_audioManager forceDeactivate];
  audioManager = self->_audioManager;
  self->_audioManager = 0;
}

- (void)_startAudioSessionWithGuidanceLevelOverride:(unint64_t)override
{
  mEMORY[0x1E69A1CD8] = [MEMORY[0x1E69A1CD8] sharedConfiguration];
  currentCountrySupportsNavigation = [mEMORY[0x1E69A1CD8] currentCountrySupportsNavigation];

  if (currentCountrySupportsNavigation)
  {
    currentRoute = [(MNRouteManager *)self->_routeManager currentRoute];
    transportType = [currentRoute transportType];

    v9 = [MNAudioManager alloc];
    routeAttributes = [(MNRouteManager *)self->_routeManager routeAttributes];
    phoneticLocaleIdentifier = [routeAttributes phoneticLocaleIdentifier];
    v12 = [(MNAudioManager *)v9 initWithTransportType:transportType voiceLanguage:phoneticLocaleIdentifier guidanceLevelOverride:override];
    audioManager = self->_audioManager;
    self->_audioManager = v12;

    [(MNAudioManager *)self->_audioManager registerObserver:self];
    v14 = objc_alloc_init(MNNavigationServiceCallback_DidChangeVoiceGuidanceLevel);
    [(MNNavigationServiceCallback_DidChangeVoiceGuidanceLevel *)v14 setVoiceGuidanceLevel:[(MNAudioManager *)self->_audioManager voiceGuidanceLevel]];
    [(GEOObserverHashTable *)self->_observers navigationSession:self didSendNavigationServiceCallback:v14];
  }
}

- (void)_stopMotionUpdates
{
  [(GEOMotionContext *)self->_motionContext stopMotionUpdates];
  [(GEOMotionContext *)self->_motionContext setDelegate:0];
  motionContext = self->_motionContext;
  self->_motionContext = 0;
}

- (void)_startMotionUpdates
{
  tracePlayer = [(MNNavigationTraceManager *)self->_traceManager tracePlayer];

  if (tracePlayer)
  {
    v8 = self->_traceManager;
  }

  else
  {
    v4 = [MNCoreMotionContextProvider alloc];
    traceRecorder = [(MNNavigationTraceManager *)self->_traceManager traceRecorder];
    v8 = [(MNCoreMotionContextProvider *)v4 initWithTraceRecorder:traceRecorder];
  }

  v6 = objc_alloc_init(MEMORY[0x1E69A2258]);
  motionContext = self->_motionContext;
  self->_motionContext = v6;

  [(GEOMotionContext *)self->_motionContext setDelegate:self];
  [(GEOMotionContext *)self->_motionContext startMotionUpdatesWithProvider:v8];
}

- (void)_stopLocationTracking
{
  v3 = +[MNLocationManager shared];
  [v3 setLocationCorrector:0];

  [(MNLocationTracker *)self->_locationTracker stopTracking];
  [(MNLocationTracker *)self->_locationTracker setDelegate:0];
  locationTracker = self->_locationTracker;
  self->_locationTracker = 0;
}

- (void)_startLocationTrackingWithInitialLocation:(id)location targetLegIndex:(unint64_t)index
{
  locationCopy = location;
  routeManager = [(MNNavigationSession *)self routeManager];
  currentRoute = [routeManager currentRoute];
  v9 = -[MNNavigationSession _locationTrackerForTransportType:navigationType:](self, "_locationTrackerForTransportType:navigationType:", [currentRoute transportType], self->_navigationType);
  locationTracker = self->_locationTracker;
  self->_locationTracker = v9;

  [(MNLocationTracker *)self->_locationTracker setDelegate:self];
  [(MNLocationTracker *)self->_locationTracker setNavigationSessionState:self->_navigationSessionState];
  [(NSMutableArray *)self->_navigationSessionStateListeners addObject:self->_locationTracker];
  [(MNLocationTracker *)self->_locationTracker startTrackingWithInitialLocation:locationCopy targetLegIndex:index];
  [(MNNavigationSessionState *)self->_navigationSessionState setLocation:locationCopy];

  [(MNNavigationSession *)self _updateNavigationSessionState:self->_navigationSessionState];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__MNNavigationSession__startLocationTrackingWithInitialLocation_targetLegIndex___block_invoke;
  v12[3] = &unk_1E8430150;
  v12[4] = self;
  v11 = +[MNLocationManager shared];
  [v11 setLocationCorrector:v12];
}

- (void)_closeTileLoader
{
  if (self->_tileLoaderClient)
  {
    modernLoader = [MEMORY[0x1E69A2610] modernLoader];
    [modernLoader closeForClient:self->_tileLoaderClient];
    modernManager = [MEMORY[0x1E69A2478] modernManager];
    [modernManager closeServerConnection:1];

    tileLoaderClient = self->_tileLoaderClient;
    self->_tileLoaderClient = 0;
  }
}

- (void)_openTileLoader
{
  if (!self->_tileLoaderClient)
  {
    v4 = GEOTileLoaderClientIdentifier();
    tileLoaderClient = self->_tileLoaderClient;
    self->_tileLoaderClient = v4;

    modernLoader = [MEMORY[0x1E69A2610] modernLoader];
    [modernLoader openForClient:self->_tileLoaderClient];

    modernManager = [MEMORY[0x1E69A2478] modernManager];
    [modernManager openServerConnection];
  }
}

- (BOOL)repeatCurrentTrafficAlert
{
  if (!self->_audioManager)
  {
    return 0;
  }

  if (self->_isSpeakingTrafficIncidentAlert)
  {
    return 1;
  }

  spokenTexts = [(MNTrafficIncidentAlert *)self->_activeTrafficIncidentAlert spokenTexts];
  firstObject = [spokenTexts firstObject];

  v6 = [firstObject length];
  v3 = v6 != 0;
  if (v6)
  {
    self->_isSpeakingTrafficIncidentAlert = 1;
    audioManager = self->_audioManager;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__MNNavigationSession_repeatCurrentTrafficAlert__block_invoke;
    v9[3] = &unk_1E8430128;
    v9[4] = self;
    [(MNAudioManager *)audioManager requestSpeech:firstObject guidanceLevel:1 modifier:0 shortPromptType:0 completionHandler:v9];
  }

  return v3;
}

- (BOOL)repeatCurrentGuidance
{
  v3 = +[MNLocationManager shared];
  lastLocation = [v3 lastLocation];

  LOBYTE(self) = [(MNGuidanceManager *)self->_guidanceManager repeatLastGuidanceAnnouncement:lastLocation];
  return self;
}

- (void)switchToRoute:(id)route
{
  v45 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  route = [routeCopy route];
  if ([route transportType] != 1)
  {

LABEL_5:
    routeID = [routeCopy routeID];

    if (routeID)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      alternateRoutes = [(MNRouteManager *)self->_routeManager alternateRoutes];
      v12 = [alternateRoutes countByEnumeratingWithState:&v30 objects:v44 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v31;
LABEL_8:
        v15 = 0;
        while (1)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(alternateRoutes);
          }

          v16 = *(*(&v30 + 1) + 8 * v15);
          routeID2 = [routeCopy routeID];
          routeID3 = [v16 routeID];
          v19 = [routeID2 isEqual:routeID3];

          if (v19)
          {
            break;
          }

          if (v13 == ++v15)
          {
            v13 = [alternateRoutes countByEnumeratingWithState:&v30 objects:v44 count:16];
            if (v13)
            {
              goto LABEL_8;
            }

            goto LABEL_14;
          }
        }

        v26 = v16;

        if (!v26)
        {
          goto LABEL_15;
        }

        goto LABEL_21;
      }

LABEL_14:
    }

LABEL_15:
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No valid alternate route when calling switch to route."];
    v21 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v35 = "[MNNavigationSession switchToRoute:]";
      v36 = 2080;
      v37 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationSession.m";
      v38 = 1024;
      v39 = 502;
      v40 = 2080;
      v41 = "validAlternateRoute != nil";
      v42 = 2112;
      v43 = v20;
      _os_log_impl(&dword_1D311E000, v21, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
    }

    v22 = MNGetMNNavigationSessionLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      route2 = [routeCopy route];
      name = [route2 name];
      routeID4 = [routeCopy routeID];
      *buf = 138412546;
      v35 = name;
      v36 = 2112;
      v37 = routeID4;
      _os_log_impl(&dword_1D311E000, v22, OS_LOG_TYPE_ERROR, "switchToRoute: was called but no valid alternate route was found for %@ (%@)", buf, 0x16u);
    }

    v26 = 0;
LABEL_21:
    [(MNLocationTracker *)self->_locationTracker reroute:v26 reason:11];

    goto LABEL_22;
  }

  routeID5 = [routeCopy routeID];
  currentRouteInfo = [(MNRouteManager *)self->_routeManager currentRouteInfo];
  routeID6 = [currentRouteInfo routeID];
  v9 = [routeID5 isEqual:routeID6];

  if (!v9)
  {
    goto LABEL_5;
  }

  [(MNLocationTracker *)self->_locationTracker reroute:routeCopy reason:15];
LABEL_22:
  probeCrumbs = self->_probeCrumbs;
  route3 = [routeCopy route];
  [(GEOProbeCrumbs *)probeCrumbs resetStateWithRoute:route3];

  v29 = *MEMORY[0x1E69E9840];
}

- (void)resumeOriginalDestination
{
  originalDestination = [(MNRouteManager *)self->_routeManager originalDestination];
  destination = self->_destination;
  self->_destination = originalDestination;

  v6 = self->_destination;
  locationTracker = self->_locationTracker;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__MNNavigationSession_resumeOriginalDestination__block_invoke;
  v7[3] = &unk_1E8430ED8;
  v7[4] = self;
  [(MNLocationTracker *)locationTracker updateDestination:v6 completionHandler:v7];
}

uint64_t __48__MNNavigationSession_resumeOriginalDestination__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 72))
  {
    return [*(v1 + 72) updateDestination:*(v1 + 24)];
  }

  else
  {
    return [v1 _startGuidanceAllowMidRouteStart:1 announcementsToIgnore:0];
  }
}

- (void)updateDestination:(id)destination
{
  objc_storeStrong(&self->_destination, destination);
  destinationCopy = destination;
  [(MNLocationTracker *)self->_locationTracker updateDestination:destinationCopy completionHandler:0];
  [(MNGuidanceManager *)self->_guidanceManager updateDestination:destinationCopy];
  [(GEOObserverHashTable *)self->_observers navigationSession:self didUpdateDestination:destinationCopy];
}

- (void)removeWaypointAtIndex:(unint64_t)index
{
  routeManager = [(MNNavigationSession *)self routeManager];
  currentRoute = [routeManager currentRoute];

  waypoints = [currentRoute waypoints];
  v8 = [waypoints count];

  if (v8 > index)
  {
    waypoints2 = [currentRoute waypoints];
    v10 = [waypoints2 objectAtIndexedSubscript:index];

    objc_initWeak(&location, self);
    locationTracker = self->_locationTracker;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__MNNavigationSession_removeWaypointAtIndex___block_invoke;
    v13[3] = &unk_1E8430100;
    objc_copyWeak(&v15, &location);
    v12 = v10;
    v14 = v12;
    [(MNLocationTracker *)locationTracker removeWaypointAtIndex:index completionHandler:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __45__MNNavigationSession_removeWaypointAtIndex___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained[25] navigationSession:WeakRetained didRemoveWaypoint:*(a1 + 32)];
    v3 = v4;
  }
}

- (void)insertWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  objc_initWeak(&location, self);
  locationTracker = self->_locationTracker;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__MNNavigationSession_insertWaypoint___block_invoke;
  v7[3] = &unk_1E8430100;
  objc_copyWeak(&v9, &location);
  v6 = waypointCopy;
  v8 = v6;
  [(MNLocationTracker *)locationTracker insertWaypoint:v6 completionHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __38__MNNavigationSession_insertWaypoint___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained[25] navigationSession:WeakRetained didInsertWaypoint:*(a1 + 32)];
    v3 = v4;
  }
}

- (void)rerouteWithWaypoints:(id)waypoints
{
  waypointsCopy = waypoints;
  objc_initWeak(&location, self);
  locationTracker = self->_locationTracker;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__MNNavigationSession_rerouteWithWaypoints___block_invoke;
  v7[3] = &unk_1E8430100;
  objc_copyWeak(&v9, &location);
  v6 = waypointsCopy;
  v8 = v6;
  [(MNLocationTracker *)locationTracker rerouteWithWaypoints:v6 completionHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __44__MNNavigationSession_rerouteWithWaypoints___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained[25] navigationSession:WeakRetained didRerouteWithWaypoints:*(a1 + 32)];
    v3 = v4;
  }
}

- (void)stopNavigationSessionWithReason:(unint64_t)reason
{
  v31 = *MEMORY[0x1E69E9840];
  if (!self->_navigationType)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Trying to stop navigation session that hasn't been started"];
    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = 136316162;
      v22 = "[MNNavigationSession stopNavigationSessionWithReason:]";
      v23 = 2080;
      v24 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationSession.m";
      v25 = 1024;
      v26 = 367;
      v27 = 2080;
      v28 = "_navigationType != MNNavigationType_None";
      v29 = 2112;
      v30 = v19;
      _os_log_impl(&dword_1D311E000, v20, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v21, 0x30u);
    }
  }

  observers = self->_observers;
  v6 = [MNNavigationServiceCallback_WillEndNavigation willEndNavigationWithReason:reason];
  [(GEOObserverHashTable *)observers navigationSession:self didSendNavigationServiceCallback:v6];

  if (reason == 3 && ![(MNNavigationSessionState *)self->_navigationSessionState isOnLastLeg])
  {
    nextLeg = [(MNNavigationSessionState *)self->_navigationSessionState nextLeg];
    startRouteCoordinate = [nextLeg startRouteCoordinate];

    [(MNNavigationSession *)self _updateResumeRouteInfoFrom:startRouteCoordinate];
  }

  manifestUpdateAssertion = self->_manifestUpdateAssertion;
  self->_manifestUpdateAssertion = 0;

  [(MNNavigationSession *)self _closeTileLoader];
  [(MNNavigationSession *)self _stopLocationTracking];
  [(MNVehicleMonitor *)self->_vehicleMonitor setDelegate:0];
  [(MNVehicleMonitor *)self->_vehicleMonitor stopMonitoring];
  vehicleMonitor = self->_vehicleMonitor;
  self->_vehicleMonitor = 0;

  if (self->_navigationType == 3)
  {
    [(MNNavigationSession *)self _stopAudioSession];
    [(MNNavigationSession *)self _stopGuidance];
    [(MNNavigationSession *)self stopTimedETAUpdates];
    [(MNNavigationSession *)self _stopIdleTimerUpdates];
    [(MNNavigationSession *)self _stopTravelTimeUpdates];
    [(MNNavigationSession *)self stopArrivalInfoUpdates];
    [(GEOProbeCrumbs *)self->_probeCrumbs clearCache];
  }

  [(MNNavigationSession *)self _stopMotionUpdates];
  [(MNNavigationSession *)self stopLocationUpdates];
  mapMatcher = self->_mapMatcher;
  self->_mapMatcher = 0;

  self->_navigationType = 0;
  [(MNNavigationSession *)self _stopVirtualGarageUpdates];
  v12 = self->_observers;
  v13 = [MNNavigationServiceCallback_DidEndNavigation didEndNavigationWithReason:reason];
  [(GEOObserverHashTable *)v12 navigationSession:self didSendNavigationServiceCallback:v13];

  navigationSessionState = self->_navigationSessionState;
  self->_navigationSessionState = 0;

  navigationSessionStateListeners = self->_navigationSessionStateListeners;
  self->_navigationSessionStateListeners = 0;

  if (self->_navigationEventRecorder)
  {
    [(MNNavigationSession *)self unregisterObserver:?];
    navigationEventRecorder = self->_navigationEventRecorder;
    self->_navigationEventRecorder = 0;
  }

  [(MNNavigationSession *)self unregisterObserver:self->_logger];
  logger = self->_logger;
  self->_logger = 0;

  v18 = *MEMORY[0x1E69E9840];
}

- (void)updateWithInitialLocation:(id)location
{
  locationCopy = location;
  v4 = +[MNLocationManager shared];
  if ([v4 locationProviderType] == 3)
  {
    v5 = locationCopy == 0;
  }

  else
  {
    locationProviderType = [v4 locationProviderType];
    v5 = locationCopy == 0;
    if (locationCopy && locationProviderType != 4)
    {
      [v4 pushLocation:locationCopy];
      v5 = 0;
    }
  }

  if (!self->_locationTracker && (self->_navigationType & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [(MNNavigationSession *)self _startLocationTrackingWithInitialLocation:locationCopy targetLegIndex:[(MNNavigationSessionState *)self->_navigationSessionState targetLegIndex]];
  }

  if (v5 && self->_navigationType == 3)
  {
    lastMatchedLocation = [(MNLocationTracker *)self->_locationTracker lastMatchedLocation];

    if (lastMatchedLocation)
    {
      guidanceManager = self->_guidanceManager;
      lastMatchedLocation2 = [(MNLocationTracker *)self->_locationTracker lastMatchedLocation];
      [(MNGuidanceManager *)guidanceManager updateGuidanceForLocation:lastMatchedLocation2 navigatorState:[(MNLocationTracker *)self->_locationTracker state]];
    }

    currentRouteInfo = [(MNRouteManager *)self->_routeManager currentRouteInfo];

    if (currentRouteInfo)
    {
      timeAndDistanceUpdater = self->_timeAndDistanceUpdater;
      currentRouteInfo2 = [(MNRouteManager *)self->_routeManager currentRouteInfo];
      [(MNTimeAndDistanceUpdater *)timeAndDistanceUpdater updateDisplayETAForRoute:currentRouteInfo2 notificationType:2];
    }
  }
}

- (void)startNavigationSessionWithDetails:(id)details
{
  v77 = *MEMORY[0x1E69E9840];
  detailsCopy = details;
  if (self->_navigationType)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Navigation session already started"];
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v68 = "[MNNavigationSession startNavigationSessionWithDetails:]";
      v69 = 2080;
      v70 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationSession.m";
      v71 = 1024;
      v72 = 239;
      v73 = 2080;
      v74 = "_navigationType == MNNavigationType_None";
      v75 = 2112;
      v76 = v5;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
    }

    goto LABEL_5;
  }

  currentRoute = [(MNRouteManager *)self->_routeManager currentRoute];
  if (currentRoute)
  {
    v5 = currentRoute;
    origin = [currentRoute origin];
    if (!origin || (v10 = origin, [v5 destination], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, !v11))
    {
      origin2 = [v5 origin];
      if (!origin2 || (v13 = origin2, [v5 destination], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, !v14))
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Starting navigation session without origin or destination"];
        v16 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v68 = "[MNNavigationSession startNavigationSessionWithDetails:]";
          v69 = 2080;
          v70 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationSession.m";
          v71 = 1024;
          v72 = 250;
          v73 = 2080;
          v74 = "currentRoute.origin != nil && currentRoute.destination != nil";
          v75 = 2112;
          v76 = v15;
          _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
        }
      }
    }

    destination = [v5 destination];
    destination = self->_destination;
    self->_destination = destination;

    self->_navigationType = [detailsCopy navigationType];
    array = [MEMORY[0x1E695DF70] array];
    navigationSessionStateListeners = self->_navigationSessionStateListeners;
    self->_navigationSessionStateListeners = array;

    v21 = objc_alloc_init(MNNavigationSessionState);
    navigationSessionState = self->_navigationSessionState;
    self->_navigationSessionState = v21;

    [(MNNavigationSessionState *)self->_navigationSessionState setAuditToken:self->_auditToken];
    requestingAppIdentifier = [detailsCopy requestingAppIdentifier];
    [(MNNavigationSessionState *)self->_navigationSessionState setRequestingAppIdentifier:requestingAppIdentifier];

    traits = [detailsCopy traits];
    [(MNNavigationSessionState *)self->_navigationSessionState setTraits:traits];

    v25 = self->_navigationSessionState;
    currentRouteInfo = [(MNRouteManager *)self->_routeManager currentRouteInfo];
    [(MNNavigationSessionState *)v25 updateCurrentRouteInfo:currentRouteInfo rerouteReason:0];

    reconnectionDetails = [detailsCopy reconnectionDetails];

    if (reconnectionDetails)
    {
      reconnectionDetails2 = [detailsCopy reconnectionDetails];
      -[MNNavigationSessionState setInitialRouteSource:](self->_navigationSessionState, "setInitialRouteSource:", [reconnectionDetails2 initialRouteSource]);

      reconnectionDetails3 = [detailsCopy reconnectionDetails];
      -[MNNavigationSessionState setTargetLegIndex:](self->_navigationSessionState, "setTargetLegIndex:", [reconnectionDetails3 targetLegIndex]);
    }

    else
    {
      -[MNNavigationSessionState setInitialRouteSource:](self->_navigationSessionState, "setInitialRouteSource:", [v5 source]);
      [(MNNavigationSessionState *)self->_navigationSessionState setTargetLegIndex:0x7FFFFFFFFFFFFFFFLL];
    }

    [(MNNavigationSession *)self _openTileLoader];
    if (GEOConfigGetBOOL())
    {
      v32 = objc_alloc(MEMORY[0x1E69A2480]);
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.Navigation.active-session.%p", self];
      v34 = [v32 initWithReason:v33];
      manifestUpdateAssertion = self->_manifestUpdateAssertion;
      self->_manifestUpdateAssertion = v34;
    }

    v36 = objc_alloc_init(MNNavigationSessionLogger);
    logger = self->_logger;
    self->_logger = v36;

    [(MNNavigationSession *)self registerObserver:self->_logger];
    [(NSMutableArray *)self->_navigationSessionStateListeners addObject:self->_logger];
    traceRecorder = [(MNNavigationTraceManager *)self->_traceManager traceRecorder];

    if (traceRecorder)
    {
      v39 = [MNTraceNavigationEventRecorder alloc];
      traceRecorder2 = [(MNNavigationTraceManager *)self->_traceManager traceRecorder];
      v41 = [(MNTraceNavigationEventRecorder *)v39 initWithTraceRecorder:traceRecorder2];
      navigationEventRecorder = self->_navigationEventRecorder;
      self->_navigationEventRecorder = v41;

      if (self->_navigationEventRecorder)
      {
        [(MNNavigationSession *)self registerObserver:?];
      }

      v43 = [MNTraceNavigationUpdateRecorder alloc];
      traceRecorder3 = [(MNNavigationTraceManager *)self->_traceManager traceRecorder];
      v45 = [(MNTraceNavigationUpdateRecorder *)v43 initWithTraceRecorder:traceRecorder3];
      navigationUpdateRecorder = self->_navigationUpdateRecorder;
      self->_navigationUpdateRecorder = v45;

      if (self->_navigationUpdateRecorder)
      {
        [(MNNavigationSession *)self registerObserver:?];
      }
    }

    v47 = [MNMapMatcher mapMatcherFor:v5];
    mapMatcher = self->_mapMatcher;
    self->_mapMatcher = v47;

    [(MNNavigationSession *)self startLocationUpdates];
    origin3 = [v5 origin];
    if ([origin3 isCurrentLocation])
    {
    }

    else
    {
      simulationType = [detailsCopy simulationType];

      if (!simulationType)
      {
LABEL_31:
        if (self->_navigationType == 3)
        {
          v51 = objc_alloc_init(MNServerSessionStateInfo);
          serverSessionStateInfo = self->_serverSessionStateInfo;
          self->_serverSessionStateInfo = v51;

          [(MNServerSessionStateInfo *)self->_serverSessionStateInfo updateWithRoute:v5];
          reconnectionDetails4 = [detailsCopy reconnectionDetails];
          serverSessionState = [reconnectionDetails4 serverSessionState];

          if (serverSessionState)
          {
            v55 = self->_serverSessionStateInfo;
            reconnectionDetails5 = [detailsCopy reconnectionDetails];
            serverSessionState2 = [reconnectionDetails5 serverSessionState];
            [(MNServerSessionStateInfo *)v55 updateWithSessionState:serverSessionState2];
          }

          self->_guidancePromptsEnabled = [detailsCopy guidanceType] == 0;
          -[MNNavigationSession _startAudioSessionWithGuidanceLevelOverride:](self, "_startAudioSessionWithGuidanceLevelOverride:", [detailsCopy guidanceLevelOverride]);
          [(MNNavigationSession *)self startArrivalInfoUpdates];
          [(MNNavigationSession *)self _startTravelTimeUpdates];
          [(MNNavigationSession *)self _startIdleTimerUpdates];
          [(MNNavigationSession *)self startTimedETAUpdates];
          isReconnecting = [detailsCopy isReconnecting];
          reconnectionDetails6 = [detailsCopy reconnectionDetails];
          spokenAnnouncements = [reconnectionDetails6 spokenAnnouncements];
          [(MNNavigationSession *)self _startGuidanceAllowMidRouteStart:isReconnecting announcementsToIgnore:spokenAnnouncements];

          v61 = objc_alloc_init(MNVehicleMonitor);
          vehicleMonitor = self->_vehicleMonitor;
          self->_vehicleMonitor = v61;

          [(MNVehicleMonitor *)self->_vehicleMonitor setDelegate:self];
          [(MNVehicleMonitor *)self->_vehicleMonitor startMonitoring];
          [(MNNavigationSession *)self _startVirtualGarageUpdates];
          v63 = [objc_alloc(MEMORY[0x1E69A23C0]) initWithRoute:v5];
          probeCrumbs = self->_probeCrumbs;
          self->_probeCrumbs = v63;
        }

        if (-[MNAudioManager voiceGuidanceEnabled](self->_audioManager, "voiceGuidanceEnabled") && [v5 hasInitialPromptType:1])
        {
          GEOConfigSetBOOL();
        }

        observers = self->_observers;
        currentRouteInfo2 = [(MNRouteManager *)self->_routeManager currentRouteInfo];
        -[GEOObserverHashTable navigationSession:didStartWithRoute:navigationType:isResumingMultipointRoute:isReconnecting:](observers, "navigationSession:didStartWithRoute:navigationType:isResumingMultipointRoute:isReconnecting:", self, currentRouteInfo2, self->_navigationType, [detailsCopy isResumingMultipointRoute], objc_msgSend(detailsCopy, "isReconnecting"));

        if (self->_serverSessionStateInfo)
        {
          [(MNNavigationSession *)self _updateResumeRouteInfoFrom:*MEMORY[0x1E69A1928]];
        }

        goto LABEL_5;
      }
    }

    [(MNNavigationSession *)self _startMotionUpdates];
    goto LABEL_31;
  }

  v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Starting a navigation session without a route"];
  v31 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    v68 = "[MNNavigationSession startNavigationSessionWithDetails:]";
    v69 = 2080;
    v70 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationSession.m";
    v71 = 1024;
    v72 = 245;
    v73 = 2080;
    v74 = "currentRoute != nil";
    v75 = 2112;
    v76 = v30;
    _os_log_impl(&dword_1D311E000, v31, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
  }

  v5 = 0;
LABEL_5:

  v7 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  GEOConfigRemoveDelegateListenerForAllKeys();
  tracePlayer = [(MNNavigationTraceManager *)self->_traceManager tracePlayer];

  if (tracePlayer)
  {
    tracePlayer2 = [(MNNavigationTraceManager *)self->_traceManager tracePlayer];
    [tracePlayer2 unregisterObserver:self];
  }

  [(MNNavigationSession *)self stopLocationUpdates];
  [(MNNavigationSession *)self _closeTileLoader];
  [(MNAudioManager *)self->_audioManager unregisterObserver:self];
  v5.receiver = self;
  v5.super_class = MNNavigationSession;
  [(MNNavigationSession *)&v5 dealloc];
}

- (MNNavigationSession)initWithRouteManager:(id)manager auditToken:(id)token traceManager:(id)traceManager
{
  managerCopy = manager;
  tokenCopy = token;
  traceManagerCopy = traceManager;
  v23.receiver = self;
  v23.super_class = MNNavigationSession;
  v12 = [(MNNavigationSession *)&v23 init];
  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x1E69A22D8]);
    v14 = MNNavigationQueue();
    v15 = [v13 initWithProtocol:&unk_1F4EE7A90 queue:v14];
    observers = v12->_observers;
    v12->_observers = v15;

    v12->_navigationCapabilities = 63;
    if (GEOConfigGetBOOL())
    {
      v12->_navigationCapabilities |= 0x10000uLL;
    }

    objc_storeStrong(&v12->_auditToken, token);
    objc_storeStrong(&v12->_routeManager, manager);
    objc_storeStrong(&v12->_traceManager, traceManager);
    v12->_navigationType = 0;
    v12->_guidancePromptsEnabled = 1;
    v12->_isSpeakingTrafficIncidentAlert = 0;
    activeTrafficIncidentAlert = v12->_activeTrafficIncidentAlert;
    v12->_activeTrafficIncidentAlert = 0;

    v12->_displayedStepIndex = 0x7FFFFFFFFFFFFFFFLL;
    GEOConfigGetDouble();
    v12->_locationProjectionTime = v18;
    _GEOConfigAddDelegateListenerForKey();
    tracePlayer = [traceManagerCopy tracePlayer];

    if (tracePlayer)
    {
      tracePlayer2 = [traceManagerCopy tracePlayer];
      [tracePlayer2 registerObserver:v12];
    }

    v21 = v12;
  }

  return v12;
}

- (MNNavigationSession)init
{
  result = [MEMORY[0x1E695DF30] raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

- (void)updateForLocation:(id)location
{
  v48 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v5 = locationCopy;
  if (locationCopy)
  {
    navigationCapabilities = self->_navigationCapabilities;
    v7 = locationCopy;
    v8 = v7;
    v9 = v7;
    if ((navigationCapabilities & 4) != 0)
    {
      v9 = v7;
      if (([v7 locationUnreliable] & 1) == 0)
      {
        date = [MEMORY[0x1E695DF00] date];
        timestamp = [v8 timestamp];
        [date timeIntervalSinceDate:timestamp];
        v13 = v12;

        v9 = [v8 propagatedLocationForTimeInterval:-[MNLocationTracker shouldProjectAlongRoute](self->_locationTracker shouldProjectAlongRoute:{"shouldProjectAlongRoute"), self->_locationProjectionTime + fmin(v13, 1.0)}];

        stepIndex = [v8 stepIndex];
        if (stepIndex != [v9 stepIndex])
        {
          v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Propagating location shouldn't change step index"];
          v37 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v38 = 136316162;
            v39 = "[MNNavigationSession(ForSwift) updateForLocation:]";
            v40 = 2080;
            v41 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationSession.m";
            v42 = 1024;
            v43 = 1661;
            v44 = 2080;
            v45 = "location.stepIndex == propagatedLocation.stepIndex";
            v46 = 2112;
            v47 = v36;
            _os_log_impl(&dword_1D311E000, v37, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v38, 0x30u);
          }
        }
      }
    }

    [(GEOObserverHashTable *)self->_observers navigationSession:self didUpdateMatchedLocation:v9];
    currentRoute = [(MNRouteManager *)self->_routeManager currentRoute];
    location = [(MNNavigationSessionState *)self->_navigationSessionState location];
    stepIndex2 = [location stepIndex];

    stepIndex3 = [v8 stepIndex];
    if (stepIndex2 != stepIndex3)
    {
      v19 = stepIndex3;
      routeMatch = [v8 routeMatch];
      segmentIndex = [routeMatch segmentIndex];

      [(GEOObserverHashTable *)self->_observers navigationSession:self matchedToStepIndex:v19 segmentIndex:segmentIndex];
      if (v19 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v22 = [currentRoute stepAtIndex:v19];
        firstNameOrBranch = [v22 firstNameOrBranch];

        [(GEOObserverHashTable *)self->_observers navigationSession:self didUpdateStepNameInfo:firstNameOrBranch];
      }
    }

    if ([v8 state] == 1)
    {
      upcomingAnchorPointIndex = [(MNNavigationSessionState *)self->_navigationSessionState upcomingAnchorPointIndex];
      anchorPoints = [currentRoute anchorPoints];
      routeMatch2 = [v8 routeMatch];
      v27 = [anchorPoints nextAnchorPointIndexAfter:{objc_msgSend(routeMatch2, "routeCoordinate")}];

      if (upcomingAnchorPointIndex != v27)
      {
        [(MNNavigationSessionState *)self->_navigationSessionState setUpcomingAnchorPointIndex:v27];
        v28 = [[_TtC10Navigation61MNNavigationServiceCallback_DidUpdateUpcomingAnchorPointIndex alloc] initWithAnchorPointIndex:v27];
        [(GEOObserverHashTable *)self->_observers navigationSession:self didSendNavigationServiceCallback:v28];
      }
    }

    [(MNNavigationSessionState *)self->_navigationSessionState setLocation:v8];
    if ([v8 state] == 1)
    {
      [(MNNavigationSessionState *)self->_navigationSessionState setHasBeenOnRouteOnce:1];
    }

    [(MNNavigationSession *)self _updateNavigationSessionState:self->_navigationSessionState];
    [(MNTraceNavigationEventRecorder *)self->_navigationEventRecorder setLastMatchedLocation:v8];
    [(MNTimeAndDistanceUpdater *)self->_timeAndDistanceUpdater setLocation:v8 notificationType:1];
    [(MNLocationTracker *)self->_locationTracker updateLocation:v8];
    [(MNNavigationSession *)self _addProbeCrumbLocation:v8];
    routeMatch3 = [v8 routeMatch];
    route = [routeMatch3 route];
    routeManager = [(MNNavigationSession *)self routeManager];
    currentRoute2 = [routeManager currentRoute];

    if (route == currentRoute2)
    {
      guidanceManager = self->_guidanceManager;
      locationTracker = [(MNNavigationSession *)self locationTracker];
      -[MNGuidanceManager updateGuidanceForLocation:navigatorState:](guidanceManager, "updateGuidanceForLocation:navigatorState:", v8, [locationTracker state]);
    }

    [(GEOObserverHashTable *)self->_observers navigationSessionDidFinishLocationUpdate:self];
  }

  v35 = *MEMORY[0x1E69E9840];
}

@end