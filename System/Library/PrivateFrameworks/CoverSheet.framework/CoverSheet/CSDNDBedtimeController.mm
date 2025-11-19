@interface CSDNDBedtimeController
- (BOOL)isGreetingDisabled;
- (CSDNDBedtimeController)init;
- (CSDNDBedtimeController)initWithStateService:(id)a3 initialObserver:(id)a4;
- (void)_cleanUpGreetingGracePeriodTimer;
- (void)_setShouldShowGreeting:(BOOL)a3 forceUpdateObservers:(BOOL)a4;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)isGreetingDisabled;
- (void)setActive:(BOOL)a3;
- (void)sleepStore:(id)a3 sleepSettingsDidChange:(id)a4;
- (void)stateService:(id)a3 didReceiveDoNotDisturbStateUpdate:(id)a4;
@end

@implementation CSDNDBedtimeController

- (CSDNDBedtimeController)initWithStateService:(id)a3 initialObserver:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = CSDNDBedtimeController;
  v9 = [(CSDNDBedtimeController *)&v18 init];
  v10 = v9;
  if (v9)
  {
    if (v8)
    {
      [(CSDNDBedtimeController *)v9 addObserver:v8];
    }

    objc_storeStrong(&v10->_stateService, a3);
    [(DNDStateService *)v10->_stateService addStateUpdateListener:v10 withCompletionHandler:0];
    stateService = v10->_stateService;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __63__CSDNDBedtimeController_initWithStateService_initialObserver___block_invoke;
    v16[3] = &unk_27838D120;
    v12 = v10;
    v17 = v12;
    [(DNDStateService *)stateService queryCurrentStateWithCompletionHandler:v16];
    v13 = objc_alloc_init(MEMORY[0x277D62528]);
    v14 = v12[5];
    v12[5] = v13;

    [v12[5] addObserver:v12];
  }

  return v10;
}

void __63__CSDNDBedtimeController_initWithStateService_initialObserver___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__CSDNDBedtimeController_initWithStateService_initialObserver___block_invoke_2;
  v5[3] = &unk_27838B838;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

uint64_t __63__CSDNDBedtimeController_initWithStateService_initialObserver___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) sb_isBedtimeModeActive];
  v3 = *(a1 + 40);

  return [v3 setActive:v2];
}

- (CSDNDBedtimeController)init
{
  v3 = [MEMORY[0x277D05AB0] serviceForClientIdentifier:@"com.apple.springboard.dashboard.bedtime"];
  v4 = [(CSDNDBedtimeController *)self initWithStateService:v3 initialObserver:0];

  return v4;
}

- (void)dealloc
{
  [(DNDStateService *)self->_stateService removeStateUpdateListener:self];
  [(CSDNDBedtimeController *)self _cleanUpGreetingGracePeriodTimer];
  v3.receiver = self;
  v3.super_class = CSDNDBedtimeController;
  [(CSDNDBedtimeController *)&v3 dealloc];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  if (![(NSHashTable *)observers containsObject:v4])
  {
    [(NSHashTable *)self->_observers addObject:v8];
  }
}

- (void)setActive:(BOOL)a3
{
  v21 = *MEMORY[0x277D85DE8];
  if (self->_active != a3)
  {
    self->_active = a3;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = self->_observers;
    v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = *v17;
      do
      {
        v7 = 0;
        do
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v16 + 1) + 8 * v7++) dndBedtimeControllerActiveStateDidChange:self];
        }

        while (v5 != v7);
        v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v5);
    }

    if (self->_active)
    {
      [(CSDNDBedtimeController *)self _setShouldShowGreeting:0];
    }

    else if (self->_deactivated && ![(CSDNDBedtimeController *)self isGreetingDisabled])
    {
      [(CSDNDBedtimeController *)self _setShouldShowGreeting:1];
      objc_initWeak(&location, self);
      v8 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"CSDNDBedtimeController.greetingGracePeriodTimer"];
      greetingGracePeriodTimer = self->_greetingGracePeriodTimer;
      p_greetingGracePeriodTimer = &self->_greetingGracePeriodTimer;
      *p_greetingGracePeriodTimer = v8;

      v11 = *p_greetingGracePeriodTimer;
      v12 = MEMORY[0x277D85CD0];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __36__CSDNDBedtimeController_setActive___block_invoke;
      v13[3] = &unk_27838B948;
      objc_copyWeak(&v14, &location);
      [(BSAbsoluteMachTimer *)v11 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v13 queue:900.0 handler:0.0];

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }
}

