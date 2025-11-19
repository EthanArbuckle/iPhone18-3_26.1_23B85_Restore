@interface MNNavigationServer
+ (id)sharedServer;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (MNNavigationServer)init;
- (id)_peerDescriptions;
- (id)captureStatePlistWithHints:(os_state_hints_s *)a3;
- (unint64_t)_peersCount;
- (void)_defaultsDidChange;
- (void)_enumerateRemoteObjectsWithHandler:(id)a3;
- (void)_peerDidDisconnect:(id)a3;
- (void)_resetDetails;
- (void)_sendNavigationDetailsToPeer:(id)a3;
- (void)dealloc;
- (void)navigationServiceProxy:(id)a3 didActivateAudioSession:(BOOL)a4;
- (void)navigationServiceProxy:(id)a3 didArriveAtWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5;
- (void)navigationServiceProxy:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)navigationServiceProxy:(id)a3 didEnterPreArrivalStateForWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5;
- (void)navigationServiceProxy:(id)a3 didFailRerouteWithError:(id)a4;
- (void)navigationServiceProxy:(id)a3 didFailWithError:(id)a4;
- (void)navigationServiceProxy:(id)a3 didProcessSpeechEvent:(id)a4;
- (void)navigationServiceProxy:(id)a3 didReceiveRealtimeUpdates:(id)a4;
- (void)navigationServiceProxy:(id)a3 didReceiveRouteSignalStrength:(unint64_t)a4;
- (void)navigationServiceProxy:(id)a3 didReceiveTransitAlert:(id)a4;
- (void)navigationServiceProxy:(id)a3 didRerouteWithRoute:(id)a4 withLocation:(id)a5 withAlternateRoutes:(id)a6 rerouteReason:(unint64_t)a7;
- (void)navigationServiceProxy:(id)a3 didResumeNavigatingFromWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5 reason:(unint64_t)a6;
- (void)navigationServiceProxy:(id)a3 didSendNavigationServiceCallback:(id)a4;
- (void)navigationServiceProxy:(id)a3 didStartSpeakingPrompt:(id)a4;
- (void)navigationServiceProxy:(id)a3 didSwitchToNewTransportType:(int)a4 newRoute:(id)a5;
- (void)navigationServiceProxy:(id)a3 didUpdateAlternateRoutes:(id)a4;
- (void)navigationServiceProxy:(id)a3 didUpdateDisplayedStepIndex:(unint64_t)a4 segmentIndex:(unint64_t)a5;
- (void)navigationServiceProxy:(id)a3 didUpdateDistanceUntilManeuver:(double)a4 timeUntilManeuver:(double)a5 forStepIndex:(unint64_t)a6;
- (void)navigationServiceProxy:(id)a3 didUpdateDistanceUntilSign:(double)a4 timeUntilSign:(double)a5 forStepIndex:(unint64_t)a6;
- (void)navigationServiceProxy:(id)a3 didUpdateETAResponseForRoute:(id)a4;
- (void)navigationServiceProxy:(id)a3 didUpdateHeading:(double)a4 accuracy:(double)a5;
- (void)navigationServiceProxy:(id)a3 didUpdateMotionType:(unint64_t)a4 confidence:(unint64_t)a5;
- (void)navigationServiceProxy:(id)a3 didUpdateNavigationDetails:(id)a4;
- (void)navigationServiceProxy:(id)a3 didUpdatePreviewRoutes:(id)a4 withSelectedRouteIndex:(unint64_t)a5;
- (void)navigationServiceProxy:(id)a3 didUpdateProceedToRouteDistance:(double)a4 displayString:(id)a5 closestStepIndex:(unint64_t)a6;
- (void)navigationServiceProxy:(id)a3 didUpdateRouteWithNewRideSelection:(id)a4;
- (void)navigationServiceProxy:(id)a3 didUpdateTracePlaybackDetails:(id)a4;
- (void)navigationServiceProxy:(id)a3 displayManeuverAlertForAnnouncementStage:(unint64_t)a4;
- (void)navigationServiceProxy:(id)a3 displayPrimaryStep:(id)a4 instructions:(id)a5 shieldType:(int)a6 shieldText:(id)a7 drivingSide:(int)a8 maneuverStepIndex:(unint64_t)a9 isSynthetic:(BOOL)a10;
- (void)navigationServiceProxy:(id)a3 displaySecondaryStep:(id)a4 instructions:(id)a5 shieldType:(int)a6 shieldText:(id)a7 drivingSide:(int)a8;
- (void)navigationServiceProxy:(id)a3 hideJunctionViewForId:(id)a4;
- (void)navigationServiceProxy:(id)a3 hideLaneDirectionsForId:(id)a4;
- (void)navigationServiceProxy:(id)a3 isApproachingEndOfLeg:(unint64_t)a4;
- (void)navigationServiceProxy:(id)a3 newGuidanceEventFeedback:(id)a4;
- (void)navigationServiceProxy:(id)a3 showJunctionView:(id)a4;
- (void)navigationServiceProxy:(id)a3 showLaneDirections:(id)a4;
- (void)navigationServiceProxy:(id)a3 triggerHaptics:(int)a4;
- (void)navigationServiceProxy:(id)a3 updateSignsWithARInfo:(id)a4;
- (void)navigationServiceProxy:(id)a3 updateSignsWithInfo:(id)a4;
- (void)navigationServiceProxy:(id)a3 updatedGuidanceEventFeedback:(id)a4;
- (void)navigationServiceProxy:(id)a3 usePersistentDisplay:(BOOL)a4;
- (void)navigationServiceProxy:(id)a3 willAnnounce:(unint64_t)a4 inSeconds:(double)a5;
- (void)navigationServiceProxy:(id)a3 willChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)navigationServiceProxy:(id)a3 willProcessSpeechEvent:(id)a4;
- (void)navigationServiceProxy:(id)a3 willRequestRealtimeUpdatesForRouteIDs:(id)a4;
@end

