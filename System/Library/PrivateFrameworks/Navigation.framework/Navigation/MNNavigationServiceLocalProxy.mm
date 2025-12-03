@interface MNNavigationServiceLocalProxy
- (MNNavigationServiceClientInterface)delegate;
- (MNNavigationServiceLocalProxy)init;
- (unint64_t)_serviceStateForStateType:(unint64_t)type;
- (void)acceptReroute:(BOOL)reroute forTrafficIncidentAlert:(id)alert;
- (void)advanceToNextLeg;
- (void)changeOfflineMode:(unsigned __int8)mode;
- (void)changeTransportType:(int)type route:(id)route;
- (void)changeUserOptions:(id)options;
- (void)checkinForNavigationService:(id)service;
- (void)dealloc;
- (void)disableNavigationCapability:(unint64_t)capability;
- (void)enableNavigationCapability:(unint64_t)capability;
- (void)forceReroute;
- (void)insertWaypoint:(id)waypoint;
- (void)interfaceHashesWithHandler:(id)handler;
- (void)navigationSessionManager:(id)manager currentStepIndex:(unint64_t)index didUpdateDistanceUntilManeuver:(double)maneuver timeUntilManeuver:(double)untilManeuver;
- (void)navigationSessionManager:(id)manager currentStepIndex:(unint64_t)index didUpdateDistanceUntilSign:(double)sign timeUntilSign:(double)untilSign;
- (void)navigationSessionManager:(id)manager didArriveAtWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index;
- (void)navigationSessionManager:(id)manager didEnterPreArrivalStateForWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index;
- (void)navigationSessionManager:(id)manager didFailRerouteWithError:(id)error;
- (void)navigationSessionManager:(id)manager didFailWithError:(id)error;
- (void)navigationSessionManager:(id)manager didProcessSpeechEvent:(id)event;
- (void)navigationSessionManager:(id)manager didReceiveRouteSignalStrength:(unint64_t)strength;
- (void)navigationSessionManager:(id)manager didReceiveTransitAlert:(id)alert;
- (void)navigationSessionManager:(id)manager didReceiveTransitUpdates:(id)updates;
- (void)navigationSessionManager:(id)manager didRerouteWithRoute:(id)route location:(id)location withAlternateRoutes:(id)routes rerouteReason:(unint64_t)reason;
- (void)navigationSessionManager:(id)manager didResumeNavigatingFromWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index reason:(unint64_t)reason;
- (void)navigationSessionManager:(id)manager didSendNavigationServiceCallback:(id)callback;
- (void)navigationSessionManager:(id)manager didStartSpeakingPrompt:(id)prompt;
- (void)navigationSessionManager:(id)manager didUpdateAlternateRoutes:(id)routes;
- (void)navigationSessionManager:(id)manager didUpdateDisplayedStepIndex:(unint64_t)index segmentIndex:(unint64_t)segmentIndex;
- (void)navigationSessionManager:(id)manager didUpdateETAResponseForRoute:(id)route;
- (void)navigationSessionManager:(id)manager didUpdateHeading:(double)heading accuracy:(double)accuracy;
- (void)navigationSessionManager:(id)manager didUpdateMotionType:(unint64_t)type confidence:(unint64_t)confidence;
- (void)navigationSessionManager:(id)manager didUpdatePreviewRoutes:(id)routes withSelectedRouteIndex:(unint64_t)index;
- (void)navigationSessionManager:(id)manager didUpdateRouteWithNewRideSelection:(id)selection;
- (void)navigationSessionManager:(id)manager didUpdateTracePlaybackDetails:(id)details;
- (void)navigationSessionManager:(id)manager displayManeuverAlertForAnnouncementStage:(unint64_t)stage;
- (void)navigationSessionManager:(id)manager hideJunctionViewForId:(id)id;
- (void)navigationSessionManager:(id)manager hideLaneDirectionsForId:(id)id;
- (void)navigationSessionManager:(id)manager isApproachingEndOfLeg:(unint64_t)leg;
- (void)navigationSessionManager:(id)manager newGuidanceEventFeedback:(id)feedback;
- (void)navigationSessionManager:(id)manager proceedToRouteDistance:(double)distance displayString:(id)string closestStepIndex:(unint64_t)index;
- (void)navigationSessionManager:(id)manager shouldEndWithReason:(unint64_t)reason;
- (void)navigationSessionManager:(id)manager showJunctionView:(id)view;
- (void)navigationSessionManager:(id)manager showLaneDirections:(id)directions;
- (void)navigationSessionManager:(id)manager updateSignsWithARInfo:(id)info;
- (void)navigationSessionManager:(id)manager updateSignsWithInfo:(id)info;
- (void)navigationSessionManager:(id)manager updatedGuidanceEventFeedback:(id)feedback;
- (void)navigationSessionManager:(id)manager willAnnounce:(unint64_t)announce inSeconds:(double)seconds;
- (void)navigationSessionManager:(id)manager willProcessSpeechEvent:(id)event;
- (void)navigationSessionManager:(id)manager willSendTransitUpdateRequestForRouteIDs:(id)ds;
- (void)navigationSessionManagerBeginGuidanceUpdate:(id)update;
- (void)navigationSessionManagerDidArrive:(id)arrive;
- (void)navigationSessionManagerDidCancelReroute:(id)reroute;
- (void)navigationSessionManagerDidEnterPreArrivalState:(id)state;
- (void)navigationSessionManagerDidFinishLocationUpdate:(id)update;
- (void)navigationSessionManagerEndGuidanceUpdate:(id)update;
- (void)navigationSessionManagerHideSecondaryStep:(id)step;
- (void)navigationSessionManagerWillPause:(id)pause;
- (void)navigationSessionManagerWillReroute:(id)reroute;
- (void)navigationSessionManagerWillResumeFromPause:(id)pause;
- (void)pauseRealtimeUpdatesForSubscriber:(id)subscriber;
- (void)recordPedestrianTracePath:(id)path;
- (void)recordTraceBookmarkAtCurrentPositionWthScreenshotData:(id)data;
- (void)removeWaypointAtIndex:(unint64_t)index;
- (void)repeatCurrentGuidanceWithReply:(id)reply;
- (void)repeatCurrentTrafficAlertWithReply:(id)reply;
- (void)rerouteWithWaypoints:(id)waypoints;
- (void)reset;
- (void)resumeOriginalDestination;
- (void)resumeRealtimeUpdatesForSubscriber:(id)subscriber;
- (void)setDisplayedStepIndex:(unint64_t)index;
- (void)setGuidancePromptsEnabled:(BOOL)enabled;
- (void)setGuidanceType:(unint64_t)type;
- (void)setHeadingOrientation:(int)orientation;
- (void)setIsConnectedToCarplay:(BOOL)carplay;
- (void)setIsDisplayingNavigationTray:(BOOL)tray;
- (void)setJunctionViewImageWidth:(double)width height:(double)height;
- (void)setRideIndex:(unint64_t)index forSegmentIndex:(unint64_t)segmentIndex;
- (void)setRoutesForPreview:(id)preview selectedRouteIndex:(unint64_t)index;
- (void)setSimulationPosition:(double)position;
- (void)setSimulationSpeedMultiplier:(double)multiplier;
- (void)setSimulationSpeedOverride:(double)override;
- (void)setTraceIsPlaying:(BOOL)playing;
- (void)setTracePlaybackSpeed:(double)speed;
- (void)setTracePosition:(double)position;
- (void)setVoiceGuidanceLevelOverride:(unint64_t)override;
- (void)startNavigationWithDetails:(id)details activeBlock:(id)block;
- (void)stateManager:(id)manager didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)stateManager:(id)manager willChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)stopCurrentGuidancePrompt;
- (void)stopNavigationWithReason:(unint64_t)reason;
- (void)switchToDestinationRoute;
- (void)switchToRoute:(id)route;
- (void)updateDestination:(id)destination;
- (void)updateForUserIncidentReport:(id)report;
- (void)vibrateForPrompt:(unint64_t)prompt withReply:(id)reply;
@end

