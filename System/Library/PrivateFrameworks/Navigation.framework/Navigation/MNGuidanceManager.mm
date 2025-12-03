@interface MNGuidanceManager
- (BOOL)_checkValidSpokenEventForGuidanceLevel:(id)level;
- (BOOL)_considerArrivalAnnouncements;
- (BOOL)_considerChargingAnnouncements;
- (BOOL)_considerGetOnRouteAnnouncements;
- (BOOL)_considerOtherSpecialAnnouncements;
- (BOOL)_considerStartingAnnouncements;
- (BOOL)_eventWasSpoken:(id)spoken;
- (BOOL)_hasPersistentEvents;
- (BOOL)_isEVChargingEvent:(id)event;
- (BOOL)_isInArrivalState;
- (BOOL)_isValidEvent:(id)event;
- (BOOL)_updateDisplayStringArgument:(id)argument event:(id)event;
- (BOOL)_updateSpokenStringArgument:(id)argument event:(id)event;
- (BOOL)repeatLastGuidanceAnnouncement:(id)announcement;
- (GEOComposedRoute)route;
- (MNGuidanceManager)initWithNavigationSessionState:(id)state audioManager:(id)manager isReconnecting:(BOOL)reconnecting announcementsToIgnore:(id)ignore;
- (MNGuidanceManagerDelegate)delegate;
- (NSArray)events;
- (double)_adjustedVehicleSpeed;
- (double)_distanceToEndOfRoute;
- (double)_distanceToManeuverStart;
- (double)_distanceToRouteCoordinate:(id)coordinate;
- (double)_headingForArEvent:(id)event;
- (double)_timeRemainingForEvent:(id)event;
- (double)_timeUntilEventTrigger:(id)trigger;
- (double)durationOfEvent:(id)event announcementIndex:(unint64_t)index distance:(double)distance;
- (double)timeUntilNextAnnouncement;
- (id)_arrivalARGuidanceEventsForLeg:(unint64_t)leg;
- (id)_closestContinueAREventToRouteCoordinate:(id)coordinate;
- (id)_createArGuidanceInfosForEvent:(id)event forStep:(id)step;
- (id)_durationsForEvent:(id)event;
- (id)_evaluatedStringsForEvent:(id)event signStrings:(id)strings shouldUpdateFormatStrings:(BOOL)formatStrings argumentHandler:(id)handler;
- (id)_junctionViewEvents;
- (id)_nextJunctionViewGuidanceEvent;
- (id)_nextLaneGuidanceEvent;
- (id)_selectAnnouncementForEvent:(id)event withTimeRemaining:(double)remaining selectedVariantIndex:(unint64_t *)index;
- (id)_serverStringDictionaryForChargingEvent:(id)event;
- (id)_signForGuidanceEvent:(id)event isPrimary:(BOOL)primary shouldOverridePrimaryDistances:(BOOL)distances distance:(double *)distance;
- (id)_sortedSignEventsFromValidSignEvents:(id)events;
- (id)_spokenEventsRemainingInStep;
- (id)_validEventsForARGuidance;
- (id)_validEventsForSignGuidance:(BOOL *)guidance;
- (int)_indexForEventUUID:(id)d;
- (int)_maneuverTypeForAREvent:(id)event;
- (unint64_t)_announcementStageForEvent:(id)event;
- (unint64_t)_trafficColorForRoute:(id)route routeCoordinate:(id)coordinate;
- (unint64_t)currentLegIndex;
- (void)_considerARGuidance;
- (void)_considerAnnouncements;
- (void)_considerCallbacksForNoAnnouncements;
- (void)_considerHaptics;
- (void)_considerHapticsWithNoGuidance;
- (void)_considerJunctionViewGuidance;
- (void)_considerLaneGuidance;
- (void)_considerNavTrayGuidance;
- (void)_considerPersistence;
- (void)_considerSignGuidance;
- (void)_filterValidEvents;
- (void)_handleJunctionViewInfo:(id)info;
- (void)_handleNoGuidanceAnnouncementTimerFiredForEvent:(id)event;
- (void)_initSpecialGuidanceEventsForRoute:(id)route;
- (void)_markEventSpoken:(id)spoken;
- (void)_notifyAnalyticsForNewEvents:(id)events previousEvents:(id)previousEvents;
- (void)_planAnnouncements;
- (void)_resetLastAnnouncementTime;
- (void)_triggerHapticsForEvent:(id)event timeUntilAnnouncement:(double)announcement;
- (void)dealloc;
- (void)reset;
- (void)stop;
- (void)updateDestination:(id)destination;
- (void)updateGuidanceForLocation:(id)location navigatorState:(int)state;
- (void)updateSessionStateForReroute:(id)reroute reason:(unint64_t)reason location:(id)location;
@end

@implementation MNGuidanceManager

- (double)_adjustedVehicleSpeed
{
  [(CLLocation *)self->_location _navigation_speedAccuracy];
  if (v3 < 0.0)
  {
    v3 = 0.2;
  }

  v4 = fmin(v3, 5.0);
  [(MNLocation *)self->_location speed];
  return fmax(v4 + v5, 6.94444444);
}

- (void)_filterValidEvents
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  validEvents = self->_validEvents;
  self->_validEvents = v3;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  events = [(MNGuidanceManager *)self events];
  v6 = [events countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(events);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([(MNGuidanceManager *)self _isValidEvent:v10])
        {
          [(NSMutableArray *)self->_validEvents addObject:v10];
        }
      }

      v7 = [events countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (NSArray)events
{
  v23 = *MEMORY[0x1E69E9840];
  events = self->_events;
  if (!events)
  {
    v4 = MEMORY[0x1E695DF70];
    route = [(MNGuidanceManager *)self route];
    composedGuidanceEvents = [route composedGuidanceEvents];
    v7 = [v4 arrayWithArray:composedGuidanceEvents];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    route2 = [(MNGuidanceManager *)self route];
    enrouteNotices = [route2 enrouteNotices];

    v10 = [enrouteNotices countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(enrouteNotices);
          }

          guidanceEvents = [*(*(&v18 + 1) + 8 * v13) guidanceEvents];
          [(NSMutableArray *)v7 addObjectsFromArray:guidanceEvents];

          ++v13;
        }

        while (v11 != v13);
        v11 = [enrouteNotices countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    [(NSMutableArray *)v7 sortUsingSelector:sel_compare_];
    v15 = self->_events;
    self->_events = v7;

    events = self->_events;
  }

  v16 = *MEMORY[0x1E69E9840];

  return events;
}

- (double)_distanceToEndOfRoute
{
  route = [(MNGuidanceManager *)self route];
  -[MNGuidanceManager _distanceToRouteCoordinate:](self, "_distanceToRouteCoordinate:", [route endRouteCoordinate]);
  v5 = v4;

  return v5;
}

- (GEOComposedRoute)route
{
  navigationSessionState = [(MNGuidanceManager *)self navigationSessionState];
  currentRouteInfo = [navigationSessionState currentRouteInfo];
  route = [currentRouteInfo route];

  return route;
}

- (void)_considerAnnouncements
{
  delegate = [(MNGuidanceManager *)self delegate];
  isCurrentlySpeaking = [delegate isCurrentlySpeaking];

  if ((isCurrentlySpeaking & 1) == 0)
  {
    delegate2 = [(MNGuidanceManager *)self delegate];
    guidanceManagerIsRerouting = [delegate2 guidanceManagerIsRerouting];

    if ((guidanceManagerIsRerouting & 1) == 0)
    {
      navigationSessionState = [(MNGuidanceManager *)self navigationSessionState];
      if ([navigationSessionState arrivalState] == 5)
      {
        location = [(MNGuidanceManager *)self location];
        routeMatch = [location routeMatch];
        step = [routeMatch step];
        transportType = [step transportType];
        route = [(MNGuidanceManager *)self route];
        transportType2 = [route transportType];

        if (transportType != transportType2)
        {
          return;
        }
      }

      else
      {
      }

      if (![(MNGuidanceManager *)self _considerStartingAnnouncements]&& ![(MNGuidanceManager *)self _considerGetOnRouteAnnouncements]&& ![(MNGuidanceManager *)self _considerChargingAnnouncements]&& ![(MNGuidanceManager *)self _considerArrivalAnnouncements]&& ![(MNGuidanceManager *)self _considerOtherSpecialAnnouncements])
      {

        [(MNGuidanceManager *)self _planAnnouncements];
      }
    }
  }
}

- (MNGuidanceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_considerStartingAnnouncements
{
  if ([(MNGuidanceManager *)self currentLegIndex]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(MNGuidanceManager *)self _specialSpokenEvents:1 forLegIndex:[(MNGuidanceManager *)self currentLegIndex]];
    firstObject = [v4 firstObject];

    if (firstObject && ![(MNGuidanceManager *)self _eventWasSpoken:firstObject])
    {
      if ([(MNGuidanceManager *)self _checkValidSpokenEventForGuidanceLevel:firstObject])
      {
        route = [(MNGuidanceManager *)self route];
        destination = [route destination];
        -[MNGuidanceManager _notifySpeechEvent:waypointCategory:startingVariantIndex:](self, "_notifySpeechEvent:waypointCategory:startingVariantIndex:", firstObject, [destination waypointCategory], 0x7FFFFFFFFFFFFFFFLL);

        v3 = 1;
LABEL_9:

        return v3;
      }

      [(MNGuidanceManager *)self _markEventSpoken:firstObject];
    }

    v3 = 0;
    goto LABEL_9;
  }

  return 0;
}

- (unint64_t)currentLegIndex
{
  navigationSessionState = [(MNGuidanceManager *)self navigationSessionState];
  if (navigationSessionState && (v4 = navigationSessionState, -[MNGuidanceManager navigationSessionState](self, "navigationSessionState"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 targetLegIndex], v5, v4, v6 != 0x7FFFFFFFFFFFFFFFLL))
  {
    navigationSessionState2 = [(MNGuidanceManager *)self navigationSessionState];
    targetLegIndex = [navigationSessionState2 targetLegIndex];
  }

  else
  {
    location = self->_location;
    if (!location)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    navigationSessionState2 = [(MNLocation *)location routeMatch];
    targetLegIndex = [navigationSessionState2 legIndex];
  }

  v10 = targetLegIndex;

  return v10;
}

- (BOOL)_considerGetOnRouteAnnouncements
{
  if ([(MNGuidanceManager *)self currentLegIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v4 = [(MNGuidanceManager *)self _specialSpokenEvents:2 forLegIndex:[(MNGuidanceManager *)self currentLegIndex]];
  firstObject = [v4 firstObject];

  if (!firstObject || [(MNGuidanceManager *)self _eventWasSpoken:firstObject])
  {
    v3 = 0;
  }

  else
  {
    [(MNGuidanceManager *)self timeSinceLastAnnouncement];
    v7 = v6;
    voiceGuidanceEnabled = [(MNAudioManager *)self->_audioManager voiceGuidanceEnabled];
    if (v7 > 0.5 || !voiceGuidanceEnabled)
    {
      delegate = [(MNGuidanceManager *)self delegate];
      navigationState = [delegate navigationState];

      if (navigationState == 1)
      {
        [(MNGuidanceManager *)self _notifySpeechEvent:firstObject waypointCategory:0 startingVariantIndex:0x7FFFFFFFFFFFFFFFLL];
      }

      else
      {
        [(MNGuidanceManager *)self _markEventSpoken:firstObject];
      }
    }

    v3 = 1;
  }

  return v3;
}

- (BOOL)_considerChargingAnnouncements
{
  if ([(MNGuidanceManager *)self currentLegIndex]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    route = [(MNGuidanceManager *)self route];
    isEVRoute = [route isEVRoute];

    if (isEVRoute)
    {
      if (self->_shouldShowChargingInfo || (-[MNGuidanceManager delegate](self, "delegate"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 navigationState], v5, v6 == 7))
      {
        v7 = [(MNGuidanceManager *)self _specialSpokenEvents:14 forLegIndex:[(MNGuidanceManager *)self currentLegIndex]];
        firstObject = [v7 firstObject];

        if (![(MNGuidanceManager *)self _eventWasSpoken:firstObject])
        {
          if (self->_shouldShowChargingInfo)
          {
            if (firstObject)
            {
              [(MNGuidanceManager *)self _notifySpeechEvent:firstObject waypointCategory:0 startingVariantIndex:0x7FFFFFFFFFFFFFFFLL];
              goto LABEL_9;
            }
          }

          else
          {
            delegate = [(MNGuidanceManager *)self delegate];
            navigationState = [delegate navigationState];

            if (navigationState != 7)
            {
              v12 = [(MNGuidanceManager *)self _specialSpokenEvents:13 forLegIndex:[(MNGuidanceManager *)self currentLegIndex]];
              firstObject2 = [v12 firstObject];

              if (firstObject2 && ![(MNGuidanceManager *)self _eventWasSpoken:firstObject2])
              {
                [(MNGuidanceManager *)self _notifySpeechEvent:firstObject2 waypointCategory:0 startingVariantIndex:0x7FFFFFFFFFFFFFFFLL];

                goto LABEL_9;
              }
            }
          }

          v9 = 0;
          goto LABEL_16;
        }

LABEL_9:
        v9 = 1;
LABEL_16:

        return v9;
      }
    }
  }

  return 0;
}

- (BOOL)_considerArrivalAnnouncements
{
  if ([(MNGuidanceManager *)self currentLegIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    LOBYTE(v3) = 0;
  }

  else if (self->_isInPreArrivalState || (v3 = [(MNGuidanceManager *)self _isInArrivalState]))
  {
    if ([(MNGuidanceManager *)self _isInArrivalState])
    {
      v4 = 11;
    }

    else
    {
      v4 = 12;
    }

    v5 = [(MNGuidanceManager *)self _specialSpokenEvents:v4 forLegIndex:[(MNGuidanceManager *)self currentLegIndex]];
    firstObject = [v5 firstObject];

    if (firstObject && ![(MNGuidanceManager *)self _eventWasSpoken:firstObject])
    {
      navigationSessionState = [(MNGuidanceManager *)self navigationSessionState];
      currentWaypoint = [navigationSessionState currentWaypoint];

      -[MNGuidanceManager _notifySpeechEvent:waypointCategory:startingVariantIndex:](self, "_notifySpeechEvent:waypointCategory:startingVariantIndex:", firstObject, [currentWaypoint waypointCategory], 0x7FFFFFFFFFFFFFFFLL);
    }

    LOBYTE(v3) = 1;
  }

  return v3;
}

- (BOOL)_isInArrivalState
{
  delegate = [(MNGuidanceManager *)self delegate];
  if ([delegate navigationState] == 7)
  {
    v4 = 1;
  }

  else
  {
    delegate2 = [(MNGuidanceManager *)self delegate];
    v4 = [delegate2 navigationState] == 6;
  }

  return v4;
}

- (BOOL)_considerOtherSpecialAnnouncements
{
  if ([(MNGuidanceManager *)self currentLegIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  delegate = [(MNGuidanceManager *)self delegate];
  navigationState = [delegate navigationState];

  if (navigationState > 8)
  {
    return 0;
  }

  result = 1;
  if (((1 << navigationState) & 0x161) != 0)
  {
    return result;
  }

  if (((1 << navigationState) & 0x1A) == 0)
  {
    *&self->_hasBeenOnRouteOnce = 257;
    return 0;
  }

  v6 = [(MNGuidanceManager *)self _specialSpokenEvents:3 forLegIndex:[(MNGuidanceManager *)self currentLegIndex]];
  firstObject = [v6 firstObject];

  if (firstObject && self->_hasBeenOnRouteOnce && self->_canSpeakReturnToRouteAnnouncement)
  {
    [(MNGuidanceManager *)self _notifySpeechEvent:firstObject waypointCategory:0 startingVariantIndex:0x7FFFFFFFFFFFFFFFLL];
    self->_canSpeakReturnToRouteAnnouncement = 0;
  }

  return 1;
}

- (void)_considerHaptics
{
  if (self->_preferredGuidanceLevel == 2)
  {
    event = [(MNAnnouncementPlanEvent *)self->_lastAnnouncementEvent event];
    if ([event hasHaptics])
    {
      hapticsTriggered = self->_hapticsTriggered;
      event2 = [(MNAnnouncementPlanEvent *)self->_lastAnnouncementEvent event];
      uniqueID = [event2 uniqueID];
      v7 = [(NSMutableDictionary *)hapticsTriggered objectForKey:uniqueID];

      if (!v7)
      {
        event3 = [(MNAnnouncementPlanEvent *)self->_lastAnnouncementEvent event];
        goto LABEL_10;
      }
    }

    else
    {
    }

    event3 = 0;
LABEL_10:
    if (self->_nextEvent)
    {
      v15 = event3;
      [(MNGuidanceManager *)self timeUntilNextAnnouncement];
      v9 = v15;
      v11 = v10;
      if (!v15)
      {
        hasHaptics = [(GEOComposedGuidanceEvent *)self->_nextEvent hasHaptics];
        v9 = 0;
        if (hasHaptics)
        {
          if (v11 <= 2.0)
          {
            v9 = self->_nextEvent;
          }
        }
      }

      v16 = v9;
      if ([(GEOComposedGuidanceEvent *)self->_nextEvent hasHaptics])
      {
        v13 = 5;
      }

      else
      {
        v13 = 3;
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained guidanceManager:self willAnnounce:v13 inSeconds:v11];

      event3 = v16;
      if (!v16)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v11 = 0.0;
      if (!event3)
      {
        goto LABEL_20;
      }
    }

    v17 = event3;
    [(MNGuidanceManager *)self _triggerHapticsForEvent:event3 timeUntilAnnouncement:v11];
    event3 = v17;
LABEL_20:

    return;
  }

  [(MNGuidanceManager *)self _considerHapticsWithNoGuidance];
}

- (void)_considerLaneGuidance
{
  v44[1] = *MEMORY[0x1E69E9840];
  _nextLaneGuidanceEvent = [(MNGuidanceManager *)self _nextLaneGuidanceEvent];
  v4 = _nextLaneGuidanceEvent;
  if (_nextLaneGuidanceEvent)
  {
    -[MNGuidanceManager _distanceToRouteCoordinate:](self, "_distanceToRouteCoordinate:", [_nextLaneGuidanceEvent coordinateForDistanceStrings]);
    v6 = v5;
    -[MNGuidanceManager _distanceToRouteCoordinate:](self, "_distanceToRouteCoordinate:", [v4 endValidRouteCoordinate]);
    v8 = v7;
    navigationSessionState = [(MNGuidanceManager *)self navigationSessionState];
    currentWaypoint = [navigationSessionState currentWaypoint];
    v44[0] = currentWaypoint;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
    v39 = [(MNGuidanceManager *)self _serverStringDictionaryForEvent:v4 distance:0 validDistance:v11 spoken:v6 waypoints:v8];

    uniqueID = [v4 uniqueID];
    LODWORD(v11) = [(MNGuidanceManager *)self _indexForEventUUID:uniqueID];

    v13 = [MNGuidanceLaneInfo alloc];
    uniqueID2 = [v4 uniqueID];
    isLaneGuidanceForManeuver = [v4 isLaneGuidanceForManeuver];
    lanes = [v4 lanes];
    laneTitles = [v4 laneTitles];
    laneInstructions = [v4 laneInstructions];
    v19 = [v39 objectForKeyedSubscript:@"{fromOrigin}"];
    LODWORD(v38) = v11;
    v20 = [(MNGuidanceLaneInfo *)v13 initWithID:uniqueID2 isForManeuver:isLaneGuidanceForManeuver lanes:lanes titles:laneTitles instructions:laneInstructions variableOverrides:v19 distanceDetailLevel:0 composedGuidanceEventIndex:v38];

    primaryLaneStrings = [v4 primaryLaneStrings];
    v22 = [(MNGuidanceManager *)self _evaluatedStringsForEvent:v4 signStrings:primaryLaneStrings shouldUpdateFormatStrings:1 argumentHandler:0];
    [(MNGuidanceLaneInfo *)v20 setPrimaryStrings:v22];

    secondaryLaneStrings = [v4 secondaryLaneStrings];
    v24 = [(MNGuidanceManager *)self _evaluatedStringsForEvent:v4 signStrings:secondaryLaneStrings shouldUpdateFormatStrings:1 argumentHandler:0];
    [(MNGuidanceLaneInfo *)v20 setSecondaryStrings:v24];

    isInPreArrivalState = self->_isInPreArrivalState;
    if (self->_currentLaneGuidanceEvent)
    {
      if (!self->_isInPreArrivalState)
      {
        v26 = MNGetMNGuidanceManagerLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v43 = v4;
          v27 = "ⓖ Replacing lane guidance with: %@";
LABEL_14:
          _os_log_impl(&dword_1D311E000, v26, OS_LOG_TYPE_INFO, v27, buf, 0xCu);
          goto LABEL_15;
        }

        goto LABEL_15;
      }
    }

    else if (!self->_isInPreArrivalState)
    {
      v26 = MNGetMNGuidanceManagerLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v43 = v4;
        v27 = "ⓖ Adding lane guidance: %@";
        goto LABEL_14;
      }

LABEL_15:

      objc_storeStrong(&self->_currentLaneGuidanceEvent, v4);
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained guidanceManager:self showLaneDirections:v20];
    }

    v41 = v4;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
    goto LABEL_17;
  }

  if (self->_currentLaneGuidanceEvent)
  {
    v28 = MNGetMNGuidanceManagerLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      currentLaneGuidanceEvent = self->_currentLaneGuidanceEvent;
      *buf = 138412290;
      v43 = currentLaneGuidanceEvent;
      _os_log_impl(&dword_1D311E000, v28, OS_LOG_TYPE_INFO, "ⓖ Removing lane guidance: %@", buf, 0xCu);
    }

    v30 = objc_loadWeakRetained(&self->_delegate);
    uniqueID3 = [(GEOComposedGuidanceEvent *)self->_currentLaneGuidanceEvent uniqueID];
    [v30 guidanceManager:self hideLaneDirectionsForId:uniqueID3];

    v32 = self->_currentLaneGuidanceEvent;
    self->_currentLaneGuidanceEvent = 0;
  }

  v20 = 0;
  v33 = 0;
LABEL_17:
  if (!self->_previousLaneGuidanceEvent)
  {
    [(MNGuidanceManager *)self _notifyAnalyticsForNewEvents:v33 previousEvents:0];
    if (!v4)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  previousLaneGuidanceEvent = self->_previousLaneGuidanceEvent;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&previousLaneGuidanceEvent count:1];
  [(MNGuidanceManager *)self _notifyAnalyticsForNewEvents:v33 previousEvents:v35];

  if (v4)
  {
LABEL_19:
  }

LABEL_20:
  v36 = self->_previousLaneGuidanceEvent;
  self->_previousLaneGuidanceEvent = v4;

  v37 = *MEMORY[0x1E69E9840];
}

- (id)_nextLaneGuidanceEvent
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_validEvents;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        lanes = [v6 lanes];
        v8 = [lanes count];

        if (v8)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)_considerSignGuidance
{
  v35 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v3 = [(MNGuidanceManager *)self _validEventsForSignGuidance:&v32];
  if ([v3 count])
  {
    v4 = [(MNGuidanceManager *)self _sortedSignEventsFromValidSignEvents:v3];
    if (![v4 count])
    {
LABEL_16:

      goto LABEL_17;
    }

    primarySign = [(MNGuidanceSignInfo *)self->_signInfo primarySign];
    uniqueID = [primarySign uniqueID];

    secondarySign = [(MNGuidanceSignInfo *)self->_signInfo secondarySign];
    uniqueID2 = [secondarySign uniqueID];

    v31 = 0.0;
    if ([v4 count])
    {
      v8 = [v4 objectAtIndexedSubscript:0];
      stepIndex = [v8 stepIndex];
      v10 = [(MNGuidanceManager *)self _signForGuidanceEvent:v8 isPrimary:1 shouldOverridePrimaryDistances:v32 distance:&v31];
    }

    else
    {
      v10 = 0;
      stepIndex = 0x7FFFFFFFFFFFFFFFLL;
    }

    v30 = 0.0;
    v11 = 0;
    if ([v4 count] >= 2)
    {
      v12 = [v4 objectAtIndexedSubscript:1];
      v11 = [(MNGuidanceManager *)self _signForGuidanceEvent:v12 isPrimary:0 shouldOverridePrimaryDistances:v32 distance:&v30];
    }

    v13 = [MNGuidanceSignInfo alloc];
    v14 = [(MNGuidanceSignInfo *)v13 initWithPrimarySign:v10 secondarySign:v11 stepIndex:stepIndex primaryDistance:v31 secondaryDistance:v30 timeUntilPrimarySign:v31 / self->_speed timeUntilSecondarySign:v30 / self->_speed];
    signInfo = self->_signInfo;
    self->_signInfo = v14;

    primarySign2 = [(MNGuidanceSignInfo *)self->_signInfo primarySign];
    uniqueID3 = [primarySign2 uniqueID];
    if ([MNComparison isValue:uniqueID equalTo:uniqueID3])
    {
      [(MNGuidanceSignInfo *)self->_signInfo secondarySign];
      v28 = v11;
      v18 = v10;
      v19 = v3;
      v21 = v20 = uniqueID2;
      uniqueID4 = [v21 uniqueID];
      v23 = [MNComparison isValue:v20 equalTo:uniqueID4];

      uniqueID2 = v20;
      v3 = v19;
      v10 = v18;
      v11 = v28;

      if (v23)
      {
LABEL_15:
        [(MNGuidanceManager *)self _notifyAnalyticsForNewEvents:v4 previousEvents:self->_previousSignEvents];
        objc_storeStrong(&self->_previousSignEvents, v4);
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained guidanceManager:self updateSignsWithInfo:self->_signInfo];

        goto LABEL_16;
      }
    }

    else
    {
    }

    v24 = MNGetMNGuidanceManagerLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = self->_signInfo;
      *buf = 138412290;
      v34 = v25;
      _os_log_impl(&dword_1D311E000, v24, OS_LOG_TYPE_INFO, "ⓖ New sign guidance: %@", buf, 0xCu);
    }

    goto LABEL_15;
  }

