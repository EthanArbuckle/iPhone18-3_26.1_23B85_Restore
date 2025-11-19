@interface MNNavigationServiceLocalProxy
- (MNNavigationServiceClientInterface)delegate;
- (MNNavigationServiceLocalProxy)init;
- (unint64_t)_serviceStateForStateType:(unint64_t)a3;
- (void)acceptReroute:(BOOL)a3 forTrafficIncidentAlert:(id)a4;
- (void)advanceToNextLeg;
- (void)changeOfflineMode:(unsigned __int8)a3;
- (void)changeTransportType:(int)a3 route:(id)a4;
- (void)changeUserOptions:(id)a3;
- (void)checkinForNavigationService:(id)a3;
- (void)dealloc;
- (void)disableNavigationCapability:(unint64_t)a3;
- (void)enableNavigationCapability:(unint64_t)a3;
- (void)forceReroute;
- (void)insertWaypoint:(id)a3;
- (void)interfaceHashesWithHandler:(id)a3;
- (void)navigationSessionManager:(id)a3 currentStepIndex:(unint64_t)a4 didUpdateDistanceUntilManeuver:(double)a5 timeUntilManeuver:(double)a6;
- (void)navigationSessionManager:(id)a3 currentStepIndex:(unint64_t)a4 didUpdateDistanceUntilSign:(double)a5 timeUntilSign:(double)a6;
- (void)navigationSessionManager:(id)a3 didArriveAtWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5;
- (void)navigationSessionManager:(id)a3 didEnterPreArrivalStateForWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5;
- (void)navigationSessionManager:(id)a3 didFailRerouteWithError:(id)a4;
- (void)navigationSessionManager:(id)a3 didFailWithError:(id)a4;
- (void)navigationSessionManager:(id)a3 didProcessSpeechEvent:(id)a4;
- (void)navigationSessionManager:(id)a3 didReceiveRouteSignalStrength:(unint64_t)a4;
- (void)navigationSessionManager:(id)a3 didReceiveTransitAlert:(id)a4;
- (void)navigationSessionManager:(id)a3 didReceiveTransitUpdates:(id)a4;
- (void)navigationSessionManager:(id)a3 didRerouteWithRoute:(id)a4 location:(id)a5 withAlternateRoutes:(id)a6 rerouteReason:(unint64_t)a7;
- (void)navigationSessionManager:(id)a3 didResumeNavigatingFromWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5 reason:(unint64_t)a6;
- (void)navigationSessionManager:(id)a3 didSendNavigationServiceCallback:(id)a4;
- (void)navigationSessionManager:(id)a3 didStartSpeakingPrompt:(id)a4;
- (void)navigationSessionManager:(id)a3 didUpdateAlternateRoutes:(id)a4;
- (void)navigationSessionManager:(id)a3 didUpdateDisplayedStepIndex:(unint64_t)a4 segmentIndex:(unint64_t)a5;
- (void)navigationSessionManager:(id)a3 didUpdateETAResponseForRoute:(id)a4;
- (void)navigationSessionManager:(id)a3 didUpdateHeading:(double)a4 accuracy:(double)a5;
- (void)navigationSessionManager:(id)a3 didUpdateMotionType:(unint64_t)a4 confidence:(unint64_t)a5;
- (void)navigationSessionManager:(id)a3 didUpdatePreviewRoutes:(id)a4 withSelectedRouteIndex:(unint64_t)a5;
- (void)navigationSessionManager:(id)a3 didUpdateRouteWithNewRideSelection:(id)a4;
- (void)navigationSessionManager:(id)a3 didUpdateTracePlaybackDetails:(id)a4;
- (void)navigationSessionManager:(id)a3 displayManeuverAlertForAnnouncementStage:(unint64_t)a4;
- (void)navigationSessionManager:(id)a3 hideJunctionViewForId:(id)a4;
- (void)navigationSessionManager:(id)a3 hideLaneDirectionsForId:(id)a4;
- (void)navigationSessionManager:(id)a3 isApproachingEndOfLeg:(unint64_t)a4;
- (void)navigationSessionManager:(id)a3 newGuidanceEventFeedback:(id)a4;
- (void)navigationSessionManager:(id)a3 proceedToRouteDistance:(double)a4 displayString:(id)a5 closestStepIndex:(unint64_t)a6;
- (void)navigationSessionManager:(id)a3 shouldEndWithReason:(unint64_t)a4;
- (void)navigationSessionManager:(id)a3 showJunctionView:(id)a4;
- (void)navigationSessionManager:(id)a3 showLaneDirections:(id)a4;
- (void)navigationSessionManager:(id)a3 updateSignsWithARInfo:(id)a4;
- (void)navigationSessionManager:(id)a3 updateSignsWithInfo:(id)a4;
- (void)navigationSessionManager:(id)a3 updatedGuidanceEventFeedback:(id)a4;
- (void)navigationSessionManager:(id)a3 willAnnounce:(unint64_t)a4 inSeconds:(double)a5;
- (void)navigationSessionManager:(id)a3 willProcessSpeechEvent:(id)a4;
- (void)navigationSessionManager:(id)a3 willSendTransitUpdateRequestForRouteIDs:(id)a4;
- (void)navigationSessionManagerBeginGuidanceUpdate:(id)a3;
- (void)navigationSessionManagerDidArrive:(id)a3;
- (void)navigationSessionManagerDidCancelReroute:(id)a3;
- (void)navigationSessionManagerDidEnterPreArrivalState:(id)a3;
- (void)navigationSessionManagerDidFinishLocationUpdate:(id)a3;
- (void)navigationSessionManagerEndGuidanceUpdate:(id)a3;
- (void)navigationSessionManagerHideSecondaryStep:(id)a3;
- (void)navigationSessionManagerWillPause:(id)a3;
- (void)navigationSessionManagerWillReroute:(id)a3;
- (void)navigationSessionManagerWillResumeFromPause:(id)a3;
- (void)pauseRealtimeUpdatesForSubscriber:(id)a3;
- (void)recordPedestrianTracePath:(id)a3;
- (void)recordTraceBookmarkAtCurrentPositionWthScreenshotData:(id)a3;
- (void)removeWaypointAtIndex:(unint64_t)a3;
- (void)repeatCurrentGuidanceWithReply:(id)a3;
- (void)repeatCurrentTrafficAlertWithReply:(id)a3;
- (void)rerouteWithWaypoints:(id)a3;
- (void)reset;
- (void)resumeOriginalDestination;
- (void)resumeRealtimeUpdatesForSubscriber:(id)a3;
- (void)setDisplayedStepIndex:(unint64_t)a3;
- (void)setGuidancePromptsEnabled:(BOOL)a3;
- (void)setGuidanceType:(unint64_t)a3;
- (void)setHeadingOrientation:(int)a3;
- (void)setIsConnectedToCarplay:(BOOL)a3;
- (void)setIsDisplayingNavigationTray:(BOOL)a3;
- (void)setJunctionViewImageWidth:(double)a3 height:(double)a4;
- (void)setRideIndex:(unint64_t)a3 forSegmentIndex:(unint64_t)a4;
- (void)setRoutesForPreview:(id)a3 selectedRouteIndex:(unint64_t)a4;
- (void)setSimulationPosition:(double)a3;
- (void)setSimulationSpeedMultiplier:(double)a3;
- (void)setSimulationSpeedOverride:(double)a3;
- (void)setTraceIsPlaying:(BOOL)a3;
- (void)setTracePlaybackSpeed:(double)a3;
- (void)setTracePosition:(double)a3;
- (void)setVoiceGuidanceLevelOverride:(unint64_t)a3;
- (void)startNavigationWithDetails:(id)a3 activeBlock:(id)a4;
- (void)stateManager:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)stateManager:(id)a3 willChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)stopCurrentGuidancePrompt;
- (void)stopNavigationWithReason:(unint64_t)a3;
- (void)switchToDestinationRoute;
- (void)switchToRoute:(id)a3;
- (void)updateDestination:(id)a3;
- (void)updateForUserIncidentReport:(id)a3;
- (void)vibrateForPrompt:(unint64_t)a3 withReply:(id)a4;
@end

