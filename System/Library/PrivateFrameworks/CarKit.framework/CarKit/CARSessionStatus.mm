@interface CARSessionStatus
+ (id)sessionUpdatesQueue;
- (CARSession)currentSession;
- (CARSessionObserving)sessionObserver;
- (CARSessionStatus)initWithOptions:(unint64_t)a3;
- (void)_handleAuthenticationSucceeded:(id)a3;
- (void)_handleCarCapabilitiesUpdated;
- (void)_handleConfigurationUpdated;
- (void)_handleEndpointActivated:(id)a3;
- (void)_handleInCarNotification;
- (void)_handleSessionChanged;
- (void)_handleStartingWiredConnectionNotification;
- (void)_sessionUpdatesQueue_handleConnectingTimeout;
- (void)_sessionUpdatesQueue_notifyCancelledConnectionAttemptOnTransport:(unint64_t)a3;
- (void)_sessionUpdatesQueue_notifyDidConnectSession:(id)a3;
- (void)_sessionUpdatesQueue_notifyDidDisconnectSession:(id)a3;
- (void)_sessionUpdatesQueue_notifyDidUpdateSession:(id)a3;
- (void)_sessionUpdatesQueue_notifyStartedConnectionAttemptOnTransport:(unint64_t)a3;
- (void)_sessionUpdatesQueue_startConnectingTimer;
- (void)_sessionUpdatesQueue_stopConnectingTimer;
- (void)_sessionUpdatesQueue_updateSession;
- (void)addSessionObserver:(id)a3;
- (void)dealloc;
- (void)removeSessionObserver:(id)a3;
- (void)setSessionObserver:(id)a3;
- (void)waitForSessionInitialization;
@end

@implementation CARSessionStatus

+ (id)sessionUpdatesQueue
{
  if (sessionUpdatesQueue_onceToken != -1)
  {
    +[CARSessionStatus sessionUpdatesQueue];
  }

  v3 = sessionUpdatesQueue___updatesQueue;

  return v3;
}

- (CARSession)currentSession
{
  v2 = [(CARSessionStatus *)self session];
  if ([v2 _sessionReady] && (objc_msgSend(v2, "configuration"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "screens"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v3, v5))
  {
    v6 = v2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = CARSessionStatus;
  [(CARSessionStatus *)&v4 dealloc];
}

- (void)waitForSessionInitialization
{
  v3 = [objc_opt_class() sessionUpdatesQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CARSessionStatus_waitForSessionInitialization__block_invoke;
  block[3] = &unk_1E82FBF70;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __39__CARSessionStatus_sessionUpdatesQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("com.apple.CarKit.CARSessionStatus", attr);
  v2 = sessionUpdatesQueue___updatesQueue;
  sessionUpdatesQueue___updatesQueue = v1;
}

- (CARSessionStatus)initWithOptions:(unint64_t)a3
{
  v28.receiver = self;
  v28.super_class = CARSessionStatus;
  v4 = [(CARSessionStatus *)&v28 init];
  v5 = v4;
  if (v4)
  {
    [(CARSessionStatus *)v4 setSession:0];
    [(CARSessionStatus *)v5 setTimeoutInterval:30];
    v6 = [objc_opt_class() sessionUpdatesQueue];
    v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v6);

    objc_initWeak(&location, v5);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __36__CARSessionStatus_initWithOptions___block_invoke;
    handler[3] = &unk_1E82FC248;
    objc_copyWeak(&v26, &location);
    dispatch_source_set_event_handler(v7, handler);
    [(CARSessionStatus *)v5 setConnectingTimer:v7];
    dispatch_activate(v7);
    v8 = +[CARSessionChangedNotificationConverter sharedInstance];
    [(CARSessionStatus *)v5 setNotificationConverter:v8];

    v9 = [CARObserverHashTable alloc];
    v10 = [objc_opt_class() sessionUpdatesQueue];
    v11 = [(CARObserverHashTable *)v9 initWithProtocol:&unk_1F4803EC8 callbackQueue:v10];
    [(CARSessionStatus *)v5 setSessionObservers:v11];

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v5 selector:sel__handleAuthenticationSucceeded_ name:@"CARSessionAuthenticationSucceededNotification" object:0];

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:v5 selector:sel__handleEndpointActivated_ name:@"CARSessionEndpointActivatedNotification" object:0];

    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 addObserver:v5 selector:sel__handleSessionChanged name:@"CARSessionStatusChangedNotification" object:0];

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v5 selector:sel__handleSessionChanged name:@"CARSessionServerConnectionDiedNotification" object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, CRSessionStatusInCarNotificationCallback, @"com.apple.carplay.in-car", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v17 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v17, v5, CRSessionStatusStartingWiredConnectionNotificationCallback, @"com.apple.carplay.starting-wired-connection", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v18 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v18, v5, CRSessionStatusAccessoryUpdatedNotificationCallback, @"CARSessionAccessoryUpdatedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v19 = [objc_opt_class() sessionUpdatesQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__CARSessionStatus_initWithOptions___block_invoke_2;
    block[3] = &unk_1E82FBF70;
    v20 = v5;
    v24 = v20;
    dispatch_async(v19, block);

    v20->_sessionStatusOptions = a3;
    if ((a3 & 4) != 0)
    {
      v21 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v21, v20, CRSessionStatusCapabilitiesUpdatedNotificationCallback, @"CARSessionCarCapabilitiesUpdatedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    if (a3)
    {
      [(CARSessionStatus *)v20 waitForSessionInitialization];
    }

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __36__CARSessionStatus_initWithOptions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sessionUpdatesQueue_handleConnectingTimeout];
}

