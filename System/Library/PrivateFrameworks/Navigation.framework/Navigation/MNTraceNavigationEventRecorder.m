@interface MNTraceNavigationEventRecorder
- (MNTraceNavigationEventRecorder)initWithTraceRecorder:(id)a3;
- (id)_descriptionForARInfo:(id)a3;
- (id)_descriptionForWaypoint:(id)a3;
- (id)_stringForSignDescription:(id)a3;
- (void)_didUpdateArrivalInfo:(id)a3;
- (void)_recordDebugSettings;
- (void)_recordEvent:(int64_t)a3 description:(id)a4;
- (void)_userGotOnRoute;
- (void)_userWentOffRoute;
- (void)dealloc;
- (void)navigationSession:(id)a3 didInsertWaypoint:(id)a4;
- (void)navigationSession:(id)a3 didReceiveTransitAlert:(id)a4;
- (void)navigationSession:(id)a3 didRemoveWaypoint:(id)a4;
- (void)navigationSession:(id)a3 didReroute:(id)a4 withLocation:(id)a5 withAlternateRoutes:(id)a6 rerouteReason:(unint64_t)a7;
- (void)navigationSession:(id)a3 didRerouteWithWaypoints:(id)a4;
- (void)navigationSession:(id)a3 didResumeNavigatingFromWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5 reason:(unint64_t)a6;
- (void)navigationSession:(id)a3 didSendNavigationServiceCallback:(id)a4;
- (void)navigationSession:(id)a3 didStartWithRoute:(id)a4 navigationType:(int64_t)a5 isResumingMultipointRoute:(BOOL)a6 isReconnecting:(BOOL)a7;
- (void)navigationSession:(id)a3 didSuppressReroute:(id)a4;
- (void)navigationSession:(id)a3 didUpdateAlternateRoutes:(id)a4;
- (void)navigationSession:(id)a3 didUpdateDestination:(id)a4;
- (void)navigationSession:(id)a3 didUpdateTargetLegIndex:(unint64_t)a4;
- (void)navigationSession:(id)a3 matchedToStepIndex:(unint64_t)a4 segmentIndex:(unint64_t)a5;
- (void)navigationSession:(id)a3 showJunctionView:(id)a4;
- (void)navigationSession:(id)a3 showLaneDirections:(id)a4;
- (void)navigationSession:(id)a3 updateSignsWithARInfo:(id)a4;
- (void)navigationSession:(id)a3 updateSignsWithInfo:(id)a4;
- (void)setLastMatchedLocation:(id)a3;
@end

@implementation MNTraceNavigationEventRecorder

- (void)navigationSession:(id)a3 didSendNavigationServiceCallback:(id)a4
{
  v21 = a4;
  v5 = [v21 type];
  switch(v5)
  {
    case 4:
      v8 = [v21 arrivalInfo];
      [(MNTraceNavigationEventRecorder *)self _didUpdateArrivalInfo:v8];
      break;
    case 12:
      v8 = v21;
      v9 = [v8 updateType];
      if (v9 <= 3 && v9 != 1)
      {
        v10 = [v8 trafficIncidentAlert];
        v11 = MEMORY[0x1E696AEC0];
        v12 = [v8 updateTypeString];
        v13 = [v10 alertType];
        if ((v13 - 1) > 6)
        {
          v14 = @"None";
        }

        else
        {
          v14 = off_1E84304E8[v13 - 1];
        }

        v16 = v14;
        v17 = MEMORY[0x1E696AFB0];
        v18 = [v10 alertID];
        v19 = [v17 _geo_uuidForData:v18];
        v20 = [v11 stringWithFormat:@"[%@] %@ (%@)", v12, v16, v19];

        [(MNTraceNavigationEventRecorder *)self _recordEvent:10 description:v20];
      }

      break;
    case 17:
      v6 = [v21 reason] - 1;
      if (v6 > 9)
      {
        v7 = @"Unknown";
      }

      else
      {
        v7 = off_1E842F948[v6];
      }

      [(MNTraceNavigationEventRecorder *)self _recordEvent:3 description:v7];
      traceRecorder = self->_traceRecorder;
      v8 = [MEMORY[0x1E695DF00] now];
      [(MNTraceRecorder *)traceRecorder setNavigationEndDate:v8];
      break;
    default:
      goto LABEL_16;
  }

LABEL_16:
}

- (void)navigationSession:(id)a3 didReceiveTransitAlert:(id)a4
{
  v5 = [a4 description];
  [(MNTraceNavigationEventRecorder *)self _recordEvent:20 description:v5];
}

