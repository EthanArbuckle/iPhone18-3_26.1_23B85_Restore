@interface CDPDSOSRecoveryValidatedJoinFlowController
- (BOOL)secretValidator:(id)validator shouldAcceptRecoveryError:(id *)error;
- (id)_cancelRecoveryOptionWithCompletion:(id)completion;
- (id)_entryLimitNoResetForRepairForDevice:(id)device;
- (id)_entryLimitRemoteApprovalAvailableBodyForDevice:(id)device;
- (id)_entryLimitTitleForDevice:(id)device forLimitType:(unint64_t)type;
- (id)_infoDictionaryWithTitle:(id)title andBody:(id)body;
- (id)_makeRemoteApprovalCompletedEventWithContext:(id)context didApprove:(BOOL)approve error:(id)error;
- (id)_okRecoveryOptionWithCompletion:(id)completion;
- (id)_remoteApprovalRecoveryOptionWithCompletion:(id)completion;
- (id)_userInfoForLimit:(unint64_t)limit withDevice:(id)device;
- (unint64_t)_escapeOfferForDevices:(id)devices remoteApproval:(BOOL)approval forMultipleICSC:(BOOL)c;
- (void)_handleHardLimitErrorForCurrentContextWithDevice:(id)device completion:(id)completion;
- (void)_handleLimit:(unint64_t)limit forDevice:(id)device completion:(id)completion;
- (void)_handleSoftLimitErrorForCurrentContextWithDevice:(id)device completion:(id)completion;
- (void)_populateUserInfo:(id)info recoveryIndexHandlers:(id)handlers withRecoveryOption:(id)option;
- (void)_showEntryLimitError:(id)error withRecoveryOptionHandlers:(id)handlers defaultIndex:(int64_t)index completion:(id)completion;
- (void)beginRemoteApprovalWithValidator:(id)validator;
- (void)cancelRemoteSecretValidatorApplicationToJoinCircle:(id)circle;
- (void)remoteSecretValidator:(id)validator applyToJoinCircleWithJoinHandler:(id)handler;
- (void)secretValidator:(id)validator didFailRecovery:(id)recovery withError:(id)error completion:(id)completion;
- (void)secretValidatorWillAttemptRecovery;
- (void)sendRemoteApprovalStartedBreadCrumbEventWithContext:(id)context;
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

- (unint64_t)_escapeOfferForDevices:(id)devices remoteApproval:(BOOL)approval forMultipleICSC:(BOOL)c
{
  approvalCopy = approval;
  devicesCopy = devices;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CDPDSOSRecoveryValidatedJoinFlowController _escapeOfferForDevices:v8 remoteApproval:? forMultipleICSC:?];
  }

  v9 = [devicesCopy count];
  if (v9 < 2)
  {
    v11 = 1;
    if (!approvalCopy)
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
  if (approvalCopy)
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

- (void)sendRemoteApprovalStartedBreadCrumbEventWithContext:(id)context
{
  v4 = [(CDPDSOSRecoveryValidatedJoinFlowController *)self _makeRemoteApprovalStartedBreadCrumbEventWithContext:context];
  rtcAnalyticsReporter = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [rtcAnalyticsReporter sendEvent:v4];
}

- (id)_makeRemoteApprovalCompletedEventWithContext:(id)context didApprove:(BOOL)approve error:(id)error
{
  approveCopy = approve;
  v7 = MEMORY[0x277CE44D8];
  v8 = *MEMORY[0x277CFD810];
  v9 = *MEMORY[0x277CFD930];
  errorCopy = error;
  v11 = [v7 analyticsEventWithContext:context eventName:v8 category:v9];
  v12 = v11;
  if (approveCopy)
  {
    v13 = MEMORY[0x277CBEC38];
  }

  else
  {
    v13 = MEMORY[0x277CBEC28];
  }

  [v11 setObject:v13 forKeyedSubscript:*MEMORY[0x277CFD6C0]];
  [v12 populateUnderlyingErrorsStartingWithRootError:errorCopy];

  return v12;
}

- (void)remoteSecretValidator:(id)validator applyToJoinCircleWithJoinHandler:(id)handler
{
  handlerCopy = handler;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [CDPDSOSRecoveryValidatedJoinFlowController remoteSecretValidator:applyToJoinCircleWithJoinHandler:];
  }

  circleController = [(CDPDRecoveryFlowController *)self circleController];
  [circleController applyToJoinCircleWithJoinHandler:handlerCopy];
}

