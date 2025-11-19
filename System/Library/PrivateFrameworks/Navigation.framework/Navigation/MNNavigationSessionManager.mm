@interface MNNavigationSessionManager
- (BOOL)repeatCurrentGuidance;
- (BOOL)repeatCurrentTrafficAlert;
- (BOOL)vibrateForPrompt:(unint64_t)a3;
- (MNNavigationSessionManager)init;
- (MNNavigationSessionManager)initWithAuditToken:(id)a3;
- (MNNavigationSessionManagerDelegate)delegate;
- (id)_proxyUpdater;
- (id)_routeManager;
- (id)_traceManager;
- (void)_didEndNavigation;
- (void)advanceToNextLeg;
- (void)dealloc;
- (void)disableNavigationCapability:(unint64_t)a3;
- (void)enableNavigationCapability:(unint64_t)a3;
- (void)forceReroute;
- (void)insertWaypoint:(id)a3;
- (void)navigationSession:(id)a3 currentStepIndex:(unint64_t)a4 didUpdateDistanceUntilManeuver:(double)a5 timeUntilManeuver:(double)a6;
- (void)navigationSession:(id)a3 currentStepIndex:(unint64_t)a4 didUpdateDistanceUntilSign:(double)a5 timeUntilSign:(double)a6;
- (void)navigationSession:(id)a3 didArriveAtWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5;
- (void)navigationSession:(id)a3 didEnterPreArrivalStateForWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5;
- (void)navigationSession:(id)a3 didFailRerouteWithError:(id)a4;
- (void)navigationSession:(id)a3 didProcessSpeechEvent:(id)a4;
- (void)navigationSession:(id)a3 didReceiveRouteSignalStrength:(unint64_t)a4;
- (void)navigationSession:(id)a3 didReceiveTransitAlert:(id)a4;
- (void)navigationSession:(id)a3 didReroute:(id)a4 withLocation:(id)a5 withAlternateRoutes:(id)a6 rerouteReason:(unint64_t)a7;
- (void)navigationSession:(id)a3 didResumeNavigatingFromWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5 reason:(unint64_t)a6;
- (void)navigationSession:(id)a3 didSendNavigationServiceCallback:(id)a4;
- (void)navigationSession:(id)a3 didStartSpeakingPrompt:(id)a4;
- (void)navigationSession:(id)a3 didUpdateAlternateRoutes:(id)a4;
- (void)navigationSession:(id)a3 didUpdateBackgroundWalkingRoute:(id)a4;
- (void)navigationSession:(id)a3 didUpdateDisplayETA:(id)a4 remainingDistance:(id)a5 batteryChargeInfo:(id)a6;
- (void)navigationSession:(id)a3 didUpdateETAResponseForRoute:(id)a4;
- (void)navigationSession:(id)a3 didUpdateHeading:(double)a4 accuracy:(double)a5;
- (void)navigationSession:(id)a3 didUpdateMatchedLocation:(id)a4;
- (void)navigationSession:(id)a3 didUpdateMotionType:(unint64_t)a4 confidence:(unint64_t)a5;
- (void)navigationSession:(id)a3 didUpdateVehicleParkingInfo:(id)a4;
- (void)navigationSession:(id)a3 displayManeuverAlertForAnnouncementStage:(unint64_t)a4;
- (void)navigationSession:(id)a3 hideJunctionViewForId:(id)a4;
- (void)navigationSession:(id)a3 hideLaneDirectionsForId:(id)a4;
- (void)navigationSession:(id)a3 isApproachingEndOfLeg:(unint64_t)a4;
- (void)navigationSession:(id)a3 matchedToStepIndex:(unint64_t)a4 segmentIndex:(unint64_t)a5;
- (void)navigationSession:(id)a3 newGuidanceEventFeedback:(id)a4;
- (void)navigationSession:(id)a3 proceedToRouteDistance:(double)a4 displayString:(id)a5 closestStepIndex:(unint64_t)a6;
- (void)navigationSession:(id)a3 shouldEndWithReason:(unint64_t)a4;
- (void)navigationSession:(id)a3 showJunctionView:(id)a4;
- (void)navigationSession:(id)a3 showLaneDirections:(id)a4;
- (void)navigationSession:(id)a3 updateSignsWithARInfo:(id)a4;
- (void)navigationSession:(id)a3 updateSignsWithInfo:(id)a4;
- (void)navigationSession:(id)a3 updatedGuidanceEventFeedback:(id)a4;
- (void)navigationSession:(id)a3 willAnnounce:(unint64_t)a4 inSeconds:(double)a5;
- (void)navigationSession:(id)a3 willProcessSpeechEvent:(id)a4;
- (void)navigationSessionBeginGuidanceUpdate:(id)a3;
- (void)navigationSessionDidArrive:(id)a3;
- (void)navigationSessionDidCancelReroute:(id)a3;
- (void)navigationSessionDidEnterPreArrivalState:(id)a3;
- (void)navigationSessionDidFinishLocationUpdate:(id)a3;
- (void)navigationSessionEndGuidanceUpdate:(id)a3;
- (void)navigationSessionHideSecondaryStep:(id)a3;
- (void)navigationSessionWillPause:(id)a3;
- (void)navigationSessionWillReroute:(id)a3;
- (void)navigationSessionWillResumeFromPause:(id)a3;
- (void)navigationTraceManager:(id)a3 didUpdateTracePlaybackDetails:(id)a4;
- (void)recordPedestrianTracePath:(id)a3;
- (void)recordTraceBookmarkAtCurrentPositionWthScreenshotData:(id)a3;
- (void)removeWaypointAtIndex:(unint64_t)a3;
- (void)rerouteWithWaypoints:(id)a3;
- (void)resumeOriginalDestination;
- (void)setDisplayedStepIndex:(unint64_t)a3;
- (void)setRideIndex:(unint64_t)a3 forSegmentIndex:(unint64_t)a4;
- (void)setRoutesForPreview:(id)a3 selectedRouteIndex:(unint64_t)a4;
- (void)setTraceIsPlaying:(BOOL)a3;
- (void)setTracePlaybackSpeed:(double)a3;
- (void)setTracePosition:(double)a3;
- (void)startNavigationWithDetails:(id)a3;
- (void)stopNavigationWithReason:(unint64_t)a3;
- (void)switchToRoute:(id)a3;
- (void)updateDestination:(id)a3;
- (void)updateForStartNavigation:(id)a3;
- (void)updateManager:(id)a3 didReceiveTransitError:(id)a4;
- (void)updateManager:(id)a3 didReceiveTransitUpdateResponse:(id)a4;
- (void)updateManager:(id)a3 didReceiveTransitUpdates:(id)a4;
- (void)updateManager:(id)a3 willSendTransitUpdateRequestForRouteIDs:(id)a4;
- (void)updateManager:(id)a3 willSendTransitUpdateRequests:(id)a4;
@end

