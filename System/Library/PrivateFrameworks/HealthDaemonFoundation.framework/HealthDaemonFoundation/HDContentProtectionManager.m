@interface HDContentProtectionManager
- (BOOL)isProtectedDataAvailable;
- (HDContentProtectionManager)initWithNotifications:(BOOL)a3 initialState:(int64_t)a4 unlockedSinceBoot:(BOOL)a5;
- (id)diagnosticDescription;
- (int64_t)observedState;
- (uint64_t)_handleAppleKeyStoreRegistration:(int)a3 event:;
- (uint64_t)_keyBagLockState;
- (void)_handleKeyBagLockStatusNotification;
- (void)_observationQueue_adjustContentProtectionStateWithBlock:(uint64_t)a1;
- (void)_updateMKBState;
- (void)addContentProtectionObserver:(id)a3 withQueue:(id)a4;
- (void)addSynchronousContentProtectionObserver:(id)a3;
- (void)dealloc;
- (void)recheckContentProtectionState;
- (void)removeContentProtectionObserver:(id)a3;
- (void)setContentProtectionState:(int64_t)a3;
- (void)setInSession:(BOOL)a3;
- (void)setShouldIgnoreUnlockedState:(BOOL)a3;
@end

@implementation HDContentProtectionManager

- (BOOL)isProtectedDataAvailable
{
  v3 = objc_opt_class();
  v4 = [(HDContentProtectionManager *)self observedState];

  return [v3 isProtectedDataAvailableWithState:v4];
}

- (int64_t)observedState
{
  v2 = atomic_load(&self->_shouldIgnoreUnlockedState);
  if (v2)
  {
    return 2;
  }

  return atomic_load(&self->_contentProtectionState);
}

- (void)_handleKeyBagLockStatusNotification
{
  if (a1)
  {
    *(a1 + 64) = CFAbsoluteTimeGetCurrent();
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __65__HDContentProtectionManager__handleKeyBagLockStatusNotification__block_invoke;
    v2[3] = &unk_2796BD9B0;
    v2[4] = a1;
    [(HDContentProtectionManager *)a1 _observationQueue_adjustContentProtectionStateWithBlock:v2];
  }
}

uint64_t __65__HDContentProtectionManager__handleKeyBagLockStatusNotification__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (v1 + 8);
  result = [(HDContentProtectionManager *)v1 _keyBagLockState];
  atomic_store(result, v2);
  return result;
}

- (uint64_t)_keyBagLockState
{
  if (result)
  {
    v1 = MKBGetDeviceLockState();
    if (v1 > 6)
    {
      return 0;
    }

    else
    {
      return qword_2515C03D0[v1];
    }
  }

  return result;
}

- (HDContentProtectionManager)initWithNotifications:(BOOL)a3 initialState:(int64_t)a4 unlockedSinceBoot:(BOOL)a5
{
  v7 = a3;
  v24.receiver = self;
  v24.super_class = HDContentProtectionManager;
  v8 = [(HDContentProtectionManager *)&v24 init];
  if (v8)
  {
    v9 = HKCreateSerialDispatchQueue();
    observationQueue = v8->_observationQueue;
    v8->_observationQueue = v9;

    v11 = objc_alloc(MEMORY[0x277CCD738]);
    v12 = HKLogInfrastructure();
    v13 = [v11 initWithName:@"content-protection-observers" loggingCategory:v12];
    observers = v8->_observers;
    v8->_observers = v13;

    v15 = objc_alloc(MEMORY[0x277CCDA88]);
    v16 = HKLogInfrastructure();
    v17 = [v15 initWithName:@"content-protection-observers" loggingCategory:v16];
    synchronousObservers = v8->_synchronousObservers;
    v8->_synchronousObservers = v17;

    if (v7)
    {
      v19 = v8->_observationQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __83__HDContentProtectionManager_initWithNotifications_initialState_unlockedSinceBoot___block_invoke;
      block[3] = &unk_2796BD9B0;
      v23 = v8;
      dispatch_sync(v19, block);
    }

    else
    {
      if (!a4)
      {
        [HDContentProtectionManager initWithNotifications:initialState:unlockedSinceBoot:];
      }

      atomic_store(a4, &v8->_contentProtectionState);
      atomic_store(a5, &v8->_unlockedSinceBoot);
    }

    v20 = +[HDDiagnosticManager sharedDiagnosticManager];
    [v20 addObject:v8];
  }

  return v8;
}

