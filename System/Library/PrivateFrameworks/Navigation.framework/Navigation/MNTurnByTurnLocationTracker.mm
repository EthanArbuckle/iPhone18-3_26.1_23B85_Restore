@interface MNTurnByTurnLocationTracker
- (BOOL)_allowRerouteForLocation:(id)a3 outError:(id *)a4;
- (BOOL)_isLocation:(id)a3 nearOrigin:(id)a4;
- (BOOL)_isRoadFeatureInOppositeDirection:(id)a3 ofCoordinate:(id)a4 course:(double)a5;
- (BOOL)_shouldAdvanceGuidanceToRouteMatch:(id)a3;
- (BOOL)_tryOnlineOfflineSwitchingWithRequestParameters:(id)a3 rerouteReason:(unint64_t)a4 error:(id)a5 errorHandler:(id)a6;
- (BOOL)hasArrivedAtFinalDestination;
- (MNTurnByTurnLocationTracker)initWithNavigationSession:(id)a3;
- (id)_matchedLocationForLocation:(id)a3;
- (id)_matchedLocationForMatchResult:(id)a3 originalLocation:(id)a4;
- (id)_newMapMatcherForRoute:(id)a3;
- (id)_routeAttributesFromRouteCoordinate:(PolylineCoordinate)a3;
- (id)_trafficIncidentAlertUpdater;
- (id)captureStatePlistWithHints:(os_state_hints_s *)a3;
- (id)initForTestingWithRoute:(id)a3;
- (int)_routeHintTypeForTransportType:(int)a3;
- (unint64_t)_modifiedStepIndexForMatchResult:(id)a3 matchType:(unint64_t)a4;
- (unint64_t)_offRouteRequestType;
- (void)_addDebugIncidentAlertToResponseInfo:(id)a3;
- (void)_cancelPendingRerouteRequest;
- (void)_changeOfflineMode:(unsigned __int8)a3 reason:(unint64_t)a4 requestParameters:(id)a5 errorHandler:(id)a6;
- (void)_handleOffRouteForLocation:(id)a3;
- (void)_handleSuccessfulRerouteRequest:(id)a3 response:(id)a4 waypoints:(id)a5;
- (void)_handleWaypointRerouteForLocation:(id)a3;
- (void)_requestRerouteWithReason:(unint64_t)a3 requestHandler:(id)a4 completionHandler:(id)a5 errorHandler:(id)a6;
- (void)_requestRerouteWithReason:(unint64_t)a3 requestParameters:(id)a4 completionHandler:(id)a5 errorHandler:(id)a6;
- (void)_sendRouteHintForLocation:(id)a3;
- (void)_updateForArrivalAtLegIndex:(unint64_t)a3;
- (void)_updateForDepartureFromLegIndex:(unint64_t)a3 withReason:(unint64_t)a4;
- (void)_updateForNewRoute:(id)a3 rerouteReason:(unint64_t)a4 request:(id)a5 response:(id)a6;
- (void)_updateForNewTrafficIncidentAlerts:(id)a3;
- (void)_updateForNewTransportType:(id)a3 rerouteReason:(unint64_t)a4 request:(id)a5 response:(id)a6;
- (void)_updateForReroute:(id)a3 rerouteReason:(unint64_t)a4 request:(id)a5 response:(id)a6;
- (void)_updateStateForLocation:(id)a3;
- (void)_updateSwitchTransportTypeForLocation:(id)a3;
- (void)advanceToNextLeg;
- (void)arrivalUpdater:(id)a3 didArriveAtEndOfLegIndex:(unint64_t)a4;
- (void)arrivalUpdater:(id)a3 didDepartFromLegIndex:(unint64_t)a4 withReason:(unint64_t)a5;
- (void)arrivalUpdater:(id)a3 didEnterPreArrivalStateForLegIndex:(unint64_t)a4;
- (void)arrivalUpdater:(id)a3 didTimeoutAtLegIndex:(unint64_t)a4 withReason:(unint64_t)a5;
- (void)arrivalUpdater:(id)a3 isApproachingEndOfLeg:(unint64_t)a4;
- (void)arrivalUpdater:(id)a3 shouldShowChargingInfoForWaypoint:(id)a4;
- (void)changeOfflineMode:(unsigned __int8)a3;
- (void)dealloc;
- (void)forceOnRoute:(id)a3 atLocation:(id)a4;
- (void)forceRerouteWithReason:(unint64_t)a3;
- (void)insertWaypoint:(id)a3 completionHandler:(id)a4;
- (void)offlineCoordinatorDidDetectOnline:(id)a3;
- (void)removeWaypointAtIndex:(unint64_t)a3 completionHandler:(id)a4;
- (void)reroute:(id)a3 reason:(unint64_t)a4;
- (void)rerouteWithWaypoints:(id)a3 completionHandler:(id)a4;
- (void)setNavigationSessionState:(id)a3;
- (void)startTrackingWithInitialLocation:(id)a3 targetLegIndex:(unint64_t)a4;
- (void)stopTracking;
- (void)switchToDestinationRoute;
- (void)traceJumpedInTime;
- (void)trafficIncidentAlertUpdater:(id)a3 didDismissAlert:(id)a4 withReroute:(BOOL)a5;
- (void)trafficIncidentAlertUpdater:(id)a3 didSwitchToNewRoute:(id)a4 forAlert:(id)a5;
- (void)trafficIncidentAlertUpdater:(id)a3 invalidatedAlert:(id)a4;
- (void)trafficIncidentAlertUpdater:(id)a3 receivedAlert:(id)a4 responseCallback:(id)a5;
- (void)trafficIncidentAlertUpdater:(id)a3 updatedAlert:(id)a4;
- (void)updateDestination:(id)a3 completionHandler:(id)a4;
- (void)updateForETAUResponse:(id)a3;
- (void)updateForETAUpdateResponse:(id)a3;
- (void)updateLocation:(id)a3;
- (void)updateRequestForETAUpdate:(id)a3;
@end

@implementation MNTurnByTurnLocationTracker

- (BOOL)hasArrivedAtFinalDestination
{
  v10.receiver = self;
  v10.super_class = MNTurnByTurnLocationTracker;
  if (![(MNLocationTracker *)&v10 hasArrived])
  {
    return 0;
  }

  lastArrivalLegIndex = self->_lastArrivalLegIndex;
  v4 = [(MNLocationTracker *)self navigationSession];
  v5 = [v4 routeManager];
  v6 = [v5 currentRoute];
  v7 = [v6 legs];
  v8 = lastArrivalLegIndex >= [v7 count] - 1;

  return v8;
}

- (id)captureStatePlistWithHints:(os_state_hints_s *)a3
{
  v42[6] = *MEMORY[0x1E69E9840];
  v4 = [(MNLocationTracker *)self lastMatchedLocation];
  v5 = MEMORY[0x1E695DF90];
  v41[0] = @"isGoodMatch";
  v6 = MEMORY[0x1E696AD98];
  v37 = [v4 routeMatch];
  v34 = [v6 numberWithBool:{objc_msgSend(v37, "isGoodMatch")}];
  v42[0] = v34;
  v41[1] = @"routeCoordinate";
  v36 = [v4 routeMatch];
  [v36 routeCoordinate];
  v35 = GEOPolylineCoordinateAsFullString();
  v42[1] = v35;
  v41[2] = @"locationCoordinate";
  v7 = MEMORY[0x1E696AEC0];
  [v4 coordinate];
  v9 = v8;
  [v4 coordinate];
  v11 = [v7 stringWithFormat:@"%f, %f", v9, v10];
  v42[2] = v11;
  v41[3] = @"course";
  v12 = MEMORY[0x1E696AD98];
  [v4 course];
  v13 = [v12 numberWithDouble:?];
  v42[3] = v13;
  v41[4] = @"stepIndex";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "stepIndex")}];
  v42[4] = v14;
  v41[5] = @"distanceFromRoute";
  v15 = MEMORY[0x1E696AD98];
  v16 = [v4 routeMatch];
  [v16 distanceFromRoute];
  v17 = [v15 numberWithDouble:?];
  v42[5] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:6];
  v38 = [v5 dictionaryWithDictionary:v18];

  [v4 altitude];
  if (v19 != 1.79769313e308)
  {
    v20 = MEMORY[0x1E696AD98];
    [v4 altitude];
    v21 = [v20 numberWithDouble:?];
    [v38 setObject:v21 forKeyedSubscript:@"altitude"];
  }

  v39[0] = @"navigationState";
  v22 = [MEMORY[0x1E696AD98] numberWithInt:{-[MNLocationTracker state](self, "state")}];
  v40[0] = v22;
  v39[1] = @"targetLegIndex";
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MNLocationTracker targetLegIndex](self, "targetLegIndex")}];
  v40[1] = v23;
  v39[2] = @"mapMatcher.targetLegIndex";
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[GEONavigationMapMatcher targetLegIndex](self->_mapMatcher, "targetLegIndex")}];
  v40[2] = v24;
  v39[3] = @"lastArrivalLegIndex";
  lastArrivalLegIndex = self->_lastArrivalLegIndex;
  if (lastArrivalLegIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = &unk_1F4EE2500;
  }

  else
  {
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_lastArrivalLegIndex];
  }

  v40[3] = v26;
  v40[4] = v38;
  v39[4] = @"lastLocation";
  v39[5] = @"sessionState";
  v27 = [(MNLocationTracker *)self navigationSession];
  v28 = [v27 serverSessionStateInfo];
  v29 = v28;
  v30 = @"(none)";
  if (v28)
  {
    v30 = v28;
  }

  v40[5] = v30;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:6];

  if (lastArrivalLegIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
  }

  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

- (void)trafficIncidentAlertUpdater:(id)a3 didSwitchToNewRoute:(id)a4 forAlert:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 uniqueRouteID];
    v11 = [v7 name];
    *buf = 138412547;
    v25 = v10;
    v26 = 2113;
    v27 = v11;
    _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_DEFAULT, "Switching to new route because of Dodgeball alert. New route: %@, %{private}@", buf, 0x16u);
  }

  v12 = [[MNActiveRouteInfo alloc] initWithRoute:v7];
  if ([v8 alertType] == 1)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  [(MNTurnByTurnLocationTracker *)self reroute:v12 reason:v13];
  v14 = [v8 alertType];
  if (v14 <= 7 && ((1 << v14) & 0x9A) != 0)
  {
    if ([v8 alertType] == 1 || objc_msgSend(v8, "alertType") == 7)
    {
      v15 = [v8 originalRoute];
    }

    else
    {
      v15 = [v8 alternateRoute];
    }

    v16 = v15;
    if (v15)
    {
      v17 = [[MNActiveRouteInfo alloc] initWithRoute:v15];
      v23 = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    }

    else
    {
      v18 = 0;
    }

    v19 = [(MNLocationTracker *)self navigationSession];
    v20 = [v19 routeManager];
    v21 = [v20 currentRouteInfo];
    [(MNTurnByTurnLocationTracker *)self _updateForSelectedNewRoute:v21 alternateRoutes:v18];
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)trafficIncidentAlertUpdater:(id)a3 updatedAlert:(id)a4
{
  v6 = a4;
  v5 = [(MNLocationTracker *)self delegate];
  [v5 locationTracker:self updatedTrafficIncidentAlert:v6];
}

- (void)trafficIncidentAlertUpdater:(id)a3 didDismissAlert:(id)a4 withReroute:(BOOL)a5
{
  v5 = a5;
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [v7 alertType];
  if ((v8 - 3) >= 2)
  {
    if (v8 == 1)
    {
      v9 = [(MNLocationTracker *)self navigationSession];
      v10 = [v9 routeManager];
      v11 = [v10 currentRouteInfo];
      [(MNTurnByTurnLocationTracker *)self _updateForSelectedNewRoute:v11 alternateRoutes:0];
    }
  }

  else
  {
    if (v5)
    {
      [v7 mainRouteInfo];
    }

    else
    {
      [v7 alternateRouteInfo];
    }
    v12 = ;
    v19[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v14 = [(MNLocationTracker *)self navigationSession];
    v15 = [v14 routeManager];
    v16 = [v15 currentRouteInfo];
    [(MNTurnByTurnLocationTracker *)self _updateForSelectedNewRoute:v16 alternateRoutes:v13];
  }

  v17 = [(MNLocationTracker *)self delegate];
  [v17 locationTracker:self dismissedTrafficIncidentAlert:v7];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)trafficIncidentAlertUpdater:(id)a3 invalidatedAlert:(id)a4
{
  v6 = a4;
  v5 = [(MNLocationTracker *)self delegate];
  [v5 locationTracker:self invalidatedTrafficIncidentAlert:v6];
}

- (void)trafficIncidentAlertUpdater:(id)a3 receivedAlert:(id)a4 responseCallback:(id)a5
{
  v9 = a4;
  v7 = a5;
  v8 = [(MNLocationTracker *)self delegate];
  [v8 locationTracker:self receivedTrafficIncidentAlert:v9 responseCallback:v7];
}

- (void)arrivalUpdater:(id)a3 shouldShowChargingInfoForWaypoint:(id)a4
{
  v6 = a4;
  v5 = [(MNLocationTracker *)self delegate];
  [v5 locationTracker:self shouldShowChargingInfoForWaypoint:v6];
}

- (void)arrivalUpdater:(id)a3 didTimeoutAtLegIndex:(unint64_t)a4 withReason:(unint64_t)a5
{
  v6 = a4;
  v15 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (a5 == 1)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 67109120;
      v14 = v6;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEFAULT, "Timed out waiting for departure from leg at index: %d", &v13, 8u);
    }

    v10 = [(MNLocationTracker *)self delegate];
    [v10 locationTracker:self didEndNavigatingWithReason:4];
    goto LABEL_9;
  }

  if (!a5)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 67109120;
      v14 = v6;
      _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_DEFAULT, "Timed out in arrival region based on server parameters at leg index: %d", &v13, 8u);
    }

    v10 = [(MNLocationTracker *)self delegate];
    [v10 locationTracker:self didEndNavigatingWithReason:7];