@implementation MNNavigationServer

- (id)captureStatePlistWithHints:(os_state_hints_s *)a3
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
  v45 = self;
  v46 = &v54;
  v47 = &v48;
  geo_isolate_sync_data();
  v32 = [MEMORY[0x1E695DF70] array];
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
        v9 = [v8 peerIdentifier];
        v10 = v9;
        v11 = &stru_1F4EB6B70;
        if (v9)
        {
          v11 = v9;
        }

        v65[1] = @"processID";
        v66[0] = v11;
        v12 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v8, "processIdentifier")}];
        v66[1] = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:2];
        [v32 addObject:v13];
      }

      v5 = [v4 countByEnumeratingWithState:&v37 objects:v67 count:16];
    }

    while (v5);
  }

  v14 = [MEMORY[0x1E695DF70] array];
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
        v20 = [v19 peerIdentifier];
        v21 = v20;
        v22 = &stru_1F4EB6B70;
        if (v20)
        {
          v22 = v20;
        }

        v62[1] = @"processID";
        v63[0] = v22;
        v23 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v19, "processIdentifier")}];
        v63[1] = v23;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:2];
        [v14 addObject:v24];
      }

      v16 = [v15 countByEnumeratingWithState:&v33 objects:v64 count:16];
    }

    while (v16);
  }

  v25 = [MEMORY[0x1E696ADC8] mainQueue];
  v26 = objc_opt_respondsToSelector();

  if (v26)
  {
    v27 = [MEMORY[0x1E696ADC8] mainQueue];
    v28 = [v27 __graphDescription];

    if (![(__CFString *)v28 length])
    {

      v28 = @"<empty>";
    }
  }

  else
  {
    v28 = @"<null>";
  }

  v60[0] = @"peers";
  v60[1] = @"unEntitledPeers";
  v61[0] = v32;
  v61[1] = v14;
  v60[2] = @"mainOperationQueue";
  v61[2] = v28;
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

