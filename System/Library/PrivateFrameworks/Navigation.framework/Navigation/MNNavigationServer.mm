@interface MNNavigationServer
+ (id)sharedServer;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MNNavigationServer)init;
- (id)_peerDescriptions;
- (id)captureStatePlistWithHints:(os_state_hints_s *)hints;
- (unint64_t)_peersCount;
- (void)_defaultsDidChange;
- (void)_enumerateRemoteObjectsWithHandler:(id)handler;
- (void)_peerDidDisconnect:(id)disconnect;
- (void)_resetDetails;
- (void)_sendNavigationDetailsToPeer:(id)peer;
- (void)dealloc;
- (void)navigationServiceProxy:(id)proxy didActivateAudioSession:(BOOL)session;
- (void)navigationServiceProxy:(id)proxy didArriveAtWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index;
- (void)navigationServiceProxy:(id)proxy didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)navigationServiceProxy:(id)proxy didEnterPreArrivalStateForWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index;
- (void)navigationServiceProxy:(id)proxy didFailRerouteWithError:(id)error;
- (void)navigationServiceProxy:(id)proxy didFailWithError:(id)error;
- (void)navigationServiceProxy:(id)proxy didProcessSpeechEvent:(id)event;
- (void)navigationServiceProxy:(id)proxy didReceiveRealtimeUpdates:(id)updates;
- (void)navigationServiceProxy:(id)proxy didReceiveRouteSignalStrength:(unint64_t)strength;
- (void)navigationServiceProxy:(id)proxy didReceiveTransitAlert:(id)alert;
- (void)navigationServiceProxy:(id)proxy didRerouteWithRoute:(id)route withLocation:(id)location withAlternateRoutes:(id)routes rerouteReason:(unint64_t)reason;
- (void)navigationServiceProxy:(id)proxy didResumeNavigatingFromWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index reason:(unint64_t)reason;
- (void)navigationServiceProxy:(id)proxy didSendNavigationServiceCallback:(id)callback;
- (void)navigationServiceProxy:(id)proxy didStartSpeakingPrompt:(id)prompt;
- (void)navigationServiceProxy:(id)proxy didSwitchToNewTransportType:(int)type newRoute:(id)route;
- (void)navigationServiceProxy:(id)proxy didUpdateAlternateRoutes:(id)routes;
- (void)navigationServiceProxy:(id)proxy didUpdateDisplayedStepIndex:(unint64_t)index segmentIndex:(unint64_t)segmentIndex;
- (void)navigationServiceProxy:(id)proxy didUpdateDistanceUntilManeuver:(double)maneuver timeUntilManeuver:(double)untilManeuver forStepIndex:(unint64_t)index;
- (void)navigationServiceProxy:(id)proxy didUpdateDistanceUntilSign:(double)sign timeUntilSign:(double)untilSign forStepIndex:(unint64_t)index;
- (void)navigationServiceProxy:(id)proxy didUpdateETAResponseForRoute:(id)route;
- (void)navigationServiceProxy:(id)proxy didUpdateHeading:(double)heading accuracy:(double)accuracy;
- (void)navigationServiceProxy:(id)proxy didUpdateMotionType:(unint64_t)type confidence:(unint64_t)confidence;
- (void)navigationServiceProxy:(id)proxy didUpdateNavigationDetails:(id)details;
- (void)navigationServiceProxy:(id)proxy didUpdatePreviewRoutes:(id)routes withSelectedRouteIndex:(unint64_t)index;
- (void)navigationServiceProxy:(id)proxy didUpdateProceedToRouteDistance:(double)distance displayString:(id)string closestStepIndex:(unint64_t)index;
- (void)navigationServiceProxy:(id)proxy didUpdateRouteWithNewRideSelection:(id)selection;
- (void)navigationServiceProxy:(id)proxy didUpdateTracePlaybackDetails:(id)details;
- (void)navigationServiceProxy:(id)proxy displayManeuverAlertForAnnouncementStage:(unint64_t)stage;
- (void)navigationServiceProxy:(id)proxy displayPrimaryStep:(id)step instructions:(id)instructions shieldType:(int)type shieldText:(id)text drivingSide:(int)side maneuverStepIndex:(unint64_t)index isSynthetic:(BOOL)self0;
- (void)navigationServiceProxy:(id)proxy displaySecondaryStep:(id)step instructions:(id)instructions shieldType:(int)type shieldText:(id)text drivingSide:(int)side;
- (void)navigationServiceProxy:(id)proxy hideJunctionViewForId:(id)id;
- (void)navigationServiceProxy:(id)proxy hideLaneDirectionsForId:(id)id;
- (void)navigationServiceProxy:(id)proxy isApproachingEndOfLeg:(unint64_t)leg;
- (void)navigationServiceProxy:(id)proxy newGuidanceEventFeedback:(id)feedback;
- (void)navigationServiceProxy:(id)proxy showJunctionView:(id)view;
- (void)navigationServiceProxy:(id)proxy showLaneDirections:(id)directions;
- (void)navigationServiceProxy:(id)proxy triggerHaptics:(int)haptics;
- (void)navigationServiceProxy:(id)proxy updateSignsWithARInfo:(id)info;
- (void)navigationServiceProxy:(id)proxy updateSignsWithInfo:(id)info;
- (void)navigationServiceProxy:(id)proxy updatedGuidanceEventFeedback:(id)feedback;
- (void)navigationServiceProxy:(id)proxy usePersistentDisplay:(BOOL)display;
- (void)navigationServiceProxy:(id)proxy willAnnounce:(unint64_t)announce inSeconds:(double)seconds;
- (void)navigationServiceProxy:(id)proxy willChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)navigationServiceProxy:(id)proxy willProcessSpeechEvent:(id)event;
- (void)navigationServiceProxy:(id)proxy willRequestRealtimeUpdatesForRouteIDs:(id)ds;
@end

