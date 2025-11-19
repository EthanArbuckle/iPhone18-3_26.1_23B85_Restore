@interface CDPDRecoveryFlowController
- (CDPDRecoveryFlowController)initWithContext:(id)a3 uiProvider:(id)a4 secureBackupController:(id)a5 circleController:(id)a6;
- (CDPDRecoveryFlowController)initWithContext:(id)a3 uiProvider:(id)a4 secureBackupController:(id)a5 circleProxy:(id)a6 octagonProxy:(id)a7;
- (unint64_t)_escapeOfferForDevices:(id)a3;
- (void)_updateEventWithDevices:(id)a3 withDevices:(id)a4;
- (void)_updateInteractiveRecoverStartEvent:(id)a3 withDevices:(id)a4;
- (void)beginInteractiveRecoveryForDevices:(id)a3 isUsingMultipleICSC:(BOOL)a4 usingValidator:(id)a5;
- (void)beginRecovery:(id)a3;
- (void)dealloc;
- (void)retrieveInflatedDevices:(id)a3;
@end

@implementation CDPDRecoveryFlowController

- (CDPDRecoveryFlowController)initWithContext:(id)a3 uiProvider:(id)a4 secureBackupController:(id)a5 circleProxy:(id)a6 octagonProxy:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v23.receiver = self;
  v23.super_class = CDPDRecoveryFlowController;
  v18 = [(CDPDRecoveryFlowController *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_recoveryContext, a3);
    objc_storeStrong(&v19->_uiProvider, a4);
    objc_storeStrong(&v19->_secureBackupController, a5);
    v20 = [[CDPDCircleController alloc] initWithUiProvider:v14 delegate:0 circleProxy:v16 octagonTrustProxy:v17];
    circleController = v19->_circleController;
    v19->_circleController = v20;
  }

  return v19;
}

- (CDPDRecoveryFlowController)initWithContext:(id)a3 uiProvider:(id)a4 secureBackupController:(id)a5 circleController:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = CDPDRecoveryFlowController;
  v15 = [(CDPDRecoveryFlowController *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_recoveryContext, a3);
    objc_storeStrong(&v16->_uiProvider, a4);
    objc_storeStrong(&v16->_secureBackupController, a5);
    objc_storeStrong(&v16->_circleController, a6);
  }

  return v16;
}

- (void)dealloc
{
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CDPDRecoveryFlowController dealloc];
  }

  v4.receiver = self;
  v4.super_class = CDPDRecoveryFlowController;
  [(CDPDRecoveryFlowController *)&v4 dealloc];
}

- (void)_updateEventWithDevices:(id)a3 withDevices:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v10 += [*(*(&v20 + 1) + 8 * i) remainingAttempts];
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
  [v6 setObject:v13 forKeyedSubscript:*MEMORY[0x277CFD8B0]];

  v14 = MEMORY[0x277CCABB0];
  v15 = [(CDPDRecoveryFlowController *)self recoveryContext];
  v16 = [v15 context];
  v17 = [v14 numberWithInteger:{objc_msgSend(v16, "totalEscrowDeviceCount")}];
  [v6 setObject:v17 forKeyedSubscript:*MEMORY[0x277CFD8A8]];

  v18 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
  [v6 setObject:v18 forKeyedSubscript:*MEMORY[0x277CFD778]];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_updateInteractiveRecoverStartEvent:(id)a3 withDevices:(id)a4
{
  v6 = a3;
  [(CDPDRecoveryFlowController *)self _updateEventWithDevices:v6 withDevices:a4];
  v7 = [(CDPDRecoveryFlowController *)self secureBackupController];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CDPDRecoveryFlowController *)self secureBackupController];
    v28 = 0;
    v10 = [v9 supportsRecoveryKeyWithError:&v28];
    v11 = v28;
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithBool:v10];
  [v6 setObject:v12 forKeyedSubscript:*MEMORY[0x277CFD7F8]];

  v13 = MEMORY[0x277CCABB0];
  v14 = [MEMORY[0x277CFD4F8] sharedInstance];
  v15 = [v13 numberWithBool:{objc_msgSend(v14, "supportsSecureBackupRecovery")}];
  [v6 setObject:v15 forKeyedSubscript:*MEMORY[0x277CFD8A0]];

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CDPDCircleControl cliqueStatus](self->_circleController, "cliqueStatus")}];
  [v6 setObject:v16 forKeyedSubscript:*MEMORY[0x277CFD6A0]];

  v17 = [MEMORY[0x277CCABB0] numberWithInt:{-[CDPDCircleControl circleSyncingStatus](self->_circleController, "circleSyncingStatus")}];
  [v6 setObject:v17 forKeyedSubscript:*MEMORY[0x277CFD688]];

  v18 = objc_alloc_init(CDPDAccount);
  v19 = [(CDPRecoveryFlowContext *)self->_recoveryContext context];
  v20 = [v19 dsid];
  v21 = [v20 stringValue];
  v22 = [(CDPDAccount *)v18 isICDPEnabledForDSID:v21 checkWithServer:0];

  v23 = MEMORY[0x277CCABB0];
  v24 = [(CDPRecoveryFlowContext *)self->_recoveryContext context];
  v25 = [v24 altDSID];
  v26 = [v23 numberWithUnsignedInteger:{-[CDPDAccount recoveryContactCountForAltDSID:](v18, "recoveryContactCountForAltDSID:", v25)}];

  v27 = [MEMORY[0x277CCABB0] numberWithBool:v22];
  [v6 setObject:v27 forKeyedSubscript:*MEMORY[0x277CFD670]];

  [v6 setObject:v26 forKeyedSubscript:*MEMORY[0x277CFD780]];
}