@implementation MNNavigationSessionManager

- (MNNavigationSessionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)navigationTraceManager:(id)a3 didUpdateTracePlaybackDetails:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didUpdateTracePlaybackDetails:v5];
}

- (void)navigationSession:(id)a3 didSendNavigationServiceCallback:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (!WeakRetained)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MNNavigationSession.delegate is nil"];
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 136316162;
      v13 = "[MNNavigationSessionManager navigationSession:didSendNavigationServiceCallback:]";
      v14 = 2080;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationSessionManager.m";
      v16 = 1024;
      v17 = 868;
      v18 = 2080;
      v19 = "_delegate";
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v12, 0x30u);
    }
  }

  v7 = objc_loadWeakRetained(&self->_delegate);
  [v7 navigationSessionManager:self didSendNavigationServiceCallback:v5];

  v8 = [v5 type];
  if (v8 == 2)
  {
    [(MNNavigationSessionManager *)self _didEndNavigation];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)a3 didReceiveTransitAlert:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didReceiveTransitAlert:v5];
}

- (void)navigationSession:(id)a3 didProcessSpeechEvent:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didProcessSpeechEvent:v5];
}

- (void)navigationSession:(id)a3 willProcessSpeechEvent:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self willProcessSpeechEvent:v5];
}

- (void)navigationSession:(id)a3 didStartSpeakingPrompt:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didStartSpeakingPrompt:v5];
}

- (void)navigationSession:(id)a3 didUpdateVehicleParkingInfo:(id)a4
{
  v5 = a4;
  v7 = objc_alloc_init(MNNavigationServiceCallback_DidUpdateVehicleParkingInfo);
  [(MNNavigationServiceCallback_DidUpdateVehicleParkingInfo *)v7 setVehicleParkingInfo:v5];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didSendNavigationServiceCallback:v7];
}

- (void)navigationSession:(id)a3 didUpdateBackgroundWalkingRoute:(id)a4
{
  v5 = a4;
  v7 = objc_alloc_init(MNNavigationServiceCallback_DidUpdateBackgroundWalkingRoute);
  [(MNNavigationServiceCallback_DidUpdateBackgroundWalkingRoute *)v7 setRouteInfo:v5];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didSendNavigationServiceCallback:v7];
}

- (void)navigationSession:(id)a3 updatedGuidanceEventFeedback:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self updatedGuidanceEventFeedback:v5];
}

- (void)navigationSession:(id)a3 newGuidanceEventFeedback:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self newGuidanceEventFeedback:v5];
}

- (void)navigationSession:(id)a3 hideJunctionViewForId:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self hideJunctionViewForId:v5];
}

- (void)navigationSession:(id)a3 showJunctionView:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self showJunctionView:v5];
}

- (void)navigationSession:(id)a3 hideLaneDirectionsForId:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self hideLaneDirectionsForId:v5];
}

- (void)navigationSession:(id)a3 showLaneDirections:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self showLaneDirections:v5];
}

- (void)navigationSession:(id)a3 updateSignsWithARInfo:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self updateSignsWithARInfo:v5];
}

- (void)navigationSession:(id)a3 updateSignsWithInfo:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self updateSignsWithInfo:v5];
}

