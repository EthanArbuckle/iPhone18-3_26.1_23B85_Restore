@interface MNNavigationSessionManager
- (BOOL)repeatCurrentGuidance;
- (BOOL)repeatCurrentTrafficAlert;
- (BOOL)vibrateForPrompt:(unint64_t)prompt;
- (MNNavigationSessionManager)init;
- (MNNavigationSessionManager)initWithAuditToken:(id)token;
- (MNNavigationSessionManagerDelegate)delegate;
- (id)_proxyUpdater;
- (id)_routeManager;
- (id)_traceManager;
- (void)_didEndNavigation;
- (void)advanceToNextLeg;
- (void)dealloc;
- (void)disableNavigationCapability:(unint64_t)capability;
- (void)enableNavigationCapability:(unint64_t)capability;
- (void)forceReroute;
- (void)insertWaypoint:(id)waypoint;
- (void)navigationSession:(id)session currentStepIndex:(unint64_t)index didUpdateDistanceUntilManeuver:(double)maneuver timeUntilManeuver:(double)untilManeuver;
- (void)navigationSession:(id)session currentStepIndex:(unint64_t)index didUpdateDistanceUntilSign:(double)sign timeUntilSign:(double)untilSign;
- (void)navigationSession:(id)session didArriveAtWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index;
- (void)navigationSession:(id)session didEnterPreArrivalStateForWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index;
- (void)navigationSession:(id)session didFailRerouteWithError:(id)error;
- (void)navigationSession:(id)session didProcessSpeechEvent:(id)event;
- (void)navigationSession:(id)session didReceiveRouteSignalStrength:(unint64_t)strength;
- (void)navigationSession:(id)session didReceiveTransitAlert:(id)alert;
- (void)navigationSession:(id)session didReroute:(id)reroute withLocation:(id)location withAlternateRoutes:(id)routes rerouteReason:(unint64_t)reason;
- (void)navigationSession:(id)session didResumeNavigatingFromWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index reason:(unint64_t)reason;
- (void)navigationSession:(id)session didSendNavigationServiceCallback:(id)callback;
- (void)navigationSession:(id)session didStartSpeakingPrompt:(id)prompt;
- (void)navigationSession:(id)session didUpdateAlternateRoutes:(id)routes;
- (void)navigationSession:(id)session didUpdateBackgroundWalkingRoute:(id)route;
- (void)navigationSession:(id)session didUpdateDisplayETA:(id)a remainingDistance:(id)distance batteryChargeInfo:(id)info;
- (void)navigationSession:(id)session didUpdateETAResponseForRoute:(id)route;
- (void)navigationSession:(id)session didUpdateHeading:(double)heading accuracy:(double)accuracy;
- (void)navigationSession:(id)session didUpdateMatchedLocation:(id)location;
- (void)navigationSession:(id)session didUpdateMotionType:(unint64_t)type confidence:(unint64_t)confidence;
- (void)navigationSession:(id)session didUpdateVehicleParkingInfo:(id)info;
- (void)navigationSession:(id)session displayManeuverAlertForAnnouncementStage:(unint64_t)stage;
- (void)navigationSession:(id)session hideJunctionViewForId:(id)id;
- (void)navigationSession:(id)session hideLaneDirectionsForId:(id)id;
- (void)navigationSession:(id)session isApproachingEndOfLeg:(unint64_t)leg;
- (void)navigationSession:(id)session matchedToStepIndex:(unint64_t)index segmentIndex:(unint64_t)segmentIndex;
- (void)navigationSession:(id)session newGuidanceEventFeedback:(id)feedback;
- (void)navigationSession:(id)session proceedToRouteDistance:(double)distance displayString:(id)string closestStepIndex:(unint64_t)index;
- (void)navigationSession:(id)session shouldEndWithReason:(unint64_t)reason;
- (void)navigationSession:(id)session showJunctionView:(id)view;
- (void)navigationSession:(id)session showLaneDirections:(id)directions;
- (void)navigationSession:(id)session updateSignsWithARInfo:(id)info;
- (void)navigationSession:(id)session updateSignsWithInfo:(id)info;
- (void)navigationSession:(id)session updatedGuidanceEventFeedback:(id)feedback;
- (void)navigationSession:(id)session willAnnounce:(unint64_t)announce inSeconds:(double)seconds;
- (void)navigationSession:(id)session willProcessSpeechEvent:(id)event;
- (void)navigationSessionBeginGuidanceUpdate:(id)update;
- (void)navigationSessionDidArrive:(id)arrive;
- (void)navigationSessionDidCancelReroute:(id)reroute;
- (void)navigationSessionDidEnterPreArrivalState:(id)state;
- (void)navigationSessionDidFinishLocationUpdate:(id)update;
- (void)navigationSessionEndGuidanceUpdate:(id)update;
- (void)navigationSessionHideSecondaryStep:(id)step;
- (void)navigationSessionWillPause:(id)pause;
- (void)navigationSessionWillReroute:(id)reroute;
- (void)navigationSessionWillResumeFromPause:(id)pause;
- (void)navigationTraceManager:(id)manager didUpdateTracePlaybackDetails:(id)details;
- (void)recordPedestrianTracePath:(id)path;
- (void)recordTraceBookmarkAtCurrentPositionWthScreenshotData:(id)data;
- (void)removeWaypointAtIndex:(unint64_t)index;
- (void)rerouteWithWaypoints:(id)waypoints;
- (void)resumeOriginalDestination;
- (void)setDisplayedStepIndex:(unint64_t)index;
- (void)setRideIndex:(unint64_t)index forSegmentIndex:(unint64_t)segmentIndex;
- (void)setRoutesForPreview:(id)preview selectedRouteIndex:(unint64_t)index;
- (void)setTraceIsPlaying:(BOOL)playing;
- (void)setTracePlaybackSpeed:(double)speed;
- (void)setTracePosition:(double)position;
- (void)startNavigationWithDetails:(id)details;
- (void)stopNavigationWithReason:(unint64_t)reason;
- (void)switchToRoute:(id)route;
- (void)updateDestination:(id)destination;
- (void)updateForStartNavigation:(id)navigation;
- (void)updateManager:(id)manager didReceiveTransitError:(id)error;
- (void)updateManager:(id)manager didReceiveTransitUpdateResponse:(id)response;
- (void)updateManager:(id)manager didReceiveTransitUpdates:(id)updates;
- (void)updateManager:(id)manager willSendTransitUpdateRequestForRouteIDs:(id)ds;
- (void)updateManager:(id)manager willSendTransitUpdateRequests:(id)requests;
@end

