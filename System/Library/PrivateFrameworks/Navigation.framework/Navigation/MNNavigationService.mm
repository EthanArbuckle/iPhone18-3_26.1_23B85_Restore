@interface MNNavigationService
+ (id)sharedService;
+ (unint64_t)_hashForProtocol:(id)a3;
+ (unint64_t)clientInterfaceHash;
+ (unint64_t)daemonInterfaceHash;
- ($212C09783140BCCD23384160D545CE0D)originalRouteDivergenceCoordinate;
- (BOOL)guidancePromptsEnabled;
- (BOOL)isApproachingWaypoint;
- (BOOL)isDetour;
- (BOOL)isInNavigatingState;
- (BOOL)isInPreArrivalState;
- (BOOL)isNavigatingFromTrace;
- (BOOL)isResumingMultipointRoute;
- (BOOL)isTrackingCurrentLocation;
- (BOOL)startNavigationWithDetails:(id)a3 error:(id *)a4;
- (BOOL)traceIsPlaying;
- (GEOComposedRoute)alternateWalkingRoute;
- (GEOComposedRoute)originalRoute;
- (GEOComposedRoute)route;
- (GEOComposedWaypoint)destination;
- (GEOComposedWaypoint)nextWaypoint;
- (GEOComposedWaypoint)origin;
- (GEOComposedWaypoint)originalDestination;
- (GEOComposedWaypoint)originalOrigin;
- (GEODirectionsRequest)currentRequest;
- (GEODirectionsResponse)currentResponse;
- (GEOResumeRouteHandle)resumeRouteHandle;
- (MNArrivalInfo)arrivalInfo;
- (MNBatteryChargeInfo)batteryChargeInfo;
- (MNDisplayETAInfo)alternateWalkingRouteDisplayETAInfo;
- (MNDisplayETAInfo)displayEtaInfo;
- (MNGuidanceLaneInfo)activeLaneInfo;
- (MNLocation)lastLocation;
- (MNRouteDistanceInfo)remainingDistanceInfo;
- (MNVehicleParkingInfo)vehicleParkingInfo;
- (NSArray)alternateRoutes;
- (NSArray)traceBookmarks;
- (NSString)currentVoiceLanguage;
- (NSString)description;
- (NSString)destinationName;
- (NSString)originalDestinationName;
- (NSString)tracePath;
- (double)distanceUntilManeuver;
- (double)distanceUntilSign;
- (double)timeUntilManeuver;
- (double)timeUntilSign;
- (double)traceDuration;
- (double)tracePosition;
- (id)_clientProxy;
- (id)batteryChargeInfoForRoute:(id)a3;
- (id)captureStatePlistWithHints:(os_state_hints_s *)a3;
- (id)displayETAInfoForRoute:(id)a3;
- (id)etaRouteForRoute:(id)a3;
- (id)initPrivate;
- (id)realtimeUpdatesForRoutes:(id)a3;
- (id)remainingDistanceInfoForRoute:(id)a3;
- (id)ticketForDirectionsRequest:(id)a3;
- (int)desiredTransportType;
- (int)headingOrientation;
- (int)navigationState;
- (int)navigationTransportType;
- (int64_t)desiredNavigationType;
- (int64_t)navigationType;
- (int64_t)simulationType;
- (int64_t)upcomingAnchorPointIndex;
- (unint64_t)alternateRouteIndexForRoute:(id)a3;
- (unint64_t)displayedStepIndex;
- (unint64_t)reconnectionRouteIndex;
- (unint64_t)routeIndex;
- (unint64_t)state;
- (unint64_t)stepIndex;
- (unint64_t)targetLegIndex;
- (unint64_t)voiceGuidanceLevel;
- (void)_navigationServiceCallback_DidChangeVoiceGuidanceLevel:(id)a3;
- (void)_navigationServiceCallback_DidEndNavigation:(id)a3;
- (void)_navigationServiceCallback_DidReceiveRoutingServiceError:(id)a3;
- (void)_navigationServiceCallback_DidUpdateArrivalInfo:(id)a3;
- (void)_navigationServiceCallback_DidUpdateBackgroundWalkingRoute:(id)a3;
- (void)_navigationServiceCallback_DidUpdateDisplayETA:(id)a3;
- (void)_navigationServiceCallback_DidUpdateMatchedLocation:(id)a3;
- (void)_navigationServiceCallback_DidUpdateNavTrayGuidance:(id)a3;
- (void)_navigationServiceCallback_DidUpdateResumeRouteHandle:(id)a3;
- (void)_navigationServiceCallback_DidUpdateStepIndex:(id)a3;
- (void)_navigationServiceCallback_DidUpdateTargetLegIndex:(id)a3;
- (void)_navigationServiceCallback_DidUpdateTrafficIncidentAlert:(id)a3;
- (void)_navigationServiceCallback_DidUpdateUpcomingAnchorPointIndex:(id)a3;
- (void)_navigationServiceCallback_DidUpdateVehicleParkingInfo:(id)a3;
- (void)_navigationServiceCallback_ShouldEnableIdleTimer:(id)a3;
- (void)_navigationServiceCallback_WillEndNavigation:(id)a3;
- (void)_navigationServiceCallback_WillStartNavigation:(id)a3;
- (void)_resetDetails;
- (void)_updateWithCallback:(id)a3;
- (void)advanceToNextLeg;
- (void)changeUserOptions:(id)a3;
- (void)closeForClient:(id)a3;
- (void)dealloc;
- (void)disableNavigationCapability:(unint64_t)a3 reason:(unint64_t)a4;
- (void)enableNavigationCapability:(unint64_t)a3 reason:(unint64_t)a4;
- (void)forceReroute;
- (void)insertWaypoint:(id)a3;
- (void)navigationServiceProxy:(id)a3 didArriveAtWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5;
- (void)navigationServiceProxy:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)navigationServiceProxy:(id)a3 didEnterPreArrivalStateForWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5;
- (void)navigationServiceProxy:(id)a3 didFailRerouteWithError:(id)a4;
- (void)navigationServiceProxy:(id)a3 didFailWithError:(id)a4;
- (void)navigationServiceProxy:(id)a3 didProcessSpeechEvent:(id)a4;
- (void)navigationServiceProxy:(id)a3 didReceiveRealtimeUpdates:(id)a4;
- (void)navigationServiceProxy:(id)a3 didReceiveTransitAlert:(id)a4;
- (void)navigationServiceProxy:(id)a3 didRerouteWithRoute:(id)a4 withLocation:(id)a5 withAlternateRoutes:(id)a6 rerouteReason:(unint64_t)a7;
- (void)navigationServiceProxy:(id)a3 didResumeNavigatingFromWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5 reason:(unint64_t)a6;
- (void)navigationServiceProxy:(id)a3 didStartSpeakingPrompt:(id)a4;
- (void)navigationServiceProxy:(id)a3 didUpdateAlternateRoutes:(id)a4;
- (void)navigationServiceProxy:(id)a3 didUpdateDisplayedStepIndex:(unint64_t)a4 segmentIndex:(unint64_t)a5;
- (void)navigationServiceProxy:(id)a3 didUpdateDistanceUntilManeuver:(double)a4 timeUntilManeuver:(double)a5 forStepIndex:(unint64_t)a6;
- (void)navigationServiceProxy:(id)a3 didUpdateDistanceUntilSign:(double)a4 timeUntilSign:(double)a5 forStepIndex:(unint64_t)a6;
- (void)navigationServiceProxy:(id)a3 didUpdateETAResponseForRoute:(id)a4;
- (void)navigationServiceProxy:(id)a3 didUpdateNavigationDetails:(id)a4;
- (void)navigationServiceProxy:(id)a3 didUpdatePreviewRoutes:(id)a4 withSelectedRouteIndex:(unint64_t)a5;
- (void)navigationServiceProxy:(id)a3 didUpdateProceedToRouteDistance:(double)a4 displayString:(id)a5 closestStepIndex:(unint64_t)a6;
- (void)navigationServiceProxy:(id)a3 didUpdateRouteWithNewRideSelection:(id)a4;
- (void)navigationServiceProxy:(id)a3 didUpdateTracePlaybackDetails:(id)a4;
- (void)navigationServiceProxy:(id)a3 displayManeuverAlertForAnnouncementStage:(unint64_t)a4;
- (void)navigationServiceProxy:(id)a3 hideJunctionViewForId:(id)a4;
- (void)navigationServiceProxy:(id)a3 hideLaneDirectionsForId:(id)a4;
- (void)navigationServiceProxy:(id)a3 isApproachingEndOfLeg:(unint64_t)a4;
- (void)navigationServiceProxy:(id)a3 showJunctionView:(id)a4;
- (void)navigationServiceProxy:(id)a3 showLaneDirections:(id)a4;
- (void)navigationServiceProxy:(id)a3 updateSignsWithARInfo:(id)a4;
- (void)navigationServiceProxy:(id)a3 updateSignsWithInfo:(id)a4;
- (void)navigationServiceProxy:(id)a3 willAnnounce:(unint64_t)a4 inSeconds:(double)a5;
- (void)navigationServiceProxy:(id)a3 willChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)navigationServiceProxy:(id)a3 willProcessSpeechEvent:(id)a4;
- (void)navigationServiceProxyBeginGuidanceUpdate:(id)a3;
- (void)navigationServiceProxyDidArrive:(id)a3;
- (void)navigationServiceProxyDidCancelReroute:(id)a3;
- (void)navigationServiceProxyDidEnterPreArrivalState:(id)a3;
- (void)navigationServiceProxyDidFinishLocationUpdate:(id)a3;
- (void)navigationServiceProxyEndGuidanceUpdate:(id)a3;
- (void)navigationServiceProxyHideSecondaryStep:(id)a3;
- (void)navigationServiceProxyWillPauseNavigation:(id)a3;
- (void)navigationServiceProxyWillReroute:(id)a3;
- (void)navigationServiceProxyWillResumeFromPauseNavigation:(id)a3;
- (void)openForClient:(id)a3;
- (void)pauseRealtimeUpdates;
- (void)recordPedestrianTracePath:(id)a3;
- (void)recordTraceBookmarkAtCurrentPositionWthScreenshotData:(id)a3;
- (void)removeWaypointAtIndex:(unint64_t)a3;
- (void)repeatCurrentGuidance:(id)a3;
- (void)repeatCurrentTrafficAlert:(id)a3;
- (void)rerouteWithWaypoints:(id)a3;
- (void)resumeOriginalDestination;
- (void)resumeRealtimeUpdates;
- (void)setDisplayedStepIndex:(unint64_t)a3;
- (void)setGuidanceType:(unint64_t)a3;
- (void)setJunctionViewImageWidth:(double)a3 height:(double)a4;
- (void)setRideIndex:(unint64_t)a3 forSegmentIndex:(unint64_t)a4;
- (void)setRoutesForPreview:(id)a3 selectedRouteIndex:(unint64_t)a4;
- (void)setSimulationPosition:(double)a3;
- (void)setSimulationSpeedMultiplier:(double)a3;
- (void)setSimulationSpeedOverride:(double)a3;
- (void)setTracePlaybackSpeed:(double)a3;
- (void)setTracePosition:(double)a3;
- (void)setVoiceGuidanceLevelOverride:(unint64_t)a3;
- (void)stopCurrentGuidancePrompt;
- (void)stopNavigationWithReason:(unint64_t)a3;
- (void)switchToDestinationRoute;
- (void)switchToRoute:(id)a3;
- (void)updateDestination:(id)a3;
- (void)updateForUserIncidentReport:(id)a3;
- (void)vibrateForPrompt:(unint64_t)a3 completion:(id)a4;
@end

@implementation MNNavigationService

+ (id)sharedService
{
  if (sharedService_once != -1)
  {
    dispatch_once(&sharedService_once, &__block_literal_global_3966);
  }

  v3 = sharedService__singleton;

  return v3;
}

void __36__MNNavigationService_sharedService__block_invoke()
{
  v0 = [[MNNavigationService alloc] initPrivate];
  v1 = sharedService__singleton;
  sharedService__singleton = v0;
}

