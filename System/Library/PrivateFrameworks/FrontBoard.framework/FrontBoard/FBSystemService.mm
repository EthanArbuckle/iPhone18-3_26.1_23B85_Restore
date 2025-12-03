@interface FBSystemService
+ (NSString)currentOpenApplicationInstance;
+ (id)_sharedInstanceCreatingIfNecessary:(uint64_t)necessary;
+ (id)sharedInstanceIfExists;
+ (void)currentOpenApplicationInstance;
- (BOOL)_isAllowListedLaunchSuspendedApp:(id)app;
- (BOOL)_isTrustedRequest:(id)request forCaller:(id)caller fromClient:(id)client forBundleInfo:(id)info withOptions:(id)options fatalError:(id *)error;
- (BOOL)_shouldPendRequestForClientSequenceNumber:(unint64_t)number clientCacheGUID:(id)d ourSequenceNumber:(unint64_t)sequenceNumber ourCacheGUID:(id)iD;
- (FBSApplicationInfoProvider)_applicationInfoProvider;
- (FBSystemService)init;
- (FBSystemService)initWithQueue:(id)queue;
- (FBSystemServiceDelegate)delegate;
- (unint64_t)_mapShutdownOptionsToOptions:(id)options;
- (void)_activateBundleID:(id)d requestID:(id)iD isTrusted:(BOOL)trusted options:(id)options serviceInstance:(id)instance source:(id)source originalSourceToken:(id)token withResult:(id)self0;
- (void)_performExitTasksForRelaunch:(BOOL)relaunch;
- (void)_reallyActivateApplication:(id)application requestID:(id)d options:(id)options serviceInstance:(id)instance source:(id)source originalSourceToken:(id)token isTrusted:(BOOL)trusted sequenceNumber:(unint64_t)self0 cacheGUID:(id)self1 ourSequenceNumber:(unint64_t)self2 ourCacheGUID:(id)self3 withResult:(id)self4;
- (void)_setInfoProvider;
- (void)canOpenApplication:(id)application completion:(id)completion;
- (void)dealloc;
- (void)handleActions:(id)actions source:(id)source withResult:(id)result;
- (void)isPasscodeLockedOrBlockedWithResult:(id)result;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)openApplication:(id)application withOptions:(id)options originator:(id)originator requestID:(id)d completion:(id)completion;
- (void)prepareDisplaysForExit;
- (void)setDelegate:(id)delegate;
- (void)shutdownWithOptions:(id)options origin:(id)origin;
- (void)shutdownWithOptions:(unint64_t)options forSource:(int64_t)source;
- (void)terminateApplicationGroup:(int64_t)group forReason:(int64_t)reason andReport:(BOOL)report withDescription:(id)description completion:(id)completion;
@end

@implementation FBSystemService

+ (id)sharedInstanceIfExists
{
  v2 = +[FBServiceFacilityServer sharedInstanceDomain];
  v3 = [FBSystemService _sharedInstanceCreatingIfNecessary:?];

  return v3;
}

- (FBSApplicationInfoProvider)_applicationInfoProvider
{
  os_unfair_lock_lock(&self->_defaultInfoProviderLock);
  v3 = self->_lock_defaultInfoProvider;
  os_unfair_lock_unlock(&self->_defaultInfoProviderLock);

  return v3;
}

- (FBSystemServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (NSString)currentOpenApplicationInstance
{
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  if (!threadDictionary)
  {
    +[FBSystemService currentOpenApplicationInstance];
  }

  v6 = [threadDictionary objectForKey:@"FBOpenAppSystemServiceInstance"];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      +[(FBSystemService *)v8];
    }

    v9 = v8;
  }

  return v7;
}

+ (id)_sharedInstanceCreatingIfNecessary:(uint64_t)necessary
{
  v3 = objc_opt_self();
  os_unfair_lock_lock(&_sharedInstanceCreatingIfNecessary____lock);
  v4 = _sharedInstanceCreatingIfNecessary____sharedInstance;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = a2 == 0;
  }

  if (!v5)
  {
    v6 = [v3 alloc];
    mainQueue = [MEMORY[0x1E698F4D0] mainQueue];
    v8 = [v6 initWithQueue:mainQueue];
    v9 = _sharedInstanceCreatingIfNecessary____sharedInstance;
    _sharedInstanceCreatingIfNecessary____sharedInstance = v8;

    v4 = v8;
  }

  os_unfair_lock_unlock(&_sharedInstanceCreatingIfNecessary____lock);

  return v4;
}

- (FBSystemService)initWithQueue:(id)queue
{
  queueCopy = queue;
  v33.receiver = self;
  v33.super_class = FBSystemService;
  v6 = [(FBSystemService *)&v33 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = +[FBServiceFacilityServer sharedInstance];
    domain = [v8 domain];
    identifier = [MEMORY[0x1E699FB80] identifier];
    v11 = [domain serviceForIdentifier:identifier];

    if (v11 && [v11 isDerived])
    {
      v12 = MEMORY[0x1E698F4B8];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __33__FBSystemService_initWithQueue___block_invoke;
      v29[3] = &unk_1E783B440;
      v30 = v8;
      v31 = v11;
      v13 = v7;
      v32 = v13;
      v14 = [v12 listenerWithConfigurator:v29];
      legacyOpenServiceListener = v13->_legacyOpenServiceListener;
      v13->_legacyOpenServiceListener = v14;
    }

    v7->_defaultInfoProviderLock._os_unfair_lock_opaque = 0;
    [(FBSystemService *)v7 _setInfoProvider];
    [(BSServiceConnectionListener *)v7->_legacyOpenServiceListener activate];
    if ([MEMORY[0x1E699FA78] isServerProcess])
    {
      v16 = MEMORY[0x1E69E96A0];
      v17 = MEMORY[0x1E69E96A0];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __33__FBSystemService_initWithQueue___block_invoke_2;
      v27[3] = &unk_1E783B970;
      v18 = v7;
      v28 = v18;
      v19 = v16;
      v20 = v27;
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v21 = getAKSEventsRegisterSymbolLoc_ptr;
      v38 = getAKSEventsRegisterSymbolLoc_ptr;
      if (!getAKSEventsRegisterSymbolLoc_ptr)
      {
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __getAKSEventsRegisterSymbolLoc_block_invoke;
        v34[3] = &unk_1E783B178;
        v34[4] = &v35;
        __getAKSEventsRegisterSymbolLoc_block_invoke(v34);
        v21 = v36[3];
      }

      _Block_object_dispose(&v35, 8);
      if (!v21)
      {
        [FBSystemService initWithQueue:];
      }

      v22 = MEMORY[0x1E69E96A0];
      v23 = (v21)(MEMORY[0x1E69E96A0], v20);

      v18->_aksEvent = v23;
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __33__FBSystemService_initWithQueue___block_invoke_30;
    v25[3] = &unk_1E783B580;
    v26 = v7;
    atexit_b(v25);
  }

  return v7;
}

void __33__FBSystemService_initWithQueue___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v7 = a2;
  v4 = [v3 domain];
  v5 = [v4 identifier];
  [v7 setDomain:v5];

  v6 = [*(a1 + 40) identifier];
  [v7 setService:v6];

  [v7 setDelegate:*(a1 + 48)];
}

void __33__FBSystemService_initWithQueue___block_invoke_2(uint64_t a1, int a2)
{
  if (a2 == 5)
  {
    v3 = FBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __33__FBSystemService_initWithQueue___block_invoke_2_cold_1(v3);
    }

    v4 = [objc_alloc(MEMORY[0x1E699FC90]) initWithReason:@"SEP idle reboot"];
    [v4 setRebootType:1];
    [*(a1 + 32) shutdownUsingOptions:v4];
  }
}

void __33__FBSystemService_initWithQueue___block_invoke_30(uint64_t a1)
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v6 = +[FBSystemService sharedInstance];
    [v6 prepareForExitAndRelaunch:1];
  }

  else
  {
    v2 = dispatch_semaphore_create(0);
    v3 = *(*(a1 + 32) + 8);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __33__FBSystemService_initWithQueue___block_invoke_2_32;
    v7[3] = &unk_1E783B580;
    v8 = v2;
    v4 = v2;
    [v3 performAsync:v7];
    v5 = dispatch_time(0, 1000000000);
    dispatch_semaphore_wait(v4, v5);
  }
}

intptr_t __33__FBSystemService_initWithQueue___block_invoke_2_32(uint64_t a1)
{
  v2 = +[FBSystemService sharedInstance];
  [v2 prepareForExitAndRelaunch:1];

  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

- (FBSystemService)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed on FBSystemService"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"FBSystemService.m";
    v17 = 1024;
    v18 = 214;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)dealloc
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s should NEVER be deallocated: %@", "-[FBSystemService dealloc]", self];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    selfCopy = self;
    v14 = 2114;
    v15 = @"FBSystemService.m";
    v16 = 1024;
    v17 = 219;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(FBSystemService *)self _setInfoProvider];
    v5 = obj;
  }
}

- (void)shutdownWithOptions:(unint64_t)options forSource:(int64_t)source
{
  optionsCopy = options;
  v7 = [objc_alloc(MEMORY[0x1E699FC90]) initWithReason:@"GenericSystemService"];
  v8 = v7;
  if ((optionsCopy & 2) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = optionsCopy & 1;
  }

  [v7 setRebootType:v9];
  [v8 setSource:source];
  v10 = [(FBSystemService *)self shutdownWithOptions:v8 origin:0];
  [(FBSystemService *)v10 shutdownUsingOptions:v11, v12];
}

