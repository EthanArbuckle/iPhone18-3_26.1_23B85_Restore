@interface MNNavigationSession
- (BOOL)repeatCurrentGuidance;
- (BOOL)repeatCurrentTrafficAlert;
- (BOOL)wantsETAUpdates;
- (MNNavigationSession)init;
- (MNNavigationSession)initWithRouteManager:(id)a3 auditToken:(id)a4 traceManager:(id)a5;
- (id)routeInfoForUpdateManager:(id)a3 reason:(unint64_t)a4;
- (void)_addProbeCrumbLocation:(id)a3;
- (void)_closeTileLoader;
- (void)_openTileLoader;
- (void)_startAudioSessionWithGuidanceLevelOverride:(unint64_t)a3;
- (void)_startIdleTimerUpdates;
- (void)_startLocationTrackingWithInitialLocation:(id)a3 targetLegIndex:(unint64_t)a4;
- (void)_startMotionUpdates;
- (void)_startTravelTimeUpdates;
- (void)_startVirtualGarageUpdates;
- (void)_stopAudioSession;
- (void)_stopIdleTimerUpdates;
- (void)_stopLocationTracking;
- (void)_stopMotionUpdates;
- (void)_stopTravelTimeUpdates;
- (void)_stopVirtualGarageUpdates;
- (void)_updateNavigationSessionState:(id)a3;
- (void)_updateResumeRouteInfoFrom:(id)a3;
- (void)audioManager:(id)a3 didChangeVoiceGuidanceLevel:(unint64_t)a4;
- (void)dealloc;
- (void)guidanceManager:(id)a3 announce:(id)a4 isImportant:(BOOL)a5 shortPromptType:(unint64_t)a6 stage:(unint64_t)a7 completionBlock:(id)a8;
- (void)guidanceManager:(id)a3 didUpdateNavTrayGuidance:(id)a4;
- (void)insertWaypoint:(id)a3;
- (void)locationManager:(id)a3 didUpdateHeading:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocation:(id)a4;
- (void)locationTracker:(id)a3 didEnterPreArrivalStateForWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5;
- (void)locationTracker:(id)a3 didFailRerouteWithError:(id)a4;
- (void)locationTracker:(id)a3 didReroute:(id)a4 newAlternateRoutes:(id)a5 rerouteReason:(unint64_t)a6 request:(id)a7 response:(id)a8;
- (void)locationTracker:(id)a3 didResumeNavigatingFromWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5 reason:(unint64_t)a6;
- (void)locationTracker:(id)a3 didSwitchToNewTransportTypeWithRoute:(id)a4 rerouteReason:(unint64_t)a5 request:(id)a6 response:(id)a7;
- (void)locationTracker:(id)a3 didUpdateAlternateRoutes:(id)a4;
- (void)locationTracker:(id)a3 didUpdateArrivalInfo:(id)a4 previousState:(int64_t)a5;
- (void)locationTracker:(id)a3 didUpdateETAForRoute:(id)a4;
- (void)locationTracker:(id)a3 didUpdateTargetLegIndex:(unint64_t)a4;
- (void)locationTracker:(id)a3 dismissedTrafficIncidentAlert:(id)a4;
- (void)locationTracker:(id)a3 invalidatedTrafficIncidentAlert:(id)a4;
- (void)locationTracker:(id)a3 receivedTrafficIncidentAlert:(id)a4 responseCallback:(id)a5;
- (void)locationTracker:(id)a3 updatedTrafficIncidentAlert:(id)a4;
- (void)locationTrackerDidArrive:(id)a3;
- (void)locationTrackerDidEnterPreArrivalState:(id)a3;
- (void)motionContextDidUpdateMotion:(id)a3;
- (void)removeWaypointAtIndex:(unint64_t)a3;
- (void)rerouteWithWaypoints:(id)a3;
- (void)resumeOriginalDestination;
- (void)startArrivalInfoUpdates;
- (void)startLocationUpdates;
- (void)startNavigationSessionWithDetails:(id)a3;
- (void)startTimedETAUpdates;
- (void)stopArrivalInfoUpdates;
- (void)stopLocationUpdates;
- (void)stopNavigationSessionWithReason:(unint64_t)a3;
- (void)stopTimedETAUpdates;
- (void)switchToRoute:(id)a3;
- (void)tracePlayer:(id)a3 didJumpToRouteResponse:(id)a4 request:(id)a5 waypoints:(id)a6;
- (void)tracePlayer:(id)a3 didSeekToTime:(double)a4 fromTime:(double)a5 location:(id)a6;
- (void)tracePlayer:(id)a3 didUpdateCurrentRoute:(id)a4 reason:(unint64_t)a5;
- (void)updateDestination:(id)a3;
- (void)updateForLocation:(id)a3;
- (void)updateForUserIncidentReport:(id)a3;
- (void)updateManager:(id)a3 didReceiveETAResponse:(id)a4;
- (void)updateManager:(id)a3 willSendETARequest:(id)a4;
- (void)updateWithInitialLocation:(id)a3;
- (void)valueChangedForGEOConfigKey:(id)a3;
- (void)vehicleMonitorDidDisconnectFromVehicle:(id)a3;
@end

@implementation MNNavigationSession

- (void)startArrivalInfoUpdates
{
  v2 = self;
  MNNavigationSession.startArrivalInfoUpdates()();
}

- (void)stopArrivalInfoUpdates
{
  v2 = self;
  MNNavigationSession.stopArrivalInfoUpdates()();
}

- (void)startTimedETAUpdates
{
  v2 = self;
  MNNavigationSession.startTimedETAUpdates()();
}

- (void)stopTimedETAUpdates
{
  v2 = self;
  MNNavigationSession.stopTimedETAUpdates()();
}

- (void)updateForUserIncidentReport:(id)a3
{
  v4 = a3;
  v5 = self;
  MNNavigationSession.update(for:)(v4);
}

- (void)startLocationUpdates
{
  v2 = self;
  MNNavigationSession.startLocationUpdates()();
}

- (void)stopLocationUpdates
{
  v2 = qword_1EC75BF68;
  v3 = self;
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

- (void)locationManager:(id)a3 didUpdateLocation:(id)a4
{
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  *(v6 + 24) = a4;
  v11[4] = sub_1D3188860;
  v11[5] = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D3122E0C;
  v11[3] = &block_descriptor_7;
  v7 = _Block_copy(v11);
  v8 = a4;
  v9 = self;
  v10 = v8;

  MNRunAsyncOnNavigationQueue(v7);

  _Block_release(v7);
}

- (void)locationManager:(id)a3 didUpdateHeading:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D31886DC(v7);
}

