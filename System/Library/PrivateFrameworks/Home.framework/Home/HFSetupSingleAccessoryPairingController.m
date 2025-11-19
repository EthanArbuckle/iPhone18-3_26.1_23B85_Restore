@interface HFSetupSingleAccessoryPairingController
- (HFSetupSingleAccessoryPairingController)initWithContext:(id)a3 discoveredAccessory:(id)a4;
- (id)cancel;
- (void)_assertValidTransitionFromPhase:(unint64_t)a3 toPhase:(unint64_t)a4;
- (void)_failPairingWithDiscoveredAccessory:(id)a3 error:(id)a4;
- (void)_finishPairingWithAccessories:(id)a3 completedInfo:(id)a4;
- (void)_tryPairing;
- (void)_updateStatusTextAndNotifyDelegate:(BOOL)a3;
- (void)addPairingObserver:(id)a3;
- (void)home:(id)a3 didAddAccessory:(id)a4;
- (void)removePairingObserver:(id)a3;
- (void)setPhase:(unint64_t)a3;
- (void)setSetupResult:(id)a3;
- (void)startWithHome:(id)a3;
@end

@implementation HFSetupSingleAccessoryPairingController

- (HFSetupSingleAccessoryPairingController)initWithContext:(id)a3 discoveredAccessory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = HFSetupSingleAccessoryPairingController;
  v9 = [(HFSetupSingleAccessoryPairingController *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, a3);
    objc_storeStrong(&v10->_discoveredAccessoryToPair, a4);
    v11 = [(HFSetupSingleAccessoryPairingController *)v10 discoveredAccessoryToPair];
    v10->_accessoryRequiresCode = [v11 requiresSetupCode];

    v10->_phase = 0;
    v12 = [MEMORY[0x277CBEAA8] date];
    phaseStartDate = v10->_phaseStartDate;
    v10->_phaseStartDate = v12;

    v14 = objc_alloc_init(MEMORY[0x277D2C900]);
    pairingFuture = v10->_pairingFuture;
    v10->_pairingFuture = v14;

    v16 = +[HFHomeKitDispatcher sharedDispatcher];
    [v16 addHomeObserver:v10];
  }

  return v10;
}

- (void)setPhase:(unint64_t)a3
{
  v42 = *MEMORY[0x277D85DE8];
  phase = self->_phase;
  if (phase != a3)
  {
    [(HFSetupSingleAccessoryPairingController *)self _assertValidTransitionFromPhase:self->_phase toPhase:a3];
    v6 = HFLogForCategory(0x3FuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [HFSetupPairingControllerUtilities descriptionForPairingPhase:phase];
      v8 = [HFSetupPairingControllerUtilities descriptionForPairingPhase:a3];
      *buf = 138412802;
      v37 = self;
      v38 = 2112;
      v39 = v7;
      v40 = 2112;
      v41 = v8;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "%@ Transitioning phase: %@ -> %@", buf, 0x20u);
    }

    self->_phase = a3;
    v9 = [MEMORY[0x277CBEAA8] date];
    [(HFSetupSingleAccessoryPairingController *)self setPhaseStartDate:v9];
  }

  v10 = [(HFSetupSingleAccessoryPairingController *)self statusTitle];
  v11 = [(HFSetupSingleAccessoryPairingController *)self statusDescription];
  [(HFSetupSingleAccessoryPairingController *)self _updateStatusTextAndNotifyDelegate:0];
  v12 = [(HFSetupSingleAccessoryPairingController *)self statusTitle];
  v13 = v10;
  v14 = v13;
  v30 = v11;
  if (v12 == v13)
  {

    goto LABEL_10;
  }

  if (v12)
  {
    v15 = [v12 isEqual:v13];

    if (!v15)
    {
      goto LABEL_14;
    }

LABEL_10:
    v16 = [(HFSetupSingleAccessoryPairingController *)self statusDescription];
    v17 = v11;
    if (v16 == v17)
    {
      v18 = 0;
    }

    else if (v16)
    {
      v18 = [v16 isEqual:v17] ^ 1;
    }

    else
    {
      v18 = 1;
    }

    if (phase == a3 && !v18)
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

LABEL_14:
LABEL_19:
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v19 = [(HFSetupSingleAccessoryPairingController *)self pairingObservers:v14];
  v20 = [v19 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v32;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v32 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v31 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v25 = self->_phase;
          v26 = [(HFSetupSingleAccessoryPairingController *)self statusTitle];
          v27 = [(HFSetupSingleAccessoryPairingController *)self statusDescription];
          [v24 pairingController:self didTransitionToPhase:v25 statusTitle:v26 statusDescription:v27];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v21);
  }

  v14 = v29;
