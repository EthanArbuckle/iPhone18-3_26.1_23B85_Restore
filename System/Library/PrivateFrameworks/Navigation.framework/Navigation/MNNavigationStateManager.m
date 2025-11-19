@interface MNNavigationStateManager
+ (id)sharedManager;
- (BOOL)isStarted;
- (MNNavigationSessionManagerDelegate)navigationDelegate;
- (MNNavigationState)currentState;
- (MNNavigationStateManager)init;
- (id)_initialState;
- (id)navSessionDestination;
- (unint64_t)_stateTypeForState:(id)a3;
- (unint64_t)currentStateType;
- (void)_changeToDesiredLocationProviderTypeForState:(id)a3;
- (void)_replayStateForNewObserver:(id)a3;
- (void)advanceToNextLeg;
- (void)changeUserOptions:(id)a3;
- (void)dealloc;
- (void)disableNavigationCapability:(unint64_t)a3;
- (void)enableNavigationCapability:(unint64_t)a3;
- (void)forceReroute;
- (void)insertWaypoint:(id)a3;
- (void)pauseRealtimeUpdatesForSubscriber:(id)a3;
- (void)recordPedestrianTracePath:(id)a3;
- (void)recordTraceBookmarkAtCurrentPositionWthScreenshotData:(id)a3;
- (void)registerObserver:(id)a3;
- (void)removeWaypointAtIndex:(unint64_t)a3;
- (void)repeatCurrentGuidanceWithReply:(id)a3;
- (void)repeatCurrentTrafficAlertWithReply:(id)a3;
- (void)rerouteWithWaypoints:(id)a3;
- (void)reset;
- (void)resumeOriginalDestination;
- (void)resumeRealtimeUpdatesForSubscriber:(id)a3;
- (void)setCurrentState:(id)a3;
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
- (void)start;
- (void)startNavigationWithDetails:(id)a3 activeBlock:(id)a4;
- (void)stopCurrentGuidancePrompt;
- (void)stopNavigationWithReason:(unint64_t)a3;
- (void)switchToDestinationRoute;
- (void)switchToRoute:(id)a3;
- (void)transitionToState:(id)a3;
- (void)updateDestination:(id)a3;
- (void)updateForUserIncidentReport:(id)a3;
- (void)vibrateForPrompt:(unint64_t)a3 withReply:(id)a4;
@end

@implementation MNNavigationStateManager

- (unint64_t)currentStateType
{
  v2 = [(MNNavigationStateManager *)self currentState];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 type];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)sharedManager
{
  if (sharedManager_once != -1)
  {
    dispatch_once(&sharedManager_once, &__block_literal_global_21209);
  }

  v3 = sharedManager__singleton;

  return v3;
}

- (MNNavigationState)currentState
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__21188;
  v9 = __Block_byref_object_dispose__21189;
  v10 = 0;
  isolater = self->_isolater;
  geo_isolate_sync_data();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (MNNavigationSessionManagerDelegate)navigationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);

  return WeakRetained;
}

- (void)resumeRealtimeUpdatesForSubscriber:(id)a3
{
  v4 = a3;
  v5 = [(MNNavigationStateManager *)self currentState];
  [v5 resumeRealtimeUpdatesForSubscriber:v4];
}

- (void)pauseRealtimeUpdatesForSubscriber:(id)a3
{
  v4 = a3;
  v5 = [(MNNavigationStateManager *)self currentState];
  [v5 pauseRealtimeUpdatesForSubscriber:v4];
}

- (void)setSimulationPosition:(double)a3
{
  v4 = [(MNNavigationStateManager *)self currentState];
  [v4 setSimulationPosition:a3];
}

- (void)setSimulationSpeedMultiplier:(double)a3
{
  v4 = [(MNNavigationStateManager *)self currentState];
  [v4 setSimulationSpeedMultiplier:a3];
}

- (void)setSimulationSpeedOverride:(double)a3
{
  v4 = [(MNNavigationStateManager *)self currentState];
  [v4 setSimulationSpeedOverride:a3];
}

- (void)recordPedestrianTracePath:(id)a3
{
  v4 = a3;
  v5 = [(MNNavigationStateManager *)self currentState];
  [v5 recordPedestrianTracePath:v4];
}

- (void)recordTraceBookmarkAtCurrentPositionWthScreenshotData:(id)a3
{
  v4 = a3;
  v5 = [(MNNavigationStateManager *)self currentState];
  [v5 recordTraceBookmarkAtCurrentPositionWthScreenshotData:v4];
}

- (void)setTracePosition:(double)a3
{
  v4 = [(MNNavigationStateManager *)self currentState];
  [v4 setTracePosition:a3];
}

