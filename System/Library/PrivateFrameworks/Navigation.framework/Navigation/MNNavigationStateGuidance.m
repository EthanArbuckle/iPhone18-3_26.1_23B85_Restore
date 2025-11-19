@interface MNNavigationStateGuidance
+ (id)guidanceStateForStartDetails:(id)a3 stateManager:(id)a4 navigationSessionManager:(id)a5;
- (MNNavigationStateGuidance)initWithStateManager:(id)a3 navigationSessionManager:(id)a4 startDetails:(id)a5;
- (id)clParameters;
- (id)currentDestination;
- (int64_t)desiredLocationProviderType;
- (void)enterState;
- (void)leaveState;
- (void)postEnterState;
- (void)preEnterState;
- (void)repeatCurrentGuidanceWithReply:(id)a3;
- (void)repeatCurrentTrafficAlertWithReply:(id)a3;
- (void)vibrateForPrompt:(unint64_t)a3 withReply:(id)a4;
@end

@implementation MNNavigationStateGuidance

- (void)vibrateForPrompt:(unint64_t)a3 withReply:(id)a4
{
  v8 = a4;
  v6 = [(MNNavigationSessionManager *)self->_navigationSessionManager vibrateForPrompt:a3];
  v7 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, v6);
    v7 = v8;
  }
}

- (void)repeatCurrentTrafficAlertWithReply:(id)a3
{
  v6 = a3;
  v4 = [(MNNavigationSessionManager *)self->_navigationSessionManager repeatCurrentTrafficAlert];
  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, v4);
    v5 = v6;
  }
}

- (void)repeatCurrentGuidanceWithReply:(id)a3
{
  v6 = a3;
  v4 = [(MNNavigationSessionManager *)self->_navigationSessionManager repeatCurrentGuidance];
  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, v4);
    v5 = v6;
  }
}

- (void)postEnterState
{
  navigationSessionManager = self->_navigationSessionManager;
  v3 = [(MNStartNavigationDetails *)self->_startDetails initialUserLocation];
  [(MNNavigationSessionManager *)navigationSessionManager updateWithInitialLocation:v3];
}

- (void)preEnterState
{
  if (!self->_navigationSessionManager)
  {
    v3 = [MNNavigationSessionManager alloc];
    v4 = [(MNNavigationState *)self stateManager];
    v5 = [v4 auditToken];
    v6 = [(MNNavigationSessionManager *)v3 initWithAuditToken:v5];
    navigationSessionManager = self->_navigationSessionManager;
    self->_navigationSessionManager = v6;
  }

  v8 = [(MNNavigationState *)self stateManager];
  v9 = [v8 navigationDelegate];
  [(MNNavigationSessionManager *)self->_navigationSessionManager setDelegate:v9];

  v10 = [(MNNavigationState *)self stateManager];
  objc_initWeak(&location, v10);

  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __42__MNNavigationStateGuidance_preEnterState__block_invoke;
  v14 = &unk_1E8430EA0;
  objc_copyWeak(&v15, &location);
  [(MNNavigationSessionManager *)self->_navigationSessionManager setDidEndHandler:&v11];
  if (self->_startDetails)
  {
    [(MNNavigationSessionManager *)self->_navigationSessionManager updateForStartNavigation:v11, v12, v13, v14];
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __42__MNNavigationStateGuidance_preEnterState__block_invoke(uint64_t a1)
{
  v2 = MNNavigationQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__MNNavigationStateGuidance_preEnterState__block_invoke_2;
  block[3] = &unk_1E8430EA0;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_async(v2, block);

  objc_destroyWeak(&v4);
}

void __42__MNNavigationStateGuidance_preEnterState__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = [MNNavigationStateNoDestination alloc];
    v4 = objc_loadWeakRetained((a1 + 32));
    v6 = [(MNNavigationState *)v3 initWithStateManager:v4];

    v5 = objc_loadWeakRetained((a1 + 32));
    [v5 transitionToState:v6];
  }
}

- (void)leaveState
{
  v4.receiver = self;
  v4.super_class = MNNavigationStateGuidance;
  [(MNNavigationState *)&v4 leaveState];
  [(MNNavigationSessionManager *)self->_navigationSessionManager setDelegate:0];
  navigationSessionManager = self->_navigationSessionManager;
  self->_navigationSessionManager = 0;
}