- (void)navigationSessionEndGuidanceUpdate:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManagerEndGuidanceUpdate:self];
}

- (void)navigationSessionBeginGuidanceUpdate:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManagerBeginGuidanceUpdate:self];
}

- (void)navigationSessionHideSecondaryStep:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManagerHideSecondaryStep:self];
}

- (void)navigationSession:(id)a3 displayManeuverAlertForAnnouncementStage:(unint64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self displayManeuverAlertForAnnouncementStage:a4];
}

- (void)navigationSession:(id)a3 willAnnounce:(unint64_t)a4 inSeconds:(double)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self willAnnounce:a4 inSeconds:a5];
}

- (void)navigationSession:(id)a3 currentStepIndex:(unint64_t)a4 didUpdateDistanceUntilSign:(double)a5 timeUntilSign:(double)a6
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self currentStepIndex:a4 didUpdateDistanceUntilSign:a5 timeUntilSign:a6];
}

- (void)navigationSession:(id)a3 proceedToRouteDistance:(double)a4 displayString:(id)a5 closestStepIndex:(unint64_t)a6
{
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self proceedToRouteDistance:v9 displayString:a6 closestStepIndex:a4];
}

- (void)navigationSession:(id)a3 didUpdateAlternateRoutes:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didUpdateAlternateRoutes:v5];
}

- (void)navigationSession:(id)a3 didFailRerouteWithError:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didFailRerouteWithError:v5];
}

- (void)navigationSession:(id)a3 didReroute:(id)a4 withLocation:(id)a5 withAlternateRoutes:(id)a6 rerouteReason:(unint64_t)a7
{
  simulationLocationProvider = self->_simulationLocationProvider;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  [(MNSimulationLocationProvider *)simulationLocationProvider updateWithRouteInfo:v14 rerouteReason:a7];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didRerouteWithRoute:v14 location:v13 withAlternateRoutes:v12 rerouteReason:a7];
}

- (void)navigationSessionDidCancelReroute:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManagerDidCancelReroute:self];
}

- (void)navigationSessionWillReroute:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManagerWillReroute:self];
}

- (void)navigationSession:(id)a3 didUpdateMotionType:(unint64_t)a4 confidence:(unint64_t)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didUpdateMotionType:a4 confidence:a5];
}

- (void)navigationSession:(id)a3 didUpdateHeading:(double)a4 accuracy:(double)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didUpdateHeading:a4 accuracy:a5];
}

- (void)navigationSession:(id)a3 didUpdateETAResponseForRoute:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didUpdateETAResponseForRoute:v5];
}

- (void)navigationSession:(id)a3 didUpdateDisplayETA:(id)a4 remainingDistance:(id)a5 batteryChargeInfo:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v13 = objc_opt_new();
  [v13 setDisplayETAInfo:v11];

  [v13 setRouteDistanceInfo:v10];
  [v13 setBatteryChargeInfo:v9];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didSendNavigationServiceCallback:v13];
}

- (void)navigationSession:(id)a3 didReceiveRouteSignalStrength:(unint64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didReceiveRouteSignalStrength:a4];
}

- (void)navigationSessionWillResumeFromPause:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManagerWillResumeFromPause:self];
}

- (void)navigationSessionWillPause:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManagerWillPause:self];
}

- (void)navigationSessionDidArrive:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManagerDidArrive:self];
}

- (void)navigationSessionDidEnterPreArrivalState:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManagerDidEnterPreArrivalState:self];
}

- (void)navigationSession:(id)a3 didResumeNavigatingFromWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5 reason:(unint64_t)a6
{
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didResumeNavigatingFromWaypoint:v9 endOfLegIndex:a5 reason:a6];
}

- (void)navigationSession:(id)a3 didArriveAtWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didArriveAtWaypoint:v7 endOfLegIndex:a5];
}

- (void)navigationSession:(id)a3 didEnterPreArrivalStateForWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didEnterPreArrivalStateForWaypoint:v7 endOfLegIndex:a5];
}

- (void)navigationSession:(id)a3 isApproachingEndOfLeg:(unint64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self isApproachingEndOfLeg:a4];
}

- (void)navigationSessionDidFinishLocationUpdate:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManagerDidFinishLocationUpdate:self];
}

- (void)navigationSession:(id)a3 currentStepIndex:(unint64_t)a4 didUpdateDistanceUntilManeuver:(double)a5 timeUntilManeuver:(double)a6
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self currentStepIndex:a4 didUpdateDistanceUntilManeuver:a5 timeUntilManeuver:a6];
}

- (void)navigationSession:(id)a3 matchedToStepIndex:(unint64_t)a4 segmentIndex:(unint64_t)a5
{
  v9 = objc_opt_new();
  [v9 setStepIndex:a4];
  [v9 setSegmentIndex:a5];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didSendNavigationServiceCallback:v9];
}