LABEL_9:
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)arrivalUpdater:(id)a3 didDepartFromLegIndex:(unint64_t)a4 withReason:(unint64_t)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (a5 - 1 > 5)
    {
      v9 = @"Unknown";
    }

    else
    {
      v9 = off_1E842BC00[a5 - 1];
    }

    v11[0] = 67109378;
    v11[1] = a4;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "Departure detected from leg: %d, reason: %@", v11, 0x12u);
  }

  [(MNTurnByTurnLocationTracker *)self _updateForDepartureFromLegIndex:a4 withReason:a5];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)arrivalUpdater:(id)a3 didEnterPreArrivalStateForLegIndex:(unint64_t)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v17[0] = 67109120;
    v17[1] = a4;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "Pre-arrival detected for leg: %d", v17, 8u);
  }

  v7 = [(MNLocationTracker *)self navigationSession];
  v8 = [v7 routeManager];
  v9 = [v8 currentRoute];

  v10 = [v9 legs];
  LODWORD(v7) = [v10 count] > a4;

  if (v7)
  {
    v11 = [v9 legs];
    v12 = [v11 objectAtIndexedSubscript:a4];
    v13 = [v12 destination];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(MNLocationTracker *)self delegate];
  [v14 locationTracker:self didEnterPreArrivalStateForWaypoint:v13 endOfLegIndex:a4];

  v15 = [(MNLocationTracker *)self delegate];
  [v15 locationTrackerDidEnterPreArrivalState:self];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)arrivalUpdater:(id)a3 didArriveAtEndOfLegIndex:(unint64_t)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109120;
    v13[1] = a4;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "Arrival detected for leg: %d", v13, 8u);
  }

  self->_lastArrivalLegIndex = a4;
  v7 = [(MNLocationTracker *)self navigationSession];
  v8 = [v7 routeManager];
  v9 = [v8 currentRoute];

  v10 = [v9 legs];
  LODWORD(v8) = [v10 count] - 1 > a4;

  if (v8)
  {
    v11 = 7;
  }

  else
  {
    v11 = 6;
  }

  [(MNLocationTracker *)self _setState:v11];
  [(MNTurnByTurnLocationTracker *)self _updateForArrivalAtLegIndex:a4];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)arrivalUpdater:(id)a3 isApproachingEndOfLeg:(unint64_t)a4
{
  v6 = [(MNLocationTracker *)self delegate];
  [v6 locationTracker:self isApproachingEndOfLeg:a4];
}

- (void)forceOnRoute:(id)a3 atLocation:(id)a4
{
  v9 = a3;
  v6 = a4;
  [(GEONavigationMapMatcher *)self->_mapMatcher setRoute:0];
  v7 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithCLLocation:v6];
  v8 = [(GEONavigationMapMatcher *)self->_mapMatcher updateForReroute:v9 location:v7 routeStartsFromLocation:0];
}

- (void)_addDebugIncidentAlertToResponseInfo:(id)a3
{
  v21 = a3;
  Integer = GEOConfigGetInteger();
  if (Integer)
  {
    v5 = [(MNLocationTracker *)self navigationSessionState];
    v6 = [v5 currentRouteInfo];

    v7 = [v21 response];
    v8 = [v7 status];

    if (v8)
    {
      v9 = [v6 route];
      v10 = [v9 geoETAWaypointRoute];

      if (v10)
      {
        v11 = [v21 response];
        [v11 setWaypointRoute:v10];
      }
    }

    v12 = [(MNLocationTracker *)self lastMatchedLocation];
    v13 = [v12 routeMatch];

    if (v13)
    {
      v14 = [v6 route];
      [v14 distanceToEndFromRouteCoordinate:{objc_msgSend(v13, "routeCoordinate")}];
      v16 = v15;

      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = [v21 response];
    v19 = [v21 alternateRoutes];
    v20 = [v19 firstObject];
    [v18 addFakeTrafficIncidentAlert:Integer mainRouteInfo:v6 alternateRouteInfo:v20 currentDistance:v17];
  }
}

- (void)_updateForNewTrafficIncidentAlerts:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_trafficIncidentAlertUpdater)
  {
    v5 = objc_alloc_init(MNTrafficIncidentAlertUpdater);
    trafficIncidentAlertUpdater = self->_trafficIncidentAlertUpdater;
    self->_trafficIncidentAlertUpdater = v5;

    [(MNTrafficIncidentAlertUpdater *)self->_trafficIncidentAlertUpdater setDelegate:self];
  }

  v7 = *MEMORY[0x1E69A1998];
  v8 = *(MEMORY[0x1E69A1998] + 8);
  BOOL = GEOConfigGetBOOL();
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = [*(*(&v19 + 1) + 8 * v13) triggerRange];
        v15 = v14 != 0;

        BOOL = BOOL & v15;
        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  [(MNTrafficIncidentAlertUpdater *)self->_trafficIncidentAlertUpdater setUseTriggerPointRangeBannerQueuing:BOOL];
  v16 = self->_trafficIncidentAlertUpdater;
  v17 = [(MNLocationTracker *)self lastMatchedLocation];
  [(MNTrafficIncidentAlertUpdater *)v16 updateForAlertsFromResponse:v10 updatedLocation:v17];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_updateForDepartureFromLegIndex:(unint64_t)a3 withReason:(unint64_t)a4
{
  [(MNTurnByTurnLocationTracker *)self _cancelPendingRerouteRequest];
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    a3 = [(MNLocationTracker *)self targetLegIndex];
  }

  v8 = [(MNLocationTracker *)self navigationSession];
  v9 = [v8 routeManager];
  v18 = [v9 currentRoute];

  v10 = [v18 legs];
  v11 = [v10 count];

  if (a3 >= v11)
  {
    v13 = 0;
  }

  else
  {
    v12 = [v18 legs];
    v4 = [v12 objectAtIndexedSubscript:a3];
    v13 = [v4 destination];
  }

  if (a4 == 6)
  {
    [(MNLocationTracker *)self _setTargetLegIndex:0];
  }

  else
  {
    v14 = [v18 legs];
    v15 = [v14 count] - 1;
    if (a3 + 1 >= v15)
    {
      v4 = [v18 legs];
      v16 = [v4 count] - 1;
    }

    else
    {
      v16 = a3 + 1;
    }

    [(MNLocationTracker *)self _setTargetLegIndex:v16];
    if (a3 + 1 >= v15)
    {
    }
  }

  [(GEONavigationMapMatcher *)self->_mapMatcher setTargetLegIndex:[(MNLocationTracker *)self targetLegIndex]];
  [(MNLocationTracker *)self _setState:1];
  self->_lastArrivalLegIndex = 0x7FFFFFFFFFFFFFFFLL;
  v17 = [(MNLocationTracker *)self delegate];
  [v17 locationTracker:self didResumeNavigatingFromWaypoint:v13 endOfLegIndex:a3 reason:a4];
}

- (void)_updateForArrivalAtLegIndex:(unint64_t)a3
{
  [(MNTurnByTurnLocationTracker *)self _cancelPendingRerouteRequest];
  [(MNTurnByTurnLocationTracker *)self _sendRouteHintForLocation:0];
  v5 = [(MNLocationTracker *)self navigationSession];
  v6 = [v5 routeManager];
  v14 = [v6 currentRoute];

  v7 = [v14 legs];
  v8 = [v7 count];

  if (v8 <= a3)
  {
    v10 = 0;
  }

  else
  {
    v9 = [v14 legs];
    v10 = [v9 objectAtIndexedSubscript:a3];
  }

  v11 = [(MNLocationTracker *)self delegate];
  v12 = [v10 destination];
  [v11 locationTracker:self didArriveAtWaypoint:v12 endOfLegIndex:a3];

  v13 = [(MNLocationTracker *)self delegate];
  [v13 locationTrackerDidArrive:self];
}

- (void)_updateForNewTransportType:(id)a3 rerouteReason:(unint64_t)a4 request:(id)a5 response:(id)a6
{
  v13 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [(MNLocationTracker *)self delegate];
  [v12 locationTracker:self didSwitchToNewTransportTypeWithRoute:v13 rerouteReason:a4 request:v10 response:v11];
}

- (void)_updateForReroute:(id)a3 rerouteReason:(unint64_t)a4 request:(id)a5 response:(id)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v10 route];
  v14 = [v13 transportType];
  v15 = [(MNLocationTracker *)self transportType];

  if (v14 != v15)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected transport type change when calling _updateForReroute:"];
    v19 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = 136316162;
      v21 = "[MNTurnByTurnLocationTracker _updateForReroute:rerouteReason:request:response:]";
      v22 = 2080;
      v23 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Location/LocationTracking/MNTurnByTurnLocationTracker.mm";
      v24 = 1024;
      v25 = 1696;
      v26 = 2080;
      v27 = "routeInfo.route.transportType == self.transportType";
      v28 = 2112;
      v29 = v18;
      _os_log_impl(&dword_1D311E000, v19, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v20, 0x30u);
    }
  }

  v16 = [(MNLocationTracker *)self delegate];
  [v16 locationTracker:self didReroute:v10 newAlternateRoutes:0 rerouteReason:a4 request:v11 response:v12];

  v17 = *MEMORY[0x1E69E9840];
}

- (id)_trafficIncidentAlertUpdater
{
  trafficIncidentAlertUpdater = self->_trafficIncidentAlertUpdater;
  if (!trafficIncidentAlertUpdater)
  {
    v4 = objc_opt_new();
    v5 = self->_trafficIncidentAlertUpdater;
    self->_trafficIncidentAlertUpdater = v4;

    [(MNTrafficIncidentAlertUpdater *)self->_trafficIncidentAlertUpdater setDelegate:self];
    trafficIncidentAlertUpdater = self->_trafficIncidentAlertUpdater;
  }

  return trafficIncidentAlertUpdater;
}

- (id)_newMapMatcherForRoute:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromSelector(a2);
    v9 = 136316162;
    v10 = "[MNTurnByTurnLocationTracker _newMapMatcherForRoute:]";
    v11 = 2080;
    v12 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Location/LocationTracking/MNTurnByTurnLocationTracker.mm";
    v13 = 1024;
    v14 = 1672;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: %@ must implement '%@'", &v9, 0x30u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)traceJumpedInTime
{
  lastKnownGoodLocationOnRoute = self->_lastKnownGoodLocationOnRoute;
  self->_lastKnownGoodLocationOnRoute = 0;

  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEBUG, "last known good location on route set to nil", v4, 2u);
  }
}

- (id)_matchedLocationForLocation:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MNGetPuckTrackingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 uuid];
    v27 = 138412290;
    v28 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "[MN] [%@] - Processing - in MNTurnByTurnLocationTracker::_matchedLocationForLocation:", &v27, 0xCu);
  }

  v7 = MNGetMNLocationTrackerLog();
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(v27) = 0;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "MatchedTBTLocationForLocation", "", &v27, 2u);
  }

  if ([v4 type] != 6)
  {
    goto LABEL_15;
  }

  v11 = [(MNLocationTracker *)self lastMatchedLocation];
  if (!v11)
  {
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_1D311E000, v17, OS_LOG_TYPE_DEFAULT, "Incoming cell location | No previous good location", &v27, 2u);
    }

    goto LABEL_14;
  }

  v12 = [v4 timestamp];
  v13 = [v11 timestamp];
  [v12 timeIntervalSinceDate:v13];
  v15 = v14;

  GEOConfigGetDouble();
  if (v15 >= v16)
  {
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [MEMORY[0x1E6985C40] _navigation_stringWithType:{objc_msgSend(v11, "type")}];
      v27 = 138412546;
      v28 = v18;
      v29 = 2048;
      v30 = v15;
      _os_log_impl(&dword_1D311E000, v17, OS_LOG_TYPE_DEFAULT, "Incoming cell location | Previous location: %@, %0.1fs", &v27, 0x16u);
    }

