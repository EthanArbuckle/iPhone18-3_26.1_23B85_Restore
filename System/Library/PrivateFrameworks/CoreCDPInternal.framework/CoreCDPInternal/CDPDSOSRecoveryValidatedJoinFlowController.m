@interface CDPDSOSRecoveryValidatedJoinFlowController
- (BOOL)secretValidator:(id)a3 shouldAcceptRecoveryError:(id *)a4;
- (id)_cancelRecoveryOptionWithCompletion:(id)a3;
- (id)_entryLimitNoResetForRepairForDevice:(id)a3;
- (id)_entryLimitRemoteApprovalAvailableBodyForDevice:(id)a3;
- (id)_entryLimitTitleForDevice:(id)a3 forLimitType:(unint64_t)a4;
- (id)_infoDictionaryWithTitle:(id)a3 andBody:(id)a4;
- (id)_makeRemoteApprovalCompletedEventWithContext:(id)a3 didApprove:(BOOL)a4 error:(id)a5;
- (id)_okRecoveryOptionWithCompletion:(id)a3;
- (id)_remoteApprovalRecoveryOptionWithCompletion:(id)a3;
- (id)_userInfoForLimit:(unint64_t)a3 withDevice:(id)a4;
- (unint64_t)_escapeOfferForDevices:(id)a3 remoteApproval:(BOOL)a4 forMultipleICSC:(BOOL)a5;
- (void)_handleHardLimitErrorForCurrentContextWithDevice:(id)a3 completion:(id)a4;
- (void)_handleLimit:(unint64_t)a3 forDevice:(id)a4 completion:(id)a5;
- (void)_handleSoftLimitErrorForCurrentContextWithDevice:(id)a3 completion:(id)a4;
- (void)_populateUserInfo:(id)a3 recoveryIndexHandlers:(id)a4 withRecoveryOption:(id)a5;
- (void)_showEntryLimitError:(id)a3 withRecoveryOptionHandlers:(id)a4 defaultIndex:(int64_t)a5 completion:(id)a6;
- (void)beginRemoteApprovalWithValidator:(id)a3;
- (void)cancelRemoteSecretValidatorApplicationToJoinCircle:(id)a3;
- (void)remoteSecretValidator:(id)a3 applyToJoinCircleWithJoinHandler:(id)a4;
- (void)secretValidator:(id)a3 didFailRecovery:(id)a4 withError:(id)a5 completion:(id)a6;
- (void)secretValidatorWillAttemptRecovery;
- (void)sendRemoteApprovalStartedBreadCrumbEventWithContext:(id)a3;
@end

@implementation CDPDSOSRecoveryValidatedJoinFlowController

void __120__CDPDSOSRecoveryValidatedJoinFlowController_recoveryValidatorWithDevices_forMultipleICSC_validationHandler_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (unint64_t)_escapeOfferForDevices:(id)a3 remoteApproval:(BOOL)a4 forMultipleICSC:(BOOL)a5
{
  v5 = a4;
  v7 = a3;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CDPDSOSRecoveryValidatedJoinFlowController _escapeOfferForDevices:v8 remoteApproval:? forMultipleICSC:?];
  }

  v9 = [v7 count];
  if (v9 < 2)
  {
    v11 = 1;
    if (!v5)
    {
      return v11;
    }

    goto LABEL_9;
  }

  v10 = _CDPLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v10, OS_LOG_TYPE_DEFAULT, "Escape available: other devices", buf, 2u);
  }

  v11 = 3;
  if (v5)
  {
LABEL_9:
    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_24510B000, v12, OS_LOG_TYPE_DEFAULT, "Escape available: remote approval", v14, 2u);
    }

    v11 |= 4uLL;
  }

  return v11;
}

