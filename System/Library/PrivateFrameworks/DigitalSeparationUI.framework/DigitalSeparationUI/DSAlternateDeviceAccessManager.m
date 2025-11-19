@interface DSAlternateDeviceAccessManager
+ (id)sharedManager;
- (BOOL)hasAlternateAccess;
- (BOOL)hasAlternateFaceID;
- (BOOL)hasAlternateTouchID;
- (DSAlternateDeviceAccessManager)init;
- (id)mirroringDevices;
- (id)syncingDevices;
- (void)fetchAccessMethodsWithCompletion:(id)a3;
- (void)performFetchWithCompletion:(id)a3;
- (void)resetAllAccessMethodsWithCompletion:(id)a3;
- (void)sendSummaryAnalyticsWithReviewAction:(BOOL)a3 resetAction:(BOOL)a4 exit:(BOOL)a5;
- (void)startPresentationWithNavigationController:(id)a3;
@end

@implementation DSAlternateDeviceAccessManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__DSAlternateDeviceAccessManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager___utility;

  return v2;
}

uint64_t __47__DSAlternateDeviceAccessManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedManager___utility;
  sharedManager___utility = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (DSAlternateDeviceAccessManager)init
{
  v10.receiver = self;
  v10.super_class = DSAlternateDeviceAccessManager;
  v2 = [(DSAlternateDeviceAccessManager *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_providerLock._os_unfair_lock_opaque = 0;
    v4 = os_log_create("com.apple.DigitalSeparation", "DSAlternateDeviceAccessManager");
    v5 = DSLog_11;
    DSLog_11 = v4;

    v6 = dispatch_queue_create("DeviceAssetProviderQueue", 0);
    [(DSAlternateDeviceAccessManager *)v3 setWorkQueue:v6];

    v7 = objc_alloc_init(MEMORY[0x277D05488]);
    [(DSAlternateDeviceAccessManager *)v3 setContinuityStore:v7];

    v8 = objc_alloc_init(MEMORY[0x277D054E0]);
    [(DSAlternateDeviceAccessManager *)v3 setRemotePairingStore:v8];
  }

  return v3;
}

- (void)startPresentationWithNavigationController:(id)a3
{
  v4 = a3;
  v5 = [(DSAlternateDeviceAccessManager *)self delegate];

  if (v5)
  {
    v6 = [(DSAlternateDeviceAccessManager *)self delegate];
    [v6 tearDown];
  }

  v7 = [[DSAlternateDeviceAccessDelegate alloc] initWithPresentingViewController:v4];

  [(DSAlternateDeviceAccessManager *)self setDelegate:v7];
  v8 = [(DSAlternateDeviceAccessManager *)self delegate];
  [v8 startFlowWithType:2];
}

- (void)fetchAccessMethodsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = DSLog_11;
  if (os_log_type_enabled(DSLog_11, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_248C7E000, v5, OS_LOG_TYPE_INFO, "Fetching alternate device access methods", buf, 2u);
  }

  objc_initWeak(buf, self);
  v6 = [(DSAlternateDeviceAccessManager *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__DSAlternateDeviceAccessManager_fetchAccessMethodsWithCompletion___block_invoke;
  v8[3] = &unk_278F75AC8;
  objc_copyWeak(&v10, buf);
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __67__DSAlternateDeviceAccessManager_fetchAccessMethodsWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained performFetchWithCompletion:*(a1 + 32)];
}

- (void)performFetchWithCompletion:(id)a3
{
  v4 = a3;
  v5 = os_signpost_id_generate(DSLog_11);
  v6 = DSLog_11;
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_248C7E000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "fetch", " enableTelemetry=YES ", buf, 2u);
  }

  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [(DSAlternateDeviceAccessManager *)self continuityStore];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__DSAlternateDeviceAccessManager_performFetchWithCompletion___block_invoke;
  v12[3] = &unk_278F75BF0;
  v13 = v8;
  v14 = self;
  v15 = v4;
  v16 = v5;
  v10 = v4;
  v11 = v8;
  [v9 fetchPairedDevicesWithCompletion:v12];
}

void __61__DSAlternateDeviceAccessManager_performFetchWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(DSLog_11, OS_LOG_TYPE_ERROR))
    {
      __61__DSAlternateDeviceAccessManager_performFetchWithCompletion___block_invoke_cold_1();
    }

    [*(a1 + 32) addObject:v6];
  }

  v7 = [*(a1 + 40) remotePairingStore];
  v8 = [*(a1 + 40) workQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__DSAlternateDeviceAccessManager_performFetchWithCompletion___block_invoke_308;
  v14[3] = &unk_278F75BC8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v15 = v9;
  v16 = v10;
  v12 = *(a1 + 56);
  v17 = v5;
  v19 = v12;
  v18 = v11;
  v13 = v5;
  [v7 fetchPairedDevicesOnQueue:v8 completion:v14];
}

