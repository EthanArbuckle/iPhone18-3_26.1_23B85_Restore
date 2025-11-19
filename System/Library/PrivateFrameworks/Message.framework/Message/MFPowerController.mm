@interface MFPowerController
+ (MFPowerController)sharedInstance;
+ (void)powerlog:(id)a3 eventData:(id)a4;
- (BOOL)isBatterySaverModeEnabled;
- (EFObservable)batteryLevelObservable;
- (EFObservable)lowPowerModeObservable;
- (EFObservable)pluggedInObservable;
- (MFPowerController)init;
- (id)batteryLevelStateChangeNotificationObservable;
- (id)copyDiagnosticInformation;
- (id)powerObservable;
- (void)_applicationForegroundStateChanged:(BOOL)a3;
- (void)_applicationForegroundStateChanged_nts:(BOOL)a3;
- (void)_batteryInformationChanged;
- (void)_gameModeInformationChanged;
- (void)_lowPowerModeChangedNotification:(id)a3;
- (void)_registerForBatteryLevelChanges;
- (void)_registerForGameModeChanges;
- (void)_releasePowerAssertion_nts;
- (void)_releaseTaskAssertion_nts;
- (void)_retainPowerAssertion_nts;
- (void)_retainTaskAssertion_nts;
- (void)_setPluggedIn:(unsigned int)a3;
- (void)_setupAssertionTimer:(double)a3;
- (void)_unregisterForBatteryLevelChanges;
- (void)_unregisterForGameModeChanges;
- (void)dealloc;
- (void)releaseAssertionWithIdentifier:(id)a3;
- (void)retainAssertionWithIdentifier:(id)a3;
- (void)startListeningForBatterySaverNotifications;
@end

@implementation MFPowerController

void __25__MFPowerController_init__block_invoke_16(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _applicationForegroundStateChanged:{objc_msgSend(v4, "BOOLValue")}];
}

- (MFPowerController)init
{
  v25.receiver = self;
  v25.super_class = MFPowerController;
  v2 = [(MFPowerController *)&v25 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.message.MFPowerController.state", 0);
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    v5 = dispatch_queue_create("com.apple.message.MFPowerController.power", 0);
    v6 = *(v2 + 2);
    *(v2 + 2) = v5;

    v7 = objc_alloc_init(MEMORY[0x1E696AB50]);
    v8 = *(v2 + 5);
    *(v2 + 5) = v7;

    *(v2 + 15) = -1082130432;
    *(v2 + 4) = -1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __25__MFPowerController_init__block_invoke;
    aBlock[3] = &unk_1E7AA7330;
    v9 = v2;
    v24 = v9;
    v10 = _Block_copy(aBlock);
    if (notify_register_dispatch("com.apple.springboard.pluggedin", v9 + 7, *(v2 + 1), v10))
    {
      v9[7] = -1;
    }

    else
    {
      v10[2](v10, v9[7]);
    }

    sRootDomainConnect = IORegisterForSystemPower(0, v9 + 9, _powerChanged, v9 + 20);
    if (sRootDomainConnect)
    {
      IONotificationPortSetDispatchQueue(*(v9 + 9), *(v2 + 2));
    }

    else
    {
      v11 = MFPowerLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [MFPowerController init];
      }
    }

    [v9 _registerForBatteryLevelChanges];
    [v9 _registerForGameModeChanges];
    objc_initWeak(&location, v9);
    v12 = +[MFAppStateMonitor sharedInstance];
    v13 = [v12 appIsVisibleObservable];
    v14 = MEMORY[0x1E699B838];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __25__MFPowerController_init__block_invoke_16;
    v20[3] = &unk_1E7AA4AF0;
    objc_copyWeak(&v21, &location);
    v15 = [v14 observerWithResultBlock:v20];
    v16 = [v13 subscribe:v15];
    v17 = *(v9 + 6);
    *(v9 + 6) = v16;

    v18 = [MEMORY[0x1E69AD6C0] sharedController];
    [v18 addDiagnosticsGenerator:v9];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v2;
}

