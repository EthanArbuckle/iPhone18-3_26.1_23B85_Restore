@interface CMContinuityCaptureDiscoverySession
+ (id)rapportDeviceIdentifier:(id)identifier;
+ (id)sharedInstance;
+ (void)invalidate;
+ (void)unscheduleAllNotificationForDeviceIdentifier:(id)identifier;
- (BOOL)_isSignedInDevice:(id)device;
- (BOOL)setupRPClient;
- (BOOL)validateSessionInfoForEvent:(id)event;
- (CMContinuityCaptureDiscoverySession)initWithQueue:(id)queue;
- (NSArray)availableClientDevices;
- (id)_deviceForIdentifier:(id)identifier;
- (id)currentDeviceList;
- (id)currentUserSelectedInSessionDeviceIdentifier;
- (id)description;
- (id)discoveredCompatibleDevices:(id)devices rapportDevices:(id)rapportDevices;
- (id)discoveredLocalDevices;
- (id)discoveredRapportDevices;
- (id)rpRemoteDisplayDiscovery;
- (id)validateCapabilitiesAndCacheIncompatibleNotificationIfApplicable:(id)applicable majorVersion:(unint64_t)version;
- (unint64_t)transportErrorFlags;
- (void)activate;
- (void)addSidebandMessageNotificationHandler:(id)handler forDeviceIdentifier:(id)identifier;
- (void)boostDiscoveryForReason:(id)reason completion:(id)completion;
- (void)cancel;
- (void)currentDeviceList;
- (void)device:(id)device isNearby:(BOOL)nearby;
- (void)discardUserSelectedDeviceIfApplicableWithReason:(id)reason;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeSidebandMessageNotificationHandlerForDeviceIdentifier:(id)identifier;
- (void)setupProxyMonitoring;
- (void)setupRPRemoteDisplayDiscovery;
- (void)showIncompatibleDeviceNotificationIfApplicable;
- (void)updateState;
@end

@implementation CMContinuityCaptureDiscoverySession

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[CMContinuityCaptureDiscoverySession sharedInstance];
  }

  v3 = _discoverySession;

  return v3;
}

uint64_t __53__CMContinuityCaptureDiscoverySession_sharedInstance__block_invoke()
{
  v0 = [CMContinuityCaptureDiscoverySession alloc];
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.continuitycapture.discoverysession", v1);
  v3 = [(CMContinuityCaptureDiscoverySession *)v0 initWithQueue:v2];
  v4 = _discoverySession;
  _discoverySession = v3;

  v5 = _discoverySession;

  return [v5 activate];
}

+ (void)invalidate
{
  obj = objc_opt_class();
  objc_sync_enter(obj);
  if (_discoverySession && ([_discoverySession invalidated] & 1) == 0)
  {
    dispatch_async(*(_discoverySession + 24), &__block_literal_global_10);
  }

  objc_sync_exit(obj);
}

- (unint64_t)transportErrorFlags
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  errorFlags = [(RPCompanionLinkClient *)selfCopy->_rpCompanionLinkClient errorFlags];
  objc_sync_exit(selfCopy);

  return errorFlags;
}

- (id)currentUserSelectedInSessionDeviceIdentifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_currentUserSelectedInSessionDeviceIdentifier;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)rpRemoteDisplayDiscovery
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_rpRemoteDisplayDiscovery;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)discardUserSelectedDeviceIfApplicableWithReason:(id)reason
{
  obj = self;
  objc_sync_enter(obj);
  currentUserSelectedInSessionDeviceIdentifier = obj->_currentUserSelectedInSessionDeviceIdentifier;
  obj->_currentUserSelectedInSessionDeviceIdentifier = 0;

  currentUserSelectedInSessionDevice = obj->_currentUserSelectedInSessionDevice;
  obj->_currentUserSelectedInSessionDevice = 0;

  objc_sync_exit(obj);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: [%p]", v5, self];

  return v6;
}

- (void)boostDiscoveryForReason:(id)reason completion:(id)completion
{
  reasonCopy = reason;
  completionCopy = completion;
  objc_initWeak(&location, self);
  rpCompanionLinkClient = self->_rpCompanionLinkClient;
  if (rpCompanionLinkClient)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74__CMContinuityCaptureDiscoverySession_boostDiscoveryForReason_completion___block_invoke;
    v10[3] = &unk_278D5C548;
    objc_copyWeak(&v13, &location);
    v11 = reasonCopy;
    v12 = completionCopy;
    [(RPCompanionLinkClient *)rpCompanionLinkClient triggerEnhancedDiscoveryForReason:v11 useCase:131079 completion:v10];

    objc_destroyWeak(&v13);
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:-536870911 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v9);
  }

  objc_destroyWeak(&location);
}

void __74__CMContinuityCaptureDiscoverySession_boostDiscoveryForReason_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v6 = *(a1 + 32);
    v7 = 138543874;
    v8 = WeakRetained;
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ triggerEnhancedDiscovery ForReason %@ Error %@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)setupProxyMonitoring
{
  v3 = [[CMContinuityCaptureProximityMonitor alloc] initWithQueue:self->_queue delegate:self];
  proximityMonitor = self->_proximityMonitor;
  self->_proximityMonitor = v3;

  MEMORY[0x2821F96F8]();
}

- (void)setupRPRemoteDisplayDiscovery
{
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(MEMORY[0x277D441E0]);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_rpRemoteDisplayDiscovery, v3);
  objc_sync_exit(selfCopy);

  [v3 setDispatchQueue:selfCopy->_queue];
  [v3 setDiscoveryFlags:{objc_msgSend(v3, "discoveryFlags") | 3}];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__CMContinuityCaptureDiscoverySession_setupRPRemoteDisplayDiscovery__block_invoke;
  v15[3] = &unk_278D5C570;
  objc_copyWeak(&v16, &location);
  [v3 setDeviceFoundHandler:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__CMContinuityCaptureDiscoverySession_setupRPRemoteDisplayDiscovery__block_invoke_43;
  v13[3] = &unk_278D5C570;
  objc_copyWeak(&v14, &location);
  [v3 setDeviceLostHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__CMContinuityCaptureDiscoverySession_setupRPRemoteDisplayDiscovery__block_invoke_44;
  v11[3] = &unk_278D5C598;
  objc_copyWeak(&v12, &location);
  [v3 setDeviceChangedHandler:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__CMContinuityCaptureDiscoverySession_setupRPRemoteDisplayDiscovery__block_invoke_46;
  v9[3] = &unk_278D5C570;
  objc_copyWeak(&v10, &location);
  [v3 setDedicatedDeviceChangedHandler:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__CMContinuityCaptureDiscoverySession_setupRPRemoteDisplayDiscovery__block_invoke_47;
  v7[3] = &unk_278D5C570;
  objc_copyWeak(&v8, &location);
  [v3 setDeviceSelectedHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__CMContinuityCaptureDiscoverySession_setupRPRemoteDisplayDiscovery__block_invoke_48;
  v5[3] = &unk_278D5C5C0;
  objc_copyWeak(&v6, &location);
  [v3 setDiscoverySessionStateChangedHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);

  objc_destroyWeak(&location);
}

void __68__CMContinuityCaptureDiscoverySession_setupRPRemoteDisplayDiscovery__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_loadWeakRetained((a1 + 32));
      v7 = 138543618;
      v8 = v6;
      v9 = 2114;
      v10 = v3;
      _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ New Device %{public}@ added", &v7, 0x16u);
    }

    [WeakRetained updateState];
  }
}

void __68__CMContinuityCaptureDiscoverySession_setupRPRemoteDisplayDiscovery__block_invoke_43(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_loadWeakRetained((a1 + 32));
      v7 = 138543618;
      v8 = v6;
      v9 = 2114;
      v10 = v3;
      _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Current Device %{public}@ lost", &v7, 0x16u);
    }

    [WeakRetained updateState];
  }
}

void __68__CMContinuityCaptureDiscoverySession_setupRPRemoteDisplayDiscovery__block_invoke_44(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_loadWeakRetained((a1 + 32));
      v9 = 138543874;
      v10 = v8;
      v11 = 2114;
      v12 = v5;
      v13 = 1024;
      v14 = a3;
      _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Device %{public}@ device state changed %x", &v9, 0x1Cu);
    }

    [WeakRetained updateState];
  }
}

void __68__CMContinuityCaptureDiscoverySession_setupRPRemoteDisplayDiscovery__block_invoke_46(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_loadWeakRetained((a1 + 32));
      v7 = 138543618;
      v8 = v6;
      v9 = 2114;
      v10 = v3;
      _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Dedicated Device changed %{public}@", &v7, 0x16u);
    }

    [WeakRetained updateState];
  }
}

void __68__CMContinuityCaptureDiscoverySession_setupRPRemoteDisplayDiscovery__block_invoke_47(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_loadWeakRetained((a1 + 32));
      v7 = 138543618;
      v8 = v6;
      v9 = 2114;
      v10 = v3;
      _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Device Selected %{public}@", &v7, 0x16u);
    }
  }
}

void __68__CMContinuityCaptureDiscoverySession_setupRPRemoteDisplayDiscovery__block_invoke_48(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_13;
  }

  v7 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_loadWeakRetained((a1 + 32));
    *buf = 138543874;
    v23 = v8;
    v24 = 1024;
    v25 = a2;
    v26 = 2114;
    v27 = v5;
    _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Session state changed to %d for device %{public}@", buf, 0x1Cu);
  }

  v9 = +[CMContinuityCaptureSessionStateManager sharedInstance];
  v10 = [v9 activeSession];
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v10;
  +[CMContinuityCaptureSessionStateManager sharedInstance];
  v12 = v21 = a2;
  v13 = [v12 activeSession];
  v14 = [v13 device];
  v15 = [v14 deviceIdentifier];
  v16 = [v15 UUIDString];
  v17 = [v16 isEqualToString:v5];

  a2 = v21;
  if (v21 == 1 && (v17 & 1) == 0)
  {
    v9 = +[CMContinuityCaptureSessionStateManager sharedInstance];
    [v9 stopCurrentSession:@"Device switch" syncOnOwnedQueue:1];
LABEL_8:
  }

  v18 = WeakRetained;
  objc_sync_enter(v18);
  if (a2 == 1)
  {
    v19 = v5;
  }

  else
  {
    v19 = 0;
  }

  objc_storeStrong(v18 + 14, v19);
  v20 = v18[15];
  v18[15] = 0;

  objc_sync_exit(v18);
  [v18 updateState];