- (void)navigationSession:(id)a3 showJunctionView:(id)a4
{
  v14 = a4;
  v5 = [v14 uniqueID];
  junctionViewID = self->_junctionViewID;
  v7 = v5;
  v8 = junctionViewID;
  if (v7 | v8)
  {
    v9 = v8;
    v10 = [v7 isEqual:v8];

    if ((v10 & 1) == 0)
    {
      v11 = [v14 description];
      [(MNTraceNavigationEventRecorder *)self _recordEvent:27 description:v11];

      v12 = [v14 uniqueID];
      v13 = self->_junctionViewID;
      self->_junctionViewID = v12;
    }
  }
}

- (void)navigationSession:(id)a3 showLaneDirections:(id)a4
{
  v14 = a4;
  v5 = [v14 uniqueID];
  laneGuidanceID = self->_laneGuidanceID;
  v7 = v5;
  v8 = laneGuidanceID;
  if (v7 | v8)
  {
    v9 = v8;
    v10 = [v7 isEqual:v8];

    if ((v10 & 1) == 0)
    {
      v11 = [v14 description];
      [(MNTraceNavigationEventRecorder *)self _recordEvent:25 description:v11];

      v12 = [v14 uniqueID];
      v13 = self->_laneGuidanceID;
      self->_laneGuidanceID = v12;
    }
  }
}

- (void)navigationSession:(id)a3 updateSignsWithARInfo:(id)a4
{
  v6 = a4;
  v7 = [v6 count];
  if (v7 == [(NSArray *)self->_lastARInfos count])
  {
    if ([v6 count])
    {
      v8 = 0;
      do
      {
        v9 = [(NSArray *)self->_lastARInfos objectAtIndexedSubscript:v8];
        v10 = [v9 guidanceEventID];
        v11 = [v6 objectAtIndexedSubscript:v8];
        v12 = [v11 guidanceEventID];
        v13 = v10;
        v14 = v12;
        if (v13 | v14)
        {
          v15 = v14;
          v16 = [v13 isEqual:v14];

          if ((v16 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        else
        {
        }

        ++v8;
      }

      while (v8 < [v6 count]);
    }
  }

  else
  {
LABEL_9:
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __74__MNTraceNavigationEventRecorder_navigationSession_updateSignsWithARInfo___block_invoke;
    v19[3] = &unk_1E842F7E8;
    v19[4] = self;
    v17 = [v6 _geo_map:v19];
    v18 = [v17 componentsJoinedByString:@" /// "];
    [(MNTraceNavigationEventRecorder *)self _recordEvent:29 description:v18];
    objc_storeStrong(&self->_lastARInfos, a4);
  }
}

- (void)navigationSession:(id)a3 updateSignsWithInfo:(id)a4
{
  v27 = a4;
  v5 = [v27 primarySign];
  v6 = [v5 uniqueID];
  currentPrimarySignID = self->_currentPrimarySignID;
  v8 = v6;
  v9 = currentPrimarySignID;
  if (v8 | v9)
  {
    v10 = v9;
    v11 = [v8 isEqual:v9];

    if ((v11 & 1) == 0)
    {
      v12 = [v27 primarySign];
      v13 = [(MNTraceNavigationEventRecorder *)self _stringForSignDescription:v12];

      [(MNTraceNavigationEventRecorder *)self _recordEvent:22 description:v13];
      v14 = [v5 uniqueID];
      v15 = self->_currentPrimarySignID;
      self->_currentPrimarySignID = v14;
    }
  }

  v16 = [v27 secondarySign];
  v17 = [v16 uniqueID];
  currentSecondarySignID = self->_currentSecondarySignID;
  v19 = v17;
  v20 = currentSecondarySignID;
  if (v19 | v20)
  {
    v21 = v20;
    v22 = [v19 isEqual:v20];

    if ((v22 & 1) == 0)
    {
      if (v16)
      {
        v23 = [v27 secondarySign];
        v24 = [(MNTraceNavigationEventRecorder *)self _stringForSignDescription:v23];

        [(MNTraceNavigationEventRecorder *)self _recordEvent:23 description:v24];
      }

      else
      {
        [(MNTraceNavigationEventRecorder *)self _recordEvent:24 description:0];
      }

      v25 = [v16 uniqueID];
      v26 = self->_currentSecondarySignID;
      self->_currentSecondarySignID = v25;
    }
  }
}

- (void)navigationSession:(id)a3 didRemoveWaypoint:(id)a4
{
  v5 = [(MNTraceNavigationEventRecorder *)self _descriptionForWaypoint:a4];
  [(MNTraceNavigationEventRecorder *)self _recordEvent:17 description:v5];
}

- (void)navigationSession:(id)a3 didInsertWaypoint:(id)a4
{
  v5 = [(MNTraceNavigationEventRecorder *)self _descriptionForWaypoint:a4];
  [(MNTraceNavigationEventRecorder *)self _recordEvent:16 description:v5];
}

- (void)navigationSession:(id)a3 didRerouteWithWaypoints:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(MNTraceNavigationEventRecorder *)self _descriptionForWaypoint:*(*(&v15 + 1) + 8 * v11), v15];
        [v6 addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [v6 componentsJoinedByString:{@", "}];
  [(MNTraceNavigationEventRecorder *)self _recordEvent:15 description:v13];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)a3 didUpdateDestination:(id)a4
{
  v5 = [(MNTraceNavigationEventRecorder *)self _descriptionForWaypoint:a4];
  [(MNTraceNavigationEventRecorder *)self _recordEvent:14 description:v5];
}

- (void)navigationSession:(id)a3 didUpdateAlternateRoutes:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if ([v5 count])
  {
    v20 = self;
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v21 = v5;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          v12 = MEMORY[0x1E696AEC0];
          v13 = [v11 route];
          v14 = [v13 name];
          v15 = [v11 route];
          v16 = [v15 uniqueRouteID];
          v17 = [v12 stringWithFormat:@"%@ (%@)", v14, v16];

          [v6 addObject:v17];
        }

        v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v8);
    }

    self = v20;
    v5 = v21;
  }

  else
  {
    v6 = 0;
  }

  v18 = [v6 componentsJoinedByString:{@", "}];
  [(MNTraceNavigationEventRecorder *)self _recordEvent:13 description:v18];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)a3 didReroute:(id)a4 withLocation:(id)a5 withAlternateRoutes:(id)a6 rerouteReason:(unint64_t)a7
{
  v9 = MEMORY[0x1E696AEC0];
  v10 = a4;
  v11 = [v10 route];
  v12 = [v11 name];
  if (a7 - 1 > 0xF)
  {
    v13 = @"Unknown";
  }

  else
  {
    v13 = off_1E842F8C8[a7 - 1];
  }

  v14 = [v10 route];
  v15 = [v14 serverRouteID];
  v16 = [v10 route];

  v17 = [v16 uniqueRouteID];
  v19 = [v9 stringWithFormat:@"%@ | %@ | %@ | %@", v12, v13, v15, v17];

  [(MNTraceNavigationEventRecorder *)self _recordEvent:12 description:v19];
  previousSuppressedRerouteError = self->_previousSuppressedRerouteError;
  self->_previousSuppressedRerouteError = 0;
}