- (void)valueChangedForGEOConfigKey:(id)a3
{
  if (a3.var0 == 8 && a3.var1 == &NavigationConfig_LocationProjectionTimeSeconds_Metadata)
  {
    GEOConfigGetDouble();
    self->_locationProjectionTime = v4;
  }
}

- (id)routeInfoForUpdateManager:(id)a3 reason:(unint64_t)a4
{
  v6 = a3;
  if (a4 - 3 >= 4 && ([(MNLocationTracker *)self->_locationTracker isRerouting]|| [(MNNavigationSession *)self navigationState]== 6))
  {
    v7 = 0;
  }

  else
  {
    v7 = [(MNRouteManager *)self->_routeManager currentRouteInfo];
  }

  return v7;
}

- (BOOL)wantsETAUpdates
{
  if ((self->_navigationCapabilities & 1) == 0)
  {
    return 0;
  }

  v3 = [(MNRouteManager *)self->_routeManager currentRoute];
  v4 = [v3 transportType];

  if (self->_navigationType != 3)
  {
    return 0;
  }

  return !v4 || v4 == 3;
}

- (void)updateManager:(id)a3 didReceiveETAResponse:(id)a4
{
  v12 = a4;
  [(MNLocationTracker *)self->_locationTracker updateForETAUResponse:v12];
  serverSessionStateInfo = self->_serverSessionStateInfo;
  v6 = [v12 response];
  [(MNServerSessionStateInfo *)serverSessionStateInfo updateWithETAUResponse:v6];

  v7 = [(MNNavigationSession *)self lastMatchedLocation];
  v8 = [v7 routeMatch];
  -[MNNavigationSession _updateResumeRouteInfoFrom:](self, "_updateResumeRouteInfoFrom:", [v8 routeCoordinate]);

  v9 = [v12 error];

  if (v9)
  {
    v10 = objc_opt_new();
    v11 = [v12 error];
    [v10 setError:v11];

    [(GEOObserverHashTable *)self->_observers navigationSession:self didSendNavigationServiceCallback:v10];
  }
}

- (void)updateManager:(id)a3 willSendETARequest:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = MNGetMNNavigationSessionLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    serverSessionStateInfo = self->_serverSessionStateInfo;
    v15 = 134218242;
    v16 = v5;
    v17 = 2112;
    v18 = serverSessionStateInfo;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "willSendETARequest - Request: %p | %@", &v15, 0x16u);
  }

  v8 = [(MNServerSessionStateInfo *)self->_serverSessionStateInfo sessionState];
  [v5 setSessionState:v8];

  v9 = [(MNRouteManager *)self->_routeManager currentRoute];
  v10 = [v9 directionsResponseID];
  [v5 setDirectionsResponseID:v10];

  v11 = objc_opt_new();
  [v5 setTripInfo:v11];

  v12 = [(MNLocationTracker *)self->_locationTracker hasVisitedFirstStop];
  v13 = [v5 tripInfo];
  [v13 setHasVisitedFirstStop:v12];

  [(MNLocationTracker *)self->_locationTracker updateRequestForETAUpdate:v5];
  v14 = *MEMORY[0x1E69E9840];
}

- (void)audioManager:(id)a3 didChangeVoiceGuidanceLevel:(unint64_t)a4
{
  [(MNGuidanceManager *)self->_guidanceManager setPreferredGuidanceLevel:a4];
  v6 = objc_alloc_init(MNNavigationServiceCallback_DidChangeVoiceGuidanceLevel);
  [(MNNavigationServiceCallback_DidChangeVoiceGuidanceLevel *)v6 setVoiceGuidanceLevel:a4];
  [(GEOObserverHashTable *)self->_observers navigationSession:self didSendNavigationServiceCallback:v6];
  if (a4 == 2)
  {
    [(MNNavigationSession *)self repeatCurrentGuidance];
  }
}

- (void)vehicleMonitorDidDisconnectFromVehicle:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  BOOL = GEOConfigGetBOOL();
  v5 = MNGetMNNavigationSessionLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (BOOL)
  {
    if (v6)
    {
      v7 = [(MNLocationTracker *)self->_locationTracker arrivalInfo];
      v8 = [v7 arrivalState];
      if (v8 > 6)
      {
        v9 = @"MNArrivalState_Unknown";
      }

      else
      {
        v9 = off_1E84301C8[v8];
      }

      v20 = 138412290;
      v21 = v9;
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "Received vehicle monitor disconnect notification. Current arrival state: %@", &v20, 0xCu);
    }

    v10 = [(MNLocationTracker *)self->_locationTracker arrivalInfo];
    v11 = [v10 isInArrivalState];

    if (v11)
    {
      v12 = [(MNNavigationSessionState *)self->_navigationSessionState isOnLastLeg];
      v13 = MNGetMNNavigationSessionLog();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        if (v14)
        {
          LOWORD(v20) = 0;
          _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_DEFAULT, "Trying to end navigation because we are on last leg.", &v20, 2u);
        }

        observers = self->_observers;
        v16 = self;
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
        v16 = self;
        v17 = 6;
      }

      [(GEOObserverHashTable *)observers navigationSession:v16 shouldEndWithReason:v17];
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

- (void)tracePlayer:(id)a3 didUpdateCurrentRoute:(id)a4 reason:(unint64_t)a5
{
  v7 = a4;
  v11 = [[MNActiveRouteInfo alloc] initWithRoute:v7];
  v8 = [v7 waypoints];

  v9 = [v8 lastObject];
  destination = self->_destination;
  self->_destination = v9;

  [(MNLocationTracker *)self->_locationTracker reroute:v11 reason:a5];
}

- (void)tracePlayer:(id)a3 didSeekToTime:(double)a4 fromTime:(double)a5 location:(id)a6
{
  v14 = a3;
  v10 = a6;
  if (a4 < a5)
  {
    [(MNGuidanceManager *)self->_guidanceManager reset];
  }

  if (v10)
  {
    locationTracker = self->_locationTracker;
    v12 = [(MNNavigationSession *)self routeManager];
    v13 = [v12 currentRoute];
    [(MNLocationTracker *)locationTracker forceOnRoute:v13 atLocation:v10];
  }
}

