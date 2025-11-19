@interface CDPDLocalSecretController
- (CDPDLocalSecretController)initWithContext:(id)a3;
- (id)_cdpStateMachine;
- (id)_makeICSCUpdateFinishEvent;
- (id)circlePeerIDForSecureBackupController:(id)a3;
- (void)_attemptToEscrowPreRecord:(id)a3 completion:(id)a4;
- (void)_collectLocalSecretWithCompletion:(id)a3;
- (void)_createContextForSecret:(BOOL)a3 withCompletion:(id)a4;
- (void)_handleCompletionStatus:(BOOL)a3 preRecord:(BOOL)a4;
- (void)_localSecretChangedTo:(id)a3 secretType:(unint64_t)a4 completion:(id)a5;
- (void)_repairWithStateMachine:(id)a3 completion:(id)a4;
- (void)_sendiCSCUpdateStartEvent;
- (void)_setContextWithAuthResults:(id)a3;
- (void)_wrappedLocalSecretChangedTo:(id)a3 secretType:(unint64_t)a4 completion:(id)a5;
- (void)attemptToEscrowPreRecord:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)finishOfflineLocalSecretChangeWithCompletion:(id)a3;
- (void)localSecretChangedTo:(id)a3 secretType:(unint64_t)a4 completion:(id)a5;
- (void)promptForAdoptionOfMultipleICSCWithCompletion:(id)a3;
- (void)setContext:(id)a3;
@end

@implementation CDPDLocalSecretController

- (CDPDLocalSecretController)initWithContext:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CDPDLocalSecretController *)self init];
  if (v5)
  {
    if ([MEMORY[0x277CFD560] canEnableMultiUserManatee])
    {
      v6 = _CDPLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v4 altDSID];
        v18 = 141558274;
        v19 = 1752392040;
        v20 = 2112;
        v21 = v7;
        _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "MUM: CDPDLocalSecretFollowUpProviderImpl init'ed with altDSID %{mask.hash}@", &v18, 0x16u);
      }

      v8 = [CDPDLocalSecretFollowUpProviderImpl alloc];
      v9 = [v4 altDSID];
      v10 = [v4 telemetryFlowID];
      v11 = [(CDPDLocalSecretFollowUpProviderImpl *)v8 initWithAltDSID:v9 telemetryFlowID:v10];
      followUpProvider = v5->_followUpProvider;
      v5->_followUpProvider = v11;
    }

    else
    {
      v13 = [CDPDLocalSecretFollowUpProviderImpl alloc];
      v9 = [v4 telemetryFlowID];
      v14 = [(CDPDLocalSecretFollowUpProviderImpl *)v13 initWithAltDSID:0 telemetryFlowID:v9];
      v15 = v5->_followUpProvider;
      v5->_followUpProvider = v14;
    }

    [(CDPDLocalSecretController *)v5 setContext:v4];
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(CDPDLocalSecretController *)v3 dealloc];
  }

  v4.receiver = self;
  v4.super_class = CDPDLocalSecretController;
  [(CDPDLocalSecretController *)&v4 dealloc];
}

