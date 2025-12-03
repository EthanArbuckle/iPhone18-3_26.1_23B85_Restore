@interface CDPDLocalSecretController
- (CDPDLocalSecretController)initWithContext:(id)context;
- (id)_cdpStateMachine;
- (id)_makeICSCUpdateFinishEvent;
- (id)circlePeerIDForSecureBackupController:(id)controller;
- (void)_attemptToEscrowPreRecord:(id)record completion:(id)completion;
- (void)_collectLocalSecretWithCompletion:(id)completion;
- (void)_createContextForSecret:(BOOL)secret withCompletion:(id)completion;
- (void)_handleCompletionStatus:(BOOL)status preRecord:(BOOL)record;
- (void)_localSecretChangedTo:(id)to secretType:(unint64_t)type completion:(id)completion;
- (void)_repairWithStateMachine:(id)machine completion:(id)completion;
- (void)_sendiCSCUpdateStartEvent;
- (void)_setContextWithAuthResults:(id)results;
- (void)_wrappedLocalSecretChangedTo:(id)to secretType:(unint64_t)type completion:(id)completion;
- (void)attemptToEscrowPreRecord:(id)record completion:(id)completion;
- (void)dealloc;
- (void)finishOfflineLocalSecretChangeWithCompletion:(id)completion;
- (void)localSecretChangedTo:(id)to secretType:(unint64_t)type completion:(id)completion;
- (void)promptForAdoptionOfMultipleICSCWithCompletion:(id)completion;
- (void)setContext:(id)context;
@end

@implementation CDPDLocalSecretController

- (CDPDLocalSecretController)initWithContext:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = [(CDPDLocalSecretController *)self init];
  if (v5)
  {
    if ([MEMORY[0x277CFD560] canEnableMultiUserManatee])
    {
      v6 = _CDPLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        altDSID = [contextCopy altDSID];
        v18 = 141558274;
        v19 = 1752392040;
        v20 = 2112;
        v21 = altDSID;
        _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "MUM: CDPDLocalSecretFollowUpProviderImpl init'ed with altDSID %{mask.hash}@", &v18, 0x16u);
      }

      v8 = [CDPDLocalSecretFollowUpProviderImpl alloc];
      altDSID2 = [contextCopy altDSID];
      telemetryFlowID = [contextCopy telemetryFlowID];
      v11 = [(CDPDLocalSecretFollowUpProviderImpl *)v8 initWithAltDSID:altDSID2 telemetryFlowID:telemetryFlowID];
      followUpProvider = v5->_followUpProvider;
      v5->_followUpProvider = v11;
    }

    else
    {
      v13 = [CDPDLocalSecretFollowUpProviderImpl alloc];
      altDSID2 = [contextCopy telemetryFlowID];
      v14 = [(CDPDLocalSecretFollowUpProviderImpl *)v13 initWithAltDSID:0 telemetryFlowID:altDSID2];
      v15 = v5->_followUpProvider;
      v5->_followUpProvider = v14;
    }

    [(CDPDLocalSecretController *)v5 setContext:contextCopy];
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