uint64_t __25__MFPowerController_init__block_invoke(uint64_t a1, int token)
{
  state64 = 0xAAAAAAAAAAAAAAAALL;
  notify_get_state(token, &state64);
  return [*(a1 + 32) _setPluggedIn:state64];
}

+ (MFPowerController)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[MFPowerController sharedInstance];
  }

  v2 = sharedInstance_instance_1;
  if (!sharedInstance_instance_1)
  {
    +[MFPowerController sharedInstance];
  }

  return v2;
}

void __35__MFPowerController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(MFPowerController);
  v1 = sharedInstance_instance_1;
  sharedInstance_instance_1 = v0;
}

- (void)dealloc
{
  powerToken = self->_powerToken;
  if (powerToken != -1)
  {
    notify_cancel(powerToken);
  }

  [(EFCancelable *)self->_appStateCancelable cancel];
  if (sRootDomainConnect)
  {
    IONotificationPortSetDispatchQueue(self->_pmPort, 0);
    IODeregisterForSystemPower(&self->_pmNotifier);
    IOServiceClose(sRootDomainConnect);
    IONotificationPortDestroy(self->_pmPort);
    sRootDomainConnect = 0;
  }

  [(MFPowerController *)self _unregisterForBatteryLevelChanges];
  [(MFPowerController *)self _unregisterForGameModeChanges];
  v4.receiver = self;
  v4.super_class = MFPowerController;
  [(MFPowerController *)&v4 dealloc];
}

- (void)_setPluggedIn:(unsigned int)a3
{
  v12 = *MEMORY[0x1E69E9840];
  pluggedIn = self->_pluggedIn;
  if (pluggedIn != a3)
  {
    v5 = self->_pluggedIn;
    atomic_compare_exchange_strong(&self->_pluggedIn, &v5, a3);
    if (v5 == pluggedIn)
    {
      v6 = MFPowerLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        if (self->_pluggedIn)
        {
          v7 = @"plugged in";
        }

        else
        {
          v7 = @"unplugged";
        }

        v10 = 138412290;
        v11 = v7;
        _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_DEFAULT, "Device is now %@", &v10, 0xCu);
      }

      if (self->_pluggedIn)
      {
        if (sPowerAssertion)
        {
          [(MFPowerController *)self _releasePowerAssertion_nts];
        }
      }

      else if ([(NSCountedSet *)self->_identifiers count]&& !self->_isForeground && !sPowerAssertion)
      {
        [(MFPowerController *)self _retainPowerAssertion_nts];
      }

      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 postNotificationName:@"MFPowerStateDidChange" object:self];
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)powerlog:(id)a3 eventData:(id)a4
{
  v5 = a3;
  v6 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v7 = getPLShouldLogRegisteredEventSymbolLoc_ptr;
  v17 = getPLShouldLogRegisteredEventSymbolLoc_ptr;
  if (!getPLShouldLogRegisteredEventSymbolLoc_ptr)
  {
    v8 = PowerLogLibrary();
    v15[3] = dlsym(v8, "PLShouldLogRegisteredEvent");
    getPLShouldLogRegisteredEventSymbolLoc_ptr = v15[3];
    v7 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (v7)
  {
    if (!v7(12, v5))
    {
LABEL_9:

      return;
    }

    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v9 = getPLLogRegisteredEventSymbolLoc_ptr;
    v17 = getPLLogRegisteredEventSymbolLoc_ptr;
    if (!getPLLogRegisteredEventSymbolLoc_ptr)
    {
      v10 = PowerLogLibrary();
      v15[3] = dlsym(v10, "PLLogRegisteredEvent");
      getPLLogRegisteredEventSymbolLoc_ptr = v15[3];
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (v9)
    {
      v9(12, v5, v6, MEMORY[0x1E695E0F0]);
      goto LABEL_9;
    }

    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void soft_PLLogRegisteredEvent(PLClientID, CFStringRef, CFDictionaryRef, CFArrayRef)"}];
    [v11 handleFailureInFunction:v13 file:@"MFPowerController.m" lineNumber:40 description:{@"%s", dlerror()}];
  }

  else
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL soft_PLShouldLogRegisteredEvent(PLClientID, CFStringRef)"}];
    [v11 handleFailureInFunction:v12 file:@"MFPowerController.m" lineNumber:39 description:{@"%s", dlerror()}];
  }

  __break(1u);
}

- (void)startListeningForBatterySaverNotifications
{
  v3 = MFPowerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_DEFAULT, "Listening for low-power mode notifications", v5, 2u);
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__lowPowerModeChangedNotification_ name:*MEMORY[0x1E696A7D8] object:0];
}