@implementation MNNavigationServiceLocalProxy

- (MNNavigationServiceClientInterface)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)navigationSessionManager:(id)manager didSendNavigationServiceCallback:(id)callback
{
  callbackCopy = callback;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didSendNavigationServiceCallback:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didSendNavigationServiceCallback:callbackCopy];
}

- (void)navigationSessionManager:(id)manager didReceiveTransitAlert:(id)alert
{
  alertCopy = alert;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didReceiveTransitAlert:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didReceiveTransitAlert:alertCopy];
}

- (void)navigationSessionManager:(id)manager didReceiveTransitUpdates:(id)updates
{
  updatesCopy = updates;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didReceiveTransitUpdates:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didReceiveRealtimeUpdates:updatesCopy];
}

- (void)navigationSessionManager:(id)manager willSendTransitUpdateRequestForRouteIDs:(id)ds
{
  dsCopy = ds;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:willSendTransitUpdateRequestForRouteIDs:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self willRequestRealtimeUpdatesForRouteIDs:dsCopy];
}

- (void)navigationSessionManager:(id)manager didUpdateTracePlaybackDetails:(id)details
{
  detailsCopy = details;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didUpdateTracePlaybackDetails:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didUpdateTracePlaybackDetails:detailsCopy];
}

- (void)navigationSessionManager:(id)manager didProcessSpeechEvent:(id)event
{
  eventCopy = event;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didProcessSpeechEvent:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didProcessSpeechEvent:eventCopy];
}

- (void)navigationSessionManager:(id)manager willProcessSpeechEvent:(id)event
{
  eventCopy = event;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:willProcessSpeechEvent:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self willProcessSpeechEvent:eventCopy];
}

- (void)navigationSessionManager:(id)manager didStartSpeakingPrompt:(id)prompt
{
  promptCopy = prompt;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didStartSpeakingPrompt:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didStartSpeakingPrompt:promptCopy];
}

- (void)navigationSessionManager:(id)manager updatedGuidanceEventFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:updatedGuidanceEventFeedback:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self updatedGuidanceEventFeedback:feedbackCopy];
}

- (void)navigationSessionManager:(id)manager newGuidanceEventFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:newGuidanceEventFeedback:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self newGuidanceEventFeedback:feedbackCopy];
}

- (void)navigationSessionManager:(id)manager hideJunctionViewForId:(id)id
{
  idCopy = id;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:hideJunctionViewForId:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self hideJunctionViewForId:idCopy];
}

- (void)navigationSessionManager:(id)manager showJunctionView:(id)view
{
  viewCopy = view;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:showJunctionView:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self showJunctionView:viewCopy];
}

- (void)navigationSessionManager:(id)manager hideLaneDirectionsForId:(id)id
{
  idCopy = id;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:hideLaneDirectionsForId:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self hideLaneDirectionsForId:idCopy];
}

- (void)navigationSessionManager:(id)manager showLaneDirections:(id)directions
{
  directionsCopy = directions;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:showLaneDirections:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self showLaneDirections:directionsCopy];
}

- (void)navigationSessionManager:(id)manager updateSignsWithARInfo:(id)info
{
  infoCopy = info;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:updateSignsWithARInfo:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self updateSignsWithARInfo:infoCopy];
}

- (void)navigationSessionManager:(id)manager updateSignsWithInfo:(id)info
{
  infoCopy = info;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:updateSignsWithInfo:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self updateSignsWithInfo:infoCopy];
}

- (void)navigationSessionManagerEndGuidanceUpdate:(id)update
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManagerEndGuidanceUpdate:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxyEndGuidanceUpdate:self];
}