void __83__HDContentProtectionManager_initWithNotifications_initialState_unlockedSinceBoot___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  if (MKBDeviceFormattedForContentProtection())
  {
    v2 = *MEMORY[0x277D28B30];
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __83__HDContentProtectionManager_initWithNotifications_initialState_unlockedSinceBoot___block_invoke_2;
    handler[3] = &unk_2796BD960;
    objc_copyWeak(&v9, &location);
    notify_register_dispatch(v2, (v3 + 16), v4, handler);
    *(*(a1 + 32) + 56) = CFAbsoluteTimeGetCurrent();
    objc_destroyWeak(&v9);
  }

  atomic_store([(HDContentProtectionManager *)*(a1 + 32) _keyBagLockState], (*(a1 + 32) + 8));
  atomic_store(MKBDeviceUnlockedSinceBoot() != 0, (*(a1 + 32) + 13));
  atomic_store(0, (*(a1 + 32) + 14));
  v5 = *(*(a1 + 32) + 24);
  objc_copyWeak(&v7, &location);
  *(*(a1 + 32) + 48) = AKSEventsRegister();
  if (!*(*(a1 + 32) + 48))
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      __83__HDContentProtectionManager_initWithNotifications_initialState_unlockedSinceBoot___block_invoke_cold_1(v6);
    }
  }

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __83__HDContentProtectionManager_initWithNotifications_initialState_unlockedSinceBoot___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDContentProtectionManager *)WeakRetained _handleKeyBagLockStatusNotification];
}

void __83__HDContentProtectionManager_initWithNotifications_initialState_unlockedSinceBoot___block_invoke_3(uint64_t a1, int a2, const __CFDictionary *a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDContentProtectionManager *)WeakRetained _handleAppleKeyStoreRegistration:a3 event:a2];
}

- (uint64_t)_handleAppleKeyStoreRegistration:(int)a3 event:
{
  if (result)
  {
    if (a3 == 1)
    {
      value[3] = v3;
      value[4] = v4;
      v5 = result;
      value[0] = 0;
      result = CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x277CEE048], value);
      if (result)
      {
        v6 = CFGetTypeID(value[0]);
        result = CFBooleanGetTypeID();
        if (v6 == result)
        {
          result = CFBooleanGetValue(value[0]);
          atomic_exchange((v5 + 14), result != 0);
        }
      }
    }
  }

  return result;
}

- (void)dealloc
{
  v3 = +[HDDiagnosticManager sharedDiagnosticManager];
  [v3 removeObject:self];

  notify_cancel(self->_notifyToken);
  aksEvent = self->_aksEvent;
  AKSEventsUnregister();
  v5.receiver = self;
  v5.super_class = HDContentProtectionManager;
  [(HDContentProtectionManager *)&v5 dealloc];
}

- (void)addContentProtectionObserver:(id)a3 withQueue:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HDContentProtectionManager addContentProtectionObserver:withQueue:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [HDContentProtectionManager addContentProtectionObserver:withQueue:];
LABEL_3:
  if (self->_observationQueue == v8)
  {
    [HDContentProtectionManager addContentProtectionObserver:withQueue:];
  }

  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_25156C000, v9, OS_LOG_TYPE_DEFAULT, "Added content protection observer %{public}@", &v11, 0xCu);
  }

  [(HKObserverSet *)self->_observers registerObserver:v6 queue:v8];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addSynchronousContentProtectionObserver:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    [HDContentProtectionManager addSynchronousContentProtectionObserver:];
  }

  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_25156C000, v5, OS_LOG_TYPE_DEFAULT, "Added synchronous content protection observer %{public}@", &v7, 0xCu);
  }

  [(HKSynchronousObserverSet *)self->_synchronousObservers registerObserver:v4];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeContentProtectionObserver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    [HDContentProtectionManager removeContentProtectionObserver:];
    v4 = 0;
  }

  [(HKObserverSet *)self->_observers unregisterObserver:v4];
  [(HKSynchronousObserverSet *)self->_synchronousObservers unregisterObserver:v5];
}

- (void)recheckContentProtectionState
{
  observationQueue = self->_observationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HDContentProtectionManager_recheckContentProtectionState__block_invoke;
  block[3] = &unk_2796BD9B0;
  block[4] = self;
  dispatch_async(observationQueue, block);
}

void __59__HDContentProtectionManager_recheckContentProtectionState__block_invoke(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  v3 = v5;
  if (Current - *(v5 + 72) >= 5.0)
  {
    __59__HDContentProtectionManager_recheckContentProtectionState__block_invoke_cold_1(v6, v3, v4, Current);
  }
}

