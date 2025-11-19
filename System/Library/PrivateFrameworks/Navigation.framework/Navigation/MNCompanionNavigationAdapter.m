@interface MNCompanionNavigationAdapter
- (BOOL)_isInvalidated;
- (MNCompanionNavigationAdapter)init;
- (MNCompanionNavigationAdapter)initWithDelegate:(id)a3;
- (MNCompanionNavigationDelegate)delegate;
- (void)_cancelScheduledRouteStatus;
- (void)_cancelScheduledRouteUpdates;
- (void)_handleNavigationServiceStopped;
- (void)_markCurrentHapticsAsTriggered;
- (void)_populateInitialDistanceToManeuver;
- (void)_reloadRouteFromNavigationService:(id)a3;
- (void)_reset;
- (void)_scheduleCoalescedRouteStatusUpdate;
- (void)_scheduleCoalescedRouteUpdates;
- (void)_sendRouteDetailsAndStatus;
- (void)_sendRouteStatus;
- (void)_sendRouteUpdates;
- (void)_setActiveStepIndex:(unint64_t)a3;
- (void)_setAnnouncementStage:(unint64_t)a3;
- (void)_setDestinationName:(id)a3;
- (void)_setDisplayedStepIndex:(unint64_t)a3;
- (void)_setGuidancePromptsEnabled:(BOOL)a3;
- (void)_setLastLocation:(id)a3;
- (void)_setLocationUnreliable:(BOOL)a3;
- (void)_setNextAnnouncementStage:(unint64_t)a3 timeUntilNextAnnouncement:(double)a4;
- (void)_setPositionFromDestination:(id)a3;
- (void)_setPositionFromManeuver:(double)a3;
- (void)_setRealtimeUpdates:(id)a3;
- (void)_setRouteMatch:(id)a3;
- (void)_setTransitAlightMessage:(id)a3;
- (void)_updateNavigationStatesOnRouteStatus;
- (void)dealloc;
- (void)invalidate;
- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)navigationService:(id)a3 didReceiveRealtimeUpdates:(id)a4;
- (void)navigationService:(id)a3 didReceiveTransitAlert:(id)a4;
- (void)navigationService:(id)a3 didReroute:(id)a4 rerouteReason:(unint64_t)a5;
- (void)navigationService:(id)a3 didResumeNavigatingFromWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5 reason:(unint64_t)a6;
- (void)navigationService:(id)a3 didSwitchToNewTransportType:(int)a4 newRoute:(id)a5 traffic:(id)a6;
- (void)navigationService:(id)a3 didUpdateDisplayETA:(id)a4 remainingDistance:(id)a5 batteryChargeInfo:(id)a6;
- (void)navigationService:(id)a3 didUpdateDistanceUntilManeuver:(double)a4 timeUntilManeuver:(double)a5 forStepIndex:(unint64_t)a6;
- (void)navigationService:(id)a3 didUpdateMatchedLocation:(id)a4;
- (void)navigationService:(id)a3 didUpdateRouteWithNewRideSelection:(id)a4;
- (void)navigationService:(id)a3 isApproachingEndOfLeg:(unint64_t)a4;
- (void)navigationService:(id)a3 updateSignsWithInfo:(id)a4;
- (void)navigationServiceDidCancelReroute:(id)a3;
- (void)navigationServiceDidSynchronize:(id)a3;
- (void)navigationServiceWillReroute:(id)a3;
- (void)setIsConnectedToCarplay:(BOOL)a3;
- (void)setIsNavigatingInLowGuidance:(BOOL)a3;
@end

@implementation MNCompanionNavigationAdapter

- (void)_scheduleCoalescedRouteStatusUpdate
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (!self->_coalescedRouteStatusTimer && ![(MNCompanionNavigationAdapter *)self _isInvalidated])
  {
    v3 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__sendRouteStatus selector:0 userInfo:0 repeats:0.1];
    coalescedRouteStatusTimer = self->_coalescedRouteStatusTimer;
    self->_coalescedRouteStatusTimer = v3;
  }
}

- (BOOL)_isInvalidated
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = WeakRetained == 0;

  return v3;
}