- (void)navigationServiceProxy:(id)a3 didSendNavigationServiceCallback:(id)a4
{
  v5 = a4;
  [(MNNavigationDetails *)self->_details updateWithNavigationServiceCallbackParameters:v5];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__MNNavigationServer_navigationServiceProxy_didSendNavigationServiceCallback___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = v5;
  v6 = v5;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)a3 didReceiveTransitAlert:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__MNNavigationServer_navigationServiceProxy_didReceiveTransitAlert___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = v5;
  v6 = v5;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)a3 didReceiveRealtimeUpdates:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__MNNavigationServer_navigationServiceProxy_didReceiveRealtimeUpdates___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = v5;
  v6 = v5;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)a3 willRequestRealtimeUpdatesForRouteIDs:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__MNNavigationServer_navigationServiceProxy_willRequestRealtimeUpdatesForRouteIDs___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = v5;
  v6 = v5;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)a3 triggerHaptics:(int)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__MNNavigationServer_navigationServiceProxy_triggerHaptics___block_invoke;
  v4[3] = &__block_descriptor_36_e46_v16__0___MNNavigationServiceClientInterface__8l;
  v5 = a4;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v4];
}

- (void)navigationServiceProxy:(id)a3 didProcessSpeechEvent:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__MNNavigationServer_navigationServiceProxy_didProcessSpeechEvent___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = v5;
  v6 = v5;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)a3 willProcessSpeechEvent:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__MNNavigationServer_navigationServiceProxy_willProcessSpeechEvent___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = v5;
  v6 = v5;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)a3 didStartSpeakingPrompt:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__MNNavigationServer_navigationServiceProxy_didStartSpeakingPrompt___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = v5;
  v6 = v5;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)a3 didActivateAudioSession:(BOOL)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__MNNavigationServer_navigationServiceProxy_didActivateAudioSession___block_invoke;
  v4[3] = &__block_descriptor_33_e46_v16__0___MNNavigationServiceClientInterface__8l;
  v5 = a4;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v4];
}

- (void)navigationServiceProxy:(id)a3 didUpdateTracePlaybackDetails:(id)a4
{
  v5 = a4;
  v6 = [v5 eventType];
  if (v6 <= 3)
  {
    switch(v6)
    {
      case 1:
        v10 = [v5 tracePath];
        [(MNNavigationDetails *)self->_details setTracePath:v10];

        [v5 traceDuration];
        [(MNNavigationDetails *)self->_details setTraceDuration:?];
        v11 = [v5 bookmarks];
        [(MNNavigationDetails *)self->_details setTraceBookmarks:v11];

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

  if (v6 > 5)
  {
    if (v6 == 6)
    {
      v9 = [v5 bookmarks];
      [(MNNavigationDetails *)self->_details setTraceBookmarks:v9];
    }

    else
    {
      if (v6 != 7)
      {
        goto LABEL_16;
      }

      v9 = [v5 tracePath];
      [(MNNavigationDetails *)self->_details setTracePath:v9];
    }

    goto LABEL_16;
  }

  [v5 currentPosition];
  [(MNNavigationDetails *)self->_details setTracePosition:?];
LABEL_16:
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__MNNavigationServer_navigationServiceProxy_didUpdateTracePlaybackDetails___block_invoke;
  v13[3] = &unk_1E842A308;
  v14 = v5;
  v12 = v5;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v13];
}

- (void)navigationServiceProxy:(id)a3 didUpdateAlternateRoutes:(id)a4
{
  v5 = a4;
  [(MNNavigationDetails *)self->_details setAlternateRoutes:v5];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__MNNavigationServer_navigationServiceProxy_didUpdateAlternateRoutes___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = v5;
  v6 = v5;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)a3 didFailRerouteWithError:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__MNNavigationServer_navigationServiceProxy_didFailRerouteWithError___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = v5;
  v6 = v5;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)a3 didSwitchToNewTransportType:(int)a4 newRoute:(id)a5
{
  v7 = a5;
  [(MNNavigationDetails *)self->_details setCurrentRoute:v7 withAlternateRoutes:0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__MNNavigationServer_navigationServiceProxy_didSwitchToNewTransportType_newRoute___block_invoke;
  v9[3] = &unk_1E842A450;
  v11 = a4;
  v10 = v7;
  v8 = v7;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v9];
}