- (void)navigationSession:(id)a3 didSuppressReroute:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v6)
  {
    previousSuppressedRerouteError = self->_previousSuppressedRerouteError;
    if (!previousSuppressedRerouteError || (v8 = -[NSError code](previousSuppressedRerouteError, "code"), v8 != [v6 code]))
    {
      v9 = [v6 userInfo];
      v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696A278]];
      [(MNTraceNavigationEventRecorder *)self _recordEvent:11 description:v10];

      objc_storeStrong(&self->_previousSuppressedRerouteError, a4);
    }
  }
}

- (void)navigationSession:(id)a3 didUpdateTargetLegIndex:(unint64_t)a4
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", a4];
  [(MNTraceNavigationEventRecorder *)self _recordEvent:8 description:v5];
}

- (void)navigationSession:(id)a3 didResumeNavigatingFromWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5 reason:(unint64_t)a6
{
  if (a6 - 1 > 5)
  {
    v7 = @"Unknown";
  }

  else
  {
    v7 = off_1E842F860[a6 - 1];
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"From waypoint: %d reason: %@", a4, a5, v7];
  [(MNTraceNavigationEventRecorder *)self _recordEvent:19 description:v8];
}

- (void)navigationSession:(id)a3 matchedToStepIndex:(unint64_t)a4 segmentIndex:(unint64_t)a5
{
  if (a4 == -1)
  {
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = (a4 + 1);
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Step #%d (step index: %d, segment index: %d)", v6, a4, a5];
  [(MNTraceNavigationEventRecorder *)self _recordEvent:7 description:v7];
}

- (void)navigationSession:(id)a3 didStartWithRoute:(id)a4 navigationType:(int64_t)a5 isResumingMultipointRoute:(BOOL)a6 isReconnecting:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v11 = [a4 route];
  v23 = v11;
  if (v7)
  {
    [(MNTraceNavigationEventRecorder *)self _recordEvent:2 description:0];
  }

  else
  {
    v12 = [v11 destination];
    v13 = MEMORY[0x1E696AD60];
    v14 = [v23 transportType];
    if (v14 >= 7)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v14];
    }

    else
    {
      v15 = off_1E842F890[v14];
    }

    v16 = [(__CFString *)v15 capitalizedString];
    if ((a5 - 1) > 3)
    {
      v17 = @"None";
    }

    else
    {
      v17 = off_1E842F840[a5 - 1];
    }

    v18 = [v12 humanDescriptionWithAddressAndLatLng];
    v19 = [v23 name];
    v20 = [v13 stringWithFormat:@"%@ %@ to [%@] via %@", v16, v17, v18, v19];

    if (v8)
    {
      [v20 appendFormat:@", isResumingMultipointRoute: %d", 1];
    }

    [(MNTraceNavigationEventRecorder *)self _recordEvent:1 description:v20];
    [(MNTraceNavigationEventRecorder *)self _recordDebugSettings];
    traceRecorder = self->_traceRecorder;
    v22 = [MEMORY[0x1E695DF00] now];
    [(MNTraceRecorder *)traceRecorder setNavigationStartDate:v22];
  }
}