LABEL_14:
LABEL_15:
    v19 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithCLLocation:v4];
    v11 = [(MNTurnByTurnLocationTracker *)self _overrideLocationForLocation:v19];

    v20 = [(GEONavigationMapMatcher *)self->_mapMatcher matchLocation:v11 transportType:[(MNLocationTracker *)self transportType]];
    v21 = [(MNTurnByTurnLocationTracker *)self _matchedLocationForMatchResult:v20 originalLocation:v4];
    v22 = v10;
    v23 = v22;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      LOWORD(v27) = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v23, OS_SIGNPOST_INTERVAL_END, v8, "MatchedTBTLocationForLocation", "", &v27, 2u);
    }

    goto LABEL_21;
  }

  v23 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [MEMORY[0x1E6985C40] _navigation_stringWithType:{objc_msgSend(v11, "type")}];
    v27 = 138412546;
    v28 = v24;
    v29 = 2048;
    v30 = v15;
    _os_log_impl(&dword_1D311E000, v23, OS_LOG_TYPE_DEFAULT, "Ignoring cell location | Previous location: %@, %0.1fs", &v27, 0x16u);
  }

  v21 = 0;
  v20 = v23;
LABEL_21:

  v25 = *MEMORY[0x1E69E9840];

  return v21;
}

- (void)updateLocation:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = MNTurnByTurnLocationTracker;
  [(MNLocationTracker *)&v6 updateLocation:v4];
  v5 = [(MNLocationTracker *)self lastMatchedLocation];
  if ([(MNTurnByTurnLocationTracker *)self hasArrivedAtFinalDestination])
  {
    [(MNArrivalUpdater *)self->_arrivalUpdater updateForLocation:v5];
  }

  else if (v5 == v4)
  {
    [(MNTurnByTurnLocationTracker *)self _updateStateForLocation:v5];
    [(MNArrivalUpdater *)self->_arrivalUpdater updateForLocation:v5];
    if ([(MNLocationTracker *)self state]== 2)
    {
      if (self->_pendingRequest && self->_rerouteReason == 1)
      {
        [(MNTurnByTurnLocationTracker *)self _cancelPendingRerouteRequest];
      }

      else
      {
        [(MNTurnByTurnLocationTracker *)self _handleWaypointRerouteForLocation:v5];
      }
    }

    else if ([(MNLocationTracker *)self state]== 4)
    {
      [(MNTurnByTurnLocationTracker *)self _handleOffRouteForLocation:v5];
    }

    [(MNTurnByTurnLocationTracker *)self _updateSwitchTransportTypeForLocation:v5];
    [(MNTrafficIncidentAlertUpdater *)self->_trafficIncidentAlertUpdater updateForLocation:v4];
    [(MNTurnByTurnLocationTracker *)self _updateForLocation:v5];
    if (![(MNLocationTracker *)self hasArrived])
    {
      [(MNTurnByTurnLocationTracker *)self _sendRouteHintForLocation:v5];
    }
  }
}

- (void)stopTracking
{
  [(MNLocationTracker *)self _setState:0];
  [(MNOfflineCoordinator *)self->_offlineCoordinator setDelegate:0];
  [(MNOfflineCoordinator *)self->_offlineCoordinator stop];
  offlineCoordinator = self->_offlineCoordinator;
  self->_offlineCoordinator = 0;

  [(MNTrafficIncidentAlertUpdater *)self->_trafficIncidentAlertUpdater clearAlerts];
  [(MNTrafficIncidentAlertUpdater *)self->_trafficIncidentAlertUpdater setDelegate:0];
  trafficIncidentAlertUpdater = self->_trafficIncidentAlertUpdater;
  self->_trafficIncidentAlertUpdater = 0;

  [(MNArrivalUpdater *)self->_arrivalUpdater setDelegate:0];
  arrivalUpdater = self->_arrivalUpdater;
  self->_arrivalUpdater = 0;

  [(GEODirectionsServiceRequest *)self->_pendingRequest cancel];
  rerouteDates = self->_rerouteDates;
  self->_rerouteDates = 0;

  previousRerouteLocation = self->_previousRerouteLocation;
  self->_previousRerouteLocation = 0;

  [(MNTurnByTurnLocationTracker *)self _sendRouteHintForLocation:0];
}

- (void)startTrackingWithInitialLocation:(id)a3 targetLegIndex:(unint64_t)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v37.receiver = self;
  v37.super_class = MNTurnByTurnLocationTracker;
  [(MNLocationTracker *)&v37 startTrackingWithInitialLocation:v6 targetLegIndex:a4];
  v7 = [(MNLocationTracker *)self navigationSession];
  v8 = [v7 routeManager];
  v9 = [v8 currentRoute];

  v10 = +[MNTimeManager currentDate];
  startDate = self->_startDate;
  self->_startDate = v10;

  v12 = [v9 origin];
  v13 = [v12 latLng];
  [v13 coordinate];
  self->_originCoordinate.latitude = v14;
  self->_originCoordinate.longitude = v15;

  v16 = objc_alloc_init(MNArrivalUpdater);
  arrivalUpdater = self->_arrivalUpdater;
  self->_arrivalUpdater = v16;

  [(MNArrivalUpdater *)self->_arrivalUpdater setDelegate:self];
  v18 = [(MNLocationTracker *)self navigationSessionState];
  [(MNArrivalUpdater *)self->_arrivalUpdater setNavigationSessionState:v18];

  [(MNArrivalUpdater *)self->_arrivalUpdater start];
  self->_lastArrivalLegIndex = 0x7FFFFFFFFFFFFFFFLL;
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    a4 = 0;
  }

  v19 = [v9 uniqueRouteID];
  v20 = [v6 routeID];
  v21 = [v19 isEqual:v20];

  if (v21 && [v6 state] == 1)
  {
    v22 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v6 routeMatch];
      [v23 routeCoordinate];
      v24 = GEOPolylineCoordinateAsShortString();
      *buf = 138412546;
      v39 = v24;
      v40 = 1024;
      v41 = a4;
      _os_log_impl(&dword_1D311E000, v22, OS_LOG_TYPE_DEFAULT, "Starting location tracking with a route matched location at [%@], targetLegIndex: %d", buf, 0x12u);
    }

    v25 = 2;
    v26 = v22;
  }

  else
  {
    v27 = [v9 legs];
    v26 = [v27 objectAtIndexedSubscript:a4];

    v28 = [v26 origin];
    v29 = [(MNTurnByTurnLocationTracker *)self _isLocation:v6 nearOrigin:v28];

    if (v29)
    {
      v22 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v39) = a4;
        _os_log_impl(&dword_1D311E000, v22, OS_LOG_TYPE_DEFAULT, "Starting location tracking from PROCEEDING_TO_ROUTE. targetLegIndex: %d", buf, 8u);
      }

      v25 = 1;
    }

    else
    {
      v22 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v39) = a4;
        _os_log_impl(&dword_1D311E000, v22, OS_LOG_TYPE_DEFAULT, "Starting location tracking from OFF_ROUTE_OFF_ROAD state. targetLegIndex: %d", buf, 8u);
      }

      v25 = 3;
    }
  }

  [(MNLocationTracker *)self _setState:v25];
  [(MNLocationTracker *)self _setTargetLegIndex:a4];
  [(GEONavigationMapMatcher *)self->_mapMatcher setTargetLegIndex:a4];
  if (([(MNLocationTracker *)self navigationCapabilities]& 0x10) != 0)
  {
    v31 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v31, OS_LOG_TYPE_DEFAULT, "Starting offline coordinator.", buf, 2u);
    }

    v32 = [_TtC10Navigation20MNOfflineCoordinator alloc];
    v33 = [(MNLocationTracker *)self navigationSessionState];
    v34 = [(MNOfflineCoordinator *)v32 initWithNavigationSessionState:v33];
    offlineCoordinator = self->_offlineCoordinator;
    self->_offlineCoordinator = v34;

    [(MNOfflineCoordinator *)self->_offlineCoordinator setDelegate:self];
    [(MNOfflineCoordinator *)self->_offlineCoordinator start];
  }

  else
  {
    v30 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v30, OS_LOG_TYPE_DEFAULT, "Not starting offline coordinator because navigation capability is disabled.", buf, 2u);
    }
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (void)setNavigationSessionState:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = MNTurnByTurnLocationTracker;
  [(MNLocationTracker *)&v6 setNavigationSessionState:v4];
  [(MNArrivalUpdater *)self->_arrivalUpdater setNavigationSessionState:v4];
  v5 = [(MNLocationTracker *)self navigationSessionState];
  [(MNOfflineCoordinator *)self->_offlineCoordinator setNavigationSessionState:v5];
}

- (BOOL)_allowRerouteForLocation:(id)a3 outError:(id *)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 timestamp];

  if (!v7)
  {
    LOBYTE(a4) = 1;
    goto LABEL_22;
  }

  v8 = *MEMORY[0x1E69A19C8];
  v9 = *(MEMORY[0x1E69A19C8] + 8);
  GEOConfigGetDouble();
  v11 = v10;
  [v6 coordinate];
  latitude = self->_originCoordinate.latitude;
  longitude = self->_originCoordinate.longitude;
  GEOCalculateDistance();
  v15 = v14;
  if (v14 < v11)
  {
    v16 = MNGetMNLocationTrackerLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v48 = v15;
      _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_DEFAULT, "Suppressing reroute because current location is too close to origin (%0.1f meters)", buf, 0xCu);
    }

    goto LABEL_21;
  }

  if (![(NSMutableArray *)self->_rerouteDates count])
  {
    goto LABEL_11;
  }

  GEOConfigGetDouble();
  v18 = v17;
  [v6 coordinate];
  [(MNLocation *)self->_previousRerouteLocation coordinate];
  GEOCalculateDistance();
  if (v19 < v18)
  {
    if (a4)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Suppressing reroute because the current location is too close to the previous reroute location (%0.1f meters)", *&v19];
      v20 = MEMORY[0x1E696ABC0];
      v45 = *MEMORY[0x1E696A278];
      v46 = v16;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      *a4 = [v20 _navigation_errorWithCode:14 userInfo:v21];

LABEL_21:
      LOBYTE(a4) = 0;
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  GEOConfigGetDouble();
  v23 = v22;
  v24 = [v6 timestamp];
  v25 = [(NSMutableArray *)self->_rerouteDates lastObject];
  [v24 timeIntervalSinceDate:v25];
  v27 = v26;

  if (v27 >= v23)
  {
LABEL_11:
    UInteger = GEOConfigGetUInteger();
    if (UInteger && [(NSMutableArray *)self->_rerouteDates count]>= UInteger && (![(MNArrivalUpdater *)self->_arrivalUpdater isInPreArrivalRegion]|| GEOConfigGetBOOL()))
    {
      v29 = [(NSMutableArray *)self->_rerouteDates count];
      if (v29 - UInteger < [(NSMutableArray *)self->_rerouteDates count])
      {
        v16 = [(NSMutableArray *)self->_rerouteDates objectAtIndexedSubscript:?];
        v30 = [v6 timestamp];
        [v30 timeIntervalSinceDate:v16];
        v32 = v31;

        GEOConfigGetDouble();
        if (v32 < v33)
        {
          if (a4)
          {
            v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Throttling reroute because too many (%d) have been requested in a short interval (%0.1f seconds)", -[NSMutableArray count](self->_rerouteDates, "count"), *&v32];
            v39 = MEMORY[0x1E696ABC0];
            v41 = *MEMORY[0x1E696A278];
            v42 = v38;
            v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
            *a4 = [v39 _navigation_errorWithCode:15 userInfo:v40];
          }

          goto LABEL_21;
        }
      }
    }

    LOBYTE(a4) = [(MNTurnByTurnLocationTracker *)self _allowRerouteForLocation:v6];
    goto LABEL_22;
  }

  if (a4)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Suppressing reroute because the previous reroute is too recent (%0.1f seconds)", *&v27];
    v34 = MEMORY[0x1E696ABC0];
    v43 = *MEMORY[0x1E696A278];
    v44 = v16;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    *a4 = [v34 _navigation_errorWithCode:14 userInfo:v35];

    goto LABEL_21;
  }

LABEL_22:

  v36 = *MEMORY[0x1E69E9840];
  return a4;
}