- (void)navigationSessionManagerBeginGuidanceUpdate:(id)update
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManagerBeginGuidanceUpdate:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxyBeginGuidanceUpdate:self];
}

- (void)navigationSessionManagerHideSecondaryStep:(id)step
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManagerHideSecondaryStep:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxyHideSecondaryStep:self];
}

- (void)navigationSessionManager:(id)manager displayManeuverAlertForAnnouncementStage:(unint64_t)stage
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:displayManeuverAlertForAnnouncementStage:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self displayManeuverAlertForAnnouncementStage:stage];
}

- (void)navigationSessionManager:(id)manager willAnnounce:(unint64_t)announce inSeconds:(double)seconds
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:willAnnounce:inSeconds:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self willAnnounce:announce inSeconds:seconds];
}

- (void)navigationSessionManager:(id)manager currentStepIndex:(unint64_t)index didUpdateDistanceUntilSign:(double)sign timeUntilSign:(double)untilSign
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:currentStepIndex:didUpdateDistanceUntilSign:timeUntilSign:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didUpdateDistanceUntilSign:index timeUntilSign:sign forStepIndex:untilSign];
}

- (void)navigationSessionManager:(id)manager proceedToRouteDistance:(double)distance displayString:(id)string closestStepIndex:(unint64_t)index
{
  stringCopy = string;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:proceedToRouteDistance:displayString:closestStepIndex:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didUpdateProceedToRouteDistance:stringCopy displayString:index closestStepIndex:distance];
}

- (void)navigationSessionManager:(id)manager didUpdateAlternateRoutes:(id)routes
{
  routesCopy = routes;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didUpdateAlternateRoutes:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didUpdateAlternateRoutes:routesCopy];
}

- (void)navigationSessionManager:(id)manager didFailRerouteWithError:(id)error
{
  errorCopy = error;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didFailRerouteWithError:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didFailRerouteWithError:errorCopy];
}

- (void)navigationSessionManager:(id)manager didUpdateRouteWithNewRideSelection:(id)selection
{
  selectionCopy = selection;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didUpdateRouteWithNewRideSelection:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didUpdateRouteWithNewRideSelection:selectionCopy];
}

- (void)navigationSessionManagerDidCancelReroute:(id)reroute
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManagerDidCancelReroute:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxyDidCancelReroute:self];
}

- (void)navigationSessionManager:(id)manager didRerouteWithRoute:(id)route location:(id)location withAlternateRoutes:(id)routes rerouteReason:(unint64_t)reason
{
  routesCopy = routes;
  locationCopy = location;
  routeCopy = route;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didRerouteWithRoute:location:withAlternateRoutes:rerouteReason:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didRerouteWithRoute:routeCopy withLocation:locationCopy withAlternateRoutes:routesCopy rerouteReason:reason];
}

- (void)navigationSessionManagerWillReroute:(id)reroute
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManagerWillReroute:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxyWillReroute:self];
}

- (void)navigationSessionManager:(id)manager didUpdatePreviewRoutes:(id)routes withSelectedRouteIndex:(unint64_t)index
{
  routesCopy = routes;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didUpdatePreviewRoutes:withSelectedRouteIndex:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didUpdatePreviewRoutes:routesCopy withSelectedRouteIndex:index];
}

- (void)navigationSessionManager:(id)manager didUpdateMotionType:(unint64_t)type confidence:(unint64_t)confidence
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didUpdateMotionType:confidence:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didUpdateMotionType:type confidence:confidence];
}

- (void)navigationSessionManager:(id)manager didUpdateHeading:(double)heading accuracy:(double)accuracy
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didUpdateHeading:accuracy:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didUpdateHeading:heading accuracy:accuracy];
}

- (void)navigationSessionManager:(id)manager didUpdateETAResponseForRoute:(id)route
{
  routeCopy = route;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didUpdateETAResponseForRoute:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didUpdateETAResponseForRoute:routeCopy];
}

- (void)navigationSessionManager:(id)manager didReceiveRouteSignalStrength:(unint64_t)strength
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didReceiveRouteSignalStrength:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didReceiveRouteSignalStrength:strength];
}

- (void)navigationSessionManagerWillResumeFromPause:(id)pause
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManagerWillResumeFromPause:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxyWillResumeFromPauseNavigation:self];
}

- (void)navigationSessionManagerWillPause:(id)pause
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManagerWillPause:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxyWillPauseNavigation:self];
}

- (void)navigationSessionManagerDidArrive:(id)arrive
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManagerDidArrive:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxyDidArrive:self];
}

- (void)navigationSessionManagerDidEnterPreArrivalState:(id)state
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManagerDidEnterPreArrivalState:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxyDidEnterPreArrivalState:self];
}

- (void)navigationSessionManager:(id)manager didResumeNavigatingFromWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index reason:(unint64_t)reason
{
  waypointCopy = waypoint;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didResumeNavigatingFromWaypoint:endOfLegIndex:reason:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didResumeNavigatingFromWaypoint:waypointCopy endOfLegIndex:index reason:reason];
}

- (void)navigationSessionManager:(id)manager didArriveAtWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index
{
  waypointCopy = waypoint;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didArriveAtWaypoint:endOfLegIndex:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didArriveAtWaypoint:waypointCopy endOfLegIndex:index];
}

- (void)navigationSessionManager:(id)manager didEnterPreArrivalStateForWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index
{
  waypointCopy = waypoint;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didEnterPreArrivalStateForWaypoint:endOfLegIndex:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didEnterPreArrivalStateForWaypoint:waypointCopy endOfLegIndex:index];
}

- (void)navigationSessionManager:(id)manager isApproachingEndOfLeg:(unint64_t)leg
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:isApproachingEndOfLeg:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self isApproachingEndOfLeg:leg];
}

