@interface MFNetworkController
+ (MFNetworkController)sharedInstance;
+ (id)addNetworkObserverBlock:(id)a3 queue:(id)a4;
+ (id)networkAssertionWithIdentifier:(id)a3;
+ (id)observers;
+ (id)signpostLog;
+ (void)performExecuteOnObservers;
+ (void)removeNetworkObserver:(id)a3;
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
- (id)copyCarrierBundleValue:(id)a3;
- (int64_t)dataStatus;
- (int64_t)transportType;
- (unint64_t)signpostID;
- (void)_carrierBundleDidChange;
- (void)_checkKeys:(id)a3 forStore:(__SCDynamicStore *)a4;
- (void)_handleWiFiNotification:(unsigned int)a3;
- (void)_initializeDataStatus;
- (void)_registerStateCaptureHandler;
- (void)_resetDataStatusInitialized;
- (void)_setDataStatus_nts:(id)a3;
- (void)_setFlags:(unsigned int)a3 forReachability:(__SCNetworkReachability *)a4;
- (void)_setupSymptoms;
- (void)_updateActiveCalls;
- (void)callObserver:(id)a3 callChanged:(id)a4;
- (void)callRevokeTokenForUPI;
- (void)connectionActivationError:(id)a3 connection:(int)a4 error:(int)a5;
- (void)dataStatus:(id)a3 dataStatusInfo:(id)a4;
- (void)dealloc;
- (void)preferredDataSimChanged:(id)a3;
- (void)simStatusDidChange:(id)a3 status:(id)a4;
@end

@implementation MFNetworkController

+ (id)observers
{
  if (observers_onceToken != -1)
  {
    +[MFNetworkController observers];
  }

  v3 = observers_observers;

  return v3;
}

+ (MFNetworkController)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
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

void __32__MFNetworkController_observers__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E699B7F0]);
  v3 = objc_opt_new();
  v1 = [v0 initWithObject:?];
  v2 = observers_observers;
  observers_observers = v1;
}

uint64_t __37__MFNetworkController_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance__sharedInstance;
  sharedInstance__sharedInstance = v1;

  v3 = [MFNetworkController addNetworkObserverBlock:&__block_literal_global_51 queue:MEMORY[0x1E69E96A0]];
  v4 = sharedInstance__sharedInstance;

  return [v4 _registerStateCaptureHandler];
}

