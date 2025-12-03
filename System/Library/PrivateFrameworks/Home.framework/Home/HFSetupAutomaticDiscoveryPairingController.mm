@interface HFSetupAutomaticDiscoveryPairingController
- (HFSetupAutomaticDiscoveryPairingController)initWithContext:(id)context;
- (NSString)description;
- (id)_sendCancellationRequestToHomeKit;
- (id)cancel;
- (void)_assertValidTransitionFromPhase:(unint64_t)phase toPhase:(unint64_t)toPhase;
- (void)_failPairingWithError:(id)error;
- (void)_finishPairingWithAccessories:(id)accessories completedInfo:(id)info;
- (void)_updateStatusTextAndNotifyDelegate:(BOOL)delegate;
- (void)addPairingObserver:(id)observer;
- (void)dealloc;
- (void)removePairingObserver:(id)observer;
- (void)setPhase:(unint64_t)phase;
- (void)setSetupResult:(id)result;
- (void)startWithHome:(id)home;
@end

@implementation HFSetupAutomaticDiscoveryPairingController

- (HFSetupAutomaticDiscoveryPairingController)initWithContext:(id)context
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = HFSetupAutomaticDiscoveryPairingController;
  v6 = [(HFSetupAutomaticDiscoveryPairingController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
    v7->_phase = 0;
    date = [MEMORY[0x277CBEAA8] date];
    phaseStartDate = v7->_phaseStartDate;
    v7->_phaseStartDate = date;

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

- (void)setPhase:(unint64_t)phase
{
  v53 = *MEMORY[0x277D85DE8];
  phase = self->_phase;
  if (phase != phase)
  {
    [(HFSetupAutomaticDiscoveryPairingController *)self _assertValidTransitionFromPhase:self->_phase toPhase:phase];
    v6 = HFLogForCategory(0x3FuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [HFSetupPairingControllerUtilities descriptionForPairingPhase:phase];
      v8 = [HFSetupPairingControllerUtilities descriptionForPairingPhase:phase];
      *buf = 138412802;
      selfCopy = self;
      v49 = 2112;
      v50 = v7;
      v51 = 2112;
      v52 = v8;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "%@ Transitioning phase: %@ -> %@", buf, 0x20u);
    }

    self->_phase = phase;
    date = [MEMORY[0x277CBEAA8] date];
    [(HFSetupAutomaticDiscoveryPairingController *)self setPhaseStartDate:date];

    accessoryNotFoundSoftTimeoutTimer = [(HFSetupAutomaticDiscoveryPairingController *)self accessoryNotFoundSoftTimeoutTimer];
    [accessoryNotFoundSoftTimeoutTimer invalidate];

    [(HFSetupAutomaticDiscoveryPairingController *)self setAccessoryNotFoundSoftTimeoutTimer:0];
    accessoryNotFoundFatalTimeoutTimer = [(HFSetupAutomaticDiscoveryPairingController *)self accessoryNotFoundFatalTimeoutTimer];
    [accessoryNotFoundFatalTimeoutTimer invalidate];

    [(HFSetupAutomaticDiscoveryPairingController *)self setAccessoryNotFoundFatalTimeoutTimer:0];
    if (phase == 2)
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

  statusTitle = [(HFSetupAutomaticDiscoveryPairingController *)self statusTitle];
  statusDescription = [(HFSetupAutomaticDiscoveryPairingController *)self statusDescription];
  [(HFSetupAutomaticDiscoveryPairingController *)self _updateStatusTextAndNotifyDelegate:0];
  statusTitle2 = [(HFSetupAutomaticDiscoveryPairingController *)self statusTitle];
  v22 = statusTitle;
  v36 = v22;
  if (statusTitle2 == v22)
  {

    goto LABEL_11;
  }

  if (statusTitle2)
  {
    v23 = [statusTitle2 isEqual:v22];

    if (!v23)
    {
      goto LABEL_15;
    }

LABEL_11:
    statusDescription2 = [(HFSetupAutomaticDiscoveryPairingController *)self statusDescription];
    v25 = statusDescription;
    if (statusDescription2 == v25)
    {
      v26 = 0;
    }

    else if (statusDescription2)
    {
      v26 = [statusDescription2 isEqual:v25] ^ 1;
    }

    else
    {
      v26 = 1;
    }

    if (((phase != phase) | v26) != 1)
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
  pairingObservers = [(HFSetupAutomaticDiscoveryPairingController *)self pairingObservers];
  v28 = [pairingObservers countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v28)
  {
    v29 = *v39;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v39 != v29)
        {
          objc_enumerationMutation(pairingObservers);
        }

        v31 = *(*(&v38 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v32 = self->_phase;
          statusTitle3 = [(HFSetupAutomaticDiscoveryPairingController *)self statusTitle];
          statusDescription3 = [(HFSetupAutomaticDiscoveryPairingController *)self statusDescription];
          [v31 pairingController:self didTransitionToPhase:v32 statusTitle:statusTitle3 statusDescription:statusDescription3];
        }
      }

      v28 = [pairingObservers countByEnumeratingWithState:&v38 objects:v46 count:16];
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

- (void)setSetupResult:(id)result
{
  v22 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v6 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = resultCopy;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Received setup result: %@", buf, 0xCu);
  }

  if ([(HFSetupAutomaticDiscoveryPairingController *)self phase])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v18 = [HFSetupPairingControllerUtilities descriptionForPairingPhase:[(HFSetupAutomaticDiscoveryPairingController *)self phase]];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFSetupAutomaticDiscoveryPairingController.m" lineNumber:128 description:{@"HFSetupAutomaticDiscoveryPairingController can't handle changing the setup result (payload) after pairing has already started. Set the setup result before calling -startWithHome:, and create a new pairing controller if you need to change it later. Current phase = %@", v18}];
  }

  if (![(HFSetupAccessoryResult *)resultCopy isValidForPairing])
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFSetupAutomaticDiscoveryPairingController.m" lineNumber:130 description:{@"HFSetupAutomaticDiscoveryPairingController only works with setup results (payloads) containing a setup ID or an error, not old ones that only have a setup code."}];
  }

  setupResult = self->_setupResult;
  self->_setupResult = resultCopy;
  v8 = resultCopy;

  v9 = [HFDiscoveredAccessory alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  setupPayload = [(HFSetupAccessoryResult *)v8 setupPayload];
  accessoryName = [setupPayload accessoryName];
  setupPayload2 = [(HFSetupAccessoryResult *)v8 setupPayload];

  category = [setupPayload2 category];
  v15 = [(HFDiscoveredAccessory *)v9 initWithAccessoryUUID:uUID accessoryName:accessoryName accessoryCategory:category];
  [(HFSetupAutomaticDiscoveryPairingController *)self setDiscoveredAccessoryToPair:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)addPairingObserver:(id)observer
{
  observerCopy = observer;
  pairingObservers = [(HFSetupAutomaticDiscoveryPairingController *)self pairingObservers];

  if (!pairingObservers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(HFSetupAutomaticDiscoveryPairingController *)self setPairingObservers:weakObjectsHashTable];
  }

  pairingObservers2 = [(HFSetupAutomaticDiscoveryPairingController *)self pairingObservers];
  [pairingObservers2 addObject:observerCopy];
}

- (void)removePairingObserver:(id)observer
{
  observerCopy = observer;
  pairingObservers = [(HFSetupAutomaticDiscoveryPairingController *)self pairingObservers];
  [pairingObservers removeObject:observerCopy];
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [HFSetupPairingControllerUtilities descriptionForPairingPhase:[(HFSetupAutomaticDiscoveryPairingController *)self phase]];
  v5 = [v3 appendObject:v4 withName:@"phase"];

  setupResult = [(HFSetupAutomaticDiscoveryPairingController *)self setupResult];
  v7 = [v3 appendObject:setupResult withName:@"setupResult"];

  build = [v3 build];

  return build;
}

- (void)startWithHome:(id)home
{
  v30 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v6 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v28 = 2112;
    v29 = homeCopy;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Request to start pairing controller: %@ with home: %@", buf, 0x16u);
  }

  if (!homeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFSetupAutomaticDiscoveryPairingController.m" lineNumber:163 description:{@"Invalid parameter not satisfying: %@", @"home"}];
  }

  context = [(HFSetupAutomaticDiscoveryPairingController *)self context];
  setupAccessoryDescription = [context setupAccessoryDescription];

  if (!setupAccessoryDescription)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFSetupAutomaticDiscoveryPairingController.m" lineNumber:164 description:{@"Invalid parameter not satisfying: %@", @"self.context.setupAccessoryDescription"}];
  }

  [(HFSetupAutomaticDiscoveryPairingController *)self setHome:homeCopy];
  setupResult = [(HFSetupAutomaticDiscoveryPairingController *)self setupResult];
  error = [setupResult error];

  if (error)
  {
    [(HFSetupAutomaticDiscoveryPairingController *)self setPhase:9];
  }

  else
  {
    context2 = [(HFSetupAutomaticDiscoveryPairingController *)self context];
    setupAccessoryDescription2 = [context2 setupAccessoryDescription];
    setupResult2 = [(HFSetupAutomaticDiscoveryPairingController *)self setupResult];
    setupPayload = [setupResult2 setupPayload];
    [setupAccessoryDescription2 updateWithSetupAccessoryPayload:setupPayload];

    [(HFSetupAutomaticDiscoveryPairingController *)self setPhase:2];
    v15 = HFLogForCategory(0x3FuLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      context3 = [(HFSetupAutomaticDiscoveryPairingController *)self context];
      setupAccessoryDescription3 = [context3 setupAccessoryDescription];
      *buf = 138412290;
      selfCopy = setupAccessoryDescription3;
      _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "HFSetupAutomaticDiscoveryPairingController startPairing with description: %@", buf, 0xCu);
    }

    home = [(HFSetupAutomaticDiscoveryPairingController *)self home];
    context4 = [(HFSetupAutomaticDiscoveryPairingController *)self context];
    setupAccessoryDescription4 = [context4 setupAccessoryDescription];
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
    [home startPairingWithAccessoryDescription:setupAccessoryDescription4 progress:v25 completion:v24];
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
      selfCopy = self;
      _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Cancel requested for pairing controller: %@, but we're already in an idle state, so ignoring", &v12, 0xCu);
    }

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    na_cancelledError = [MEMORY[0x277CCA9B8] na_cancelledError];
    discoveredAccessoryToPair = [(HFSetupAutomaticDiscoveryPairingController *)self discoveredAccessoryToPair];
    [discoveredAccessoryToPair updateStatus:3 error:na_cancelledError];

    v7 = [MEMORY[0x277CCA9B8] hf_mappedHMError:na_cancelledError];
    context = [(HFSetupAutomaticDiscoveryPairingController *)self context];
    setupAccessoryDescription = [context setupAccessoryDescription];
    [setupAccessoryDescription setCancellationReason:v7];

    futureWithNoResult = [(HFSetupAutomaticDiscoveryPairingController *)self _sendCancellationRequestToHomeKit];
    [(HFSetupAutomaticDiscoveryPairingController *)self setPhase:9];
  }

  v10 = *MEMORY[0x277D85DE8];

  return futureWithNoResult;
}