LABEL_13:
}

- (void)addSidebandMessageNotificationHandler:(id)handler forDeviceIdentifier:(id)identifier
{
  handlerCopy = handler;
  identifierCopy = identifier;
  if (handlerCopy && identifierCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v8 = MEMORY[0x245D12020](handlerCopy);
    [(NSMutableDictionary *)selfCopy->_sidebandNotificationHandlersForIdentifier setObject:v8 forKeyedSubscript:identifierCopy];

    objc_sync_exit(selfCopy);
  }
}

- (void)removeSidebandMessageNotificationHandlerForDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_sidebandNotificationHandlersForIdentifier removeObjectForKey:identifierCopy];
  objc_sync_exit(selfCopy);
}

- (BOOL)validateSessionInfoForEvent:(id)event
{
  eventCopy = event;
  v7 = [eventCopy objectForKeyedSubscript:@"ContinuityCaptureRapportClientShieldSessionIDKey"];
  v8 = [eventCopy objectForKeyedSubscript:@"ContinuityCaptureRapportClientEventOriginTimeInNativeClockKey"];
  v9 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = +[CMContinuityCaptureSessionStateManager sharedInstance];
    activeSession = [v10 activeSession];
    *buf = 138413058;
    selfCopy = self;
    v35 = 2114;
    v36 = activeSession;
    v37 = 2114;
    v38 = v7;
    v39 = 2114;
    v40 = v8;
    _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%@ %{public}@ received shield sessionID %{public}@ originTime %{public}@", buf, 0x2Au);
  }

  selfCopy2 = self;

  v12 = +[CMContinuityCaptureSessionStateManager sharedInstance];
  activeSession2 = [v12 activeSession];
  if (activeSession2)
  {
    v14 = +[CMContinuityCaptureSessionStateManager sharedInstance];
    activeSession3 = [v14 activeSession];
    shieldSessionID = [activeSession3 shieldSessionID];
    if (!shieldSessionID)
    {

      v25 = 1;
LABEL_20:

      goto LABEL_21;
    }

    v4 = shieldSessionID;
    v30 = v14;
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  else if (!v7)
  {
    goto LABEL_16;
  }

  v31 = v8;
  v16 = +[CMContinuityCaptureSessionStateManager sharedInstance];
  activeSession4 = [v16 activeSession];
  shieldSessionID2 = [activeSession4 shieldSessionID];
  if (!shieldSessionID2)
  {

    v8 = v31;
    if (activeSession2)
    {
LABEL_15:
    }

LABEL_16:

LABEL_17:
    v12 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = selfCopy2;
      v35 = 2112;
      v36 = eventCopy;
      _os_log_impl(&dword_242545000, v12, OS_LOG_TYPE_DEFAULT, "%@ out of session event %@", buf, 0x16u);
    }

    v25 = 0;
    goto LABEL_20;
  }

  v19 = shieldSessionID2;
  v29 = eventCopy;
  v20 = +[CMContinuityCaptureSessionStateManager sharedInstance];
  activeSession5 = [v20 activeSession];
  shieldSessionID3 = [activeSession5 shieldSessionID];
  v23 = v7;
  v24 = shieldSessionID3;
  v28 = v23;
  v27 = [shieldSessionID3 isEqualToString:?];

  if (activeSession2)
  {
  }

  v7 = v28;
  eventCopy = v29;
  v8 = v31;
  if ((v27 & 1) == 0)
  {
    goto LABEL_17;
  }

  v25 = 1;
LABEL_21:

  return v25;
}

- (BOOL)setupRPClient
{
  objc_initWeak(location, self);
  v3 = objc_alloc_init(MEMORY[0x277D44160]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __52__CMContinuityCaptureDiscoverySession_setupRPClient__block_invoke;
  v17[3] = &unk_278D5C080;
  objc_copyWeak(&v18, location);
  v4 = MEMORY[0x245D12020](v17);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__CMContinuityCaptureDiscoverySession_setupRPClient__block_invoke_52;
  v15[3] = &unk_278D5C080;
  objc_copyWeak(&v16, location);
  v5 = MEMORY[0x245D12020](v15);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__CMContinuityCaptureDiscoverySession_setupRPClient__block_invoke_53;
  v12[3] = &unk_278D5C0A8;
  objc_copyWeak(&v14, location);
  v6 = v3;
  v13 = v6;
  v7 = MEMORY[0x245D12020](v12);
  if (v6)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_rpCompanionLinkClient, v3);
    objc_sync_exit(selfCopy);

    [v6 setDispatchQueue:selfCopy->_queue];
    [v6 setInvalidationHandler:v4];
    [v6 setInterruptionHandler:v5];
    [v6 setErrorFlagsChangedHandler:v7];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __52__CMContinuityCaptureDiscoverySession_setupRPClient__block_invoke_54;
    v10[3] = &unk_278D5C5E8;
    objc_copyWeak(&v11, location);
    v10[4] = selfCopy;
    [v6 registerEventID:@"ContinuityCaptureCompanionSessionEventID" options:0 handler:v10];
    objc_destroyWeak(&v11);
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);

  objc_destroyWeak(&v18);
  objc_destroyWeak(location);
  return v6 != 0;
}

void __52__CMContinuityCaptureDiscoverySession_setupRPClient__block_invoke(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = 138412290;
    v5 = WeakRetained;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%@ Client Invalidated", &v4, 0xCu);
  }
}

void __52__CMContinuityCaptureDiscoverySession_setupRPClient__block_invoke_52(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = 138412290;
    v5 = WeakRetained;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%@ Rapport Client Interrupted", &v4, 0xCu);
  }
}

void __52__CMContinuityCaptureDiscoverySession_setupRPClient__block_invoke_53(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [*(a1 + 32) errorFlags];
    v7 = 138412546;
    v8 = WeakRetained;
    v9 = 2048;
    v10 = v4;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%@ Client ErrorChange, newError %llu", &v7, 0x16u);
  }

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = v5;
  if (v5)
  {
    [v5 updateState];
  }
}