- (void)shutdownWithOptions:(id)options origin:(id)origin
{
  v45 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  originCopy = origin;
  rebootType = [optionsCopy rebootType];
  isReboot = [optionsCopy isReboot];
  [(FBSystemService *)self setPendingExit:1];
  if (![optionsCopy isShutdown])
  {
    [FBAsynchronousShutdownTask startTaskWithName:@"NotifyNearField" timeout:&__block_literal_global_74 workItem:1.0];
    goto LABEL_5;
  }

  lPEMOption = [optionsCopy LPEMOption];
  if (lPEMOption)
  {
    v11 = lPEMOption == 2;
  }

  else
  {
    v11 = [optionsCopy isUserInitiated] ^ 1;
  }

  v13 = FBLogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v11;
    *&buf[8] = 1024;
    *&buf[10] = [optionsCopy isUserInitiated];
    _os_log_impl(&dword_1A89DD000, v13, OS_LOG_TYPE_DEFAULT, "Performing shutdown for low power: %{BOOL}u; userInitiated: %{BOOL}u", buf, 0xEu);
  }

  if ((v11 & 1) == 0)
  {
    [FBAsynchronousShutdownTask startTaskWithName:@"NotifyNearField" timeout:&__block_literal_global_6 workItem:1.0];
  }

  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v14 = getCBControllerLowPowerModeCompletionTimeoutSecondsSymbolLoc_ptr;
  v41 = getCBControllerLowPowerModeCompletionTimeoutSecondsSymbolLoc_ptr;
  if (!getCBControllerLowPowerModeCompletionTimeoutSecondsSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getCBControllerLowPowerModeCompletionTimeoutSecondsSymbolLoc_block_invoke;
    v43 = &unk_1E783B178;
    v44 = &v38;
    v15 = CoreBluetoothLibrary();
    v16 = dlsym(v15, "CBControllerLowPowerModeCompletionTimeoutSeconds");
    *(v44[1] + 24) = v16;
    getCBControllerLowPowerModeCompletionTimeoutSecondsSymbolLoc_ptr = *(v44[1] + 24);
    v14 = v39[3];
  }

  _Block_object_dispose(&v38, 8);
  if (v14)
  {
    v17 = *v14;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __46__FBSystemService_shutdownWithOptions_origin___block_invoke_3;
    v36[3] = &__block_descriptor_33_e56_v24__0__NSObject_OS_dispatch_queue__8___v____NSError__16l;
    v37 = v11;
    [FBAsynchronousShutdownTask startTaskWithName:@"NotifyBluetooth" timeout:v36 workItem:v17];
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v18 = getkNISystemShutdownCompletionTimeoutSecondsSymbolLoc_ptr;
    v41 = getkNISystemShutdownCompletionTimeoutSecondsSymbolLoc_ptr;
    if (!getkNISystemShutdownCompletionTimeoutSecondsSymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getkNISystemShutdownCompletionTimeoutSecondsSymbolLoc_block_invoke;
      v43 = &unk_1E783B178;
      v44 = &v38;
      v19 = NearbyInteractionLibrary();
      v20 = dlsym(v19, "kNISystemShutdownCompletionTimeoutSeconds");
      *(v44[1] + 24) = v20;
      getkNISystemShutdownCompletionTimeoutSecondsSymbolLoc_ptr = *(v44[1] + 24);
      v18 = v39[3];
    }

    _Block_object_dispose(&v38, 8);
    if (v18)
    {
      v21 = *v18;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __46__FBSystemService_shutdownWithOptions_origin___block_invoke_5;
      v33[3] = &unk_1E783BA28;
      v35 = v11;
      v34 = optionsCopy;
      [FBAsynchronousShutdownTask startTaskWithName:@"NotifyNearbyInteraction" timeout:v33 workItem:v21];

LABEL_5:
      delegate = [(FBSystemService *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate systemService:self prepareForShutdownWithOptions:optionsCopy origin:originCopy];
      }

      else if (objc_opt_respondsToSelector())
      {
        [delegate systemServicePrepareForShutdown:self withOptions:{-[FBSystemService _mapShutdownOptionsToOptions:](self, "_mapShutdownOptionsToOptions:", optionsCopy)}];
      }

      v22 = rebootType == 2;
      [(FBSystemService *)self _performExitTasksForRelaunch:0];
      v23 = objc_alloc_init(_FBDarkBootHelper);
      v24 = v23;
      if (v22)
      {
        [(_FBDarkBootHelper *)v23 setNextBootDark];
      }

      v25 = FBLogCommon();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
      if (isReboot)
      {
        if (v26)
        {
          isBootingDark = [(_FBDarkBootHelper *)v24 isBootingDark];
          *buf = 138412546;
          *&buf[4] = optionsCopy;
          *&buf[12] = 1024;
          *&buf[14] = isBootingDark;
          _os_log_impl(&dword_1A89DD000, v25, OS_LOG_TYPE_DEFAULT, "Rebooting... options:%@ darkBootGotSet:%{BOOL}u", buf, 0x12u);
        }
      }

      else if (v26)
      {
        *buf = 138412290;
        *&buf[4] = optionsCopy;
        _os_log_impl(&dword_1A89DD000, v25, OS_LOG_TYPE_DEFAULT, "Shutting Down... options:%@", buf, 0xCu);
      }

      +[FBAsynchronousShutdownTask waitForTasks];
      if (reboot3())
      {
        v28 = -1;
      }

      else
      {
        v28 = 0;
      }

      exit(v28);
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSTimeInterval getkNISystemShutdownCompletionTimeoutSeconds(void)"];
    [currentHandler handleFailureInFunction:v32 file:@"FBSystemService.m" lineNumber:81 description:{@"%s", dlerror()}];
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"const NSInteger getCBControllerLowPowerModeCompletionTimeoutSeconds(void)"];
    [currentHandler2 handleFailureInFunction:v30 file:@"FBSystemService.m" lineNumber:70 description:{@"%s", dlerror()}];
  }

  __break(1u);
}

void __46__FBSystemService_shutdownWithOptions_origin___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [getNFHardwareManagerClass() sharedHardwareManager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__FBSystemService_shutdownWithOptions_origin___block_invoke_2;
  v6[3] = &unk_1E783B9B8;
  v7 = v3;
  v5 = v3;
  [v4 actOnUserInitiatedSystemShutDown:2 completion:v6];
}

void __46__FBSystemService_shutdownWithOptions_origin___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v8 = getCBControllerClass_softClass;
  v21 = getCBControllerClass_softClass;
  if (!getCBControllerClass_softClass)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __getCBControllerClass_block_invoke;
    v17[3] = &unk_1E783B178;
    v17[4] = &v18;
    __getCBControllerClass_block_invoke(v17);
    v8 = v19[3];
  }

  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v10 = v8;
  _Block_object_dispose(&v18, 8);
  v11 = objc_alloc_init(v8);
  [v11 setDispatchQueue:v5];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__FBSystemService_shutdownWithOptions_origin___block_invoke_4;
  v14[3] = &unk_1E783B9E0;
  v15 = v11;
  v16 = v6;
  v12 = v6;
  v13 = v11;
  [v13 setLowPowerModeWithReason:v9 completion:v14];
}

void __46__FBSystemService_shutdownWithOptions_origin___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
}

void __46__FBSystemService_shutdownWithOptions_origin___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 40))
  {
    v7 = 1;
  }

  else if ([*(a1 + 32) isUserInitiated])
  {
    v7 = 0;
  }

  else
  {
    v7 = 2;
  }

  v8 = v6;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v9 = getNINotifySystemShutdownWithReasonSymbolLoc_ptr;
  v14 = getNINotifySystemShutdownWithReasonSymbolLoc_ptr;
  if (!getNINotifySystemShutdownWithReasonSymbolLoc_ptr)
  {
    v10 = NearbyInteractionLibrary();
    v12[3] = dlsym(v10, "NINotifySystemShutdownWithReason");
    getNINotifySystemShutdownWithReasonSymbolLoc_ptr = v12[3];
    v9 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v9)
  {
    __46__FBSystemService_shutdownWithOptions_origin___block_invoke_5_cold_1();
  }

  v9(v7, v8);
}

void __46__FBSystemService_shutdownWithOptions_origin___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [getNFHardwareManagerClass() sharedHardwareManager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__FBSystemService_shutdownWithOptions_origin___block_invoke_7;
  v6[3] = &unk_1E783B9B8;
  v7 = v3;
  v5 = v3;
  [v4 actOnUserInitiatedSystemShutDown:4 completion:v6];
}

- (void)prepareDisplaysForExit
{
  [MEMORY[0x1E6979518] flush];
  [MEMORY[0x1E6979518] synchronize];
  serverIfRunning = [MEMORY[0x1E6979550] serverIfRunning];
  [serverIfRunning removeAllDisplays];
}