- (void)setSessionObserver:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sessionObserver);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_sessionObserver);
    [(CARSessionStatus *)self removeSessionObserver:v5];

    objc_storeWeak(&self->_sessionObserver, 0);
  }

  v6 = obj;
  if (obj)
  {
    objc_storeWeak(&self->_sessionObserver, obj);
    [(CARSessionStatus *)self addSessionObserver:obj];
    v6 = obj;
  }
}

- (void)addSessionObserver:(id)a3
{
  v4 = a3;
  v5 = [(CARSessionStatus *)self sessionObservers];
  [v5 registerObserver:v4];
}

- (void)removeSessionObserver:(id)a3
{
  v4 = a3;
  v5 = [(CARSessionStatus *)self sessionObservers];
  [v5 unregisterObserver:v4];
}

- (void)_handleAuthenticationSucceeded:(id)a3
{
  v4 = [objc_opt_class() sessionUpdatesQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CARSessionStatus__handleAuthenticationSucceeded___block_invoke;
  block[3] = &unk_1E82FBF70;
  block[4] = self;
  dispatch_async(v4, block);
}

void __51__CARSessionStatus__handleAuthenticationSucceeded___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) session];
  v3 = [v2 isAuthenticated];

  if ((v3 & 1) == 0)
  {
    [*(a1 + 32) setSession:0];
    v4 = *(a1 + 32);

    [v4 _sessionUpdatesQueue_updateSession];
  }
}

- (void)_handleEndpointActivated:(id)a3
{
  v4 = [objc_opt_class() sessionUpdatesQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CARSessionStatus__handleEndpointActivated___block_invoke;
  block[3] = &unk_1E82FBF70;
  block[4] = self;
  dispatch_async(v4, block);
}

void __45__CARSessionStatus__handleEndpointActivated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) session];
  if ([v2 isActivated])
  {
    v3 = [*(a1 + 32) session];
    v4 = [v3 configuration];
    v5 = [v4 screens];
    v6 = [v5 count];

    if (v6)
    {
      return;
    }
  }

  else
  {
  }

  [*(a1 + 32) setSession:0];
  v7 = *(a1 + 32);

  [v7 _sessionUpdatesQueue_updateSession];
}

- (void)_handleInCarNotification
{
  v3 = [objc_opt_class() sessionUpdatesQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CARSessionStatus__handleInCarNotification__block_invoke;
  block[3] = &unk_1E82FBF70;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __44__CARSessionStatus__handleInCarNotification__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _sessionUpdatesQueue_notifyStartedConnectionAttemptOnTransport:3];
  v2 = *(a1 + 32);

  return [v2 _sessionUpdatesQueue_startConnectingTimer];
}

- (void)_handleStartingWiredConnectionNotification
{
  objc_initWeak(&location, self);
  v2 = [objc_opt_class() sessionUpdatesQueue];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__CARSessionStatus__handleStartingWiredConnectionNotification__block_invoke;
  v3[3] = &unk_1E82FC248;
  objc_copyWeak(&v4, &location);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __62__CARSessionStatus__handleStartingWiredConnectionNotification__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sessionUpdatesQueue_notifyStartedConnectionAttemptOnTransport:1];
  [WeakRetained _sessionUpdatesQueue_startConnectingTimer];
}

- (void)_handleSessionChanged
{
  v3 = [objc_opt_class() sessionUpdatesQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CARSessionStatus__handleSessionChanged__block_invoke;
  block[3] = &unk_1E82FBF70;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_handleConfigurationUpdated
{
  v3 = [objc_opt_class() sessionUpdatesQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CARSessionStatus__handleConfigurationUpdated__block_invoke;
  block[3] = &unk_1E82FBF70;
  block[4] = self;
  dispatch_async(v3, block);
}

void __47__CARSessionStatus__handleConfigurationUpdated__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) session];
  [v2 _sessionUpdatesQueue_updateConfiguration];

  v3 = *(a1 + 32);
  v4 = [v3 session];
  [v3 _sessionUpdatesQueue_notifyDidUpdateSession:v4];

  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_DEFAULT, "Configuration updated for session %@", &v7, 0xCu);
  }
}