LABEL_17:

  v27 = *MEMORY[0x1E69E9840];
}

- (void)_considerNavTrayGuidance
{
  v20 = *MEMORY[0x1E69E9840];
  navigationSessionState = [(MNGuidanceManager *)self navigationSessionState];
  navigationState = [navigationSessionState navigationState];

  if (navigationState == 7)
  {
    navigationSessionState2 = [(MNGuidanceManager *)self navigationSessionState];
    v6 = -[MNGuidanceManager _specialNavTrayEvents:forLeg:](self, "_specialNavTrayEvents:forLeg:", 14, [navigationSessionState2 targetLegIndex]);

    if ([v6 count] >= 2)
    {
      v7 = MNGetMNGuidanceManagerLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v18 = 138412290;
        v19 = @"CHARGING_AT_STATION";
        _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "Found multiple nav tray guidance events for guidance event type '%@'. This is a Routing error. Using the first one found.", &v18, 0xCu);
      }
    }

    firstObject = [v6 firstObject];
    uniqueID = [(GEOComposedGuidanceEvent *)self->_activeNavTrayGuidanceEvent uniqueID];
    uniqueID2 = [firstObject uniqueID];
    v11 = uniqueID;
    v12 = uniqueID2;
    if (v11 | v12)
    {
      v13 = v12;
      v14 = [v11 isEqual:v12];

      if ((v14 & 1) == 0)
      {
        objc_storeStrong(&self->_activeNavTrayGuidanceEvent, firstObject);
        if (firstObject)
        {
          v15 = [[MNNavTrayGuidanceEvent alloc] initWithGuidanceEvent:firstObject];
        }

        else
        {
          v15 = 0;
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained guidanceManager:self didUpdateNavTrayGuidance:v15];
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_considerPersistence
{
  _hasPersistentEvents = [(MNGuidanceManager *)self _hasPersistentEvents];
  if (self->_hasPersistentEvents != _hasPersistentEvents)
  {
    self->_hasPersistentEvents = _hasPersistentEvents;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained guidanceManager:self usePersistentDisplay:self->_hasPersistentEvents];
  }
}

- (BOOL)_hasPersistentEvents
{
  v26 = *MEMORY[0x1E69E9840];
  if (self->_preferredGuidanceLevel == 2)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    composedGuidanceEvents = self->_validEvents;
    v4 = [(NSMutableArray *)composedGuidanceEvents countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v4)
    {
      v5 = *v21;
LABEL_4:
      v6 = 0;
      while (1)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(composedGuidanceEvents);
        }

        if ([*(*(&v20 + 1) + 8 * v6) isSticky])
        {
          break;
        }

        if (v4 == ++v6)
        {
          v4 = [(NSMutableArray *)composedGuidanceEvents countByEnumeratingWithState:&v20 objects:v25 count:16];
          if (v4)
          {
            goto LABEL_4;
          }

          goto LABEL_22;
        }
      }

LABEL_21:
      LOBYTE(v4) = 1;
    }
  }

  else
  {
    routeMatch = [(MNLocation *)self->_location routeMatch];
    [routeMatch routeCoordinate];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    route = [(MNGuidanceManager *)self route];
    composedGuidanceEvents = [route composedGuidanceEvents];

    v9 = [(NSMutableArray *)composedGuidanceEvents countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
LABEL_13:
      v12 = 0;
      while (1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(composedGuidanceEvents);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        if ([v13 isSticky])
        {
          [v13 startValidRouteCoordinate];
          [v13 endValidRouteCoordinate];
          if (GEOPolylineCoordinateWithinRange())
          {
            goto LABEL_21;
          }
        }

        if (v10 == ++v12)
        {
          v10 = [(NSMutableArray *)composedGuidanceEvents countByEnumeratingWithState:&v16 objects:v24 count:16];
          if (v10)
          {
            goto LABEL_13;
          }

          break;
        }
      }
    }

    LOBYTE(v4) = 0;
  }

