@interface HFSetupStagedAccessoryPairingController
- (HFSetupStagedAccessoryPairingController)initWithContext:(id)a3;
- (id)cancel;
- (void)addPairingObserver:(id)a3;
- (void)removePairingObserver:(id)a3;
- (void)setPhase:(unint64_t)a3;
- (void)startWithHome:(id)a3;
@end

@implementation HFSetupStagedAccessoryPairingController

- (HFSetupStagedAccessoryPairingController)initWithContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HFSetupStagedAccessoryPairingController;
  v6 = [(HFSetupStagedAccessoryPairingController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
    v7->_phase = 0;
  }

  return v7;
}

- (void)setPhase:(unint64_t)a3
{
  v28 = *MEMORY[0x277D85DE8];
  if (self->_phase != a3)
  {
    self->_phase = a3;
    v4 = HFLogForCategory(0x3FuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(HFSetupStagedAccessoryPairingController *)self phase];
      v6 = [(HFSetupStagedAccessoryPairingController *)self pairingObservers];
      *buf = 136315650;
      v23 = "[HFSetupStagedAccessoryPairingController setPhase:]";
      v24 = 2048;
      v25 = v5;
      v26 = 2048;
      v27 = [v6 count];
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "%s phaseDidChange to %ld.  Notifying %ld observers", buf, 0x20u);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [(HFSetupStagedAccessoryPairingController *)self pairingObservers];
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * v11);
          if (objc_opt_respondsToSelector())
          {
            phase = self->_phase;
            v14 = [(HFSetupStagedAccessoryPairingController *)self statusTitle];
            v15 = [(HFSetupStagedAccessoryPairingController *)self statusDescription];
            [v12 pairingController:self didTransitionToPhase:phase statusTitle:v14 statusDescription:v15];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)addPairingObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFSetupStagedAccessoryPairingController *)self pairingObservers];

  if (!v5)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(HFSetupStagedAccessoryPairingController *)self setPairingObservers:v6];
  }

  v7 = [(HFSetupStagedAccessoryPairingController *)self pairingObservers];
  [v7 addObject:v4];
}

- (void)removePairingObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFSetupStagedAccessoryPairingController *)self pairingObservers];
  [v5 removeObject:v4];
}

- (void)startWithHome:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HFSetupStagedAccessoryPairingController *)self context];
  v7 = [v6 setupAccessoryDescription];

  v8 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = self;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Request to start pairing controller: %@ with home: %@", buf, 0x16u);
  }

  if (v5)
  {
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"HFSetupStagedAccessoryPairingController.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"home"}];

    if (v7)
    {
      goto LABEL_5;
    }
  }

  v13 = [MEMORY[0x277CCA890] currentHandler];
  [v13 handleFailureInMethod:a2 object:self file:@"HFSetupStagedAccessoryPairingController.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"setupDescription"}];

LABEL_5:
  [(HFSetupStagedAccessoryPairingController *)self setHome:v5];
  v9 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v7;
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "HFSetupStagedAccessoryPairingController startPairing with description: %@", buf, 0xCu);
  }

  v10 = [(HFSetupStagedAccessoryPairingController *)self home];
  v14[4] = self;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__HFSetupStagedAccessoryPairingController_startWithHome___block_invoke;
  v15[3] = &unk_277DF37E8;
  v15[4] = self;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__HFSetupStagedAccessoryPairingController_startWithHome___block_invoke_16;
  v14[3] = &unk_277DF9C18;
  [v10 startPairingWithAccessoryDescription:v7 progress:v15 completion:v14];

  v11 = *MEMORY[0x277D85DE8];
}

void __57__HFSetupStagedAccessoryPairingController_startWithHome___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HFSetupStagedAccessoryPairingController_startWithHome___block_invoke_2;
  block[3] = &unk_277DF37C0;
  block[4] = *(a1 + 32);
  v8 = v5;
  v9 = a3;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __57__HFSetupStagedAccessoryPairingController_startWithHome___block_invoke_2(uint64_t a1)
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

void __57__HFSetupStagedAccessoryPairingController_startWithHome___block_invoke_16(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__HFSetupStagedAccessoryPairingController_startWithHome___block_invoke_2_17;
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

void __57__HFSetupStagedAccessoryPairingController_startWithHome___block_invoke_2_17(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) phase] != 9)
  {
    if (*(a1 + 40))
    {
      v3 = HFLogForCategory(0x3FuLL);
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v16 = *(a1 + 40);
      *v17 = 138412290;
      *&v17[4] = v16;
      v12 = "HFSetupStagedAccessoryPairingController startPairing finished with error: %@";
      v13 = v3;
      v14 = 12;
    }

    else
    {
      v6 = [*(a1 + 48) count];
      v7 = HFLogForCategory(0x3FuLL);
      v3 = v7;
      if (v6)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [*(a1 + 48) hf_prettyDescription];
          v9 = *(a1 + 56);
          *v17 = 138412546;
          *&v17[4] = v8;
          *&v17[12] = 2112;
          *&v17[14] = v9;
          _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "HFSetupStagedAccessoryPairingController startPairing finished with accessories: %@ info: %@", v17, 0x16u);
        }

        v10 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 48)];
        [*(a1 + 32) setPairedAccessories:v10];

        [*(a1 + 32) setCompletedInfo:*(a1 + 56)];
        v4 = *(a1 + 32);
        v5 = 10;
        goto LABEL_12;
      }

      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
LABEL_7:

        v4 = *(a1 + 32);
        v5 = 9;
LABEL_12:
        [v4 setPhase:{v5, *v17}];
        goto LABEL_13;
      }

      *v17 = 0;
      v12 = "HFSetupStagedAccessoryPairingController startPairing finished with error: nil but no paired accessories; treating as a failure";
      v13 = v3;
      v14 = 2;
    }

    _os_log_error_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_ERROR, v12, v17, v14);
    goto LABEL_7;
  }

  v2 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v15 = *(a1 + 40);
    *v17 = 138412290;
    *&v17[4] = v15;
    _os_log_error_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_ERROR, "HFSetupStagedAccessoryPairingController startPairing finished with error: %@, but pairing is already in a failed state, so ignoring completion. Maybe cancelling the pairing operation failed.", v17, 0xCu);
  }

LABEL_13:
  v11 = *MEMORY[0x277D85DE8];
}

- (id)cancel
{
  v15 = *MEMORY[0x277D85DE8];
  if ([HFSetupPairingControllerUtilities isPairingPhaseIdle:[(HFSetupStagedAccessoryPairingController *)self phase]]|| ([(HFSetupStagedAccessoryPairingController *)self home], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v9 = HFLogForCategory(0x3FuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = self;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Cancel requested for pairing controller: %@, but we're already in an idle state, so ignoring", buf, 0xCu);
    }

    v8 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v4 = [MEMORY[0x277CCA9B8] na_cancelledError];
    v5 = [MEMORY[0x277CCA9B8] hf_mappedHMError:v4];
    v6 = [(HFSetupStagedAccessoryPairingController *)self context];
    v7 = [v6 setupAccessoryDescription];
    [v7 setCancellationReason:v5];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __49__HFSetupStagedAccessoryPairingController_cancel__block_invoke;
    v12[3] = &unk_277DF2C68;
    v12[4] = self;
    v8 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v12];
    [(HFSetupStagedAccessoryPairingController *)self setPhase:9];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

void __49__HFSetupStagedAccessoryPairingController_cancel__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v3 home];
  v5 = [*(a1 + 32) context];
  v6 = [v5 setupAccessoryDescription];
  [v7 cancelPairingForAccessoryWithDescription:v6 completionHandler:v4];
}

@end