- (void)_handleCarCapabilitiesUpdated
{
  objc_initWeak(&location, self);
  v2 = [objc_opt_class() sessionUpdatesQueue];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__CARSessionStatus__handleCarCapabilitiesUpdated__block_invoke;
  v3[3] = &unk_1E82FC248;
  objc_copyWeak(&v4, &location);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __49__CARSessionStatus__handleCarCapabilitiesUpdated__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained session];
  [v2 _updateCarCapabilities];

  v3 = [WeakRetained session];
  [WeakRetained _sessionUpdatesQueue_notifyDidUpdateSession:v3];

  v4 = CarGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = WeakRetained;
    _os_log_impl(&dword_1C81FC000, v4, OS_LOG_TYPE_DEFAULT, "CarCapabilities updated for session %@", &v5, 0xCu);
  }
}

- (void)_sessionUpdatesQueue_updateSession
{
  v3 = +[CARSessionStatus sessionUpdatesQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CARSessionStatus *)self session];
  v5 = [v4 endpoint];

  FigEndpointCopyActiveCarPlayEndpoint();
  if (v5)
  {
    [(CARSessionStatus *)self _sessionUpdatesQueue_stopConnectingTimer];
    v6 = [(CARSessionStatus *)self session];
    [(CARSessionStatus *)self setSession:0];
    if ([v6 _sessionReady])
    {
      [(CARSessionStatus *)self _sessionUpdatesQueue_notifyDidDisconnectSession:v6];
    }
  }
}

- (void)_sessionUpdatesQueue_startConnectingTimer
{
  v3 = +[CARSessionStatus sessionUpdatesQueue];
  dispatch_assert_queue_V2(v3);

  v4 = CarGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C81FC000, v4, OS_LOG_TYPE_INFO, "starting session connecting timeout", v7, 2u);
  }

  v5 = [(CARSessionStatus *)self connectingTimer];
  v6 = dispatch_time(0, 1000000000 * [(CARSessionStatus *)self timeoutInterval]);
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
  dispatch_activate(v5);
}

- (void)_sessionUpdatesQueue_stopConnectingTimer
{
  v3 = +[CARSessionStatus sessionUpdatesQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CARSessionStatus *)self connectingTimer];
  dispatch_source_cancel(v4);
}

- (void)_sessionUpdatesQueue_handleConnectingTimeout
{
  v3 = +[CARSessionStatus sessionUpdatesQueue];
  dispatch_assert_queue_V2(v3);

  [(CARSessionStatus *)self _sessionUpdatesQueue_stopConnectingTimer];

  [(CARSessionStatus *)self _sessionUpdatesQueue_notifyCancelledConnectionAttemptOnTransport:3];
}

- (void)_sessionUpdatesQueue_notifyStartedConnectionAttemptOnTransport:(unint64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = +[CARSessionStatus sessionUpdatesQueue];
  dispatch_assert_queue_V2(v5);

  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [CARSessionConfiguration _descriptionForTransportType:a3];
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_1C81FC000, v6, OS_LOG_TYPE_DEFAULT, "attempting connection on transport %{public}@", &v9, 0xCu);
  }

  v8 = [(CARSessionStatus *)self sessionObservers];
  [v8 startedConnectionAttemptOnTransport:a3];
}

- (void)_sessionUpdatesQueue_notifyCancelledConnectionAttemptOnTransport:(unint64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = +[CARSessionStatus sessionUpdatesQueue];
  dispatch_assert_queue_V2(v5);

  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [CARSessionConfiguration _descriptionForTransportType:a3];
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_1C81FC000, v6, OS_LOG_TYPE_DEFAULT, "cancelled connection attempt on transport %{public}@", &v9, 0xCu);
  }

  v8 = [(CARSessionStatus *)self sessionObservers];
  [v8 cancelledConnectionAttemptOnTransport:a3];
}

- (void)_sessionUpdatesQueue_notifyDidConnectSession:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[CARSessionStatus sessionUpdatesQueue];
  dispatch_assert_queue_V2(v5);

  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1C81FC000, v6, OS_LOG_TYPE_DEFAULT, "connected session %@", &v8, 0xCu);
  }

  v7 = [(CARSessionStatus *)self sessionObservers];
  [v7 sessionDidConnect:v4];
}

- (void)_sessionUpdatesQueue_notifyDidDisconnectSession:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[CARSessionStatus sessionUpdatesQueue];
  dispatch_assert_queue_V2(v5);

  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 _fig_safe_description];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_1C81FC000, v6, OS_LOG_TYPE_DEFAULT, "disconnected session %@", &v9, 0xCu);
  }

  v8 = [(CARSessionStatus *)self sessionObservers];
  [v8 sessionDidDisconnect:v4];
}

- (void)_sessionUpdatesQueue_notifyDidUpdateSession:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[CARSessionStatus sessionUpdatesQueue];
  dispatch_assert_queue_V2(v5);

  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1C81FC000, v6, OS_LOG_TYPE_DEFAULT, "updated session %@", &v9, 0xCu);
  }

  v7 = [(CARSessionStatus *)self sessionObservers];
  v8 = [v4 configuration];
  [v7 session:v4 didUpdateConfiguration:v8];
}

- (CARSessionObserving)sessionObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionObserver);

  return WeakRetained;
}

@end