@implementation MNNavigationServiceLocalProxy

- (MNNavigationServiceClientInterface)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)navigationSessionManager:(id)a3 didSendNavigationServiceCallback:(id)a4
{
  v5 = a4;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didSendNavigationServiceCallback:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didSendNavigationServiceCallback:v5];
}

- (void)navigationSessionManager:(id)a3 didReceiveTransitAlert:(id)a4
{
  v5 = a4;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didReceiveTransitAlert:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didReceiveTransitAlert:v5];
}

- (void)navigationSessionManager:(id)a3 didReceiveTransitUpdates:(id)a4
{
  v5 = a4;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didReceiveTransitUpdates:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didReceiveRealtimeUpdates:v5];
}

- (void)navigationSessionManager:(id)a3 willSendTransitUpdateRequestForRouteIDs:(id)a4
{
  v5 = a4;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:willSendTransitUpdateRequestForRouteIDs:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self willRequestRealtimeUpdatesForRouteIDs:v5];
}

- (void)navigationSessionManager:(id)a3 didUpdateTracePlaybackDetails:(id)a4
{
  v5 = a4;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didUpdateTracePlaybackDetails:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didUpdateTracePlaybackDetails:v5];
}

- (void)navigationSessionManager:(id)a3 didProcessSpeechEvent:(id)a4
{
  v5 = a4;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didProcessSpeechEvent:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didProcessSpeechEvent:v5];
}