- (void)_lowPowerModeChangedNotification:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = MFPowerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x1E696AE30] processInfo];
    v5 = [v4 isLowPowerModeEnabled];
    v6 = @"OFF";
    if (v5)
    {
      v6 = @"ON";
    }

    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_DEFAULT, "Low-power mode changed to %@", &v9, 0xCu);
  }

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"MFBatterySaverModeDidChange" object:0];

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)isBatterySaverModeEnabled
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v3 = [v2 isLowPowerModeEnabled];

  return v3;
}

- (void)_setupAssertionTimer:(double)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (sPowerAssertionTimer)
  {
    v5 = MFPowerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "#Assertions [*] cancel power assertion timer", buf, 2u);
    }

    dispatch_source_cancel(sPowerAssertionTimer);
    v6 = sPowerAssertionTimer;
    sPowerAssertionTimer = 0;
  }

  if (a3 > 0.0)
  {
    v7 = MFPowerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v15 = a3;
      _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, "#Assertions [*] schedule %d sec power assertion timer", buf, 8u);
    }

    v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
    v9 = sPowerAssertionTimer;
    sPowerAssertionTimer = v8;

    [(MFPowerController *)self _assertionTimeout];
    v11 = dispatch_time(0, (v10 * 1000000000.0));
    dispatch_source_set_timer(sPowerAssertionTimer, v11, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __42__MFPowerController__setupAssertionTimer___block_invoke;
    handler[3] = &unk_1E7AA25C0;
    handler[4] = self;
    dispatch_source_set_event_handler(sPowerAssertionTimer, handler);
    dispatch_resume(sPowerAssertionTimer);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __42__MFPowerController__setupAssertionTimer___block_invoke(uint64_t a1)
{
  v2 = MFPowerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1B0389000, v2, OS_LOG_TYPE_DEFAULT, "#Assertions [*] power assertion timer expired", v3, 2u);
  }

  [*(a1 + 32) _releasePowerAssertion_nts];
  dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_43);
}

uint64_t __42__MFPowerController__setupAssertionTimer___block_invoke_41()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"MFPowerAssertionDidExpire" object:0];

  v1 = sObservers;

  return [v1 makeObjectsPerformSelector:sel_assertionDidExpire];
}

