@interface MFNetworkController
+ (id)networkAssertionWithIdentifier:(id)a3;
+ (id)sharedInstance;
- (BOOL)_simulationOverrideForType:(unint64_t)a3 actualValue:(BOOL)a4;
- (BOOL)inAirplaneMode;
- (BOOL)is3GConnection;
- (BOOL)is4GConnection;
- (BOOL)isDataAvailable;
- (BOOL)isFatPipe;
- (BOOL)isNetworkUp;
- (BOOL)isOnWWAN;
- (EFObservable)networkObservable;
- (EFObservable)wifiObservable;
- (MFNetworkController)init;
- (id)_networkAssertionWithIdentifier:(id)a3;
- (id)addNetworkObserverBlock:(id)a3 queue:(id)a4;
- (id)copyCarrierBundleValue:(id)a3;
- (id)copyDiagnosticInformation;
- (int)dataStatus;
- (void)_carrierBundleDidChange;
- (void)_checkKeys:(id)a3 forStore:(__SCDynamicStore *)a4;
- (void)_handleWiFiNotification:(unsigned int)a3;
- (void)_initializeDataStatus;
- (void)_inititializeWifiManager;
- (void)_setDataStatus_nts:(id)a3;
- (void)_setFlags:(unsigned int)a3 forReachability:(__SCNetworkReachability *)a4;
- (void)_setupSymptons;
- (void)_updateActiveCalls;
- (void)_updateWifiClientType;
- (void)addBackgroundWifiClient:(id)a3;
- (void)callObserver:(id)a3 callChanged:(id)a4;
- (void)connectionActivationError:(id)a3 connection:(int)a4 error:(int)a5;
- (void)dataStatus:(id)a3 dataStatusInfo:(id)a4;
- (void)dealloc;
- (void)invalidate;
- (void)preferredDataSimChanged:(id)a3;
- (void)removeBackgroundWifiClient:(id)a3;
- (void)removeNetworkObserver:(id)a3;
- (void)simStatusDidChange:(id)a3 status:(id)a4;
@end

@implementation MFNetworkController

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__MFNetworkController_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_1 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1, block);
  }

  v2 = sharedInstance__sharedInstance;

  return v2;
}

void __37__MFNetworkController_sharedInstance__block_invoke(uint64_t a1)
{
  obj = objc_alloc(*(a1 + 32));
  v1 = +[MFStream networkThread];
  [obj performSelector:sel_init onThread:v1 withObject:0 waitUntilDone:1];

  objc_storeStrong(&sharedInstance__sharedInstance, obj);
  v2 = [sharedInstance__sharedInstance addNetworkObserverBlock:&__block_literal_global_15 queue:MEMORY[0x277D85CD0]];
}

void __37__MFNetworkController_sharedInstance__block_invoke_2()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CCAB88] notificationWithName:@"NetworkConfigurationDidChangeNotification" object:sharedInstance__sharedInstance];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotification:v1];

  objc_autoreleasePoolPop(v0);
}

