@interface ContinuityCaptureRemoteUISystemStatus
+ (id)sharedInstance;
+ (void)invalidate;
- (BOOL)invalidated;
- (ContinuityCaptureRemoteUISystemStatus)initWithQueue:(id)queue;
- (unint64_t)activeCallCountOnMainQueue;
- (void)_avSystemControllerProcessDied;
- (void)_handleCall:(id)call;
- (void)_handleCallAudioSessionActiveNotification:(id)notification;
- (void)_handleCallStatusChangedNotification:(id)notification;
- (void)_resolveActiveCallState;
- (void)_setupAVSystemController;
- (void)addObserver:(id)observer;
- (void)holdIdleSleepAssertionForReason:(id)reason;
- (void)invalidate;
- (void)releaseCurrentIdleSleepAssertion;
- (void)removeObserver:(id)observer;
- (void)setInvalidated:(BOOL)invalidated;
- (void)setupCallStateMonitoring;
@end

@implementation ContinuityCaptureRemoteUISystemStatus

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_69 != -1)
  {
    +[ContinuityCaptureRemoteUISystemStatus sharedInstance];
  }

  v3 = _systemStatus;

  return v3;
}

uint64_t __55__ContinuityCaptureRemoteUISystemStatus_sharedInstance__block_invoke()
{
  v0 = [ContinuityCaptureRemoteUISystemStatus alloc];
  _systemStatus = [(ContinuityCaptureRemoteUISystemStatus *)v0 initWithQueue:MEMORY[0x277D85CD0]];

  return MEMORY[0x2821F96F8]();
}

void __55__ContinuityCaptureRemoteUISystemStatus_initWithQueue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setupCallStateMonitoring];
    WeakRetained = v2;
  }
}

- (BOOL)invalidated
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  invalidated = selfCopy->_invalidated;
  objc_sync_exit(selfCopy);

  return invalidated;
}

- (void)setInvalidated:(BOOL)invalidated
{
  obj = self;
  objc_sync_enter(obj);
  obj->_invalidated = invalidated;
  objc_sync_exit(obj);
}

+ (void)invalidate
{
  if (([_systemStatus invalidated] & 1) == 0)
  {
    [_systemStatus invalidate];
    v2 = _systemStatus;

    [v2 setInvalidated:1];
  }
}

- (void)invalidate
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D6EFF0] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277D6F038] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 removeObserver:self name:*MEMORY[0x277D26D40] object:0];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 removeObserver:self name:*MEMORY[0x277D26B50] object:0];
}

- (unint64_t)activeCallCountOnMainQueue
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  dispatch_assert_queue_not_V2(v2);

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__ContinuityCaptureRemoteUISystemStatus_activeCallCountOnMainQueue__block_invoke;
  block[3] = &unk_278D5C2B0;
  block[4] = &v7;
  dispatch_async_and_wait(v2, block);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __67__ContinuityCaptureRemoteUISystemStatus_activeCallCountOnMainQueue__block_invoke(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [v2 currentAudioAndVideoCalls];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v9 + 1) + 8 * v7) status] == 1)
        {
          ++*(*(*(a1 + 32) + 8) + 24);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v5);
  }
}

- (void)holdIdleSleepAssertionForReason:(id)reason
{
  reasonCopy = reason;
  v5 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy3 = self;
    v16 = 2080;
    *v17 = "[ContinuityCaptureRemoteUISystemStatus holdIdleSleepAssertionForReason:]";
    *&v17[8] = 2112;
    *&v17[10] = reasonCopy;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%@: %s %@", buf, 0x20u);
  }

  dispatch_assert_queue_V2(self->_queue);
  if (!self->_preventSystemSleepAssertionID)
  {
    v13 = 1;
    reasonCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"idleSleepPreventionSystemActivityForContinuityCapture(%d)_%@", getpid(), reasonCopy];
    v7 = IOPMAssertionDeclareSystemActivity();
    v8 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy3 = self;
      v16 = 1024;
      *v17 = v7;
      *&v17[4] = 1024;
      *&v17[6] = v13;
      _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%@ IOPMAssertionDeclareSystemActivity returned %x systemState %d", buf, 0x18u);
    }

    if (!v7)
    {
      v12[0] = @"audio-in";
      v12[1] = @"Camera";
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
      v10 = IOPMAssertionSetProperty(self->_preventSystemSleepAssertionID, @"ResourcesUsed", v9);
      v11 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        selfCopy3 = self;
        v16 = 1024;
        *v17 = v10;
        *&v17[4] = 2112;
        *&v17[6] = v9;
        _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%@ IOPMAssertionSetProperty returned %x for setting kIOPMAssertionResourcesUsed: %@", buf, 0x1Cu);
      }
    }
  }
}