- (void)_sendRouteStatus
{
  v15 = *MEMORY[0x1E69E9840];
  [(MNCompanionNavigationAdapter *)self _cancelScheduledRouteStatus];
  v4 = [(GEOCompanionRouteStatus *)self->_companionRouteStatus copy];
  if ([v4 hasFeedbackType])
  {
    if (self->_shouldSendRouteWithStatus)
    {
      [(MNCompanionNavigationAdapter *)self _sendRouteDetailsAndStatus];
    }

    else
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = NSStringFromSelector(a2);
        v11 = 138543362;
        v12 = v8;
        _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_INFO, "%{public}@", &v11, 0xCu);
      }

      v9 = [(MNCompanionNavigationAdapter *)self delegate];
      [v9 updateNavigationRouteStatus:v4];
    }

    [(MNCompanionNavigationAdapter *)self _markCurrentHapticsAsTriggered];
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = NSStringFromSelector(a2);
      v11 = 138543618;
      v12 = v6;
      v13 = 2114;
      v14 = @"early return; no feedback type";
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "%{public}@ %{public}@", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_markCurrentHapticsAsTriggered
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = NSStringFromSelector(a2);
    v7 = [(GEOCompanionRouteStatus *)self->_companionRouteStatus hasHapticsType];
    if (v7)
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = [(GEOCompanionRouteStatus *)self->_companionRouteStatus hapticsType];
      v2 = @"NO_TURN";
      switch(v9)
      {
        case 0:
          break;
        case 1:
          v2 = @"LEFT_TURN";
          break;
        case 2:
          v2 = @"RIGHT_TURN";
          break;
        case 3:
          v2 = @"STRAIGHT_AHEAD";
          break;
        case 4:
          v2 = @"U_TURN";
          break;
        case 5:
          v2 = @"FOLLOW_ROAD";
          break;
        case 6:
          v2 = @"ENTER_ROUNDABOUT";
          break;
        case 7:
          v2 = @"EXIT_ROUNDABOUT";
          break;
        case 11:
          v2 = @"OFF_RAMP";
          break;
        case 12:
          v2 = @"ON_RAMP";
          break;
        case 16:
          v2 = @"ARRIVE_END_OF_NAVIGATION";
          break;
        case 17:
          v2 = @"START_ROUTE";
          break;
        case 18:
          v2 = @"ARRIVE_AT_DESTINATION";
          break;
        case 20:
          v2 = @"KEEP_LEFT";
          break;
        case 21:
          v2 = @"KEEP_RIGHT";
          break;
        case 22:
          v2 = @"ENTER_FERRY";
          break;
        case 23:
          v2 = @"EXIT_FERRY";
          break;
        case 24:
          v2 = @"CHANGE_FERRY";
          break;
        case 25:
          v2 = @"START_ROUTE_WITH_U_TURN";
          break;
        case 26:
          v2 = @"U_TURN_AT_ROUNDABOUT";
          break;
        case 27:
          v2 = @"LEFT_TURN_AT_END";
          break;
        case 28:
          v2 = @"RIGHT_TURN_AT_END";
          break;
        case 29:
          v2 = @"HIGHWAY_OFF_RAMP_LEFT";
          break;
        case 30:
          v2 = @"HIGHWAY_OFF_RAMP_RIGHT";
          break;
        case 33:
          v2 = @"ARRIVE_AT_DESTINATION_LEFT";
          break;
        case 34:
          v2 = @"ARRIVE_AT_DESTINATION_RIGHT";
          break;
        case 35:
          v2 = @"U_TURN_WHEN_POSSIBLE";
          break;
        case 39:
          v2 = @"ARRIVE_END_OF_DIRECTIONS";
          break;
        case 41:
          v2 = @"ROUNDABOUT_EXIT_1";
          break;
        case 42:
          v2 = @"ROUNDABOUT_EXIT_2";
          break;
        case 43:
          v2 = @"ROUNDABOUT_EXIT_3";
          break;
        case 44:
          v2 = @"ROUNDABOUT_EXIT_4";
          break;
        case 45:
          v2 = @"ROUNDABOUT_EXIT_5";
          break;
        case 46:
          v2 = @"ROUNDABOUT_EXIT_6";
          break;
        case 47:
          v2 = @"ROUNDABOUT_EXIT_7";
          break;
        case 48:
          v2 = @"ROUNDABOUT_EXIT_8";
          break;
        case 49:
          v2 = @"ROUNDABOUT_EXIT_9";
          break;
        case 50:
          v2 = @"ROUNDABOUT_EXIT_10";
          break;
        case 51:
          v2 = @"ROUNDABOUT_EXIT_11";
          break;
        case 52:
          v2 = @"ROUNDABOUT_EXIT_12";
          break;
        case 53:
          v2 = @"ROUNDABOUT_EXIT_13";
          break;
        case 54:
          v2 = @"ROUNDABOUT_EXIT_14";
          break;
        case 55:
          v2 = @"ROUNDABOUT_EXIT_15";
          break;
        case 56:
          v2 = @"ROUNDABOUT_EXIT_16";
          break;
        case 57:
          v2 = @"ROUNDABOUT_EXIT_17";
          break;
        case 58:
          v2 = @"ROUNDABOUT_EXIT_18";
          break;
        case 59:
          v2 = @"ROUNDABOUT_EXIT_19";
          break;
        case 60:
          v2 = @"SHARP_LEFT_TURN";
          break;
        case 61:
          v2 = @"SHARP_RIGHT_TURN";
          break;
        case 62:
          v2 = @"SLIGHT_LEFT_TURN";
          break;
        case 63:
          v2 = @"SLIGHT_RIGHT_TURN";
          break;
        case 64:
          v2 = @"CHANGE_HIGHWAY";
          break;
        case 65:
          v2 = @"CHANGE_HIGHWAY_LEFT";
          break;
        case 66:
          v2 = @"CHANGE_HIGHWAY_RIGHT";
          break;
        case 80:
          v2 = @"TOLL_STATION";
          break;
        case 81:
          v2 = @"ENTER_TUNNEL";
          break;
        case 82:
          v2 = @"WAYPOINT_STOP";
          break;
        case 83:
          v2 = @"WAYPOINT_STOP_LEFT";
          break;
        case 84:
          v2 = @"WAYPOINT_STOP_RIGHT";
          break;
        case 85:
          v2 = @"RESUME_ROUTE";
          break;
        case 86:
          v2 = @"RESUME_ROUTE_WITH_U_TURN";
          break;
        case 87:
          v2 = @"CUSTOM";
          break;
        case 88:
          v2 = @"TURN_AROUND";
          break;
        default:
          v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v9];
          break;
      }

      v10 = [v8 stringWithFormat:@"%@ -> %@", v2, @"NO_TURN"];
    }

    else
    {
      v10 = @"N/A";
    }

    *buf = 138543618;
    v13 = v6;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "%{public}@ %{public}@", buf, 0x16u);
    if (v7)
    {
    }
  }

  if ([(GEOCompanionRouteStatus *)self->_companionRouteStatus hasHapticsType])
  {
    [(GEOCompanionRouteStatus *)self->_companionRouteStatus setHapticsType:0];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_cancelScheduledRouteStatus
{
  if (self->_coalescedRouteStatusTimer)
  {
    dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
    [(NSTimer *)self->_coalescedRouteStatusTimer invalidate];
    coalescedRouteStatusTimer = self->_coalescedRouteStatusTimer;
    self->_coalescedRouteStatusTimer = 0;
  }
}

- (MNCompanionNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_populateInitialDistanceToManeuver
{
  v3 = [(GEOCompanionRouteStatus *)self->_companionRouteStatus stepID];
  if ([(GEOCompanionRouteDetails *)self->_companionRouteDetails stepsCount]<= v3)
  {
    v6 = 0;
  }

  else
  {
    v4 = [(GEOCompanionRouteDetails *)self->_companionRouteDetails steps];
    v6 = [v4 objectAtIndexedSubscript:v3];
  }

  if ([v6 hasDistanceMeters])
  {
    [v6 distanceMeters];
    [(MNCompanionNavigationAdapter *)self _setPositionFromManeuver:v5];
  }
}

- (void)_handleNavigationServiceStopped
{
  [(MNCompanionNavigationAdapter *)self _reset];

  [(MNCompanionNavigationAdapter *)self _sendRouteDetailsAndStatus];
}

- (void)_reloadRouteFromNavigationService:(id)a3
{
  v10 = a3;
  v4 = [v10 route];
  if (v4)
  {
    v5 = [v10 destinationName];
    [(MNCompanionNavigationAdapter *)self _setDestinationName:v5];

    v6 = [v4 traffic];
    -[MNCompanionNavigationAdapter _setRoute:traffic:isTrace:](self, "_setRoute:traffic:isTrace:", v4, v6, [v10 traceIsPlaying]);

    v7 = [MEMORY[0x1E695DFD8] setWithObject:v4];
    v8 = [v10 realtimeUpdatesForRoutes:v7];
    v9 = [v8 allObjects];
    [(MNCompanionNavigationAdapter *)self _setRealtimeUpdates:v9];
  }

  else
  {
    [(MNCompanionNavigationAdapter *)self _cancelScheduledRouteStatus];
    [(MNCompanionNavigationAdapter *)self _cancelScheduledRouteUpdates];
  }
}

- (void)navigationService:(id)a3 didUpdateRouteWithNewRideSelection:(id)a4
{
  companionRouteStatus = self->_companionRouteStatus;
  v6 = a4;
  v7 = [v6 uniqueRouteID];
  v8 = [v7 _maps_data];
  [(GEOCompanionRouteStatus *)companionRouteStatus updateClusteredSectionSelectedRideIndicesFromRoute:v6 routeID:v8];

  [(MNCompanionNavigationAdapter *)self _scheduleCoalescedRouteStatusUpdate];
}

- (void)navigationService:(id)a3 didReceiveTransitAlert:(id)a4
{
  v13 = a4;
  v5 = [v13 command];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    v6 = [v13 command];

    if (v6)
    {
      goto LABEL_5;
    }
  }

  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = [v8 UUIDString];
  [v7 setIdentifier:v9];

  [v7 setStepID:{objc_msgSend(v13, "stepIndex")}];
  [v7 setStopID:{objc_msgSend(v13, "stopIndex")}];
  v10 = [v13 artwork];
  [v7 setArtwork:v10];

  v11 = [v13 command];
  [v7 setTitle:v11];

  v12 = [v13 detail];
  [v7 setDetail:v12];

  [(MNCompanionNavigationAdapter *)self _setTransitAlightMessage:v7];
LABEL_5:
}

- (void)navigationService:(id)a3 didReceiveRealtimeUpdates:(id)a4
{
  v5 = [a4 allObjects];
  [(MNCompanionNavigationAdapter *)self _setRealtimeUpdates:v5];
}

- (void)navigationService:(id)a3 didUpdateDistanceUntilManeuver:(double)a4 timeUntilManeuver:(double)a5 forStepIndex:(unint64_t)a6
{
  v9 = [a3 route];
  v10 = [v9 composedGuidanceEvents];
  v11 = [v10 count];

  if (!v11)
  {
    [(MNCompanionNavigationAdapter *)self _setDisplayedStepIndex:a6];

    [(MNCompanionNavigationAdapter *)self _setPositionFromManeuver:a4];
  }
}

- (void)navigationService:(id)a3 updateSignsWithInfo:(id)a4
{
  v5 = [a4 primarySign];
  v6 = [v5 displayRemainingDistance];
  v7 = [MEMORY[0x1E696B058] meters];
  v8 = [v6 measurementByConvertingToUnit:v7];

  [v8 doubleValue];
  [(MNCompanionNavigationAdapter *)self _setPositionFromManeuver:?];
}

- (void)navigationService:(id)a3 didSwitchToNewTransportType:(int)a4 newRoute:(id)a5 traffic:(id)a6
{
  v9 = a6;
  v10 = a5;
  -[MNCompanionNavigationAdapter _setRoute:traffic:isTrace:](self, "_setRoute:traffic:isTrace:", v10, v9, [a3 traceIsPlaying]);
}

- (void)navigationService:(id)a3 didReroute:(id)a4 rerouteReason:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 destinationName];
  [(MNCompanionNavigationAdapter *)self _setDestinationName:v9];

  v11 = [v7 traffic];
  v10 = [v8 traceIsPlaying];

  [(MNCompanionNavigationAdapter *)self _setRoute:v7 traffic:v11 isTrace:v10];
}