- (MFNetworkController)init
{
  v37.receiver = self;
  v37.super_class = MFNetworkController;
  v2 = [(MFNetworkController *)&v37 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D24F28]) initWithName:@"com.apple.message.mfnetworkcontroller" andDelegate:v2];
    lock = v2->_lock;
    v2->_lock = v3;

    v2->_hasCellDataCapability = MGGetBoolAnswer();
    v2->_hasWiFiCapability = MGGetBoolAnswer();
    Current = CFRunLoopGetCurrent();
    v2->_rl = Current;
    CFRetain(Current);
    v6 = *MEMORY[0x277CBECE8];
    v7 = SCNetworkReachabilityCreateWithAddress(*MEMORY[0x277CBECE8], &init_sa);
    v2->_reachability = v7;
    SCNetworkReachabilityGetFlags(v7, &v2->_flags);
    context.version = 0;
    context.info = v2;
    v8 = MEMORY[0x277CBE558];
    context.retain = MEMORY[0x277CBE558];
    v9 = MEMORY[0x277CBE550];
    context.release = MEMORY[0x277CBE550];
    v10 = MEMORY[0x277CBE530];
    context.copyDescription = MEMORY[0x277CBE530];
    SCNetworkReachabilitySetCallback(v2->_reachability, _NetworkReachabilityCallBack, &context);
    v11 = *MEMORY[0x277CBF048];
    SCNetworkReachabilityScheduleWithRunLoop(v2->_reachability, v2->_rl, *MEMORY[0x277CBF048]);
    v35.version = 0;
    v35.info = v2;
    v35.retain = v8;
    v35.release = v9;
    v35.copyDescription = v10;
    v12 = SCDynamicStoreCreate(v6, @"com.apple.message.mfnetworkcontroller", _DynamicStoreCallBack, &v35);
    v2->_store = v12;
    if (v12)
    {
      buf.version = SCDynamicStoreKeyCreateNetworkGlobalEntity(v6, *MEMORY[0x277CE1648], *MEMORY[0x277CE1678]);
      v13 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:&buf count:1];
      [(MFNetworkController *)v2 _checkKeys:v13 forStore:v2->_store];
      SCDynamicStoreSetNotificationKeys(v2->_store, v13, 0);
      RunLoopSource = SCDynamicStoreCreateRunLoopSource(v6, v2->_store, 0);
      v2->_store_source = RunLoopSource;
      CFRunLoopAddSource(v2->_rl, RunLoopSource, v11);
    }

    else
    {
      v15 = MFLogGeneral();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.version) = 0;
        _os_log_impl(&dword_258BDA000, v15, OS_LOG_TYPE_DEFAULT, "#Warning #Network Could not create SCDynamicStore", &buf, 2u);
      }
    }

    if (!v2->_hasWiFiCapability)
    {
      goto LABEL_13;
    }

    MainBundle = CFBundleGetMainBundle();
    if (MainBundle && (Identifier = CFBundleGetIdentifier(MainBundle)) != 0)
    {
      v18 = Identifier;
      CFRetain(Identifier);
    }

    else
    {
      v19 = getprogname();
      v20 = getpid();
      v18 = CFStringCreateWithFormat(v6, 0, @"%s (%d)", v19, v20);
      if (!v18)
      {
LABEL_13:
        v22 = dispatch_queue_create("com.apple.message.MFNetworkController.dataStatus", 0);
        dataStatusQueue = v2->_dataStatusQueue;
        v2->_dataStatusQueue = v22;

        v24 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:v2->_dataStatusQueue];
        ctc = v2->_ctc;
        v2->_ctc = v24;

        [(CoreTelephonyClient *)v2->_ctc setDelegate:v2];
        v26 = objc_alloc_init(MEMORY[0x277CBEB58]);
        backgroundWifiClients = v2->_backgroundWifiClients;
        v2->_backgroundWifiClients = v26;

        [(MFNetworkController *)v2 _inititializeWifiManager];
        [(MFNetworkController *)v2 _setupSymptons];
        v28 = dispatch_queue_create("com.apple.mail.radioPreferences", 0);
        prefsQueue = v2->_prefsQueue;
        v2->_prefsQueue = v28;

        v30 = [objc_alloc(MEMORY[0x277CEC5D0]) initWithQueue:v2->_prefsQueue];
        radiosPreferences = v2->_radiosPreferences;
        v2->_radiosPreferences = v30;

        [(RadiosPreferences *)v2->_radiosPreferences setDelegate:v2];
        v32 = [MEMORY[0x277D24F10] sharedController];
        [v32 addDiagnosticsGenerator:v2];

        return v2;
      }
    }

    v21 = SCPreferencesCreate(v6, v18, @"com.apple.wifi.plist");
    v2->_wiFiPreferences = v21;
    buf.version = 0;
    memset(&buf.retain, 0, 24);
    buf.info = v2;
    SCPreferencesSetCallback(v21, _WiFiCallBack, &buf);
    SCPreferencesScheduleWithRunLoop(v2->_wiFiPreferences, v2->_rl, v11);
    v2->_isWiFiEnabled = _IsWiFiEnabled(v2->_wiFiPreferences);
    CFRelease(v18);
    goto LABEL_13;
  }

  return v2;
}

- (void)_inititializeWifiManager
{
  v3 = WiFiManagerClientCreate();
  self->_wifiManager = v3;
  if (!v3)
  {
    v4 = MFLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_258BDA000, v4, OS_LOG_TYPE_DEFAULT, "#Warning #Network WiFiManagerClientCreate() returned NULL. Check that the process has the appropriate entitlement(s).", v5, 2u);
    }
  }
}