- (id)initPrivate
{
  v37 = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = MNNavigationService;
  v2 = [(MNNavigationService *)&v26 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AE30] processInfo];
    v4 = [v3 _navigation_isNavd];

    if (v4)
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MNNavigationService is not allowed on navd"];
      v25 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v28 = "[MNNavigationService initPrivate]";
        v29 = 2080;
        v30 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Interfaces/MNNavigationService.m";
        v31 = 1024;
        v32 = 104;
        v33 = 2080;
        v34 = "![[NSProcessInfo processInfo] _navigation_isNavd]";
        v35 = 2112;
        v36 = v24;
        _os_log_impl(&dword_1D311E000, v25, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
      }
    }

    [(MNNavigationService *)v2 _resetDetails];
    if (+[MNNavigationService supportsNavigation])
    {
      v5 = *MEMORY[0x1E69A19E0];
      v6 = *(MEMORY[0x1E69A19E0] + 8);
      if (GEOConfigGetBOOL())
      {
        v7 = objc_alloc_init(MNNavigationServiceRemoteProxy);
        remoteProxy = v2->_remoteProxy;
        v2->_remoteProxy = v7;

        [(MNNavigationServiceRemoteProxy *)v2->_remoteProxy setDelegate:v2];
        v9 = v2->_remoteProxy;
        proxy = v2->_proxy;
        v2->_proxy = v9;
      }

      else
      {
        v11 = objc_alloc_init(MNNavigationServiceLocalProxy);
        [(MNNavigationServiceLocalProxy *)v11 setDelegate:v2];
        v12 = v2->_proxy;
        v2->_proxy = v11;
        proxy = v11;

        [(MNNavigationServiceLocalProxy *)proxy reset];
      }
    }

    objc_storeStrong(&v2->_queue, MEMORY[0x1E69E96A0]);
    v13 = [objc_alloc(MEMORY[0x1E69A22D8]) initWithProtocol:&unk_1F4EF5798 queue:v2->_queue];
    navigationObservers = v2->_navigationObservers;
    v2->_navigationObservers = v13;

    v15 = objc_opt_new();
    cachedUserOptions = v2->_cachedUserOptions;
    v2->_cachedUserOptions = v15;

    v17 = [MEMORY[0x1E696AFB0] UUID];
    uuid = v2->_uuid;
    v2->_uuid = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    disabledCapabilities = v2->_disabledCapabilities;
    v2->_disabledCapabilities = v19;

    v21 = dispatch_get_global_queue(21, 0);
    GEORegisterPListStateCaptureLegacy();
  }

  v22 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)_resetDetails
{
  v3 = objc_autoreleasePoolPush();
  v4 = [[MNNavigationDetails alloc] initForServer:0];
  [(MNNavigationService *)self setDetails:v4];

  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "Resetting navigation details.", v6, 2u);
  }

  objc_autoreleasePoolPop(v3);
}

- (GEOComposedRoute)route
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 currentRoute];

  return v3;
}

- (MNArrivalInfo)arrivalInfo
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 arrivalInfo];

  return v3;
}

- (BOOL)isInNavigatingState
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 state] > 3;

  return v3;
}

- (unint64_t)stepIndex
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 stepIndex];

  return v3;
}

- (int)navigationState
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 navigationState];

  return v3;
}

- (unint64_t)state
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 state];

  return v3;
}

- (GEODirectionsResponse)currentResponse
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 directionsResponse];

  return v3;
}

- (NSString)currentVoiceLanguage
{
  if ([(MNNavigationService *)self state]== 4 || [(MNNavigationService *)self state]== 5)
  {
    v3 = [(MNNavigationService *)self details];
    v4 = [v3 currentVoiceLanguage];
  }

  else
  {
    v4 = +[MNVoiceLanguageUtil systemDefaultVoiceLanguage];
  }

  return v4;
}

- (int)navigationTransportType
{
  v3 = [(MNNavigationService *)self details];
  v4 = [v3 currentRoute];
  if (v4)
  {
    v5 = [(MNNavigationService *)self details];
    v6 = [v5 currentRoute];
    v7 = [v6 transportType];
  }

  else
  {
    v7 = 4;
  }

  return v7;
}

- (MNBatteryChargeInfo)batteryChargeInfo
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 batteryChargeInfo];

  return v3;
}

- (MNDisplayETAInfo)displayEtaInfo
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 displayETAInfo];

  return v3;
}

- (MNRouteDistanceInfo)remainingDistanceInfo
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 remainingDistanceInfo];

  return v3;
}

- (MNLocation)lastLocation
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 location];

  return v3;
}

- (BOOL)isNavigatingFromTrace
{
  v2 = [(MNNavigationService *)self details];
  [v2 traceDuration];
  v4 = v3 > 0.0;

  return v4;
}

- (int64_t)simulationType
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 simulationType];

  return v3;
}

- (unint64_t)displayedStepIndex
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 displayedStepIndex];

  return v3;
}

- (GEOComposedWaypoint)nextWaypoint
{
  v3 = [(MNNavigationService *)self route];
  v4 = [(MNNavigationService *)self targetLegIndex];
  if (v3 && (v5 = v4, [v3 legs], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5 < v7))
  {
    v8 = [v3 legs];
    v9 = [v8 objectAtIndexedSubscript:v5];
    v10 = [v9 destination];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)targetLegIndex
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 targetLegIndex];

  return v3;
}

- (MNDisplayETAInfo)alternateWalkingRouteDisplayETAInfo
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 backgroundWalkingRouteInfo];
  v4 = [v3 displayETAInfo];

  return v4;
}

- (GEOComposedWaypoint)destination
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 currentRoute];
  v4 = [v3 destination];

  return v4;
}

- (GEOComposedRoute)alternateWalkingRoute
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 backgroundWalkingRouteInfo];
  v4 = [v3 route];

  return v4;
}

- (double)distanceUntilManeuver
{
  v2 = [(MNNavigationService *)self details];
  [v2 distanceUntilManeuver];
  v4 = v3;

  return v4;
}

- (NSArray)alternateRoutes
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 alternateRoutes];

  return v3;
}

- (id)captureStatePlistWithHints:(os_state_hints_s *)a3
{
  v3 = self;
  v87[6] = *MEMORY[0x1E69E9840];
  v4 = [(MNNavigationService *)self route];
  v73 = v4;
  v74 = v3;
  if (v4)
  {
    v86[0] = @"routeID";
    v5 = v4;
    v70 = [v4 uniqueRouteID];
    v6 = [v70 UUIDString];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_1F4EB6B70;
    }

    v87[0] = v8;
    v86[1] = @"name";
    v9 = [v5 name];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &stru_1F4EB6B70;
    }

    v87[1] = v11;
    v86[2] = @"legs";
    v12 = MEMORY[0x1E696AD98];
    v69 = [v5 legs];
    v13 = [v12 numberWithUnsignedInteger:{objc_msgSend(v69, "count")}];
    v87[2] = v13;
    v86[3] = @"segments";
    v14 = MEMORY[0x1E696AD98];
    v15 = [v5 segments];
    v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
    v87[3] = v16;
    v86[4] = @"steps";
    v17 = MEMORY[0x1E696AD98];
    v18 = [v5 steps];
    v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(v18, "count")}];
    v87[4] = v19;
    v86[5] = @"length";
    v20 = MEMORY[0x1E696AD98];
    [v5 distance];
    v21 = [v20 numberWithDouble:?];
    v87[5] = v21;
    v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:v86 count:6];

    v3 = v74;
  }

  else
  {
    v72 = 0;
  }

  v22 = [MEMORY[0x1E695DF70] array];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v23 = [(MNNavigationService *)v3 alternateRoutes];
  v24 = [v23 countByEnumeratingWithState:&v75 objects:v85 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v76;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v76 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v75 + 1) + 8 * i) uniqueRouteID];
        v29 = [v28 UUIDString];
        v30 = v29;
        if (v29)
        {
          v31 = v29;
        }

        else
        {
          v31 = &stru_1F4EB6B70;
        }

        [(__CFString *)v22 addObject:v31];
      }

      v25 = [v23 countByEnumeratingWithState:&v75 objects:v85 count:16];
    }

    while (v25);
  }

  v32 = [(MNNavigationService *)v3 displayEtaInfo];
  v33 = v32;
  if (v32)
  {
    v34 = [v32 legInfos];
    v35 = [v34 firstObject];

    v71 = v35;
    if (v35)
    {
      v83[0] = @"remainingMinutes";
      v36 = 0x1E696A000uLL;
      v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v35, "remainingMinutes")}];
      v84[0] = v37;
      v83[1] = @"displayETA";
      v38 = [v35 eta];
      v39 = v38;
      if (v38)
      {
        v40 = v38;
      }

      else
      {
        v40 = &stru_1F4EB6B70;
      }

      v84[1] = v40;
      v83[2] = @"legIndex";
      v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v35, "legIndex")}];
      v84[2] = v41;
      v83[3] = @"timeZone";
      v42 = [v35 timeZone];
      v43 = [v42 description];
      v44 = v33;
      v45 = v43;
      if (v43)
      {
        v46 = v43;
      }

      else
      {
        v46 = &stru_1F4EB6B70;
      }

      v84[3] = v46;
      v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:v83 count:4];

      v33 = v44;
    }

    else
    {
      v47 = 0;
      v36 = 0x1E696A000uLL;
    }

    v81[0] = @"routeID";
    v49 = [v33 routeID];
    v50 = [v49 UUIDString];
    v51 = v33;
    v52 = v50;
    if (v50)
    {
      v53 = v50;
    }

    else
    {
      v53 = &stru_1F4EB6B70;
    }

    v82[0] = v53;
    v81[1] = @"legInfos";
    v54 = MEMORY[0x1E696AD98];
    v55 = [v51 legInfos];
    v56 = [v54 numberWithUnsignedInteger:{objc_msgSend(v55, "count")}];
    v57 = v56;
    v81[2] = @"legInfos[0]";
    if (v47)
    {
      v58 = v47;
    }

    else
    {
      v58 = &stru_1F4EB6B70;
    }

    v82[1] = v56;
    v82[2] = v58;
    v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:v81 count:3];

    v33 = v51;
    v3 = v74;
  }

  else
  {
    v48 = 0;
    v36 = 0x1E696A000;
  }

  v79[0] = @"state";
  v59 = [*(v36 + 3480) numberWithUnsignedInteger:{-[MNNavigationService state](v3, "state")}];
  v80[0] = v59;
  v79[1] = @"navigationState";
  v60 = [*(v36 + 3480) numberWithInt:{-[MNNavigationService navigationState](v3, "navigationState")}];
  v80[1] = v60;
  v79[2] = @"navigationType";
  v61 = [*(v36 + 3480) numberWithInteger:{-[MNNavigationService navigationType](v3, "navigationType")}];
  v62 = v61;
  if (v72)
  {
    v63 = v72;
  }

  else
  {
    v63 = &stru_1F4EB6B70;
  }

  v80[2] = v61;
  v80[3] = v63;
  v79[3] = @"currentRoute";
  v79[4] = @"alternateRoutes";
  if (v22)
  {
    v64 = v22;
  }

  else
  {
    v64 = &stru_1F4EB6B70;
  }

  v79[5] = @"displayETA";
  if (v48)
  {
    v65 = v48;
  }

  else
  {
    v65 = &stru_1F4EB6B70;
  }

  v80[4] = v64;
  v80[5] = v65;
  v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:v79 count:6];

  v67 = *MEMORY[0x1E69E9840];

  return v66;
}

- (void)navigationServiceProxy:(id)a3 didReceiveTransitAlert:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = NSStringFromSelector(a2);
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_INFO, "(%{public}@)", &v10, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didReceiveTransitAlert:v6];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxy:(id)a3 didReceiveRealtimeUpdates:(id)a4
{
  objc_storeStrong(&self->_realtimeUpdates, a4);
  v6 = a4;
  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didReceiveRealtimeUpdates:v6];
}

