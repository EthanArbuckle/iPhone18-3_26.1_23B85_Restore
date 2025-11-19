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
- (void)_sessionDidUpdateWithConfiguration:(id)a3;
- (void)_tearDownShield;
- (void)activeConfiguration;
- (void)presentError:(int64_t)a3 userInfo:(id)a4;
- (void)serverXPCConnectionInterrupted;
- (void)sessionDidUpdateWithConfiguration:(id)a3;
- (void)setConnectionType:(int64_t)a3;
- (void)setUIConfiguration:(id)a3;
- (void)setUiState:(int64_t)a3;
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
    v6 = [MEMORY[0x277D6EDF8] sharedInstance];
    v7 = [v6 neighborhoodActivityConduit];
    [v7 addDelegate:v3 queue:v3->_queue];

    v8 = [MEMORY[0x277D6EDF8] sharedInstance];
    v9 = [v8 conversationManager];
    [v9 addDelegate:v3 queue:v3->_queue];

    v10 = [MEMORY[0x277D6EDF8] sharedInstance];
    v11 = [v10 neighborhoodActivityConduit];
    v12 = [v11 activeSplitSessionTV];
    v3->_inFaceTime = v12 != 0;

    [(CMContinuityCaptureUIStateTracker *)v3 _aquireAppSuspendAssertion];
    v13 = +[CMContinuityCaptureXPCClientCCD sharedInstance];
    [v13 connectToContinuityCaptureServerWithDelegate:v3];
  }

  return v3;
}

- (void)_aquireAppSuspendAssertion
{
  v3 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.ContinuityCaptureShieldUI" name:@"DoCapture"];
  v4 = [MEMORY[0x277D46F50] identifierForCurrentProcess];
  v5 = [MEMORY[0x277D47008] targetWithPid:{objc_msgSend(v4, "pid")}];
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
      v19 = self;
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
    v19 = self;
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
  v2 = self;
  objc_sync_enter(v2);
  uiState = v2->_uiState;
  objc_sync_exit(v2);

  return uiState;
}

- (void)setUiState:(int64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_uiState = a3;
  objc_sync_exit(obj);
}

- (int64_t)connectionType
{
  v2 = self;
  objc_sync_enter(v2);
  connectionType = v2->_connectionType;
  objc_sync_exit(v2);

  return connectionType;
}

- (void)setConnectionType:(int64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_connectionType = a3;
  objc_sync_exit(obj);
}

- (CMContinuityCaptureUIConfiguration)activeConfiguration
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_activeConfiguration;
  objc_sync_exit(v2);

  if (!v3)
  {
    v4 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(CMContinuityCaptureUIStateTracker *)v2 activeConfiguration];
    }
  }

  return v3;
}

- (BOOL)active
{
  v2 = self;
  objc_sync_enter(v2);
  active = v2->_active;
  objc_sync_exit(v2);

  return active;
}

- (BOOL)isInFaceTime
{
  v2 = self;
  objc_sync_enter(v2);
  inFaceTime = v2->_inFaceTime;
  objc_sync_exit(v2);

  return inFaceTime;
}

- (BOOL)isDedicatedSession
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(CMContinuityCaptureUIStateTracker *)v2 activeConfiguration];
  v4 = [v3 isDedicated];

  objc_sync_exit(v2);
  return v4;
}

- (void)setUIConfiguration:(id)a3
{
  v6 = a3;
  v4 = [(CMContinuityCaptureUIStateTracker *)self activeConfiguration];
  v5 = [v4 isEqual:v6];

  if ((v5 & 1) == 0)
  {
    if ([MEMORY[0x277CCACC8] isMainThread] && self->_queue == MEMORY[0x277D85CD0])
    {
      [(CMContinuityCaptureUIStateTracker *)self _sessionDidUpdateWithConfiguration:v6];
    }

    else
    {
      [(CMContinuityCaptureUIStateTracker *)self sessionDidUpdateWithConfiguration:v6];
    }
  }
}

- (void)_refreshInFaceTime
{
  dispatch_assert_queue_V2(self->_queue);
  obj = self;
  objc_sync_enter(obj);
  v3 = [MEMORY[0x277D6EDF8] sharedInstance];
  v4 = [v3 conversationManager];
  v5 = [v4 activeConversations];
  v6 = [v5 bs_firstObjectPassingTest:&__block_literal_global_34];

  v7 = [MEMORY[0x277D6EDF8] sharedInstance];
  v8 = [v7 neighborhoodActivityConduit];
  v9 = [v8 activeSplitSessionTV];
  if (v9)
  {
    v10 = [MEMORY[0x277D6EDF8] sharedInstance];
    v11 = [v10 neighborhoodActivityConduit];
    v12 = [v11 canPullBackConversation:v6];
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

- (void)sessionDidUpdateWithConfiguration:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__CMContinuityCaptureUIStateTracker_sessionDidUpdateWithConfiguration___block_invoke;
  block[3] = &unk_278D5C0A8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __71__CMContinuityCaptureUIStateTracker_sessionDidUpdateWithConfiguration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _sessionDidUpdateWithConfiguration:*(a1 + 32)];
}