- (void)navigationSession:(id)a3 didUpdateMatchedLocation:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = MNGetPuckTrackingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 uuid];
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "[MN] [%@] - Processing - in MNNavigationSessionManager::navigationSession:didUpdateMatchedLocation:", &v11, 0xCu);
  }

  v8 = objc_opt_new();
  [v8 setLocation:v5];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didSendNavigationServiceCallback:v8];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)a3 shouldEndWithReason:(unint64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self shouldEndWithReason:a4];
}

- (void)updateManager:(id)a3 didReceiveTransitError:(id)a4
{
  traceManager = self->_traceManager;
  v5 = a4;
  v6 = [(MNNavigationTraceManager *)traceManager traceRecorder];
  [v6 recordTransitUpdateError:v5];
}

- (void)updateManager:(id)a3 didReceiveTransitUpdates:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didReceiveTransitUpdates:v5];
}

- (void)updateManager:(id)a3 willSendTransitUpdateRequestForRouteIDs:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self willSendTransitUpdateRequestForRouteIDs:v5];
}

- (void)updateManager:(id)a3 didReceiveTransitUpdateResponse:(id)a4
{
  traceManager = self->_traceManager;
  v5 = a4;
  v6 = [(MNNavigationTraceManager *)traceManager traceRecorder];
  [v6 recordTransitUpdateResponse:v5];
}

- (void)updateManager:(id)a3 willSendTransitUpdateRequests:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(MNNavigationTraceManager *)self->_traceManager traceRecorder];
  [v6 timeSinceRecordingBegan];
  v8 = v7;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        v15 = [(MNNavigationTraceManager *)self->_traceManager traceRecorder];
        [v15 recordTransitUpdateRequest:v14 withTimestamp:v8];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_didEndNavigation
{
  [(MNNavigationTraceManager *)self->_traceManager setDelegate:0];
  [(MNNavigationTraceManager *)self->_traceManager close];
  traceManager = self->_traceManager;
  self->_traceManager = 0;

  didEndHandler = self->_didEndHandler;
  if (didEndHandler)
  {
    v5 = *(didEndHandler + 2);

    v5();
  }
}

- (id)_traceManager
{
  traceManager = self->_traceManager;
  if (!traceManager)
  {
    v4 = objc_alloc_init(MNNavigationTraceManager);
    v5 = self->_traceManager;
    self->_traceManager = v4;

    [(MNNavigationTraceManager *)self->_traceManager setTraceManagerDelegate:self];
    traceManager = self->_traceManager;
  }

  return traceManager;
}

- (id)_proxyUpdater
{
  proxyUpdater = self->_proxyUpdater;
  if (!proxyUpdater)
  {
    v4 = objc_alloc_init(MNNavigationProxyUpdater);
    v5 = self->_proxyUpdater;
    self->_proxyUpdater = v4;

    proxyUpdater = self->_proxyUpdater;
  }

  return proxyUpdater;
}

- (id)_routeManager
{
  routeManager = self->_routeManager;
  if (!routeManager)
  {
    v4 = [[MNRouteManager alloc] initWithAuditToken:self->_auditToken];
    v5 = self->_routeManager;
    self->_routeManager = v4;

    [(MNRouteManager *)self->_routeManager open];
    routeManager = self->_routeManager;
  }

  return routeManager;
}

- (void)recordPedestrianTracePath:(id)a3
{
  traceManager = self->_traceManager;
  v4 = a3;
  v7 = [(MNNavigationTraceManager *)traceManager traceRecorder];
  [v7 recordMiscInfo:@"pedestrian_trace_path" value:v4];

  v5 = MEMORY[0x1E696AD98];
  [v7 timeSinceRecordingBegan];
  v6 = [v5 numberWithDouble:?];
  [v7 recordMiscInfo:@"pedestrian_trace_relative_timestamp" value:v6];
}

- (void)recordTraceBookmarkAtCurrentPositionWthScreenshotData:(id)a3
{
  v4 = a3;
  v5 = [(MNNavigationTraceManager *)self->_traceManager tracePlayer];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 trace];
    [v6 position];
    v9 = v8;
    if (v7)
    {
LABEL_3:
      v10 = [[MNTraceBookmarkRecorder alloc] initWithTrace:v7];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __84__MNNavigationSessionManager_recordTraceBookmarkAtCurrentPositionWthScreenshotData___block_invoke;
      v14[3] = &unk_1E8430BF8;
      v15 = v7;
      v16 = self;
      [(MNTraceBookmarkRecorder *)v10 recordBookmarkAtTime:v4 withScreenshotData:v14 completionHandler:v9];
    }
  }

  else
  {
    v11 = [(MNNavigationTraceManager *)self->_traceManager traceRecorder];
    v12 = v11;
    if (v11)
    {
      v7 = [v11 trace];
      [v12 timeSinceRecordingBegan];
      v9 = v13;
    }

    else
    {
      v7 = 0;
      v9 = 0.0;
    }

    if (v7)
    {
      goto LABEL_3;
    }
  }
}