- (void)navigationSessionManagerDidFinishLocationUpdate:(id)update
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManagerDidFinishLocationUpdate:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxyDidFinishLocationUpdate:self];
}

- (void)navigationSessionManager:(id)manager currentStepIndex:(unint64_t)index didUpdateDistanceUntilManeuver:(double)maneuver timeUntilManeuver:(double)untilManeuver
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:currentStepIndex:didUpdateDistanceUntilManeuver:timeUntilManeuver:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didUpdateDistanceUntilManeuver:index timeUntilManeuver:maneuver forStepIndex:untilManeuver];
}

- (void)navigationSessionManager:(id)manager didUpdateDisplayedStepIndex:(unint64_t)index segmentIndex:(unint64_t)segmentIndex
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didUpdateDisplayedStepIndex:segmentIndex:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didUpdateDisplayedStepIndex:index segmentIndex:segmentIndex];
}

- (void)navigationSessionManager:(id)manager didFailWithError:(id)error
{
  v16 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didFailWithError:]"];
  v6 = *MEMORY[0x1E69A15D8];
  v7 = GEOFindOrCreateLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

  if (v8)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _navigation_errorCodeAsString = [errorCopy _navigation_errorCodeAsString];
      v14 = 138543362;
      v15 = _navigation_errorCodeAsString;
      _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "Navigation service encountered an unrecoverable error: %{public}@", &v14, 0xCu);
    }

    userInfo = [errorCopy userInfo];
    [userInfo enumerateKeysAndObjectsUsingBlock:&__block_literal_global_50_2194];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didFailWithError:errorCopy];

  v13 = *MEMORY[0x1E69E9840];
}

void __75__MNNavigationServiceLocalProxy_navigationSessionManager_didFailWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)navigationSessionManager:(id)manager shouldEndWithReason:(unint64_t)reason
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:shouldEndWithReason:]"];

  [(MNNavigationServiceLocalProxy *)self stopNavigationWithReason:reason];
}

- (unint64_t)_serviceStateForStateType:(unint64_t)type
{
  if (type + 1 > 7)
  {
    return 2;
  }

  else
  {
    return qword_1D328D3F8[type + 1];
  }
}

- (void)stateManager:(id)manager didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  v21 = *MEMORY[0x1E69E9840];
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy stateManager:didChangeFromState:toState:]"];
  v8 = [(MNNavigationServiceLocalProxy *)self _serviceStateForStateType:state];
  v9 = [(MNNavigationServiceLocalProxy *)self _serviceStateForStateType:toState];
  v10 = MNGetMNNavigationXPCLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (v8 - 1 > 5)
    {
      v11 = @"Stopped";
    }

    else
    {
      v11 = off_1E842AC68[v8 - 1];
    }

    v12 = v11;
    if (v9 - 1 > 5)
    {
      v13 = @"Stopped";
    }

    else
    {
      v13 = off_1E842AC68[v9 - 1];
    }

    v14 = v13;
    v17 = 138412546;
    v18 = v12;
    v19 = 2112;
    v20 = v14;
    _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_DEFAULT, "MNNavigationServiceLocalProxy didChangeFromState: '%@' toState: '%@'", &v17, 0x16u);
  }

  if (v8 != v9)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained navigationServiceProxy:self didChangeFromState:v8 toState:v9];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)stateManager:(id)manager willChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  v21 = *MEMORY[0x1E69E9840];
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy stateManager:willChangeFromState:toState:]"];
  v8 = [(MNNavigationServiceLocalProxy *)self _serviceStateForStateType:state];
  v9 = [(MNNavigationServiceLocalProxy *)self _serviceStateForStateType:toState];
  v10 = MNGetMNNavigationXPCLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (v8 - 1 > 5)
    {
      v11 = @"Stopped";
    }

    else
    {
      v11 = off_1E842AC68[v8 - 1];
    }

    v12 = v11;
    if (v9 - 1 > 5)
    {
      v13 = @"Stopped";
    }

    else
    {
      v13 = off_1E842AC68[v9 - 1];
    }

    v14 = v13;
    v17 = 138412546;
    v18 = v12;
    v19 = 2112;
    v20 = v14;
    _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_DEFAULT, "MNNavigationServiceLocalProxy willChangeFromState: '%@' toState: '%@'", &v17, 0x16u);
  }

  if (v8 != v9)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained navigationServiceProxy:self willChangeFromState:v8 toState:v9];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)resumeRealtimeUpdatesForSubscriber:(id)subscriber
{
  subscriberCopy = subscriber;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy resumeRealtimeUpdatesForSubscriber:]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__MNNavigationServiceLocalProxy_resumeRealtimeUpdatesForSubscriber___block_invoke;
  v6[3] = &unk_1E8430ED8;
  v7 = subscriberCopy;
  v5 = subscriberCopy;
  MNRunAsyncOnNavigationQueue(v6);
}

void __68__MNNavigationServiceLocalProxy_resumeRealtimeUpdatesForSubscriber___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 resumeRealtimeUpdatesForSubscriber:*(a1 + 32)];
}

- (void)pauseRealtimeUpdatesForSubscriber:(id)subscriber
{
  subscriberCopy = subscriber;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy pauseRealtimeUpdatesForSubscriber:]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__MNNavigationServiceLocalProxy_pauseRealtimeUpdatesForSubscriber___block_invoke;
  v6[3] = &unk_1E8430ED8;
  v7 = subscriberCopy;
  v5 = subscriberCopy;
  MNRunAsyncOnNavigationQueue(v6);
}

void __67__MNNavigationServiceLocalProxy_pauseRealtimeUpdatesForSubscriber___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 pauseRealtimeUpdatesForSubscriber:*(a1 + 32)];
}