uint64_t __86__FBSystemService__terminateProcesses_forReason_andReport_withDescription_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  result = [a2 isComplete];
  if (result)
  {
    v4 = FBLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(*(a1 + 40) + 8) + 24);
      v7 = 134217984;
      v8 = v5;
      _os_log_impl(&dword_1A89DD000, v4, OS_LOG_TYPE_DEFAULT, "[FBSystemService] Completed termination of %lu process(es)", &v7, 0xCu);
    }

    result = *(a1 + 32);
    if (result)
    {
      result = (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 24) != 0);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)terminateApplicationGroup:(int64_t)group forReason:(int64_t)reason andReport:(BOOL)report withDescription:(id)description completion:(id)completion
{
  reportCopy = report;
  reasonCopy = reason;
  v29 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  completionCopy = completion;
  v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = +[FBProcessManager sharedInstance];
  allApplicationProcesses = [v13 allApplicationProcesses];

  v15 = [allApplicationProcesses countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      v18 = 0;
      do
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(allApplicationProcesses);
        }

        v19 = *(*(&v24 + 1) + 8 * v18);
        if (group || [*(*(&v24 + 1) + 8 * v18) isForeground])
        {
          [v12 addObject:{v19, reasonCopy}];
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [allApplicationProcesses countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  allObjects = [v12 allObjects];
  [(FBSystemService *)self _terminateProcesses:allObjects forReason:reasonCopy andReport:reportCopy withDescription:descriptionCopy completion:completionCopy];

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_activateBundleID:(id)d requestID:(id)iD isTrusted:(BOOL)trusted options:(id)options serviceInstance:(id)instance source:(id)source originalSourceToken:(id)token withResult:(id)self0
{
  v82 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  optionsCopy = options;
  instanceCopy = instance;
  sourceCopy = source;
  tokenCopy = token;
  resultCopy = result;
  selfCopy = self;
  [(BSServiceDispatchQueue *)self->_queue assertBarrierOnQueue];
  if (!dCopy)
  {
    [FBSystemService _activateBundleID:a2 requestID:? isTrusted:? options:? serviceInstance:? source:? originalSourceToken:? withResult:?];
  }

  if (!iDCopy)
  {
    [FBSystemService _activateBundleID:a2 requestID:? isTrusted:? options:? serviceInstance:? source:? originalSourceToken:? withResult:?];
  }

  if (!sourceCopy)
  {
    [FBSystemService _activateBundleID:a2 requestID:? isTrusted:? options:? serviceInstance:? source:? originalSourceToken:? withResult:?];
  }

  if (!tokenCopy)
  {
    [FBSystemService _activateBundleID:a2 requestID:? isTrusted:? options:? serviceInstance:? source:? originalSourceToken:? withResult:?];
  }

  if (!resultCopy)
  {
    [FBSystemService _activateBundleID:a2 requestID:? isTrusted:? options:? serviceInstance:? source:? originalSourceToken:? withResult:?];
  }

  v21 = FBSystemAppBundleID();
  v22 = [dCopy isEqualToString:v21];

  if (v22)
  {
    v23 = FBLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = iDCopy;
      _os_log_impl(&dword_1A89DD000, v23, OS_LOG_TYPE_DEFAULT, "[FBSystemService][%{public}@] Open request is targeting the system app itself; swizzling bundleID to nil.", buf, 0xCu);
    }

    dCopy = 0;
  }

  dictionary = [optionsCopy dictionary];
  v58 = [dictionary objectForKey:*MEMORY[0x1E699F980]];
  [v58 doubleValue];
  v25 = v24;
  v26 = CACurrentMediaTime();
  v27 = v25 <= 0.0 || v58 == 0;
  v28 = v27;
  v29 = fmin(v25, 30.0);
  if (v27)
  {
    v30 = v26;
  }

  else
  {
    v30 = v26 + v29;
  }

  if (!v27)
  {
    v25 = v29;
  }

  v31 = [dictionary objectForKey:*MEMORY[0x1E699F928]];
  v32 = [dictionary objectForKey:*MEMORY[0x1E699F920]];
  if (v32)
  {
    v33 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v32];
    v34 = v33;
    if (v31)
    {
      v35 = v28;
    }

    else
    {
      v35 = 0;
    }

    if (v35 == 1 && v33)
    {
      v25 = fmin(fmax(v25, 0.0), 2.0);
      v30 = v30 + v25;
      v56 = 0x3FE0000000000000;
      goto LABEL_31;
    }
  }

  else
  {
    v34 = 0;
  }

  v56 = 0x4000000000000000;
  if (v28)
  {
    v36 = dCopy;
    v37 = v32;
    v38 = resultCopy;
    v39 = 0;
    goto LABEL_34;
  }

LABEL_31:
  v40 = FBLogCommon();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    *&buf[4] = iDCopy;
    *&buf[12] = 2114;
    *&buf[14] = dCopy;
    *&buf[22] = 2048;
    v80 = *&v25;
    LOWORD(v81) = 2048;
    *(&v81 + 2) = v56;
    _os_log_impl(&dword_1A89DD000, v40, OS_LOG_TYPE_DEFAULT, "[FBSystemService][%{public}@] Activation request for %{public}@ will wait %.2fs for app availability, with retry every %.2fs.", buf, 0x2Au);
  }

  v36 = dCopy;
  v37 = v32;
  v38 = resultCopy;
  v39 = 1;
LABEL_34:
  v77[0] = 0;
  v77[1] = v77;
  v77[2] = 0x2020000000;
  v78 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v80 = __Block_byref_object_copy__0;
  *&v81 = __Block_byref_object_dispose__0;
  *(&v81 + 1) = 0;
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __119__FBSystemService__activateBundleID_requestID_isTrusted_options_serviceInstance_source_originalSourceToken_withResult___block_invoke;
  v60[3] = &unk_1E783BAF0;
  v60[4] = selfCopy;
  v49 = v36;
  v61 = v49;
  v70 = v77;
  v71 = buf;
  v50 = iDCopy;
  v62 = v50;
  v51 = optionsCopy;
  v63 = v51;
  v55 = instanceCopy;
  v64 = v55;
  v41 = sourceCopy;
  v65 = v41;
  v42 = tokenCopy;
  v66 = v42;
  trustedCopy = trusted;
  v43 = v31;
  v67 = v43;
  v44 = v34;
  v68 = v44;
  v76 = v39;
  v72 = v26;
  v73 = v30;
  v74 = v56;
  v45 = v38;
  v69 = v45;
  v46 = [v60 copy];
  v47 = *(*&buf[8] + 40);
  *(*&buf[8] + 40) = v46;

  (*(*(*&buf[8] + 40) + 16))();
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(v77, 8);
  v48 = *MEMORY[0x1E69E9840];
}

void __119__FBSystemService__activateBundleID_requestID_isTrusted_options_serviceInstance_source_originalSourceToken_withResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _applicationInfoProvider];
  v3 = [v2 applicationInfoForBundleIdentifier:*(a1 + 40)];

  v4 = [v3 sequenceNumber];
  v29 = v3;
  v5 = [v3 cacheGUID];
  v6 = v5;
  if (*(*(*(a1 + 112) + 8) + 24) == 1)
  {
    v7 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:*(a1 + 40)];
    v27 = [v7 sequenceNumber];
    v8 = [v7 cacheGUID];

    v28 = v8;
  }

  else
  {
    v27 = v4;
    v28 = v5;
  }

  v9 = objc_alloc(MEMORY[0x1E698E5F0]);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __119__FBSystemService__activateBundleID_requestID_isTrusted_options_serviceInstance_source_originalSourceToken_withResult___block_invoke_2;
  v41[3] = &unk_1E783BAA0;
  v41[4] = *(a1 + 120);
  v10 = [MEMORY[0x1E698E5F8] responderWithHandler:v41];
  v11 = [v9 initWithInfo:0 responder:v10];

  v25 = *(a1 + 40);
  v26 = *(a1 + 32);
  v12 = *(a1 + 56);
  v24 = *(a1 + 48);
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  v15 = *(a1 + 152);
  v16 = *(a1 + 80);
  v17 = [*(a1 + 88) unsignedIntegerValue];
  v18 = *(a1 + 96);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __119__FBSystemService__activateBundleID_requestID_isTrusted_options_serviceInstance_source_originalSourceToken_withResult___block_invoke_3;
  v30[3] = &unk_1E783BAC8;
  v31 = v11;
  v40 = *(a1 + 153);
  v32 = *(a1 + 48);
  v19 = *(a1 + 40);
  v20 = *(a1 + 32);
  v33 = v19;
  v34 = v20;
  v39 = *(a1 + 144);
  v21 = *(a1 + 128);
  v37 = vextq_s8(*(a1 + 112), *(a1 + 112), 8uLL);
  v38 = v21;
  v35 = *(a1 + 72);
  v36 = *(a1 + 104);
  v22 = v11;
  LOBYTE(v23) = v15;
  [v26 _reallyActivateApplication:v25 requestID:v24 options:v12 serviceInstance:v13 source:v14 originalSourceToken:v16 isTrusted:v23 sequenceNumber:v17 cacheGUID:v18 ourSequenceNumber:v27 ourCacheGUID:v28 withResult:v30];
}

void __119__FBSystemService__activateBundleID_requestID_isTrusted_options_serviceInstance_source_originalSourceToken_withResult___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = [v3 code];

  if (v4 == 1)
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }
}

void __119__FBSystemService__activateBundleID_requestID_isTrusted_options_serviceInstance_source_originalSourceToken_withResult___block_invoke_3(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:*MEMORY[0x1E699F8C0]];

  if (v5)
  {
    v6 = [v3 code];
    if (v6 <= 9)
    {
      v7 = v6;
      if (((1 << v6) & 0x250) != 0 && *(a1 + 120) == 1)
      {
        v8 = FBLogCommon();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(a1 + 40);
          v10 = *(a1 + 48);
          v11 = FBSOpenApplicationErrorCodeToString();
          v26 = 138543874;
          v27 = v9;
          v28 = 2114;
          v29 = v10;
          v30 = 2114;
          v31 = v11;
          _os_log_impl(&dword_1A89DD000, v8, OS_LOG_TYPE_DEFAULT, "[FBSystemService][%{public}@] Retry attempt failed for %{public}@ with reason %{public}@", &v26, 0x20u);
        }

        v12 = CACurrentMediaTime();
        if (*(a1 + 96) >= v12 || v12 >= *(a1 + 104))
        {
          if (v7 != 9 || (*(*(*(a1 + 88) + 8) + 24) & 1) != 0)
          {
            v13 = FBLogCommon();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = *(a1 + 40);
              v15 = *(a1 + 48);
              v16 = *(a1 + 64);
              v17 = FBSProcessPrettyDescription();
              v26 = 138543874;
              v27 = v14;
              v28 = 2114;
              v29 = v15;
              v30 = 2114;
              v31 = v17;
              _os_log_impl(&dword_1A89DD000, v13, OS_LOG_TYPE_DEFAULT, "[FBSystemService][%{public}@] Exhausted retry attempts for opening application: %{public}@ from source: %{public}@", &v26, 0x20u);
            }

            goto LABEL_14;
          }

          v21 = FBLogCommon();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = *(a1 + 40);
            v23 = *(a1 + 48);
            v24 = *(a1 + 64);
            v25 = FBSProcessPrettyDescription();
            v26 = 138543874;
            v27 = v22;
            v28 = 2114;
            v29 = v23;
            v30 = 2114;
            v31 = v25;
            _os_log_impl(&dword_1A89DD000, v21, OS_LOG_TYPE_DEFAULT, "[FBSystemService][%{public}@] Attempting final launch request of: %{public}@ from source: %{public}@", &v26, 0x20u);
          }

          *(*(*(a1 + 88) + 8) + 24) = 1;
        }

        [*(*(a1 + 56) + 8) performAfter:*(*(*(a1 + 80) + 8) + 40) withBlock:*(a1 + 112)];
        goto LABEL_15;
      }
    }
  }