LABEL_22:

  v14 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)_considerJunctionViewGuidance
{
  v35 = *MEMORY[0x1E69E9840];
  _nextJunctionViewGuidanceEvent = [(MNGuidanceManager *)self _nextJunctionViewGuidanceEvent];
  v4 = _nextJunctionViewGuidanceEvent;
  if (_nextJunctionViewGuidanceEvent)
  {
    uniqueID = [_nextJunctionViewGuidanceEvent uniqueID];
    uniqueID2 = [(GEOComposedGuidanceEvent *)self->_currentJunctionViewGuidanceEvent uniqueID];
    if ([uniqueID isEqual:uniqueID2])
    {
    }

    else
    {
      uniqueID3 = [v4 uniqueID];
      uniqueID4 = [(GEOComposedGuidanceEvent *)self->_pendingJunctionViewGuidanceEvent uniqueID];
      v12 = [uniqueID3 isEqual:uniqueID4];

      if ((v12 & 1) == 0)
      {
        v13 = MNGetMNGuidanceManagerLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          uniqueID5 = [(GEOComposedGuidanceEvent *)self->_currentJunctionViewGuidanceEvent uniqueID];
          uniqueID6 = [(GEOComposedGuidanceEvent *)self->_pendingJunctionViewGuidanceEvent uniqueID];
          *buf = 138412802;
          v30 = v4;
          v31 = 2112;
          v32 = uniqueID5;
          v33 = 2112;
          v34 = uniqueID6;
          _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_INFO, "ⓖ Requesting new junction view: %@ | previous: %@ | pending: %@", buf, 0x20u);
        }

        objc_storeStrong(&self->_pendingJunctionViewGuidanceEvent, v4);
        objc_initWeak(buf, self);
        junctionViewImageLoader = self->_junctionViewImageLoader;
        junctionView = [v4 junctionView];
        uniqueID7 = [v4 uniqueID];
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __50__MNGuidanceManager__considerJunctionViewGuidance__block_invoke;
        v26[3] = &unk_1E842B4F0;
        objc_copyWeak(&v27, buf);
        [(MNJunctionViewImageLoader *)junctionViewImageLoader imagesForJunctionView:junctionView eventID:uniqueID7 handler:v26];

        objc_destroyWeak(&v27);
        objc_destroyWeak(buf);
      }
    }
  }

  else
  {
    if (self->_currentJunctionViewGuidanceEvent)
    {
      v7 = MNGetMNGuidanceManagerLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        uniqueID8 = [(GEOComposedGuidanceEvent *)self->_currentJunctionViewGuidanceEvent uniqueID];
        *buf = 138412290;
        v30 = uniqueID8;
        _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_INFO, "ⓖ Removing displayed junction view: %@", buf, 0xCu);
      }

      if (self->_currentJunctionViewGuidanceEvent)
      {
        currentJunctionViewGuidanceEvent = self->_currentJunctionViewGuidanceEvent;
        v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&currentJunctionViewGuidanceEvent count:1];
        [(MNGuidanceManager *)self _notifyAnalyticsForNewEvents:0 previousEvents:v9];
      }

      else
      {
        [(MNGuidanceManager *)self _notifyAnalyticsForNewEvents:0 previousEvents:0];
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      uniqueID9 = [(GEOComposedGuidanceEvent *)self->_currentJunctionViewGuidanceEvent uniqueID];
      [WeakRetained guidanceManager:self hideJunctionViewForId:uniqueID9];

      v21 = self->_currentJunctionViewGuidanceEvent;
      self->_currentJunctionViewGuidanceEvent = 0;
    }

    if (self->_pendingJunctionViewGuidanceEvent)
    {
      v22 = MNGetMNGuidanceManagerLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        uniqueID10 = [(GEOComposedGuidanceEvent *)self->_pendingJunctionViewGuidanceEvent uniqueID];
        *buf = 138412290;
        v30 = uniqueID10;
        _os_log_impl(&dword_1D311E000, v22, OS_LOG_TYPE_INFO, "ⓖ Removing pending junction view: %@", buf, 0xCu);
      }

      pendingJunctionViewGuidanceEvent = self->_pendingJunctionViewGuidanceEvent;
      self->_pendingJunctionViewGuidanceEvent = 0;
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (id)_nextJunctionViewGuidanceEvent
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_validEvents;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        junctionView = [v6 junctionView];

        if (junctionView)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)_considerARGuidance
{
  v25 = *MEMORY[0x1E69E9840];
  _validEventsForARGuidance = [(MNGuidanceManager *)self _validEventsForARGuidance];
  if ([_validEventsForARGuidance count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = _validEventsForARGuidance;
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        v9 = 0;
        do
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v18 + 1) + 8 * v9);
          route = [(MNGuidanceManager *)self route];
          v12 = [route stepAtIndex:{objc_msgSend(v10, "stepIndex")}];

          v13 = [(MNGuidanceManager *)self _createArGuidanceInfosForEvent:v10 forStep:v12];
          [array addObjectsFromArray:v13];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v7);
    }

    if (![MNComparison isValue:array equalTo:self->_arEvents])
    {
      v14 = MNGetMNGuidanceManagerLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [array valueForKey:@"debugDescription"];
        *buf = 138412290;
        v23 = v15;
        _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_INFO, "ⓖ New ar guidance events: %@", buf, 0xCu);
      }
    }

    if ([array count])
    {
      objc_storeStrong(&self->_arEvents, array);
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained guidanceManager:self updateSignsWithARInfo:self->_arEvents];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)_validEventsForARGuidance
{
  v71 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{-[NSMutableArray count](self->_validEvents, "count")}];
  routeMatch = [(MNLocation *)self->_location routeMatch];
  stepIndex = [routeMatch stepIndex];

  UInteger = GEOConfigGetUInteger();
  delegate = [(MNGuidanceManager *)self delegate];
  navigationState = [delegate navigationState];

  if (navigationState <= 8)
  {
    if (((1 << navigationState) & 0x11A) != 0)
    {
      if (stepIndex > 1 || self->_hasBeenOnRouteOnce)
      {
        v9 = UInteger + stepIndex;
        route = [(MNGuidanceManager *)self route];
        v11 = [route stepsCount] - 1;

        if (v9 >= v11)
        {
          v12 = [(MNGuidanceManager *)self _arrivalARGuidanceEventsForLeg:[(MNGuidanceManager *)self currentLegIndex]];
          [v3 addObjectsFromArray:v12];
        }

        routeMatch2 = [(MNLocation *)self->_location routeMatch];
        v14 = -[MNGuidanceManager _closestContinueAREventToRouteCoordinate:](self, "_closestContinueAREventToRouteCoordinate:", [routeMatch2 routeCoordinate]);

        if (v14)
        {
          [v3 addObject:v14];
        }

        goto LABEL_34;
      }

      v15 = [(MNGuidanceManager *)self _specialAREvents:1 forLeg:[(MNGuidanceManager *)self currentLegIndex]];
      route2 = [(MNGuidanceManager *)self route];
      if ([route2 stepsCount] <= 1)
      {
      }

      else
      {
        routeMatch3 = [(MNLocation *)self->_location routeMatch];
        [routeMatch3 distanceFromRoute];
        v19 = v18;
        GEOConfigGetDouble();
        v21 = v20;

        if (v19 < v21)
        {
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v22 = v15;
          v23 = [v22 countByEnumeratingWithState:&v59 objects:v69 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v60;
            while (2)
            {
              for (i = 0; i != v24; ++i)
              {
                if (*v60 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = *(*(&v59 + 1) + 8 * i);
                if ([v27 arType] == 1)
                {
                  [v3 addObject:v27];
                  goto LABEL_50;
                }
              }

              v24 = [v22 countByEnumeratingWithState:&v59 objects:v69 count:16];
              if (v24)
              {
                continue;
              }

              break;
            }
          }

LABEL_50:

          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v40 = self->_events;
          v46 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v55 objects:v68 count:16];
          if (v46)
          {
            v47 = v46;
            v48 = *v56;
            do
            {
              for (j = 0; j != v47; ++j)
              {
                if (*v56 != v48)
                {
                  objc_enumerationMutation(v40);
                }

                v50 = *(*(&v55 + 1) + 8 * j);
                if ([v50 stepIndex] == 1 && objc_msgSend(v50, "hasArGuidance") && objc_msgSend(v50, "arType") == 2)
                {
                  [v3 addObject:v50];
                }
              }

              v47 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v55 objects:v68 count:16];
            }

            while (v47);
          }

LABEL_61:

          goto LABEL_35;
        }
      }

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v40 = v15;
      v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v51 objects:v67 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v52;
        while (2)
        {
          for (k = 0; k != v42; ++k)
          {
            if (*v52 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = *(*(&v51 + 1) + 8 * k);
            if ([v45 arType] == 2)
            {
              [v3 addObject:v45];
              goto LABEL_61;
            }
          }

          v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v51 objects:v67 count:16];
          if (v42)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_61;
    }

    if (navigationState != 2)
    {
      if (navigationState != 6)
      {
        goto LABEL_35;
      }

LABEL_33:
      v14 = [(MNGuidanceManager *)self _arrivalARGuidanceEventsForLeg:[(MNGuidanceManager *)self currentLegIndex]];
      [v3 addObjectsFromArray:v14];
LABEL_34:

      goto LABEL_35;
    }

    self->_hasBeenOnRouteOnce = 1;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v28 = self->_validEvents;
    v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v63 objects:v70 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v64;
      do
      {
        for (m = 0; m != v30; ++m)
        {
          if (*v64 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v63 + 1) + 8 * m);
          if ([v33 hasArGuidance])
          {
            [v3 addObject:v33];
          }
        }

        v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v63 objects:v70 count:16];
      }

      while (v30);
    }

    v34 = UInteger + stepIndex;
    route3 = [(MNGuidanceManager *)self route];
    v36 = [route3 stepsCount] - 1;

    if (v34 >= v36)
    {
      goto LABEL_33;
    }
  }

LABEL_35:
  array = [v3 array];

  v38 = *MEMORY[0x1E69E9840];

  return array;
}

- (unint64_t)_trafficColorForRoute:(id)route routeCoordinate:(id)coordinate
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  traffic = [route traffic];
  routeTrafficColors = [traffic routeTrafficColors];

  v6 = [routeTrafficColors countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    color = 4;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(routeTrafficColors);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      [v11 routeCoordinate];
      if (GEOPolylineCoordinateIsABeforeB())
      {
        break;
      }

      color = [v11 color];
      if (v7 == ++v10)
      {
        v7 = [routeTrafficColors countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    color = 4;
  }

  v12 = *MEMORY[0x1E69E9840];
  return color;
}

- (void)_notifyAnalyticsForNewEvents:(id)events previousEvents:(id)previousEvents
{
  v61 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  previousEventsCopy = previousEvents;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v7 = [eventsCopy countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v56;
    v50 = *v56;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v56 != v9)
        {
          objc_enumerationMutation(eventsCopy);
        }

        v11 = *(*(&v55 + 1) + 8 * i);
        feedback = self->_feedback;
        uniqueID = [v11 uniqueID];
        v14 = [(NSMutableDictionary *)feedback objectForKey:uniqueID];

        if (!v14)
        {
          v15 = [[MNGuidanceEventFeedback alloc] initWithEvent:v11];
          [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
          [(MNGuidanceEventFeedback *)v15 setStartTime:?];
          stepID = [v11 stepID];
          routeMatch = [(MNLocation *)self->_location routeMatch];
          step = [routeMatch step];
          stepID2 = [step stepID];

          if (stepID == stepID2)
          {
            [(MNGuidanceManager *)self _distanceToManeuverStart];
            [(MNGuidanceEventFeedback *)v15 setStartDistance:?];
          }

          [(MNLocation *)self->_location speed];
          [(MNGuidanceEventFeedback *)v15 setVehicleSpeed:?];
          route = [(MNGuidanceManager *)self route];
          routeMatch2 = [(MNLocation *)self->_location routeMatch];
          -[MNGuidanceEventFeedback setTrafficColor:](v15, "setTrafficColor:", -[MNGuidanceManager _trafficColorForRoute:routeCoordinate:](self, "_trafficColorForRoute:routeCoordinate:", route, [routeMatch2 routeCoordinate]));

          if ([v11 hasSpokenGuidance])
          {
            [(MNGuidanceEventFeedback *)v15 setSelectedPrimaryStringIndex:[(MNAnnouncementPlanEvent *)self->_lastAnnouncementEvent variantIndex]];
          }

          if ([v11 hasJunctionView])
          {
            junctionView = [v11 junctionView];
            imageIds = [junctionView imageIds];
            v24 = [imageIds copy];
            [(MNGuidanceEventFeedback *)v15 setJunctionViewImageIDs:v24];
          }

          if ([v11 source] == 3)
          {
            enrouteNoticeIndex = [v11 enrouteNoticeIndex];
            route2 = [(MNGuidanceManager *)self route];
            enrouteNotices = [route2 enrouteNotices];
            v28 = [enrouteNotices count];

            if (enrouteNoticeIndex < v28)
            {
              route3 = [(MNGuidanceManager *)self route];
              enrouteNotices2 = [route3 enrouteNotices];
              v31 = [enrouteNotices2 objectAtIndexedSubscript:{objc_msgSend(v11, "enrouteNoticeIndex")}];

              trafficCamera = [v31 trafficCamera];
              v33 = trafficCamera;
              if (trafficCamera)
              {
                identifier = [trafficCamera identifier];
                [(MNGuidanceEventFeedback *)v15 setEnrouteNoticeIdentifier:identifier];

                -[MNGuidanceEventFeedback setTrafficCameraType:](v15, "setTrafficCameraType:", [v33 type]);
              }
            }
          }

          v35 = self->_feedback;
          uniqueID2 = [v11 uniqueID];
          [(NSMutableDictionary *)v35 setObject:v15 forKeyedSubscript:uniqueID2];

          delegate = [(MNGuidanceManager *)self delegate];
          [delegate guidanceManager:self newGuidanceEventFeedback:v15];

          v9 = v50;
        }
      }

      v8 = [eventsCopy countByEnumeratingWithState:&v55 objects:v60 count:16];
    }

    while (v8);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v38 = previousEventsCopy;
  v39 = [v38 countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v52;
    do
    {
      for (j = 0; j != v40; ++j)
      {
        if (*v52 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v51 + 1) + 8 * j);
        if (([eventsCopy containsObject:v43] & 1) == 0)
        {
          v44 = self->_feedback;
          uniqueID3 = [v43 uniqueID];
          v46 = [(NSMutableDictionary *)v44 objectForKeyedSubscript:uniqueID3];

          if (v46)
          {
            [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
            [v46 setEndTime:?];
            [(MNGuidanceManager *)self _distanceToManeuverStart];
            [v46 setEndDistance:?];
            delegate2 = [(MNGuidanceManager *)self delegate];
            [delegate2 guidanceManager:self updatedGuidanceEventFeedback:v46];
          }
        }
      }

      v40 = [v38 countByEnumeratingWithState:&v51 objects:v59 count:16];
    }

    while (v40);
  }

  v48 = *MEMORY[0x1E69E9840];
}

- (double)durationOfEvent:(id)event announcementIndex:(unint64_t)index distance:(double)distance
{
  v31[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  announcements = [eventCopy announcements];
  v10 = [announcements count];

  if (v10)
  {
    v11 = MEMORY[0x1E695DF20];
    [eventCopy distanceForStrings];
    v13 = fmax(distance - v12, 0.0);
    [eventCopy endValidDistance];
    v15 = fmax(distance - v14, 0.0);
    route = [(MNGuidanceManager *)self route];
    destination = [route destination];
    v31[0] = destination;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
    navigationSessionState = [(MNGuidanceManager *)self navigationSessionState];
    currentWaypoint = [navigationSessionState currentWaypoint];
    v21 = [v11 _navigation_serverStringDictionaryForDistance:v18 validDistance:currentWaypoint waypoints:-[MNGuidanceManager currentLegIndex](self currentDestination:"currentLegIndex") legIndex:1 spoken:0 useDisplayName:{v13, v15}];

    v30 = 1;
    v22 = MEMORY[0x1E696AEC0];
    announcements2 = [eventCopy announcements];
    v24 = [announcements2 objectAtIndexedSubscript:index];
    v25 = [v22 _navigation_stringForServerFormattedString:v24 abbreviatedUnits:0 detail:1 spoken:1 wrappedOverrideVariables:v21 allTokensExpanded:&v30];

    if (v30 == 1)
    {
      [(MNAudioManager *)self->_audioManager durationOf:v25];
      v27 = v26;
    }

    else
    {
      v27 = 978307200.0;
    }
  }

  else
  {
    v27 = 978307200.0;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

- (double)_distanceToManeuverStart
{
  routeMatch = [(MNLocation *)self->_location routeMatch];
  step = [routeMatch step];
  -[MNGuidanceManager _distanceToRouteCoordinate:](self, "_distanceToRouteCoordinate:", [step maneuverStartRouteCoordinate]);
  v6 = v5;

  return v6;
}

- (double)_distanceToRouteCoordinate:(id)coordinate
{
  route = [(MNGuidanceManager *)self route];
  routeMatch = [(MNLocation *)self->_location routeMatch];
  [route distanceBetweenRouteCoordinate:objc_msgSend(routeMatch andRouteCoordinate:{"routeCoordinate"), coordinate}];
  v8 = v7;

  return fmax(v8, 0.0);
}

- (double)_timeUntilEventTrigger:(id)trigger
{
  triggerCopy = trigger;
  speed = self->_speed;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __44__MNGuidanceManager__timeUntilEventTrigger___block_invoke;
  v15 = &unk_1E842B518;
  selfCopy = self;
  v17 = triggerCopy;
  v6 = triggerCopy;
  [v6 triggerDistanceForSpeed:&v12 andDuration:speed];
  v8 = v7;
  [(MNGuidanceManager *)self _distanceToEndOfRoute:v12];
  v10 = (v9 - v8) / self->_speed;

  return v10;
}

uint64_t __44__MNGuidanceManager__timeUntilEventTrigger___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  [v1 _distanceToEndOfRoute];

  return [v1 durationOfEvent:v2 announcementIndex:0 distance:?];
}

- (double)timeUntilNextAnnouncement
{
  if (!self->_nextEvent)
  {
    return 1.79769313e308;
  }

  [(MNGuidanceManager *)self _timeUntilEventTrigger:?];
  return fmax(v2, 0.0);
}

- (double)_timeRemainingForEvent:(id)event
{
  eventCopy = event;
  composedGuidanceEventType = [eventCopy composedGuidanceEventType];
  if (composedGuidanceEventType > 0xB || ((1 << composedGuidanceEventType) & 0x80E) == 0)
  {
    [eventCopy endDistanceForSpeed:self->_speed];
    v10 = v9;
    [(MNGuidanceManager *)self _distanceToEndOfRoute];
    v7 = fmax(v11 - v10, 0.0) / self->_speed;
  }

  else
  {
    v7 = 1.79769313e308;
  }

  return v7;
}

- (int)_indexForEventUUID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (!self->_eventIndexes)
  {
    v8 = objc_opt_new();
    route = [(MNGuidanceManager *)self route];
    composedGuidanceEvents = [route composedGuidanceEvents];

    if ([composedGuidanceEvents count])
    {
      v11 = 0;
      do
      {
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
        v13 = [composedGuidanceEvents objectAtIndexedSubscript:v11];
        uniqueID = [v13 uniqueID];
        [(NSDictionary *)v8 setObject:v12 forKeyedSubscript:uniqueID];

        ++v11;
      }

      while (v11 < [composedGuidanceEvents count]);
    }

    eventIndexes = self->_eventIndexes;
    self->_eventIndexes = v8;

    if (v5)
    {
      goto LABEL_3;
    }

LABEL_8:
    intValue = 0;
    goto LABEL_9;
  }

  if (!dCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  v6 = [(NSDictionary *)self->_eventIndexes objectForKeyedSubscript:v5];
  intValue = [v6 intValue];

LABEL_9:
  return intValue;
}

- (BOOL)_isEVChargingEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy composedGuidanceEventType] - 13 > 1)
  {
    v9 = 0;
  }

  else
  {
    route = [(MNGuidanceManager *)self route];
    legs = [route legs];
    v7 = [legs objectAtIndexedSubscript:{objc_msgSend(eventCopy, "legIndex")}];

    chargingStationInfo = [v7 chargingStationInfo];
    v9 = chargingStationInfo != 0;
  }

  return v9;
}

