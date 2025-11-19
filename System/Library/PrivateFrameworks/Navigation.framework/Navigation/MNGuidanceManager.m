@interface MNGuidanceManager
- (BOOL)_checkValidSpokenEventForGuidanceLevel:(id)a3;
- (BOOL)_considerArrivalAnnouncements;
- (BOOL)_considerChargingAnnouncements;
- (BOOL)_considerGetOnRouteAnnouncements;
- (BOOL)_considerOtherSpecialAnnouncements;
- (BOOL)_considerStartingAnnouncements;
- (BOOL)_eventWasSpoken:(id)a3;
- (BOOL)_hasPersistentEvents;
- (BOOL)_isEVChargingEvent:(id)a3;
- (BOOL)_isInArrivalState;
- (BOOL)_isValidEvent:(id)a3;
- (BOOL)_updateDisplayStringArgument:(id)a3 event:(id)a4;
- (BOOL)_updateSpokenStringArgument:(id)a3 event:(id)a4;
- (BOOL)repeatLastGuidanceAnnouncement:(id)a3;
- (GEOComposedRoute)route;
- (MNGuidanceManager)initWithNavigationSessionState:(id)a3 audioManager:(id)a4 isReconnecting:(BOOL)a5 announcementsToIgnore:(id)a6;
- (MNGuidanceManagerDelegate)delegate;
- (NSArray)events;
- (double)_adjustedVehicleSpeed;
- (double)_distanceToEndOfRoute;
- (double)_distanceToManeuverStart;
- (double)_distanceToRouteCoordinate:(id)a3;
- (double)_headingForArEvent:(id)a3;
- (double)_timeRemainingForEvent:(id)a3;
- (double)_timeUntilEventTrigger:(id)a3;
- (double)durationOfEvent:(id)a3 announcementIndex:(unint64_t)a4 distance:(double)a5;
- (double)timeUntilNextAnnouncement;
- (id)_arrivalARGuidanceEventsForLeg:(unint64_t)a3;
- (id)_closestContinueAREventToRouteCoordinate:(id)a3;
- (id)_createArGuidanceInfosForEvent:(id)a3 forStep:(id)a4;
- (id)_durationsForEvent:(id)a3;
- (id)_evaluatedStringsForEvent:(id)a3 signStrings:(id)a4 shouldUpdateFormatStrings:(BOOL)a5 argumentHandler:(id)a6;
- (id)_junctionViewEvents;
- (id)_nextJunctionViewGuidanceEvent;
- (id)_nextLaneGuidanceEvent;
- (id)_selectAnnouncementForEvent:(id)a3 withTimeRemaining:(double)a4 selectedVariantIndex:(unint64_t *)a5;
- (id)_serverStringDictionaryForChargingEvent:(id)a3;
- (id)_signForGuidanceEvent:(id)a3 isPrimary:(BOOL)a4 shouldOverridePrimaryDistances:(BOOL)a5 distance:(double *)a6;
- (id)_sortedSignEventsFromValidSignEvents:(id)a3;
- (id)_spokenEventsRemainingInStep;
- (id)_validEventsForARGuidance;
- (id)_validEventsForSignGuidance:(BOOL *)a3;
- (int)_indexForEventUUID:(id)a3;
- (int)_maneuverTypeForAREvent:(id)a3;
- (unint64_t)_announcementStageForEvent:(id)a3;
- (unint64_t)_trafficColorForRoute:(id)a3 routeCoordinate:(id)a4;
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
- (void)_handleJunctionViewInfo:(id)a3;
- (void)_handleNoGuidanceAnnouncementTimerFiredForEvent:(id)a3;
- (void)_initSpecialGuidanceEventsForRoute:(id)a3;
- (void)_markEventSpoken:(id)a3;
- (void)_notifyAnalyticsForNewEvents:(id)a3 previousEvents:(id)a4;
- (void)_planAnnouncements;
- (void)_resetLastAnnouncementTime;
- (void)_triggerHapticsForEvent:(id)a3 timeUntilAnnouncement:(double)a4;
- (void)dealloc;
- (void)reset;
- (void)stop;
- (void)updateDestination:(id)a3;
- (void)updateGuidanceForLocation:(id)a3 navigatorState:(int)a4;
- (void)updateSessionStateForReroute:(id)a3 reason:(unint64_t)a4 location:(id)a5;
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
  v5 = [(MNGuidanceManager *)self events];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([(MNGuidanceManager *)self _isValidEvent:v10])
        {
          [(NSMutableArray *)self->_validEvents addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
    v5 = [(MNGuidanceManager *)self route];
    v6 = [v5 composedGuidanceEvents];
    v7 = [v4 arrayWithArray:v6];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [(MNGuidanceManager *)self route];
    v9 = [v8 enrouteNotices];

    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v18 + 1) + 8 * v13) guidanceEvents];
          [(NSMutableArray *)v7 addObjectsFromArray:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
  v3 = [(MNGuidanceManager *)self route];
  -[MNGuidanceManager _distanceToRouteCoordinate:](self, "_distanceToRouteCoordinate:", [v3 endRouteCoordinate]);
  v5 = v4;

  return v5;
}

- (GEOComposedRoute)route
{
  v2 = [(MNGuidanceManager *)self navigationSessionState];
  v3 = [v2 currentRouteInfo];
  v4 = [v3 route];

  return v4;
}