- (MFNetworkController)init
{
  v42.receiver = self;
  v42.super_class = MFNetworkController;
  v2 = [(MFNetworkController *)&v42 init];
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  v2->_dataStatusInitializerLock._os_unfair_lock_opaque = 0;
  v4 = +[MFNetworkController signpostLog];
  v5 = +[MFNetworkController signpostLog];
  v6 = os_signpost_id_generate(v5);

  v7 = v4;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(buf.version) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "MFNetworkControllerInit", "", &buf, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x1E69AD6D8]) initWithName:@"com.apple.message.mfnetworkcontroller" andDelegate:v3];
  lock = v3->_lock;
  v3->_lock = v9;

  v3->_hasCellDataCapability = MGGetBoolAnswer();
  v3->_hasWiFiCapability = MGGetBoolAnswer();
  Main = CFRunLoopGetMain();
  v3->_rl = Main;
  CFRetain(Main);
  v12 = *MEMORY[0x1E695E480];
  v13 = SCNetworkReachabilityCreateWithAddress(*MEMORY[0x1E695E480], &init_sa);
  v3->_reachability = v13;
  SCNetworkReachabilityGetFlags(v13, &v3->_flags);
  buf.version = 0;
  buf.info = v3;
  buf.retain = MEMORY[0x1E695D7C8];
  buf.release = MEMORY[0x1E695D7C0];
  buf.copyDescription = MEMORY[0x1E695D768];
  SCNetworkReachabilitySetCallback(v3->_reachability, _NetworkReachabilityCallBack, &buf);
  v14 = *MEMORY[0x1E695E8D0];
  SCNetworkReachabilityScheduleWithRunLoop(v3->_reachability, v3->_rl, *MEMORY[0x1E695E8D0]);
  context.version = 0;
  context.info = v3;
  context.retain = MEMORY[0x1E695D7C8];
  context.release = MEMORY[0x1E695D7C0];
  context.copyDescription = MEMORY[0x1E695D768];
  v15 = SCDynamicStoreCreate(v12, @"com.apple.message.mfnetworkcontroller", _DynamicStoreCallBack, &context);
  v3->_store = v15;
  if (v15)
  {
    v38.version = SCDynamicStoreKeyCreateNetworkGlobalEntity(v12, *MEMORY[0x1E69822F0], *MEMORY[0x1E6982330]);
    v16 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:&v38 count:1];
    [(MFNetworkController *)v3 _checkKeys:v16 forStore:v3->_store];
    SCDynamicStoreSetNotificationKeys(v3->_store, v16, 0);
    RunLoopSource = SCDynamicStoreCreateRunLoopSource(v12, v3->_store, 0);
    v3->_store_source = RunLoopSource;
    if (RunLoopSource)
    {
      CFRunLoopAddSource(v3->_rl, RunLoopSource, v14);
    }

    else
    {
      v19 = MFLogGeneral();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v39 = 0;
        _os_log_impl(&dword_1B0389000, v19, OS_LOG_TYPE_DEFAULT, "#Warning #Network SCDynamicStoreCreateRunLoopSource failed - returned NULL.", v39, 2u);
      }
    }
  }

  else
  {
    v18 = MFLogGeneral();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v38.version) = 0;
      _os_log_impl(&dword_1B0389000, v18, OS_LOG_TYPE_DEFAULT, "#Warning #Network Could not create SCDynamicStore", &v38, 2u);
    }
  }

  if (v3->_hasWiFiCapability)
  {
    MainBundle = CFBundleGetMainBundle();
    if (MainBundle && (Identifier = CFBundleGetIdentifier(MainBundle), (v22 = Identifier) != 0))
    {
      CFRetain(Identifier);
    }

    else
    {
      v23 = getprogname();
      v24 = getpid();
      v22 = CFStringCreateWithFormat(v12, 0, @"%s (%d)", v23, v24);
      if (!v22)
      {
        goto LABEL_21;
      }
    }

    v25 = SCPreferencesCreate(v12, v22, @"com.apple.wifi.plist");
    v3->_wiFiPreferences = v25;
    v38.version = 0;
    memset(&v38.retain, 0, 24);
    v38.info = v3;
    SCPreferencesSetCallback(v25, _WiFiCallBack, &v38);
    SCPreferencesScheduleWithRunLoop(v3->_wiFiPreferences, v3->_rl, v14);
    v3->_isWiFiEnabled = _IsWiFiEnabled(v3->_wiFiPreferences);
    CFRelease(v22);
  }

LABEL_21:
  v26 = dispatch_queue_create("com.apple.message.MFNetworkController.dataStatus", 0);
  dataStatusQueue = v3->_dataStatusQueue;
  v3->_dataStatusQueue = v26;

  v28 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:v3->_dataStatusQueue];
  ctc = v3->_ctc;
  v3->_ctc = v28;

  [(CoreTelephonyClient *)v3->_ctc setDelegate:v3];
  [(MFNetworkController *)v3 _setupSymptoms];
  v30 = dispatch_queue_create("com.apple.mail.radioPreferences", 0);
  prefsQueue = v3->_prefsQueue;
  v3->_prefsQueue = v30;

  v32 = [objc_alloc(MEMORY[0x1E698B6B0]) initWithQueue:v3->_prefsQueue];
  radiosPreferences = v3->_radiosPreferences;
  v3->_radiosPreferences = v32;

  [(RadiosPreferences *)v3->_radiosPreferences setDelegate:v3];
  v34 = [MEMORY[0x1E696AD88] defaultCenter];
  [v34 addObserver:v3 selector:sel__resetDataStatusInitialized name:@"UIApplicationWillEnterForegroundNotification" object:0];

  v35 = v8;
  v36 = v35;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
  {
    LOWORD(v38.version) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v36, OS_SIGNPOST_INTERVAL_END, v6, "MFNetworkControllerInit", "", &v38, 2u);
  }

  return v3;
}