- (void)navigationSessionManager:(id)a3 willProcessSpeechEvent:(id)a4
{
  v5 = a4;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:willProcessSpeechEvent:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self willProcessSpeechEvent:v5];
}

- (void)navigationSessionManager:(id)a3 didStartSpeakingPrompt:(id)a4
{
  v5 = a4;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didStartSpeakingPrompt:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didStartSpeakingPrompt:v5];
}

- (void)navigationSessionManager:(id)a3 updatedGuidanceEventFeedback:(id)a4
{
  v5 = a4;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:updatedGuidanceEventFeedback:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self updatedGuidanceEventFeedback:v5];
}

- (void)navigationSessionManager:(id)a3 newGuidanceEventFeedback:(id)a4
{
  v5 = a4;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:newGuidanceEventFeedback:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self newGuidanceEventFeedback:v5];
}

- (void)navigationSessionManager:(id)a3 hideJunctionViewForId:(id)a4
{
  v5 = a4;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:hideJunctionViewForId:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self hideJunctionViewForId:v5];
}

- (void)navigationSessionManager:(id)a3 showJunctionView:(id)a4
{
  v5 = a4;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:showJunctionView:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self showJunctionView:v5];
}

- (void)navigationSessionManager:(id)a3 hideLaneDirectionsForId:(id)a4
{
  v5 = a4;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:hideLaneDirectionsForId:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self hideLaneDirectionsForId:v5];
}

- (void)navigationSessionManager:(id)a3 showLaneDirections:(id)a4
{
  v5 = a4;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:showLaneDirections:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self showLaneDirections:v5];
}

- (void)navigationSessionManager:(id)a3 updateSignsWithARInfo:(id)a4
{
  v5 = a4;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:updateSignsWithARInfo:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self updateSignsWithARInfo:v5];
}

- (void)navigationSessionManager:(id)a3 updateSignsWithInfo:(id)a4
{
  v5 = a4;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:updateSignsWithInfo:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self updateSignsWithInfo:v5];
}

- (void)navigationSessionManagerEndGuidanceUpdate:(id)a3
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManagerEndGuidanceUpdate:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxyEndGuidanceUpdate:self];
}

- (void)navigationSessionManagerBeginGuidanceUpdate:(id)a3
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManagerBeginGuidanceUpdate:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxyBeginGuidanceUpdate:self];
}

- (void)navigationSessionManagerHideSecondaryStep:(id)a3
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManagerHideSecondaryStep:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxyHideSecondaryStep:self];
}

- (void)navigationSessionManager:(id)a3 displayManeuverAlertForAnnouncementStage:(unint64_t)a4
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:displayManeuverAlertForAnnouncementStage:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self displayManeuverAlertForAnnouncementStage:a4];
}

- (void)navigationSessionManager:(id)a3 willAnnounce:(unint64_t)a4 inSeconds:(double)a5
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:willAnnounce:inSeconds:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self willAnnounce:a4 inSeconds:a5];
}

- (void)navigationSessionManager:(id)a3 currentStepIndex:(unint64_t)a4 didUpdateDistanceUntilSign:(double)a5 timeUntilSign:(double)a6
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:currentStepIndex:didUpdateDistanceUntilSign:timeUntilSign:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didUpdateDistanceUntilSign:a4 timeUntilSign:a5 forStepIndex:a6];
}

- (void)navigationSessionManager:(id)a3 proceedToRouteDistance:(double)a4 displayString:(id)a5 closestStepIndex:(unint64_t)a6
{
  v9 = a5;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:proceedToRouteDistance:displayString:closestStepIndex:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didUpdateProceedToRouteDistance:v9 displayString:a6 closestStepIndex:a4];
}

- (void)navigationSessionManager:(id)a3 didUpdateAlternateRoutes:(id)a4
{
  v5 = a4;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didUpdateAlternateRoutes:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didUpdateAlternateRoutes:v5];
}

- (void)navigationSessionManager:(id)a3 didFailRerouteWithError:(id)a4
{
  v5 = a4;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didFailRerouteWithError:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didFailRerouteWithError:v5];
}

- (void)navigationSessionManager:(id)a3 didUpdateRouteWithNewRideSelection:(id)a4
{
  v5 = a4;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didUpdateRouteWithNewRideSelection:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didUpdateRouteWithNewRideSelection:v5];
}

- (void)navigationSessionManagerDidCancelReroute:(id)a3
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManagerDidCancelReroute:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxyDidCancelReroute:self];
}

- (void)navigationSessionManager:(id)a3 didRerouteWithRoute:(id)a4 location:(id)a5 withAlternateRoutes:(id)a6 rerouteReason:(unint64_t)a7
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didRerouteWithRoute:location:withAlternateRoutes:rerouteReason:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didRerouteWithRoute:v13 withLocation:v12 withAlternateRoutes:v11 rerouteReason:a7];
}