- (void)setTracePlaybackSpeed:(double)a3
{
  v4 = [(MNNavigationStateManager *)self currentState];
  [v4 setTracePlaybackSpeed:a3];
}

- (void)enableNavigationCapability:(unint64_t)a3
{
  v4 = [(MNNavigationStateManager *)self currentState];
  [v4 enableNavigationCapability:a3];
}

- (void)disableNavigationCapability:(unint64_t)a3
{
  v4 = [(MNNavigationStateManager *)self currentState];
  [v4 disableNavigationCapability:a3];
}

- (void)updateForUserIncidentReport:(id)a3
{
  v4 = a3;
  v5 = [(MNNavigationStateManager *)self currentState];
  [v5 updateForUserIncidentReport:v4];
}

- (void)setJunctionViewImageWidth:(double)a3 height:(double)a4
{
  v6 = [(MNNavigationStateManager *)self currentState];
  [v6 setJunctionViewImageWidth:a3 height:a4];
}

- (void)setRideIndex:(unint64_t)a3 forSegmentIndex:(unint64_t)a4
{
  v6 = [(MNNavigationStateManager *)self currentState];
  [v6 setRideIndex:a3 forSegmentIndex:a4];
}

- (void)setDisplayedStepIndex:(unint64_t)a3
{
  v4 = [(MNNavigationStateManager *)self currentState];
  [v4 setDisplayedStepIndex:a3];
}

- (void)stopCurrentGuidancePrompt
{
  v2 = [(MNNavigationStateManager *)self currentState];
  [v2 stopCurrentGuidancePrompt];
}

- (void)vibrateForPrompt:(unint64_t)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = [(MNNavigationStateManager *)self currentState];
  [v7 vibrateForPrompt:a3 withReply:v6];
}

- (void)repeatCurrentTrafficAlertWithReply:(id)a3
{
  v4 = a3;
  v5 = [(MNNavigationStateManager *)self currentState];
  [v5 repeatCurrentTrafficAlertWithReply:v4];
}

- (void)repeatCurrentGuidanceWithReply:(id)a3
{
  v4 = a3;
  v5 = [(MNNavigationStateManager *)self currentState];
  [v5 repeatCurrentGuidanceWithReply:v4];
}

- (void)setVoiceGuidanceLevelOverride:(unint64_t)a3
{
  v4 = [(MNNavigationStateManager *)self currentState];
  [v4 setVoiceGuidanceLevelOverride:a3];
}

- (void)changeUserOptions:(id)a3
{
  v4 = a3;
  v5 = [(MNNavigationStateManager *)self currentState];
  [v5 changeUserOptions:v4];
}

- (void)setGuidanceType:(unint64_t)a3
{
  v4 = [(MNNavigationStateManager *)self currentState];
  [v4 setGuidanceType:a3];
}

- (void)switchToDestinationRoute
{
  v2 = [(MNNavigationStateManager *)self currentState];
  [v2 switchToDestinationRoute];
}

- (void)switchToRoute:(id)a3
{
  v4 = a3;
  v5 = [(MNNavigationStateManager *)self currentState];
  [v5 switchToRoute:v4];
}

- (void)forceReroute
{
  v2 = [(MNNavigationStateManager *)self currentState];
  [v2 forceReroute];
}

- (void)resumeOriginalDestination
{
  v2 = [(MNNavigationStateManager *)self currentState];
  [v2 resumeOriginalDestination];
}

- (void)updateDestination:(id)a3
{
  v4 = a3;
  v5 = [(MNNavigationStateManager *)self currentState];
  [v5 updateDestination:v4];
}

- (void)advanceToNextLeg
{
  v2 = [(MNNavigationStateManager *)self currentState];
  [v2 advanceToNextLeg];
}

- (void)removeWaypointAtIndex:(unint64_t)a3
{
  v4 = [(MNNavigationStateManager *)self currentState];
  [v4 removeWaypointAtIndex:a3];
}

- (void)insertWaypoint:(id)a3
{
  v4 = a3;
  v5 = [(MNNavigationStateManager *)self currentState];
  [v5 insertWaypoint:v4];
}

- (void)rerouteWithWaypoints:(id)a3
{
  v4 = a3;
  v5 = [(MNNavigationStateManager *)self currentState];
  [v5 rerouteWithWaypoints:v4];
}