- (void)_considerAnnouncements
{
  v3 = [(MNGuidanceManager *)self delegate];
  v4 = [v3 isCurrentlySpeaking];

  if ((v4 & 1) == 0)
  {
    v5 = [(MNGuidanceManager *)self delegate];
    v6 = [v5 guidanceManagerIsRerouting];

    if ((v6 & 1) == 0)
    {
      v7 = [(MNGuidanceManager *)self navigationSessionState];
      if ([v7 arrivalState] == 5)
      {
        v8 = [(MNGuidanceManager *)self location];
        v9 = [v8 routeMatch];
        v10 = [v9 step];
        v11 = [v10 transportType];
        v12 = [(MNGuidanceManager *)self route];
        v13 = [v12 transportType];

        if (v11 != v13)
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
    v5 = [v4 firstObject];

    if (v5 && ![(MNGuidanceManager *)self _eventWasSpoken:v5])
    {
      if ([(MNGuidanceManager *)self _checkValidSpokenEventForGuidanceLevel:v5])
      {
        v6 = [(MNGuidanceManager *)self route];
        v7 = [v6 destination];
        -[MNGuidanceManager _notifySpeechEvent:waypointCategory:startingVariantIndex:](self, "_notifySpeechEvent:waypointCategory:startingVariantIndex:", v5, [v7 waypointCategory], 0x7FFFFFFFFFFFFFFFLL);

        v3 = 1;
LABEL_9:

        return v3;
      }

      [(MNGuidanceManager *)self _markEventSpoken:v5];
    }

    v3 = 0;
    goto LABEL_9;
  }

  return 0;
}

- (unint64_t)currentLegIndex
{
  v3 = [(MNGuidanceManager *)self navigationSessionState];
  if (v3 && (v4 = v3, -[MNGuidanceManager navigationSessionState](self, "navigationSessionState"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 targetLegIndex], v5, v4, v6 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v8 = [(MNGuidanceManager *)self navigationSessionState];
    v9 = [v8 targetLegIndex];
  }

  else
  {
    location = self->_location;
    if (!location)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    v8 = [(MNLocation *)location routeMatch];
    v9 = [v8 legIndex];
  }

  v10 = v9;

  return v10;
}

- (BOOL)_considerGetOnRouteAnnouncements
{
  if ([(MNGuidanceManager *)self currentLegIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v4 = [(MNGuidanceManager *)self _specialSpokenEvents:2 forLegIndex:[(MNGuidanceManager *)self currentLegIndex]];
  v5 = [v4 firstObject];

  if (!v5 || [(MNGuidanceManager *)self _eventWasSpoken:v5])
  {
    v3 = 0;
  }

  else
  {
    [(MNGuidanceManager *)self timeSinceLastAnnouncement];
    v7 = v6;
    v8 = [(MNAudioManager *)self->_audioManager voiceGuidanceEnabled];
    if (v7 > 0.5 || !v8)
    {
      v9 = [(MNGuidanceManager *)self delegate];
      v10 = [v9 navigationState];

      if (v10 == 1)
      {
        [(MNGuidanceManager *)self _notifySpeechEvent:v5 waypointCategory:0 startingVariantIndex:0x7FFFFFFFFFFFFFFFLL];
      }

      else
      {
        [(MNGuidanceManager *)self _markEventSpoken:v5];
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
    v3 = [(MNGuidanceManager *)self route];
    v4 = [v3 isEVRoute];

    if (v4)
    {
      if (self->_shouldShowChargingInfo || (-[MNGuidanceManager delegate](self, "delegate"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 navigationState], v5, v6 == 7))
      {
        v7 = [(MNGuidanceManager *)self _specialSpokenEvents:14 forLegIndex:[(MNGuidanceManager *)self currentLegIndex]];
        v8 = [v7 firstObject];

        if (![(MNGuidanceManager *)self _eventWasSpoken:v8])
        {
          if (self->_shouldShowChargingInfo)
          {
            if (v8)
            {
              [(MNGuidanceManager *)self _notifySpeechEvent:v8 waypointCategory:0 startingVariantIndex:0x7FFFFFFFFFFFFFFFLL];
              goto LABEL_9;
            }
          }

          else
          {
            v10 = [(MNGuidanceManager *)self delegate];
            v11 = [v10 navigationState];

            if (v11 != 7)
            {
              v12 = [(MNGuidanceManager *)self _specialSpokenEvents:13 forLegIndex:[(MNGuidanceManager *)self currentLegIndex]];
              v13 = [v12 firstObject];

              if (v13 && ![(MNGuidanceManager *)self _eventWasSpoken:v13])
              {
                [(MNGuidanceManager *)self _notifySpeechEvent:v13 waypointCategory:0 startingVariantIndex:0x7FFFFFFFFFFFFFFFLL];

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
    v6 = [v5 firstObject];

    if (v6 && ![(MNGuidanceManager *)self _eventWasSpoken:v6])
    {
      v7 = [(MNGuidanceManager *)self navigationSessionState];
      v8 = [v7 currentWaypoint];

      -[MNGuidanceManager _notifySpeechEvent:waypointCategory:startingVariantIndex:](self, "_notifySpeechEvent:waypointCategory:startingVariantIndex:", v6, [v8 waypointCategory], 0x7FFFFFFFFFFFFFFFLL);
    }

    LOBYTE(v3) = 1;
  }

  return v3;
}

- (BOOL)_isInArrivalState
{
  v3 = [(MNGuidanceManager *)self delegate];
  if ([v3 navigationState] == 7)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(MNGuidanceManager *)self delegate];
    v4 = [v5 navigationState] == 6;
  }

  return v4;
}

- (BOOL)_considerOtherSpecialAnnouncements
{
  if ([(MNGuidanceManager *)self currentLegIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v4 = [(MNGuidanceManager *)self delegate];
  v5 = [v4 navigationState];

  if (v5 > 8)
  {
    return 0;
  }

  result = 1;
  if (((1 << v5) & 0x161) != 0)
  {
    return result;
  }

  if (((1 << v5) & 0x1A) == 0)
  {
    *&self->_hasBeenOnRouteOnce = 257;
    return 0;
  }

  v6 = [(MNGuidanceManager *)self _specialSpokenEvents:3 forLegIndex:[(MNGuidanceManager *)self currentLegIndex]];
  v7 = [v6 firstObject];

  if (v7 && self->_hasBeenOnRouteOnce && self->_canSpeakReturnToRouteAnnouncement)
  {
    [(MNGuidanceManager *)self _notifySpeechEvent:v7 waypointCategory:0 startingVariantIndex:0x7FFFFFFFFFFFFFFFLL];
    self->_canSpeakReturnToRouteAnnouncement = 0;
  }

  return 1;
}

- (void)_considerHaptics
{
  if (self->_preferredGuidanceLevel == 2)
  {
    v3 = [(MNAnnouncementPlanEvent *)self->_lastAnnouncementEvent event];
    if ([v3 hasHaptics])
    {
      hapticsTriggered = self->_hapticsTriggered;
      v5 = [(MNAnnouncementPlanEvent *)self->_lastAnnouncementEvent event];
      v6 = [v5 uniqueID];
      v7 = [(NSMutableDictionary *)hapticsTriggered objectForKey:v6];

      if (!v7)
      {
        v8 = [(MNAnnouncementPlanEvent *)self->_lastAnnouncementEvent event];
        goto LABEL_10;
      }
    }

    else
    {
    }

    v8 = 0;
LABEL_10:
    if (self->_nextEvent)
    {
      v15 = v8;
      [(MNGuidanceManager *)self timeUntilNextAnnouncement];
      v9 = v15;
      v11 = v10;
      if (!v15)
      {
        v12 = [(GEOComposedGuidanceEvent *)self->_nextEvent hasHaptics];
        v9 = 0;
        if (v12)
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

      v8 = v16;
      if (!v16)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v11 = 0.0;
      if (!v8)
      {
        goto LABEL_20;
      }
    }

    v17 = v8;
    [(MNGuidanceManager *)self _triggerHapticsForEvent:v8 timeUntilAnnouncement:v11];
    v8 = v17;
LABEL_20:

    return;
  }

  [(MNGuidanceManager *)self _considerHapticsWithNoGuidance];
}

- (void)_considerLaneGuidance
{
  v44[1] = *MEMORY[0x1E69E9840];
  v3 = [(MNGuidanceManager *)self _nextLaneGuidanceEvent];
  v4 = v3;
  if (v3)
  {
    -[MNGuidanceManager _distanceToRouteCoordinate:](self, "_distanceToRouteCoordinate:", [v3 coordinateForDistanceStrings]);
    v6 = v5;
    -[MNGuidanceManager _distanceToRouteCoordinate:](self, "_distanceToRouteCoordinate:", [v4 endValidRouteCoordinate]);
    v8 = v7;
    v9 = [(MNGuidanceManager *)self navigationSessionState];
    v10 = [v9 currentWaypoint];
    v44[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
    v39 = [(MNGuidanceManager *)self _serverStringDictionaryForEvent:v4 distance:0 validDistance:v11 spoken:v6 waypoints:v8];

    v12 = [v4 uniqueID];
    LODWORD(v11) = [(MNGuidanceManager *)self _indexForEventUUID:v12];

    v13 = [MNGuidanceLaneInfo alloc];
    v14 = [v4 uniqueID];
    v15 = [v4 isLaneGuidanceForManeuver];
    v16 = [v4 lanes];
    v17 = [v4 laneTitles];
    v18 = [v4 laneInstructions];
    v19 = [v39 objectForKeyedSubscript:@"{fromOrigin}"];
    LODWORD(v38) = v11;
    v20 = [(MNGuidanceLaneInfo *)v13 initWithID:v14 isForManeuver:v15 lanes:v16 titles:v17 instructions:v18 variableOverrides:v19 distanceDetailLevel:0 composedGuidanceEventIndex:v38];

    v21 = [v4 primaryLaneStrings];
    v22 = [(MNGuidanceManager *)self _evaluatedStringsForEvent:v4 signStrings:v21 shouldUpdateFormatStrings:1 argumentHandler:0];
    [(MNGuidanceLaneInfo *)v20 setPrimaryStrings:v22];

    v23 = [v4 secondaryLaneStrings];
    v24 = [(MNGuidanceManager *)self _evaluatedStringsForEvent:v4 signStrings:v23 shouldUpdateFormatStrings:1 argumentHandler:0];
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
    v31 = [(GEOComposedGuidanceEvent *)self->_currentLaneGuidanceEvent uniqueID];
    [v30 guidanceManager:self hideLaneDirectionsForId:v31];

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
        v7 = [v6 lanes];
        v8 = [v7 count];

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

    v5 = [(MNGuidanceSignInfo *)self->_signInfo primarySign];
    v29 = [v5 uniqueID];

    v6 = [(MNGuidanceSignInfo *)self->_signInfo secondarySign];
    v7 = [v6 uniqueID];

    v31 = 0.0;
    if ([v4 count])
    {
      v8 = [v4 objectAtIndexedSubscript:0];
      v9 = [v8 stepIndex];
      v10 = [(MNGuidanceManager *)self _signForGuidanceEvent:v8 isPrimary:1 shouldOverridePrimaryDistances:v32 distance:&v31];
    }

    else
    {
      v10 = 0;
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v30 = 0.0;
    v11 = 0;
    if ([v4 count] >= 2)
    {
      v12 = [v4 objectAtIndexedSubscript:1];
      v11 = [(MNGuidanceManager *)self _signForGuidanceEvent:v12 isPrimary:0 shouldOverridePrimaryDistances:v32 distance:&v30];
    }

    v13 = [MNGuidanceSignInfo alloc];
    v14 = [(MNGuidanceSignInfo *)v13 initWithPrimarySign:v10 secondarySign:v11 stepIndex:v9 primaryDistance:v31 secondaryDistance:v30 timeUntilPrimarySign:v31 / self->_speed timeUntilSecondarySign:v30 / self->_speed];
    signInfo = self->_signInfo;
    self->_signInfo = v14;

    v16 = [(MNGuidanceSignInfo *)self->_signInfo primarySign];
    v17 = [v16 uniqueID];
    if ([MNComparison isValue:v29 equalTo:v17])
    {
      [(MNGuidanceSignInfo *)self->_signInfo secondarySign];
      v28 = v11;
      v18 = v10;
      v19 = v3;
      v21 = v20 = v7;
      v22 = [v21 uniqueID];
      v23 = [MNComparison isValue:v20 equalTo:v22];

      v7 = v20;
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
  v3 = [(MNGuidanceManager *)self navigationSessionState];
  v4 = [v3 navigationState];

  if (v4 == 7)
  {
    v5 = [(MNGuidanceManager *)self navigationSessionState];
    v6 = -[MNGuidanceManager _specialNavTrayEvents:forLeg:](self, "_specialNavTrayEvents:forLeg:", 14, [v5 targetLegIndex]);

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

    v8 = [v6 firstObject];
    v9 = [(GEOComposedGuidanceEvent *)self->_activeNavTrayGuidanceEvent uniqueID];
    v10 = [v8 uniqueID];
    v11 = v9;
    v12 = v10;
    if (v11 | v12)
    {
      v13 = v12;
      v14 = [v11 isEqual:v12];

      if ((v14 & 1) == 0)
      {
        objc_storeStrong(&self->_activeNavTrayGuidanceEvent, v8);
        if (v8)
        {
          v15 = [[MNNavTrayGuidanceEvent alloc] initWithGuidanceEvent:v8];
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
  v3 = [(MNGuidanceManager *)self _hasPersistentEvents];
  if (self->_hasPersistentEvents != v3)
  {
    self->_hasPersistentEvents = v3;
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
    v3 = self->_validEvents;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v4)
    {
      v5 = *v21;
LABEL_4:
      v6 = 0;
      while (1)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v20 + 1) + 8 * v6) isSticky])
        {
          break;
        }

        if (v4 == ++v6)
        {
          v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
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
    v7 = [(MNLocation *)self->_location routeMatch];
    [v7 routeCoordinate];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [(MNGuidanceManager *)self route];
    v3 = [v8 composedGuidanceEvents];

    v9 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
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
          objc_enumerationMutation(v3);
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
          v10 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
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
  v3 = [(MNGuidanceManager *)self _nextJunctionViewGuidanceEvent];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 uniqueID];
    v6 = [(GEOComposedGuidanceEvent *)self->_currentJunctionViewGuidanceEvent uniqueID];
    if ([v5 isEqual:v6])
    {
    }

    else
    {
      v10 = [v4 uniqueID];
      v11 = [(GEOComposedGuidanceEvent *)self->_pendingJunctionViewGuidanceEvent uniqueID];
      v12 = [v10 isEqual:v11];

      if ((v12 & 1) == 0)
      {
        v13 = MNGetMNGuidanceManagerLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = [(GEOComposedGuidanceEvent *)self->_currentJunctionViewGuidanceEvent uniqueID];
          v15 = [(GEOComposedGuidanceEvent *)self->_pendingJunctionViewGuidanceEvent uniqueID];
          *buf = 138412802;
          v30 = v4;
          v31 = 2112;
          v32 = v14;
          v33 = 2112;
          v34 = v15;
          _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_INFO, "ⓖ Requesting new junction view: %@ | previous: %@ | pending: %@", buf, 0x20u);
        }

        objc_storeStrong(&self->_pendingJunctionViewGuidanceEvent, v4);
        objc_initWeak(buf, self);
        junctionViewImageLoader = self->_junctionViewImageLoader;
        v17 = [v4 junctionView];
        v18 = [v4 uniqueID];
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __50__MNGuidanceManager__considerJunctionViewGuidance__block_invoke;
        v26[3] = &unk_1E842B4F0;
        objc_copyWeak(&v27, buf);
        [(MNJunctionViewImageLoader *)junctionViewImageLoader imagesForJunctionView:v17 eventID:v18 handler:v26];

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
        v8 = [(GEOComposedGuidanceEvent *)self->_currentJunctionViewGuidanceEvent uniqueID];
        *buf = 138412290;
        v30 = v8;
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
      v20 = [(GEOComposedGuidanceEvent *)self->_currentJunctionViewGuidanceEvent uniqueID];
      [WeakRetained guidanceManager:self hideJunctionViewForId:v20];

      v21 = self->_currentJunctionViewGuidanceEvent;
      self->_currentJunctionViewGuidanceEvent = 0;
    }

    if (self->_pendingJunctionViewGuidanceEvent)
    {
      v22 = MNGetMNGuidanceManagerLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [(GEOComposedGuidanceEvent *)self->_pendingJunctionViewGuidanceEvent uniqueID];
        *buf = 138412290;
        v30 = v23;
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
        v7 = [v6 junctionView];

        if (v7)
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
  v3 = [(MNGuidanceManager *)self _validEventsForARGuidance];
  if ([v3 count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = v3;
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
          v11 = [(MNGuidanceManager *)self route];
          v12 = [v11 stepAtIndex:{objc_msgSend(v10, "stepIndex")}];

          v13 = [(MNGuidanceManager *)self _createArGuidanceInfosForEvent:v10 forStep:v12];
          [v4 addObjectsFromArray:v13];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v7);
    }

    if (![MNComparison isValue:v4 equalTo:self->_arEvents])
    {
      v14 = MNGetMNGuidanceManagerLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [v4 valueForKey:@"debugDescription"];
        *buf = 138412290;
        v23 = v15;
        _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_INFO, "ⓖ New ar guidance events: %@", buf, 0xCu);
      }
    }

    if ([v4 count])
    {
      objc_storeStrong(&self->_arEvents, v4);
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
  v4 = [(MNLocation *)self->_location routeMatch];
  v5 = [v4 stepIndex];

  UInteger = GEOConfigGetUInteger();
  v7 = [(MNGuidanceManager *)self delegate];
  v8 = [v7 navigationState];

  if (v8 <= 8)
  {
    if (((1 << v8) & 0x11A) != 0)
    {
      if (v5 > 1 || self->_hasBeenOnRouteOnce)
      {
        v9 = UInteger + v5;
        v10 = [(MNGuidanceManager *)self route];
        v11 = [v10 stepsCount] - 1;

        if (v9 >= v11)
        {
          v12 = [(MNGuidanceManager *)self _arrivalARGuidanceEventsForLeg:[(MNGuidanceManager *)self currentLegIndex]];
          [v3 addObjectsFromArray:v12];
        }

        v13 = [(MNLocation *)self->_location routeMatch];
        v14 = -[MNGuidanceManager _closestContinueAREventToRouteCoordinate:](self, "_closestContinueAREventToRouteCoordinate:", [v13 routeCoordinate]);

        if (v14)
        {
          [v3 addObject:v14];
        }

        goto LABEL_34;
      }

      v15 = [(MNGuidanceManager *)self _specialAREvents:1 forLeg:[(MNGuidanceManager *)self currentLegIndex]];
      v16 = [(MNGuidanceManager *)self route];
      if ([v16 stepsCount] <= 1)
      {
      }

      else
      {
        v17 = [(MNLocation *)self->_location routeMatch];
        [v17 distanceFromRoute];
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

    if (v8 != 2)
    {
      if (v8 != 6)
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

    v34 = UInteger + v5;
    v35 = [(MNGuidanceManager *)self route];
    v36 = [v35 stepsCount] - 1;

    if (v34 >= v36)
    {
      goto LABEL_33;
    }
  }

LABEL_35:
  v37 = [v3 array];

  v38 = *MEMORY[0x1E69E9840];

  return v37;
}

- (unint64_t)_trafficColorForRoute:(id)a3 routeCoordinate:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [a3 traffic];
  v5 = [v4 routeTrafficColors];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    v9 = 4;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      [v11 routeCoordinate];
      if (GEOPolylineCoordinateIsABeforeB())
      {
        break;
      }

      v9 = [v11 color];
      if (v7 == ++v10)
      {
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
    v9 = 4;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)_notifyAnalyticsForNewEvents:(id)a3 previousEvents:(id)a4
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v49 = a4;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v55 objects:v60 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v55 + 1) + 8 * i);
        feedback = self->_feedback;
        v13 = [v11 uniqueID];
        v14 = [(NSMutableDictionary *)feedback objectForKey:v13];

        if (!v14)
        {
          v15 = [[MNGuidanceEventFeedback alloc] initWithEvent:v11];
          [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
          [(MNGuidanceEventFeedback *)v15 setStartTime:?];
          v16 = [v11 stepID];
          v17 = [(MNLocation *)self->_location routeMatch];
          v18 = [v17 step];
          v19 = [v18 stepID];

          if (v16 == v19)
          {
            [(MNGuidanceManager *)self _distanceToManeuverStart];
            [(MNGuidanceEventFeedback *)v15 setStartDistance:?];
          }

          [(MNLocation *)self->_location speed];
          [(MNGuidanceEventFeedback *)v15 setVehicleSpeed:?];
          v20 = [(MNGuidanceManager *)self route];
          v21 = [(MNLocation *)self->_location routeMatch];
          -[MNGuidanceEventFeedback setTrafficColor:](v15, "setTrafficColor:", -[MNGuidanceManager _trafficColorForRoute:routeCoordinate:](self, "_trafficColorForRoute:routeCoordinate:", v20, [v21 routeCoordinate]));

          if ([v11 hasSpokenGuidance])
          {
            [(MNGuidanceEventFeedback *)v15 setSelectedPrimaryStringIndex:[(MNAnnouncementPlanEvent *)self->_lastAnnouncementEvent variantIndex]];
          }

          if ([v11 hasJunctionView])
          {
            v22 = [v11 junctionView];
            v23 = [v22 imageIds];
            v24 = [v23 copy];
            [(MNGuidanceEventFeedback *)v15 setJunctionViewImageIDs:v24];
          }

          if ([v11 source] == 3)
          {
            v25 = [v11 enrouteNoticeIndex];
            v26 = [(MNGuidanceManager *)self route];
            v27 = [v26 enrouteNotices];
            v28 = [v27 count];

            if (v25 < v28)
            {
              v29 = [(MNGuidanceManager *)self route];
              v30 = [v29 enrouteNotices];
              v31 = [v30 objectAtIndexedSubscript:{objc_msgSend(v11, "enrouteNoticeIndex")}];

              v32 = [v31 trafficCamera];
              v33 = v32;
              if (v32)
              {
                v34 = [v32 identifier];
                [(MNGuidanceEventFeedback *)v15 setEnrouteNoticeIdentifier:v34];

                -[MNGuidanceEventFeedback setTrafficCameraType:](v15, "setTrafficCameraType:", [v33 type]);
              }
            }
          }

          v35 = self->_feedback;
          v36 = [v11 uniqueID];
          [(NSMutableDictionary *)v35 setObject:v15 forKeyedSubscript:v36];

          v37 = [(MNGuidanceManager *)self delegate];
          [v37 guidanceManager:self newGuidanceEventFeedback:v15];

          v9 = v50;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v55 objects:v60 count:16];
    }

    while (v8);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v38 = v49;
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
        if (([v6 containsObject:v43] & 1) == 0)
        {
          v44 = self->_feedback;
          v45 = [v43 uniqueID];
          v46 = [(NSMutableDictionary *)v44 objectForKeyedSubscript:v45];

          if (v46)
          {
            [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
            [v46 setEndTime:?];
            [(MNGuidanceManager *)self _distanceToManeuverStart];
            [v46 setEndDistance:?];
            v47 = [(MNGuidanceManager *)self delegate];
            [v47 guidanceManager:self updatedGuidanceEventFeedback:v46];
          }
        }
      }

      v40 = [v38 countByEnumeratingWithState:&v51 objects:v59 count:16];
    }

    while (v40);
  }

  v48 = *MEMORY[0x1E69E9840];
}

- (double)durationOfEvent:(id)a3 announcementIndex:(unint64_t)a4 distance:(double)a5
{
  v31[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [v8 announcements];
  v10 = [v9 count];

  if (v10)
  {
    v11 = MEMORY[0x1E695DF20];
    [v8 distanceForStrings];
    v13 = fmax(a5 - v12, 0.0);
    [v8 endValidDistance];
    v15 = fmax(a5 - v14, 0.0);
    v16 = [(MNGuidanceManager *)self route];
    v17 = [v16 destination];
    v31[0] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
    v19 = [(MNGuidanceManager *)self navigationSessionState];
    v20 = [v19 currentWaypoint];
    v21 = [v11 _navigation_serverStringDictionaryForDistance:v18 validDistance:v20 waypoints:-[MNGuidanceManager currentLegIndex](self currentDestination:"currentLegIndex") legIndex:1 spoken:0 useDisplayName:{v13, v15}];

    v30 = 1;
    v22 = MEMORY[0x1E696AEC0];
    v23 = [v8 announcements];
    v24 = [v23 objectAtIndexedSubscript:a4];
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
  v3 = [(MNLocation *)self->_location routeMatch];
  v4 = [v3 step];
  -[MNGuidanceManager _distanceToRouteCoordinate:](self, "_distanceToRouteCoordinate:", [v4 maneuverStartRouteCoordinate]);
  v6 = v5;

  return v6;
}

- (double)_distanceToRouteCoordinate:(id)a3
{
  v5 = [(MNGuidanceManager *)self route];
  v6 = [(MNLocation *)self->_location routeMatch];
  [v5 distanceBetweenRouteCoordinate:objc_msgSend(v6 andRouteCoordinate:{"routeCoordinate"), a3}];
  v8 = v7;

  return fmax(v8, 0.0);
}

- (double)_timeUntilEventTrigger:(id)a3
{
  v4 = a3;
  speed = self->_speed;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __44__MNGuidanceManager__timeUntilEventTrigger___block_invoke;
  v15 = &unk_1E842B518;
  v16 = self;
  v17 = v4;
  v6 = v4;
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

- (double)_timeRemainingForEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 composedGuidanceEventType];
  if (v5 > 0xB || ((1 << v5) & 0x80E) == 0)
  {
    [v4 endDistanceForSpeed:self->_speed];
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

- (int)_indexForEventUUID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_eventIndexes)
  {
    v8 = objc_opt_new();
    v9 = [(MNGuidanceManager *)self route];
    v10 = [v9 composedGuidanceEvents];

    if ([v10 count])
    {
      v11 = 0;
      do
      {
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
        v13 = [v10 objectAtIndexedSubscript:v11];
        v14 = [v13 uniqueID];
        [(NSDictionary *)v8 setObject:v12 forKeyedSubscript:v14];

        ++v11;
      }

      while (v11 < [v10 count]);
    }

    eventIndexes = self->_eventIndexes;
    self->_eventIndexes = v8;

    if (v5)
    {
      goto LABEL_3;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  v6 = [(NSDictionary *)self->_eventIndexes objectForKeyedSubscript:v5];
  v7 = [v6 intValue];

LABEL_9:
  return v7;
}

- (BOOL)_isEVChargingEvent:(id)a3
{
  v4 = a3;
  if ([v4 composedGuidanceEventType] - 13 > 1)
  {
    v9 = 0;
  }

  else
  {
    v5 = [(MNGuidanceManager *)self route];
    v6 = [v5 legs];
    v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v4, "legIndex")}];

    v8 = [v7 chargingStationInfo];
    v9 = v8 != 0;
  }

  return v9;
}

- (BOOL)_isValidEvent:(id)a3
{
  v4 = a3;
  if ([v4 isSpecial])
  {
    goto LABEL_10;
  }

  v5 = [(MNLocation *)self->_location routeMatch];
  v6 = [v5 isGoodMatch];

  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = [(MNGuidanceManager *)self delegate];
  v8 = [v7 navigationState];

  if (v8 != 2)
  {
    goto LABEL_10;
  }

  [(MNLocation *)self->_location speed];
  if (v9 >= 0.0)
  {
    [(MNLocation *)self->_location speed];
    if (![v4 isValidForSpeed:?])
    {
      goto LABEL_10;
    }
  }

  v10 = [(MNLocation *)self->_location routeMatch];
  [v10 routeCoordinate];

  if (![v4 hasArGuidance])
  {
    v15 = [(MNLocation *)self->_location routeMatch];
    v16 = [v15 step];

    if (v16)
    {
      [v16 routeCoordinateRange];
      GEOPolylineCoordinateIsABeforeB();
      GEOPolylineCoordinateIsABeforeB();
      GEOPolylineCoordinateIsABeforeB();
    }

    [v4 startValidRouteCoordinate];
    [v4 endValidRouteCoordinate];
    v17 = GEOPolylineCoordinateWithinRange();

    if (!v17)
    {
      goto LABEL_10;
    }

LABEL_14:
    v14 = [(MNGuidanceManager *)self _checkValidSpokenEventForGuidanceLevel:v4];
    goto LABEL_15;
  }

  v11 = [(MNGuidanceManager *)self route];
  GEOConfigGetDouble();
  [v11 routeCoordinateForDistance:objc_msgSend(v4 beforeRouteCoordinate:{"startValidRouteCoordinate"), v12}];

  v13 = [v4 legIndex];
  if (v13 == [(MNGuidanceManager *)self currentLegIndex])
  {
    if (GEOPolylineCoordinateIsABeforeOrEqualToB())
    {
      [v4 endValidRouteCoordinate];
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

- (void)_markEventSpoken:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11 = v4;
    v5 = [v4 exclusiveSetIdentifier];

    if (v5)
    {
      exclusiveSetAnnouncementsSpoken = self->_exclusiveSetAnnouncementsSpoken;
      v7 = [v11 exclusiveSetIdentifier];
      [(NSMutableSet *)exclusiveSetAnnouncementsSpoken addObject:v7];
    }

    v8 = +[MNTimeManager currentDate];
    announcementsSpoken = self->_announcementsSpoken;
    v10 = [v11 uniqueID];
    [(NSMutableDictionary *)announcementsSpoken setObject:v8 forKeyedSubscript:v10];

    v4 = v11;
  }
}

- (BOOL)_eventWasSpoken:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    announcementsSpoken = self->_announcementsSpoken;
    v7 = [v4 uniqueID];
    v8 = [(NSMutableDictionary *)announcementsSpoken objectForKeyedSubscript:v7];

    if (v8)
    {
      v9 = 1;
    }

    else
    {
      exclusiveSetAnnouncementsSpoken = self->_exclusiveSetAnnouncementsSpoken;
      v11 = [v5 exclusiveSetIdentifier];
      v9 = [(NSMutableSet *)exclusiveSetAnnouncementsSpoken containsObject:v11];
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
  v3 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(MNGuidanceManager *)self events];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 hasJunctionView])
        {
          [v9 startValidRouteCoordinate];
          if (GEOPolylineCoordinateIsValid())
          {
            [v3 addObject:v9];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)_handleJunctionViewInfo:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 uniqueID];
  v6 = [(GEOComposedGuidanceEvent *)self->_pendingJunctionViewGuidanceEvent uniqueID];
  v7 = [v5 isEqual:v6];

  v8 = MNGetMNGuidanceManagerLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v9)
    {
      v10 = [(GEOComposedGuidanceEvent *)self->_pendingJunctionViewGuidanceEvent uniqueID];
      v11 = [(GEOComposedGuidanceEvent *)self->_currentJunctionViewGuidanceEvent uniqueID];
      *buf = 138412546;
      v22 = v10;
      v23 = 2112;
      v24 = v11;
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
          [WeakRetained guidanceManager:self showJunctionView:v4];
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
    WeakRetained = [v4 uniqueID];
    v17 = [(GEOComposedGuidanceEvent *)self->_pendingJunctionViewGuidanceEvent uniqueID];
    *buf = 138412546;
    v22 = WeakRetained;
    v23 = 2112;
    v24 = v17;
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

- (double)_headingForArEvent:(id)a3
{
  v4 = a3;
  v5 = [(MNGuidanceManager *)self route];
  v6 = [v5 stepAtIndex:{objc_msgSend(v4, "stepIndex")}];

  v7 = -1.0;
  if ([v4 hasArGuidance] && v6)
  {
    v8 = [v6 startRouteCoordinate];
    v9 = [v6 endRouteCoordinate];
    if ([v4 arType] == 2)
    {
      v10 = [v6 getNextStep];

      if (v10)
      {
        [v6 endRouteCoordinate];
        v8 = GEOPolylineCoordinateNearestIndex();
        v11 = [v6 getNextStep];
        [v11 endRouteCoordinate];
        v9 = GEOPolylineCoordinateNearestIndex();
      }

      else
      {
        v8 = v9 - 1;
      }
    }

    GEOConfigGetDouble();
    v13 = v12;
    GEOConfigGetDouble();
    v15 = v14;
    v16 = [(MNGuidanceManager *)self route];
    [v16 courseAtRouteCoordinateIndex:v8];
    v7 = v17;

    v18 = (v8 + 1);
    if (v18 < v9)
    {
      v19 = v9 - v8 - 2;
      do
      {
        v20 = [(MNGuidanceManager *)self route];
        [v20 courseAtRouteCoordinateIndex:v8];
        v7 = v21;

        v22 = [(MNGuidanceManager *)self route];
        [v22 distanceBetweenIndex:v8 andIndex:v18];
        v24 = v23;

        if (v24 > v15)
        {
          break;
        }

        v25 = [(MNGuidanceManager *)self route];
        [v25 courseAtRouteCoordinateIndex:v18];
        GEOAngleDifferenceDegrees();
        v27 = v26;

        ++v18;
        v28 = fabs(v27) < v13 || v19-- == 0;
        v8 = (v8 + 1);
      }

      while (!v28);
    }
  }

  return v7;
}

- (int)_maneuverTypeForAREvent:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 hasArGuidance])
  {
    if ([v3 composedGuidanceEventType] == 1)
    {
      v4 = 17;
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v5 = [v3 arInstruction];
      v6 = [v5 formatTokens];

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v15 + 1) + 8 * i);
            if ([v11 type] == 15)
            {
              v12 = [v11 maneuverValue];
              v4 = [v12 maneuverType];

              goto LABEL_15;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      v4 = [v3 maneuverType];
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_15:

  v13 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)_arrivalARGuidanceEventsForLeg:(unint64_t)a3
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
        if ([v11 legIndex] == a3)
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

- (id)_closestContinueAREventToRouteCoordinate:(id)a3
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

- (id)_createArGuidanceInfosForEvent:(id)a3 forStep:(id)a4
{
  v154[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v130 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:1];
  -[MNGuidanceManager _distanceToRouteCoordinate:](self, "_distanceToRouteCoordinate:", [v6 coordinateForDistanceStrings]);
  v9 = fmax(v8, 0.0);
  -[MNGuidanceManager _distanceToRouteCoordinate:](self, "_distanceToRouteCoordinate:", [v6 endValidRouteCoordinate]);
  v11 = fmax(v10, 0.0);
  v12 = [(MNGuidanceManager *)self navigationSessionState];
  v13 = [v12 currentWaypoint];
  v154[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v154 count:1];
  v129 = [(MNGuidanceManager *)self _serverStringDictionaryForEvent:v6 distance:0 validDistance:v14 spoken:v9 waypoints:v11];

  if ([v6 arType] == 1)
  {
    v15 = objc_opt_new();
    v16 = [(MNGuidanceManager *)self route];
    v17 = [v16 legIndexForStepIndex:{objc_msgSend(v7, "stepIndex")}];

    v18 = [(MNGuidanceManager *)self route];
    v19 = [v18 legs];
    v20 = [v19 objectAtIndex:v17];
    v136 = [v20 startRouteCoordinate];

    v21 = [v6 gapRanges];
    v128 = v7;
    v141 = v15;
    v143 = self;
    if (v21 && (v22 = v21, [v6 gapRanges], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "count"), v23, v22, v24))
    {
      v25 = [v7 startRouteCoordinate];
      v146 = 0u;
      v147 = 0u;
      v148 = 0u;
      v149 = 0u;
      v126 = v6;
      obj = [v6 gapRanges];
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
            v30 = [(MNGuidanceManager *)self route];
            [v30 routeCoordinateForDistance:v136 afterRouteCoordinate:{objc_msgSend(v29, "startValidDistanceOffsetCm") * 0.01}];
            v31 = GEOPolylineCoordinateNearestIndex();

            v144 = 0;
            v145 = 0;
            IsInvalid = GEOPolylineCoordinateIsInvalid();
            LODWORD(v33) = vcvtms_u32_f32(*(&v25 + 1)) + v25;
            v34 = COERCE_UNSIGNED_INT(*(&v25 + 1) - floorf(*(&v25 + 1))) << 32;
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

            v40 = [(MNGuidanceManager *)self route];
            v25 = [v40 routeCoordinateForDistance:v136 afterRouteCoordinate:{objc_msgSend(v29, "endValidDistanceOffsetCm") * 0.01}];
          }

          v138 = [obj countByEnumeratingWithState:&v146 objects:v153 count:16];
        }

        while (v138);
      }

      v6 = v126;
    }

    else
    {
      v61 = [v7 startRouteCoordinate];
      [v7 endRouteCoordinate];
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
        *&v67 = *(&v61 + 1) - floorf(*(&v61 + 1));
        v66 = vcvtms_u32_f32(*(&v61 + 1)) + v61;
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
        obja = [v6 uniqueID];
        v76 = [v6 arType];
        v77 = [(MNGuidanceManager *)self _maneuverTypeForAREvent:v6];
        v78 = [v6 arInstruction];
        v79 = [v129 objectForKeyedSubscript:@"{fromOrigin}"];
        [v6 arArrowLabel];
        v81 = v80 = v73;
        v82 = [v128 maneuverRoadName];
        v83 = [v128 stepIndex];
        v84 = v77;
        v15 = v141;
        v85 = [(MNGuidanceARInfo *)v134 initWithEventID:obja type:v76 maneuverType:v84 instruction:v78 variableOverrides:v79 arrowLabel:v81 locationCoordinateRange:v144 maneuverRoadName:v145 stepIndex:v82, v83];

        v86 = v80;
        self = v143;

        [(MNGuidanceARInfo *)v85 setPriority:[(MNGuidanceARInfo *)v141 count]+ v80];
        v87 = [v6 arInstructionString];

        if (v87)
        {
          v88 = [v6 arInstructionString];
          v152 = v88;
          v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v152 count:1];
          v90 = [(MNGuidanceManager *)v143 _evaluatedStringsForEvent:v6 signStrings:v89 shouldUpdateFormatStrings:0 argumentHandler:0];
          v91 = [v90 firstObject];
          [(MNGuidanceARInfo *)v85 setInstructionString:v91];
        }

        [v130 addObject:v85];

        ++v74;
        v73 = v86 - 1;
      }

      while (v74 < [(MNGuidanceARInfo *)v141 count]);
    }

    v92 = [v6 gapRanges];
    v93 = [v92 lastObject];

    v7 = v128;
    if (v93)
    {
      v94 = [(MNGuidanceManager *)self route];
      v95 = [v94 routeCoordinateForDistance:v136 afterRouteCoordinate:{objc_msgSend(v93, "startValidDistanceOffsetCm") * 0.01}];

      LODWORD(v94) = [v6 endValidRouteCoordinate];
      if (GEOPolylineCoordinateNearestIndex() == v94)
      {
        v96 = HIDWORD(v95);
        v127 = v6;
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
        v98 = [(MNGuidanceManager *)self route];
        v99 = [v98 stepAtIndex:{objc_msgSend(v97, "stepIndex")}];
        v100 = [v99 startRouteCoordinate];
        v101 = [(MNGuidanceManager *)self route];
        v140 = v97;
        v102 = [v101 stepAtIndex:{objc_msgSend(v97, "stepIndex")}];
        [v102 endRouteCoordinate];
        v103 = GEOPolylineCoordinateNearestIndex();
        if (GEOPolylineCoordinateIsInvalid())
        {
          LODWORD(v100) = *MEMORY[0x1E69A1918];
          v104 = *(MEMORY[0x1E69A1918] + 4);
          v105 = v104;
          v106 = *MEMORY[0x1E69A1918];
        }

        else
        {
          v106 = vcvtms_u32_f32(*(&v100 + 1)) + v100;
          LODWORD(v100) = *MEMORY[0x1E69A1918];
          v105 = *(MEMORY[0x1E69A1918] + 4);
          v104 = COERCE_UNSIGNED_INT(*(&v100 + 1) - floorf(*(&v100 + 1)));
        }

        v137 = v106 | (v104 << 32);
        v107 = GEOPolylineCoordinateIsInvalid();
        v108 = v105 << 32;
        if (v107)
        {
          v109 = v100;
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
        v111 = [v127 uniqueID];
        v112 = [v97 arType];
        v113 = [(MNGuidanceManager *)self _maneuverTypeForAREvent:v127];
        v114 = [v127 arInstruction];
        v115 = [v140 arArrowLabel];
        v116 = [v128 maneuverRoadName];
        v117 = -[MNGuidanceARInfo initWithEventID:type:maneuverType:instruction:variableOverrides:arrowLabel:locationCoordinateRange:maneuverRoadName:stepIndex:](v110, "initWithEventID:type:maneuverType:instruction:variableOverrides:arrowLabel:locationCoordinateRange:maneuverRoadName:stepIndex:", v111, v112, v113, v114, v129, v115, v137, v135, v116, [v128 stepIndex]);

        v6 = v127;
        [(MNGuidanceARInfo *)v117 setPriority:0];
        v118 = [v127 arInstructionString];

        if (v118)
        {
          v119 = [v127 arInstructionString];
          v151 = v119;
          v120 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v151 count:1];
          v121 = [(MNGuidanceManager *)v143 _evaluatedStringsForEvent:v127 signStrings:v120 shouldUpdateFormatStrings:0 argumentHandler:0];
          v122 = [v121 firstObject];
          [(MNGuidanceARInfo *)v117 setInstructionString:v122];
        }

        [v130 addObject:v117];

        v7 = v128;
        v15 = v141;
      }
    }
  }

  else
  {
    if ([v6 arType] != 2)
    {
      goto LABEL_57;
    }

    v142 = [MNGuidanceARInfo alloc];
    v41 = [v6 uniqueID];
    v42 = [v6 arType];
    v43 = [(MNGuidanceManager *)self _maneuverTypeForAREvent:v6];
    v44 = [v6 arInstruction];
    [v6 arArrowLabel];
    v46 = v45 = v6;
    v47 = [(MNGuidanceManager *)self route];
    [v7 endRouteCoordinate];
    [v47 pointAt:GEOPolylineCoordinateNearestIndex()];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v54 = [v7 maneuverRoadName];
    [(MNGuidanceManager *)self _headingForArEvent:v45];
    v15 = -[MNGuidanceARInfo initWithEventID:type:maneuverType:instruction:variableOverrides:arrowLabel:locationCoordinate:maneuverRoadName:heading:stepIndex:](v142, "initWithEventID:type:maneuverType:instruction:variableOverrides:arrowLabel:locationCoordinate:maneuverRoadName:heading:stepIndex:", v41, v42, v43, v44, v129, v46, v49, v51, v53, v55, v54, [v7 stepIndex]);

    v6 = v45;
    v56 = [v45 arInstructionString];

    if (v56)
    {
      v57 = [v45 arInstructionString];
      v150 = v57;
      v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v150 count:1];
      v59 = [(MNGuidanceManager *)self _evaluatedStringsForEvent:v45 signStrings:v58 shouldUpdateFormatStrings:0 argumentHandler:0];
      v60 = [v59 firstObject];
      [(MNGuidanceARInfo *)v15 setInstructionString:v60];
    }

    [v130 addObject:v15];
  }

LABEL_57:
  v123 = [v130 array];

  v124 = *MEMORY[0x1E69E9840];

  return v123;
}

- (BOOL)_updateDisplayStringArgument:(id)a3 event:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 type];
  if (v8 > 10)
  {
    v15 = 0;
    if (v8 == 11 || v8 == 15)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v8 == 1)
    {
      v17 = [v6 distanceFormat];
      [v17 setFormatOptions:1];
      v18 = [(MNGuidanceManager *)self route];
      v19 = [v18 transportType];

      if (v19 == 2)
      {
        [v17 setFormatOptions:{objc_msgSend(v17, "formatOptions") | 2}];
      }

      v20 = [v6 token];
      v21 = [v20 isEqualToString:@"{valid_distance}"];

      if (v21)
      {
        v22 = [v7 endValidRouteCoordinate];
      }

      else
      {
        v22 = [v7 coordinateForDistanceStrings];
      }

      [(MNGuidanceManager *)self _distanceToRouteCoordinate:v22];
      v27 = [MEMORY[0x1E696AD28] _geo_distanceMeasurementForMeters:?];
      [v17 setOverrideValue:v27];

      goto LABEL_21;
    }

    if (v8 == 10)
    {
      v9 = [(MNGuidanceManager *)self route];
      v10 = [v9 legs];
      v11 = [v10 objectAtIndexedSubscript:{-[MNGuidanceManager currentLegIndex](self, "currentLegIndex")}];
      v12 = [v11 destination];

      v13 = [v6 token];
      LODWORD(v10) = [v13 isEqualToString:@"{Name}"];

      if (v10)
      {
        v14 = [v12 navDisplayName];
      }

      else
      {
        v23 = [v6 token];
        v24 = [v23 isEqualToString:@"{Address}"];

        if (!v24)
        {
LABEL_18:

LABEL_21:
          v15 = 1;
          goto LABEL_22;
        }

        v14 = [v12 navDisplayAddress];
      }

      v25 = v14;
      v26 = [v6 stringFormat];
      [v26 setOverrideValue:v25];

      goto LABEL_18;
    }
  }

  v16 = MNGetMNGuidanceManagerLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    v30 = 138412290;
    v31 = v6;
    _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_FAULT, "ⓖ Unhandled argument for display string: %@", &v30, 0xCu);
  }

  v15 = 0;
LABEL_22:

  v28 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)_evaluatedStringsForEvent:(id)a3 signStrings:(id)a4 shouldUpdateFormatStrings:(BOOL)a5 argumentHandler:(id)a6
{
  v26 = a5;
  v38 = *MEMORY[0x1E69E9840];
  v27 = a3;
  v8 = a4;
  v9 = a6;
  if (v8)
  {
    v24 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v22 = v8;
    obj = v8;
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
          v15 = [v14 defaultOptions];
          v16 = [v15 arguments];
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __101__MNGuidanceManager__evaluatedStringsForEvent_signStrings_shouldUpdateFormatStrings_argumentHandler___block_invoke;
          v28[3] = &unk_1E842B4C8;
          v28[4] = self;
          v29 = v27;
          v30 = v9;
          v17 = [v16 _geo_compactMap:v28];

          [v15 setArguments:v17];
          [v15 setShouldUpdateFormatStrings:v26];
          v18 = [v14 composedStringWithOptions:v15];
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

    v8 = v22;
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

- (id)_signForGuidanceEvent:(id)a3 isPrimary:(BOOL)a4 shouldOverridePrimaryDistances:(BOOL)a5 distance:(double *)a6
{
  v7 = a5;
  v54 = a4;
  v64[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v55 = [v8 signDetails];
  v9 = [v8 shieldInfo];

  if (v9)
  {
    v10 = [v8 shieldInfo];
    v52 = [v10 shield];

    v11 = [v8 shieldInfo];
    v12 = [v11 shieldType];

    v13 = [v8 shieldInfo];
    v51 = [v13 name];
  }

  else
  {
    v51 = 0;
    v52 = 0;
    v12 = 0;
  }

  -[MNGuidanceManager _distanceToRouteCoordinate:](self, "_distanceToRouteCoordinate:", [v8 coordinateForDistanceStrings]);
  v15 = fmax(v14, 0.0);
  -[MNGuidanceManager _distanceToRouteCoordinate:](self, "_distanceToRouteCoordinate:", [v8 endValidRouteCoordinate]);
  v17 = fmax(v16, 0.0);
  if (!v54)
  {
    goto LABEL_15;
  }

  if ([v8 composedGuidanceEventType] == 11 || objc_msgSend(v8, "composedGuidanceEventType") == 12)
  {
    v18 = [(MNGuidanceManager *)self navigationSessionState];
    v19 = [v18 currentWaypoint];

    v20 = [v19 waypointCategory];
    if ([v55 count] <= v20)
    {
      if (![v55 count])
      {
LABEL_12:

        goto LABEL_13;
      }

      v21 = [v55 firstObject];
      v63 = v21;
      v22 = &v63;
    }

    else
    {
      v21 = [v55 objectAtIndexedSubscript:v20];
      v64[0] = v21;
      v22 = v64;
    }

    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];

    v55 = v23;
    goto LABEL_12;
  }

LABEL_13:
  if (v7)
  {
    v24 = [(MNLocation *)self->_location routeMatch];
    [v24 distanceFromRoute];
    v17 = v25;

    v15 = v17;
  }

LABEL_15:
  *a6 = v15;
  v26 = [(MNGuidanceManager *)self navigationSessionState];
  v27 = [v26 currentWaypoint];
  v62 = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
  v50 = [(MNGuidanceManager *)self _serverStringDictionaryForEvent:v8 distance:0 validDistance:v28 spoken:v15 waypoints:v17];

  v29 = [v8 signTitles];
  if ([v29 count])
  {
  }

  else
  {
    v30 = [v55 count] == 0;

    if (v30)
    {
      v39 = 0;
      goto LABEL_24;
    }
  }

  v53 = 0;
  v31 = [v8 transportType] == 2;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0xBFF0000000000000;
  if (v54)
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
  v33 = [v8 uniqueID];
  v34 = [v8 signTitles];
  v35 = [v50 objectForKeyedSubscript:@"{fromOrigin}"];
  v36 = [v8 maneuverJunction];
  v37 = [v8 artworkOverride];
  v38 = [v8 uniqueID];
  LODWORD(v49) = [(MNGuidanceManager *)self _indexForEventUUID:v38];
  LODWORD(v48) = v12;
  v39 = [(MNGuidanceSignDescription *)v32 initWithID:v33 titles:v34 details:v55 variableOverrides:v35 distanceDetailLevel:(2 * v31) junction:v36 artworkOverride:v37 shieldText:v52 shieldID:v48 shieldStringID:v51 composedGuidanceEventIndex:v49];

  v40 = [v8 primarySignStrings];
  v41 = [(MNGuidanceManager *)self _evaluatedStringsForEvent:v8 signStrings:v40 shouldUpdateFormatStrings:1 argumentHandler:v53];
  [(MNGuidanceSignDescription *)v39 setPrimaryStrings:v41];

  v42 = [v8 secondarySignStrings];
  v43 = [(MNGuidanceManager *)self _evaluatedStringsForEvent:v8 signStrings:v42 shouldUpdateFormatStrings:1 argumentHandler:0];
  [(MNGuidanceSignDescription *)v39 setSecondaryStrings:v43];

  [(MNGuidanceSignDescription *)v39 setIsStaticText:v59[3] < 0.0];
  if (v54 && v59[3] >= 0.0)
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

- (id)_sortedSignEventsFromValidSignEvents:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
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
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [v4 sortUsingComparator:&__block_literal_global_6385];
  v11 = *MEMORY[0x1E69E9840];

  return v4;
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

- (id)_validEventsForSignGuidance:(BOOL *)a3
{
  v5 = [MEMORY[0x1E695DF70] array];
  if (a3)
  {
    *a3 = 0;
    v6 = [(MNGuidanceManager *)self delegate];
    v7 = [v6 navigationState];

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        if (self->_isInPreArrivalState)
        {
          goto LABEL_22;
        }

        v12 = [(MNGuidanceManager *)self _specialSignEvents:3 forLeg:[(MNGuidanceManager *)self currentLegIndex]];
        v8 = [v12 firstObject];

        if (!v8)
        {
          goto LABEL_21;
        }

        [(NSMutableArray *)v5 addObject:v8];
LABEL_20:
        *a3 = 1;
        goto LABEL_21;
      }

      if (v7 != 8)
      {
        goto LABEL_22;
      }
    }

    else if (v7 != 1)
    {
      if (v7 != 2 || self->_isInPreArrivalState || self->_shouldShowChargingInfo)
      {
LABEL_22:
        if (self->_shouldShowChargingInfo)
        {
          v13 = 14;
        }

        else
        {
          v14 = [(MNGuidanceManager *)self delegate];
          v15 = [v14 navigationState];

          if (v15 != 7)
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
        v17 = [v16 firstObject];

        if (v17)
        {
          [(NSMutableArray *)v5 addObject:v17];
        }

LABEL_31:
        v18 = [(MNGuidanceManager *)self delegate];
        if ([v18 navigationState] != 6)
        {
          v19 = [(MNGuidanceManager *)self delegate];
          if ([v19 navigationState] != 7)
          {
            isInPreArrivalState = self->_isInPreArrivalState;

            if (!isInPreArrivalState)
            {
              goto LABEL_46;
            }

LABEL_35:
            v20 = [(MNGuidanceManager *)self _specialSignEvents:12 forLeg:[(MNGuidanceManager *)self currentLegIndex]];
            v21 = [v20 firstObject];

            v22 = [(MNGuidanceManager *)self _specialSignEvents:11 forLeg:[(MNGuidanceManager *)self currentLegIndex]];
            v23 = [v22 firstObject];

            if (v21)
            {
              v24 = [(NSArray *)self->_previousSignEvents containsObject:v21];
              v25 = v21;
              if (!v24)
              {
                if (v23)
                {
                  v26 = [(NSArray *)self->_previousSignEvents containsObject:v23];
                  v25 = v23;
                  if (!v26)
                  {
                    if (self->_isInPreArrivalState)
                    {
                      v25 = v21;
                    }

                    else
                    {
                      v25 = v23;
                    }
                  }
                }

                else
                {
                  if (self->_isInPreArrivalState)
                  {
                    v25 = v21;
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
              if (!v23)
              {
LABEL_45:

                goto LABEL_46;
              }

              [(NSArray *)self->_previousSignEvents containsObject:v23];
              v25 = v23;
            }

            [(NSMutableArray *)v5 addObject:v25];
            goto LABEL_45;
          }
        }

        goto LABEL_35;
      }

      self->_hasBeenOnRouteOnce = 1;
      v8 = v5;
      v5 = self->_validEvents;
LABEL_21:

      goto LABEL_22;
    }

    if (self->_isInPreArrivalState)
    {
      goto LABEL_22;
    }

    v9 = [(MNGuidanceManager *)self _specialSignEvents:1 forLeg:[(MNGuidanceManager *)self currentLegIndex]];
    v8 = v9;
    if (self->_hasBeenOnRouteOnce || ![v9 count])
    {
      v10 = [(MNGuidanceManager *)self _specialSignEvents:3 forLeg:[(MNGuidanceManager *)self currentLegIndex]];
      v11 = [v10 firstObject];

      if (v11)
      {
        [(NSMutableArray *)v5 addObject:v11];
        *a3 = 1;
      }

      goto LABEL_21;
    }

    [(NSMutableArray *)v5 addObjectsFromArray:v8];
    goto LABEL_20;
  }

LABEL_46:
  v27 = v5;

  return v5;
}

- (void)_triggerHapticsForEvent:(id)a3 timeUntilAnnouncement:(double)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 hasHaptics])
  {
    v7 = MNGetMNGuidanceManagerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(MNLocation *)self->_location routeMatch];
      [v8 routeCoordinate];
      v9 = GEOPolylineCoordinateAsFullString();
      v15 = 138412802;
      v16 = v9;
      v17 = 2048;
      v18 = a4;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "Triggering haptics at [%@], %0.2f seconds before announcement: %@", &v15, 0x20u);
    }

    v10 = +[MNTimeManager currentDate];
    hapticsTriggered = self->_hapticsTriggered;
    v12 = [v6 uniqueID];
    [(NSMutableDictionary *)hapticsTriggered setObject:v10 forKeyedSubscript:v12];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained guidanceManager:self triggerHaptics:{objc_msgSend(v6, "maneuverType")}];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_considerHapticsWithNoGuidance
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(MNLocation *)self->_location routeMatch];
  v4 = [v3 isGoodMatch];

  if (v4)
  {
    v5 = [(MNGuidanceManager *)self delegate];
    v6 = [v5 navigationState];

    if (v6 == 2)
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
              v14 = [v12 uniqueID];
              v15 = [(NSMutableDictionary *)hapticsTriggered objectForKeyedSubscript:v14];

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

- (id)_durationsForEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 spokenStrings];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__MNGuidanceManager__durationsForEvent___block_invoke;
  v9[3] = &unk_1E842B458;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 _geo_map:v9];

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