- (void)navigationSessionManagerWillReroute:(id)a3
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManagerWillReroute:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxyWillReroute:self];
}

- (void)navigationSessionManager:(id)a3 didUpdatePreviewRoutes:(id)a4 withSelectedRouteIndex:(unint64_t)a5
{
  v7 = a4;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didUpdatePreviewRoutes:withSelectedRouteIndex:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didUpdatePreviewRoutes:v7 withSelectedRouteIndex:a5];
}

- (void)navigationSessionManager:(id)a3 didUpdateMotionType:(unint64_t)a4 confidence:(unint64_t)a5
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didUpdateMotionType:confidence:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didUpdateMotionType:a4 confidence:a5];
}

- (void)navigationSessionManager:(id)a3 didUpdateHeading:(double)a4 accuracy:(double)a5
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didUpdateHeading:accuracy:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didUpdateHeading:a4 accuracy:a5];
}

- (void)navigationSessionManager:(id)a3 didUpdateETAResponseForRoute:(id)a4
{
  v5 = a4;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didUpdateETAResponseForRoute:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didUpdateETAResponseForRoute:v5];
}

- (void)navigationSessionManager:(id)a3 didReceiveRouteSignalStrength:(unint64_t)a4
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didReceiveRouteSignalStrength:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didReceiveRouteSignalStrength:a4];
}

- (void)navigationSessionManagerWillResumeFromPause:(id)a3
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManagerWillResumeFromPause:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxyWillResumeFromPauseNavigation:self];
}

- (void)navigationSessionManagerWillPause:(id)a3
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManagerWillPause:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxyWillPauseNavigation:self];
}

- (void)navigationSessionManagerDidArrive:(id)a3
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManagerDidArrive:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxyDidArrive:self];
}

- (void)navigationSessionManagerDidEnterPreArrivalState:(id)a3
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManagerDidEnterPreArrivalState:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxyDidEnterPreArrivalState:self];
}

- (void)navigationSessionManager:(id)a3 didResumeNavigatingFromWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5 reason:(unint64_t)a6
{
  v9 = a4;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didResumeNavigatingFromWaypoint:endOfLegIndex:reason:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didResumeNavigatingFromWaypoint:v9 endOfLegIndex:a5 reason:a6];
}

- (void)navigationSessionManager:(id)a3 didArriveAtWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5
{
  v7 = a4;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didArriveAtWaypoint:endOfLegIndex:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didArriveAtWaypoint:v7 endOfLegIndex:a5];
}

- (void)navigationSessionManager:(id)a3 didEnterPreArrivalStateForWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5
{
  v7 = a4;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didEnterPreArrivalStateForWaypoint:endOfLegIndex:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didEnterPreArrivalStateForWaypoint:v7 endOfLegIndex:a5];
}

- (void)navigationSessionManager:(id)a3 isApproachingEndOfLeg:(unint64_t)a4
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:isApproachingEndOfLeg:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self isApproachingEndOfLeg:a4];
}

- (void)navigationSessionManagerDidFinishLocationUpdate:(id)a3
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManagerDidFinishLocationUpdate:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxyDidFinishLocationUpdate:self];
}

- (void)navigationSessionManager:(id)a3 currentStepIndex:(unint64_t)a4 didUpdateDistanceUntilManeuver:(double)a5 timeUntilManeuver:(double)a6
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:currentStepIndex:didUpdateDistanceUntilManeuver:timeUntilManeuver:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didUpdateDistanceUntilManeuver:a4 timeUntilManeuver:a5 forStepIndex:a6];
}

- (void)navigationSessionManager:(id)a3 didUpdateDisplayedStepIndex:(unint64_t)a4 segmentIndex:(unint64_t)a5
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didUpdateDisplayedStepIndex:segmentIndex:]"];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didUpdateDisplayedStepIndex:a4 segmentIndex:a5];
}

- (void)navigationSessionManager:(id)a3 didFailWithError:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a4;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:didFailWithError:]"];
  v6 = *MEMORY[0x1E69A15D8];
  v7 = GEOFindOrCreateLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

  if (v8)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v5 _navigation_errorCodeAsString];
      v14 = 138543362;
      v15 = v10;
      _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "Navigation service encountered an unrecoverable error: %{public}@", &v14, 0xCu);
    }

    v11 = [v5 userInfo];
    [v11 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_50_2194];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationServiceProxy:self didFailWithError:v5];

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

- (void)navigationSessionManager:(id)a3 shouldEndWithReason:(unint64_t)a4
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy navigationSessionManager:shouldEndWithReason:]"];

  [(MNNavigationServiceLocalProxy *)self stopNavigationWithReason:a4];
}