- (void)_didUpdateArrivalInfo:(id)a3
{
  v17 = a3;
  v4 = [v17 vehicleParkingInfo];

  if (v4)
  {
    v5 = [v17 vehicleParkingInfo];
    v6 = [v5 walkingRouteDisplayETAInfo];

    if (v6)
    {
      v7 = [v17 vehicleParkingInfo];
      v8 = [v7 walkingRouteDisplayETAInfo];
      [v8 remainingMinutesToEndOfRoute];

      v9 = GEOStringForDuration();
    }

    else
    {
      v9 = @"(none)";
    }

    v13 = MEMORY[0x1E696AEC0];
    v14 = [v17 arrivalState];
    if (v14 > 6)
    {
      v15 = @"MNArrivalState_Unknown";
    }

    else
    {
      v15 = off_1E842F808[v14];
    }

    v16 = [v13 stringWithFormat:@"%@, leg: %d, walking duration: %@", v15, objc_msgSend(v17, "legIndex"), v9];
  }

  else
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = [v17 arrivalState];
    if (v11 > 6)
    {
      v12 = @"MNArrivalState_Unknown";
    }

    else
    {
      v12 = off_1E842F808[v11];
    }

    v16 = [v10 stringWithFormat:@"%@, leg: %d", v12, objc_msgSend(v17, "legIndex")];
  }

  [(MNTraceNavigationEventRecorder *)self _recordEvent:18 description:v16];
}