- (BOOL)_isValidEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy isSpecial])
  {
    goto LABEL_10;
  }

  routeMatch = [(MNLocation *)self->_location routeMatch];
  isGoodMatch = [routeMatch isGoodMatch];

  if (!isGoodMatch)
  {
    goto LABEL_10;
  }

  delegate = [(MNGuidanceManager *)self delegate];
  navigationState = [delegate navigationState];

  if (navigationState != 2)
  {
    goto LABEL_10;
  }

  [(MNLocation *)self->_location speed];
  if (v9 >= 0.0)
  {
    [(MNLocation *)self->_location speed];
    if (![eventCopy isValidForSpeed:?])
    {
      goto LABEL_10;
    }
  }

  routeMatch2 = [(MNLocation *)self->_location routeMatch];
  [routeMatch2 routeCoordinate];

  if (![eventCopy hasArGuidance])
  {
    routeMatch3 = [(MNLocation *)self->_location routeMatch];
    step = [routeMatch3 step];

    if (step)
    {
      [step routeCoordinateRange];
      GEOPolylineCoordinateIsABeforeB();
      GEOPolylineCoordinateIsABeforeB();
      GEOPolylineCoordinateIsABeforeB();
    }

    [eventCopy startValidRouteCoordinate];
    [eventCopy endValidRouteCoordinate];
    v17 = GEOPolylineCoordinateWithinRange();

    if (!v17)
    {
      goto LABEL_10;
    }

LABEL_14:
    v14 = [(MNGuidanceManager *)self _checkValidSpokenEventForGuidanceLevel:eventCopy];
    goto LABEL_15;
  }

  route = [(MNGuidanceManager *)self route];
  GEOConfigGetDouble();
  [route routeCoordinateForDistance:objc_msgSend(eventCopy beforeRouteCoordinate:{"startValidRouteCoordinate"), v12}];

  legIndex = [eventCopy legIndex];
  if (legIndex == [(MNGuidanceManager *)self currentLegIndex])
  {
    if (GEOPolylineCoordinateIsABeforeOrEqualToB())
    {
      [eventCopy endValidRouteCoordinate];
      if (GEOPolylineCoordinateIsABeforeB())
      {
        goto LABEL_14;
      }
    }
  }

LABEL_10:
  v14 = 0;
LABEL_15:

  return v14;
}

- (void)_markEventSpoken:(id)spoken
{
  spokenCopy = spoken;
  if (spokenCopy)
  {
    v11 = spokenCopy;
    exclusiveSetIdentifier = [spokenCopy exclusiveSetIdentifier];

    if (exclusiveSetIdentifier)
    {
      exclusiveSetAnnouncementsSpoken = self->_exclusiveSetAnnouncementsSpoken;
      exclusiveSetIdentifier2 = [v11 exclusiveSetIdentifier];
      [(NSMutableSet *)exclusiveSetAnnouncementsSpoken addObject:exclusiveSetIdentifier2];
    }

    v8 = +[MNTimeManager currentDate];
    announcementsSpoken = self->_announcementsSpoken;
    uniqueID = [v11 uniqueID];
    [(NSMutableDictionary *)announcementsSpoken setObject:v8 forKeyedSubscript:uniqueID];

    spokenCopy = v11;
  }
}

- (BOOL)_eventWasSpoken:(id)spoken
{
  spokenCopy = spoken;
  v5 = spokenCopy;
  if (spokenCopy)
  {
    announcementsSpoken = self->_announcementsSpoken;
    uniqueID = [spokenCopy uniqueID];
    v8 = [(NSMutableDictionary *)announcementsSpoken objectForKeyedSubscript:uniqueID];

    if (v8)
    {
      v9 = 1;
    }

    else
    {
      exclusiveSetAnnouncementsSpoken = self->_exclusiveSetAnnouncementsSpoken;
      exclusiveSetIdentifier = [v5 exclusiveSetIdentifier];
      v9 = [(NSMutableSet *)exclusiveSetAnnouncementsSpoken containsObject:exclusiveSetIdentifier];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_junctionViewEvents
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  events = [(MNGuidanceManager *)self events];
  v5 = [events countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(events);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 hasJunctionView])
        {
          [v9 startValidRouteCoordinate];
          if (GEOPolylineCoordinateIsValid())
          {
            [array addObject:v9];
          }
        }
      }

      v6 = [events countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return array;
}

- (void)_handleJunctionViewInfo:(id)info
{
  v25 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  uniqueID = [infoCopy uniqueID];
  uniqueID2 = [(GEOComposedGuidanceEvent *)self->_pendingJunctionViewGuidanceEvent uniqueID];
  v7 = [uniqueID isEqual:uniqueID2];

  v8 = MNGetMNGuidanceManagerLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v9)
    {
      uniqueID3 = [(GEOComposedGuidanceEvent *)self->_pendingJunctionViewGuidanceEvent uniqueID];
      uniqueID4 = [(GEOComposedGuidanceEvent *)self->_currentJunctionViewGuidanceEvent uniqueID];
      *buf = 138412546;
      v22 = uniqueID3;
      v23 = 2112;
      v24 = uniqueID4;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_INFO, "ⓖ Showing junction view: %@ | previous: %@", buf, 0x16u);
    }

    v8 = self->_currentJunctionViewGuidanceEvent;
    objc_storeStrong(&self->_currentJunctionViewGuidanceEvent, self->_pendingJunctionViewGuidanceEvent);
    pendingJunctionViewGuidanceEvent = self->_pendingJunctionViewGuidanceEvent;
    self->_pendingJunctionViewGuidanceEvent = 0;

    currentJunctionViewGuidanceEvent = self->_currentJunctionViewGuidanceEvent;
    if (currentJunctionViewGuidanceEvent)
    {
      v20 = self->_currentJunctionViewGuidanceEvent;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
      if (v8)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v14 = 0;
      if (v8)
      {
LABEL_6:
        v19 = v8;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
        [(MNGuidanceManager *)self _notifyAnalyticsForNewEvents:v14 previousEvents:v15];

        if (!currentJunctionViewGuidanceEvent)
        {
LABEL_8:
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained guidanceManager:self showJunctionView:infoCopy];
LABEL_11:

          goto LABEL_12;
        }

LABEL_7:

        goto LABEL_8;
      }
    }

    [(MNGuidanceManager *)self _notifyAnalyticsForNewEvents:v14 previousEvents:0];
    if (!currentJunctionViewGuidanceEvent)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v9)
  {
    WeakRetained = [infoCopy uniqueID];
    uniqueID5 = [(GEOComposedGuidanceEvent *)self->_pendingJunctionViewGuidanceEvent uniqueID];
    *buf = 138412546;
    v22 = WeakRetained;
    v23 = 2112;
    v24 = uniqueID5;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_INFO, "ⓖ Junction view info was received for request %@, but a newer junction view info was requested: %@", buf, 0x16u);

    goto LABEL_11;
  }

LABEL_12:

  v18 = *MEMORY[0x1E69E9840];
}

void __50__MNGuidanceManager__considerJunctionViewGuidance__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleJunctionViewInfo:v3];
}

- (double)_headingForArEvent:(id)event
{
  eventCopy = event;
  route = [(MNGuidanceManager *)self route];
  v6 = [route stepAtIndex:{objc_msgSend(eventCopy, "stepIndex")}];

  v7 = -1.0;
  if ([eventCopy hasArGuidance] && v6)
  {
    startRouteCoordinate = [v6 startRouteCoordinate];
    endRouteCoordinate = [v6 endRouteCoordinate];
    if ([eventCopy arType] == 2)
    {
      getNextStep = [v6 getNextStep];

      if (getNextStep)
      {
        [v6 endRouteCoordinate];
        startRouteCoordinate = GEOPolylineCoordinateNearestIndex();
        getNextStep2 = [v6 getNextStep];
        [getNextStep2 endRouteCoordinate];
        endRouteCoordinate = GEOPolylineCoordinateNearestIndex();
      }

      else
      {
        startRouteCoordinate = endRouteCoordinate - 1;
      }
    }

    GEOConfigGetDouble();
    v13 = v12;
    GEOConfigGetDouble();
    v15 = v14;
    route2 = [(MNGuidanceManager *)self route];
    [route2 courseAtRouteCoordinateIndex:startRouteCoordinate];
    v7 = v17;

    v18 = (startRouteCoordinate + 1);
    if (v18 < endRouteCoordinate)
    {
      v19 = endRouteCoordinate - startRouteCoordinate - 2;
      do
      {
        route3 = [(MNGuidanceManager *)self route];
        [route3 courseAtRouteCoordinateIndex:startRouteCoordinate];
        v7 = v21;

        route4 = [(MNGuidanceManager *)self route];
        [route4 distanceBetweenIndex:startRouteCoordinate andIndex:v18];
        v24 = v23;

        if (v24 > v15)
        {
          break;
        }

        route5 = [(MNGuidanceManager *)self route];
        [route5 courseAtRouteCoordinateIndex:v18];
        GEOAngleDifferenceDegrees();
        v27 = v26;

        ++v18;
        v28 = fabs(v27) < v13 || v19-- == 0;
        startRouteCoordinate = (startRouteCoordinate + 1);
      }

      while (!v28);
    }
  }

  return v7;
}

- (int)_maneuverTypeForAREvent:(id)event
{
  v20 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if ([eventCopy hasArGuidance])
  {
    if ([eventCopy composedGuidanceEventType] == 1)
    {
      maneuverType = 17;
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      arInstruction = [eventCopy arInstruction];
      formatTokens = [arInstruction formatTokens];

      v7 = [formatTokens countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v16;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v16 != v9)
            {
              objc_enumerationMutation(formatTokens);
            }

            v11 = *(*(&v15 + 1) + 8 * i);
            if ([v11 type] == 15)
            {
              maneuverValue = [v11 maneuverValue];
              maneuverType = [maneuverValue maneuverType];

              goto LABEL_15;
            }
          }

          v8 = [formatTokens countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      maneuverType = [eventCopy maneuverType];
    }
  }

  else
  {
    maneuverType = 0;
  }

LABEL_15:

  v13 = *MEMORY[0x1E69E9840];
  return maneuverType;
}

- (id)_arrivalARGuidanceEventsForLeg:(unint64_t)leg
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F4EE2488, &unk_1F4EE24A0, &unk_1F4EE24B8, &unk_1F4EE24D0, &unk_1F4EE24E8, 0}];
  v16 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_events;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([v11 legIndex] == leg)
        {
          if ([v11 hasArGuidance])
          {
            if ([v11 arType] == 2)
            {
              v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[MNGuidanceManager _maneuverTypeForAREvent:](self, "_maneuverTypeForAREvent:", v11)}];
              v13 = [v5 containsObject:v12];

              if (v13)
              {
                [v16 addObject:v11];
              }
            }
          }
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)_closestContinueAREventToRouteCoordinate:(id)coordinate
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_events;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        [v8 startValidRouteCoordinate];
        if (GEOPolylineCoordinateIsABeforeOrEqualToB())
        {
          [v8 endValidRouteCoordinate];
          if (GEOPolylineCoordinateIsABeforeB())
          {
            if ([v8 arType] == 1)
            {
              v9 = v8;
              goto LABEL_13;
            }
          }
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_13:

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_createArGuidanceInfosForEvent:(id)event forStep:(id)step
{
  v154[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  stepCopy = step;
  v130 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:1];
  -[MNGuidanceManager _distanceToRouteCoordinate:](self, "_distanceToRouteCoordinate:", [eventCopy coordinateForDistanceStrings]);
  v9 = fmax(v8, 0.0);
  -[MNGuidanceManager _distanceToRouteCoordinate:](self, "_distanceToRouteCoordinate:", [eventCopy endValidRouteCoordinate]);
  v11 = fmax(v10, 0.0);
  navigationSessionState = [(MNGuidanceManager *)self navigationSessionState];
  currentWaypoint = [navigationSessionState currentWaypoint];
  v154[0] = currentWaypoint;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v154 count:1];
  v129 = [(MNGuidanceManager *)self _serverStringDictionaryForEvent:eventCopy distance:0 validDistance:v14 spoken:v9 waypoints:v11];

  if ([eventCopy arType] == 1)
  {
    v15 = objc_opt_new();
    route = [(MNGuidanceManager *)self route];
    v17 = [route legIndexForStepIndex:{objc_msgSend(stepCopy, "stepIndex")}];

    route2 = [(MNGuidanceManager *)self route];
    legs = [route2 legs];
    v20 = [legs objectAtIndex:v17];
    startRouteCoordinate = [v20 startRouteCoordinate];

    gapRanges = [eventCopy gapRanges];
    v128 = stepCopy;
    v141 = v15;
    selfCopy = self;
    if (gapRanges && (v22 = gapRanges, [eventCopy gapRanges], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "count"), v23, v22, v24))
    {
      startRouteCoordinate2 = [stepCopy startRouteCoordinate];
      v146 = 0u;
      v147 = 0u;
      v148 = 0u;
      v149 = 0u;
      v126 = eventCopy;
      obj = [eventCopy gapRanges];
      v138 = [obj countByEnumeratingWithState:&v146 objects:v153 count:16];
      if (v138)
      {
        v133 = *v147;
        v26 = *MEMORY[0x1E69A1918];
        v27 = *(MEMORY[0x1E69A1918] + 4) << 32;
        do
        {
          for (i = 0; i != v138; ++i)
          {
            if (*v147 != v133)
            {
              objc_enumerationMutation(obj);
            }

            v29 = *(*(&v146 + 1) + 8 * i);
            route3 = [(MNGuidanceManager *)self route];
            [route3 routeCoordinateForDistance:startRouteCoordinate afterRouteCoordinate:{objc_msgSend(v29, "startValidDistanceOffsetCm") * 0.01}];
            v31 = GEOPolylineCoordinateNearestIndex();

            v144 = 0;
            v145 = 0;
            IsInvalid = GEOPolylineCoordinateIsInvalid();
            LODWORD(v33) = vcvtms_u32_f32(*(&startRouteCoordinate2 + 1)) + startRouteCoordinate2;
            v34 = COERCE_UNSIGNED_INT(*(&startRouteCoordinate2 + 1) - floorf(*(&startRouteCoordinate2 + 1))) << 32;
            if (IsInvalid)
            {
              v34 = v27;
              v33 = v26;
            }

            else
            {
              v33 = v33;
            }

            v35 = v34 | v33;
            v36 = GEOPolylineCoordinateIsInvalid();
            if (v36)
            {
              v37 = v26;
            }

            else
            {
              v37 = v31;
            }

            if (v36)
            {
              v38 = v27;
            }

            else
            {
              v38 = 0;
            }

            v144 = v35;
            v145 = v38 | v37;
            v39 = [MEMORY[0x1E696B098] valueWithBytes:&v144 objCType:"{GEOPolylineCoordinateRange={?=If}{?=If}}"];
            v15 = v141;
            [(MNGuidanceARInfo *)v141 addObject:v39];

            route4 = [(MNGuidanceManager *)self route];
            startRouteCoordinate2 = [route4 routeCoordinateForDistance:startRouteCoordinate afterRouteCoordinate:{objc_msgSend(v29, "endValidDistanceOffsetCm") * 0.01}];
          }

          v138 = [obj countByEnumeratingWithState:&v146 objects:v153 count:16];
        }

        while (v138);
      }

      eventCopy = v126;
    }

    else
    {
      startRouteCoordinate3 = [stepCopy startRouteCoordinate];
      [stepCopy endRouteCoordinate];
      v62 = GEOPolylineCoordinateNearestIndex();
      if (GEOPolylineCoordinateIsInvalid())
      {
        v64 = *MEMORY[0x1E69A1918];
        v63 = *(MEMORY[0x1E69A1918] + 4);
        v65 = v63;
        v66 = *MEMORY[0x1E69A1918];
      }

      else
      {
        *&v67 = *(&startRouteCoordinate3 + 1) - floorf(*(&startRouteCoordinate3 + 1));
        v66 = vcvtms_u32_f32(*(&startRouteCoordinate3 + 1)) + startRouteCoordinate3;
        v64 = *MEMORY[0x1E69A1918];
        v65 = *(MEMORY[0x1E69A1918] + 4);
        v63 = v67;
      }

      v68 = v66 | (v63 << 32);
      v69 = GEOPolylineCoordinateIsInvalid();
      v70 = v65 << 32;
      if (v69)
      {
        v71 = v64;
      }

      else
      {
        v71 = v62;
      }

      if (!v69)
      {
        v70 = 0;
      }

      v144 = v68;
      v145 = v70 | v71;
      v72 = [MEMORY[0x1E696B098] valueWithBytes:&v144 objCType:"{GEOPolylineCoordinateRange={?=If}{?=If}}"];
      [(MNGuidanceARInfo *)v15 addObject:v72];
    }

    if ([(MNGuidanceARInfo *)v15 count])
    {
      v73 = 0;
      v74 = 0;
      do
      {
        v75 = [(MNGuidanceARInfo *)v15 objectAtIndex:v74];
        v144 = 0;
        v145 = 0;
        v139 = v75;
        [v75 getValue:&v144];
        v134 = [MNGuidanceARInfo alloc];
        obja = [eventCopy uniqueID];
        arType = [eventCopy arType];
        v77 = [(MNGuidanceManager *)self _maneuverTypeForAREvent:eventCopy];
        arInstruction = [eventCopy arInstruction];
        v79 = [v129 objectForKeyedSubscript:@"{fromOrigin}"];
        [eventCopy arArrowLabel];
        v81 = v80 = v73;
        maneuverRoadName = [v128 maneuverRoadName];
        stepIndex = [v128 stepIndex];
        v84 = v77;
        v15 = v141;
        v85 = [(MNGuidanceARInfo *)v134 initWithEventID:obja type:arType maneuverType:v84 instruction:arInstruction variableOverrides:v79 arrowLabel:v81 locationCoordinateRange:v144 maneuverRoadName:v145 stepIndex:maneuverRoadName, stepIndex];

        v86 = v80;
        self = selfCopy;

        [(MNGuidanceARInfo *)v85 setPriority:[(MNGuidanceARInfo *)v141 count]+ v80];
        arInstructionString = [eventCopy arInstructionString];

        if (arInstructionString)
        {
          arInstructionString2 = [eventCopy arInstructionString];
          v152 = arInstructionString2;
          v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v152 count:1];
          v90 = [(MNGuidanceManager *)selfCopy _evaluatedStringsForEvent:eventCopy signStrings:v89 shouldUpdateFormatStrings:0 argumentHandler:0];
          firstObject = [v90 firstObject];
          [(MNGuidanceARInfo *)v85 setInstructionString:firstObject];
        }

        [v130 addObject:v85];

        ++v74;
        v73 = v86 - 1;
      }

      while (v74 < [(MNGuidanceARInfo *)v141 count]);
    }

    gapRanges2 = [eventCopy gapRanges];
    lastObject = [gapRanges2 lastObject];

    stepCopy = v128;
    if (lastObject)
    {
      route5 = [(MNGuidanceManager *)self route];
      v95 = [route5 routeCoordinateForDistance:startRouteCoordinate afterRouteCoordinate:{objc_msgSend(lastObject, "startValidDistanceOffsetCm") * 0.01}];

      LODWORD(route5) = [eventCopy endValidRouteCoordinate];
      if (GEOPolylineCoordinateNearestIndex() == route5)
      {
        v96 = HIDWORD(v95);
        v127 = eventCopy;
        if ((GEOPolylineCoordinateIsInvalid() & 1) == 0)
        {
          LODWORD(v144) = 0;
          if (modff(*(&v95 + 1), &v144) > 0.0)
          {
            LODWORD(v96) = v144;
            LODWORD(v95) = v95 + 1;
          }
        }

        v97 = [(MNGuidanceManager *)self _closestContinueAREventToRouteCoordinate:v95 | (v96 << 32)];
        route6 = [(MNGuidanceManager *)self route];
        v99 = [route6 stepAtIndex:{objc_msgSend(v97, "stepIndex")}];
        startRouteCoordinate4 = [v99 startRouteCoordinate];
        route7 = [(MNGuidanceManager *)self route];
        v140 = v97;
        v102 = [route7 stepAtIndex:{objc_msgSend(v97, "stepIndex")}];
        [v102 endRouteCoordinate];
        v103 = GEOPolylineCoordinateNearestIndex();
        if (GEOPolylineCoordinateIsInvalid())
        {
          LODWORD(startRouteCoordinate4) = *MEMORY[0x1E69A1918];
          v104 = *(MEMORY[0x1E69A1918] + 4);
          v105 = v104;
          v106 = *MEMORY[0x1E69A1918];
        }

        else
        {
          v106 = vcvtms_u32_f32(*(&startRouteCoordinate4 + 1)) + startRouteCoordinate4;
          LODWORD(startRouteCoordinate4) = *MEMORY[0x1E69A1918];
          v105 = *(MEMORY[0x1E69A1918] + 4);
          v104 = COERCE_UNSIGNED_INT(*(&startRouteCoordinate4 + 1) - floorf(*(&startRouteCoordinate4 + 1)));
        }

        v137 = v106 | (v104 << 32);
        v107 = GEOPolylineCoordinateIsInvalid();
        v108 = v105 << 32;
        if (v107)
        {
          v109 = startRouteCoordinate4;
        }

        else
        {
          v109 = v103;
        }

        if (!v107)
        {
          v108 = 0;
        }

        v135 = v108 | v109;

        v110 = [MNGuidanceARInfo alloc];
        uniqueID = [v127 uniqueID];
        arType2 = [v97 arType];
        v113 = [(MNGuidanceManager *)self _maneuverTypeForAREvent:v127];
        arInstruction2 = [v127 arInstruction];
        arArrowLabel = [v140 arArrowLabel];
        maneuverRoadName2 = [v128 maneuverRoadName];
        v117 = -[MNGuidanceARInfo initWithEventID:type:maneuverType:instruction:variableOverrides:arrowLabel:locationCoordinateRange:maneuverRoadName:stepIndex:](v110, "initWithEventID:type:maneuverType:instruction:variableOverrides:arrowLabel:locationCoordinateRange:maneuverRoadName:stepIndex:", uniqueID, arType2, v113, arInstruction2, v129, arArrowLabel, v137, v135, maneuverRoadName2, [v128 stepIndex]);

        eventCopy = v127;
        [(MNGuidanceARInfo *)v117 setPriority:0];
        arInstructionString3 = [v127 arInstructionString];

        if (arInstructionString3)
        {
          arInstructionString4 = [v127 arInstructionString];
          v151 = arInstructionString4;
          v120 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v151 count:1];
          v121 = [(MNGuidanceManager *)selfCopy _evaluatedStringsForEvent:v127 signStrings:v120 shouldUpdateFormatStrings:0 argumentHandler:0];
          firstObject2 = [v121 firstObject];
          [(MNGuidanceARInfo *)v117 setInstructionString:firstObject2];
        }

        [v130 addObject:v117];

        stepCopy = v128;
        v15 = v141;
      }
    }
  }

  else
  {
    if ([eventCopy arType] != 2)
    {
      goto LABEL_57;
    }

    v142 = [MNGuidanceARInfo alloc];
    uniqueID2 = [eventCopy uniqueID];
    arType3 = [eventCopy arType];
    v43 = [(MNGuidanceManager *)self _maneuverTypeForAREvent:eventCopy];
    arInstruction3 = [eventCopy arInstruction];
    [eventCopy arArrowLabel];
    v46 = v45 = eventCopy;
    route8 = [(MNGuidanceManager *)self route];
    [stepCopy endRouteCoordinate];
    [route8 pointAt:GEOPolylineCoordinateNearestIndex()];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    maneuverRoadName3 = [stepCopy maneuverRoadName];
    [(MNGuidanceManager *)self _headingForArEvent:v45];
    v15 = -[MNGuidanceARInfo initWithEventID:type:maneuverType:instruction:variableOverrides:arrowLabel:locationCoordinate:maneuverRoadName:heading:stepIndex:](v142, "initWithEventID:type:maneuverType:instruction:variableOverrides:arrowLabel:locationCoordinate:maneuverRoadName:heading:stepIndex:", uniqueID2, arType3, v43, arInstruction3, v129, v46, v49, v51, v53, v55, maneuverRoadName3, [stepCopy stepIndex]);

    eventCopy = v45;
    arInstructionString5 = [v45 arInstructionString];

    if (arInstructionString5)
    {
      arInstructionString6 = [v45 arInstructionString];
      v150 = arInstructionString6;
      v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v150 count:1];
      v59 = [(MNGuidanceManager *)self _evaluatedStringsForEvent:v45 signStrings:v58 shouldUpdateFormatStrings:0 argumentHandler:0];
      firstObject3 = [v59 firstObject];
      [(MNGuidanceARInfo *)v15 setInstructionString:firstObject3];
    }

    [v130 addObject:v15];
  }

