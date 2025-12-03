@interface MNNavigationStateManager
+ (id)sharedManager;
- (BOOL)isStarted;
- (MNNavigationSessionManagerDelegate)navigationDelegate;
- (MNNavigationState)currentState;
- (MNNavigationStateManager)init;
- (id)_initialState;
- (id)navSessionDestination;
- (unint64_t)_stateTypeForState:(id)state;
- (unint64_t)currentStateType;
- (void)_changeToDesiredLocationProviderTypeForState:(id)state;
- (void)_replayStateForNewObserver:(id)observer;
- (void)advanceToNextLeg;
- (void)changeUserOptions:(id)options;
- (void)dealloc;
- (void)disableNavigationCapability:(unint64_t)capability;
- (void)enableNavigationCapability:(unint64_t)capability;
- (void)forceReroute;
- (void)insertWaypoint:(id)waypoint;
- (void)pauseRealtimeUpdatesForSubscriber:(id)subscriber;
- (void)recordPedestrianTracePath:(id)path;
- (void)recordTraceBookmarkAtCurrentPositionWthScreenshotData:(id)data;
- (void)registerObserver:(id)observer;
- (void)removeWaypointAtIndex:(unint64_t)index;
- (void)repeatCurrentGuidanceWithReply:(id)reply;
- (void)repeatCurrentTrafficAlertWithReply:(id)reply;
- (void)rerouteWithWaypoints:(id)waypoints;
- (void)reset;
- (void)resumeOriginalDestination;
- (void)resumeRealtimeUpdatesForSubscriber:(id)subscriber;
- (void)setCurrentState:(id)state;
- (void)setDisplayedStepIndex:(unint64_t)index;
- (void)setGuidanceType:(unint64_t)type;
- (void)setJunctionViewImageWidth:(double)width height:(double)height;
- (void)setRideIndex:(unint64_t)index forSegmentIndex:(unint64_t)segmentIndex;
- (void)setRoutesForPreview:(id)preview selectedRouteIndex:(unint64_t)index;
- (void)setSimulationPosition:(double)position;
- (void)setSimulationSpeedMultiplier:(double)multiplier;
- (void)setSimulationSpeedOverride:(double)override;
- (void)setTracePlaybackSpeed:(double)speed;
- (void)setTracePosition:(double)position;
- (void)setVoiceGuidanceLevelOverride:(unint64_t)override;
- (void)start;
- (void)startNavigationWithDetails:(id)details activeBlock:(id)block;
- (void)stopCurrentGuidancePrompt;
- (void)stopNavigationWithReason:(unint64_t)reason;
- (void)switchToDestinationRoute;
- (void)switchToRoute:(id)route;
- (void)transitionToState:(id)state;
- (void)updateDestination:(id)destination;
- (void)updateForUserIncidentReport:(id)report;
- (void)vibrateForPrompt:(unint64_t)prompt withReply:(id)reply;
@end

@implementation MNNavigationStateManager

