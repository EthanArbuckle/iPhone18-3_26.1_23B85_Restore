@interface HFSetupAutomaticDiscoveryPairingController
- (HFSetupAutomaticDiscoveryPairingController)initWithContext:(id)a3;
- (NSString)description;
- (id)_sendCancellationRequestToHomeKit;
- (id)cancel;
- (void)_assertValidTransitionFromPhase:(unint64_t)a3 toPhase:(unint64_t)a4;
- (void)_failPairingWithError:(id)a3;
- (void)_finishPairingWithAccessories:(id)a3 completedInfo:(id)a4;
- (void)_updateStatusTextAndNotifyDelegate:(BOOL)a3;
- (void)addPairingObserver:(id)a3;
- (void)dealloc;
- (void)removePairingObserver:(id)a3;
- (void)setPhase:(unint64_t)a3;
- (void)setSetupResult:(id)a3;
- (void)startWithHome:(id)a3;
@end

@implementation HFSetupAutomaticDiscoveryPairingController

- (HFSetupAutomaticDiscoveryPairingController)initWithContext:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = HFSetupAutomaticDiscoveryPairingController;
  v6 = [(HFSetupAutomaticDiscoveryPairingController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
    v7->_phase = 0;
    v8 = [MEMORY[0x277CBEAA8] date];
    phaseStartDate = v7->_phaseStartDate;
    v7->_phaseStartDate = v8;

    v10 = objc_alloc_init(MEMORY[0x277D2C900]);
    pairingFuture = v7->_pairingFuture;
    v7->_pairingFuture = v10;
  }

  return v7;
}

- (void)dealloc
{
  [(NSTimer *)self->_accessoryNotFoundSoftTimeoutTimer invalidate];
  [(NSTimer *)self->_accessoryNotFoundFatalTimeoutTimer invalidate];
  v3.receiver = self;
  v3.super_class = HFSetupAutomaticDiscoveryPairingController;
  [(HFSetupAutomaticDiscoveryPairingController *)&v3 dealloc];
}

- (void)setPhase:(unint64_t)a3
{
  v53 = *MEMORY[0x277D85DE8];
  phase = self->_phase;
  if (phase != a3)
  {
    [(HFSetupAutomaticDiscoveryPairingController *)self _assertValidTransitionFromPhase:self->_phase toPhase:a3];
    v6 = HFLogForCategory(0x3FuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [HFSetupPairingControllerUtilities descriptionForPairingPhase:phase];
      v8 = [HFSetupPairingControllerUtilities descriptionForPairingPhase:a3];
      *buf = 138412802;
      v48 = self;
      v49 = 2112;
      v50 = v7;
      v51 = 2112;
      v52 = v8;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "%@ Transitioning phase: %@ -> %@", buf, 0x20u);
    }

    self->_phase = a3;
    v9 = [MEMORY[0x277CBEAA8] date];
    [(HFSetupAutomaticDiscoveryPairingController *)self setPhaseStartDate:v9];

    v10 = [(HFSetupAutomaticDiscoveryPairingController *)self accessoryNotFoundSoftTimeoutTimer];
    [v10 invalidate];

    [(HFSetupAutomaticDiscoveryPairingController *)self setAccessoryNotFoundSoftTimeoutTimer:0];
    v11 = [(HFSetupAutomaticDiscoveryPairingController *)self accessoryNotFoundFatalTimeoutTimer];
    [v11 invalidate];

    [(HFSetupAutomaticDiscoveryPairingController *)self setAccessoryNotFoundFatalTimeoutTimer:0];
    if (a3 == 2)
    {
      objc_initWeak(buf, self);
      v12 = MEMORY[0x277CBEBB8];
      +[HFSetupPairingControllerUtilities accessoryDiscoverySoftTimeout];
      v14 = v13;
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __55__HFSetupAutomaticDiscoveryPairingController_setPhase___block_invoke;
      v44[3] = &unk_277DF9BF0;
      objc_copyWeak(&v45, buf);
      v15 = [v12 scheduledTimerWithTimeInterval:0 repeats:v44 block:v14];
      [(HFSetupAutomaticDiscoveryPairingController *)self setAccessoryNotFoundSoftTimeoutTimer:v15];

      v16 = MEMORY[0x277CBEBB8];
      +[HFSetupPairingControllerUtilities accessoryDiscoveryFatalTimeout];
      v18 = v17;
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __55__HFSetupAutomaticDiscoveryPairingController_setPhase___block_invoke_7;
      v42[3] = &unk_277DF9BF0;
      objc_copyWeak(&v43, buf);
      v19 = [v16 scheduledTimerWithTimeInterval:0 repeats:v42 block:v18];
      [(HFSetupAutomaticDiscoveryPairingController *)self setAccessoryNotFoundFatalTimeoutTimer:v19];

      objc_destroyWeak(&v43);
      objc_destroyWeak(&v45);
      objc_destroyWeak(buf);
    }
  }

  v20 = [(HFSetupAutomaticDiscoveryPairingController *)self statusTitle];
  v37 = [(HFSetupAutomaticDiscoveryPairingController *)self statusDescription];
  [(HFSetupAutomaticDiscoveryPairingController *)self _updateStatusTextAndNotifyDelegate:0];
  v21 = [(HFSetupAutomaticDiscoveryPairingController *)self statusTitle];
  v22 = v20;
  v36 = v22;
  if (v21 == v22)
  {

    goto LABEL_11;
  }

  if (v21)
  {
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_15;
    }