@implementation MNNavigationServer

- (id)captureStatePlistWithHints:(os_state_hints_s *)hints
{
  v68 = *MEMORY[0x1E69E9840];
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__895;
  v58 = __Block_byref_object_dispose__896;
  v59 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__895;
  v52 = __Block_byref_object_dispose__896;
  v53 = 0;
  peersIsolater = self->_peersIsolater;
  v41 = MEMORY[0x1E69E9820];
  v42 = 3221225472;
  v43 = __49__MNNavigationServer_captureStatePlistWithHints___block_invoke;
  v44 = &unk_1E842A548;
  selfCopy = self;
  v46 = &v54;
  v47 = &v48;
  geo_isolate_sync_data();
  array = [MEMORY[0x1E695DF70] array];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v4 = v55[5];
  v5 = [v4 countByEnumeratingWithState:&v37 objects:v67 count:16];
  if (v5)
  {
    v6 = *v38;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v38 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v37 + 1) + 8 * i);
        v65[0] = @"name";
        peerIdentifier = [v8 peerIdentifier];
        v10 = peerIdentifier;
        v11 = &stru_1F4EB6B70;
        if (peerIdentifier)
        {
          v11 = peerIdentifier;
        }

        v65[1] = @"processID";
        v66[0] = v11;
        v12 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v8, "processIdentifier")}];
        v66[1] = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:2];
        [array addObject:v13];
      }

      v5 = [v4 countByEnumeratingWithState:&v37 objects:v67 count:16];
    }

    while (v5);
  }

  array2 = [MEMORY[0x1E695DF70] array];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v15 = v49[5];
  v16 = [v15 countByEnumeratingWithState:&v33 objects:v64 count:16];
  if (v16)
  {
    v17 = *v34;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v33 + 1) + 8 * j);
        v62[0] = @"name";
        peerIdentifier2 = [v19 peerIdentifier];
        v21 = peerIdentifier2;
        v22 = &stru_1F4EB6B70;
        if (peerIdentifier2)
        {
          v22 = peerIdentifier2;
        }

        v62[1] = @"processID";
        v63[0] = v22;
        v23 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v19, "processIdentifier")}];
        v63[1] = v23;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:2];
        [array2 addObject:v24];
      }

      v16 = [v15 countByEnumeratingWithState:&v33 objects:v64 count:16];
    }

    while (v16);
  }

  mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
  v26 = objc_opt_respondsToSelector();

  if (v26)
  {
    mainQueue2 = [MEMORY[0x1E696ADC8] mainQueue];
    __graphDescription = [mainQueue2 __graphDescription];

    if (![(__CFString *)__graphDescription length])
    {

      __graphDescription = @"<empty>";
    }
  }

  else
  {
    __graphDescription = @"<null>";
  }

  v60[0] = @"peers";
  v60[1] = @"unEntitledPeers";
  v61[0] = array;
  v61[1] = array2;
  v60[2] = @"mainOperationQueue";
  v61[2] = __graphDescription;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:3];

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v54, 8);

  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

void __49__MNNavigationServer_captureStatePlistWithHints___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) copy];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1[4] + 24) copy];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)navigationServiceProxy:(id)proxy didSendNavigationServiceCallback:(id)callback
{
  callbackCopy = callback;
  [(MNNavigationDetails *)self->_details updateWithNavigationServiceCallbackParameters:callbackCopy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__MNNavigationServer_navigationServiceProxy_didSendNavigationServiceCallback___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = callbackCopy;
  v6 = callbackCopy;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)proxy didReceiveTransitAlert:(id)alert
{
  alertCopy = alert;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__MNNavigationServer_navigationServiceProxy_didReceiveTransitAlert___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = alertCopy;
  v6 = alertCopy;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)proxy didReceiveRealtimeUpdates:(id)updates
{
  updatesCopy = updates;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__MNNavigationServer_navigationServiceProxy_didReceiveRealtimeUpdates___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = updatesCopy;
  v6 = updatesCopy;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)proxy willRequestRealtimeUpdatesForRouteIDs:(id)ds
{
  dsCopy = ds;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__MNNavigationServer_navigationServiceProxy_willRequestRealtimeUpdatesForRouteIDs___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = dsCopy;
  v6 = dsCopy;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)proxy triggerHaptics:(int)haptics
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__MNNavigationServer_navigationServiceProxy_triggerHaptics___block_invoke;
  v4[3] = &__block_descriptor_36_e46_v16__0___MNNavigationServiceClientInterface__8l;
  hapticsCopy = haptics;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v4];
}