- (void)_retainPowerAssertion_nts
{
  v11 = *MEMORY[0x1E69E9840];
  if (sPowerAssertion)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MFPowerController.m" lineNumber:260 description:@"assertion IS NOT NULL"];
  }

  if (sPowerAssertionTimer)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MFPowerController.m" lineNumber:261 description:@"assertion timer IS NOT nil"];
  }

  v4 = MFPowerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = @"com.apple.message.preventSleep";
    _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_DEFAULT, "#Assertions [+] %@", &v9, 0xCu);
  }

  sPowerAssertion = CPPowerAssertionCreate();
  if (sPowerAssertion)
  {
    [(MFPowerController *)self _assertionTimeout];
    [(MFPowerController *)self _setupAssertionTimer:?];
  }

  else
  {
    v5 = MFPowerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [MFPowerController _retainPowerAssertion_nts];
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_releasePowerAssertion_nts
{
  v10 = *MEMORY[0x1E69E9840];
  if (!sPowerAssertion)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"MFPowerController.m" lineNumber:274 description:@"assertion IS NULL"];
  }

  if (!sPowerAssertionTimer)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MFPowerController.m" lineNumber:275 description:@"assertion timer IS nil"];
  }

  v4 = MFPowerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = @"com.apple.message.preventSleep";
    _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_DEFAULT, "#Assertions [-] %@", &v8, 0xCu);
  }

  [(MFPowerController *)self _setupAssertionTimer:0.0];
  CFRelease(sPowerAssertion);
  sPowerAssertion = 0;
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_retainTaskAssertion_nts
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = MFUserAgent();
  v5 = [v4 isMobileMail];

  if (v5)
  {
    if (sTaskAssertion)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"MFPowerController.m" lineNumber:292 description:@"task assertion IS NOT NULL"];
    }

    v6 = MFPowerLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = @"com.apple.message.backgroundTaskAssertion";
      _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_DEFAULT, "#Assertions [+] %@", &v11, 0xCu);
    }

    v7 = [[MFTaskAssertion alloc] initWithName:@"com.apple.message.backgroundTaskAssertion"];
    v8 = sTaskAssertion;
    sTaskAssertion = v7;
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_releaseTaskAssertion_nts
{
  v10 = *MEMORY[0x1E69E9840];
  if (!sTaskAssertion)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MFPowerController.m" lineNumber:299 description:@"task assertion IS NULL"];
  }

  v2 = MFPowerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = @"com.apple.message.backgroundTaskAssertion";
    _os_log_impl(&dword_1B0389000, v2, OS_LOG_TYPE_DEFAULT, "#Assertions [-] %@", &v8, 0xCu);
  }

  v3 = sTaskAssertion;
  sTaskAssertion = 0;

  v4 = *MEMORY[0x1E69E9840];
}

- (void)retainAssertionWithIdentifier:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__MFPowerController_retainAssertionWithIdentifier___block_invoke;
  v7[3] = &unk_1E7AA26E0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __51__MFPowerController_retainAssertionWithIdentifier___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = MFPowerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1B0389000, v2, OS_LOG_TYPE_DEFAULT, "#Assertions [+] %@", &v9, 0xCu);
  }

  [*(*(a1 + 40) + 40) addObject:*(a1 + 32)];
  if ((*(*(a1 + 40) + 56) & 1) == 0)
  {
    v4 = [*(a1 + 40) isPluggedIn];
    v5 = sPowerAssertion ? 1 : v4;
    if ((v5 & 1) == 0)
    {
      [*(a1 + 40) _retainPowerAssertion_nts];
    }
  }

  if (!sTaskAssertion)
  {
    [*(a1 + 40) _retainTaskAssertion_nts];
  }

  v6 = MFPowerLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(*(a1 + 40) + 40) count];
    v9 = 134217984;
    v10 = v7;
    _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_DEFAULT, "#Assertions Active Assertions: %lu", &v9, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)releaseAssertionWithIdentifier:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MFPowerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "#Assertions [-] %@", buf, 0xCu);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__MFPowerController_releaseAssertionWithIdentifier___block_invoke;
  v9[3] = &unk_1E7AA26E0;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_sync(queue, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __52__MFPowerController_releaseAssertionWithIdentifier___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 40) removeObject:*(a1 + 40)];
  if (![*(*(a1 + 32) + 40) count])
  {
    if (sPowerAssertion)
    {
      [*(a1 + 32) _releasePowerAssertion_nts];
    }

    if (sTaskAssertion)
    {
      [*(a1 + 32) _releaseTaskAssertion_nts];
    }
  }

  v2 = MFPowerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(a1 + 32) + 40) count];
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_1B0389000, v2, OS_LOG_TYPE_DEFAULT, "#Assertions Active Assertions: %lu", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_applicationForegroundStateChanged_nts:(BOOL)a3
{
  if (self->_isForeground != a3)
  {
    self->_isForeground = a3;
    if (a3)
    {
      if (sPowerAssertion)
      {

        [(MFPowerController *)self _releasePowerAssertion_nts];
      }
    }

    else if ([(NSCountedSet *)self->_identifiers count]&& ![(MFPowerController *)self isPluggedIn]&& !sPowerAssertion)
    {

      [(MFPowerController *)self _retainPowerAssertion_nts];
    }
  }
}