void __52__CMContinuityCaptureDiscoverySession_setupRPClient__block_invoke_54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_loadWeakRetained((a1 + 40));
      *buf = 138412802;
      v99 = v9;
      v100 = 2112;
      v101 = v5;
      v102 = 2112;
      v103 = v6;
      _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_INFO, "%@ Client Event %@ Option %@", buf, 0x20u);
    }

    v10 = [(__CFString *)v5 objectForKey:@"ContinuityCaptureRapportClientMessageTypeKey"];

    if (v10)
    {
      if (v6)
      {
        v11 = *MEMORY[0x277D442D0];
        v12 = [(__CFString *)v6 objectForKeyedSubscript:*MEMORY[0x277D442D0]];
        if (v12)
        {
          v13 = [(__CFString *)v6 objectForKeyedSubscript:v11];
        }

        else
        {
          v13 = 0;
        }

        v15 = *MEMORY[0x277D442E0];
        v16 = [(__CFString *)v6 objectForKeyedSubscript:*MEMORY[0x277D442E0]];
        if (v16)
        {
          v14 = [(__CFString *)v6 objectForKeyedSubscript:v15];
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }

      v17 = [WeakRetained _deviceForIdentifier:v13];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = [WeakRetained _deviceForIdentifier:v14];
      }

      v20 = v19;

      v21 = [v20 deviceIdentifier];
      v22 = [v21 UUIDString];

      v97 = v22;
      if (!v22)
      {
        v23 = v13;
        if (v14)
        {
          if ([*(a1 + 32) _isSignedInDevice:v6])
          {
            v23 = v13;
          }

          else
          {
            v23 = v14;
          }
        }

        v97 = v23;
      }

      v96 = v20;
      v24 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = objc_loadWeakRetained((a1 + 40));
        *buf = 138413058;
        v99 = v25;
        v100 = 2112;
        v101 = v13;
        v102 = 2112;
        v103 = v14;
        v104 = 2112;
        v105 = v97;
        _os_log_impl(&dword_242545000, v24, OS_LOG_TYPE_DEFAULT, "%@ idsID %@ spID %@ deviceIdentifier %@", buf, 0x2Au);
      }

      v26 = [(__CFString *)v5 objectForKeyedSubscript:@"ContinuityCaptureRapportClientMessageTypeKey"];
      if ([v26 integerValue] == 3)
      {
        v27 = [(__CFString *)v5 objectForKey:@"ContinuityCaptureRapportClientEventNameKey"];

        if (v27)
        {
          v28 = [(__CFString *)v5 objectForKeyedSubscript:@"ContinuityCaptureRapportClientEventNameKey"];
          v29 = [v28 isEqualToString:@"kCMContinuityCaptureEventUserDisconnect"];

          v30 = v96;
          if (!v29)
          {
            goto LABEL_84;
          }

          v31 = [(__CFString *)v5 objectForKeyedSubscript:@"ContinuityCaptureRapportClientUserDisconnectReasonKey"];

          if (v31)
          {
            v32 = [(__CFString *)v5 objectForKeyedSubscript:@"ContinuityCaptureRapportClientUserDisconnectReasonKey"];
          }

          else
          {
            v32 = @"Unknown";
          }

          v94 = v6;
          v52 = CMContinuityCaptureLog(0);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            v53 = objc_loadWeakRetained((a1 + 40));
            *buf = 138413058;
            v99 = v53;
            v100 = 2114;
            v101 = v13;
            v102 = 2112;
            v103 = v14;
            v104 = 2114;
            v105 = v32;
            _os_log_impl(&dword_242545000, v52, OS_LOG_TYPE_DEFAULT, "%@ User Disconnect for idsIdentifier: %{public}@ sessionPairingIdentifier: %@ reason: %{public}@", buf, 0x2Au);
          }

          v95 = v14;

          v54 = [WeakRetained validateSessionInfoForEvent:v5];
          v55 = +[CMContinuityCaptureSessionStateManager sharedInstance];
          v56 = [v55 activeSession];

          if (v56)
          {
            v57 = [v56 device];
            v58 = [v57 deviceIdentifier];
            [v58 UUIDString];
            v60 = v59 = v32;
            v61 = [v60 isEqualToString:v97];

            v32 = v59;
            if (v61)
            {
              v62 = +[CMContinuityCaptureSessionStateManager sharedInstance];
              [v62 stopCurrentSession:v59 syncOnOwnedQueue:1];
            }
          }

          v63 = (v96 != 0) & v54;
          v30 = v96;
          if (v63 == 1)
          {
            v64 = [WeakRetained queue];
            v116[0] = MEMORY[0x277D85DD0];
            v116[1] = 3221225472;
            v116[2] = __52__CMContinuityCaptureDiscoverySession_setupRPClient__block_invoke_58;
            v116[3] = &unk_278D5C0D0;
            v117 = v96;
            dispatch_async(v64, v116);
          }

          v6 = v94;
          goto LABEL_83;
        }
      }

      else
      {
      }

      v93 = v6;
      v95 = v14;
      v33 = v13;
      v34 = [(__CFString *)v5 objectForKeyedSubscript:@"ContinuityCaptureRapportClientMessageTypeKey"];
      if ([v34 integerValue] == 6 && (-[__CFString objectForKey:](v5, "objectForKey:", @"ContinuityCaptureRapportClientEventCapabilitiesPayloadKey"), (v35 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v36 = v35;
        v37 = [(__CFString *)v5 objectForKeyedSubscript:@"ContinuityCaptureRapportClientEventCapabilitiesPayloadKey"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v32 = [(__CFString *)v5 objectForKeyedSubscript:@"ContinuityCaptureRapportClientEventCapabilitiesPayloadKey"];
          v39 = CMContinuityCaptureLog(0);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v40 = objc_loadWeakRetained((a1 + 40));
            *buf = 138412546;
            v99 = v40;
            v100 = 2114;
            v101 = v97;
            _os_log_impl(&dword_242545000, v39, OS_LOG_TYPE_DEFAULT, "%@ Received camera capabilities for %{public}@", buf, 0x16u);
          }

          v13 = v33;
          if (v97)
          {
            v41 = [WeakRetained[2] objectForKey:?];

            v6 = v93;
            v30 = v96;
            if (v41)
            {
              v42 = CMContinuityCaptureLog(0);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                v43 = objc_loadWeakRetained((a1 + 40));
                *buf = 138412290;
                v99 = v43;
                _os_log_impl(&dword_242545000, v42, OS_LOG_TYPE_DEFAULT, "%@ update device state with new set of capabilities", buf, 0xCu);
              }

              [WeakRetained[2] setObject:v32 forKeyedSubscript:v97];
              v44 = [WeakRetained queue];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __52__CMContinuityCaptureDiscoverySession_setupRPClient__block_invoke_59;
              block[3] = &unk_278D5C080;
              objc_copyWeak(&v115, (a1 + 40));
              dispatch_async(v44, block);

              objc_destroyWeak(&v115);
            }

            goto LABEL_83;
          }

          v6 = v93;
LABEL_82:
          v30 = v96;
LABEL_83:

          v14 = v95;
LABEL_84:
          v85 = WeakRetained;
          objc_sync_enter(v85);
          if (v97)
          {
            v86 = [v85[18] objectForKey:v97];

            if (v86)
            {
              v87 = [v85[18] objectForKeyedSubscript:v97];
              (v87)[2](v87, v97, v5);
            }
          }

          objc_sync_exit(v85);

          goto LABEL_88;
        }
      }

      else
      {
      }

      v45 = [(__CFString *)v5 objectForKeyedSubscript:@"ContinuityCaptureRapportClientMessageTypeKey"];
      v46 = [v45 integerValue];

      if (v46 == 4)
      {
        v47 = CMContinuityCaptureLog(0);
        v13 = v33;
        v30 = v96;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v99 = WeakRetained;
          v100 = 2114;
          v101 = v97;
          _os_log_impl(&dword_242545000, v47, OS_LOG_TYPE_DEFAULT, "%@ Received skip placement step for %{public}@", buf, 0x16u);
        }

        v6 = v93;
        v14 = v95;
        if (!v96)
        {
          goto LABEL_84;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ![WeakRetained validateSessionInfoForEvent:v5])
        {
          goto LABEL_84;
        }

        v48 = [v96 queue];
        v112[0] = MEMORY[0x277D85DD0];
        v112[1] = 3221225472;
        v112[2] = __52__CMContinuityCaptureDiscoverySession_setupRPClient__block_invoke_61;
        v112[3] = &unk_278D5C0D0;
        v113 = v96;
        dispatch_async(v48, v112);

        v32 = v113;
        goto LABEL_83;
      }

      v49 = [(__CFString *)v5 objectForKeyedSubscript:@"ContinuityCaptureRapportClientMessageTypeKey"];
      v50 = [v49 integerValue];

      v13 = v33;
      v6 = v93;
      v14 = v95;
      v30 = v96;
      if (v50 != 2)
      {
        goto LABEL_84;
      }

      v32 = [(__CFString *)v5 objectForKeyedSubscript:@"ContinuityCaptureRapportClientShieldSessionIDKey"];
      v51 = [(__CFString *)v5 objectForKeyedSubscript:@"ContinuityCaptureRapportClientEventOriginTimeInNativeClockKey"];
      v90 = v51;
      if (v51)
      {
        v92 = CMContinuityCaptureGetDateFromTimeString(v51);
      }

      else
      {
        v92 = 0;
      }

      v65 = *MEMORY[0x277D442D8];
      v66 = [(__CFString *)v93 objectForKeyedSubscript:*MEMORY[0x277D442D8]];
      if (v66)
      {
      }

      else
      {
        v67 = [(__CFString *)v5 objectForKeyedSubscript:v65];

        if (!v67)
        {
          +[CMContinuityCaptureSessionStateManager sharedInstance];
          goto LABEL_69;
        }
      }

      v68 = [(__CFString *)v93 objectForKeyedSubscript:v65];
      if (v68)
      {
        v69 = v93;
      }

      else
      {
        v69 = v5;
      }

      v70 = [(__CFString *)v69 objectForKeyedSubscript:v65];
      v88 = CMContinuityCaptureDeviceModelFromModelString();

      +[CMContinuityCaptureSessionStateManager sharedInstance];
      v71 = LABEL_69:;
      v72 = [v71 activeSession];
      v91 = [v72 shieldSessionID];

      v73 = +[CMContinuityCaptureSessionStateManager sharedInstance];
      v74 = [v73 activeSession];
      v75 = [v74 shieldSessionIDGeneratedTime];

      v76 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413826;
        v99 = WeakRetained;
        v100 = 2114;
        v101 = v97;
        v102 = 2114;
        v103 = v32;
        v104 = 2114;
        v105 = v92;
        v106 = 1024;
        v107 = v89;
        v108 = 2114;
        v109 = v91;
        v110 = 2114;
        v111 = v75;
        _os_log_impl(&dword_242545000, v76, OS_LOG_TYPE_DEFAULT, "%@ Received shield launched event for %{public}@ shieldID %{public}@ generatedTime %{public}@ deviceModel %d. activeSession shieldID %{public}@ generatedTime %{public}@", buf, 0x44u);
      }

      v77 = 0;
      if (v75 && v92)
      {
        v77 = [v75 compare:v92] == 1;
      }

      v78 = +[CMContinuityCaptureSessionStateManager sharedInstance];
      v79 = [v78 activeSession];
      if (v79 && v32 && !v77)
      {
        v80 = [v91 isEqualToString:v32];

        if (v80)
        {
LABEL_80:

          goto LABEL_82;
        }

        v81 = +[CMContinuityCaptureSessionStateManager sharedInstance];
        v82 = [v81 activeSession];
        [v82 setShieldSessionID:v32];

        v83 = +[CMContinuityCaptureSessionStateManager sharedInstance];
        v84 = [v83 activeSession];
        [v84 setShieldSessionIDGeneratedTime:v92];

        v78 = +[CMContinuityCaptureSessionStateManager sharedInstance];
        v79 = [v78 activeSession];
        [v79 setDeviceModel:v89];
      }

      goto LABEL_80;
    }
  }

LABEL_88:
}

void __52__CMContinuityCaptureDiscoverySession_setupRPClient__block_invoke_59(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained updateState];
    WeakRetained = v2;
  }
}

- (NSArray)availableClientDevices
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  availableClientDeviceByIdentifiers = selfCopy->_availableClientDeviceByIdentifiers;
  if (availableClientDeviceByIdentifiers)
  {
    allValues = [(NSDictionary *)availableClientDeviceByIdentifiers allValues];
  }

  else
  {
    allValues = 0;
  }

  objc_sync_exit(selfCopy);

  return allValues;
}