- (void)_handleOffRouteForLocation:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_pendingRequest)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Attempting to reroute while another reroute is in progress"];
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v41 = "[MNTurnByTurnLocationTracker _handleOffRouteForLocation:]";
      v42 = 2080;
      v43 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Location/LocationTracking/MNTurnByTurnLocationTracker.mm";
      v44 = 1024;
      v45 = 1374;
      v46 = 2080;
      v47 = "NO";
      v48 = 2112;
      v49 = v6;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
    }
  }

  else if (-[MNArrivalUpdater isInPreArrivalRegion](self->_arrivalUpdater, "isInPreArrivalRegion") && ([v5 horizontalAccuracy], v10 = v9, GEOConfigGetDouble(), v10 >= v11))
  {
    v30 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      [v5 horizontalAccuracy];
      v32 = v31;
      GEOConfigGetDouble();
      *buf = 134218240;
      v41 = v32;
      v42 = 2048;
      v43 = v33;
      _os_log_impl(&dword_1D311E000, v30, OS_LOG_TYPE_DEFAULT, "Off route but not rerouting because location is in pre-arrival region and location accuracy (%gm) is worse than the required accuracy (%gm)", buf, 0x16u);
    }
  }

  else if (([(MNLocationTracker *)self navigationCapabilities]& 2) != 0)
  {
    v13 = [v5 timestamp];

    if (!v13)
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Location has no timestamp."];
      v35 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v41 = "[MNTurnByTurnLocationTracker _handleOffRouteForLocation:]";
        v42 = 2080;
        v43 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Location/LocationTracking/MNTurnByTurnLocationTracker.mm";
        v44 = 1024;
        v45 = 1389;
        v46 = 2080;
        v47 = "location.timestamp != nil";
        v48 = 2112;
        v49 = v34;
        _os_log_impl(&dword_1D311E000, v35, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
      }
    }

    v14 = [v5 timestamp];
    v15 = v14 == 0;

    if (!v15)
    {
      rerouteDates = self->_rerouteDates;
      if (!rerouteDates)
      {
        v17 = [MEMORY[0x1E695DF70] array];
        v18 = self->_rerouteDates;
        self->_rerouteDates = v17;

        rerouteDates = self->_rerouteDates;
      }

      v19 = [v5 timestamp];
      [(NSMutableArray *)rerouteDates addObject:v19];

      v20 = [(NSMutableArray *)self->_rerouteDates count];
      if (v20 > GEOConfigGetUInteger())
      {
        [(NSMutableArray *)self->_rerouteDates removeObjectAtIndex:0];
      }
    }

    objc_storeStrong(&self->_previousRerouteLocation, a3);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__MNTurnByTurnLocationTracker__handleOffRouteForLocation___block_invoke;
    aBlock[3] = &unk_1E842BAA8;
    aBlock[4] = self;
    v21 = _Block_copy(aBlock);
    v22 = [(MNLocationTracker *)self navigationSession];
    v23 = [v22 traceManager];
    v24 = [v23 tracePlayer];

    if (!v24)
    {
      goto LABEL_24;
    }

    if (!GEOConfigGetBOOL())
    {
      goto LABEL_24;
    }

    [v24 position];
    v26 = v25;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __58__MNTurnByTurnLocationTracker__handleOffRouteForLocation___block_invoke_95;
    v37[3] = &unk_1E842BAD0;
    v37[4] = self;
    v38 = v21;
    v27 = [v24 requestDirectionsNearTimestamp:v37 withHandler:v26];

    if (v27)
    {
      v28 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D311E000, v28, OS_LOG_TYPE_DEFAULT, "Rerouting using a response from the navtrace", buf, 2u);
      }

      self->_rerouteReason = 1;
      v29 = [(MNLocationTracker *)self delegate];
      [v29 locationTrackerWillReroute:self];
    }

    else
    {
LABEL_24:
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __58__MNTurnByTurnLocationTracker__handleOffRouteForLocation___block_invoke_96;
      v36[3] = &unk_1E842B8F8;
      v36[4] = self;
      [(MNTurnByTurnLocationTracker *)self _requestRerouteWithReason:1 requestHandler:v36 completionHandler:0 errorHandler:v21];
    }

    [(MNLocationTracker *)self _setState:5];
  }

  else
  {
    v12 = MNGetMNLocationTrackerLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_DEFAULT, "Rerouting navigation capability is not enabled (you're probably running a test).", buf, 2u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __58__MNTurnByTurnLocationTracker__handleOffRouteForLocation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 32) delegate];
    [v7 locationTracker:*(a1 + 32) didFailRerouteWithError:v6];
LABEL_7:

    goto LABEL_8;
  }

  if (([v5 isNavigable] & 1) == 0)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = GEOErrorDomain();
    v7 = [v8 errorWithDomain:v9 code:-403 userInfo:0];

    v10 = [*(a1 + 32) delegate];
    [v10 locationTracker:*(a1 + 32) didFailRerouteWithError:v7];

    [*(a1 + 32) _setState:8];
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "No longer inside a navigable area", v12, 2u);
    }

    goto LABEL_7;
  }

LABEL_8:
}

void __58__MNTurnByTurnLocationTracker__handleOffRouteForLocation___block_invoke_95(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v15 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v13 || [v12 status])
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [*(a1 + 32) _handleSuccessfulRerouteRequest:v11 response:v12 waypoints:v15];
  }
}

void __58__MNTurnByTurnLocationTracker__handleOffRouteForLocation___block_invoke_96(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setRequestType:{objc_msgSend(*(a1 + 32), "_offRouteRequestType")}];
}

- (void)_handleWaypointRerouteForLocation:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(MNLocationTracker *)self navigationSession];
  v7 = [v6 traceManager];
  v8 = [v7 tracePlayer];

  if (v8 && (GEOConfigGetBOOL() & 1) != 0)
  {
    [v8 position];
    v9 = [v8 guidanceEventNearTimestamp:?];
    if ([v9 eventType] == 16 || objc_msgSend(v9, "eventType") == 17)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __65__MNTurnByTurnLocationTracker__handleWaypointRerouteForLocation___block_invoke;
      aBlock[3] = &unk_1E842BAA8;
      aBlock[4] = self;
      v10 = _Block_copy(aBlock);
      [v8 position];
      v12 = v11;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __65__MNTurnByTurnLocationTracker__handleWaypointRerouteForLocation___block_invoke_86;
      v29[3] = &unk_1E842BAD0;
      v13 = v10;
      v29[4] = self;
      v30 = v13;
      if ([v8 requestDirectionsNearTimestamp:v29 withHandler:v12])
      {
        [(MNTurnByTurnLocationTracker *)self _cancelPendingRerouteRequest];
        v14 = [v5 timestamp];
        v15 = v14 == 0;

        if (v15)
        {
          v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Location has no timestamp."];
          v28 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v33 = "[MNTurnByTurnLocationTracker _handleWaypointRerouteForLocation:]";
            v34 = 2080;
            v35 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Location/LocationTracking/MNTurnByTurnLocationTracker.mm";
            v36 = 1024;
            v37 = 1331;
            v38 = 2080;
            v39 = "location.timestamp != nil";
            v40 = 2112;
            v41 = v27;
            _os_log_impl(&dword_1D311E000, v28, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
          }
        }

        v16 = [v5 timestamp];
        v17 = v16 == 0;

        if (!v17)
        {
          rerouteDates = self->_rerouteDates;
          if (!rerouteDates)
          {
            v19 = [MEMORY[0x1E695DF70] array];
            v20 = self->_rerouteDates;
            self->_rerouteDates = v19;

            rerouteDates = self->_rerouteDates;
          }

          v21 = [v5 timestamp];
          [(NSMutableArray *)rerouteDates addObject:v21];

          v22 = [(NSMutableArray *)self->_rerouteDates count];
          if (v22 > GEOConfigGetUInteger())
          {
            [(NSMutableArray *)self->_rerouteDates removeObjectAtIndex:0];
          }
        }

        objc_storeStrong(&self->_previousRerouteLocation, a3);
        v23 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1D311E000, v23, OS_LOG_TYPE_DEFAULT, "Rerouting using a response from the navtrace", buf, 2u);
        }

        v24 = [v9 eventType] - 15;
        if (v24 <= 2)
        {
          self->_rerouteReason = qword_1D328D498[v24];
        }

        v25 = [(MNLocationTracker *)self delegate];
        [v25 locationTrackerWillReroute:self];

        [(MNLocationTracker *)self _setState:5];
      }
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __65__MNTurnByTurnLocationTracker__handleWaypointRerouteForLocation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 32) delegate];
    [v7 locationTracker:*(a1 + 32) didFailRerouteWithError:v6];
LABEL_7:

    goto LABEL_8;
  }

  if (([v5 isNavigable] & 1) == 0)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = GEOErrorDomain();
    v7 = [v8 errorWithDomain:v9 code:-403 userInfo:0];

    v10 = [*(a1 + 32) delegate];
    [v10 locationTracker:*(a1 + 32) didFailRerouteWithError:v7];

    [*(a1 + 32) _setState:8];
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "No longer inside a navigable area", v12, 2u);
    }

    goto LABEL_7;
  }

LABEL_8:
}

void __65__MNTurnByTurnLocationTracker__handleWaypointRerouteForLocation___block_invoke_86(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v15 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v13 || [v12 status])
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [*(a1 + 32) _handleSuccessfulRerouteRequest:v11 response:v12 waypoints:v15];
  }
}

- (unint64_t)_offRouteRequestType
{
  v2 = [(MNLocationTracker *)self navigationSessionState];
  v3 = [v2 currentRouteInfo];
  v4 = [v3 route];
  v5 = [v4 source];

  if ((v5 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return 5;
  }

  else
  {
    return 4;
  }
}

- (void)_cancelPendingRerouteRequest
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_pendingRequest)
  {
    v3 = MNGetMNLocationTrackerLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = self->_rerouteReason - 1;
      if (v4 > 0xF)
      {
        v5 = @"Unknown";
      }

      else
      {
        v5 = off_1E842BB80[v4];
      }

      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "Cancelling pending reroute of type: %@", &v9, 0xCu);
    }

    [(GEODirectionsServiceRequest *)self->_pendingRequest cancel];
    pendingRequest = self->_pendingRequest;
    self->_pendingRequest = 0;

    v7 = [(MNLocationTracker *)self delegate];
    [v7 locationTrackerDidCancelReroute:self];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_updateForNewRoute:(id)a3 rerouteReason:(unint64_t)a4 request:(id)a5 response:(id)a6
{
  v77 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v67 = a5;
  v68 = a6;
  if (v10 && ([v10 route], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v69 = v10;
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      if (a4 - 1 > 0xF)
      {
        v13 = @"Unknown";
      }

      else
      {
        v13 = off_1E842BB80[a4 - 1];
      }

      *buf = 138412802;
      v72 = v13;
      v73 = 2112;
      v74 = v67;
      v75 = 2112;
      v76 = v68;
    }

    v14 = [(MNLocationTracker *)self navigationSession];
    v15 = [v14 routeManager];
    v69 = [v15 currentRouteInfo];

    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v72 = "[MNTurnByTurnLocationTracker _updateForNewRoute:rerouteReason:request:response:]";
      v73 = 2080;
      v74 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Location/LocationTracking/MNTurnByTurnLocationTracker.mm";
      v75 = 1024;
      LODWORD(v76) = 1174;
      _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", buf, 0x1Cu);
    }
  }

  v17 = [(MNLocationTracker *)self navigationSession];
  v18 = [v17 routeManager];
  v66 = [v18 currentRoute];

  v70 = [v69 route];
  lastKnownGoodLocationOnRoute = self->_lastKnownGoodLocationOnRoute;
  self->_lastKnownGoodLocationOnRoute = 0;

  if (a4 - 8 <= 2)
  {
    v20 = [(MNLocationTracker *)self arrivalInfo];
    v21 = [v20 arrivalState] == 0;

    if (!v21)
    {
      v22 = 5;
LABEL_24:
      [(MNArrivalUpdater *)self->_arrivalUpdater forceDepartureForCurrentLeg:v22];
LABEL_32:
      v23 = 1;
      goto LABEL_33;
    }
  }

  v23 = 1;
  if (a4 <= 10)
  {
    if (a4 == 1)
    {
      v24 = [(MNLocationTracker *)self targetLegIndex];
      v25 = [v66 legs];
      if (v24 >= [v25 count])
      {
        v28 = 0;
      }

      else
      {
        v26 = [v66 legs];
        v27 = [v26 objectAtIndexedSubscript:{-[MNLocationTracker targetLegIndex](self, "targetLegIndex")}];
        v28 = [v27 destination];
      }

      v29 = [v70 legs];
      v30 = [v29 firstObject];
      v31 = [v30 destination];

      v32 = [v28 uniqueWaypointID];
      v33 = [v31 uniqueWaypointID];
      v34 = v32;
      v35 = v33;
      if (v34 | v35)
      {
        v36 = v35;
        v37 = [v34 isEqual:v35];

        if ((v37 & 1) == 0)
        {
          [(MNArrivalUpdater *)self->_arrivalUpdater forceDepartureForCurrentLeg:4];
        }
      }

      goto LABEL_32;
    }

    if (a4 != 3)
    {
      goto LABEL_33;
    }

    goto LABEL_22;
  }

  switch(a4)
  {
    case 0xBuLL:
      goto LABEL_22;
    case 0xDuLL:
      v22 = 6;
      goto LABEL_24;
    case 0x10uLL:
LABEL_22:
      v23 = 0;
      break;
  }