void __84__MNNavigationSessionManager_recordTraceBookmarkAtCurrentPositionWthScreenshotData___block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = objc_alloc_init(MNTracePlaybackDetails);
  [(MNTracePlaybackDetails *)v6 setEventType:6];
  [(MNTracePlaybackDetails *)v6 setRecordedBookmarkID:a2];
  v4 = [*(a1 + 32) serializableBookmarks];
  [(MNTracePlaybackDetails *)v6 setBookmarks:v4];

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  [WeakRetained navigationSessionManager:*(a1 + 40) didUpdateTracePlaybackDetails:v6];
}

- (void)setTracePosition:(double)a3
{
  v5 = [(MNNavigationTraceManager *)self->_traceManager tracePlayer];
  [v5 jumpToTime:a3];

  navigationSession = self->_navigationSession;

  [(MNNavigationSession *)navigationSession traceJumpedInTime];
}

- (void)setTracePlaybackSpeed:(double)a3
{
  v4 = [(MNNavigationTraceManager *)self->_traceManager tracePlayer];
  [v4 setSpeedMultiplier:a3];
}

- (void)setTraceIsPlaying:(BOOL)a3
{
  v3 = a3;
  v4 = [(MNNavigationTraceManager *)self->_traceManager tracePlayer];
  v5 = v4;
  if (v3)
  {
    [v4 resume];
  }

  else
  {
    [v4 pause];
  }
}

- (void)enableNavigationCapability:(unint64_t)a3
{
  v4 = [(MNNavigationSession *)self->_navigationSession navigationCapabilities]& a3;
  navigationSession = self->_navigationSession;

  [(MNNavigationSession *)navigationSession setNavigationCapabilities:v4];
}

- (void)disableNavigationCapability:(unint64_t)a3
{
  v4 = [(MNNavigationSession *)self->_navigationSession navigationCapabilities]& ~a3;
  navigationSession = self->_navigationSession;

  [(MNNavigationSession *)navigationSession setNavigationCapabilities:v4];
}

- (void)setRideIndex:(unint64_t)a3 forSegmentIndex:(unint64_t)a4
{
  v7 = [(MNRouteManager *)self->_routeManager currentRouteInfo];
  if (self->_navigationSession)
  {
    v15 = v7;
    v8 = [v7 route];
    v9 = [v8 segments];
    v10 = [v9 count];

    v7 = v15;
    if (v10 > a4)
    {
      v11 = [v15 route];
      v12 = [v11 segments];
      v13 = [v12 objectAtIndex:a4];

      if ([v13 type] == 6)
      {
        [v13 setSelectedRideOptionIndex:a3];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained navigationSessionManager:self didUpdateRouteWithNewRideSelection:v15];

        [(MNNavigationProxyUpdater *)self->_proxyUpdater updateClusteredSectionSelectedRideForNavigationSession:self->_navigationSession];
        [(MNNavigationSession *)self->_navigationSession switchToRoute:v15];
      }

      v7 = v15;
    }
  }
}

- (void)setDisplayedStepIndex:(unint64_t)a3
{
  if ([(MNNavigationSession *)self->_navigationSession displayedStepIndex]!= a3)
  {
    [(MNNavigationSession *)self->_navigationSession setDisplayedStepIndex:a3];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained navigationSessionManager:self didUpdateDisplayedStepIndex:a3 segmentIndex:0];
  }

  proxyUpdater = self->_proxyUpdater;

  [(MNNavigationProxyUpdater *)proxyUpdater setDisplayedStepIndex:a3];
}