- (void)navigationServiceDidCancelReroute:(id)a3
{
  [(GEOCompanionRouteStatus *)self->_companionRouteStatus setFeedbackType:1];

  [(MNCompanionNavigationAdapter *)self _scheduleCoalescedRouteStatusUpdate];
}

- (void)navigationServiceWillReroute:(id)a3
{
  [(GEOCompanionRouteStatus *)self->_companionRouteStatus setFeedbackType:5];

  [(MNCompanionNavigationAdapter *)self _scheduleCoalescedRouteStatusUpdate];
}

- (void)navigationService:(id)a3 didUpdateDisplayETA:(id)a4 remainingDistance:(id)a5 batteryChargeInfo:(id)a6
{
  v17 = a4;
  v8 = a5;
  v9 = [(GEOComposedRoute *)self->_route uniqueRouteID];
  v10 = [v17 routeID];
  v11 = v9;
  v12 = v10;
  if (!(v11 | v12) || (v13 = v12, v14 = [v11 isEqual:v12], v13, v11, v13, v11, v14))
  {
    v15 = [v17 displayRemainingMinutesToEndOfLeg] * 60.0;
    [v8 distanceRemainingToEndOfLeg];
    [(MNCompanionNavigationAdapter *)self _setPositionFromDestination:v15, v16];
  }
}