LABEL_33:
  v38 = +[MNLocationManager shared];
  v39 = [v38 lastLocation];

  v40 = [MNLocation alloc];
  v41 = [v39 rawLocation];
  v42 = [(MNLocation *)v40 initWithRawLocation:v41];

  v43 = objc_alloc(MEMORY[0x1E69A1E70]);
  v44 = [v39 rawLocation];
  v45 = [v43 initWithCLLocation:v44];

  v46 = [(GEONavigationMapMatcher *)self->_mapMatcher updateForReroute:v70 location:v45 routeStartsFromLocation:v23];
  if ([v46 type])
  {
    [(MNLocationTracker *)self _setState:3];
LABEL_40:
    v51 = 0;
    goto LABEL_41;
  }

  [(MNLocationTracker *)self _setState:2];
  if (a4 != 11)
  {
    goto LABEL_40;
  }

  v47 = [v70 legs];
  v48 = [v47 count] > 1;

  if (!v48)
  {
    goto LABEL_40;
  }

  v49 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D311E000, v49, OS_LOG_TYPE_DEFAULT, "User selected an alternate multi-waypoint route. Attempting to guess target leg index from route match.", buf, 2u);
  }

  v50 = [v46 routeMatch];
  v51 = [v50 legIndex];

LABEL_41:
  [(MNLocationTracker *)self _setTargetLegIndex:v51];
  v52 = [(MNTurnByTurnLocationTracker *)self _matchedLocationForMatchResult:v46 originalLocation:v42];
  [(MNLocationTracker *)self _updateMatchedLocation:v52];
  v53 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    v54 = [v52 routeMatch];
    [v54 routeCoordinate];
    v55 = GEOPolylineCoordinateAsShortString();
    [v52 coordinate];
    v57 = v56;
    [v52 coordinate];
    *buf = 138412802;
    v72 = v55;
    v73 = 2048;
    v74 = v57;
    v75 = 2048;
    v76 = v58;
    _os_log_impl(&dword_1D311E000, v53, OS_LOG_TYPE_DEFAULT, "Handling reroute. Location on new route: [%@], %f, %f", buf, 0x20u);
  }

  v59 = objc_alloc(MEMORY[0x1E69A2330]);
  v60 = [(MNLocationTracker *)self _auditToken];
  v61 = [v59 initWithRoute:v70 auditToken:v60];
  pathMatcher = self->_pathMatcher;
  self->_pathMatcher = v61;

  trafficIncidentAlertUpdater = self->_trafficIncidentAlertUpdater;
  v64 = [v69 route];
  [(MNTrafficIncidentAlertUpdater *)trafficIncidentAlertUpdater updateForReroute:v64];

  LODWORD(v64) = [v70 transportType];
  if (v64 == [(MNLocationTracker *)self transportType])
  {
    [(MNTurnByTurnLocationTracker *)self _updateForReroute:v69 rerouteReason:a4 request:v67 response:v68];
  }

  else
  {
    [(MNTurnByTurnLocationTracker *)self _updateForNewTransportType:v69 rerouteReason:a4 request:v67 response:v68];
  }

  v65 = *MEMORY[0x1E69E9840];
}

- (void)_handleSuccessfulRerouteRequest:(id)a3 response:(id)a4 waypoints:(id)a5
{
  v20 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MNLocationTracker *)self navigationSessionState];
  v11 = [v10 currentRouteInfo];
  v12 = [v11 route];

  v13 = objc_alloc(MEMORY[0x1E69A2538]);
  v14 = [(MNLocationTracker *)self navigationSession];
  v15 = [v14 routeManager];
  v16 = [v15 routeAttributes];
  v17 = [v13 initWithWaypoints:v9 routeAttributes:v16 directionsResponse:v8 directionsRequest:v20];

  v18 = [v12 anchorPoints];
  [v17 setAnchorPoints:v18];

  v19 = [v17 mainRouteInfo];
  [(MNTurnByTurnLocationTracker *)self _updateForNewRoute:v19 rerouteReason:self->_rerouteReason request:v20 response:v8];
}

void __82__MNTurnByTurnLocationTracker__rerouteRequestParametersForLocation_transportType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained navigationSessionState];
    v7 = [v6 userIncidentReports];
    v8 = [v7 mutableCopy];
    [v3 setUserIncidentReports:v8];

    v9 = [v5 navigationSession];
    v10 = [v9 serverSessionStateInfo];
    v11 = [v10 sessionState];
    [v3 setSessionState:v11];

    v12 = [v5 navigationSession];
    v13 = [v12 serverSessionStateInfo];
    v14 = [v13 displayedTrafficBanners];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __82__MNTurnByTurnLocationTracker__rerouteRequestParametersForLocation_transportType___block_invoke_2;
    v15[3] = &unk_1E842BA58;
    v16 = v3;
    [v14 enumerateKeysAndObjectsUsingBlock:v15];
  }
}

void __82__MNTurnByTurnLocationTracker__rerouteRequestParametersForLocation_transportType___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [v12 copy];
  [v6 addDisplayedBannerId:v7];

  if ([v5 length])
  {
    v8 = [*(a1 + 32) clientFeedbackInfo];

    if (!v8)
    {
      v9 = objc_opt_new();
      [*(a1 + 32) setClientFeedbackInfo:v9];
    }

    v10 = [*(a1 + 32) clientFeedbackInfo];
    v11 = [v5 copy];
    [v10 addDisplayedBannerEventInfo:v11];
  }
}

- (id)_routeAttributesFromRouteCoordinate:(PolylineCoordinate)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = [(MNLocationTracker *)self navigationSession];
  v6 = [v5 routeManager];
  v7 = [v6 routeAttributes];

  if (v7 && ![v7 mainTransportType])
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v9 = [(MNLocationTracker *)self lastMatchedLocation];
    v10 = [v9 _navigation_geoLocation];
    v11 = [v10 latLng];

    if (v11)
    {
      [v8 addObject:v11];
    }

    v12 = [(MNLocationTracker *)self navigationSession];
    v13 = [v12 routeManager];
    v14 = [v13 currentRoute];
    v15 = [v14 waypointsFromRouteCoordinate:a3];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v17)
    {
      v18 = *v25;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = [*(*(&v24 + 1) + 8 * i) bestLatLng];

          v11 = v20;
          if (v20)
          {
            [v8 addObject:v20];
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v17);
    }

    v21 = [[MNRouteAttributes alloc] initWithAttributes:v7 latLngs:v8];
    v7 = v21;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)_requestRerouteWithReason:(unint64_t)a3 requestHandler:(id)a4 completionHandler:(id)a5 errorHandler:(id)a6
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v10)
  {
    [(GEODirectionsServiceRequest *)self->_pendingRequest cancel];
    pendingRequest = self->_pendingRequest;
    self->_pendingRequest = 0;

    v14 = [(MNLocationTracker *)self lastMatchedLocation];
    v15 = [(MNTurnByTurnLocationTracker *)self _rerouteRequestParametersForLocation:v14 transportType:[(MNLocationTracker *)self transportType]];

    v10[2](v10, v15);
    [(MNTurnByTurnLocationTracker *)self _requestRerouteWithReason:a3 requestParameters:v15 completionHandler:v11 errorHandler:v12];
  }

  else
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"handler must not be nil"];
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "handler != nil";
      v21 = 2112;
      v22 = v17;
      _os_log_impl(&dword_1D311E000, v18, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", &v19, 0x16u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_requestRerouteWithReason:(unint64_t)a3 requestParameters:(id)a4 completionHandler:(id)a5 errorHandler:(id)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v28 = a5;
  v11 = a6;
  [(GEODirectionsServiceRequest *)self->_pendingRequest cancel];
  pendingRequest = self->_pendingRequest;
  self->_pendingRequest = 0;

  if (([(MNLocationTracker *)self navigationCapabilities]& 2) != 0)
  {
    self->_rerouteReason = a3;
    self->_numOfflineAttempts = 0;
    self->_numOnlineAttempts = 0;
    if (a3 != 16)
    {
      v14 = [(MNLocationTracker *)self delegate];
      [v14 locationTrackerWillReroute:self];
    }

    [(MNLocationTracker *)self _setState:5, v28];
    v15 = [(MNLocationTracker *)self navigationSession];
    v16 = [v15 traceManager];
    v17 = [v16 traceRecorder];

    [v17 timeSinceRecordingBegan];
    v19 = v18;
    v20 = [MEMORY[0x1E69A1D18] sharedService];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __106__MNTurnByTurnLocationTracker__requestRerouteWithReason_requestParameters_completionHandler_errorHandler___block_invoke;
    v29[3] = &unk_1E842BA30;
    v29[4] = self;
    v13 = v17;
    v30 = v13;
    v34 = v19;
    v31 = v10;
    v35 = a3;
    v32 = v11;
    v33 = v28;
    v21 = [v20 requestDirections:v31 handler:v29];
    v22 = self->_pendingRequest;
    self->_pendingRequest = v21;

    v23 = MNGetMNLocationTrackerLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = self->_rerouteReason - 1;
      if (v24 > 0xF)
      {
        v25 = @"Unknown";
      }

      else
      {
        v25 = off_1E842BB80[v24];
      }

      v26 = self->_pendingRequest;
      *buf = 138412546;
      v37 = v25;
      v38 = 2048;
      v39 = v26;
      _os_log_impl(&dword_1D311E000, v23, OS_LOG_TYPE_DEFAULT, "Requesting reroute with reason %@. _pendingRequest = %p", buf, 0x16u);
    }
  }

  else
  {
    v13 = MNGetMNLocationTrackerLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_DEFAULT, "Rerouting navigation capability is not enabled (you're probably running a test).", buf, 2u);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __106__MNTurnByTurnLocationTracker__requestRerouteWithReason_requestParameters_completionHandler_errorHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v40 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v14)
  {
    goto LABEL_2;
  }

  v27 = *(a1 + 32);
  if (!v27[18])
  {
LABEL_16:
    v14 = 0;
    v27[19] = 0;
    goto LABEL_25;
  }

  if ([v27 state] != 5)
  {
    v27 = *(a1 + 32);
    if (v27[18])
    {
      v28 = MNGetMNLocationTrackerLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = *(*(a1 + 32) + 144);
        v38 = 134217984;
        v39 = v29;
        _os_log_impl(&dword_1D311E000, v28, OS_LOG_TYPE_ERROR, "There appears to be a pending directions request (%p) but we are no longer in the RECALCULATING state. Cancelling pending request to ensure state integrity.", &v38, 0xCu);
      }

      [*(*(a1 + 32) + 144) cancel];
      v30 = *(a1 + 32);
      v31 = *(v30 + 144);
      *(v30 + 144) = 0;

      v27 = *(a1 + 32);
    }

    goto LABEL_16;
  }

LABEL_2:
  v16 = *(a1 + 32);
  v17 = *(v16 + 144);
  *(v16 + 144) = 0;

  if (v14 && v15)
  {
    v18 = MEMORY[0x1E695DF90];
    v19 = [v14 userInfo];
    v20 = [v18 dictionaryWithDictionary:v19];

    v21 = [MEMORY[0x1E69A1CF0] key];
    [v20 setObject:v15 forKeyedSubscript:v21];

    v22 = MEMORY[0x1E696ABC0];
    v23 = [v14 domain];
    v24 = [v22 errorWithDomain:v23 code:objc_msgSend(v14 userInfo:{"code"), v20}];

    v14 = v24;
  }

  [*(a1 + 40) timeSinceRecordingBegan];
  [*(a1 + 40) recordDirectionsRequest:v12 response:v13 error:v14 waypoints:v11 selectedRouteIndex:0 requestTimestamp:*(a1 + 72) responseTimestamp:v25];
  if (v14 || [v13 status])
  {
    if (([*(a1 + 32) _tryOnlineOfflineSwitchingWithRequestParameters:*(a1 + 48) rerouteReason:*(a1 + 80) error:v14 errorHandler:*(a1 + 56)] & 1) == 0)
    {
      v26 = *(a1 + 56);
      if (v26)
      {
        (*(v26 + 16))(v26, v13, v14);
      }

      else
      {
        v32 = [*(a1 + 32) delegate];
        [v32 locationTracker:*(a1 + 32) didFailRerouteWithError:v14];
      }

      *(*(a1 + 32) + 152) = 0;
      v33 = [*(a1 + 32) lastMatchedLocation];
      v34 = [v33 state];

      if (v34 == 1)
      {
        v35 = 2;
      }

      else
      {
        v35 = 1;
      }

      [*(a1 + 32) _setState:v35];
    }
  }

  else
  {
    [*(a1 + 32) _handleSuccessfulRerouteRequest:v12 response:v13 waypoints:v11];
    *(*(a1 + 32) + 152) = 0;
    v36 = *(a1 + 64);
    if (v36)
    {
      (*(v36 + 16))();
    }

    v14 = 0;
  }

LABEL_25:

  v37 = *MEMORY[0x1E69E9840];
}