void __61__DSAlternateDeviceAccessManager_performFetchWithCompletion___block_invoke_308(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (os_log_type_enabled(DSLog_11, OS_LOG_TYPE_ERROR))
    {
      __61__DSAlternateDeviceAccessManager_performFetchWithCompletion___block_invoke_308_cold_1();
    }

    [*(a1 + 32) addObject:v5];
  }

  os_unfair_lock_lock((*(a1 + 40) + 8));
  [*(a1 + 40) setHasMultipleFaceIDs:{+[DSBiometricManager pearlIdentityCount](DSBiometricManager, "pearlIdentityCount") > 1}];
  [*(a1 + 40) setHasMultipleTouchIDs:{+[DSBiometricManager touchIDCount](DSBiometricManager, "touchIDCount") > 1}];
  [*(a1 + 40) setContinuityDevices:*(a1 + 48)];
  [*(a1 + 40) setPairedComputers:v6];
  os_unfair_lock_unlock((*(a1 + 40) + 8));
  atomic_store(0, (*(a1 + 40) + 12));
  [*(a1 + 40) setFetchCompletedTime:clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW)];
  v7 = DSLog_11;
  if (os_log_type_enabled(DSLog_11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_248C7E000, v7, OS_LOG_TYPE_INFO, "Finished fetching alternate device access methods", buf, 2u);
  }

  v8 = DSLog_11;
  v9 = v8;
  v10 = *(a1 + 64);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&dword_248C7E000, v9, OS_SIGNPOST_INTERVAL_END, v10, "fetch", " enableTelemetry=YES ", v12, 2u);
  }

  if ([*(a1 + 32) count])
  {
    v11 = [MEMORY[0x277D05498] errorWithCode:11 underlyingErrors:*(a1 + 32)];
  }

  else
  {
    v11 = 0;
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56), [*(a1 + 40) hasAlternateAccess], v11);
}

- (void)resetAllAccessMethodsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = os_signpost_id_generate(DSLog_11);
  v6 = DSLog_11;
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_248C7E000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "stopAll", " enableTelemetry=YES ", buf, 2u);
  }

  v8 = dispatch_group_create();
  if ([(DSAlternateDeviceAccessManager *)self hasAlternateFaceID])
  {
    v9 = [DSBiometricManager alloc];
    v10 = [(DSAlternateDeviceAccessManager *)self authContext];
    v11 = [(DSBiometricManager *)v9 initWithContext:v10];

    [(DSBiometricManager *)v11 deleteAllPearlIdentities];
  }

  else if ([(DSAlternateDeviceAccessManager *)self hasAlternateTouchID])
  {
    +[DSBiometricManager deleteAllTouchIDs];
  }

  v12 = [MEMORY[0x277CBEB18] array];
  v13 = [MEMORY[0x277D262A0] sharedConnection];
  if ([v13 recoveryPasscodeAvailable])
  {
    dispatch_group_enter(v8);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __70__DSAlternateDeviceAccessManager_resetAllAccessMethodsWithCompletion___block_invoke;
    v33[3] = &unk_278F759E8;
    v34 = v12;
    v35 = v8;
    [v13 clearRecoveryPasscodeWithCompletion:v33];
  }

  dispatch_group_enter(v8);
  v14 = [(DSAlternateDeviceAccessManager *)self continuityStore];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __70__DSAlternateDeviceAccessManager_resetAllAccessMethodsWithCompletion___block_invoke_2;
  v30[3] = &unk_278F759E8;
  v15 = v12;
  v31 = v15;
  v16 = v8;
  v32 = v16;
  [v14 unpairAllDevicesWithCompletion:v30];

  dispatch_group_enter(v16);
  v17 = [(DSAlternateDeviceAccessManager *)self remotePairingStore];
  v18 = [(DSAlternateDeviceAccessManager *)self workQueue];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __70__DSAlternateDeviceAccessManager_resetAllAccessMethodsWithCompletion___block_invoke_315;
  v27[3] = &unk_278F759E8;
  v19 = v15;
  v28 = v19;
  v29 = v16;
  v20 = v16;
  [v17 removeAllPairedDevicesOnQueue:v18 completion:v27];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__DSAlternateDeviceAccessManager_resetAllAccessMethodsWithCompletion___block_invoke_316;
  block[3] = &unk_278F75C18;
  v25 = v4;
  v26 = v5;
  v24 = v19;
  v21 = v4;
  v22 = v19;
  dispatch_group_notify(v20, MEMORY[0x277D85CD0], block);
}