- (void)_initializeDataStatus
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__MFNetworkController__initializeDataStatus__block_invoke;
  block[3] = &unk_2798B75C8;
  block[4] = self;
  if (_initializeDataStatus_onceToken != -1)
  {
    dispatch_once(&_initializeDataStatus_onceToken, block);
  }
}

void __44__MFNetworkController__initializeDataStatus__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 96);
  v19 = 0;
  v3 = [v2 getSubscriptionInfoWithError:&v19];
  v4 = v19;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v3;
    v22 = 2112;
    v23 = v4;
    _os_log_impl(&dword_258BDA000, v5, OS_LOG_TYPE_DEFAULT, "#Network retrieved CT subscription info: %@ with error: %@", buf, 0x16u);
  }

  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = [v3 subscriptions];
    v8 = [v7 ef_firstObjectPassingTest:&__block_literal_global_36];

    if (v8)
    {
      v9 = *(*(a1 + 32) + 96);
      v18 = 0;
      v10 = [v9 getDataStatus:v8 error:&v18];
      v11 = v18;
      v4 = v11;
      if (v10)
      {
        v12 = v11 == 0;
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        [*(a1 + 32) _setDataStatus_nts:v10];
      }

      else
      {
        v13 = MFLogGeneral();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          __44__MFNetworkController__initializeDataStatus__block_invoke_cold_1(v8, v4, v13);
        }
      }
    }

    else
    {
      v10 = MFLogGeneral();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __44__MFNetworkController__initializeDataStatus__block_invoke_cold_2();
      }

      v4 = 0;
    }
  }

  v14 = objc_alloc_init(MEMORY[0x277CBAF70]);
  v15 = *(a1 + 32);
  v16 = *(v15 + 152);
  *(v15 + 152) = v14;

  [*(*(a1 + 32) + 152) setDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 112)];
  [*(a1 + 32) _updateActiveCalls];

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __44__MFNetworkController__initializeDataStatus__block_invoke_33(uint64_t a1, void *a2)
{
  v2 = [a2 userDataPreferred];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)_setupSymptons
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__MFNetworkController__setupSymptons__block_invoke;
  aBlock[3] = &unk_2798B75F0;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  if (notify_register_dispatch("com.apple.symptoms.hasAlternateAdvice", &self->_symptomsToken, MEMORY[0x277D85CD0], v3))
  {
    self->_symptomsToken = -1;
  }
}

void __37__MFNetworkController__setupSymptons__block_invoke(uint64_t a1, int token)
{
  state64 = 0;
  notify_get_state(token, &state64);
  v3 = state64;
  *(*(a1 + 32) + 68) = state64 != 0;
  if (v3 == 1)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 postNotificationName:@"NetworkSymptonsHasAlternativeAdvice" object:*(a1 + 32)];
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x277D24F10] sharedController];
  [v3 removeDiagnosticsGenerator:self];

  wiFiPreferences = self->_wiFiPreferences;
  if (wiFiPreferences)
  {
    SCPreferencesSetCallback(wiFiPreferences, 0, 0);
    v5 = self->_wiFiPreferences;
    Main = CFRunLoopGetMain();
    SCPreferencesUnscheduleFromRunLoop(v5, Main, *MEMORY[0x277CBF048]);
    CFRelease(self->_wiFiPreferences);
    self->_wiFiPreferences = 0;
  }

  if (self->_store)
  {
    [MFNetworkController dealloc];
  }

  if (self->_reachability)
  {
    [MFNetworkController dealloc];
  }

  symptomsToken = self->_symptomsToken;
  if (symptomsToken != -1)
  {
    notify_cancel(symptomsToken);
  }

  v8.receiver = self;
  v8.super_class = MFNetworkController;
  [(MFNetworkController *)&v8 dealloc];
}