+ (id)signpostLog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__MFNetworkController_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (signpostLog_onceToken_0 != -1)
  {
    dispatch_once(&signpostLog_onceToken_0, block);
  }

  v2 = signpostLog_log_0;

  return v2;
}

void __34__MFNetworkController_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log_0;
  signpostLog_log_0 = v1;
}

+ (void)performExecuteOnObservers
{
  v2 = [a1 observers];
  [v2 performWhileLocked:&__block_literal_global_23_1];
}

- (void)_setupSymptoms
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__MFNetworkController__setupSymptoms__block_invoke;
  aBlock[3] = &unk_1E7AA7330;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  if (notify_register_dispatch("com.apple.symptoms.hasAlternateAdvice", &self->_symptomsToken, MEMORY[0x1E69E96A0], v3))
  {
    self->_symptomsToken = -1;
  }
}

- (void)_registerStateCaptureHandler
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E69E96A0];
  objc_copyWeak(&v6, &location);
  v4 = EFLogRegisterStateCaptureBlock();
  stateCancelable = self->_stateCancelable;
  self->_stateCancelable = v4;

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (int64_t)dataStatus
{
  [(MFNetworkController *)self _initializeDataStatus];
  [(MFLock *)self->_lock lock];
  if ([(MFNetworkController *)self _isNetworkUp_nts])
  {
    if (self->_hasWiFiCapability && (self->_flags & 0x40000) == 0)
    {
      goto LABEL_14;
    }

    v3 = 6;
  }

  else
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    prefsQueue = self->_prefsQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __33__MFNetworkController_dataStatus__block_invoke;
    v7[3] = &unk_1E7AA4B18;
    v7[4] = self;
    v7[5] = &v8;
    dispatch_sync(prefsQueue, v7);
    if (v9[3])
    {
      v5 = 0;
      v3 = 1;
    }

    else if (!self->_hasWiFiCapability || self->_hasCellDataCapability || self->_isWiFiEnabled)
    {
      v5 = 1;
      v3 = 6;
    }

    else
    {
      v5 = 0;
      v3 = 3;
    }

    _Block_object_dispose(&v8, 8);
    if ((v5 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (self->_hasCellDataCapability)
  {
    if (self->_cellularDataAvailable)
    {
LABEL_14:
      v3 = 0;
      goto LABEL_15;
    }

    if (CTCellularDataPlanGetIsEnabled())
    {
      if (self->_isRoamingAllowed)
      {
        if (self->_activeCalls)
        {
          v3 = 5;
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
  }

LABEL_15:
  [(MFLock *)self->_lock unlock];
  return v3;
}

- (void)_initializeDataStatus
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_1B0389000, v1, OS_LOG_TYPE_ERROR, "#Network failed to get data status for context %@ with error: %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

uint64_t __44__MFNetworkController__initializeDataStatus__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 userDataPreferred];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)_updateActiveCalls
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(CXCallObserver *)self->_callObserver calls];
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v4 += [*(*(&v10 + 1) + 8 * v7++) hasEnded] ^ 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v5);
  }

  v8 = MFLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v15 = v4;
    _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_DEFAULT, "#Network %d active calls", buf, 8u);
  }

  self->_activeCalls = v4;
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_resetDataStatusInitialized
{
  os_unfair_lock_lock(&self->_dataStatusInitializerLock);
  self->_dataStatusInitialized = 0;

  os_unfair_lock_unlock(&self->_dataStatusInitializerLock);
}

- (BOOL)isFatPipe
{
  [(MFLock *)self->_lock lock];
  if ([(MFNetworkController *)self _isNetworkUp_nts])
  {
    v3 = (self->_flags & 0x40000) == 0;
  }

  else
  {
    v3 = 0;
  }

  [(MFLock *)self->_lock unlock];

  return [(MFNetworkController *)self _simulationOverrideForType:4 actualValue:v3];
}

- (unint64_t)signpostID
{
  v3 = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(v3, self);

  return v4;
}