- (id)_descriptionForARInfo:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E696AD60];
  v5 = [v3 arrowLabel];
  v6 = [v3 maneuverType];
  v7 = @"NO_TURN";
  switch(v6)
  {
    case 0:
      break;
    case 1:
      v7 = @"LEFT_TURN";
      break;
    case 2:
      v7 = @"RIGHT_TURN";
      break;
    case 3:
      v7 = @"STRAIGHT_AHEAD";
      break;
    case 4:
      v7 = @"U_TURN";
      break;
    case 5:
      v7 = @"FOLLOW_ROAD";
      break;
    case 6:
      v7 = @"ENTER_ROUNDABOUT";
      break;
    case 7:
      v7 = @"EXIT_ROUNDABOUT";
      break;
    case 11:
      v7 = @"OFF_RAMP";
      break;
    case 12:
      v7 = @"ON_RAMP";
      break;
    case 16:
      v7 = @"ARRIVE_END_OF_NAVIGATION";
      break;
    case 17:
      v7 = @"START_ROUTE";
      break;
    case 18:
      v7 = @"ARRIVE_AT_DESTINATION";
      break;
    case 20:
      v7 = @"KEEP_LEFT";
      break;
    case 21:
      v7 = @"KEEP_RIGHT";
      break;
    case 22:
      v7 = @"ENTER_FERRY";
      break;
    case 23:
      v7 = @"EXIT_FERRY";
      break;
    case 24:
      v7 = @"CHANGE_FERRY";
      break;
    case 25:
      v7 = @"START_ROUTE_WITH_U_TURN";
      break;
    case 26:
      v7 = @"U_TURN_AT_ROUNDABOUT";
      break;
    case 27:
      v7 = @"LEFT_TURN_AT_END";
      break;
    case 28:
      v7 = @"RIGHT_TURN_AT_END";
      break;
    case 29:
      v7 = @"HIGHWAY_OFF_RAMP_LEFT";
      break;
    case 30:
      v7 = @"HIGHWAY_OFF_RAMP_RIGHT";
      break;
    case 33:
      v7 = @"ARRIVE_AT_DESTINATION_LEFT";
      break;
    case 34:
      v7 = @"ARRIVE_AT_DESTINATION_RIGHT";
      break;
    case 35:
      v7 = @"U_TURN_WHEN_POSSIBLE";
      break;
    case 39:
      v7 = @"ARRIVE_END_OF_DIRECTIONS";
      break;
    case 41:
      v7 = @"ROUNDABOUT_EXIT_1";
      break;
    case 42:
      v7 = @"ROUNDABOUT_EXIT_2";
      break;
    case 43:
      v7 = @"ROUNDABOUT_EXIT_3";
      break;
    case 44:
      v7 = @"ROUNDABOUT_EXIT_4";
      break;
    case 45:
      v7 = @"ROUNDABOUT_EXIT_5";
      break;
    case 46:
      v7 = @"ROUNDABOUT_EXIT_6";
      break;
    case 47:
      v7 = @"ROUNDABOUT_EXIT_7";
      break;
    case 48:
      v7 = @"ROUNDABOUT_EXIT_8";
      break;
    case 49:
      v7 = @"ROUNDABOUT_EXIT_9";
      break;
    case 50:
      v7 = @"ROUNDABOUT_EXIT_10";
      break;
    case 51:
      v7 = @"ROUNDABOUT_EXIT_11";
      break;
    case 52:
      v7 = @"ROUNDABOUT_EXIT_12";
      break;
    case 53:
      v7 = @"ROUNDABOUT_EXIT_13";
      break;
    case 54:
      v7 = @"ROUNDABOUT_EXIT_14";
      break;
    case 55:
      v7 = @"ROUNDABOUT_EXIT_15";
      break;
    case 56:
      v7 = @"ROUNDABOUT_EXIT_16";
      break;
    case 57:
      v7 = @"ROUNDABOUT_EXIT_17";
      break;
    case 58:
      v7 = @"ROUNDABOUT_EXIT_18";
      break;
    case 59:
      v7 = @"ROUNDABOUT_EXIT_19";
      break;
    case 60:
      v7 = @"SHARP_LEFT_TURN";
      break;
    case 61:
      v7 = @"SHARP_RIGHT_TURN";
      break;
    case 62:
      v7 = @"SLIGHT_LEFT_TURN";
      break;
    case 63:
      v7 = @"SLIGHT_RIGHT_TURN";
      break;
    case 64:
      v7 = @"CHANGE_HIGHWAY";
      break;
    case 65:
      v7 = @"CHANGE_HIGHWAY_LEFT";
      break;
    case 66:
      v7 = @"CHANGE_HIGHWAY_RIGHT";
      break;
    case 80:
      v7 = @"TOLL_STATION";
      break;
    case 81:
      v7 = @"ENTER_TUNNEL";
      break;
    case 82:
      v7 = @"WAYPOINT_STOP";
      break;
    case 83:
      v7 = @"WAYPOINT_STOP_LEFT";
      break;
    case 84:
      v7 = @"WAYPOINT_STOP_RIGHT";
      break;
    case 85:
      v7 = @"RESUME_ROUTE";
      break;
    case 86:
      v7 = @"RESUME_ROUTE_WITH_U_TURN";
      break;
    case 87:
      v7 = @"CUSTOM";
      break;
    case 88:
      v7 = @"TURN_AROUND";
      break;
    default:
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
      break;
  }

  v8 = [v4 stringWithFormat:@"[%@ | %@]", v5, v7];

  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  [v3 locationCoordinate];
  if (fabs(v11) <= 180.0 && v10 >= -90.0 && v10 <= 90.0)
  {
    v12 = MEMORY[0x1E696AEC0];
    [v3 locationCoordinate];
    v14 = v13;
    [v3 locationCoordinate];
    v16 = v15;
    [v3 locationCoordinate];
    v18 = [v12 stringWithFormat:@"%f, %f | %dm", v14, v16, v17];
    [v9 addObject:v18];
  }

  [v3 heading];
  if (v19 >= 0.0)
  {
    v20 = MEMORY[0x1E696AEC0];
    [v3 heading];
    LODWORD(v22) = llround(v21);
    v23 = [v20 stringWithFormat:@"%d°", v22];
    [v9 addObject:v23];
  }

  if ([v9 count])
  {
    v24 = [v9 componentsJoinedByString:@" | "];
    [v8 appendFormat:@" (%@)", v24];
  }

  return v8;
}