- (void)releaseCurrentIdleSleepAssertion
{
  v3 = 138412546;
  selfCopy = self;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&dword_242545000, log, OS_LOG_TYPE_ERROR, "%@  IOPMAssertionRelease failed (%d)", &v3, 0x12u);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v5 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = observerCopy;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%@: %@", &v6, 0x16u);
  }

  dispatch_assert_queue_V2(self->_queue);
  [(NSHashTable *)self->_observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  dispatch_assert_queue_V2(self->_queue);
  v5 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = observerCopy;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%@: %@", &v6, 0x16u);
  }

  [(NSHashTable *)self->_observers removeObject:observerCopy];
}

- (void)_handleCallStatusChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v16 = 2112;
    v17 = notificationCopy;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%@ Received: %@", buf, 0x16u);
  }

  objc_initWeak(&location, self);
  dispatch_assert_queue_V2(self->_queue);
  name = [notificationCopy name];
  if ([name isEqualToString:*MEMORY[0x277D6EFF0]])
  {
    goto LABEL_6;
  }

  name2 = [notificationCopy name];
  if ([name2 isEqualToString:*MEMORY[0x277D6F038]])
  {

LABEL_6:
    goto LABEL_7;
  }

  name3 = [notificationCopy name];
  v12 = [name3 isEqualToString:*MEMORY[0x277D26B50]];

  if ((v12 & 1) == 0)
  {
    v9 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v16 = 2112;
      v17 = notificationCopy;
      _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%@ Received unhandled notification from call center: %@", buf, 0x16u);
    }

    goto LABEL_9;
  }

LABEL_7:
  v8 = objc_loadWeakRetained(&location);
  if (v8)
  {
    v9 = v8;
    object = [notificationCopy object];
    [v9 _handleCall:object];

LABEL_9:
  }

  objc_destroyWeak(&location);
}

- (void)_setupAVSystemController
{
  dispatch_assert_queue_V2(self->_queue);
  mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
  avSystemController = self->_avSystemController;
  self->_avSystemController = mEMORY[0x277D26E58];

  v5 = self->_avSystemController;
  v6 = *MEMORY[0x277D26B50];
  v14[0] = *MEMORY[0x277D26D40];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  [(AVSystemController *)v5 setAttribute:v7 forKey:*MEMORY[0x277D26DD0] error:0];

  v8 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_avSystemController;
    v10 = 138412546;
    selfCopy = self;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%@ Setup avSystemController: %@", &v10, 0x16u);
  }
}

- (void)_avSystemControllerProcessDied
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__ContinuityCaptureRemoteUISystemStatus__avSystemControllerProcessDied__block_invoke;
  v4[3] = &unk_278D5C080;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __71__ContinuityCaptureRemoteUISystemStatus__avSystemControllerProcessDied__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _setupAVSystemController];
    WeakRetained = v2;
  }
}