- (void)navigationServiceProxy:(id)a3 didProcessSpeechEvent:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v12 = 138543362;
    v13 = v8;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@)", &v12, 0xCu);
  }

  if ([v6 hasSpokenGuidance])
  {
    v9 = [(MNNavigationService *)self details];
    v10 = [v6 uniqueID];
    [v9 markAnnouncementSpoken:v10];
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didProcessSpeechEvent:v6];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxy:(id)a3 willProcessSpeechEvent:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@)", &v10, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self willProcessSpeechEvent:v6];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxy:(id)a3 didStartSpeakingPrompt:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@)", &v10, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didStartSpeakingPrompt:v6];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxy:(id)a3 didUpdateTracePlaybackDetails:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 eventType];
  if (v6 <= 3)
  {
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v31 = [(MNNavigationService *)self details];
        [v31 setTraceIsPlaying:1];

        [(GEOObserverHashTable *)self->_navigationObservers navigationServiceDidResumeTrace:self];
      }

      else
      {
        v22 = [(MNNavigationService *)self details];
        [v22 setTraceIsPlaying:0];

        [(GEOObserverHashTable *)self->_navigationObservers navigationServiceDidPauseTrace:self];
      }
    }

    else if (v6)
    {
      if (v6 == 1)
      {
        v7 = [v5 tracePath];
        v8 = [(MNNavigationService *)self details];
        [v8 setTracePath:v7];

        [v5 traceDuration];
        v10 = v9;
        v11 = [(MNNavigationService *)self details];
        [v11 setTraceDuration:v10];

        v12 = [v5 bookmarks];
        v13 = [(MNNavigationService *)self details];
        [v13 setTraceBookmarks:v12];

        v14 = [(MNNavigationService *)self details];
        [v14 setTraceIsPlaying:1];

        v15 = objc_alloc_init(MNNavigationTraceInfo);
        v16 = [v5 pedestrianTracePath];
        [(MNNavigationTraceInfo *)v15 setPedestrianTracePath:v16];

        [v5 pedestrianTraceStartRelativeTimestamp];
        [(MNNavigationTraceInfo *)v15 setPedestrianTraceStartRelativeTimestamp:?];
        [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didFinishLoadingTrace:v15];
      }
    }

    else
    {
      v26 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v35 = 136315650;
        v36 = "[MNNavigationService navigationServiceProxy:didUpdateTracePlaybackDetails:]";
        v37 = 2080;
        v38 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Interfaces/MNNavigationService.m";
        v39 = 1024;
        v40 = 1425;
        _os_log_impl(&dword_1D311E000, v26, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", &v35, 0x1Cu);
      }
    }

    goto LABEL_21;
  }

  if (v6 <= 5)
  {
    if (v6 == 4)
    {
      [v5 currentPosition];
      v28 = v27;
      v29 = [(MNNavigationService *)self details];
      [v29 setTracePosition:v28];

      navigationObservers = self->_navigationObservers;
      v21 = [(MNNavigationService *)self details];
      [v21 tracePosition];
      [(GEOObserverHashTable *)navigationObservers navigationService:self didPlayTracePosition:?];
    }

    else
    {
      [v5 currentPosition];
      v18 = v17;
      v19 = [(MNNavigationService *)self details];
      [v19 setTracePosition:v18];

      v20 = self->_navigationObservers;
      v21 = [(MNNavigationService *)self details];
      [v21 tracePosition];
      [(GEOObserverHashTable *)v20 navigationService:self didSeekToTracePosition:?];
    }

    goto LABEL_18;
  }

  if (v6 == 6)
  {
    v32 = [v5 bookmarks];
    v33 = [(MNNavigationService *)self details];
    [v33 setTraceBookmarks:v32];

    -[GEOObserverHashTable navigationService:didRecordTraceBookmarkWithID:](self->_navigationObservers, "navigationService:didRecordTraceBookmarkWithID:", self, [v5 recordedBookmarkID]);
    goto LABEL_21;
  }

  if (v6 == 7)
  {
    v23 = [v5 tracePath];
    v24 = [(MNNavigationService *)self details];
    [v24 setTracePath:v23];

    v25 = self->_navigationObservers;
    v21 = [v5 tracePath];
    [(GEOObserverHashTable *)v25 navigationService:self didStartRecordingTraceWithPath:v21];
LABEL_18:
  }

LABEL_21:

  v34 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxy:(id)a3 didUpdateAlternateRoutes:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = MEMORY[0x1E696AEC0];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"(%@) count: %d", v8, objc_msgSend(v5, "count")];
  [v6 addObject:v9];

  v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v5;
  v10 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v40;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v40 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v39 + 1) + 8 * i);
        v15 = MEMORY[0x1E696AEC0];
        v16 = [v14 route];
        v17 = [v16 name];
        v18 = [v14 displayETAInfo];
        v19 = [v15 stringWithFormat:@"    %@ | %d minutes", v17, objc_msgSend(v18, "displayRemainingMinutesToEndOfRoute")];
        [v6 addObject:v19];

        v20 = [v14 traffic];

        if (v20)
        {
          v21 = [v14 traffic];
          v22 = [v14 routeID];
          [v38 setObject:v21 forKeyedSubscript:v22];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v11);
  }

  v23 = [(MNNavigationService *)self details];
  [v23 setAlternateRoutes:obj];

  v24 = MEMORY[0x1E696AEC0];
  v25 = [(MNNavigationService *)self details];
  v26 = [v25 routeLookupIDs];
  v27 = [v26 componentsJoinedByString:{@", "}];
  v28 = [v24 stringWithFormat:@"Known route IDs: %@", v27];
  [v6 addObject:v28];

  v29 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [v6 componentsJoinedByString:@"\n"];
    *buf = 138412290;
    v44 = v30;
    _os_log_impl(&dword_1D311E000, v29, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  navigationObservers = self->_navigationObservers;
  v32 = [(MNNavigationService *)self details];
  v33 = [v32 alternateRoutes];
  v34 = [v38 copy];
  [(GEOObserverHashTable *)navigationObservers navigationService:self didUpdateAlternateRoutes:v33 traffics:v34];

  v35 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxy:(id)a3 didFailRerouteWithError:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@)%@", &v10, 0x16u);
  }

  -[GEOObserverHashTable navigationService:failedRerouteWithErrorCode:](self->_navigationObservers, "navigationService:failedRerouteWithErrorCode:", self, [v6 code]);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxy:(id)a3 didUpdateRouteWithNewRideSelection:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(MNNavigationService *)self details];
  [v7 setCurrentRoute:v6 withAlternateRoutes:0];

  v8 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    v10 = [(MNNavigationService *)self details];
    v11 = [v10 routeLookupIDs];
    v12 = [v11 componentsJoinedByString:{@", "}];
    v16 = 138543618;
    v17 = v9;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "(%{public}@)\nKnown route IDs: (%@)", &v16, 0x16u);
  }

  navigationObservers = self->_navigationObservers;
  v14 = [v6 route];
  [(GEOObserverHashTable *)navigationObservers navigationService:self didUpdateRouteWithNewRideSelection:v14];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxyDidCancelReroute:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "(%{public}@)", &v8, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationServiceDidCancelReroute:self];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxy:(id)a3 didRerouteWithRoute:(id)a4 withLocation:(id)a5 withAlternateRoutes:(id)a6 rerouteReason:(unint64_t)a7
{
  v45 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (v14 && ([v14 route], v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
  {
    v18 = [(MNNavigationService *)self details];
    [v18 setCurrentRoute:v14 withAlternateRoutes:v16];

    v19 = MNGetMNNavigationServiceLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = NSStringFromSelector(a2);
      v21 = [v14 routeID];
      v35 = v13;
      v22 = [v16 count];
      v34 = [(MNNavigationService *)self details];
      v23 = [v34 routeLookupIDs];
      [v23 componentsJoinedByString:{@", "}];
      v24 = v36 = a7;
      *buf = 138413058;
      v38 = v20;
      v39 = 2112;
      v40 = v21;
      v41 = 1024;
      v42 = v22;
      v13 = v35;
      v43 = 2112;
      v44 = v24;
      _os_log_impl(&dword_1D311E000, v19, OS_LOG_TYPE_DEFAULT, "(%@) %@ | alternate routes: %d\nKnown route IDs: (%@)", buf, 0x26u);

      a7 = v36;
    }

    v25 = [(MNNavigationService *)self details];
    v26 = [v25 currentRoute];

    v27 = [(MNNavigationService *)self details];
    [v27 setLocation:v15];

    [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didReroute:v26 rerouteReason:a7];
    v28 = [v15 routeID];

    if (v28)
    {
      [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didUpdateMatchedLocation:v15];
    }

    navigationObservers = self->_navigationObservers;
    v30 = [v14 displayETAInfo];
    v31 = [v14 remainingDistanceInfo];
    v32 = [v14 batteryChargeInfo];
    [(GEOObserverHashTable *)navigationObservers navigationService:self didUpdateDisplayETA:v30 remainingDistance:v31 batteryChargeInfo:v32];
  }

  else
  {
    v26 = MNGetMNNavigationServiceLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v26, OS_LOG_TYPE_ERROR, "didRerouteWithRoute: was called with a null routeInfo or route", buf, 2u);
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxyWillReroute:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "(%{public}@)", &v8, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationServiceWillReroute:self];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxy:(id)a3 didUpdatePreviewRoutes:(id)a4 withSelectedRouteIndex:(unint64_t)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    v15 = 138543362;
    v16 = v10;
    _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_DEFAULT, "(%{public}@)", &v15, 0xCu);
  }

  v11 = [(MNNavigationService *)self details];
  [v11 setPreviewRoutes:v8 withSelectedRouteIndex:a5];

  v12 = [(MNNavigationService *)self details];
  v13 = [v12 previewRoutes];

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didUpdatePreviewRoutes:v13 withSelectedRouteIndex:a5];
  v14 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxy:(id)a3 didUpdateETAResponseForRoute:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v9 = [v6 route];
    v10 = [v9 name];
    v11 = [v6 routeID];
    v26 = 138543874;
    v27 = v8;
    v28 = 2112;
    v29 = v10;
    v30 = 2112;
    v31 = v11;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@)%@ | route ID: %@", &v26, 0x20u);
  }

  v12 = [(MNNavigationService *)self details];
  [v12 updateETATrafficForRoute:v6];

  v13 = [(MNNavigationService *)self details];
  v14 = [v6 routeID];
  v15 = [v13 routeInfoForID:v14];

  if (v15)
  {
    navigationObservers = self->_navigationObservers;
    v17 = [v15 etaResponse];
    v18 = [v15 route];
    [(GEOObserverHashTable *)navigationObservers navigationService:self didUpdateETAResponse:v17 forRoute:v18];

    v19 = self->_navigationObservers;
    v20 = [v15 routeID];
    [(GEOObserverHashTable *)v19 navigationService:self didUpdateTrafficForRouteID:v20];

    v21 = self->_navigationObservers;
    v22 = [v15 route];
    v23 = [v22 mutableData];
    v24 = [v15 route];
    [(GEOObserverHashTable *)v21 navigationService:self didUpdateMutableData:v23 forRoute:v24];
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxy:(id)a3 hideJunctionViewForId:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = NSStringFromSelector(a2);
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_INFO, "(%{public}@)", &v10, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self hideJunctionViewForId:v6];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxy:(id)a3 showJunctionView:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = NSStringFromSelector(a2);
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_INFO, "(%{public}@)", &v10, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self showJunctionView:v6];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxy:(id)a3 hideLaneDirectionsForId:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = NSStringFromSelector(a2);
    v16 = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_INFO, "(%{public}@)%@", &v16, 0x16u);
  }

  v9 = [(MNNavigationDetails *)self->_details activeLaneInfo];
  v10 = [v9 uniqueID];
  v11 = [v10 isEqual:v6];

  if ((v11 & 1) == 0)
  {
    v12 = MNGetMNNavigationServiceLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(MNNavigationDetails *)self->_details activeLaneInfo];
      v14 = [v13 uniqueID];
      v16 = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_ERROR, "Requested to remove active lane info with ID %@, but active info was %@", &v16, 0x16u);
    }
  }

  [(MNNavigationDetails *)self->_details setActiveLaneInfo:0];
  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self hideLaneDirectionsForId:v6];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxy:(id)a3 showLaneDirections:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = NSStringFromSelector(a2);
    v9 = [v6 uniqueID];
    v11 = 138543874;
    v12 = v8;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_INFO, "(%{public}@)%@, %@", &v11, 0x20u);
  }

  [(MNNavigationDetails *)self->_details setActiveLaneInfo:v6];
  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self showLaneDirections:v6];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxy:(id)a3 updateSignsWithARInfo:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "(navigationServiceProxy:updateSignsWithARInfo:) %@", &v8, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self updateSignsWithARInfo:v5];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxy:(id)a3 updateSignsWithInfo:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 secondarySign];

  v7 = MNGetMNNavigationServiceLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      v9 = [v5 primarySign];
      v10 = [v5 secondarySign];
      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_INFO, "(navigationServiceProxy:updateSignsWithInfo:) %@ / %@", &v12, 0x16u);