- (void)navigationService:(id)a3 didUpdateMatchedLocation:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = MNGetPuckTrackingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 uuid];
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "[MN] [%@] - Processing - in MNCompanionNavigationAdapter::navigationService:didUpdateMatchedLocation:", &v11, 0xCu);
  }

  v8 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithCLLocation:v5];
  [(MNCompanionNavigationAdapter *)self _setLastLocation:v8];
  v9 = [v5 routeMatch];
  [(MNCompanionNavigationAdapter *)self _setRouteMatch:v9];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)navigationService:(id)a3 didResumeNavigatingFromWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5 reason:(unint64_t)a6
{
  if ([(GEONavigationGuidanceState *)self->_guidanceState navigationState:a3]== 7)
  {

    [(MNCompanionNavigationAdapter *)self _setNavigationState:1];
  }
}

- (void)navigationService:(id)a3 isApproachingEndOfLeg:(unint64_t)a4
{
  v6 = [a3 route];
  v7 = [v6 legs];
  if ([v7 count] - 1 == a4)
  {
    v8 = 6;
  }

  else
  {
    v8 = 7;
  }

  [(MNCompanionNavigationAdapter *)self _setNavigationState:v8];
}

- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v8 = a3;
  v9 = v8;
  if (a4 > 3 || a5 < 4)
  {
    if (a4 >= 4 && !a5)
    {
      [(MNCompanionNavigationAdapter *)self _handleNavigationServiceStopped];
    }
  }

  else
  {
    [(MNCompanionNavigationAdapter *)self _reloadRouteFromNavigationService:v8];
  }

  [(MNCompanionNavigationAdapter *)self setIsNavigatingInLowGuidance:a5 == 5];
}