LABEL_29:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)setSetupResult:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  p_setupResult = &self->_setupResult;
  setupResult = self->_setupResult;
  v8 = v5;
  v9 = setupResult;
  v10 = v9;
  if (v9 == v8)
  {
  }

  else
  {
    if (v8)
    {
      v11 = [(HFSetupAccessoryResult *)v8 isEqual:v9];

      if (v11)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_setupResult, a3);
    v12 = HFLogForCategory(0x3FuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v8;
      _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "Received setup result: %@", &v19, 0xCu);
    }

    if (*p_setupResult)
    {
      if ([(HFSetupSingleAccessoryPairingController *)self phase]== 1)
      {
        v13 = [(HFSetupAccessoryResult *)*p_setupResult error];

        v14 = self;
        if (!v13)
        {
          [(HFSetupSingleAccessoryPairingController *)self _tryPairing];
          goto LABEL_20;
        }

        v15 = 9;
        goto LABEL_15;
      }

      v16 = HFLogForCategory(0x3FuLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [HFSetupPairingControllerUtilities descriptionForPairingPhase:[(HFSetupSingleAccessoryPairingController *)self phase]];
        v19 = 138412290;
        v20 = v17;
        _os_log_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEFAULT, "Received setup code, but we're still in the %@ phase. Waiting until we're ready to handle the setup code before calling -_tryPairing", &v19, 0xCu);
      }
    }

    else if (![HFSetupPairingControllerUtilities isPairingPhaseIdle:[(HFSetupSingleAccessoryPairingController *)self phase]])
    {
      v14 = self;
      v15 = 1;
LABEL_15:
      [(HFSetupSingleAccessoryPairingController *)v14 setPhase:v15];
    }
  }

LABEL_20:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)addPairingObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFSetupSingleAccessoryPairingController *)self pairingObservers];

  if (!v5)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(HFSetupSingleAccessoryPairingController *)self setPairingObservers:v6];
  }

  v7 = [(HFSetupSingleAccessoryPairingController *)self pairingObservers];
  [v7 addObject:v4];
}

- (void)removePairingObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFSetupSingleAccessoryPairingController *)self pairingObservers];
  [v5 removeObject:v4];
}

- (void)startWithHome:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v28 = self;
    v29 = 2112;
    v30 = v5;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Request to start pairing controller: %@ with home: %@", buf, 0x16u);
  }

  if (!v5)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"HFSetupSingleAccessoryPairingController.m" lineNumber:142 description:{@"Invalid parameter not satisfying: %@", @"home"}];
  }

  [(HFSetupSingleAccessoryPairingController *)self setHome:v5];
  v7 = [(HFSetupSingleAccessoryPairingController *)self discoveredAccessoryToPair];
  v8 = [v7 accessory];

  if (v8)
  {
    v9 = [(HFSetupSingleAccessoryPairingController *)self context];
    v10 = [v9 setupAccessoryDescription];
    [v10 updateWithAccessory:v8];

    v11 = HFLogForCategory(0x3FuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(HFSetupSingleAccessoryPairingController *)self context];
      v13 = [v12 setupAccessoryDescription];
      *buf = 138412290;
      v28 = v13;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "HFSetupSingleAccessoryPairingController startPairing with description: %@", buf, 0xCu);
    }

    v14 = [(HFSetupSingleAccessoryPairingController *)self home];
    v15 = [(HFSetupSingleAccessoryPairingController *)self context];
    v16 = [v15 setupAccessoryDescription];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __57__HFSetupSingleAccessoryPairingController_startWithHome___block_invoke;
    v26[3] = &unk_277DF37E8;
    v26[4] = self;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __57__HFSetupSingleAccessoryPairingController_startWithHome___block_invoke_16;
    v24[3] = &unk_277DF3838;
    v24[4] = self;
    v25 = v8;
    [v14 startPairingWithAccessoryDescription:v16 progress:v26 completion:v24];
  }

  v17 = [(HFSetupSingleAccessoryPairingController *)self setupResult];
  if (v17)
  {
  }

  else if ([(HFSetupSingleAccessoryPairingController *)self accessoryRequiresCode])
  {
    v18 = self;
    v19 = 1;
    goto LABEL_15;
  }

  v20 = [(HFSetupSingleAccessoryPairingController *)self setupResult];
  v21 = [v20 error];

  v18 = self;
  if (!v21)
  {
    [(HFSetupSingleAccessoryPairingController *)self _tryPairing];
    goto LABEL_17;
  }

  v19 = 9;