- (void)invalidate
{
  v3 = [objc_opt_class() sharedInstance];

  if (v3 != self)
  {
    [(NSLock *)self->_lock lock];
    v4 = MEMORY[0x277CBF048];
    if (self->_store)
    {
      CFRunLoopSourceInvalidate(self->_store_source);
      SCDynamicStoreSetNotificationKeys(self->_store, 0, 0);
      CFRunLoopRemoveSource(self->_rl, self->_store_source, *v4);
      CFRelease(self->_store_source);
      CFRelease(self->_store);
      self->_store = 0;
    }

    reachability = self->_reachability;
    if (reachability)
    {
      SCNetworkReachabilitySetCallback(reachability, 0, 0);
      SCNetworkReachabilityUnscheduleFromRunLoop(self->_reachability, self->_rl, *v4);
      CFRelease(self->_reachability);
      self->_reachability = 0;
    }

    observers = self->_observers;
    self->_observers = 0;

    rl = self->_rl;
    if (rl)
    {
      CFRelease(rl);
      self->_rl = 0;
    }

    lock = self->_lock;

    [(NSLock *)lock unlock];
  }
}

- (BOOL)_simulationOverrideForType:(unint64_t)a3 actualValue:(BOOL)a4
{
  v6 = CFPreferencesCopyValue(@"MFNetworkSimulationBitfieldKey", *MEMORY[0x277CBF008], *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v7 = [v6 unsignedIntegerValue];
  if (v7)
  {
    a4 = (v7 & a3) != 0;
  }

  return a4;
}

- (void)_setDataStatus_nts:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_258BDA000, v5, OS_LOG_TYPE_DEFAULT, "#Network setting data status: %@", &v8, 0xCu);
  }

  if (v4)
  {
    self->_dataIndicator = [v4 indicator];
    self->_isRoamingAllowed = [v4 roamAllowed];
    v6 = [v4 attached] && objc_msgSend(v4, "indicator") && self->_isRoamingAllowed;
    self->_cellularDataAvailable = v6;
  }

  else
  {
    self->_dataIndicator = 0;
    self->_isRoamingAllowed = 0;
    self->_cellularDataAvailable = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (int)dataStatus
{
  [(MFNetworkController *)self _initializeDataStatus];
  [(NSLock *)self->_lock lock];
  if ([(MFNetworkController *)self _isNetworkUp_nts])
  {
    if (self->_hasWiFiCapability && (self->_flags & 0x40000) == 0)
    {
LABEL_12:
      v3 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    if (([(RadiosPreferences *)self->_radiosPreferences airplaneMode]& 1) != 0)
    {
      v3 = 1;
      goto LABEL_14;
    }

    if (self->_hasWiFiCapability && !self->_hasCellDataCapability && !self->_isWiFiEnabled)
    {
      v3 = 3;
      goto LABEL_14;
    }
  }

  if (!self->_hasCellDataCapability)
  {
    v3 = 6;
    goto LABEL_14;
  }

  if (self->_cellularDataAvailable)
  {
    goto LABEL_12;
  }

  if (CTCellularDataPlanGetIsEnabled())
  {
    if (self->_isRoamingAllowed)
    {
      if (self->_activeCalls)
      {
        v3 = 5;
      }

      else
      {
        v3 = 6;
      }
    }

    else
    {
      v3 = 4;
    }
  }

  else
  {
    v3 = 2;
  }

LABEL_14:
  [(NSLock *)self->_lock unlock];
  return v3;
}

- (BOOL)isDataAvailable
{
  v3 = [(MFNetworkController *)self dataStatus]== 0;

  return [(MFNetworkController *)self _simulationOverrideForType:1 actualValue:v3];
}

- (BOOL)isNetworkUp
{
  [(NSLock *)self->_lock lock];
  v3 = [(MFNetworkController *)self _isNetworkUp_nts];
  [(NSLock *)self->_lock unlock];

  return [(MFNetworkController *)self _simulationOverrideForType:2 actualValue:v3];
}

- (BOOL)isFatPipe
{
  [(NSLock *)self->_lock lock];
  if ([(MFNetworkController *)self _isNetworkUp_nts])
  {
    v3 = (self->_flags & 0x40000) == 0;
  }

  else
  {
    v3 = 0;
  }

  [(NSLock *)self->_lock unlock];

  return [(MFNetworkController *)self _simulationOverrideForType:4 actualValue:v3];
}

- (BOOL)isOnWWAN
{
  [(NSLock *)self->_lock lock];
  if ([(MFNetworkController *)self _isNetworkUp_nts])
  {
    v3 = (BYTE2(self->_flags) >> 2) & 1;
  }

  else
  {
    v3 = 0;
  }

  [(NSLock *)self->_lock unlock];

  return [(MFNetworkController *)self _simulationOverrideForType:8 actualValue:v3];
}

- (BOOL)inAirplaneMode
{
  v3 = [(MFNetworkController *)self dataStatus]== 1;

  return [(MFNetworkController *)self _simulationOverrideForType:16 actualValue:v3];
}

- (BOOL)is3GConnection
{
  [(MFNetworkController *)self _initializeDataStatus];
  v3 = (self->_dataIndicator - 3) < 3;

  return [(MFNetworkController *)self _simulationOverrideForType:32 actualValue:v3];
}

- (BOOL)is4GConnection
{
  [(MFNetworkController *)self _initializeDataStatus];
  v3 = (self->_dataIndicator - 7) < 2;

  return [(MFNetworkController *)self _simulationOverrideForType:64 actualValue:v3];
}

- (void)_setFlags:(unsigned int)a3 forReachability:(__SCNetworkReachability *)a4
{
  [(NSLock *)self->_lock lock];
  if (self->_reachability == a4)
  {
    v7 = [(MFNetworkController *)self _isNetworkUp_nts];
    v8 = self->_flags ^ a3;
    self->_flags = a3;
    if ((v8 & 0x40000) != 0 || v7 != [(MFNetworkController *)self _isNetworkUp_nts])
    {
      [(NSMutableArray *)self->_observers makeObjectsPerformSelector:sel_execute];
    }
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)_checkKeys:(id)a3 forStore:(__SCDynamicStore *)a4
{
  v10 = a3;
  [(NSLock *)self->_lock lock];
  if (self->_store == a4)
  {
    v6 = [(MFNetworkController *)self _isNetworkUp_nts];
    self->_dns = 0;
    if ([v10 count])
    {
      v7 = [v10 objectAtIndexedSubscript:0];
      v8 = SCDynamicStoreCopyValue(a4, v7);

      if (v8)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 objectForKey:*MEMORY[0x277CE1710]];
          self->_dns = [v9 count] != 0;
        }
      }
    }

    if (v6 != [(MFNetworkController *)self _isNetworkUp_nts])
    {
      [(NSMutableArray *)self->_observers makeObjectsPerformSelector:sel_execute];
    }
  }

  [(NSLock *)self->_lock unlock];
}