- (void)setContentProtectionState:(int64_t)a3
{
  observationQueue = self->_observationQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__HDContentProtectionManager_setContentProtectionState___block_invoke;
  v4[3] = &unk_2796BD9D8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(observationQueue, v4);
}

- (void)setInSession:(BOOL)a3
{
  observationQueue = self->_observationQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__HDContentProtectionManager_setInSession___block_invoke;
  v4[3] = &unk_2796BDA00;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(observationQueue, v4);
}

- (void)setShouldIgnoreUnlockedState:(BOOL)a3
{
  observationQueue = self->_observationQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__HDContentProtectionManager_setShouldIgnoreUnlockedState___block_invoke;
  v4[3] = &unk_2796BDA00;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(observationQueue, v4);
}

- (id)diagnosticDescription
{
  v3 = [MEMORY[0x277CCAB68] string];
  observationQueue = self->_observationQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__HDContentProtectionManager_diagnosticDescription__block_invoke;
  v8[3] = &unk_2796BDA28;
  v5 = v3;
  v9 = v5;
  v10 = self;
  dispatch_sync(observationQueue, v8);
  v6 = v5;

  return v5;
}

- (void)_observationQueue_adjustContentProtectionStateWithBlock:(uint64_t)a1
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = [a1 observedState];
    v3[2](v3);
    v5 = [a1 observedState];
    v6 = v5;
    v7 = v5 == 4 || v5 == 1;
    v8 = MEMORY[0x277CCC2A0];
    if (v7 && (atomic_exchange((a1 + 13), 1u) & 1) == 0)
    {
      _HKInitializeLogging();
      v9 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25156C000, v9, OS_LOG_TYPE_DEFAULT, "First unlock", buf, 2u);
      }
    }

    _HKInitializeLogging();
    v10 = *v8;
    v11 = os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT);
    if (v6 == v4)
    {
      if (v11)
      {
        v12 = @"invalid";
        switch(v4)
        {
          case 0uLL:
            break;
          case 1uLL:
            v12 = @"unlocked";
            break;
          case 2uLL:
            v12 = @"locked";
            break;
          case 3uLL:
            v12 = @"locking";
            break;
          case 4uLL:
            v12 = @"disabled";
            break;
          default:
            v12 = @"unknown";
            break;
        }

        *buf = 138543618;
        v23 = v12;
        v24 = 2114;
        v25 = v12;
        v18 = v10;
        _os_log_impl(&dword_25156C000, v18, OS_LOG_TYPE_DEFAULT, "Ignoring no-op keybag transition (%{public}@ -> %{public}@)", buf, 0x16u);
      }
    }

    else
    {
      if (v11)
      {
        if (v4 > 4)
        {
          v13 = @"unknown";
        }

        else
        {
          v13 = off_2796BDA68[v4];
        }

        if (v6 > 4)
        {
          v14 = @"unknown";
        }

        else
        {
          v14 = off_2796BDA68[v6];
        }

        *buf = 138543618;
        v23 = v13;
        v24 = 2114;
        v25 = v14;
        v15 = v10;
        _os_log_impl(&dword_25156C000, v15, OS_LOG_TYPE_DEFAULT, "Key bag transitioning from %{public}@ to %{public}@", buf, 0x16u);
      }

      v16 = *(a1 + 40);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __86__HDContentProtectionManager__observationQueue_adjustContentProtectionStateWithBlock___block_invoke;
      v21[3] = &__block_descriptor_48_e39_v16__0___HDContentProtectionObserver__8l;
      v21[4] = v6;
      v21[5] = v4;
      [v16 notifyObservers:v21];
      v17 = *(a1 + 32);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __86__HDContentProtectionManager__observationQueue_adjustContentProtectionStateWithBlock___block_invoke_2;
      v20[3] = &__block_descriptor_48_e39_v16__0___HDContentProtectionObserver__8l;
      v20[4] = v6;
      v20[5] = v4;
      [v17 notifyObservers:v20];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_updateMKBState
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = [(HDContentProtectionManager *)a1 _keyBagLockState];
    v3 = v2;
    v4 = atomic_exchange((a1 + 8), v2);
    if (v2 != v4)
    {
      _HKInitializeLogging();
      v5 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        v7[0] = 67109376;
        v7[1] = v3;
        v8 = 1024;
        v9 = v4;
        _os_log_error_impl(&dword_25156C000, v5, OS_LOG_TYPE_ERROR, "Actual content protection state '%d' does not match cached content protection state '%d' (found via recheck)", v7, 0xEu);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __56__HDContentProtectionManager_setContentProtectionState___block_invoke()
{
  OUTLINED_FUNCTION_0_0();
  v2[1] = 3221225472;
  v2[2] = __56__HDContentProtectionManager_setContentProtectionState___block_invoke_2;
  v2[3] = &unk_2796BD9D8;
  v1 = *(v0 + 40);
  v3 = *(v0 + 32);
  v4 = v1;
  [(HDContentProtectionManager *)v3 _observationQueue_adjustContentProtectionStateWithBlock:v2];
}

void __43__HDContentProtectionManager_setInSession___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0(v2, v3, v4, 3221225472, __43__HDContentProtectionManager_setInSession___block_invoke_2, &unk_2796BDA00, v5, v6);
}

void __59__HDContentProtectionManager_setShouldIgnoreUnlockedState___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0(v2, v3, v4, 3221225472, __59__HDContentProtectionManager_setShouldIgnoreUnlockedState___block_invoke_2, &unk_2796BDA00, v5, v6);
}