- (void)checkinForNavigationService:(id)service
{
  v12 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy checkinForNavigationService:]"];
  BOOL = GEOConfigGetBOOL();
  if (serviceCopy && BOOL)
  {
    v6 = +[MNFilePaths navTempDirectoryPath];
    [v6 UTF8String];
    v7 = sandbox_extension_issue_file();

    v8 = MNGetMNNavigationServiceLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = v7;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "Sandbox extension (%s) issued.", &v10, 0xCu);
    }

    serviceCopy[2](serviceCopy, v7);
    free(v7);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)interfaceHashesWithHandler:(id)handler
{
  handlerCopy = handler;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy interfaceHashesWithHandler:]"];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, +[MNNavigationService clientInterfaceHash](MNNavigationService, "clientInterfaceHash"), +[MNNavigationService daemonInterfaceHash]);
  }
}

- (void)setSimulationPosition:(double)position
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy setSimulationPosition:]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__MNNavigationServiceLocalProxy_setSimulationPosition___block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  *&v4[4] = position;
  MNRunAsyncOnNavigationQueue(v4);
}

void __55__MNNavigationServiceLocalProxy_setSimulationPosition___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 setSimulationPosition:*(a1 + 32)];
}

- (void)setSimulationSpeedMultiplier:(double)multiplier
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy setSimulationSpeedMultiplier:]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__MNNavigationServiceLocalProxy_setSimulationSpeedMultiplier___block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  *&v4[4] = multiplier;
  MNRunAsyncOnNavigationQueue(v4);
}

void __62__MNNavigationServiceLocalProxy_setSimulationSpeedMultiplier___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 setSimulationSpeedMultiplier:*(a1 + 32)];
}

- (void)setSimulationSpeedOverride:(double)override
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy setSimulationSpeedOverride:]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__MNNavigationServiceLocalProxy_setSimulationSpeedOverride___block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  *&v4[4] = override;
  MNRunAsyncOnNavigationQueue(v4);
}

void __60__MNNavigationServiceLocalProxy_setSimulationSpeedOverride___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 setSimulationSpeedOverride:*(a1 + 32)];
}

- (void)recordPedestrianTracePath:(id)path
{
  pathCopy = path;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy recordPedestrianTracePath:]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__MNNavigationServiceLocalProxy_recordPedestrianTracePath___block_invoke;
  v6[3] = &unk_1E8430ED8;
  v7 = pathCopy;
  v5 = pathCopy;
  MNRunAsyncOnNavigationQueue(v6);
}

void __59__MNNavigationServiceLocalProxy_recordPedestrianTracePath___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 recordPedestrianTracePath:*(a1 + 32)];
}

- (void)recordTraceBookmarkAtCurrentPositionWthScreenshotData:(id)data
{
  dataCopy = data;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy recordTraceBookmarkAtCurrentPositionWthScreenshotData:]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __87__MNNavigationServiceLocalProxy_recordTraceBookmarkAtCurrentPositionWthScreenshotData___block_invoke;
  v6[3] = &unk_1E8430ED8;
  v7 = dataCopy;
  v5 = dataCopy;
  MNRunAsyncOnNavigationQueue(v6);
}

void __87__MNNavigationServiceLocalProxy_recordTraceBookmarkAtCurrentPositionWthScreenshotData___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 recordTraceBookmarkAtCurrentPositionWthScreenshotData:*(a1 + 32)];
}

- (void)setTracePosition:(double)position
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy setTracePosition:]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__MNNavigationServiceLocalProxy_setTracePosition___block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  *&v4[4] = position;
  MNRunAsyncOnNavigationQueue(v4);
}

void __50__MNNavigationServiceLocalProxy_setTracePosition___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 setTracePosition:*(a1 + 32)];
}

- (void)setTracePlaybackSpeed:(double)speed
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy setTracePlaybackSpeed:]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__MNNavigationServiceLocalProxy_setTracePlaybackSpeed___block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  *&v4[4] = speed;
  MNRunAsyncOnNavigationQueue(v4);
}

void __55__MNNavigationServiceLocalProxy_setTracePlaybackSpeed___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 setTracePlaybackSpeed:*(a1 + 32)];
}

- (void)setTraceIsPlaying:(BOOL)playing
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy setTraceIsPlaying:]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__MNNavigationServiceLocalProxy_setTraceIsPlaying___block_invoke;
  v4[3] = &__block_descriptor_33_e5_v8__0l;
  playingCopy = playing;
  MNRunAsyncOnNavigationQueue(v4);
}

void __51__MNNavigationServiceLocalProxy_setTraceIsPlaying___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 setTraceIsPlaying:*(a1 + 32)];
}

- (void)acceptReroute:(BOOL)reroute forTrafficIncidentAlert:(id)alert
{
  alertCopy = alert;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy acceptReroute:forTrafficIncidentAlert:]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__MNNavigationServiceLocalProxy_acceptReroute_forTrafficIncidentAlert___block_invoke;
  v8[3] = &unk_1E8430928;
  rerouteCopy = reroute;
  v9 = alertCopy;
  v7 = alertCopy;
  MNRunAsyncOnNavigationQueue(v8);
}

void __71__MNNavigationServiceLocalProxy_acceptReroute_forTrafficIncidentAlert___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 acceptReroute:*(a1 + 40) forTrafficIncidentAlert:*(a1 + 32)];
}

- (void)changeOfflineMode:(unsigned __int8)mode
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy changeOfflineMode:]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__MNNavigationServiceLocalProxy_changeOfflineMode___block_invoke;
  v4[3] = &__block_descriptor_33_e5_v8__0l;
  modeCopy = mode;
  MNRunAsyncOnNavigationQueue(v4);
}

void __51__MNNavigationServiceLocalProxy_changeOfflineMode___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 changeOfflineMode:*(a1 + 32)];
}

- (void)enableNavigationCapability:(unint64_t)capability
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy enableNavigationCapability:]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__MNNavigationServiceLocalProxy_enableNavigationCapability___block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v4[4] = capability;
  MNRunAsyncOnNavigationQueue(v4);
}

