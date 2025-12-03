@interface CDPDRecoveryValidatedJoinFlowController
- (BOOL)_isWalrusEnabled;
- (id)_accountResetRecoveryOptionWithCompletion:(id)completion;
- (id)_cancelRecoveryOptionWithCompletion:(id)completion;
- (id)_custodianRecoveryOptionWithCompletion:(id)completion;
- (id)_deviceSelectionRecoveryOptionWithCompletion:(id)completion;
- (id)_entryHardLimitCustodianRecoveryAvailableBodyForDevice:(id)device;
- (id)_entryHardLimitDeviceSelectionAvailableBodyForDevice:(id)device;
- (id)_entryHardLimitNoResetForSignInForDevice:(id)device;
- (id)_entryHardLimitPiggybackingAvailableBodyForDevice:(id)device;
- (id)_entryHardLimitRecoveryKeyAndCustodianRecoveryAvailableBodyForDevice:(id)device;
- (id)_entryHardLimitRecoveryKeyAvailableBodyForDevice:(id)device;
- (id)_entryHardLimitRepairBodyForDevice:(id)device;
- (id)_entryLimitCustodianRecoveryAvailableBodyForDevice:(id)device;
- (id)_entryLimitDeviceSelectionAvailableBodyForDevice:(id)device;
- (id)_entryLimitNoResetForDevice:(id)device;
- (id)_entryLimitNoResetForRepairForDevice:(id)device;
- (id)_entryLimitPiggybackingAvailableBodyForDevice:(id)device;
- (id)_entryLimitRecoveryKeyAndCustodianRecoveryAvailableBodyForDevice:(id)device;
- (id)_entryLimitRecoveryKeyAvailableBodyForDevice:(id)device;
- (id)_entryLimitResetAvailableBodyForDevice:(id)device;
- (id)_entryLimitSignInBodyForDevice:(id)device;
- (id)_entryLimitTitleForDevice:(id)device;
- (id)_fallbackRecoveryOptionsForLimitType:(unint64_t)type withCompletion:(id)completion;
- (id)_hardLimitErrorBodyWithDevice:(id)device;
- (id)_infoDictionaryWithTitle:(id)title andBody:(id)body;
- (id)_limitErrorBodyForDevice:(id)device limitType:(unint64_t)type;
- (id)_piggybackingRecoveryOptionWithCompletion:(id)completion;
- (id)_recoveryKeyRecoveryOptionWithCompletion:(id)completion;
- (id)_recoveryMethodRecoveryOptionWithCompletion:(id)completion;
- (id)_resetDataErrorForCurrentContextWithRecoveryIndexMap:(id)map;
- (id)_resetProtectedDataErrorUnrecoverable;
- (id)_skipErrorUnrecoverable;
- (id)_skipSignInRecoveryOptionWithCompletion:(id)completion;
- (id)_tryAgainLaterOptionWithCompletion:(id)completion;
- (id)_userInfoForLimit:(unint64_t)limit withDevice:(id)device;
- (void)_escapeOfferForDevices:(id)devices remoteApproval:(BOOL)approval forMultipleICSC:(BOOL)c completion:(id)completion;
- (void)_handleHardLimitErrorForCurrentContextWithDevice:(id)device completion:(id)completion;
- (void)_handleLimit:(unint64_t)limit forDevice:(id)device completion:(id)completion;
- (void)_handleNoRecoveryFactorsWithMask:(unint64_t)mask validator:(id)validator;
- (void)_handleResetOptionWithResetRequested:(BOOL)requested localSecret:(id)secret validator:(id)validator;
- (void)_handleSoftLimitErrorForCurrentContextWithDevice:(id)device completion:(id)completion;
- (void)_isSingleICSC:(id)c;
- (void)_populateUserInfo:(id)info recoveryIndexHandlers:(id)handlers withRecoveryOptions:(id)options;
- (void)_showAccountResetConfirmationWithCompletion:(id)completion;
- (void)_showEntryLimitError:(id)error withRecoveryOptionHandlers:(id)handlers defaultIndex:(int64_t)index completion:(id)completion;
- (void)_showQuotaScreenWithCompletion:(id)completion;
- (void)cancelRemoteSecretValidatorApplicationToJoinCircle:(id)circle;
- (void)remoteSecretValidator:(id)validator applyToJoinCircleWithJoinHandler:(id)handler;
- (void)remoteSecretValidator:(id)validator attemptCircleJoinWithPiggybackingContext:(id)context completion:(id)completion;
- (void)remoteSecretValidator:(id)validator attemptCustodianRecoveryWithInfo:(id)info completion:(id)completion;
- (void)secretValidator:(id)validator didFailRecovery:(id)recovery withError:(id)error completion:(id)completion;
- (void)secretValidator:(id)validator recoverSecureBackupWithContext:(id)context completion:(id)completion;
- (void)secretValidatorWillAttemptRecovery;
- (void)shouldOfferPiggybackingBasedRecovery:(id)recovery;
@end

@implementation CDPDRecoveryValidatedJoinFlowController

void __117__CDPDRecoveryValidatedJoinFlowController_recoveryValidatorWithDevices_forMultipleICSC_validationHandler_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [CDPDRemoteDeviceSecretValidator alloc];
  v5 = [*(*(*(a1 + 48) + 8) + 40) recoveryContext];
  v6 = [v5 context];
  v7 = [(CDPDDeviceSecretValidator *)v4 initWithContext:v6 delegate:*(*(*(a1 + 48) + 8) + 40)];

  [(CDPDDeviceSecretValidator *)v7 setIsUsingMultipleICSC:*(a1 + 56)];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __117__CDPDRecoveryValidatedJoinFlowController_recoveryValidatorWithDevices_forMultipleICSC_validationHandler_completion___block_invoke_2;
  v14 = &unk_278E246B8;
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v15 = v8;
  v16 = v9;
  [(CDPDRemoteDeviceSecretValidator *)v7 setValidSecretHandler:&v11];
  [(CDPDDeviceSecretValidator *)v7 setSupportedEscapeOfferMask:a2, v11, v12, v13, v14];
  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v7);
  }
}

void __117__CDPDRecoveryValidatedJoinFlowController_recoveryValidatorWithDevices_forMultipleICSC_validationHandler_completion___block_invoke_2(uint64_t a1)
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

- (void)_isSingleICSC:(id)c
{
  cCopy = c;
  secureBackupController = [(CDPDRecoveryFlowController *)self secureBackupController];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__CDPDRecoveryValidatedJoinFlowController__isSingleICSC___block_invoke;
  v7[3] = &unk_278E24708;
  v8 = cCopy;
  v6 = cCopy;
  [secureBackupController getBackupRecordDevicesWithOptionForceFetch:0 completion:v7];
}

uint64_t __57__CDPDRecoveryValidatedJoinFlowController__isSingleICSC___block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    if (a4)
    {
      v5 = 0;
    }

    else
    {
      v5 = a2 ^ 1u;
    }

    return (*(result + 16))(result, v5);
  }

  return result;
}

- (void)shouldOfferPiggybackingBasedRecovery:(id)recovery
{
  v28 = *MEMORY[0x277D85DE8];
  recoveryCopy = recovery;
  if ([MEMORY[0x277CFD560] isInternalBuild] && CFPreferencesGetAppBooleanValue(@"offerPiggybackingForCDPRepair", @"com.apple.corecdp", 0))
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [CDPDRecoveryValidatedJoinFlowController shouldOfferPiggybackingBasedRecovery:];
    }

    if (recoveryCopy)
    {
      recoveryCopy[2](recoveryCopy, 1);
    }
  }

  else
  {
    mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
    recoveryContext = [(CDPDRecoveryFlowController *)self recoveryContext];
    context = [recoveryContext context];
    altDSID = [context altDSID];
    v10 = [mEMORY[0x277CF0130] authKitAccountWithAltDSID:altDSID];

    mEMORY[0x277CF0130]2 = [MEMORY[0x277CF0130] sharedInstance];
    v12 = [mEMORY[0x277CF0130]2 piggybackingApprovalEligible:v10];

    isCDPRepairWithProximityBasedPiggybackingEnabled = [MEMORY[0x277CFD560] isCDPRepairWithProximityBasedPiggybackingEnabled];
    v14 = _CDPLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      recoveryContext2 = [(CDPDRecoveryFlowController *)self recoveryContext];
      context2 = [recoveryContext2 context];
      *buf = 67109632;
      v23 = isCDPRepairWithProximityBasedPiggybackingEnabled;
      v24 = 2048;
      type = [context2 type];
      v26 = 1024;
      v27 = v12;
      _os_log_debug_impl(&dword_24510B000, v14, OS_LOG_TYPE_DEBUG, "piggybackingBasedCDPRecoveryFeatureEnabled = %d CDPRepairContext = %ld piggybackingApprovalEligible = %d", buf, 0x18u);
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __80__CDPDRecoveryValidatedJoinFlowController_shouldOfferPiggybackingBasedRecovery___block_invoke;
    v18[3] = &unk_278E24730;
    v18[4] = self;
    v19 = recoveryCopy;
    v20 = isCDPRepairWithProximityBasedPiggybackingEnabled;
    v21 = v12;
    [(CDPDRecoveryValidatedJoinFlowController *)self _isSingleICSC:v18];
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __80__CDPDRecoveryValidatedJoinFlowController_shouldOfferPiggybackingBasedRecovery___block_invoke(uint64_t a1, int a2)
{
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __80__CDPDRecoveryValidatedJoinFlowController_shouldOfferPiggybackingBasedRecovery___block_invoke_cold_1();
  }

  v5 = MEMORY[0x277CFD4A8];
  v6 = [*(a1 + 32) recoveryContext];
  v7 = [v6 context];
  v8 = [v5 isSubsetOfContextTypeRepair:{objc_msgSend(v7, "type")}];

  result = *(a1 + 40);
  if (result)
  {
    if (*(a1 + 48) & v8)
    {
      v10 = (a2 ^ 1) & *(a1 + 49);
    }

    else
    {
      v10 = 0;
    }

    return (*(result + 16))(result, v10);
  }

  return result;
}