- (BOOL)_isSignedInDevice:(id)device
{
  deviceCopy = device;
  v4 = *MEMORY[0x277D442E8];
  v5 = [deviceCopy objectForKeyedSubscript:*MEMORY[0x277D442E8]];
  if (v5)
  {
    v6 = [deviceCopy objectForKeyedSubscript:v4];
    v7 = ([v6 unsignedIntValue] >> 19) & 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)_deviceForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSDictionary *)selfCopy->_availableClientDeviceByIdentifiers objectForKey:identifierCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)device:(id)device isNearby:(BOOL)nearby
{
  nearbyCopy = nearby;
  deviceCopy = device;
  v7 = [(CMContinuityCaptureDiscoverySession *)self _deviceForIdentifier:deviceCopy];
  queue = [(CMContinuityCaptureDiscoverySession *)self queue];
  dispatch_assert_queue_V2(queue);

  if (!v7 || [v7 nearby] != nearbyCopy)
  {
    v9 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = "LEFT";
      v11 = 138412802;
      selfCopy = self;
      if (nearbyCopy)
      {
        v10 = "ENTERED";
      }

      v13 = 2114;
      v14 = deviceCopy;
      v15 = 2082;
      v16 = v10;
      _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%@ device %{public}@ %{public}s nearby range", &v11, 0x20u);
    }

    [(CMContinuityCaptureDiscoverySession *)self updateState];
  }
}

- (void)activate
{
  objc_initWeak(&location, self);
  v3 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v9 = 2080;
    v10 = "[CMContinuityCaptureDiscoverySession activate]";
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%@ %s", buf, 0x16u);
  }

  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__CMContinuityCaptureDiscoverySession_activate__block_invoke;
  v5[3] = &unk_278D5C0A8;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  dispatch_async(queue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __47__CMContinuityCaptureDiscoverySession_activate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[32] == 1)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ ContinuityCapture error : discovery client already activated", *(a1 + 32)}];
    }

    v3[32] = 1;
    v4 = *(v3 + 5);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __47__CMContinuityCaptureDiscoverySession_activate__block_invoke_2;
    v6[3] = &unk_278D5C1E8;
    objc_copyWeak(&v7, (a1 + 40));
    [v4 activateWithCompletion:v6];
    v5 = +[CMContinuityCaptureUserOnboarding sharedInstance];
    [v5 addObserver:v3 forKeyPath:@"state" options:3 context:0];

    objc_destroyWeak(&v7);
  }
}

void __47__CMContinuityCaptureDiscoverySession_activate__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v3 && [v3 code])
    {
      v5 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_loadWeakRetained((a1 + 32));
        *buf = 138412546;
        v11 = v6;
        v12 = 2112;
        v13 = v3;
        _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%@ RPClient ActivateWithCompletion error %@", buf, 0x16u);
      }
    }

    else
    {
      v7 = [WeakRetained rpRemoteDisplayDiscovery];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __47__CMContinuityCaptureDiscoverySession_activate__block_invoke_69;
      v8[3] = &unk_278D5C1E8;
      objc_copyWeak(&v9, (a1 + 32));
      [v7 activateWithCompletion:v8];

      objc_destroyWeak(&v9);
    }
  }
}

void __47__CMContinuityCaptureDiscoverySession_activate__block_invoke_69(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_loadWeakRetained((a1 + 32));
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%@ RPRemoteDisplayDiscovery ActivateWithCompletion error %@", &v8, 0x16u);
    }

    v7 = +[CMContinuityCaptureSessionStateManager sharedInstance];
    [v7 stopCurrentSession:@"ContinuityCaptureAgent launch" syncOnOwnedQueue:1];

    [WeakRetained updateState];
  }
}

- (void)cancel
{
  objc_initWeak(&location, self);
  v3 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v9 = 2080;
    v10 = "[CMContinuityCaptureDiscoverySession cancel]";
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%@ %s", buf, 0x16u);
  }

  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__CMContinuityCaptureDiscoverySession_cancel__block_invoke;
  v5[3] = &unk_278D5C0A8;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  dispatch_async(queue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __45__CMContinuityCaptureDiscoverySession_cancel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    if ((WeakRetained[32] & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ ContinuityCapture error : discovery client already cancelled", *(a1 + 32)}];
      WeakRetained = v10;
    }

    WeakRetained[32] = 0;
    v3 = WeakRetained;
    objc_sync_enter(v3);
    v4 = v3[5];
    if (v4)
    {
      [v4 invalidate];
      v5 = v3[5];
      v3[5] = 0;
    }

    objc_sync_exit(v3);

    v6 = v3;
    objc_sync_enter(v6);
    v7 = v6[6];
    if (v7)
    {
      [v7 invalidate];
      v8 = v6[6];
      v6[6] = 0;
    }

    objc_sync_exit(v6);

    v9 = +[CMContinuityCaptureUserOnboarding sharedInstance];
    [v9 removeObserver:v6 forKeyPath:@"state" context:0];

    *(v6 + 104) = 1;
    WeakRetained = v10;
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v12 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy = self;
    v53 = 2080;
    v54 = "[CMContinuityCaptureDiscoverySession observeValueForKeyPath:ofObject:change:context:]";
    v55 = 2114;
    v56 = pathCopy;
    v57 = 2114;
    v58 = objectCopy;
    _os_log_impl(&dword_242545000, v12, OS_LOG_TYPE_DEFAULT, "%@ %s %{public}@ %{public}@", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  if (![pathCopy isEqualToString:@"state"])
  {
    if ([pathCopy isEqualToString:@"userDisconnected"])
    {
      v19 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      if ([v19 BOOLValue])
      {
        v20 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
        bOOLValue = [v20 BOOLValue];

        if ((bOOLValue & 1) == 0)
        {
          queue = self->_queue;
          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 3221225472;
          v46[2] = __86__CMContinuityCaptureDiscoverySession_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
          v46[3] = &unk_278D5C0A8;
          objc_copyWeak(&v48, buf);
          v23 = objectCopy;
          v47 = v23;
          dispatch_async(queue, v46);
          deviceModel = [v23 deviceModel];
          v25 = continuityCaptureNotificationCenter_isiPhone(deviceModel);

          v40 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
          v26 = @"DISCONNECT_NOTIFICATION_TITLE_IPAD";
          if (v25)
          {
            v26 = @"DISCONNECT_NOTIFICATION_TITLE_IPHONE";
          }

          v45[0] = v26;
          v44[0] = @"kContinuityCaptureNotificationKeyTitle";
          v44[1] = @"kContinuityCaptureNotificationKeyTitleArgs";
          deviceName = [v23 deviceName];
          v43 = deviceName;
          v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
          v29 = v28;
          v30 = @"DISCONNECT_NOTIFICATION_BODY_IPAD";
          if (v25)
          {
            v30 = @"DISCONNECT_NOTIFICATION_BODY_IPHONE";
          }

          v45[1] = v28;
          v45[2] = v30;
          v44[2] = @"kContinuityCaptureNotificationKeyBody";
          v44[3] = @"kContinuityCaptureNotificationKeyIdentifier";
          v31 = MEMORY[0x277CCACA8];
          deviceIdentifier = [v23 deviceIdentifier];
          uUIDString = [deviceIdentifier UUIDString];
          v34 = [v31 stringWithFormat:@"%@%@", @"CMContinuityCaptureDisconnectNotification", uUIDString];
          v45[3] = v34;
          v45[4] = MEMORY[0x277CBEC38];
          v44[4] = @"kContinuityCaptureNotificationKeyOneTime";
          v44[5] = @"kContinuityCaptureNotificationKeyDeviceModel";
          deviceModel2 = [v23 deviceModel];
          v45[5] = deviceModel2;
          v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:6];
          [v40 scheduleNotification:1 data:v36];

          v18 = &v48;
          goto LABEL_7;
        }
      }

      else
      {
      }
    }

    if (![pathCopy isEqualToString:@"streamIntent"])
    {
      goto LABEL_22;
    }

    v37 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    if ([v37 BOOLValue])
    {

      goto LABEL_22;
    }

    v38 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
    bOOLValue2 = [v38 BOOLValue];

    if (!bOOLValue2)
    {
      goto LABEL_22;
    }

    v15 = self->_queue;
    v16 = v41;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __86__CMContinuityCaptureDiscoverySession_observeValueForKeyPath_ofObject_change_context___block_invoke_3;
    v41[3] = &unk_278D5C080;
    objc_copyWeak(&v42, buf);
    v17 = v41;
LABEL_6:
    dispatch_async(v15, v17);
    v18 = (v16 + 4);
LABEL_7:
    objc_destroyWeak(v18);
    goto LABEL_22;
  }

  v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
  integerValue = [v13 integerValue];

  if (integerValue == 1)
  {
    v15 = self->_queue;
    v16 = block;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__CMContinuityCaptureDiscoverySession_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_278D5C080;
    objc_copyWeak(&v50, buf);
    v17 = block;
    goto LABEL_6;
  }

LABEL_22:
  objc_destroyWeak(buf);
}

void __86__CMContinuityCaptureDiscoverySession_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained showIncompatibleDeviceNotificationIfApplicable];
    WeakRetained = v2;
  }
}

void __86__CMContinuityCaptureDiscoverySession_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v14 = WeakRetained;
    v3 = +[CMContinuityCaptureSessionStateManager sharedInstance];
    v4 = [v3 activeSession];
    if (v4)
    {
      v5 = v4;
      v6 = +[CMContinuityCaptureSessionStateManager sharedInstance];
      v7 = [v6 activeSession];
      v8 = [v7 device];
      v9 = [v8 deviceIdentifier];
      v10 = [v9 UUIDString];
      v11 = [*(a1 + 32) deviceIdentifier];
      v12 = [v11 UUIDString];
      v13 = [v10 isEqualToString:v12];

      if (!v13)
      {
LABEL_6:
        [v14 updateState];
        WeakRetained = v14;
        goto LABEL_7;
      }

      v3 = +[CMContinuityCaptureSessionStateManager sharedInstance];
      [v3 stopCurrentSession:@"User disconnect" syncOnOwnedQueue:1];
    }

    goto LABEL_6;
  }

LABEL_7:
}

void __86__CMContinuityCaptureDiscoverySession_observeValueForKeyPath_ofObject_change_context___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained updateState];
    WeakRetained = v2;
  }
}