- (void)tracePlayer:(id)a3 didJumpToRouteResponse:(id)a4 request:(id)a5 waypoints:(id)a6
{
  v9 = MEMORY[0x1E69A2538];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [v9 alloc];
  v14 = [v11 routeAttributes];

  v18 = [v13 initWithWaypoints:v10 routeAttributes:v14 directionsResponse:v12];
  v15 = [v18 mainRouteInfo];
  v16 = [v10 lastObject];

  destination = self->_destination;
  self->_destination = v16;

  [(MNLocationTracker *)self->_locationTracker reroute:v15 reason:0];
}

- (void)guidanceManager:(id)a3 didUpdateNavTrayGuidance:(id)a4
{
  v5 = a4;
  v6 = [[_TtC10Navigation52MNNavigationServiceCallback_DidUpdateNavTrayGuidance alloc] initWithNavTrayGuidanceEvent:v5];

  [(GEOObserverHashTable *)self->_observers navigationSession:self didSendNavigationServiceCallback:v6];
}

- (void)guidanceManager:(id)a3 announce:(id)a4 isImportant:(BOOL)a5 shortPromptType:(unint64_t)a6 stage:(unint64_t)a7 completionBlock:(id)a8
{
  if (a5)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  audioManager = self->_audioManager;
  v14 = a4;
  [(MNAudioManager *)audioManager requestSpeech:v14 guidanceLevel:v12 modifier:0 shortPromptType:a6 completionHandler:a8];
  [(GEOObserverHashTable *)self->_observers navigationSession:self didAnnounce:v14 stage:a7];
}

- (void)locationTracker:(id)a3 updatedTrafficIncidentAlert:(id)a4
{
  v5 = a4;
  v6 = [[_TtC10Navigation57MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert alloc] initWithUpdateType:1 trafficIncidentAlert:v5];

  [(GEOObserverHashTable *)self->_observers navigationSession:self didSendNavigationServiceCallback:v6];
}

- (void)locationTracker:(id)a3 dismissedTrafficIncidentAlert:(id)a4
{
  activeTrafficIncidentAlert = self->_activeTrafficIncidentAlert;
  self->_activeTrafficIncidentAlert = 0;
  v6 = a4;

  v7 = [[_TtC10Navigation57MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert alloc] initWithUpdateType:2 trafficIncidentAlert:v6];
  [(GEOObserverHashTable *)self->_observers navigationSession:self didSendNavigationServiceCallback:v7];
}

- (void)locationTracker:(id)a3 invalidatedTrafficIncidentAlert:(id)a4
{
  activeTrafficIncidentAlert = self->_activeTrafficIncidentAlert;
  self->_activeTrafficIncidentAlert = 0;
  v6 = a4;

  v7 = [[_TtC10Navigation57MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert alloc] initWithUpdateType:3 trafficIncidentAlert:v6];
  [(GEOObserverHashTable *)self->_observers navigationSession:self didSendNavigationServiceCallback:v7];
}

- (void)locationTracker:(id)a3 receivedTrafficIncidentAlert:(id)a4 responseCallback:(id)a5
{
  v21 = a4;
  v8 = a5;
  audioManager = self->_audioManager;
  v10 = [v21 spokenTexts];
  v11 = [v10 firstObject];
  [(MNAudioManager *)audioManager requestSpeech:v11 guidanceLevel:1 modifier:1 shortPromptType:0 completionHandler:0];

  objc_storeStrong(&self->_activeTrafficIncidentAlert, a4);
  trafficIncidentAlertCallbacks = self->_trafficIncidentAlertCallbacks;
  if (!trafficIncidentAlertCallbacks)
  {
    v13 = objc_opt_new();
    v14 = self->_trafficIncidentAlertCallbacks;
    self->_trafficIncidentAlertCallbacks = v13;

    trafficIncidentAlertCallbacks = self->_trafficIncidentAlertCallbacks;
  }

  v15 = _Block_copy(v8);
  v16 = [v21 alertID];
  [(NSMutableDictionary *)trafficIncidentAlertCallbacks setObject:v15 forKey:v16];

  serverSessionStateInfo = self->_serverSessionStateInfo;
  v18 = [v21 bannerID];
  v19 = [v21 eventInfo];
  [(MNServerSessionStateInfo *)serverSessionStateInfo addDisplayedBannerID:v18 withEventInfo:v19];

  v20 = [[_TtC10Navigation57MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert alloc] initWithUpdateType:0 trafficIncidentAlert:v21];
  [(GEOObserverHashTable *)self->_observers navigationSession:self didSendNavigationServiceCallback:v20];
}