@implementation MNNavigationSessionManager

- (MNNavigationSessionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)navigationTraceManager:(id)manager didUpdateTracePlaybackDetails:(id)details
{
  detailsCopy = details;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didUpdateTracePlaybackDetails:detailsCopy];
}

- (void)navigationSession:(id)session didSendNavigationServiceCallback:(id)callback
{
  v22 = *MEMORY[0x1E69E9840];
  callbackCopy = callback;
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
  [v7 navigationSessionManager:self didSendNavigationServiceCallback:callbackCopy];

  type = [callbackCopy type];
  if (type == 2)
  {
    [(MNNavigationSessionManager *)self _didEndNavigation];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)session didReceiveTransitAlert:(id)alert
{
  alertCopy = alert;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didReceiveTransitAlert:alertCopy];
}

- (void)navigationSession:(id)session didProcessSpeechEvent:(id)event
{
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didProcessSpeechEvent:eventCopy];
}

- (void)navigationSession:(id)session willProcessSpeechEvent:(id)event
{
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self willProcessSpeechEvent:eventCopy];
}

- (void)navigationSession:(id)session didStartSpeakingPrompt:(id)prompt
{
  promptCopy = prompt;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didStartSpeakingPrompt:promptCopy];
}

- (void)navigationSession:(id)session didUpdateVehicleParkingInfo:(id)info
{
  infoCopy = info;
  v7 = objc_alloc_init(MNNavigationServiceCallback_DidUpdateVehicleParkingInfo);
  [(MNNavigationServiceCallback_DidUpdateVehicleParkingInfo *)v7 setVehicleParkingInfo:infoCopy];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didSendNavigationServiceCallback:v7];
}