void __37__MFNetworkController_sharedInstance__block_invoke_2()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E696AD80] notificationWithName:@"NetworkConfigurationDidChangeNotification" object:sharedInstance__sharedInstance];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotification:v1];

  objc_autoreleasePoolPop(v0);
}

void __37__MFNetworkController__setupSymptoms__block_invoke(uint64_t a1, int token)
{
  state64 = 0;
  notify_get_state(token, &state64);
  if (state64 == 1)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 postNotificationName:@"NetworkSymptomsHasAlternativeAdvice" object:*(a1 + 32)];
  }
}

- (void)dealloc
{
  [(EFCancelable *)self->_stateCancelable cancel];
  wiFiPreferences = self->_wiFiPreferences;
  if (wiFiPreferences)
  {
    SCPreferencesSetCallback(wiFiPreferences, 0, 0);
    v4 = self->_wiFiPreferences;
    Main = CFRunLoopGetMain();
    SCPreferencesUnscheduleFromRunLoop(v4, Main, *MEMORY[0x1E695E8D0]);
    CFRelease(self->_wiFiPreferences);
    self->_wiFiPreferences = 0;
  }

  if (self->_store)
  {
    v7 = "NULL == _store";
    v8 = 402;
    goto LABEL_10;
  }

  if (self->_reachability)
  {
    v7 = "NULL == _reachability";
    v8 = 403;
LABEL_10:
    __assert_rtn("[MFNetworkController dealloc]", "MFNetworkController.m", v8, v7);
  }

  symptomsToken = self->_symptomsToken;
  if (symptomsToken != -1)
  {
    notify_cancel(symptomsToken);
  }

  v9.receiver = self;
  v9.super_class = MFNetworkController;
  [(MFNetworkController *)&v9 dealloc];
}

- (BOOL)_simulationOverrideForType:(unint64_t)a3 actualValue:(BOOL)a4
{
  v6 = CFPreferencesCopyValue(@"MFNetworkSimulationBitfieldKey", *MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v7 = [v6 unsignedIntegerValue];
  if (v7)
  {
    a4 = (v7 & a3) != 0;
  }

  return a4;
}

- (void)_setDataStatus_nts:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "#Network setting data status: %@", &v8, 0xCu);
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

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __33__MFNetworkController_dataStatus__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 96) airplaneMode];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isDataAvailable
{
  v3 = [(MFNetworkController *)self dataStatus]== 0;

  return [(MFNetworkController *)self _simulationOverrideForType:1 actualValue:v3];
}

- (BOOL)isNetworkUp
{
  [(MFLock *)self->_lock lock];
  v3 = [(MFNetworkController *)self _isNetworkUp_nts];
  [(MFLock *)self->_lock unlock];

  return [(MFNetworkController *)self _simulationOverrideForType:2 actualValue:v3];
}

- (BOOL)isOnWWAN
{
  [(MFLock *)self->_lock lock];
  if ([(MFNetworkController *)self _isNetworkUp_nts])
  {
    v3 = (BYTE2(self->_flags) >> 2) & 1;
  }

  else
  {
    v3 = 0;
  }

  [(MFLock *)self->_lock unlock];

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

- (int64_t)transportType
{
  if (![(MFNetworkController *)self isNetworkUp])
  {
    return 0;
  }

  if ([(MFNetworkController *)self isFatPipe])
  {
    return 2;
  }

  if ([(MFNetworkController *)self isOnWWAN]&& (v4 = [(MFNetworkController *)self dataIndicator]- 1, v4 <= 0xE))
  {
    return qword_1B0E977E8[v4];
  }

  else
  {
    return 0;
  }
}

- (void)_setFlags:(unsigned int)a3 forReachability:(__SCNetworkReachability *)a4
{
  [(MFLock *)self->_lock lock];
  if (self->_reachability == a4)
  {
    v7 = [(MFNetworkController *)self _isNetworkUp_nts];
    v8 = self->_flags ^ a3;
    self->_flags = a3;
    if ((v8 & 0x40000) != 0 || v7 != [(MFNetworkController *)self _isNetworkUp_nts])
    {
      +[MFNetworkController performExecuteOnObservers];
    }
  }

  lock = self->_lock;

  [(MFLock *)lock unlock];
}

- (void)_checkKeys:(id)a3 forStore:(__SCDynamicStore *)a4
{
  v10 = a3;
  [(MFLock *)self->_lock lock];
  if (self->_store == a4)
  {
    v6 = [(MFNetworkController *)self _isNetworkUp_nts];
    self->_hasDNS = 0;
    if ([v10 count])
    {
      v7 = [v10 objectAtIndexedSubscript:0];
      v8 = SCDynamicStoreCopyValue(a4, v7);

      if (v8)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 objectForKey:*MEMORY[0x1E69823D8]];
          self->_hasDNS = [v9 count] != 0;
        }
      }
    }

    if (v6 != [(MFNetworkController *)self _isNetworkUp_nts])
    {
      +[MFNetworkController performExecuteOnObservers];
    }
  }

  [(MFLock *)self->_lock unlock];
}