LABEL_11:
    v24 = [(HFSetupAutomaticDiscoveryPairingController *)self statusDescription];
    v25 = v37;
    if (v24 == v25)
    {
      v26 = 0;
    }

    else if (v24)
    {
      v26 = [v24 isEqual:v25] ^ 1;
    }

    else
    {
      v26 = 1;
    }

    if (((phase != a3) | v26) != 1)
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

LABEL_15:
LABEL_19:
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v27 = [(HFSetupAutomaticDiscoveryPairingController *)self pairingObservers];
  v28 = [v27 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v28)
  {
    v29 = *v39;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v39 != v29)
        {
          objc_enumerationMutation(v27);
        }

        v31 = *(*(&v38 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v32 = self->_phase;
          v33 = [(HFSetupAutomaticDiscoveryPairingController *)self statusTitle];
          v34 = [(HFSetupAutomaticDiscoveryPairingController *)self statusDescription];
          [v31 pairingController:self didTransitionToPhase:v32 statusTitle:v33 statusDescription:v34];
        }
      }

      v28 = [v27 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v28);
  }

LABEL_29:
  v35 = *MEMORY[0x277D85DE8];
}

void __55__HFSetupAutomaticDiscoveryPairingController_setPhase___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v6 = WeakRetained;
    _os_log_error_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_ERROR, "Accessory not found soft timeout timer fired %@", buf, 0xCu);
  }

  if (WeakRetained)
  {
    if ([WeakRetained phase] == 2)
    {
      [WeakRetained _updateStatusTextAndNotifyDelegate:1];
    }

    else
    {
      v3 = +[HFSetupPairingControllerUtilities descriptionForPairingPhase:](HFSetupPairingControllerUtilities, "descriptionForPairingPhase:", [WeakRetained phase]);
      NSLog(&cfstr_TheAccessoryNo.isa, v3);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __55__HFSetupAutomaticDiscoveryPairingController_setPhase___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_ERROR, "Accessory not found fatal timeout timer fired", buf, 2u);
  }

  if (WeakRetained)
  {
    if ([WeakRetained phase] == 2)
    {
      v3 = [MEMORY[0x277CCA9B8] hf_errorWithCode:6];
      v4 = [MEMORY[0x277CCA9B8] hf_mappedHMError:v3];
      v5 = [WeakRetained context];
      v6 = [v5 setupAccessoryDescription];
      [v6 setCancellationReason:v4];

      v7 = [WeakRetained _sendCancellationRequestToHomeKit];
      [WeakRetained _failPairingWithError:v3];
    }

    else
    {
      v3 = +[HFSetupPairingControllerUtilities descriptionForPairingPhase:](HFSetupPairingControllerUtilities, "descriptionForPairingPhase:", [WeakRetained phase]);
      NSLog(&cfstr_TheAccessoryNo_0.isa, v3);
    }
  }
}