- (void)navigationSession:(id)session didUpdateBackgroundWalkingRoute:(id)route
{
  routeCopy = route;
  v7 = objc_alloc_init(MNNavigationServiceCallback_DidUpdateBackgroundWalkingRoute);
  [(MNNavigationServiceCallback_DidUpdateBackgroundWalkingRoute *)v7 setRouteInfo:routeCopy];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didSendNavigationServiceCallback:v7];
}

- (void)navigationSession:(id)session updatedGuidanceEventFeedback:(id)feedback
{
  feedbackCopy = feedback;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self updatedGuidanceEventFeedback:feedbackCopy];
}

- (void)navigationSession:(id)session newGuidanceEventFeedback:(id)feedback
{
  feedbackCopy = feedback;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self newGuidanceEventFeedback:feedbackCopy];
}

- (void)navigationSession:(id)session hideJunctionViewForId:(id)id
{
  idCopy = id;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self hideJunctionViewForId:idCopy];
}

- (void)navigationSession:(id)session showJunctionView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self showJunctionView:viewCopy];
}

- (void)navigationSession:(id)session hideLaneDirectionsForId:(id)id
{
  idCopy = id;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self hideLaneDirectionsForId:idCopy];
}

- (void)navigationSession:(id)session showLaneDirections:(id)directions
{
  directionsCopy = directions;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self showLaneDirections:directionsCopy];
}

- (void)navigationSession:(id)session updateSignsWithARInfo:(id)info
{
  infoCopy = info;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self updateSignsWithARInfo:infoCopy];
}

- (void)navigationSession:(id)session updateSignsWithInfo:(id)info
{
  infoCopy = info;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self updateSignsWithInfo:infoCopy];
}

- (void)navigationSessionEndGuidanceUpdate:(id)update
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManagerEndGuidanceUpdate:self];
}

- (void)navigationSessionBeginGuidanceUpdate:(id)update
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManagerBeginGuidanceUpdate:self];
}

- (void)navigationSessionHideSecondaryStep:(id)step
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManagerHideSecondaryStep:self];
}

- (void)navigationSession:(id)session displayManeuverAlertForAnnouncementStage:(unint64_t)stage
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self displayManeuverAlertForAnnouncementStage:stage];
}

- (void)navigationSession:(id)session willAnnounce:(unint64_t)announce inSeconds:(double)seconds
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self willAnnounce:announce inSeconds:seconds];
}

- (void)navigationSession:(id)session currentStepIndex:(unint64_t)index didUpdateDistanceUntilSign:(double)sign timeUntilSign:(double)untilSign
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self currentStepIndex:index didUpdateDistanceUntilSign:sign timeUntilSign:untilSign];
}

- (void)navigationSession:(id)session proceedToRouteDistance:(double)distance displayString:(id)string closestStepIndex:(unint64_t)index
{
  stringCopy = string;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self proceedToRouteDistance:stringCopy displayString:index closestStepIndex:distance];
}

- (void)navigationSession:(id)session didUpdateAlternateRoutes:(id)routes
{
  routesCopy = routes;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didUpdateAlternateRoutes:routesCopy];
}

- (void)navigationSession:(id)session didFailRerouteWithError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didFailRerouteWithError:errorCopy];
}

- (void)navigationSession:(id)session didReroute:(id)reroute withLocation:(id)location withAlternateRoutes:(id)routes rerouteReason:(unint64_t)reason
{
  simulationLocationProvider = self->_simulationLocationProvider;
  routesCopy = routes;
  locationCopy = location;
  rerouteCopy = reroute;
  [(MNSimulationLocationProvider *)simulationLocationProvider updateWithRouteInfo:rerouteCopy rerouteReason:reason];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didRerouteWithRoute:rerouteCopy location:locationCopy withAlternateRoutes:routesCopy rerouteReason:reason];
}

- (void)navigationSessionDidCancelReroute:(id)reroute
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManagerDidCancelReroute:self];
}

- (void)navigationSessionWillReroute:(id)reroute
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManagerWillReroute:self];
}

- (void)navigationSession:(id)session didUpdateMotionType:(unint64_t)type confidence:(unint64_t)confidence
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didUpdateMotionType:type confidence:confidence];
}

- (void)navigationSession:(id)session didUpdateHeading:(double)heading accuracy:(double)accuracy
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didUpdateHeading:heading accuracy:accuracy];
}