LABEL_15:
  [(HFSetupSingleAccessoryPairingController *)v18 setPhase:v19];
LABEL_17:

  v22 = *MEMORY[0x277D85DE8];
}

void __57__HFSetupSingleAccessoryPairingController_startWithHome___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HFSetupSingleAccessoryPairingController_startWithHome___block_invoke_2;
  block[3] = &unk_277DF37C0;
  block[4] = *(a1 + 32);
  v8 = v5;
  v9 = a3;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __57__HFSetupSingleAccessoryPairingController_startWithHome___block_invoke_2(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) phase];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) context];
  [v4 setSetupAccessoryDescription:v3];

  v5 = *(a1 + 48);
  v6 = [*(a1 + 32) phase];
  v7 = [*(a1 + 32) context];
  v8 = [*(a1 + 32) discoveredAccessoryToPair];
  v9 = [*(a1 + 32) setupResult];
  v10 = [*(a1 + 32) home];
  v11 = *(a1 + 32);
  [v11 setPhase:{+[HFSetupPairingControllerUtilities processFirstPartyAccessorySetupProgressChange:currentPhase:context:discoveredAccessory:setupResult:home:callerClass:](HFSetupPairingControllerUtilities, "processFirstPartyAccessorySetupProgressChange:currentPhase:context:discoveredAccessory:setupResult:home:callerClass:", v5, v6, v7, v8, v9, v10, objc_opt_class())}];

  v12 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    v14 = objc_opt_class();
    v15 = [HFSetupPairingControllerUtilities descriptionForPairingPhase:v2];
    v16 = [*(a1 + 32) phase];
    v17 = +[HFSetupPairingControllerUtilities descriptionForPairingPhase:](HFSetupPairingControllerUtilities, "descriptionForPairingPhase:", [*(a1 + 32) phase]);
    v18 = *(a1 + 48);
    *buf = 138413570;
    v21 = v14;
    v22 = 2048;
    v23 = v2;
    v24 = 2112;
    v25 = v15;
    v26 = 2048;
    v27 = v16;
    v28 = 2112;
    v29 = v17;
    v30 = 2048;
    v31 = v18;
    _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "%@ pairing phase transition %ld (%@) -> %ld (%@).  Progress: %ld", buf, 0x3Eu);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __57__HFSetupSingleAccessoryPairingController_startWithHome___block_invoke_16(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HFSetupSingleAccessoryPairingController_startWithHome___block_invoke_2_17;
  block[3] = &unk_277DF3280;
  v10 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v15 = v9;
  v16 = v7;
  v17 = v8;
  v18 = v10;
  v11 = v8;
  v12 = v7;
  v13 = v9;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __57__HFSetupSingleAccessoryPairingController_startWithHome___block_invoke_2_17(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) phase] == 9)
  {
    v2 = HFLogForCategory(0x3FuLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 40);
      *buf = 138412290;
      v28 = v3;
      _os_log_error_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_ERROR, "HFSetupSingleAccessoryPairingController startPairing finished with error: %@, but pairing is already in a failed state, so ignoring completion. Maybe cancelling the pairing operation failed.", buf, 0xCu);
    }