- (void)_handleCallAudioSessionActiveNotification:(id)notification
{
  notificationCopy = notification;
  v5 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v14 = 2112;
    v15 = notificationCopy;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%@ Received: %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__ContinuityCaptureRemoteUISystemStatus__handleCallAudioSessionActiveNotification___block_invoke;
  block[3] = &unk_278D5C120;
  objc_copyWeak(&v11, buf);
  v9 = notificationCopy;
  selfCopy2 = self;
  v7 = notificationCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __83__ContinuityCaptureRemoteUISystemStatus__handleCallAudioSessionActiveNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) userInfo];
    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D26B58]];
    v5 = [v4 BOOLValue];

    if (WeakRetained[96] != v5)
    {
      v6 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        v8 = WeakRetained[96];
        v9 = 138412802;
        v10 = v7;
        v11 = 1024;
        v12 = v8;
        v13 = 1024;
        v14 = v5;
        _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%@ _hasActiveCallAudioSession changed %d -> %d ", &v9, 0x18u);
      }

      WeakRetained[96] = v5;
      [WeakRetained _resolveActiveCallState];
    }
  }
}

- (void)_resolveActiveCallState
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = atomic_load(&self->_callState);
  v4 = atomic_load(&self->_callState);
  if ([(NSMutableSet *)self->_activeCallIds count]|| self->_hasActiveCallAudioSession)
  {
    v3 = 0;
  }

  else if (!v4 && ![(NSMutableSet *)self->_activeCallIds count]&& !self->_hasActiveCallAudioSession)
  {
    v3 = 1;
  }

  if (v3 != v4)
  {
    v5 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(NSMutableSet *)self->_activeCallIds count];
      hasActiveCallAudioSession = self->_hasActiveCallAudioSession;
      *buf = 138413314;
      selfCopy = self;
      v20 = 1024;
      v21 = v6;
      v22 = 1024;
      v23 = hasActiveCallAudioSession;
      v24 = 1024;
      v25 = v4;
      v26 = 1024;
      v27 = v3;
      _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%@ #ofActiveCalls %d callAudioSessionActive %d callState %d -> %d", buf, 0x24u);
    }

    [(ContinuityCaptureRemoteUISystemStatus *)self willChangeValueForKey:@"callState"];
    atomic_store(v3, &self->_callState);
    [(ContinuityCaptureRemoteUISystemStatus *)self didChangeValueForKey:@"callState"];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = self->_observers;
    v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v14 objects:v13 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v14 + 1) + 8 * v12++) callActive:v3 == 0];
        }

        while (v10 != v12);
        v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v14 objects:v13 count:16];
      }

      while (v10);
    }
  }
}

- (void)setupCallStateMonitoring
{
  dispatch_assert_queue_V2(self->_queue);
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  callCenter = self->_callCenter;
  self->_callCenter = mEMORY[0x277D6EDF8];

  neighborhoodActivityConduit = [(TUCallCenter *)self->_callCenter neighborhoodActivityConduit];
  callCenterNeighborhoodActivityConduit = self->_callCenterNeighborhoodActivityConduit;
  self->_callCenterNeighborhoodActivityConduit = neighborhoodActivityConduit;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleCallStatusChangedNotification_ name:*MEMORY[0x277D6EFF0] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__handleCallStatusChangedNotification_ name:*MEMORY[0x277D6F038] object:0];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  currentAudioAndVideoCalls = [(TUCallCenter *)self->_callCenter currentAudioAndVideoCalls];
  v10 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(currentAudioAndVideoCalls);
        }

        [(ContinuityCaptureRemoteUISystemStatus *)self _handleCall:*(*(&v17 + 1) + 8 * v13++)];
      }

      while (v11 != v13);
      v11 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v11);
  }

  [(ContinuityCaptureRemoteUISystemStatus *)self _setupAVSystemController];
  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel__avSystemControllerProcessDied name:*MEMORY[0x277D26D40] object:0];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel__handleCallAudioSessionActiveNotification_ name:*MEMORY[0x277D26B50] object:0];
}