void __116__CDPDSOSRecoveryValidatedJoinFlowController_beginInteractiveRecoveryForDevices_isUsingMultipleICSC_usingValidator___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "presentRemoteApprovalWithCompletion completed with error: %@", &v9, 0xCu);
  }

  if ([v4 code] == -5307)
  {
    [*(a1 + 32) cancelApproveFromAnotherDevice];
    v6 = *(a1 + 32);
    v7 = _CDPStateError();
    [v6 cancelValidationWithError:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)sendRemoteApprovalStartedBreadCrumbEventWithContext:(id)a3
{
  v4 = [(CDPDSOSRecoveryValidatedJoinFlowController *)self _makeRemoteApprovalStartedBreadCrumbEventWithContext:a3];
  v3 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v3 sendEvent:v4];
}

- (id)_makeRemoteApprovalCompletedEventWithContext:(id)a3 didApprove:(BOOL)a4 error:(id)a5
{
  v5 = a4;
  v7 = MEMORY[0x277CE44D8];
  v8 = *MEMORY[0x277CFD810];
  v9 = *MEMORY[0x277CFD930];
  v10 = a5;
  v11 = [v7 analyticsEventWithContext:a3 eventName:v8 category:v9];
  v12 = v11;
  if (v5)
  {
    v13 = MEMORY[0x277CBEC38];
  }

  else
  {
    v13 = MEMORY[0x277CBEC28];
  }

  [v11 setObject:v13 forKeyedSubscript:*MEMORY[0x277CFD6C0]];
  [v12 populateUnderlyingErrorsStartingWithRootError:v10];

  return v12;
}

- (void)remoteSecretValidator:(id)a3 applyToJoinCircleWithJoinHandler:(id)a4
{
  v5 = a4;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [CDPDSOSRecoveryValidatedJoinFlowController remoteSecretValidator:applyToJoinCircleWithJoinHandler:];
  }

  v7 = [(CDPDRecoveryFlowController *)self circleController];
  [v7 applyToJoinCircleWithJoinHandler:v5];
}

- (void)cancelRemoteSecretValidatorApplicationToJoinCircle:(id)a3
{
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [CDPDSOSRecoveryValidatedJoinFlowController cancelRemoteSecretValidatorApplicationToJoinCircle:];
  }

  v5 = [(CDPDRecoveryFlowController *)self circleController];
  [v5 cancelApplicationToJoinCircle];
}

- (void)secretValidatorWillAttemptRecovery
{
  v2 = [(CDPDRecoveryFlowController *)self circleController];
  [v2 prepareCircleStateForRecovery];
}

- (BOOL)secretValidator:(id)a3 shouldAcceptRecoveryError:(id *)a4
{
  v6 = a3;
  v7 = _os_activity_create(&dword_24510B000, "cdp: Post Recovery Circle Join", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__9;
  v21 = __Block_byref_object_dispose__9;
  v22 = 0;
  v8 = dispatch_semaphore_create(0);
  v9 = [(CDPDRecoveryFlowController *)self circleController];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__CDPDSOSRecoveryValidatedJoinFlowController_secretValidator_shouldAcceptRecoveryError___block_invoke;
  v13[3] = &unk_278E262B8;
  v15 = &v23;
  v16 = &v17;
  v10 = v8;
  v14 = v10;
  [v9 joinCircleAfterRecoveryWithCompletion:v13];

  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  if (a4)
  {
    *a4 = v18[5];
  }

  v11 = *(v24 + 24);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);
  os_activity_scope_leave(&state);

  return v11;
}