- (void)stopNavigationWithReason:(unint64_t)a3
{
  v5 = MNGetMNNavigationStateManagerLog();
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {

    v11 = [(MNNavigationStateManager *)self currentState];
    [v11 stopNavigationWithReason:a3];

    v12 = v8;
  }

  else
  {
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "StopNavigation", "", buf, 2u);
    }

    v9 = [(MNNavigationStateManager *)self currentState];
    [v9 stopNavigationWithReason:a3];

    v10 = v8;
    if (os_signpost_enabled(v10))
    {
      *v13 = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v10, OS_SIGNPOST_INTERVAL_END, v6, "StopNavigation", "", v13, 2u);
    }
  }
}

- (void)startNavigationWithDetails:(id)a3 activeBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MNNavigationStateManager *)self currentState];
  [v8 startNavigationWithDetails:v7 activeBlock:v6];
}

- (void)setRoutesForPreview:(id)a3 selectedRouteIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = MNGetMNNavigationStateManagerLog();
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {

    v13 = [(MNNavigationStateManager *)self currentState];
    [v13 setRoutesForPreview:v6 selectedRouteIndex:a4];

    v14 = v10;
  }

  else
  {
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "SetRoutesForPreview", "", buf, 2u);
    }

    v11 = [(MNNavigationStateManager *)self currentState];
    [v11 setRoutesForPreview:v6 selectedRouteIndex:a4];

    v12 = v10;
    if (os_signpost_enabled(v12))
    {
      *v15 = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v12, OS_SIGNPOST_INTERVAL_END, v8, "SetRoutesForPreview", "", v15, 2u);
    }
  }
}

- (id)_initialState
{
  v2 = [[MNNavigationStateNoDestination alloc] initWithStateManager:self];

  return v2;
}

- (void)_replayStateForNewObserver:(id)a3
{
  v6 = a3;
  v4 = [(MNNavigationStateManager *)self currentState];
  v5 = [v4 type];

  if (objc_opt_respondsToSelector())
  {
    [v6 stateManager:self willChangeFromState:0 toState:v5];
  }

  if (objc_opt_respondsToSelector())
  {
    [v6 stateManager:self didChangeFromState:0 toState:v5];
  }
}

- (BOOL)isStarted
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  isolater = self->_isolater;
  geo_isolate_sync_data();
  v3 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v3;
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (!self->_navigationStateObservers)
  {
    v5 = objc_alloc(MEMORY[0x1E69A22D8]);
    v6 = MNNavigationQueue();
    v7 = [v5 initWithProtocol:&unk_1F4EEC840 queue:v6];
    navigationStateObservers = self->_navigationStateObservers;
    self->_navigationStateObservers = v7;

    v4 = v9;
  }

  [(MNNavigationStateManager *)self _replayStateForNewObserver:v4];
  [(GEOObserverHashTable *)self->_navigationStateObservers registerObserver:v9];
}

- (void)reset
{
  v3 = [(MNNavigationStateManager *)self _initialState];
  [(MNNavigationStateManager *)self transitionToState:v3];
}

- (void)start
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_isStarted)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Start should only be called once."];
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v9 = "[MNNavigationStateManager start]";
      v10 = 2080;
      v11 = "/Library/Caches/com.apple.xbs/Sources/Navigation/NavigationState/MNNavigationStateManager.m";
      v12 = 1024;
      v13 = 78;
      v14 = 2080;
      v15 = "!_isStarted";
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
    }
  }

  v3 = [(MNNavigationStateManager *)self _initialState];
  [(MNNavigationStateManager *)self transitionToState:v3];

  isolater = self->_isolater;
  geo_isolate_sync();
  v5 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v3 = +[MNLocationManager shared];
  [v3 stopAllUpdates];

  v4.receiver = self;
  v4.super_class = MNNavigationStateManager;
  [(MNNavigationStateManager *)&v4 dealloc];
}

- (MNNavigationStateManager)init
{
  v11.receiver = self;
  v11.super_class = MNNavigationStateManager;
  v2 = [(MNNavigationStateManager *)&v11 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69A1B68]) initWithProxiedApplicationBundleId:@"com.apple.Maps"];
    v4 = [v3 overrideTokenWithOfflineCohortId:@"com.apple.Maps"];

    auditToken = v2->_auditToken;
    v2->_auditToken = v4;
    v6 = v4;

    v7 = geo_isolater_create();
    isolater = v2->_isolater;
    v2->_isolater = v7;

    v9 = v2;
  }

  return v2;
}

void __41__MNNavigationStateManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(MNNavigationStateManager);
  v1 = sharedManager__singleton;
  sharedManager__singleton = v0;
}

- (void)setCurrentState:(id)a3
{
  v4 = a3;
  isolater = self->_isolater;
  v7 = v4;
  v6 = v4;
  geo_isolate_sync();
}