- (void)setContext:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v38) = 0;
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "Updating context for local secret change", &v38, 2u);
  }

  objc_storeStrong(&self->_context, a3);
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(CDPContext *)self->_context type];
    v9 = [(CDPContext *)self->_context appleID];
    v10 = [(CDPContext *)self->_context dsid];
    v11 = [(CDPContext *)self->_context altDSID];
    v38 = 134219522;
    v39 = v8;
    v40 = 2160;
    v41 = 1752392040;
    v42 = 2112;
    v43 = v9;
    v44 = 2160;
    v45 = 1752392040;
    v46 = 2112;
    v47 = v10;
    v48 = 2160;
    v49 = 1752392040;
    v50 = 2112;
    v51 = v11;
    _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "CDPDLocalSecretController: updated context with context type: %ld, appleID: %{mask.hash}@, dsid: %{mask.hash}@, adsid: %{mask.hash}@", &v38, 0x48u);
  }

  context = self->_context;
  if (!context)
  {
    v24 = [MEMORY[0x277CFD4A8] contextForPrimaryAccount];
    v22 = self->_context;
    self->_context = v24;
    goto LABEL_13;
  }

  v13 = [(CDPContext *)context appleID];

  if (!v13)
  {
    v14 = [MEMORY[0x277CFD480] sharedInstance];
    v15 = [v14 primaryAccountUsername];
    [(CDPContext *)self->_context setAppleID:v15];
  }

  v16 = [(CDPContext *)self->_context dsid];

  if (!v16)
  {
    v17 = MEMORY[0x277CCABB0];
    v18 = [MEMORY[0x277CFD480] sharedInstance];
    v19 = [v18 primaryAccountDSID];
    v20 = [v17 numberWithLongLong:{objc_msgSend(v19, "longLongValue")}];
    [(CDPContext *)self->_context setDsid:v20];
  }

  v21 = [(CDPContext *)self->_context altDSID];

  if (!v21)
  {
    v22 = [MEMORY[0x277CFD480] sharedInstance];
    v23 = [v22 primaryAccountAltDSID];
    [(CDPContext *)self->_context setAltDSID:v23];

LABEL_13:
  }

  v25 = self->_context;
  if (v25)
  {
    v26 = [(CDPContext *)v25 telemetryFlowID];

    if (!v26)
    {
      v27 = [MEMORY[0x277CCAD78] UUID];
      v28 = [v27 UUIDString];
      [(CDPContext *)self->_context setTelemetryFlowID:v28];

      v29 = [(CDPContext *)self->_context telemetryFlowID];
      [(CDPLocalSecretFollowUpProvider *)self->_followUpProvider setTelemetryFlowID:v29];
    }

    v30 = [[CDPDSecureBackupController alloc] initWithContext:self->_context uiProvider:0 delegate:self];
    secureBackupController = self->_secureBackupController;
    self->_secureBackupController = v30;

    v32 = [CDPDCircleController alloc];
    v33 = [objc_alloc(MEMORY[0x277CFD498]) initWithContext:self->_context];
    v34 = [[CDPDOctagonTrustProxyImpl alloc] initWithContext:self->_context];
    v35 = [(CDPDCircleController *)v32 initWithUiProvider:0 delegate:self circleProxy:v33 octagonTrustProxy:v34];
    circleController = self->_circleController;
    self->_circleController = v35;
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)attemptToEscrowPreRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__CDPDLocalSecretController_attemptToEscrowPreRecord_completion___block_invoke;
  v10[3] = &unk_278E25320;
  v11 = v6;
  v12 = v7;
  v10[4] = self;
  v8 = v6;
  v9 = v7;
  [(CDPDLocalSecretController *)self _createContextForSecret:0 withCompletion:v10];
}

void __65__CDPDLocalSecretController_attemptToEscrowPreRecord_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = [v6 circleController];
    v8 = [v7 circleStatus];

    if (v8 == 1)
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __65__CDPDLocalSecretController_attemptToEscrowPreRecord_completion___block_invoke_2;
      v14[3] = &unk_278E24AE8;
      v14[4] = v9;
      v15 = *(a1 + 48);
      [v9 _attemptToEscrowPreRecord:v10 completion:v14];
    }

    else
    {
      v12 = *(a1 + 48);
      if (v12)
      {
        v13 = _CDPStateError();
        (*(v12 + 16))(v12, 0, v13);
      }
    }
  }

  else
  {
    [v6 _handleCompletionStatus:0 preRecord:1];
    v11 = *(a1 + 48);
    if (v11)
    {
      (*(v11 + 16))(v11, 0, v5);
    }
  }
}

void __65__CDPDLocalSecretController_attemptToEscrowPreRecord_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [*(a1 + 32) _handleCompletionStatus:a2 preRecord:1];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v6);
  }
}

- (void)localSecretChangedTo:(id)a3 secretType:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  [(CDPDLocalSecretController *)self _sendiCSCUpdateStartEvent];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__CDPDLocalSecretController_localSecretChangedTo_secretType_completion___block_invoke;
  v11[3] = &unk_278E24AE8;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [(CDPDLocalSecretController *)self _wrappedLocalSecretChangedTo:v9 secretType:a4 completion:v11];
}

void __72__CDPDLocalSecretController_localSecretChangedTo_secretType_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [*(a1 + 32) _makeICSCUpdateFinishEvent];
  [*(a1 + 32) _sendiCSCUpdateFinishEvent:v5 didUpdate:a2 error:v7];
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v7);
  }
}