- (void)beginRecovery:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CE44D8];
  v6 = [(CDPRecoveryFlowContext *)self->_recoveryContext context];
  v7 = [v5 analyticsEventWithContext:v6 eventName:*MEMORY[0x277CFD750] category:*MEMORY[0x277CFD930]];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__CDPDRecoveryFlowController_beginRecovery___block_invoke;
  v10[3] = &unk_278E24520;
  v10[4] = self;
  v11 = v7;
  v12 = v4;
  v8 = v4;
  v9 = v7;
  [(CDPDRecoveryFlowController *)self retrieveInflatedDevices:v10];
}

void __44__CDPDRecoveryFlowController_beginRecovery___block_invoke(id *a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  [a1[4] _updateInteractiveRecoverStartEvent:a1[5] withDevices:v7];
  if (v8)
  {
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __44__CDPDRecoveryFlowController_beginRecovery___block_invoke_cold_1();
    }

    [a1[5] setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277CFD6C0]];
    [a1[5] populateUnderlyingErrorsStartingWithRootError:v8];
    v10 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
    [v10 sendEvent:a1[5]];

    v11 = a1[6];
    if (v11)
    {
      v11[2](v11, 0, v8);
    }
  }

  else
  {
    if (*(a1[4] + 5))
    {
      v12 = MEMORY[0x277CBEC38];
    }

    else
    {
      v12 = MEMORY[0x277CBEC28];
    }

    [a1[5] setObject:v12 forKeyedSubscript:*MEMORY[0x277CFD6C0]];
    if (*(a1[4] + 5))
    {
      [*(a1[4] + 2) setHasViableICSC:{objc_msgSend(v7, "count") != 0}];
      v13 = a1[4];
      v14 = v13[2];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __44__CDPDRecoveryFlowController_beginRecovery___block_invoke_26;
      v22[3] = &unk_278E244F8;
      v22[4] = v13;
      v23 = v7;
      v26 = a2;
      v25 = a1[6];
      v24 = a1[5];
      [CDPRPDProbationDurationProvider probationDurationForRecoveryContext:v14 completion:v22];
    }

    else
    {
      v15 = _CDPLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __44__CDPDRecoveryFlowController_beginRecovery___block_invoke_cold_2(v15);
      }

      v16 = [*(a1[4] + 2) context];
      [v16 keychainSyncSystem];

      v17 = a1[5];
      v18 = _CDPStateError();
      [v17 populateUnderlyingErrorsStartingWithRootError:v18];

      v19 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
      [v19 sendEvent:a1[5]];

      v20 = a1[6];
      v21 = _CDPStateError();
      v20[2](v20, 0, v21);
    }
  }
}

void __44__CDPDRecoveryFlowController_beginRecovery___block_invoke_26(uint64_t a1)
{
  [*(*(a1 + 32) + 16) setRpdProbationDuration:?];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__CDPDRecoveryFlowController_beginRecovery___block_invoke_2;
  v6[3] = &unk_278E244D0;
  v6[4] = v2;
  v5 = *(a1 + 56);
  v7 = *(a1 + 48);
  v8 = *(a1 + 40);
  v9 = *(a1 + 64);
  [v2 recoveryValidatorWithDevices:v3 forMultipleICSC:v4 validationHandler:v5 completion:v6];
}