void __88__CDPDSOSRecoveryValidatedJoinFlowController_secretValidator_shouldAcceptRecoveryError___block_invoke(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)secretValidator:(id)a3 didFailRecovery:(id)a4 withError:(id)a5 completion:(id)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v13)
  {
    [CDPDSOSRecoveryValidatedJoinFlowController secretValidator:didFailRecovery:withError:completion:];
  }

  v14 = v13;
  if ([v12 isLoginHardLimit])
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __99__CDPDSOSRecoveryValidatedJoinFlowController_secretValidator_didFailRecovery_withError_completion___block_invoke;
    v19[3] = &unk_278E25E00;
    v19[4] = self;
    v20 = v12;
    v21 = v10;
    v22 = v14;
    [(CDPDSOSRecoveryValidatedJoinFlowController *)self _handleHardLimitErrorForCurrentContextWithDevice:v11 completion:v19];
  }

  else if ([v12 isLoginSoftLimit])
  {
    [(CDPDSOSRecoveryValidatedJoinFlowController *)self _handleSoftLimitErrorForCurrentContextWithDevice:v11 completion:v14];
  }

  else
  {
    v15 = [v12 domain];
    if ([v15 isEqualToString:*MEMORY[0x277CFD418]])
    {
      v16 = [v12 code] != -5206;
    }

    else
    {
      v16 = 1;
    }

    v17 = _CDPLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v24 = v16;
      _os_log_impl(&dword_24510B000, v17, OS_LOG_TYPE_DEFAULT, "Non-terminating error detected, with retry option: %{BOOL}d", buf, 8u);
    }

    (v14)[2](v14, v16, v12);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __99__CDPDSOSRecoveryValidatedJoinFlowController_secretValidator_didFailRecovery_withError_completion___block_invoke(id *a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [v5 domain];
  if (![v6 isEqualToString:*MEMORY[0x277CFD418]])
  {

    goto LABEL_5;
  }

  v7 = [v5 code];

  if (v7 != -5209)
  {
LABEL_5:
    (*(a1[7] + 2))();
    goto LABEL_6;
  }

  v8 = a1[4];
  v9 = [v8 recoveryContext];
  v10 = [v9 context];
  [v8 sendRemoteApprovalStartedBreadCrumbEventWithContext:v10];

  v11 = [a1[4] uiProvider];
  v12 = [a1[4] recoveryContext];
  v13 = [v12 context];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __99__CDPDSOSRecoveryValidatedJoinFlowController_secretValidator_didFailRecovery_withError_completion___block_invoke_2;
  v17 = &unk_278E25EA0;
  v18 = a1[5];
  v19 = a1[6];
  v20 = a1[7];
  v21 = a2;
  [v11 cdpContext:v13 presentRemoteApprovalWithCompletion:&v14];

  [a1[4] beginRemoteApprovalWithValidator:{a1[6], v14, v15, v16, v17}];
LABEL_6:
}

void __99__CDPDSOSRecoveryValidatedJoinFlowController_secretValidator_didFailRecovery_withError_completion___block_invoke_2(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __99__CDPDSOSRecoveryValidatedJoinFlowController_secretValidator_didFailRecovery_withError_completion___block_invoke_2_cold_1(a1, v2);
  }

  if ([*(a1 + 32) code] == -5307)
  {
    [*(a1 + 40) cancelApproveFromAnotherDevice];
    v3 = *(a1 + 40);
    v4 = _CDPStateError();
    [v3 cancelValidationWithError:v4];
  }

  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = _CDPStateError();
  (*(v5 + 16))(v5, v6, v7);
}

- (void)beginRemoteApprovalWithValidator:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __79__CDPDSOSRecoveryValidatedJoinFlowController_beginRemoteApprovalWithValidator___block_invoke;
  v3[3] = &unk_278E24BB0;
  v3[4] = self;
  [a3 approveFromAnotherDeviceWithCompletion:v3];
}

void __79__CDPDSOSRecoveryValidatedJoinFlowController_beginRemoteApprovalWithValidator___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 recoveryContext];
  v8 = [v7 context];
  [v5 sendRemoteApprovalCompletedEventWithContext:v8 didApprove:a2 error:v6];

  v9 = [*(a1 + 32) uiProvider];
  v11 = v9;
  if (a2)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  [v9 dismissRemoteApprovalWaitingScreenWithAction:v10];
}