- (void)_handleCall:(id)call
{
  callCopy = call;
  if ([callCopy status] == 4 && (v5 = self->_incomingCallIDs, objc_msgSend(callCopy, "uniqueProxyIdentifier"), v6 = objc_claimAutoreleasedReturnValue(), LOBYTE(v5) = -[NSMutableSet containsObject:](v5, "containsObject:", v6), v6, (v5 & 1) == 0))
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    provider = [callCopy provider];
    if ([provider isFaceTimeProvider])
    {
      v11 = [(TUNeighborhoodActivityConduit *)self->_callCenterNeighborhoodActivityConduit isRingingFaceTimeCallsOnConnectedTVDevice]^ 1;
    }

    else
    {
      v11 = 1;
    }

    v12 = 0x277CCA000uLL;
    v13 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(callCopy, "service")}];
    [v9 setObject:v13 forKeyedSubscript:@"kCMContinuityCaptureCallService"];

    provider2 = [callCopy provider];
    localizedName = [provider2 localizedName];
    [v9 setObject:localizedName forKeyedSubscript:@"kCMContinuityCaptureCallProvider"];

    displayName = [callCopy displayName];
    [v9 setObject:displayName forKeyedSubscript:@"kCMContinuityCaptureCallerName"];

    handle = [callCopy handle];
    type = [handle type];

    handle2 = [callCopy handle];
    value = [handle2 value];
    if (type == 2)
    {
      isoCountryCode = [callCopy isoCountryCode];
      v22 = TUFormattedPhoneNumber();
      [v9 setObject:v22 forKeyedSubscript:@"kCMContinuityCaptureCallerHandle"];

      v12 = 0x277CCA000;
    }

    else
    {
      [v9 setObject:value forKeyedSubscript:@"kCMContinuityCaptureCallerHandle"];
    }

    callUUID = [callCopy callUUID];
    [v9 setObject:callUUID forKeyedSubscript:@"kCMContinuityCaptureCallUUID"];

    callGroupUUID = [callCopy callGroupUUID];
    uUIDString = [callGroupUUID UUIDString];
    [v9 setObject:uUIDString forKeyedSubscript:@"kCMContinuityCaptureCallGroupUUID"];

    uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
    [v9 setObject:uniqueProxyIdentifier forKeyedSubscript:@"kCMContinuityCaptureCallUniqueProxyIdentifier"];

    v27 = *(v12 + 2992);
    provider3 = [callCopy provider];
    v29 = [v27 numberWithBool:{objc_msgSend(provider3, "isFaceTimeProvider")}];
    [v9 setObject:v29 forKeyedSubscript:@"kCMContinuityCaptureIsFaceTime"];

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v30 = self->_observers;
    v31 = [(NSHashTable *)v30 countByEnumeratingWithState:&v84 objects:v83 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v85;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v85 != v33)
          {
            objc_enumerationMutation(v30);
          }

          [*(*(&v84 + 1) + 8 * i) incomingCall:1 data:v9 shouldDisplayNotification:v11];
        }

        v32 = [(NSHashTable *)v30 countByEnumeratingWithState:&v84 objects:v83 count:16];
      }

      while (v32);
    }

    incomingCallIDs = self->_incomingCallIDs;
    uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
    [(NSMutableSet *)incomingCallIDs addObject:uniqueProxyIdentifier2];
  }

  else if ([callCopy status] != 4)
  {
    v7 = self->_incomingCallIDs;
    uniqueProxyIdentifier3 = [callCopy uniqueProxyIdentifier];
    [(NSMutableSet *)v7 removeObject:uniqueProxyIdentifier3];
  }

  if ([callCopy status] == 1)
  {
    activeCallIds = self->_activeCallIds;
    uniqueProxyIdentifier4 = [callCopy uniqueProxyIdentifier];
    [(NSMutableSet *)activeCallIds addObject:uniqueProxyIdentifier4];

    v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
    uniqueProxyIdentifier5 = [callCopy uniqueProxyIdentifier];
    [v39 setObject:uniqueProxyIdentifier5 forKeyedSubscript:@"kCMContinuityCaptureCallUniqueProxyIdentifier"];

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v41 = self->_observers;
    v42 = [(NSHashTable *)v41 countByEnumeratingWithState:&v79 objects:v78 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v80;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v80 != v44)
          {
            objc_enumerationMutation(v41);
          }

          [*(*(&v79 + 1) + 8 * j) incomingCall:1 data:v39 shouldDisplayNotification:0];
        }

        v43 = [(NSHashTable *)v41 countByEnumeratingWithState:&v79 objects:v78 count:16];
      }

      while (v43);
    }