- (void)navigationServiceDidSynchronize:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [v5 state];
    if ((v8 - 1) > 5)
    {
      v9 = @"Stopped";
    }

    else
    {
      v9 = off_1E842AC68[v8 - 1];
    }

    v10 = v9;
    v14 = 138543618;
    v15 = v7;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "%{public}@ with state %{public}@", &v14, 0x16u);
  }

  if (![v5 state])
  {
    if ((-[GEOCompanionRouteStatus isNavigating](self->_companionRouteStatus, "isNavigating") & 1) != 0 || (-[GEOCompanionRouteDetails routeID](self->_companionRouteDetails, "routeID"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 length], v11, v12))
    {
      [(MNCompanionNavigationAdapter *)self _handleNavigationServiceStopped];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_sendRouteUpdates
{
  v23 = *MEMORY[0x1E69E9840];
  [(MNCompanionNavigationAdapter *)self _cancelScheduledRouteUpdates];
  v4 = self->_companionRouteUpdates;
  if ([(NSArray *)v4 count])
  {
    companionRouteUpdates = self->_companionRouteUpdates;
    self->_companionRouteUpdates = 0;

    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138543362;
      v22 = v7;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "%{public}@", buf, 0xCu);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v4;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * v12);
          v14 = [(MNCompanionNavigationAdapter *)self delegate];
          [v14 updateNavigationRouteWithUpdate:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_sendRouteDetailsAndStatus
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [(GEOCompanionRouteDetails *)self->_companionRouteDetails copy];
  v5 = [(GEOCompanionRouteStatus *)self->_companionRouteStatus copy];
  v6 = v5;
  if (v4 && ![v5 hasFeedbackType])
  {
    v10 = 1;
  }

  else
  {
    [(MNCompanionNavigationAdapter *)self _cancelScheduledRouteStatus];
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(a2);
      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_INFO, "%{public}@", &v12, 0xCu);
    }

    v9 = [(MNCompanionNavigationAdapter *)self delegate];
    [v9 updateNavigationRouteDetails:v4 routeStatus:v6];

    v10 = 0;
  }

  self->_shouldSendRouteWithStatus = v10;

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_cancelScheduledRouteUpdates
{
  coalescedRouteUpdatesTimer = self->_coalescedRouteUpdatesTimer;
  if (coalescedRouteUpdatesTimer)
  {
    [(NSTimer *)coalescedRouteUpdatesTimer invalidate];
    v4 = self->_coalescedRouteUpdatesTimer;
    self->_coalescedRouteUpdatesTimer = 0;
  }
}

- (void)_scheduleCoalescedRouteUpdates
{
  if (!self->_coalescedRouteUpdatesTimer && ![(MNCompanionNavigationAdapter *)self _isInvalidated])
  {
    v3 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__sendRouteUpdates selector:0 userInfo:0 repeats:0.0];
    coalescedRouteUpdatesTimer = self->_coalescedRouteUpdatesTimer;
    self->_coalescedRouteUpdatesTimer = v3;
  }
}

- (void)_setTransitAlightMessage:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = NSStringFromSelector(a2);
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "%@ %@", &v9, 0x16u);
  }

  [(GEOCompanionRouteStatus *)self->_companionRouteStatus setAlightMessage:v5];
  [(MNCompanionNavigationAdapter *)self _scheduleCoalescedRouteStatusUpdate];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_setRealtimeUpdates:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 transitUpdate];
          if (v12)
          {
            v13 = [objc_alloc(MEMORY[0x1E69A1C40]) initWithTransitRouteUpdate:v12];
            [v5 addObject:v13];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  companionRouteUpdates = self->_companionRouteUpdates;
  self->_companionRouteUpdates = v14;

  [(MNCompanionNavigationAdapter *)self _scheduleCoalescedRouteUpdates];
  v16 = *MEMORY[0x1E69E9840];
}