LABEL_14:
  (*(*(a1 + 72) + 16))();
  v18 = *(*(a1 + 80) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = 0;

LABEL_15:
  v20 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldPendRequestForClientSequenceNumber:(unint64_t)number clientCacheGUID:(id)d ourSequenceNumber:(unint64_t)sequenceNumber ourCacheGUID:(id)iD
{
  v8 = [d isEqual:iD] ^ 1;
  if (sequenceNumber == number)
  {
    return v8;
  }

  else
  {
    return 1;
  }
}

- (void)_reallyActivateApplication:(id)application requestID:(id)d options:(id)options serviceInstance:(id)instance source:(id)source originalSourceToken:(id)token isTrusted:(BOOL)trusted sequenceNumber:(unint64_t)self0 cacheGUID:(id)self1 ourSequenceNumber:(unint64_t)self2 ourCacheGUID:(id)self3 withResult:(id)self4
{
  v87 = *MEMORY[0x1E69E9840];
  applicationCopy = application;
  dCopy = d;
  optionsCopy = options;
  selfCopy = self;
  v59 = optionsCopy;
  instanceCopy = instance;
  tokenCopy = token;
  iDCopy = iD;
  uIDCopy = uID;
  resultCopy = result;
  _applicationInfoProvider = [(FBSystemService *)selfCopy _applicationInfoProvider];
  v27 = [_applicationInfoProvider applicationInfoForBundleIdentifier:applicationCopy];

  if (applicationCopy && iDCopy)
  {
    v28 = v27;
    v29 = tokenCopy;
    v30 = FBLogCommon();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      [iDCopy UUIDString];
      v57 = iDCopy;
      v31 = selfCopy;
      v33 = v32 = dCopy;
      *buf = 138544642;
      *&buf[4] = v32;
      *&buf[12] = 2112;
      *&buf[14] = applicationCopy;
      *&buf[22] = 2114;
      *&buf[24] = v33;
      *&buf[32] = 2048;
      numberCopy = number;
      v83 = 2114;
      sequenceNumberCopy2 = uIDCopy;
      v85 = 2048;
      sequenceNumberCopy = sequenceNumber;
      _os_log_impl(&dword_1A89DD000, v30, OS_LOG_TYPE_DEFAULT, "[FBSystemService][%{public}@] Attempting activation of %@ with {UUID: %{public}@, Sequence: %lu} vs {UUID: %{public}@, Sequence: %lu}", buf, 0x3Eu);

      dCopy = v32;
      selfCopy = v31;
      iDCopy = v57;
    }

    tokenCopy = v29;
    v27 = v28;
    if ([(FBSystemService *)selfCopy _shouldPendRequestForClientSequenceNumber:number clientCacheGUID:iDCopy ourSequenceNumber:sequenceNumber ourCacheGUID:uIDCopy])
    {
      v34 = uIDCopy;
      v35 = FBLogCommon();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544386;
        *&buf[4] = dCopy;
        *&buf[12] = 2114;
        *&buf[14] = iDCopy;
        *&buf[22] = 2048;
        *&buf[24] = number;
        *&buf[32] = 2114;
        numberCopy = v34;
        v83 = 2048;
        sequenceNumberCopy2 = sequenceNumber;
        _os_log_impl(&dword_1A89DD000, v35, OS_LOG_TYPE_DEFAULT, "[FBSystemService][%{public}@] Pending activate request due to LS value mismatch.\n\tClient LS values: {%{public}@, %lu}\n\t Our LS values: {%{public}@, %lu}", buf, 0x34u);
      }

LABEL_16:

      delegate = FBSOpenApplicationErrorCreate();
      resultCopy[2](resultCopy, delegate);
      uIDCopy = v34;
      goto LABEL_17;
    }
  }

  if (!applicationCopy || v27)
  {
    if (([v27 _isInstalling] & 1) != 0 || (objc_msgSend(v27, "_isUninstalling") & 1) != 0 || objc_msgSend(v27, "_isPendingUninstall") && (objc_msgSend(v27, "_isTentativeUninstall") & 1) == 0)
    {
      v34 = uIDCopy;
      v35 = FBLogCommon();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        _isInstalling = [v27 _isInstalling];
        v38 = v27;
        v39 = tokenCopy;
        v40 = dCopy;
        v41 = _isInstalling;
        _isUninstalling = [v38 _isUninstalling];
        _isPendingUninstall = [v38 _isPendingUninstall];
        *buf = 138544386;
        *&buf[4] = v40;
        *&buf[12] = 2112;
        *&buf[14] = applicationCopy;
        *&buf[22] = 1024;
        *&buf[24] = v41;
        dCopy = v40;
        tokenCopy = v39;
        v27 = v38;
        *&buf[28] = 1024;
        *&buf[30] = _isUninstalling;
        LOWORD(numberCopy) = 1024;
        *(&numberCopy + 2) = _isPendingUninstall;
        _os_log_impl(&dword_1A89DD000, v35, OS_LOG_TYPE_DEFAULT, "[FBSystemService][%{public}@] Application %@ is installing (%d), uninstalling (%d), or pending uninstall (%d) and cannot be launched.", buf, 0x28u);
      }

      goto LABEL_16;
    }

    delegate = [(FBSystemService *)selfCopy delegate];
    if (!delegate)
    {
      v51 = FBSOpenApplicationErrorCreate();
      resultCopy[2](resultCopy, v51);
LABEL_37:

      goto LABEL_17;
    }

    v45 = selfCopy;
    v46 = v27;
    v47 = iDCopy;
    v48 = tokenCopy;
    if (objc_opt_respondsToSelector())
    {
      v49 = [[FBSystemServiceOpenApplicationRequest alloc] initWithBundleId:applicationCopy];
      [(FBSystemServiceOpenApplicationRequest *)v49 setTrusted:trusted];
      [(FBSystemServiceOpenApplicationRequest *)v49 setOptions:v59];
      v50 = +[FBProcessManager sharedInstance];
      v56 = dCopy;
      if (v48)
      {
        [v48 realToken];
      }

      else
      {
        memset(buf, 0, 32);
      }

      v54 = [v50 registerProcessForAuditToken:buf];
      [(FBSystemServiceOpenApplicationRequest *)v49 setClientProcess:v54];

      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __184__FBSystemService__reallyActivateApplication_requestID_options_serviceInstance_source_originalSourceToken_isTrusted_sequenceNumber_cacheGUID_ourSequenceNumber_ourCacheGUID_withResult___block_invoke;
      v76[3] = &unk_1E783BB18;
      v77 = delegate;
      v78 = v45;
      v79 = v49;
      v80 = resultCopy;
      v51 = v49;
      FBOpenAppSystemServiceExecuteCallOut(instanceCopy, v76);

      dCopy = v56;
      tokenCopy = v48;
      iDCopy = v47;
      goto LABEL_36;
    }

    v52 = [v59 url];
    v55 = uIDCopy;
    if (trusted)
    {
      v51 = v52;
      if (objc_opt_respondsToSelector())
      {
        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = __184__FBSystemService__reallyActivateApplication_requestID_options_serviceInstance_source_originalSourceToken_isTrusted_sequenceNumber_cacheGUID_ourSequenceNumber_ourCacheGUID_withResult___block_invoke_2;
        v69[3] = &unk_1E783BB68;
        v70 = delegate;
        v71 = v45;
        v72 = applicationCopy;
        v73 = v59;
        v74 = tokenCopy;
        v75 = resultCopy;
        FBOpenAppSystemServiceExecuteCallOut(instanceCopy, v69);

        v53 = v70;
LABEL_35:
        iDCopy = v47;

        uIDCopy = v55;
LABEL_36:
        v27 = v46;
        goto LABEL_37;
      }
    }

    else
    {
      v51 = v52;
      if (v52 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = __184__FBSystemService__reallyActivateApplication_requestID_options_serviceInstance_source_originalSourceToken_isTrusted_sequenceNumber_cacheGUID_ourSequenceNumber_ourCacheGUID_withResult___block_invoke_4;
        v61[3] = &unk_1E783BB90;
        v62 = delegate;
        v63 = v45;
        v64 = v51;
        v65 = applicationCopy;
        v66 = v59;
        v67 = tokenCopy;
        v68 = resultCopy;
        FBOpenAppSystemServiceExecuteCallOut(instanceCopy, v61);

        v53 = v62;
        goto LABEL_35;
      }
    }

    v53 = FBSOpenApplicationErrorCreate();
    resultCopy[2](resultCopy, v53);
    goto LABEL_35;
  }

  delegate = FBSOpenApplicationErrorCreate();
  resultCopy[2](resultCopy, delegate);
LABEL_17:

  v44 = *MEMORY[0x1E69E9840];
}

void __184__FBSystemService__reallyActivateApplication_requestID_options_serviceInstance_source_originalSourceToken_isTrusted_sequenceNumber_cacheGUID_ourSequenceNumber_ourCacheGUID_withResult___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [*(a1 + 56) dictionary];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __184__FBSystemService__reallyActivateApplication_requestID_options_serviceInstance_source_originalSourceToken_isTrusted_sequenceNumber_cacheGUID_ourSequenceNumber_ourCacheGUID_withResult___block_invoke_3;
  v7[3] = &unk_1E783BB40;
  v6 = *(a1 + 64);
  v8 = *(a1 + 72);
  [v2 systemService:v3 handleOpenApplicationRequest:v4 options:v5 origin:v6 withResult:v7];
}

void __184__FBSystemService__reallyActivateApplication_requestID_options_serviceInstance_source_originalSourceToken_isTrusted_sequenceNumber_cacheGUID_ourSequenceNumber_ourCacheGUID_withResult___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = FBSOpenApplicationErrorCodeToString();
  v2 = FBSOpenApplicationErrorCreate();
  (*(v1 + 16))(v1, v2);
}

void __184__FBSystemService__reallyActivateApplication_requestID_options_serviceInstance_source_originalSourceToken_isTrusted_sequenceNumber_cacheGUID_ourSequenceNumber_ourCacheGUID_withResult___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = [*(a1 + 64) dictionary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __184__FBSystemService__reallyActivateApplication_requestID_options_serviceInstance_source_originalSourceToken_isTrusted_sequenceNumber_cacheGUID_ourSequenceNumber_ourCacheGUID_withResult___block_invoke_5;
  v8[3] = &unk_1E783BB40;
  v7 = *(a1 + 72);
  v9 = *(a1 + 80);
  [v2 systemService:v3 handleOpenURLRequest:v4 application:v5 options:v6 origin:v7 withResult:v8];
}

void __184__FBSystemService__reallyActivateApplication_requestID_options_serviceInstance_source_originalSourceToken_isTrusted_sequenceNumber_cacheGUID_ourSequenceNumber_ourCacheGUID_withResult___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = FBSOpenApplicationErrorCodeToString();
  v2 = FBSOpenApplicationErrorCreate();
  (*(v1 + 16))(v1, v2);
}

- (void)isPasscodeLockedOrBlockedWithResult:(id)result
{
  resultCopy = result;
  [(BSServiceDispatchQueue *)self->_queue assertBarrierOnQueue];
  delegate = [(FBSystemService *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate systemService:self isPasscodeLockedOrBlockedWithResult:resultCopy];
  }

  else if (resultCopy)
  {
    resultCopy[2](resultCopy, 0);
  }
}