LABEL_8:

    goto LABEL_9;
  }

  if (*(a1 + 40))
  {
    v4 = HFLogForCategory(0x3FuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 40);
      *buf = 138412290;
      v28 = v20;
      _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "HFSetupSingleAccessoryPairingController startPairing finished with error: %@", buf, 0xCu);
    }

    v5 = *(a1 + 32);
    v6 = [v5 discoveredAccessoryToPair];
    [v5 _failPairingWithDiscoveredAccessory:v6 error:*(a1 + 40)];

    v2 = [*(a1 + 32) pairingFuture];
    [v2 finishWithError:*(a1 + 40)];
    goto LABEL_8;
  }

  v8 = [*(a1 + 48) count];
  v9 = HFLogForCategory(0x3FuLL);
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 48) hf_prettyDescription];
      v12 = *(a1 + 56);
      *buf = 138412546;
      v28 = v11;
      v29 = 2112;
      v30 = v12;
      _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "HFSetupSingleAccessoryPairingController startPairing finished with accessories: %@ info: %@", buf, 0x16u);
    }

    v13 = *(a1 + 32);
    v14 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 48)];
    [v13 _finishPairingWithAccessories:v14 completedInfo:*(a1 + 56)];

    v15 = +[HFHomeKitDispatcher sharedDispatcher];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __57__HFSetupSingleAccessoryPairingController_startWithHome___block_invoke_20;
    v24 = &unk_277DF3810;
    v25 = *(a1 + 32);
    v26 = *(a1 + 64);
    [v15 dispatchHomeObserverMessage:&v21 sender:*(a1 + 32)];

    v16 = [*(a1 + 32) pairingFuture];
    v17 = NAEmptyResult();
    [v16 finishWithResult:v17];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "HFSetupSingleAccessoryPairingController startPairing finished with error: nil but no paired accessories; treating as a failure", buf, 2u);
    }

    v18 = [*(a1 + 32) pairingFuture];
    v19 = [MEMORY[0x277CCA9B8] na_genericError];
    [v18 finishWithError:v19];
  }

LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
}

void __57__HFSetupSingleAccessoryPairingController_startWithHome___block_invoke_20(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    [v4 home:v3 didAddAccessory:*(a1 + 40)];
  }
}

- (id)cancel
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [HFSetupPairingControllerUtilities isPairingPhaseIdle:[(HFSetupSingleAccessoryPairingController *)self phase]];
  v4 = HFLogForCategory(0x3FuLL);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 138412290;
      v31 = self;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Cancel requested for pairing controller: %@, but we're already in an idle state, so ignoring", buf, 0xCu);
    }

    v6 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    if (v5)
    {
      v7 = [(HFSetupSingleAccessoryPairingController *)self discoveredAccessoryToPair];
      *buf = 138412290;
      v31 = v7;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Cancel requested for accessory: (%@)", buf, 0xCu);
    }

    v6 = [MEMORY[0x277D2C900] futureWithNoResult];
    v8 = [(HFSetupSingleAccessoryPairingController *)self discoveredAccessoryToPair];
    v9 = [MEMORY[0x277CCA9B8] na_cancelledError];
    [v8 updateStatus:3 error:v9];

    v10 = [(HFSetupSingleAccessoryPairingController *)self discoveredAccessoryToPair];
    v11 = [v10 uniqueIdentifier];

    if (v11)
    {
      v12 = [MEMORY[0x277CCA9B8] na_cancelledError];
      v13 = [MEMORY[0x277CCA9B8] hf_mappedHMError:v12];
      v14 = [(HFSetupSingleAccessoryPairingController *)self context];
      v15 = [v14 setupAccessoryDescription];
      [v15 setCancellationReason:v13];

      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __49__HFSetupSingleAccessoryPairingController_cancel__block_invoke;
      v28[3] = &unk_277DF2C68;
      v28[4] = self;
      v16 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v28];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __49__HFSetupSingleAccessoryPairingController_cancel__block_invoke_2;
      v27[3] = &unk_277DF2D08;
      v27[4] = self;
      v17 = [v16 addFailureBlock:v27];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __49__HFSetupSingleAccessoryPairingController_cancel__block_invoke_27;
      v26[3] = &unk_277DF2720;
      v26[4] = self;
      v18 = [v16 addSuccessBlock:v26];
      v19 = MEMORY[0x277D2C900];
      v20 = [(HFSetupSingleAccessoryPairingController *)self pairingFuture];
      v29[0] = v20;
      v29[1] = v16;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
      v22 = [MEMORY[0x277D2C938] mainThreadScheduler];
      v23 = [v19 combineAllFutures:v21 ignoringErrors:1 scheduler:v22];

      v6 = v23;
    }

    [(HFSetupSingleAccessoryPairingController *)self setPhase:9];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v6;
}