- (void)locationTracker:(id)a3 didSwitchToNewTransportTypeWithRoute:(id)a4 rerouteReason:(unint64_t)a5 request:(id)a6 response:(id)a7
{
  v38 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a7;
  v13 = a6;
  v14 = [v11 route];
  v15 = [v14 transportType];

  v16 = [v11 route];
  v17 = [MNMapMatcher mapMatcherFor:v16];
  mapMatcher = self->_mapMatcher;
  self->_mapMatcher = v17;

  [(MNRouteManager *)self->_routeManager updateForReroute:v11 rerouteReason:a5 request:v13 response:v12];
  [(MNRouteManager *)self->_routeManager updateWithAlternateRoutes:0];
  [(MNNavigationSessionState *)self->_navigationSessionState updateCurrentRouteInfo:v11 rerouteReason:a5];
  [(MNNavigationSessionState *)self->_navigationSessionState setAlternateRouteInfos:0];
  if (a5 == 13)
  {
    v19 = MNGetMNNavigationSessionLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v11 route];
      v21 = [v20 source];
      if ((v21 - 1) > 4)
      {
        v22 = @"Unknown";
      }

      else
      {
        v22 = off_1E84301A0[v21 - 1];
      }

      v36 = 138412290;
      v37 = v22;
      _os_log_impl(&dword_1D311E000, v19, OS_LOG_TYPE_DEFAULT, "Updating initial route source to %@.", &v36, 0xCu);
    }

    v23 = [v11 route];
    -[MNNavigationSessionState setInitialRouteSource:](self->_navigationSessionState, "setInitialRouteSource:", [v23 source]);
  }

  [(MNNavigationSession *)self _updateNavigationSessionState:self->_navigationSessionState];
  timeAndDistanceUpdater = self->_timeAndDistanceUpdater;
  v25 = [(MNRouteManager *)self->_routeManager allRoutes];
  v26 = [(MNRouteManager *)self->_routeManager currentRouteInfo];
  v27 = [(MNLocationTracker *)self->_locationTracker lastMatchedLocation];
  [(MNTimeAndDistanceUpdater *)timeAndDistanceUpdater setRoutes:v25 mainRoute:v26 location:v27 notificationType:0];

  [(MNNavigationSession *)self _stopLocationTracking];
  [(MNAudioManager *)self->_audioManager clearAllAnnouncements];
  if (v15 == 2)
  {
    v29 = @"Navigation_SwitchToWalkingNotification";
    v28 = 5;
    goto LABEL_12;
  }

  if (!v15)
  {
    v28 = 0;
    v29 = @"Navigation_SwitchToDrivingNotification";
LABEL_12:
    v30 = _MNStringFromSpokenLocalization(v29);
    [(MNAudioManager *)self->_audioManager requestSpeech:v30 guidanceLevel:2 modifier:0 shortPromptType:v28 completionHandler:0];
  }

  [(GEOObserverHashTable *)self->_observers navigationSession:self didSwitchToNewTransportType:v15 newRoute:v11 rerouteReason:a5];
  [(MNNavigationSession *)self _startLocationTrackingWithInitialLocation:0 targetLegIndex:0];
  serverSessionStateInfo = self->_serverSessionStateInfo;
  v32 = [v11 route];
  [(MNServerSessionStateInfo *)serverSessionStateInfo updateWithRoute:v32];

  [(MNNavigationSession *)self _updateResumeRouteInfoFrom:*MEMORY[0x1E69A1928]];
  [(MNGuidanceManager *)self->_guidanceManager updateSessionStateForReroute:self->_navigationSessionState reason:6 location:0];
  [(MNAudioManager *)self->_audioManager changeTransportType:v15];
  probeCrumbs = self->_probeCrumbs;
  v34 = [v11 route];
  [(GEOProbeCrumbs *)probeCrumbs resetStateWithRoute:v34];

  [(MNNavigationSession *)self _startGuidanceAllowMidRouteStart:1 announcementsToIgnore:0];
  v35 = *MEMORY[0x1E69E9840];
}

- (void)locationTracker:(id)a3 didUpdateAlternateRoutes:(id)a4
{
  routeManager = self->_routeManager;
  v10 = a4;
  [(MNRouteManager *)routeManager updateWithAlternateRoutes:v10];
  [(MNNavigationSessionState *)self->_navigationSessionState setAlternateRouteInfos:v10];
  [(MNNavigationSession *)self _updateNavigationSessionState:self->_navigationSessionState];
  timeAndDistanceUpdater = self->_timeAndDistanceUpdater;
  v7 = [(MNRouteManager *)self->_routeManager allRoutes];
  v8 = [(MNRouteManager *)self->_routeManager currentRouteInfo];
  v9 = [(MNLocationTracker *)self->_locationTracker lastMatchedLocation];
  [(MNTimeAndDistanceUpdater *)timeAndDistanceUpdater setRoutes:v7 mainRoute:v8 location:v9 notificationType:0];

  [(GEOObserverHashTable *)self->_observers navigationSession:self didUpdateAlternateRoutes:v10];
}

- (void)locationTracker:(id)a3 didFailRerouteWithError:(id)a4
{
  v6 = a4;
  [(GEOObserverHashTable *)self->_observers navigationSession:self didFailRerouteWithError:v6];
  if (v6)
  {
    v5 = objc_opt_new();
    [v5 setError:v6];
    [(GEOObserverHashTable *)self->_observers navigationSession:self didSendNavigationServiceCallback:v5];
  }
}

- (void)locationTracker:(id)a3 didReroute:(id)a4 newAlternateRoutes:(id)a5 rerouteReason:(unint64_t)a6 request:(id)a7 response:(id)a8
{
  v39 = *MEMORY[0x1E69E9840];
  v36 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  if (a6 != 2 && a6 != 4)
  {
    [(MNAudioManager *)self->_audioManager clearAllAnnouncements];
  }

  v18 = [v14 route];
  v19 = [MNMapMatcher mapMatcherFor:v18];
  mapMatcher = self->_mapMatcher;
  self->_mapMatcher = v19;

  [(MNRouteManager *)self->_routeManager updateForReroute:v14 rerouteReason:a6 request:v16 response:v17];
  [(MNRouteManager *)self->_routeManager updateWithAlternateRoutes:v15];
  [(MNNavigationSessionState *)self->_navigationSessionState updateCurrentRouteInfo:v14 rerouteReason:a6];
  [(MNNavigationSessionState *)self->_navigationSessionState setAlternateRouteInfos:v15];
  [(MNNavigationSession *)self _updateNavigationSessionState:self->_navigationSessionState];
  if (a6 == 13)
  {
    v21 = MNGetMNNavigationSessionLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v14 route];
      v23 = [v22 source];
      if ((v23 - 1) > 4)
      {
        v24 = @"Unknown";
      }

      else
      {
        v24 = off_1E84301A0[v23 - 1];
      }

      *buf = 138412290;
      v38 = v24;
      _os_log_impl(&dword_1D311E000, v21, OS_LOG_TYPE_DEFAULT, "Updating initial route source to %@.", buf, 0xCu);
    }

    v25 = [v14 route];
    -[MNNavigationSessionState setInitialRouteSource:](self->_navigationSessionState, "setInitialRouteSource:", [v25 source]);
  }

  v26 = [(MNLocationTracker *)self->_locationTracker lastMatchedLocation];
  [(MNGuidanceManager *)self->_guidanceManager updateSessionStateForReroute:self->_navigationSessionState reason:a6 location:v26];
  timeAndDistanceUpdater = self->_timeAndDistanceUpdater;
  v28 = [(MNRouteManager *)self->_routeManager allRoutes];
  v29 = [(MNRouteManager *)self->_routeManager currentRouteInfo];
  [(MNTimeAndDistanceUpdater *)timeAndDistanceUpdater setRoutes:v28 mainRoute:v29 location:v26 notificationType:0];

  [(GEOObserverHashTable *)self->_observers navigationSession:self didReroute:v14 withLocation:v26 withAlternateRoutes:v15 rerouteReason:a6];
  -[MNGuidanceManager updateGuidanceForLocation:navigatorState:](self->_guidanceManager, "updateGuidanceForLocation:navigatorState:", v26, [v36 state]);
  serverSessionStateInfo = self->_serverSessionStateInfo;
  v31 = [v14 route];
  [(MNServerSessionStateInfo *)serverSessionStateInfo updateWithRoute:v31];

  v32 = [v26 routeMatch];
  -[MNNavigationSession _updateResumeRouteInfoFrom:](self, "_updateResumeRouteInfoFrom:", [v32 routeCoordinate]);

  probeCrumbs = self->_probeCrumbs;
  v34 = [v14 route];
  [(GEOProbeCrumbs *)probeCrumbs resetStateWithRoute:v34];

  v35 = *MEMORY[0x1E69E9840];
}