+ (id)rapportDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  idsDeviceIdentifier = [identifierCopy idsDeviceIdentifier];
  if (idsDeviceIdentifier && ([identifierCopy idsDeviceIdentifier], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "length")))
  {
    idsDeviceIdentifier2 = [identifierCopy idsDeviceIdentifier];
  }

  else
  {
    idsDeviceIdentifier2 = [identifierCopy identifier];
    if (!idsDeviceIdentifier)
    {
      goto LABEL_6;
    }
  }

LABEL_6:

  return idsDeviceIdentifier2;
}

- (id)currentDeviceList
{
  CFPreferenceBooleanWithDefault = FigGetCFPreferenceBooleanWithDefault();
  rpRemoteDisplayDiscovery = [(CMContinuityCaptureDiscoverySession *)self rpRemoteDisplayDiscovery];
  discoveredDevices = rpRemoteDisplayDiscovery;
  if (CFPreferenceBooleanWithDefault)
  {
    currentState = [rpRemoteDisplayDiscovery currentState];

    if (currentState)
    {
      currentUserSelectedInSessionDeviceIdentifier = [(CMContinuityCaptureDiscoverySession *)self currentUserSelectedInSessionDeviceIdentifier];
      if (!currentUserSelectedInSessionDeviceIdentifier)
      {
        goto LABEL_17;
      }

      v8 = currentUserSelectedInSessionDeviceIdentifier;
      currentUserSelectedInSessionDeviceIdentifier2 = [(CMContinuityCaptureDiscoverySession *)self currentUserSelectedInSessionDeviceIdentifier];
      rpRemoteDisplayDiscovery2 = [(CMContinuityCaptureDiscoverySession *)self rpRemoteDisplayDiscovery];
      peerDeviceIdentifier = [rpRemoteDisplayDiscovery2 peerDeviceIdentifier];
      v12 = [currentUserSelectedInSessionDeviceIdentifier2 isEqualToString:peerDeviceIdentifier];

      if (v12)
      {
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        rpRemoteDisplayDiscovery3 = [(CMContinuityCaptureDiscoverySession *)self rpRemoteDisplayDiscovery];
        discoveredDevices = [rpRemoteDisplayDiscovery3 discoveredDevices];

        v14 = [discoveredDevices countByEnumeratingWithState:&v35 objects:v34 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v36;
          while (2)
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v36 != v16)
              {
                objc_enumerationMutation(discoveredDevices);
              }

              v18 = *(*(&v35 + 1) + 8 * i);
              identifier = [v18 identifier];
              rpRemoteDisplayDiscovery4 = [(CMContinuityCaptureDiscoverySession *)self rpRemoteDisplayDiscovery];
              peerDeviceIdentifier2 = [rpRemoteDisplayDiscovery4 peerDeviceIdentifier];
              v22 = [identifier isEqualToString:peerDeviceIdentifier2];

              if (v22)
              {
                v27 = CMContinuityCaptureLog(0);
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  selfCopy = self;
                  v32 = 2114;
                  v33 = v18;
                  _os_log_impl(&dword_242545000, v27, OS_LOG_TYPE_DEFAULT, "%@ found selected device %{public}@", buf, 0x16u);
                }

                selfCopy2 = self;
                objc_sync_enter(selfCopy2);
                objc_storeStrong(&selfCopy2->_currentUserSelectedInSessionDevice, v18);
                objc_sync_exit(selfCopy2);

                v29 = v18;
                discoveredDevices2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
                goto LABEL_16;
              }
            }

            v15 = [discoveredDevices countByEnumeratingWithState:&v35 objects:v34 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        v23 = CMContinuityCaptureLog(0);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [(CMContinuityCaptureDiscoverySession *)self currentDeviceList];
        }
      }

      else
      {
LABEL_17:
        v23 = CMContinuityCaptureLog(0);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [(CMContinuityCaptureDiscoverySession *)self currentDeviceList];
        }
      }
    }

    else
    {
      v23 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [(CMContinuityCaptureDiscoverySession *)self currentDeviceList];
      }
    }

    v25 = 0;
  }

  else
  {
    discoveredDevices2 = [rpRemoteDisplayDiscovery discoveredDevices];
LABEL_16:
    v25 = discoveredDevices2;
  }

  return v25;
}

- (id)discoveredLocalDevices
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (discoveredLocalDevices_onceToken != -1)
  {
    [CMContinuityCaptureDiscoverySession discoveredLocalDevices];
  }

  v3 = discoveredLocalDevices_localDevice;
  if (discoveredLocalDevices_localDevice)
  {
    uUIDString = [discoveredLocalDevices_identifier UUIDString];
    [v2 setObject:v3 forKeyedSubscript:uUIDString];
  }

  return v2;
}

void __61__CMContinuityCaptureDiscoverySession_discoveredLocalDevices__block_invoke()
{
  v0 = objc_opt_new();
  v1 = discoveredLocalDevices_identifier;
  discoveredLocalDevices_identifier = v0;

  v2 = [MEMORY[0x277CE5AC8] continuityCaptureCameraCapabilities];
  if (v2)
  {
    v7 = v2;
    v3 = [[CMContinuityCaptureCapabilities alloc] initWithDictionaryRepresentation:v2];
    v4 = [CMContinuityCaptureTransportNWDevice alloc];
    v5 = [(CMContinuityCaptureTransportNWDevice *)v4 initWithCapabilities:v3 identifier:discoveredLocalDevices_identifier remote:1];
    v6 = discoveredLocalDevices_localDevice;
    discoveredLocalDevices_localDevice = v5;

    v2 = v7;
  }
}

- (id)discoveredRapportDevices
{
  dispatch_assert_queue_V2(self->_queue);
  currentDeviceList = [(CMContinuityCaptureDiscoverySession *)self currentDeviceList];
  v100 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v124 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v122 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy11 = self;
    v128 = 2114;
    v129 = currentDeviceList;
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%@ RapportDevices : %{public}@", buf, 0x16u);
  }

  v168 = 0u;
  v169 = 0u;
  v166 = 0u;
  v167 = 0u;
  v5 = currentDeviceList;
  v6 = [v5 countByEnumeratingWithState:&v166 objects:v165 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v167;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v167 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v166 + 1) + 8 * i);
        v11 = MEMORY[0x277CCABB0];
        if (v10)
        {
          [v10 operatingSystemVersion];
          v12 = v162;
        }

        else
        {
          v12 = 0;
          v163 = 0;
          v162 = 0;
          v164 = 0;
        }

        v13 = [v11 numberWithInteger:v12];
        idsDeviceIdentifier = [v10 idsDeviceIdentifier];
        [v124 setObject:v13 forKeyedSubscript:idsDeviceIdentifier];

        v15 = MEMORY[0x277CCABB0];
        if (v10)
        {
          [v10 operatingSystemVersion];
          v16 = v160;
        }

        else
        {
          v16 = 0;
          v160 = 0;
          v159 = 0;
          v161 = 0;
        }

        v17 = [v15 numberWithInteger:v16];
        idsDeviceIdentifier2 = [v10 idsDeviceIdentifier];
        [v122 setObject:v17 forKeyedSubscript:idsDeviceIdentifier2];
      }

      v7 = [v5 countByEnumeratingWithState:&v166 objects:v165 count:16];
    }

    while (v7);
  }

  v157 = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  obj = v5;
  v19 = v124;
  v118 = [obj countByEnumeratingWithState:&v155 objects:v154 count:16];
  if (v118)
  {
    v113 = *v156;
    do
    {
      for (j = 0; j != v118; ++j)
      {
        if (*v156 != v113)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v155 + 1) + 8 * j);
        v22 = [CMContinuityCaptureDiscoverySession rapportDeviceIdentifier:v21];
        name = [v21 name];
        statusFlags = [v21 statusFlags];
        statusFlags2 = [v21 statusFlags];
        cameraState = [v21 cameraState];
        model = [v21 model];
        v28 = model;
        if (v22)
        {
          v123 = model;
          v121 = name;
          v29 = [v19 objectForKey:v22];

          v30 = v19;
          if (!v29)
          {
            v31 = CMContinuityCaptureLog(0);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              selfCopy11 = self;
              v128 = 2114;
              v129 = v22;
              _os_log_impl(&dword_242545000, v31, OS_LOG_TYPE_DEFAULT, "%@ (%{public}@) Missing device from rp display device list", buf, 0x16u);
            }

            v30 = v124;
          }

          v119 = v21;
          v32 = statusFlags & 0x1000000;
          v114 = statusFlags2 & 0x200;
          rpRemoteDisplayDiscovery = [(CMContinuityCaptureDiscoverySession *)self rpRemoteDisplayDiscovery];
          dedicatedDevice = [rpRemoteDisplayDiscovery dedicatedDevice];
          idsDeviceIdentifier3 = [dedicatedDevice idsDeviceIdentifier];
          v109 = [idsDeviceIdentifier3 isEqual:v22];

          LODWORD(dedicatedDevice) = [(CMContinuityCaptureProximityMonitor *)self->_proximityMonitor isDeviceNearby:v22];
          v36 = [v30 objectForKeyedSubscript:v22];
          unsignedLongValue = [v36 unsignedLongValue];

          v38 = [v122 objectForKeyedSubscript:v22];
          unsignedLongValue2 = [v38 unsignedLongValue];

          v39 = CMContinuityCaptureLog(0);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            cameraCapabilities = [v119 cameraCapabilities];
            statusFlags3 = [v119 statusFlags];
            *buf = 138415618;
            selfCopy11 = self;
            v128 = 2114;
            v129 = v22;
            v130 = 2114;
            v131 = v121;
            v132 = 2114;
            v133 = v123;
            v134 = 1024;
            v135 = v32 >> 24;
            v136 = 1024;
            v137 = v114 >> 9;
            v138 = 1024;
            v139 = cameraState == 1;
            v140 = 1024;
            v141 = dedicatedDevice;
            v142 = 1024;
            v143 = cameraCapabilities != 0;
            v144 = 2048;
            v145 = unsignedLongValue;
            v146 = 2048;
            v147 = unsignedLongValue2;
            v148 = 2048;
            v149 = v119;
            v150 = 2048;
            v151 = statusFlags3;
            v152 = 1024;
            v153 = v109;
            _os_log_impl(&dword_242545000, v39, OS_LOG_TYPE_DEFAULT, "%@ Client Device Identifier:%{public}@ Name:%{public}@ Model:%{public}@ Wired:%d Wireless:%d Magic:%d Nearby:%d Capabilities:%d Version:%llu.%llu devicePtr:%p status:%lx isDedicated:%d", buf, 0x76u);
          }

          v28 = v123;
          if (GestaltProductTypeStringToDeviceClass() == 11)
          {
            [(NSMutableDictionary *)self->_availableCapabilitiesByIdentifiers removeObjectForKey:v22];
            v19 = v124;
            name = v121;
            goto LABEL_105;
          }

          v108 = unsignedLongValue;
          v42 = [(CMContinuityCaptureDiscoverySession *)self validateCapabilitiesAndCacheIncompatibleNotificationIfApplicable:v119 majorVersion:unsignedLongValue];
          v43 = [(CMContinuityCaptureDiscoverySession *)self _deviceForIdentifier:v22];
          if (v43)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (v42)
              {
                [v43 setCapabilities:v42];
                goto LABEL_38;
              }
            }
          }

          if (v42)
          {
LABEL_38:
            [v42 capabilitiesVersion];
            if (v125 <= 300)
            {
              v44 = CMContinuityCaptureLog(0);
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                selfCopy11 = self;
                v128 = 2114;
                v129 = v22;
                v45 = v44;
                v46 = "%@ Support with sidecar for %{public}@";
                goto LABEL_44;
              }

              goto LABEL_45;
            }

            if ([v42 userDisabled])
            {
              v44 = CMContinuityCaptureLog(0);
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                selfCopy11 = self;
                v128 = 2114;
                v129 = v22;
                v45 = v44;
                v46 = "%@ skip %{public}@ device since it's disabled by user";
LABEL_44:
                _os_log_impl(&dword_242545000, v45, OS_LOG_TYPE_DEFAULT, v46, buf, 0x16u);
              }