LABEL_57:
  array = [v130 array];

  v124 = *MEMORY[0x1E69E9840];

  return array;
}

- (BOOL)_updateDisplayStringArgument:(id)argument event:(id)event
{
  v32 = *MEMORY[0x1E69E9840];
  argumentCopy = argument;
  eventCopy = event;
  type = [argumentCopy type];
  if (type > 10)
  {
    v15 = 0;
    if (type == 11 || type == 15)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (type == 1)
    {
      distanceFormat = [argumentCopy distanceFormat];
      [distanceFormat setFormatOptions:1];
      route = [(MNGuidanceManager *)self route];
      transportType = [route transportType];

      if (transportType == 2)
      {
        [distanceFormat setFormatOptions:{objc_msgSend(distanceFormat, "formatOptions") | 2}];
      }

      token = [argumentCopy token];
      v21 = [token isEqualToString:@"{valid_distance}"];

      if (v21)
      {
        endValidRouteCoordinate = [eventCopy endValidRouteCoordinate];
      }

      else
      {
        endValidRouteCoordinate = [eventCopy coordinateForDistanceStrings];
      }

      [(MNGuidanceManager *)self _distanceToRouteCoordinate:endValidRouteCoordinate];
      v27 = [MEMORY[0x1E696AD28] _geo_distanceMeasurementForMeters:?];
      [distanceFormat setOverrideValue:v27];

      goto LABEL_21;
    }

    if (type == 10)
    {
      route2 = [(MNGuidanceManager *)self route];
      legs = [route2 legs];
      v11 = [legs objectAtIndexedSubscript:{-[MNGuidanceManager currentLegIndex](self, "currentLegIndex")}];
      destination = [v11 destination];

      token2 = [argumentCopy token];
      LODWORD(legs) = [token2 isEqualToString:@"{Name}"];

      if (legs)
      {
        navDisplayName = [destination navDisplayName];
      }

      else
      {
        token3 = [argumentCopy token];
        v24 = [token3 isEqualToString:@"{Address}"];

        if (!v24)
        {
LABEL_18:

LABEL_21:
          v15 = 1;
          goto LABEL_22;
        }

        navDisplayName = [destination navDisplayAddress];
      }

      v25 = navDisplayName;
      stringFormat = [argumentCopy stringFormat];
      [stringFormat setOverrideValue:v25];

      goto LABEL_18;
    }
  }

  v16 = MNGetMNGuidanceManagerLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    v30 = 138412290;
    v31 = argumentCopy;
    _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_FAULT, "ⓖ Unhandled argument for display string: %@", &v30, 0xCu);
  }

  v15 = 0;
LABEL_22:

  v28 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)_evaluatedStringsForEvent:(id)event signStrings:(id)strings shouldUpdateFormatStrings:(BOOL)formatStrings argumentHandler:(id)handler
{
  formatStringsCopy = formatStrings;
  v38 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  stringsCopy = strings;
  handlerCopy = handler;
  if (stringsCopy)
  {
    v24 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(stringsCopy, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v22 = stringsCopy;
    obj = stringsCopy;
    v10 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v32;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v31 + 1) + 8 * i);
          defaultOptions = [v14 defaultOptions];
          arguments = [defaultOptions arguments];
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __101__MNGuidanceManager__evaluatedStringsForEvent_signStrings_shouldUpdateFormatStrings_argumentHandler___block_invoke;
          v28[3] = &unk_1E842B4C8;
          v28[4] = self;
          v29 = eventCopy;
          v30 = handlerCopy;
          v17 = [arguments _geo_compactMap:v28];

          [defaultOptions setArguments:v17];
          [defaultOptions setShouldUpdateFormatStrings:formatStringsCopy];
          v18 = [v14 composedStringWithOptions:defaultOptions];
          if (v18)
          {
            [v24 addObject:v18];
          }

          else
          {
            v19 = MNGetMNGuidanceManagerLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v36 = v14;
              _os_log_impl(&dword_1D311E000, v19, OS_LOG_TYPE_FAULT, "ⓖ Error evaluating string: %@", buf, 0xCu);
            }
          }
        }

        v11 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v11);
    }

    stringsCopy = v22;
  }

  else
  {
    v24 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v24;
}

void *__101__MNGuidanceManager__evaluatedStringsForEvent_signStrings_shouldUpdateFormatStrings_argumentHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _updateDisplayStringArgument:v3 event:*(a1 + 40)])
  {
    v4 = *(a1 + 48);
    v5 = v3;
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
      v5 = v3;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)_signForGuidanceEvent:(id)event isPrimary:(BOOL)primary shouldOverridePrimaryDistances:(BOOL)distances distance:(double *)distance
{
  distancesCopy = distances;
  primaryCopy = primary;
  v64[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  signDetails = [eventCopy signDetails];
  shieldInfo = [eventCopy shieldInfo];

  if (shieldInfo)
  {
    shieldInfo2 = [eventCopy shieldInfo];
    shield = [shieldInfo2 shield];

    shieldInfo3 = [eventCopy shieldInfo];
    shieldType = [shieldInfo3 shieldType];

    shieldInfo4 = [eventCopy shieldInfo];
    name = [shieldInfo4 name];
  }

  else
  {
    name = 0;
    shield = 0;
    shieldType = 0;
  }

  -[MNGuidanceManager _distanceToRouteCoordinate:](self, "_distanceToRouteCoordinate:", [eventCopy coordinateForDistanceStrings]);
  v15 = fmax(v14, 0.0);
  -[MNGuidanceManager _distanceToRouteCoordinate:](self, "_distanceToRouteCoordinate:", [eventCopy endValidRouteCoordinate]);
  v17 = fmax(v16, 0.0);
  if (!primaryCopy)
  {
    goto LABEL_15;
  }

  if ([eventCopy composedGuidanceEventType] == 11 || objc_msgSend(eventCopy, "composedGuidanceEventType") == 12)
  {
    navigationSessionState = [(MNGuidanceManager *)self navigationSessionState];
    currentWaypoint = [navigationSessionState currentWaypoint];

    waypointCategory = [currentWaypoint waypointCategory];
    if ([signDetails count] <= waypointCategory)
    {
      if (![signDetails count])
      {
LABEL_12:

        goto LABEL_13;
      }

      firstObject = [signDetails firstObject];
      v63 = firstObject;
      v22 = &v63;
    }

    else
    {
      firstObject = [signDetails objectAtIndexedSubscript:waypointCategory];
      v64[0] = firstObject;
      v22 = v64;
    }

    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];

    signDetails = v23;
    goto LABEL_12;
  }

LABEL_13:
  if (distancesCopy)
  {
    routeMatch = [(MNLocation *)self->_location routeMatch];
    [routeMatch distanceFromRoute];
    v17 = v25;

    v15 = v17;
  }

LABEL_15:
  *distance = v15;
  navigationSessionState2 = [(MNGuidanceManager *)self navigationSessionState];
  currentWaypoint2 = [navigationSessionState2 currentWaypoint];
  v62 = currentWaypoint2;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
  v50 = [(MNGuidanceManager *)self _serverStringDictionaryForEvent:eventCopy distance:0 validDistance:v28 spoken:v15 waypoints:v17];

  signTitles = [eventCopy signTitles];
  if ([signTitles count])
  {
  }

  else
  {
    v30 = [signDetails count] == 0;

    if (v30)
    {
      v39 = 0;
      goto LABEL_24;
    }
  }

  v53 = 0;
  v31 = [eventCopy transportType] == 2;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0xBFF0000000000000;
  if (primaryCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __93__MNGuidanceManager__signForGuidanceEvent_isPrimary_shouldOverridePrimaryDistances_distance___block_invoke;
    aBlock[3] = &unk_1E842B4A0;
    aBlock[4] = &v58;
    *&aBlock[5] = v17;
    *&aBlock[6] = v15;
    v53 = _Block_copy(aBlock);
  }

  v32 = [MNGuidanceSignDescription alloc];
  uniqueID = [eventCopy uniqueID];
  signTitles2 = [eventCopy signTitles];
  v35 = [v50 objectForKeyedSubscript:@"{fromOrigin}"];
  maneuverJunction = [eventCopy maneuverJunction];
  artworkOverride = [eventCopy artworkOverride];
  uniqueID2 = [eventCopy uniqueID];
  LODWORD(v49) = [(MNGuidanceManager *)self _indexForEventUUID:uniqueID2];
  LODWORD(v48) = shieldType;
  v39 = [(MNGuidanceSignDescription *)v32 initWithID:uniqueID titles:signTitles2 details:signDetails variableOverrides:v35 distanceDetailLevel:(2 * v31) junction:maneuverJunction artworkOverride:artworkOverride shieldText:shield shieldID:v48 shieldStringID:name composedGuidanceEventIndex:v49];

  primarySignStrings = [eventCopy primarySignStrings];
  v41 = [(MNGuidanceManager *)self _evaluatedStringsForEvent:eventCopy signStrings:primarySignStrings shouldUpdateFormatStrings:1 argumentHandler:v53];
  [(MNGuidanceSignDescription *)v39 setPrimaryStrings:v41];

  secondarySignStrings = [eventCopy secondarySignStrings];
  v43 = [(MNGuidanceManager *)self _evaluatedStringsForEvent:eventCopy signStrings:secondarySignStrings shouldUpdateFormatStrings:1 argumentHandler:0];
  [(MNGuidanceSignDescription *)v39 setSecondaryStrings:v43];

  [(MNGuidanceSignDescription *)v39 setIsStaticText:v59[3] < 0.0];
  if (primaryCopy && v59[3] >= 0.0)
  {
    [(MNGuidanceSignDescription *)v39 setRemainingDistance:?];
    v44 = [MEMORY[0x1E696AD28] _geo_distanceMeasurementForMeters:v59[3]];
    v45 = GEORoundedDistanceMeasurement();
    [(MNGuidanceSignDescription *)v39 setDisplayRemainingDistance:v45];
  }

  _Block_object_dispose(&v58, 8);
LABEL_24:

  v46 = *MEMORY[0x1E69E9840];

  return v39;
}

void __93__MNGuidanceManager__signForGuidanceEvent_isPrimary_shouldOverridePrimaryDistances_distance___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 type] == 1)
  {
    v3 = [v6 token];
    v4 = [v3 isEqualToString:@"{valid_distance}"];

    v5 = 48;
    if (v4)
    {
      v5 = 40;
    }

    *(*(*(a1 + 32) + 8) + 24) = *(a1 + v5);
  }
}