- (id)_serverStringDictionaryForChargingEvent:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = [(MNGuidanceManager *)self route];
  v5 = [v4 mutableData];
  v6 = [v5 chargingStationInfoForLegIndex:{-[MNGuidanceManager currentLegIndex](self, "currentLegIndex")}];

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

- (void)_handleNoGuidanceAnnouncementTimerFiredForEvent:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  noGuidanceHandledEvents = self->_noGuidanceHandledEvents;
  if (!noGuidanceHandledEvents)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    v7 = self->_noGuidanceHandledEvents;
    self->_noGuidanceHandledEvents = v6;

    noGuidanceHandledEvents = self->_noGuidanceHandledEvents;
  }

  v8 = [v4 uniqueID];
  [(NSMutableSet *)noGuidanceHandledEvents addObject:v8];

  noGuidanceFauxAnnouncementTimer = self->_noGuidanceFauxAnnouncementTimer;
  self->_noGuidanceFauxAnnouncementTimer = 0;

  v10 = MNGetMNGuidanceManagerLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v4 uniqueID];
    v14 = 138412290;
    v15 = v11;
    _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_DEFAULT, "Sending fake didProcessSpeechEvent: %@", &v14, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained guidanceManager:self didProcessSpeechEvent:v4];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_considerCallbacksForNoAnnouncements
{
  v38 = *MEMORY[0x1E69E9840];
  if ([(MNGuidanceManager *)self preferredGuidanceLevel]!= 2 && !self->_noGuidanceFauxAnnouncementTimer)
  {
    v3 = [(MNLocation *)self->_location routeMatch];
    [v3 routeCoordinate];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v4 = [(MNGuidanceManager *)self route];
    v5 = [v4 composedGuidanceEvents];

    v6 = [v5 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v6)
    {
      v7 = *v32;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v32 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v31 + 1) + 8 * i);
          noGuidanceHandledEvents = self->_noGuidanceHandledEvents;
          v11 = [v9 uniqueID];
          LOBYTE(noGuidanceHandledEvents) = [(NSMutableSet *)noGuidanceHandledEvents containsObject:v11];

          if ((noGuidanceHandledEvents & 1) == 0)
          {
            v12 = [v9 spokenStrings];
            v13 = v12 == 0;

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
                      v18 = [v14 uniqueID];
                      *buf = 138412290;
                      v36 = v18;
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

        v6 = [v5 countByEnumeratingWithState:&v31 objects:v37 count:16];
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

- (BOOL)_updateSpokenStringArgument:(id)a3 event:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 type];
  v9 = 0;
  if (v8 > 9)
  {
    switch(v8)
    {
      case 10:
        v24 = [(MNGuidanceManager *)self route];
        v25 = [v24 legs];
        v26 = [v25 objectAtIndexedSubscript:{-[MNGuidanceManager currentLegIndex](self, "currentLegIndex")}];
        v14 = [v26 destination];

        v27 = [v6 token];
        LODWORD(v25) = [v27 isEqualToString:@"{Name}"];

        if (v25)
        {
          v28 = [v14 navAnnouncementName];
        }

        else
        {
          v36 = [v6 token];
          v37 = [v36 isEqualToString:@"{Address}"];

          if (!v37)
          {
LABEL_22:

            goto LABEL_27;
          }

          v28 = [v14 navAnnouncementAddress];
        }

        v17 = v28;
        v38 = [v6 stringFormat];
        [v38 setOverrideValue:v17];

LABEL_21:
        goto LABEL_22;
      case 13:
        v29 = [v6 token];
        v30 = [v29 isEqualToString:@"{ChargePercentage}"];

        if (v30)
        {
          v31 = [(MNGuidanceManager *)self route];
          v32 = [v31 mutableData];
          v14 = [v32 chargingStationInfoForLegIndex:{-[MNGuidanceManager currentLegIndex](self, "currentLegIndex")}];

          [v14 batteryPercentageAfterCharging];
          v34 = v33;
          v17 = [v6 percentageFormat];
          *&v35 = v34;
          [v17 setOverrideValue:v35];
          goto LABEL_21;
        }

        goto LABEL_27;
      case 18:
        v18 = [v6 substitutionFormat];
        v19 = [(MNGuidanceManager *)self route];
        v20 = [v19 waypoints];

        v21 = [v18 waypointIndex];
        if (v21 >= [v20 count])
        {
          [v20 lastObject];
        }

        else
        {
          [v20 objectAtIndexedSubscript:{objc_msgSend(v18, "waypointIndex")}];
        }
        v39 = ;
        v40 = [v39 waypointCategory];
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __55__MNGuidanceManager__updateSpokenStringArgument_event___block_invoke;
        v43[3] = &unk_1E842B430;
        v44 = v39;
        v41 = v39;
        [v18 setSubstitutionForWaypointCategory:v40 handler:v43];

        goto LABEL_25;
    }
  }

  else
  {
    if ((v8 - 3) < 2)
    {
      v10 = [v6 token];
      v11 = [v10 isEqualToString:@"{ChargeDuration}"];

      if (v11)
      {
        v12 = [(MNGuidanceManager *)self route];
        v13 = [v12 mutableData];
        v14 = [v13 chargingStationInfoForLegIndex:{-[MNGuidanceManager currentLegIndex](self, "currentLegIndex")}];

        [v14 chargingTime];
        v16 = v15;
        v17 = [v6 durationFormat];
        [v17 setOverrideValue:v16];
        goto LABEL_21;
      }

LABEL_27:
      v9 = 1;
      goto LABEL_28;
    }

    if (v8 == 1)
    {
      v18 = [v6 distanceFormat];
      [v18 setFormatOptions:156];
      if ([v7 isSpecial])
      {
        goto LABEL_26;
      }

      v22 = [v6 token];
      v23 = [v22 isEqualToString:@"{distance}"];

      if (!v23)
      {
        goto LABEL_26;
      }

      -[MNGuidanceManager _distanceToRouteCoordinate:](self, "_distanceToRouteCoordinate:", [v7 coordinateForDistanceStrings]);
      v20 = [MEMORY[0x1E696AD28] _geo_distanceMeasurementForMeters:?];
      [v18 setOverrideValue:v20];
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

- (id)_selectAnnouncementForEvent:(id)a3 withTimeRemaining:(double)a4 selectedVariantIndex:(unint64_t *)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 spokenStrings];
  v9 = [v8 count];

  v10 = 0;
  if (v9)
  {
    v9 = 0;
    if (a4 == 1.79769313e308)
    {
      v11 = -1.0;
    }

    else
    {
      v11 = a4;
    }

    do
    {
      v12 = [v7 spokenStrings];
      v13 = [v12 objectAtIndexedSubscript:v9];

      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __88__MNGuidanceManager__selectAnnouncementForEvent_withTimeRemaining_selectedVariantIndex___block_invoke;
      v39[3] = &unk_1E842B408;
      v39[4] = self;
      v14 = v7;
      v40 = v14;
      v15 = [v13 optionsWithArgumentHandler:v39];
      v16 = [v13 stringResultWithOptions:v15];
      if ([v16 success])
      {
        v17 = [v16 string];

        [(MNAudioManager *)self->_audioManager durationOf:v17];
        v19 = v18;
        v20 = MNGetMNGuidanceManagerLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109632;
          *v42 = v9;
          *&v42[4] = 2048;
          *&v42[6] = v19;
          *&v42[14] = 2048;
          *&v42[16] = v11;
          _os_log_impl(&dword_1D311E000, v20, OS_LOG_TYPE_DEBUG, "ⓖ Considering announcement %d with duration %.1f, time remaining %.1f", buf, 0x1Cu);
        }

        v21 = v19 <= a4;
        v10 = v17;
      }

      else
      {
        v22 = MNGetMNGuidanceManagerLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          v23 = [v16 string];
          *buf = 138412546;
          *v42 = v23;
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
      v24 = [v14 spokenStrings];
      v25 = [v24 count];
    }

    while (v9 < v25);
  }

  v26 = [v7 spokenStrings];
  v27 = [v26 count];

  if (v9 >= v27)
  {
    v31 = [v7 spokenStrings];
    v9 = [v31 count] - 1;

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
      v29 = [v7 announcements];
      v30 = [v29 count];
      *buf = 67109376;
      *v42 = v9;
      *&v42[4] = 1024;
      *&v42[6] = v30;
      _os_log_impl(&dword_1D311E000, v28, OS_LOG_TYPE_DEBUG, "ⓖ Selected announcement %d (%d variant(s))", buf, 0xEu);
    }
  }

  *a5 = v9;
  v32 = [v7 spokenStrings];
  v33 = [v32 objectAtIndexedSubscript:v9];
  v34 = [v33 isPrivate];

  if (v34)
  {
    v35 = [v10 _navigation_stringByMarkingAsPrivateText];

    v10 = v35;
  }

  v36 = *MEMORY[0x1E69E9840];

  return v10;
}