- (void)_applicationForegroundStateChanged:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__MFPowerController__applicationForegroundStateChanged___block_invoke;
  v4[3] = &unk_1E7AA25E8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

- (id)powerObservable
{
  v2 = [MEMORY[0x1E699B830] observableOnDefaultNotificationCenterWithName:@"MFPowerStateDidChange" object:self];
  v3 = [v2 map:&__block_literal_global_79];

  return v3;
}

id __36__MFPowerController_powerObservable__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 object];

  return v2;
}

- (EFObservable)pluggedInObservable
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [(MFPowerController *)self powerObservable];
  v9[0] = self;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v5 = [v3 startWith:v4];
  v6 = [v5 map:&__block_literal_global_83];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __40__MFPowerController_pluggedInObservable__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v2, "isPluggedIn")}];

  return v3;
}

- (EFObservable)lowPowerModeObservable
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E699B830] observableOnDefaultNotificationCenterWithName:@"MFBatterySaverModeDidChange" object:0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__MFPowerController_lowPowerModeObservable__block_invoke;
  v10[3] = &unk_1E7AA76C8;
  v10[4] = self;
  v4 = [v3 map:v10];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[MFPowerController isBatterySaverModeEnabled](self, "isBatterySaverModeEnabled")}];
  v11[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v7 = [v4 startWith:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __43__MFPowerController_lowPowerModeObservable__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "isBatterySaverModeEnabled")}];

  return v1;
}

- (id)batteryLevelStateChangeNotificationObservable
{
  v2 = [MEMORY[0x1E699B830] observableOnDefaultNotificationCenterWithName:@"MFBatteryLevelDidChange" object:self];
  v3 = [v2 map:&__block_literal_global_87_0];

  return v3;
}

id __66__MFPowerController_batteryLevelStateChangeNotificationObservable__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 object];

  return v2;
}

- (EFObservable)batteryLevelObservable
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [(MFPowerController *)self batteryLevelStateChangeNotificationObservable];
  v9[0] = self;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v5 = [v3 startWith:v4];
  v6 = [v5 map:&__block_literal_global_89];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __43__MFPowerController_batteryLevelObservable__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MEMORY[0x1E696AD98];
  [v2 batteryLevel];
  v4 = [v3 numberWithFloat:?];

  return v4;
}

- (void)_batteryInformationChanged
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = IOPSCopyPowerSourcesByType();
  if (v3)
  {
    v4 = v3;
    v5 = IOPSCopyPowerSourcesList(v3);
    if (!v5)
    {
      v22 = MFPowerLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [MFPowerController _batteryInformationChanged];
      }

      goto LABEL_22;
    }

    v6 = v5;
    if (CFArrayGetCount(v4) < 1)
    {
      v9 = MFPowerLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [MFPowerController _batteryInformationChanged];
      }

      goto LABEL_21;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v4, 0);
    v8 = IOPSGetPowerSourceDescription(v4, ValueAtIndex);
    v9 = v8;
    if (v8)
    {
      v10 = [v8 objectForKeyedSubscript:@"Current Capacity"];
      v11 = [v10 integerValue];

      v12 = [v9 objectForKeyedSubscript:@"MaxCapacity"];
      v13 = [v12 integerValue];

      v14 = 100;
      if (v13)
      {
        v14 = v13;
      }

      self->_batteryLevel = v11 / v14;
      v15 = [MEMORY[0x1E696AD88] defaultCenter];
      [v15 postNotificationName:@"MFBatteryLevelDidChange" object:self];

      v16 = MFPowerLog();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        goto LABEL_20;
      }

      batteryLevel = self->_batteryLevel;
      v24 = 138543618;
      v25 = v9;
      v26 = 2048;
      v27 = batteryLevel;
      v18 = "#BatteryLevel Received Battery Info: %{public}@ with battery level value %f";
      v19 = v16;
      v20 = 22;
    }

    else
    {
      v16 = MFPowerLog();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
LABEL_20:

LABEL_21:
        CFRelease(v6);
LABEL_22:
        CFRelease(v4);
        goto LABEL_23;
      }

      LOWORD(v24) = 0;
      v18 = "#BatteryLevel Could not retrieve information about internal battery.";
      v19 = v16;
      v20 = 2;
    }

    _os_log_impl(&dword_1B0389000, v19, OS_LOG_TYPE_INFO, v18, &v24, v20);
    goto LABEL_20;
  }

  v21 = MFPowerLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    [MFPowerController _batteryInformationChanged];
  }