- (void)_wrappedLocalSecretChangedTo:(id)a3 secretType:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (([(CDPContext *)self->_context isPrimaryAccount]& 1) != 0)
  {
    if ([v8 length])
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __80__CDPDLocalSecretController__wrappedLocalSecretChangedTo_secretType_completion___block_invoke;
      v13[3] = &unk_278E253E8;
      v13[4] = self;
      v14 = v8;
      v16 = a4;
      v15 = v9;
      [(CDPDLocalSecretController *)self _createContextForSecret:1 withCompletion:v13];
    }

    else
    {
      v12 = _CDPLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CDPDLocalSecretController _wrappedLocalSecretChangedTo:v12 secretType:? completion:?];
      }

      [(CDPDLocalSecretController *)self _handleCompletionStatus:1 preRecord:0];
      if (v9)
      {
        (*(v9 + 2))(v9, 1, 0);
      }
    }
  }

  else
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CDPDLocalSecretController _wrappedLocalSecretChangedTo:v10 secretType:? completion:?];
    }

    [(CDPDLocalSecretController *)self _handleCompletionStatus:1 preRecord:0];
    if (v9)
    {
      v11 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5102];
      (*(v9 + 2))(v9, 0, v11);
    }
  }
}

void __80__CDPDLocalSecretController__wrappedLocalSecretChangedTo_secretType_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = [v6 circleController];
    v8 = [v7 circleStatus];

    if (v8 == 1)
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __80__CDPDLocalSecretController__wrappedLocalSecretChangedTo_secretType_completion___block_invoke_29;
      v16[3] = &unk_278E24AE8;
      v16[4] = v9;
      v11 = *(a1 + 56);
      v17 = *(a1 + 48);
      [v9 _localSecretChangedTo:v10 secretType:v11 completion:v16];
    }

    else
    {
      v13 = _CDPLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24510B000, v13, OS_LOG_TYPE_DEFAULT, "Not in circle , trying repair", buf, 2u);
      }

      [*(*(a1 + 32) + 8) setCachedLocalSecret:*(a1 + 40)];
      [*(*(a1 + 32) + 8) setCachedLocalSecretType:*(a1 + 56)];
      v14 = [[CDPDStateMachine alloc] initWithContext:*(*(a1 + 32) + 8) uiProvider:0];
      v15 = *(a1 + 32);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __80__CDPDLocalSecretController__wrappedLocalSecretChangedTo_secretType_completion___block_invoke_28;
      v18[3] = &unk_278E24AE8;
      v18[4] = v15;
      v19 = *(a1 + 48);
      [v15 _repairWithStateMachine:v14 completion:v18];
    }
  }

  else
  {
    [v6 _handleCompletionStatus:0 preRecord:0];
    v12 = *(a1 + 48);
    if (v12)
    {
      (*(v12 + 16))(v12, 0, v5);
    }
  }
}

void __80__CDPDLocalSecretController__wrappedLocalSecretChangedTo_secretType_completion___block_invoke_28(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109378;
    v9[1] = a2;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "repair completed with result: %{BOOL}d error: %@", v9, 0x12u);
  }

  [*(a1 + 32) _handleCompletionStatus:a2 preRecord:0];
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __80__CDPDLocalSecretController__wrappedLocalSecretChangedTo_secretType_completion___block_invoke_29(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [*(a1 + 32) _handleCompletionStatus:a2 preRecord:0];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v6);
  }
}

- (void)_sendiCSCUpdateStartEvent
{
  v12 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_context eventName:*MEMORY[0x277CFD8F0] category:*MEMORY[0x277CFD930]];
  v3 = [MEMORY[0x277CCAE80] currentConnection];
  v4 = [v3 aaf_processName];
  [v12 setObject:v4 forKeyedSubscript:*MEMORY[0x277CFD8F8]];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CDPDCircleController cliqueStatus](self->_circleController, "cliqueStatus")}];
  [v12 setObject:v5 forKeyedSubscript:*MEMORY[0x277CFD6A0]];

  v6 = objc_alloc_init(CDPDAccount);
  v7 = [(CDPContext *)self->_context dsid];
  v8 = [v7 stringValue];
  v9 = [(CDPDAccount *)v6 isICDPEnabledForDSID:v8 checkWithServer:0];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:v9];
  [v12 setObject:v10 forKeyedSubscript:*MEMORY[0x277CFD670]];

  v11 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v11 sendEvent:v12];
}