- (void)navigationSession:(id)session didUpdateETAResponseForRoute:(id)route
{
  routeCopy = route;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didUpdateETAResponseForRoute:routeCopy];
}

- (void)navigationSession:(id)session didUpdateDisplayETA:(id)a remainingDistance:(id)distance batteryChargeInfo:(id)info
{
  infoCopy = info;
  distanceCopy = distance;
  aCopy = a;
  v13 = objc_opt_new();
  [v13 setDisplayETAInfo:aCopy];

  [v13 setRouteDistanceInfo:distanceCopy];
  [v13 setBatteryChargeInfo:infoCopy];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didSendNavigationServiceCallback:v13];
}

- (void)navigationSession:(id)session didReceiveRouteSignalStrength:(unint64_t)strength
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didReceiveRouteSignalStrength:strength];
}

- (void)navigationSessionWillResumeFromPause:(id)pause
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManagerWillResumeFromPause:self];
}

- (void)navigationSessionWillPause:(id)pause
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManagerWillPause:self];
}

- (void)navigationSessionDidArrive:(id)arrive
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManagerDidArrive:self];
}

- (void)navigationSessionDidEnterPreArrivalState:(id)state
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManagerDidEnterPreArrivalState:self];
}

- (void)navigationSession:(id)session didResumeNavigatingFromWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index reason:(unint64_t)reason
{
  waypointCopy = waypoint;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didResumeNavigatingFromWaypoint:waypointCopy endOfLegIndex:index reason:reason];
}

- (void)navigationSession:(id)session didArriveAtWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index
{
  waypointCopy = waypoint;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didArriveAtWaypoint:waypointCopy endOfLegIndex:index];
}

- (void)navigationSession:(id)session didEnterPreArrivalStateForWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index
{
  waypointCopy = waypoint;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didEnterPreArrivalStateForWaypoint:waypointCopy endOfLegIndex:index];
}

- (void)navigationSession:(id)session isApproachingEndOfLeg:(unint64_t)leg
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self isApproachingEndOfLeg:leg];
}

- (void)navigationSessionDidFinishLocationUpdate:(id)update
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManagerDidFinishLocationUpdate:self];
}

- (void)navigationSession:(id)session currentStepIndex:(unint64_t)index didUpdateDistanceUntilManeuver:(double)maneuver timeUntilManeuver:(double)untilManeuver
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self currentStepIndex:index didUpdateDistanceUntilManeuver:maneuver timeUntilManeuver:untilManeuver];
}

- (void)navigationSession:(id)session matchedToStepIndex:(unint64_t)index segmentIndex:(unint64_t)segmentIndex
{
  v9 = objc_opt_new();
  [v9 setStepIndex:index];
  [v9 setSegmentIndex:segmentIndex];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didSendNavigationServiceCallback:v9];
}

- (void)navigationSession:(id)session didUpdateMatchedLocation:(id)location
{
  v13 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v6 = MNGetPuckTrackingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    uuid = [locationCopy uuid];
    v11 = 138412290;
    v12 = uuid;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "[MN] [%@] - Processing - in MNNavigationSessionManager::navigationSession:didUpdateMatchedLocation:", &v11, 0xCu);
  }

  v8 = objc_opt_new();
  [v8 setLocation:locationCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didSendNavigationServiceCallback:v8];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)navigationSession:(id)session shouldEndWithReason:(unint64_t)reason
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self shouldEndWithReason:reason];
}

- (void)updateManager:(id)manager didReceiveTransitError:(id)error
{
  traceManager = self->_traceManager;
  errorCopy = error;
  traceRecorder = [(MNNavigationTraceManager *)traceManager traceRecorder];
  [traceRecorder recordTransitUpdateError:errorCopy];
}

- (void)updateManager:(id)manager didReceiveTransitUpdates:(id)updates
{
  updatesCopy = updates;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didReceiveTransitUpdates:updatesCopy];
}

- (void)updateManager:(id)manager willSendTransitUpdateRequestForRouteIDs:(id)ds
{
  dsCopy = ds;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self willSendTransitUpdateRequestForRouteIDs:dsCopy];
}

- (void)updateManager:(id)manager didReceiveTransitUpdateResponse:(id)response
{
  traceManager = self->_traceManager;
  responseCopy = response;
  traceRecorder = [(MNNavigationTraceManager *)traceManager traceRecorder];
  [traceRecorder recordTransitUpdateResponse:responseCopy];
}