- (void)handleActions:(id)actions source:(id)source withResult:(id)result
{
  v36 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  sourceCopy = source;
  resultCopy = result;
  [(BSServiceDispatchQueue *)self->_queue assertBarrierOnQueue];
  v28 = MEMORY[0x1E69E9820];
  v29 = 3221225472;
  v30 = __51__FBSystemService_handleActions_source_withResult___block_invoke;
  v31 = &unk_1E783BBB8;
  v11 = actionsCopy;
  v32 = v11;
  v12 = resultCopy;
  v33 = v12;
  v13 = MEMORY[0x1AC572E40](&v28);
  v14 = [(FBSystemService *)self delegate:v28];
  if (([sourceCopy hasEntitlement:@"com.apple.frontboard.launchapplications"] & 1) == 0 && (objc_msgSend(sourceCopy, "hasEntitlement:", @"com.apple.backboardd.launchapplications") & 1) == 0 && (objc_msgSend(sourceCopy, "hasEntitlement:", @"com.apple.springboard.launchapplications") & 1) == 0)
  {
    v17 = FBLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = @"com.apple.frontboard.launchapplications";
      _os_log_impl(&dword_1A89DD000, v17, OS_LOG_TYPE_DEFAULT, "[FBSystemService] Entitlement %@ is required to send actions to the system app.", buf, 0xCu);
    }

    v26 = 3;
    goto LABEL_14;
  }

  v15 = objc_opt_respondsToSelector();
  v16 = FBLogCommon();
  v17 = v16;
  if ((v15 & 1) == 0)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(FBSystemService *)v17 handleActions:v19 source:v20 withResult:v21, v22, v23, v24, v25];
    }

    v26 = 8;
LABEL_14:

    v13[2](v13, v26);
    goto LABEL_15;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    fbs_singleLineDescriptionOfBSActions = [v11 fbs_singleLineDescriptionOfBSActions];
    *buf = 138543362;
    v35 = fbs_singleLineDescriptionOfBSActions;
    _os_log_impl(&dword_1A89DD000, v17, OS_LOG_TYPE_DEFAULT, "[FBSystemService] Received action(s): %{public}@", buf, 0xCu);
  }

  [v14 systemService:self handleActions:v11 origin:sourceCopy withResult:v13];
LABEL_15:

  v27 = *MEMORY[0x1E69E9840];
}

uint64_t __51__FBSystemService_handleActions_source_withResult___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = FBLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__FBSystemService_handleActions_source_withResult___block_invoke_cold_1(a1, a2, v4);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  connectionCopy = connection;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __61__FBSystemService_listener_didReceiveConnection_withContext___block_invoke;
  v11 = &unk_1E783BC08;
  selfCopy = self;
  v13 = connectionCopy;
  v7 = connectionCopy;
  [v7 configureConnection:&v8];
  [v7 activate];
}

void __61__FBSystemService_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[FBSystemAppProxyServiceServer targetQueue];
  [v3 setQueue:v4];

  v5 = [MEMORY[0x1E699FB80] interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__FBSystemService_listener_didReceiveConnection_withContext___block_invoke_2;
  v6[3] = &unk_1E783BBE0;
  v7 = *(a1 + 40);
  [v3 setInvalidationHandler:v6];
}

- (void)canOpenApplication:(id)application completion:(id)completion
{
  applicationCopy = application;
  completionCopy = completion;
  if (completionCopy)
  {
    currentContext = [MEMORY[0x1E698F490] currentContext];
    remoteProcess = [currentContext remoteProcess];

    if ([(FBSystemService *)self _isTrustedRequest:@"(CanOpen)" forCaller:remoteProcess fromClient:remoteProcess forBundleInfo:0 withOptions:0 fatalError:0]&& applicationCopy)
    {
      delegate = [(FBSystemService *)self delegate];
      if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        currentContext2 = [MEMORY[0x1E698F490] currentContext];
        instance = [currentContext2 instance];

        queue = [(FBSystemService *)self queue];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __49__FBSystemService_canOpenApplication_completion___block_invoke;
        v15[3] = &unk_1E783BC30;
        v16 = instance;
        v17 = delegate;
        selfCopy = self;
        v19 = applicationCopy;
        v20 = completionCopy;
        v14 = instance;
        [queue performAsync:v15];
      }

      else
      {
        v14 = FBSOpenApplicationErrorCreate();
        (*(completionCopy + 2))(completionCopy, v14);
      }
    }

    else
    {
      delegate = FBSOpenApplicationErrorCreate();
      (*(completionCopy + 2))(completionCopy, delegate);
    }
  }
}

void __49__FBSystemService_canOpenApplication_completion___block_invoke(uint64_t a1)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__FBSystemService_canOpenApplication_completion___block_invoke_2;
  v9[3] = &unk_1E783BB18;
  v2 = (a1 + 48);
  v3 = *(a1 + 32);
  *&v4 = *(a1 + 40);
  *(&v4 + 1) = *v2;
  v8 = v4;
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  FBOpenAppSystemServiceExecuteCallOut(v3, v9);
}

void __49__FBSystemService_canOpenApplication_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__FBSystemService_canOpenApplication_completion___block_invoke_3;
  v4[3] = &unk_1E783BB40;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 systemService:v2 canActivateApplication:v3 withResult:v4];
}

void __49__FBSystemService_canOpenApplication_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v5 = FBSOpenApplicationErrorCreate();
    (*(v2 + 16))(v2, v5);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4);
  }
}