void __49__HFSetupSingleAccessoryPairingController_cancel__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v3 home];
  v5 = [*(a1 + 32) context];
  v6 = [v5 setupAccessoryDescription];
  [v7 cancelPairingForAccessoryWithDescription:v6 completionHandler:v4];
}

void __49__HFSetupSingleAccessoryPairingController_cancel__block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = [*(a1 + 32) discoveredAccessoryToPair];
    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Failed to cancel pairing for accessory: (%@). Error: %@", &v8, 0x16u);
  }

  v5 = [*(a1 + 32) pairingFuture];
  [v5 finishWithNoResult];

  v6 = *MEMORY[0x277D85DE8];
}

void __49__HFSetupSingleAccessoryPairingController_cancel__block_invoke_27(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) discoveredAccessoryToPair];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "Cancel done for accessory: (%@)", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) pairingFuture];
  [v4 finishWithNoResult];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_tryPairing
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(HFSetupSingleAccessoryPairingController *)self discoveredAccessoryToPair];
    if ([(HFSetupSingleAccessoryPairingController *)self accessoryRequiresCode])
    {
      v6 = @"requires";
    }

    else
    {
      v6 = @"does not require";
    }

    v7 = [(HFSetupSingleAccessoryPairingController *)self setupResult];
    v8 = [v7 setupPayload];
    *buf = 138412802;
    v29 = v5;
    v30 = 2112;
    v31 = v6;
    v32 = 2112;
    v33 = v8;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Trying to pair with accessory: %@ (%@ code) payload: %@", buf, 0x20u);
  }

  v9 = [(HFSetupSingleAccessoryPairingController *)self setupResult];
  if ([v9 isValidForPairing])
  {
    goto LABEL_7;
  }

  v10 = [(HFSetupSingleAccessoryPairingController *)self accessoryRequiresCode];

  if (v10)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"HFSetupSingleAccessoryPairingController.m" lineNumber:272 description:{@"Invalid parameter not satisfying: %@", @"self.setupResult.isValidForPairing || !self.accessoryRequiresCode"}];
LABEL_7:
  }

  v11 = [(HFSetupSingleAccessoryPairingController *)self discoveredAccessoryToPair];
  v12 = v11 == 0;

  if (v12)
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"HFSetupSingleAccessoryPairingController.m" lineNumber:273 description:{@"Invalid parameter not satisfying: %@", @"self.discoveredAccessoryToPair"}];
  }

  v13 = [(HFSetupSingleAccessoryPairingController *)self discoveredAccessoryToPair];
  [v13 updateStatus:1 error:0];

  [(HFSetupSingleAccessoryPairingController *)self setPhase:4];
  v14 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(HFSetupSingleAccessoryPairingController *)self discoveredAccessoryToPair];
    *buf = 138412290;
    v29 = v15;
    _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "Trying to pair with accessory: %@. Calling -continuePairing.", buf, 0xCu);
  }

  if ([(HFSetupSingleAccessoryPairingController *)self accessoryRequiresCode])
  {
    objc_initWeak(buf, self);
    v16 = [(HFSetupSingleAccessoryPairingController *)self home];
    v17 = [(HFSetupSingleAccessoryPairingController *)self discoveredAccessoryToPair];
    v18 = [v17 uniqueIdentifier];
    v19 = [(HFSetupSingleAccessoryPairingController *)self setupResult];
    v20 = [v19 setupPayload];
    v21 = [v20 setupCode];
    v22 = [(HFSetupSingleAccessoryPairingController *)self discoveredAccessoryToPair];
    v23 = [v22 rawSetupPayloadString];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __54__HFSetupSingleAccessoryPairingController__tryPairing__block_invoke;
    v26[3] = &unk_277DF3860;
    objc_copyWeak(&v27, buf);
    [v16 continuePairingForAccessoryWithUUID:v18 setupCode:v21 onboardingSetupPayloadString:v23 completionHandler:v26];

    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __54__HFSetupSingleAccessoryPairingController__tryPairing__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v5)
  {
    v4 = [WeakRetained discoveredAccessoryToPair];
    [WeakRetained _failPairingWithDiscoveredAccessory:v4 error:v5];
  }
}