- (void)_escapeOfferForDevices:(id)devices remoteApproval:(BOOL)approval forMultipleICSC:(BOOL)c completion:(id)completion
{
  cCopy = c;
  devicesCopy = devices;
  completionCopy = completion;
  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [CDPDRecoveryValidatedJoinFlowController _escapeOfferForDevices:v11 remoteApproval:? forMultipleICSC:? completion:?];
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 1;
  if ([devicesCopy count] >= 2)
  {
    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v12, OS_LOG_TYPE_DEFAULT, "Escape available: other devices", buf, 2u);
    }

    v38[3] |= 2uLL;
  }

  if (([MEMORY[0x277CFD560] isVirtualMachine] & 1) == 0)
  {
    v13 = MEMORY[0x277CFD4A8];
    recoveryContext = [(CDPDRecoveryFlowController *)self recoveryContext];
    context = [recoveryContext context];
    v16 = [v13 isSubsetOfContextTypeRepair:{objc_msgSend(context, "type")}] | !cCopy;

    if (v16 == 1)
    {
      v17 = _CDPLogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24510B000, v17, OS_LOG_TYPE_DEFAULT, "Escape available: account reset", buf, 2u);
      }

      v38[3] |= 8uLL;
    }
  }

  v18 = MEMORY[0x277CFD4A8];
  recoveryContext2 = [(CDPDRecoveryFlowController *)self recoveryContext];
  context2 = [recoveryContext2 context];
  LODWORD(v18) = [v18 isSubsetOfContextTypeSignIn:{objc_msgSend(context2, "type")}];

  if (v18)
  {
    v21 = _CDPLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v21, OS_LOG_TYPE_DEFAULT, "Escape available: skip flow", buf, 2u);
    }

    v38[3] |= 0x10uLL;
  }

  secureBackupController = [(CDPDRecoveryFlowController *)self secureBackupController];
  v35 = 0;
  v23 = [secureBackupController supportsRecoveryKeyWithError:&v35];
  v24 = v35;

  if (v23)
  {
    v25 = _CDPLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v25, OS_LOG_TYPE_DEFAULT, "Escape available: recovery key", buf, 2u);
    }

    v38[3] |= 0x20uLL;
  }

  if (v24)
  {
    v26 = _CDPLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [CDPDRecoveryValidatedJoinFlowController _escapeOfferForDevices:remoteApproval:forMultipleICSC:completion:];
    }
  }

  recoveryContext3 = [(CDPDRecoveryFlowController *)self recoveryContext];
  context3 = [recoveryContext3 context];
  _supportsCustodianRecovery = [context3 _supportsCustodianRecovery];

  if (_supportsCustodianRecovery)
  {
    v30 = _CDPLogSystem();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v30, OS_LOG_TYPE_DEFAULT, "Escape available: Custodian Recovery", buf, 2u);
    }

    v38[3] |= 0x40uLL;
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __108__CDPDRecoveryValidatedJoinFlowController__escapeOfferForDevices_remoteApproval_forMultipleICSC_completion___block_invoke;
  v32[3] = &unk_278E24758;
  v34 = &v37;
  v31 = completionCopy;
  v33 = v31;
  [(CDPDRecoveryValidatedJoinFlowController *)self shouldOfferPiggybackingBasedRecovery:v32];

  _Block_object_dispose(&v37, 8);
}

uint64_t __108__CDPDRecoveryValidatedJoinFlowController__escapeOfferForDevices_remoteApproval_forMultipleICSC_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = _CDPLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_24510B000, v3, OS_LOG_TYPE_DEFAULT, "Escape available: Piggybacking", v5, 2u);
    }

    *(*(*(a1 + 40) + 8) + 24) |= 0x80uLL;
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 24));
  }

  return result;
}

- (void)remoteSecretValidator:(id)validator applyToJoinCircleWithJoinHandler:(id)handler
{
  handlerCopy = handler;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [CDPDRecoveryValidatedJoinFlowController remoteSecretValidator:applyToJoinCircleWithJoinHandler:];
  }

  circleController = [(CDPDRecoveryFlowController *)self circleController];
  [circleController applyToJoinCircleWithJoinHandler:handlerCopy];
}

- (void)cancelRemoteSecretValidatorApplicationToJoinCircle:(id)circle
{
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [CDPDRecoveryValidatedJoinFlowController cancelRemoteSecretValidatorApplicationToJoinCircle:];
  }

  circleController = [(CDPDRecoveryFlowController *)self circleController];
  [circleController cancelApplicationToJoinCircle];
}

- (void)remoteSecretValidator:(id)validator attemptCustodianRecoveryWithInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  infoCopy = info;
  circleController = [(CDPDRecoveryFlowController *)self circleController];
  circleProxy = [circleController circleProxy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __109__CDPDRecoveryValidatedJoinFlowController_remoteSecretValidator_attemptCustodianRecoveryWithInfo_completion___block_invoke;
  v12[3] = &unk_278E24780;
  v13 = completionCopy;
  v11 = completionCopy;
  [circleProxy recoverOctagonUsingCustodianInfo:infoCopy completion:v12];
}

void __109__CDPDRecoveryValidatedJoinFlowController_remoteSecretValidator_attemptCustodianRecoveryWithInfo_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __109__CDPDRecoveryValidatedJoinFlowController_remoteSecretValidator_attemptCustodianRecoveryWithInfo_completion___block_invoke_cold_1(v3 == 0, v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)remoteSecretValidator:(id)validator attemptCircleJoinWithPiggybackingContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  circleController = [(CDPDRecoveryFlowController *)self circleController];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __117__CDPDRecoveryValidatedJoinFlowController_remoteSecretValidator_attemptCircleJoinWithPiggybackingContext_completion___block_invoke;
  v11[3] = &unk_278E247A8;
  v12 = completionCopy;
  v10 = completionCopy;
  [circleController joinCircleWithContext:contextCopy completion:v11];
}

void __117__CDPDRecoveryValidatedJoinFlowController_remoteSecretValidator_attemptCircleJoinWithPiggybackingContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 didJoin];
  v7 = _CDPLogSystem();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (v8)
    {
      __117__CDPDRecoveryValidatedJoinFlowController_remoteSecretValidator_attemptCircleJoinWithPiggybackingContext_completion___block_invoke_cold_2();
    }
  }

  else if (v8)
  {
    __117__CDPDRecoveryValidatedJoinFlowController_remoteSecretValidator_attemptCircleJoinWithPiggybackingContext_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)secretValidatorWillAttemptRecovery
{
  circleController = [(CDPDRecoveryFlowController *)self circleController];
  [circleController prepareCircleStateForRecovery];
}

- (void)secretValidator:(id)validator recoverSecureBackupWithContext:(id)context completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v9 = _CDPLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = contextCopy;
    _os_log_impl(&dword_24510B000, v9, OS_LOG_TYPE_DEFAULT, "Attempting to recover a record with context: %@", buf, 0xCu);
  }

  secureBackupController = [(CDPDRecoveryFlowController *)self secureBackupController];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __101__CDPDRecoveryValidatedJoinFlowController_secretValidator_recoverSecureBackupWithContext_completion___block_invoke;
  v13[3] = &unk_278E247D0;
  v14 = completionCopy;
  v11 = completionCopy;
  [secureBackupController performEscrowRecoveryWithRecoveryContext:contextCopy completion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __101__CDPDRecoveryValidatedJoinFlowController_secretValidator_recoverSecureBackupWithContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 recoveredClique];

  v8 = _CDPLogSystem();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 recoveredClique];
      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&dword_24510B000, v9, OS_LOG_TYPE_DEFAULT, "Recovered a clique: %@", &v13, 0xCu);
    }

    v11 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __101__CDPDRecoveryValidatedJoinFlowController_secretValidator_recoverSecureBackupWithContext_completion___block_invoke_cold_1();
    }

    v11 = *(*(a1 + 32) + 16);
  }

  v11();

  v12 = *MEMORY[0x277D85DE8];
}

- (void)secretValidator:(id)validator didFailRecovery:(id)recovery withError:(id)error completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  validatorCopy = validator;
  recoveryCopy = recovery;
  errorCopy = error;
  completionCopy = completion;
  if (!completionCopy)
  {
    [CDPDRecoveryValidatedJoinFlowController secretValidator:didFailRecovery:withError:completion:];
  }

  v14 = completionCopy;
  if ([errorCopy isLoginHardLimit])
  {
    [(CDPDRecoveryValidatedJoinFlowController *)self _handleHardLimitErrorForCurrentContextWithDevice:recoveryCopy completion:v14];
  }

  else if ([errorCopy isLoginSoftLimit])
  {
    [(CDPDRecoveryValidatedJoinFlowController *)self _handleSoftLimitErrorForCurrentContextWithDevice:recoveryCopy completion:v14];
  }

  else
  {
    v15 = [errorCopy cdp_isCDPErrorWithCode:-5206] ^ 1;
    v16 = _CDPLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18[0] = 67109120;
      v18[1] = v15;
      _os_log_impl(&dword_24510B000, v16, OS_LOG_TYPE_DEFAULT, "Non-terminating error detected, with retry option: %{BOOL}d", v18, 8u);
    }

    (v14)[2](v14, v15, errorCopy);
  }

  v17 = *MEMORY[0x277D85DE8];
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

  [(CDPDRecoveryValidatedJoinFlowController *)self _handleLimit:2 forDevice:deviceCopy completion:completionCopy];
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

  [(CDPDRecoveryValidatedJoinFlowController *)self _handleLimit:1 forDevice:deviceCopy completion:completionCopy];
}