LABEL_45:

              [(NSMutableDictionary *)self->_availableCapabilitiesByIdentifiers removeObjectForKey:v22];
              name = v121;
LABEL_104:

              v19 = v124;
              goto LABEL_105;
            }

            v47 = 1;
            if (!v32)
            {
LABEL_49:
              if (([(RPCompanionLinkClient *)self->_rpCompanionLinkClient errorFlags]& 4) != 0 || !v114)
              {
                v48 = CMContinuityCaptureLog(0);
                if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  selfCopy11 = self;
                  v128 = 2114;
                  v129 = v22;
                  _os_log_impl(&dword_242545000, v48, OS_LOG_TYPE_DEFAULT, "%@ (%{public}@) RPError : USB inactive and WifiOff", buf, 0x16u);
                }

                if (!v114)
                {
                  v49 = CMContinuityCaptureLog(0);
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    selfCopy11 = self;
                    v128 = 2114;
                    v129 = v22;
                    v50 = v49;
                    v51 = "%@ (%{public}@) non wired with wifip2p2 disabled";
                    goto LABEL_90;
                  }

                  goto LABEL_91;
                }
              }
            }
          }

          else
          {
            v47 = 0;
            if (!v32)
            {
              goto LABEL_49;
            }
          }

          v52 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
          [v52 unscheduleNotificationForDeviceIdentifier:v22 type:14 clearHistory:0];

          if (v43)
          {
            v115 = v47;
            objc_opt_class();
            v28 = v123;
            if (objc_opt_isKindOfClass())
            {
              v105 = dedicatedDevice;
              v110 = v42;
              v53 = CMContinuityCaptureLog(0);
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                selfCopy11 = self;
                v128 = 2114;
                v129 = v43;
                v130 = 2114;
                v131 = v121;
                _os_log_impl(&dword_242545000, v53, OS_LOG_TYPE_DEFAULT, "%@ Device %{public}@ name %{public}@ present", buf, 0x20u);
              }

              v54 = +[CMContinuityCaptureSessionStateManager sharedInstance];
              activeSession = [v54 activeSession];
              if (!activeSession)
              {
                v42 = v110;
                dedicatedDevice = dedicatedDevice;
                goto LABEL_82;
              }

              v102 = activeSession;
              v56 = +[CMContinuityCaptureSessionStateManager sharedInstance];
              activeSession2 = [v56 activeSession];
              [activeSession2 device];
              v58 = v98 = v54;
              deviceIdentifier = [v58 deviceIdentifier];
              uUIDString = [deviceIdentifier UUIDString];
              v97 = [uUIDString isEqualToString:v22];

              v42 = v110;
              dedicatedDevice = v105;
              if (v97)
              {
                if (v32)
                {
                  v61 = 2;
                }

                else
                {
                  v61 = 1;
                }

                v62 = +[CMContinuityCaptureSessionStateManager sharedInstance];
                activeSession3 = [v62 activeSession];
                [activeSession3 setTransport:v61];

                v54 = v62;
LABEL_82:
              }

              device = [v43 device];
              v78 = [v119 isEqual:device];

              if ((v78 & 1) == 0)
              {
                [v43 resetDevice:v119];
              }

              [v100 setObject:v43 forKeyedSubscript:v22];
              v79 = [v100 objectForKeyedSubscript:v22];
              [v79 setNearby:dedicatedDevice];

              v80 = [v100 objectForKeyedSubscript:v22];
              [v80 setDeviceMajorVersion:v108];

              v81 = [v100 objectForKeyedSubscript:v22];
              [v81 setDeviceMinorVersion:unsignedLongValue2];

              v82 = [v100 objectForKeyedSubscript:v22];
              [v82 notifyDeviceStateChange];

              v28 = v123;
            }

            name = v121;
            if (!v115)
            {
              goto LABEL_104;
            }

LABEL_103:
            [(CMContinuityCaptureProximityMonitor *)self->_proximityMonitor beginTracking:v22];
            goto LABEL_104;
          }

          v28 = v123;
          if (!v47)
          {
            v75 = [(NSMutableDictionary *)self->_availableCapabilitiesByIdentifiers objectForKey:v22];

            name = v121;
            if (!v75)
            {
              [(NSMutableDictionary *)self->_availableCapabilitiesByIdentifiers setObject:MEMORY[0x277CBEC10] forKeyedSubscript:v22];
              if (v32)
              {
                v76 = 2;
              }

              else
              {
                v76 = 1;
              }

              [CMContinuityCaptureTransportRapportDevice queryCameraCapabilitiesFromRemoteDevice:v119 transport:v76];
            }

            goto LABEL_104;
          }

          v64 = CMContinuityCaptureLog(0);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138413314;
            selfCopy11 = self;
            v128 = 2114;
            v129 = v22;
            v130 = 2114;
            v131 = v121;
            v132 = 2048;
            v133 = v42;
            v134 = 1024;
            v135 = v109;
            _os_log_impl(&dword_242545000, v64, OS_LOG_TYPE_DEFAULT, "%@ New rapport client device %{public}@ name %{public}@ capabilities %p isDedicated: %d", buf, 0x30u);
          }

          v65 = [[CMContinuityCaptureTransportRapportDevice alloc] initWithRapportDevice:v119 capabilities:v42 remote:1];
          v66 = v65;
          if (v109)
          {
            [(CMContinuityCaptureTransportRapportDevice *)v65 setPlacementStepSkipped:1];
          }

          if (!v66)
          {
            v49 = CMContinuityCaptureLog(0);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              selfCopy11 = self;
              v128 = 2114;
              v129 = v22;
              v50 = v49;
              v51 = "%@ Failed to create for device %{public}@";
LABEL_90:
              _os_log_impl(&dword_242545000, v50, OS_LOG_TYPE_DEFAULT, v51, buf, 0x16u);
            }

LABEL_91:

            [(NSMutableDictionary *)self->_availableCapabilitiesByIdentifiers removeObjectForKey:v22];
            name = v121;
            v28 = v123;
            goto LABEL_104;
          }

          v106 = dedicatedDevice;
          v111 = v42;
          v67 = +[CMContinuityCaptureSessionStateManager sharedInstance];
          activeSession4 = [v67 activeSession];
          v120 = v66;
          v96 = v32;
          if (activeSession4)
          {
            v116 = activeSession4;
            v69 = +[CMContinuityCaptureSessionStateManager sharedInstance];
            activeSession5 = [v69 activeSession];
            device2 = [activeSession5 device];
            deviceIdentifier2 = [device2 deviceIdentifier];
            uUIDString2 = [deviceIdentifier2 UUIDString];
            if ([uUIDString2 isEqualToString:v22])
            {
              v94 = +[CMContinuityCaptureSessionStateManager sharedInstance];
              activeSession6 = [v94 activeSession];
              device3 = [activeSession6 device];
              v95 = [device3 isEqual:v120];

              v28 = v123;
              if ((v95 & 1) == 0)
              {
                v67 = +[CMContinuityCaptureSessionStateManager sharedInstance];
                activeSession7 = [v67 activeSession];
                [activeSession7 setDevice:v120];
                goto LABEL_93;
              }

LABEL_95:
              v83 = +[CMContinuityCaptureSessionStateManager sharedInstance];
              activeSession8 = [v83 activeSession];
              if (activeSession8)
              {
                v117 = activeSession8;
                v85 = +[CMContinuityCaptureSessionStateManager sharedInstance];
                activeSession9 = [v85 activeSession];
                device4 = [activeSession9 device];
                deviceIdentifier3 = [device4 deviceIdentifier];
                uUIDString3 = [deviceIdentifier3 UUIDString];
                v104 = [uUIDString3 isEqualToString:v22];

                v28 = v123;
                if (v104)
                {
                  if (v96)
                  {
                    v90 = 2;
                  }

                  else
                  {
                    v90 = 1;
                  }

                  v83 = +[CMContinuityCaptureSessionStateManager sharedInstance];
                  activeSession10 = [v83 activeSession];
                  [activeSession10 setTransport:v90];

                  v28 = v123;
                  goto LABEL_101;
                }
              }

              else
              {
LABEL_101:
              }

              [(CMContinuityCaptureTransportRapportDevice *)v120 setDeviceMajorVersion:v108];
              [(CMContinuityCaptureTransportRapportDevice *)v120 setDeviceMinorVersion:unsignedLongValue2];
              [(CMContinuityCaptureTransportRapportDevice *)v120 setNearby:v106];
              [(NSMutableDictionary *)self->_availableCapabilitiesByIdentifiers removeObjectForKey:v22];
              [v100 setObject:v120 forKeyedSubscript:v22];
              v92 = [v100 objectForKeyedSubscript:v22];
              [v92 notifyDeviceStateChange];

              name = v121;
              v42 = v111;
              goto LABEL_103;
            }

            activeSession7 = v116;
LABEL_93:
          }

          goto LABEL_95;
        }

        v41 = CMContinuityCaptureLog(0);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          selfCopy11 = self;
          _os_log_impl(&dword_242545000, v41, OS_LOG_TYPE_DEFAULT, "%@ Missing device identifier", buf, 0xCu);
        }