- (void)openApplication:(id)application withOptions:(id)options originator:(id)originator requestID:(id)d completion:(id)completion
{
  v160 = *MEMORY[0x1E69E9840];
  applicationCopy = application;
  optionsCopy = options;
  originatorCopy = originator;
  dCopy = d;
  completionCopy = completion;
  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];

  if (!originatorCopy || ([remoteProcess hasEntitlement:*MEMORY[0x1E699F8B8]] & 1) == 0)
  {
    v18 = remoteProcess;

    originatorCopy = v18;
  }

  if (!applicationCopy)
  {
    applicationCopy = FBSystemAppBundleID();
  }

  v19 = +[FBProcessManager sharedInstance];
  auditToken = [originatorCopy auditToken];
  v21 = auditToken;
  if (auditToken)
  {
    [auditToken realToken];
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  v119 = [v19 registerProcessForAuditToken:buf];

  v22 = FBSProcessPrettyDescription();
  v23 = objc_alloc_init(MEMORY[0x1E698E618]);
  v24 = [objc_alloc(MEMORY[0x1E698E610]) initWithFlag:0];
  v144[0] = MEMORY[0x1E69E9820];
  v144[1] = 3221225472;
  v144[2] = __79__FBSystemService_openApplication_withOptions_originator_requestID_completion___block_invoke;
  v144[3] = &unk_1E783BC80;
  v117 = v23;
  v145 = v117;
  v25 = dCopy;
  v146 = v25;
  v120 = applicationCopy;
  v147 = v120;
  v26 = optionsCopy;
  v148 = v26;
  v27 = v22;
  v149 = v27;
  v116 = completionCopy;
  v151 = v116;
  v118 = v24;
  v150 = v118;
  v28 = MEMORY[0x1AC572E40](v144);
  if (originatorCopy && ([originatorCopy isValid] & 1) != 0)
  {
    v140 = 0;
    v141 = &v140;
    v142 = 0x2020000000;
    v143 = 0;
    dictionary = [v26 dictionary];
    v139[0] = MEMORY[0x1E69E9820];
    v139[1] = 3221225472;
    v139[2] = __79__FBSystemService_openApplication_withOptions_originator_requestID_completion___block_invoke_211;
    v139[3] = &unk_1E783BCA8;
    v139[4] = &v140;
    [dictionary enumerateKeysAndObjectsUsingBlock:v139];

    if (*(v141 + 24) == 1 && ([remoteProcess hasEntitlement:*MEMORY[0x1E699F8B8]] & 1) == 0)
    {
      v40 = FBSOpenApplicationErrorCreate();
      (v28)[2](v28, 4, v40);
LABEL_77:

      _Block_object_dispose(&v140, 8);
      goto LABEL_78;
    }

    v113 = [v26 url];
    auditToken2 = [remoteProcess auditToken];
    auditToken3 = [originatorCopy auditToken];
    v32 = [auditToken2 isEqual:auditToken3];

    if (v32)
    {
      if (v113)
      {
        v33 = FBLogCommon();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          scheme = [v113 scheme];
          resourceSpecifier = [v113 resourceSpecifier];
          *buf = 138544387;
          *&buf[4] = v25;
          *&buf[12] = 2114;
          *&buf[14] = v120;
          *&buf[22] = 2114;
          *&buf[24] = scheme;
          v154 = 2117;
          v155 = resourceSpecifier;
          v156 = 2114;
          v157 = v27;
          _os_log_impl(&dword_1A89DD000, v33, OS_LOG_TYPE_DEFAULT, "[FBSystemService][%{public}@] Received request to open %{public}@ with url %{public}@:%{sensitive}@ from %{public}@.", buf, 0x34u);
        }
      }

      else
      {
        v33 = FBLogCommon();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          *&buf[4] = v25;
          *&buf[12] = 2114;
          *&buf[14] = v120;
          *&buf[22] = 2114;
          *&buf[24] = v27;
          _os_log_impl(&dword_1A89DD000, v33, OS_LOG_TYPE_DEFAULT, "[FBSystemService][%{public}@] Received request to open %{public}@ from %{public}@.", buf, 0x20u);
        }
      }
    }

    else if (v113)
    {
      v33 = FBLogCommon();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        scheme2 = [v113 scheme];
        resourceSpecifier2 = [v113 resourceSpecifier];
        v39 = FBSProcessPrettyDescription();
        *buf = 138544643;
        *&buf[4] = v25;
        *&buf[12] = 2114;
        *&buf[14] = v120;
        *&buf[22] = 2114;
        *&buf[24] = scheme2;
        v154 = 2117;
        v155 = resourceSpecifier2;
        v156 = 2114;
        v157 = v27;
        v158 = 2114;
        v159 = v39;
        _os_log_impl(&dword_1A89DD000, v33, OS_LOG_TYPE_DEFAULT, "[FBSystemService][%{public}@] Received request to open %{public}@ with url %{public}@:%{sensitive}@ from %{public}@ on behalf of %{public}@.", buf, 0x3Eu);
      }
    }

    else
    {
      v33 = FBLogCommon();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v41 = FBSProcessPrettyDescription();
        *buf = 138544130;
        *&buf[4] = v25;
        *&buf[12] = 2114;
        *&buf[14] = v120;
        *&buf[22] = 2114;
        *&buf[24] = v27;
        v154 = 2114;
        v155 = v41;
        _os_log_impl(&dword_1A89DD000, v33, OS_LOG_TYPE_DEFAULT, "[FBSystemService][%{public}@] Received request to open %{public}@ from %{public}@ on behalf of %{public}@.", buf, 0x2Au);
      }
    }

    actions = [v26 actions];
    if ([actions count])
    {
      v42 = FBLogCommon();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        fbs_singleLineDescriptionOfBSActions = [actions fbs_singleLineDescriptionOfBSActions];
        *buf = 138543618;
        *&buf[4] = v25;
        *&buf[12] = 2114;
        *&buf[14] = fbs_singleLineDescriptionOfBSActions;
        _os_log_impl(&dword_1A89DD000, v42, OS_LOG_TYPE_DEFAULT, "[FBSystemService][%{public}@] Request contains action(s): %{public}@", buf, 0x16u);
      }
    }

    dictionary2 = [v26 dictionary];
    v45 = *MEMORY[0x1E699F8C8];
    v46 = [dictionary2 objectForKey:*MEMORY[0x1E699F8C8]];
    v47 = v46 == 0;

    if (v47)
    {
LABEL_57:
      if (!v113)
      {
        goto LABEL_65;
      }

      auditToken4 = [originatorCopy auditToken];
      v82 = auditToken4;
      if (auditToken4)
      {
        [auditToken4 realToken];
      }

      else
      {
        memset(buf, 0, sizeof(buf));
      }

      v83 = sandbox_check_by_audit_token() == 0;

      if (v83)
      {
LABEL_65:
        dictionary3 = [v26 dictionary];
        v111 = [dictionary3 objectForKey:*MEMORY[0x1E699F928]];
        v88 = [dictionary3 objectForKey:*MEMORY[0x1E699F920]];
        v89 = v88;
        v109 = v88;
        if ((v111 != 0) == (v88 != 0))
        {
          if (v88)
          {
            v91 = FBLogCommon();
            if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138544130;
              *&buf[4] = v25;
              *&buf[12] = 2114;
              *&buf[14] = v120;
              *&buf[22] = 2114;
              *&buf[24] = v89;
              v154 = 2114;
              v155 = v111;
              _os_log_impl(&dword_1A89DD000, v91, OS_LOG_TYPE_DEFAULT, "[FBSystemService][%{public}@] Activation request for %{public}@ contained LSCacheGUID %{public}@ and LSSequenceNumber %{public}@.", buf, 0x2Au);
            }
          }

          currentContext2 = [MEMORY[0x1E698F490] currentContext];
          instance = [currentContext2 instance];

          v93 = objc_alloc(MEMORY[0x1E698E5F0]);
          v94 = MEMORY[0x1E698E5F8];
          v137[0] = MEMORY[0x1E69E9820];
          v137[1] = 3221225472;
          v137[2] = __79__FBSystemService_openApplication_withOptions_originator_requestID_completion___block_invoke_227;
          v137[3] = &unk_1E783BCD0;
          v95 = v28;
          v138 = v95;
          v96 = [v94 responderWithHandler:v137];
          v97 = [v93 initWithInfo:0 responder:v96];

          v134[0] = MEMORY[0x1E69E9820];
          v134[1] = 3221225472;
          v134[2] = __79__FBSystemService_openApplication_withOptions_originator_requestID_completion___block_invoke_2;
          v134[3] = &unk_1E783BCF8;
          v136 = v95;
          v105 = v97;
          v135 = v105;
          v98 = MEMORY[0x1AC572E40](v134);
          _applicationInfoProvider = [(FBSystemService *)self _applicationInfoProvider];
          v121[0] = MEMORY[0x1E69E9820];
          v121[1] = 3221225472;
          v121[2] = __79__FBSystemService_openApplication_withOptions_originator_requestID_completion___block_invoke_3;
          v121[3] = &unk_1E783BD70;
          v122 = _applicationInfoProvider;
          v123 = v120;
          v124 = v25;
          v125 = v118;
          selfCopy = self;
          v100 = v122;
          v127 = remoteProcess;
          v128 = originatorCopy;
          v129 = dictionary3;
          v130 = v109;
          v131 = v26;
          v90 = instance;
          v132 = v90;
          v115 = v98;
          v133 = v115;
          v101 = MEMORY[0x1AC572E40](v121);
          if (objc_opt_respondsToSelector())
          {
            [v100 synchronize:v101];
          }

          else
          {
            v101[2](v101);
          }
        }

        else
        {
          v90 = FBSOpenApplicationErrorCreate();
          (v28)[2](v28, 4, v90);
        }

        v87 = v111;
      }

      else
      {
        v84 = FBLogCommon();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          v85 = FBSProcessPrettyDescription();
          *buf = 138543618;
          *&buf[4] = v25;
          *&buf[12] = 2114;
          *&buf[14] = v85;
          _os_log_impl(&dword_1A89DD000, v84, OS_LOG_TYPE_DEFAULT, "[FBSystemService][%{public}@] Caller %{public}@ has a sandbox that does not allow opening URL's.", buf, 0x16u);
        }

        dictionary3 = FBSProcessPrettyDescription();
        v87 = FBSOpenApplicationErrorCreate();
        (v28)[2](v28, 4, v87);
      }

      v40 = v113;
      goto LABEL_77;
    }

    dictionary4 = [v26 dictionary];
    v108 = [dictionary4 objectForKey:v45];

    applicationInfo = [v119 applicationInfo];
    advertisingAttributionReportEndpoint = [applicationInfo advertisingAttributionReportEndpoint];

    if (!advertisingAttributionReportEndpoint)
    {
      v59 = FBLogCommon();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        [(FBSystemService *)v25 openApplication:v59 withOptions:v60 originator:v61 requestID:v62 completion:v63, v64, v65];
      }

      [v26 _updateOption:0 forKey:v45];
      goto LABEL_56;
    }

    eventMessage = [v108 eventMessage];
    v51 = eventMessage;
    if (eventMessage)
    {
      originIdentifier = [eventMessage originIdentifier];
      context = [v51 context];
      if (originIdentifier != 0xC181BADB23D8497BLL || context)
      {
        v66 = FBLogCommon();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          originIdentifier2 = [v51 originIdentifier];
          context2 = [v51 context];
          *buf = 138543874;
          *&buf[4] = v25;
          *&buf[12] = 2048;
          *&buf[14] = originIdentifier2;
          *&buf[22] = 2048;
          *&buf[24] = context2;
          _os_log_error_impl(&dword_1A89DD000, v66, OS_LOG_TYPE_ERROR, "[FBSystemService][%{public}@] Ignoring click attribution with invalid origin (%llx) or context (%llx).", buf, 0x20u);
        }
      }

      else
      {
        timestamp = [v51 timestamp];
        if (timestamp > openApplication_withOptions_originator_requestID_completion__sLastSeenBackBoardTimestamp)
        {
          openApplication_withOptions_originator_requestID_completion__sLastSeenBackBoardTimestamp = timestamp;
          mEMORY[0x1E698E3B0] = [MEMORY[0x1E698E3B0] sharedInstance];
          v56 = [mEMORY[0x1E698E3B0] authenticateMessage:v51];

          if ((v56 & 0xFFFFFFFFFFFFFFFELL) == 2)
          {
            v57 = FBLogCommon();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = v25;
              _os_log_impl(&dword_1A89DD000, v57, OS_LOG_TYPE_DEFAULT, "[FBSystemService][%{public}@] Request contains valid click attribution.", buf, 0xCu);
            }

            v58 = [v108 clickAttributionWithReportEndpoint:advertisingAttributionReportEndpoint];
            [v26 _updateOption:v58 forKey:v45];
          }

          else
          {
            v79 = FBLogCommon();
            if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
            {
              v80 = NSStringFromBKSHIDEventAuthenticationStatus();
              [FBSystemService openApplication:v25 withOptions:v80 originator:v152 requestID:v79 completion:?];
            }

            [v26 _updateOption:0 forKey:v45];
          }

          goto LABEL_55;
        }

        v66 = FBLogCommon();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          [(FBSystemService *)v25 openApplication:v66 withOptions:v73 originator:v74 requestID:v75 completion:v76, v77, v78];
        }
      }
    }

    else
    {
      v66 = FBLogCommon();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        [(FBSystemService *)v25 openApplication:v66 withOptions:v67 originator:v68 requestID:v69 completion:v70, v71, v72];
      }
    }

    [v26 _updateOption:0 forKey:v45];
LABEL_55:

LABEL_56:
    goto LABEL_57;
  }

  v104 = FBSProcessPrettyDescription();
  v36 = FBSOpenApplicationErrorCreate();
  (v28)[2](v28, 4, v36);

LABEL_78:
  v102 = *MEMORY[0x1E69E9840];
}