- (unint64_t)_serviceStateForStateType:(unint64_t)a3
{
  if (a3 + 1 > 7)
  {
    return 2;
  }

  else
  {
    return qword_1D328D3F8[a3 + 1];
  }
}

- (void)stateManager:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v21 = *MEMORY[0x1E69E9840];
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy stateManager:didChangeFromState:toState:]"];
  v8 = [(MNNavigationServiceLocalProxy *)self _serviceStateForStateType:a4];
  v9 = [(MNNavigationServiceLocalProxy *)self _serviceStateForStateType:a5];
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

- (void)stateManager:(id)a3 willChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v21 = *MEMORY[0x1E69E9840];
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy stateManager:willChangeFromState:toState:]"];
  v8 = [(MNNavigationServiceLocalProxy *)self _serviceStateForStateType:a4];
  v9 = [(MNNavigationServiceLocalProxy *)self _serviceStateForStateType:a5];
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

- (void)resumeRealtimeUpdatesForSubscriber:(id)a3
{
  v4 = a3;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy resumeRealtimeUpdatesForSubscriber:]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__MNNavigationServiceLocalProxy_resumeRealtimeUpdatesForSubscriber___block_invoke;
  v6[3] = &unk_1E8430ED8;
  v7 = v4;
  v5 = v4;
  MNRunAsyncOnNavigationQueue(v6);
}

void __68__MNNavigationServiceLocalProxy_resumeRealtimeUpdatesForSubscriber___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 resumeRealtimeUpdatesForSubscriber:*(a1 + 32)];
}

- (void)pauseRealtimeUpdatesForSubscriber:(id)a3
{
  v4 = a3;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy pauseRealtimeUpdatesForSubscriber:]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__MNNavigationServiceLocalProxy_pauseRealtimeUpdatesForSubscriber___block_invoke;
  v6[3] = &unk_1E8430ED8;
  v7 = v4;
  v5 = v4;
  MNRunAsyncOnNavigationQueue(v6);
}

void __67__MNNavigationServiceLocalProxy_pauseRealtimeUpdatesForSubscriber___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 pauseRealtimeUpdatesForSubscriber:*(a1 + 32)];
}

- (void)checkinForNavigationService:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy checkinForNavigationService:]"];
  BOOL = GEOConfigGetBOOL();
  if (v4 && BOOL)
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

    v4[2](v4, v7);
    free(v7);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)interfaceHashesWithHandler:(id)a3
{
  v4 = a3;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy interfaceHashesWithHandler:]"];
  if (v4)
  {
    v4[2](v4, +[MNNavigationService clientInterfaceHash](MNNavigationService, "clientInterfaceHash"), +[MNNavigationService daemonInterfaceHash]);
  }
}

- (void)setSimulationPosition:(double)a3
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy setSimulationPosition:]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__MNNavigationServiceLocalProxy_setSimulationPosition___block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  *&v4[4] = a3;
  MNRunAsyncOnNavigationQueue(v4);
}

void __55__MNNavigationServiceLocalProxy_setSimulationPosition___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 setSimulationPosition:*(a1 + 32)];
}

- (void)setSimulationSpeedMultiplier:(double)a3
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy setSimulationSpeedMultiplier:]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__MNNavigationServiceLocalProxy_setSimulationSpeedMultiplier___block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  *&v4[4] = a3;
  MNRunAsyncOnNavigationQueue(v4);
}

void __62__MNNavigationServiceLocalProxy_setSimulationSpeedMultiplier___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 setSimulationSpeedMultiplier:*(a1 + 32)];
}

- (void)setSimulationSpeedOverride:(double)a3
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy setSimulationSpeedOverride:]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__MNNavigationServiceLocalProxy_setSimulationSpeedOverride___block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  *&v4[4] = a3;
  MNRunAsyncOnNavigationQueue(v4);
}

void __60__MNNavigationServiceLocalProxy_setSimulationSpeedOverride___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 setSimulationSpeedOverride:*(a1 + 32)];
}

- (void)recordPedestrianTracePath:(id)a3
{
  v4 = a3;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy recordPedestrianTracePath:]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__MNNavigationServiceLocalProxy_recordPedestrianTracePath___block_invoke;
  v6[3] = &unk_1E8430ED8;
  v7 = v4;
  v5 = v4;
  MNRunAsyncOnNavigationQueue(v6);
}

void __59__MNNavigationServiceLocalProxy_recordPedestrianTracePath___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 recordPedestrianTracePath:*(a1 + 32)];
}

- (void)recordTraceBookmarkAtCurrentPositionWthScreenshotData:(id)a3
{
  v4 = a3;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy recordTraceBookmarkAtCurrentPositionWthScreenshotData:]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __87__MNNavigationServiceLocalProxy_recordTraceBookmarkAtCurrentPositionWthScreenshotData___block_invoke;
  v6[3] = &unk_1E8430ED8;
  v7 = v4;
  v5 = v4;
  MNRunAsyncOnNavigationQueue(v6);
}