- (BOOL)vibrateForPrompt:(unint64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  navigationSession = self->_navigationSession;
  if (!navigationSession)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Did not find navigation session while vibrating for prompt"];
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136316162;
      v11 = "[MNNavigationSessionManager vibrateForPrompt:]";
      v12 = 2080;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationSessionManager.m";
      v14 = 1024;
      v15 = 295;
      v16 = 2080;
      v17 = "(_navigationSession != nil)";
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v10, 0x30u);
    }

    navigationSession = self->_navigationSession;
  }

  result = [(MNNavigationSession *)navigationSession vibrateForPrompt:a3];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)repeatCurrentTrafficAlert
{
  v18 = *MEMORY[0x1E69E9840];
  navigationSession = self->_navigationSession;
  if (!navigationSession)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Did not find navigation session while repeating current traffic alert"];
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136316162;
      v9 = "[MNNavigationSessionManager repeatCurrentTrafficAlert]";
      v10 = 2080;
      v11 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationSessionManager.m";
      v12 = 1024;
      v13 = 289;
      v14 = 2080;
      v15 = "(_navigationSession != nil)";
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v8, 0x30u);
    }

    navigationSession = self->_navigationSession;
  }

  result = [(MNNavigationSession *)navigationSession repeatCurrentTrafficAlert];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)repeatCurrentGuidance
{
  v18 = *MEMORY[0x1E69E9840];
  navigationSession = self->_navigationSession;
  if (!navigationSession)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Did not find navigation session while repeating current guidance"];
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136316162;
      v9 = "[MNNavigationSessionManager repeatCurrentGuidance]";
      v10 = 2080;
      v11 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationSessionManager.m";
      v12 = 1024;
      v13 = 283;
      v14 = 2080;
      v15 = "(_navigationSession != nil)";
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v8, 0x30u);
    }

    navigationSession = self->_navigationSession;
  }

  result = [(MNNavigationSession *)navigationSession repeatCurrentGuidance];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)switchToRoute:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  navigationSession = self->_navigationSession;
  if (!navigationSession)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Did not find navigation session while switching to route"];
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136316162;
      v10 = "[MNNavigationSessionManager switchToRoute:]";
      v11 = 2080;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationSessionManager.m";
      v13 = 1024;
      v14 = 261;
      v15 = 2080;
      v16 = "(_navigationSession != nil)";
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v9, 0x30u);
    }

    navigationSession = self->_navigationSession;
  }

  [(MNNavigationSession *)navigationSession switchToRoute:v4];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)forceReroute
{
  v17 = *MEMORY[0x1E69E9840];
  navigationSession = self->_navigationSession;
  if (!navigationSession)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Did not find navigation session while forcing reroute"];
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136316162;
      v8 = "[MNNavigationSessionManager forceReroute]";
      v9 = 2080;
      v10 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationSessionManager.m";
      v11 = 1024;
      v12 = 255;
      v13 = 2080;
      v14 = "(_navigationSession != nil)";
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v7, 0x30u);
    }

    navigationSession = self->_navigationSession;
  }

  [(MNNavigationSession *)navigationSession forceReroute];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)resumeOriginalDestination
{
  v17 = *MEMORY[0x1E69E9840];
  navigationSession = self->_navigationSession;
  if (!navigationSession)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Did not find navigation session while resuming original destination"];
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136316162;
      v8 = "[MNNavigationSessionManager resumeOriginalDestination]";
      v9 = 2080;
      v10 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationSessionManager.m";
      v11 = 1024;
      v12 = 249;
      v13 = 2080;
      v14 = "(_navigationSession != nil)";
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v7, 0x30u);
    }

    navigationSession = self->_navigationSession;
  }

  [(MNNavigationSession *)navigationSession resumeOriginalDestination];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)updateDestination:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  navigationSession = self->_navigationSession;
  if (!navigationSession)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Did not find navigation session while updating destination"];
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136316162;
      v10 = "[MNNavigationSessionManager updateDestination:]";
      v11 = 2080;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationSessionManager.m";
      v13 = 1024;
      v14 = 243;
      v15 = 2080;
      v16 = "(_navigationSession != nil)";
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v9, 0x30u);
    }

    navigationSession = self->_navigationSession;
  }

  [(MNNavigationSession *)navigationSession updateDestination:v4];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)advanceToNextLeg
{
  v17 = *MEMORY[0x1E69E9840];
  navigationSession = self->_navigationSession;
  if (!navigationSession)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Did not find navigation session while changing next waypoint"];
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136316162;
      v8 = "[MNNavigationSessionManager advanceToNextLeg]";
      v9 = 2080;
      v10 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationSessionManager.m";
      v11 = 1024;
      v12 = 237;
      v13 = 2080;
      v14 = "(_navigationSession != nil)";
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v7, 0x30u);
    }

    navigationSession = self->_navigationSession;
  }

  [(MNNavigationSession *)navigationSession advanceToNextLeg];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)removeWaypointAtIndex:(unint64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  navigationSession = self->_navigationSession;
  if (!navigationSession)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Did not find navigation session while removing waypoint"];
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136316162;
      v10 = "[MNNavigationSessionManager removeWaypointAtIndex:]";
      v11 = 2080;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationSessionManager.m";
      v13 = 1024;
      v14 = 231;
      v15 = 2080;
      v16 = "(_navigationSession != nil)";
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v9, 0x30u);
    }

    navigationSession = self->_navigationSession;
  }

  [(MNNavigationSession *)navigationSession removeWaypointAtIndex:a3];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)insertWaypoint:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  navigationSession = self->_navigationSession;
  if (!navigationSession)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Did not find navigation session while inserting waypoint"];
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136316162;
      v10 = "[MNNavigationSessionManager insertWaypoint:]";
      v11 = 2080;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationSessionManager.m";
      v13 = 1024;
      v14 = 225;
      v15 = 2080;
      v16 = "(_navigationSession != nil)";
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v9, 0x30u);
    }

    navigationSession = self->_navigationSession;
  }

  [(MNNavigationSession *)navigationSession insertWaypoint:v4];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)rerouteWithWaypoints:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  navigationSession = self->_navigationSession;
  if (!navigationSession)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Did not find navigation session while rerouting with waypoints"];
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136316162;
      v10 = "[MNNavigationSessionManager rerouteWithWaypoints:]";
      v11 = 2080;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationSessionManager.m";
      v13 = 1024;
      v14 = 219;
      v15 = 2080;
      v16 = "(_navigationSession != nil)";
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v9, 0x30u);
    }

    navigationSession = self->_navigationSession;
  }

  [(MNNavigationSession *)navigationSession rerouteWithWaypoints:v4];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)stopNavigationWithReason:(unint64_t)a3
{
  [(MNSessionUpdateManager *)self->_realTimeTransitUpdateManager stopUpdateRequests];
  [(MNSessionUpdateManager *)self->_realTimeTransitUpdateManager setDelegate:0];
  realTimeTransitUpdateManager = self->_realTimeTransitUpdateManager;
  self->_realTimeTransitUpdateManager = 0;

  navigationSession = self->_navigationSession;
  self->_navigationSession = 0;
  v9 = navigationSession;

  [(MNNavigationSession *)v9 stopNavigationSessionWithReason:a3];
  [(MNNavigationSession *)v9 unregisterObserver:self->_proxyUpdater];
  proxyUpdater = self->_proxyUpdater;
  self->_proxyUpdater = 0;

  [(MNNavigationSession *)v9 unregisterObserver:self];
  routeManager = self->_routeManager;
  self->_routeManager = 0;
}