LABEL_105:
      }

      v118 = [obj countByEnumeratingWithState:&v155 objects:v154 count:16];
    }

    while (v118);
  }

  return v100;
}

- (id)validateCapabilitiesAndCacheIncompatibleNotificationIfApplicable:(id)applicable majorVersion:(unint64_t)version
{
  applicableCopy = applicable;
  v6 = [CMContinuityCaptureDiscoverySession rapportDeviceIdentifier:applicableCopy];
  if (!v6)
  {
    v10 = 0;
    goto LABEL_21;
  }

  cameraCapabilities = [applicableCopy cameraCapabilities];

  if (cameraCapabilities)
  {
    v8 = [CMContinuityCaptureCapabilities alloc];
    cameraCapabilities2 = [applicableCopy cameraCapabilities];
    v10 = [(CMContinuityCaptureCapabilities *)v8 initWithDictionaryRepresentation:cameraCapabilities2];

    if (v10)
    {
      [(NSMutableSet *)self->_incompatibleDeviceByNotificationData removeAllObjects];
      goto LABEL_10;
    }
  }

  v11 = [(NSMutableDictionary *)self->_availableCapabilitiesByIdentifiers objectForKey:v6];
  if (!v11 || (v12 = v11, -[NSMutableDictionary objectForKeyedSubscript:](self->_availableCapabilitiesByIdentifiers, "objectForKeyedSubscript:", v6), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 count], v13, v12, !v14))
  {
    [(NSMutableSet *)self->_incompatibleDeviceByNotificationData removeAllObjects];
LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

  v15 = [CMContinuityCaptureCapabilities alloc];
  v16 = [(NSMutableDictionary *)self->_availableCapabilitiesByIdentifiers objectForKeyedSubscript:v6];
  v10 = [(CMContinuityCaptureCapabilities *)v15 initWithDictionaryRepresentation:v16];

  v17 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412546;
    selfCopy2 = self;
    v26 = 2114;
    v27 = v6;
    _os_log_impl(&dword_242545000, v17, OS_LOG_TYPE_DEFAULT, "%@ Use queried capabilities for %{public}@", &v24, 0x16u);
  }

  [(NSMutableSet *)self->_incompatibleDeviceByNotificationData removeAllObjects];
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_10:
  devicesCapabilities = [(CMContinuityCaptureCapabilities *)v10 devicesCapabilities];
  if (![devicesCapabilities count])
  {
    userDisabled = [(CMContinuityCaptureCapabilities *)v10 userDisabled];

    if (userDisabled)
    {
      goto LABEL_19;
    }

    v19 = v10;
LABEL_15:
    v20 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412802;
      selfCopy2 = self;
      v26 = 2114;
      v27 = v6;
      v28 = 2114;
      v29 = v19;
      _os_log_impl(&dword_242545000, v20, OS_LOG_TYPE_DEFAULT, "%@ skip %{public}@ device since it's missing camera capabilities %{public}@", &v24, 0x20u);
    }

    v10 = 0;
    goto LABEL_20;
  }

LABEL_19:
  v22 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
  [v22 unscheduleNotificationForDeviceIdentifier:v6 type:8 clearHistory:1];

  v19 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
  [v19 unscheduleNotificationForDeviceIdentifier:v6 type:9 clearHistory:1];
LABEL_20:

LABEL_21:

  return v10;
}

- (id)discoveredCompatibleDevices:(id)devices rapportDevices:(id)rapportDevices
{
  devicesCopy = devices;
  rapportDevicesCopy = rapportDevices;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = objc_alloc(MEMORY[0x277CBEB58]);
  v9 = devicesCopy;
  allKeys = [devicesCopy allKeys];
  v11 = [v8 initWithArray:allKeys];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  allKeys2 = [rapportDevicesCopy allKeys];
  v13 = [allKeys2 countByEnumeratingWithState:&v40 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v41;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(allKeys2);
        }

        v17 = *(*(&v40 + 1) + 8 * i);
        v18 = CMContinuityCaptureLog(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          selfCopy2 = self;
          v37 = 2114;
          v38 = v17;
          _os_log_impl(&dword_242545000, v18, OS_LOG_TYPE_DEFAULT, "%@ Support with rapport for %{public}@", buf, 0x16u);
        }

        [v11 removeObject:v17];
        v19 = [rapportDevicesCopy objectForKeyedSubscript:v17];
        [v7 setObject:v19 forKeyedSubscript:v17];
      }

      v14 = [allKeys2 countByEnumeratingWithState:&v40 objects:v39 count:16];
    }

    while (v14);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  allObjects = [v11 allObjects];
  v21 = [allObjects countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v32;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(allObjects);
        }

        v25 = *(*(&v31 + 1) + 8 * j);
        v26 = CMContinuityCaptureLog(0);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          selfCopy2 = self;
          v37 = 2114;
          v38 = v25;
          _os_log_impl(&dword_242545000, v26, OS_LOG_TYPE_DEFAULT, "%@ Support with sidecar for %{public}@", buf, 0x16u);
        }

        v27 = [v9 objectForKeyedSubscript:v25];
        [v7 setObject:v27 forKeyedSubscript:v25];
      }

      v22 = [allObjects countByEnumeratingWithState:&v31 objects:v30 count:16];
    }

    while (v22);
  }

  return v7;
}

+ (void)unscheduleAllNotificationForDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
  [v4 unscheduleNotificationForDeviceIdentifier:identifierCopy type:8 clearHistory:0];

  v5 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
  [v5 unscheduleNotificationForDeviceIdentifier:identifierCopy type:9 clearHistory:0];

  v6 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
  [v6 unscheduleNotificationForDeviceIdentifier:identifierCopy type:13 clearHistory:0];

  v7 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
  [v7 unscheduleNotificationForDeviceIdentifier:identifierCopy type:14 clearHistory:0];

  v8 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
  [v8 unscheduleNotificationForDeviceIdentifier:identifierCopy type:2 clearHistory:0];

  v9 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
  [v9 unscheduleNotificationForDeviceIdentifier:identifierCopy type:3 clearHistory:0];

  v10 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
  [v10 unscheduleNotificationForDeviceIdentifier:identifierCopy type:1 clearHistory:0];

  v11 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
  [v11 unscheduleNotificationForDeviceIdentifier:identifierCopy type:11 clearHistory:0];
}

- (void)updateState
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    errorFlags = [(RPCompanionLinkClient *)self->_rpCompanionLinkClient errorFlags];
    *buf = 138412546;
    selfCopy3 = self;
    v103 = 2048;
    v104 = errorFlags;
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%@ RapportErrorFlags : %llu", buf, 0x16u);
  }

  [(CMContinuityCaptureDiscoverySession *)self discoveredLocalDevices];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v81 = v100 = 0u;
  allValues = [v81 allValues];
  v6 = [allValues countByEnumeratingWithState:&v97 objects:v96 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v98;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v98 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v97 + 1) + 8 * i);
        availableClientDeviceByIdentifiers = self->_availableClientDeviceByIdentifiers;
        deviceIdentifier = [v10 deviceIdentifier];
        uUIDString = [deviceIdentifier UUIDString];
        v14 = [(NSDictionary *)availableClientDeviceByIdentifiers objectForKey:uUIDString];
        if (v14)
        {
        }

        else
        {
          v15 = [(NSMutableSet *)self->_observedDevices containsObject:v10];

          if ((v15 & 1) == 0)
          {
            magicStateMonitor = [v10 magicStateMonitor];
            [magicStateMonitor setupMagicStateListener];

            v17 = +[CMContinuityCaptureSessionStateManager sharedInstance];
            queue = [v17 queue];
            dispatch_assert_queue_not_V2(queue);

            v19 = +[CMContinuityCaptureSessionStateManager sharedInstance];
            queue2 = [v19 queue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __50__CMContinuityCaptureDiscoverySession_updateState__block_invoke;
            block[3] = &unk_278D5C008;
            block[4] = v10;
            block[5] = self;
            dispatch_async_and_wait(queue2, block);

            [v10 addObserver:self forKeyPath:@"userDisconnected" options:3 context:0];
            [(NSMutableSet *)self->_observedDevices addObject:v10];
          }
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v97 objects:v96 count:16];
    }

    while (v7);
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  allKeys = [(NSDictionary *)self->_availableClientDeviceByIdentifiers allKeys];
  v22 = [allKeys countByEnumeratingWithState:&v91 objects:v90 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v92;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v92 != v24)
        {
          objc_enumerationMutation(allKeys);
        }

        v26 = *(*(&v91 + 1) + 8 * j);
        v27 = [(NSDictionary *)self->_availableClientDeviceByIdentifiers objectForKeyedSubscript:v26];
        if ([v27 canDeferTermination])
        {
          v28 = [v81 objectForKey:v26];

          if (!v28)
          {
            v29 = CMContinuityCaptureLog(0);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v30 = [(NSDictionary *)self->_availableClientDeviceByIdentifiers objectForKeyedSubscript:v26];
              *buf = 138412546;
              selfCopy3 = self;
              v103 = 2114;
              v104 = v30;
              _os_log_impl(&dword_242545000, v29, OS_LOG_TYPE_DEFAULT, "%@ mark %{public}@ as deferred", buf, 0x16u);
            }

            v31 = [(NSDictionary *)self->_availableClientDeviceByIdentifiers objectForKeyedSubscript:v26];
            [v31 setTerminationDeferred:1];

            v32 = [(NSDictionary *)self->_availableClientDeviceByIdentifiers objectForKeyedSubscript:v26];
            [v81 setObject:v32 forKeyedSubscript:v26];
            goto LABEL_30;
          }
        }

        else
        {
        }

        v32 = [(NSDictionary *)self->_availableClientDeviceByIdentifiers objectForKeyedSubscript:v26];
        if ([v32 terminationDeferred])
        {
          v33 = [v81 objectForKey:v26];

          if (!v33)
          {
            goto LABEL_31;
          }

          v34 = CMContinuityCaptureLog(0);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = [(NSDictionary *)self->_availableClientDeviceByIdentifiers objectForKeyedSubscript:v26];
            *buf = 138412546;
            selfCopy3 = self;
            v103 = 2114;
            v104 = v35;
            _os_log_impl(&dword_242545000, v34, OS_LOG_TYPE_DEFAULT, "%@ mark %{public}@ as un-deferred", buf, 0x16u);
          }

          v32 = [v81 objectForKeyedSubscript:v26];
          [v32 setTerminationDeferred:0];
        }