- (void)_handleHardLimitErrorForCurrentContextWithDevice:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Starting handling hard limit error...", v9, 2u);
  }

  [(CDPDSOSRecoveryValidatedJoinFlowController *)self _handleLimit:2 forDevice:v7 completion:v6];
}

- (void)_handleSoftLimitErrorForCurrentContextWithDevice:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Starting handling soft limit error...", v9, 2u);
  }

  [(CDPDSOSRecoveryValidatedJoinFlowController *)self _handleLimit:1 forDevice:v7 completion:v6];
}

- (void)_handleLimit:(unint64_t)a3 forDevice:(id)a4 completion:(id)a5
{
  v13 = a5;
  v8 = [(CDPDSOSRecoveryValidatedJoinFlowController *)self _userInfoForLimit:a3 withDevice:a4];
  v9 = [MEMORY[0x277CBEC10] mutableCopy];
  v10 = [(CDPDSOSRecoveryValidatedJoinFlowController *)self _remoteApprovalRecoveryOptionWithCompletion:v13];
  if (v10)
  {
    v11 = [(CDPDSOSRecoveryValidatedJoinFlowController *)self _cancelRecoveryOptionWithCompletion:v13];
    [(CDPDSOSRecoveryValidatedJoinFlowController *)self _populateUserInfo:v8 recoveryIndexHandlers:v9 withRecoveryOption:v10];
  }

  else
  {
    v11 = [(CDPDSOSRecoveryValidatedJoinFlowController *)self _okRecoveryOptionWithCompletion:v13];
  }

  [(CDPDSOSRecoveryValidatedJoinFlowController *)self _populateUserInfo:v8 recoveryIndexHandlers:v9 withRecoveryOption:v11];

  v12 = _CDPStateError();
  [(CDPDSOSRecoveryValidatedJoinFlowController *)self _showEntryLimitError:v12 withRecoveryOptionHandlers:v9 defaultIndex:0 completion:v13];
}

- (void)_populateUserInfo:(id)a3 recoveryIndexHandlers:(id)a4 withRecoveryOption:(id)a5
{
  v7 = a3;
  if (a5)
  {
    v8 = *MEMORY[0x277CCA480];
    v18 = v7;
    v9 = a5;
    v10 = a4;
    v11 = [v18 objectForKeyedSubscript:v8];
    if (v11)
    {
      v12 = [v18 objectForKeyedSubscript:v8];
      v13 = [v12 mutableCopy];
    }

    else
    {
      v13 = [MEMORY[0x277CBEB18] array];
    }

    v14 = [v9 localizedRecoveryOption];
    [v13 addObject:v14];

    v15 = [v9 recoveryHandler];

    v16 = _Block_copy(v15);
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
    [v10 setObject:v16 forKeyedSubscript:v17];

    [v18 setObject:v13 forKeyedSubscript:v8];
    v7 = v18;
  }
}

- (id)_userInfoForLimit:(unint64_t)a3 withDevice:(id)a4
{
  v6 = a4;
  if (a3 == 2)
  {
    v7 = [(CDPDSOSRecoveryValidatedJoinFlowController *)self _hardLimitErrorBodyWithDevice:v6];
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v7 = [(CDPDSOSRecoveryValidatedJoinFlowController *)self _softLimitErrorBodyForDevice:v6];
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  v9 = [(CDPDSOSRecoveryValidatedJoinFlowController *)self _entryLimitTitleForDevice:v6 forLimitType:a3];
  v10 = [(CDPDSOSRecoveryValidatedJoinFlowController *)self _infoDictionaryWithTitle:v9 andBody:v8];

  return v10;
}

- (id)_remoteApprovalRecoveryOptionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CDPDRecoveryFlowController *)self validator];
  if (([v5 supportedEscapeOfferMask] & 4) == 0)
  {

LABEL_7:
    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v12, OS_LOG_TYPE_DEFAULT, "No fallback available", buf, 2u);
    }

    v9 = 0;
    goto LABEL_10;
  }

  v6 = [(CDPDRecoveryFlowController *)self recoveryContext];
  v7 = [v6 hasPeersForRemoteApproval];

  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Creating recovery option: Remote Approval", buf, 2u);
  }

  v9 = objc_opt_new();
  v10 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_MULTIPLE_INCORRECT_BUTTON_APPROVE"];
  v11 = [v10 localizedString];
  [v9 setLocalizedRecoveryOption:v11];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __90__CDPDSOSRecoveryValidatedJoinFlowController__remoteApprovalRecoveryOptionWithCompletion___block_invoke;
  v14[3] = &unk_278E24820;
  v15 = v4;
  [v9 setRecoveryHandler:v14];
  v12 = v15;