- (void)setContext:(id)context
{
  v52 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v38) = 0;
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "Updating context for local secret change", &v38, 2u);
  }

  objc_storeStrong(&self->_context, context);
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    type = [(CDPContext *)self->_context type];
    appleID = [(CDPContext *)self->_context appleID];
    dsid = [(CDPContext *)self->_context dsid];
    altDSID = [(CDPContext *)self->_context altDSID];
    v38 = 134219522;
    v39 = type;
    v40 = 2160;
    v41 = 1752392040;
    v42 = 2112;
    v43 = appleID;
    v44 = 2160;
    v45 = 1752392040;
    v46 = 2112;
    v47 = dsid;
    v48 = 2160;
    v49 = 1752392040;
    v50 = 2112;
    v51 = altDSID;
    _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "CDPDLocalSecretController: updated context with context type: %ld, appleID: %{mask.hash}@, dsid: %{mask.hash}@, adsid: %{mask.hash}@", &v38, 0x48u);
  }

  context = self->_context;
  if (!context)
  {
    contextForPrimaryAccount = [MEMORY[0x277CFD4A8] contextForPrimaryAccount];
    mEMORY[0x277CFD480]3 = self->_context;
    self->_context = contextForPrimaryAccount;
    goto LABEL_13;
  }

  appleID2 = [(CDPContext *)context appleID];

  if (!appleID2)
  {
    mEMORY[0x277CFD480] = [MEMORY[0x277CFD480] sharedInstance];
    primaryAccountUsername = [mEMORY[0x277CFD480] primaryAccountUsername];
    [(CDPContext *)self->_context setAppleID:primaryAccountUsername];
  }

  dsid2 = [(CDPContext *)self->_context dsid];

  if (!dsid2)
  {
    v17 = MEMORY[0x277CCABB0];
    mEMORY[0x277CFD480]2 = [MEMORY[0x277CFD480] sharedInstance];
    primaryAccountDSID = [mEMORY[0x277CFD480]2 primaryAccountDSID];
    v20 = [v17 numberWithLongLong:{objc_msgSend(primaryAccountDSID, "longLongValue")}];
    [(CDPContext *)self->_context setDsid:v20];
  }

  altDSID2 = [(CDPContext *)self->_context altDSID];

  if (!altDSID2)
  {
    mEMORY[0x277CFD480]3 = [MEMORY[0x277CFD480] sharedInstance];
    primaryAccountAltDSID = [mEMORY[0x277CFD480]3 primaryAccountAltDSID];
    [(CDPContext *)self->_context setAltDSID:primaryAccountAltDSID];

LABEL_13:
  }

  v25 = self->_context;
  if (v25)
  {
    telemetryFlowID = [(CDPContext *)v25 telemetryFlowID];

    if (!telemetryFlowID)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      [(CDPContext *)self->_context setTelemetryFlowID:uUIDString];

      telemetryFlowID2 = [(CDPContext *)self->_context telemetryFlowID];
      [(CDPLocalSecretFollowUpProvider *)self->_followUpProvider setTelemetryFlowID:telemetryFlowID2];
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

- (void)attemptToEscrowPreRecord:(id)record completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__CDPDLocalSecretController_attemptToEscrowPreRecord_completion___block_invoke;
  v10[3] = &unk_278E25320;
  v11 = recordCopy;
  v12 = completionCopy;
  v10[4] = self;
  v8 = recordCopy;
  v9 = completionCopy;
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

- (void)localSecretChangedTo:(id)to secretType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  toCopy = to;
  [(CDPDLocalSecretController *)self _sendiCSCUpdateStartEvent];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__CDPDLocalSecretController_localSecretChangedTo_secretType_completion___block_invoke;
  v11[3] = &unk_278E24AE8;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [(CDPDLocalSecretController *)self _wrappedLocalSecretChangedTo:toCopy secretType:type completion:v11];
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

- (void)_wrappedLocalSecretChangedTo:(id)to secretType:(unint64_t)type completion:(id)completion
{
  toCopy = to;
  completionCopy = completion;
  if (([(CDPContext *)self->_context isPrimaryAccount]& 1) != 0)
  {
    if ([toCopy length])
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __80__CDPDLocalSecretController__wrappedLocalSecretChangedTo_secretType_completion___block_invoke;
      v13[3] = &unk_278E253E8;
      v13[4] = self;
      v14 = toCopy;
      typeCopy = type;
      v15 = completionCopy;
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
      if (completionCopy)
      {
        (*(completionCopy + 2))(completionCopy, 1, 0);
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
    if (completionCopy)
    {
      v11 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5102];
      (*(completionCopy + 2))(completionCopy, 0, v11);
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
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  aaf_processName = [currentConnection aaf_processName];
  [v12 setObject:aaf_processName forKeyedSubscript:*MEMORY[0x277CFD8F8]];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CDPDCircleController cliqueStatus](self->_circleController, "cliqueStatus")}];
  [v12 setObject:v5 forKeyedSubscript:*MEMORY[0x277CFD6A0]];

  v6 = objc_alloc_init(CDPDAccount);
  dsid = [(CDPContext *)self->_context dsid];
  stringValue = [dsid stringValue];
  v9 = [(CDPDAccount *)v6 isICDPEnabledForDSID:stringValue checkWithServer:0];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:v9];
  [v12 setObject:v10 forKeyedSubscript:*MEMORY[0x277CFD670]];

  rtcAnalyticsReporter = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [rtcAnalyticsReporter sendEvent:v12];
}