LABEL_30:

LABEL_31:
        v36 = [(NSDictionary *)self->_availableClientDeviceByIdentifiers objectForKeyedSubscript:v26];
        if ([v36 userDisconnected])
        {
          v37 = [(NSDictionary *)self->_availableClientDeviceByIdentifiers objectForKeyedSubscript:v26];
          if ([v37 canReconnect])
          {
            v38 = [v81 objectForKey:v26];

            if (!v38)
            {
              continue;
            }

            v36 = [v81 objectForKeyedSubscript:v26];
            [v36 setUserDisconnected:0];
          }

          else
          {
          }
        }
      }

      v23 = [allKeys countByEnumeratingWithState:&v91 objects:v90 count:16];
    }

    while (v23);
  }

  [(CMContinuityCaptureDiscoverySession *)self willChangeValueForKey:@"availableClientDevices"];
  selfCopy4 = self;
  objc_sync_enter(selfCopy4);
  v40 = self->_availableClientDeviceByIdentifiers;
  v41 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v81];
  v42 = self->_availableClientDeviceByIdentifiers;
  self->_availableClientDeviceByIdentifiers = v41;

  objc_sync_exit(selfCopy4);
  [(CMContinuityCaptureDiscoverySession *)selfCopy4 didChangeValueForKey:@"availableClientDevices"];
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = [(NSDictionary *)v40 allKeys];
  v43 = [obj countByEnumeratingWithState:&v86 objects:v85 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v87;
    v74 = @"User disabled Continuity Camera in Settings";
    v75 = v40;
    v76 = *v87;
    do
    {
      v46 = 0;
      v77 = v44;
      do
      {
        if (*v87 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v47 = *(*(&v86 + 1) + 8 * v46);
        v48 = [v81 objectForKey:{v47, v74}];

        if (!v48)
        {
          v49 = [(NSDictionary *)v40 objectForKeyedSubscript:v47];
          v50 = CMContinuityCaptureLog(0);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            selfCopy3 = selfCopy4;
            v103 = 2114;
            v104 = v49;
            _os_log_impl(&dword_242545000, v50, OS_LOG_TYPE_DEFAULT, "%@ terminate %{public}@", buf, 0x16u);
          }

          [CMContinuityCaptureDiscoverySession unscheduleAllNotificationForDeviceIdentifier:v47];
          v51 = +[CMContinuityCaptureSessionStateManager sharedInstance];
          activeSession = [v51 activeSession];
          if (activeSession)
          {
            v53 = activeSession;
            v79 = +[CMContinuityCaptureSessionStateManager sharedInstance];
            activeSession2 = [v79 activeSession];
            device = [activeSession2 device];
            deviceIdentifier2 = [device deviceIdentifier];
            [deviceIdentifier2 UUIDString];
            v57 = v49;
            v59 = v58 = selfCopy4;
            v78 = [v59 isEqualToString:v47];

            selfCopy4 = v58;
            v49 = v57;

            v40 = v75;
            if (v78)
            {
              capabilities = [v49 capabilities];
              if (!capabilities || (v61 = capabilities, [v49 capabilities], v62 = objc_claimAutoreleasedReturnValue(), v63 = objc_msgSend(v62, "userDisabled"), v62, v61, v64 = v74, (v63 & 1) == 0))
              {
                v64 = @"Device lost";
              }

              v51 = +[CMContinuityCaptureSessionStateManager sharedInstance];
              [v51 stopCurrentSession:v64 syncOnOwnedQueue:1];
              goto LABEL_53;
            }
          }

          else
          {
LABEL_53:
          }

          if ([(NSMutableSet *)selfCopy4->_observedDevices containsObject:v49])
          {
            v65 = +[CMContinuityCaptureSessionStateManager sharedInstance];
            queue3 = [v65 queue];
            dispatch_assert_queue_not_V2(queue3);

            v67 = +[CMContinuityCaptureSessionStateManager sharedInstance];
            queue4 = [v67 queue];
            v82[0] = MEMORY[0x277D85DD0];
            v82[1] = 3221225472;
            v82[2] = __50__CMContinuityCaptureDiscoverySession_updateState__block_invoke_100;
            v82[3] = &unk_278D5C008;
            v69 = v49;
            v70 = v49;
            v83 = v70;
            v84 = selfCopy4;
            dispatch_async_and_wait(queue4, v82);

            [v70 removeObserver:selfCopy4 forKeyPath:@"userDisconnected" context:0];
            v71 = v70;
            v49 = v69;
            [(NSMutableSet *)selfCopy4->_observedDevices removeObject:v71];
          }

          [(CMContinuityCaptureProximityMonitor *)selfCopy4->_proximityMonitor endTracking:v47];
          v72 = [(NSDictionary *)v40 objectForKeyedSubscript:v47];
          magicStateMonitor2 = [v72 magicStateMonitor];
          [magicStateMonitor2 invalidate];

          [(NSMutableDictionary *)selfCopy4->_availableCapabilitiesByIdentifiers removeObjectForKey:v47];
          v45 = v76;
          v44 = v77;
        }

        ++v46;
      }

      while (v44 != v46);
      v44 = [obj countByEnumeratingWithState:&v86 objects:v85 count:16];
    }

    while (v44);
  }
}

- (void)showIncompatibleDeviceNotificationIfApplicable
{
  dispatch_assert_queue_V2(self->_queue);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_incompatibleDeviceByNotificationData;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
        v10 = [v8 objectForKeyedSubscript:@"Type"];
        [v9 scheduleNotification:objc_msgSend(v10 data:{"integerValue"), v8}];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v5);
  }
}

- (CMContinuityCaptureDiscoverySession)initWithQueue:(id)queue
{
  queueCopy = queue;
  v27.receiver = self;
  v27.super_class = CMContinuityCaptureDiscoverySession;
  v6 = [(CMContinuityCaptureDiscoverySession *)&v27 init];
  if (!v6)
  {
LABEL_8:
    v22 = 0;
    goto LABEL_4;
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  v8 = *(v6 + 1);
  *(v6 + 1) = v7;

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = *(v6 + 2);
  *(v6 + 2) = v9;

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = *(v6 + 18);
  *(v6 + 18) = v11;

  objc_storeStrong(v6 + 3, queue);
  v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v14 = *(v6 + 12);
  *(v6 + 12) = v13;

  v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v16 = *(v6 + 17);
  *(v6 + 17) = v15;

  if (([v6 setupRPClient] & 1) == 0)
  {
    v24 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = v6;
      _os_log_impl(&dword_242545000, v24, OS_LOG_TYPE_DEFAULT, "%@ rpCompanionclient setup failed", &v25, 0xCu);
    }

    goto LABEL_8;
  }

  [v6 setupRPRemoteDisplayDiscovery];
  [v6 setupProxyMonitoring];
  v17 = MEMORY[0x277CBEA60];
  v18 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CMContinuityCaptureCore"];
  v19 = [v18 pathForResource:@"UnsupportedDeviceModels_iOS15" ofType:@"plist"];
  v20 = [v17 arrayWithContentsOfFile:v19];
  v21 = *(v6 + 8);
  *(v6 + 8) = v20;

  *(v6 + 72) = xmmword_2425D8090;
  *(v6 + 11) = 1;
  v6[128] = FigGetCFPreferenceBooleanWithDefault() != 0;
  v22 = v6;
LABEL_4:

  return v22;
}

- (void)currentDeviceList
{
  rpRemoteDisplayDiscovery = [self rpRemoteDisplayDiscovery];
  peerDeviceIdentifier = [rpRemoteDisplayDiscovery peerDeviceIdentifier];
  OUTLINED_FUNCTION_0_1();
  v7 = v5;
  _os_log_error_impl(&dword_242545000, a2, OS_LOG_TYPE_ERROR, "%@ out of session for %{public}@", v6, 0x16u);
}

@end