LABEL_10:

  return v9;
}

void __90__CDPDSOSRecoveryValidatedJoinFlowController__remoteApprovalRecoveryOptionWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _CDPStateError();
  (*(v1 + 16))(v1, 0, v2);
}

- (id)_cancelRecoveryOptionWithCompletion:(id)a3
{
  v3 = a3;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "Creating recovery option: Cancel", buf, 2u);
  }

  v5 = objc_opt_new();
  v6 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_CANCEL_BUTTON"];
  v7 = [v6 localizedString];
  [v5 setLocalizedRecoveryOption:v7];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__CDPDSOSRecoveryValidatedJoinFlowController__cancelRecoveryOptionWithCompletion___block_invoke;
  v10[3] = &unk_278E24820;
  v11 = v3;
  v8 = v3;
  [v5 setRecoveryHandler:v10];

  return v5;
}

void __82__CDPDSOSRecoveryValidatedJoinFlowController__cancelRecoveryOptionWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _CDPStateError();
  (*(v1 + 16))(v1, 0, v2);
}

- (id)_okRecoveryOptionWithCompletion:(id)a3
{
  v3 = a3;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "Creating recovery option: OK", buf, 2u);
  }

  v5 = objc_opt_new();
  v6 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_ERROR_DEFAULT_BUTTON"];
  v7 = [v6 localizedString];
  [v5 setLocalizedRecoveryOption:v7];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__CDPDSOSRecoveryValidatedJoinFlowController__okRecoveryOptionWithCompletion___block_invoke;
  v10[3] = &unk_278E24820;
  v11 = v3;
  v8 = v3;
  [v5 setRecoveryHandler:v10];

  return v5;
}

void __78__CDPDSOSRecoveryValidatedJoinFlowController__okRecoveryOptionWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _CDPStateError();
  (*(v1 + 16))(v1, 0, v2);
}