- (void)_handleLimit:(unint64_t)limit forDevice:(id)device completion:(id)completion
{
  v88 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  completionCopy = completion;
  v67 = deviceCopy;
  v71 = [(CDPDRecoveryValidatedJoinFlowController *)self _userInfoForLimit:limit withDevice:deviceCopy];
  v70 = [MEMORY[0x277CBEC10] mutableCopy];
  v10 = MEMORY[0x277CE44D8];
  recoveryContext = [(CDPDRecoveryFlowController *)self recoveryContext];
  context = [recoveryContext context];
  v13 = MEMORY[0x277CFD898];
  if (limit != 1)
  {
    v13 = MEMORY[0x277CFD740];
  }

  v14 = [v10 analyticsEventWithContext:context eventName:*v13 category:*MEMORY[0x277CFD930]];

  v15 = [(CDPDRecoveryValidatedJoinFlowController *)self _fallbackRecoveryOptionsForLimitType:limit withCompletion:completionCopy];
  v72 = [(CDPDRecoveryValidatedJoinFlowController *)self _cancelRecoveryOptionWithCompletion:completionCopy];
  v68 = completionCopy;
  v16 = [(CDPDRecoveryValidatedJoinFlowController *)self _tryAgainLaterOptionWithCompletion:completionCopy];
  v69 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v66 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v73 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v18 = v15;
  v19 = [v18 countByEnumeratingWithState:&v82 objects:v87 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v83;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v83 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v82 + 1) + 8 * i);
        if (v23)
        {
          telemetryRecoveryOption = [v23 telemetryRecoveryOption];
          [v17 addObject:telemetryRecoveryOption];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v82 objects:v87 count:16];
    }

    while (v20);
  }

  if (v72)
  {
    [v69 addObject:v72];
  }

  if (v16)
  {
    [v73 addObject:v16];
  }

  validator = [(CDPDRecoveryFlowController *)self validator];
  supportedEscapeOfferMask = [validator supportedEscapeOfferMask];

  if ((supportedEscapeOfferMask & 0x82) != 0)
  {
    [(CDPDRecoveryValidatedJoinFlowController *)self _populateUserInfo:v71 recoveryIndexHandlers:v70 withRecoveryOptions:v18];
    [(CDPDRecoveryValidatedJoinFlowController *)self _populateUserInfo:v71 recoveryIndexHandlers:v70 withRecoveryOptions:v73];
    v27 = v16;
    if (!v16)
    {
      goto LABEL_62;
    }

    goto LABEL_32;
  }

  if ((supportedEscapeOfferMask & 0x60) != 0)
  {
    [(CDPDRecoveryValidatedJoinFlowController *)self _populateUserInfo:v71 recoveryIndexHandlers:v70 withRecoveryOptions:v18];
    if ([MEMORY[0x277CFD560] isICSCHarmonizationEnabled])
    {
      v28 = v73;
    }

    else
    {
      v28 = v69;
    }

    [(CDPDRecoveryValidatedJoinFlowController *)self _populateUserInfo:v71 recoveryIndexHandlers:v70 withRecoveryOptions:v28];
    isICSCHarmonizationEnabled = [MEMORY[0x277CFD560] isICSCHarmonizationEnabled];
    if (v16 && isICSCHarmonizationEnabled)
    {
      v27 = v16;
    }

    else
    {
      if (!v72)
      {
        goto LABEL_62;
      }

      v27 = v72;
    }

LABEL_32:
    telemetryRecoveryOption2 = [v27 telemetryRecoveryOption];
    [v17 addObject:telemetryRecoveryOption2];
LABEL_33:

    goto LABEL_62;
  }

  isICSCHarmonizationEnabled2 = [MEMORY[0x277CFD560] isICSCHarmonizationEnabled];
  if ((supportedEscapeOfferMask & 8) == 0)
  {
    if (!isICSCHarmonizationEnabled2)
    {
      v36 = [(CDPDRecoveryValidatedJoinFlowController *)self _skipSignInRecoveryOptionWithCompletion:v68];
      telemetryRecoveryOption2 = v36;
      if (v36)
      {
        v86 = v36;
        v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
        [(CDPDRecoveryValidatedJoinFlowController *)self _populateUserInfo:v71 recoveryIndexHandlers:v70 withRecoveryOptions:v37];
      }

      v31TelemetryRecoveryOption = [telemetryRecoveryOption2 telemetryRecoveryOption];
      [v17 addObject:v31TelemetryRecoveryOption];

      goto LABEL_33;
    }

    [(CDPDRecoveryValidatedJoinFlowController *)self _populateUserInfo:v71 recoveryIndexHandlers:v70 withRecoveryOptions:v73];
    if (!v16)
    {
      goto LABEL_62;
    }

    v27 = v16;
    goto LABEL_32;
  }

  if (!isICSCHarmonizationEnabled2)
  {
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __77__CDPDRecoveryValidatedJoinFlowController__handleLimit_forDevice_completion___block_invoke_2;
    v74[3] = &unk_278E247F8;
    v76 = v68;
    limitCopy = limit;
    v74[4] = self;
    v75 = v67;
    v39 = [(CDPDRecoveryValidatedJoinFlowController *)self _accountResetRecoveryOptionWithCompletion:v74];
    if (v39)
    {
      [v66 addObject:v39];
      if (limit == 2)
      {
        if (![v18 count])
        {
          selfCopy2 = self;
          v42 = v70;
          v41 = v71;
          v43 = v66;
LABEL_52:
          [(CDPDRecoveryValidatedJoinFlowController *)selfCopy2 _populateUserInfo:v41 recoveryIndexHandlers:v42 withRecoveryOptions:v43];
LABEL_55:
          telemetryRecoveryOption3 = [v39 telemetryRecoveryOption];
          [v17 addObject:telemetryRecoveryOption3];

          telemetryRecoveryOption2 = v76;
          goto LABEL_33;
        }

LABEL_51:
        [(CDPDRecoveryValidatedJoinFlowController *)self _populateUserInfo:v71 recoveryIndexHandlers:v70 withRecoveryOptions:v18];
        selfCopy2 = self;
        v41 = v71;
        v42 = v70;
        v43 = v69;
        goto LABEL_52;
      }
    }

    else if (limit == 2)
    {
      goto LABEL_51;
    }

    [(CDPDRecoveryValidatedJoinFlowController *)self _populateUserInfo:v71 recoveryIndexHandlers:v70 withRecoveryOptions:v73];
    if (v16)
    {
      telemetryRecoveryOption4 = [v16 telemetryRecoveryOption];
      [v17 addObject:telemetryRecoveryOption4];
    }

    goto LABEL_55;
  }

  if (limit == 2)
  {
    v32 = MEMORY[0x277CFD4A8];
    recoveryContext2 = [(CDPDRecoveryFlowController *)self recoveryContext];
    context2 = [recoveryContext2 context];
    LODWORD(v32) = [v32 isSubsetOfContextTypeSignIn:{objc_msgSend(context2, "type")}];

    if (!v32)
    {
      v78[0] = MEMORY[0x277D85DD0];
      v78[1] = 3221225472;
      v78[2] = __77__CDPDRecoveryValidatedJoinFlowController__handleLimit_forDevice_completion___block_invoke;
      v78[3] = &unk_278E247F8;
      v78[4] = self;
      v80 = v68;
      v81 = 2;
      v79 = v67;
      v47 = [(CDPDRecoveryValidatedJoinFlowController *)self _accountResetRecoveryOptionWithCompletion:v78];
      if (v47)
      {
        [v66 addObject:v47];
      }

      [(CDPDRecoveryValidatedJoinFlowController *)self _populateUserInfo:v71 recoveryIndexHandlers:v70 withRecoveryOptions:v66];
      telemetryRecoveryOption5 = [v47 telemetryRecoveryOption];
      [v17 addObject:telemetryRecoveryOption5];

      [(CDPDRecoveryValidatedJoinFlowController *)self _populateUserInfo:v71 recoveryIndexHandlers:v70 withRecoveryOptions:v69];
      if (v72)
      {
        telemetryRecoveryOption6 = [v72 telemetryRecoveryOption];
        [v17 addObject:telemetryRecoveryOption6];
      }

      telemetryRecoveryOption7 = v80;
      goto LABEL_61;
    }

    [(CDPDRecoveryValidatedJoinFlowController *)self _populateUserInfo:v71 recoveryIndexHandlers:v70 withRecoveryOptions:v73];
    if (v16)
    {
      telemetryRecoveryOption7 = [v16 telemetryRecoveryOption];
      [v17 addObject:telemetryRecoveryOption7];
LABEL_61:
    }
  }

  else if (limit == 1)
  {
    [(CDPDRecoveryValidatedJoinFlowController *)self _populateUserInfo:v71 recoveryIndexHandlers:v70 withRecoveryOptions:v73];
    if (v16)
    {
      telemetryRecoveryOption8 = [v16 telemetryRecoveryOption];
      [v17 addObject:telemetryRecoveryOption8];
    }
  }

LABEL_62:
  v50 = _CDPStateError();
  aaf_arrayAsCommaSeperatedString = [v17 aaf_arrayAsCommaSeperatedString];
  [v14 setObject:aaf_arrayAsCommaSeperatedString forKeyedSubscript:*MEMORY[0x277CFD6C8]];

  v52 = MEMORY[0x277CCABB0];
  recoveryContext3 = [(CDPDRecoveryFlowController *)self recoveryContext];
  context3 = [recoveryContext3 context];
  v55 = [v52 numberWithInteger:{objc_msgSend(context3, "totalEscrowDeviceCount")}];
  [v14 setObject:v55 forKeyedSubscript:*MEMORY[0x277CFD8A8]];

  v56 = MEMORY[0x277CCABB0];
  recoveryContext4 = [(CDPDRecoveryFlowController *)self recoveryContext];
  context4 = [recoveryContext4 context];
  v59 = [v56 numberWithInteger:{objc_msgSend(context4, "validEscrowDeviceCount")}];
  [v14 setObject:v59 forKeyedSubscript:*MEMORY[0x277CFD8B0]];

  v60 = MEMORY[0x277CCABB0];
  recoveryContext5 = [(CDPDRecoveryFlowController *)self recoveryContext];
  context5 = [recoveryContext5 context];
  v63 = [v60 numberWithInteger:{objc_msgSend(context5, "totalRecoveryAttempts")}];
  [v14 setObject:v63 forKeyedSubscript:*MEMORY[0x277CFD778]];

  rtcAnalyticsReporter = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [rtcAnalyticsReporter sendEvent:v14];

  [(CDPDRecoveryValidatedJoinFlowController *)self _showEntryLimitError:v50 withRecoveryOptionHandlers:v70 defaultIndex:0 completion:v68];
  v65 = *MEMORY[0x277D85DE8];
}

void __77__CDPDRecoveryValidatedJoinFlowController__handleLimit_forDevice_completion___block_invoke(void *a1, int a2)
{
  if (a2)
  {
    v3 = a1[6];
    v8 = _CDPStateError();
    (*(v3 + 16))(v3, 0, v8);
  }

  else
  {
    v4 = a1[5];
    v6 = a1[6];
    v5 = a1[7];
    v7 = a1[4];

    [v7 _handleLimit:v5 forDevice:v4 completion:v6];
  }
}

void __77__CDPDRecoveryValidatedJoinFlowController__handleLimit_forDevice_completion___block_invoke_2(void *a1, int a2)
{
  if (a2)
  {
    v3 = a1[6];
    v8 = _CDPStateError();
    (*(v3 + 16))(v3, 0, v8);
  }

  else
  {
    v4 = a1[5];
    v6 = a1[6];
    v5 = a1[7];
    v7 = a1[4];

    [v7 _handleLimit:v5 forDevice:v4 completion:v6];
  }
}

- (void)_populateUserInfo:(id)info recoveryIndexHandlers:(id)handlers withRecoveryOptions:(id)options
{
  v29 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  handlersCopy = handlers;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = options;
  v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    v12 = *MEMORY[0x277CCA480];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        if (v14)
        {
          v15 = [infoCopy objectForKeyedSubscript:v12];
          if (v15)
          {
            v16 = [infoCopy objectForKeyedSubscript:v12];
            array = [v16 mutableCopy];
          }

          else
          {
            array = [MEMORY[0x277CBEB18] array];
          }

          localizedRecoveryOption = [v14 localizedRecoveryOption];
          [array addObject:localizedRecoveryOption];

          recoveryHandler = [v14 recoveryHandler];
          v20 = _Block_copy(recoveryHandler);
          v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(handlersCopy, "count")}];
          [handlersCopy setObject:v20 forKeyedSubscript:v21];

          [infoCopy setObject:array forKeyedSubscript:v12];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)_userInfoForLimit:(unint64_t)limit withDevice:(id)device
{
  deviceCopy = device;
  if (limit != 2)
  {
    if (limit != 1)
    {
      v11 = 0;
      goto LABEL_10;
    }

    selfCopy2 = self;
    v8 = deviceCopy;
    v9 = 1;
    goto LABEL_8;
  }

  if (![MEMORY[0x277CFD560] isICSCHarmonizationEnabled])
  {
    selfCopy2 = self;
    v8 = deviceCopy;
    v9 = 2;
LABEL_8:
    v10 = [(CDPDRecoveryValidatedJoinFlowController *)selfCopy2 _limitErrorBodyForDevice:v8 limitType:v9];
    goto LABEL_9;
  }

  v10 = [(CDPDRecoveryValidatedJoinFlowController *)self _hardLimitErrorBodyWithDevice:deviceCopy];
LABEL_9:
  v11 = v10;
LABEL_10:
  v12 = [(CDPDRecoveryValidatedJoinFlowController *)self _entryLimitTitleForDevice:deviceCopy];
  v13 = [(CDPDRecoveryValidatedJoinFlowController *)self _infoDictionaryWithTitle:v12 andBody:v11];

  return v13;
}