- (void)navigationServiceProxy:(id)a3 didUpdateRouteWithNewRideSelection:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__MNNavigationServer_navigationServiceProxy_didUpdateRouteWithNewRideSelection___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = v5;
  v6 = v5;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)a3 didRerouteWithRoute:(id)a4 withLocation:(id)a5 withAlternateRoutes:(id)a6 rerouteReason:(unint64_t)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [(MNNavigationDetails *)self->_details setCurrentRoute:v11 withAlternateRoutes:v13];
  [(MNNavigationDetails *)self->_details setLocation:v12];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __112__MNNavigationServer_navigationServiceProxy_didRerouteWithRoute_withLocation_withAlternateRoutes_rerouteReason___block_invoke;
  v17[3] = &unk_1E842A408;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = a7;
  v14 = v13;
  v15 = v12;
  v16 = v11;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v17];
}

- (void)navigationServiceProxy:(id)a3 didUpdatePreviewRoutes:(id)a4 withSelectedRouteIndex:(unint64_t)a5
{
  v7 = a4;
  [(MNNavigationDetails *)self->_details setPreviewRoutes:v7 withSelectedRouteIndex:a5];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __91__MNNavigationServer_navigationServiceProxy_didUpdatePreviewRoutes_withSelectedRouteIndex___block_invoke;
  v9[3] = &unk_1E842A390;
  v10 = v7;
  v11 = a5;
  v8 = v7;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v9];
}

- (void)navigationServiceProxy:(id)a3 didUpdateMotionType:(unint64_t)a4 confidence:(unint64_t)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__MNNavigationServer_navigationServiceProxy_didUpdateMotionType_confidence___block_invoke;
  v5[3] = &__block_descriptor_48_e46_v16__0___MNNavigationServiceClientInterface__8l;
  v5[4] = a4;
  v5[5] = a5;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v5];
}

- (void)navigationServiceProxy:(id)a3 didUpdateHeading:(double)a4 accuracy:(double)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__MNNavigationServer_navigationServiceProxy_didUpdateHeading_accuracy___block_invoke;
  v5[3] = &__block_descriptor_48_e46_v16__0___MNNavigationServiceClientInterface__8l;
  *&v5[4] = a4;
  *&v5[5] = a5;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v5];
}

- (void)navigationServiceProxy:(id)a3 didUpdateETAResponseForRoute:(id)a4
{
  v5 = a4;
  [(MNNavigationDetails *)self->_details updateETATrafficForRoute:v5];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__MNNavigationServer_navigationServiceProxy_didUpdateETAResponseForRoute___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = v5;
  v6 = v5;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)a3 didReceiveRouteSignalStrength:(unint64_t)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__MNNavigationServer_navigationServiceProxy_didReceiveRouteSignalStrength___block_invoke;
  v4[3] = &__block_descriptor_40_e46_v16__0___MNNavigationServiceClientInterface__8l;
  v4[4] = a4;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v4];
}

- (void)navigationServiceProxy:(id)a3 updatedGuidanceEventFeedback:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__MNNavigationServer_navigationServiceProxy_updatedGuidanceEventFeedback___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = v5;
  v6 = v5;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)a3 newGuidanceEventFeedback:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__MNNavigationServer_navigationServiceProxy_newGuidanceEventFeedback___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = v5;
  v6 = v5;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)a3 hideJunctionViewForId:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__MNNavigationServer_navigationServiceProxy_hideJunctionViewForId___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = v5;
  v6 = v5;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)a3 showJunctionView:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__MNNavigationServer_navigationServiceProxy_showJunctionView___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = v5;
  v6 = v5;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)a3 hideLaneDirectionsForId:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__MNNavigationServer_navigationServiceProxy_hideLaneDirectionsForId___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = v5;
  v6 = v5;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)a3 showLaneDirections:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__MNNavigationServer_navigationServiceProxy_showLaneDirections___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = v5;
  v6 = v5;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)a3 usePersistentDisplay:(BOOL)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__MNNavigationServer_navigationServiceProxy_usePersistentDisplay___block_invoke;
  v4[3] = &__block_descriptor_33_e46_v16__0___MNNavigationServiceClientInterface__8l;
  v5 = a4;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v4];
}

- (void)navigationServiceProxy:(id)a3 updateSignsWithARInfo:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__MNNavigationServer_navigationServiceProxy_updateSignsWithARInfo___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = v5;
  v6 = v5;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)a3 updateSignsWithInfo:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__MNNavigationServer_navigationServiceProxy_updateSignsWithInfo___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = v5;
  v6 = v5;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)a3 displaySecondaryStep:(id)a4 instructions:(id)a5 shieldType:(int)a6 shieldText:(id)a7 drivingSide:(int)a8
{
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __113__MNNavigationServer_navigationServiceProxy_displaySecondaryStep_instructions_shieldType_shieldText_drivingSide___block_invoke;
  v19[3] = &unk_1E842A408;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v23 = a6;
  v24 = a8;
  v16 = v15;
  v17 = v14;
  v18 = v13;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v19];
}