void __36__CSDNDBedtimeController_setActive___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cleanUpGreetingGracePeriodTimer];
  [WeakRetained _setShouldShowGreeting:0];
}

- (BOOL)isGreetingDisabled
{
  v18 = *MEMORY[0x277D85DE8];
  sleepStore = self->_sleepStore;
  v15 = 0;
  v4 = [(HKSPSleepStore *)sleepStore currentSleepSettingsWithError:&v15];
  v5 = v15;
  sleepSettings = self->_sleepSettings;
  self->_sleepSettings = v4;

  v7 = self->_sleepSettings;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v5 == 0;
  }

  if (v8)
  {
    v9 = [(HKSPSleepSettings *)v7 springBoardGreetingDisabled];
  }

  else
  {
    v10 = SBLogDoNotDisturbBedtime();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CSDNDBedtimeController *)v5 isGreetingDisabled];
    }

    v9 = 1;
  }

  v12 = SBLogDoNotDisturbBedtime();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromBOOL();
    *buf = 138412290;
    v17 = v13;
    _os_log_impl(&dword_21EB05000, v12, OS_LOG_TYPE_DEFAULT, "Greeting is disabled: %@", buf, 0xCu);
  }

  return v9;
}

- (void)sleepStore:(id)a3 sleepSettingsDidChange:(id)a4
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CSDNDBedtimeController_sleepStore_sleepSettingsDidChange___block_invoke;
  block[3] = &unk_27838B770;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __60__CSDNDBedtimeController_sleepStore_sleepSettingsDidChange___block_invoke(uint64_t a1)
{
  v2 = SBLogDoNotDisturbBedtime();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21EB05000, v2, OS_LOG_TYPE_DEFAULT, "Sleep settings changed, checking if greeting should be disabled", v4, 2u);
  }

  result = [*(a1 + 32) isGreetingDisabled];
  if (result)
  {
    return [*(a1 + 32) _setShouldShowGreeting:0 forceUpdateObservers:1];
  }

  return result;
}

- (void)stateService:(id)a3 didReceiveDoNotDisturbStateUpdate:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__CSDNDBedtimeController_stateService_didReceiveDoNotDisturbStateUpdate___block_invoke;
  v7[3] = &unk_27838B838;
  v8 = v5;
  v9 = self;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __73__CSDNDBedtimeController_stateService_didReceiveDoNotDisturbStateUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  v3 = [v2 sb_isBedtimeModeActive];

  v4 = [*(a1 + 32) reason];
  v5 = [*(a1 + 32) reason];
  v6 = [*(a1 + 32) source];
  if (v3)
  {
    v8 = *(a1 + 40);
    v7 = (a1 + 40);
    *(v8 + 32) = 0;
  }

  else
  {
    v9 = v6;
    v10 = [*(a1 + 32) previousState];
    v11 = [v10 sb_isBedtimeModeActive];
    if (v4 == 3 || v5 == 2)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    if (v9 == 1)
    {
      v13 = 0;
    }

    v14 = *(a1 + 40);
    v7 = (a1 + 40);
    *(v14 + 32) = v13;
  }

  v15 = *v7;

  return [v15 setActive:v3];
}

- (void)_setShouldShowGreeting:(BOOL)a3 forceUpdateObservers:(BOOL)a4
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->_shouldShowGreeting == a3)
  {
    if (!a4)
    {
      return;
    }
  }

  else
  {
    self->_shouldShowGreeting = a3;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_observers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = SBLogDoNotDisturbBedtime();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = NSStringFromBOOL();
          *buf = 138412290;
          v18 = v12;
          _os_log_impl(&dword_21EB05000, v11, OS_LOG_TYPE_DEFAULT, "Should show greeting view state changed to: %@", buf, 0xCu);
        }

        [v10 dndBedtimeControllerShowGreetingStateDidChange:self animated:self->_greetingGracePeriodTimer == 0];
      }

      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)_cleanUpGreetingGracePeriodTimer
{
  greetingGracePeriodTimer = self->_greetingGracePeriodTimer;
  if (greetingGracePeriodTimer)
  {
    [(BSAbsoluteMachTimer *)greetingGracePeriodTimer invalidate];
    v4 = self->_greetingGracePeriodTimer;
    self->_greetingGracePeriodTimer = 0;
  }
}

- (void)isGreetingDisabled
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21EB05000, a2, OS_LOG_TYPE_ERROR, "isGreetingDisabled - Failed to retrieve Sleep settings with error: %@", &v2, 0xCu);
}

@end