- (void)_setNextAnnouncementStage:(unint64_t)a3 timeUntilNextAnnouncement:(double)a4
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_nextAnnouncementStage != a3)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromSelector(a2);
      nextAnnouncementStage = self->_nextAnnouncementStage;
      v12 = 138543874;
      v13 = v9;
      v14 = 2048;
      v15 = nextAnnouncementStage;
      v16 = 2048;
      v17 = a3;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_INFO, "%{public}@ changing nextAnnouncementStage from %lu to %lu", &v12, 0x20u);
    }
  }

  self->_nextAnnouncementStage = a3;
  self->_timeUntilNextAnnouncement = a4;
  [(MNCompanionNavigationAdapter *)self _updateNavigationStatesOnRouteStatus];
  [(MNCompanionNavigationAdapter *)self _scheduleCoalescedRouteStatusUpdate];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)_setAnnouncementStage:(unint64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_announcementStage != a3)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      announcementStage = self->_announcementStage;
      v10 = 138543874;
      v11 = v7;
      v12 = 2048;
      v13 = announcementStage;
      v14 = 2048;
      v15 = a3;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "%{public}@ changing announcementStage from %lu to %lu", &v10, 0x20u);
    }

    self->_announcementStage = a3;
    [(MNCompanionNavigationAdapter *)self _updateNavigationStatesOnRouteStatus];
    [(MNCompanionNavigationAdapter *)self _scheduleCoalescedRouteStatusUpdate];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_setPositionFromDestination:(id)a3
{
  var0 = a3.var0;
  remainingTime = self->_positionFromDestination.remainingTime;
  remainingDistance = self->_positionFromDestination.remainingDistance;
  self->_positionFromDestination.remainingTime = var0;
  self->_positionFromDestination.remainingDistance = a3.var1;
  if (vabdd_f64(remainingTime, var0) >= 0.01 || (remainingDistance = vabdd_f64(remainingDistance, a3.var1), remainingDistance >= 0.01))
  {
    LODWORD(v3) = vcvtad_u64_f64(a3.var1);
    [(GEOCompanionRouteStatus *)self->_companionRouteStatus setDistanceRemainingOnRoute:v3, remainingDistance];
    LODWORD(v8) = vcvtmd_u64_f64(var0);
    [(GEOCompanionRouteStatus *)self->_companionRouteStatus setRemainingTime:v8];

    [(MNCompanionNavigationAdapter *)self _scheduleCoalescedRouteStatusUpdate];
  }
}

- (void)_setPositionFromManeuver:(double)a3
{
  positionFromManeuver = self->_positionFromManeuver;
  self->_positionFromManeuver = a3;
  if (vabdd_f64(a3, positionFromManeuver) >= 2.22044605e-16)
  {
    LODWORD(v3) = vcvtad_u64_f64(a3);
    [(GEOCompanionRouteStatus *)self->_companionRouteStatus setDistanceToManeuver:v3];

    [(MNCompanionNavigationAdapter *)self _scheduleCoalescedRouteStatusUpdate];
  }
}

- (void)_setDisplayedStepIndex:(unint64_t)a3
{
  if (self->_displayedStepIndex != a3)
  {
    self->_displayedStepIndex = a3;
    if (a3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(GEOCompanionRouteStatus *)self->_companionRouteStatus setDisplayedStepID:0];
      [(GEOCompanionRouteStatus *)self->_companionRouteStatus setHasDisplayedStepID:0];
    }

    else
    {
      [(GEOCompanionRouteStatus *)self->_companionRouteStatus setDisplayedStepID:?];
    }

    [(MNCompanionNavigationAdapter *)self _scheduleCoalescedRouteStatusUpdate];
  }
}

- (void)_setActiveStepIndex:(unint64_t)a3
{
  if (self->_activeStepIndex != a3)
  {
    self->_activeStepIndex = a3;
    if ([(GEONavigationGuidanceState *)self->_guidanceState navigationState]!= 6 && [(GEONavigationGuidanceState *)self->_guidanceState navigationState]!= 7)
    {
      [(GEOCompanionRouteStatus *)self->_companionRouteStatus setFeedbackType:2];
    }

    [(GEOCompanionRouteStatus *)self->_companionRouteStatus setStepID:a3];
    [(MNCompanionNavigationAdapter *)self _populateInitialDistanceToManeuver];

    [(MNCompanionNavigationAdapter *)self _scheduleCoalescedRouteStatusUpdate];
  }
}