- (void)_handleWiFiNotification:(unsigned int)a3
{
  if (a3)
  {
    [(NSLock *)self->_lock lock];
    self->_isWiFiEnabled = _IsWiFiEnabled(self->_wiFiPreferences);
    lock = self->_lock;

    [(NSLock *)lock unlock];
  }
}

- (id)_networkAssertionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x277CBECE8];
  v6 = _CTServerConnectionCreateWithIdentifier();
  if (v6)
  {
    v7 = v6;
    rl = self->_rl;
    v9 = *MEMORY[0x277CBF048];
    _CTServerConnectionAddToRunLoop();
    if (_CTServerConnectionPacketContextAssertionCreate() >> 32)
    {
      v10 = MFLogGeneral();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [MFNetworkController _networkAssertionWithIdentifier:];
      }
    }

    CFRelease(v7);
  }

  v11 = 0;

  return v11;
}

+ (id)networkAssertionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 sharedInstance];
  v6 = [v5 _networkAssertionWithIdentifier:v4];

  return v6;
}

- (id)copyCarrierBundleValue:(id)a3
{
  v4 = a3;
  ctc = self->_ctc;
  v17 = 0;
  v6 = [(CoreTelephonyClient *)ctc getSubscriptionInfoWithError:&v17];
  v7 = v17;
  if (v7)
  {
    v8 = v7;
    v9 = MFLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [MFNetworkController copyCarrierBundleValue:];
    }

    v10 = 0;
  }

  else
  {
    v11 = [v6 subscriptions];
    v9 = [v11 ef_firstObjectPassingTest:&__block_literal_global_49];

    if (v9)
    {
      v12 = [objc_alloc(MEMORY[0x277CC3620]) initWithBundleType:1];
      v13 = self->_ctc;
      v16 = 0;
      v10 = [(CoreTelephonyClient *)v13 copyCarrierBundleValue:v9 key:v4 bundleType:v12 error:&v16];
      v8 = v16;
      if (v8)
      {
        v14 = MFLogGeneral();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [MFNetworkController copyCarrierBundleValue:];
        }
      }
    }

    else
    {
      v10 = 0;
      v8 = 0;
    }
  }

  return v10;
}