- (id)_makeICSCUpdateFinishEvent
{
  v2 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_context eventName:*MEMORY[0x277CFD8E8] category:*MEMORY[0x277CFD930]];
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  aaf_processName = [currentConnection aaf_processName];
  [v2 setObject:aaf_processName forKeyedSubscript:*MEMORY[0x277CFD8F8]];

  return v2;
}

- (void)finishOfflineLocalSecretChangeWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__CDPDLocalSecretController_finishOfflineLocalSecretChangeWithCompletion___block_invoke;
  aBlock[3] = &unk_278E24AE8;
  aBlock[4] = self;
  v5 = completionCopy;
  v13 = v5;
  v6 = _Block_copy(aBlock);
  mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
  hasLocalSecret = [mEMORY[0x277CFD4F8] hasLocalSecret];

  if (hasLocalSecret)
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

- (void)_attemptToEscrowPreRecord:(id)record completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  completionCopy = completion;
  if (recordCopy)
  {
    v8 = objc_alloc_init(CDPDSecureBackupContext);
    [(CDPDSecureBackupContext *)v8 setPreRecordUUID:recordCopy];
    v9 = [[CDPCAEscrowReporter alloc] initWithPreRecordIdentifier:recordCopy];
    [(CDPCAEscrowReporter *)v9 didAttemptEscrowPreRecord];
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = recordCopy;
      _os_log_impl(&dword_24510B000, v10, OS_LOG_TYPE_DEFAULT, "Have EscrowPreRecord, attempting to enable secure backup: %@", buf, 0xCu);
    }

    v11 = +[CDPDLockAssertion lock];
    secureBackupController = self->_secureBackupController;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __66__CDPDLocalSecretController__attemptToEscrowPreRecord_completion___block_invoke;
    v15[3] = &unk_278E24AE8;
    v16 = v11;
    v17 = completionCopy;
    v13 = v11;
    [(CDPDSecureBackupController *)secureBackupController checkAndRemoveExistingThenEnableSecureBackupRecordWithContext:v8 completion:v15];
  }

  else
  {
    v8 = _CDPStateError();
    (*(completionCopy + 2))(completionCopy, 0, v8);
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

- (void)_localSecretChangedTo:(id)to secretType:(unint64_t)type completion:(id)completion
{
  toCopy = to;
  completionCopy = completion;
  v10 = objc_alloc_init(CDPCALocalSecretReporter);
  if ([toCopy length])
  {
    [(CDPCALocalSecretReporter *)v10 didChangeLocalSecret];
    v11 = objc_alloc_init(CDPDSecureBackupContext);
    [(CDPDSecureBackupContext *)v11 setLocalSecret:toCopy];
    [(CDPDSecureBackupContext *)v11 setLocalSecretType:type];
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
    v18 = completionCopy;
    v15 = v12;
    [(CDPDSecureBackupController *)secureBackupController checkAndRemoveExistingThenEnableSecureBackupRecordWithContext:v11 completion:v16];
  }

  else
  {
    [(CDPCALocalSecretReporter *)v10 didRemoveLocalSecret];
    v11 = _CDPStateError();
    (*(completionCopy + 2))(completionCopy, 0, v11);
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

- (void)_handleCompletionStatus:(BOOL)status preRecord:(BOOL)record
{
  v19 = *MEMORY[0x277D85DE8];
  if (status)
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      type = [(CDPContext *)self->_context type];
      v17 = 134217984;
      v18 = type;
      _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Successfully updated local secret by re-enabling SecureBackup with context type: %ld", &v17, 0xCu);
    }

    type2 = [(CDPContext *)self->_context type];
    followUpProvider = [(CDPDLocalSecretController *)self followUpProvider];
    v9 = followUpProvider;
    if (type2 == 7)
    {
      [followUpProvider deleteConfirmExistingSecretFollowUp];
LABEL_16:

      goto LABEL_17;
    }

LABEL_15:
    [followUpProvider deleteLocalSecretChangeFollowUp];
    goto LABEL_16;
  }

  if (!record)
  {
    mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
    hasLocalSecret = [mEMORY[0x277CFD4F8] hasLocalSecret];

    v12 = _CDPLogSystem();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (hasLocalSecret)
    {
      if (v13)
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_24510B000, v12, OS_LOG_TYPE_DEFAULT, "Failed to update local secret by re-enabling SecureBackup", &v17, 2u);
      }

      type3 = [(CDPContext *)self->_context type];
      followUpProvider2 = [(CDPDLocalSecretController *)self followUpProvider];
      v9 = followUpProvider2;
      if (type3 == 7)
      {
        [followUpProvider2 postConfirmExistingSecretFollowUp];
      }

      else
      {
        [followUpProvider2 postLocalSecretChangeFollowUp];
      }

      goto LABEL_16;
    }

    if (v13)
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_24510B000, v12, OS_LOG_TYPE_DEFAULT, "No secret, no follow up", &v17, 2u);
    }

    followUpProvider = [(CDPDLocalSecretController *)self followUpProvider];
    v9 = followUpProvider;
    goto LABEL_15;
  }