- (void)setSetupResult:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v5;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Received setup result: %@", buf, 0xCu);
  }

  if ([(HFSetupAutomaticDiscoveryPairingController *)self phase])
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    v18 = [HFSetupPairingControllerUtilities descriptionForPairingPhase:[(HFSetupAutomaticDiscoveryPairingController *)self phase]];
    [v17 handleFailureInMethod:a2 object:self file:@"HFSetupAutomaticDiscoveryPairingController.m" lineNumber:128 description:{@"HFSetupAutomaticDiscoveryPairingController can't handle changing the setup result (payload) after pairing has already started. Set the setup result before calling -startWithHome:, and create a new pairing controller if you need to change it later. Current phase = %@", v18}];
  }

  if (![(HFSetupAccessoryResult *)v5 isValidForPairing])
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"HFSetupAutomaticDiscoveryPairingController.m" lineNumber:130 description:{@"HFSetupAutomaticDiscoveryPairingController only works with setup results (payloads) containing a setup ID or an error, not old ones that only have a setup code."}];
  }

  setupResult = self->_setupResult;
  self->_setupResult = v5;
  v8 = v5;

  v9 = [HFDiscoveredAccessory alloc];
  v10 = [MEMORY[0x277CCAD78] UUID];
  v11 = [(HFSetupAccessoryResult *)v8 setupPayload];
  v12 = [v11 accessoryName];
  v13 = [(HFSetupAccessoryResult *)v8 setupPayload];

  v14 = [v13 category];
  v15 = [(HFDiscoveredAccessory *)v9 initWithAccessoryUUID:v10 accessoryName:v12 accessoryCategory:v14];
  [(HFSetupAutomaticDiscoveryPairingController *)self setDiscoveredAccessoryToPair:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)addPairingObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFSetupAutomaticDiscoveryPairingController *)self pairingObservers];

  if (!v5)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(HFSetupAutomaticDiscoveryPairingController *)self setPairingObservers:v6];
  }

  v7 = [(HFSetupAutomaticDiscoveryPairingController *)self pairingObservers];
  [v7 addObject:v4];
}

- (void)removePairingObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFSetupAutomaticDiscoveryPairingController *)self pairingObservers];
  [v5 removeObject:v4];
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [HFSetupPairingControllerUtilities descriptionForPairingPhase:[(HFSetupAutomaticDiscoveryPairingController *)self phase]];
  v5 = [v3 appendObject:v4 withName:@"phase"];

  v6 = [(HFSetupAutomaticDiscoveryPairingController *)self setupResult];
  v7 = [v3 appendObject:v6 withName:@"setupResult"];

  v8 = [v3 build];

  return v8;
}