LABEL_27:

LABEL_28:
    goto LABEL_29;
  }

  if ([callCopy status] == 6)
  {
    v49 = self->_activeCallIds;
    uniqueProxyIdentifier6 = [callCopy uniqueProxyIdentifier];
    [(NSMutableSet *)v49 removeObject:uniqueProxyIdentifier6];

    v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
    uniqueProxyIdentifier7 = [callCopy uniqueProxyIdentifier];
    [v39 setObject:uniqueProxyIdentifier7 forKeyedSubscript:@"kCMContinuityCaptureCallUniqueProxyIdentifier"];

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v52 = self->_observers;
    v53 = [(NSHashTable *)v52 countByEnumeratingWithState:&v74 objects:v73 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v75;
      do
      {
        for (k = 0; k != v54; ++k)
        {
          if (*v75 != v55)
          {
            objc_enumerationMutation(v52);
          }

          [*(*(&v74 + 1) + 8 * k) incomingCall:0 data:v39 shouldDisplayNotification:0];
        }

        v54 = [(NSHashTable *)v52 countByEnumeratingWithState:&v74 objects:v73 count:16];
      }

      while (v54);
    }

    if ([callCopy disconnectedReason] == 2)
    {
      [(ContinuityCaptureRemoteUISystemStatus *)self willChangeValueForKey:@"callState"];
      atomic_store(2uLL, &self->_callState);
      [(ContinuityCaptureRemoteUISystemStatus *)self didChangeValueForKey:@"callState"];
    }

    goto LABEL_28;
  }

  if ([callCopy status] == 2)
  {
    v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
    uniqueProxyIdentifier8 = [callCopy uniqueProxyIdentifier];
    [v39 setObject:uniqueProxyIdentifier8 forKeyedSubscript:@"kCMContinuityCaptureCallUniqueProxyIdentifier"];

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v41 = self->_observers;
    v58 = [(NSHashTable *)v41 countByEnumeratingWithState:&v69 objects:v68 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = *v70;
      do
      {
        for (m = 0; m != v59; ++m)
        {
          if (*v70 != v60)
          {
            objc_enumerationMutation(v41);
          }

          [*(*(&v69 + 1) + 8 * m) incomingCall:0 data:v39 shouldDisplayNotification:0];
        }

        v59 = [(NSHashTable *)v41 countByEnumeratingWithState:&v69 objects:v68 count:16];
      }

      while (v59);
    }

    goto LABEL_27;
  }

LABEL_29:
  v46 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    v47 = [(NSMutableSet *)self->_activeCallIds count];
    v48 = [(NSMutableSet *)self->_incomingCallIDs count];
    v62 = 138412802;
    selfCopy = self;
    v64 = 2048;
    v65 = v47;
    v66 = 2048;
    v67 = v48;
    _os_log_impl(&dword_242545000, v46, OS_LOG_TYPE_DEFAULT, "%@ #ofActiveCalls %ld, #ofIncomingCalls: %ld", &v62, 0x20u);
  }

  [(ContinuityCaptureRemoteUISystemStatus *)self _resolveActiveCallState];
}

- (ContinuityCaptureRemoteUISystemStatus)initWithQueue:(id)queue
{
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = ContinuityCaptureRemoteUISystemStatus;
  v6 = [(ContinuityCaptureRemoteUIPowerButtonStatus *)&v20 initWithQueue:queueCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    incomingCallIDs = v7->_incomingCallIDs;
    v7->_incomingCallIDs = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    activeCallIds = v7->_activeCallIds;
    v7->_activeCallIds = v10;

    atomic_store(0xFFFFFFFFFFFFFFFFLL, &v7->_callState);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = weakObjectsHashTable;

    objc_initWeak(&location, v7);
    queue = v7->_queue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __55__ContinuityCaptureRemoteUISystemStatus_initWithQueue___block_invoke;
    v17[3] = &unk_278D5C080;
    objc_copyWeak(&v18, &location);
    dispatch_async(queue, v17);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
    v15 = v7;
  }

  return v7;
}

@end