LABEL_17:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_repairWithStateMachine:(id)machine completion:(id)completion
{
  completionCopy = completion;
  machineCopy = machine;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Failed to silently update local secret, starting repair", v9, 2u);
  }

  [(CDPContext *)self->_context set_alwaysCreateEscrowRecord:1];
  [machineCopy repairCloudDataProtectionStateWithCompletion:completionCopy];
}

- (void)_setContextWithAuthResults:(id)results
{
  v12 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Creating new CDPContext with the auth results", &v10, 2u);
  }

  v6 = [objc_alloc(MEMORY[0x277CFD4A8]) initWithAuthenticationResults:resultsCopy];
  [v6 setType:{-[CDPContext type](self->_context, "type")}];
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    type = [v6 type];
    v10 = 134217984;
    v11 = type;
    _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "Context type set to %ld", &v10, 0xCu);
  }

  [(CDPDLocalSecretController *)self setContext:v6];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_createContextForSecret:(BOOL)secret withCompletion:(id)completion
{
  secretCopy = secret;
  v30 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __68__CDPDLocalSecretController__createContextForSecret_withCompletion___block_invoke;
  v21 = &unk_278E25460;
  v7 = completionCopy;
  selfCopy = self;
  v23 = v7;
  v8 = _Block_copy(&v18);
  v9 = _CDPLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    uiProvider = self->_uiProvider;
    mEMORY[0x277CFD480] = [MEMORY[0x277CFD480] sharedInstance];
    primaryAccountStashedPRK = [mEMORY[0x277CFD480] primaryAccountStashedPRK];
    *buf = 138412802;
    v25 = uiProvider;
    v26 = 1024;
    v27 = secretCopy;
    v28 = 2112;
    v29 = primaryAccountStashedPRK;
    _os_log_impl(&dword_24510B000, v9, OS_LOG_TYPE_DEFAULT, "Refreshing context for input: (%@) - %{BOOL}d - %@", buf, 0x1Cu);
  }

  if (-[CDPContext type](self->_context, "type") == 6 && secretCopy && self->_uiProvider && ([MEMORY[0x277CFD480] sharedInstance], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "primaryAccountStashedPRK"), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, !v14))
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

- (void)_collectLocalSecretWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CDPDLocalSecretController _collectLocalSecretWithCompletion:v5];
  }

  [(CDPStateUIProviderInternal *)self->_uiProvider cdpContext:self->_context promptForLocalSecretWithCompletion:completionCopy];
}

- (id)circlePeerIDForSecureBackupController:(id)controller
{
  p_circleController = &self->_circleController;
  peerID = [(CDPDCircleController *)self->_circleController peerID];
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(CDPDLocalSecretController *)peerID circlePeerIDForSecureBackupController:v5];
  }

  return peerID;
}

- (void)promptForAdoptionOfMultipleICSCWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 1, 0);
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