LABEL_23:
  v23 = *MEMORY[0x1E69E9840];
}

- (void)_registerForBatteryLevelChanges
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1B0389000, a2, OS_LOG_TYPE_ERROR, "#BatteryLevel Could not register for battery change notification due to status (%d)", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_unregisterForBatteryLevelChanges
{
  batteryNotificationToken = self->_batteryNotificationToken;
  if (batteryNotificationToken != -1)
  {
    notify_cancel(batteryNotificationToken);
    self->_batteryNotificationToken = -1;
  }
}

- (void)_gameModeInformationChanged
{
  v14 = *MEMORY[0x1E69E9840];
  state64 = 0;
  gameModeNotificationToken = self->_gameModeNotificationToken;
  if (gameModeNotificationToken == -1)
  {
    v5 = MFPowerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "Invalid Game Mode notify token";
      v8 = v5;
      v9 = 2;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_12;
  }

  state = notify_get_state(gameModeNotificationToken, &state64);
  v5 = MFPowerLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (state)
  {
    if (v6)
    {
      *buf = 67109120;
      LODWORD(v13) = state;
      v7 = "notify_get_state() for Game Mode failed with error %u";
      v8 = v5;
      v9 = 8;
LABEL_7:
      _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (v6)
  {
    *buf = 134217984;
    v13 = state64;
    _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "Game Mode Status is now %llu", buf, 0xCu);
  }

  self->_gameModeEnabled = state64 != 0;
LABEL_12:
  v10 = *MEMORY[0x1E69E9840];
}

- (void)_registerForGameModeChanges
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1B0389000, a2, OS_LOG_TYPE_ERROR, "Could not register for game mode change notification due to status (%d)", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_unregisterForGameModeChanges
{
  gameModeNotificationToken = self->_gameModeNotificationToken;
  if (gameModeNotificationToken != -1)
  {
    notify_cancel(gameModeNotificationToken);
    self->_gameModeNotificationToken = -1;
  }
}

- (id)copyDiagnosticInformation
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendString:@"\n"];
  [v3 appendString:@"==== Power State ====\n"];
  if ([(MFPowerController *)self isPluggedIn])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v3 appendFormat:@"  charging: %@\n", v4];
  v5 = [MEMORY[0x1E696AE30] processInfo];
  v6 = [v5 isLowPowerModeEnabled];
  v7 = @"OFF";
  if (v6)
  {
    v7 = @"ON";
  }

  [v3 appendFormat:@"  low-power mode: %@\n", v7];

  if ([(MFPowerController *)self gameModeEnabled])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v3 appendFormat:@"  Game Mode: %@\n", v8];
  if (sPowerAssertion)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v3 appendFormat:@"  holding assertion: %@\n", v9];
  [v3 appendString:@"\n==== Internal Assertions ====\n"];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__MFPowerController_copyDiagnosticInformation__block_invoke;
  block[3] = &unk_1E7AA26E0;
  block[4] = self;
  v11 = v3;
  v16 = v11;
  dispatch_sync(queue, block);
  v12 = v16;
  v13 = v11;

  return v13;
}

void __46__MFPowerController_copyDiagnosticInformation__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 40) count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v2 = *(*(a1 + 32) + 40);
    v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v3)
    {
      v4 = *v13;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v13 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = *(*(&v12 + 1) + 8 * i);
          v7 = *(a1 + 40);
          v8 = [*(*(a1 + 32) + 40) countForObject:v6];
          [v7 appendFormat:@"  %@: %d\n", v6, v8, v12];
        }

        v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v3);
    }

    v9 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = *MEMORY[0x1E69E9840];

    [v10 appendFormat:@"(empty)\n"];
  }
}

@end