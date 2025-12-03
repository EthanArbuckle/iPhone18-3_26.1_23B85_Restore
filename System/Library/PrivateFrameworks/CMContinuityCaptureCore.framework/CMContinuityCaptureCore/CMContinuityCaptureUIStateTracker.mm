@interface CMContinuityCaptureUIStateTracker
+ (id)sharedInstance;
- (BOOL)active;
- (BOOL)isDedicatedSession;
- (BOOL)isInFaceTime;
- (CMContinuityCaptureUIConfiguration)activeConfiguration;
- (CMContinuityCaptureUIStateTracker)init;
- (int64_t)connectionType;
- (int64_t)uiState;
- (void)_aquireAppSuspendAssertion;
- (void)_refreshInFaceTime;
- (void)_releaseAppSuspendAssertion;
- (void)_sessionDidUpdateWithConfiguration:(id)configuration;
- (void)_tearDownShield;
- (void)activeConfiguration;
- (void)presentError:(int64_t)error userInfo:(id)info;
- (void)serverXPCConnectionInterrupted;
- (void)sessionDidUpdateWithConfiguration:(id)configuration;
- (void)setConnectionType:(int64_t)type;
- (void)setUIConfiguration:(id)configuration;
- (void)setUiState:(int64_t)state;
- (void)tearDownShield;
@end

@implementation CMContinuityCaptureUIStateTracker

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_6 != -1)
  {
    +[CMContinuityCaptureUIStateTracker sharedInstance];
  }

  v3 = _uiStateTracker;

  return v3;
}

uint64_t __51__CMContinuityCaptureUIStateTracker_sharedInstance__block_invoke()
{
  _uiStateTracker = objc_alloc_init(CMContinuityCaptureUIStateTracker);

  return MEMORY[0x2821F96F8]();
}

- (CMContinuityCaptureUIStateTracker)init
{
  v15.receiver = self;
  v15.super_class = CMContinuityCaptureUIStateTracker;
  v2 = [(CMContinuityCaptureUIStateTracker *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v2->_uiState = 0;
    v4 = objc_alloc_init(CMContinuityCaptureUIConfiguration);
    activeConfiguration = v3->_activeConfiguration;
    v3->_activeConfiguration = v4;

    v3->_active = 1;
    objc_storeStrong(&v3->_queue, MEMORY[0x277D85CD0]);
    mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
    neighborhoodActivityConduit = [mEMORY[0x277D6EDF8] neighborhoodActivityConduit];
    [neighborhoodActivityConduit addDelegate:v3 queue:v3->_queue];

    mEMORY[0x277D6EDF8]2 = [MEMORY[0x277D6EDF8] sharedInstance];
    conversationManager = [mEMORY[0x277D6EDF8]2 conversationManager];
    [conversationManager addDelegate:v3 queue:v3->_queue];

    mEMORY[0x277D6EDF8]3 = [MEMORY[0x277D6EDF8] sharedInstance];
    neighborhoodActivityConduit2 = [mEMORY[0x277D6EDF8]3 neighborhoodActivityConduit];
    activeSplitSessionTV = [neighborhoodActivityConduit2 activeSplitSessionTV];
    v3->_inFaceTime = activeSplitSessionTV != 0;

    [(CMContinuityCaptureUIStateTracker *)v3 _aquireAppSuspendAssertion];
    v13 = +[CMContinuityCaptureXPCClientCCD sharedInstance];
    [v13 connectToContinuityCaptureServerWithDelegate:v3];
  }

  return v3;
}

- (void)_aquireAppSuspendAssertion
{
  v3 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.ContinuityCaptureShieldUI" name:@"DoCapture"];
  identifierForCurrentProcess = [MEMORY[0x277D46F50] identifierForCurrentProcess];
  v5 = [MEMORY[0x277D47008] targetWithPid:{objc_msgSend(identifierForCurrentProcess, "pid")}];
  v6 = objc_alloc(MEMORY[0x277D46DB8]);
  v23 = v3;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  v8 = [v6 initWithExplanation:@"Shield Terminate XPC" target:v5 attributes:v7];
  appSuspendAssertion = self->_appSuspendAssertion;
  self->_appSuspendAssertion = v8;

  v10 = self->_appSuspendAssertion;
  v22 = 0;
  v11 = [(RBSAssertion *)v10 acquireWithError:&v22];
  v12 = v22;
  v13 = CMContinuityCaptureLog(0);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v14)
    {
      v18 = 138412290;
      selfCopy2 = self;
      v15 = "%@ Successfully acquired app suspend assertion";
      v16 = v13;
      v17 = 12;
LABEL_6:
      _os_log_impl(&dword_242545000, v16, OS_LOG_TYPE_DEFAULT, v15, &v18, v17);
    }
  }

  else if (v14)
  {
    v18 = 138412546;
    selfCopy2 = self;
    v20 = 2112;
    v21 = v12;
    v15 = "%@ Failed to acquire app suspend assertion with error %@";
    v16 = v13;
    v17 = 22;
    goto LABEL_6;
  }
}