- (id)_sortedSignEventsFromValidSignEvents:(id)events
{
  v18 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = eventsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 hasSignGuidance])
        {
          [array addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [array sortUsingComparator:&__block_literal_global_6385];
  v11 = *MEMORY[0x1E69E9840];

  return array;
}

uint64_t __58__MNGuidanceManager__sortedSignEventsFromValidSignEvents___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 stackRanking];
  if (v6 >= [v5 stackRanking])
  {
    v8 = [v4 stackRanking];
    v7 = v8 > [v5 stackRanking];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (id)_validEventsForSignGuidance:(BOOL *)guidance
{
  array = [MEMORY[0x1E695DF70] array];
  if (guidance)
  {
    *guidance = 0;
    delegate = [(MNGuidanceManager *)self delegate];
    navigationState = [delegate navigationState];

    if (navigationState > 2)
    {
      if (navigationState == 3)
      {
        if (self->_isInPreArrivalState)
        {
          goto LABEL_22;
        }

        v12 = [(MNGuidanceManager *)self _specialSignEvents:3 forLeg:[(MNGuidanceManager *)self currentLegIndex]];
        firstObject = [v12 firstObject];

        if (!firstObject)
        {
          goto LABEL_21;
        }

        [(NSMutableArray *)array addObject:firstObject];
LABEL_20:
        *guidance = 1;
        goto LABEL_21;
      }

      if (navigationState != 8)
      {
        goto LABEL_22;
      }
    }

    else if (navigationState != 1)
    {
      if (navigationState != 2 || self->_isInPreArrivalState || self->_shouldShowChargingInfo)
      {
LABEL_22:
        if (self->_shouldShowChargingInfo)
        {
          v13 = 14;
        }

        else
        {
          delegate2 = [(MNGuidanceManager *)self delegate];
          navigationState2 = [delegate2 navigationState];

          if (navigationState2 != 7)
          {
            goto LABEL_31;
          }

          if (self->_shouldShowChargingInfo)
          {
            v13 = 14;
          }

          else
          {
            v13 = 13;
          }
        }

        v16 = [(MNGuidanceManager *)self _specialSignEvents:v13 forLeg:[(MNGuidanceManager *)self currentLegIndex]];
        firstObject2 = [v16 firstObject];

        if (firstObject2)
        {
          [(NSMutableArray *)array addObject:firstObject2];
        }

LABEL_31:
        delegate3 = [(MNGuidanceManager *)self delegate];
        if ([delegate3 navigationState] != 6)
        {
          delegate4 = [(MNGuidanceManager *)self delegate];
          if ([delegate4 navigationState] != 7)
          {
            isInPreArrivalState = self->_isInPreArrivalState;

            if (!isInPreArrivalState)
            {
              goto LABEL_46;
            }

LABEL_35:
            v20 = [(MNGuidanceManager *)self _specialSignEvents:12 forLeg:[(MNGuidanceManager *)self currentLegIndex]];
            firstObject3 = [v20 firstObject];

            v22 = [(MNGuidanceManager *)self _specialSignEvents:11 forLeg:[(MNGuidanceManager *)self currentLegIndex]];
            firstObject4 = [v22 firstObject];

            if (firstObject3)
            {
              v24 = [(NSArray *)self->_previousSignEvents containsObject:firstObject3];
              v25 = firstObject3;
              if (!v24)
              {
                if (firstObject4)
                {
                  v26 = [(NSArray *)self->_previousSignEvents containsObject:firstObject4];
                  v25 = firstObject4;
                  if (!v26)
                  {
                    if (self->_isInPreArrivalState)
                    {
                      v25 = firstObject3;
                    }

                    else
                    {
                      v25 = firstObject4;
                    }
                  }
                }

                else
                {
                  if (self->_isInPreArrivalState)
                  {
                    v25 = firstObject3;
                  }

                  else
                  {
                    v25 = 0;
                  }

                  if (!self->_isInPreArrivalState)
                  {
                    goto LABEL_45;
                  }
                }
              }
            }

            else
            {
              if (!firstObject4)
              {
LABEL_45:

                goto LABEL_46;
              }

              [(NSArray *)self->_previousSignEvents containsObject:firstObject4];
              v25 = firstObject4;
            }

            [(NSMutableArray *)array addObject:v25];
            goto LABEL_45;
          }
        }

        goto LABEL_35;
      }

      self->_hasBeenOnRouteOnce = 1;
      firstObject = array;
      array = self->_validEvents;
LABEL_21:

      goto LABEL_22;
    }

    if (self->_isInPreArrivalState)
    {
      goto LABEL_22;
    }

    v9 = [(MNGuidanceManager *)self _specialSignEvents:1 forLeg:[(MNGuidanceManager *)self currentLegIndex]];
    firstObject = v9;
    if (self->_hasBeenOnRouteOnce || ![v9 count])
    {
      v10 = [(MNGuidanceManager *)self _specialSignEvents:3 forLeg:[(MNGuidanceManager *)self currentLegIndex]];
      firstObject5 = [v10 firstObject];

      if (firstObject5)
      {
        [(NSMutableArray *)array addObject:firstObject5];
        *guidance = 1;
      }

      goto LABEL_21;
    }

    [(NSMutableArray *)array addObjectsFromArray:firstObject];
    goto LABEL_20;
  }

LABEL_46:
  v27 = array;

  return array;
}

- (void)_triggerHapticsForEvent:(id)event timeUntilAnnouncement:(double)announcement
{
  v21 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if ([eventCopy hasHaptics])
  {
    v7 = MNGetMNGuidanceManagerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      routeMatch = [(MNLocation *)self->_location routeMatch];
      [routeMatch routeCoordinate];
      v9 = GEOPolylineCoordinateAsFullString();
      v15 = 138412802;
      v16 = v9;
      v17 = 2048;
      announcementCopy = announcement;
      v19 = 2112;
      v20 = eventCopy;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "Triggering haptics at [%@], %0.2f seconds before announcement: %@", &v15, 0x20u);
    }

    v10 = +[MNTimeManager currentDate];
    hapticsTriggered = self->_hapticsTriggered;
    uniqueID = [eventCopy uniqueID];
    [(NSMutableDictionary *)hapticsTriggered setObject:v10 forKeyedSubscript:uniqueID];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained guidanceManager:self triggerHaptics:{objc_msgSend(eventCopy, "maneuverType")}];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_considerHapticsWithNoGuidance
{
  v23 = *MEMORY[0x1E69E9840];
  routeMatch = [(MNLocation *)self->_location routeMatch];
  isGoodMatch = [routeMatch isGoodMatch];

  if (isGoodMatch)
  {
    delegate = [(MNGuidanceManager *)self delegate];
    navigationState = [delegate navigationState];

    if (navigationState == 2)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = self->_events;
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v18 + 1) + 8 * i);
            if ([v12 hasHaptics] && (objc_msgSend(v12, "isSpecial") & 1) == 0)
            {
              hapticsTriggered = self->_hapticsTriggered;
              uniqueID = [v12 uniqueID];
              v15 = [(NSMutableDictionary *)hapticsTriggered objectForKeyedSubscript:uniqueID];

              if (v15)
              {
              }

              else
              {
                [(MNGuidanceManager *)self _timeUntilEventTrigger:v12];
                if (v16 >= 0.0)
                {
                  if (v16 <= 2.0)
                  {
                    [(MNGuidanceManager *)self _triggerHapticsForEvent:v12 timeUntilAnnouncement:?];
                  }

                  goto LABEL_19;
                }
              }
            }
          }

          v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

LABEL_19:
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)_durationsForEvent:(id)event
{
  eventCopy = event;
  spokenStrings = [eventCopy spokenStrings];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__MNGuidanceManager__durationsForEvent___block_invoke;
  v9[3] = &unk_1E842B458;
  v9[4] = self;
  v10 = eventCopy;
  v6 = eventCopy;
  v7 = [spokenStrings _geo_map:v9];

  return v7;
}

id __40__MNGuidanceManager__durationsForEvent___block_invoke(uint64_t a1, void *a2)
{
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __40__MNGuidanceManager__durationsForEvent___block_invoke_2;
  v13 = &unk_1E842B408;
  v4 = *(a1 + 40);
  v14 = *(a1 + 32);
  v15 = v4;
  v5 = a2;
  v6 = [v5 optionsWithArgumentHandler:&v10];
  v7 = [v5 stringWithOptions:{v6, v10, v11, v12, v13, v14}];

  [*(*(a1 + 32) + 8) durationOf:v7];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:?];

  return v8;
}

- (id)_serverStringDictionaryForChargingEvent:(id)event
{
  v14[1] = *MEMORY[0x1E69E9840];
  route = [(MNGuidanceManager *)self route];
  mutableData = [route mutableData];
  v6 = [mutableData chargingStationInfoForLegIndex:{-[MNGuidanceManager currentLegIndex](self, "currentLegIndex")}];

  v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  [v6 chargingTime];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  [v7 setObject:v8 forKeyedSubscript:@"{ChargeDuration}"];

  [v6 batteryPercentageAfterCharging];
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  [v7 setObject:v9 forKeyedSubscript:@"{ChargePercentage}"];

  v13 = @"{fromOrigin}";
  v14[0] = v7;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)_handleNoGuidanceAnnouncementTimerFiredForEvent:(id)event
{
  v16 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  noGuidanceHandledEvents = self->_noGuidanceHandledEvents;
  if (!noGuidanceHandledEvents)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    v7 = self->_noGuidanceHandledEvents;
    self->_noGuidanceHandledEvents = v6;

    noGuidanceHandledEvents = self->_noGuidanceHandledEvents;
  }

  uniqueID = [eventCopy uniqueID];
  [(NSMutableSet *)noGuidanceHandledEvents addObject:uniqueID];

  noGuidanceFauxAnnouncementTimer = self->_noGuidanceFauxAnnouncementTimer;
  self->_noGuidanceFauxAnnouncementTimer = 0;

  v10 = MNGetMNGuidanceManagerLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID2 = [eventCopy uniqueID];
    v14 = 138412290;
    v15 = uniqueID2;
    _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_DEFAULT, "Sending fake didProcessSpeechEvent: %@", &v14, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained guidanceManager:self didProcessSpeechEvent:eventCopy];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_considerCallbacksForNoAnnouncements
{
  v38 = *MEMORY[0x1E69E9840];
  if ([(MNGuidanceManager *)self preferredGuidanceLevel]!= 2 && !self->_noGuidanceFauxAnnouncementTimer)
  {
    routeMatch = [(MNLocation *)self->_location routeMatch];
    [routeMatch routeCoordinate];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    route = [(MNGuidanceManager *)self route];
    composedGuidanceEvents = [route composedGuidanceEvents];

    v6 = [composedGuidanceEvents countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v6)
    {
      v7 = *v32;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v32 != v7)
          {
            objc_enumerationMutation(composedGuidanceEvents);
          }

          v9 = *(*(&v31 + 1) + 8 * i);
          noGuidanceHandledEvents = self->_noGuidanceHandledEvents;
          uniqueID = [v9 uniqueID];
          LOBYTE(noGuidanceHandledEvents) = [(NSMutableSet *)noGuidanceHandledEvents containsObject:uniqueID];

          if ((noGuidanceHandledEvents & 1) == 0)
          {
            spokenStrings = [v9 spokenStrings];
            v13 = spokenStrings == 0;

            if (!v13)
            {
              [v9 startValidRouteCoordinate];
              [v9 endValidRouteCoordinate];
              if (GEOPolylineCoordinateWithinRange())
              {
                v14 = v9;

                if (v14)
                {
                  GEOConfigGetDouble();
                  v16 = v15;
                  if (v15 > 0.0)
                  {
                    v17 = MNGetMNGuidanceManagerLog();
                    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                    {
                      uniqueID2 = [v14 uniqueID];
                      *buf = 138412290;
                      v36 = uniqueID2;
                      _os_log_impl(&dword_1D311E000, v17, OS_LOG_TYPE_DEFAULT, "Sending fake willProcessSpeechEvent: %@", buf, 0xCu);
                    }

                    WeakRetained = objc_loadWeakRetained(&self->_delegate);
                    [WeakRetained guidanceManager:self willProcessSpeechEvent:v14];

                    objc_initWeak(buf, self);
                    v20 = [MNDispatchTimer alloc];
                    v21 = MNNavigationQueue();
                    v25 = MEMORY[0x1E69E9820];
                    v26 = 3221225472;
                    v27 = __57__MNGuidanceManager__considerCallbacksForNoAnnouncements__block_invoke;
                    v28 = &unk_1E8430100;
                    objc_copyWeak(&v30, buf);
                    v14 = v14;
                    v29 = v14;
                    v22 = [(MNDispatchTimer *)v20 initWithTime:v21 queue:&v25 handler:v16];
                    noGuidanceFauxAnnouncementTimer = self->_noGuidanceFauxAnnouncementTimer;
                    self->_noGuidanceFauxAnnouncementTimer = v22;

                    [(MNDispatchTimer *)self->_noGuidanceFauxAnnouncementTimer activate:v25];
                    objc_destroyWeak(&v30);
                    objc_destroyWeak(buf);
                  }
                }

                goto LABEL_19;
              }
            }
          }
        }

        v6 = [composedGuidanceEvents countByEnumeratingWithState:&v31 objects:v37 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_19:
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __57__MNGuidanceManager__considerCallbacksForNoAnnouncements__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleNoGuidanceAnnouncementTimerFiredForEvent:*(a1 + 32)];
}

- (BOOL)_updateSpokenStringArgument:(id)argument event:(id)event
{
  argumentCopy = argument;
  eventCopy = event;
  type = [argumentCopy type];
  v9 = 0;
  if (type > 9)
  {
    switch(type)
    {
      case 10:
        route = [(MNGuidanceManager *)self route];
        legs = [route legs];
        v26 = [legs objectAtIndexedSubscript:{-[MNGuidanceManager currentLegIndex](self, "currentLegIndex")}];
        destination = [v26 destination];

        token = [argumentCopy token];
        LODWORD(legs) = [token isEqualToString:@"{Name}"];

        if (legs)
        {
          navAnnouncementName = [destination navAnnouncementName];
        }

        else
        {
          token2 = [argumentCopy token];
          v37 = [token2 isEqualToString:@"{Address}"];

          if (!v37)
          {
LABEL_22:

            goto LABEL_27;
          }

          navAnnouncementName = [destination navAnnouncementAddress];
        }

        percentageFormat = navAnnouncementName;
        stringFormat = [argumentCopy stringFormat];
        [stringFormat setOverrideValue:percentageFormat];

LABEL_21:
        goto LABEL_22;
      case 13:
        token3 = [argumentCopy token];
        v30 = [token3 isEqualToString:@"{ChargePercentage}"];

        if (v30)
        {
          route2 = [(MNGuidanceManager *)self route];
          mutableData = [route2 mutableData];
          destination = [mutableData chargingStationInfoForLegIndex:{-[MNGuidanceManager currentLegIndex](self, "currentLegIndex")}];

          [destination batteryPercentageAfterCharging];
          v34 = v33;
          percentageFormat = [argumentCopy percentageFormat];
          *&v35 = v34;
          [percentageFormat setOverrideValue:v35];
          goto LABEL_21;
        }

        goto LABEL_27;
      case 18:
        substitutionFormat = [argumentCopy substitutionFormat];
        route3 = [(MNGuidanceManager *)self route];
        waypoints = [route3 waypoints];

        waypointIndex = [substitutionFormat waypointIndex];
        if (waypointIndex >= [waypoints count])
        {
          [waypoints lastObject];
        }

        else
        {
          [waypoints objectAtIndexedSubscript:{objc_msgSend(substitutionFormat, "waypointIndex")}];
        }
        v39 = ;
        waypointCategory = [v39 waypointCategory];
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __55__MNGuidanceManager__updateSpokenStringArgument_event___block_invoke;
        v43[3] = &unk_1E842B430;
        v44 = v39;
        v41 = v39;
        [substitutionFormat setSubstitutionForWaypointCategory:waypointCategory handler:v43];

        goto LABEL_25;
    }
  }

  else
  {
    if ((type - 3) < 2)
    {
      token4 = [argumentCopy token];
      v11 = [token4 isEqualToString:@"{ChargeDuration}"];

      if (v11)
      {
        route4 = [(MNGuidanceManager *)self route];
        mutableData2 = [route4 mutableData];
        destination = [mutableData2 chargingStationInfoForLegIndex:{-[MNGuidanceManager currentLegIndex](self, "currentLegIndex")}];

        [destination chargingTime];
        v16 = v15;
        percentageFormat = [argumentCopy durationFormat];
        [percentageFormat setOverrideValue:v16];
        goto LABEL_21;
      }

LABEL_27:
      v9 = 1;
      goto LABEL_28;
    }

    if (type == 1)
    {
      substitutionFormat = [argumentCopy distanceFormat];
      [substitutionFormat setFormatOptions:156];
      if ([eventCopy isSpecial])
      {
        goto LABEL_26;
      }

      token5 = [argumentCopy token];
      v23 = [token5 isEqualToString:@"{distance}"];

      if (!v23)
      {
        goto LABEL_26;
      }

      -[MNGuidanceManager _distanceToRouteCoordinate:](self, "_distanceToRouteCoordinate:", [eventCopy coordinateForDistanceStrings]);
      waypoints = [MEMORY[0x1E696AD28] _geo_distanceMeasurementForMeters:?];
      [substitutionFormat setOverrideValue:waypoints];
LABEL_25:

LABEL_26:
      goto LABEL_27;
    }
  }

LABEL_28:

  return v9;
}