uint64_t __46__MFNetworkController_copyCarrierBundleValue___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 userDataPreferred];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)addNetworkObserverBlock:(id)a3 queue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[_MFNetworkObserver alloc] initWithBlock:v7 queue:v6];

  [(NSLock *)self->_lock lock];
  observers = self->_observers;
  if (!observers)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = self->_observers;
    self->_observers = v10;

    observers = self->_observers;
  }

  [(NSMutableArray *)observers addObject:v8];
  [(NSLock *)self->_lock unlock];

  return v8;
}

- (void)removeNetworkObserver:(id)a3
{
  lock = self->_lock;
  v5 = a3;
  [(NSLock *)lock lock];
  [(NSMutableArray *)self->_observers removeObject:v5];

  v6 = self->_lock;

  [(NSLock *)v6 unlock];
}

- (EFObservable)networkObservable
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__MFNetworkController_networkObservable__block_invoke;
  v4[3] = &unk_2798B7668;
  v4[4] = self;
  v2 = [MEMORY[0x277D07180] observableWithBlock:v4];

  return v2;
}

id __40__MFNetworkController_networkObservable__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277D07138]);
  objc_initWeak(&location, *(a1 + 32));
  v5 = *(a1 + 32);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __40__MFNetworkController_networkObservable__block_invoke_2;
  v18[3] = &unk_2798B7618;
  objc_copyWeak(&v21, &location);
  v6 = v3;
  v19 = v6;
  v7 = v4;
  v20 = v7;
  v8 = MEMORY[0x277D85CD0];
  v9 = MEMORY[0x277D85CD0];
  v10 = [v5 addNetworkObserverBlock:v18 queue:v8];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __40__MFNetworkController_networkObservable__block_invoke_3;
  v15[3] = &unk_2798B7640;
  objc_copyWeak(&v17, &location);
  v11 = v10;
  v16 = v11;
  [v7 addCancelationBlock:v15];
  v12 = v16;
  v13 = v7;

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  return v13;
}

uint64_t __40__MFNetworkController_networkObservable__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    [*(a1 + 32) observerDidReceiveResult:WeakRetained];
  }

  return MEMORY[0x2821F96F8]();
}

void __40__MFNetworkController_networkObservable__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained removeNetworkObserver:*(a1 + 32)];
}

- (EFObservable)wifiObservable
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [(MFNetworkController *)self networkObservable];
  v10[0] = self;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v5 = [v3 startWith:v4];
  v6 = [v5 map:&__block_literal_global_58];
  v7 = [v6 distinctUntilChanged];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t __37__MFNetworkController_wifiObservable__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 isFatPipe];

  return [v2 numberWithBool:v3];
}

- (void)_updateWifiClientType
{
  v3 = [(NSMutableSet *)self->_backgroundWifiClients count]!= 0;
  wifiManager = self->_wifiManager;
  if (WiFiManagerClientGetType() != v3)
  {
    v5 = self->_wifiManager;

    MEMORY[0x2821878C8](v5, v3);
  }
}

- (void)addBackgroundWifiClient:(id)a3
{
  if (a3)
  {
    lock = self->_lock;
    v5 = a3;
    [(NSLock *)lock lock];
    [(NSMutableSet *)self->_backgroundWifiClients addObject:v5];

    [(MFNetworkController *)self _updateWifiClientType];
    v6 = self->_lock;

    [(NSLock *)v6 unlock];
  }
}

- (void)removeBackgroundWifiClient:(id)a3
{
  if (a3)
  {
    lock = self->_lock;
    v5 = a3;
    [(NSLock *)lock lock];
    [(NSMutableSet *)self->_backgroundWifiClients removeObject:v5];

    [(MFNetworkController *)self _updateWifiClientType];
    v6 = self->_lock;

    [(NSLock *)v6 unlock];
  }
}

- (void)_carrierBundleDidChange
{
  v3 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__MFNetworkController__carrierBundleDidChange__block_invoke;
  block[3] = &unk_2798B75C8;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

void __46__MFNetworkController__carrierBundleDidChange__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"MFCarrierBundleChangedNotification" object:*(a1 + 32)];
}