void __60__MNNavigationServiceLocalProxy_enableNavigationCapability___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 enableNavigationCapability:*(a1 + 32)];
}

- (void)disableNavigationCapability:(unint64_t)capability
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy disableNavigationCapability:]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__MNNavigationServiceLocalProxy_disableNavigationCapability___block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v4[4] = capability;
  MNRunAsyncOnNavigationQueue(v4);
}

void __61__MNNavigationServiceLocalProxy_disableNavigationCapability___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 disableNavigationCapability:*(a1 + 32)];
}

- (void)updateForUserIncidentReport:(id)report
{
  reportCopy = report;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy updateForUserIncidentReport:]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__MNNavigationServiceLocalProxy_updateForUserIncidentReport___block_invoke;
  v6[3] = &unk_1E8430ED8;
  v7 = reportCopy;
  v5 = reportCopy;
  MNRunAsyncOnNavigationQueue(v6);
}

void __61__MNNavigationServiceLocalProxy_updateForUserIncidentReport___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 updateForUserIncidentReport:*(a1 + 32)];
}

- (void)setJunctionViewImageWidth:(double)width height:(double)height
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy setJunctionViewImageWidth:height:]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__MNNavigationServiceLocalProxy_setJunctionViewImageWidth_height___block_invoke;
  v6[3] = &__block_descriptor_48_e5_v8__0l;
  *&v6[4] = width;
  *&v6[5] = height;
  MNRunAsyncOnNavigationQueue(v6);
}

void __66__MNNavigationServiceLocalProxy_setJunctionViewImageWidth_height___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 setJunctionViewImageWidth:*(a1 + 32) height:*(a1 + 40)];
}

- (void)setRideIndex:(unint64_t)index forSegmentIndex:(unint64_t)segmentIndex
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy setRideIndex:forSegmentIndex:]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__MNNavigationServiceLocalProxy_setRideIndex_forSegmentIndex___block_invoke;
  v6[3] = &__block_descriptor_48_e5_v8__0l;
  v6[4] = index;
  v6[5] = segmentIndex;
  MNRunAsyncOnNavigationQueue(v6);
}

void __62__MNNavigationServiceLocalProxy_setRideIndex_forSegmentIndex___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 setRideIndex:*(a1 + 32) forSegmentIndex:*(a1 + 40)];
}

- (void)setDisplayedStepIndex:(unint64_t)index
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy setDisplayedStepIndex:]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__MNNavigationServiceLocalProxy_setDisplayedStepIndex___block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v4[4] = index;
  MNRunAsyncOnNavigationQueue(v4);
}

void __55__MNNavigationServiceLocalProxy_setDisplayedStepIndex___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 setDisplayedStepIndex:*(a1 + 32)];
}

- (void)setIsConnectedToCarplay:(BOOL)carplay
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy setIsConnectedToCarplay:]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__MNNavigationServiceLocalProxy_setIsConnectedToCarplay___block_invoke;
  v4[3] = &__block_descriptor_33_e5_v8__0l;
  carplayCopy = carplay;
  MNRunAsyncOnNavigationQueue(v4);
}

void __57__MNNavigationServiceLocalProxy_setIsConnectedToCarplay___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 setIsConnectedToCarplay:*(a1 + 32)];
}

- (void)setIsDisplayingNavigationTray:(BOOL)tray
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy setIsDisplayingNavigationTray:]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__MNNavigationServiceLocalProxy_setIsDisplayingNavigationTray___block_invoke;
  v4[3] = &__block_descriptor_33_e5_v8__0l;
  trayCopy = tray;
  MNRunAsyncOnNavigationQueue(v4);
}

void __63__MNNavigationServiceLocalProxy_setIsDisplayingNavigationTray___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 setIsDisplayingNavigationTray:*(a1 + 32)];
}

- (void)setGuidancePromptsEnabled:(BOOL)enabled
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy setGuidancePromptsEnabled:]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__MNNavigationServiceLocalProxy_setGuidancePromptsEnabled___block_invoke;
  v4[3] = &__block_descriptor_33_e5_v8__0l;
  enabledCopy = enabled;
  MNRunAsyncOnNavigationQueue(v4);
}

void __59__MNNavigationServiceLocalProxy_setGuidancePromptsEnabled___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 setGuidancePromptsEnabled:v1];
}

- (void)setHeadingOrientation:(int)orientation
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy setHeadingOrientation:]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__MNNavigationServiceLocalProxy_setHeadingOrientation___block_invoke;
  v4[3] = &__block_descriptor_36_e5_v8__0l;
  orientationCopy = orientation;
  MNRunAsyncOnNavigationQueue(v4);
}

void __55__MNNavigationServiceLocalProxy_setHeadingOrientation___block_invoke(uint64_t a1)
{
  v2 = +[MNLocationManager shared];
  [v2 updateDeviceOrientation:*(a1 + 32)];
}

- (void)stopCurrentGuidancePrompt
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy stopCurrentGuidancePrompt]"];

  MNRunAsyncOnNavigationQueue(&__block_literal_global_40);
}

void __58__MNNavigationServiceLocalProxy_stopCurrentGuidancePrompt__block_invoke()
{
  v0 = +[MNNavigationStateManager sharedManager];
  [v0 stopCurrentGuidancePrompt];
}

- (void)vibrateForPrompt:(unint64_t)prompt withReply:(id)reply
{
  replyCopy = reply;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy vibrateForPrompt:withReply:]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__MNNavigationServiceLocalProxy_vibrateForPrompt_withReply___block_invoke;
  v8[3] = &unk_1E842A640;
  v9 = replyCopy;
  promptCopy = prompt;
  v7 = replyCopy;
  MNRunAsyncOnNavigationQueue(v8);
}