- (id)_stringForSignDescription:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AD60] string];
  v5 = [v3 junction];

  if (v5)
  {
    v6 = [v3 junction];
    v7 = [v6 maneuverType];
    v8 = @"NO_TURN";
    switch(v7)
    {
      case 0:
        break;
      case 1:
        v8 = @"LEFT_TURN";
        break;
      case 2:
        v8 = @"RIGHT_TURN";
        break;
      case 3:
        v8 = @"STRAIGHT_AHEAD";
        break;
      case 4:
        v8 = @"U_TURN";
        break;
      case 5:
        v8 = @"FOLLOW_ROAD";
        break;
      case 6:
        v8 = @"ENTER_ROUNDABOUT";
        break;
      case 7:
        v8 = @"EXIT_ROUNDABOUT";
        break;
      case 11:
        v8 = @"OFF_RAMP";
        break;
      case 12:
        v8 = @"ON_RAMP";
        break;
      case 16:
        v8 = @"ARRIVE_END_OF_NAVIGATION";
        break;
      case 17:
        v8 = @"START_ROUTE";
        break;
      case 18:
        v8 = @"ARRIVE_AT_DESTINATION";
        break;
      case 20:
        v8 = @"KEEP_LEFT";
        break;
      case 21:
        v8 = @"KEEP_RIGHT";
        break;
      case 22:
        v8 = @"ENTER_FERRY";
        break;
      case 23:
        v8 = @"EXIT_FERRY";
        break;
      case 24:
        v8 = @"CHANGE_FERRY";
        break;
      case 25:
        v8 = @"START_ROUTE_WITH_U_TURN";
        break;
      case 26:
        v8 = @"U_TURN_AT_ROUNDABOUT";
        break;
      case 27:
        v8 = @"LEFT_TURN_AT_END";
        break;
      case 28:
        v8 = @"RIGHT_TURN_AT_END";
        break;
      case 29:
        v8 = @"HIGHWAY_OFF_RAMP_LEFT";
        break;
      case 30:
        v8 = @"HIGHWAY_OFF_RAMP_RIGHT";
        break;
      case 33:
        v8 = @"ARRIVE_AT_DESTINATION_LEFT";
        break;
      case 34:
        v8 = @"ARRIVE_AT_DESTINATION_RIGHT";
        break;
      case 35:
        v8 = @"U_TURN_WHEN_POSSIBLE";
        break;
      case 39:
        v8 = @"ARRIVE_END_OF_DIRECTIONS";
        break;
      case 41:
        v8 = @"ROUNDABOUT_EXIT_1";
        break;
      case 42:
        v8 = @"ROUNDABOUT_EXIT_2";
        break;
      case 43:
        v8 = @"ROUNDABOUT_EXIT_3";
        break;
      case 44:
        v8 = @"ROUNDABOUT_EXIT_4";
        break;
      case 45:
        v8 = @"ROUNDABOUT_EXIT_5";
        break;
      case 46:
        v8 = @"ROUNDABOUT_EXIT_6";
        break;
      case 47:
        v8 = @"ROUNDABOUT_EXIT_7";
        break;
      case 48:
        v8 = @"ROUNDABOUT_EXIT_8";
        break;
      case 49:
        v8 = @"ROUNDABOUT_EXIT_9";
        break;
      case 50:
        v8 = @"ROUNDABOUT_EXIT_10";
        break;
      case 51:
        v8 = @"ROUNDABOUT_EXIT_11";
        break;
      case 52:
        v8 = @"ROUNDABOUT_EXIT_12";
        break;
      case 53:
        v8 = @"ROUNDABOUT_EXIT_13";
        break;
      case 54:
        v8 = @"ROUNDABOUT_EXIT_14";
        break;
      case 55:
        v8 = @"ROUNDABOUT_EXIT_15";
        break;
      case 56:
        v8 = @"ROUNDABOUT_EXIT_16";
        break;
      case 57:
        v8 = @"ROUNDABOUT_EXIT_17";
        break;
      case 58:
        v8 = @"ROUNDABOUT_EXIT_18";
        break;
      case 59:
        v8 = @"ROUNDABOUT_EXIT_19";
        break;
      case 60:
        v8 = @"SHARP_LEFT_TURN";
        break;
      case 61:
        v8 = @"SHARP_RIGHT_TURN";
        break;
      case 62:
        v8 = @"SLIGHT_LEFT_TURN";
        break;
      case 63:
        v8 = @"SLIGHT_RIGHT_TURN";
        break;
      case 64:
        v8 = @"CHANGE_HIGHWAY";
        break;
      case 65:
        v8 = @"CHANGE_HIGHWAY_LEFT";
        break;
      case 66:
        v8 = @"CHANGE_HIGHWAY_RIGHT";
        break;
      case 80:
        v8 = @"TOLL_STATION";
        break;
      case 81:
        v8 = @"ENTER_TUNNEL";
        break;
      case 82:
        v8 = @"WAYPOINT_STOP";
        break;
      case 83:
        v8 = @"WAYPOINT_STOP_LEFT";
        break;
      case 84:
        v8 = @"WAYPOINT_STOP_RIGHT";
        break;
      case 85:
        v8 = @"RESUME_ROUTE";
        break;
      case 86:
        v8 = @"RESUME_ROUTE_WITH_U_TURN";
        break;
      case 87:
        v8 = @"CUSTOM";
        break;
      case 88:
        v8 = @"TURN_AROUND";
        break;
      default:
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v7];
        break;
    }

    v9 = [(__CFString *)v8 capitalizedString];
    v10 = [v9 stringByReplacingOccurrencesOfString:@"_" withString:&stru_1F4EB6B70];

    [v4 appendFormat:@"(%@)", v10];
  }

  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v12 = [v3 primaryStrings];
  v13 = [v12 firstObject];

  v14 = [v13 optionsWithArgumentHandler:&__block_literal_global_13742];
  v15 = [v13 stringWithOptions:v14];
  if (v15)
  {
    [v11 addObject:v15];
  }

  v16 = [v3 secondaryStrings];
  v17 = [v16 firstObject];

  v18 = [v17 optionsWithArgumentHandler:&__block_literal_global_49_13743];
  [v18 setCreateAttributedString:1];
  v19 = [v17 stringWithOptions:v18];
  if (v19)
  {
    [v11 addObject:v19];
  }

  v20 = [v11 componentsJoinedByString:@" | "];
  [v4 appendFormat:@" %@", v20];

  return v4;
}