- (void)_setGuidancePromptsEnabled:(BOOL)a3
{
  if (self->_guidancePromptsEnabled != a3)
  {
    self->_guidancePromptsEnabled = a3;
    [(GEOCompanionRouteStatus *)self->_companionRouteStatus setGuidancePromptsEnabled:?];

    [(MNCompanionNavigationAdapter *)self _scheduleCoalescedRouteStatusUpdate];
  }
}

- (void)_setDestinationName:(id)a3
{
  v4 = a3;
  destinationName = self->_destinationName;
  v9 = v4;
  if (!destinationName || (v6 = [(NSString *)destinationName isEqualToString:v4], v4 = v9, !v6))
  {
    v7 = [v4 copy];
    v8 = self->_destinationName;
    self->_destinationName = v7;

    [(GEOCompanionRouteDetails *)self->_companionRouteDetails setDestinationName:self->_destinationName];
    self->_shouldSendRouteWithStatus = 1;
    [(MNCompanionNavigationAdapter *)self _scheduleCoalescedRouteStatusUpdate];
    v4 = v9;
  }
}

- (void)_setRouteMatch:(id)a3
{
  v5 = a3;
  if (self->_routeMatch != v5)
  {
    v11 = v5;
    objc_storeStrong(&self->_routeMatch, a3);
    if (self->_displayedStepIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(GEOCompanionRouteStatus *)self->_companionRouteStatus setStepID:[(GEORouteMatch *)v11 stepIndex]];
      [(MNCompanionNavigationAdapter *)self _populateInitialDistanceToManeuver];
    }

    [(GEOCompanionRouteStatus *)self->_companionRouteStatus setRouteLocationIndex:[(GEORouteMatch *)v11 routeCoordinate]];
    LODWORD(v6) = [(GEORouteMatch *)v11 routeCoordinate]>> 32;
    [(GEOCompanionRouteStatus *)self->_companionRouteStatus setRouteLocationOffset:v6];
    [(GEORouteMatch *)v11 distanceFromRoute];
    LODWORD(v8) = vcvtad_u64_f64(v7);
    [(GEOCompanionRouteStatus *)self->_companionRouteStatus setDistanceToRoute:v8];
    if (v11)
    {
      v9 = objc_alloc(MEMORY[0x1E69A1E50]);
      [(GEORouteMatch *)v11 locationCoordinate];
      v10 = [v9 initWithCoordinate:?];
      [(GEOCompanionRouteStatus *)self->_companionRouteStatus setRouteMatchCoordinate:v10];
    }

    [(MNCompanionNavigationAdapter *)self _scheduleCoalescedRouteStatusUpdate];
    v5 = v11;
  }
}

- (void)_setLocationUnreliable:(BOOL)a3
{
  if (self->_locationUnreliable != a3)
  {
    self->_locationUnreliable = a3;
    [(MNCompanionNavigationAdapter *)self _updateNavigationStatesOnRouteStatus];

    [(MNCompanionNavigationAdapter *)self _scheduleCoalescedRouteStatusUpdate];
  }
}

- (void)_setLastLocation:(id)a3
{
  v5 = a3;
  p_lastLocation = &self->_lastLocation;
  if (self->_lastLocation != v5)
  {
    v8 = v5;
    objc_storeStrong(p_lastLocation, a3);
    [(GEOCompanionRouteStatus *)self->_companionRouteStatus setLocation:v8];
    v7 = [MEMORY[0x1E695DF00] date];
    [v7 timeIntervalSinceReferenceDate];
    [(GEOCompanionRouteStatus *)self->_companionRouteStatus setTimestamp:?];

    p_lastLocation = [(MNCompanionNavigationAdapter *)self _scheduleCoalescedRouteStatusUpdate];
  }

  MEMORY[0x1EEE66BE0](p_lastLocation);
}

- (void)_updateNavigationStatesOnRouteStatus
{
  companionRouteStatus = self->_companionRouteStatus;
  v4 = [(GEONavigationGuidanceState *)self->_guidanceState navigationState];
  locationUnreliable = self->_locationUnreliable;
  announcementStage = self->_announcementStage;
  nextAnnouncementStage = self->_nextAnnouncementStage;
  timeUntilNextAnnouncement = self->_timeUntilNextAnnouncement;

  [(GEOCompanionRouteStatus *)companionRouteStatus updateFeedbackWithNavigationState:v4 locationUnreliable:locationUnreliable announcementStage:announcementStage nextAnnouncementStage:nextAnnouncementStage nextAnnouncementTime:timeUntilNextAnnouncement];
}

