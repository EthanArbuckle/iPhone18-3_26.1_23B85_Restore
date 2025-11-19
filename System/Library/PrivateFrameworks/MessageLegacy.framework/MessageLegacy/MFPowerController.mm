@interface MFPowerController
+ (id)sharedInstance;
+ (void)powerlog:(id)a3 eventData:(id)a4;
- (BOOL)isBatterySaverModeEnabled;
- (EFObservable)lowPowerModeObservable;
- (EFObservable)pluggedInObservable;
- (MFPowerController)init;
- (id)copyDiagnosticInformation;
- (id)powerObservable;
- (void)_applicationForegroundStateChanged:(BOOL)a3;
- (void)_applicationForegroundStateChanged_nts:(BOOL)a3;
- (void)_lowPowerModeChangedNotification:(id)a3;
- (void)_releasePowerAssertion_nts;
- (void)_retainPowerAssertion_nts;
- (void)_setPluggedIn:(unsigned int)a3;
- (void)_setupAssertionTimer:(double)a3;
- (void)dealloc;
- (void)releaseAssertionWithIdentifier:(id)a3;
- (void)retainAssertionWithIdentifier:(id)a3;
- (void)startListeningForBatterySaverNotifications;
@end

@implementation MFPowerController

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

    v7 = objc_alloc_init(MEMORY[0x277CCA940]);
    v8 = *(v2 + 4);
    *(v2 + 4) = v7;

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __25__MFPowerController_init__block_invoke;
    aBlock[3] = &unk_2798B75F0;
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

    __RootDomainConnect = IORegisterForSystemPower(0, v9 + 7, _powerChanged, v9 + 16);
    if (__RootDomainConnect)
    {
      IONotificationPortSetDispatchQueue(*(v9 + 7), *(v2 + 2));
    }

    else
    {
      v11 = MFLogGeneral();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_258BDA000, v11, OS_LOG_TYPE_DEFAULT, "#Warning could not register for power notifications", &buf, 2u);
      }
    }

    objc_initWeak(&buf, v9);
    v12 = +[MFAppStateMonitor sharedInstance];
    v13 = [v12 appStateObservable];
    v14 = MEMORY[0x277D07188];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __25__MFPowerController_init__block_invoke_13;
    v20[3] = &unk_2798B7728;
    objc_copyWeak(&v21, &buf);
    v15 = [v14 observerWithResultBlock:v20];
    v16 = [v13 subscribe:v15];
    v17 = *(v9 + 5);
    *(v9 + 5) = v16;

    v18 = [MEMORY[0x277D24F10] sharedController];
    [v18 addDiagnosticsGenerator:v9];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&buf);
  }

  return v2;
}

uint64_t __25__MFPowerController_init__block_invoke(uint64_t a1, int token)
{
  state64 = 0;
  notify_get_state(token, &state64);
  return [*(a1 + 32) _setPluggedIn:state64];
}

void __25__MFPowerController_init__block_invoke_13(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 isForeground];

  [WeakRetained _applicationForegroundStateChanged:v4];
}

+ (id)sharedInstance
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

uint64_t __35__MFPowerController_sharedInstance__block_invoke()
{
  sharedInstance_instance_1 = objc_alloc_init(MFPowerController);

  return MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  powerToken = self->_powerToken;
  if (powerToken != -1)
  {
    notify_cancel(powerToken);
  }

  [(EFCancelable *)self->_appStateCancelable cancel];
  if (__RootDomainConnect)
  {
    IONotificationPortSetDispatchQueue(self->_pmPort, 0);
    IODeregisterForSystemPower(&self->_pmNotifier);
    IOServiceClose(__RootDomainConnect);
    IONotificationPortDestroy(self->_pmPort);
    __RootDomainConnect = 0;
  }

  v4.receiver = self;
  v4.super_class = MFPowerController;
  [(MFPowerController *)&v4 dealloc];
}