- (void)cancelRemoteSecretValidatorApplicationToJoinCircle:(id)circle
{
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [CDPDSOSRecoveryValidatedJoinFlowController cancelRemoteSecretValidatorApplicationToJoinCircle:];
  }

  circleController = [(CDPDRecoveryFlowController *)self circleController];
  [circleController cancelApplicationToJoinCircle];
}

- (void)secretValidatorWillAttemptRecovery
{
  circleController = [(CDPDRecoveryFlowController *)self circleController];
  [circleController prepareCircleStateForRecovery];
}

- (BOOL)secretValidator:(id)validator shouldAcceptRecoveryError:(id *)error
{
  validatorCopy = validator;
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
  circleController = [(CDPDRecoveryFlowController *)self circleController];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__CDPDSOSRecoveryValidatedJoinFlowController_secretValidator_shouldAcceptRecoveryError___block_invoke;
  v13[3] = &unk_278E262B8;
  v15 = &v23;
  v16 = &v17;
  v10 = v8;
  v14 = v10;
  [circleController joinCircleAfterRecoveryWithCompletion:v13];

  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    *error = v18[5];
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

- (void)secretValidator:(id)validator didFailRecovery:(id)recovery withError:(id)error completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  validatorCopy = validator;
  recoveryCopy = recovery;
  errorCopy = error;
  completionCopy = completion;
  if (!completionCopy)
  {
    [CDPDSOSRecoveryValidatedJoinFlowController secretValidator:didFailRecovery:withError:completion:];
  }

  v14 = completionCopy;
  if ([errorCopy isLoginHardLimit])
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __99__CDPDSOSRecoveryValidatedJoinFlowController_secretValidator_didFailRecovery_withError_completion___block_invoke;
    v19[3] = &unk_278E25E00;
    v19[4] = self;
    v20 = errorCopy;
    v21 = validatorCopy;
    v22 = v14;
    [(CDPDSOSRecoveryValidatedJoinFlowController *)self _handleHardLimitErrorForCurrentContextWithDevice:recoveryCopy completion:v19];
  }

  else if ([errorCopy isLoginSoftLimit])
  {
    [(CDPDSOSRecoveryValidatedJoinFlowController *)self _handleSoftLimitErrorForCurrentContextWithDevice:recoveryCopy completion:v14];
  }

  else
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:*MEMORY[0x277CFD418]])
    {
      v16 = [errorCopy code] != -5206;
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

    (v14)[2](v14, v16, errorCopy);
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

- (void)beginRemoteApprovalWithValidator:(id)validator
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __79__CDPDSOSRecoveryValidatedJoinFlowController_beginRemoteApprovalWithValidator___block_invoke;
  v3[3] = &unk_278E24BB0;
  v3[4] = self;
  [validator approveFromAnotherDeviceWithCompletion:v3];
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

- (void)_handleHardLimitErrorForCurrentContextWithDevice:(id)device completion:(id)completion
{
  completionCopy = completion;
  deviceCopy = device;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Starting handling hard limit error...", v9, 2u);
  }

  [(CDPDSOSRecoveryValidatedJoinFlowController *)self _handleLimit:2 forDevice:deviceCopy completion:completionCopy];
}

- (void)_handleSoftLimitErrorForCurrentContextWithDevice:(id)device completion:(id)completion
{
  completionCopy = completion;
  deviceCopy = device;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Starting handling soft limit error...", v9, 2u);
  }

  [(CDPDSOSRecoveryValidatedJoinFlowController *)self _handleLimit:1 forDevice:deviceCopy completion:completionCopy];
}

- (void)_handleLimit:(unint64_t)limit forDevice:(id)device completion:(id)completion
{
  completionCopy = completion;
  v8 = [(CDPDSOSRecoveryValidatedJoinFlowController *)self _userInfoForLimit:limit withDevice:device];
  v9 = [MEMORY[0x277CBEC10] mutableCopy];
  v10 = [(CDPDSOSRecoveryValidatedJoinFlowController *)self _remoteApprovalRecoveryOptionWithCompletion:completionCopy];
  if (v10)
  {
    v11 = [(CDPDSOSRecoveryValidatedJoinFlowController *)self _cancelRecoveryOptionWithCompletion:completionCopy];
    [(CDPDSOSRecoveryValidatedJoinFlowController *)self _populateUserInfo:v8 recoveryIndexHandlers:v9 withRecoveryOption:v10];
  }

  else
  {
    v11 = [(CDPDSOSRecoveryValidatedJoinFlowController *)self _okRecoveryOptionWithCompletion:completionCopy];
  }

  [(CDPDSOSRecoveryValidatedJoinFlowController *)self _populateUserInfo:v8 recoveryIndexHandlers:v9 withRecoveryOption:v11];

  v12 = _CDPStateError();
  [(CDPDSOSRecoveryValidatedJoinFlowController *)self _showEntryLimitError:v12 withRecoveryOptionHandlers:v9 defaultIndex:0 completion:completionCopy];
}