void __60__MNNavigationServiceLocalProxy_vibrateForPrompt_withReply___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 vibrateForPrompt:*(a1 + 40) withReply:*(a1 + 32)];
}

- (void)repeatCurrentTrafficAlertWithReply:(id)reply
{
  replyCopy = reply;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy repeatCurrentTrafficAlertWithReply:]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__MNNavigationServiceLocalProxy_repeatCurrentTrafficAlertWithReply___block_invoke;
  v6[3] = &unk_1E842F150;
  v7 = replyCopy;
  v5 = replyCopy;
  MNRunAsyncOnNavigationQueue(v6);
}

void __68__MNNavigationServiceLocalProxy_repeatCurrentTrafficAlertWithReply___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 repeatCurrentTrafficAlertWithReply:*(a1 + 32)];
}

- (void)repeatCurrentGuidanceWithReply:(id)reply
{
  replyCopy = reply;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy repeatCurrentGuidanceWithReply:]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__MNNavigationServiceLocalProxy_repeatCurrentGuidanceWithReply___block_invoke;
  v6[3] = &unk_1E842F150;
  v7 = replyCopy;
  v5 = replyCopy;
  MNRunAsyncOnNavigationQueue(v6);
}

void __64__MNNavigationServiceLocalProxy_repeatCurrentGuidanceWithReply___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 repeatCurrentGuidanceWithReply:*(a1 + 32)];
}

- (void)setVoiceGuidanceLevelOverride:(unint64_t)override
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy setVoiceGuidanceLevelOverride:]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__MNNavigationServiceLocalProxy_setVoiceGuidanceLevelOverride___block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v4[4] = override;
  MNRunAsyncOnNavigationQueue(v4);
}

void __63__MNNavigationServiceLocalProxy_setVoiceGuidanceLevelOverride___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 setVoiceGuidanceLevelOverride:*(a1 + 32)];
}

- (void)changeUserOptions:(id)options
{
  optionsCopy = options;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy changeUserOptions:]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__MNNavigationServiceLocalProxy_changeUserOptions___block_invoke;
  v6[3] = &unk_1E8430ED8;
  v7 = optionsCopy;
  v5 = optionsCopy;
  MNRunAsyncOnNavigationQueue(v6);
}

void __51__MNNavigationServiceLocalProxy_changeUserOptions___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 changeUserOptions:*(a1 + 32)];

  v3 = +[MNUserOptionsEngine sharedInstance];
  [v3 update:*(a1 + 32)];
}

- (void)setGuidanceType:(unint64_t)type
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy setGuidanceType:]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__MNNavigationServiceLocalProxy_setGuidanceType___block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v4[4] = type;
  MNRunAsyncOnNavigationQueue(v4);
}

void __49__MNNavigationServiceLocalProxy_setGuidanceType___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 setGuidanceType:*(a1 + 32)];
}

- (void)switchToDestinationRoute
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy switchToDestinationRoute]"];

  MNRunAsyncOnNavigationQueue(&__block_literal_global_37_2208);
}

void __57__MNNavigationServiceLocalProxy_switchToDestinationRoute__block_invoke()
{
  v0 = +[MNNavigationStateManager sharedManager];
  [v0 switchToDestinationRoute];
}

- (void)changeTransportType:(int)type route:(id)route
{
  routeCopy = route;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy changeTransportType:route:]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__MNNavigationServiceLocalProxy_changeTransportType_route___block_invoke;
  v8[3] = &unk_1E842F5D0;
  typeCopy = type;
  v9 = routeCopy;
  v7 = routeCopy;
  MNRunAsyncOnNavigationQueue(v8);
}

void __59__MNNavigationServiceLocalProxy_changeTransportType_route___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 changeTransportType:*(a1 + 40) route:*(a1 + 32)];
}

- (void)switchToRoute:(id)route
{
  routeCopy = route;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy switchToRoute:]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__MNNavigationServiceLocalProxy_switchToRoute___block_invoke;
  v6[3] = &unk_1E8430ED8;
  v7 = routeCopy;
  v5 = routeCopy;
  MNRunAsyncOnNavigationQueue(v6);
}

void __47__MNNavigationServiceLocalProxy_switchToRoute___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 switchToRoute:*(a1 + 32)];
}

- (void)forceReroute
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy forceReroute]"];

  MNRunAsyncOnNavigationQueue(&__block_literal_global_35);
}

void __45__MNNavigationServiceLocalProxy_forceReroute__block_invoke()
{
  v0 = +[MNNavigationStateManager sharedManager];
  [v0 forceReroute];
}

- (void)resumeOriginalDestination
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy resumeOriginalDestination]"];

  MNRunAsyncOnNavigationQueue(&__block_literal_global_33_2210);
}

void __58__MNNavigationServiceLocalProxy_resumeOriginalDestination__block_invoke()
{
  v0 = +[MNNavigationStateManager sharedManager];
  [v0 resumeOriginalDestination];
}

- (void)updateDestination:(id)destination
{
  destinationCopy = destination;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy updateDestination:]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__MNNavigationServiceLocalProxy_updateDestination___block_invoke;
  v6[3] = &unk_1E8430ED8;
  v7 = destinationCopy;
  v5 = destinationCopy;
  MNRunAsyncOnNavigationQueue(v6);
}

void __51__MNNavigationServiceLocalProxy_updateDestination___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 updateDestination:*(a1 + 32)];
}

- (void)advanceToNextLeg
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy advanceToNextLeg]"];

  MNRunAsyncOnNavigationQueue(&__block_literal_global_2212);
}

void __49__MNNavigationServiceLocalProxy_advanceToNextLeg__block_invoke()
{
  v0 = +[MNNavigationStateManager sharedManager];
  [v0 advanceToNextLeg];
}