- (void)_releaseAppSuspendAssertion
{
  appSuspendAssertion = self->_appSuspendAssertion;
  if (appSuspendAssertion)
  {
    [(RBSAssertion *)appSuspendAssertion invalidate];
    v4 = self->_appSuspendAssertion;
    self->_appSuspendAssertion = 0;
  }
}

- (int64_t)uiState
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  uiState = selfCopy->_uiState;
  objc_sync_exit(selfCopy);

  return uiState;
}

- (void)setUiState:(int64_t)state
{
  obj = self;
  objc_sync_enter(obj);
  obj->_uiState = state;
  objc_sync_exit(obj);
}

- (int64_t)connectionType
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  connectionType = selfCopy->_connectionType;
  objc_sync_exit(selfCopy);

  return connectionType;
}

- (void)setConnectionType:(int64_t)type
{
  obj = self;
  objc_sync_enter(obj);
  obj->_connectionType = type;
  objc_sync_exit(obj);
}

- (CMContinuityCaptureUIConfiguration)activeConfiguration
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_activeConfiguration;
  objc_sync_exit(selfCopy);

  if (!v3)
  {
    v4 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(CMContinuityCaptureUIStateTracker *)selfCopy activeConfiguration];
    }
  }

  return v3;
}

- (BOOL)active
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  active = selfCopy->_active;
  objc_sync_exit(selfCopy);

  return active;
}

- (BOOL)isInFaceTime
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  inFaceTime = selfCopy->_inFaceTime;
  objc_sync_exit(selfCopy);

  return inFaceTime;
}

- (BOOL)isDedicatedSession
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  activeConfiguration = [(CMContinuityCaptureUIStateTracker *)selfCopy activeConfiguration];
  isDedicated = [activeConfiguration isDedicated];

  objc_sync_exit(selfCopy);
  return isDedicated;
}

- (void)setUIConfiguration:(id)configuration
{
  configurationCopy = configuration;
  activeConfiguration = [(CMContinuityCaptureUIStateTracker *)self activeConfiguration];
  v5 = [activeConfiguration isEqual:configurationCopy];

  if ((v5 & 1) == 0)
  {
    if ([MEMORY[0x277CCACC8] isMainThread] && self->_queue == MEMORY[0x277D85CD0])
    {
      [(CMContinuityCaptureUIStateTracker *)self _sessionDidUpdateWithConfiguration:configurationCopy];
    }

    else
    {
      [(CMContinuityCaptureUIStateTracker *)self sessionDidUpdateWithConfiguration:configurationCopy];
    }
  }
}

- (void)_refreshInFaceTime
{
  dispatch_assert_queue_V2(self->_queue);
  obj = self;
  objc_sync_enter(obj);
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  conversationManager = [mEMORY[0x277D6EDF8] conversationManager];
  activeConversations = [conversationManager activeConversations];
  v6 = [activeConversations bs_firstObjectPassingTest:&__block_literal_global_34];

  mEMORY[0x277D6EDF8]2 = [MEMORY[0x277D6EDF8] sharedInstance];
  neighborhoodActivityConduit = [mEMORY[0x277D6EDF8]2 neighborhoodActivityConduit];
  activeSplitSessionTV = [neighborhoodActivityConduit activeSplitSessionTV];
  if (activeSplitSessionTV)
  {
    mEMORY[0x277D6EDF8]3 = [MEMORY[0x277D6EDF8] sharedInstance];
    neighborhoodActivityConduit2 = [mEMORY[0x277D6EDF8]3 neighborhoodActivityConduit];
    v12 = [neighborhoodActivityConduit2 canPullBackConversation:v6];
  }

  else
  {
    v12 = 0;
  }

  v13 = ([v6 avMode] != 0) | v12 & 1;
  if (obj->_inFaceTime != v13)
  {
    [(CMContinuityCaptureUIStateTracker *)obj willChangeValueForKey:@"inFaceTime"];
    obj->_inFaceTime = v13;
    [(CMContinuityCaptureUIStateTracker *)obj didChangeValueForKey:@"inFaceTime"];
  }

  objc_sync_exit(obj);
}

- (void)sessionDidUpdateWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__CMContinuityCaptureUIStateTracker_sessionDidUpdateWithConfiguration___block_invoke;
  block[3] = &unk_278D5C0A8;
  objc_copyWeak(&v9, &location);
  v8 = configurationCopy;
  v6 = configurationCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __71__CMContinuityCaptureUIStateTracker_sessionDidUpdateWithConfiguration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _sessionDidUpdateWithConfiguration:*(a1 + 32)];
}