- (void)updateManager:(id)manager willSendTransitUpdateRequests:(id)requests
{
  v22 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  traceRecorder = [(MNNavigationTraceManager *)self->_traceManager traceRecorder];
  [traceRecorder timeSinceRecordingBegan];
  v8 = v7;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = requestsCopy;
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
        traceRecorder2 = [(MNNavigationTraceManager *)self->_traceManager traceRecorder];
        [traceRecorder2 recordTransitUpdateRequest:v14 withTimestamp:v8];

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

- (void)recordPedestrianTracePath:(id)path
{
  traceManager = self->_traceManager;
  pathCopy = path;
  traceRecorder = [(MNNavigationTraceManager *)traceManager traceRecorder];
  [traceRecorder recordMiscInfo:@"pedestrian_trace_path" value:pathCopy];

  v5 = MEMORY[0x1E696AD98];
  [traceRecorder timeSinceRecordingBegan];
  v6 = [v5 numberWithDouble:?];
  [traceRecorder recordMiscInfo:@"pedestrian_trace_relative_timestamp" value:v6];
}

- (void)recordTraceBookmarkAtCurrentPositionWthScreenshotData:(id)data
{
  dataCopy = data;
  tracePlayer = [(MNNavigationTraceManager *)self->_traceManager tracePlayer];
  v6 = tracePlayer;
  if (tracePlayer)
  {
    trace = [tracePlayer trace];
    [v6 position];
    v9 = v8;
    if (trace)
    {
LABEL_3:
      v10 = [[MNTraceBookmarkRecorder alloc] initWithTrace:trace];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __84__MNNavigationSessionManager_recordTraceBookmarkAtCurrentPositionWthScreenshotData___block_invoke;
      v14[3] = &unk_1E8430BF8;
      v15 = trace;
      selfCopy = self;
      [(MNTraceBookmarkRecorder *)v10 recordBookmarkAtTime:dataCopy withScreenshotData:v14 completionHandler:v9];
    }
  }

  else
  {
    traceRecorder = [(MNNavigationTraceManager *)self->_traceManager traceRecorder];
    v12 = traceRecorder;
    if (traceRecorder)
    {
      trace = [traceRecorder trace];
      [v12 timeSinceRecordingBegan];
      v9 = v13;
    }

    else
    {
      trace = 0;
      v9 = 0.0;
    }

    if (trace)
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

- (void)setTracePosition:(double)position
{
  tracePlayer = [(MNNavigationTraceManager *)self->_traceManager tracePlayer];
  [tracePlayer jumpToTime:position];

  navigationSession = self->_navigationSession;

  [(MNNavigationSession *)navigationSession traceJumpedInTime];
}

- (void)setTracePlaybackSpeed:(double)speed
{
  tracePlayer = [(MNNavigationTraceManager *)self->_traceManager tracePlayer];
  [tracePlayer setSpeedMultiplier:speed];
}

- (void)setTraceIsPlaying:(BOOL)playing
{
  playingCopy = playing;
  tracePlayer = [(MNNavigationTraceManager *)self->_traceManager tracePlayer];
  v5 = tracePlayer;
  if (playingCopy)
  {
    [tracePlayer resume];
  }

  else
  {
    [tracePlayer pause];
  }
}

- (void)enableNavigationCapability:(unint64_t)capability
{
  v4 = [(MNNavigationSession *)self->_navigationSession navigationCapabilities]& capability;
  navigationSession = self->_navigationSession;

  [(MNNavigationSession *)navigationSession setNavigationCapabilities:v4];
}

- (void)disableNavigationCapability:(unint64_t)capability
{
  v4 = [(MNNavigationSession *)self->_navigationSession navigationCapabilities]& ~capability;
  navigationSession = self->_navigationSession;

  [(MNNavigationSession *)navigationSession setNavigationCapabilities:v4];
}

- (void)setRideIndex:(unint64_t)index forSegmentIndex:(unint64_t)segmentIndex
{
  currentRouteInfo = [(MNRouteManager *)self->_routeManager currentRouteInfo];
  if (self->_navigationSession)
  {
    v15 = currentRouteInfo;
    route = [currentRouteInfo route];
    segments = [route segments];
    v10 = [segments count];

    currentRouteInfo = v15;
    if (v10 > segmentIndex)
    {
      route2 = [v15 route];
      segments2 = [route2 segments];
      v13 = [segments2 objectAtIndex:segmentIndex];

      if ([v13 type] == 6)
      {
        [v13 setSelectedRideOptionIndex:index];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained navigationSessionManager:self didUpdateRouteWithNewRideSelection:v15];

        [(MNNavigationProxyUpdater *)self->_proxyUpdater updateClusteredSectionSelectedRideForNavigationSession:self->_navigationSession];
        [(MNNavigationSession *)self->_navigationSession switchToRoute:v15];
      }

      currentRouteInfo = v15;
    }
  }
}

- (void)setDisplayedStepIndex:(unint64_t)index
{
  if ([(MNNavigationSession *)self->_navigationSession displayedStepIndex]!= index)
  {
    [(MNNavigationSession *)self->_navigationSession setDisplayedStepIndex:index];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained navigationSessionManager:self didUpdateDisplayedStepIndex:index segmentIndex:0];
  }

  proxyUpdater = self->_proxyUpdater;

  [(MNNavigationProxyUpdater *)proxyUpdater setDisplayedStepIndex:index];
}

- (BOOL)vibrateForPrompt:(unint64_t)prompt
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

  result = [(MNNavigationSession *)navigationSession vibrateForPrompt:prompt];
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

- (void)switchToRoute:(id)route
{
  v19 = *MEMORY[0x1E69E9840];
  routeCopy = route;
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

  [(MNNavigationSession *)navigationSession switchToRoute:routeCopy];

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

- (void)updateDestination:(id)destination
{
  v19 = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
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

  [(MNNavigationSession *)navigationSession updateDestination:destinationCopy];

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

- (void)removeWaypointAtIndex:(unint64_t)index
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

  [(MNNavigationSession *)navigationSession removeWaypointAtIndex:index];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)insertWaypoint:(id)waypoint
{
  v19 = *MEMORY[0x1E69E9840];
  waypointCopy = waypoint;
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

  [(MNNavigationSession *)navigationSession insertWaypoint:waypointCopy];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)rerouteWithWaypoints:(id)waypoints
{
  v19 = *MEMORY[0x1E69E9840];
  waypointsCopy = waypoints;
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

  [(MNNavigationSession *)navigationSession rerouteWithWaypoints:waypointsCopy];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)stopNavigationWithReason:(unint64_t)reason
{
  [(MNSessionUpdateManager *)self->_realTimeTransitUpdateManager stopUpdateRequests];
  [(MNSessionUpdateManager *)self->_realTimeTransitUpdateManager setDelegate:0];
  realTimeTransitUpdateManager = self->_realTimeTransitUpdateManager;
  self->_realTimeTransitUpdateManager = 0;

  navigationSession = self->_navigationSession;
  self->_navigationSession = 0;
  v9 = navigationSession;

  [(MNNavigationSession *)v9 stopNavigationSessionWithReason:reason];
  [(MNNavigationSession *)v9 unregisterObserver:self->_proxyUpdater];
  proxyUpdater = self->_proxyUpdater;
  self->_proxyUpdater = 0;

  [(MNNavigationSession *)v9 unregisterObserver:self];
  routeManager = self->_routeManager;
  self->_routeManager = 0;
}

- (void)startNavigationWithDetails:(id)details
{
  v34 = *MEMORY[0x1E69E9840];
  detailsCopy = details;
  v5 = [[MNNavigationSession alloc] initWithRouteManager:self->_routeManager auditToken:self->_auditToken traceManager:self->_traceManager];
  navigationSession = self->_navigationSession;
  self->_navigationSession = v5;

  [(MNNavigationSession *)self->_navigationSession registerObserver:self];
  _proxyUpdater = [(MNNavigationSessionManager *)self _proxyUpdater];
  [(MNNavigationSession *)self->_navigationSession registerObserver:_proxyUpdater];
  [(MNNavigationSession *)self->_navigationSession startNavigationSessionWithDetails:detailsCopy];

  currentRoute = [(MNRouteManager *)self->_routeManager currentRoute];
  currentRouteInfo = [(MNRouteManager *)self->_routeManager currentRouteInfo];

  if (!currentRouteInfo)
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

  if ([currentRoute transportType] == 1)
  {
    v10 = objc_alloc_init(MNSessionUpdateManager);
    realTimeTransitUpdateManager = self->_realTimeTransitUpdateManager;
    self->_realTimeTransitUpdateManager = v10;

    [(MNSessionUpdateManager *)self->_realTimeTransitUpdateManager setDelegate:self];
    requestingAppIdentifier = [(MNRouteManager *)self->_routeManager requestingAppIdentifier];
    [(MNSessionUpdateManager *)self->_realTimeTransitUpdateManager setRequestingAppIdentifier:requestingAppIdentifier];

    [(MNSessionUpdateManager *)self->_realTimeTransitUpdateManager setAuditToken:self->_auditToken];
    currentRouteInfo2 = [(MNRouteManager *)self->_routeManager currentRouteInfo];
    route = [currentRouteInfo2 route];
    origin = [route origin];
    latLng = [origin latLng];
    [(MNSessionUpdateManager *)self->_realTimeTransitUpdateManager setTripOrigin:latLng];

    v17 = self->_realTimeTransitUpdateManager;
    currentRouteInfo3 = [(MNRouteManager *)self->_routeManager currentRouteInfo];
    v23 = currentRouteInfo3;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    [(MNSessionUpdateManager *)v17 startUpdateRequestsForRoutes:v19 andNavigationType:[(MNNavigationSession *)self->_navigationSession navigationType]];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)updateForStartNavigation:(id)navigation
{
  navigationCopy = navigation;
  _routeManager = [(MNNavigationSessionManager *)self _routeManager];
  _traceManager = [(MNNavigationSessionManager *)self _traceManager];
  -[MNNavigationTraceManager setNavigationType:](self->_traceManager, "setNavigationType:", [navigationCopy navigationType]);
  tracePlaybackPath = [navigationCopy tracePlaybackPath];

  if (tracePlaybackPath)
  {
    traceManager = self->_traceManager;
    tracePlaybackPath2 = [navigationCopy tracePlaybackPath];
    [(MNNavigationTraceManager *)traceManager openForPlaybackWithTracePath:tracePlaybackPath2];
  }

  [_routeManager updateWithStartNavigationDetails:navigationCopy];
  v9 = [[MNSimulationLocationProvider alloc] initWithStartNavigationDetails:navigationCopy];
  simulationLocationProvider = self->_simulationLocationProvider;
  self->_simulationLocationProvider = v9;

  tracePlayer = [(MNNavigationTraceManager *)self->_traceManager tracePlayer];

  if (!tracePlayer)
  {
    if ([navigationCopy isReconnecting] && (objc_msgSend(navigationCopy, "traceRecordingNameOverride"), v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      v13 = self->_traceManager;
      traceRecordingNameOverride = [navigationCopy traceRecordingNameOverride];
      [(MNNavigationTraceManager *)v13 openForRecordingWithTraceRecordingData:0 traceName:traceRecordingNameOverride selectedRouteIndex:0 isReconnecting:1 isSimulation:0];
    }

    else
    {
      traceRecordingData = [navigationCopy traceRecordingData];

      if (!traceRecordingData)
      {
        goto LABEL_13;
      }

      simulationType = [navigationCopy simulationType];
      v17 = self->_traceManager;
      if (simulationType == -1)
      {
        traceRecordingNameOverride = [(MNRouteManager *)self->_routeManager currentRouteInfo];
        traceRecordingData2 = [navigationCopy traceRecordingData];
        traceRecordingNameOverride2 = [navigationCopy traceRecordingNameOverride];
        [(MNNavigationTraceManager *)v17 openForSimulationWithRoute:traceRecordingNameOverride traceRecordingData:traceRecordingData2 traceNameOverride:traceRecordingNameOverride2];
      }

      else
      {
        traceRecordingNameOverride = [navigationCopy traceRecordingData];
        traceRecordingData2 = [navigationCopy traceRecordingNameOverride];
        -[MNNavigationTraceManager openForRecordingWithTraceRecordingData:traceName:selectedRouteIndex:isReconnecting:isSimulation:](v17, "openForRecordingWithTraceRecordingData:traceName:selectedRouteIndex:isReconnecting:isSimulation:", traceRecordingNameOverride, traceRecordingData2, [navigationCopy selectedRouteIndex], 0, objc_msgSend(navigationCopy, "simulationType") != 0);
      }
    }
  }

LABEL_13:
  [(MNSessionUpdateManager *)self->_realTimeTransitUpdateManager stopUpdateRequests];
  [(MNSessionUpdateManager *)self->_realTimeTransitUpdateManager setDelegate:0];
  realTimeTransitUpdateManager = self->_realTimeTransitUpdateManager;
  self->_realTimeTransitUpdateManager = 0;

  v21 = objc_opt_new();
  [v21 setNavigationType:{objc_msgSend(navigationCopy, "navigationType")}];
  [v21 setSimulationType:{objc_msgSend(navigationCopy, "simulationType")}];
  currentRouteInfo = [_routeManager currentRouteInfo];
  [v21 setRouteInfo:currentRouteInfo];

  [v21 setIsResumingMultiStopRoute:{objc_msgSend(navigationCopy, "isResumingMultipointRoute")}];
  if ([navigationCopy isReconnecting])
  {
    reconnectionDetails = [navigationCopy reconnectionDetails];
    [v21 setInitialRouteSource:{objc_msgSend(reconnectionDetails, "initialRouteSource")}];
  }

  else
  {
    reconnectionDetails = [_routeManager currentRouteInfo];
    route = [reconnectionDetails route];
    [v21 setInitialRouteSource:{objc_msgSend(route, "source")}];
  }

  if ([navigationCopy navigationType] == 3)
  {
    v25 = +[MNVoiceLanguageUtil systemDefaultVoiceLanguage];
    v26 = +[MNUserOptionsEngine sharedInstance];
    [v26 updateNavigationSessionLanguage:v25];

    [v21 setVoiceLanguage:v25];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationSessionManager:self didSendNavigationServiceCallback:v21];
}

- (void)setRoutesForPreview:(id)preview selectedRouteIndex:(unint64_t)index
{
  previewCopy = preview;
  _routeManager = [(MNNavigationSessionManager *)self _routeManager];
  [_routeManager updateWithPreviewRoutes:previewCopy selectedRouteIndex:index];
  if ([previewCopy count])
  {
    firstObject = [previewCopy firstObject];
    route = [firstObject route];

    _proxyUpdater = [(MNNavigationSessionManager *)self _proxyUpdater];
    [_proxyUpdater enteredRoutePreviewWithTransportType:{objc_msgSend(route, "transportType")}];

    if ([route transportType] == 1)
    {
      v10 = objc_alloc_init(MNSessionUpdateManager);
      realTimeTransitUpdateManager = self->_realTimeTransitUpdateManager;
      self->_realTimeTransitUpdateManager = v10;

      [(MNSessionUpdateManager *)self->_realTimeTransitUpdateManager setDelegate:self];
      requestingAppIdentifier = [(MNRouteManager *)self->_routeManager requestingAppIdentifier];
      [(MNSessionUpdateManager *)self->_realTimeTransitUpdateManager setRequestingAppIdentifier:requestingAppIdentifier];

      [(MNSessionUpdateManager *)self->_realTimeTransitUpdateManager setAuditToken:self->_auditToken];
      v13 = self->_realTimeTransitUpdateManager;
      previewRoutes = [(MNRouteManager *)self->_routeManager previewRoutes];
      [(MNSessionUpdateManager *)v13 startUpdateRequestsForRoutes:previewRoutes andNavigationType:[(MNNavigationSession *)self->_navigationSession navigationType]];
    }
  }

  else
  {
    route = [(MNNavigationSessionManager *)self _proxyUpdater];
    [route navigationSessionStopped:0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  previewRoutes2 = [_routeManager previewRoutes];
  [WeakRetained navigationSessionManager:self didUpdatePreviewRoutes:previewRoutes2 withSelectedRouteIndex:{objc_msgSend(_routeManager, "selectedRouteIndex")}];
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

- (MNNavigationSessionManager)initWithAuditToken:(id)token
{
  tokenCopy = token;
  v11.receiver = self;
  v11.super_class = MNNavigationSessionManager;
  v6 = [(MNNavigationSessionManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_auditToken, token);
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