void __87__MNNavigationServiceLocalProxy_recordTraceBookmarkAtCurrentPositionWthScreenshotData___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 recordTraceBookmarkAtCurrentPositionWthScreenshotData:*(a1 + 32)];
}

- (void)setTracePosition:(double)a3
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy setTracePosition:]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__MNNavigationServiceLocalProxy_setTracePosition___block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  *&v4[4] = a3;
  MNRunAsyncOnNavigationQueue(v4);
}

void __50__MNNavigationServiceLocalProxy_setTracePosition___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 setTracePosition:*(a1 + 32)];
}

- (void)setTracePlaybackSpeed:(double)a3
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy setTracePlaybackSpeed:]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__MNNavigationServiceLocalProxy_setTracePlaybackSpeed___block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  *&v4[4] = a3;
  MNRunAsyncOnNavigationQueue(v4);
}

void __55__MNNavigationServiceLocalProxy_setTracePlaybackSpeed___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 setTracePlaybackSpeed:*(a1 + 32)];
}

- (void)setTraceIsPlaying:(BOOL)a3
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy setTraceIsPlaying:]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__MNNavigationServiceLocalProxy_setTraceIsPlaying___block_invoke;
  v4[3] = &__block_descriptor_33_e5_v8__0l;
  v5 = a3;
  MNRunAsyncOnNavigationQueue(v4);
}

void __51__MNNavigationServiceLocalProxy_setTraceIsPlaying___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 setTraceIsPlaying:*(a1 + 32)];
}

- (void)acceptReroute:(BOOL)a3 forTrafficIncidentAlert:(id)a4
{
  v6 = a4;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy acceptReroute:forTrafficIncidentAlert:]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__MNNavigationServiceLocalProxy_acceptReroute_forTrafficIncidentAlert___block_invoke;
  v8[3] = &unk_1E8430928;
  v10 = a3;
  v9 = v6;
  v7 = v6;
  MNRunAsyncOnNavigationQueue(v8);
}

void __71__MNNavigationServiceLocalProxy_acceptReroute_forTrafficIncidentAlert___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 acceptReroute:*(a1 + 40) forTrafficIncidentAlert:*(a1 + 32)];
}

- (void)changeOfflineMode:(unsigned __int8)a3
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy changeOfflineMode:]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__MNNavigationServiceLocalProxy_changeOfflineMode___block_invoke;
  v4[3] = &__block_descriptor_33_e5_v8__0l;
  v5 = a3;
  MNRunAsyncOnNavigationQueue(v4);
}

void __51__MNNavigationServiceLocalProxy_changeOfflineMode___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 changeOfflineMode:*(a1 + 32)];
}

- (void)enableNavigationCapability:(unint64_t)a3
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy enableNavigationCapability:]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__MNNavigationServiceLocalProxy_enableNavigationCapability___block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v4[4] = a3;
  MNRunAsyncOnNavigationQueue(v4);
}

void __60__MNNavigationServiceLocalProxy_enableNavigationCapability___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 enableNavigationCapability:*(a1 + 32)];
}

- (void)disableNavigationCapability:(unint64_t)a3
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy disableNavigationCapability:]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__MNNavigationServiceLocalProxy_disableNavigationCapability___block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v4[4] = a3;
  MNRunAsyncOnNavigationQueue(v4);
}

void __61__MNNavigationServiceLocalProxy_disableNavigationCapability___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 disableNavigationCapability:*(a1 + 32)];
}

- (void)updateForUserIncidentReport:(id)a3
{
  v4 = a3;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy updateForUserIncidentReport:]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__MNNavigationServiceLocalProxy_updateForUserIncidentReport___block_invoke;
  v6[3] = &unk_1E8430ED8;
  v7 = v4;
  v5 = v4;
  MNRunAsyncOnNavigationQueue(v6);
}

void __61__MNNavigationServiceLocalProxy_updateForUserIncidentReport___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 updateForUserIncidentReport:*(a1 + 32)];
}

- (void)setJunctionViewImageWidth:(double)a3 height:(double)a4
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy setJunctionViewImageWidth:height:]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__MNNavigationServiceLocalProxy_setJunctionViewImageWidth_height___block_invoke;
  v6[3] = &__block_descriptor_48_e5_v8__0l;
  *&v6[4] = a3;
  *&v6[5] = a4;
  MNRunAsyncOnNavigationQueue(v6);
}

void __66__MNNavigationServiceLocalProxy_setJunctionViewImageWidth_height___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 setJunctionViewImageWidth:*(a1 + 32) height:*(a1 + 40)];
}