- (void)locationTracker:(id)a3 didUpdateETAForRoute:(id)a4
{
  timeAndDistanceUpdater = self->_timeAndDistanceUpdater;
  v6 = a4;
  [(MNTimeAndDistanceUpdater *)timeAndDistanceUpdater updateDisplayETAForRoute:v6 notificationType:1];
  [(GEOObserverHashTable *)self->_observers navigationSession:self didUpdateETAResponseForRoute:v6];
}

- (void)locationTrackerDidArrive:(id)a3
{
  observers = self->_observers;
  v5 = a3;
  [(GEOObserverHashTable *)observers navigationSessionDidArrive:self];
  guidanceManager = self->_guidanceManager;
  v7 = [v5 lastMatchedLocation];

  [(MNGuidanceManager *)guidanceManager updateGuidanceForLocation:v7 navigatorState:[(MNNavigationSession *)self navigationState]];
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

- (void)locationTrackerDidEnterPreArrivalState:(id)a3
{
  [(MNGuidanceManager *)self->_guidanceManager setIsInPreArrivalState:1];
  observers = self->_observers;

  [(GEOObserverHashTable *)observers navigationSessionDidEnterPreArrivalState:self];
}

- (void)locationTracker:(id)a3 didUpdateTargetLegIndex:(unint64_t)a4
{
  [(MNNavigationSessionState *)self->_navigationSessionState setTargetLegIndex:a4];
  [(MNNavigationSession *)self _updateNavigationSessionState:self->_navigationSessionState];
  v6 = [[_TtC10Navigation51MNNavigationServiceCallback_DidUpdateTargetLegIndex alloc] initWithTargetLegIndex:a4];
  [(GEOObserverHashTable *)self->_observers navigationSession:self didSendNavigationServiceCallback:v6];
  [(GEOObserverHashTable *)self->_observers navigationSession:self didUpdateTargetLegIndex:a4];
}

- (void)locationTracker:(id)a3 didResumeNavigatingFromWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5 reason:(unint64_t)a6
{
  idleTimerUpdater = self->_idleTimerUpdater;
  v12 = a4;
  [(MNIdleTimerUpdater *)idleTimerUpdater updateForStartNavigation];
  [(MNGuidanceManager *)self->_guidanceManager setShouldShowChargingInfo:0];
  [(MNGuidanceManager *)self->_guidanceManager setIsInPreArrivalState:0];
  guidanceManager = self->_guidanceManager;
  v11 = [(MNLocationTracker *)self->_locationTracker lastMatchedLocation];
  [(MNGuidanceManager *)guidanceManager updateGuidanceForLocation:v11 navigatorState:[(MNNavigationSession *)self navigationState]];

  [(GEOObserverHashTable *)self->_observers navigationSession:self didResumeNavigatingFromWaypoint:v12 endOfLegIndex:a5 reason:a6];
}

- (void)locationTracker:(id)a3 didEnterPreArrivalStateForWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5
{
  guidanceManager = self->_guidanceManager;
  v8 = a4;
  [(MNGuidanceManager *)guidanceManager setIsInPreArrivalState:1];
  [(GEOObserverHashTable *)self->_observers navigationSession:self didEnterPreArrivalStateForWaypoint:v8 endOfLegIndex:a5];
}

- (void)locationTracker:(id)a3 didUpdateArrivalInfo:(id)a4 previousState:(int64_t)a5
{
  v11 = a4;
  -[MNNavigationSessionState setArrivalState:](self->_navigationSessionState, "setArrivalState:", [v11 arrivalState]);
  v7 = objc_opt_new();
  [v7 setArrivalInfo:v11];
  [v7 setPreviousState:a5];
  [(GEOObserverHashTable *)self->_observers navigationSession:self didSendNavigationServiceCallback:v7];
  v8 = [(MNRouteManager *)self->_routeManager currentRoute];
  v9 = [v8 legs];
  if ([v9 count] >= 2)
  {
    v10 = [v11 isInArrivalState];

    if (!v10)
    {
      goto LABEL_5;
    }

    v8 = [(MNNavigationSession *)self lastMatchedLocation];
    v9 = [v8 routeMatch];
    -[MNNavigationSession _updateResumeRouteInfoFrom:](self, "_updateResumeRouteInfoFrom:", [v9 routeCoordinate]);
  }

LABEL_5:
}

- (void)motionContextDidUpdateMotion:(id)a3
{
  observers = self->_observers;
  v5 = a3;
  v6 = [v5 motionType];
  v7 = [v5 confidence];

  [(GEOObserverHashTable *)observers navigationSession:self didUpdateMotionType:v6 confidence:v7];
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

- (void)_addProbeCrumbLocation:(id)a3
{
  v13 = a3;
  if ([v13 referenceFrame] == 2)
  {
    [v13 rawShiftedCoordinate];
  }

  else
  {
    [v13 rawCoordinate];
  }

  v6 = v4;
  v7 = v5;
  probeCrumbs = self->_probeCrumbs;
  v9 = [v13 routeMatch];
  v10 = [v9 routeCoordinate];
  v11 = [v13 timestamp];
  [v11 timeIntervalSinceReferenceDate];
  [(GEOProbeCrumbs *)probeCrumbs addLocation:v10 polyCoordinate:v12 timestamp:v6, v7];
}

- (void)_updateNavigationSessionState:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

        [*(*(&v11 + 1) + 8 * v9++) setNavigationSessionState:{v4, v11}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_updateResumeRouteInfoFrom:(id)a3
{
  if (!self->_serverSessionStateInfo)
  {
    return;
  }

  v5 = [(MNLocationTracker *)self->_locationTracker arrivalInfo];
  if (![v5 isInArrivalState])
  {
    goto LABEL_5;
  }

  v6 = [(MNNavigationSessionState *)self->_navigationSessionState isOnLastLeg];

  if (!v6)
  {
    v5 = [(MNNavigationSessionState *)self->_navigationSessionState nextLeg];
    a3 = [v5 startRouteCoordinate];
LABEL_5:
  }

  v12 = objc_alloc_init(MEMORY[0x1E69A24A0]);
  v7 = [(MNServerSessionStateInfo *)self->_serverSessionStateInfo sessionState];
  [v12 setServerSessionState:v7];

  v8 = [(MNRouteManager *)self->_routeManager currentRoute];
  v9 = [v8 geoOriginalWaypointRouteFromRouteCoordinate:a3 purpose:6];
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
    v6 = [(MNRouteManager *)self->_routeManager allRoutes];
    v7 = [(MNRouteManager *)self->_routeManager currentRouteInfo];
    v8 = [(MNLocationTracker *)self->_locationTracker lastMatchedLocation];
    [(MNTimeAndDistanceUpdater *)v5 setRoutes:v6 mainRoute:v7 location:v8 notificationType:2];

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

- (void)_startAudioSessionWithGuidanceLevelOverride:(unint64_t)a3
{
  v5 = [MEMORY[0x1E69A1CD8] sharedConfiguration];
  v6 = [v5 currentCountrySupportsNavigation];

  if (v6)
  {
    v7 = [(MNRouteManager *)self->_routeManager currentRoute];
    v8 = [v7 transportType];

    v9 = [MNAudioManager alloc];
    v10 = [(MNRouteManager *)self->_routeManager routeAttributes];
    v11 = [v10 phoneticLocaleIdentifier];
    v12 = [(MNAudioManager *)v9 initWithTransportType:v8 voiceLanguage:v11 guidanceLevelOverride:a3];
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
  v3 = [(MNNavigationTraceManager *)self->_traceManager tracePlayer];

  if (v3)
  {
    v8 = self->_traceManager;
  }

  else
  {
    v4 = [MNCoreMotionContextProvider alloc];
    v5 = [(MNNavigationTraceManager *)self->_traceManager traceRecorder];
    v8 = [(MNCoreMotionContextProvider *)v4 initWithTraceRecorder:v5];
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

- (void)_startLocationTrackingWithInitialLocation:(id)a3 targetLegIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(MNNavigationSession *)self routeManager];
  v8 = [v7 currentRoute];
  v9 = -[MNNavigationSession _locationTrackerForTransportType:navigationType:](self, "_locationTrackerForTransportType:navigationType:", [v8 transportType], self->_navigationType);
  locationTracker = self->_locationTracker;
  self->_locationTracker = v9;

  [(MNLocationTracker *)self->_locationTracker setDelegate:self];
  [(MNLocationTracker *)self->_locationTracker setNavigationSessionState:self->_navigationSessionState];
  [(NSMutableArray *)self->_navigationSessionStateListeners addObject:self->_locationTracker];
  [(MNLocationTracker *)self->_locationTracker startTrackingWithInitialLocation:v6 targetLegIndex:a4];
  [(MNNavigationSessionState *)self->_navigationSessionState setLocation:v6];

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
    v5 = [MEMORY[0x1E69A2610] modernLoader];
    [v5 closeForClient:self->_tileLoaderClient];
    v3 = [MEMORY[0x1E69A2478] modernManager];
    [v3 closeServerConnection:1];

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

    v6 = [MEMORY[0x1E69A2610] modernLoader];
    [v6 openForClient:self->_tileLoaderClient];

    v7 = [MEMORY[0x1E69A2478] modernManager];
    [v7 openServerConnection];
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

  v4 = [(MNTrafficIncidentAlert *)self->_activeTrafficIncidentAlert spokenTexts];
  v5 = [v4 firstObject];

  v6 = [v5 length];
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
    [(MNAudioManager *)audioManager requestSpeech:v5 guidanceLevel:1 modifier:0 shortPromptType:0 completionHandler:v9];
  }

  return v3;
}

- (BOOL)repeatCurrentGuidance
{
  v3 = +[MNLocationManager shared];
  v4 = [v3 lastLocation];

  LOBYTE(self) = [(MNGuidanceManager *)self->_guidanceManager repeatLastGuidanceAnnouncement:v4];
  return self;
}

- (void)switchToRoute:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 route];
  if ([v5 transportType] != 1)
  {

LABEL_5:
    v10 = [v4 routeID];

    if (v10)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v11 = [(MNRouteManager *)self->_routeManager alternateRoutes];
      v12 = [v11 countByEnumeratingWithState:&v30 objects:v44 count:16];
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
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v30 + 1) + 8 * v15);
          v17 = [v4 routeID];
          v18 = [v16 routeID];
          v19 = [v17 isEqual:v18];

          if (v19)
          {
            break;
          }

          if (v13 == ++v15)
          {
            v13 = [v11 countByEnumeratingWithState:&v30 objects:v44 count:16];
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
      v23 = [v4 route];
      v24 = [v23 name];
      v25 = [v4 routeID];
      *buf = 138412546;
      v35 = v24;
      v36 = 2112;
      v37 = v25;
      _os_log_impl(&dword_1D311E000, v22, OS_LOG_TYPE_ERROR, "switchToRoute: was called but no valid alternate route was found for %@ (%@)", buf, 0x16u);
    }

    v26 = 0;
LABEL_21:
    [(MNLocationTracker *)self->_locationTracker reroute:v26 reason:11];

    goto LABEL_22;
  }

  v6 = [v4 routeID];
  v7 = [(MNRouteManager *)self->_routeManager currentRouteInfo];
  v8 = [v7 routeID];
  v9 = [v6 isEqual:v8];

  if (!v9)
  {
    goto LABEL_5;
  }

  [(MNLocationTracker *)self->_locationTracker reroute:v4 reason:15];
LABEL_22:
  probeCrumbs = self->_probeCrumbs;
  v28 = [v4 route];
  [(GEOProbeCrumbs *)probeCrumbs resetStateWithRoute:v28];

  v29 = *MEMORY[0x1E69E9840];
}