- (void)navigationServiceProxy:(id)proxy didProcessSpeechEvent:(id)event
{
  eventCopy = event;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__MNNavigationServer_navigationServiceProxy_didProcessSpeechEvent___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = eventCopy;
  v6 = eventCopy;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)proxy willProcessSpeechEvent:(id)event
{
  eventCopy = event;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__MNNavigationServer_navigationServiceProxy_willProcessSpeechEvent___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = eventCopy;
  v6 = eventCopy;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)proxy didStartSpeakingPrompt:(id)prompt
{
  promptCopy = prompt;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__MNNavigationServer_navigationServiceProxy_didStartSpeakingPrompt___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = promptCopy;
  v6 = promptCopy;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)proxy didActivateAudioSession:(BOOL)session
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__MNNavigationServer_navigationServiceProxy_didActivateAudioSession___block_invoke;
  v4[3] = &__block_descriptor_33_e46_v16__0___MNNavigationServiceClientInterface__8l;
  sessionCopy = session;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v4];
}

- (void)navigationServiceProxy:(id)proxy didUpdateTracePlaybackDetails:(id)details
{
  detailsCopy = details;
  eventType = [detailsCopy eventType];
  if (eventType <= 3)
  {
    switch(eventType)
    {
      case 1:
        tracePath = [detailsCopy tracePath];
        [(MNNavigationDetails *)self->_details setTracePath:tracePath];

        [detailsCopy traceDuration];
        [(MNNavigationDetails *)self->_details setTraceDuration:?];
        bookmarks = [detailsCopy bookmarks];
        [(MNNavigationDetails *)self->_details setTraceBookmarks:bookmarks];

        break;
      case 2:
        break;
      case 3:
        details = self->_details;
        v8 = 0;
LABEL_13:
        [(MNNavigationDetails *)details setTraceIsPlaying:v8];
        goto LABEL_16;
      default:
        goto LABEL_16;
    }

    details = self->_details;
    v8 = 1;
    goto LABEL_13;
  }

  if (eventType > 5)
  {
    if (eventType == 6)
    {
      bookmarks2 = [detailsCopy bookmarks];
      [(MNNavigationDetails *)self->_details setTraceBookmarks:bookmarks2];
    }

    else
    {
      if (eventType != 7)
      {
        goto LABEL_16;
      }

      bookmarks2 = [detailsCopy tracePath];
      [(MNNavigationDetails *)self->_details setTracePath:bookmarks2];
    }

    goto LABEL_16;
  }

  [detailsCopy currentPosition];
  [(MNNavigationDetails *)self->_details setTracePosition:?];
LABEL_16:
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__MNNavigationServer_navigationServiceProxy_didUpdateTracePlaybackDetails___block_invoke;
  v13[3] = &unk_1E842A308;
  v14 = detailsCopy;
  v12 = detailsCopy;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v13];
}

- (void)navigationServiceProxy:(id)proxy didUpdateAlternateRoutes:(id)routes
{
  routesCopy = routes;
  [(MNNavigationDetails *)self->_details setAlternateRoutes:routesCopy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__MNNavigationServer_navigationServiceProxy_didUpdateAlternateRoutes___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = routesCopy;
  v6 = routesCopy;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)proxy didFailRerouteWithError:(id)error
{
  errorCopy = error;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__MNNavigationServer_navigationServiceProxy_didFailRerouteWithError___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = errorCopy;
  v6 = errorCopy;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)proxy didSwitchToNewTransportType:(int)type newRoute:(id)route
{
  routeCopy = route;
  [(MNNavigationDetails *)self->_details setCurrentRoute:routeCopy withAlternateRoutes:0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__MNNavigationServer_navigationServiceProxy_didSwitchToNewTransportType_newRoute___block_invoke;
  v9[3] = &unk_1E842A450;
  typeCopy = type;
  v10 = routeCopy;
  v8 = routeCopy;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v9];
}

- (void)navigationServiceProxy:(id)proxy didUpdateRouteWithNewRideSelection:(id)selection
{
  selectionCopy = selection;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__MNNavigationServer_navigationServiceProxy_didUpdateRouteWithNewRideSelection___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = selectionCopy;
  v6 = selectionCopy;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)proxy didRerouteWithRoute:(id)route withLocation:(id)location withAlternateRoutes:(id)routes rerouteReason:(unint64_t)reason
{
  routeCopy = route;
  locationCopy = location;
  routesCopy = routes;
  [(MNNavigationDetails *)self->_details setCurrentRoute:routeCopy withAlternateRoutes:routesCopy];
  [(MNNavigationDetails *)self->_details setLocation:locationCopy];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __112__MNNavigationServer_navigationServiceProxy_didRerouteWithRoute_withLocation_withAlternateRoutes_rerouteReason___block_invoke;
  v17[3] = &unk_1E842A408;
  v18 = routeCopy;
  v19 = locationCopy;
  v20 = routesCopy;
  reasonCopy = reason;
  v14 = routesCopy;
  v15 = locationCopy;
  v16 = routeCopy;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v17];
}