- (unint64_t)_announcementStageForEvent:(id)a3
{
  v3 = a3;
  if ([v3 hasSpokenGuidance])
  {
    v4 = [v3 composedGuidanceEventType];
    if ((v4 - 4) <= 4)
    {
      v5 = (v4 - 3);
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

- (BOOL)_checkValidSpokenEventForGuidanceLevel:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 hasSpokenGuidance] && (objc_msgSend(v4, "supportsGuidanceLevel:", self->_preferredGuidanceLevel) & 1) == 0)
  {
    loggedSkippedSpokenEvents = self->_loggedSkippedSpokenEvents;
    if (!loggedSkippedSpokenEvents)
    {
      v7 = [MEMORY[0x1E695DFA8] set];
      v8 = self->_loggedSkippedSpokenEvents;
      self->_loggedSkippedSpokenEvents = v7;

      loggedSkippedSpokenEvents = self->_loggedSkippedSpokenEvents;
    }

    v9 = [v4 uniqueID];
    v10 = [(NSMutableSet *)loggedSkippedSpokenEvents containsObject:v9];

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
        v21 = v4;
        _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEFAULT, "Tried to announce guidance event, but skipping because the user's preferred guidance level %@ does not support the event's type:\n\t%@", buf, 0x16u);
      }

      v14 = self->_loggedSkippedSpokenEvents;
      v15 = [v4 uniqueID];
      [(NSMutableSet *)v14 addObject:v15];
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
  v3 = [(MNLocation *)self->_location routeMatch];
  v4 = [v3 step];
  [v4 endRouteCoordinate];

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
          v11 = [v10 announcements];
          v12 = [v11 count];

          if (v12)
          {
            if (![(MNGuidanceManager *)self _eventWasSpoken:v10])
            {
              v13 = [(MNLocation *)self->_location routeMatch];
              [v13 routeCoordinate];
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
        v11 = [v10 announcements];
        v12 = [v11 count];

        if (v12)
        {
          [v10 repetitionInterval];
          if (v13 > 0.0 && [(MNGuidanceManager *)self _eventWasSpoken:v10])
          {
            announcementsSpoken = self->_announcementsSpoken;
            v15 = [v10 uniqueID];
            v16 = [(NSMutableDictionary *)announcementsSpoken objectForKeyedSubscript:v15];

            [v3 timeIntervalSinceDate:v16];
            v18 = v17;
            [v10 repetitionInterval];
            if (v18 >= v19)
            {
              v20 = self->_announcementsSpoken;
              [v10 uniqueID];
              v21 = self;
              v22 = v4;
              v24 = v23 = v3;
              [(NSMutableDictionary *)v20 removeObjectForKey:v24];

              v3 = v23;
              v4 = v22;
              self = v21;
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
          v36 = [v34 uniqueID];
          [v28 setObject:v35 forKey:v36];
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
      v46 = [(MNAnnouncementEngine *)self->_announcementEngine plan];
      *buf = 134218243;
      v97 = (v44 - Current) * 1000.0;
      v98 = 2113;
      v99 = v46;
      _os_log_impl(&dword_1D311E000, v45, OS_LOG_TYPE_DEBUG, "ⓖ Planned announcements in %.2fms : %{private}@", buf, 0x16u);
    }

    v47 = [(MNAnnouncementEngine *)self->_announcementEngine nextEvent];
    v48 = v47;
    if (v47)
    {
      v49 = [v47 event];
      v50 = [*&v4 containsObject:v49];

      if (v50)
      {
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v51 = [(MNAnnouncementEngine *)self->_announcementEngine plan];
        v52 = [v51 plannedEvents];

        v53 = [v52 countByEnumeratingWithState:&v82 objects:v95 count:16];
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
              objc_enumerationMutation(v52);
            }

            v57 = *(*(&v82 + 1) + 8 * v56);
            if (v57 == v48)
            {
              break;
            }

            if (([*(*(&v82 + 1) + 8 * v56) includeInPlan] & 1) == 0)
            {
              v58 = [v57 event];
              [(MNGuidanceManager *)self _markEventSpoken:v58];
            }

            if (v54 == ++v56)
            {
              v54 = [v52 countByEnumeratingWithState:&v82 objects:v95 count:16];
              if (v54)
              {
                goto LABEL_34;
              }

              break;
            }
          }
        }

        v59 = [v48 event];
        -[MNGuidanceManager _notifySpeechEvent:waypointCategory:startingVariantIndex:](self, "_notifySpeechEvent:waypointCategory:startingVariantIndex:", v59, 0, [v48 variantIndex]);
      }
    }

    v74 = v48;
    nextEvent = self->_nextEvent;
    self->_nextEvent = 0;

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v61 = [(MNAnnouncementEngine *)self->_announcementEngine plan];
    v62 = [v61 plannedEvents];

    v63 = [v62 countByEnumeratingWithState:&v78 objects:v94 count:16];
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
            objc_enumerationMutation(v62);
          }

          v67 = *(*(&v78 + 1) + 8 * k);
          if ([v67 includeInPlan])
          {
            v68 = [v67 event];
            v69 = [(MNGuidanceManager *)self _eventWasSpoken:v68];

            if (!v69)
            {
              v70 = [v67 event];
              v71 = self->_nextEvent;
              self->_nextEvent = v70;

              goto LABEL_54;
            }
          }
        }

        v64 = [v62 countByEnumeratingWithState:&v78 objects:v94 count:16];
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