- (BOOL)_tryOnlineOfflineSwitchingWithRequestParameters:(id)a3 rerouteReason:(unint64_t)a4 error:(id)a5 errorHandler:(id)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (([v11 _geo_isNetworkError] & 1) == 0)
  {
    goto LABEL_24;
  }

  if ([(MNTurnByTurnLocationTracker *)self _rerouteReasonSupportsDowngradingToOffline:a4])
  {
    numOfflineAttempts = self->_numOfflineAttempts;
    if (numOfflineAttempts >= GEOConfigGetUInteger())
    {
      self->_numOfflineAttempts = 0;
    }

    else if ([MEMORY[0x1E69A22E8] activeStateForCohortId:*MEMORY[0x1E69A1A78]] == 1)
    {
      ++self->_numOfflineAttempts;
      v14 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_DEFAULT, "Will try downgrading to Offline state because of network error in the previously requested reroute to Routing.", &v24, 2u);
      }

      [(MNTurnByTurnLocationTracker *)self _changeOfflineMode:2 reason:a4 requestParameters:v10 errorHandler:v12];
      v15 = 1;
      goto LABEL_25;
    }
  }

  if (a4 != 16)
  {
    goto LABEL_24;
  }

  numOnlineAttempts = self->_numOnlineAttempts;
  if (numOnlineAttempts >= GEOConfigGetUInteger())
  {
    v15 = 0;
    self->_numOnlineAttempts = 0;
    goto LABEL_25;
  }

  v17 = [MEMORY[0x1E69A22E8] activeStateForCohortId:*MEMORY[0x1E69A1A78]];
  v18 = v17;
  if (v17 < 2u)
  {
    goto LABEL_24;
  }

  if (v17 != 2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v24 = 67109120;
      v25 = v18;
      _os_log_fault_impl(&dword_1D311E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unreachable reached: invalid offline mode value %x", &v24, 8u);
    }

    goto LABEL_24;
  }

  v19 = HIBYTE(v17);
  if (HIBYTE(v17) >= 2u)
  {
    if (HIBYTE(v17) != 2)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        v24 = 67109120;
        v25 = v19;
        _os_log_fault_impl(&dword_1D311E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unreachable reached: invalid offline reason value %x", &v24, 8u);
      }

      goto LABEL_18;
    }

LABEL_24:
    v15 = 0;
    goto LABEL_25;
  }

LABEL_18:
  ++self->_numOnlineAttempts;
  v20 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v24) = 0;
    _os_log_impl(&dword_1D311E000, v20, OS_LOG_TYPE_DEFAULT, "Will try another attempt to switch to Online because of network error in the previous request.", &v24, 2u);
  }

  v15 = 1;
  [(MNTurnByTurnLocationTracker *)self _changeOfflineMode:1 reason:16 requestParameters:v10 errorHandler:v12];
LABEL_25:

  v22 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)_sendRouteHintForLocation:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v50 = a3;
  if (([(MNLocationTracker *)self navigationCapabilities]& 8) != 0)
  {
    v49 = self;
    if (v50 && [v50 state] == 1)
    {
      v46 = [v50 routeMatch];
      v45 = [v46 route];
      [v50 speed];
      v5 = 25.0;
      if (v4 * 20.0 > 25.0)
      {
        [v50 speed];
        v5 = v6 * 20.0;
      }

      v7 = [v46 routeCoordinate];
      v47 = -[GEOPathMatcher matchedSegmentsFromStart:toEnd:](self->_pathMatcher, "matchedSegmentsFromStart:toEnd:", v7, [v45 routeCoordinateForDistance:v7 afterRouteCoordinate:v5]);
      if ([v47 count])
      {
        v8 = [v46 step];
        v9 = [v8 transportType];

        v10 = GEOFindOrCreateLog();
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

        if (v11)
        {
          v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v47, "count") + 1}];
          v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Sending %d route hints: ", objc_msgSend(v47, "count")];
          [v12 addObject:v13];

          v53 = v12;
        }

        else
        {
          v53 = 0;
        }

        v14 = [v47 count];
        if (v14)
        {
          if (v14 <= 0x666666666666666)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<CLMapsRouteHint>>(v14);
          }

          std::vector<CLMapsRouteHint>::__throw_length_error[abi:ne200100]();
        }

        __src = 0;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        obj = v47;
        v15 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
        v48 = v9;
        if (v15)
        {
          v16 = *v55;
          v17 = 0;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v55 != v16)
              {
                objc_enumerationMutation(obj);
              }

              v19 = *(*(&v54 + 1) + 8 * i);
              if ([v19 pointCount])
              {
                [v19 locationCoordinateAt:0];
                v21 = v20;
                v23 = v22;
                [v19 locationCoordinateAt:{objc_msgSend(v19, "pointCount") - 1}];
                v25 = v24;
                v27 = v26;
                v28 = [v19 road];
                v29 = [v28 roadID];

                v30 = v17 - __src;
                v31 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - __src) >> 3);
                v32 = v31 + 1;
                if (v31 + 1 > 0x666666666666666)
                {
                  std::vector<CLMapsRouteHint>::__throw_length_error[abi:ne200100]();
                }

                if (0x999999999999999ALL * (-__src >> 3) > v32)
                {
                  v32 = 0x999999999999999ALL * (-__src >> 3);
                }

                if (0xCCCCCCCCCCCCCCCDLL * (-__src >> 3) >= 0x333333333333333)
                {
                  v33 = 0x666666666666666;
                }

                else
                {
                  v33 = v32;
                }

                if (v33)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<CLMapsRouteHint>>(v33);
                }

                v34 = 40 * v31;
                *v34 = v29;
                *(v34 + 8) = v21;
                *(v34 + 16) = v23;
                *(v34 + 24) = v25;
                *(v34 + 32) = v27;
                v17 = 40 * v31 + 40;
                v35 = v34 - v30;
                memcpy((v34 - v30), __src, v30);
                if (__src)
                {
                  operator delete(__src);
                }

                __src = v35;
                if (v53)
                {
                  v36 = MEMORY[0x1E696AEC0];
                  v37 = [v19 road];
                  v38 = [v37 roadID];
                  [v19 startRouteCoordinate];
                  v39 = GEOPolylineCoordinateAsShortString();
                  [v19 endRouteCoordinate];
                  v40 = GEOPolylineCoordinateAsShortString();
                  v41 = [v36 stringWithFormat:@"%llu | [%@] %f, %f to [%@] %f, %f", v38, v39, v21, v23, v40, v25, v27];
                  [v53 addObject:v41];
                }
              }
            }

            v15 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
          }

          while (v15);
        }

        v42 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          v43 = [v53 componentsJoinedByString:@"\n\t"];
          *buf = 138477827;
          v59 = v43;
          _os_log_impl(&dword_1D311E000, v42, OS_LOG_TYPE_DEBUG, "%{private}@", buf, 0xCu);
        }
      }

      else
      {
        __src = 0;
        v48 = 4;
      }
    }

    else
    {
      __src = 0;
      v48 = 4;
    }

    [(MNTurnByTurnLocationTracker *)v49 _routeHintTypeForTransportType:[(MNLocationTracker *)v49 transportType]];
    [(MNTurnByTurnLocationTracker *)v49 _routeHintTypeForTransportType:v48];
    CLSetMapMatchingRouteHint();
    if (__src)
    {
      operator delete(__src);
    }
  }

  v44 = *MEMORY[0x1E69E9840];
}

- (int)_routeHintTypeForTransportType:(int)a3
{
  if ((a3 - 1) > 5)
  {
    return 1;
  }

  else
  {
    return dword_1D328D47C[a3 - 1];
  }
}

- (BOOL)_isRoadFeatureInOppositeDirection:(id)a3 ofCoordinate:(id)a4 course:(double)a5
{
  v5 = a3;
  if (v5)
  {
    GEOMultiSectionFeaturePoints();
  }

  return 0;
}

- (id)_matchedLocationForMatchResult:(id)a3 originalLocation:(id)a4
{
  v64 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v20 = 0;
    goto LABEL_46;
  }

  v8 = MNGetPuckTrackingLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v7 uuid];
    *buf = 138412290;
    *&buf[4] = v9;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_INFO, "[MN] [%@] - Processing - in MNTurnByTurnLocationTracker::_matchedLocationForMatchResult:originalLocation:", buf, 0xCu);
  }

  v10 = [v6 type];
  v11 = [v6 routeMatch];
  v58 = [v6 roadMatch];
  v12 = [(MNLocationTracker *)self transportType];
  if (v12)
  {
    if (v12 == 2)
    {
      BOOL = GEOConfigGetBOOL();
      goto LABEL_14;
    }

    if (v12 != 3)
    {
      BOOL = 0;
      goto LABEL_14;
    }
  }

  v13 = GEOConfigGetBOOL();
  v14 = [v6 type];
  v15 = [(MNLocationTracker *)self hasArrived];
  v16 = [v11 step];
  v17 = [v16 routeSegmentType] == 3;

  v18 = v17 || v15 || v14 == 2;
  if (v17 || v15 || v14 == 2)
  {
    BOOL = v13;
  }

  else
  {
    BOOL = 2;
  }

  [v11 setShouldProjectLocationAlongRoute:!v18];
LABEL_14:
  if ([(MNLocationTracker *)self targetLegIndex]!= 0x7FFFFFFFFFFFFFFFLL && !v10)
  {
    v21 = [v11 legIndex];
    if (v21 <= [(MNLocationTracker *)self targetLegIndex])
    {
      v10 = 0;
    }

    else if (v58)
    {
      v10 = 1;
    }

    else
    {
      v22 = objc_alloc(MEMORY[0x1E69A24F0]);
      [v11 locationCoordinate3D];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      [v11 matchedCourse];
      v30 = [v22 initWithCoordinateOnRoad:v24 courseOnRoad:{v26, v28, v29, 0}];
      v10 = 1;
      v58 = v30;
    }
  }

  [v11 setStepIndex:{-[MNTurnByTurnLocationTracker _modifiedStepIndexForMatchResult:matchType:](self, "_modifiedStepIndexForMatchResult:matchType:", v6, v10, v58)}];
  switch(v10)
  {
    case 2:
      v33 = 0;
      v20 = [[MNLocation alloc] initWithRawLocation:v7 locationFixType:BOOL];
      [(MNLocation *)v20 setRouteMatch:v11];
      break;
    case 1:
      v41 = [v59 roadFeature];
      v60 = 0;
      [(MNLocationTracker *)self _roadFeaturesForFeature:v41 outRoadName:&v60 outShieldText:0 outShieldType:0];
      v33 = v60;
      v20 = [[MNLocation alloc] initWithRoadMatch:v59 rawLocation:v7 locationFixType:BOOL];
      [(MNLocation *)v20 setRouteMatch:v11];
      [(MNLocation *)v20 setRoadName:v33];
      if (v41)
      {
        [v59 coordinateOnRoad];
        v43 = v42;
        v45 = v44;
        [v59 courseOnRoad];
        if ([(MNTurnByTurnLocationTracker *)self _isRoadFeatureInOppositeDirection:v41 ofCoordinate:v43 course:v45, v46])
        {
          v47 = [v41 reverseDirectionDisplaySpeedLimit];
        }

        else
        {
          v47 = [v41 displaySpeedLimit];
        }

        [(MNLocation *)v20 setSpeedLimit:v47];
        -[MNLocation setSpeedLimitIsMPH:](v20, "setSpeedLimitIsMPH:", [v41 displaySpeedLimitIsMPH]);
        -[MNLocation setSpeedLimitShieldType:](v20, "setSpeedLimitShieldType:", [v41 speedLimitShieldId]);
        v34 = v41;
      }

      else
      {
        [(MNLocation *)v20 setSpeedLimit:0];
        v34 = 0;
      }

LABEL_42:

      break;
    case 0:
      *buf = 0;
      v31 = [v11 road];
      v32 = [v31 feature];

      v61 = 0;
      v62 = 0;
      [(MNLocationTracker *)self _roadFeaturesForFeature:v32 outRoadName:&v62 outShieldText:&v61 outShieldType:buf];
      v33 = v62;
      v34 = v61;
      v20 = [[MNLocation alloc] initWithRouteMatch:v11 rawLocation:v7 locationFixType:BOOL];
      [(MNLocation *)v20 setRoadName:v33];
      [(MNLocation *)v20 setShieldText:v34];
      [(MNLocation *)v20 setShieldType:*buf];
      if (v32)
      {
        [v11 locationCoordinate];
        v36 = v35;
        v38 = v37;
        [v11 matchedCourse];
        if ([(MNTurnByTurnLocationTracker *)self _isRoadFeatureInOppositeDirection:v32 ofCoordinate:v36 course:v38, v39])
        {
          v40 = [v32 reverseDirectionDisplaySpeedLimit];
        }

        else
        {
          v40 = [v32 displaySpeedLimit];
        }

        [(MNLocation *)v20 setSpeedLimit:v40];
        -[MNLocation setSpeedLimitIsMPH:](v20, "setSpeedLimitIsMPH:", [v32 displaySpeedLimitIsMPH]);
        -[MNLocation setSpeedLimitShieldType:](v20, "setSpeedLimitShieldType:", [v32 speedLimitShieldId]);
      }

      else
      {
        [(MNLocation *)v20 setSpeedLimit:0];
      }

      v48 = [(MNLocation *)v20 routeMatch];
      v49 = [(MNTurnByTurnLocationTracker *)self _shouldAdvanceGuidanceToRouteMatch:v48];

      if (v49)
      {
        objc_storeStrong(&self->_lastKnownGoodLocationOnRoute, v20);
        v50 = [(MNLocation *)self->_lastKnownGoodLocationOnRoute routeMatch];
        v51 = v50 == 0;

        if (!v51)
        {
          v52 = [(MNLocation *)v20 routeMatch];
          v53 = [(MNLocation *)self->_lastKnownGoodLocationOnRoute routeMatch];
          [v52 setRouteCoordinate:{objc_msgSend(v53, "routeCoordinate")}];
        }
      }

      goto LABEL_42;
    default:
      v33 = 0;
      v20 = 0;
      break;
  }

  -[MNLocation setTraceIndex:](v20, "setTraceIndex:", [v7 traceIndex]);
  v54 = [v6 detailedMatchInfo];
  [(MNLocation *)v20 setDetailedMatchInfo:v54];

  if (self->_puckLocationTracing)
  {
    v55 = [v7 uuid];
    [(MNLocation *)v20 setUuid:v55];
  }