- (id)_fallbackRecoveryOptionsForLimitType:(unint64_t)type withCompletion:(id)completion
{
  completionCopy = completion;
  array = [MEMORY[0x277CBEB18] array];
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to fallback recovery options...", buf, 2u);
  }

  validator = [(CDPDRecoveryFlowController *)self validator];
  supportedEscapeOfferMask = [validator supportedEscapeOfferMask];

  if ((supportedEscapeOfferMask & 2) != 0)
  {
    v10 = [(CDPDRecoveryValidatedJoinFlowController *)self _deviceSelectionRecoveryOptionWithCompletion:completionCopy];
    goto LABEL_14;
  }

  if ((supportedEscapeOfferMask & 0x80) != 0)
  {
    v10 = [(CDPDRecoveryValidatedJoinFlowController *)self _piggybackingRecoveryOptionWithCompletion:completionCopy];
    goto LABEL_14;
  }

  if ((~supportedEscapeOfferMask & 0x60) == 0)
  {
    if ([MEMORY[0x277CFD560] isICSCHarmonizationEnabled])
    {
      v10 = [(CDPDRecoveryValidatedJoinFlowController *)self _recoveryMethodRecoveryOptionWithCompletion:completionCopy];
      goto LABEL_14;
    }

LABEL_13:
    v10 = [(CDPDRecoveryValidatedJoinFlowController *)self _recoveryKeyRecoveryOptionWithCompletion:completionCopy];
    goto LABEL_14;
  }

  if ((supportedEscapeOfferMask & 0x20) != 0)
  {
    goto LABEL_13;
  }

  if ((supportedEscapeOfferMask & 0x40) == 0)
  {
    goto LABEL_15;
  }

  v10 = [(CDPDRecoveryValidatedJoinFlowController *)self _custodianRecoveryOptionWithCompletion:completionCopy];
LABEL_14:
  v11 = v10;
  [array addObject:v10];

LABEL_15:
  if (![array count])
  {
    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_24510B000, v12, OS_LOG_TYPE_DEFAULT, "No fallback available", v14, 2u);
    }
  }

  return array;
}

- (id)_skipSignInRecoveryOptionWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "Creating recovery option: Skip", buf, 2u);
  }

  v5 = objc_alloc_init(CDPDRecoveryOption);
  v6 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_MULTIPLE_INCORRECT_BUTTON_OK"];
  localizedString = [v6 localizedString];
  [(CDPDRecoveryOption *)v5 setLocalizedRecoveryOption:localizedString];

  [(CDPDRecoveryOption *)v5 setTelemetryRecoveryOption:*MEMORY[0x277CFD958]];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__CDPDRecoveryValidatedJoinFlowController__skipSignInRecoveryOptionWithCompletion___block_invoke;
  v10[3] = &unk_278E24820;
  v11 = completionCopy;
  v8 = completionCopy;
  [(CDPDRecoveryOption *)v5 setRecoveryHandler:v10];

  return v5;
}

void __83__CDPDRecoveryValidatedJoinFlowController__skipSignInRecoveryOptionWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _CDPStateError();
  (*(v1 + 16))(v1, 0, v2);
}

- (id)_accountResetRecoveryOptionWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Creating recovery option: Reset", buf, 2u);
  }

  v6 = objc_alloc_init(CDPDRecoveryOption);
  if ([MEMORY[0x277CFD560] isICSCHarmonizationEnabled])
  {
    [MEMORY[0x277CFD508] builderForKey:@"WALRUS_ALERT_BUTTON_TITLE_DELETE_ICLOUD_DATA" inTable:@"Localizable-Walrus"];
  }

  else
  {
    [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_MULTIPLE_INCORRECT_BUTTON_RESET"];
  }
  v7 = ;
  localizedString = [v7 localizedString];
  [(CDPDRecoveryOption *)v6 setLocalizedRecoveryOption:localizedString];

  [(CDPDRecoveryOption *)v6 setTelemetryRecoveryOption:*MEMORY[0x277CFDA18]];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __85__CDPDRecoveryValidatedJoinFlowController__accountResetRecoveryOptionWithCompletion___block_invoke;
  v11[3] = &unk_278E24898;
  v11[4] = self;
  v12 = completionCopy;
  v9 = completionCopy;
  [(CDPDRecoveryOption *)v6 setRecoveryHandler:v11];

  return v6;
}

void __85__CDPDRecoveryValidatedJoinFlowController__accountResetRecoveryOptionWithCompletion___block_invoke(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v2, OS_LOG_TYPE_DEFAULT, "User elected to Reset Encrypted Data, confirming...", buf, 2u);
  }

  v3 = [MEMORY[0x277CFD560] isICSCHarmonizationEnabled];
  v4 = *(a1 + 32);
  if (v3)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __85__CDPDRecoveryValidatedJoinFlowController__accountResetRecoveryOptionWithCompletion___block_invoke_56;
    v7[3] = &unk_278E24848;
    v7[4] = v4;
    [v4 _showQuotaScreenWithCompletion:v7];
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __85__CDPDRecoveryValidatedJoinFlowController__accountResetRecoveryOptionWithCompletion___block_invoke_2;
    v5[3] = &unk_278E24870;
    v6 = *(a1 + 40);
    [v4 _showAccountResetConfirmationWithCompletion:v5];
  }
}

void __85__CDPDRecoveryValidatedJoinFlowController__accountResetRecoveryOptionWithCompletion___block_invoke_56(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 validator];
  [v4 _handleResetOptionWithResetRequested:a2 localSecret:v5 validator:v6];
}

- (void)_handleResetOptionWithResetRequested:(BOOL)requested localSecret:(id)secret validator:(id)validator
{
  requestedCopy = requested;
  secretCopy = secret;
  validatorCopy = validator;
  if (!requestedCopy)
  {
    v11 = _CDPLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [CDPDRecoveryValidatedJoinFlowController _handleResetOptionWithResetRequested:localSecret:validator:];
    }

    goto LABEL_13;
  }

  uiProvider = [(CDPDRecoveryFlowController *)self uiProvider];

  v11 = _CDPLogSystem();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (!uiProvider)
  {
    if (v12)
    {
      [CDPDRecoveryValidatedJoinFlowController _handleResetOptionWithResetRequested:localSecret:validator:];
    }

LABEL_13:

    validator = [(CDPDRecoveryFlowController *)self validator];
    v23 = _CDPStateError();
    [validator cancelValidationWithError:v23];

LABEL_14:
    goto LABEL_15;
  }

  if (v12)
  {
    [CDPDRecoveryValidatedJoinFlowController _handleResetOptionWithResetRequested:localSecret:validator:];
  }

  v13 = MEMORY[0x277CFD480];
  recoveryContext = [(CDPDRecoveryFlowController *)self recoveryContext];
  context = [recoveryContext context];
  dsid = [context dsid];
  stringValue = [dsid stringValue];
  v18 = [v13 isICDPEnabledForDSID:stringValue];

  if (secretCopy || !v18)
  {
    v24 = _CDPLogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [CDPDRecoveryValidatedJoinFlowController _handleResetOptionWithResetRequested:localSecret:validator:];
    }

    validator = [(CDPDRecoveryFlowController *)self validator];
    [validator resetAccountCDPStateWithEscapeOptionsOffered:1 andSetSecret:secretCopy];
    goto LABEL_14;
  }

  uiProvider2 = [(CDPDRecoveryFlowController *)self uiProvider];
  recoveryContext2 = [(CDPDRecoveryFlowController *)self recoveryContext];
  context2 = [recoveryContext2 context];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __102__CDPDRecoveryValidatedJoinFlowController__handleResetOptionWithResetRequested_localSecret_validator___block_invoke;
  v25[3] = &unk_278E248C0;
  v25[4] = self;
  v26 = validatorCopy;
  [uiProvider2 cdpContext:context2 createLocalSecretWithCompletion:v25];

LABEL_15:
}

void __102__CDPDRecoveryValidatedJoinFlowController__handleResetOptionWithResetRequested_localSecret_validator___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 || [v6 code] == -5502)
  {
    v8 = [*(a1 + 32) validator];
    [v8 resetAccountCDPStateWithEscapeOptionsOffered:1 andSetSecret:v5];
  }

  else
  {
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __102__CDPDRecoveryValidatedJoinFlowController__handleResetOptionWithResetRequested_localSecret_validator___block_invoke_cold_1();
    }

    [*(a1 + 40) cancelValidationWithError:v7];
  }
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

  v5 = objc_alloc_init(CDPDRecoveryOption);
  v6 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_CANCEL_BUTTON"];
  localizedString = [v6 localizedString];
  [(CDPDRecoveryOption *)v5 setLocalizedRecoveryOption:localizedString];

  [(CDPDRecoveryOption *)v5 setTelemetryRecoveryOption:*MEMORY[0x277CFD958]];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__CDPDRecoveryValidatedJoinFlowController__cancelRecoveryOptionWithCompletion___block_invoke;
  v10[3] = &unk_278E24820;
  v11 = completionCopy;
  v8 = completionCopy;
  [(CDPDRecoveryOption *)v5 setRecoveryHandler:v10];

  return v5;
}

void __79__CDPDRecoveryValidatedJoinFlowController__cancelRecoveryOptionWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _CDPStateError();
  (*(v1 + 16))(v1, 0, v2);
}

- (id)_tryAgainLaterOptionWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "Creating recovery option: Try Again", buf, 2u);
  }

  v5 = objc_alloc_init(CDPDRecoveryOption);
  v6 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_FORGOT_CODE_DIALOG_CUSTODIAN_TRY_LATER"];
  localizedString = [v6 localizedString];
  [(CDPDRecoveryOption *)v5 setLocalizedRecoveryOption:localizedString];

  [(CDPDRecoveryOption *)v5 setTelemetryRecoveryOption:*MEMORY[0x277CFDA40]];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__CDPDRecoveryValidatedJoinFlowController__tryAgainLaterOptionWithCompletion___block_invoke;
  v10[3] = &unk_278E24820;
  v11 = completionCopy;
  v8 = completionCopy;
  [(CDPDRecoveryOption *)v5 setRecoveryHandler:v10];

  return v5;
}

void __78__CDPDRecoveryValidatedJoinFlowController__tryAgainLaterOptionWithCompletion___block_invoke(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __78__CDPDRecoveryValidatedJoinFlowController__tryAgainLaterOptionWithCompletion___block_invoke_cold_1();
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = _CDPStateError();
    (*(v3 + 16))(v3, 0, v4);
  }
}

- (id)_deviceSelectionRecoveryOptionWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "Creating recovery option: Choose Another Device", buf, 2u);
  }

  v5 = objc_alloc_init(CDPDRecoveryOption);
  v6 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_MULTIPLE_INCORRECT_BUTTON_CHOOSE_ANOTHER_DEVICE"];
  localizedString = [v6 localizedString];
  [(CDPDRecoveryOption *)v5 setLocalizedRecoveryOption:localizedString];

  [(CDPDRecoveryOption *)v5 setTelemetryRecoveryOption:*MEMORY[0x277CFD990]];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __88__CDPDRecoveryValidatedJoinFlowController__deviceSelectionRecoveryOptionWithCompletion___block_invoke;
  v10[3] = &unk_278E24820;
  v11 = completionCopy;
  v8 = completionCopy;
  [(CDPDRecoveryOption *)v5 setRecoveryHandler:v10];

  return v5;
}

void __88__CDPDRecoveryValidatedJoinFlowController__deviceSelectionRecoveryOptionWithCompletion___block_invoke(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __88__CDPDRecoveryValidatedJoinFlowController__deviceSelectionRecoveryOptionWithCompletion___block_invoke_cold_1();
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = _CDPStateError();
    (*(v3 + 16))(v3, 0, v4);
  }
}

- (id)_piggybackingRecoveryOptionWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "Creating recovery option: Send Code to My Devices", buf, 2u);
  }

  v5 = objc_alloc_init(CDPDRecoveryOption);
  v6 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_MULTIPLE_INCORRECT_BUTTON_PIGGYBACKING"];
  localizedString = [v6 localizedString];
  [(CDPDRecoveryOption *)v5 setLocalizedRecoveryOption:localizedString];

  [(CDPDRecoveryOption *)v5 setTelemetryRecoveryOption:*MEMORY[0x277CFD9B0]];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__CDPDRecoveryValidatedJoinFlowController__piggybackingRecoveryOptionWithCompletion___block_invoke;
  v10[3] = &unk_278E24820;
  v11 = completionCopy;
  v8 = completionCopy;
  [(CDPDRecoveryOption *)v5 setRecoveryHandler:v10];

  return v5;
}

void __85__CDPDRecoveryValidatedJoinFlowController__piggybackingRecoveryOptionWithCompletion___block_invoke(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __85__CDPDRecoveryValidatedJoinFlowController__piggybackingRecoveryOptionWithCompletion___block_invoke_cold_1();
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = _CDPStateError();
    (*(v3 + 16))(v3, 0, v4);
  }
}

- (id)_recoveryKeyRecoveryOptionWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "Creating recovery option: Recovery Key", buf, 2u);
  }

  v5 = objc_alloc_init(CDPDRecoveryOption);
  v6 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_FORGOT_CODE_DIALOG_RK"];
  localizedString = [v6 localizedString];
  [(CDPDRecoveryOption *)v5 setLocalizedRecoveryOption:localizedString];

  [(CDPDRecoveryOption *)v5 setTelemetryRecoveryOption:*MEMORY[0x277CFDA10]];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__CDPDRecoveryValidatedJoinFlowController__recoveryKeyRecoveryOptionWithCompletion___block_invoke;
  v10[3] = &unk_278E24820;
  v11 = completionCopy;
  v8 = completionCopy;
  [(CDPDRecoveryOption *)v5 setRecoveryHandler:v10];

  return v5;
}

void __84__CDPDRecoveryValidatedJoinFlowController__recoveryKeyRecoveryOptionWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _CDPStateError();
  (*(v1 + 16))(v1, 0, v2);
}

- (id)_custodianRecoveryOptionWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "Creating recovery option: Custodian", buf, 2u);
  }

  v5 = objc_alloc_init(CDPDRecoveryOption);
  if ([MEMORY[0x277CFD560] isICSCHarmonizationEnabled])
  {
    v6 = @"REMOTE_SECRET_ENTRY_ALERT_USE_RECOVERY_CONTACT";
  }

  else
  {
    v6 = @"REMOTE_SECRET_ENTRY_FORGOT_CODE_DIALOG_CUSTODIAN";
  }

  v7 = [MEMORY[0x277CFD508] builderForKey:v6];
  localizedString = [v7 localizedString];
  [(CDPDRecoveryOption *)v5 setLocalizedRecoveryOption:localizedString];

  [(CDPDRecoveryOption *)v5 setTelemetryRecoveryOption:*MEMORY[0x277CFD9F0]];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__CDPDRecoveryValidatedJoinFlowController__custodianRecoveryOptionWithCompletion___block_invoke;
  v11[3] = &unk_278E24820;
  v12 = completionCopy;
  v9 = completionCopy;
  [(CDPDRecoveryOption *)v5 setRecoveryHandler:v11];

  return v5;
}

void __82__CDPDRecoveryValidatedJoinFlowController__custodianRecoveryOptionWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _CDPStateError();
  (*(v1 + 16))(v1, 0, v2);
}

- (id)_recoveryMethodRecoveryOptionWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "Creating recovery option: Recovery Method", buf, 2u);
  }

  v5 = objc_alloc_init(CDPDRecoveryOption);
  v6 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_ALERT_USE_RECOVERY_METHOD"];
  localizedString = [v6 localizedString];
  [(CDPDRecoveryOption *)v5 setLocalizedRecoveryOption:localizedString];

  [(CDPDRecoveryOption *)v5 setTelemetryRecoveryOption:*MEMORY[0x277CFDA10]];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__CDPDRecoveryValidatedJoinFlowController__recoveryMethodRecoveryOptionWithCompletion___block_invoke;
  v10[3] = &unk_278E24820;
  v11 = completionCopy;
  v8 = completionCopy;
  [(CDPDRecoveryOption *)v5 setRecoveryHandler:v10];

  return v5;
}

void __87__CDPDRecoveryValidatedJoinFlowController__recoveryMethodRecoveryOptionWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _CDPStateError();
  (*(v1 + 16))(v1, 0, v2);
}