LABEL_6:
    }
  }

  else if (v8)
  {
    v9 = [v5 primarySign];
    v12 = 138412290;
    v13 = v9;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_INFO, "(navigationServiceProxy:updateSignsWithInfo:) %@", &v12, 0xCu);
    goto LABEL_6;
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self updateSignsWithInfo:v5];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxyEndGuidanceUpdate:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = NSStringFromSelector(a2);
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "(%{public}@)", &v8, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationServiceEndGuidanceUpdate:self];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxyBeginGuidanceUpdate:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = NSStringFromSelector(a2);
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "(%{public}@)", &v8, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationServiceBeginGuidanceUpdate:self];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxyHideSecondaryStep:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = NSStringFromSelector(a2);
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "(%{public}@)", &v8, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationServiceDidHideSecondaryStep:self];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxy:(id)a3 displayManeuverAlertForAnnouncementStage:(unint64_t)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = NSStringFromSelector(a2);
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_INFO, "(%{public}@)", &v10, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self displayManeuverAlertForAnnouncementStage:a4];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxy:(id)a3 willAnnounce:(unint64_t)a4 inSeconds:(double)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = NSStringFromSelector(a2);
    v12 = 138543362;
    v13 = v10;
    _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_INFO, "(%{public}@)", &v12, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self willAnnounce:a4 inSeconds:a5];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxy:(id)a3 didUpdateDistanceUntilSign:(double)a4 timeUntilSign:(double)a5 forStepIndex:(unint64_t)a6
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = NSStringFromSelector(a2);
    v16 = 138543362;
    v17 = v12;
    _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_INFO, "(%{public}@)", &v16, 0xCu);
  }

  v13 = [(MNNavigationService *)self details];
  [v13 setDistanceUntilSign:a4];

  v14 = [(MNNavigationService *)self details];
  [v14 setTimeUntilSign:a5];

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didUpdateDistanceUntilSign:a6 timeUntilSign:a4 forStepIndex:a5];
  v15 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxy:(id)a3 didUpdateProceedToRouteDistance:(double)a4 displayString:(id)a5 closestStepIndex:(unint64_t)a6
{
  v19 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = NSStringFromSelector(a2);
    v17 = 138543362;
    v18 = v12;
    _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_INFO, "(%{public}@)", &v17, 0xCu);
  }

  v13 = [(MNNavigationService *)self details];
  [v13 setProceedToRouteDistance:a4];

  v14 = [(MNNavigationService *)self details];
  [v14 setDisplayString:v10];

  v15 = [(MNNavigationService *)self details];
  [v15 setClosestStepIndex:a6];

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didUpdateProceedToRouteDistance:v10 displayString:a6 closestStepIndex:a4];
  v16 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxyDidArrive:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "(%{public}@)", &v8, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationServiceDidArrive:self];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxyDidEnterPreArrivalState:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "(%{public}@)", &v9, 0xCu);
  }

  v7 = [(MNNavigationService *)self details];
  [v7 setIsInPreArrivalState:1];

  [(GEOObserverHashTable *)self->_navigationObservers navigationServiceDidEnterPreArrivalState:self];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxy:(id)a3 didResumeNavigatingFromWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5 reason:(unint64_t)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    v13 = [v10 name];
    v14 = v13;
    if (a6 - 1 > 5)
    {
      v15 = @"Unknown";
    }

    else
    {
      v15 = off_1E842AE50[a6 - 1];
    }

    v19 = 138544131;
    v20 = v12;
    v21 = 2113;
    v22 = v13;
    v23 = 1024;
    v24 = a5;
    v25 = 2112;
    v26 = v15;
    _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEFAULT, "(%{public}@)%{private}@ | legIndex: %d | reason: %@", &v19, 0x26u);
  }

  v16 = [(MNNavigationService *)self details];
  [v16 setIsApproachingWaypoint:0];

  v17 = [(MNNavigationService *)self details];
  [v17 setIsInPreArrivalState:0];

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didResumeNavigatingFromWaypoint:v10 endOfLegIndex:a5 reason:a6];
  v18 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxy:(id)a3 didArriveAtWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    v11 = [v8 name];
    v13 = 138543875;
    v14 = v10;
    v15 = 2113;
    v16 = v11;
    v17 = 1024;
    v18 = a5;
    _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_DEFAULT, "(%{public}@)%{private}@ | legIndex: %d", &v13, 0x1Cu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didArriveAtWaypoint:v8 endOfLegIndex:a5];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxy:(id)a3 didEnterPreArrivalStateForWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    v11 = [v8 name];
    v13 = 138543875;
    v14 = v10;
    v15 = 2113;
    v16 = v11;
    v17 = 1024;
    v18 = a5;
    _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_DEFAULT, "(%{public}@)%{private}@ | legIndex: %d", &v13, 0x1Cu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didEnterPreArrivalStateForWaypoint:v8 endOfLegIndex:a5];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxy:(id)a3 isApproachingEndOfLeg:(unint64_t)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v11 = 138543618;
    v12 = v8;
    v13 = 1024;
    v14 = a4;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@)legIndex: %d", &v11, 0x12u);
  }

  v9 = [(MNNavigationService *)self details];
  [v9 setIsApproachingWaypoint:1];

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self isApproachingEndOfLeg:a4];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxyDidFinishLocationUpdate:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = NSStringFromSelector(a2);
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEBUG, "(%{public}@)", &v8, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationServiceDidFinishLocationUpdate:self];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxy:(id)a3 didUpdateDistanceUntilManeuver:(double)a4 timeUntilManeuver:(double)a5 forStepIndex:(unint64_t)a6
{
  v22 = *MEMORY[0x1E69E9840];
  v11 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = NSStringFromSelector(a2);
    v16 = 138543874;
    v17 = v12;
    v18 = 2048;
    v19 = a4;
    v20 = 2048;
    v21 = a5;
    _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_INFO, "(%{public}@)| %0.1f meters, %0.1f seconds", &v16, 0x20u);
  }

  v13 = [(MNNavigationService *)self details];
  [v13 setDistanceUntilManeuver:a4];

  v14 = [(MNNavigationService *)self details];
  [v14 setTimeUntilManeuver:a5];

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didUpdateDistanceUntilManeuver:a6 timeUntilManeuver:a4 forStepIndex:a5];
  v15 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxy:(id)a3 didUpdateDisplayedStepIndex:(unint64_t)a4 segmentIndex:(unint64_t)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v9 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    v13 = 138543874;
    v14 = v10;
    v15 = 1024;
    v16 = a4;
    v17 = 1024;
    v18 = a5;
    _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_DEFAULT, "(%{public}@)%d, %d", &v13, 0x18u);
  }

  v11 = [(MNNavigationService *)self details];
  [v11 setDisplayedStepIndex:a4];

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didUpdateDisplayedStepIndex:a4 segmentIndex:a5];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxy:(id)a3 didFailWithError:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(a2);
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "(%{public}@)", &v10, 0xCu);
  }

  [(MNNavigationServiceProxy *)self->_proxy stopNavigationWithReason:1];
  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didFailWithError:v6];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxyWillResumeFromPauseNavigation:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = NSStringFromSelector(a2);
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "(%{public}@)", &v8, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationServiceWillResumeFromPause:self];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxyWillPauseNavigation:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = NSStringFromSelector(a2);
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "(%{public}@)", &v8, 0xCu);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationServiceWillPause:self];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxy:(id)a3 didUpdateNavigationDetails:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v27 = 138543362;
    v28 = v8;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@)", &v27, 0xCu);
  }

  v9 = [(MNNavigationService *)self details];
  v10 = [v9 state];

  v11 = [(MNNavigationService *)self details];
  v12 = [v11 navigationState];

  if (v10 != [v6 state])
  {
    v13 = [v6 navigationType];
    v14 = [(MNNavigationService *)self details];
    [v14 setDesiredNavigationType:v13];

    -[GEOObserverHashTable navigationService:willChangeFromState:toState:](self->_navigationObservers, "navigationService:willChangeFromState:toState:", self, v10, [v6 state]);
  }

  if (v6)
  {
    v15 = [(MNNavigationService *)self details];
    [v15 copySerializableValuesFrom:v6];

    v16 = MNGetMNNavigationServiceLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [(MNNavigationService *)self details];
      v27 = 138412290;
      v28 = v17;
      _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_INFO, "Updated navigation details: %@", &v27, 0xCu);
    }

    v18 = [(MNNavigationService *)self details];
    v19 = [v18 routeLookupIDs];

    if ([v19 count])
    {
      v20 = [v19 componentsJoinedByString:{@", "}];
    }

    else
    {
      v20 = @"none";
    }

    v21 = MNGetMNNavigationServiceLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v27 = 138412290;
      v28 = v20;
      _os_log_impl(&dword_1D311E000, v21, OS_LOG_TYPE_INFO, "Known route IDs: (%@)", &v27, 0xCu);
    }
  }

  if (v12 != [v6 navigationState])
  {
    -[GEOObserverHashTable navigationService:didChangeNavigationState:](self->_navigationObservers, "navigationService:didChangeNavigationState:", self, [v6 navigationState]);
  }

  if (v10 != [v6 state])
  {
    -[GEOObserverHashTable navigationService:didChangeFromState:toState:](self->_navigationObservers, "navigationService:didChangeFromState:toState:", self, v10, [v6 state]);
    if ([v6 state] == 2)
    {
      v22 = MNGetMNNavigationServiceLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = NSStringFromSelector(sel_navigationService_didUpdatePreviewRoutes_withSelectedRouteIndex_);
        v27 = 138477827;
        v28 = v23;
        _os_log_impl(&dword_1D311E000, v22, OS_LOG_TYPE_INFO, "%{private}@", &v27, 0xCu);
      }

      navigationObservers = self->_navigationObservers;
      v25 = [v6 previewRoutes];
      -[GEOObserverHashTable navigationService:didUpdatePreviewRoutes:withSelectedRouteIndex:](navigationObservers, "navigationService:didUpdatePreviewRoutes:withSelectedRouteIndex:", self, v25, [v6 selectedPreviewRouteIndex]);
    }
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationServiceDidSynchronize:self];

  v26 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxy:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v9 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    if (a4 - 1 > 5)
    {
      v11 = @"Stopped";
    }

    else
    {
      v11 = off_1E842AC68[a4 - 1];
    }

    v12 = v11;
    if (a5 - 1 > 5)
    {
      v13 = @"Stopped";
    }

    else
    {
      v13 = off_1E842AC68[a5 - 1];
    }

    v14 = v13;
    *buf = 138543874;
    v24 = v10;
    v25 = 2112;
    v26 = v12;
    v27 = 2112;
    v28 = v14;
    _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_DEFAULT, "(%{public}@)'%@' to '%@'", buf, 0x20u);
  }

  v15 = [(MNNavigationService *)self details];
  [v15 setState:a5];

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self didChangeFromState:a4 toState:a5];
  if (!a5)
  {
    v16 = [(MNNavigationServiceRemoteProxy *)self->_remoteProxy interruptionDates];
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__MNNavigationService_navigationServiceProxy_didChangeFromState_toState___block_invoke;
    block[3] = &unk_1E84309E8;
    block[4] = self;
    v21 = v16;
    v22 = a4;
    v18 = v16;
    dispatch_async(queue, block);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __73__MNNavigationService_navigationServiceProxy_didChangeFromState_toState___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _resetDetails];
  if ([*(a1 + 40) count] && *(a1 + 48) >= 3uLL)
  {
    v6[0] = @"MNErrorInternalDescriptionKey";
    v6[1] = @"MNErrorInterruptionDatesKey";
    v2 = *(a1 + 40);
    v7[0] = @"Interruptions to the navigation service were detected";
    v7[1] = v2;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
    v4 = [MEMORY[0x1E696ABC0] _navigation_errorWithCode:10 userInfo:v3];
    [*(*(a1 + 32) + 16) navigationService:*(a1 + 32) didFailWithError:v4];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)navigationServiceProxy:(id)a3 willChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    if (a4 - 1 > 5)
    {
      v11 = @"Stopped";
    }

    else
    {
      v11 = off_1E842AC68[a4 - 1];
    }

    v12 = v11;
    if (a5 - 1 > 5)
    {
      v13 = @"Stopped";
    }

    else
    {
      v13 = off_1E842AC68[a5 - 1];
    }

    v14 = v13;
    v16 = 138543874;
    v17 = v10;
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = v14;
    _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_DEFAULT, "(%{public}@)'%@' to '%@'", &v16, 0x20u);
  }

  [(GEOObserverHashTable *)self->_navigationObservers navigationService:self willChangeFromState:a4 toState:a5];
  v15 = *MEMORY[0x1E69E9840];
}