id __55__MNGuidanceManager__updateSpokenStringArgument_event___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    v7 = [*(a1 + 32) bestSpokenName];
    if (!v7)
    {
      goto LABEL_5;
    }

    v8 = [*(a1 + 32) bestSpokenName];
    v9 = [v6 firstObject];
    v10 = [v9 stringFormat];
    [v10 setOverrideValue:v8];
  }

  v7 = v5;
LABEL_5:

  return v7;
}

- (id)_selectAnnouncementForEvent:(id)event withTimeRemaining:(double)remaining selectedVariantIndex:(unint64_t *)index
{
  v43 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  spokenStrings = [eventCopy spokenStrings];
  v9 = [spokenStrings count];

  v10 = 0;
  if (v9)
  {
    v9 = 0;
    if (remaining == 1.79769313e308)
    {
      remainingCopy = -1.0;
    }

    else
    {
      remainingCopy = remaining;
    }

    do
    {
      spokenStrings2 = [eventCopy spokenStrings];
      v13 = [spokenStrings2 objectAtIndexedSubscript:v9];

      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __88__MNGuidanceManager__selectAnnouncementForEvent_withTimeRemaining_selectedVariantIndex___block_invoke;
      v39[3] = &unk_1E842B408;
      v39[4] = self;
      v14 = eventCopy;
      v40 = v14;
      v15 = [v13 optionsWithArgumentHandler:v39];
      v16 = [v13 stringResultWithOptions:v15];
      if ([v16 success])
      {
        string = [v16 string];

        [(MNAudioManager *)self->_audioManager durationOf:string];
        v19 = v18;
        v20 = MNGetMNGuidanceManagerLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109632;
          *v42 = v9;
          *&v42[4] = 2048;
          *&v42[6] = v19;
          *&v42[14] = 2048;
          *&v42[16] = remainingCopy;
          _os_log_impl(&dword_1D311E000, v20, OS_LOG_TYPE_DEBUG, "ⓖ Considering announcement %d with duration %.1f, time remaining %.1f", buf, 0x1Cu);
        }

        v21 = v19 <= remaining;
        v10 = string;
      }

      else
      {
        v22 = MNGetMNGuidanceManagerLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          string2 = [v16 string];
          *buf = 138412546;
          *v42 = string2;
          *&v42[8] = 2112;
          *&v42[10] = v13;
          _os_log_impl(&dword_1D311E000, v22, OS_LOG_TYPE_FAULT, "ⓖ Error building spoken string, probably because some arguments were not handled.\nResult: %@\nOriginal string: %@", buf, 0x16u);
        }

        v21 = 0;
      }

      if (v21)
      {
        break;
      }

      ++v9;
      spokenStrings3 = [v14 spokenStrings];
      v25 = [spokenStrings3 count];
    }

    while (v9 < v25);
  }

  spokenStrings4 = [eventCopy spokenStrings];
  v27 = [spokenStrings4 count];

  if (v9 >= v27)
  {
    spokenStrings5 = [eventCopy spokenStrings];
    v9 = [spokenStrings5 count] - 1;

    v28 = MNGetMNGuidanceManagerLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *v42 = v9;
      _os_log_impl(&dword_1D311E000, v28, OS_LOG_TYPE_DEBUG, "ⓖ Selected announcement %d (not short enough)", buf, 8u);
    }
  }

  else
  {
    v28 = MNGetMNGuidanceManagerLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      announcements = [eventCopy announcements];
      v30 = [announcements count];
      *buf = 67109376;
      *v42 = v9;
      *&v42[4] = 1024;
      *&v42[6] = v30;
      _os_log_impl(&dword_1D311E000, v28, OS_LOG_TYPE_DEBUG, "ⓖ Selected announcement %d (%d variant(s))", buf, 0xEu);
    }
  }

  *index = v9;
  spokenStrings6 = [eventCopy spokenStrings];
  v33 = [spokenStrings6 objectAtIndexedSubscript:v9];
  isPrivate = [v33 isPrivate];

  if (isPrivate)
  {
    _navigation_stringByMarkingAsPrivateText = [v10 _navigation_stringByMarkingAsPrivateText];

    v10 = _navigation_stringByMarkingAsPrivateText;
  }

  v36 = *MEMORY[0x1E69E9840];

  return v10;
}

- (unint64_t)_announcementStageForEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy hasSpokenGuidance])
  {
    composedGuidanceEventType = [eventCopy composedGuidanceEventType];
    if ((composedGuidanceEventType - 4) <= 4)
    {
      v5 = (composedGuidanceEventType - 3);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __78__MNGuidanceManager__notifySpeechEvent_waypointCategory_startingVariantIndex___block_invoke(uint64_t a1, unint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  +[MNTimeManager currentTime];
  *(*(a1 + 32) + 112) = v4;
  if (a2 < 9)
  {
    v5 = MNGetMNGuidanceManagerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = off_1E842B5C8[a2];
      v22 = 138412290;
      v23 = v6;
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_ERROR, "⒢ Announcement not spoken, MNAudioCompletionStatus code=%@", &v22, 0xCu);
    }

    v7 = *(*(a1 + 32) + 240);
    v8 = [*(a1 + 40) uniqueID];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (!v9)
    {
      goto LABEL_7;
    }

    [v9 startTime];
    [v9 setEndTime:?];
    goto LABEL_6;
  }

  if (a2 - 9 >= 2)
  {
    goto LABEL_8;
  }

  v13 = MNGetMNGuidanceManagerLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    if (a2 == 10)
    {
      v14 = "sound effect";
    }

    else
    {
      v14 = "speech";
    }

    v15 = *(a1 + 32);
    v16 = v15[14] - v15[13];
    v17 = [v15 route];
    v18 = [*(*(a1 + 32) + 216) routeMatch];
    [v17 stepDistanceFromPoint:objc_msgSend(v18 toPoint:{"routeCoordinate"), objc_msgSend(*(a1 + 40), "endValidRouteCoordinate")}];
    v22 = 136315650;
    v23 = v14;
    v24 = 2048;
    v25 = v16;
    v26 = 2048;
    v27 = v19;
    _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_INFO, "ⓖ Finished %s announcement in %.2f seconds, with %.2f meters to go", &v22, 0x20u);
  }

  v20 = *(*(a1 + 32) + 240);
  v21 = [*(a1 + 40) uniqueID];
  v9 = [v20 objectForKeyedSubscript:v21];

  if (v9)
  {
    [v9 setEndTime:CFAbsoluteTimeGetCurrent()];
    [*(a1 + 32) _distanceToManeuverStart];
    [v9 setEndDistance:?];
LABEL_6:
    v10 = [*(a1 + 32) delegate];
    [v10 guidanceManager:*(a1 + 32) updatedGuidanceEventFeedback:v9];
  }

LABEL_7:

LABEL_8:
  v11 = [*(a1 + 32) delegate];
  [v11 guidanceManager:*(a1 + 32) didProcessSpeechEvent:*(a1 + 40)];

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)_checkValidSpokenEventForGuidanceLevel:(id)level
{
  v22 = *MEMORY[0x1E69E9840];
  levelCopy = level;
  if ([levelCopy hasSpokenGuidance] && (objc_msgSend(levelCopy, "supportsGuidanceLevel:", self->_preferredGuidanceLevel) & 1) == 0)
  {
    loggedSkippedSpokenEvents = self->_loggedSkippedSpokenEvents;
    if (!loggedSkippedSpokenEvents)
    {
      v7 = [MEMORY[0x1E695DFA8] set];
      v8 = self->_loggedSkippedSpokenEvents;
      self->_loggedSkippedSpokenEvents = v7;

      loggedSkippedSpokenEvents = self->_loggedSkippedSpokenEvents;
    }

    uniqueID = [levelCopy uniqueID];
    v10 = [(NSMutableSet *)loggedSkippedSpokenEvents containsObject:uniqueID];

    if ((v10 & 1) == 0)
    {
      v11 = MNGetMNGuidanceManagerLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_preferredGuidanceLevel + 1;
        if (v12 >= 4)
        {
          v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", self->_preferredGuidanceLevel];
        }

        else
        {
          v13 = off_1E842B538[v12];
        }

        *buf = 138412546;
        v19 = v13;
        v20 = 2112;
        v21 = levelCopy;
        _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEFAULT, "Tried to announce guidance event, but skipping because the user's preferred guidance level %@ does not support the event's type:\n\t%@", buf, 0x16u);
      }

      v14 = self->_loggedSkippedSpokenEvents;
      uniqueID2 = [levelCopy uniqueID];
      [(NSMutableSet *)v14 addObject:uniqueID2];
    }

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)_spokenEventsRemainingInStep
{
  v24 = *MEMORY[0x1E69E9840];
  routeMatch = [(MNLocation *)self->_location routeMatch];
  step = [routeMatch step];
  [step endRouteCoordinate];

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(MNGuidanceManager *)self events];
  v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        if (([v10 isSpecial] & 1) == 0)
        {
          announcements = [v10 announcements];
          v12 = [announcements count];

          if (v12)
          {
            if (![(MNGuidanceManager *)self _eventWasSpoken:v10])
            {
              routeMatch2 = [(MNLocation *)self->_location routeMatch];
              [routeMatch2 routeCoordinate];
              [v10 startValidRouteCoordinate];
              [v10 endValidRouteCoordinate];
              v14 = GEOPolylineCoordinateWithinRange();

              if (v14)
              {
                [v10 startValidRouteCoordinate];
                if (GEOPolylineCoordinateCompare() == -1)
                {
                  if ([(MNGuidanceManager *)self _checkValidSpokenEventForGuidanceLevel:v10])
                  {
                    [(MNLocation *)self->_location speed];
                    if ([v10 isValidForSpeed:?])
                    {
                      [v5 addObject:v10];
                    }
                  }
                }
              }
            }
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __49__MNGuidanceManager__spokenEventsRemainingInStep__block_invoke;
  v18[3] = &unk_1E842B3E0;
  v18[4] = self;
  [v5 sortUsingComparator:v18];
  v15 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)_planAnnouncements
{
  v102 = *MEMORY[0x1E69E9840];
  v3 = +[MNTimeManager currentDate];
  v4 = COERCE_DOUBLE(objc_alloc_init(MEMORY[0x1E695DF70]));
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v5 = self->_validEvents;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v90 objects:v101 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v91;
    v76 = v5;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v91 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v90 + 1) + 8 * i);
        announcements = [v10 announcements];
        v12 = [announcements count];

        if (v12)
        {
          [v10 repetitionInterval];
          if (v13 > 0.0 && [(MNGuidanceManager *)self _eventWasSpoken:v10])
          {
            announcementsSpoken = self->_announcementsSpoken;
            uniqueID = [v10 uniqueID];
            v16 = [(NSMutableDictionary *)announcementsSpoken objectForKeyedSubscript:uniqueID];

            [v3 timeIntervalSinceDate:v16];
            v18 = v17;
            [v10 repetitionInterval];
            if (v18 >= v19)
            {
              v20 = self->_announcementsSpoken;
              [v10 uniqueID];
              selfCopy = self;
              v22 = v4;
              v24 = v23 = v3;
              [(NSMutableDictionary *)v20 removeObjectForKey:v24];

              v3 = v23;
              v4 = v22;
              self = selfCopy;
              v5 = v76;
            }
          }

          if (![(MNGuidanceManager *)self _eventWasSpoken:v10])
          {
            [*&v4 addObject:v10];
          }
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v90 objects:v101 count:16];
    }

    while (v7);
  }

  [(MNGuidanceManager *)self _spokenEventsRemainingInStep];
  v25 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  if ([*&v4 count] || objc_msgSend(*&v25, "count") && (-[MNGuidanceManager timeUntilNextAnnouncement](self, "timeUntilNextAnnouncement"), v73 == 1.79769313e308))
  {
    v26 = MNGetMNGuidanceManagerLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138477827;
      v97 = v4;
      _os_log_impl(&dword_1D311E000, v26, OS_LOG_TYPE_DEBUG, "ⓖ Valid spoken events : %{private}@", buf, 0xCu);
    }

    v77 = v3;

    v27 = MNGetMNGuidanceManagerLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138477827;
      v97 = v25;
      _os_log_impl(&dword_1D311E000, v27, OS_LOG_TYPE_DEBUG, "ⓖ Remaining events : %{private}@", buf, 0xCu);
    }

    v28 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*&v25, "count")}];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v75 = v25;
    v29 = *&v25;
    v30 = [v29 countByEnumeratingWithState:&v86 objects:v100 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v87;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v87 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v86 + 1) + 8 * j);
          v35 = [(MNGuidanceManager *)self _durationsForEvent:v34];
          uniqueID2 = [v34 uniqueID];
          [v28 setObject:v35 forKey:uniqueID2];
        }

        v31 = [v29 countByEnumeratingWithState:&v86 objects:v100 count:16];
      }

      while (v31);
    }

    Current = CFAbsoluteTimeGetCurrent();
    announcementEngine = self->_announcementEngine;
    [(MNGuidanceManager *)self _distanceToEndOfRoute];
    v40 = v39;
    speed = self->_speed;
    lastAnnouncementEvent = self->_lastAnnouncementEvent;
    [(MNGuidanceManager *)self timeSinceLastAnnouncement];
    [(MNAnnouncementEngine *)announcementEngine planForEvents:v29 distance:lastAnnouncementEvent speed:v28 previousEvent:v40 timeSinceLastEvent:speed durations:v43];
    v44 = CFAbsoluteTimeGetCurrent();
    v45 = MNGetMNGuidanceManagerLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      plan = [(MNAnnouncementEngine *)self->_announcementEngine plan];
      *buf = 134218243;
      v97 = (v44 - Current) * 1000.0;
      v98 = 2113;
      v99 = plan;
      _os_log_impl(&dword_1D311E000, v45, OS_LOG_TYPE_DEBUG, "ⓖ Planned announcements in %.2fms : %{private}@", buf, 0x16u);
    }

    nextEvent = [(MNAnnouncementEngine *)self->_announcementEngine nextEvent];
    v48 = nextEvent;
    if (nextEvent)
    {
      event = [nextEvent event];
      v50 = [*&v4 containsObject:event];

      if (v50)
      {
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        plan2 = [(MNAnnouncementEngine *)self->_announcementEngine plan];
        plannedEvents = [plan2 plannedEvents];

        v53 = [plannedEvents countByEnumeratingWithState:&v82 objects:v95 count:16];
        if (v53)
        {
          v54 = v53;
          v55 = *v83;
LABEL_34:
          v56 = 0;
          while (1)
          {
            if (*v83 != v55)
            {
              objc_enumerationMutation(plannedEvents);
            }

            v57 = *(*(&v82 + 1) + 8 * v56);
            if (v57 == v48)
            {
              break;
            }

            if (([*(*(&v82 + 1) + 8 * v56) includeInPlan] & 1) == 0)
            {
              event2 = [v57 event];
              [(MNGuidanceManager *)self _markEventSpoken:event2];
            }

            if (v54 == ++v56)
            {
              v54 = [plannedEvents countByEnumeratingWithState:&v82 objects:v95 count:16];
              if (v54)
              {
                goto LABEL_34;
              }

              break;
            }
          }
        }

        event3 = [v48 event];
        -[MNGuidanceManager _notifySpeechEvent:waypointCategory:startingVariantIndex:](self, "_notifySpeechEvent:waypointCategory:startingVariantIndex:", event3, 0, [v48 variantIndex]);
      }
    }

    v74 = v48;
    nextEvent = self->_nextEvent;
    self->_nextEvent = 0;

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    plan3 = [(MNAnnouncementEngine *)self->_announcementEngine plan];
    plannedEvents2 = [plan3 plannedEvents];

    v63 = [plannedEvents2 countByEnumeratingWithState:&v78 objects:v94 count:16];
    if (v63)
    {
      v64 = v63;
      v65 = *v79;
      while (2)
      {
        for (k = 0; k != v64; ++k)
        {
          if (*v79 != v65)
          {
            objc_enumerationMutation(plannedEvents2);
          }

          v67 = *(*(&v78 + 1) + 8 * k);
          if ([v67 includeInPlan])
          {
            event4 = [v67 event];
            v69 = [(MNGuidanceManager *)self _eventWasSpoken:event4];

            if (!v69)
            {
              event5 = [v67 event];
              v71 = self->_nextEvent;
              self->_nextEvent = event5;

              goto LABEL_54;
            }
          }
        }

        v64 = [plannedEvents2 countByEnumeratingWithState:&v78 objects:v94 count:16];
        if (v64)
        {
          continue;
        }

        break;
      }
    }