- (void)_setPluggedIn:(unsigned int)a3
{
  v12 = *MEMORY[0x277D85DE8];
  pluggedIn = self->_pluggedIn;
  if (pluggedIn != a3)
  {
    v5 = self->_pluggedIn;
    atomic_compare_exchange_strong(&self->_pluggedIn, &v5, a3);
    if (v5 == pluggedIn)
    {
      v6 = MFLogGeneral();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
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
        _os_log_impl(&dword_258BDA000, v6, OS_LOG_TYPE_INFO, "device is now %@", &v10, 0xCu);
      }

      if (self->_pluggedIn)
      {
        if (_powerAssertion)
        {
          [(MFPowerController *)self _releasePowerAssertion_nts];
        }
      }

      else if ([(NSCountedSet *)self->_identifiers count]&& !self->_isForeground && !_powerAssertion)
      {
        [(MFPowerController *)self _retainPowerAssertion_nts];
      }

      v8 = [MEMORY[0x277CCAB98] defaultCenter];
      [v8 postNotificationName:@"MFPowerStateDidChange" object:self];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)powerlog:(id)a3 eventData:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v7 = getPLShouldLogRegisteredEventSymbolLoc_ptr;
  v14 = getPLShouldLogRegisteredEventSymbolLoc_ptr;
  if (!getPLShouldLogRegisteredEventSymbolLoc_ptr)
  {
    v8 = PowerLogLibrary();
    v12[3] = dlsym(v8, "PLShouldLogRegisteredEvent");
    getPLShouldLogRegisteredEventSymbolLoc_ptr = v12[3];
    v7 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v7)
  {
    +[MFPowerController powerlog:eventData:];
  }

  if (v7(12, v5))
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v9 = getPLLogRegisteredEventSymbolLoc_ptr;
    v14 = getPLLogRegisteredEventSymbolLoc_ptr;
    if (!getPLLogRegisteredEventSymbolLoc_ptr)
    {
      v10 = PowerLogLibrary();
      v12[3] = dlsym(v10, "PLLogRegisteredEvent");
      getPLLogRegisteredEventSymbolLoc_ptr = v12[3];
      v9 = v12[3];
    }

    _Block_object_dispose(&v11, 8);
    if (!v9)
    {
      +[MFPowerController powerlog:eventData:];
    }

    v9(12, v5, v6, MEMORY[0x277CBEBF8]);
  }
}

- (void)startListeningForBatterySaverNotifications
{
  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_258BDA000, v3, OS_LOG_TYPE_INFO, "listening for low-power mode notifications", v5, 2u);
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel__lowPowerModeChangedNotification_ name:*MEMORY[0x277CCA5E8] object:0];
}

- (void)_lowPowerModeChangedNotification:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [MEMORY[0x277CCAC38] processInfo];
    v5 = [v4 isLowPowerModeEnabled];
    v6 = @"OFF";
    if (v5)
    {
      v6 = @"ON";
    }

    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_258BDA000, v3, OS_LOG_TYPE_INFO, "low-power mode changed to %@", &v9, 0xCu);
  }

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 postNotificationName:@"MFBatterySaverModeDidChange" object:0];

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)isBatterySaverModeEnabled
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v3 = [v2 isLowPowerModeEnabled];

  return v3;
}

- (void)_setupAssertionTimer:(double)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (_powerAssertionTimer)
  {
    v5 = MFLogGeneral();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_258BDA000, v5, OS_LOG_TYPE_INFO, "#Assertions [*] cancel power assertion timer", buf, 2u);
    }

    dispatch_source_cancel(_powerAssertionTimer);
    v6 = _powerAssertionTimer;
    _powerAssertionTimer = 0;
  }

  if (a3 > 0.0)
  {
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v15 = a3;
      _os_log_impl(&dword_258BDA000, v7, OS_LOG_TYPE_INFO, "#Assertions [*] schedule %d sec power assertion timer", buf, 8u);
    }

    v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
    v9 = _powerAssertionTimer;
    _powerAssertionTimer = v8;

    [(MFPowerController *)self _assertionTimeout];
    v11 = dispatch_time(0, (v10 * 1000000000.0));
    dispatch_source_set_timer(_powerAssertionTimer, v11, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __42__MFPowerController__setupAssertionTimer___block_invoke;
    handler[3] = &unk_2798B75C8;
    handler[4] = self;
    dispatch_source_set_event_handler(_powerAssertionTimer, handler);
    dispatch_resume(_powerAssertionTimer);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __42__MFPowerController__setupAssertionTimer___block_invoke(uint64_t a1)
{
  v2 = MFLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_258BDA000, v2, OS_LOG_TYPE_INFO, "#Assertions [*] power assertion timer expired", v4, 2u);
  }

  [*(a1 + 32) _releasePowerAssertion_nts];
  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_40);
  v3 = dispatch_get_global_queue(2, 0);
  dispatch_async(v3, &__block_literal_global_42);
}

void __42__MFPowerController__setupAssertionTimer___block_invoke_38()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"MFPowerAssertionDidExpire" object:0];
}