- (void)_showEntryLimitError:(id)a3 withRecoveryOptionHandlers:(id)a4 defaultIndex:(int64_t)a5 completion:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = _CDPLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(CDPDRecoveryFlowController *)self uiProvider];
    *buf = 138412546;
    v24 = v14;
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&dword_24510B000, v13, OS_LOG_TYPE_DEFAULT, "Attempting to preset alert (using: %@) for error: %@", buf, 0x16u);
  }

  v15 = [(CDPDRecoveryFlowController *)self uiProvider];

  if (v15)
  {
    v16 = [(CDPDRecoveryFlowController *)self uiProvider];
    v17 = [(CDPDRecoveryFlowController *)self recoveryContext];
    v18 = [v17 context];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __118__CDPDSOSRecoveryValidatedJoinFlowController__showEntryLimitError_withRecoveryOptionHandlers_defaultIndex_completion___block_invoke;
    v20[3] = &unk_278E24910;
    v21 = v11;
    v22 = v12;
    [v16 cdpContext:v18 showError:v10 withDefaultIndex:a5 withCompletion:v20];
  }

  else
  {
    (*(v12 + 2))(v12, 0, v10);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __118__CDPDSOSRecoveryValidatedJoinFlowController__showEntryLimitError_withRecoveryOptionHandlers_defaultIndex_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    v12 = 138412290;
    v13 = v5;
    _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "User responded to presented alert with option: %@", &v12, 0xCu);
  }

  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8)
  {
    v8[2](v8);
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = _CDPStateError();
    (*(v9 + 16))(v9, 0, v10);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_entryLimitTitleForDevice:(id)a3 forLimitType:(unint64_t)a4
{
  v5 = MEMORY[0x277CFD508];
  v6 = a3;
  v7 = [v5 builderForKey:@"REMOTE_SECRET_ENTRY_MULTIPLE_INCORRECT_TITLE"];
  v8 = [v6 localSecretType];

  v9 = [v7 addSecretType:v8];
  v10 = [v9 localizedString];

  if (a4 == 2)
  {
    v11 = CDPLocalizedString();

    v10 = v11;
  }

  return v10;
}

- (id)_entryLimitNoResetForRepairForDevice:(id)a3
{
  v4 = a3;
  v5 = [(CDPDRecoveryFlowController *)self recoveryContext];
  v6 = [v5 hasPeersForRemoteApproval];

  v7 = MEMORY[0x277CCACA8];
  if (v6)
  {
    v8 = @"REMOTE_SECRET_ENTRY_MULTIPLE_INCORRECT_MESSAGE_REMOTE_APPROVAL_NO_RESET";
  }

  else
  {
    v8 = @"REMOTE_SECRET_ENTRY_MULTIPLE_INCORRECT_MESSAGE_NO_RESET";
  }

  v9 = [MEMORY[0x277CFD508] builderForKey:v8];
  v10 = [v9 addSecretType:{objc_msgSend(v4, "localSecretType")}];
  v11 = [v10 localizedString];
  v12 = [v4 localizedName];

  v13 = [v7 stringWithValidatedFormat:v11 validFormatSpecifiers:@"%@" error:0, v12];

  return v13;
}

- (id)_entryLimitRemoteApprovalAvailableBodyForDevice:(id)a3
{
  v4 = a3;
  v5 = [(CDPDRecoveryFlowController *)self recoveryContext];
  v6 = [v5 hasPeersForRemoteApproval];

  if (v6)
  {
    v7 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_SOS_ENTRY_MULTIPLE_INCORRECT_MESSAGE_REMOTE_APPROVAL"];
    v8 = [v4 localSecretType];

    v9 = [v7 addSecretType:v8];
    v10 = [v9 localizedString];
  }

  else
  {
    v11 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_SOS_ENTRY_MULTIPLE_INCORRECT_MESSAGE_NO_REMOTE_APPROVAL"];
    v9 = [v7 addSecretType:{objc_msgSend(v4, "localSecretType")}];
    v12 = [v9 localizedString];
    v13 = [v4 localizedName];

    v10 = [v11 stringWithValidatedFormat:v12 validFormatSpecifiers:@"%@" error:0, v13];
  }

  return v10;
}

- (id)_infoDictionaryWithTitle:(id)a3 andBody:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEC10] mutableCopy];
  v8 = v7;
  if (v5)
  {
    [v7 setObject:v5 forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  if (v6)
  {
    [v8 setObject:v6 forKeyedSubscript:*MEMORY[0x277CCA470]];
  }

  return v8;
}

- (void)_escapeOfferForDevices:(void *)a1 remoteApproval:(NSObject *)a2 forMultipleICSC:.cold.1(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = [a1 recoveryContext];
  v5 = [v4 context];
  v6 = [v3 numberWithInteger:{objc_msgSend(v5, "type")}];
  v8 = 138412290;
  v9 = v6;
  _os_log_debug_impl(&dword_24510B000, a2, OS_LOG_TYPE_DEBUG, "Context Type: %@", &v8, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __99__CDPDSOSRecoveryValidatedJoinFlowController_secretValidator_didFailRecovery_withError_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_24510B000, a2, OS_LOG_TYPE_DEBUG, "presentRemoteApprovalWithCompletion completed with error: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end