- (void)updateGuidanceForLocation:(id)a3 navigatorState:(int)a4
{
  v6 = a3;
  objc_storeStrong(&self->_location, a3);
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
    v13 = [(MNGuidanceManager *)self _junctionViewEvents];
    [(MNJunctionViewImageLoader *)v12 setJunctionViewEvents:v13];

    junctionViewImageLoader = self->_junctionViewImageLoader;
  }

  [(MNGuidanceManager *)self _distanceToEndOfRoute];
  [(MNJunctionViewImageLoader *)junctionViewImageLoader updateForLocation:v6 remainingDistanceOnRoute:?];
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

- (void)updateSessionStateForReroute:(id)a3 reason:(unint64_t)a4 location:(id)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = 0;
  v11 = 1;
  if (a4 > 11)
  {
    if (a4 == 16)
    {
      v11 = 0;
      v10 = 0;
      goto LABEL_8;
    }

    if (a4 != 12)
    {
      goto LABEL_8;
    }

LABEL_7:
    v10 = 1;
    goto LABEL_8;
  }

  if (a4 - 8 < 3)
  {
    goto LABEL_7;
  }

  if (a4 == 6)
  {
    v10 = 0;
    self->_isInPreArrivalState = 0;
  }

LABEL_8:
  [(MNGuidanceManager *)self setNavigationSessionState:v8];
  [(MNGuidanceManager *)self reset];
  if (v9)
  {
    objc_storeStrong(&self->_location, a5);
  }

  if (v10)
  {
    v12 = [(MNGuidanceManager *)self _specialSpokenEvents:1 forLegIndex:0];
    v13 = [v12 firstObject];

    v14 = [(MNGuidanceManager *)self route];
    v15 = [v14 destination];
    -[MNGuidanceManager _notifySpeechEvent:waypointCategory:startingVariantIndex:](self, "_notifySpeechEvent:waypointCategory:startingVariantIndex:", v13, [v15 waypointCategory], 0x7FFFFFFFFFFFFFFFLL);
  }

  if (v9)
  {
    v16 = v11;
  }

  else
  {
    v16 = 1;
  }

  if ((v16 & 1) == 0 && [v9 state] == 1)
  {
    v17 = [v9 routeMatch];
    [v17 routeCoordinate];

    v18 = MNGetMNGuidanceManagerLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = GEOPolylineCoordinateAsFullString();
      *buf = 138412290;
      v40 = v19;
      _os_log_impl(&dword_1D311E000, v18, OS_LOG_TYPE_DEFAULT, "Updating guidance manager for new route. New location is on route, so suppressing guidance events up to [%@].", buf, 0xCu);
    }

    v20 = [v9 stepIndex];
    if (v20 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20;
    }

    v33 = v8;
    v22 = [v8 currentRouteInfo];
    v23 = [v22 route];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = v23;
    v24 = [v23 composedGuidanceEvents];
    v25 = [v24 countByEnumeratingWithState:&v34 objects:v38 count:16];
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
            objc_enumerationMutation(v24);
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

        v26 = [v24 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v26);
    }

    v8 = v33;
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)updateDestination:(id)a3
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