LABEL_46:
  v56 = *MEMORY[0x1E69E9840];

  return v20;
}

- (unint64_t)_modifiedStepIndexForMatchResult:(id)a3 matchType:(unint64_t)a4
{
  v6 = [a3 routeMatch];
  v7 = [(MNLocationTracker *)self transportType];
  if ((!v7 || v7 == 3) && [(MNLocationTracker *)self hasArrived])
  {
    v8 = [v6 route];
    v9 = [v8 legs];
    v10 = [v9 objectAtIndexedSubscript:self->_lastArrivalLegIndex];

    v11 = [v6 route];
    v12 = [v11 steps];
    v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v10, "endStepIndex")}];

    v14 = [v13 stepIndex];
LABEL_16:

    goto LABEL_17;
  }

  if (!a4)
  {
    v20 = [v6 legIndex];
    if (v20 >= [(MNLocationTracker *)self targetLegIndex])
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v15 = [v6 route];
  v16 = [(MNLocationTracker *)self lastMatchedLocation];
  v17 = [v16 routeMatch];
  v18 = [v17 route];

  if (v15 == v18)
  {
    v10 = [(MNLocationTracker *)self lastMatchedLocation];
    v21 = [v10 stepIndex];
LABEL_15:
    v14 = v21;
    goto LABEL_16;
  }

  v19 = [(MNLocationTracker *)self lastMatchedLocation];
  if (!v19)
  {
    v22 = [v6 legIndex];
    if (v22 == [(MNLocationTracker *)self targetLegIndex])
    {
      goto LABEL_13;
    }

LABEL_14:
    v23 = [v6 route];
    v24 = [v23 legs];
    v10 = [v24 objectAtIndexedSubscript:{-[MNLocationTracker targetLegIndex](self, "targetLegIndex")}];

    v21 = [v10 startStepIndex];
    goto LABEL_15;
  }

LABEL_13:
  v14 = [v6 stepIndex];
LABEL_17:

  return v14;
}

- (BOOL)_shouldAdvanceGuidanceToRouteMatch:(id)a3
{
  v4 = a3;
  if ([v4 isGoodMatch])
  {
    v5 = ![(MNLocationTracker *)self hasArrived];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  v6 = [(MNLocation *)self->_lastKnownGoodLocationOnRoute routeMatch];

  if (v6)
  {
    v7 = [(MNLocation *)self->_lastKnownGoodLocationOnRoute routeMatch];
    [v7 routeCoordinate];
    [v4 routeCoordinate];
    v8 = GEOPolylineCoordinateCompare();

    if (v8 != -1)
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (void)_updateSwitchTransportTypeForLocation:(id)a3
{
  v4 = a3;
  v5 = +[MNCarPlayConnectionMonitor sharedInstance];
  v6 = [v5 isConnected];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(MNTurnByTurnLocationTracker *)self _detectedMotionForLocation:v4];
  }

  v8 = [(MNTurnByTurnLocationTracker *)self isRerouting];
  v9 = v7 == 4 || v8;
  if ((v9 & 1) == 0 && [(MNLocationTracker *)self transportType]!= v7)
  {
    v10 = [v4 routeMatch];
    v11 = [v10 step];

    if ([v11 transportType] != 5)
    {
      v17 = [v4 routeMatch];
      v12 = [v17 legIndex];
      v13 = [v4 routeMatch];
      v14 = [v13 route];
      v15 = [v14 legs];
      v16 = [v15 count] - 1;

      if (v12 >= v16 && ((v6 & 1) != 0 || [(MNTurnByTurnLocationTracker *)self _allowSwitchToTransportType:v7 forLocation:v4]))
      {
        if (GEOConfigGetBOOL())
        {
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __69__MNTurnByTurnLocationTracker__updateSwitchTransportTypeForLocation___block_invoke;
          v18[3] = &__block_descriptor_36_e47_v16__0__GEODirectionsServiceRequestParameters_8l;
          v19 = v7;
          [(MNTurnByTurnLocationTracker *)self _requestRerouteWithReason:6 requestHandler:v18 completionHandler:0 errorHandler:0];
        }
      }
    }
  }
}

void __69__MNTurnByTurnLocationTracker__updateSwitchTransportTypeForLocation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setRequestType:4];
  [v3 setTransportType:*(a1 + 32)];
}

- (void)_updateStateForLocation:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MNLocationTracker *)self state];
  v6 = [(MNLocationTracker *)self state];
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v8 = [v4 state];
        if (v8)
        {
          if (v8 == 2)
          {
            v20 = 0;
            v15 = [(MNTurnByTurnLocationTracker *)self _allowRerouteForLocation:v4 outError:&v20];
            v16 = v20;
            if (v15)
            {
              v5 = 4;
            }

            else
            {
              v17 = [(MNLocationTracker *)self delegate];
              [v17 locationTracker:self didSuppressReroute:v16];

              v5 = 1;
            }
          }

          else if (v8 == 1)
          {
            v5 = 2;
          }

          else
          {
            v5 = v5;
          }
        }

        else
        {
          v5 = 1;
        }
      }
    }

    else
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v22 = "[MNTurnByTurnLocationTracker _updateStateForLocation:]";
        v23 = 2080;
        v24 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Location/LocationTracking/MNTurnByTurnLocationTracker.mm";
        v25 = 1024;
        v26 = 457;
        _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", buf, 0x1Cu);
      }
    }
  }

  else if ((v6 - 2) >= 3)
  {
    if ((v6 == 5 || v6 == 8) && [v4 state] == 1)
    {
      if (self->_rerouteReason == 1)
      {
        v5 = 2;
      }

      else
      {
        v5 = v5;
      }
    }
  }

  else
  {
    v7 = [v4 state];
    if (v7)
    {
      if (v7 == 2)
      {
        v19 = 0;
        v10 = [(MNTurnByTurnLocationTracker *)self _allowRerouteForLocation:v4 outError:&v19];
        v11 = v19;
        if (v10)
        {
          v5 = 4;
        }

        else
        {
          v14 = [(MNLocationTracker *)self delegate];
          [v14 locationTracker:self didSuppressReroute:v11];

          v5 = 3;
        }
      }

      else if (v7 == 1)
      {
        self->_consecutiveOffRouteCount = 0;
        v5 = 2;
      }
    }

    else
    {
      v12 = self->_consecutiveOffRouteCount + 1;
      self->_consecutiveOffRouteCount = v12;
      if (v12 < 5 && v5 == 2)
      {
        v5 = 2;
      }

      else
      {
        v5 = 3;
      }
    }
  }

  [(MNLocationTracker *)self _setState:v5];

  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isLocation:(id)a3 nearOrigin:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      [v5 _navigation_geoCoordinate3D];
      [v7 coordinate];
      GEOCalculateDistance();
      v9 = v8;
      GEOConfigGetDouble();
      v11 = v9 < v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)updateForETAUpdateResponse:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(MNTurnByTurnLocationTracker *)self _addDebugIncidentAlertToResponseInfo:v4];
  v5 = [(MNLocationTracker *)self navigationSessionState];
  v6 = [v5 currentRouteInfo];

  v7 = [v4 alternateRoutes];
  v8 = [v7 firstObject];
  v9 = [MNTrafficIncidentAlert validTrafficIncidentAlertsForETAUpdate:v6 alternateRouteInfo:v8];

  [(MNTurnByTurnLocationTracker *)self _updateForNewTrafficIncidentAlerts:v9];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v11)
  {

LABEL_11:
    v17 = [v4 alternateRoutes];
    [(MNTurnByTurnLocationTracker *)self _updateForNewAlternateRoutes:v17];

    goto LABEL_12;
  }

  v12 = 0;
  v13 = *v20;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v20 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = [*(*(&v19 + 1) + 8 * i) alternateRoute];
      v16 = v15 != 0;

      v12 |= v16;
    }

    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v11);

  if ((v12 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:

  v18 = *MEMORY[0x1E69E9840];
}

- (void)updateForETAUResponse:(id)a3
{
  v4 = a3;
  v40 = [v4 request];
  v5 = [v4 response];
  v41 = [v4 error];
  v6 = [(MNLocationTracker *)self navigationSession];
  v7 = [v6 traceManager];
  v8 = [v7 traceRecorder];

  v39 = v8;
  [v8 timeSinceRecordingBegan];
  v10 = v9;
  [v4 responseTime];
  v12 = v11;
  v13 = [(MNLocationTracker *)self navigationSession];
  v14 = [v13 destination];
  v15 = [v14 navDisplayName];
  [v8 recordETAURequest:v40 response:v5 error:v41 destinationName:v15 requestTimestamp:v10 - v12 responseTimestamp:v10];

  Integer = GEOConfigGetInteger();
  if (Integer || !v41 && ![v5 status])
  {
    if ([v5 status] && Integer)
    {
      v17 = [(MNLocationTracker *)self navigationSession];
      v18 = [v17 routeManager];
      v19 = [v18 currentRoute];

      v20 = [v19 geoETAWaypointRoute];
      if (v20)
      {
        [v5 setWaypointRoute:v20];
      }
    }

    else if (!Integer)
    {
LABEL_17:
      v36 = [(MNLocationTracker *)self navigationSession];
      v37 = [v36 routeManager];
      v21 = [v37 currentRouteInfo];

      v38 = [(MNLocationTracker *)self delegate];
      [v38 locationTracker:self didUpdateETAForRoute:v21];

      goto LABEL_18;
    }

    v22 = [(MNLocationTracker *)self navigationSession];
    v23 = [v22 routeManager];
    v24 = [v23 currentRouteInfo];

    v25 = [(MNLocationTracker *)self lastMatchedLocation];
    if (v25)
    {
      v26 = [(MNLocationTracker *)self lastMatchedLocation];
      v27 = [v26 routeMatch];

      if (v27)
      {
        v28 = [(MNLocationTracker *)self lastMatchedLocation];
        v29 = [v28 routeMatch];

        v30 = [v24 route];
        [v30 distanceToEndFromRouteCoordinate:{objc_msgSend(v29, "routeCoordinate")}];
        v25 = v31;
      }

      else
      {
        v25 = 0;
      }
    }

    v32 = [(MNLocationTracker *)self navigationSession];
    v33 = [v32 routeManager];
    v34 = [v33 alternateRoutes];
    v35 = [v34 firstObject];
    [v5 addFakeTrafficIncidentAlert:Integer mainRouteInfo:v24 alternateRouteInfo:v35 currentDistance:v25];

    goto LABEL_17;
  }

  v21 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1D311E000, v21, OS_LOG_TYPE_DEBUG, "Return from updateForETAUResponse without updating ETA due to error in response from Routing\n", buf, 2u);
  }

LABEL_18:
}

- (void)updateRequestForETAUpdate:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MNTurnByTurnLocationTracker;
  [(MNLocationTracker *)&v5 updateRequestForETAUpdate:v4];
  [(MNTrafficIncidentAlertUpdater *)self->_trafficIncidentAlertUpdater updateIncidentResultForETARequest:v4];
}