- (void)_updateStatusTextAndNotifyDelegate:(BOOL)a3
{
  v3 = a3;
  v45 = *MEMORY[0x277D85DE8];
  v38 = 0;
  v39 = 0;
  v5 = [(HFSetupSingleAccessoryPairingController *)self phase];
  v6 = [(HFSetupSingleAccessoryPairingController *)self phaseStartDate];
  v7 = [(HFSetupSingleAccessoryPairingController *)self discoveredAccessoryToPair];
  v8 = [(HFSetupSingleAccessoryPairingController *)self setupResult];
  v9 = [(HFSetupSingleAccessoryPairingController *)self context];
  [HFSetupPairingControllerUtilities getStatusTitle:&v39 statusDescription:&v38 forPairingPhase:v5 phaseStartDate:v6 discoveredAccessory:v7 setupResult:v8 context:v9 setupError:0];
  v10 = v39;
  v11 = v38;

  v12 = [(HFSetupSingleAccessoryPairingController *)self statusTitle];
  v13 = v10;
  v14 = v12;
  v15 = v14;
  if (v13 == v14)
  {
  }

  else
  {
    v16 = v14;
    if (!v13)
    {
LABEL_12:

LABEL_13:
      goto LABEL_14;
    }

    v17 = [v13 isEqual:v14];

    if (!v17)
    {
      goto LABEL_13;
    }
  }

  v18 = [(HFSetupSingleAccessoryPairingController *)self statusDescription];
  v19 = v11;
  v20 = v18;
  v16 = v20;
  if (v19 == v20)
  {

LABEL_27:
    goto LABEL_28;
  }

  if (!v19)
  {

    goto LABEL_12;
  }

  v21 = [v19 isEqual:v20];

  if (v21)
  {
    goto LABEL_28;
  }

LABEL_14:
  [(HFSetupSingleAccessoryPairingController *)self setStatusTitle:v13];
  [(HFSetupSingleAccessoryPairingController *)self setStatusDescription:v11];
  v22 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v42 = v13;
    v43 = 2112;
    v44 = v11;
    _os_log_impl(&dword_20D9BF000, v22, OS_LOG_TYPE_DEFAULT, "Updating status title: %@ description: %@", buf, 0x16u);
  }

  if (v3)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v15 = [(HFSetupSingleAccessoryPairingController *)self pairingObservers];
    v23 = [v15 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v23)
    {
      v24 = v23;
      v32 = v13;
      v33 = v11;
      v25 = *v35;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(v15);
          }

          v27 = *(*(&v34 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v28 = [(HFSetupSingleAccessoryPairingController *)self phase];
            v29 = [(HFSetupSingleAccessoryPairingController *)self statusTitle];
            v30 = [(HFSetupSingleAccessoryPairingController *)self statusDescription];
            [v27 pairingController:self didTransitionToPhase:v28 statusTitle:v29 statusDescription:v30];
          }
        }

        v24 = [v15 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v24);
      v13 = v32;
      v11 = v33;
    }

    goto LABEL_27;
  }

LABEL_28:

  v31 = *MEMORY[0x277D85DE8];
}