- (void)_handleWiFiNotification:(unsigned int)a3
{
  if (a3)
  {
    [(MFLock *)self->_lock lock];
    self->_isWiFiEnabled = _IsWiFiEnabled(self->_wiFiPreferences);
    lock = self->_lock;

    [(MFLock *)lock unlock];
  }
}

- (id)_networkAssertionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x1E695E480];
  v6 = _CTServerConnectionCreateWithIdentifier();
  if (v6)
  {
    rl = self->_rl;
    v8 = *MEMORY[0x1E695E8D0];
    _CTServerConnectionAddToRunLoop();
    if (_CTServerConnectionPacketContextAssertionCreate() >> 32)
    {
      v9 = MFLogGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [MFNetworkController _networkAssertionWithIdentifier:];
      }
    }

    CFRelease(v6);
  }

  v10 = 0;

  return v10;
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
    v9 = [v11 ef_firstObjectPassingTest:&__block_literal_global_59_0];

    if (v9)
    {
      v12 = [objc_alloc(MEMORY[0x1E6964F68]) initWithBundleType:1];
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

+ (id)addNetworkObserverBlock:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[_MFNetworkObserver alloc] initWithBlock:v6 queue:v7];
  v9 = [a1 observers];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__MFNetworkController_addNetworkObserverBlock_queue___block_invoke;
  v12[3] = &unk_1E7AA7358;
  v10 = v8;
  v13 = v10;
  [v9 performWhileLocked:v12];

  return v10;
}

+ (void)removeNetworkObserver:(id)a3
{
  v4 = a3;
  v5 = [a1 observers];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__MFNetworkController_removeNetworkObserver___block_invoke;
  v7[3] = &unk_1E7AA7358;
  v6 = v4;
  v8 = v6;
  [v5 performWhileLocked:v7];
}

- (EFObservable)networkObservable
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__MFNetworkController_networkObservable__block_invoke;
  v4[3] = &unk_1E7AA73A8;
  v4[4] = self;
  v2 = [MEMORY[0x1E699B830] observableWithBlock:v4];

  return v2;
}

id __40__MFNetworkController_networkObservable__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E699B7F8]);
  objc_initWeak(&location, *(a1 + 32));
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __40__MFNetworkController_networkObservable__block_invoke_2;
  v14[3] = &unk_1E7AA7380;
  objc_copyWeak(&v17, &location);
  v5 = v3;
  v15 = v5;
  v6 = v4;
  v16 = v6;
  v7 = [MFNetworkController addNetworkObserverBlock:v14 queue:MEMORY[0x1E69E96A0]];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __40__MFNetworkController_networkObservable__block_invoke_3;
  v12[3] = &unk_1E7AA25C0;
  v13 = v7;
  v8 = v7;
  [v6 addCancelationBlock:v12];
  v9 = v13;
  v10 = v6;

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v10;
}

void __40__MFNetworkController_networkObservable__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    [*(a1 + 32) observerDidReceiveResult:WeakRetained];
  }
}

- (EFObservable)wifiObservable
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(MFNetworkController *)self networkObservable];
  v10[0] = self;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v5 = [v3 startWith:v4];
  v6 = [v5 map:&__block_literal_global_67_0];
  v7 = [v6 distinctUntilChanged];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __37__MFNetworkController_wifiObservable__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v2, "isFatPipe")}];

  return v3;
}