- (id)_makeICSCUpdateFinishEvent
{
  v2 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_context eventName:*MEMORY[0x277CFD8E8] category:*MEMORY[0x277CFD930]];
  v3 = [MEMORY[0x277CCAE80] currentConnection];
  v4 = [v3 aaf_processName];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277CFD8F8]];

  return v2;
}

- (void)finishOfflineLocalSecretChangeWithCompletion:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__CDPDLocalSecretController_finishOfflineLocalSecretChangeWithCompletion___block_invoke;
  aBlock[3] = &unk_278E24AE8;
  aBlock[4] = self;
  v5 = v4;
  v13 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [MEMORY[0x277CFD4F8] sharedInstance];
  v8 = [v7 hasLocalSecret];

  if (v8)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74__CDPDLocalSecretController_finishOfflineLocalSecretChangeWithCompletion___block_invoke_2;
    v10[3] = &unk_278E24AE8;
    v10[4] = self;
    v11 = v6;
    [(CDPDLocalSecretController *)self _createContextForSecret:1 withCompletion:v10];
  }

  else
  {
    v9 = _CDPStateError();
    (*(v6 + 2))(v6, 0, v9);
  }
}

void __74__CDPDLocalSecretController_finishOfflineLocalSecretChangeWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [*(a1 + 32) _handleCompletionStatus:a2 preRecord:0];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v6);
  }
}

void __74__CDPDLocalSecretController_finishOfflineLocalSecretChangeWithCompletion___block_invoke_2(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) _cdpStateMachine];
  v5 = v4;
  if (a2)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __74__CDPDLocalSecretController_finishOfflineLocalSecretChangeWithCompletion___block_invoke_3;
    v6[3] = &unk_278E25438;
    v6[4] = *(a1 + 32);
    v7 = v4;
    v8 = *(a1 + 40);
    [v7 shouldPerformRepairWithOptionForceFetch:0 completion:v6];
  }

  else
  {
    [*(a1 + 32) _repairWithStateMachine:v4 completion:*(a1 + 40)];
  }
}

void __74__CDPDLocalSecretController_finishOfflineLocalSecretChangeWithCompletion___block_invoke_3(void *a1, int a2, uint64_t a3)
{
  v3 = a1[4];
  if (a3 || a2)
  {
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[4];

    [v6 _repairWithStateMachine:v4 completion:v5];
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __74__CDPDLocalSecretController_finishOfflineLocalSecretChangeWithCompletion___block_invoke_4;
    v7[3] = &unk_278E25410;
    v7[4] = v3;
    v8 = a1[6];
    [v3 _collectLocalSecretWithCompletion:v7];
  }
}

void __74__CDPDLocalSecretController_finishOfflineLocalSecretChangeWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v3 validatedSecret];
    [v4 _localSecretChangedTo:v5 secretType:objc_msgSend(v6 completion:{"secretType"), *(a1 + 40)}];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)_attemptToEscrowPreRecord:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = objc_alloc_init(CDPDSecureBackupContext);
    [(CDPDSecureBackupContext *)v8 setPreRecordUUID:v6];
    v9 = [[CDPCAEscrowReporter alloc] initWithPreRecordIdentifier:v6];
    [(CDPCAEscrowReporter *)v9 didAttemptEscrowPreRecord];
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&dword_24510B000, v10, OS_LOG_TYPE_DEFAULT, "Have EscrowPreRecord, attempting to enable secure backup: %@", buf, 0xCu);
    }

    v11 = +[CDPDLockAssertion lock];
    secureBackupController = self->_secureBackupController;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __66__CDPDLocalSecretController__attemptToEscrowPreRecord_completion___block_invoke;
    v15[3] = &unk_278E24AE8;
    v16 = v11;
    v17 = v7;
    v13 = v11;
    [(CDPDSecureBackupController *)secureBackupController checkAndRemoveExistingThenEnableSecureBackupRecordWithContext:v8 completion:v15];
  }

  else
  {
    v8 = _CDPStateError();
    (*(v7 + 2))(v7, 0, v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __66__CDPDLocalSecretController__attemptToEscrowPreRecord_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [*(a1 + 32) unlock];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v6);
  }
}