- (void)navigationServiceProxy:(id)a3 displayManeuverAlertForAnnouncementStage:(unint64_t)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __86__MNNavigationServer_navigationServiceProxy_displayManeuverAlertForAnnouncementStage___block_invoke;
  v4[3] = &__block_descriptor_40_e46_v16__0___MNNavigationServiceClientInterface__8l;
  v4[4] = a4;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v4];
}

- (void)navigationServiceProxy:(id)a3 displayPrimaryStep:(id)a4 instructions:(id)a5 shieldType:(int)a6 shieldText:(id)a7 drivingSide:(int)a8 maneuverStepIndex:(unint64_t)a9 isSynthetic:(BOOL)a10
{
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __141__MNNavigationServer_navigationServiceProxy_displayPrimaryStep_instructions_shieldType_shieldText_drivingSide_maneuverStepIndex_isSynthetic___block_invoke;
  v21[3] = &unk_1E842A3E0;
  v22 = v15;
  v23 = v16;
  v26 = a6;
  v27 = a8;
  v24 = v17;
  v25 = a9;
  v28 = a10;
  v18 = v17;
  v19 = v16;
  v20 = v15;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v21];
}

- (void)navigationServiceProxy:(id)a3 willAnnounce:(unint64_t)a4 inSeconds:(double)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__MNNavigationServer_navigationServiceProxy_willAnnounce_inSeconds___block_invoke;
  v5[3] = &__block_descriptor_48_e46_v16__0___MNNavigationServiceClientInterface__8l;
  v5[4] = a4;
  *&v5[5] = a5;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v5];
}

- (void)navigationServiceProxy:(id)a3 didUpdateDistanceUntilSign:(double)a4 timeUntilSign:(double)a5 forStepIndex:(unint64_t)a6
{
  [(MNNavigationDetails *)self->_details setDistanceUntilSign:a3];
  [(MNNavigationDetails *)self->_details setTimeUntilSign:a5];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __99__MNNavigationServer_navigationServiceProxy_didUpdateDistanceUntilSign_timeUntilSign_forStepIndex___block_invoke;
  v10[3] = &__block_descriptor_56_e46_v16__0___MNNavigationServiceClientInterface__8l;
  *&v10[4] = a4;
  *&v10[5] = a5;
  v10[6] = a6;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v10];
}

- (void)navigationServiceProxy:(id)a3 didUpdateProceedToRouteDistance:(double)a4 displayString:(id)a5 closestStepIndex:(unint64_t)a6
{
  v9 = a5;
  [(MNNavigationDetails *)self->_details setProceedToRouteDistance:a4];
  [(MNNavigationDetails *)self->_details setDisplayString:v9];
  [(MNNavigationDetails *)self->_details setClosestStepIndex:a6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __108__MNNavigationServer_navigationServiceProxy_didUpdateProceedToRouteDistance_displayString_closestStepIndex___block_invoke;
  v11[3] = &unk_1E842A3B8;
  v13 = a4;
  v12 = v9;
  v14 = a6;
  v10 = v9;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v11];
}

- (void)navigationServiceProxy:(id)a3 didResumeNavigatingFromWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5 reason:(unint64_t)a6
{
  v9 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __98__MNNavigationServer_navigationServiceProxy_didResumeNavigatingFromWaypoint_endOfLegIndex_reason___block_invoke;
  v11[3] = &unk_1E842A3B8;
  v12 = v9;
  v13 = a5;
  v14 = a6;
  v10 = v9;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v11];
}

- (void)navigationServiceProxy:(id)a3 didArriveAtWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5
{
  v7 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__MNNavigationServer_navigationServiceProxy_didArriveAtWaypoint_endOfLegIndex___block_invoke;
  v9[3] = &unk_1E842A390;
  v10 = v7;
  v11 = a5;
  v8 = v7;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v9];
}