- (void)_sessionDidUpdateWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  v6 = [v5 activeConfiguration];

  v7 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412802;
    v19 = self;
    v20 = 2114;
    v21 = v6;
    v22 = 2114;
    v23 = v4;
    _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%@ activeConfiguration change (%{public}@ -> %{public}@)", &v18, 0x20u);
  }

  dispatch_assert_queue_V2(self->_queue);
  if (v4)
  {
    [(CMContinuityCaptureUIStateTracker *)self willChangeValueForKey:@"activeConfiguration"];
    v8 = self;
    objc_sync_enter(v8);
    if ([v4 clientDeviceModel])
    {
      [v6 setClientDeviceModel:{objc_msgSend(v4, "clientDeviceModel")}];
    }

    v9 = [v4 clientName];
    [v6 setClientName:v9];

    [v6 setCompositeState:{objc_msgSend(v4, "compositeState")}];
    v10 = [v4 applicationIdentifier];
    [v6 setApplicationIdentifier:v10];

    v11 = [v6 placementStepSkipped];

    if (!v11)
    {
      [v6 setPlacementStepSkipped:MEMORY[0x277CBEC28]];
    }

    v12 = [v6 placementStepSkipped];
    v13 = [v12 BOOLValue];

    if ((v13 & 1) == 0)
    {
      v14 = [v4 placementStepSkipped];
      [v6 setPlacementStepSkipped:v14];
    }

    [v6 setIsDedicated:{objc_msgSend(v4, "isDedicated")}];
    [v6 setMicOnly:{objc_msgSend(v4, "micOnly")}];
    v15 = [v4 remoteDisplayIdentifier];
    [v6 setRemoteDisplayIdentifier:v15];

    v16 = [v4 participantInfo];
    [v6 setParticipantInfo:v16];

    objc_sync_exit(v8);
    [(CMContinuityCaptureUIStateTracker *)v8 didChangeValueForKey:@"activeConfiguration"];
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
    v8 = self;
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
  v3 = self;
  objc_sync_enter(v3);
  active = v3->_active;
  v3->_active = 0;
  objc_sync_exit(v3);

  [(CMContinuityCaptureUIStateTracker *)v3 didChangeValueForKey:@"active"];
  if (active)
  {
    v5 = [MEMORY[0x277D6EDF8] sharedInstance];
    v6 = [v5 neighborhoodActivityConduit];
    [v6 removeDelegate:v3];

    v8 = [MEMORY[0x277D6EDF8] sharedInstance];
    v7 = [v8 conversationManager];
    [v7 removeDelegate:v3];
  }
}

- (void)serverXPCConnectionInterrupted
{
  v3 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  v6 = [v3 activeConfiguration];

  v4 = v6;
  if (v6)
  {
    v5 = [v6 copy];
    [v5 setCompositeState:16];
    [(CMContinuityCaptureUIStateTracker *)self sessionDidUpdateWithConfiguration:v5];

    v4 = v6;
  }
}

- (void)presentError:(int64_t)a3 userInfo:(id)a4
{
  v6 = a4;
  v7 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v12 = 138413058;
    v13 = self;
    v14 = 2080;
    v15 = "[CMContinuityCaptureUIStateTracker presentError:userInfo:]";
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%@ %s %@ %@", &v12, 0x2Au);
  }

  v9 = objc_opt_new();
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v9 setObject:v10 forKeyedSubscript:@"CMContinuityCaptureUIStateTrackerErrorCodeKey"];

  if (v6)
  {
    [v9 addEntriesFromDictionary:v6];
  }

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  [v11 postNotificationName:CMContinuityCaptureUIStateErrorNotification object:0 userInfo:v9];
}

- (void)activeConfiguration
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_242545000, a2, OS_LOG_TYPE_ERROR, "%@ activeConfiguration shouldn't be nil", &v2, 0xCu);
}

- (void)_sessionDidUpdateWithConfiguration:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_242545000, a2, OS_LOG_TYPE_ERROR, "%@ activeConfiguration should not be set to nil, returning", &v2, 0xCu);
}

@end