void __79__FBSystemService_openApplication_withOptions_originator_requestID_completion___block_invoke(uint64_t a1, NSObject *a2, void *a3)
{
  v67 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([*(a1 + 32) signal])
  {
    v6 = [v5 domain];
    v7 = [v6 isEqualToString:*MEMORY[0x1E699F8C0]];

    if (a2)
    {
      v8 = +[FBSystemService sharedInstance];
      v9 = [v8 delegate];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);

      v12 = MEMORY[0x1E696A588];
      if (a2 == 1)
      {
        if (v7)
        {
          v18 = [v5 userInfo];
          v19 = [v18 objectForKey:*v12];

          v20 = MEMORY[0x1E696AEC0];
          [v5 code];
          v21 = FBSOpenApplicationErrorCodeToString();
          v22 = v21;
          if (v19)
          {
            v23 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
            v24 = [v19 stringByTrimmingCharactersInSet:v23];
            v17 = [v20 stringWithFormat:@"The request was denied by service delegate (%@) for reason: %@ (\"%@\"", v11, v22, v24];

            v12 = MEMORY[0x1E696A588];
          }

          else
          {
            v17 = [v20 stringWithFormat:@"The request was denied by service delegate (%@) for reason: %@.", v11, v21];
          }
        }

        else
        {
          v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The request was denied by service delegate (%@).", v11];
        }
      }

      else if (a2 == 2)
      {
        v13 = MEMORY[0x1E696AEC0];
        v14 = [MEMORY[0x1E696AE30] processInfo];
        v15 = [v14 processName];
        v16 = [v13 stringWithFormat:@"This is probably a bug in %@.", v15];

        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The request was ignored by service delegate (%@). %@", v11, v16];
      }

      else
      {
        v17 = 0;
      }

      v25 = [MEMORY[0x1E695DF90] dictionary];
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The request to open %@ failed.", *(a1 + 48)];
      [v25 bs_setSafeObject:v26 forKey:*MEMORY[0x1E696A578]];

      [v25 bs_setSafeObject:v17 forKey:*v12];
      [v25 bs_setSafeObject:v5 forKey:*MEMORY[0x1E696AA08]];
      v27 = FBSOpenApplicationServiceErrorCodeToString();
      [v25 bs_setSafeObject:v27 forKey:*MEMORY[0x1E698E5B8]];

      [v25 bs_setSafeObject:*(a1 + 40) forKey:@"FBSOpenApplicationRequestID"];
      a2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E699F9A0] code:a2 userInfo:v25];
    }

    v28 = v7 ^ 1;
    v29 = (v5 != 0) & (v7 ^ 1);
    if (v28)
    {
      if (!v29)
      {
LABEL_22:
        v33 = FBLogCommon();
        v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
        if (a2)
        {
          if (v34)
          {
            v35 = *(a1 + 40);
            v36 = *(a1 + 48);
            v37 = *(a1 + 64);
            v38 = [a2 descriptionWithMultilinePrefix:0];
            *buf = 138544130;
            v60 = v35;
            v61 = 2114;
            v62 = v36;
            v63 = 2114;
            v64 = v37;
            v65 = 2114;
            v66 = v38;
            _os_log_impl(&dword_1A89DD000, v33, OS_LOG_TYPE_DEFAULT, "[FBSystemService][%{public}@] Open %{public}@ request from %{public}@ failed with error: %{public}@", buf, 0x2Au);
          }
        }

        else if (v34)
        {
          v39 = *(a1 + 40);
          *buf = 138543362;
          v60 = v39;
          _os_log_impl(&dword_1A89DD000, v33, OS_LOG_TYPE_DEFAULT, "[FBSystemService][%{public}@] Request complete; no error reported.", buf, 0xCu);
        }

        if (*(a1 + 80))
        {
          v40 = +[FBProcess _currentProcess];
          if ([v40 isApplicationProcess])
          {
            v41 = [v40 bundleIdentifier];
            v42 = [v41 isEqualToString:*(a1 + 48)];

            if (v42)
            {
              goto LABEL_32;
            }
          }

          v43 = +[FBProcessManager sharedInstance];
          v44 = [v43 processesForBundleIdentifier:*(a1 + 48)];
          v45 = [v44 firstObject];

          if (v40)
          {
            if (!v45)
            {
LABEL_32:
              v45 = v40;
            }
          }

          if (a2 && ([*(a1 + 72) getFlag] & 1) == 0)
          {
            v46 = FBLogCommon();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              v47 = *(a1 + 40);
              *buf = 138543362;
              v60 = v47;
              _os_log_impl(&dword_1A89DD000, v46, OS_LOG_TYPE_DEFAULT, "[FBSystemService][%{public}@] Returning generic error for un-trusted client (147937300).", buf, 0xCu);
            }

            v48 = MEMORY[0x1E696ABC0];
            v49 = *MEMORY[0x1E699F9A0];
            v54[0] = MEMORY[0x1E69E9820];
            v54[1] = 3221225472;
            v54[2] = __79__FBSystemService_openApplication_withOptions_originator_requestID_completion___block_invoke_201;
            v54[3] = &unk_1E783BC58;
            v55 = *(a1 + 48);
            v50 = [v48 bs_errorWithDomain:v49 code:4 configuration:v54];

            a2 = v50;
          }

          v51 = *(a1 + 80);
          v52 = [v45 handle];
          (*(v51 + 16))(v51, v52, a2);
        }

        goto LABEL_39;
      }
    }

    else if (!((([v5 code] & 0xFFFFFFFFFFFFFFFELL) == 4) | v29 & 1))
    {
      goto LABEL_22;
    }

    v30 = [*(a1 + 56) dictionary];
    v31 = [v30 bs_BOOLForKey:*MEMORY[0x1E699F8E8]];

    if ((v31 & 1) == 0)
    {
      v32 = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __79__FBSystemService_openApplication_withOptions_originator_requestID_completion___block_invoke_198;
      block[3] = &unk_1E783B240;
      v57 = *(a1 + 56);
      v58 = *(a1 + 48);
      dispatch_async(v32, block);
    }

    goto LABEL_22;
  }

  a2 = FBLogCommon();
  if (os_log_type_enabled(a2, OS_LOG_TYPE_ERROR))
  {
    __79__FBSystemService_openApplication_withOptions_originator_requestID_completion___block_invoke_cold_1(a1, a2);
  }

LABEL_39:

  v53 = *MEMORY[0x1E69E9840];
}

void __79__FBSystemService_openApplication_withOptions_originator_requestID_completion___block_invoke_198(uint64_t a1)
{
  v3 = [MEMORY[0x1E6963608] defaultWorkspace];
  v2 = [*(a1 + 32) url];
  [v3 _LSFailedToOpenURL:v2 withBundle:*(a1 + 40)];
}

void __79__FBSystemService_openApplication_withOptions_originator_requestID_completion___block_invoke_201(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = *(a1 + 32);
  v7 = a2;
  v4 = [v2 stringWithFormat:@"The request to open %@ failed.", v3];
  [v7 setFailureDescription:v4];

  v5 = FBSOpenApplicationServiceErrorCodeToString();
  [v7 setCodeDescription:v5];

  v6 = FBSOpenApplicationErrorCreate();
  [v7 setUnderlyingError:{v6, 0}];

  [v7 setUserInfoValue:&unk_1F1C10960 forKey:@"FBSErrorContext"];
}

void __79__FBSystemService_openApplication_withOptions_originator_requestID_completion___block_invoke_211(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (([v6 isEqualToString:*MEMORY[0x1E699F910]] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E699F998]) & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E699F950]) & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E699F8F8]) & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E699F900]) & 1) != 0 || objc_msgSend(v6, "hasSuffix:", @"4LS"))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __79__FBSystemService_openApplication_withOptions_originator_requestID_completion___block_invoke_227(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = [v3 code];

  if (v4 == 1)
  {
    v5 = *(*(a1 + 32) + 16);

    v5();
  }
}

uint64_t __79__FBSystemService_openApplication_withOptions_originator_requestID_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

void __79__FBSystemService_openApplication_withOptions_originator_requestID_completion___block_invoke_3(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) applicationInfoForBundleIdentifier:*(a1 + 40)];
  if (v2 || (v5 = *(a1 + 32), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([*(a1 + 32) placeholderWithBundleIdentifier:*(a1 + 40)], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = v2;
    v4 = 0;
  }

  else
  {
    v6 = FBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = *(a1 + 40);
      *buf = 138543874;
      v47 = v7;
      v48 = 2112;
      v49 = v10;
      v50 = 2114;
      v51 = v11;
      _os_log_impl(&dword_1A89DD000, v6, OS_LOG_TYPE_DEFAULT, "[FBSystemService][%{public}@] Application info provider (%@) returned nil for %{public}@", buf, 0x20u);
    }

    v3 = 0;
    v4 = 1;
  }

  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v16 = *(a1 + 80);
  v17 = *(a1 + 88);
  v45 = 0;
  v18 = [v14 _isTrustedRequest:v12 forCaller:v15 fromClient:v16 forBundleInfo:v3 withOptions:v17 fatalError:&v45];
  v19 = v45;
  [v13 setFlag:v18];
  if (v19)
  {
    (*(*(a1 + 120) + 16))();
  }

  else if (v4 && !*(a1 + 96))
  {
    v34 = *(a1 + 32);
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    v38 = *(a1 + 40);
    v37 = FBSOpenApplicationErrorCreate();

    (*(*(a1 + 120) + 16))(*(a1 + 120), 4, v37);
  }

  else
  {
    v39[0] = MEMORY[0x1E69E9820];
    v20 = *(a1 + 64);
    v21 = *(v20 + 8);
    v39[1] = 3221225472;
    v39[2] = __79__FBSystemService_openApplication_withOptions_originator_requestID_completion___block_invoke_229;
    v39[3] = &unk_1E783BD48;
    v22 = *(a1 + 40);
    v23 = *(a1 + 48);
    v24 = *(a1 + 56);
    *&v25 = v23;
    *(&v25 + 1) = v24;
    *&v26 = v20;
    *(&v26 + 1) = v22;
    v40 = v26;
    v41 = v25;
    v27 = *(a1 + 104);
    v28 = *(a1 + 112);
    v29 = *(a1 + 72);
    v30 = *(a1 + 80);
    *&v31 = v29;
    *(&v31 + 1) = v30;
    *&v32 = v27;
    *(&v32 + 1) = v28;
    v42 = v32;
    v43 = v31;
    v44 = *(a1 + 120);
    [v21 performAsync:v39];
  }

  v33 = *MEMORY[0x1E69E9840];
}

void __79__FBSystemService_openApplication_withOptions_originator_requestID_completion___block_invoke_229(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [*(a1 + 56) getFlag];
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = [*(a1 + 88) auditToken];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__FBSystemService_openApplication_withOptions_originator_requestID_completion___block_invoke_2_230;
  v10[3] = &unk_1E783BD20;
  v11 = *(a1 + 96);
  [v2 _activateBundleID:v3 requestID:v4 isTrusted:v5 options:v6 serviceInstance:v7 source:v8 originalSourceToken:v9 withResult:v10];
}