- (void)_sessionDidUpdateWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  activeConfiguration = [v5 activeConfiguration];

  v7 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412802;
    selfCopy = self;
    v20 = 2114;
    v21 = activeConfiguration;
    v22 = 2114;
    v23 = configurationCopy;
    _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%@ activeConfiguration change (%{public}@ -> %{public}@)", &v18, 0x20u);
  }

  dispatch_assert_queue_V2(self->_queue);
  if (configurationCopy)
  {
    [(CMContinuityCaptureUIStateTracker *)self willChangeValueForKey:@"activeConfiguration"];
    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    if ([configurationCopy clientDeviceModel])
    {
      [activeConfiguration setClientDeviceModel:{objc_msgSend(configurationCopy, "clientDeviceModel")}];
    }

    clientName = [configurationCopy clientName];
    [activeConfiguration setClientName:clientName];

    [activeConfiguration setCompositeState:{objc_msgSend(configurationCopy, "compositeState")}];
    applicationIdentifier = [configurationCopy applicationIdentifier];
    [activeConfiguration setApplicationIdentifier:applicationIdentifier];

    placementStepSkipped = [activeConfiguration placementStepSkipped];

    if (!placementStepSkipped)
    {
      [activeConfiguration setPlacementStepSkipped:MEMORY[0x277CBEC28]];
    }

    placementStepSkipped2 = [activeConfiguration placementStepSkipped];
    bOOLValue = [placementStepSkipped2 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      placementStepSkipped3 = [configurationCopy placementStepSkipped];
      [activeConfiguration setPlacementStepSkipped:placementStepSkipped3];
    }

    [activeConfiguration setIsDedicated:{objc_msgSend(configurationCopy, "isDedicated")}];
    [activeConfiguration setMicOnly:{objc_msgSend(configurationCopy, "micOnly")}];
    remoteDisplayIdentifier = [configurationCopy remoteDisplayIdentifier];
    [activeConfiguration setRemoteDisplayIdentifier:remoteDisplayIdentifier];

    participantInfo = [configurationCopy participantInfo];
    [activeConfiguration setParticipantInfo:participantInfo];

    objc_sync_exit(selfCopy2);
    [(CMContinuityCaptureUIStateTracker *)selfCopy2 didChangeValueForKey:@"activeConfiguration"];
  }

  else
  {
    v17 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(CMContinuityCaptureUIStateTracker *)self _sessionDidUpdateWithConfiguration:v17];
    }
  }
}

- (void)tearDownShield
{
  v3 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%@ teardown shieldUI", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__CMContinuityCaptureUIStateTracker_tearDownShield__block_invoke;
  block[3] = &unk_278D5C080;
  objc_copyWeak(&v6, buf);
  dispatch_async(queue, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __51__CMContinuityCaptureUIStateTracker_tearDownShield__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _tearDownShield];
}

- (void)_tearDownShield
{
  dispatch_assert_queue_V2(self->_queue);
  [(CMContinuityCaptureUIStateTracker *)self _releaseAppSuspendAssertion];
  [(CMContinuityCaptureUIStateTracker *)self willChangeValueForKey:@"active"];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  active = selfCopy->_active;
  selfCopy->_active = 0;
  objc_sync_exit(selfCopy);

  [(CMContinuityCaptureUIStateTracker *)selfCopy didChangeValueForKey:@"active"];
  if (active)
  {
    mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
    neighborhoodActivityConduit = [mEMORY[0x277D6EDF8] neighborhoodActivityConduit];
    [neighborhoodActivityConduit removeDelegate:selfCopy];

    mEMORY[0x277D6EDF8]2 = [MEMORY[0x277D6EDF8] sharedInstance];
    conversationManager = [mEMORY[0x277D6EDF8]2 conversationManager];
    [conversationManager removeDelegate:selfCopy];
  }
}

- (void)serverXPCConnectionInterrupted
{
  v3 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  activeConfiguration = [v3 activeConfiguration];

  v4 = activeConfiguration;
  if (activeConfiguration)
  {
    v5 = [activeConfiguration copy];
    [v5 setCompositeState:16];
    [(CMContinuityCaptureUIStateTracker *)self sessionDidUpdateWithConfiguration:v5];

    v4 = activeConfiguration;
  }
}

- (void)presentError:(int64_t)error userInfo:(id)info
{
  infoCopy = info;
  v7 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:error];
    v12 = 138413058;
    selfCopy = self;
    v14 = 2080;
    v15 = "[CMContinuityCaptureUIStateTracker presentError:userInfo:]";
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = infoCopy;
    _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%@ %s %@ %@", &v12, 0x2Au);
  }

  v9 = objc_opt_new();
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:error];
  [v9 setObject:v10 forKeyedSubscript:@"CMContinuityCaptureUIStateTrackerErrorCodeKey"];

  if (infoCopy)
  {
    [v9 addEntriesFromDictionary:infoCopy];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:CMContinuityCaptureUIStateErrorNotification object:0 userInfo:v9];
}

- (void)activeConfiguration
{
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_242545000, a2, OS_LOG_TYPE_ERROR, "%@ activeConfiguration shouldn't be nil", &v2, 0xCu);
}

- (void)_sessionDidUpdateWithConfiguration:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_242545000, a2, OS_LOG_TYPE_ERROR, "%@ activeConfiguration should not be set to nil, returning", &v2, 0xCu);
}

@end