- (BOOL)repeatLastGuidanceAnnouncement:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MNGetMNGuidanceManagerLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v31 = "[MNGuidanceManager repeatLastGuidanceAnnouncement:]";
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEBUG, "ⓖ %s", buf, 0xCu);
  }

  objc_storeStrong(&self->_location, a3);
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
        v15 = [v14 announcements];
        v16 = [v15 count];

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
    v17 = [v8 firstObject];
    v18 = self;
    v19 = v17;
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

    v17 = [(MNAnnouncementPlanEvent *)lastAnnouncementEvent event];
    v18 = self;
    v19 = v17;
    v20 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(MNGuidanceManager *)v18 _notifySpeechEvent:v19 waypointCategory:0 startingVariantIndex:v20, v25];

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
    v14 = [v13 firstObject];

    if ([(MNGuidanceManager *)self _eventWasSpoken:v14])
    {
      v15 = [MEMORY[0x1E696AD98] numberWithInt:v12];
      [v10 addObject:v15];
    }
  }

  if ([(MNGuidanceManager *)self currentLegIndex])
  {
    v16 = [(MNGuidanceManager *)self _specialSpokenEvents:1 forLegIndex:0];
    v17 = [v16 firstObject];

    if ([(MNGuidanceManager *)self _eventWasSpoken:v17])
    {
      [v10 addObject:&unk_1F4EE2470];
    }
  }

  [(NSMutableDictionary *)self->_announcementsSpoken removeAllObjects];
  [(NSMutableSet *)self->_exclusiveSetAnnouncementsSpoken removeAllObjects];
  [(NSMutableDictionary *)self->_hapticsTriggered removeAllObjects];
  v18 = [(MNGuidanceManager *)self route];
  [(MNGuidanceManager *)self _initSpecialGuidanceEventsForRoute:v18];

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
        v25 = [v24 firstObject];

        [(MNGuidanceManager *)self _markEventSpoken:v25];
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