- (void)connectionActivationError:(id)a3 connection:(int)a4 error:(int)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  dispatch_assert_queue_V2(self->_dataStatusQueue);
  v9 = [v8 userDataPreferred];
  v10 = [v9 BOOLValue];

  if (!a4 && v10)
  {
    v11 = MFLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412802;
      v14 = v8;
      v15 = 1024;
      v16 = 0;
      v17 = 1024;
      v18 = a5;
      _os_log_impl(&dword_258BDA000, v11, OS_LOG_TYPE_DEFAULT, "#Network failed to bring up data context (context: %@, connection: %u, error: %d", &v13, 0x18u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)preferredDataSimChanged:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_dataStatusQueue);
  [(MFNetworkController *)self _carrierBundleDidChange];
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = [v4 slotID];
    _os_log_impl(&dword_258BDA000, v5, OS_LOG_TYPE_DEFAULT, "#Network preferred data sim was changed to slot %lu", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)dataStatus:(id)a3 dataStatusInfo:(id)a4
{
  v9 = a4;
  dataStatusQueue = self->_dataStatusQueue;
  v7 = a3;
  dispatch_assert_queue_V2(dataStatusQueue);
  v8 = [v7 userDataPreferred];

  LODWORD(v7) = [v8 BOOLValue];
  if (v7)
  {
    [(MFNetworkController *)self _setDataStatus_nts:v9];
  }
}

- (void)simStatusDidChange:(id)a3 status:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([a4 isEqualToString:*MEMORY[0x277CC3F00]])
  {
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = [v6 slotID];
      _os_log_impl(&dword_258BDA000, v7, OS_LOG_TYPE_DEFAULT, "#Network SIM is now ready (slot %lu)", &v9, 0xCu);
    }

    [(MFNetworkController *)self _carrierBundleDidChange];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_updateActiveCalls
{
  v18 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(CXCallObserver *)self->_callObserver calls];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v11 + 1) + 8 * i) hasEnded] ^ 1;
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = MFLogGeneral();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = v6;
    _os_log_impl(&dword_258BDA000, v9, OS_LOG_TYPE_DEFAULT, "#Network %d active calls", buf, 8u);
  }

  self->_activeCalls = v6;
  v10 = *MEMORY[0x277D85DE8];
}

- (void)callObserver:(id)a3 callChanged:(id)a4
{
  dispatch_assert_queue_V2(self->_dataStatusQueue);

  [(MFNetworkController *)self _updateActiveCalls];
}

- (id)copyDiagnosticInformation
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [(NSLock *)self->_lock lock];
  [v3 appendString:@"\n==== Network Controller State ====\n"];
  [v3 appendFormat:@"    reachability flags: 0x%02x\n", self->_flags];
  if (self->_dns)
  {
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  [v3 appendFormat:@"    has DNS: %s\n", v4];
  if (self->_isWiFiEnabled)
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  [v3 appendFormat:@"    wifi enabled: %s\n", v5];
  if (self->_cellularDataAvailable)
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  [v3 appendFormat:@"    has cell data: %s\n", v6];
  dataIndicator = self->_dataIndicator;
  if (dataIndicator > 0xC)
  {
    v8 = @"Unknown";
  }

  else
  {
    v8 = off_2798B76A8[dataIndicator];
  }

  [v3 appendFormat:@"    data status indicator: %@\n", v8];
  if (self->_isRoamingAllowed)
  {
    v9 = "YES";
  }

  else
  {
    v9 = "NO";
  }

  [v3 appendFormat:@"    roaming allowed: %s\n", v9];
  [v3 appendFormat:@"    calls: %lu\n", self->_activeCalls];
  [v3 appendFormat:@"    background wifi clients: %lu\n", -[NSMutableSet count](self->_backgroundWifiClients, "count")];
  [v3 appendFormat:@"    core telephony client: %p\n", self->_ctc];
  [(NSLock *)self->_lock unlock];
  [(MFNetworkController *)self _initializeDataStatus];
  [v3 appendFormat:@"    cellular data plans:\n"];
  v10 = [(CoreTelephonyClient *)self->_ctc getSubscriptionInfoWithError:0];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [v10 subscriptions];
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [v3 appendFormat:@"        %@\n", *(*(&v18 + 1) + 8 * v15++)];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v3;
}

void __44__MFNetworkController__initializeDataStatus__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_258BDA000, log, OS_LOG_TYPE_ERROR, "#Network failed to get data status for context %@ with error: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)copyCarrierBundleValue:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)copyCarrierBundleValue:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end