- (void)navigationServiceProxy:(id)a3 didEnterPreArrivalStateForWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5
{
  v7 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __94__MNNavigationServer_navigationServiceProxy_didEnterPreArrivalStateForWaypoint_endOfLegIndex___block_invoke;
  v9[3] = &unk_1E842A390;
  v10 = v7;
  v11 = a5;
  v8 = v7;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v9];
}

- (void)navigationServiceProxy:(id)a3 isApproachingEndOfLeg:(unint64_t)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__MNNavigationServer_navigationServiceProxy_isApproachingEndOfLeg___block_invoke;
  v4[3] = &__block_descriptor_40_e46_v16__0___MNNavigationServiceClientInterface__8l;
  v4[4] = a4;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v4];
}

- (void)navigationServiceProxy:(id)a3 didUpdateDistanceUntilManeuver:(double)a4 timeUntilManeuver:(double)a5 forStepIndex:(unint64_t)a6
{
  [(MNNavigationDetails *)self->_details setDistanceUntilManeuver:a3];
  [(MNNavigationDetails *)self->_details setTimeUntilManeuver:a5];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __107__MNNavigationServer_navigationServiceProxy_didUpdateDistanceUntilManeuver_timeUntilManeuver_forStepIndex___block_invoke;
  v10[3] = &__block_descriptor_56_e46_v16__0___MNNavigationServiceClientInterface__8l;
  *&v10[4] = a4;
  *&v10[5] = a5;
  v10[6] = a6;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v10];
}

- (void)navigationServiceProxy:(id)a3 didUpdateDisplayedStepIndex:(unint64_t)a4 segmentIndex:(unint64_t)a5
{
  [(MNNavigationDetails *)self->_details setDisplayedStepIndex:a4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__MNNavigationServer_navigationServiceProxy_didUpdateDisplayedStepIndex_segmentIndex___block_invoke;
  v8[3] = &__block_descriptor_48_e46_v16__0___MNNavigationServiceClientInterface__8l;
  v8[4] = a4;
  v8[5] = a5;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v8];
}

- (void)navigationServiceProxy:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__MNNavigationServer_navigationServiceProxy_didFailWithError___block_invoke;
  v7[3] = &unk_1E842A308;
  v8 = v5;
  v6 = v5;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v7];
}

- (void)navigationServiceProxy:(id)a3 didUpdateNavigationDetails:(id)a4
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