- (void)startWithHome:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = self;
    v28 = 2112;
    v29 = v5;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Request to start pairing controller: %@ with home: %@", buf, 0x16u);
  }

  if (!v5)
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"HFSetupAutomaticDiscoveryPairingController.m" lineNumber:163 description:{@"Invalid parameter not satisfying: %@", @"home"}];
  }

  v7 = [(HFSetupAutomaticDiscoveryPairingController *)self context];
  v8 = [v7 setupAccessoryDescription];

  if (!v8)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"HFSetupAutomaticDiscoveryPairingController.m" lineNumber:164 description:{@"Invalid parameter not satisfying: %@", @"self.context.setupAccessoryDescription"}];
  }

  [(HFSetupAutomaticDiscoveryPairingController *)self setHome:v5];
  v9 = [(HFSetupAutomaticDiscoveryPairingController *)self setupResult];
  v10 = [v9 error];

  if (v10)
  {
    [(HFSetupAutomaticDiscoveryPairingController *)self setPhase:9];
  }

  else
  {
    v11 = [(HFSetupAutomaticDiscoveryPairingController *)self context];
    v12 = [v11 setupAccessoryDescription];
    v13 = [(HFSetupAutomaticDiscoveryPairingController *)self setupResult];
    v14 = [v13 setupPayload];
    [v12 updateWithSetupAccessoryPayload:v14];

    [(HFSetupAutomaticDiscoveryPairingController *)self setPhase:2];
    v15 = HFLogForCategory(0x3FuLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(HFSetupAutomaticDiscoveryPairingController *)self context];
      v17 = [v16 setupAccessoryDescription];
      *buf = 138412290;
      v27 = v17;
      _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "HFSetupAutomaticDiscoveryPairingController startPairing with description: %@", buf, 0xCu);
    }

    v18 = [(HFSetupAutomaticDiscoveryPairingController *)self home];
    v19 = [(HFSetupAutomaticDiscoveryPairingController *)self context];
    v20 = [v19 setupAccessoryDescription];
    v24[4] = self;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __60__HFSetupAutomaticDiscoveryPairingController_startWithHome___block_invoke;
    v25[3] = &unk_277DF37E8;
    v25[4] = self;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __60__HFSetupAutomaticDiscoveryPairingController_startWithHome___block_invoke_45;
    v24[3] = &unk_277DF9C18;
    [v18 startPairingWithAccessoryDescription:v20 progress:v25 completion:v24];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __60__HFSetupAutomaticDiscoveryPairingController_startWithHome___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HFSetupAutomaticDiscoveryPairingController_startWithHome___block_invoke_2;
  block[3] = &unk_277DF37C0;
  block[4] = *(a1 + 32);
  v8 = v5;
  v9 = a3;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __60__HFSetupAutomaticDiscoveryPairingController_startWithHome___block_invoke_2(uint64_t a1)
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

void __60__HFSetupAutomaticDiscoveryPairingController_startWithHome___block_invoke_45(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__HFSetupAutomaticDiscoveryPairingController_startWithHome___block_invoke_2_46;
  v13[3] = &unk_277DF3398;
  v13[4] = *(a1 + 32);
  v14 = v9;
  v15 = v7;
  v16 = v8;
  v10 = v8;
  v11 = v7;
  v12 = v9;
  dispatch_async(MEMORY[0x277D85CD0], v13);
}

void __60__HFSetupAutomaticDiscoveryPairingController_startWithHome___block_invoke_2_46(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) phase] == 9)
  {
    v2 = HFLogForCategory(0x3FuLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      v15 = 138412290;
      v16 = v13;
      _os_log_error_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_ERROR, "HFSetupAutomaticDiscoveryPairingController startPairing finished with error: %@, but pairing is already in a failed state, so ignoring completion. Maybe cancelling the pairing operation failed.", &v15, 0xCu);
    }

LABEL_4:

    goto LABEL_13;
  }

  if (*(a1 + 40))
  {
    v3 = HFLogForCategory(0x3FuLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 40);
      v15 = 138412290;
      v16 = v14;
      _os_log_error_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_ERROR, "HFSetupAutomaticDiscoveryPairingController startPairing finished with error: %@", &v15, 0xCu);
    }

    [*(a1 + 32) _failPairingWithError:*(a1 + 40)];
  }

  else
  {
    v4 = [*(a1 + 48) count];
    v5 = HFLogForCategory(0x3FuLL);
    v6 = v5;
    if (!v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v15) = 0;
        _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "HFSetupAutomaticDiscoveryPairingController startPairing finished with error: nil but no paired accessories; treating as a failure", &v15, 2u);
      }

      v12 = *(a1 + 32);
      v2 = [MEMORY[0x277CCA9B8] na_genericError];
      [v12 _failPairingWithError:v2];
      goto LABEL_4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 48) hf_prettyDescription];
      v8 = *(a1 + 56);
      v15 = 138412546;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "HFSetupAutomaticDiscoveryPairingController startPairing finished with accessories: %@ info: %@", &v15, 0x16u);
    }

    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 48)];
    [v9 _finishPairingWithAccessories:v10 completedInfo:*(a1 + 56)];
  }