- (void)_localSecretChangedTo:(id)a3 secretType:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = objc_alloc_init(CDPCALocalSecretReporter);
  if ([v8 length])
  {
    [(CDPCALocalSecretReporter *)v10 didChangeLocalSecret];
    v11 = objc_alloc_init(CDPDSecureBackupContext);
    [(CDPDSecureBackupContext *)v11 setLocalSecret:v8];
    [(CDPDSecureBackupContext *)v11 setLocalSecretType:a4];
    v12 = +[CDPDLockAssertion lock];
    v13 = _CDPLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v13, OS_LOG_TYPE_DEFAULT, "Have local secret, attempting to enable secure backup", buf, 2u);
    }

    secureBackupController = self->_secureBackupController;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __73__CDPDLocalSecretController__localSecretChangedTo_secretType_completion___block_invoke;
    v16[3] = &unk_278E24AE8;
    v17 = v12;
    v18 = v9;
    v15 = v12;
    [(CDPDSecureBackupController *)secureBackupController checkAndRemoveExistingThenEnableSecureBackupRecordWithContext:v11 completion:v16];
  }

  else
  {
    [(CDPCALocalSecretReporter *)v10 didRemoveLocalSecret];
    v11 = _CDPStateError();
    (*(v9 + 2))(v9, 0, v11);
  }
}

void __73__CDPDLocalSecretController__localSecretChangedTo_secretType_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [*(a1 + 32) unlock];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v6);
  }
}

- (void)_handleCompletionStatus:(BOOL)a3 preRecord:(BOOL)a4
{
  v19 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(CDPContext *)self->_context type];
      v17 = 134217984;
      v18 = v6;
      _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Successfully updated local secret by re-enabling SecureBackup with context type: %ld", &v17, 0xCu);
    }

    v7 = [(CDPContext *)self->_context type];
    v8 = [(CDPDLocalSecretController *)self followUpProvider];
    v9 = v8;
    if (v7 == 7)
    {
      [v8 deleteConfirmExistingSecretFollowUp];
LABEL_16:

      goto LABEL_17;
    }

LABEL_15:
    [v8 deleteLocalSecretChangeFollowUp];
    goto LABEL_16;
  }

  if (!a4)
  {
    v10 = [MEMORY[0x277CFD4F8] sharedInstance];
    v11 = [v10 hasLocalSecret];

    v12 = _CDPLogSystem();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_24510B000, v12, OS_LOG_TYPE_DEFAULT, "Failed to update local secret by re-enabling SecureBackup", &v17, 2u);
      }

      v14 = [(CDPContext *)self->_context type];
      v15 = [(CDPDLocalSecretController *)self followUpProvider];
      v9 = v15;
      if (v14 == 7)
      {
        [v15 postConfirmExistingSecretFollowUp];
      }

      else
      {
        [v15 postLocalSecretChangeFollowUp];
      }

      goto LABEL_16;
    }

    if (v13)
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_24510B000, v12, OS_LOG_TYPE_DEFAULT, "No secret, no follow up", &v17, 2u);
    }

    v8 = [(CDPDLocalSecretController *)self followUpProvider];
    v9 = v8;
    goto LABEL_15;
  }

LABEL_17:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_repairWithStateMachine:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Failed to silently update local secret, starting repair", v9, 2u);
  }

  [(CDPContext *)self->_context set_alwaysCreateEscrowRecord:1];
  [v7 repairCloudDataProtectionStateWithCompletion:v6];
}