void __51__HDContentProtectionManager_diagnosticDescription__block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) observedState];
  if (v4 > 4)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_2796BDA68[v4];
  }

  [v3 appendFormat:@"Recorded state: %@\n", v5];
  [*(a1 + 32) appendFormat:@"System state: %@\n", off_2796BDA68[-[HDContentProtectionManager _keyBagLockState](*(a1 + 40))]];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) deviceUnlockedSinceBoot];
  v8 = "NO";
  if (v7)
  {
    v8 = "YES";
  }

  [v6 appendFormat:@"Unlocked since boot: %s\n", v8];
  if ([*(a1 + 40) shouldIgnoreUnlockedState])
  {
    [*(a1 + 32) appendString:@"IGNORING UNLOCKED STATE\n"];
  }

  if (*(*(a1 + 40) + 64) == 0.0)
  {
    v10 = HDDiagnosticStringFromDate(0);
  }

  else
  {
    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
    v10 = HDDiagnosticStringFromDate(v9);
  }

  if (*(*(a1 + 40) + 56) == 0.0)
  {
    v12 = HDDiagnosticStringFromDate(0);
  }

  else
  {
    v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
    v12 = HDDiagnosticStringFromDate(v11);
  }

  [*(a1 + 32) appendFormat:@"Last lock_status notification: %@ (began observing %@)", v10, v12];
  if ([*(*(a1 + 40) + 40) count])
  {
    [*(a1 + 32) appendFormat:@"\nObservers:"];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = [*(*(a1 + 40) + 40) allObservers];
    v14 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v35;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v34 + 1) + 8 * i);
          v19 = *(a1 + 32);
          v20 = objc_opt_class();
          NSStringFromClass(v20);
          objc_claimAutoreleasedReturnValue();
          OUTLINED_FUNCTION_4_0();
        }

        v15 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v15);
    }
  }

  if ([*(*(a1 + 40) + 32) count])
  {
    [*(a1 + 32) appendFormat:@"\nObservers:"];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v21 = [*(*(a1 + 40) + 32) allObservers];
    v22 = [v21 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v31;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v31 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v30 + 1) + 8 * j);
          v27 = *(a1 + 32);
          v28 = objc_opt_class();
          NSStringFromClass(v28);
          objc_claimAutoreleasedReturnValue();
          OUTLINED_FUNCTION_4_0();
        }

        v23 = [v21 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v23);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)initWithNotifications:initialState:unlockedSinceBoot:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:@"initialState != HDContentProtectionStateInvalid" object:? file:? lineNumber:? description:?];
}

void __83__HDContentProtectionManager_initWithNotifications_initialState_unlockedSinceBoot___block_invoke_cold_1(os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138478083;
  v3 = @"AKSEvents";
  v4 = 2113;
  v5 = @"kAKSInfoOnenessUnlocked";
  _os_log_error_impl(&dword_25156C000, log, OS_LOG_TYPE_ERROR, "Unable to register for %{private}@ %{private}@", &v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)addContentProtectionObserver:withQueue:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)addContentProtectionObserver:withQueue:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)addContentProtectionObserver:withQueue:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)addSynchronousContentProtectionObserver:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)removeContentProtectionObserver:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __59__HDContentProtectionManager_recheckContentProtectionState__block_invoke_cold_1(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  *a1 = MEMORY[0x277D85DD0];
  a1[1] = 3221225472;
  a1[2] = __59__HDContentProtectionManager_recheckContentProtectionState__block_invoke_2;
  a1[3] = &unk_2796BD9B0;
  a1[4] = a2;
  [(HDContentProtectionManager *)a2 _observationQueue_adjustContentProtectionStateWithBlock:a1];
  *(*a3 + 72) = a4;
}

@end