LABEL_13:
  v11 = *MEMORY[0x277D85DE8];
}

- (id)cancel
{
  v14 = *MEMORY[0x277D85DE8];
  if ([HFSetupPairingControllerUtilities isPairingPhaseIdle:[(HFSetupAutomaticDiscoveryPairingController *)self phase]])
  {
    v3 = HFLogForCategory(0x3FuLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = self;
      _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Cancel requested for pairing controller: %@, but we're already in an idle state, so ignoring", &v12, 0xCu);
    }

    v4 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] na_cancelledError];
    v6 = [(HFSetupAutomaticDiscoveryPairingController *)self discoveredAccessoryToPair];
    [v6 updateStatus:3 error:v5];

    v7 = [MEMORY[0x277CCA9B8] hf_mappedHMError:v5];
    v8 = [(HFSetupAutomaticDiscoveryPairingController *)self context];
    v9 = [v8 setupAccessoryDescription];
    [v9 setCancellationReason:v7];

    v4 = [(HFSetupAutomaticDiscoveryPairingController *)self _sendCancellationRequestToHomeKit];
    [(HFSetupAutomaticDiscoveryPairingController *)self setPhase:9];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_sendCancellationRequestToHomeKit
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = self;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Cancel requested for pairing controller: %@", buf, 0xCu);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __79__HFSetupAutomaticDiscoveryPairingController__sendCancellationRequestToHomeKit__block_invoke;
  v16[3] = &unk_277DF2C68;
  v16[4] = self;
  v4 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v16];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__HFSetupAutomaticDiscoveryPairingController__sendCancellationRequestToHomeKit__block_invoke_2;
  v15[3] = &unk_277DF2D08;
  v15[4] = self;
  v5 = [v4 addFailureBlock:v15];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__HFSetupAutomaticDiscoveryPairingController__sendCancellationRequestToHomeKit__block_invoke_51;
  v14[3] = &unk_277DF2720;
  v14[4] = self;
  v6 = [v4 addSuccessBlock:v14];
  v7 = MEMORY[0x277D2C900];
  v8 = [(HFSetupAutomaticDiscoveryPairingController *)self pairingFuture];
  v17[0] = v8;
  v17[1] = v4;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v10 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v11 = [v7 combineAllFutures:v9 ignoringErrors:1 scheduler:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __79__HFSetupAutomaticDiscoveryPairingController__sendCancellationRequestToHomeKit__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v3 home];
  v5 = [*(a1 + 32) context];
  v6 = [v5 setupAccessoryDescription];
  [v7 cancelPairingForAccessoryWithDescription:v6 completionHandler:v4];
}

void __79__HFSetupAutomaticDiscoveryPairingController__sendCancellationRequestToHomeKit__block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Failed to cancel pairing for pairing controller: (%@). Error: %@", &v8, 0x16u);
  }

  v5 = [*(a1 + 32) pairingFuture];
  [v5 finishWithNoResult];

  v6 = *MEMORY[0x277D85DE8];
}