- (void)navigationServiceProxy:(id)proxy didUpdatePreviewRoutes:(id)routes withSelectedRouteIndex:(unint64_t)index
{
  routesCopy = routes;
  [(MNNavigationDetails *)self->_details setPreviewRoutes:routesCopy withSelectedRouteIndex:index];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __91__MNNavigationServer_navigationServiceProxy_didUpdatePreviewRoutes_withSelectedRouteIndex___block_invoke;
  v9[3] = &unk_1E842A390;
  v10 = routesCopy;
  indexCopy = index;
  v8 = routesCopy;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v9];
}

- (void)navigationServiceProxy:(id)proxy didUpdateMotionType:(unint64_t)type confidence:(unint64_t)confidence
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__MNNavigationServer_navigationServiceProxy_didUpdateMotionType_confidence___block_invoke;
  v5[3] = &__block_descriptor_48_e46_v16__0___MNNavigationServiceClientInterface__8l;
  v5[4] = type;
  v5[5] = confidence;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v5];
}

- (void)navigationServiceProxy:(id)proxy didUpdateHeading:(double)heading accuracy:(double)accuracy
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__MNNavigationServer_navigationServiceProxy_didUpdateHeading_accuracy___block_invoke;
  v5[3] = &__block_descriptor_48_e46_v16__0___MNNavigationServiceClientInterface__8l;
  *&v5[4] = heading;
  *&v5[5] = accuracy;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v5];
}

- (void)navigationServiceProxy:(id)proxy didUpdateETAResponseForRoute:(id)route
{
  routeCopy = route;
  [(MNNavigationDetails *)self->_details updateETATrafficForRoute:routeCopy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__MNNavigationServer_navigationServiceProxy_didUpdateETAResponseForRoute___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = routeCopy;
  v6 = routeCopy;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)proxy didReceiveRouteSignalStrength:(unint64_t)strength
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__MNNavigationServer_navigationServiceProxy_didReceiveRouteSignalStrength___block_invoke;
  v4[3] = &__block_descriptor_40_e46_v16__0___MNNavigationServiceClientInterface__8l;
  v4[4] = strength;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v4];
}

- (void)navigationServiceProxy:(id)proxy updatedGuidanceEventFeedback:(id)feedback
{
  feedbackCopy = feedback;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__MNNavigationServer_navigationServiceProxy_updatedGuidanceEventFeedback___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = feedbackCopy;
  v6 = feedbackCopy;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)proxy newGuidanceEventFeedback:(id)feedback
{
  feedbackCopy = feedback;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__MNNavigationServer_navigationServiceProxy_newGuidanceEventFeedback___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = feedbackCopy;
  v6 = feedbackCopy;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)proxy hideJunctionViewForId:(id)id
{
  idCopy = id;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__MNNavigationServer_navigationServiceProxy_hideJunctionViewForId___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = idCopy;
  v6 = idCopy;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)proxy showJunctionView:(id)view
{
  viewCopy = view;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__MNNavigationServer_navigationServiceProxy_showJunctionView___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = viewCopy;
  v6 = viewCopy;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)proxy hideLaneDirectionsForId:(id)id
{
  idCopy = id;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__MNNavigationServer_navigationServiceProxy_hideLaneDirectionsForId___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = idCopy;
  v6 = idCopy;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)proxy showLaneDirections:(id)directions
{
  directionsCopy = directions;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__MNNavigationServer_navigationServiceProxy_showLaneDirections___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = directionsCopy;
  v6 = directionsCopy;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)proxy usePersistentDisplay:(BOOL)display
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__MNNavigationServer_navigationServiceProxy_usePersistentDisplay___block_invoke;
  v4[3] = &__block_descriptor_33_e46_v16__0___MNNavigationServiceClientInterface__8l;
  displayCopy = display;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v4];
}

- (void)navigationServiceProxy:(id)proxy updateSignsWithARInfo:(id)info
{
  infoCopy = info;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__MNNavigationServer_navigationServiceProxy_updateSignsWithARInfo___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = infoCopy;
  v6 = infoCopy;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)proxy updateSignsWithInfo:(id)info
{
  infoCopy = info;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__MNNavigationServer_navigationServiceProxy_updateSignsWithInfo___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = infoCopy;
  v6 = infoCopy;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)proxy displaySecondaryStep:(id)step instructions:(id)instructions shieldType:(int)type shieldText:(id)text drivingSide:(int)side
{
  stepCopy = step;
  instructionsCopy = instructions;
  textCopy = text;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __113__MNNavigationServer_navigationServiceProxy_displaySecondaryStep_instructions_shieldType_shieldText_drivingSide___block_invoke;
  v19[3] = &unk_1E842A408;
  v20 = stepCopy;
  v21 = instructionsCopy;
  v22 = textCopy;
  typeCopy = type;
  sideCopy = side;
  v16 = textCopy;
  v17 = instructionsCopy;
  v18 = stepCopy;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v19];
}

- (void)navigationServiceProxy:(id)proxy displayManeuverAlertForAnnouncementStage:(unint64_t)stage
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __86__MNNavigationServer_navigationServiceProxy_displayManeuverAlertForAnnouncementStage___block_invoke;
  v4[3] = &__block_descriptor_40_e46_v16__0___MNNavigationServiceClientInterface__8l;
  v4[4] = stage;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v4];
}