- (void)resumeOriginalDestination
{
  v3 = [(MNRouteManager *)self->_routeManager originalDestination];
  destination = self->_destination;
  self->_destination = v3;

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

- (void)updateDestination:(id)a3
{
  objc_storeStrong(&self->_destination, a3);
  v5 = a3;
  [(MNLocationTracker *)self->_locationTracker updateDestination:v5 completionHandler:0];
  [(MNGuidanceManager *)self->_guidanceManager updateDestination:v5];
  [(GEOObserverHashTable *)self->_observers navigationSession:self didUpdateDestination:v5];
}

- (void)removeWaypointAtIndex:(unint64_t)a3
{
  v5 = [(MNNavigationSession *)self routeManager];
  v6 = [v5 currentRoute];

  v7 = [v6 waypoints];
  v8 = [v7 count];

  if (v8 > a3)
  {
    v9 = [v6 waypoints];
    v10 = [v9 objectAtIndexedSubscript:a3];

    objc_initWeak(&location, self);
    locationTracker = self->_locationTracker;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__MNNavigationSession_removeWaypointAtIndex___block_invoke;
    v13[3] = &unk_1E8430100;
    objc_copyWeak(&v15, &location);
    v12 = v10;
    v14 = v12;
    [(MNLocationTracker *)locationTracker removeWaypointAtIndex:a3 completionHandler:v13];

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

- (void)insertWaypoint:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  locationTracker = self->_locationTracker;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__MNNavigationSession_insertWaypoint___block_invoke;
  v7[3] = &unk_1E8430100;
  objc_copyWeak(&v9, &location);
  v6 = v4;
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

- (void)rerouteWithWaypoints:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  locationTracker = self->_locationTracker;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__MNNavigationSession_rerouteWithWaypoints___block_invoke;
  v7[3] = &unk_1E8430100;
  objc_copyWeak(&v9, &location);
  v6 = v4;
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

- (void)stopNavigationSessionWithReason:(unint64_t)a3
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
  v6 = [MNNavigationServiceCallback_WillEndNavigation willEndNavigationWithReason:a3];
  [(GEOObserverHashTable *)observers navigationSession:self didSendNavigationServiceCallback:v6];

  if (a3 == 3 && ![(MNNavigationSessionState *)self->_navigationSessionState isOnLastLeg])
  {
    v7 = [(MNNavigationSessionState *)self->_navigationSessionState nextLeg];
    v8 = [v7 startRouteCoordinate];

    [(MNNavigationSession *)self _updateResumeRouteInfoFrom:v8];
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
  v13 = [MNNavigationServiceCallback_DidEndNavigation didEndNavigationWithReason:a3];
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

- (void)updateWithInitialLocation:(id)a3
{
  v13 = a3;
  v4 = +[MNLocationManager shared];
  if ([v4 locationProviderType] == 3)
  {
    v5 = v13 == 0;
  }

  else
  {
    v6 = [v4 locationProviderType];
    v5 = v13 == 0;
    if (v13 && v6 != 4)
    {
      [v4 pushLocation:v13];
      v5 = 0;
    }
  }

  if (!self->_locationTracker && (self->_navigationType & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [(MNNavigationSession *)self _startLocationTrackingWithInitialLocation:v13 targetLegIndex:[(MNNavigationSessionState *)self->_navigationSessionState targetLegIndex]];
  }

  if (v5 && self->_navigationType == 3)
  {
    v7 = [(MNLocationTracker *)self->_locationTracker lastMatchedLocation];

    if (v7)
    {
      guidanceManager = self->_guidanceManager;
      v9 = [(MNLocationTracker *)self->_locationTracker lastMatchedLocation];
      [(MNGuidanceManager *)guidanceManager updateGuidanceForLocation:v9 navigatorState:[(MNLocationTracker *)self->_locationTracker state]];
    }

    v10 = [(MNRouteManager *)self->_routeManager currentRouteInfo];

    if (v10)
    {
      timeAndDistanceUpdater = self->_timeAndDistanceUpdater;
      v12 = [(MNRouteManager *)self->_routeManager currentRouteInfo];
      [(MNTimeAndDistanceUpdater *)timeAndDistanceUpdater updateDisplayETAForRoute:v12 notificationType:2];
    }
  }
}

- (void)startNavigationSessionWithDetails:(id)a3
{
  v77 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v8 = [(MNRouteManager *)self->_routeManager currentRoute];
  if (v8)
  {
    v5 = v8;
    v9 = [v8 origin];
    if (!v9 || (v10 = v9, [v5 destination], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, !v11))
    {
      v12 = [v5 origin];
      if (!v12 || (v13 = v12, [v5 destination], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, !v14))
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

    v17 = [v5 destination];
    destination = self->_destination;
    self->_destination = v17;

    self->_navigationType = [v4 navigationType];
    v19 = [MEMORY[0x1E695DF70] array];
    navigationSessionStateListeners = self->_navigationSessionStateListeners;
    self->_navigationSessionStateListeners = v19;

    v21 = objc_alloc_init(MNNavigationSessionState);
    navigationSessionState = self->_navigationSessionState;
    self->_navigationSessionState = v21;

    [(MNNavigationSessionState *)self->_navigationSessionState setAuditToken:self->_auditToken];
    v23 = [v4 requestingAppIdentifier];
    [(MNNavigationSessionState *)self->_navigationSessionState setRequestingAppIdentifier:v23];

    v24 = [v4 traits];
    [(MNNavigationSessionState *)self->_navigationSessionState setTraits:v24];

    v25 = self->_navigationSessionState;
    v26 = [(MNRouteManager *)self->_routeManager currentRouteInfo];
    [(MNNavigationSessionState *)v25 updateCurrentRouteInfo:v26 rerouteReason:0];

    v27 = [v4 reconnectionDetails];

    if (v27)
    {
      v28 = [v4 reconnectionDetails];
      -[MNNavigationSessionState setInitialRouteSource:](self->_navigationSessionState, "setInitialRouteSource:", [v28 initialRouteSource]);

      v29 = [v4 reconnectionDetails];
      -[MNNavigationSessionState setTargetLegIndex:](self->_navigationSessionState, "setTargetLegIndex:", [v29 targetLegIndex]);
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
    v38 = [(MNNavigationTraceManager *)self->_traceManager traceRecorder];

    if (v38)
    {
      v39 = [MNTraceNavigationEventRecorder alloc];
      v40 = [(MNNavigationTraceManager *)self->_traceManager traceRecorder];
      v41 = [(MNTraceNavigationEventRecorder *)v39 initWithTraceRecorder:v40];
      navigationEventRecorder = self->_navigationEventRecorder;
      self->_navigationEventRecorder = v41;

      if (self->_navigationEventRecorder)
      {
        [(MNNavigationSession *)self registerObserver:?];
      }

      v43 = [MNTraceNavigationUpdateRecorder alloc];
      v44 = [(MNNavigationTraceManager *)self->_traceManager traceRecorder];
      v45 = [(MNTraceNavigationUpdateRecorder *)v43 initWithTraceRecorder:v44];
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
    v49 = [v5 origin];
    if ([v49 isCurrentLocation])
    {
    }

    else
    {
      v50 = [v4 simulationType];

      if (!v50)
      {
LABEL_31:
        if (self->_navigationType == 3)
        {
          v51 = objc_alloc_init(MNServerSessionStateInfo);
          serverSessionStateInfo = self->_serverSessionStateInfo;
          self->_serverSessionStateInfo = v51;

          [(MNServerSessionStateInfo *)self->_serverSessionStateInfo updateWithRoute:v5];
          v53 = [v4 reconnectionDetails];
          v54 = [v53 serverSessionState];

          if (v54)
          {
            v55 = self->_serverSessionStateInfo;
            v56 = [v4 reconnectionDetails];
            v57 = [v56 serverSessionState];
            [(MNServerSessionStateInfo *)v55 updateWithSessionState:v57];
          }

          self->_guidancePromptsEnabled = [v4 guidanceType] == 0;
          -[MNNavigationSession _startAudioSessionWithGuidanceLevelOverride:](self, "_startAudioSessionWithGuidanceLevelOverride:", [v4 guidanceLevelOverride]);
          [(MNNavigationSession *)self startArrivalInfoUpdates];
          [(MNNavigationSession *)self _startTravelTimeUpdates];
          [(MNNavigationSession *)self _startIdleTimerUpdates];
          [(MNNavigationSession *)self startTimedETAUpdates];
          v58 = [v4 isReconnecting];
          v59 = [v4 reconnectionDetails];
          v60 = [v59 spokenAnnouncements];
          [(MNNavigationSession *)self _startGuidanceAllowMidRouteStart:v58 announcementsToIgnore:v60];

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
        v66 = [(MNRouteManager *)self->_routeManager currentRouteInfo];
        -[GEOObserverHashTable navigationSession:didStartWithRoute:navigationType:isResumingMultipointRoute:isReconnecting:](observers, "navigationSession:didStartWithRoute:navigationType:isResumingMultipointRoute:isReconnecting:", self, v66, self->_navigationType, [v4 isResumingMultipointRoute], objc_msgSend(v4, "isReconnecting"));

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
  v3 = [(MNNavigationTraceManager *)self->_traceManager tracePlayer];

  if (v3)
  {
    v4 = [(MNNavigationTraceManager *)self->_traceManager tracePlayer];
    [v4 unregisterObserver:self];
  }

  [(MNNavigationSession *)self stopLocationUpdates];
  [(MNNavigationSession *)self _closeTileLoader];
  [(MNAudioManager *)self->_audioManager unregisterObserver:self];
  v5.receiver = self;
  v5.super_class = MNNavigationSession;
  [(MNNavigationSession *)&v5 dealloc];
}

- (MNNavigationSession)initWithRouteManager:(id)a3 auditToken:(id)a4 traceManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
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

    objc_storeStrong(&v12->_auditToken, a4);
    objc_storeStrong(&v12->_routeManager, a3);
    objc_storeStrong(&v12->_traceManager, a5);
    v12->_navigationType = 0;
    v12->_guidancePromptsEnabled = 1;
    v12->_isSpeakingTrafficIncidentAlert = 0;
    activeTrafficIncidentAlert = v12->_activeTrafficIncidentAlert;
    v12->_activeTrafficIncidentAlert = 0;

    v12->_displayedStepIndex = 0x7FFFFFFFFFFFFFFFLL;
    GEOConfigGetDouble();
    v12->_locationProjectionTime = v18;
    _GEOConfigAddDelegateListenerForKey();
    v19 = [v11 tracePlayer];

    if (v19)
    {
      v20 = [v11 tracePlayer];
      [v20 registerObserver:v12];
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

- (void)updateForLocation:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    navigationCapabilities = self->_navigationCapabilities;
    v7 = v4;
    v8 = v7;
    v9 = v7;
    if ((navigationCapabilities & 4) != 0)
    {
      v9 = v7;
      if (([v7 locationUnreliable] & 1) == 0)
      {
        v10 = [MEMORY[0x1E695DF00] date];
        v11 = [v8 timestamp];
        [v10 timeIntervalSinceDate:v11];
        v13 = v12;

        v9 = [v8 propagatedLocationForTimeInterval:-[MNLocationTracker shouldProjectAlongRoute](self->_locationTracker shouldProjectAlongRoute:{"shouldProjectAlongRoute"), self->_locationProjectionTime + fmin(v13, 1.0)}];

        v14 = [v8 stepIndex];
        if (v14 != [v9 stepIndex])
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
    v15 = [(MNRouteManager *)self->_routeManager currentRoute];
    v16 = [(MNNavigationSessionState *)self->_navigationSessionState location];
    v17 = [v16 stepIndex];

    v18 = [v8 stepIndex];
    if (v17 != v18)
    {
      v19 = v18;
      v20 = [v8 routeMatch];
      v21 = [v20 segmentIndex];

      [(GEOObserverHashTable *)self->_observers navigationSession:self matchedToStepIndex:v19 segmentIndex:v21];
      if (v19 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v22 = [v15 stepAtIndex:v19];
        v23 = [v22 firstNameOrBranch];

        [(GEOObserverHashTable *)self->_observers navigationSession:self didUpdateStepNameInfo:v23];
      }
    }

    if ([v8 state] == 1)
    {
      v24 = [(MNNavigationSessionState *)self->_navigationSessionState upcomingAnchorPointIndex];
      v25 = [v15 anchorPoints];
      v26 = [v8 routeMatch];
      v27 = [v25 nextAnchorPointIndexAfter:{objc_msgSend(v26, "routeCoordinate")}];

      if (v24 != v27)
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
    v29 = [v8 routeMatch];
    v30 = [v29 route];
    v31 = [(MNNavigationSession *)self routeManager];
    v32 = [v31 currentRoute];

    if (v30 == v32)
    {
      guidanceManager = self->_guidanceManager;
      v34 = [(MNNavigationSession *)self locationTracker];
      -[MNGuidanceManager updateGuidanceForLocation:navigatorState:](guidanceManager, "updateGuidanceForLocation:navigatorState:", v8, [v34 state]);
    }

    [(GEOObserverHashTable *)self->_observers navigationSessionDidFinishLocationUpdate:self];
  }

  v35 = *MEMORY[0x1E69E9840];
}

@end