- (void)_showEntryLimitError:(id)error withRecoveryOptionHandlers:(id)handlers defaultIndex:(int64_t)index completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  handlersCopy = handlers;
  completionCopy = completion;
  v13 = _CDPLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uiProvider = [(CDPDRecoveryFlowController *)self uiProvider];
    *buf = 138412546;
    v25 = uiProvider;
    v26 = 2112;
    v27 = errorCopy;
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
    v20[2] = __115__CDPDRecoveryValidatedJoinFlowController__showEntryLimitError_withRecoveryOptionHandlers_defaultIndex_completion___block_invoke;
    v20[3] = &unk_278E248E8;
    v21 = handlersCopy;
    v23 = completionCopy;
    v22 = errorCopy;
    [uiProvider3 cdpContext:context showError:v22 withDefaultIndex:index withCompletion:v20];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, errorCopy);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __115__CDPDRecoveryValidatedJoinFlowController__showEntryLimitError_withRecoveryOptionHandlers_defaultIndex_completion___block_invoke(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    v13 = 138412290;
    v14 = v5;
    _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "User responded to presented alert with option: %@", &v13, 0xCu);
  }

  v6 = a1[4];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8)
  {
    v8[2](v8);
  }

  else
  {
    v9 = a1[5];
    v10 = a1[6];
    v11 = _CDPStateErrorWithUnderlying();
    (*(v10 + 16))(v10, 0, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_hardLimitErrorBodyWithDevice:(id)device
{
  deviceCopy = device;
  validator = [(CDPDRecoveryFlowController *)self validator];
  supportedEscapeOfferMask = [validator supportedEscapeOfferMask];

  if ((supportedEscapeOfferMask & 2) != 0)
  {
    v10 = [(CDPDRecoveryValidatedJoinFlowController *)self _entryHardLimitDeviceSelectionAvailableBodyForDevice:deviceCopy];
  }

  else if (supportedEscapeOfferMask < 0)
  {
    v10 = [(CDPDRecoveryValidatedJoinFlowController *)self _entryHardLimitPiggybackingAvailableBodyForDevice:deviceCopy];
  }

  else
  {
    if ((supportedEscapeOfferMask & 0x20) != 0)
    {
      if ((supportedEscapeOfferMask & 0x40) != 0)
      {
        [(CDPDRecoveryValidatedJoinFlowController *)self _entryHardLimitRecoveryKeyAndCustodianRecoveryAvailableBodyForDevice:deviceCopy];
      }

      else
      {
        [(CDPDRecoveryValidatedJoinFlowController *)self _entryHardLimitRecoveryKeyAvailableBodyForDevice:deviceCopy];
      }

      goto LABEL_7;
    }

    if ((supportedEscapeOfferMask & 0x40) == 0)
    {
      v7 = MEMORY[0x277CFD4A8];
      recoveryContext = [(CDPDRecoveryFlowController *)self recoveryContext];
      context = [recoveryContext context];
      LODWORD(v7) = [v7 isSubsetOfContextTypeSignIn:{objc_msgSend(context, "type")}];

      if (v7)
      {
        [(CDPDRecoveryValidatedJoinFlowController *)self _entryHardLimitNoResetForSignInForDevice:deviceCopy];
      }

      else
      {
        [(CDPDRecoveryValidatedJoinFlowController *)self _entryHardLimitRepairBodyForDevice:deviceCopy];
      }

      v10 = LABEL_7:;
      goto LABEL_10;
    }

    v10 = [(CDPDRecoveryValidatedJoinFlowController *)self _entryHardLimitCustodianRecoveryAvailableBodyForDevice:deviceCopy];
  }

LABEL_10:
  v11 = v10;

  return v11;
}

- (id)_limitErrorBodyForDevice:(id)device limitType:(unint64_t)type
{
  deviceCopy = device;
  validator = [(CDPDRecoveryFlowController *)self validator];
  supportedEscapeOfferMask = [validator supportedEscapeOfferMask];

  if ((supportedEscapeOfferMask & 2) != 0)
  {
    v8 = [(CDPDRecoveryValidatedJoinFlowController *)self _entryLimitDeviceSelectionAvailableBodyForDevice:deviceCopy];
  }

  else if (supportedEscapeOfferMask < 0)
  {
    v8 = [(CDPDRecoveryValidatedJoinFlowController *)self _entryLimitPiggybackingAvailableBodyForDevice:deviceCopy];
  }

  else if ((supportedEscapeOfferMask & 0x20) != 0)
  {
    if ([MEMORY[0x277CFD560] isICSCHarmonizationEnabled] && (supportedEscapeOfferMask & 0x40) != 0)
    {
      v8 = [(CDPDRecoveryValidatedJoinFlowController *)self _entryLimitRecoveryKeyAndCustodianRecoveryAvailableBodyForDevice:deviceCopy];
    }

    else
    {
      v8 = [(CDPDRecoveryValidatedJoinFlowController *)self _entryLimitRecoveryKeyAvailableBodyForDevice:deviceCopy];
    }
  }

  else if ((supportedEscapeOfferMask & 0x40) != 0)
  {
    v8 = [(CDPDRecoveryValidatedJoinFlowController *)self _entryLimitCustodianRecoveryAvailableBodyForDevice:deviceCopy];
  }

  else if ([MEMORY[0x277CFD560] isICSCHarmonizationEnabled])
  {
    v8 = [(CDPDRecoveryValidatedJoinFlowController *)self _entryLimitNoResetForDevice:deviceCopy];
  }

  else
  {
    v11 = MEMORY[0x277CFD4A8];
    recoveryContext = [(CDPDRecoveryFlowController *)self recoveryContext];
    context = [recoveryContext context];
    LODWORD(v11) = [v11 isSubsetOfContextTypeRepair:{objc_msgSend(context, "type")}];

    if (v11)
    {
      [(CDPDRecoveryValidatedJoinFlowController *)self _entryLimitNoResetForRepairForDevice:deviceCopy];
    }

    else
    {
      [(CDPDRecoveryValidatedJoinFlowController *)self _entryLimitSignInBodyForDevice:deviceCopy];
    }
    v8 = ;
  }

  v9 = v8;

  return v9;
}

- (id)_entryLimitRecoveryKeyAndCustodianRecoveryAvailableBodyForDevice:(id)device
{
  deviceCopy = device;
  recoveryContext = [(CDPDRecoveryFlowController *)self recoveryContext];
  context = [recoveryContext context];
  idmsRecovery = [context idmsRecovery];

  v8 = MEMORY[0x277CCACA8];
  if (idmsRecovery)
  {
    v9 = @"RECOVERY_REMOTE_SECRET_ENTRY_SOFT_LIMIT_ALERT_SUBTITLE_RK_AND_RC";
  }

  else
  {
    v9 = @"REMOTE_SECRET_ENTRY_SOFT_LIMIT_ALERT_SUBTITLE_RK_AND_RC";
  }

  v10 = [MEMORY[0x277CFD508] builderForKey:v9];
  v11 = [v10 addSecretType:{objc_msgSend(deviceCopy, "localSecretType")}];
  localizedString = [v11 localizedString];
  localizedName = [deviceCopy localizedName];

  v14 = [v8 stringWithValidatedFormat:localizedString validFormatSpecifiers:@"%@" error:0, localizedName];

  return v14;
}

- (id)_entryHardLimitRecoveryKeyAndCustodianRecoveryAvailableBodyForDevice:(id)device
{
  deviceCopy = device;
  recoveryContext = [(CDPDRecoveryFlowController *)self recoveryContext];
  context = [recoveryContext context];
  idmsRecovery = [context idmsRecovery];

  v8 = MEMORY[0x277CCACA8];
  if (idmsRecovery)
  {
    v9 = @"RECOVERY_REMOTE_SECRET_ENTRY_HARD_LIMIT_ALERT_SUBTITLE_RK_AND_RC";
  }

  else
  {
    v9 = @"REMOTE_SECRET_ENTRY_HARD_LIMIT_ALERT_SUBTITLE_RK_AND_RC";
  }

  v10 = [MEMORY[0x277CFD508] builderForKey:v9];
  v11 = [v10 addSecretType:{objc_msgSend(deviceCopy, "localSecretType")}];
  localizedString = [v11 localizedString];
  localizedName = [deviceCopy localizedName];

  v14 = [v8 stringWithValidatedFormat:localizedString validFormatSpecifiers:@"%@" error:0, localizedName];

  return v14;
}

- (id)_entryHardLimitPiggybackingAvailableBodyForDevice:(id)device
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MEMORY[0x277CFD508];
  deviceCopy = device;
  v6 = [v4 builderForKey:@"REMOTE_SECRET_ENTRY_HARD_LIMIT_ALERT_SUBTITLE_TRUSTED_DEVICES"];
  v7 = [v6 addSecretType:{objc_msgSend(deviceCopy, "localSecretType")}];
  localizedString = [v7 localizedString];
  localizedName = [deviceCopy localizedName];

  v10 = [v3 stringWithValidatedFormat:localizedString validFormatSpecifiers:@"%@" error:0, localizedName];

  return v10;
}

- (id)_entryHardLimitRecoveryKeyAvailableBodyForDevice:(id)device
{
  deviceCopy = device;
  recoveryContext = [(CDPDRecoveryFlowController *)self recoveryContext];
  context = [recoveryContext context];
  idmsRecovery = [context idmsRecovery];

  v8 = MEMORY[0x277CCACA8];
  if (idmsRecovery)
  {
    v9 = @"RECOVERY_REMOTE_SECRET_ENTRY_HARD_LIMIT_ALERT_SUBTITLE_RK";
  }

  else
  {
    v9 = @"REMOTE_SECRET_ENTRY_HARD_LIMIT_ALERT_SUBTITLE_RK";
  }

  v10 = [MEMORY[0x277CFD508] builderForKey:v9];
  v11 = [v10 addSecretType:{objc_msgSend(deviceCopy, "localSecretType")}];
  localizedString = [v11 localizedString];
  localizedName = [deviceCopy localizedName];

  v14 = [v8 stringWithValidatedFormat:localizedString validFormatSpecifiers:@"%@" error:0, localizedName];

  return v14;
}

- (id)_entryHardLimitCustodianRecoveryAvailableBodyForDevice:(id)device
{
  deviceCopy = device;
  recoveryContext = [(CDPDRecoveryFlowController *)self recoveryContext];
  context = [recoveryContext context];
  idmsRecovery = [context idmsRecovery];

  v8 = MEMORY[0x277CCACA8];
  if (idmsRecovery)
  {
    v9 = @"RECOVERY_REMOTE_SECRET_ENTRY_HARD_LIMIT_ALERT_SUBTITLE_RC";
  }

  else
  {
    v9 = @"REMOTE_SECRET_ENTRY_HARD_LIMIT_ALERT_SUBTITLE_RC";
  }

  v10 = [MEMORY[0x277CFD508] builderForKey:v9];
  v11 = [v10 addSecretType:{objc_msgSend(deviceCopy, "localSecretType")}];
  localizedString = [v11 localizedString];
  localizedName = [deviceCopy localizedName];

  v14 = [v8 stringWithValidatedFormat:localizedString validFormatSpecifiers:@"%@" error:0, localizedName];

  return v14;
}

- (id)_entryHardLimitNoResetForSignInForDevice:(id)device
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MEMORY[0x277CFD508];
  deviceCopy = device;
  v6 = [v4 builderForKey:@"REMOTE_SECRET_ENTRY_HARD_LIMIT_ALERT_SUBTITLE_NO_RECOVERY_METHOD"];
  v7 = [v6 addSecretType:{objc_msgSend(deviceCopy, "localSecretType")}];
  localizedString = [v7 localizedString];
  localizedName = [deviceCopy localizedName];

  v10 = [v3 stringWithValidatedFormat:localizedString validFormatSpecifiers:@"%@" error:0, localizedName];

  return v10;
}

- (id)_entryHardLimitRepairBodyForDevice:(id)device
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MEMORY[0x277CFD508];
  deviceCopy = device;
  v6 = [v4 builderForKey:@"REMOTE_SECRET_ENTRY_HARD_LIMIT_ALERT_SUBTITLE_NO_RECOVERY_RPD"];
  v7 = [v6 addSecretType:{objc_msgSend(deviceCopy, "localSecretType")}];
  localizedString = [v7 localizedString];
  localizedName = [deviceCopy localizedName];

  v10 = [v3 stringWithValidatedFormat:localizedString validFormatSpecifiers:@"%@" error:0, localizedName];

  return v10;
}

- (id)_entryHardLimitDeviceSelectionAvailableBodyForDevice:(id)device
{
  deviceCopy = device;
  recoveryContext = [(CDPDRecoveryFlowController *)self recoveryContext];
  context = [recoveryContext context];
  idmsRecovery = [context idmsRecovery];

  v8 = MEMORY[0x277CCACA8];
  if (idmsRecovery)
  {
    v9 = @"RECOVERY_REMOTE_SECRET_ENTRY_HARD_LIMIT_ALERT_SUBTITLE_OTHER_ICSC";
  }

  else
  {
    v9 = @"REMOTE_SECRET_ENTRY_HARD_LIMIT_ALERT_SUBTITLE_OTHER_ICSC";
  }

  v10 = [MEMORY[0x277CFD508] builderForKey:v9];
  v11 = [v10 addSecretType:{objc_msgSend(deviceCopy, "localSecretType")}];
  localizedString = [v11 localizedString];
  localizedName = [deviceCopy localizedName];

  v14 = [v8 stringWithValidatedFormat:localizedString validFormatSpecifiers:@"%@" error:0, localizedName];

  return v14;
}

- (id)_entryLimitNoResetForDevice:(id)device
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MEMORY[0x277CFD508];
  deviceCopy = device;
  v6 = [v4 builderForKey:@"REMOTE_SECRET_ENTRY_SOFT_LIMIT_ALERT_SUBTITLE_NO_RECOVERY_METHOD"];
  v7 = [v6 addSecretType:{objc_msgSend(deviceCopy, "localSecretType")}];
  localizedString = [v7 localizedString];
  localizedName = [deviceCopy localizedName];

  v10 = [v3 stringWithValidatedFormat:localizedString validFormatSpecifiers:@"%@" error:0, localizedName];

  return v10;
}

- (id)_entryLimitTitleForDevice:(id)device
{
  v3 = MEMORY[0x277CFD508];
  deviceCopy = device;
  v5 = [v3 builderForKey:@"REMOTE_SECRET_ENTRY_MULTIPLE_INCORRECT_TITLE"];
  localSecretType = [deviceCopy localSecretType];

  v7 = [v5 addSecretType:localSecretType];
  localizedString = [v7 localizedString];

  return localizedString;
}

- (id)_entryLimitSignInBodyForDevice:(id)device
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MEMORY[0x277CFD508];
  deviceCopy = device;
  v6 = [v4 builderForKey:@"REMOTE_SECRET_ENTRY_MULTIPLE_INCORRECT_MESSAGE_SIGNIN"];
  v7 = [v6 addSecretType:{objc_msgSend(deviceCopy, "localSecretType")}];
  localizedString = [v7 localizedString];
  localizedName = [deviceCopy localizedName];

  v10 = [v3 stringWithValidatedFormat:localizedString validFormatSpecifiers:@"%@" error:0, localizedName];

  return v10;
}

- (id)_entryLimitNoResetForRepairForDevice:(id)device
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MEMORY[0x277CFD508];
  deviceCopy = device;
  v6 = [v4 builderForKey:@"REMOTE_SECRET_ENTRY_MULTIPLE_INCORRECT_MESSAGE_NO_RESET"];
  v7 = [v6 addSecretType:{objc_msgSend(deviceCopy, "localSecretType")}];
  localizedString = [v7 localizedString];
  localizedName = [deviceCopy localizedName];

  v10 = [v3 stringWithValidatedFormat:localizedString validFormatSpecifiers:@"%@" error:0, localizedName];

  return v10;
}