- (void)enterState
{
  v5.receiver = self;
  v5.super_class = MNNavigationStateGuidance;
  [(MNNavigationState *)&v5 enterState];
  v3 = [(MNNavigationState *)self stateManager];
  v4 = [v3 navigationDelegate];
  [(MNNavigationSessionManager *)self->_navigationSessionManager setDelegate:v4];

  if (self->_startDetails)
  {
    [(MNNavigationSessionManager *)self->_navigationSessionManager startNavigationWithDetails:?];
  }
}

- (MNNavigationStateGuidance)initWithStateManager:(id)a3 navigationSessionManager:(id)a4 startDetails:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = MNNavigationStateGuidance;
  v11 = [(MNNavigationState *)&v14 initWithStateManager:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_navigationSessionManager, a4);
    objc_storeStrong(&v12->_startDetails, a5);
  }

  return v12;
}

- (id)clParameters
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MNLocationProviderCLParameters);
  [(MNLocationProviderCLParameters *)v3 setDistanceFilter:*MEMORY[0x1E6985C70]];
  [(MNLocationProviderCLParameters *)v3 setDesiredAccuracy:*MEMORY[0x1E6985C80]];
  [(MNLocationProviderCLParameters *)v3 setMatchInfoEnabled:1];
  v4 = [(MNStartNavigationDetails *)self->_startDetails requestingAppIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.Maps"];

  if (v5)
  {
    [(MNLocationProviderCLParameters *)v3 setFusionInfoEnabled:1];
  }

  if ([(MNStartNavigationDetails *)self->_startDetails navigationType]!= 3)
  {
    goto LABEL_6;
  }

  v6 = [(MNStartNavigationDetails *)self->_startDetails routeAttributes];
  v7 = [v6 mainTransportType];

  if (v7 > 6)
  {
    goto LABEL_8;
  }

  if (((1 << v7) & 0x6E) != 0)
  {
LABEL_6:
    v8 = v3;
    v9 = 4;
LABEL_7:
    [(MNLocationProviderCLParameters *)v8 setActivityType:v9];
    goto LABEL_8;
  }

  if (!v7)
  {
    v8 = v3;
    v9 = 2;
    goto LABEL_7;
  }

  v12 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315650;
    v14 = "[MNNavigationStateGuidance clParameters]";
    v15 = 2080;
    v16 = "/Library/Caches/com.apple.xbs/Sources/Navigation/NavigationState/MNNavigationStateGuidance.m";
    v17 = 1024;
    v18 = 119;
    _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", &v13, 0x1Cu);
  }

LABEL_8:
  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (int64_t)desiredLocationProviderType
{
  v3 = [(MNNavigationStateGuidance *)self traceManager];
  v4 = [v3 tracePlayer];

  if (v4)
  {
    return 3;
  }

  v6 = [(MNNavigationSessionManager *)self->_navigationSessionManager simulationLocationProvider];

  if (v6)
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

- (id)currentDestination
{
  v2 = [(MNNavigationSessionManager *)self->_navigationSessionManager navigationSession];
  v3 = [v2 destination];

  return v3;
}

+ (id)guidanceStateForStartDetails:(id)a3 stateManager:(id)a4 navigationSessionManager:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 navigationType];
  switch(v10)
  {
    case 4:
      goto LABEL_4;
    case 3:
      if ([v7 guidanceType] == 2)
      {
        v11 = MNNavigationStateRoutePreviewGuidance;
      }

      else if ([v7 guidanceType] == 1)
      {
        v11 = MNNavigationStateLowGuidance;
      }

      else
      {
        v11 = MNNavigationStateGuidanceTurnByTurn;
      }

      goto LABEL_5;
    case 2:
LABEL_4:
      v11 = MNNavigationStateGuidanceStepping;
LABEL_5:
      v12 = [[v11 alloc] initWithStateManager:v8 navigationSessionManager:v9 startDetails:v7];
      goto LABEL_11;
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid navigationType: %d", v10];
  v14 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    v18 = "+[MNNavigationStateGuidance guidanceStateForStartDetails:stateManager:navigationSessionManager:]";
    v19 = 2080;
    v20 = "/Library/Caches/com.apple.xbs/Sources/Navigation/NavigationState/MNNavigationStateGuidance.m";
    v21 = 1024;
    v22 = 64;
    v23 = 2080;
    v24 = "NO";
    v25 = 2112;
    v26 = v13;
    _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
  }

  v12 = 0;
LABEL_11:

  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

@end