- (unint64_t)currentStateType
{
  currentState = [(MNNavigationStateManager *)self currentState];
  v3 = currentState;
  if (currentState)
  {
    type = [currentState type];
  }

  else
  {
    type = 0;
  }

  return type;
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

- (void)resumeRealtimeUpdatesForSubscriber:(id)subscriber
{
  subscriberCopy = subscriber;
  currentState = [(MNNavigationStateManager *)self currentState];
  [currentState resumeRealtimeUpdatesForSubscriber:subscriberCopy];
}

- (void)pauseRealtimeUpdatesForSubscriber:(id)subscriber
{
  subscriberCopy = subscriber;
  currentState = [(MNNavigationStateManager *)self currentState];
  [currentState pauseRealtimeUpdatesForSubscriber:subscriberCopy];
}

- (void)setSimulationPosition:(double)position
{
  currentState = [(MNNavigationStateManager *)self currentState];
  [currentState setSimulationPosition:position];
}

- (void)setSimulationSpeedMultiplier:(double)multiplier
{
  currentState = [(MNNavigationStateManager *)self currentState];
  [currentState setSimulationSpeedMultiplier:multiplier];
}

- (void)setSimulationSpeedOverride:(double)override
{
  currentState = [(MNNavigationStateManager *)self currentState];
  [currentState setSimulationSpeedOverride:override];
}

- (void)recordPedestrianTracePath:(id)path
{
  pathCopy = path;
  currentState = [(MNNavigationStateManager *)self currentState];
  [currentState recordPedestrianTracePath:pathCopy];
}

- (void)recordTraceBookmarkAtCurrentPositionWthScreenshotData:(id)data
{
  dataCopy = data;
  currentState = [(MNNavigationStateManager *)self currentState];
  [currentState recordTraceBookmarkAtCurrentPositionWthScreenshotData:dataCopy];
}

- (void)setTracePosition:(double)position
{
  currentState = [(MNNavigationStateManager *)self currentState];
  [currentState setTracePosition:position];
}

- (void)setTracePlaybackSpeed:(double)speed
{
  currentState = [(MNNavigationStateManager *)self currentState];
  [currentState setTracePlaybackSpeed:speed];
}

- (void)enableNavigationCapability:(unint64_t)capability
{
  currentState = [(MNNavigationStateManager *)self currentState];
  [currentState enableNavigationCapability:capability];
}

- (void)disableNavigationCapability:(unint64_t)capability
{
  currentState = [(MNNavigationStateManager *)self currentState];
  [currentState disableNavigationCapability:capability];
}

- (void)updateForUserIncidentReport:(id)report
{
  reportCopy = report;
  currentState = [(MNNavigationStateManager *)self currentState];
  [currentState updateForUserIncidentReport:reportCopy];
}

- (void)setJunctionViewImageWidth:(double)width height:(double)height
{
  currentState = [(MNNavigationStateManager *)self currentState];
  [currentState setJunctionViewImageWidth:width height:height];
}

- (void)setRideIndex:(unint64_t)index forSegmentIndex:(unint64_t)segmentIndex
{
  currentState = [(MNNavigationStateManager *)self currentState];
  [currentState setRideIndex:index forSegmentIndex:segmentIndex];
}

- (void)setDisplayedStepIndex:(unint64_t)index
{
  currentState = [(MNNavigationStateManager *)self currentState];
  [currentState setDisplayedStepIndex:index];
}

- (void)stopCurrentGuidancePrompt
{
  currentState = [(MNNavigationStateManager *)self currentState];
  [currentState stopCurrentGuidancePrompt];
}

- (void)vibrateForPrompt:(unint64_t)prompt withReply:(id)reply
{
  replyCopy = reply;
  currentState = [(MNNavigationStateManager *)self currentState];
  [currentState vibrateForPrompt:prompt withReply:replyCopy];
}

- (void)repeatCurrentTrafficAlertWithReply:(id)reply
{
  replyCopy = reply;
  currentState = [(MNNavigationStateManager *)self currentState];
  [currentState repeatCurrentTrafficAlertWithReply:replyCopy];
}

- (void)repeatCurrentGuidanceWithReply:(id)reply
{
  replyCopy = reply;
  currentState = [(MNNavigationStateManager *)self currentState];
  [currentState repeatCurrentGuidanceWithReply:replyCopy];
}

- (void)setVoiceGuidanceLevelOverride:(unint64_t)override
{
  currentState = [(MNNavigationStateManager *)self currentState];
  [currentState setVoiceGuidanceLevelOverride:override];
}

- (void)changeUserOptions:(id)options
{
  optionsCopy = options;
  currentState = [(MNNavigationStateManager *)self currentState];
  [currentState changeUserOptions:optionsCopy];
}

- (void)setGuidanceType:(unint64_t)type
{
  currentState = [(MNNavigationStateManager *)self currentState];
  [currentState setGuidanceType:type];
}

- (void)switchToDestinationRoute
{
  currentState = [(MNNavigationStateManager *)self currentState];
  [currentState switchToDestinationRoute];
}

- (void)switchToRoute:(id)route
{
  routeCopy = route;
  currentState = [(MNNavigationStateManager *)self currentState];
  [currentState switchToRoute:routeCopy];
}

- (void)forceReroute
{
  currentState = [(MNNavigationStateManager *)self currentState];
  [currentState forceReroute];
}

- (void)resumeOriginalDestination
{
  currentState = [(MNNavigationStateManager *)self currentState];
  [currentState resumeOriginalDestination];
}

- (void)updateDestination:(id)destination
{
  destinationCopy = destination;
  currentState = [(MNNavigationStateManager *)self currentState];
  [currentState updateDestination:destinationCopy];
}

- (void)advanceToNextLeg
{
  currentState = [(MNNavigationStateManager *)self currentState];
  [currentState advanceToNextLeg];
}

- (void)removeWaypointAtIndex:(unint64_t)index
{
  currentState = [(MNNavigationStateManager *)self currentState];
  [currentState removeWaypointAtIndex:index];
}

- (void)insertWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  currentState = [(MNNavigationStateManager *)self currentState];
  [currentState insertWaypoint:waypointCopy];
}

- (void)rerouteWithWaypoints:(id)waypoints
{
  waypointsCopy = waypoints;
  currentState = [(MNNavigationStateManager *)self currentState];
  [currentState rerouteWithWaypoints:waypointsCopy];
}

- (void)stopNavigationWithReason:(unint64_t)reason
{
  v5 = MNGetMNNavigationStateManagerLog();
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {

    currentState = [(MNNavigationStateManager *)self currentState];
    [currentState stopNavigationWithReason:reason];

    v12 = v8;
  }

  else
  {
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "StopNavigation", "", buf, 2u);
    }

    currentState2 = [(MNNavigationStateManager *)self currentState];
    [currentState2 stopNavigationWithReason:reason];

    v10 = v8;
    if (os_signpost_enabled(v10))
    {
      *v13 = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v10, OS_SIGNPOST_INTERVAL_END, v6, "StopNavigation", "", v13, 2u);
    }
  }
}