- (void)navigationServiceProxy:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v26 = *MEMORY[0x1E69E9840];
  [(MNNavigationDetails *)self->_details setState:a5];
  v8 = MNGetMNNavigationXPCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (a4 - 1 > 5)
    {
      v9 = @"Stopped";
    }

    else
    {
      v9 = off_1E842AC68[a4 - 1];
    }

    v10 = v9;
    if (a5 - 1 > 5)
    {
      v11 = @"Stopped";
    }

    else
    {
      v11 = off_1E842AC68[a5 - 1];
    }

    v12 = v11;
    v13 = [(MNNavigationServer *)self _peersCount];
    v14 = [(MNNavigationServer *)self _peerDescriptions];
    v15 = [v14 componentsJoinedByString:@"\n\t"];
    *buf = 138413058;
    v19 = v10;
    v20 = 2112;
    v21 = v12;
    v22 = 1024;
    v23 = v13;
    v24 = 2112;
    v25 = v15;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "MNNavigationServer sending didChangeFromState: '%@' toState: '%@' to %d peers:\n\t%@", buf, 0x26u);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__MNNavigationServer_navigationServiceProxy_didChangeFromState_toState___block_invoke;
  v17[3] = &__block_descriptor_48_e46_v16__0___MNNavigationServiceClientInterface__8l;
  v17[4] = a4;
  v17[5] = a5;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v17];
  if (!a5)
  {
    [(MNNavigationServer *)self _resetDetails];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxy:(id)a3 willChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = MNGetMNNavigationXPCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (a4 - 1 > 5)
    {
      v9 = @"Stopped";
    }

    else
    {
      v9 = off_1E842AC68[a4 - 1];
    }

    v10 = v9;
    if (a5 - 1 > 5)
    {
      v11 = @"Stopped";
    }

    else
    {
      v11 = off_1E842AC68[a5 - 1];
    }

    v12 = v11;
    *buf = 138412802;
    v16 = v10;
    v17 = 2112;
    v18 = v12;
    v19 = 1024;
    v20 = [(MNNavigationServer *)self _peersCount];
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "MNNavigationServer sending willChangeFromState: '%@' toState: '%@' to %d peers.", buf, 0x1Cu);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__MNNavigationServer_navigationServiceProxy_willChangeFromState_toState___block_invoke;
  v14[3] = &__block_descriptor_48_e46_v16__0___MNNavigationServiceClientInterface__8l;
  v14[4] = a4;
  v14[5] = a5;
  [(MNNavigationServer *)self _enumerateRemoteObjectsWithHandler:v14];
  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v37 = a3;
  v6 = a4;
  v7 = [[MNNavigationServicePeer alloc] initWithConnection:v6];
  v8 = [(GEONavdPeer *)v7 hasEntitlement:@"com.apple.navigation.spi"];
  v9 = GEOFindOrCreateLog();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = +[MNNavigationStateManager sharedManager];
      v12 = [v11 currentStateType];
      if (v12 > 6)
      {
        v13 = @"MNNavigationStateTypeInvalid";
      }

      else
      {
        v13 = *(&off_1E842A470 + v12);
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
  [v6 setExportedInterface:v14];
  v20 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4EEA548];
  [v6 setRemoteObjectInterface:v20];

  if ([(MNNavigationServicePeer *)v7 isEntitled])
  {
    [v6 setExportedObject:self->_localProxy];
  }

  else
  {
    v21 = [[MNNavigationServiceEmptyProxy alloc] initWithPeer:v7];
    [v6 setExportedObject:v21];
  }

  objc_initWeak(buf, self);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __57__MNNavigationServer_listener_shouldAcceptNewConnection___block_invoke;
  v44[3] = &unk_1E8430100;
  v22 = v7;
  v45 = v22;
  objc_copyWeak(&v46, buf);
  [v6 setInvalidationHandler:v44];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __57__MNNavigationServer_listener_shouldAcceptNewConnection___block_invoke_268;
  v41[3] = &unk_1E8430100;
  v23 = v22;
  v42 = v23;
  objc_copyWeak(&v43, buf);
  [v6 setInterruptionHandler:v41];
  [v6 resume];
  v24 = [(MNNavigationServicePeer *)v23 isEntitled];
  peersIsolater = self->_peersIsolater;
  if (v24)
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
    v30 = [(MNNavigationServicePeer *)v28 peerIdentifier];
    v31 = [v29 stringWithFormat:@"%@ is missing the navigation service entitlement.", v30];

    v32 = [MEMORY[0x1E696ABC0] _navigation_errorWithCode:1 debugDescription:v31 underlyingError:0];
    v33 = [(GEONavdPeer *)v28 connection];
    v34 = [v33 remoteObjectProxy];
    [v34 navigationServiceProxy:0 didFailWithError:v32];
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

- (void)_peerDidDisconnect:(id)a3
{
  v4 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  peersIsolater = self->_peersIsolater;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __41__MNNavigationServer__peerDidDisconnect___block_invoke;
  v17 = &unk_1E842FD80;
  v18 = self;
  v19 = v4;
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

- (void)_enumerateRemoteObjectsWithHandler:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
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

          v10 = [*(*(&v17 + 1) + 8 * v9) connection];
          v11 = [v10 remoteObjectProxy];

          if (!v11)
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

          v4[2](v4, v11);

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

- (void)_sendNavigationDetailsToPeer:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 connection];
  v6 = [v5 remoteObjectProxy];

  if (!v6)
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
  [v6 navigationServiceProxy:0 didUpdateNavigationDetails:self->_details];
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
  v19 = self;
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E695D8F0] object:0];

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
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v2 selector:sel__defaultsDidChange name:*MEMORY[0x1E695D8F0] object:0];

    v11 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.navigationService"];
    listener = v2->_listener;
    v2->_listener = v11;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
    v13 = [MEMORY[0x1E69A2610] modernLoader];
    v14 = objc_alloc_init(MEMORY[0x1E69A2730]);
    [v13 registerTileDecoder:v14];
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