- (void)setRideIndex:(unint64_t)a3 forSegmentIndex:(unint64_t)a4
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy setRideIndex:forSegmentIndex:]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__MNNavigationServiceLocalProxy_setRideIndex_forSegmentIndex___block_invoke;
  v6[3] = &__block_descriptor_48_e5_v8__0l;
  v6[4] = a3;
  v6[5] = a4;
  MNRunAsyncOnNavigationQueue(v6);
}

void __62__MNNavigationServiceLocalProxy_setRideIndex_forSegmentIndex___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 setRideIndex:*(a1 + 32) forSegmentIndex:*(a1 + 40)];
}

- (void)setDisplayedStepIndex:(unint64_t)a3
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy setDisplayedStepIndex:]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__MNNavigationServiceLocalProxy_setDisplayedStepIndex___block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v4[4] = a3;
  MNRunAsyncOnNavigationQueue(v4);
}

void __55__MNNavigationServiceLocalProxy_setDisplayedStepIndex___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 setDisplayedStepIndex:*(a1 + 32)];
}

- (void)setIsConnectedToCarplay:(BOOL)a3
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy setIsConnectedToCarplay:]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__MNNavigationServiceLocalProxy_setIsConnectedToCarplay___block_invoke;
  v4[3] = &__block_descriptor_33_e5_v8__0l;
  v5 = a3;
  MNRunAsyncOnNavigationQueue(v4);
}

void __57__MNNavigationServiceLocalProxy_setIsConnectedToCarplay___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 setIsConnectedToCarplay:*(a1 + 32)];
}

- (void)setIsDisplayingNavigationTray:(BOOL)a3
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy setIsDisplayingNavigationTray:]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__MNNavigationServiceLocalProxy_setIsDisplayingNavigationTray___block_invoke;
  v4[3] = &__block_descriptor_33_e5_v8__0l;
  v5 = a3;
  MNRunAsyncOnNavigationQueue(v4);
}

void __63__MNNavigationServiceLocalProxy_setIsDisplayingNavigationTray___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 setIsDisplayingNavigationTray:*(a1 + 32)];
}

- (void)setGuidancePromptsEnabled:(BOOL)a3
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy setGuidancePromptsEnabled:]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__MNNavigationServiceLocalProxy_setGuidancePromptsEnabled___block_invoke;
  v4[3] = &__block_descriptor_33_e5_v8__0l;
  v5 = a3;
  MNRunAsyncOnNavigationQueue(v4);
}

void __59__MNNavigationServiceLocalProxy_setGuidancePromptsEnabled___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 setGuidancePromptsEnabled:v1];
}

- (void)setHeadingOrientation:(int)a3
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy setHeadingOrientation:]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__MNNavigationServiceLocalProxy_setHeadingOrientation___block_invoke;
  v4[3] = &__block_descriptor_36_e5_v8__0l;
  v5 = a3;
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

- (void)vibrateForPrompt:(unint64_t)a3 withReply:(id)a4
{
  v6 = a4;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy vibrateForPrompt:withReply:]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__MNNavigationServiceLocalProxy_vibrateForPrompt_withReply___block_invoke;
  v8[3] = &unk_1E842A640;
  v9 = v6;
  v10 = a3;
  v7 = v6;
  MNRunAsyncOnNavigationQueue(v8);
}

void __60__MNNavigationServiceLocalProxy_vibrateForPrompt_withReply___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 vibrateForPrompt:*(a1 + 40) withReply:*(a1 + 32)];
}

- (void)repeatCurrentTrafficAlertWithReply:(id)a3
{
  v4 = a3;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy repeatCurrentTrafficAlertWithReply:]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__MNNavigationServiceLocalProxy_repeatCurrentTrafficAlertWithReply___block_invoke;
  v6[3] = &unk_1E842F150;
  v7 = v4;
  v5 = v4;
  MNRunAsyncOnNavigationQueue(v6);
}

void __68__MNNavigationServiceLocalProxy_repeatCurrentTrafficAlertWithReply___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 repeatCurrentTrafficAlertWithReply:*(a1 + 32)];
}

- (void)repeatCurrentGuidanceWithReply:(id)a3
{
  v4 = a3;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy repeatCurrentGuidanceWithReply:]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__MNNavigationServiceLocalProxy_repeatCurrentGuidanceWithReply___block_invoke;
  v6[3] = &unk_1E842F150;
  v7 = v4;
  v5 = v4;
  MNRunAsyncOnNavigationQueue(v6);
}

void __64__MNNavigationServiceLocalProxy_repeatCurrentGuidanceWithReply___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 repeatCurrentGuidanceWithReply:*(a1 + 32)];
}

- (void)setVoiceGuidanceLevelOverride:(unint64_t)a3
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy setVoiceGuidanceLevelOverride:]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__MNNavigationServiceLocalProxy_setVoiceGuidanceLevelOverride___block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v4[4] = a3;
  MNRunAsyncOnNavigationQueue(v4);
}