- (void)startNavigationWithDetails:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[MNNavigationSession alloc] initWithRouteManager:self->_routeManager auditToken:self->_auditToken traceManager:self->_traceManager];
  navigationSession = self->_navigationSession;
  self->_navigationSession = v5;

  [(MNNavigationSession *)self->_navigationSession registerObserver:self];
  v7 = [(MNNavigationSessionManager *)self _proxyUpdater];
  [(MNNavigationSession *)self->_navigationSession registerObserver:v7];
  [(MNNavigationSession *)self->_navigationSession startNavigationSessionWithDetails:v4];

  v8 = [(MNRouteManager *)self->_routeManager currentRoute];
  v9 = [(MNRouteManager *)self->_routeManager currentRouteInfo];

  if (!v9)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"routeManager.currentRoute is unexpectedly nil"];
    v22 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v25 = "[MNNavigationSessionManager startNavigationWithDetails:]";
      v26 = 2080;
      v27 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Session/MNNavigationSessionManager.m";
      v28 = 1024;
      v29 = 182;
      v30 = 2080;
      v31 = "_routeManager.currentRouteInfo != nil";
      v32 = 2112;
      v33 = v21;
      _os_log_impl(&dword_1D311E000, v22, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
    }
  }

  if ([v8 transportType] == 1)
  {
    v10 = objc_alloc_init(MNSessionUpdateManager);
    realTimeTransitUpdateManager = self->_realTimeTransitUpdateManager;
    self->_realTimeTransitUpdateManager = v10;

    [(MNSessionUpdateManager *)self->_realTimeTransitUpdateManager setDelegate:self];
    v12 = [(MNRouteManager *)self->_routeManager requestingAppIdentifier];
    [(MNSessionUpdateManager *)self->_realTimeTransitUpdateManager setRequestingAppIdentifier:v12];

    [(MNSessionUpdateManager *)self->_realTimeTransitUpdateManager setAuditToken:self->_auditToken];
    v13 = [(MNRouteManager *)self->_routeManager currentRouteInfo];
    v14 = [v13 route];
    v15 = [v14 origin];
    v16 = [v15 latLng];
    [(MNSessionUpdateManager *)self->_realTimeTransitUpdateManager setTripOrigin:v16];

    v17 = self->_realTimeTransitUpdateManager;
    v18 = [(MNRouteManager *)self->_routeManager currentRouteInfo];
    v23 = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    [(MNSessionUpdateManager *)v17 startUpdateRequestsForRoutes:v19 andNavigationType:[(MNNavigationSession *)self->_navigationSession navigationType]];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)updateForStartNavigation:(id)a3
{
  v28 = a3;
  v4 = [(MNNavigationSessionManager *)self _routeManager];
  v5 = [(MNNavigationSessionManager *)self _traceManager];
  -[MNNavigationTraceManager setNavigationType:](self->_traceManager, "setNavigationType:", [v28 navigationType]);
  v6 = [v28 tracePlaybackPath];

  if (v6)
  {
    traceManager = self->_traceManager;
    v8 = [v28 tracePlaybackPath];
    [(MNNavigationTraceManager *)traceManager openForPlaybackWithTracePath:v8];
  }

  [v4 updateWithStartNavigationDetails:v28];
  v9 = [[MNSimulationLocationProvider alloc] initWithStartNavigationDetails:v28];
  simulationLocationProvider = self->_simulationLocationProvider;
  self->_simulationLocationProvider = v9;

  v11 = [(MNNavigationTraceManager *)self->_traceManager tracePlayer];

  if (!v11)
  {
    if ([v28 isReconnecting] && (objc_msgSend(v28, "traceRecordingNameOverride"), v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      v13 = self->_traceManager;
      v14 = [v28 traceRecordingNameOverride];
      [(MNNavigationTraceManager *)v13 openForRecordingWithTraceRecordingData:0 traceName:v14 selectedRouteIndex:0 isReconnecting:1 isSimulation:0];
    }

    else
    {
      v15 = [v28 traceRecordingData];

      if (!v15)
      {
        goto LABEL_13;
      }

      v16 = [v28 simulationType];
      v17 = self->_traceManager;
      if (v16 == -1)
      {
        v14 = [(MNRouteManager *)self->_routeManager currentRouteInfo];
        v18 = [v28 traceRecordingData];
        v19 = [v28 traceRecordingNameOverride];
        [(MNNavigationTraceManager *)v17 openForSimulationWithRoute:v14 traceRecordingData:v18 traceNameOverride:v19];
      }

      else
      {
        v14 = [v28 traceRecordingData];
        v18 = [v28 traceRecordingNameOverride];
        -[MNNavigationTraceManager openForRecordingWithTraceRecordingData:traceName:selectedRouteIndex:isReconnecting:isSimulation:](v17, "openForRecordingWithTraceRecordingData:traceName:selectedRouteIndex:isReconnecting:isSimulation:", v14, v18, [v28 selectedRouteIndex], 0, objc_msgSend(v28, "simulationType") != 0);
      }
    }
  }

LABEL_13:
  [(MNSessionUpdateManager *)self->_realTimeTransitUpdateManager stopUpdateRequests];
  [(MNSessionUpdateManager *)self->_realTimeTransitUpdateManager setDelegate:0];
  realTimeTransitUpdateManager = self->_realTimeTransitUpdateManager;
  self->_realTimeTransitUpdateManager = 0;

  v21 = objc_opt_new();
  [v21 setNavigationType:{objc_msgSend(v28, "navigationType")}];
  [v21 setSimulationType:{objc_msgSend(v28, "simulationType")}];
  v22 = [v4 currentRouteInfo];
  [v21 setRouteInfo:v22];

  [v21 setIsResumingMultiStopRoute:{objc_msgSend(v28, "isResumingMultipointRoute")}];
  if ([v28 isReconnecting])
  {
    v23 = [v28 reconnectionDetails];
    [v21 setInitialRouteSource:{objc_msgSend(v23, "initialRouteSource")}];
  }

  else
  {
    v23 = [v4 currentRouteInfo];
    v24 = [v23 route];
    [v21 setInitialRouteSource:{objc_msgSend(v24, "source")}];
  }

  if ([v28 navigationType] == 3)
  {
    v25 = +[MNVoiceLanguageUtil systemDefaultVoiceLanguage];
    v26 = +[MNUserOptionsEngine sharedInstance];
    [v26 updateNavigationSessionLanguage:v25];

    [v21 setVoiceLanguage:v25];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didSendNavigationServiceCallback:v21];
}

- (void)setRoutesForPreview:(id)a3 selectedRouteIndex:(unint64_t)a4
{
  v17 = a3;
  v6 = [(MNNavigationSessionManager *)self _routeManager];
  [v6 updateWithPreviewRoutes:v17 selectedRouteIndex:a4];
  if ([v17 count])
  {
    v7 = [v17 firstObject];
    v8 = [v7 route];

    v9 = [(MNNavigationSessionManager *)self _proxyUpdater];
    [v9 enteredRoutePreviewWithTransportType:{objc_msgSend(v8, "transportType")}];

    if ([v8 transportType] == 1)
    {
      v10 = objc_alloc_init(MNSessionUpdateManager);
      realTimeTransitUpdateManager = self->_realTimeTransitUpdateManager;
      self->_realTimeTransitUpdateManager = v10;

      [(MNSessionUpdateManager *)self->_realTimeTransitUpdateManager setDelegate:self];
      v12 = [(MNRouteManager *)self->_routeManager requestingAppIdentifier];
      [(MNSessionUpdateManager *)self->_realTimeTransitUpdateManager setRequestingAppIdentifier:v12];

      [(MNSessionUpdateManager *)self->_realTimeTransitUpdateManager setAuditToken:self->_auditToken];
      v13 = self->_realTimeTransitUpdateManager;
      v14 = [(MNRouteManager *)self->_routeManager previewRoutes];
      [(MNSessionUpdateManager *)v13 startUpdateRequestsForRoutes:v14 andNavigationType:[(MNNavigationSession *)self->_navigationSession navigationType]];
    }
  }

  else
  {
    v8 = [(MNNavigationSessionManager *)self _proxyUpdater];
    [v8 navigationSessionStopped:0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v16 = [v6 previewRoutes];
  [WeakRetained navigationSessionManager:self didUpdatePreviewRoutes:v16 withSelectedRouteIndex:{objc_msgSend(v6, "selectedRouteIndex")}];
}

- (void)dealloc
{
  [(MNNavigationSessionManager *)self stopNavigationWithReason:0];
  v3 = +[MNUserOptionsEngine sharedInstance];
  [v3 unregisterObserver:self];

  [(MNRouteManager *)self->_routeManager close];
  v4.receiver = self;
  v4.super_class = MNNavigationSessionManager;
  [(MNNavigationSessionManager *)&v4 dealloc];
}

- (MNNavigationSessionManager)initWithAuditToken:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MNNavigationSessionManager;
  v6 = [(MNNavigationSessionManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_auditToken, a3);
    v8 = +[MNUserOptionsEngine sharedInstance];
    [v8 registerObserver:v7];

    v9 = v7;
  }

  return v7;
}

- (MNNavigationSessionManager)init
{
  result = [MEMORY[0x1E695DF30] raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

@end