- (id)_sendCancellationRequestToHomeKit
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
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
  pairingFuture = [(HFSetupAutomaticDiscoveryPairingController *)self pairingFuture];
  v17[0] = pairingFuture;
  v17[1] = v4;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v11 = [v7 combineAllFutures:v9 ignoringErrors:1 scheduler:mainThreadScheduler];

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

- (void)_failPairingWithError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if ([(HFSetupAutomaticDiscoveryPairingController *)self phase]!= 9)
  {
    v5 = HFLogForCategory(0x3FuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412546;
      v10 = errorCopy;
      v11 = 2112;
      selfCopy = self;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "Failed pairing with error: %@ (%@)", &v9, 0x16u);
    }

    discoveredAccessoryToPair = [(HFSetupAutomaticDiscoveryPairingController *)self discoveredAccessoryToPair];
    [discoveredAccessoryToPair updateStatus:3 error:errorCopy];

    [(HFSetupAutomaticDiscoveryPairingController *)self setPhase:9];
    pairingFuture = [(HFSetupAutomaticDiscoveryPairingController *)self pairingFuture];
    [pairingFuture finishWithError:errorCopy];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_finishPairingWithAccessories:(id)accessories completedInfo:(id)info
{
  v18 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  infoCopy = info;
  v8 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    hf_prettyDescription = [accessoriesCopy hf_prettyDescription];
    v12 = 138412802;
    v13 = hf_prettyDescription;
    v14 = 2112;
    v15 = infoCopy;
    v16 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Finished pairing with accessories: %@ & info: %@ (%@)", &v12, 0x20u);
  }

  discoveredAccessoryToPair = [(HFSetupAutomaticDiscoveryPairingController *)self discoveredAccessoryToPair];
  [discoveredAccessoryToPair updateStatus:2 error:0];

  [(HFSetupAutomaticDiscoveryPairingController *)self setPairedAccessories:accessoriesCopy];
  [(HFSetupAutomaticDiscoveryPairingController *)self setCompletedInfo:infoCopy];
  [(HFSetupAutomaticDiscoveryPairingController *)self setPhase:10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_updateStatusTextAndNotifyDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  v36 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v30 = 0;
  phase = [(HFSetupAutomaticDiscoveryPairingController *)self phase];
  phaseStartDate = [(HFSetupAutomaticDiscoveryPairingController *)self phaseStartDate];
  discoveredAccessoryToPair = [(HFSetupAutomaticDiscoveryPairingController *)self discoveredAccessoryToPair];
  setupResult = [(HFSetupAutomaticDiscoveryPairingController *)self setupResult];
  context = [(HFSetupAutomaticDiscoveryPairingController *)self context];
  [HFSetupPairingControllerUtilities getStatusTitle:&v30 statusDescription:&v29 forPairingPhase:phase phaseStartDate:phaseStartDate discoveredAccessory:discoveredAccessoryToPair setupResult:setupResult context:context setupError:0];
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

  if (delegateCopy)
  {
    v23 = v11;
    v24 = v10;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    pairingObservers = [(HFSetupAutomaticDiscoveryPairingController *)self pairingObservers];
    v14 = [pairingObservers countByEnumeratingWithState:&v25 objects:v31 count:16];
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
            objc_enumerationMutation(pairingObservers);
          }

          v18 = *(*(&v25 + 1) + 8 * v17);
          if (objc_opt_respondsToSelector())
          {
            phase2 = [(HFSetupAutomaticDiscoveryPairingController *)self phase];
            statusTitle = [(HFSetupAutomaticDiscoveryPairingController *)self statusTitle];
            statusDescription = [(HFSetupAutomaticDiscoveryPairingController *)self statusDescription];
            [v18 pairingController:self didTransitionToPhase:phase2 statusTitle:statusTitle statusDescription:statusDescription];
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [pairingObservers countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v15);
    }

    v11 = v23;
    v10 = v24;
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_assertValidTransitionFromPhase:(unint64_t)phase toPhase:(unint64_t)toPhase
{
  if (toPhase - 6 < 4)
  {
    return;
  }

  if (phase <= 3)
  {
    if (phase)
    {
      if (phase == 2)
      {
        if (toPhase <= 0xA)
        {
          v8 = 1 << toPhase;
          v9 = 1048;
LABEL_15:
          if ((v8 & v9) != 0)
          {
            return;
          }
        }
      }

      else if (phase == 3)
      {
        return;
      }
    }

    else if (toPhase == 2)
    {
      return;
    }
  }

  else
  {
    if (phase - 5 < 3)
    {
      return;
    }

    if (phase == 4 && toPhase <= 0xA)
    {
      v8 = 1 << toPhase;
      v9 = 1060;
      goto LABEL_15;
    }
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v10 = [HFSetupPairingControllerUtilities descriptionForPairingPhase:phase];
  v11 = [HFSetupPairingControllerUtilities descriptionForPairingPhase:toPhase];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFSetupAutomaticDiscoveryPairingController.m" lineNumber:344 description:{@"Invalid phase transition: %@ -> %@", v10, v11}];
}

@end