- (void)setIsConnectedToCarplay:(BOOL)a3
{
  if (self->_isConnectedToCarplay != a3)
  {
    self->_isConnectedToCarplay = a3;
    [(GEOCompanionRouteStatus *)self->_companionRouteStatus setIsConnectedToCarplay:?];

    [(MNCompanionNavigationAdapter *)self _scheduleCoalescedRouteStatusUpdate];
  }
}

- (void)setIsNavigatingInLowGuidance:(BOOL)a3
{
  if (self->_isNavigatingInLowGuidance != a3)
  {
    self->_isNavigatingInLowGuidance = a3;
    [(GEOCompanionRouteStatus *)self->_companionRouteStatus setLowGuidanceNavigation:?];

    [(MNCompanionNavigationAdapter *)self _scheduleCoalescedRouteStatusUpdate];
  }
}

- (void)_reset
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = NSStringFromSelector(a2);
    v16 = 138543362;
    v17 = v5;
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_INFO, "%{public}@", &v16, 0xCu);
  }

  [(MNCompanionNavigationAdapter *)self _cancelScheduledRouteStatus];
  [(MNCompanionNavigationAdapter *)self _cancelScheduledRouteUpdates];
  companionRouteDetails = self->_companionRouteDetails;
  self->_companionRouteDetails = 0;

  companionRouteStatus = self->_companionRouteStatus;
  self->_companionRouteStatus = 0;

  companionRouteUpdates = self->_companionRouteUpdates;
  self->_companionRouteUpdates = 0;

  self->_shouldSendRouteWithStatus = 0;
  destinationName = self->_destinationName;
  self->_destinationName = 0;

  route = self->_route;
  self->_route = 0;

  lastLocation = self->_lastLocation;
  self->_lastLocation = 0;

  routeMatch = self->_routeMatch;
  self->_routeMatch = 0;

  v13 = objc_alloc_init(MEMORY[0x1E69A2288]);
  guidanceState = self->_guidanceState;
  self->_guidanceState = v13;

  self->_locationUnreliable = 0;
  self->_displayedStepIndex = 0x7FFFFFFFFFFFFFFFLL;
  self->_positionFromManeuver = -1.0;
  self->_positionFromDestination = *MEMORY[0x1E69A1600];
  self->_announcementStage = 0;
  self->_nextAnnouncementStage = 0;
  self->_timeUntilNextAnnouncement = 1.79769313e308;
  self->_shouldSendRouteWithStatus = 0;
  v15 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = NSStringFromSelector(a2);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_INFO, "%{public}@", &v7, 0xCu);
  }

  objc_storeWeak(&self->_delegate, 0);
  [(MNCompanionNavigationAdapter *)self _cancelScheduledRouteStatus];
  [(MNCompanionNavigationAdapter *)self _cancelScheduledRouteUpdates];
  [(MNCompanionNavigationAdapter *)self _reset];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MNCompanionNavigationAdapter;
  [(MNCompanionNavigationAdapter *)&v2 dealloc];
}

- (MNCompanionNavigationAdapter)initWithDelegate:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(MNCompanionNavigationAdapter *)self init];
  if (v6)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(a2);
      *buf = 138543362;
      v22 = v8;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_INFO, "%{public}@", buf, 0xCu);
    }

    objc_storeWeak(&v6->_delegate, v5);
    v9 = +[MNNavigationService sharedService];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __49__MNCompanionNavigationAdapter_initWithDelegate___block_invoke;
    v18 = &unk_1E8430D50;
    v10 = v6;
    v19 = v10;
    v11 = v9;
    v20 = v11;
    v12 = _Block_copy(&v15);
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v12[2](v12);
    }

    else
    {
      dispatch_sync(MEMORY[0x1E69E96A0], v12);
    }

    [v11 registerObserver:v10];
  }

  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

void __49__MNCompanionNavigationAdapter_initWithDelegate___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 56) = [*(a1 + 40) guidancePromptsEnabled];
  v2 = [*(a1 + 40) destinationName];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = [*(a1 + 40) route];
  if (v5)
  {
    v6 = *(a1 + 32);
    v8 = v5;
    v7 = [v5 traffic];
    [v6 _setRoute:v8 traffic:v7 isTrace:{objc_msgSend(*(a1 + 40), "traceIsPlaying")}];

    v5 = v8;
  }
}

- (MNCompanionNavigationAdapter)init
{
  v8.receiver = self;
  v8.super_class = MNCompanionNavigationAdapter;
  v2 = [(MNCompanionNavigationAdapter *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69A2288]);
    guidanceState = v2->_guidanceState;
    v2->_guidanceState = v3;

    v5 = objc_alloc_init(MNNanoFormattedStringFormatter);
    formatter = v2->_formatter;
    v2->_formatter = v5;
  }

  return v2;
}

@end