- (void)_populateUserInfo:(id)info recoveryIndexHandlers:(id)handlers withRecoveryOption:(id)option
{
  infoCopy = info;
  if (option)
  {
    v8 = *MEMORY[0x277CCA480];
    v18 = infoCopy;
    optionCopy = option;
    handlersCopy = handlers;
    v11 = [v18 objectForKeyedSubscript:v8];
    if (v11)
    {
      v12 = [v18 objectForKeyedSubscript:v8];
      array = [v12 mutableCopy];
    }

    else
    {
      array = [MEMORY[0x277CBEB18] array];
    }

    localizedRecoveryOption = [optionCopy localizedRecoveryOption];
    [array addObject:localizedRecoveryOption];

    recoveryHandler = [optionCopy recoveryHandler];

    v16 = _Block_copy(recoveryHandler);
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(handlersCopy, "count")}];
    [handlersCopy setObject:v16 forKeyedSubscript:v17];

    [v18 setObject:array forKeyedSubscript:v8];
    infoCopy = v18;
  }
}

- (id)_userInfoForLimit:(unint64_t)limit withDevice:(id)device
{
  deviceCopy = device;
  if (limit == 2)
  {
    v7 = [(CDPDSOSRecoveryValidatedJoinFlowController *)self _hardLimitErrorBodyWithDevice:deviceCopy];
    goto LABEL_5;
  }

  if (limit == 1)
  {
    v7 = [(CDPDSOSRecoveryValidatedJoinFlowController *)self _softLimitErrorBodyForDevice:deviceCopy];
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  v9 = [(CDPDSOSRecoveryValidatedJoinFlowController *)self _entryLimitTitleForDevice:deviceCopy forLimitType:limit];
  v10 = [(CDPDSOSRecoveryValidatedJoinFlowController *)self _infoDictionaryWithTitle:v9 andBody:v8];

  return v10;
}

- (id)_remoteApprovalRecoveryOptionWithCompletion:(id)completion
{
  completionCopy = completion;
  validator = [(CDPDRecoveryFlowController *)self validator];
  if (([validator supportedEscapeOfferMask] & 4) == 0)
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

  recoveryContext = [(CDPDRecoveryFlowController *)self recoveryContext];
  hasPeersForRemoteApproval = [recoveryContext hasPeersForRemoteApproval];

  if (!hasPeersForRemoteApproval)
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
  localizedString = [v10 localizedString];
  [v9 setLocalizedRecoveryOption:localizedString];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __90__CDPDSOSRecoveryValidatedJoinFlowController__remoteApprovalRecoveryOptionWithCompletion___block_invoke;
  v14[3] = &unk_278E24820;
  v15 = completionCopy;
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

- (id)_cancelRecoveryOptionWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "Creating recovery option: Cancel", buf, 2u);
  }

  v5 = objc_opt_new();
  v6 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_CANCEL_BUTTON"];
  localizedString = [v6 localizedString];
  [v5 setLocalizedRecoveryOption:localizedString];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__CDPDSOSRecoveryValidatedJoinFlowController__cancelRecoveryOptionWithCompletion___block_invoke;
  v10[3] = &unk_278E24820;
  v11 = completionCopy;
  v8 = completionCopy;
  [v5 setRecoveryHandler:v10];

  return v5;
}

void __82__CDPDSOSRecoveryValidatedJoinFlowController__cancelRecoveryOptionWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _CDPStateError();
  (*(v1 + 16))(v1, 0, v2);
}

- (id)_okRecoveryOptionWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "Creating recovery option: OK", buf, 2u);
  }

  v5 = objc_opt_new();
  v6 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_ERROR_DEFAULT_BUTTON"];
  localizedString = [v6 localizedString];
  [v5 setLocalizedRecoveryOption:localizedString];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__CDPDSOSRecoveryValidatedJoinFlowController__okRecoveryOptionWithCompletion___block_invoke;
  v10[3] = &unk_278E24820;
  v11 = completionCopy;
  v8 = completionCopy;
  [v5 setRecoveryHandler:v10];

  return v5;
}

void __78__CDPDSOSRecoveryValidatedJoinFlowController__okRecoveryOptionWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _CDPStateError();
  (*(v1 + 16))(v1, 0, v2);
}