void __79__HFSetupAutomaticDiscoveryPairingController__sendCancellationRequestToHomeKit__block_invoke_51(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "Cancel done for pairing controller: (%@)", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) pairingFuture];
  [v4 finishWithNoResult];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_failPairingWithError:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HFSetupAutomaticDiscoveryPairingController *)self phase]!= 9)
  {
    v5 = HFLogForCategory(0x3FuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = self;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "Failed pairing with error: %@ (%@)", &v9, 0x16u);
    }

    v6 = [(HFSetupAutomaticDiscoveryPairingController *)self discoveredAccessoryToPair];
    [v6 updateStatus:3 error:v4];

    [(HFSetupAutomaticDiscoveryPairingController *)self setPhase:9];
    v7 = [(HFSetupAutomaticDiscoveryPairingController *)self pairingFuture];
    [v7 finishWithError:v4];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_finishPairingWithAccessories:(id)a3 completedInfo:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 hf_prettyDescription];
    v12 = 138412802;
    v13 = v9;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = self;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Finished pairing with accessories: %@ & info: %@ (%@)", &v12, 0x20u);
  }

  v10 = [(HFSetupAutomaticDiscoveryPairingController *)self discoveredAccessoryToPair];
  [v10 updateStatus:2 error:0];

  [(HFSetupAutomaticDiscoveryPairingController *)self setPairedAccessories:v6];
  [(HFSetupAutomaticDiscoveryPairingController *)self setCompletedInfo:v7];
  [(HFSetupAutomaticDiscoveryPairingController *)self setPhase:10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_updateStatusTextAndNotifyDelegate:(BOOL)a3
{
  v3 = a3;
  v36 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v30 = 0;
  v5 = [(HFSetupAutomaticDiscoveryPairingController *)self phase];
  v6 = [(HFSetupAutomaticDiscoveryPairingController *)self phaseStartDate];
  v7 = [(HFSetupAutomaticDiscoveryPairingController *)self discoveredAccessoryToPair];
  v8 = [(HFSetupAutomaticDiscoveryPairingController *)self setupResult];
  v9 = [(HFSetupAutomaticDiscoveryPairingController *)self context];
  [HFSetupPairingControllerUtilities getStatusTitle:&v30 statusDescription:&v29 forPairingPhase:v5 phaseStartDate:v6 discoveredAccessory:v7 setupResult:v8 context:v9 setupError:0];
  v10 = v30;
  v11 = v29;

  [(HFSetupAutomaticDiscoveryPairingController *)self setStatusTitle:v10];
  [(HFSetupAutomaticDiscoveryPairingController *)self setStatusDescription:v11];
  v12 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = v10;
    v34 = 2112;
    v35 = v11;
    _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "Updating status title: %@ description: %@", buf, 0x16u);
  }

  if (v3)
  {
    v23 = v11;
    v24 = v10;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = [(HFSetupAutomaticDiscoveryPairingController *)self pairingObservers];
    v14 = [v13 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      do
      {
        v17 = 0;
        do
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v25 + 1) + 8 * v17);
          if (objc_opt_respondsToSelector())
          {
            v19 = [(HFSetupAutomaticDiscoveryPairingController *)self phase];
            v20 = [(HFSetupAutomaticDiscoveryPairingController *)self statusTitle];
            v21 = [(HFSetupAutomaticDiscoveryPairingController *)self statusDescription];
            [v18 pairingController:self didTransitionToPhase:v19 statusTitle:v20 statusDescription:v21];
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v15);
    }

    v11 = v23;
    v10 = v24;
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_assertValidTransitionFromPhase:(unint64_t)a3 toPhase:(unint64_t)a4
{
  if (a4 - 6 < 4)
  {
    return;
  }

  if (a3 <= 3)
  {
    if (a3)
    {
      if (a3 == 2)
      {
        if (a4 <= 0xA)
        {
          v8 = 1 << a4;
          v9 = 1048;
LABEL_15:
          if ((v8 & v9) != 0)
          {
            return;
          }
        }
      }

      else if (a3 == 3)
      {
        return;
      }
    }

    else if (a4 == 2)
    {
      return;
    }
  }

  else
  {
    if (a3 - 5 < 3)
    {
      return;
    }

    if (a3 == 4 && a4 <= 0xA)
    {
      v8 = 1 << a4;
      v9 = 1060;
      goto LABEL_15;
    }
  }

  v12 = [MEMORY[0x277CCA890] currentHandler];
  v10 = [HFSetupPairingControllerUtilities descriptionForPairingPhase:a3];
  v11 = [HFSetupPairingControllerUtilities descriptionForPairingPhase:a4];
  [v12 handleFailureInMethod:a2 object:self file:@"HFSetupAutomaticDiscoveryPairingController.m" lineNumber:344 description:{@"Invalid phase transition: %@ -> %@", v10, v11}];
}

@end