void __63__MNNavigationServiceLocalProxy_setVoiceGuidanceLevelOverride___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 setVoiceGuidanceLevelOverride:*(a1 + 32)];
}

- (void)changeUserOptions:(id)a3
{
  v4 = a3;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy changeUserOptions:]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__MNNavigationServiceLocalProxy_changeUserOptions___block_invoke;
  v6[3] = &unk_1E8430ED8;
  v7 = v4;
  v5 = v4;
  MNRunAsyncOnNavigationQueue(v6);
}

void __51__MNNavigationServiceLocalProxy_changeUserOptions___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 changeUserOptions:*(a1 + 32)];

  v3 = +[MNUserOptionsEngine sharedInstance];
  [v3 update:*(a1 + 32)];
}

- (void)setGuidanceType:(unint64_t)a3
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy setGuidanceType:]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__MNNavigationServiceLocalProxy_setGuidanceType___block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v4[4] = a3;
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

- (void)changeTransportType:(int)a3 route:(id)a4
{
  v6 = a4;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy changeTransportType:route:]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__MNNavigationServiceLocalProxy_changeTransportType_route___block_invoke;
  v8[3] = &unk_1E842F5D0;
  v10 = a3;
  v9 = v6;
  v7 = v6;
  MNRunAsyncOnNavigationQueue(v8);
}

void __59__MNNavigationServiceLocalProxy_changeTransportType_route___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 changeTransportType:*(a1 + 40) route:*(a1 + 32)];
}

- (void)switchToRoute:(id)a3
{
  v4 = a3;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy switchToRoute:]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__MNNavigationServiceLocalProxy_switchToRoute___block_invoke;
  v6[3] = &unk_1E8430ED8;
  v7 = v4;
  v5 = v4;
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

- (void)updateDestination:(id)a3
{
  v4 = a3;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy updateDestination:]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__MNNavigationServiceLocalProxy_updateDestination___block_invoke;
  v6[3] = &unk_1E8430ED8;
  v7 = v4;
  v5 = v4;
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

- (void)removeWaypointAtIndex:(unint64_t)a3
{
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy removeWaypointAtIndex:]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__MNNavigationServiceLocalProxy_removeWaypointAtIndex___block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v4[4] = a3;
  MNRunAsyncOnNavigationQueue(v4);
}

void __55__MNNavigationServiceLocalProxy_removeWaypointAtIndex___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 removeWaypointAtIndex:*(a1 + 32)];
}

- (void)insertWaypoint:(id)a3
{
  v4 = a3;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy insertWaypoint:]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__MNNavigationServiceLocalProxy_insertWaypoint___block_invoke;
  v6[3] = &unk_1E8430ED8;
  v7 = v4;
  v5 = v4;
  MNRunAsyncOnNavigationQueue(v6);
}

void __48__MNNavigationServiceLocalProxy_insertWaypoint___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 insertWaypoint:*(a1 + 32)];
}

- (void)rerouteWithWaypoints:(id)a3
{
  v4 = a3;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy rerouteWithWaypoints:]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__MNNavigationServiceLocalProxy_rerouteWithWaypoints___block_invoke;
  v6[3] = &unk_1E8430ED8;
  v7 = v4;
  v5 = v4;
  MNRunAsyncOnNavigationQueue(v6);
}

void __54__MNNavigationServiceLocalProxy_rerouteWithWaypoints___block_invoke(uint64_t a1)
{
  v2 = +[MNNavigationStateManager sharedManager];
  [v2 rerouteWithWaypoints:*(a1 + 32)];
}

- (void)stopNavigationWithReason:(unint64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy stopNavigationWithReason:]"];
  v5 = MNGetMNNavigationXPCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (a3 - 1 > 9)
    {
      v6 = @"Unknown";
    }

    else
    {
      v6 = off_1E842A6C0[a3 - 1];
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
  v8[5] = a3;
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

- (void)startNavigationWithDetails:(id)a3 activeBlock:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(MNNavigationServiceLocalProxy *)self logXPCCall:"[MNNavigationServiceLocalProxy startNavigationWithDetails:activeBlock:]"];
  v8 = MNGetMNNavigationXPCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = [v6 navigationType];
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "MNNavigationServiceLocalProxy startNavigationWithType: %u", buf, 8u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__MNNavigationServiceLocalProxy_startNavigationWithDetails_activeBlock___block_invoke;
  v12[3] = &unk_1E842F448;
  v13 = v6;
  v14 = v7;
  v12[4] = self;
  v9 = v6;
  v10 = v7;
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

- (void)setRoutesForPreview:(id)a3 selectedRouteIndex:(unint64_t)a4
{
  v6 = a3;
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
  v10 = v6;
  v11 = a4;
  v8 = v6;
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
  v4 = [v3 navigationDelegate];

  if (v4 == self)
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