- (void)_showEntryLimitError:(id)error withRecoveryOptionHandlers:(id)handlers defaultIndex:(int64_t)index completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  handlersCopy = handlers;
  completionCopy = completion;
  v13 = _CDPLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uiProvider = [(CDPDRecoveryFlowController *)self uiProvider];
    *buf = 138412546;
    v24 = uiProvider;
    v25 = 2112;
    v26 = errorCopy;
    _os_log_impl(&dword_24510B000, v13, OS_LOG_TYPE_DEFAULT, "Attempting to preset alert (using: %@) for error: %@", buf, 0x16u);
  }

  uiProvider2 = [(CDPDRecoveryFlowController *)self uiProvider];

  if (uiProvider2)
  {
    uiProvider3 = [(CDPDRecoveryFlowController *)self uiProvider];
    recoveryContext = [(CDPDRecoveryFlowController *)self recoveryContext];
    context = [recoveryContext context];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __118__CDPDSOSRecoveryValidatedJoinFlowController__showEntryLimitError_withRecoveryOptionHandlers_defaultIndex_completion___block_invoke;
    v20[3] = &unk_278E24910;
    v21 = handlersCopy;
    v22 = completionCopy;
    [uiProvider3 cdpContext:context showError:errorCopy withDefaultIndex:index withCompletion:v20];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, errorCopy);
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

- (id)_entryLimitTitleForDevice:(id)device forLimitType:(unint64_t)type
{
  v5 = MEMORY[0x277CFD508];
  deviceCopy = device;
  v7 = [v5 builderForKey:@"REMOTE_SECRET_ENTRY_MULTIPLE_INCORRECT_TITLE"];
  localSecretType = [deviceCopy localSecretType];

  v9 = [v7 addSecretType:localSecretType];
  localizedString = [v9 localizedString];

  if (type == 2)
  {
    v11 = CDPLocalizedString();

    localizedString = v11;
  }

  return localizedString;
}

- (id)_entryLimitNoResetForRepairForDevice:(id)device
{
  deviceCopy = device;
  recoveryContext = [(CDPDRecoveryFlowController *)self recoveryContext];
  hasPeersForRemoteApproval = [recoveryContext hasPeersForRemoteApproval];

  v7 = MEMORY[0x277CCACA8];
  if (hasPeersForRemoteApproval)
  {
    v8 = @"REMOTE_SECRET_ENTRY_MULTIPLE_INCORRECT_MESSAGE_REMOTE_APPROVAL_NO_RESET";
  }

  else
  {
    v8 = @"REMOTE_SECRET_ENTRY_MULTIPLE_INCORRECT_MESSAGE_NO_RESET";
  }

  v9 = [MEMORY[0x277CFD508] builderForKey:v8];
  v10 = [v9 addSecretType:{objc_msgSend(deviceCopy, "localSecretType")}];
  localizedString = [v10 localizedString];
  localizedName = [deviceCopy localizedName];

  v13 = [v7 stringWithValidatedFormat:localizedString validFormatSpecifiers:@"%@" error:0, localizedName];

  return v13;
}

- (id)_entryLimitRemoteApprovalAvailableBodyForDevice:(id)device
{
  deviceCopy = device;
  recoveryContext = [(CDPDRecoveryFlowController *)self recoveryContext];
  hasPeersForRemoteApproval = [recoveryContext hasPeersForRemoteApproval];

  if (hasPeersForRemoteApproval)
  {
    v7 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_SOS_ENTRY_MULTIPLE_INCORRECT_MESSAGE_REMOTE_APPROVAL"];
    localSecretType = [deviceCopy localSecretType];

    v9 = [v7 addSecretType:localSecretType];
    localizedString = [v9 localizedString];
  }

  else
  {
    v11 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_SOS_ENTRY_MULTIPLE_INCORRECT_MESSAGE_NO_REMOTE_APPROVAL"];
    v9 = [v7 addSecretType:{objc_msgSend(deviceCopy, "localSecretType")}];
    localizedString2 = [v9 localizedString];
    localizedName = [deviceCopy localizedName];

    localizedString = [v11 stringWithValidatedFormat:localizedString2 validFormatSpecifiers:@"%@" error:0, localizedName];
  }

  return localizedString;
}

- (id)_infoDictionaryWithTitle:(id)title andBody:(id)body
{
  titleCopy = title;
  bodyCopy = body;
  v7 = [MEMORY[0x277CBEC10] mutableCopy];
  v8 = v7;
  if (titleCopy)
  {
    [v7 setObject:titleCopy forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  if (bodyCopy)
  {
    [v8 setObject:bodyCopy forKeyedSubscript:*MEMORY[0x277CCA470]];
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