- (void)removeWaypointAtIndex:(unint64_t)index
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy removeWaypointAtIndex:]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__MNNavigationServiceLocalProxy_removeWaypointAtIndex___block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v4[4] = index;
  MNRunAsyncOnNavigationQueue(v4);
}

void __55__MNNavigationServiceLocalProxy_removeWaypointAtIndex___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 removeWaypointAtIndex:*(a1 + 32)];
}

- (void)insertWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy insertWaypoint:]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__MNNavigationServiceLocalProxy_insertWaypoint___block_invoke;
  v6[3] = &unk_1E8430ED8;
  v7 = waypointCopy;
  v5 = waypointCopy;
  MNRunAsyncOnNavigationQueue(v6);
}

void __48__MNNavigationServiceLocalProxy_insertWaypoint___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 insertWaypoint:*(a1 + 32)];
}

- (void)rerouteWithWaypoints:(id)waypoints
{
  waypointsCopy = waypoints;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy rerouteWithWaypoints:]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__MNNavigationServiceLocalProxy_rerouteWithWaypoints___block_invoke;
  v6[3] = &unk_1E8430ED8;
  v7 = waypointsCopy;
  v5 = waypointsCopy;
  MNRunAsyncOnNavigationQueue(v6);
}

void __54__MNNavigationServiceLocalProxy_rerouteWithWaypoints___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 rerouteWithWaypoints:*(a1 + 32)];
}

- (void)stopNavigationWithReason:(unint64_t)reason
{
  v11 = *MEMORY[0x1E69E9840];
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy stopNavigationWithReason:]"];
  v5 = MNGetMNNavigationXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (reason - 1 > 9)
    {
      v6 = @"Unknown";
    }

    else
    {
      v6 = off_1E842A6C0[reason - 1];
    }

    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "MNNavigationServiceLocalProxy stopNavigationWithReason: %@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__MNNavigationServiceLocalProxy_stopNavigationWithReason___block_invoke;
  v8[3] = &unk_1E8430A10;
  v8[4] = self;
  v8[5] = reason;
  MNRunAsyncOnNavigationQueue(v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __58__MNNavigationServiceLocalProxy_stopNavigationWithReason___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 stopNavigationWithReason:*(a1 + 40)];

  v3 = *(*(a1 + 32) + 24);
  if (v3)
  {
    (*(v3 + 16))();
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = 0;
  }
}

- (void)startNavigationWithDetails:(id)details activeBlock:(id)block
{
  v17 = *MEMORY[0x1E69E9840];
  detailsCopy = details;
  blockCopy = block;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy startNavigationWithDetails:activeBlock:]"];
  v8 = MNGetMNNavigationXPCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    navigationType = [detailsCopy navigationType];
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "MNNavigationServiceLocalProxy startNavigationWithType: %u", buf, 8u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__MNNavigationServiceLocalProxy_startNavigationWithDetails_activeBlock___block_invoke;
  v12[3] = &unk_1E842F448;
  v13 = detailsCopy;
  v14 = blockCopy;
  v12[4] = self;
  v9 = detailsCopy;
  v10 = blockCopy;
  MNRunAsyncOnNavigationQueue(v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __72__MNNavigationServiceLocalProxy_startNavigationWithDetails_activeBlock___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 48));
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = +[MNNavigationStateManager sharedManager];
  [v5 startNavigationWithDetails:*(a1 + 40) activeBlock:0];
}

- (void)setRoutesForPreview:(id)preview selectedRouteIndex:(unint64_t)index
{
  previewCopy = preview;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy setRoutesForPreview:selectedRouteIndex:]"];
  v7 = MNGetMNNavigationXPCLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "MNNavigationServiceLocalProxy setRoutesForPreview", buf, 2u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__MNNavigationServiceLocalProxy_setRoutesForPreview_selectedRouteIndex___block_invoke;
  v9[3] = &unk_1E8430A10;
  v10 = previewCopy;
  indexCopy = index;
  v8 = previewCopy;
  MNRunAsyncOnNavigationQueue(v9);
}

void __72__MNNavigationServiceLocalProxy_setRoutesForPreview_selectedRouteIndex___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 setRoutesForPreview:*(a1 + 32) selectedRouteIndex:*(a1 + 40)];
}

- (void)reset
{
  v3 = MNGetMNNavigationXPCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "MNNavigationServiceLocalProxy reset.", buf, 2u);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__MNNavigationServiceLocalProxy_reset__block_invoke;
  v4[3] = &unk_1E8430ED8;
  v4[4] = self;
  MNRunAsyncOnNavigationQueue(v4);
}

void __38__MNNavigationServiceLocalProxy_reset__block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 reset];

  v3 = *(*(a1 + 32) + 24);
  if (v3)
  {
    (*(v3 + 16))();
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = 0;
  }
}

- (void)dealloc
{
  v3 = +[MNNavigationStateManager sharedManager];
  [v3 unregisterObserver:self];
  navigationDelegate = [v3 navigationDelegate];

  if (navigationDelegate == self)
  {
    [v3 setNavigationDelegate:0];
  }

  v5.receiver = self;
  v5.super_class = MNNavigationServiceLocalProxy;
  [(MNNavigationServiceLocalProxy *)&v5 dealloc];
}

- (MNNavigationServiceLocalProxy)init
{
  v9.receiver = self;
  v9.super_class = MNNavigationServiceLocalProxy;
  v2 = [(MNNavigationServiceLocalProxy *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_navigationServiceState = 0;
    v4 = [objc_alloc(MEMORY[0x1E69A2338]) initWithClassName:@"MNNavigationServiceLocalProxy"];
    performanceEventLogger = v3->_performanceEventLogger;
    v3->_performanceEventLogger = v4;

    v6 = +[MNNavigationStateManager sharedManager];
    [v6 registerObserver:v3];
    [v6 setNavigationDelegate:v3];
    [v6 start];
    v7 = v3;
  }

  return v3;
}

@end