- (id)_entryLimitResetAvailableBodyForDevice:(id)device
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MEMORY[0x277CFD508];
  deviceCopy = device;
  v6 = [v4 builderForKey:@"REMOTE_SECRET_ENTRY_MULTIPLE_INCORRECT_MESSAGE_RESET"];
  v7 = [v6 addSecretType:{objc_msgSend(deviceCopy, "localSecretType")}];
  localizedString = [v7 localizedString];
  localizedName = [deviceCopy localizedName];

  v10 = [v3 stringWithValidatedFormat:localizedString validFormatSpecifiers:@"%@" error:0, localizedName];

  return v10;
}

- (id)_entryLimitRecoveryKeyAvailableBodyForDevice:(id)device
{
  deviceCopy = device;
  if ([MEMORY[0x277CFD560] isICSCHarmonizationEnabled])
  {
    recoveryContext = [(CDPDRecoveryFlowController *)self recoveryContext];
    context = [recoveryContext context];
    idmsRecovery = [context idmsRecovery];

    v8 = MEMORY[0x277CCACA8];
    if (idmsRecovery)
    {
      v9 = @"RECOVERY_REMOTE_SECRET_ENTRY_SOFT_LIMIT_ALERT_SUBTITLE_RK";
    }

    else
    {
      v9 = @"REMOTE_SECRET_ENTRY_SOFT_LIMIT_ALERT_SUBTITLE_RK";
    }

    v11 = [MEMORY[0x277CFD508] builderForKey:v9];
    v12 = [v11 addSecretType:{objc_msgSend(deviceCopy, "localSecretType")}];
    localizedString = [v12 localizedString];
    localizedName = [deviceCopy localizedName];
    v18 = [v8 stringWithValidatedFormat:localizedString validFormatSpecifiers:@"%@" error:0, localizedName];
  }

  else
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_GLOBAL_LIMIT"];
    v12 = [v11 addSecretType:{objc_msgSend(deviceCopy, "localSecretType")}];
    localizedString = [deviceCopy modelClass];
    localizedName = [v12 addDeviceClass:localizedString];
    localizedString2 = [localizedName localizedString];
    localizedName2 = [deviceCopy localizedName];
    localizedName3 = [deviceCopy localizedName];
    v18 = [v10 stringWithValidatedFormat:localizedString2 validFormatSpecifiers:@"%@%@" error:0, localizedName2, localizedName3];
  }

  return v18;
}

- (id)_entryLimitCustodianRecoveryAvailableBodyForDevice:(id)device
{
  deviceCopy = device;
  if ([MEMORY[0x277CFD560] isICSCHarmonizationEnabled])
  {
    recoveryContext = [(CDPDRecoveryFlowController *)self recoveryContext];
    context = [recoveryContext context];
    idmsRecovery = [context idmsRecovery];

    v8 = MEMORY[0x277CCACA8];
    if (idmsRecovery)
    {
      v9 = @"RECOVERY_REMOTE_SECRET_ENTRY_SOFT_LIMIT_ALERT_SUBTITLE_RC";
    }

    else
    {
      v9 = @"REMOTE_SECRET_ENTRY_SOFT_LIMIT_ALERT_SUBTITLE_RC";
    }

    v11 = [MEMORY[0x277CFD508] builderForKey:v9];
    v12 = [v11 addSecretType:{objc_msgSend(deviceCopy, "localSecretType")}];
    localizedString = [v12 localizedString];
    localizedName = [deviceCopy localizedName];
    v16 = [v8 stringWithValidatedFormat:localizedString validFormatSpecifiers:@"%@" error:0, localizedName];
  }

  else
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CFD508] builderForKey:@"CUSTODIAN_RECOVERY_HELP_PROMPT_MESSAGE"];
    v12 = [v11 addSecretType:{objc_msgSend(deviceCopy, "localSecretType")}];
    localizedString = [v12 localizedString];
    localizedName = [deviceCopy localizedName];
    localizedName2 = [deviceCopy localizedName];
    v16 = [v10 stringWithValidatedFormat:localizedString validFormatSpecifiers:@"%@%@" error:0, localizedName, localizedName2];
  }

  return v16;
}

- (id)_entryLimitDeviceSelectionAvailableBodyForDevice:(id)device
{
  cdpDevices = self->_cdpDevices;
  deviceCopy = device;
  prevailingLocalSecretType = [(NSArray *)cdpDevices prevailingLocalSecretType];
  isICSCHarmonizationEnabled = [MEMORY[0x277CFD560] isICSCHarmonizationEnabled];
  v7 = MEMORY[0x277CCACA8];
  if (isICSCHarmonizationEnabled)
  {
    v8 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_SOFT_LIMIT_ALERT_SUBTITLE_OTHER_ICSC"];
    v9 = [v8 addSecretType:{objc_msgSend(deviceCopy, "localSecretType")}];
    localizedString = [v9 localizedString];
    localizedName = [deviceCopy localizedName];

    v12 = [v7 stringWithValidatedFormat:localizedString validFormatSpecifiers:@"%@" error:0, localizedName];
  }

  else
  {
    v8 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_FORGOT_CODE_DIALOG_MESSAGE_ANOTHER_DEVICE"];
    v9 = [v8 addSecretType:{objc_msgSend(deviceCopy, "localSecretType")}];
    localizedString = [v9 addSecretType:prevailingLocalSecretType];
    localizedName = [localizedString localizedString];
    localizedName2 = [deviceCopy localizedName];

    v12 = [v7 stringWithValidatedFormat:localizedName validFormatSpecifiers:@"%@" error:0, localizedName2];
  }

  return v12;
}