void __70__DSAlternateDeviceAccessManager_resetAllAccessMethodsWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addObject:a2];
  }

  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void __70__DSAlternateDeviceAccessManager_resetAllAccessMethodsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(DSLog_11, OS_LOG_TYPE_ERROR))
    {
      __70__DSAlternateDeviceAccessManager_resetAllAccessMethodsWithCompletion___block_invoke_2_cold_1();
    }

    [*(a1 + 32) addObject:v3];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __70__DSAlternateDeviceAccessManager_resetAllAccessMethodsWithCompletion___block_invoke_315(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(DSLog_11, OS_LOG_TYPE_ERROR))
    {
      __70__DSAlternateDeviceAccessManager_resetAllAccessMethodsWithCompletion___block_invoke_315_cold_1();
    }

    [*(a1 + 32) addObject:v3];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __70__DSAlternateDeviceAccessManager_resetAllAccessMethodsWithCompletion___block_invoke_316(uint64_t a1)
{
  v2 = DSLog_11;
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_248C7E000, v3, OS_SIGNPOST_INTERVAL_END, v4, "stopAll", " enableTelemetry=YES ", v6, 2u);
  }

  if ([*(a1 + 32) count])
  {
    v5 = [MEMORY[0x277D05498] errorWithCode:12 underlyingErrors:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)sendSummaryAnalyticsWithReviewAction:(BOOL)a3 resetAction:(BOOL)a4 exit:(BOOL)a5
{
  if (a4)
  {
    v6 = [(DSAlternateDeviceAccessManager *)self mirroringDevices];
    [v6 count];

    v7 = [(DSAlternateDeviceAccessManager *)self syncingDevices];
    [v7 count];

    if (![(DSAlternateDeviceAccessManager *)self hasAlternateFaceID])
    {
      [(DSAlternateDeviceAccessManager *)self hasAlternateTouchID];
    }
  }

  AnalyticsSendEventLazy();
}

id __88__DSAlternateDeviceAccessManager_sendSummaryAnalyticsWithReviewAction_resetAction_exit___block_invoke(uint64_t a1)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = @"didReviewAccess";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v10[0] = v2;
  v9[1] = @"didResetAccess";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 41)];
  v10[1] = v3;
  v9[2] = @"didGoToSafetyCheck";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 42)];
  v10[2] = v4;
  v9[3] = @"numMethodsReset";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
  v10[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)mirroringDevices
{
  os_unfair_lock_lock(&self->_providerLock);
  v3 = [(DSAlternateDeviceAccessManager *)self continuityDevices];
  v4 = [v3 valueForKey:@"name"];

  os_unfair_lock_unlock(&self->_providerLock);

  return v4;
}

- (id)syncingDevices
{
  os_unfair_lock_lock(&self->_providerLock);
  v3 = [(DSAlternateDeviceAccessManager *)self pairedComputers];
  v4 = [v3 valueForKey:@"deviceName"];

  os_unfair_lock_unlock(&self->_providerLock);

  return v4;
}

- (BOOL)hasAlternateFaceID
{
  os_unfair_lock_lock(&self->_providerLock);
  v3 = [(DSAlternateDeviceAccessManager *)self hasMultipleFaceIDs];
  os_unfair_lock_unlock(&self->_providerLock);
  return v3;
}

- (BOOL)hasAlternateTouchID
{
  os_unfair_lock_lock(&self->_providerLock);
  v3 = [(DSAlternateDeviceAccessManager *)self hasMultipleTouchIDs];
  os_unfair_lock_unlock(&self->_providerLock);
  return v3;
}

- (BOOL)hasAlternateAccess
{
  os_unfair_lock_lock(&self->_providerLock);
  if ([(DSAlternateDeviceAccessManager *)self hasMultipleFaceIDs]|| [(DSAlternateDeviceAccessManager *)self hasMultipleTouchIDs])
  {
    v3 = 1;
  }

  else
  {
    v4 = [(DSAlternateDeviceAccessManager *)self continuityDevices];
    if ([v4 count])
    {
      v3 = 1;
    }

    else
    {
      v5 = [(DSAlternateDeviceAccessManager *)self pairedComputers];
      v3 = [v5 count] != 0;
    }
  }

  os_unfair_lock_unlock(&self->_providerLock);
  return v3;
}

void __61__DSAlternateDeviceAccessManager_performFetchWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_248C7E000, v0, v1, "Error fetching continuity devices: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __61__DSAlternateDeviceAccessManager_performFetchWithCompletion___block_invoke_308_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_248C7E000, v0, v1, "Error fetching remote devices: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __70__DSAlternateDeviceAccessManager_resetAllAccessMethodsWithCompletion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_248C7E000, v0, v1, "Error disconnecting continuity devices: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __70__DSAlternateDeviceAccessManager_resetAllAccessMethodsWithCompletion___block_invoke_315_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_248C7E000, v0, v1, "Error unpairing remote devices: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end