- (void)_retainPowerAssertion_nts
{
  OUTLINED_FUNCTION_1_3();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_5();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_releasePowerAssertion_nts
{
  OUTLINED_FUNCTION_1_3();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_5();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)retainAssertionWithIdentifier:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__MFPowerController_retainAssertionWithIdentifier___block_invoke;
  v7[3] = &unk_2798B6E28;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

uint64_t __51__MFPowerController_retainAssertionWithIdentifier___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = MFLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_258BDA000, v2, OS_LOG_TYPE_INFO, "#Assertions [+] %@", &v6, 0xCu);
  }

  [*(*(a1 + 40) + 32) addObject:*(a1 + 32)];
  result = *(a1 + 40);
  if ((*(result + 48) & 1) == 0)
  {
    result = [result isPluggedIn];
    if ((result & 1) == 0 && !_powerAssertion)
    {
      result = [*(a1 + 40) _retainPowerAssertion_nts];
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)releaseAssertionWithIdentifier:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_258BDA000, v5, OS_LOG_TYPE_INFO, "#Assertions [-] %@", buf, 0xCu);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__MFPowerController_releaseAssertionWithIdentifier___block_invoke;
  v9[3] = &unk_2798B6E28;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_sync(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __52__MFPowerController_releaseAssertionWithIdentifier___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) removeObject:*(a1 + 40)];
  result = [*(*(a1 + 32) + 32) count];
  if (result)
  {
    v3 = 1;
  }

  else
  {
    v3 = _powerAssertion == 0;
  }

  if (!v3)
  {
    v4 = *(a1 + 32);

    return [v4 _releasePowerAssertion_nts];
  }

  return result;
}

- (void)_applicationForegroundStateChanged_nts:(BOOL)a3
{
  if (self->_isForeground != a3)
  {
    self->_isForeground = a3;
    if (a3)
    {
      if (_powerAssertion)
      {

        [(MFPowerController *)self _releasePowerAssertion_nts];
      }
    }

    else if ([(NSCountedSet *)self->_identifiers count]&& ![(MFPowerController *)self isPluggedIn]&& !_powerAssertion)
    {

      [(MFPowerController *)self _retainPowerAssertion_nts];
    }
  }
}

- (void)_applicationForegroundStateChanged:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__MFPowerController__applicationForegroundStateChanged___block_invoke;
  v4[3] = &unk_2798B7488;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

- (id)powerObservable
{
  v2 = [MEMORY[0x277D07180] observableOnDefaultNotificationCenterWithName:@"MFPowerStateDidChange" object:self];
  v3 = [v2 map:&__block_literal_global_68];

  return v3;
}

- (EFObservable)pluggedInObservable
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [(MFPowerController *)self powerObservable];
  v9[0] = self;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v5 = [v3 startWith:v4];
  v6 = [v5 map:&__block_literal_global_72];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t __40__MFPowerController_pluggedInObservable__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 isPluggedIn];

  return [v2 numberWithBool:v3];
}

- (EFObservable)lowPowerModeObservable
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D07180] observableOnDefaultNotificationCenterWithName:@"MFBatterySaverModeDidChange" object:0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__MFPowerController_lowPowerModeObservable__block_invoke;
  v10[3] = &unk_2798B7790;
  v10[4] = self;
  v4 = [v3 map:v10];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[MFPowerController isBatterySaverModeEnabled](self, "isBatterySaverModeEnabled")}];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v7 = [v4 startWith:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t __43__MFPowerController_lowPowerModeObservable__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v2 = [*(a1 + 32) isBatterySaverModeEnabled];

  return [v1 numberWithBool:v2];
}

- (id)copyDiagnosticInformation
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
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
  v5 = [MEMORY[0x277CCAC38] processInfo];
  v6 = [v5 isLowPowerModeEnabled];
  v7 = @"OFF";
  if (v6)
  {
    v7 = @"ON";
  }

  [v3 appendFormat:@"  low-power mode: %@\n", v7];

  if (_powerAssertion)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v3 appendFormat:@"  holding assertion: %@\n", v8];
  [v3 appendString:@"\n==== Internal Assertions ====\n"];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__MFPowerController_copyDiagnosticInformation__block_invoke;
  block[3] = &unk_2798B6E28;
  block[4] = self;
  v10 = v3;
  v15 = v10;
  dispatch_sync(queue, block);
  v11 = v15;
  v12 = v10;

  return v12;
}

void __46__MFPowerController_copyDiagnosticInformation__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 32) count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v2 = *(*(a1 + 32) + 32);
    v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v14;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v14 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v13 + 1) + 8 * i);
          v8 = *(a1 + 40);
          v9 = [*(*(a1 + 32) + 32) countForObject:v7];
          [v8 appendFormat:@"  %@: %d\n", v7, v9, v13];
        }

        v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v4);
    }

    v10 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v11 = *(a1 + 40);
    v12 = *MEMORY[0x277D85DE8];

    [v11 appendFormat:@"(empty)\n"];
  }
}

+ (void)powerlog:eventData:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void soft_PLLogRegisteredEvent(PLClientID, CFStringRef, CFDictionaryRef, CFArrayRef)"}];
  [v0 handleFailureInFunction:v1 file:@"MFPowerController.m" lineNumber:40 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)powerlog:eventData:.cold.2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL soft_PLShouldLogRegisteredEvent(PLClientID, CFStringRef)"}];
  [v0 handleFailureInFunction:v1 file:@"MFPowerController.m" lineNumber:39 description:{@"%s", dlerror()}];

  __break(1u);
}

@end