- (id)_clientProxy
{
  clientProxy = self->_clientProxy;
  if (!clientProxy)
  {
    v4 = objc_alloc_init(MNNavigationClientProxy);
    v5 = self->_clientProxy;
    self->_clientProxy = v4;

    clientProxy = self->_clientProxy;
  }

  return clientProxy;
}

- (void)setSimulationPosition:(double)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = NSStringFromSelector(a2);
    v11 = 138412546;
    v12 = v7;
    v13 = 2048;
    v14 = a3;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "%@ [%g]", &v11, 0x16u);
  }

  if (a3 < 0.0 || a3 > 1.0)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Only values between [0, 1] are valid."];
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 136316162;
      v12 = "[MNNavigationService setSimulationPosition:]";
      v13 = 2080;
      v14 = COERCE_DOUBLE("/Library/Caches/com.apple.xbs/Sources/Navigation/Interfaces/MNNavigationService.m");
      v15 = 1024;
      v16 = 900;
      v17 = 2080;
      v18 = "0 <= position && position <= 1";
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", &v11, 0x30u);
    }
  }

  [(MNNavigationServiceProxy *)self->_proxy setSimulationPosition:a3];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setSimulationSpeedMultiplier:(double)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = NSStringFromSelector(a2);
    v9 = 138412546;
    v10 = v7;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "%@ [%g]", &v9, 0x16u);
  }

  [(MNNavigationServiceProxy *)self->_proxy setSimulationSpeedMultiplier:a3];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setSimulationSpeedOverride:(double)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = NSStringFromSelector(a2);
    v9 = 138412546;
    v10 = v7;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "%@ [%g]", &v9, 0x16u);
  }

  [(MNNavigationServiceProxy *)self->_proxy setSimulationSpeedOverride:a3];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)recordPedestrianTracePath:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "%@", &v9, 0xCu);
  }

  [(MNNavigationServiceProxy *)self->_proxy recordPedestrianTracePath:v5];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)recordTraceBookmarkAtCurrentPositionWthScreenshotData:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "%@", &v9, 0xCu);
  }

  [(MNNavigationServiceProxy *)self->_proxy recordTraceBookmarkAtCurrentPositionWthScreenshotData:v5];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setTracePlaybackSpeed:(double)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v9 = 138412546;
    v10 = v7;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "%@, %g", &v9, 0x16u);
  }

  [(MNNavigationServiceProxy *)self->_proxy setTracePlaybackSpeed:a3];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setTracePosition:(double)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "%@", &v9, 0xCu);
  }

  [(MNNavigationServiceProxy *)self->_proxy setTracePosition:a3];
  v8 = *MEMORY[0x1E69E9840];
}

- (double)tracePosition
{
  v2 = [(MNNavigationService *)self details];
  [v2 tracePosition];
  v4 = v3;

  return v4;
}

- (BOOL)traceIsPlaying
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 traceIsPlaying];

  return v3;
}

- (NSArray)traceBookmarks
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 traceBookmarks];

  return v3;
}

- (double)traceDuration
{
  v2 = [(MNNavigationService *)self details];
  [v2 traceDuration];
  v4 = v3;

  return v4;
}

- (NSString)tracePath
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 tracePath];

  return v3;
}

- (MNVehicleParkingInfo)vehicleParkingInfo
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 vehicleParkingInfo];

  return v3;
}

- (GEOResumeRouteHandle)resumeRouteHandle
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 resumeRouteHandle];

  return v3;
}

- (MNGuidanceLaneInfo)activeLaneInfo
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 activeLaneInfo];

  return v3;
}

- (BOOL)isDetour
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 isDetour];

  return v3;
}

- (NSString)originalDestinationName
{
  v2 = [(MNNavigationService *)self originalDestination];
  v3 = [v2 navDisplayName];

  return v3;
}

- (GEOComposedWaypoint)originalDestination
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 originalRoute];
  v4 = [v3 destination];

  return v4;
}

- (NSString)destinationName
{
  v2 = [(MNNavigationService *)self destination];
  v3 = [v2 navDisplayName];

  return v3;
}

- (GEOComposedWaypoint)originalOrigin
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 originalRoute];
  v4 = [v3 origin];

  return v4;
}

- (GEOComposedWaypoint)origin
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 currentRoute];
  v4 = [v3 origin];

  return v4;
}

- (int64_t)upcomingAnchorPointIndex
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 upcomingAnchorPointIndex];

  return v3;
}

- (double)timeUntilManeuver
{
  v2 = [(MNNavigationService *)self details];
  [v2 timeUntilManeuver];
  v4 = v3;

  return v4;
}

- (double)timeUntilSign
{
  v2 = [(MNNavigationService *)self details];
  [v2 timeUntilSign];
  v4 = v3;

  return v4;
}

- (double)distanceUntilSign
{
  v2 = [(MNNavigationService *)self details];
  [v2 distanceUntilSign];
  v4 = v3;

  return v4;
}

- (void)resumeRealtimeUpdates
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = NSStringFromSelector(a2);
    v7 = 138477827;
    v8 = v5;
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_INFO, "%{private}@", &v7, 0xCu);
  }

  [(MNNavigationServiceProxy *)self->_proxy resumeRealtimeUpdatesForSubscriber:self->_uuid];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)pauseRealtimeUpdates
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = NSStringFromSelector(a2);
    v7 = 138477827;
    v8 = v5;
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_INFO, "%{private}@", &v7, 0xCu);
  }

  [(MNNavigationServiceProxy *)self->_proxy pauseRealtimeUpdatesForSubscriber:self->_uuid];
  v6 = *MEMORY[0x1E69E9840];
}

- (id)realtimeUpdatesForRoutes:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v19 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = v3;
    obj = v3;
    v22 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v22)
    {
      v20 = *v28;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v27 + 1) + 8 * i);
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v6 = self->_realtimeUpdates;
          v7 = [(NSSet *)v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v24;
            while (2)
            {
              for (j = 0; j != v8; ++j)
              {
                if (*v24 != v9)
                {
                  objc_enumerationMutation(v6);
                }

                v11 = *(*(&v23 + 1) + 8 * j);
                v12 = [v11 routeID];
                v13 = [v5 uniqueRouteID];
                v14 = [v12 isEqual:v13];

                if (v14)
                {
                  [v19 addObject:v11];
                  goto LABEL_17;
                }
              }

              v8 = [(NSSet *)v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
              if (v8)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:
        }

        v22 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v22);
    }

    v3 = v17;
  }

  else
  {
    v19 = [MEMORY[0x1E695DFD8] setWithArray:MEMORY[0x1E695E0F0]];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)etaRouteForRoute:(id)a3
{
  v4 = a3;
  v5 = [(MNNavigationService *)self details];
  v6 = [v5 routeInfoForRoute:v4];

  v7 = [v6 etaRoute];

  return v7;
}

- (unint64_t)alternateRouteIndexForRoute:(id)a3
{
  v4 = a3;
  v5 = [(MNNavigationService *)self details];
  v6 = [v5 routeInfoForRoute:v4];

  if (v6)
  {
    v7 = [v6 alternateRouteIndex];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (id)batteryChargeInfoForRoute:(id)a3
{
  v4 = a3;
  v5 = [(MNNavigationService *)self details];
  v6 = [v5 routeInfoForRoute:v4];

  v7 = [v6 batteryChargeInfo];

  return v7;
}

- (id)remainingDistanceInfoForRoute:(id)a3
{
  v4 = a3;
  v5 = [(MNNavigationService *)self details];
  v6 = [v5 routeInfoForRoute:v4];

  v7 = [v6 remainingDistanceInfo];

  return v7;
}

- (id)displayETAInfoForRoute:(id)a3
{
  v4 = a3;
  v5 = [(MNNavigationService *)self details];
  v6 = [v5 routeInfoForRoute:v4];

  v7 = [v6 displayETAInfo];

  return v7;
}

- ($212C09783140BCCD23384160D545CE0D)originalRouteDivergenceCoordinate
{
  v3 = [(MNNavigationService *)self details];
  if ([v3 isFollowingOriginalRoute])
  {
    v4 = *MEMORY[0x1E69A1918];
  }

  else
  {
    v5 = [(MNNavigationService *)self details];
    v4 = [v5 lastOriginalRouteCoordinate];
  }

  return v4;
}

- (GEOComposedRoute)originalRoute
{
  v3 = [(MNNavigationService *)self details];
  if ([v3 isFollowingOriginalRoute])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(MNNavigationService *)self details];
    v4 = [v5 originalRoute];
  }

  return v4;
}

- (unint64_t)reconnectionRouteIndex
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 reconnectionRouteIndex];

  return v3;
}

- (unint64_t)routeIndex
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 routeIndex];

  return v3;
}

- (GEODirectionsRequest)currentRequest
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 directionsRequest];

  return v3;
}

- (BOOL)isApproachingWaypoint
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 isApproachingWaypoint];

  return v3;
}

- (BOOL)isResumingMultipointRoute
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 isResumingMultipointRoute];

  return v3;
}

- (int)desiredTransportType
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 desiredTransportType];

  return v3;
}

- (int64_t)desiredNavigationType
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 desiredNavigationType];

  return v3;
}

- (unint64_t)voiceGuidanceLevel
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 voiceGuidanceLevel];

  return v3;
}

- (BOOL)isInPreArrivalState
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 isInPreArrivalState];

  return v3;
}

- (BOOL)isTrackingCurrentLocation
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 currentRoute];
  v4 = [v3 origin];
  v5 = [v4 isCurrentLocation];

  return v5;
}

- (int64_t)navigationType
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 navigationType];

  return v3;
}

- (void)enableNavigationCapability:(unint64_t)a3 reason:(unint64_t)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (a3)
    {
      v26 = a4;
      v8 = [MEMORY[0x1E695DF70] array];
      v9 = a3;
      while (1)
      {
        v10 = (((v9 << 63) >> 63) & @"ETA Updates");
        if ((v9 & 2) != 0)
        {
          v10 = @"Rerouting";
        }

        if ((v9 & 4) != 0)
        {
          v10 = @"Location Propagation";
        }

        if ((v9 & 8) != 0)
        {
          v10 = @"Sending CoreLocation Route Hints";
        }

        v11 = (v9 & 0x10) != 0 ? @"Offline Management" : v10;
        if ((v9 & 0x20) == 0)
        {
          break;
        }

        v12 = v9 & 0xFFFFFFFFFFFFFFC0;
        v11 = @"Virtual Garage";
        if ((v9 & 0x10000) != 0)
        {
          goto LABEL_18;
        }

LABEL_19:
        [v8 addObject:v11];

        v9 = v12;
        if (!v12)
        {
          v13 = [v8 componentsJoinedByString:@" | "];

          a4 = v26;
          goto LABEL_22;
        }
      }

      v12 = v9 & 0xFFFFFFFFFFFFFFE0;
      if ((v9 & 0x10000) == 0)
      {
        if (!v11)
        {
          v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown flags (%d)", v12];
        }

        goto LABEL_19;
      }

LABEL_18:
      v12 &= 0xFFFFFFFFFFFEFFE0;
      v11 = @"New Map Matcher";
      goto LABEL_19;
    }

    v13 = @"None";