- (void)navigationServiceProxy:(id)proxy displayPrimaryStep:(id)step instructions:(id)instructions shieldType:(int)type shieldText:(id)text drivingSide:(int)side maneuverStepIndex:(unint64_t)index isSynthetic:(BOOL)self0
{
  stepCopy = step;
  instructionsCopy = instructions;
  textCopy = text;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __141__MNNavigationServer_navigationServiceProxy_displayPrimaryStep_instructions_shieldType_shieldText_drivingSide_maneuverStepIndex_isSynthetic___block_invoke;
  v21[3] = &unk_1E842A3E0;
  v22 = stepCopy;
  v23 = instructionsCopy;
  typeCopy = type;
  sideCopy = side;
  v24 = textCopy;
  indexCopy = index;
  syntheticCopy = synthetic;
  v18 = textCopy;
  v19 = instructionsCopy;
  v20 = stepCopy;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v21];
}

- (void)navigationServiceProxy:(id)proxy willAnnounce:(unint64_t)announce inSeconds:(double)seconds
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__MNNavigationServer_navigationServiceProxy_willAnnounce_inSeconds___block_invoke;
  v5[3] = &__block_descriptor_48_e46_v16__0___MNNavigationServiceClientInterface__8l;
  v5[4] = announce;
  *&v5[5] = seconds;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v5];
}

- (void)navigationServiceProxy:(id)proxy didUpdateDistanceUntilSign:(double)sign timeUntilSign:(double)untilSign forStepIndex:(unint64_t)index
{
  [(MNNavigationDetails *)self->_details setDistanceUntilSign:proxy];
  [(MNNavigationDetails *)self->_details setTimeUntilSign:untilSign];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __99__MNNavigationServer_navigationServiceProxy_didUpdateDistanceUntilSign_timeUntilSign_forStepIndex___block_invoke;
  v10[3] = &__block_descriptor_56_e46_v16__0___MNNavigationServiceClientInterface__8l;
  *&v10[4] = sign;
  *&v10[5] = untilSign;
  v10[6] = index;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v10];
}

- (void)navigationServiceProxy:(id)proxy didUpdateProceedToRouteDistance:(double)distance displayString:(id)string closestStepIndex:(unint64_t)index
{
  stringCopy = string;
  [(MNNavigationDetails *)self->_details setProceedToRouteDistance:distance];
  [(MNNavigationDetails *)self->_details setDisplayString:stringCopy];
  [(MNNavigationDetails *)self->_details setClosestStepIndex:index];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __108__MNNavigationServer_navigationServiceProxy_didUpdateProceedToRouteDistance_displayString_closestStepIndex___block_invoke;
  v11[3] = &unk_1E842A3B8;
  distanceCopy = distance;
  v12 = stringCopy;
  indexCopy = index;
  v10 = stringCopy;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v11];
}

- (void)navigationServiceProxy:(id)proxy didResumeNavigatingFromWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index reason:(unint64_t)reason
{
  waypointCopy = waypoint;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __98__MNNavigationServer_navigationServiceProxy_didResumeNavigatingFromWaypoint_endOfLegIndex_reason___block_invoke;
  v11[3] = &unk_1E842A3B8;
  v12 = waypointCopy;
  indexCopy = index;
  reasonCopy = reason;
  v10 = waypointCopy;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v11];
}

- (void)navigationServiceProxy:(id)proxy didArriveAtWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index
{
  waypointCopy = waypoint;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__MNNavigationServer_navigationServiceProxy_didArriveAtWaypoint_endOfLegIndex___block_invoke;
  v9[3] = &unk_1E842A390;
  v10 = waypointCopy;
  indexCopy = index;
  v8 = waypointCopy;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v9];
}

- (void)navigationServiceProxy:(id)proxy didEnterPreArrivalStateForWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index
{
  waypointCopy = waypoint;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __94__MNNavigationServer_navigationServiceProxy_didEnterPreArrivalStateForWaypoint_endOfLegIndex___block_invoke;
  v9[3] = &unk_1E842A390;
  v10 = waypointCopy;
  indexCopy = index;
  v8 = waypointCopy;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v9];
}

- (void)navigationServiceProxy:(id)proxy isApproachingEndOfLeg:(unint64_t)leg
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__MNNavigationServer_navigationServiceProxy_isApproachingEndOfLeg___block_invoke;
  v4[3] = &__block_descriptor_40_e46_v16__0___MNNavigationServiceClientInterface__8l;
  v4[4] = leg;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v4];
}

- (void)navigationServiceProxy:(id)proxy didUpdateDistanceUntilManeuver:(double)maneuver timeUntilManeuver:(double)untilManeuver forStepIndex:(unint64_t)index
{
  [(MNNavigationDetails *)self->_details setDistanceUntilManeuver:proxy];
  [(MNNavigationDetails *)self->_details setTimeUntilManeuver:untilManeuver];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __107__MNNavigationServer_navigationServiceProxy_didUpdateDistanceUntilManeuver_timeUntilManeuver_forStepIndex___block_invoke;
  v10[3] = &__block_descriptor_56_e46_v16__0___MNNavigationServiceClientInterface__8l;
  *&v10[4] = maneuver;
  *&v10[5] = untilManeuver;
  v10[6] = index;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v10];
}