- (id)_entryLimitPiggybackingAvailableBodyForDevice:(id)device
{
  v3 = MEMORY[0x277CFD560];
  deviceCopy = device;
  isICSCHarmonizationEnabled = [v3 isICSCHarmonizationEnabled];
  v6 = MEMORY[0x277CCACA8];
  if (isICSCHarmonizationEnabled)
  {
    v7 = @"REMOTE_SECRET_ENTRY_SOFT_LIMIT_ALERT_SUBTITLE_TRUSTED_DEVICES";
  }

  else
  {
    v7 = @"PIGGYBACKING_RECOVERY_HELP_PROMPT_MESSAGE";
  }

  v8 = [MEMORY[0x277CFD508] builderForKey:v7];
  v9 = [v8 addSecretType:{objc_msgSend(deviceCopy, "localSecretType")}];
  localizedString = [v9 localizedString];
  localizedName = [deviceCopy localizedName];
  localizedName2 = [deviceCopy localizedName];

  v13 = [v6 stringWithValidatedFormat:localizedString validFormatSpecifiers:@"%@%@" error:0, localizedName, localizedName2];

  return v13;
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

- (void)_showQuotaScreenWithCompletion:(id)completion
{
  completionCopy = completion;
  uiProvider = [(CDPDRecoveryFlowController *)self uiProvider];

  if (uiProvider)
  {
    uiProvider2 = [(CDPDRecoveryFlowController *)self uiProvider];
    [uiProvider2 presentQuotaScreenWithCompletion:completionCopy];
  }

  else
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CDPDRecoveryValidatedJoinFlowController _showQuotaScreenWithCompletion:];
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_showAccountResetConfirmationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Prompting user for Reset confirmation", buf, 2u);
  }

  v6 = [MEMORY[0x277CBEC10] mutableCopy];
  v7 = [(CDPDRecoveryValidatedJoinFlowController *)self _resetDataErrorForCurrentContextWithRecoveryIndexMap:v6];
  uiProvider = [(CDPDRecoveryFlowController *)self uiProvider];

  if (uiProvider)
  {
    uiProvider2 = [(CDPDRecoveryFlowController *)self uiProvider];
    recoveryContext = [(CDPDRecoveryFlowController *)self recoveryContext];
    context = [recoveryContext context];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __87__CDPDRecoveryValidatedJoinFlowController__showAccountResetConfirmationWithCompletion___block_invoke;
    v12[3] = &unk_278E24910;
    v13 = v6;
    v14 = completionCopy;
    [uiProvider2 cdpContext:context showError:v7 withDefaultIndex:1 withCompletion:v12];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

uint64_t __87__CDPDRecoveryValidatedJoinFlowController__showAccountResetConfirmationWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "Reset confirmation prompt came back with: %@", &v11, 0xCu);
  }

  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  v8 = [v6 objectForKeyedSubscript:v7];
  [v8 BOOLValue];

  result = (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_resetDataErrorForCurrentContextWithRecoveryIndexMap:(id)map
{
  v33[2] = *MEMORY[0x277D85DE8];
  mapCopy = map;
  _isWalrusEnabled = [(CDPDRecoveryValidatedJoinFlowController *)self _isWalrusEnabled];
  v6 = [MEMORY[0x277CBEC10] mutableCopy];
  if (_isWalrusEnabled)
  {
    v7 = [MEMORY[0x277CFD508] builderForKey:@"RPD_CONFIRMATION_STEP_2_TITLE" inTable:@"Localizable-Walrus"];
    localizedString = [v7 localizedString];
    [v6 setObject:localizedString forKeyedSubscript:*MEMORY[0x277CCA450]];

    v9 = [MEMORY[0x277CFD508] builderForKey:@"RPD_CONFIRMATION_STEP_2_MESSAGE" inTable:@"Localizable-Walrus"];
    localizedString2 = [v9 localizedString];
    [v6 setObject:localizedString2 forKeyedSubscript:*MEMORY[0x277CCA470]];

    v11 = [MEMORY[0x277CFD508] builderForKey:@"WALRUS_STORAGE_LIST_UNAVAILABLE_CONFIRMATION_DELETE_BUTTON_TITLE"];
    localizedString3 = [v11 localizedString];
    v33[0] = localizedString3;
    v13 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_CANCEL_BUTTON"];
    localizedString4 = [v13 localizedString];
    v33[1] = localizedString4;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
    [v6 setObject:v15 forKeyedSubscript:*MEMORY[0x277CCA480]];

    [mapCopy setObject:MEMORY[0x277CBEC38] forKeyedSubscript:&unk_2858221B0];
    v16 = _CDPLogSystem();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    v32 = mapCopy;
    v17 = "Showing RPD error alert for Walrus user. RecoveryMap is %@";
  }

  else
  {
    v18 = [MEMORY[0x277CFD508] builderForKey:@"RESET_CONFIRMATION_DIALOG_TITLE"];
    localizedString5 = [v18 localizedString];
    [v6 setObject:localizedString5 forKeyedSubscript:*MEMORY[0x277CCA450]];

    v20 = [MEMORY[0x277CFD508] builderForKey:@"RESET_CONFIRMATION_DIALOG_MESSAGE"];
    localizedString6 = [v20 localizedString];
    [v6 setObject:localizedString6 forKeyedSubscript:*MEMORY[0x277CCA470]];

    v22 = [MEMORY[0x277CFD508] builderForKey:@"RESET_CONFIRMATION_DIALOG_BUTTON_RESET"];
    localizedString7 = [v22 localizedString];
    v24 = [MEMORY[0x277CFD508] builderForKey:{@"GENERIC_CANCEL_BUTTON", localizedString7}];
    localizedString8 = [v24 localizedString];
    v30[1] = localizedString8;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    [v6 setObject:v26 forKeyedSubscript:*MEMORY[0x277CCA480]];

    [mapCopy setObject:MEMORY[0x277CBEC38] forKeyedSubscript:&unk_2858221B0];
    v16 = _CDPLogSystem();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    v32 = mapCopy;
    v17 = "Showing RPD error alert for non-Walrus user. RecoveryMap is %@";
  }

  _os_log_impl(&dword_24510B000, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 0xCu);
LABEL_7:

  v27 = _CDPStateError();

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)_resetProtectedDataErrorUnrecoverable
{
  v25[2] = *MEMORY[0x277D85DE8];
  _isWalrusEnabled = [(CDPDRecoveryValidatedJoinFlowController *)self _isWalrusEnabled];
  v3 = [MEMORY[0x277CBEC10] mutableCopy];
  v4 = _CDPLogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (_isWalrusEnabled)
  {
    if (v5)
    {
      v23 = 0;
      _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "Showing RPD unrecoverable error alert for Walrus user", &v23, 2u);
    }

    v6 = [MEMORY[0x277CFD508] builderForKey:@"RPD_CONFIRMATION_STEP_2_TITLE" inTable:@"Localizable-Walrus"];
    localizedString = [v6 localizedString];
    [v3 setObject:localizedString forKeyedSubscript:*MEMORY[0x277CCA450]];

    v8 = [MEMORY[0x277CFD508] builderForKey:@"RPD_CONFIRMATION_STEP_2_MESSAGE" inTable:@"Localizable-Walrus"];
    localizedString2 = [v8 localizedString];
    [v3 setObject:localizedString2 forKeyedSubscript:*MEMORY[0x277CCA470]];

    v10 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_CANCEL_BUTTON"];
    localizedString3 = [v10 localizedString];
    v25[0] = localizedString3;
    v12 = [MEMORY[0x277CFD508] builderForKey:@"WALRUS_ALERT_BUTTON_TITLE_DELETE_ICLOUD_DATA" inTable:@"Localizable-Walrus"];
    v13 = v25;
  }

  else
  {
    if (v5)
    {
      v23 = 0;
      _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "Showing RPD unrecoverable error alert for non-Walrus user", &v23, 2u);
    }

    v14 = [MEMORY[0x277CFD508] builderForKey:@"RESET_CONFIRMATION_DIALOG_TITLE_NO_RECOVERY"];
    localizedString4 = [v14 localizedString];
    [v3 setObject:localizedString4 forKeyedSubscript:*MEMORY[0x277CCA450]];

    v16 = [MEMORY[0x277CFD508] builderForKey:@"RESET_CONFIRMATION_DIALOG_MESSAGE_NO_RECOVERY"];
    localizedString5 = [v16 localizedString];
    [v3 setObject:localizedString5 forKeyedSubscript:*MEMORY[0x277CCA470]];

    v10 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_CANCEL_BUTTON"];
    localizedString3 = [v10 localizedString];
    v24 = localizedString3;
    v12 = [MEMORY[0x277CFD508] builderForKey:@"RESET_CONFIRMATION_DIALOG_BUTTON_RESET_NO_RECOVERY"];
    v13 = &v24;
  }

  localizedString6 = [v12 localizedString];
  v13[1] = localizedString6;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  [v3 setObject:v19 forKeyedSubscript:*MEMORY[0x277CCA480]];

  v20 = _CDPStateError();

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_skipErrorUnrecoverable
{
  v15[1] = *MEMORY[0x277D85DE8];
  [(CDPDRecoveryValidatedJoinFlowController *)self _isWalrusEnabled];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_24510B000, v3, OS_LOG_TYPE_DEFAULT, "Showing RPD skip error alert for non-Walrus user", v14, 2u);
  }

  v4 = [MEMORY[0x277CFD508] builderForKey:@"SKIP_CONFIRMATION_DIALOG_TITLE_NO_RECOVERY"];
  localizedString = [v4 localizedString];
  [dictionary setObject:localizedString forKeyedSubscript:*MEMORY[0x277CCA450]];

  v6 = [MEMORY[0x277CFD508] builderForKey:@"SKIP_CONFIRMATION_DIALOG_MESSAGE_NO_RECOVERY"];
  localizedString2 = [v6 localizedString];
  [dictionary setObject:localizedString2 forKeyedSubscript:*MEMORY[0x277CCA470]];

  v8 = [MEMORY[0x277CFD508] builderForKey:@"DATA_RECOVERY_ESCAPE_OPTION_SKIP"];
  localizedString3 = [v8 localizedString];
  v15[0] = localizedString3;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [dictionary setObject:v10 forKeyedSubscript:*MEMORY[0x277CCA480]];

  v11 = _CDPStateError();

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_handleNoRecoveryFactorsWithMask:(unint64_t)mask validator:(id)validator
{
  validatorCopy = validator;
  uiProvider = [(CDPDRecoveryFlowController *)self uiProvider];

  if (uiProvider)
  {
    v23 = validatorCopy;
    v8 = [CDPEscapeOffersLedger alloc];
    recoveryContext = [(CDPDRecoveryFlowController *)self recoveryContext];
    mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
    hasLocalSecret = [mEMORY[0x277CFD4F8] hasLocalSecret];
    mEMORY[0x277CFD480] = [MEMORY[0x277CFD480] sharedInstance];
    isVirtualMachine = [MEMORY[0x277CFD560] isVirtualMachine];
    recoveryContext2 = [(CDPDRecoveryFlowController *)self recoveryContext];
    context = [recoveryContext2 context];
    v16 = -[CDPEscapeOffersLedger initWithExpectedEscapeOffers:recoveryFlowContext:deviceHasPasscode:probationChecker:deviceIsVM:isICDPEnabled:](v8, "initWithExpectedEscapeOffers:recoveryFlowContext:deviceHasPasscode:probationChecker:deviceIsVM:isICDPEnabled:", mask, recoveryContext, hasLocalSecret, mEMORY[0x277CFD480], isVirtualMachine, [context isICDPEnabledFromNetwork]);

    canOfferRPD = [(CDPEscapeOffersLedger *)v16 canOfferRPD];
    if (canOfferRPD)
    {
      [(CDPDRecoveryValidatedJoinFlowController *)self _resetProtectedDataErrorUnrecoverable];
    }

    else
    {
      [(CDPDRecoveryValidatedJoinFlowController *)self _skipErrorUnrecoverable];
    }
    v19 = ;
    uiProvider2 = [(CDPDRecoveryFlowController *)self uiProvider];
    recoveryContext3 = [(CDPDRecoveryFlowController *)self recoveryContext];
    context2 = [recoveryContext3 context];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __86__CDPDRecoveryValidatedJoinFlowController__handleNoRecoveryFactorsWithMask_validator___block_invoke;
    v25[3] = &unk_278E24960;
    v27 = canOfferRPD;
    v25[4] = self;
    validatorCopy = v24;
    v26 = v24;
    [uiProvider2 cdpContext:context2 showError:v19 withDefaultIndex:1 withCompletion:v25];
  }

  else
  {
    v18 = _CDPLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [CDPDRecoveryValidatedJoinFlowController _handleNoRecoveryFactorsWithMask:validator:];
    }

    [(CDPDRecoveryValidatedJoinFlowController *)self _handleResetOptionWithResetRequested:0 localSecret:0 validator:validatorCopy];
  }
}

void __86__CDPDRecoveryValidatedJoinFlowController__handleNoRecoveryFactorsWithMask_validator___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    *buf = 138412290;
    v12 = v5;
    _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "Reset confirmation prompt came back with: %@", buf, 0xCu);
  }

  if (*(a1 + 48) != 1)
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __86__CDPDRecoveryValidatedJoinFlowController__handleNoRecoveryFactorsWithMask_validator___block_invoke_cold_1();
    }

    goto LABEL_10;
  }

  if (a2 != 1)
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __86__CDPDRecoveryValidatedJoinFlowController__handleNoRecoveryFactorsWithMask_validator___block_invoke_cold_2();
    }

LABEL_10:

    [*(a1 + 32) _handleResetOptionWithResetRequested:0 localSecret:0 validator:*(a1 + 40)];
    goto LABEL_11;
  }

  v6 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__CDPDRecoveryValidatedJoinFlowController__handleNoRecoveryFactorsWithMask_validator___block_invoke_216;
  v9[3] = &unk_278E24938;
  v9[4] = v6;
  v10 = *(a1 + 40);
  [v6 _showQuotaScreenWithCompletion:v9];

LABEL_11:
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isWalrusEnabled
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    recoveryContext = [(CDPDRecoveryFlowController *)self recoveryContext];
    context = [recoveryContext context];
    v11 = 134217984;
    walrusStatus = [context walrusStatus];
    _os_log_impl(&dword_24510B000, v3, OS_LOG_TYPE_DEFAULT, "Walrus status on recovery context is %ld", &v11, 0xCu);
  }

  recoveryContext2 = [(CDPDRecoveryFlowController *)self recoveryContext];
  context2 = [recoveryContext2 context];
  v8 = [context2 walrusStatus] == 1;

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void __80__CDPDRecoveryValidatedJoinFlowController_shouldOfferPiggybackingBasedRecovery___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_escapeOfferForDevices:(void *)a1 remoteApproval:(NSObject *)a2 forMultipleICSC:completion:.cold.1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = [a1 recoveryContext];
  v5 = [v4 context];
  v6 = [v3 numberWithInteger:{objc_msgSend(v5, "type")}];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_24510B000, a2, OS_LOG_TYPE_DEBUG, "Context Type: %@", v8, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_escapeOfferForDevices:remoteApproval:forMultipleICSC:completion:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "_escapeOfferForDevices: Encountered error while checking RK support: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __109__CDPDRecoveryValidatedJoinFlowController_remoteSecretValidator_attemptCustodianRecoveryWithInfo_completion___block_invoke_cold_1(char a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109378;
  v4[1] = a1 & 1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_24510B000, log, OS_LOG_TYPE_ERROR, "Recover Octagon using custodian info completed - isJoined: %{BOOL}d, error: %@", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

void __117__CDPDRecoveryValidatedJoinFlowController_remoteSecretValidator_attemptCircleJoinWithPiggybackingContext_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Failed to join circle with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __117__CDPDRecoveryValidatedJoinFlowController_remoteSecretValidator_attemptCircleJoinWithPiggybackingContext_completion___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "Joined circle with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __101__CDPDRecoveryValidatedJoinFlowController_secretValidator_recoverSecureBackupWithContext_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_24510B000, v0, v1, "clique recovery failed with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleResetOptionWithResetRequested:localSecret:validator:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleResetOptionWithResetRequested:localSecret:validator:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleResetOptionWithResetRequested:localSecret:validator:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __102__CDPDRecoveryValidatedJoinFlowController__handleResetOptionWithResetRequested_localSecret_validator___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end