LABEL_54:

    v25 = v75;
    v3 = v77;
  }

  v72 = *MEMORY[0x1E69E9840];
}

- (void)updateGuidanceForLocation:(id)location navigatorState:(int)state
{
  locationCopy = location;
  objc_storeStrong(&self->_location, location);
  [(MNGuidanceManager *)self _adjustedVehicleSpeed];
  self->_speed = v7;
  [(MNGuidanceManager *)self _filterValidEvents];
  if (![(NSMutableArray *)self->_validEvents count])
  {
    v8 = MNGetMNGuidanceManagerLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *v16 = 0;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEBUG, "ⓖ No valid guidance events found.", v16, 2u);
    }
  }

  junctionViewImageLoader = self->_junctionViewImageLoader;
  if (!junctionViewImageLoader)
  {
    v10 = objc_alloc_init(MNJunctionViewImageLoader);
    v11 = self->_junctionViewImageLoader;
    self->_junctionViewImageLoader = v10;

    v12 = self->_junctionViewImageLoader;
    _junctionViewEvents = [(MNGuidanceManager *)self _junctionViewEvents];
    [(MNJunctionViewImageLoader *)v12 setJunctionViewEvents:_junctionViewEvents];

    junctionViewImageLoader = self->_junctionViewImageLoader;
  }

  [(MNGuidanceManager *)self _distanceToEndOfRoute];
  [(MNJunctionViewImageLoader *)junctionViewImageLoader updateForLocation:locationCopy remainingDistanceOnRoute:?];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained guidanceManagerBeginGuidanceUpdate:self];

  [(MNGuidanceManager *)self _considerAnnouncements];
  [(MNGuidanceManager *)self _considerCallbacksForNoAnnouncements];
  [(MNGuidanceManager *)self _considerHaptics];
  [(MNGuidanceManager *)self _considerLaneGuidance];
  [(MNGuidanceManager *)self _considerSignGuidance];
  [(MNGuidanceManager *)self _considerNavTrayGuidance];
  [(MNGuidanceManager *)self _considerPersistence];
  [(MNGuidanceManager *)self _considerJunctionViewGuidance];
  [(MNGuidanceManager *)self _considerARGuidance];
  v15 = objc_loadWeakRetained(&self->_delegate);
  [v15 guidanceManagerEndGuidanceUpdate:self];
}

- (void)updateSessionStateForReroute:(id)reroute reason:(unint64_t)reason location:(id)location
{
  v41 = *MEMORY[0x1E69E9840];
  rerouteCopy = reroute;
  locationCopy = location;
  v10 = 0;
  v11 = 1;
  if (reason > 11)
  {
    if (reason == 16)
    {
      v11 = 0;
      v10 = 0;
      goto LABEL_8;
    }

    if (reason != 12)
    {
      goto LABEL_8;
    }

LABEL_7:
    v10 = 1;
    goto LABEL_8;
  }

  if (reason - 8 < 3)
  {
    goto LABEL_7;
  }

  if (reason == 6)
  {
    v10 = 0;
    self->_isInPreArrivalState = 0;
  }

LABEL_8:
  [(MNGuidanceManager *)self setNavigationSessionState:rerouteCopy];
  [(MNGuidanceManager *)self reset];
  if (locationCopy)
  {
    objc_storeStrong(&self->_location, location);
  }

  if (v10)
  {
    v12 = [(MNGuidanceManager *)self _specialSpokenEvents:1 forLegIndex:0];
    firstObject = [v12 firstObject];

    route = [(MNGuidanceManager *)self route];
    destination = [route destination];
    -[MNGuidanceManager _notifySpeechEvent:waypointCategory:startingVariantIndex:](self, "_notifySpeechEvent:waypointCategory:startingVariantIndex:", firstObject, [destination waypointCategory], 0x7FFFFFFFFFFFFFFFLL);
  }

  if (locationCopy)
  {
    v16 = v11;
  }

  else
  {
    v16 = 1;
  }

  if ((v16 & 1) == 0 && [locationCopy state] == 1)
  {
    routeMatch = [locationCopy routeMatch];
    [routeMatch routeCoordinate];

    v18 = MNGetMNGuidanceManagerLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = GEOPolylineCoordinateAsFullString();
      *buf = 138412290;
      v40 = v19;
      _os_log_impl(&dword_1D311E000, v18, OS_LOG_TYPE_DEFAULT, "Updating guidance manager for new route. New location is on route, so suppressing guidance events up to [%@].", buf, 0xCu);
    }

    stepIndex = [locationCopy stepIndex];
    if (stepIndex <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = stepIndex;
    }

    v33 = rerouteCopy;
    currentRouteInfo = [rerouteCopy currentRouteInfo];
    route2 = [currentRouteInfo route];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = route2;
    composedGuidanceEvents = [route2 composedGuidanceEvents];
    v25 = [composedGuidanceEvents countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v35;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v35 != v27)
          {
            objc_enumerationMutation(composedGuidanceEvents);
          }

          v29 = *(*(&v34 + 1) + 8 * i);
          if ([v29 hasSpokenGuidance])
          {
            if (([v29 isSpecial] & 1) == 0 && objc_msgSend(v29, "stepIndex") <= v21)
            {
              if ([v29 stepIndex] != v21 || (objc_msgSend(v29, "startValidRouteCoordinate"), GEOPolylineCoordinateIsABeforeB()))
              {
                v30 = MNGetMNGuidanceManagerLog();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v40 = v29;
                  _os_log_impl(&dword_1D311E000, v30, OS_LOG_TYPE_INFO, "Suppressing guidance event: %@", buf, 0xCu);
                }

                [(MNGuidanceManager *)self _markEventSpoken:v29];
              }
            }
          }
        }

        v26 = [composedGuidanceEvents countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v26);
    }

    rerouteCopy = v33;
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)updateDestination:(id)destination
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = MNGetMNGuidanceManagerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[MNGuidanceManager updateDestination:]";
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEBUG, "ⓖ %s", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)repeatLastGuidanceAnnouncement:(id)announcement
{
  v32 = *MEMORY[0x1E69E9840];
  announcementCopy = announcement;
  v6 = MNGetMNGuidanceManagerLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v31 = "[MNGuidanceManager repeatLastGuidanceAnnouncement:]";
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEBUG, "ⓖ %s", buf, 0xCu);
  }

  objc_storeStrong(&self->_location, announcement);
  [(MNGuidanceManager *)self _adjustedVehicleSpeed];
  self->_speed = v7;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = self->_validEvents;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        announcements = [v14 announcements];
        v16 = [announcements count];

        if (v16)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    [v8 sortUsingSelector:sel_comparePriority_];
    firstObject = [v8 firstObject];
    selfCopy2 = self;
    v19 = firstObject;
    v20 = 0;
  }

  else
  {
    lastAnnouncementEvent = self->_lastAnnouncementEvent;
    if (!lastAnnouncementEvent)
    {
      v22 = 0;
      goto LABEL_17;
    }

    firstObject = [(MNAnnouncementPlanEvent *)lastAnnouncementEvent event];
    selfCopy2 = self;
    v19 = firstObject;
    v20 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(MNGuidanceManager *)selfCopy2 _notifySpeechEvent:v19 waypointCategory:0 startingVariantIndex:v20, v25];

  v22 = 1;
LABEL_17:

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (void)stop
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = MNGetMNGuidanceManagerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "[MNGuidanceManager stop]";
    _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_DEBUG, "ⓖ %s", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)_resetLastAnnouncementTime
{
  +[MNTimeManager currentTime];
  self->_timeLastAnnouncementStarted = v3;
  self->_timeLastAnnouncementEnded = v3;
}

- (void)reset
{
  v32 = *MEMORY[0x1E69E9840];
  junctionViewImageLoader = self->_junctionViewImageLoader;
  self->_junctionViewImageLoader = 0;

  events = self->_events;
  self->_events = 0;

  eventIndexes = self->_eventIndexes;
  self->_eventIndexes = 0;

  nextEvent = self->_nextEvent;
  self->_nextEvent = 0;

  signInfo = self->_signInfo;
  self->_signInfo = 0;

  lastAnnouncementEvent = self->_lastAnnouncementEvent;
  self->_lastAnnouncementEvent = 0;

  self->_canSpeakReturnToRouteAnnouncement = 1;
  [(MNGuidanceManager *)self _resetLastAnnouncementTime];
  [(NSMutableDictionary *)self->_feedback removeAllObjects];
  [(MNDispatchTimer *)self->_noGuidanceFauxAnnouncementTimer cancel];
  noGuidanceFauxAnnouncementTimer = self->_noGuidanceFauxAnnouncementTimer;
  self->_noGuidanceFauxAnnouncementTimer = 0;

  v10 = [MEMORY[0x1E695DFA8] setWithCapacity:6];
  for (i = 0; i != 6; ++i)
  {
    v12 = dword_1D328D464[i];
    v13 = [(MNGuidanceManager *)self _specialSpokenEvents:v12 forLegIndex:[(MNGuidanceManager *)self currentLegIndex]];
    firstObject = [v13 firstObject];

    if ([(MNGuidanceManager *)self _eventWasSpoken:firstObject])
    {
      v15 = [MEMORY[0x1E696AD98] numberWithInt:v12];
      [v10 addObject:v15];
    }
  }

  if ([(MNGuidanceManager *)self currentLegIndex])
  {
    v16 = [(MNGuidanceManager *)self _specialSpokenEvents:1 forLegIndex:0];
    firstObject2 = [v16 firstObject];

    if ([(MNGuidanceManager *)self _eventWasSpoken:firstObject2])
    {
      [v10 addObject:&unk_1F4EE2470];
    }
  }

  [(NSMutableDictionary *)self->_announcementsSpoken removeAllObjects];
  [(NSMutableSet *)self->_exclusiveSetAnnouncementsSpoken removeAllObjects];
  [(NSMutableDictionary *)self->_hapticsTriggered removeAllObjects];
  route = [(MNGuidanceManager *)self route];
  [(MNGuidanceManager *)self _initSpecialGuidanceEventsForRoute:route];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = v10;
  v20 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v28;
    do
    {
      v23 = 0;
      do
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = -[MNGuidanceManager _specialSpokenEvents:forLegIndex:](self, "_specialSpokenEvents:forLegIndex:", [*(*(&v27 + 1) + 8 * v23) unsignedIntegerValue], 0);
        firstObject3 = [v24 firstObject];

        [(MNGuidanceManager *)self _markEventSpoken:firstObject3];
        ++v23;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v21);
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(MNDispatchTimer *)self->_noGuidanceFauxAnnouncementTimer cancel];
  v3 = +[MNTimeManager sharedManager];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = MNGuidanceManager;
  [(MNGuidanceManager *)&v4 dealloc];
}

- (void)_initSpecialGuidanceEventsForRoute:(id)route
{
  v44 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  if (routeCopy)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    specialSpokenEvents = self->_specialSpokenEvents;
    p_specialSpokenEvents = &self->_specialSpokenEvents;
    self->_specialSpokenEvents = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    specialSignEvents = self->_specialSignEvents;
    p_specialSignEvents = &self->_specialSignEvents;
    self->_specialSignEvents = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    specialNavTrayEvents = self->_specialNavTrayEvents;
    p_specialNavTrayEvents = &self->_specialNavTrayEvents;
    self->_specialNavTrayEvents = dictionary3;

    dictionary4 = [MEMORY[0x1E695DF90] dictionary];
    specialAREvents = self->_specialAREvents;
    p_specialAREvents = &self->_specialAREvents;
    self->_specialAREvents = dictionary4;

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v33 = routeCopy;
    obj = [routeCopy composedGuidanceEvents];
    v13 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (!v13)
    {
      goto LABEL_22;
    }

    v14 = v13;
    v15 = *v40;
    v16 = 0x1E696A000uLL;
    while (1)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v40 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v39 + 1) + 8 * i);
        if ([v18 isSpecial])
        {
          hasSpokenGuidance = [v18 hasSpokenGuidance];
          v20 = p_specialSpokenEvents;
          if ((hasSpokenGuidance & 1) == 0)
          {
            hasSignGuidance = [v18 hasSignGuidance];
            v20 = p_specialSignEvents;
            if ((hasSignGuidance & 1) == 0)
            {
              navTrayTitleString = [v18 navTrayTitleString];
              if (navTrayTitleString)
              {

                v20 = p_specialNavTrayEvents;
              }

              else
              {
                navTrayDetailString = [v18 navTrayDetailString];

                v20 = p_specialNavTrayEvents;
                if (!navTrayDetailString)
                {
                  hasArGuidance = [v18 hasArGuidance];
                  v20 = p_specialAREvents;
                  if (!hasArGuidance)
                  {
                    continue;
                  }
                }
              }
            }
          }

          v25 = *v20;
          if (v25)
          {
            v26 = v25;
            v27 = [*(v16 + 3480) numberWithUnsignedInteger:{objc_msgSend(v18, "legIndex")}];
            v28 = [v26 objectForKeyedSubscript:v27];
            if (!v28)
            {
              v28 = objc_opt_new();
              [v26 setObject:v28 forKeyedSubscript:v27];
            }

            v29 = v16;
            v30 = [*(v16 + 3480) numberWithInt:{objc_msgSend(v18, "composedGuidanceEventType")}];
            v31 = [v28 objectForKeyedSubscript:v30];
            if (!v31)
            {
              v31 = objc_opt_new();
              [v28 setObject:v31 forKeyedSubscript:v30];
            }

            [v31 addObject:v18];

            v16 = v29;
          }
        }
      }

      v14 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (!v14)
      {
LABEL_22:

        routeCopy = v33;
        break;
      }
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (MNGuidanceManager)initWithNavigationSessionState:(id)state audioManager:(id)manager isReconnecting:(BOOL)reconnecting announcementsToIgnore:(id)ignore
{
  reconnectingCopy = reconnecting;
  v55 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  managerCopy = manager;
  ignoreCopy = ignore;
  if (stateCopy && ([stateCopy currentRouteInfo], v13 = objc_claimAutoreleasedReturnValue(), v13, v13) && (v51.receiver = self, v51.super_class = MNGuidanceManager, v14 = -[MNGuidanceManager init](&v51, sel_init), (self = v14) != 0))
  {
    objc_storeStrong(&v14->_audioManager, manager);
    v15 = objc_alloc_init(MNAnnouncementEngine);
    announcementEngine = self->_announcementEngine;
    self->_announcementEngine = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    announcementsSpoken = self->_announcementsSpoken;
    self->_announcementsSpoken = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    exclusiveSetAnnouncementsSpoken = self->_exclusiveSetAnnouncementsSpoken;
    self->_exclusiveSetAnnouncementsSpoken = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    hapticsTriggered = self->_hapticsTriggered;
    self->_hapticsTriggered = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
    feedback = self->_feedback;
    self->_feedback = v23;

    [(MNGuidanceManager *)self _resetLastAnnouncementTime];
    *&self->_hasBeenOnRouteOnce = 256;
    self->_isInPreArrivalState = 0;
    currentLaneGuidanceEvent = self->_currentLaneGuidanceEvent;
    self->_currentLaneGuidanceEvent = 0;

    signInfo = self->_signInfo;
    self->_signInfo = 0;

    [(MNGuidanceManager *)self setNavigationSessionState:stateCopy];
    route = [(MNGuidanceManager *)self route];
    [(MNGuidanceManager *)self _initSpecialGuidanceEventsForRoute:route];

    if (reconnectingCopy)
    {
      v46 = managerCopy;
      v28 = [(MNGuidanceManager *)self _specialSpokenEvents:1 forLegIndex:0];
      firstObject = [v28 firstObject];
      [(MNGuidanceManager *)self _markEventSpoken:firstObject];

      v30 = [(MNGuidanceManager *)self _specialSpokenEvents:2 forLegIndex:0];
      firstObject2 = [v30 firstObject];
      [(MNGuidanceManager *)self _markEventSpoken:firstObject2];

      v32 = [(NSMutableDictionary *)self->_specialSignEvents objectForKeyedSubscript:&unk_1F4EE2458];
      [v32 setObject:0 forKeyedSubscript:&unk_1F4EE2470];

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v33 = ignoreCopy;
      v34 = [v33 countByEnumeratingWithState:&v47 objects:v54 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v48;
        do
        {
          v37 = 0;
          do
          {
            if (*v48 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v47 + 1) + 8 * v37);
            v39 = +[MNTimeManager currentDate];
            [(NSMutableDictionary *)self->_announcementsSpoken setObject:v39 forKeyedSubscript:v38];

            ++v37;
          }

          while (v35 != v37);
          v35 = [v33 countByEnumeratingWithState:&v47 objects:v54 count:16];
        }

        while (v35);
      }

      v40 = MNGetMNGuidanceManagerLog();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = self->_announcementsSpoken;
        *buf = 138412290;
        v53 = v41;
        _os_log_impl(&dword_1D311E000, v40, OS_LOG_TYPE_INFO, "ⓖ Restarting guidance after a navd reconnection. Ignoring announcements: %@", buf, 0xCu);
      }

      managerCopy = v46;
    }

    v42 = +[MNTimeManager sharedManager];
    [v42 registerObserver:self];

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v44 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

@end