void __60__MNTraceNavigationEventRecorder__stringForSignDescription___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 artworkFormat];
  [v3 setAttributedStringHandler:&__block_literal_global_52_13748];

  v4 = [v2 distanceFormat];

  [v4 setFormatOptions:1];
}

id __60__MNTraceNavigationEventRecorder__stringForSignDescription___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%@}", a4];
  v5 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4];

  return v5;
}

void __60__MNTraceNavigationEventRecorder__stringForSignDescription___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 distanceFormat];
  [v2 setFormatOptions:1];
}

- (id)_descriptionForWaypoint:(id)a3
{
  v3 = a3;
  v4 = [v3 geoMapItem];
  if (v4 && (v5 = v4, [v3 geoMapItem], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "contactAddressType"), v6, v5, v7))
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = [v3 navDisplayNameWithSpecialContacts:0];
    v10 = [v3 navDisplayNameWithSpecialContacts:1];
    v11 = [v3 navDisplayAddress];
    v12 = [v8 stringWithFormat:@"%@ (%@) | %@", v9, v10, v11];
  }

  else
  {
    v13 = MEMORY[0x1E696AEC0];
    v9 = [v3 navDisplayName];
    v10 = [v3 navDisplayAddress];
    v12 = [v13 stringWithFormat:@"%@ | %@", v9, v10];
  }

  return v12;
}

- (void)_userWentOffRoute
{
  v3 = [(MNLocation *)self->_lastMatchedLocation state];
  if (v3 == 2)
  {
    v4 = @"on road";
  }

  else
  {
    if (v3)
    {
      return;
    }

    v4 = @"off road";
  }

  [(MNTraceNavigationEventRecorder *)self _recordEvent:6 description:v4];
}

- (void)_userGotOnRoute
{
  [(MNTraceNavigationEventRecorder *)self _recordEvent:5 description:0];
  previousSuppressedRerouteError = self->_previousSuppressedRerouteError;
  self->_previousSuppressedRerouteError = 0;
}

- (void)_recordEvent:(int64_t)a3 description:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    if (a3 > 0x1F)
    {
      v8 = @"Unknown";
    }

    else
    {
      v8 = off_1E842B208[a3];
    }

    v9 = v8;
    v10 = v9;
    if (v6)
    {
      v11 = v6;
    }

    else
    {
      v11 = &stru_1F4EB6B70;
    }

    v14 = 138412546;
    v15 = v9;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEBUG, "Recording event [%@] %@", &v14, 0x16u);
  }

  if (v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = &stru_1F4EB6B70;
  }

  [(MNTraceRecorder *)self->_traceRecorder recordNavigationEvent:a3 description:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_recordDebugSettings
{
  v91 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (_GEOConfigHasValue())
  {
    v85 = MEMORY[0x1E69E9820];
    v86 = 3221225472;
    v87 = __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke;
    v88 = &unk_1E842F6F0;
    v89 = v3;
    GEOConfigGetPropertiesForKey();
  }

  if (_GEOConfigHasValue())
  {
    v80 = MEMORY[0x1E69E9820];
    v81 = 3221225472;
    v82 = __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_2;
    v83 = &unk_1E842F6F0;
    v84 = v3;
    GEOConfigGetPropertiesForKey();
  }

  if (_GEOConfigHasValue())
  {
    v75 = MEMORY[0x1E69E9820];
    v76 = 3221225472;
    v77 = __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_3;
    v78 = &unk_1E842F6F0;
    v79 = v3;
    GEOConfigGetPropertiesForKey();
  }

  if (_GEOConfigHasValue())
  {
    v70 = MEMORY[0x1E69E9820];
    v71 = 3221225472;
    v72 = __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_4;
    v73 = &unk_1E842F6F0;
    v74 = v3;
    GEOConfigGetPropertiesForKey();
  }

  if (_GEOConfigHasValue())
  {
    v65 = MEMORY[0x1E69E9820];
    v66 = 3221225472;
    v67 = __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_5;
    v68 = &unk_1E842F6F0;
    v69 = v3;
    GEOConfigGetPropertiesForKey();
  }

  if (_GEOConfigHasValue())
  {
    v60 = MEMORY[0x1E69E9820];
    v61 = 3221225472;
    v62 = __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_6;
    v63 = &unk_1E842F6F0;
    v64 = v3;
    GEOConfigGetPropertiesForKey();
  }

  if (_GEOConfigHasValue())
  {
    v55 = MEMORY[0x1E69E9820];
    v56 = 3221225472;
    v57 = __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_7;
    v58 = &unk_1E842F6F0;
    v59 = v3;
    GEOConfigGetPropertiesForKey();
  }

  if (_GEOConfigHasValue())
  {
    v50 = MEMORY[0x1E69E9820];
    v51 = 3221225472;
    v52 = __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_8;
    v53 = &unk_1E842F6F0;
    v54 = v3;
    GEOConfigGetPropertiesForKey();
  }

  if (_GEOConfigHasValue())
  {
    v45 = MEMORY[0x1E69E9820];
    v46 = 3221225472;
    v47 = __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_9;
    v48 = &unk_1E842F6F0;
    v49 = v3;
    GEOConfigGetPropertiesForKey();
  }

  if (_GEOConfigHasValue())
  {
    v40 = MEMORY[0x1E69E9820];
    v41 = 3221225472;
    v42 = __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_10;
    v43 = &unk_1E842F6F0;
    v44 = v3;
    GEOConfigGetPropertiesForKey();
  }

  if (_GEOConfigHasValue())
  {
    v35 = MEMORY[0x1E69E9820];
    v36 = 3221225472;
    v37 = __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_11;
    v38 = &unk_1E842F6F0;
    v39 = v3;
    GEOConfigGetPropertiesForKey();
  }

  if (_GEOConfigHasValue())
  {
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_12;
    v33 = &unk_1E842F6F0;
    v34 = v3;
    GEOConfigGetPropertiesForKey();
  }

  if (_GEOConfigHasValue())
  {
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_13;
    v28 = &unk_1E842F6F0;
    v29 = v3;
    GEOConfigGetPropertiesForKey();
  }

  v4 = *MEMORY[0x1E69A1A80];
  v5 = *(MEMORY[0x1E69A1A80] + 8);
  if (_GEOConfigHasValue())
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_14;
    v23 = &unk_1E842F6F0;
    v24 = v3;
    GEOConfigGetPropertiesForKey();
  }

  v6 = [v3 allKeys];
  v7 = [v6 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v90 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v14 = [v3 objectForKeyedSubscript:{v13, v16}];
        [(MNTraceRecorder *)self->_traceRecorder recordDebugSetting:v13 settingValue:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v90 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    v8 = [a5 description];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
  }
}

void __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    v8 = [a5 description];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
  }
}