- (void)navigationServiceProxy:(id)proxy didUpdateDisplayedStepIndex:(unint64_t)index segmentIndex:(unint64_t)segmentIndex
{
  [(MNNavigationDetails *)self->_details setDisplayedStepIndex:index];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__MNNavigationServer_navigationServiceProxy_didUpdateDisplayedStepIndex_segmentIndex___block_invoke;
  v8[3] = &__block_descriptor_48_e46_v16__0___MNNavigationServiceClientInterface__8l;
  v8[4] = index;
  v8[5] = segmentIndex;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v8];
}

- (void)navigationServiceProxy:(id)proxy didFailWithError:(id)error
{
  errorCopy = error;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__MNNavigationServer_navigationServiceProxy_didFailWithError___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = errorCopy;
  v6 = errorCopy;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)proxy didUpdateNavigationDetails:(id)details
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315650;
    v7 = "[MNNavigationServer navigationServiceProxy:didUpdateNavigationDetails:]";
    v8 = 2080;
    v9 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationServer.m";
    v10 = 1024;
    v11 = 310;
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", &v6, 0x1Cu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxy:(id)proxy didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  v26 = *MEMORY[0x1E69E9840];
  [(MNNavigationDetails *)self->_details setState:toState];
  v8 = MNGetMNNavigationXPCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (state - 1 > 5)
    {
      v9 = @"Stopped";
    }

    else
    {
      v9 = off_1E842AC68[state - 1];
    }

    v10 = v9;
    if (toState - 1 > 5)
    {
      v11 = @"Stopped";
    }

    else
    {
      v11 = off_1E842AC68[toState - 1];
    }

    v12 = v11;
    _peersCount = [(MNNavigationServer *)self _peersCount];
    _peerDescriptions = [(MNNavigationServer *)self _peerDescriptions];
    v15 = [_peerDescriptions componentsJoinedByString:@"\n\t"];
    *buf = 138413058;
    v19 = v10;
    v20 = 2112;
    v21 = v12;
    v22 = 1024;
    v23 = _peersCount;
    v24 = 2112;
    v25 = v15;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "MNNavigationServer sending didChangeFromState: '%@' toState: '%@' to %d peers:\n\t%@", buf, 0x26u);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__MNNavigationServer_navigationServiceProxy_didChangeFromState_toState___block_invoke;
  v17[3] = &__block_descriptor_48_e46_v16__0___MNNavigationServiceClientInterface__8l;
  v17[4] = state;
  v17[5] = toState;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v17];
  if (!toState)
  {
    [(MNNavigationServer *)self _resetDetails];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxy:(id)proxy willChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = MNGetMNNavigationXPCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (state - 1 > 5)
    {
      v9 = @"Stopped";
    }

    else
    {
      v9 = off_1E842AC68[state - 1];
    }

    v10 = v9;
    if (toState - 1 > 5)
    {
      v11 = @"Stopped";
    }

    else
    {
      v11 = off_1E842AC68[toState - 1];
    }

    v12 = v11;
    *buf = 138412802;
    v16 = v10;
    v17 = 2112;
    v18 = v12;
    v19 = 1024;
    _peersCount = [(MNNavigationServer *)self _peersCount];
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "MNNavigationServer sending willChangeFromState: '%@' toState: '%@' to %d peers.", buf, 0x1Cu);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__MNNavigationServer_navigationServiceProxy_willChangeFromState_toState___block_invoke;
  v14[3] = &__block_descriptor_48_e46_v16__0___MNNavigationServiceClientInterface__8l;
  v14[4] = state;
  v14[5] = toState;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v14];
  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v51 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  connectionCopy = connection;
  v7 = [[MNNavigationServicePeer alloc] initWithConnection:connectionCopy];
  v8 = [(GEONavdPeer *)v7 hasEntitlement:@"com.apple.navigation.spi"];
  v9 = GEOFindOrCreateLog();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = +[MNNavigationStateManager sharedManager];
      currentStateType = [v11 currentStateType];
      if (currentStateType > 6)
      {
        v13 = @"MNNavigationStateTypeInvalid";
      }

      else
      {
        v13 = *(&off_1E842A470 + currentStateType);
      }

      *buf = 138412546;
      v48 = v7;
      v49 = 2112;
      v50 = v13;
      _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_DEFAULT, "Peer %@ connected to navd. Current navigation service state: %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v48 = v7;
    _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "Peer %@ connected to navd, but doesn't have the proper entitlement.", buf, 0xCu);
  }

  v14 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4EEDD48];
  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  [v14 setClasses:v17 forSelector:sel_setRoutesForPreview_selectedRouteIndex_ argumentIndex:0 ofReply:0];
  v18 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  v38 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];

  [v14 setClasses:v38 forSelector:sel_rerouteWithWaypoints_ argumentIndex:0 ofReply:0];
  [connectionCopy setExportedInterface:v14];
  v20 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4EEA548];
  [connectionCopy setRemoteObjectInterface:v20];

  if ([(MNNavigationServicePeer *)v7 isEntitled])
  {
    [connectionCopy setExportedObject:self->_localProxy];
  }

  else
  {
    v21 = [[MNNavigationServiceEmptyProxy alloc] initWithPeer:v7];
    [connectionCopy setExportedObject:v21];
  }

  objc_initWeak(buf, self);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __57__MNNavigationServer_listener_shouldAcceptNewConnection___block_invoke;
  v44[3] = &unk_1E8430100;
  v22 = v7;
  v45 = v22;
  objc_copyWeak(&v46, buf);
  [connectionCopy setInvalidationHandler:v44];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __57__MNNavigationServer_listener_shouldAcceptNewConnection___block_invoke_268;
  v41[3] = &unk_1E8430100;
  v23 = v22;
  v42 = v23;
  objc_copyWeak(&v43, buf);
  [connectionCopy setInterruptionHandler:v41];
  [connectionCopy resume];
  isEntitled = [(MNNavigationServicePeer *)v23 isEntitled];
  peersIsolater = self->_peersIsolater;
  if (isEntitled)
  {
    v26 = v40;
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __57__MNNavigationServer_listener_shouldAcceptNewConnection___block_invoke_269;
    v40[3] = &unk_1E8430D50;
    v40[4] = self;
    v27 = v23;
    v40[5] = v27;
    geo_isolate_sync_data();
    [(MNNavigationServer *)self _sendNavigationDetailsToPeer:v27];
  }

  else
  {
    v26 = v39;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __57__MNNavigationServer_listener_shouldAcceptNewConnection___block_invoke_2;
    v39[3] = &unk_1E8430D50;
    v39[4] = self;
    v28 = v23;
    v39[5] = v28;
    geo_isolate_sync_data();
    v29 = MEMORY[0x1E696AEC0];
    peerIdentifier = [(MNNavigationServicePeer *)v28 peerIdentifier];
    v31 = [v29 stringWithFormat:@"%@ is missing the navigation service entitlement.", peerIdentifier];

    v32 = [MEMORY[0x1E696ABC0] _navigation_errorWithCode:1 debugDescription:v31 underlyingError:0];
    connection = [(GEONavdPeer *)v28 connection];
    remoteObjectProxy = [connection remoteObjectProxy];
    [remoteObjectProxy navigationServiceProxy:0 didFailWithError:v32];
  }

  objc_destroyWeak(&v43);
  objc_destroyWeak(&v46);

  objc_destroyWeak(buf);
  v35 = *MEMORY[0x1E69E9840];
  return 1;
}