LABEL_22:
    v14 = @"Thermal Mitigation";
    if (!a4)
    {
      v14 = @"Unknown";
    }

    *buf = 138412546;
    v28 = v13;
    v29 = 2112;
    v30 = v14;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "enableNavigationCapability:%@ reason: %@", buf, 0x16u);
  }

  disabledCapabilities = self->_disabledCapabilities;
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v17 = [(NSMutableDictionary *)disabledCapabilities objectForKey:v16];

  if (v17)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    v19 = [v17 containsObject:v18];

    if (v19)
    {
      v20 = [v17 mutableCopy];
      v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
      [v20 removeObject:v21];

      if ([v20 count])
      {
        v22 = self->_disabledCapabilities;
        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
        [(NSMutableDictionary *)v22 setObject:v20 forKey:v23];
      }

      else
      {
        [(MNNavigationServiceProxy *)self->_proxy enableNavigationCapability:a3];
        v24 = self->_disabledCapabilities;
        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
        [(NSMutableDictionary *)v24 removeObjectForKey:v23];
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)disableNavigationCapability:(unint64_t)a3 reason:(unint64_t)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (a3)
    {
      v28 = self;
      v8 = [MEMORY[0x1E695DF70] array];
      v29 = a3;
      v9 = a3;
      while (1)
      {
        v10 = (((v9 << 63) >> 63) & @"ETA Updates");
        if ((v9 & 2) != 0)
        {
          v10 = @"Rerouting";
        }

        if ((v9 & 4) != 0)
        {
          v10 = @"Location Propagation";
        }

        if ((v9 & 8) != 0)
        {
          v10 = @"Sending CoreLocation Route Hints";
        }

        v11 = (v9 & 0x10) != 0 ? @"Offline Management" : v10;
        if ((v9 & 0x20) == 0)
        {
          break;
        }

        v12 = v9 & 0xFFFFFFFFFFFFFFC0;
        v11 = @"Virtual Garage";
        if ((v9 & 0x10000) != 0)
        {
          goto LABEL_18;
        }

LABEL_19:
        [v8 addObject:v11];

        v9 = v12;
        if (!v12)
        {
          v13 = [v8 componentsJoinedByString:@" | "];

          self = v28;
          a3 = v29;
          goto LABEL_22;
        }
      }

      v12 = v9 & 0xFFFFFFFFFFFFFFE0;
      if ((v9 & 0x10000) == 0)
      {
        if (!v11)
        {
          v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown flags (%d)", v12];
        }

        goto LABEL_19;
      }

LABEL_18:
      v12 &= 0xFFFFFFFFFFFEFFE0;
      v11 = @"New Map Matcher";
      goto LABEL_19;
    }

    v13 = @"None";
LABEL_22:
    v14 = @"Thermal Mitigation";
    if (!a4)
    {
      v14 = @"Unknown";
    }

    *buf = 138412546;
    v31 = v13;
    v32 = 2112;
    v33 = v14;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "disableNavigationCapability:%@ reason: %@", buf, 0x16u);
  }

  disabledCapabilities = self->_disabledCapabilities;
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v17 = [(NSMutableDictionary *)disabledCapabilities objectForKey:v16];

  if (v17)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    v19 = [v17 setByAddingObject:v18];

    v20 = self->_disabledCapabilities;
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v20 setObject:v19 forKey:v21];
  }

  else
  {
    v22 = self->_disabledCapabilities;
    v23 = MEMORY[0x1E695DFD8];
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    v25 = [v23 setWithObject:v24];
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v22 setObject:v25 forKey:v26];

    [(MNNavigationServiceProxy *)self->_proxy disableNavigationCapability:a3];
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)updateForUserIncidentReport:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [v5 type];
    if (v8 >= 0x14)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
    }

    else
    {
      v9 = off_1E842AD68[v8];
    }

    *buf = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "%@ %@", buf, 0x16u);
  }

  [(MNNavigationServiceProxy *)self->_proxy updateForUserIncidentReport:v5];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)setJunctionViewImageWidth:(double)a3 height:(double)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    v11 = 138412802;
    v12 = v9;
    v13 = 2048;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "%@ [%g x %g]", &v11, 0x20u);
  }

  [(MNNavigationServiceProxy *)self->_proxy setJunctionViewImageWidth:a3 height:a4];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)setRideIndex:(unint64_t)a3 forSegmentIndex:(unint64_t)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    v11 = 138412802;
    v12 = v9;
    v13 = 1024;
    v14 = a3;
    v15 = 1024;
    v16 = a4;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "%@ %d, %d", &v11, 0x18u);
  }

  [(MNNavigationServiceProxy *)self->_proxy setRideIndex:a3 forSegmentIndex:a4];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)setDisplayedStepIndex:(unint64_t)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v9 = 138412546;
    v10 = v7;
    v11 = 1024;
    v12 = a3;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "%@ %d", &v9, 0x12u);
  }

  [(MNNavigationServiceProxy *)self->_proxy setDisplayedStepIndex:a3];
  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)guidancePromptsEnabled
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 guidancePromptsEnabled];

  return v3;
}

- (int)headingOrientation
{
  v2 = [(MNNavigationService *)self details];
  v3 = [v2 headingOrientation];

  return v3;
}

- (void)stopCurrentGuidancePrompt
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_DEFAULT, "%@", &v7, 0xCu);
  }

  [(MNNavigationServiceProxy *)self->_proxy stopCurrentGuidancePrompt];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)vibrateForPrompt:(unint64_t)a3 completion:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "%@", &v11, 0xCu);
  }

  [(MNNavigationServiceProxy *)self->_proxy vibrateForPrompt:a3 withReply:v7];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)repeatCurrentTrafficAlert:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "%@", &v9, 0xCu);
  }

  [(MNNavigationServiceProxy *)self->_proxy repeatCurrentGuidanceWithReply:v5];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)repeatCurrentGuidance:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "%@", &v9, 0xCu);
  }

  [(MNNavigationServiceProxy *)self->_proxy repeatCurrentGuidanceWithReply:v5];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setVoiceGuidanceLevelOverride:(unint64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    if (a3 + 1 >= 4)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", a3];
    }

    else
    {
      v8 = off_1E842AD48[a3 + 1];
    }

    *buf = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "%@ %@", buf, 0x16u);
  }

  [(MNNavigationServiceProxy *)self->_proxy setVoiceGuidanceLevelOverride:a3];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)changeUserOptions:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = NSStringFromSelector(a2);
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "%@", &v9, 0xCu);
  }

  [(MNNavigationService *)self setCachedUserOptions:v5];
  [(MNNavigationServiceProxy *)self->_proxy changeUserOptions:v5];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setGuidanceType:(unint64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = v7;
    v9 = @"Full";
    if (a3 == 1)
    {
      v9 = @"Low";
    }

    if (a3 == 2)
    {
      v9 = @"RoutePreview";
    }

    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "%@: %@", &v11, 0x16u);
  }

  [(MNNavigationServiceProxy *)self->_proxy setGuidanceType:a3];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)switchToDestinationRoute
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(MNNavigationService *)self destination];
  v4 = [v3 route];

  v5 = MNGetMNNavigationServiceLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 name];
      v8 = [v4 userProvidedName];
      v9 = [v4 source];
      if ((v9 - 1) > 4)
      {
        v10 = @"Unknown";
      }

      else
      {
        v10 = off_1E842AD20[v9 - 1];
      }

      v12 = 138412802;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "switchToDestinationRoute | destination route: %@ (%@) %@", &v12, 0x20u);
    }

    [(MNNavigationServiceProxy *)self->_proxy switchToDestinationRoute];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_ERROR, "switchToDestinationRoute was called, but the destination does not lead to another route.", &v12, 2u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)switchToRoute:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v7 = [v4 uniqueRouteID];
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "switchToRoute: %@ | %@", &v11, 0x16u);
  }

  v8 = [(MNNavigationService *)self details];
  v9 = [v8 routeInfoForRoute:v4];

  [(MNNavigationServiceProxy *)self->_proxy switchToRoute:v9];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)forceReroute
{
  v3 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "forceReroute", v4, 2u);
  }

  [(MNNavigationServiceProxy *)self->_proxy forceReroute];
}

- (void)resumeOriginalDestination
{
  v3 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "resumeOriginalDestination", v5, 2u);
  }

  v4 = [(MNNavigationService *)self details];
  [v4 setIsDetour:0];

  [(MNNavigationServiceProxy *)self->_proxy resumeOriginalDestination];
}

- (void)updateDestination:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 navDisplayName];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "updateDestination: %@", &v9, 0xCu);
  }

  v7 = [(MNNavigationService *)self details];
  [v7 setIsDetour:1];

  [(MNNavigationServiceProxy *)self->_proxy updateDestination:v4];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)advanceToNextLeg
{
  v3 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_DEFAULT, "advanceToNextLeg", v4, 2u);
  }

  [(MNNavigationServiceProxy *)self->_proxy advanceToNextLeg];
}

- (void)removeWaypointAtIndex:(unint64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [(MNNavigationService *)self details];
  v6 = [v5 currentRoute];
  v7 = [v6 waypoints];
  v8 = [v7 count];

  v9 = MNGetMNNavigationServiceLog();
  v10 = v9;
  if (a3 && v8 > a3)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      v13 = a3;
      _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_DEFAULT, "removeWaypointAtIndex: %lu", &v12, 0xCu);
    }

    [(MNNavigationServiceProxy *)self->_proxy removeWaypointAtIndex:a3];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 134218240;
      v13 = a3;
      v14 = 2048;
      v15 = v8;
      _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "Invalid index for removeWaypointAtIndex: %lu, total number of waypoints: %lu", &v12, 0x16u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)insertWaypoint:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 navDisplayName];
    v8 = 138477827;
    v9 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "insertWaypoint: %{private}@", &v8, 0xCu);
  }

  [(MNNavigationServiceProxy *)self->_proxy insertWaypoint:v4];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)rerouteWithWaypoints:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 count];
    v7 = [v4 valueForKey:@"navDisplayName"];
    v9 = 134218242;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "rerouteWithWaypoints: Number of waypoints is %lu, waypoints: %@", &v9, 0x16u);
  }

  [(MNNavigationServiceProxy *)self->_proxy rerouteWithWaypoints:v4];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)stopNavigationWithReason:(unint64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (a3 - 1 > 9)
    {
      v6 = @"Unknown";
    }

    else
    {
      v6 = off_1E842AC98[a3 - 1];
    }

    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "stopNavigationWithReason: %@", &v8, 0xCu);
  }

  [(MNNavigationServiceProxy *)self->_proxy stopNavigationWithReason:a3];
  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)startNavigationWithDetails:(id)a3 error:(id *)a4
{
  v54[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 description];
    *buf = 138412290;
    *v52 = v8;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "startNavigationWithDetails:error:\n\t%@", buf, 0xCu);
  }

  if ([(MNNavigationService *)self state]< 3)
  {
    v12 = [v6 selectedRouteIndex];
    v13 = [v6 routes];
    v14 = [v13 count];

    if (v12 < v14)
    {
      v15 = [v6 navigationType];
      v16 = [(MNNavigationService *)self details];
      [v16 setDesiredNavigationType:v15];

      v17 = [v6 routes];
      v18 = [v17 objectAtIndexedSubscript:{objc_msgSend(v6, "selectedRouteIndex")}];
      v19 = [v18 transportType];
      v20 = [(MNNavigationService *)self details];
      [v20 setDesiredTransportType:v19];

      v21 = [v6 isResumingMultipointRoute];
      v22 = [(MNNavigationService *)self details];
      [v22 setIsResumingMultipointRoute:v21];

      [(MNNavigationServiceProxy *)self->_proxy startNavigationWithDetails:v6 activeBlock:0];
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v23 = self->_disabledCapabilities;
      v24 = [(NSMutableDictionary *)v23 countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v45;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v45 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v44 + 1) + 8 * i);
            v29 = [(NSMutableDictionary *)self->_disabledCapabilities objectForKey:v28, v44];
            v30 = [v29 count];

            if (v30)
            {
              -[MNNavigationServiceProxy disableNavigationCapability:](self->_proxy, "disableNavigationCapability:", [v28 unsignedLongValue]);
            }
          }

          v25 = [(NSMutableDictionary *)v23 countByEnumeratingWithState:&v44 objects:v48 count:16];
        }

        while (v25);
      }

      v31 = 1;
      goto LABEL_31;
    }

    v32 = MNGetMNNavigationServiceLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [v6 selectedRouteIndex];
      v34 = [v6 routes];
      v35 = [v34 count];
      *buf = 67109376;
      *v52 = v33;
      *&v52[4] = 1024;
      *&v52[6] = v35;
      _os_log_impl(&dword_1D311E000, v32, OS_LOG_TYPE_ERROR, "MNStartNavigationDetails selectedRouteIndex is (%d), but only (%d) routes were provided", buf, 0xEu);
    }

    if (a4)
    {
      v49 = @"startNavigationDetails";
      v50 = v6;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v36 = MEMORY[0x1E696ABC0];
      v37 = 7;
LABEL_30:
      [v36 _navigation_errorWithCode:v37 userInfo:v23];
      *a4 = v31 = 0;
LABEL_31:

      goto LABEL_32;
    }
  }

  else
  {
    v9 = MNGetMNNavigationServiceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [(MNNavigationService *)self state];
      if (v10 - 1 > 5)
      {
        v11 = @"Stopped";
      }

      else
      {
        v11 = off_1E842AC68[v10 - 1];
      }

      v38 = v11;
      *buf = 138412290;
      *v52 = v38;
      _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "startNavigation called when navd is already navigating. navd state: %@", buf, 0xCu);
    }

    if (a4)
    {
      v53 = @"currentState";
      v39 = [(MNNavigationService *)self state];
      if (v39 - 1 > 5)
      {
        v40 = @"Stopped";
      }

      else
      {
        v40 = off_1E842AC68[v39 - 1];
      }

      v41 = v40;
      v54[0] = v41;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];

      v36 = MEMORY[0x1E696ABC0];
      v37 = 6;
      goto LABEL_30;
    }
  }

  v31 = 0;