- (void)home:(id)a3 didAddAccessory:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(HFSetupSingleAccessoryPairingController *)self home];

  if (v8 == v7)
  {
    v9 = HFLogForCategory(0x3FuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(HFSetupSingleAccessoryPairingController *)self discoveredAccessoryToPair];
      *buf = 138412546;
      v24 = v6;
      v25 = 2112;
      v26 = v10;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Notified that an accessory (%@) was added to the home. Our accessory to pair is: %@", buf, 0x16u);
    }

    v11 = [(HFSetupSingleAccessoryPairingController *)self discoveredAccessoryToPair];
    v12 = [v11 uniqueIdentifier];
    v13 = [v6 uuid];
    if (![v12 isEqual:v13])
    {

      goto LABEL_8;
    }

    v14 = [HFSetupPairingControllerUtilities isPairingPhaseIdle:[(HFSetupSingleAccessoryPairingController *)self phase]];

    if (!v14)
    {
      v15 = [(HFSetupSingleAccessoryPairingController *)self discoveredAccessoryToPair];
      [v15 setAccessory:v6];

      v16 = [MEMORY[0x277CBEB98] setWithObject:v6];
      v17 = MEMORY[0x277CBEB98];
      v18 = [v6 uniqueIdentifiersForBridgedAccessories];
      v19 = [v17 setWithArray:v18];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __64__HFSetupSingleAccessoryPairingController_home_didAddAccessory___block_invoke;
      v22[3] = &unk_277DF38B0;
      v22[4] = self;
      v20 = [v19 na_map:v22];
      v11 = [v16 setByAddingObjectsFromSet:v20];

      [(HFSetupSingleAccessoryPairingController *)self _finishPairingWithAccessories:v11 completedInfo:0];
LABEL_8:
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

id __64__HFSetupSingleAccessoryPairingController_home_didAddAccessory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) home];
  v5 = [v4 accessories];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__HFSetupSingleAccessoryPairingController_home_didAddAccessory___block_invoke_2;
  v9[3] = &unk_277DF3888;
  v10 = v3;
  v6 = v3;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __64__HFSetupSingleAccessoryPairingController_home_didAddAccessory___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)_finishPairingWithAccessories:(id)a3 completedInfo:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 hf_prettyDescription];
    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Finished pairing with accessories: %@, info: %@", &v12, 0x16u);
  }

  v10 = [(HFSetupSingleAccessoryPairingController *)self discoveredAccessoryToPair];
  [v10 updateStatus:2 error:0];

  [(HFSetupSingleAccessoryPairingController *)self setPairedAccessories:v6];
  [(HFSetupSingleAccessoryPairingController *)self setCompletedInfo:v7];
  [(HFSetupSingleAccessoryPairingController *)self setPhase:10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_failPairingWithDiscoveredAccessory:(id)a3 error:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([(HFSetupSingleAccessoryPairingController *)self phase]!= 9)
  {
    v6 = [(HFSetupSingleAccessoryPairingController *)self discoveredAccessoryToPair];
    [v6 updateStatus:3 error:v5];

    v7 = HFLogForCategory(0x3FuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [(HFSetupSingleAccessoryPairingController *)self discoveredAccessoryToPair];
      v10 = 138412546;
      v11 = v9;
      v12 = 2112;
      v13 = v5;
      _os_log_error_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_ERROR, "Failed pairing with accessory: %@ error: %@", &v10, 0x16u);
    }

    [(HFSetupSingleAccessoryPairingController *)self setPhase:9];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_assertValidTransitionFromPhase:(unint64_t)a3 toPhase:(unint64_t)a4
{
  if (a4 - 6 >= 4)
  {
    if (a3 <= 3)
    {
      if (a3)
      {
        if (a3 == 1)
        {
          switch(a4)
          {
            case 3uLL:
              return;
            case 0xAuLL:
              return;
            case 4uLL:
              v8 = [(HFSetupSingleAccessoryPairingController *)self setupResult];

              if (v8)
              {
                return;
              }

              break;
          }
        }

        else if (a3 == 3)
        {
          return;
        }
      }

      else if (a4 == 1 || a4 == 4)
      {
        return;
      }
    }

    else if (a3 - 5 < 3 || a3 == 4 && a4 <= 0xA && ((1 << a4) & 0x422) != 0)
    {
      return;
    }

    v11 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [HFSetupPairingControllerUtilities descriptionForPairingPhase:a3];
    v10 = [HFSetupPairingControllerUtilities descriptionForPairingPhase:a4];
    [v11 handleFailureInMethod:a2 object:self file:@"HFSetupSingleAccessoryPairingController.m" lineNumber:415 description:{@"Invalid phase transition: %@ -> %@", v9, v10}];
  }
}

@end