void __57__MNNavigationServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_DEFAULT, "Peer disconnected: %@", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _peerDidDisconnect:*(a1 + 32)];

  v5 = *MEMORY[0x1E69E9840];
}

void __57__MNNavigationServer_listener_shouldAcceptNewConnection___block_invoke_268(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_ERROR, "Peer interrupted: %@", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _peerDidDisconnect:*(a1 + 32)];

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __57__MNNavigationServer_listener_shouldAcceptNewConnection___block_invoke_269(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = [MEMORY[0x1E695DFA8] setWithCapacity:1];
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v2 = *(*(a1 + 32) + 16);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

uint64_t __57__MNNavigationServer_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = [MEMORY[0x1E695DFA8] setWithCapacity:1];
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v2 = *(*(a1 + 32) + 24);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (void)_peerDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  peersIsolater = self->_peersIsolater;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __41__MNNavigationServer__peerDidDisconnect___block_invoke;
  v17 = &unk_1E842FD80;
  selfCopy = self;
  v19 = disconnectCopy;
  v20 = &v21;
  geo_isolate_sync_data();
  [v19 clearConnection];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  sendNavigationDetailsIsolater = self->_sendNavigationDetailsIsolater;
  v8 = MEMORY[0x1E69E9820];
  v7 = v19;
  v9 = v7;
  geo_isolate_sync_data();
  if ((v11[3] & 1) != 0 || !v22[3])
  {
    [(MNNavigationServiceLocalProxy *)self->_localProxy reset:v8];
    [(MNNavigationServer *)self _resetDetails];
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v21, 8);
}

uint64_t __41__MNNavigationServer__peerDidDisconnect___block_invoke(void *a1)
{
  [*(a1[4] + 16) removeObject:a1[5]];
  [*(a1[4] + 24) removeObject:a1[5]];
  result = [*(a1[4] + 16) count];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void __41__MNNavigationServer__peerDidDisconnect___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) peerIdentifier];
  if ([v3 isEqualToString:@"com.apple.Maps"])
  {
    v2 = [*(*(a1 + 40) + 40) state] > 2;
  }

  else
  {
    v2 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v2;
}

- (id)_peerDescriptions
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = self->_peersIsolater;
  _geo_isolate_lock_data();
  if ([(NSMutableSet *)self->_peers count])
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableSet count](self->_peers, "count")}];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_peers;
    v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v5)
    {
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = [*(*(&v11 + 1) + 8 * i) description];
          [v3 addObject:v8];
        }

        v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v3 = 0;
  }

  _geo_isolate_unlock();

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)_peersCount
{
  v5 = self->_peersIsolater;
  _geo_isolate_lock_data();
  v3 = [(NSMutableSet *)self->_peers count];
  _geo_isolate_unlock();

  return v3;
}

- (void)_enumerateRemoteObjectsWithHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (handlerCopy)
  {
    v21 = self->_peersIsolater;
    _geo_isolate_lock_data();
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_peers;
    v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v17 objects:v32 count:16];
    if (v6)
    {
      v8 = *v18;
      *&v7 = 136316162;
      v16 = v7;
      do
      {
        v9 = 0;
        do
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          connection = [*(*(&v17 + 1) + 8 * v9) connection];
          remoteObjectProxy = [connection remoteObjectProxy];

          if (!remoteObjectProxy)
          {
            v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No remote object found on connection"];
            v13 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = v16;
              v23 = "[MNNavigationServer _enumerateRemoteObjectsWithHandler:]";
              v24 = 2080;
              v25 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationServer.m";
              v26 = 1024;
              v27 = 162;
              v28 = 2080;
              v29 = "remoteObject != nil";
              v30 = 2112;
              v31 = v12;
              _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
            }
          }

          handlerCopy[2](handlerCopy, remoteObjectProxy);

          ++v9;
        }

        while (v6 != v9);
        v14 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v17 objects:v32 count:16];
        v6 = v14;
      }

      while (v14);
    }

    _geo_isolate_unlock();
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_defaultsDidChange
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_INFO, "Locale changed. Killing navd.", v3, 2u);
  }

  exit(0);
}

- (void)_sendNavigationDetailsToPeer:(id)peer
{
  v19 = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  connection = [peerCopy connection];
  remoteObjectProxy = [connection remoteObjectProxy];

  if (!remoteObjectProxy)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No remote object found on connection"];
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 136316162;
      *&v10[4] = "[MNNavigationServer _sendNavigationDetailsToPeer:]";
      v11 = 2080;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationServer.m";
      v13 = 1024;
      v14 = 139;
      v15 = 2080;
      v16 = "remoteObject != nil";
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", v10, 0x30u);
    }
  }

  *v10 = self->_sendNavigationDetailsIsolater;
  _geo_isolate_lock_data();
  [remoteObjectProxy navigationServiceProxy:0 didUpdateNavigationDetails:self->_details];
  _geo_isolate_unlock();

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_resetDetails
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_INFO, "Resetting navigation details.", buf, 2u);
  }

  sendNavigationDetailsIsolater = self->_sendNavigationDetailsIsolater;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __35__MNNavigationServer__resetDetails__block_invoke;
  v18 = &unk_1E8430ED8;
  selfCopy = self;
  geo_isolate_sync_data();
  *buf = self->_peersIsolater;
  _geo_isolate_lock_data();
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_peers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v20 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [(MNNavigationServer *)self _sendNavigationDetailsToPeer:*(*(&v10 + 1) + 8 * v8++), v10];
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v20 count:16];
    }

    while (v6);
  }

  _geo_isolate_unlock();
  v9 = *MEMORY[0x1E69E9840];
}

void __35__MNNavigationServer__resetDetails__block_invoke(uint64_t a1)
{
  v2 = [[MNNavigationDetails alloc] initForServer:1];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)dealloc
{
  GEOUnregisterStateCaptureLegacy();
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E695D8F0] object:0];

  [(MNNavigationServiceLocalProxy *)self->_localProxy stopNavigationWithReason:0];
  [(NSXPCListener *)self->_listener invalidate];
  listener = self->_listener;
  self->_listener = 0;

  v5.receiver = self;
  v5.super_class = MNNavigationServer;
  [(MNNavigationServer *)&v5 dealloc];
}

- (MNNavigationServer)init
{
  v18.receiver = self;
  v18.super_class = MNNavigationServer;
  v2 = [(MNNavigationServer *)&v18 init];
  if (v2)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "Starting MNNavigationServer.", v17, 2u);
    }

    NSSetUncaughtExceptionHandler(_MNNavigationServerExceptionHandler);
    v4 = geo_isolater_create();
    peersIsolater = v2->_peersIsolater;
    v2->_peersIsolater = v4;

    v6 = geo_isolater_create();
    sendNavigationDetailsIsolater = v2->_sendNavigationDetailsIsolater;
    v2->_sendNavigationDetailsIsolater = v6;

    [(MNNavigationServer *)v2 _resetDetails];
    v8 = objc_alloc_init(MNNavigationServiceLocalProxy);
    localProxy = v2->_localProxy;
    v2->_localProxy = v8;

    [(MNNavigationServiceLocalProxy *)v2->_localProxy setDelegate:v2];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__defaultsDidChange name:*MEMORY[0x1E695D8F0] object:0];

    v11 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.navigationService"];
    listener = v2->_listener;
    v2->_listener = v11;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
    modernLoader = [MEMORY[0x1E69A2610] modernLoader];
    v14 = objc_alloc_init(MEMORY[0x1E69A2730]);
    [modernLoader registerTileDecoder:v14];
    v15 = dispatch_get_global_queue(21, 0);
    GEORegisterPListStateCaptureLegacy();
  }

  return v2;
}

+ (id)sharedServer
{
  if (sharedServer_onceToken != -1)
  {
    dispatch_once(&sharedServer_onceToken, &__block_literal_global_989);
  }

  v3 = sharedServer_sharedServer;

  return v3;
}

void __34__MNNavigationServer_sharedServer__block_invoke()
{
  v0 = objc_alloc_init(MNNavigationServer);
  v1 = sharedServer_sharedServer;
  sharedServer_sharedServer = v0;
}

@end