- (void)_setContextWithAuthResults:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Creating new CDPContext with the auth results", &v10, 2u);
  }

  v6 = [objc_alloc(MEMORY[0x277CFD4A8]) initWithAuthenticationResults:v4];
  [v6 setType:{-[CDPContext type](self->_context, "type")}];
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 type];
    v10 = 134217984;
    v11 = v8;
    _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "Context type set to %ld", &v10, 0xCu);
  }

  [(CDPDLocalSecretController *)self setContext:v6];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_createContextForSecret:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v30 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __68__CDPDLocalSecretController__createContextForSecret_withCompletion___block_invoke;
  v21 = &unk_278E25460;
  v7 = v6;
  v22 = self;
  v23 = v7;
  v8 = _Block_copy(&v18);
  v9 = _CDPLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    uiProvider = self->_uiProvider;
    v11 = [MEMORY[0x277CFD480] sharedInstance];
    v12 = [v11 primaryAccountStashedPRK];
    *buf = 138412802;
    v25 = uiProvider;
    v26 = 1024;
    v27 = v4;
    v28 = 2112;
    v29 = v12;
    _os_log_impl(&dword_24510B000, v9, OS_LOG_TYPE_DEFAULT, "Refreshing context for input: (%@) - %{BOOL}d - %@", buf, 0x1Cu);
  }

  if (-[CDPContext type](self->_context, "type") == 6 && v4 && self->_uiProvider && ([MEMORY[0x277CFD480] sharedInstance], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "primaryAccountStashedPRK"), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, !v14))
  {
    v17 = _CDPLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v17, OS_LOG_TYPE_DEFAULT, "Enabling backup, but we are missing a PRK, force interaction to get one", buf, 2u);
    }

    [(CDPStateUIProviderInternal *)self->_uiProvider cdpContext:self->_context promptForInteractiveAuthenticationWithCompletion:v8];
  }

  else
  {
    v15 = _CDPLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v15, OS_LOG_TYPE_DEFAULT, "Refreshing context with PET", buf, 2u);
    }

    [CDPAuthenticationHelper silentAuthenticationForPrimaryAccountWithCompletion:v8];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __68__CDPDLocalSecretController__createContextForSecret_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 domain];
  if ([v7 isEqualToString:*MEMORY[0x277CEFF48]])
  {
    v8 = [v6 code];

    if (v8 == -7003)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __68__CDPDLocalSecretController__createContextForSecret_withCompletion___block_invoke_2;
      v12[3] = &unk_278E25460;
      v9 = *(a1 + 40);
      v12[4] = *(a1 + 32);
      v13 = v9;
      [CDPAuthenticationHelper silentAuthenticationForPrimaryAccountWithCompletion:v12];

      goto LABEL_11;
    }
  }

  else
  {
  }

  if (v6)
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __68__CDPDLocalSecretController__createContextForSecret_withCompletion___block_invoke_cold_1(v10);
    }

    v11 = *(*(a1 + 40) + 16);
  }

  else
  {
    [*(a1 + 32) _setContextWithAuthResults:v5];
    v11 = *(*(a1 + 40) + 16);
  }

  v11();
LABEL_11:
}

uint64_t __68__CDPDLocalSecretController__createContextForSecret_withCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) _setContextWithAuthResults:a2];
  }

  else
  {
    v4 = *(a1 + 40);
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (id)_cdpStateMachine
{
  v2 = [[CDPDStateMachine alloc] initWithContext:self->_context uiProvider:self->_uiProvider];

  return v2;
}

- (void)_collectLocalSecretWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CDPDLocalSecretController _collectLocalSecretWithCompletion:v5];
  }

  [(CDPStateUIProviderInternal *)self->_uiProvider cdpContext:self->_context promptForLocalSecretWithCompletion:v4];
}

- (id)circlePeerIDForSecureBackupController:(id)a3
{
  p_circleController = &self->_circleController;
  v4 = [(CDPDCircleController *)self->_circleController peerID];
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(CDPDLocalSecretController *)v4 circlePeerIDForSecureBackupController:v5];
  }

  return v4;
}

- (void)promptForAdoptionOfMultipleICSCWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 1, 0);
  }
}

- (void)_wrappedLocalSecretChangedTo:(os_log_t)log secretType:completion:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[CDPDLocalSecretController _wrappedLocalSecretChangedTo:secretType:completion:]";
  _os_log_error_impl(&dword_24510B000, log, OS_LOG_TYPE_ERROR, "No primary account found in %s. Aborting", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_wrappedLocalSecretChangedTo:(os_log_t)log secretType:completion:.cold.2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[CDPDLocalSecretController _wrappedLocalSecretChangedTo:secretType:completion:]";
  _os_log_error_impl(&dword_24510B000, log, OS_LOG_TYPE_ERROR, "No local secret passed in, nothing to update %s. Aborting", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)circlePeerIDForSecureBackupController:(os_log_t)log .cold.1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_24510B000, log, OS_LOG_TYPE_DEBUG, "Got peer id: %@ from %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end