- (void)_carrierBundleDidChange
{
  v3 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__MFNetworkController__carrierBundleDidChange__block_invoke;
  block[3] = &unk_1E7AA25C0;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x1E69E96A0], block);
}

void __46__MFNetworkController__carrierBundleDidChange__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MFCarrierBundleChangedNotification" object:*(a1 + 32)];
}

- (void)connectionActivationError:(id)a3 connection:(int)a4 error:(int)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  dispatch_assert_queue_V2(self->_dataStatusQueue);
  v9 = [v8 userDataPreferred];
  v10 = [v9 BOOLValue];

  v11 = v10 ^ 1;
  if (a4)
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0)
  {
    v12 = MFLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412802;
      v15 = v8;
      v16 = 1024;
      v17 = 0;
      v18 = 1024;
      v19 = a5;
      _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_DEFAULT, "#Network failed to bring up data context (context: %@, connection: %u, error: %d", &v14, 0x18u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)preferredDataSimChanged:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_dataStatusQueue);
  [(MFNetworkController *)self _carrierBundleDidChange];
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = [v4 slotID];
    _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "#Network preferred data sim was changed to slot %lu", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)dataStatus:(id)a3 dataStatusInfo:(id)a4
{
  v9 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_dataStatusQueue);
  v7 = [v9 userDataPreferred];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    [(MFNetworkController *)self _setDataStatus_nts:v6];
  }
}

- (void)simStatusDidChange:(id)a3 status:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToString:*MEMORY[0x1E6965470]])
  {
    v8 = MFLogGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = [v6 slotID];
      _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_DEFAULT, "#Network SIM is now ready (slot %lu)", &v10, 0xCu);
    }

    [(MFNetworkController *)self _carrierBundleDidChange];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)callObserver:(id)a3 callChanged:(id)a4
{
  dispatch_assert_queue_V2(self->_dataStatusQueue);

  [(MFNetworkController *)self _updateActiveCalls];
}

id __51__MFNetworkController__registerStateCaptureHandler__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(WeakRetained, "dataStatus")}];
  [v2 setObject:v3 forKeyedSubscript:@"Data Status"];

  [WeakRetained[6] lock];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%02x", *(WeakRetained + 16)];
  [v2 setObject:v4 forKeyedSubscript:@"Reachability Flags"];

  if (*(WeakRetained + 68))
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v2 setObject:v5 forKeyedSubscript:@"DNS"];
  if (*(WeakRetained + 90))
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v2 setObject:v6 forKeyedSubscript:@"WiFi Enabled"];
  if (*(WeakRetained + 136))
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v2 setObject:v7 forKeyedSubscript:@"Cell Data"];
  v8 = *(WeakRetained + 37);
  if (v8 > 0xC)
  {
    v9 = @"Unknown";
  }

  else
  {
    v9 = off_1E7AA7410[v8];
  }

  [v2 setObject:v9 forKeyedSubscript:@"Data Status Indicator"];
  if (*(WeakRetained + 91))
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [v2 setObject:v10 forKeyedSubscript:@"Roaming Allowed"];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:WeakRetained[9]];
  [v2 setObject:v11 forKeyedSubscript:@"Active Calls"];

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", WeakRetained[15]];
  [v2 setObject:v12 forKeyedSubscript:@"Core Telephony Client"];

  [WeakRetained[6] unlock];

  return v2;
}

- (void)callRevokeTokenForUPI
{
  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [MFNetworkController callRevokeTokenForUPI];
  }

  [(CoreTelephonyClient *)self->_ctc revokeTokenWithCompletion:&__block_literal_global_116_0];
}

void __44__MFNetworkController_callRevokeTokenForUPI__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __44__MFNetworkController_callRevokeTokenForUPI__block_invoke_cold_1();
  }
}

- (void)copyCarrierBundleValue:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)copyCarrierBundleValue:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __44__MFNetworkController_callRevokeTokenForUPI__block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end