LABEL_32:

  v42 = *MEMORY[0x1E69E9840];
  return v31;
}

- (void)setRoutesForPreview:(id)a3 selectedRouteIndex:(unint64_t)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 count];
  v8 = MNGetMNNavigationServiceLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    *buf = 67109376;
    v29 = [v6 count];
    v30 = 1024;
    v31 = a4;
    v10 = "setRoutesForPreview:selectedRouteIndex: routes.count = %d, selectedRouteIndex = %d";
    v11 = v8;
    v12 = 14;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    *buf = 67109120;
    v29 = [v6 count];
    v10 = "setRoutesForPreview:selectedRouteIndex: routes.count = %d";
    v11 = v8;
    v12 = 8;
  }

  _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
LABEL_7:

  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * i);
        v20 = [MNActiveRouteInfo alloc];
        v21 = [(MNActiveRouteInfo *)v20 initWithRoute:v19, v23];
        [v13 addObject:v21];
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  [(MNNavigationServiceProxy *)self->_proxy setRoutesForPreview:v13 selectedRouteIndex:a4];
  v22 = *MEMORY[0x1E69E9840];
}

- (id)ticketForDirectionsRequest:(id)a3
{
  v4 = a3;
  v5 = [MNNavigationServiceDirectionsRequestTicket alloc];
  v6 = [(MNNavigationService *)self _clientProxy];
  v7 = [(MNNavigationServiceDirectionsRequestTicket *)v5 initWithProxy:v6 request:v4];

  return v7;
}

- (void)closeForClient:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(MNNavigationServiceRemoteProxy *)self->_remoteProxy isOpenForClient:v4])
  {
    v5 = MNGetMNNavigationServiceLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = objc_opt_class();
      v12 = 2048;
      v13 = v4;
      v6 = v11;
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "closeForClient: '%@' (%p)", &v10, 0x16u);
    }

    [(MNNavigationServiceRemoteProxy *)self->_remoteProxy closeForClient:v4];
    remoteProxy = self->_remoteProxy;
    if (remoteProxy && ![(MNNavigationServiceRemoteProxy *)remoteProxy clientCount])
    {
      v8 = MNGetMNNavigationServiceLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "No more open clients in current process", &v10, 2u);
      }

      [(MNNavigationService *)self _resetDetails];
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)openForClient:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = objc_opt_class();
    v10 = 2048;
    v11 = v4;
    v6 = v9;
    _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_DEFAULT, "openForClient: '%@' (%p)", &v8, 0x16u);
  }

  [(MNNavigationServiceRemoteProxy *)self->_remoteProxy openForClient:v4];
  v7 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MNNavigationService *)self details];
  v6 = [v3 stringWithFormat:@"<%@: %p, details: %@>", v4, self, v5];

  return v6;
}

- (void)dealloc
{
  GEOUnregisterStateCaptureLegacy();
  v3.receiver = self;
  v3.super_class = MNNavigationService;
  [(MNNavigationService *)&v3 dealloc];
}

+ (unint64_t)_hashForProtocol:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AD60] string];
  outCount = 0;
  v5 = protocol_copyMethodDescriptionList(v3, 1, 1, &outCount);
  v6 = v5;
  if (outCount)
  {
    v7 = 0;
    p_types = &v5->types;
    do
    {
      v9 = NSStringFromSelector(*(p_types - 1));
      v10 = *p_types;
      p_types += 2;
      [v4 appendFormat:@"%@%s", v9, v10];

      ++v7;
    }

    while (v7 < outCount);
  }

  free(v6);
  v11 = [v4 hash];

  return v11;
}

+ (unint64_t)daemonInterfaceHash
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__MNNavigationService_Internal__daemonInterfaceHash__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (daemonInterfaceHash_onceToken != -1)
  {
    dispatch_once(&daemonInterfaceHash_onceToken, block);
  }

  return daemonInterfaceHash_daemonInterfaceHash;
}

uint64_t __52__MNNavigationService_Internal__daemonInterfaceHash__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _hashForProtocol:&unk_1F4EEDD48];
  daemonInterfaceHash_daemonInterfaceHash = result;
  return result;
}

+ (unint64_t)clientInterfaceHash
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__MNNavigationService_Internal__clientInterfaceHash__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (clientInterfaceHash_onceToken != -1)
  {
    dispatch_once(&clientInterfaceHash_onceToken, block);
  }

  return clientInterfaceHash_clientInterfaceHash;
}

uint64_t __52__MNNavigationService_Internal__clientInterfaceHash__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _hashForProtocol:&unk_1F4EEA548];
  clientInterfaceHash_clientInterfaceHash = result;
  return result;
}

- (void)_updateWithCallback:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MNNavigationService *)self details];
  [v5 updateWithNavigationServiceCallbackParameters:v4];

  switch([v4 type])
  {
    case 0:
      v6 = MNGetMNNavigationServiceLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_FAULT, "MNNavigationService received Unknown type callback.", &v28, 2u);
      }

      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v28 = 136315650;
        v29 = "[MNNavigationService(CallbackHandling) _updateWithCallback:]";
        v30 = 2080;
        v31 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Navigation Service Internal/MNNavigationService+CallbackHandling.m";
        v32 = 1024;
        v33 = 233;
        _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", &v28, 0x1Cu);
      }

      goto LABEL_109;
    case 1:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MNNavigationService *)self _navigationServiceCallback_DidChangeVoiceGuidanceLevel:v4];
        goto LABEL_110;
      }

      v7 = MNGetMNNavigationServiceLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_109;
      }

      v19 = [v4 type];
      if (v19 > 0x11)
      {
        v9 = @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
      }

      else
      {
        v9 = off_1E842A910[v19];
      }

      goto LABEL_108;
    case 2:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MNNavigationService *)self _navigationServiceCallback_DidEndNavigation:v4];
        goto LABEL_110;
      }

      v7 = MNGetMNNavigationServiceLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_109;
      }

      v15 = [v4 type];
      if (v15 > 0x11)
      {
        v9 = @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
      }

      else
      {
        v9 = off_1E842A910[v15];
      }

      goto LABEL_108;
    case 3:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MNNavigationService *)self _navigationServiceCallback_DidReceiveRoutingServiceError:v4];
        goto LABEL_110;
      }

      v7 = MNGetMNNavigationServiceLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_109;
      }

      v17 = [v4 type];
      if (v17 > 0x11)
      {
        v9 = @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
      }

      else
      {
        v9 = off_1E842A910[v17];
      }

      goto LABEL_108;
    case 4:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MNNavigationService *)self _navigationServiceCallback_DidUpdateArrivalInfo:v4];
        goto LABEL_110;
      }

      v7 = MNGetMNNavigationServiceLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_109;
      }

      v12 = [v4 type];
      if (v12 > 0x11)
      {
        v9 = @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
      }

      else
      {
        v9 = off_1E842A910[v12];
      }

      goto LABEL_108;
    case 5:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MNNavigationService *)self _navigationServiceCallback_DidUpdateBackgroundWalkingRoute:v4];
        goto LABEL_110;
      }

      v7 = MNGetMNNavigationServiceLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_109;
      }

      v21 = [v4 type];
      if (v21 > 0x11)
      {
        v9 = @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
      }

      else
      {
        v9 = off_1E842A910[v21];
      }

      goto LABEL_108;
    case 6:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MNNavigationService *)self _navigationServiceCallback_DidUpdateDisplayETA:v4];
        goto LABEL_110;
      }

      v7 = MNGetMNNavigationServiceLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_109;
      }

      v23 = [v4 type];
      if (v23 > 0x11)
      {
        v9 = @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
      }

      else
      {
        v9 = off_1E842A910[v23];
      }

      goto LABEL_108;
    case 7:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MNNavigationService *)self _navigationServiceCallback_DidUpdateMatchedLocation:v4];
        goto LABEL_110;
      }

      v7 = MNGetMNNavigationServiceLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_109;
      }

      v18 = [v4 type];
      if (v18 > 0x11)
      {
        v9 = @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
      }

      else
      {
        v9 = off_1E842A910[v18];
      }

      goto LABEL_108;
    case 8:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MNNavigationService *)self _navigationServiceCallback_DidUpdateNavTrayGuidance:v4];
        goto LABEL_110;
      }

      v7 = MNGetMNNavigationServiceLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_109;
      }

      v25 = [v4 type];
      if (v25 > 0x11)
      {
        v9 = @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
      }

      else
      {
        v9 = off_1E842A910[v25];
      }

      goto LABEL_108;
    case 9:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MNNavigationService *)self _navigationServiceCallback_DidUpdateResumeRouteHandle:v4];
        goto LABEL_110;
      }

      v7 = MNGetMNNavigationServiceLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_109;
      }

      v14 = [v4 type];
      if (v14 > 0x11)
      {
        v9 = @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
      }

      else
      {
        v9 = off_1E842A910[v14];
      }

      goto LABEL_108;
    case 10:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MNNavigationService *)self _navigationServiceCallback_DidUpdateStepIndex:v4];
        goto LABEL_110;
      }

      v7 = MNGetMNNavigationServiceLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_109;
      }

      v24 = [v4 type];
      if (v24 > 0x11)
      {
        v9 = @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
      }

      else
      {
        v9 = off_1E842A910[v24];
      }

      goto LABEL_108;
    case 11:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MNNavigationService *)self _navigationServiceCallback_DidUpdateTargetLegIndex:v4];
        goto LABEL_110;
      }

      v7 = MNGetMNNavigationServiceLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_109;
      }

      v11 = [v4 type];
      if (v11 > 0x11)
      {
        v9 = @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
      }

      else
      {
        v9 = off_1E842A910[v11];
      }

      goto LABEL_108;
    case 12:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MNNavigationService *)self _navigationServiceCallback_DidUpdateTrafficIncidentAlert:v4];
        goto LABEL_110;
      }

      v7 = MNGetMNNavigationServiceLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_109;
      }

      v13 = [v4 type];
      if (v13 > 0x11)
      {
        v9 = @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
      }

      else
      {
        v9 = off_1E842A910[v13];
      }

      goto LABEL_108;
    case 13:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MNNavigationService *)self _navigationServiceCallback_DidUpdateUpcomingAnchorPointIndex:v4];
        goto LABEL_110;
      }

      v7 = MNGetMNNavigationServiceLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_109;
      }

      v22 = [v4 type];
      if (v22 > 0x11)
      {
        v9 = @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
      }

      else
      {
        v9 = off_1E842A910[v22];
      }

      goto LABEL_108;
    case 14:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MNNavigationService *)self _navigationServiceCallback_DidUpdateVehicleParkingInfo:v4];
        goto LABEL_110;
      }

      v7 = MNGetMNNavigationServiceLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_109;
      }

      v10 = [v4 type];
      if (v10 > 0x11)
      {
        v9 = @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
      }

      else
      {
        v9 = off_1E842A910[v10];
      }

      goto LABEL_108;
    case 15:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MNNavigationService *)self _navigationServiceCallback_ShouldEnableIdleTimer:v4];
        goto LABEL_110;
      }

      v7 = MNGetMNNavigationServiceLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_109;
      }

      v16 = [v4 type];
      if (v16 > 0x11)
      {
        v9 = @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
      }

      else
      {
        v9 = off_1E842A910[v16];
      }

      goto LABEL_108;
    case 16:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MNNavigationService *)self _navigationServiceCallback_WillStartNavigation:v4];
        goto LABEL_110;
      }

      v7 = MNGetMNNavigationServiceLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_109;
      }

      v8 = [v4 type];
      if (v8 > 0x11)
      {
        v9 = @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
      }

      else
      {
        v9 = off_1E842A910[v8];
      }

      goto LABEL_108;
    case 17:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MNNavigationService *)self _navigationServiceCallback_WillEndNavigation:v4];
      }

      else
      {
        v7 = MNGetMNNavigationServiceLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          v20 = [v4 type];
          if (v20 > 0x11)
          {
            v9 = @"MNNavigationServiceCallbackType_DidChangeVoiceGuidanceLevel";
          }

          else
          {
            v9 = off_1E842A910[v20];
          }

LABEL_108:
          v26 = v9;
          v28 = 138412546;
          v29 = v26;
          v30 = 2112;
          v31 = objc_opt_class();
          _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_FAULT, "Callback parameters of type '%@' was received, but was not the expected subclass. Received '%@' instead.", &v28, 0x16u);
        }