void __44__CDPDRecoveryFlowController_beginRecovery___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 8), a2);
  v5 = a2;
  v4 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v4 sendEvent:*(a1 + 40)];

  [*(a1 + 32) beginInteractiveRecoveryForDevices:*(a1 + 48) isUsingMultipleICSC:*(a1 + 56) usingValidator:*(*(a1 + 32) + 8)];
}

- (unint64_t)_escapeOfferForDevices:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(CDPDRecoveryFlowController *)self _escapeOfferForDevices:v5];
  }

  v6 = [v4 count];
  if (v6 < 2)
  {
    result = 16;
  }

  else
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[CDPDRecoveryFlowController _escapeOfferForDevices:]";
      _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "%s Escape available: other devices", &v10, 0xCu);
    }

    result = 18;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)beginInteractiveRecoveryForDevices:(id)a3 isUsingMultipleICSC:(BOOL)a4 usingValidator:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (v6)
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [CDPDRecoveryFlowController beginInteractiveRecoveryForDevices:v8 isUsingMultipleICSC:self usingValidator:?];
    }

    v11 = _CDPLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [CDPDRecoveryFlowController beginInteractiveRecoveryForDevices:? isUsingMultipleICSC:? usingValidator:?];
    }

    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_24510B000, v12, OS_LOG_TYPE_DEFAULT, "Invoking cdpRecoveryFlowContext:promptForRemoteSecretWithDevices in CDPDRecoveryFlowController", v19, 2u);
    }

    [(CDPStateUIProviderInternal *)self->_uiProvider cdpRecoveryFlowContext:self->_recoveryContext promptForRemoteSecretWithDevices:v8 validator:v9];
  }

  else
  {
    v13 = [v8 objectAtIndexedSubscript:0];
    v14 = _CDPLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [CDPDRecoveryFlowController beginInteractiveRecoveryForDevices:v13 isUsingMultipleICSC:? usingValidator:?];
    }

    uiProvider = self->_uiProvider;
    v16 = [(CDPRecoveryFlowContext *)self->_recoveryContext context];
    v17 = [v13 hasNumericSecret];
    v18 = [v13 numericSecretLength];
    -[CDPStateUIProviderInternal cdpContext:promptForICSCWithIsNumeric:numericLength:isRandom:validator:](uiProvider, "cdpContext:promptForICSCWithIsNumeric:numericLength:isRandom:validator:", v16, v17, v18, [v13 hasRandomSecret], v9);

    v9 = v13;
  }
}

- (void)retrieveInflatedDevices:(id)a3
{
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CDPDRecoveryFlowController retrieveInflatedDevices:];
  }

  [(CDPDSecureBackupController *)self->_secureBackupController clearAccountInfoCache];
  secureBackupController = self->_secureBackupController;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__CDPDRecoveryFlowController_retrieveInflatedDevices___block_invoke;
  v8[3] = &unk_278E24548;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(CDPDSecureBackupController *)secureBackupController getBackupRecordDevicesWithOptionForceFetch:0 completion:v8];
}

void __54__CDPDRecoveryFlowController_retrieveInflatedDevices___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  if (v6)
  {
    v7 = a3;
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __54__CDPDRecoveryFlowController_retrieveInflatedDevices___block_invoke_cold_1();
    }
  }

  else
  {
    [*(*(a1 + 32) + 24) useCircleInfoToUpdateNameForDevices:a3];
  }

  (*(*(a1 + 40) + 16))();
}

void __44__CDPDRecoveryFlowController_beginRecovery___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_escapeOfferForDevices:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = [a1 recoveryContext];
  v5 = [v4 context];
  v6 = [v3 numberWithInteger:{objc_msgSend(v5, "type")}];
  v8 = 136315394;
  v9 = "[CDPDRecoveryFlowController _escapeOfferForDevices:]";
  v10 = 2112;
  v11 = v6;
  _os_log_debug_impl(&dword_24510B000, a2, OS_LOG_TYPE_DEBUG, "%s Context Type: %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)beginInteractiveRecoveryForDevices:(void *)a1 isUsingMultipleICSC:usingValidator:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 hasNumericSecret];
  v8 = [a1 numericSecretLength];
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)beginInteractiveRecoveryForDevices:(void *)a1 isUsingMultipleICSC:(uint64_t)a2 usingValidator:.cold.2(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 count];
  [*(a2 + 16) hasPeersForRemoteApproval];
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)beginInteractiveRecoveryForDevices:(uint64_t)a1 isUsingMultipleICSC:usingValidator:.cold.3(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 16) context];
  [v1 walrusStatus];
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __54__CDPDRecoveryFlowController_retrieveInflatedDevices___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end