void __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    v8 = [a5 description];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
  }
}

void __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    v8 = [a5 description];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
  }
}

void __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    v8 = [a5 description];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
  }
}

void __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_6(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    v8 = [a5 description];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
  }
}

void __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_7(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    v8 = [a5 description];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
  }
}

void __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    v8 = [a5 description];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
  }
}

void __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_9(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    v8 = [a5 description];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
  }
}

void __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_10(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    v8 = [a5 description];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
  }
}

void __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_11(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    v8 = [a5 description];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
  }
}

void __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_12(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    v8 = [a5 description];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
  }
}

void __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_13(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    v8 = [a5 description];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
  }
}

void __54__MNTraceNavigationEventRecorder__recordDebugSettings__block_invoke_14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    v8 = [a5 description];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
  }
}

- (void)setLastMatchedLocation:(id)a3
{
  v5 = a3;
  lastMatchedLocation = self->_lastMatchedLocation;
  v11 = v5;
  if (lastMatchedLocation)
  {
    v7 = [(MNLocation *)lastMatchedLocation state];
    v5 = v11;
    v8 = v7 == 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 state] == 1;
  objc_storeStrong(&self->_lastMatchedLocation, a3);
  v10 = v11;
  if (v8 != v9)
  {
    if ([v11 state] == 1)
    {
      [(MNTraceNavigationEventRecorder *)self _userGotOnRoute];
    }

    else
    {
      [(MNTraceNavigationEventRecorder *)self _userWentOffRoute];
    }

    v10 = v11;
  }
}

- (void)dealloc
{
  notify_cancel(self->_sysdiagnoseStartedToken);
  v3.receiver = self;
  v3.super_class = MNTraceNavigationEventRecorder;
  [(MNTraceNavigationEventRecorder *)&v3 dealloc];
}

- (MNTraceNavigationEventRecorder)initWithTraceRecorder:(id)a3
{
  v5 = a3;
  if (v5 && (v13.receiver = self, v13.super_class = MNTraceNavigationEventRecorder, v6 = [(MNTraceNavigationEventRecorder *)&v13 init], (self = v6) != 0))
  {
    objc_storeStrong(&v6->_traceRecorder, a3);
    objc_initWeak(&location, self);
    v7 = dispatch_get_global_queue(21, 0);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__MNTraceNavigationEventRecorder_initWithTraceRecorder___block_invoke;
    v10[3] = &unk_1E8430E58;
    objc_copyWeak(&v11, &location);
    notify_register_dispatch("com.apple.sysdiagnose.sysdiagnoseStarted", &self->_sysdiagnoseStartedToken, v7, v10);

    self = self;
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __56__MNTraceNavigationEventRecorder_initWithTraceRecorder___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _recordEvent:30 description:0];
}

@end