- (void)startNavigationWithDetails:(id)details activeBlock:(id)block
{
  blockCopy = block;
  detailsCopy = details;
  currentState = [(MNNavigationStateManager *)self currentState];
  [currentState startNavigationWithDetails:detailsCopy activeBlock:blockCopy];
}

- (void)setRoutesForPreview:(id)preview selectedRouteIndex:(unint64_t)index
{
  previewCopy = preview;
  v7 = MNGetMNNavigationStateManagerLog();
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {

    currentState = [(MNNavigationStateManager *)self currentState];
    [currentState setRoutesForPreview:previewCopy selectedRouteIndex:index];

    v14 = v10;
  }

  else
  {
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1D311E000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "SetRoutesForPreview", "", buf, 2u);
    }

    currentState2 = [(MNNavigationStateManager *)self currentState];
    [currentState2 setRoutesForPreview:previewCopy selectedRouteIndex:index];

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

- (void)_replayStateForNewObserver:(id)observer
{
  observerCopy = observer;
  currentState = [(MNNavigationStateManager *)self currentState];
  type = [currentState type];

  if (objc_opt_respondsToSelector())
  {
    [observerCopy stateManager:self willChangeFromState:0 toState:type];
  }

  if (objc_opt_respondsToSelector())
  {
    [observerCopy stateManager:self didChangeFromState:0 toState:type];
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

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  v9 = observerCopy;
  if (!self->_navigationStateObservers)
  {
    v5 = objc_alloc(MEMORY[0x1E69A22D8]);
    v6 = MNNavigationQueue();
    v7 = [v5 initWithProtocol:&unk_1F4EEC840 queue:v6];
    navigationStateObservers = self->_navigationStateObservers;
    self->_navigationStateObservers = v7;

    observerCopy = v9;
  }

  [(MNNavigationStateManager *)self _replayStateForNewObserver:observerCopy];
  [(GEOObserverHashTable *)self->_navigationStateObservers registerObserver:v9];
}

- (void)reset
{
  _initialState = [(MNNavigationStateManager *)self _initialState];
  [(MNNavigationStateManager *)self transitionToState:_initialState];
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

  _initialState = [(MNNavigationStateManager *)self _initialState];
  [(MNNavigationStateManager *)self transitionToState:_initialState];

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

- (void)setCurrentState:(id)state
{
  stateCopy = state;
  isolater = self->_isolater;
  v7 = stateCopy;
  v6 = stateCopy;
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

- (unint64_t)_stateTypeForState:(id)state
{
  if (state)
  {
    return [state type];
  }

  else
  {
    return 0;
  }
}

- (void)_changeToDesiredLocationProviderTypeForState:(id)state
{
  stateCopy = state;
  v3 = +[MNLocationManager shared];
  if (stateCopy)
  {
    desiredLocationProviderType = [stateCopy desiredLocationProviderType];
  }

  else
  {
    desiredLocationProviderType = 0;
  }

  if (desiredLocationProviderType != [v3 locationProviderType])
  {
    if (desiredLocationProviderType > 1)
    {
      switch(desiredLocationProviderType)
      {
        case 2:
          [v3 useHybridLocationProvider];
          goto LABEL_17;
        case 3:
          traceManager = [stateCopy traceManager];
          [v3 useTraceLocationProvider:traceManager];
          break;
        case 4:
          traceManager = [stateCopy simulationLocationProvider];
          [v3 useSimulationLocationProvider:traceManager];
          break;
        default:
          goto LABEL_17;
      }

      goto LABEL_15;
    }

    if (desiredLocationProviderType)
    {
      if (desiredLocationProviderType != 1)
      {
        goto LABEL_17;
      }

      traceManager = [stateCopy clParameters];
      [v3 useGPSLocationProviderWithCLParameters:traceManager];
LABEL_15:

      goto LABEL_17;
    }

    [v3 stopAllUpdates];
  }

LABEL_17:
}

- (void)transitionToState:(id)state
{
  v25 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  currentState = [(MNNavigationStateManager *)self currentState];
  v6 = [(MNNavigationStateManager *)self _stateTypeForState:currentState];
  v7 = [(MNNavigationStateManager *)self _stateTypeForState:stateCopy];
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

  [stateCopy preEnterState];
  [(GEOObserverHashTable *)self->_navigationStateObservers stateManager:self willChangeFromState:v6 toState:v7];
  [currentState leaveState];
  [(MNNavigationStateManager *)self _changeToDesiredLocationProviderTypeForState:stateCopy];
  isolater = self->_isolater;
  v20 = MEMORY[0x1E69E9820];
  v12 = stateCopy;
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
  currentState = [(MNNavigationStateManager *)self currentState];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentDestination = [currentState currentDestination];
  }

  else
  {
    currentDestination = 0;
  }

  return currentDestination;
}

@end