LABEL_109:
      }

LABEL_110:

      v27 = *MEMORY[0x1E69E9840];
      return;
    default:
      goto LABEL_110;
  }
}

- (void)_navigationServiceCallback_WillStartNavigation:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v21 = NSStringFromSelector(a2);
    v20 = [v5 routeInfo];
    v19 = [v20 route];
    v7 = [v19 transportType];
    if (v7 >= 7)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v7];
    }

    else
    {
      v8 = off_1E842B160[v7];
    }

    v18 = v8;
    v9 = [(__CFString *)v8 capitalizedString];
    v10 = [v5 navigationType] - 1;
    if (v10 > 3)
    {
      v11 = @"None";
    }

    else
    {
      v11 = off_1E842B198[v10];
    }

    v12 = [v5 routeInfo];
    v13 = [v12 routeID];
    v14 = [(MNNavigationService *)self details];
    v15 = [v14 routeLookupIDs];
    v16 = [v15 componentsJoinedByString:{@", "}];
    *buf = 138544386;
    v23 = v21;
    v24 = 2112;
    v25 = v9;
    v26 = 2112;
    v27 = v11;
    v28 = 2112;
    v29 = v13;
    v30 = 2112;
    v31 = v16;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@)%@ %@ | %@\nKnown route IDs: (%@)", buf, 0x34u);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_navigationServiceCallback_WillEndNavigation:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [v5 reason];
    if ((v8 - 1) > 9)
    {
      v9 = @"Unknown";
    }

    else
    {
      v9 = off_1E842B110[v8 - 1];
    }

    v12 = 138543618;
    v13 = v7;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@)%@", &v12, 0x16u);
  }

  v10 = [(MNNavigationService *)self navigationObservers];
  [v10 navigationService:self willEndWithReason:{objc_msgSend(v5, "reason")}];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_navigationServiceCallback_ShouldEnableIdleTimer:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v10 = 138543618;
    v11 = v7;
    v12 = 1024;
    v13 = [v5 shouldEnable];
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@)%d", &v10, 0x12u);
  }

  v8 = [(MNNavigationService *)self navigationObservers];
  [v8 navigationService:self shouldEnableIdleTimer:{objc_msgSend(v5, "shouldEnable")}];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_navigationServiceCallback_DidUpdateVehicleParkingInfo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [v5 vehicleParkingInfo];
    v14 = 138543618;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@)%@", &v14, 0x16u);
  }

  v9 = [v5 vehicleParkingInfo];
  v10 = [(MNNavigationService *)self details];
  [v10 setVehicleParkingInfo:v9];

  v11 = [(MNNavigationService *)self navigationObservers];
  v12 = [v5 vehicleParkingInfo];
  [v11 navigationService:self didUpdateVehicleParkingInfo:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_navigationServiceCallback_DidUpdateUpcomingAnchorPointIndex:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v10 = 138543618;
    v11 = v7;
    v12 = 1024;
    v13 = [v5 anchorPointIndex];
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@)%d", &v10, 0x12u);
  }

  v8 = [(MNNavigationService *)self navigationObservers];
  [v8 navigationService:self didUpdateUpcomingAnchorPointIndex:{objc_msgSend(v5, "anchorPointIndex")}];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_navigationServiceCallback_DidUpdateTrafficIncidentAlert:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 trafficIncidentAlert];
  v7 = v6;
  if (v6)
  {
    v8 = MEMORY[0x1E696AFB0];
    v9 = [v6 alertID];
    v10 = [v8 _geo_uuidForData:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    *buf = 138543874;
    v22 = v12;
    v23 = 1024;
    v24 = [v5 updateType];
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEFAULT, "(%{public}@)%d (%@)", buf, 0x1Cu);
  }

  v13 = [v5 updateType];
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = [(MNNavigationService *)self navigationObservers];
      [v14 navigationService:self didDismissTrafficIncidentAlert:v7];
      goto LABEL_15;
    }

    if (v13 == 3)
    {
      v14 = [(MNNavigationService *)self navigationObservers];
      [v14 navigationService:self didInvalidateTrafficIncidentAlert:v7];
      goto LABEL_15;
    }
  }

  else
  {
    if (!v13)
    {
      v15 = [(MNNavigationService *)self navigationObservers];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __98__MNNavigationService_CallbackHandling___navigationServiceCallback_DidUpdateTrafficIncidentAlert___block_invoke;
      v17[3] = &unk_1E842B0D0;
      v18 = v10;
      v19 = self;
      v20 = v7;
      [v15 navigationService:self didReceiveTrafficIncidentAlert:v20 responseCallback:v17];

      v14 = v18;
      goto LABEL_15;
    }

    if (v13 == 1)
    {
      v14 = [(MNNavigationService *)self navigationObservers];
      [v14 navigationService:self didUpdateTrafficIncidentAlert:v7];
LABEL_15:
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __98__MNNavigationService_CallbackHandling___navigationServiceCallback_DidUpdateTrafficIncidentAlert___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8[0] = 67109378;
    v8[1] = a2;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_DEFAULT, "acceptReroute: %d, %@", v8, 0x12u);
  }

  v6 = [*(a1 + 40) proxy];
  [v6 acceptReroute:a2 forTrafficIncidentAlert:*(a1 + 48)];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_navigationServiceCallback_DidUpdateTargetLegIndex:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v10 = 138543618;
    v11 = v7;
    v12 = 1024;
    v13 = [v5 targetLegIndex];
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@)%d", &v10, 0x12u);
  }

  v8 = [(MNNavigationService *)self navigationObservers];
  [v8 navigationService:self didUpdateTargetLegIndex:{objc_msgSend(v5, "targetLegIndex")}];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_navigationServiceCallback_DidUpdateStepIndex:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 stepIndex];
  v7 = [v5 segmentIndex];

  v8 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    v12 = 138543874;
    v13 = v9;
    v14 = 1024;
    v15 = v6;
    v16 = 1024;
    v17 = v7;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "(%{public}@)%d, %d", &v12, 0x18u);
  }

  v10 = [(MNNavigationService *)self navigationObservers];
  [v10 navigationService:self didUpdateStepIndex:v6 segmentIndex:v7];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_navigationServiceCallback_DidUpdateResumeRouteHandle:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [v5 resumeRouteHandle];
    v12 = 138543618;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@)%@", &v12, 0x16u);
  }

  v9 = [(MNNavigationService *)self navigationObservers];
  v10 = [v5 resumeRouteHandle];
  [v9 navigationService:self didUpdateResumeRouteHandle:v10];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_navigationServiceCallback_DidUpdateNavTrayGuidance:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [v5 navTrayGuidanceEvent];
    v12 = 138543618;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@)%@", &v12, 0x16u);
  }

  v9 = [(MNNavigationService *)self navigationObservers];
  v10 = [v5 navTrayGuidanceEvent];
  [v9 navigationService:self didUpdateNavTrayGuidance:v10];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_navigationServiceCallback_DidUpdateMatchedLocation:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = [a3 location];
  v6 = MNGetPuckTrackingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 uuid];
    v19 = 138412546;
    v20 = v7;
    v21 = 2080;
    v22 = "[MNNavigationService(CallbackHandling) _navigationServiceCallback_DidUpdateMatchedLocation:]";
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "[MN] [%@] - Processing - in %s", &v19, 0x16u);
  }

  v8 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = NSStringFromSelector(a2);
    [v5 coordinate];
    v11 = v10;
    [v5 coordinate];
    v13 = v12;
    [v5 course];
    v15 = v14;
    v16 = [v5 routeID];
    v19 = 138413314;
    v20 = v9;
    v21 = 2048;
    v22 = v11;
    v23 = 2048;
    v24 = v13;
    v25 = 1024;
    v26 = v15;
    v27 = 2112;
    v28 = v16;
    _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_INFO, "(%@) %0.6f, %0.6f | %d | route ID: %@", &v19, 0x30u);
  }

  v17 = [(MNNavigationService *)self navigationObservers];
  [v17 navigationService:self didUpdateMatchedLocation:v5];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_navigationServiceCallback_DidUpdateDisplayETA:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 displayETAInfo];
  v7 = [v5 routeDistanceInfo];
  v8 = [v5 batteryChargeInfo];

  v9 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = NSStringFromSelector(a2);
    v11 = [v6 routeID];
    v17 = 138544130;
    v18 = v10;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = v11;
    _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_INFO, "(%{public}@)%@ | %@ | %@", &v17, 0x2Au);
  }

  v12 = [(MNNavigationService *)self details];
  v13 = [v6 routeID];
  v14 = [v12 routeInfoForID:v13];

  if (v14)
  {
    [v14 setDisplayETAInfo:v6];
    [v14 setRemainingDistanceInfo:v7];
    [v14 setBatteryChargeInfo:v8];
    v15 = [(MNNavigationService *)self navigationObservers];
    [v15 navigationService:self didUpdateDisplayETA:v6 remainingDistance:v7 batteryChargeInfo:v8];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_navigationServiceCallback_DidUpdateBackgroundWalkingRoute:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v19 = [v5 routeInfo];
    v8 = [v19 route];
    v9 = [v8 name];
    v10 = [v5 routeInfo];
    v11 = [v10 routeID];
    v12 = [v5 routeInfo];
    v13 = [v12 displayETAInfo];
    *buf = 138544130;
    v21 = v7;
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = v13;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@)%@ | %@ | %@", buf, 0x2Au);
  }

  v14 = [v5 routeInfo];
  v15 = [(MNNavigationService *)self details];
  [v15 setBackgroundWalkingRouteInfo:v14];

  v16 = [(MNNavigationService *)self navigationObservers];
  v17 = [(MNNavigationService *)self alternateWalkingRoute];
  [v16 navigationService:self didUpdateAlternateWalkingRoute:v17];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_navigationServiceCallback_DidUpdateArrivalInfo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [v5 arrivalInfo];
    v14 = 138543618;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@)%@", &v14, 0x16u);
  }

  v9 = [v5 arrivalInfo];
  v10 = [(MNNavigationService *)self details];
  [v10 setArrivalInfo:v9];

  v11 = [(MNNavigationService *)self navigationObservers];
  v12 = [v5 arrivalInfo];
  [v11 navigationService:self didUpdateArrivalInfo:v12 previousState:{objc_msgSend(v5, "previousState")}];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_navigationServiceCallback_DidReceiveRoutingServiceError:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [v5 error];
    v12 = 138543618;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_ERROR, "(%{public}@) %@", &v12, 0x16u);
  }

  v9 = [(MNNavigationService *)self navigationObservers];
  v10 = [v5 error];
  [v9 navigationService:self didReceiveRoutingServiceError:v10];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_navigationServiceCallback_DidEndNavigation:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [v5 reason];
    if ((v8 - 1) > 9)
    {
      v9 = @"Unknown";
    }

    else
    {
      v9 = off_1E842B110[v8 - 1];
    }

    v12 = 138543618;
    v13 = v7;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@)%@", &v12, 0x16u);
  }

  v10 = [(MNNavigationService *)self navigationObservers];
  [v10 navigationService:self didEndWithReason:{objc_msgSend(v5, "reason")}];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_navigationServiceCallback_DidChangeVoiceGuidanceLevel:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MNGetMNNavigationServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [v5 voiceGuidanceLevel];
    if ((v8 + 1) >= 4)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", v8];
    }

    else
    {
      v9 = off_1E842B0F0[v8 + 1];
    }

    *buf = 138543618;
    v13 = v7;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@)%@", buf, 0x16u);
  }

  v10 = [(MNNavigationService *)self navigationObservers];
  [v10 navigationService:self didChangeVoiceGuidanceLevel:{objc_msgSend(v5, "voiceGuidanceLevel")}];

  v11 = *MEMORY[0x1E69E9840];
}

@end