void __53__MNNavigationStateManager_Testing__setCurrentState___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3 != *(a1 + 40))
  {
    *(v2 + 16) = 0;

    v5 = *(a1 + 40);
    v6 = (*(a1 + 32) + 16);

    objc_storeStrong(v6, v5);
  }
}

- (unint64_t)_stateTypeForState:(id)a3
{
  if (a3)
  {
    return [a3 type];
  }

  else
  {
    return 0;
  }
}

- (void)_changeToDesiredLocationProviderTypeForState:(id)a3
{
  v6 = a3;
  v3 = +[MNLocationManager shared];
  if (v6)
  {
    v4 = [v6 desiredLocationProviderType];
  }

  else
  {
    v4 = 0;
  }

  if (v4 != [v3 locationProviderType])
  {
    if (v4 > 1)
    {
      switch(v4)
      {
        case 2:
          [v3 useHybridLocationProvider];
          goto LABEL_17;
        case 3:
          v5 = [v6 traceManager];
          [v3 useTraceLocationProvider:v5];
          break;
        case 4:
          v5 = [v6 simulationLocationProvider];
          [v3 useSimulationLocationProvider:v5];
          break;
        default:
          goto LABEL_17;
      }

      goto LABEL_15;
    }

    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_17;
      }

      v5 = [v6 clParameters];
      [v3 useGPSLocationProviderWithCLParameters:v5];
LABEL_15:

      goto LABEL_17;
    }

    [v3 stopAllUpdates];
  }

LABEL_17:
}

- (void)transitionToState:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MNNavigationStateManager *)self currentState];
  v6 = [(MNNavigationStateManager *)self _stateTypeForState:v5];
  v7 = [(MNNavigationStateManager *)self _stateTypeForState:v4];
  v8 = MNGetMNNavigationStateManagerLog();
  if (os_signpost_enabled(v8))
  {
    if (v6 > 6)
    {
      v9 = @"MNNavigationStateTypeInvalid";
    }

    else
    {
      v9 = *(&off_1E8430980 + v6);
    }

    if (v7 > 6)
    {
      v10 = @"MNNavigationStateTypeInvalid";
    }

    else
    {
      v10 = *(&off_1E8430980 + v7);
    }

    *buf = 138543618;
    v22 = v9;
    v23 = 2114;
    v24 = v10;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "TransitionToState", "%{public}@ to %{public}@", buf, 0x16u);
  }

  [v4 preEnterState];
  [(GEOObserverHashTable *)self->_navigationStateObservers stateManager:self willChangeFromState:v6 toState:v7];
  [v5 leaveState];
  [(MNNavigationStateManager *)self _changeToDesiredLocationProviderTypeForState:v4];
  isolater = self->_isolater;
  v20 = MEMORY[0x1E69E9820];
  v12 = v4;
  geo_isolate_sync();
  [v12 enterState];
  if (os_signpost_enabled(v8))
  {
    if (v6 > 6)
    {
      v13 = @"MNNavigationStateTypeInvalid";
    }

    else
    {
      v13 = *(&off_1E8430980 + v6);
    }

    if (v7 > 6)
    {
      v14 = @"MNNavigationStateTypeInvalid";
    }

    else
    {
      v14 = *(&off_1E8430980 + v7);
    }

    *buf = 138543618;
    v22 = v13;
    v23 = 2114;
    v24 = v14;
    _os_signpost_emit_with_name_impl(&dword_1D311E000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "TransitionToState", "%{public}@ to %{public}@", buf, 0x16u);
  }

  v15 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (v6 > 6)
    {
      v16 = @"MNNavigationStateTypeInvalid";
    }

    else
    {
      v16 = *(&off_1E8430980 + v6);
    }

    if (v7 > 6)
    {
      v17 = @"MNNavigationStateTypeInvalid";
    }

    else
    {
      v17 = *(&off_1E8430980 + v7);
    }

    *buf = 138412546;
    v22 = v16;
    v23 = 2112;
    v24 = v17;
    _os_log_impl(&dword_1D311E000, v15, OS_LOG_TYPE_DEFAULT, "Changed from state %@ to %@", buf, 0x16u);
  }

  if ([v12 shouldClearStoredRoutes])
  {
    v18 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-5.0];
    MNClearStoredRoutesWithSubpathUsedBefore(v18, 0);
  }

  [(GEOObserverHashTable *)self->_navigationStateObservers stateManager:self didChangeFromState:v6 toState:v7];
  [v12 postEnterState];

  v19 = *MEMORY[0x1E69E9840];
}

- (id)navSessionDestination
{
  v2 = [(MNNavigationStateManager *)self currentState];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 currentDestination];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end