- (void)_setInfoProvider
{
  os_unfair_lock_lock(&self->_defaultInfoProviderLock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([WeakRetained systemServiceApplicationInfoProvider:self], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3 = objc_alloc_init(MEMORY[0x1E699FB30]);
  }

  lock_defaultInfoProvider = self->_lock_defaultInfoProvider;
  self->_lock_defaultInfoProvider = v3;

  os_unfair_lock_unlock(&self->_defaultInfoProviderLock);
}

- (void)_performExitTasksForRelaunch:(BOOL)relaunch
{
  [(FBSystemService *)self prepareDisplaysForExit];
  if ([MEMORY[0x1E699FA78] isServerProcess])
  {
    [MEMORY[0x1E699FA78] synchronize];
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults synchronize];

  CFPreferencesSynchronize(*MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (!relaunch)
  {

    signal(15, 1);
  }
}

- (BOOL)_isTrustedRequest:(id)request forCaller:(id)caller fromClient:(id)client forBundleInfo:(id)info withOptions:(id)options fatalError:(id *)error
{
  v51 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  callerCopy = caller;
  clientCopy = client;
  infoCopy = info;
  optionsCopy = options;
  v19 = [optionsCopy objectForKey:*MEMORY[0x1E699F908]];

  if (!v19)
  {
    if (([clientCopy hasEntitlement:@"com.apple.frontboard.launchapplications"] & 1) == 0 && (objc_msgSend(clientCopy, "hasEntitlement:", @"com.apple.backboardd.launchapplications") & 1) == 0 && (objc_msgSend(clientCopy, "hasEntitlement:", @"com.apple.springboard.launchapplications") & 1) == 0 && (objc_msgSend(clientCopy, "hasEntitlement:", @"com.apple.frontboard.debugapplications") & 1) == 0 && (objc_msgSend(clientCopy, "hasEntitlement:", @"com.apple.backboardd.debugapplications") & 1) == 0 && !objc_msgSend(clientCopy, "hasEntitlement:", @"com.apple.springboard.debugapplications"))
    {
LABEL_20:
      if ([optionsCopy bs_BOOLForKey:*MEMORY[0x1E699F918]])
      {
        if ([clientCopy hasEntitlement:@"com.apple.springboard.opensensitiveurl"])
        {
          v23 = FBLogCommon();
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_16;
          }

          v24 = FBSProcessPrettyDescription();
          *buf = 138543618;
          v46 = requestCopy;
          v47 = 2114;
          v48 = v24;
          v25 = "[FBSystemService][%{public}@] Trusting legacy sensitive URL request from %{public}@.";
          goto LABEL_15;
        }

        if (([callerCopy hasEntitlement:*MEMORY[0x1E699F8B8]] & 1) == 0)
        {
          v20 = FBSOpenApplicationErrorCreate();
          if (v20)
          {
            goto LABEL_6;
          }
        }
      }

      if ([optionsCopy bs_BOOLForKey:*MEMORY[0x1E699F8E8]])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = infoCopy;
        }

        else
        {
          v30 = 0;
        }

        v31 = v30;
        bundleIdentifier = [infoCopy bundleIdentifier];
        v33 = [(FBSystemService *)self _isAllowListedLaunchSuspendedApp:bundleIdentifier];

        if (v31 && [v31 type] <= 1)
        {
          hasViewServicesEntitlement = [v31 hasViewServicesEntitlement];
        }

        else
        {
          hasViewServicesEntitlement = 0;
        }

        v22 = v33 | hasViewServicesEntitlement;
        if ((v33 | hasViewServicesEntitlement))
        {
          v35 = FBLogCommon();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = FBSProcessPrettyDescription();
            *buf = 138543618;
            v46 = requestCopy;
            v47 = 2114;
            v48 = v36;
            _os_log_impl(&dword_1A89DD000, v35, OS_LOG_TYPE_DEFAULT, "[FBSystemService][%{public}@] Trusting allow-listed background activation from %{public}@.", buf, 0x16u);
          }

          v21 = 0;
        }

        else
        {
          v21 = FBSOpenApplicationErrorCreate();
        }
      }

      else
      {
        v22 = 0;
        v21 = 0;
      }

      if ((v22 & 1) != 0 || v21)
      {
LABEL_56:
        if (!v21)
        {
          v26 = 1;
          if (!error)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        goto LABEL_57;
      }

      v37 = [optionsCopy bs_safeURLForKey:*MEMORY[0x1E699F960]];
      if (v37)
      {
        if (![callerCopy hasEntitlement:*MEMORY[0x1E699F8B8]] || objc_msgSend(v37, "isFileURL") && (objc_msgSend(optionsCopy, "bs_BOOLForKey:", *MEMORY[0x1E699F910]) & 1) == 0)
        {
          v21 = FBSOpenApplicationErrorCreate();
          if (v21)
          {
LABEL_55:

            goto LABEL_56;
          }

LABEL_54:
          v21 = FBSOpenApplicationErrorCreate();
          goto LABEL_55;
        }
      }

      else
      {
        v38 = [optionsCopy bs_BOOLForKey:*MEMORY[0x1E699F998]];
        v39 = [optionsCopy bs_BOOLForKey:*MEMORY[0x1E699F950]];
        if ((v38 & 1) == 0 && !v39)
        {
          goto LABEL_54;
        }
      }

      v40 = FBLogCommon();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = FBSProcessPrettyDescription();
        *buf = 138543618;
        v46 = requestCopy;
        v47 = 2114;
        v48 = v41;
        _os_log_impl(&dword_1A89DD000, v40, OS_LOG_TYPE_DEFAULT, "[FBSystemService][%{public}@] Allowing un-trusted request from %{public}@.", buf, 0x16u);
      }

      v21 = 0;
      goto LABEL_55;
    }

LABEL_13:
    v23 = FBLogCommon();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
LABEL_16:
      v21 = 0;
      v26 = 1;
      v22 = 1;
      goto LABEL_17;
    }

    v24 = FBSProcessPrettyDescription();
    *buf = 138543618;
    v46 = requestCopy;
    v47 = 2114;
    v48 = v24;
    v25 = "[FBSystemService][%{public}@] Trusting entitled client %{public}@.";
LABEL_15:
    _os_log_impl(&dword_1A89DD000, v23, OS_LOG_TYPE_DEFAULT, v25, buf, 0x16u);

    goto LABEL_16;
  }

  if ([clientCopy hasEntitlement:@"com.apple.frontboard.debugapplications"] & 1) != 0 || (objc_msgSend(clientCopy, "hasEntitlement:", @"com.apple.backboardd.debugapplications") & 1) != 0 || (objc_msgSend(clientCopy, "hasEntitlement:", @"com.apple.springboard.debugapplications"))
  {
    goto LABEL_13;
  }

  v20 = FBSOpenApplicationErrorCreate();
  if (!v20)
  {
    goto LABEL_20;
  }

LABEL_6:
  v21 = v20;
  v22 = 0;
LABEL_57:
  v23 = FBLogCommon();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v44 = FBSProcessPrettyDescription();
    succinctDescription = [v21 succinctDescription];
    *buf = 138543874;
    v46 = requestCopy;
    v47 = 2114;
    v48 = v44;
    v49 = 2114;
    v50 = succinctDescription;
    v43 = succinctDescription;
    _os_log_error_impl(&dword_1A89DD000, v23, OS_LOG_TYPE_ERROR, "[FBSystemService][%{public}@] Request from %{public}@ is denied: %{public}@", buf, 0x20u);
  }

  v26 = 0;
LABEL_17:

  if (error)
  {
LABEL_18:
    v27 = v21;
    *error = v21;
  }

LABEL_19:

  v28 = *MEMORY[0x1E69E9840];
  return v26 & v22;
}

- (BOOL)_isAllowListedLaunchSuspendedApp:(id)app
{
  appCopy = app;
  v4 = appCopy;
  if (_isAllowListedLaunchSuspendedApp__onceToken != -1)
  {
    [FBSystemService _isAllowListedLaunchSuspendedApp:];
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  if (!appCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [_isAllowListedLaunchSuspendedApp____allowListedLaunchSuspendedApps containsObject:v4];
LABEL_6:

  return v5;
}

void __52__FBSystemService__isAllowListedLaunchSuspendedApp___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.Music", @"com.apple.mobilemail", @"com.apple.AdSheetPhone", @"com.apple.AdSheetPad", @"com.apple.DataActivation", 0}];
  v1 = _isAllowListedLaunchSuspendedApp____allowListedLaunchSuspendedApps;
  _isAllowListedLaunchSuspendedApp____allowListedLaunchSuspendedApps = v0;
}

- (unint64_t)_mapShutdownOptionsToOptions:(id)options
{
  rebootType = [options rebootType];
  if (rebootType == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (rebootType == 2);
  }
}

- (void)initWithQueue:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"AKSEvent *soft_AKSEventsRegister(__strong dispatch_queue_t, void (^__strong)(AKSEventType, CFDictionaryRef))"}];
  [v0 handleFailureInFunction:v1 file:@"FBSystemService.m" lineNumber:55 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)currentOpenApplicationInstance
{
  v0 = MEMORY[0x1E696AEC0];
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  v2 = [v0 stringWithFormat:@"missing thread-local storage on %@", currentThread];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[FBSystemService currentOpenApplicationInstance]"];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"FBSystemService.m";
    v9 = 1024;
    v10 = 236;
    v11 = 2114;
    v12 = v2;
    OUTLINED_FUNCTION_4_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v5);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __46__FBSystemService_shutdownWithOptions_origin___block_invoke_5_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void soft_NINotifySystemShutdownWithReason(NISystemShutdownReason, void (^__strong)(NSError * _Nullable __strong))"}];
  [v0 handleFailureInFunction:v1 file:@"FBSystemService.m" lineNumber:80 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_activateBundleID:(char *)a1 requestID:isTrusted:options:serviceInstance:source:originalSourceToken:withResult:.cold.1(char *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"resultBlock != ((void *)0)", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_activateBundleID:(char *)a1 requestID:isTrusted:options:serviceInstance:source:originalSourceToken:withResult:.cold.2(char *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"originalSourceToken != ((void *)0)", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_activateBundleID:(char *)a1 requestID:isTrusted:options:serviceInstance:source:originalSourceToken:withResult:.cold.3(char *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"sourceToken != ((void *)0)", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_activateBundleID:(char *)a1 requestID:isTrusted:options:serviceInstance:source:originalSourceToken:withResult:.cold.4(char *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"requestID != ((void *)0)", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_activateBundleID:(char *)a1 requestID:isTrusted:options:serviceInstance:source:originalSourceToken:withResult:.cold.5(char *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"bundleID != ((void *)0)", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)handleActions:(uint64_t)a3 source:(uint64_t)a4 withResult:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1(&dword_1A89DD000, a1, a3, "%s is not available with this system app", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __51__FBSystemService_handleActions_source_withResult___block_invoke_cold_1(uint64_t a1, int a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = FBSOpenApplicationErrorCodeToString();
  OUTLINED_FUNCTION_3_1();
  v9 = 1024;
  v10 = a2;
  _os_log_error_impl(&dword_1A89DD000, a3, OS_LOG_TYPE_ERROR, "[FBSystemService] Error handling sent actions %{public}@: %{public}@ (%d)", v8, 0x1Cu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)openApplication:(uint64_t)a3 withOptions:(uint64_t)a4 originator:(uint64_t)a5 requestID:(uint64_t)a6 completion:(uint64_t)a7 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1(&dword_1A89DD000, a2, a3, "[FBSystemService][%{public}@] Ignoring click attribution from the past.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)openApplication:(uint8_t *)buf withOptions:(os_log_t)log originator:requestID:completion:.cold.2(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1A89DD000, log, OS_LOG_TYPE_ERROR, "[FBSystemService][%{public}@] Ignoring click attribution that failed authentication: %{public}@.", buf, 0x16u);
}

- (void)openApplication:(uint64_t)a3 withOptions:(uint64_t)a4 originator:(uint64_t)a5 requestID:(uint64_t)a6 completion:(uint64_t)a7 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1(&dword_1A89DD000, a2, a3, "[FBSystemService][%{public}@] Ignoring click attribution that contained no authentication message.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)openApplication:(uint64_t)a3 withOptions:(uint64_t)a4 originator:(uint64_t)a5 requestID:(uint64_t)a6 completion:(uint64_t)a7 .cold.4(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1(&dword_1A89DD000, a2, a3, "[FBSystemService][%{public}@] Ignoring click attribution from client without a valid report endpoint.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __79__FBSystemService_openApplication_withOptions_originator_requestID_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x1E696AE30] processInfo];
  v5 = [v4 processName];
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(&dword_1A89DD000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] %{public}@ called open application completion more than once. Ignoring.", v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end