- (void)_changeOfflineMode:(unsigned __int8)a3 reason:(unint64_t)a4 requestParameters:(id)a5 errorHandler:(id)a6
{
  v7 = a3;
  v35 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v27 = a6;
  v10 = [MEMORY[0x1E69A22E8] activeStateForCohortId:*MEMORY[0x1E69A1A78]];
  v11 = MNGetMNLocationTrackerLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = GEOOfflineModeAsString();
    v13 = GEOOfflineStateAsString();
    v14 = [(MNLocationTracker *)self navigationSessionState];
    a6 = [v14 currentRouteInfo];
    v15 = [a6 route];
    *buf = 138412802;
    v30 = v12;
    v31 = 2112;
    v32 = v13;
    v33 = 1024;
    v34 = [v15 isOfflineRoute];
    _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEFAULT, "Requesting changeOfflineMode to '%@'. Current offline state is '%@'. Current route is offline: %d", buf, 0x1Cu);
  }

  if (a4 != 16)
  {
    goto LABEL_5;
  }

  v16 = [(MNLocationTracker *)self navigationSessionState];
  a6 = [v16 currentRouteInfo];
  v17 = [a6 route];
  v18 = [v17 isOfflineRoute];

  if ((v18 & 1) == 0)
  {
    v25 = MNGetMNLocationTrackerLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = @"UpgradeOfflineToOnline";
      _os_log_impl(&dword_1D311E000, v25, OS_LOG_TYPE_ERROR, "Attempted to switch to online route with reroute reason %@, but we already have an online route.", buf, 0xCu);
    }
  }

  else
  {
LABEL_5:
    if (v7 == v10)
    {
      a6 = MNGetMNLocationTrackerLog();
      if (os_log_type_enabled(a6, OS_LOG_TYPE_ERROR))
      {
        v19 = GEOOfflineStateAsString();
        *buf = 138412290;
        v30 = v19;
        _os_log_impl(&dword_1D311E000, a6, OS_LOG_TYPE_ERROR, "GEOOfflineService reports offline state is already '%@', but proceeding with reroute anyway.", buf, 0xCu);
      }
    }

    v20 = [v9 traits];
    v21 = v20;
    if (!v20)
    {
      a6 = [MEMORY[0x1E69A2208] sharedService];
      v21 = [a6 defaultTraits];
    }

    [v9 setTraits:v21];
    if (!v20)
    {
    }

    v22 = [v9 traits];
    v23 = v22;
    if (v7 == 1)
    {
      v24 = 3;
    }

    else
    {
      v24 = 4;
    }

    [v22 setRequestMode:v24];

    [(MNTurnByTurnLocationTracker *)self _requestRerouteWithReason:a4 requestParameters:v9 completionHandler:0 errorHandler:v27];
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)changeOfflineMode:(unsigned __int8)a3
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_1D311E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unreachable reached: Should not be called anymore. Pending removal.", v3, 2u);
  }
}

- (void)switchToDestinationRoute
{
  v3 = [(MNLocationTracker *)self navigationSessionState];
  v4 = [v3 destination];
  v5 = [v4 route];

  v6 = MNGetMNLocationTrackerLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "switchToDestinationRoute", buf, 2u);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __55__MNTurnByTurnLocationTracker_switchToDestinationRoute__block_invoke;
    aBlock[3] = &unk_1E842B9B8;
    v8 = v5;
    v19 = v8;
    v20 = self;
    v9 = _Block_copy(aBlock);
    if ([v8 isNavigable])
    {
      v9[2](v9, v8);
    }

    else
    {
      v10 = MNGetMNLocationTrackerLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_DEFAULT, "destination route is not navigable, attempting convertToNavigableRoute:.", buf, 2u);
      }

      v11 = objc_opt_new();
      [v11 setCurrentRoute:v8];
      v12 = [(MNLocationTracker *)self navigationSession];
      v13 = [v12 routeManager];
      v14 = [v13 routeAttributes];
      [v11 setRouteAttributes:v14];

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __55__MNTurnByTurnLocationTracker_switchToDestinationRoute__block_invoke_31;
      v16[3] = &unk_1E842B9E0;
      v17 = v9;
      v15 = [MNRouteEditor convertToNavigableRoute:v11 finishedHandler:v16];
    }

    v7 = v19;
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "switchToDestinationRoute called but there is no destination route.", buf, 2u);
  }
}

void __55__MNTurnByTurnLocationTracker_switchToDestinationRoute__block_invoke(uint64_t a1)
{
  v6 = [[MNActiveRouteInfo alloc] initWithRoute:*(a1 + 32)];
  v2 = [*(a1 + 32) routeInitializerData];
  v3 = [v2 directionsRequest];

  v4 = [*(a1 + 32) routeInitializerData];
  v5 = [v4 directionsResponse];

  [*(a1 + 40) _updateForNewRoute:v6 rerouteReason:13 request:v3 response:v5];
}

void __55__MNTurnByTurnLocationTracker_switchToDestinationRoute__block_invoke_31(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = MNGetMNLocationTrackerLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_ERROR, "Error converting destination route to navigable route: %@", &v10, 0xCu);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __57__MNTurnByTurnLocationTracker_changeTransportType_route___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 setRequestType:9];
  [v5 setTransportType:*(a1 + 40)];
  v3 = [*(a1 + 32) navigationSessionState];
  v4 = [v3 arrivalState];

  [v5 setHasArrived:(v4 & 0xFFFFFFFFFFFFFFFDLL) == 4];
}

- (void)reroute:(id)a3 reason:(unint64_t)a4
{
  v6 = a3;
  [(MNTurnByTurnLocationTracker *)self _cancelPendingRerouteRequest];
  [(MNTurnByTurnLocationTracker *)self _updateForNewRoute:v6 rerouteReason:a4 request:0 response:0];
}

- (void)forceRerouteWithReason:(unint64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (a3 - 1 > 0xF)
    {
      v6 = @"Unknown";
    }

    else
    {
      v6 = off_1E842BB80[a3 - 1];
    }

    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "Forcing reroute with reason %@.", buf, 0xCu);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__MNTurnByTurnLocationTracker_forceRerouteWithReason___block_invoke;
  v8[3] = &unk_1E842B968;
  v8[4] = self;
  v8[5] = a3;
  [(MNTurnByTurnLocationTracker *)self _requestRerouteWithReason:a3 requestHandler:v8 completionHandler:0 errorHandler:0];
  v7 = *MEMORY[0x1E69E9840];
}

void __54__MNTurnByTurnLocationTracker_forceRerouteWithReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(a1 + 40) == 12)
  {
    v4 = 11;
  }

  else
  {
    v4 = [*(a1 + 32) _offRouteRequestType];
    v3 = v5;
  }

  [v3 setRequestType:v4];
}

- (void)updateDestination:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__MNTurnByTurnLocationTracker_updateDestination_completionHandler___block_invoke;
  v8[3] = &unk_1E842B940;
  v9 = v6;
  v10 = self;
  v7 = v6;
  [(MNTurnByTurnLocationTracker *)self _requestRerouteWithReason:7 requestHandler:v8 completionHandler:a4 errorHandler:0];
}

void __67__MNTurnByTurnLocationTracker_updateDestination_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 setRequestType:6];
  v10[0] = *(a1 + 32);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [v3 setWaypoints:v4];

  v5 = [*(a1 + 40) navigationSession];
  v6 = [v5 routeManager];

  v7 = [v6 originalDestination];
  LODWORD(a1) = v7 == *(a1 + 32);

  if (a1)
  {
    [v6 originalRoute];
  }

  else
  {
    [v6 currentRoute];
  }
  v8 = ;
  [v3 setCurrentRoute:v8];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)advanceToNextLeg
{
  if ([(MNLocationTracker *)self hasArrived]|| self->_lastArrivalLegIndex != 0x7FFFFFFFFFFFFFFFLL || [(MNArrivalUpdater *)self->_arrivalUpdater isApproachingWaypoint]|| [(MNArrivalUpdater *)self->_arrivalUpdater isInPreArrivalRegion])
  {
    arrivalUpdater = self->_arrivalUpdater;

    [(MNArrivalUpdater *)arrivalUpdater forceDepartureForCurrentLeg:1];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_INFO, "Manual advance to next leg ignored since the location tracker has already passed the arrival stage", v5, 2u);
    }
  }
}

- (void)removeWaypointAtIndex:(unint64_t)a3 completionHandler:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__MNTurnByTurnLocationTracker_removeWaypointAtIndex_completionHandler___block_invoke;
  v4[3] = &__block_descriptor_40_e47_v16__0__GEODirectionsServiceRequestParameters_8l;
  v4[4] = a3;
  [(MNTurnByTurnLocationTracker *)self _requestRerouteWithReason:9 requestHandler:v4 completionHandler:a4 errorHandler:0];
}

void __71__MNTurnByTurnLocationTracker_removeWaypointAtIndex_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setRequestType:7];
  [v3 setWaypointModificationType:1];
  [v3 setWaypointIndexToRemove:*(a1 + 32)];
}

- (void)insertWaypoint:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__MNTurnByTurnLocationTracker_insertWaypoint_completionHandler___block_invoke;
  v8[3] = &unk_1E842B8F8;
  v9 = v6;
  v7 = v6;
  [(MNTurnByTurnLocationTracker *)self _requestRerouteWithReason:8 requestHandler:v8 completionHandler:a4 errorHandler:0];
}

void __64__MNTurnByTurnLocationTracker_insertWaypoint_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setRequestType:7];
  [v3 setWaypointModificationType:0];
  [v3 setWaypointToInsert:*(a1 + 32)];
}

- (void)rerouteWithWaypoints:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__MNTurnByTurnLocationTracker_rerouteWithWaypoints_completionHandler___block_invoke;
  v8[3] = &unk_1E842B8F8;
  v9 = v6;
  v7 = v6;
  [(MNTurnByTurnLocationTracker *)self _requestRerouteWithReason:10 requestHandler:v8 completionHandler:a4 errorHandler:0];
}

void __70__MNTurnByTurnLocationTracker_rerouteWithWaypoints_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setRequestType:8];
  [v3 setWaypoints:*(a1 + 32)];
}

- (void)dealloc
{
  [(GEODirectionsServiceRequest *)self->_pendingRequest cancel];
  GEOUnregisterStateCaptureLegacy();
  v3.receiver = self;
  v3.super_class = MNTurnByTurnLocationTracker;
  [(MNLocationTracker *)&v3 dealloc];
}

- (MNTurnByTurnLocationTracker)initWithNavigationSession:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = MNTurnByTurnLocationTracker;
  v5 = [(MNLocationTracker *)&v22 initWithNavigationSession:v4];
  if (v5)
  {
    v6 = [v4 routeManager];
    v7 = [v6 currentRoute];
    v8 = [(MNTurnByTurnLocationTracker *)v5 _newMapMatcherForRoute:v7];
    mapMatcher = v5->_mapMatcher;
    v5->_mapMatcher = v8;

    [(GEONavigationMapMatcher *)v5->_mapMatcher setTargetLegIndex:0];
    [(GEONavigationMapMatcher *)v5->_mapMatcher setRequiresRoadNetworkData:1];
    v10 = [v4 traceManager];
    v11 = [v10 tracePlayer];
    v12 = [v11 trace];
    -[GEONavigationMapMatcher setIsSimulation:](v5->_mapMatcher, "setIsSimulation:", [v12 isSimulation]);

    v5->_isNavigatingInLowGuidance = 0;
    v13 = objc_alloc(MEMORY[0x1E69A2330]);
    v14 = [(MNLocationTracker *)v5 _auditToken];
    v15 = [v13 initWithRoute:v7 auditToken:v14];
    pathMatcher = v5->_pathMatcher;
    v5->_pathMatcher = v15;

    v17 = dispatch_get_global_queue(21, 0);
    GEORegisterPListStateCaptureLegacy();

    v5->_numOfflineAttempts = 0;
    v5->_numOnlineAttempts = 0;
    v18 = *MEMORY[0x1E69A19F8];
    v19 = *(MEMORY[0x1E69A19F8] + 8);
    v5->_puckLocationTracing = GEOConfigGetBOOL();
    v20 = v5;
  }

  return v5;
}

- (id)initForTestingWithRoute:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MNTurnByTurnLocationTracker;
  v5 = [(MNLocationTracker *)&v13 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(MNTurnByTurnLocationTracker *)v5 _newMapMatcherForRoute:v4];
    mapMatcher = v6->_mapMatcher;
    v6->_mapMatcher = v7;

    [(GEONavigationMapMatcher *)v6->_mapMatcher setRequiresRoadNetworkData:1];
    [(GEONavigationMapMatcher *)v6->_mapMatcher setShouldSnapRouteMatchToRoute:1];
    [(GEONavigationMapMatcher *)v6->_mapMatcher setShouldWaitForSnappedSegments:1];
    v6->_isNavigatingInLowGuidance = 0;
    v9 = *MEMORY[0x1E69A19F8];
    v10 = *(MEMORY[0x1E69A19F8] + 8);
    v6->_puckLocationTracing = GEOConfigGetBOOL();
    v11 = v6;
  }

  return v6;
}

- (void)offlineCoordinatorDidDetectOnline:(id)a3
{
  v5 = [(MNLocationTracker *)self lastMatchedLocation];
  v8 = [(MNTurnByTurnLocationTracker *)self _rerouteRequestParametersForLocation:v5 transportType:[(MNLocationTracker *)self transportType]];

  [v8 setRequestType:16];
  v6 = [v8 traits];
  v7 = v6;
  if (!v6)
  {
    v3 = [MEMORY[0x1E69A2208] sharedService];
    v7 = [v3 defaultTraits];
  }

  [v8 setTraits:v7];
  if (!v6)
  {
  }

  [(MNTurnByTurnLocationTracker *)self _changeOfflineMode:1 reason:16 requestParameters:v8 errorHandler:0];
}

@end