- (void)_initSpecialGuidanceEventsForRoute:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    specialSpokenEvents = self->_specialSpokenEvents;
    p_specialSpokenEvents = &self->_specialSpokenEvents;
    self->_specialSpokenEvents = v5;

    v7 = [MEMORY[0x1E695DF90] dictionary];
    specialSignEvents = self->_specialSignEvents;
    p_specialSignEvents = &self->_specialSignEvents;
    self->_specialSignEvents = v7;

    v9 = [MEMORY[0x1E695DF90] dictionary];
    specialNavTrayEvents = self->_specialNavTrayEvents;
    p_specialNavTrayEvents = &self->_specialNavTrayEvents;
    self->_specialNavTrayEvents = v9;

    v11 = [MEMORY[0x1E695DF90] dictionary];
    specialAREvents = self->_specialAREvents;
    p_specialAREvents = &self->_specialAREvents;
    self->_specialAREvents = v11;

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v33 = v4;
    obj = [v4 composedGuidanceEvents];
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
          v19 = [v18 hasSpokenGuidance];
          v20 = p_specialSpokenEvents;
          if ((v19 & 1) == 0)
          {
            v21 = [v18 hasSignGuidance];
            v20 = p_specialSignEvents;
            if ((v21 & 1) == 0)
            {
              v22 = [v18 navTrayTitleString];
              if (v22)
              {

                v20 = p_specialNavTrayEvents;
              }

              else
              {
                v23 = [v18 navTrayDetailString];

                v20 = p_specialNavTrayEvents;
                if (!v23)
                {
                  v24 = [v18 hasArGuidance];
                  v20 = p_specialAREvents;
                  if (!v24)
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

        v4 = v33;
        break;
      }
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (MNGuidanceManager)initWithNavigationSessionState:(id)a3 audioManager:(id)a4 isReconnecting:(BOOL)a5 announcementsToIgnore:(id)a6
{
  v7 = a5;
  v55 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v10 && ([v10 currentRouteInfo], v13 = objc_claimAutoreleasedReturnValue(), v13, v13) && (v51.receiver = self, v51.super_class = MNGuidanceManager, v14 = -[MNGuidanceManager init](&v51, sel_init), (self = v14) != 0))
  {
    objc_storeStrong(&v14->_audioManager, a4);
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

    [(MNGuidanceManager *)self setNavigationSessionState:v10];
    v27 = [(MNGuidanceManager *)self route];
    [(MNGuidanceManager *)self _initSpecialGuidanceEventsForRoute:v27];

    if (v7)
    {
      v46 = v11;
      v28 = [(MNGuidanceManager *)self _specialSpokenEvents:1 forLegIndex:0];
      v29 = [v28 firstObject];
      [(MNGuidanceManager *)self _markEventSpoken:v29];

      v30 = [(MNGuidanceManager *)self _specialSpokenEvents:2 forLegIndex:0];
      v31 = [v30 firstObject];
      [(MNGuidanceManager *)self _markEventSpoken:v31];

      v32 = [(NSMutableDictionary *)self->_specialSignEvents objectForKeyedSubscript:&unk_1F4EE2458];
      [v32 setObject:0 forKeyedSubscript:&unk_1F4EE2470];

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v33 = v12;
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

      v11 = v46;
    }

    v42 = +[MNTimeManager sharedManager];
    [v42 registerObserver:self];

    self = self;
    v43 = self;
  }

  else
  {
    v43 = 0;
  }

  v44 = *MEMORY[0x1E69E9840];
  return v43;
}

@end