@interface CDPDRecoveryValidatedJoinFlowController
- (BOOL)_isWalrusEnabled;
- (id)_accountResetRecoveryOptionWithCompletion:(id)a3;
- (id)_cancelRecoveryOptionWithCompletion:(id)a3;
- (id)_custodianRecoveryOptionWithCompletion:(id)a3;
- (id)_deviceSelectionRecoveryOptionWithCompletion:(id)a3;
- (id)_entryHardLimitCustodianRecoveryAvailableBodyForDevice:(id)a3;
- (id)_entryHardLimitDeviceSelectionAvailableBodyForDevice:(id)a3;
- (id)_entryHardLimitNoResetForSignInForDevice:(id)a3;
- (id)_entryHardLimitPiggybackingAvailableBodyForDevice:(id)a3;
- (id)_entryHardLimitRecoveryKeyAndCustodianRecoveryAvailableBodyForDevice:(id)a3;
- (id)_entryHardLimitRecoveryKeyAvailableBodyForDevice:(id)a3;
- (id)_entryHardLimitRepairBodyForDevice:(id)a3;
- (id)_entryLimitCustodianRecoveryAvailableBodyForDevice:(id)a3;
- (id)_entryLimitDeviceSelectionAvailableBodyForDevice:(id)a3;
- (id)_entryLimitNoResetForDevice:(id)a3;
- (id)_entryLimitNoResetForRepairForDevice:(id)a3;
- (id)_entryLimitPiggybackingAvailableBodyForDevice:(id)a3;
- (id)_entryLimitRecoveryKeyAndCustodianRecoveryAvailableBodyForDevice:(id)a3;
- (id)_entryLimitRecoveryKeyAvailableBodyForDevice:(id)a3;
- (id)_entryLimitResetAvailableBodyForDevice:(id)a3;
- (id)_entryLimitSignInBodyForDevice:(id)a3;
- (id)_entryLimitTitleForDevice:(id)a3;
- (id)_fallbackRecoveryOptionsForLimitType:(unint64_t)a3 withCompletion:(id)a4;
- (id)_hardLimitErrorBodyWithDevice:(id)a3;
- (id)_infoDictionaryWithTitle:(id)a3 andBody:(id)a4;
- (id)_limitErrorBodyForDevice:(id)a3 limitType:(unint64_t)a4;
- (id)_piggybackingRecoveryOptionWithCompletion:(id)a3;
- (id)_recoveryKeyRecoveryOptionWithCompletion:(id)a3;
- (id)_recoveryMethodRecoveryOptionWithCompletion:(id)a3;
- (id)_resetDataErrorForCurrentContextWithRecoveryIndexMap:(id)a3;
- (id)_resetProtectedDataErrorUnrecoverable;
- (id)_skipErrorUnrecoverable;
- (id)_skipSignInRecoveryOptionWithCompletion:(id)a3;
- (id)_tryAgainLaterOptionWithCompletion:(id)a3;
- (id)_userInfoForLimit:(unint64_t)a3 withDevice:(id)a4;
- (void)_escapeOfferForDevices:(id)a3 remoteApproval:(BOOL)a4 forMultipleICSC:(BOOL)a5 completion:(id)a6;
- (void)_handleHardLimitErrorForCurrentContextWithDevice:(id)a3 completion:(id)a4;
- (void)_handleLimit:(unint64_t)a3 forDevice:(id)a4 completion:(id)a5;
- (void)_handleNoRecoveryFactorsWithMask:(unint64_t)a3 validator:(id)a4;
- (void)_handleResetOptionWithResetRequested:(BOOL)a3 localSecret:(id)a4 validator:(id)a5;
- (void)_handleSoftLimitErrorForCurrentContextWithDevice:(id)a3 completion:(id)a4;
- (void)_isSingleICSC:(id)a3;
- (void)_populateUserInfo:(id)a3 recoveryIndexHandlers:(id)a4 withRecoveryOptions:(id)a5;
- (void)_showAccountResetConfirmationWithCompletion:(id)a3;
- (void)_showEntryLimitError:(id)a3 withRecoveryOptionHandlers:(id)a4 defaultIndex:(int64_t)a5 completion:(id)a6;
- (void)_showQuotaScreenWithCompletion:(id)a3;
- (void)cancelRemoteSecretValidatorApplicationToJoinCircle:(id)a3;
- (void)remoteSecretValidator:(id)a3 applyToJoinCircleWithJoinHandler:(id)a4;
- (void)remoteSecretValidator:(id)a3 attemptCircleJoinWithPiggybackingContext:(id)a4 completion:(id)a5;
- (void)remoteSecretValidator:(id)a3 attemptCustodianRecoveryWithInfo:(id)a4 completion:(id)a5;
- (void)secretValidator:(id)a3 didFailRecovery:(id)a4 withError:(id)a5 completion:(id)a6;
- (void)secretValidator:(id)a3 recoverSecureBackupWithContext:(id)a4 completion:(id)a5;
- (void)secretValidatorWillAttemptRecovery;
- (void)shouldOfferPiggybackingBasedRecovery:(id)a3;
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

- (void)_isSingleICSC:(id)a3
{
  v4 = a3;
  v5 = [(CDPDRecoveryFlowController *)self secureBackupController];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__CDPDRecoveryValidatedJoinFlowController__isSingleICSC___block_invoke;
  v7[3] = &unk_278E24708;
  v8 = v4;
  v6 = v4;
  [v5 getBackupRecordDevicesWithOptionForceFetch:0 completion:v7];
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

- (void)shouldOfferPiggybackingBasedRecovery:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277CFD560] isInternalBuild] && CFPreferencesGetAppBooleanValue(@"offerPiggybackingForCDPRepair", @"com.apple.corecdp", 0))
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [CDPDRecoveryValidatedJoinFlowController shouldOfferPiggybackingBasedRecovery:];
    }

    if (v4)
    {
      v4[2](v4, 1);
    }
  }

  else
  {
    v6 = [MEMORY[0x277CF0130] sharedInstance];
    v7 = [(CDPDRecoveryFlowController *)self recoveryContext];
    v8 = [v7 context];
    v9 = [v8 altDSID];
    v10 = [v6 authKitAccountWithAltDSID:v9];

    v11 = [MEMORY[0x277CF0130] sharedInstance];
    v12 = [v11 piggybackingApprovalEligible:v10];

    v13 = [MEMORY[0x277CFD560] isCDPRepairWithProximityBasedPiggybackingEnabled];
    v14 = _CDPLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v16 = [(CDPDRecoveryFlowController *)self recoveryContext];
      v17 = [v16 context];
      *buf = 67109632;
      v23 = v13;
      v24 = 2048;
      v25 = [v17 type];
      v26 = 1024;
      v27 = v12;
      _os_log_debug_impl(&dword_24510B000, v14, OS_LOG_TYPE_DEBUG, "piggybackingBasedCDPRecoveryFeatureEnabled = %d CDPRepairContext = %ld piggybackingApprovalEligible = %d", buf, 0x18u);
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __80__CDPDRecoveryValidatedJoinFlowController_shouldOfferPiggybackingBasedRecovery___block_invoke;
    v18[3] = &unk_278E24730;
    v18[4] = self;
    v19 = v4;
    v20 = v13;
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

- (void)_escapeOfferForDevices:(id)a3 remoteApproval:(BOOL)a4 forMultipleICSC:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v9 = a3;
  v10 = a6;
  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [CDPDRecoveryValidatedJoinFlowController _escapeOfferForDevices:v11 remoteApproval:? forMultipleICSC:? completion:?];
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 1;
  if ([v9 count] >= 2)
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
    v14 = [(CDPDRecoveryFlowController *)self recoveryContext];
    v15 = [v14 context];
    v16 = [v13 isSubsetOfContextTypeRepair:{objc_msgSend(v15, "type")}] | !v7;

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
  v19 = [(CDPDRecoveryFlowController *)self recoveryContext];
  v20 = [v19 context];
  LODWORD(v18) = [v18 isSubsetOfContextTypeSignIn:{objc_msgSend(v20, "type")}];

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

  v22 = [(CDPDRecoveryFlowController *)self secureBackupController];
  v35 = 0;
  v23 = [v22 supportsRecoveryKeyWithError:&v35];
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

  v27 = [(CDPDRecoveryFlowController *)self recoveryContext];
  v28 = [v27 context];
  v29 = [v28 _supportsCustodianRecovery];

  if (v29)
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
  v31 = v10;
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

- (void)remoteSecretValidator:(id)a3 applyToJoinCircleWithJoinHandler:(id)a4
{
  v5 = a4;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [CDPDRecoveryValidatedJoinFlowController remoteSecretValidator:applyToJoinCircleWithJoinHandler:];
  }

  v7 = [(CDPDRecoveryFlowController *)self circleController];
  [v7 applyToJoinCircleWithJoinHandler:v5];
}

- (void)cancelRemoteSecretValidatorApplicationToJoinCircle:(id)a3
{
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [CDPDRecoveryValidatedJoinFlowController cancelRemoteSecretValidatorApplicationToJoinCircle:];
  }

  v5 = [(CDPDRecoveryFlowController *)self circleController];
  [v5 cancelApplicationToJoinCircle];
}

- (void)remoteSecretValidator:(id)a3 attemptCustodianRecoveryWithInfo:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(CDPDRecoveryFlowController *)self circleController];
  v10 = [v9 circleProxy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __109__CDPDRecoveryValidatedJoinFlowController_remoteSecretValidator_attemptCustodianRecoveryWithInfo_completion___block_invoke;
  v12[3] = &unk_278E24780;
  v13 = v7;
  v11 = v7;
  [v10 recoverOctagonUsingCustodianInfo:v8 completion:v12];
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

- (void)remoteSecretValidator:(id)a3 attemptCircleJoinWithPiggybackingContext:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(CDPDRecoveryFlowController *)self circleController];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __117__CDPDRecoveryValidatedJoinFlowController_remoteSecretValidator_attemptCircleJoinWithPiggybackingContext_completion___block_invoke;
  v11[3] = &unk_278E247A8;
  v12 = v7;
  v10 = v7;
  [v9 joinCircleWithContext:v8 completion:v11];
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
  v2 = [(CDPDRecoveryFlowController *)self circleController];
  [v2 prepareCircleStateForRecovery];
}

- (void)secretValidator:(id)a3 recoverSecureBackupWithContext:(id)a4 completion:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = _CDPLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v7;
    _os_log_impl(&dword_24510B000, v9, OS_LOG_TYPE_DEFAULT, "Attempting to recover a record with context: %@", buf, 0xCu);
  }

  v10 = [(CDPDRecoveryFlowController *)self secureBackupController];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __101__CDPDRecoveryValidatedJoinFlowController_secretValidator_recoverSecureBackupWithContext_completion___block_invoke;
  v13[3] = &unk_278E247D0;
  v14 = v8;
  v11 = v8;
  [v10 performEscrowRecoveryWithRecoveryContext:v7 completion:v13];

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

- (void)secretValidator:(id)a3 didFailRecovery:(id)a4 withError:(id)a5 completion:(id)a6
{
  v19 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v13)
  {
    [CDPDRecoveryValidatedJoinFlowController secretValidator:didFailRecovery:withError:completion:];
  }

  v14 = v13;
  if ([v12 isLoginHardLimit])
  {
    [(CDPDRecoveryValidatedJoinFlowController *)self _handleHardLimitErrorForCurrentContextWithDevice:v11 completion:v14];
  }

  else if ([v12 isLoginSoftLimit])
  {
    [(CDPDRecoveryValidatedJoinFlowController *)self _handleSoftLimitErrorForCurrentContextWithDevice:v11 completion:v14];
  }

  else
  {
    v15 = [v12 cdp_isCDPErrorWithCode:-5206] ^ 1;
    v16 = _CDPLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18[0] = 67109120;
      v18[1] = v15;
      _os_log_impl(&dword_24510B000, v16, OS_LOG_TYPE_DEFAULT, "Non-terminating error detected, with retry option: %{BOOL}d", v18, 8u);
    }

    (v14)[2](v14, v15, v12);
  }

  v17 = *MEMORY[0x277D85DE8];
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

  [(CDPDRecoveryValidatedJoinFlowController *)self _handleLimit:2 forDevice:v7 completion:v6];
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

  [(CDPDRecoveryValidatedJoinFlowController *)self _handleLimit:1 forDevice:v7 completion:v6];
}

- (void)_handleLimit:(unint64_t)a3 forDevice:(id)a4 completion:(id)a5
{
  v88 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v67 = v8;
  v71 = [(CDPDRecoveryValidatedJoinFlowController *)self _userInfoForLimit:a3 withDevice:v8];
  v70 = [MEMORY[0x277CBEC10] mutableCopy];
  v10 = MEMORY[0x277CE44D8];
  v11 = [(CDPDRecoveryFlowController *)self recoveryContext];
  v12 = [v11 context];
  v13 = MEMORY[0x277CFD898];
  if (a3 != 1)
  {
    v13 = MEMORY[0x277CFD740];
  }

  v14 = [v10 analyticsEventWithContext:v12 eventName:*v13 category:*MEMORY[0x277CFD930]];

  v15 = [(CDPDRecoveryValidatedJoinFlowController *)self _fallbackRecoveryOptionsForLimitType:a3 withCompletion:v9];
  v72 = [(CDPDRecoveryValidatedJoinFlowController *)self _cancelRecoveryOptionWithCompletion:v9];
  v68 = v9;
  v16 = [(CDPDRecoveryValidatedJoinFlowController *)self _tryAgainLaterOptionWithCompletion:v9];
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
          v24 = [v23 telemetryRecoveryOption];
          [v17 addObject:v24];
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

  v25 = [(CDPDRecoveryFlowController *)self validator];
  v26 = [v25 supportedEscapeOfferMask];

  if ((v26 & 0x82) != 0)
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

  if ((v26 & 0x60) != 0)
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
    v29 = [MEMORY[0x277CFD560] isICSCHarmonizationEnabled];
    if (v16 && v29)
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
    v31 = [v27 telemetryRecoveryOption];
    [v17 addObject:v31];
LABEL_33:

    goto LABEL_62;
  }

  v30 = [MEMORY[0x277CFD560] isICSCHarmonizationEnabled];
  if ((v26 & 8) == 0)
  {
    if (!v30)
    {
      v36 = [(CDPDRecoveryValidatedJoinFlowController *)self _skipSignInRecoveryOptionWithCompletion:v68];
      v31 = v36;
      if (v36)
      {
        v86 = v36;
        v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
        [(CDPDRecoveryValidatedJoinFlowController *)self _populateUserInfo:v71 recoveryIndexHandlers:v70 withRecoveryOptions:v37];
      }

      v38 = [v31 telemetryRecoveryOption];
      [v17 addObject:v38];

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

  if (!v30)
  {
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __77__CDPDRecoveryValidatedJoinFlowController__handleLimit_forDevice_completion___block_invoke_2;
    v74[3] = &unk_278E247F8;
    v76 = v68;
    v77 = a3;
    v74[4] = self;
    v75 = v67;
    v39 = [(CDPDRecoveryValidatedJoinFlowController *)self _accountResetRecoveryOptionWithCompletion:v74];
    if (v39)
    {
      [v66 addObject:v39];
      if (a3 == 2)
      {
        if (![v18 count])
        {
          v40 = self;
          v42 = v70;
          v41 = v71;
          v43 = v66;
LABEL_52:
          [(CDPDRecoveryValidatedJoinFlowController *)v40 _populateUserInfo:v41 recoveryIndexHandlers:v42 withRecoveryOptions:v43];
LABEL_55:
          v46 = [v39 telemetryRecoveryOption];
          [v17 addObject:v46];

          v31 = v76;
          goto LABEL_33;
        }

LABEL_51:
        [(CDPDRecoveryValidatedJoinFlowController *)self _populateUserInfo:v71 recoveryIndexHandlers:v70 withRecoveryOptions:v18];
        v40 = self;
        v41 = v71;
        v42 = v70;
        v43 = v69;
        goto LABEL_52;
      }
    }

    else if (a3 == 2)
    {
      goto LABEL_51;
    }

    [(CDPDRecoveryValidatedJoinFlowController *)self _populateUserInfo:v71 recoveryIndexHandlers:v70 withRecoveryOptions:v73];
    if (v16)
    {
      v45 = [v16 telemetryRecoveryOption];
      [v17 addObject:v45];
    }

    goto LABEL_55;
  }

  if (a3 == 2)
  {
    v32 = MEMORY[0x277CFD4A8];
    v33 = [(CDPDRecoveryFlowController *)self recoveryContext];
    v34 = [v33 context];
    LODWORD(v32) = [v32 isSubsetOfContextTypeSignIn:{objc_msgSend(v34, "type")}];

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
      v48 = [v47 telemetryRecoveryOption];
      [v17 addObject:v48];

      [(CDPDRecoveryValidatedJoinFlowController *)self _populateUserInfo:v71 recoveryIndexHandlers:v70 withRecoveryOptions:v69];
      if (v72)
      {
        v49 = [v72 telemetryRecoveryOption];
        [v17 addObject:v49];
      }

      v35 = v80;
      goto LABEL_61;
    }

    [(CDPDRecoveryValidatedJoinFlowController *)self _populateUserInfo:v71 recoveryIndexHandlers:v70 withRecoveryOptions:v73];
    if (v16)
    {
      v35 = [v16 telemetryRecoveryOption];
      [v17 addObject:v35];
LABEL_61:
    }
  }

  else if (a3 == 1)
  {
    [(CDPDRecoveryValidatedJoinFlowController *)self _populateUserInfo:v71 recoveryIndexHandlers:v70 withRecoveryOptions:v73];
    if (v16)
    {
      v44 = [v16 telemetryRecoveryOption];
      [v17 addObject:v44];
    }
  }

LABEL_62:
  v50 = _CDPStateError();
  v51 = [v17 aaf_arrayAsCommaSeperatedString];
  [v14 setObject:v51 forKeyedSubscript:*MEMORY[0x277CFD6C8]];

  v52 = MEMORY[0x277CCABB0];
  v53 = [(CDPDRecoveryFlowController *)self recoveryContext];
  v54 = [v53 context];
  v55 = [v52 numberWithInteger:{objc_msgSend(v54, "totalEscrowDeviceCount")}];
  [v14 setObject:v55 forKeyedSubscript:*MEMORY[0x277CFD8A8]];

  v56 = MEMORY[0x277CCABB0];
  v57 = [(CDPDRecoveryFlowController *)self recoveryContext];
  v58 = [v57 context];
  v59 = [v56 numberWithInteger:{objc_msgSend(v58, "validEscrowDeviceCount")}];
  [v14 setObject:v59 forKeyedSubscript:*MEMORY[0x277CFD8B0]];

  v60 = MEMORY[0x277CCABB0];
  v61 = [(CDPDRecoveryFlowController *)self recoveryContext];
  v62 = [v61 context];
  v63 = [v60 numberWithInteger:{objc_msgSend(v62, "totalRecoveryAttempts")}];
  [v14 setObject:v63 forKeyedSubscript:*MEMORY[0x277CFD778]];

  v64 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v64 sendEvent:v14];

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

- (void)_populateUserInfo:(id)a3 recoveryIndexHandlers:(id)a4 withRecoveryOptions:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = a5;
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
          v15 = [v7 objectForKeyedSubscript:v12];
          if (v15)
          {
            v16 = [v7 objectForKeyedSubscript:v12];
            v17 = [v16 mutableCopy];
          }

          else
          {
            v17 = [MEMORY[0x277CBEB18] array];
          }

          v18 = [v14 localizedRecoveryOption];
          [v17 addObject:v18];

          v19 = [v14 recoveryHandler];
          v20 = _Block_copy(v19);
          v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
          [v8 setObject:v20 forKeyedSubscript:v21];

          [v7 setObject:v17 forKeyedSubscript:v12];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)_userInfoForLimit:(unint64_t)a3 withDevice:(id)a4
{
  v6 = a4;
  if (a3 != 2)
  {
    if (a3 != 1)
    {
      v11 = 0;
      goto LABEL_10;
    }

    v7 = self;
    v8 = v6;
    v9 = 1;
    goto LABEL_8;
  }

  if (![MEMORY[0x277CFD560] isICSCHarmonizationEnabled])
  {
    v7 = self;
    v8 = v6;
    v9 = 2;
LABEL_8:
    v10 = [(CDPDRecoveryValidatedJoinFlowController *)v7 _limitErrorBodyForDevice:v8 limitType:v9];
    goto LABEL_9;
  }

  v10 = [(CDPDRecoveryValidatedJoinFlowController *)self _hardLimitErrorBodyWithDevice:v6];
LABEL_9:
  v11 = v10;
LABEL_10:
  v12 = [(CDPDRecoveryValidatedJoinFlowController *)self _entryLimitTitleForDevice:v6];
  v13 = [(CDPDRecoveryValidatedJoinFlowController *)self _infoDictionaryWithTitle:v12 andBody:v11];

  return v13;
}

- (id)_fallbackRecoveryOptionsForLimitType:(unint64_t)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to fallback recovery options...", buf, 2u);
  }

  v8 = [(CDPDRecoveryFlowController *)self validator];
  v9 = [v8 supportedEscapeOfferMask];

  if ((v9 & 2) != 0)
  {
    v10 = [(CDPDRecoveryValidatedJoinFlowController *)self _deviceSelectionRecoveryOptionWithCompletion:v5];
    goto LABEL_14;
  }

  if ((v9 & 0x80) != 0)
  {
    v10 = [(CDPDRecoveryValidatedJoinFlowController *)self _piggybackingRecoveryOptionWithCompletion:v5];
    goto LABEL_14;
  }

  if ((~v9 & 0x60) == 0)
  {
    if ([MEMORY[0x277CFD560] isICSCHarmonizationEnabled])
    {
      v10 = [(CDPDRecoveryValidatedJoinFlowController *)self _recoveryMethodRecoveryOptionWithCompletion:v5];
      goto LABEL_14;
    }

LABEL_13:
    v10 = [(CDPDRecoveryValidatedJoinFlowController *)self _recoveryKeyRecoveryOptionWithCompletion:v5];
    goto LABEL_14;
  }

  if ((v9 & 0x20) != 0)
  {
    goto LABEL_13;
  }

  if ((v9 & 0x40) == 0)
  {
    goto LABEL_15;
  }

  v10 = [(CDPDRecoveryValidatedJoinFlowController *)self _custodianRecoveryOptionWithCompletion:v5];
LABEL_14:
  v11 = v10;
  [v6 addObject:v10];

LABEL_15:
  if (![v6 count])
  {
    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_24510B000, v12, OS_LOG_TYPE_DEFAULT, "No fallback available", v14, 2u);
    }
  }

  return v6;
}

- (id)_skipSignInRecoveryOptionWithCompletion:(id)a3
{
  v3 = a3;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "Creating recovery option: Skip", buf, 2u);
  }

  v5 = objc_alloc_init(CDPDRecoveryOption);
  v6 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_MULTIPLE_INCORRECT_BUTTON_OK"];
  v7 = [v6 localizedString];
  [(CDPDRecoveryOption *)v5 setLocalizedRecoveryOption:v7];

  [(CDPDRecoveryOption *)v5 setTelemetryRecoveryOption:*MEMORY[0x277CFD958]];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__CDPDRecoveryValidatedJoinFlowController__skipSignInRecoveryOptionWithCompletion___block_invoke;
  v10[3] = &unk_278E24820;
  v11 = v3;
  v8 = v3;
  [(CDPDRecoveryOption *)v5 setRecoveryHandler:v10];

  return v5;
}

void __83__CDPDRecoveryValidatedJoinFlowController__skipSignInRecoveryOptionWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _CDPStateError();
  (*(v1 + 16))(v1, 0, v2);
}

- (id)_accountResetRecoveryOptionWithCompletion:(id)a3
{
  v4 = a3;
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
  v8 = [v7 localizedString];
  [(CDPDRecoveryOption *)v6 setLocalizedRecoveryOption:v8];

  [(CDPDRecoveryOption *)v6 setTelemetryRecoveryOption:*MEMORY[0x277CFDA18]];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __85__CDPDRecoveryValidatedJoinFlowController__accountResetRecoveryOptionWithCompletion___block_invoke;
  v11[3] = &unk_278E24898;
  v11[4] = self;
  v12 = v4;
  v9 = v4;
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

- (void)_handleResetOptionWithResetRequested:(BOOL)a3 localSecret:(id)a4 validator:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if (!v6)
  {
    v11 = _CDPLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [CDPDRecoveryValidatedJoinFlowController _handleResetOptionWithResetRequested:localSecret:validator:];
    }

    goto LABEL_13;
  }

  v10 = [(CDPDRecoveryFlowController *)self uiProvider];

  v11 = _CDPLogSystem();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (!v10)
  {
    if (v12)
    {
      [CDPDRecoveryValidatedJoinFlowController _handleResetOptionWithResetRequested:localSecret:validator:];
    }

LABEL_13:

    v22 = [(CDPDRecoveryFlowController *)self validator];
    v23 = _CDPStateError();
    [v22 cancelValidationWithError:v23];

LABEL_14:
    goto LABEL_15;
  }

  if (v12)
  {
    [CDPDRecoveryValidatedJoinFlowController _handleResetOptionWithResetRequested:localSecret:validator:];
  }

  v13 = MEMORY[0x277CFD480];
  v14 = [(CDPDRecoveryFlowController *)self recoveryContext];
  v15 = [v14 context];
  v16 = [v15 dsid];
  v17 = [v16 stringValue];
  v18 = [v13 isICDPEnabledForDSID:v17];

  if (v8 || !v18)
  {
    v24 = _CDPLogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [CDPDRecoveryValidatedJoinFlowController _handleResetOptionWithResetRequested:localSecret:validator:];
    }

    v22 = [(CDPDRecoveryFlowController *)self validator];
    [v22 resetAccountCDPStateWithEscapeOptionsOffered:1 andSetSecret:v8];
    goto LABEL_14;
  }

  v19 = [(CDPDRecoveryFlowController *)self uiProvider];
  v20 = [(CDPDRecoveryFlowController *)self recoveryContext];
  v21 = [v20 context];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __102__CDPDRecoveryValidatedJoinFlowController__handleResetOptionWithResetRequested_localSecret_validator___block_invoke;
  v25[3] = &unk_278E248C0;
  v25[4] = self;
  v26 = v9;
  [v19 cdpContext:v21 createLocalSecretWithCompletion:v25];

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

- (id)_cancelRecoveryOptionWithCompletion:(id)a3
{
  v3 = a3;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "Creating recovery option: Cancel", buf, 2u);
  }

  v5 = objc_alloc_init(CDPDRecoveryOption);
  v6 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_CANCEL_BUTTON"];
  v7 = [v6 localizedString];
  [(CDPDRecoveryOption *)v5 setLocalizedRecoveryOption:v7];

  [(CDPDRecoveryOption *)v5 setTelemetryRecoveryOption:*MEMORY[0x277CFD958]];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__CDPDRecoveryValidatedJoinFlowController__cancelRecoveryOptionWithCompletion___block_invoke;
  v10[3] = &unk_278E24820;
  v11 = v3;
  v8 = v3;
  [(CDPDRecoveryOption *)v5 setRecoveryHandler:v10];

  return v5;
}

void __79__CDPDRecoveryValidatedJoinFlowController__cancelRecoveryOptionWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _CDPStateError();
  (*(v1 + 16))(v1, 0, v2);
}

- (id)_tryAgainLaterOptionWithCompletion:(id)a3
{
  v3 = a3;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "Creating recovery option: Try Again", buf, 2u);
  }

  v5 = objc_alloc_init(CDPDRecoveryOption);
  v6 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_FORGOT_CODE_DIALOG_CUSTODIAN_TRY_LATER"];
  v7 = [v6 localizedString];
  [(CDPDRecoveryOption *)v5 setLocalizedRecoveryOption:v7];

  [(CDPDRecoveryOption *)v5 setTelemetryRecoveryOption:*MEMORY[0x277CFDA40]];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__CDPDRecoveryValidatedJoinFlowController__tryAgainLaterOptionWithCompletion___block_invoke;
  v10[3] = &unk_278E24820;
  v11 = v3;
  v8 = v3;
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

- (id)_deviceSelectionRecoveryOptionWithCompletion:(id)a3
{
  v3 = a3;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "Creating recovery option: Choose Another Device", buf, 2u);
  }

  v5 = objc_alloc_init(CDPDRecoveryOption);
  v6 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_MULTIPLE_INCORRECT_BUTTON_CHOOSE_ANOTHER_DEVICE"];
  v7 = [v6 localizedString];
  [(CDPDRecoveryOption *)v5 setLocalizedRecoveryOption:v7];

  [(CDPDRecoveryOption *)v5 setTelemetryRecoveryOption:*MEMORY[0x277CFD990]];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __88__CDPDRecoveryValidatedJoinFlowController__deviceSelectionRecoveryOptionWithCompletion___block_invoke;
  v10[3] = &unk_278E24820;
  v11 = v3;
  v8 = v3;
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

- (id)_piggybackingRecoveryOptionWithCompletion:(id)a3
{
  v3 = a3;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "Creating recovery option: Send Code to My Devices", buf, 2u);
  }

  v5 = objc_alloc_init(CDPDRecoveryOption);
  v6 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_MULTIPLE_INCORRECT_BUTTON_PIGGYBACKING"];
  v7 = [v6 localizedString];
  [(CDPDRecoveryOption *)v5 setLocalizedRecoveryOption:v7];

  [(CDPDRecoveryOption *)v5 setTelemetryRecoveryOption:*MEMORY[0x277CFD9B0]];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__CDPDRecoveryValidatedJoinFlowController__piggybackingRecoveryOptionWithCompletion___block_invoke;
  v10[3] = &unk_278E24820;
  v11 = v3;
  v8 = v3;
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

- (id)_recoveryKeyRecoveryOptionWithCompletion:(id)a3
{
  v3 = a3;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "Creating recovery option: Recovery Key", buf, 2u);
  }

  v5 = objc_alloc_init(CDPDRecoveryOption);
  v6 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_FORGOT_CODE_DIALOG_RK"];
  v7 = [v6 localizedString];
  [(CDPDRecoveryOption *)v5 setLocalizedRecoveryOption:v7];

  [(CDPDRecoveryOption *)v5 setTelemetryRecoveryOption:*MEMORY[0x277CFDA10]];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__CDPDRecoveryValidatedJoinFlowController__recoveryKeyRecoveryOptionWithCompletion___block_invoke;
  v10[3] = &unk_278E24820;
  v11 = v3;
  v8 = v3;
  [(CDPDRecoveryOption *)v5 setRecoveryHandler:v10];

  return v5;
}

void __84__CDPDRecoveryValidatedJoinFlowController__recoveryKeyRecoveryOptionWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _CDPStateError();
  (*(v1 + 16))(v1, 0, v2);
}

- (id)_custodianRecoveryOptionWithCompletion:(id)a3
{
  v3 = a3;
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
  v8 = [v7 localizedString];
  [(CDPDRecoveryOption *)v5 setLocalizedRecoveryOption:v8];

  [(CDPDRecoveryOption *)v5 setTelemetryRecoveryOption:*MEMORY[0x277CFD9F0]];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__CDPDRecoveryValidatedJoinFlowController__custodianRecoveryOptionWithCompletion___block_invoke;
  v11[3] = &unk_278E24820;
  v12 = v3;
  v9 = v3;
  [(CDPDRecoveryOption *)v5 setRecoveryHandler:v11];

  return v5;
}

void __82__CDPDRecoveryValidatedJoinFlowController__custodianRecoveryOptionWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _CDPStateError();
  (*(v1 + 16))(v1, 0, v2);
}

- (id)_recoveryMethodRecoveryOptionWithCompletion:(id)a3
{
  v3 = a3;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "Creating recovery option: Recovery Method", buf, 2u);
  }

  v5 = objc_alloc_init(CDPDRecoveryOption);
  v6 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_ALERT_USE_RECOVERY_METHOD"];
  v7 = [v6 localizedString];
  [(CDPDRecoveryOption *)v5 setLocalizedRecoveryOption:v7];

  [(CDPDRecoveryOption *)v5 setTelemetryRecoveryOption:*MEMORY[0x277CFDA10]];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__CDPDRecoveryValidatedJoinFlowController__recoveryMethodRecoveryOptionWithCompletion___block_invoke;
  v10[3] = &unk_278E24820;
  v11 = v3;
  v8 = v3;
  [(CDPDRecoveryOption *)v5 setRecoveryHandler:v10];

  return v5;
}

void __87__CDPDRecoveryValidatedJoinFlowController__recoveryMethodRecoveryOptionWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _CDPStateError();
  (*(v1 + 16))(v1, 0, v2);
}

- (void)_showEntryLimitError:(id)a3 withRecoveryOptionHandlers:(id)a4 defaultIndex:(int64_t)a5 completion:(id)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = _CDPLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(CDPDRecoveryFlowController *)self uiProvider];
    *buf = 138412546;
    v25 = v14;
    v26 = 2112;
    v27 = v10;
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
    v20[2] = __115__CDPDRecoveryValidatedJoinFlowController__showEntryLimitError_withRecoveryOptionHandlers_defaultIndex_completion___block_invoke;
    v20[3] = &unk_278E248E8;
    v21 = v11;
    v23 = v12;
    v22 = v10;
    [v16 cdpContext:v18 showError:v22 withDefaultIndex:a5 withCompletion:v20];
  }

  else
  {
    (*(v12 + 2))(v12, 0, v10);
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

- (id)_hardLimitErrorBodyWithDevice:(id)a3
{
  v4 = a3;
  v5 = [(CDPDRecoveryFlowController *)self validator];
  v6 = [v5 supportedEscapeOfferMask];

  if ((v6 & 2) != 0)
  {
    v10 = [(CDPDRecoveryValidatedJoinFlowController *)self _entryHardLimitDeviceSelectionAvailableBodyForDevice:v4];
  }

  else if (v6 < 0)
  {
    v10 = [(CDPDRecoveryValidatedJoinFlowController *)self _entryHardLimitPiggybackingAvailableBodyForDevice:v4];
  }

  else
  {
    if ((v6 & 0x20) != 0)
    {
      if ((v6 & 0x40) != 0)
      {
        [(CDPDRecoveryValidatedJoinFlowController *)self _entryHardLimitRecoveryKeyAndCustodianRecoveryAvailableBodyForDevice:v4];
      }

      else
      {
        [(CDPDRecoveryValidatedJoinFlowController *)self _entryHardLimitRecoveryKeyAvailableBodyForDevice:v4];
      }

      goto LABEL_7;
    }

    if ((v6 & 0x40) == 0)
    {
      v7 = MEMORY[0x277CFD4A8];
      v8 = [(CDPDRecoveryFlowController *)self recoveryContext];
      v9 = [v8 context];
      LODWORD(v7) = [v7 isSubsetOfContextTypeSignIn:{objc_msgSend(v9, "type")}];

      if (v7)
      {
        [(CDPDRecoveryValidatedJoinFlowController *)self _entryHardLimitNoResetForSignInForDevice:v4];
      }

      else
      {
        [(CDPDRecoveryValidatedJoinFlowController *)self _entryHardLimitRepairBodyForDevice:v4];
      }

      v10 = LABEL_7:;
      goto LABEL_10;
    }

    v10 = [(CDPDRecoveryValidatedJoinFlowController *)self _entryHardLimitCustodianRecoveryAvailableBodyForDevice:v4];
  }

LABEL_10:
  v11 = v10;

  return v11;
}

- (id)_limitErrorBodyForDevice:(id)a3 limitType:(unint64_t)a4
{
  v5 = a3;
  v6 = [(CDPDRecoveryFlowController *)self validator];
  v7 = [v6 supportedEscapeOfferMask];

  if ((v7 & 2) != 0)
  {
    v8 = [(CDPDRecoveryValidatedJoinFlowController *)self _entryLimitDeviceSelectionAvailableBodyForDevice:v5];
  }

  else if (v7 < 0)
  {
    v8 = [(CDPDRecoveryValidatedJoinFlowController *)self _entryLimitPiggybackingAvailableBodyForDevice:v5];
  }

  else if ((v7 & 0x20) != 0)
  {
    if ([MEMORY[0x277CFD560] isICSCHarmonizationEnabled] && (v7 & 0x40) != 0)
    {
      v8 = [(CDPDRecoveryValidatedJoinFlowController *)self _entryLimitRecoveryKeyAndCustodianRecoveryAvailableBodyForDevice:v5];
    }

    else
    {
      v8 = [(CDPDRecoveryValidatedJoinFlowController *)self _entryLimitRecoveryKeyAvailableBodyForDevice:v5];
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    v8 = [(CDPDRecoveryValidatedJoinFlowController *)self _entryLimitCustodianRecoveryAvailableBodyForDevice:v5];
  }

  else if ([MEMORY[0x277CFD560] isICSCHarmonizationEnabled])
  {
    v8 = [(CDPDRecoveryValidatedJoinFlowController *)self _entryLimitNoResetForDevice:v5];
  }

  else
  {
    v11 = MEMORY[0x277CFD4A8];
    v12 = [(CDPDRecoveryFlowController *)self recoveryContext];
    v13 = [v12 context];
    LODWORD(v11) = [v11 isSubsetOfContextTypeRepair:{objc_msgSend(v13, "type")}];

    if (v11)
    {
      [(CDPDRecoveryValidatedJoinFlowController *)self _entryLimitNoResetForRepairForDevice:v5];
    }

    else
    {
      [(CDPDRecoveryValidatedJoinFlowController *)self _entryLimitSignInBodyForDevice:v5];
    }
    v8 = ;
  }

  v9 = v8;

  return v9;
}

- (id)_entryLimitRecoveryKeyAndCustodianRecoveryAvailableBodyForDevice:(id)a3
{
  v4 = a3;
  v5 = [(CDPDRecoveryFlowController *)self recoveryContext];
  v6 = [v5 context];
  v7 = [v6 idmsRecovery];

  v8 = MEMORY[0x277CCACA8];
  if (v7)
  {
    v9 = @"RECOVERY_REMOTE_SECRET_ENTRY_SOFT_LIMIT_ALERT_SUBTITLE_RK_AND_RC";
  }

  else
  {
    v9 = @"REMOTE_SECRET_ENTRY_SOFT_LIMIT_ALERT_SUBTITLE_RK_AND_RC";
  }

  v10 = [MEMORY[0x277CFD508] builderForKey:v9];
  v11 = [v10 addSecretType:{objc_msgSend(v4, "localSecretType")}];
  v12 = [v11 localizedString];
  v13 = [v4 localizedName];

  v14 = [v8 stringWithValidatedFormat:v12 validFormatSpecifiers:@"%@" error:0, v13];

  return v14;
}

- (id)_entryHardLimitRecoveryKeyAndCustodianRecoveryAvailableBodyForDevice:(id)a3
{
  v4 = a3;
  v5 = [(CDPDRecoveryFlowController *)self recoveryContext];
  v6 = [v5 context];
  v7 = [v6 idmsRecovery];

  v8 = MEMORY[0x277CCACA8];
  if (v7)
  {
    v9 = @"RECOVERY_REMOTE_SECRET_ENTRY_HARD_LIMIT_ALERT_SUBTITLE_RK_AND_RC";
  }

  else
  {
    v9 = @"REMOTE_SECRET_ENTRY_HARD_LIMIT_ALERT_SUBTITLE_RK_AND_RC";
  }

  v10 = [MEMORY[0x277CFD508] builderForKey:v9];
  v11 = [v10 addSecretType:{objc_msgSend(v4, "localSecretType")}];
  v12 = [v11 localizedString];
  v13 = [v4 localizedName];

  v14 = [v8 stringWithValidatedFormat:v12 validFormatSpecifiers:@"%@" error:0, v13];

  return v14;
}

- (id)_entryHardLimitPiggybackingAvailableBodyForDevice:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MEMORY[0x277CFD508];
  v5 = a3;
  v6 = [v4 builderForKey:@"REMOTE_SECRET_ENTRY_HARD_LIMIT_ALERT_SUBTITLE_TRUSTED_DEVICES"];
  v7 = [v6 addSecretType:{objc_msgSend(v5, "localSecretType")}];
  v8 = [v7 localizedString];
  v9 = [v5 localizedName];

  v10 = [v3 stringWithValidatedFormat:v8 validFormatSpecifiers:@"%@" error:0, v9];

  return v10;
}

- (id)_entryHardLimitRecoveryKeyAvailableBodyForDevice:(id)a3
{
  v4 = a3;
  v5 = [(CDPDRecoveryFlowController *)self recoveryContext];
  v6 = [v5 context];
  v7 = [v6 idmsRecovery];

  v8 = MEMORY[0x277CCACA8];
  if (v7)
  {
    v9 = @"RECOVERY_REMOTE_SECRET_ENTRY_HARD_LIMIT_ALERT_SUBTITLE_RK";
  }

  else
  {
    v9 = @"REMOTE_SECRET_ENTRY_HARD_LIMIT_ALERT_SUBTITLE_RK";
  }

  v10 = [MEMORY[0x277CFD508] builderForKey:v9];
  v11 = [v10 addSecretType:{objc_msgSend(v4, "localSecretType")}];
  v12 = [v11 localizedString];
  v13 = [v4 localizedName];

  v14 = [v8 stringWithValidatedFormat:v12 validFormatSpecifiers:@"%@" error:0, v13];

  return v14;
}

- (id)_entryHardLimitCustodianRecoveryAvailableBodyForDevice:(id)a3
{
  v4 = a3;
  v5 = [(CDPDRecoveryFlowController *)self recoveryContext];
  v6 = [v5 context];
  v7 = [v6 idmsRecovery];

  v8 = MEMORY[0x277CCACA8];
  if (v7)
  {
    v9 = @"RECOVERY_REMOTE_SECRET_ENTRY_HARD_LIMIT_ALERT_SUBTITLE_RC";
  }

  else
  {
    v9 = @"REMOTE_SECRET_ENTRY_HARD_LIMIT_ALERT_SUBTITLE_RC";
  }

  v10 = [MEMORY[0x277CFD508] builderForKey:v9];
  v11 = [v10 addSecretType:{objc_msgSend(v4, "localSecretType")}];
  v12 = [v11 localizedString];
  v13 = [v4 localizedName];

  v14 = [v8 stringWithValidatedFormat:v12 validFormatSpecifiers:@"%@" error:0, v13];

  return v14;
}

- (id)_entryHardLimitNoResetForSignInForDevice:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MEMORY[0x277CFD508];
  v5 = a3;
  v6 = [v4 builderForKey:@"REMOTE_SECRET_ENTRY_HARD_LIMIT_ALERT_SUBTITLE_NO_RECOVERY_METHOD"];
  v7 = [v6 addSecretType:{objc_msgSend(v5, "localSecretType")}];
  v8 = [v7 localizedString];
  v9 = [v5 localizedName];

  v10 = [v3 stringWithValidatedFormat:v8 validFormatSpecifiers:@"%@" error:0, v9];

  return v10;
}

- (id)_entryHardLimitRepairBodyForDevice:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MEMORY[0x277CFD508];
  v5 = a3;
  v6 = [v4 builderForKey:@"REMOTE_SECRET_ENTRY_HARD_LIMIT_ALERT_SUBTITLE_NO_RECOVERY_RPD"];
  v7 = [v6 addSecretType:{objc_msgSend(v5, "localSecretType")}];
  v8 = [v7 localizedString];
  v9 = [v5 localizedName];

  v10 = [v3 stringWithValidatedFormat:v8 validFormatSpecifiers:@"%@" error:0, v9];

  return v10;
}

- (id)_entryHardLimitDeviceSelectionAvailableBodyForDevice:(id)a3
{
  v4 = a3;
  v5 = [(CDPDRecoveryFlowController *)self recoveryContext];
  v6 = [v5 context];
  v7 = [v6 idmsRecovery];

  v8 = MEMORY[0x277CCACA8];
  if (v7)
  {
    v9 = @"RECOVERY_REMOTE_SECRET_ENTRY_HARD_LIMIT_ALERT_SUBTITLE_OTHER_ICSC";
  }

  else
  {
    v9 = @"REMOTE_SECRET_ENTRY_HARD_LIMIT_ALERT_SUBTITLE_OTHER_ICSC";
  }

  v10 = [MEMORY[0x277CFD508] builderForKey:v9];
  v11 = [v10 addSecretType:{objc_msgSend(v4, "localSecretType")}];
  v12 = [v11 localizedString];
  v13 = [v4 localizedName];

  v14 = [v8 stringWithValidatedFormat:v12 validFormatSpecifiers:@"%@" error:0, v13];

  return v14;
}

- (id)_entryLimitNoResetForDevice:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MEMORY[0x277CFD508];
  v5 = a3;
  v6 = [v4 builderForKey:@"REMOTE_SECRET_ENTRY_SOFT_LIMIT_ALERT_SUBTITLE_NO_RECOVERY_METHOD"];
  v7 = [v6 addSecretType:{objc_msgSend(v5, "localSecretType")}];
  v8 = [v7 localizedString];
  v9 = [v5 localizedName];

  v10 = [v3 stringWithValidatedFormat:v8 validFormatSpecifiers:@"%@" error:0, v9];

  return v10;
}

- (id)_entryLimitTitleForDevice:(id)a3
{
  v3 = MEMORY[0x277CFD508];
  v4 = a3;
  v5 = [v3 builderForKey:@"REMOTE_SECRET_ENTRY_MULTIPLE_INCORRECT_TITLE"];
  v6 = [v4 localSecretType];

  v7 = [v5 addSecretType:v6];
  v8 = [v7 localizedString];

  return v8;
}

- (id)_entryLimitSignInBodyForDevice:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MEMORY[0x277CFD508];
  v5 = a3;
  v6 = [v4 builderForKey:@"REMOTE_SECRET_ENTRY_MULTIPLE_INCORRECT_MESSAGE_SIGNIN"];
  v7 = [v6 addSecretType:{objc_msgSend(v5, "localSecretType")}];
  v8 = [v7 localizedString];
  v9 = [v5 localizedName];

  v10 = [v3 stringWithValidatedFormat:v8 validFormatSpecifiers:@"%@" error:0, v9];

  return v10;
}

- (id)_entryLimitNoResetForRepairForDevice:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MEMORY[0x277CFD508];
  v5 = a3;
  v6 = [v4 builderForKey:@"REMOTE_SECRET_ENTRY_MULTIPLE_INCORRECT_MESSAGE_NO_RESET"];
  v7 = [v6 addSecretType:{objc_msgSend(v5, "localSecretType")}];
  v8 = [v7 localizedString];
  v9 = [v5 localizedName];

  v10 = [v3 stringWithValidatedFormat:v8 validFormatSpecifiers:@"%@" error:0, v9];

  return v10;
}

- (id)_entryLimitResetAvailableBodyForDevice:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MEMORY[0x277CFD508];
  v5 = a3;
  v6 = [v4 builderForKey:@"REMOTE_SECRET_ENTRY_MULTIPLE_INCORRECT_MESSAGE_RESET"];
  v7 = [v6 addSecretType:{objc_msgSend(v5, "localSecretType")}];
  v8 = [v7 localizedString];
  v9 = [v5 localizedName];

  v10 = [v3 stringWithValidatedFormat:v8 validFormatSpecifiers:@"%@" error:0, v9];

  return v10;
}

- (id)_entryLimitRecoveryKeyAvailableBodyForDevice:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277CFD560] isICSCHarmonizationEnabled])
  {
    v5 = [(CDPDRecoveryFlowController *)self recoveryContext];
    v6 = [v5 context];
    v7 = [v6 idmsRecovery];

    v8 = MEMORY[0x277CCACA8];
    if (v7)
    {
      v9 = @"RECOVERY_REMOTE_SECRET_ENTRY_SOFT_LIMIT_ALERT_SUBTITLE_RK";
    }

    else
    {
      v9 = @"REMOTE_SECRET_ENTRY_SOFT_LIMIT_ALERT_SUBTITLE_RK";
    }

    v11 = [MEMORY[0x277CFD508] builderForKey:v9];
    v12 = [v11 addSecretType:{objc_msgSend(v4, "localSecretType")}];
    v13 = [v12 localizedString];
    v14 = [v4 localizedName];
    v18 = [v8 stringWithValidatedFormat:v13 validFormatSpecifiers:@"%@" error:0, v14];
  }

  else
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_GLOBAL_LIMIT"];
    v12 = [v11 addSecretType:{objc_msgSend(v4, "localSecretType")}];
    v13 = [v4 modelClass];
    v14 = [v12 addDeviceClass:v13];
    v15 = [v14 localizedString];
    v16 = [v4 localizedName];
    v17 = [v4 localizedName];
    v18 = [v10 stringWithValidatedFormat:v15 validFormatSpecifiers:@"%@%@" error:0, v16, v17];
  }

  return v18;
}

- (id)_entryLimitCustodianRecoveryAvailableBodyForDevice:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277CFD560] isICSCHarmonizationEnabled])
  {
    v5 = [(CDPDRecoveryFlowController *)self recoveryContext];
    v6 = [v5 context];
    v7 = [v6 idmsRecovery];

    v8 = MEMORY[0x277CCACA8];
    if (v7)
    {
      v9 = @"RECOVERY_REMOTE_SECRET_ENTRY_SOFT_LIMIT_ALERT_SUBTITLE_RC";
    }

    else
    {
      v9 = @"REMOTE_SECRET_ENTRY_SOFT_LIMIT_ALERT_SUBTITLE_RC";
    }

    v11 = [MEMORY[0x277CFD508] builderForKey:v9];
    v12 = [v11 addSecretType:{objc_msgSend(v4, "localSecretType")}];
    v13 = [v12 localizedString];
    v14 = [v4 localizedName];
    v16 = [v8 stringWithValidatedFormat:v13 validFormatSpecifiers:@"%@" error:0, v14];
  }

  else
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CFD508] builderForKey:@"CUSTODIAN_RECOVERY_HELP_PROMPT_MESSAGE"];
    v12 = [v11 addSecretType:{objc_msgSend(v4, "localSecretType")}];
    v13 = [v12 localizedString];
    v14 = [v4 localizedName];
    v15 = [v4 localizedName];
    v16 = [v10 stringWithValidatedFormat:v13 validFormatSpecifiers:@"%@%@" error:0, v14, v15];
  }

  return v16;
}

- (id)_entryLimitDeviceSelectionAvailableBodyForDevice:(id)a3
{
  cdpDevices = self->_cdpDevices;
  v4 = a3;
  v5 = [(NSArray *)cdpDevices prevailingLocalSecretType];
  v6 = [MEMORY[0x277CFD560] isICSCHarmonizationEnabled];
  v7 = MEMORY[0x277CCACA8];
  if (v6)
  {
    v8 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_SOFT_LIMIT_ALERT_SUBTITLE_OTHER_ICSC"];
    v9 = [v8 addSecretType:{objc_msgSend(v4, "localSecretType")}];
    v10 = [v9 localizedString];
    v11 = [v4 localizedName];

    v12 = [v7 stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:0, v11];
  }

  else
  {
    v8 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_FORGOT_CODE_DIALOG_MESSAGE_ANOTHER_DEVICE"];
    v9 = [v8 addSecretType:{objc_msgSend(v4, "localSecretType")}];
    v10 = [v9 addSecretType:v5];
    v11 = [v10 localizedString];
    v13 = [v4 localizedName];

    v12 = [v7 stringWithValidatedFormat:v11 validFormatSpecifiers:@"%@" error:0, v13];
  }

  return v12;
}

- (id)_entryLimitPiggybackingAvailableBodyForDevice:(id)a3
{
  v3 = MEMORY[0x277CFD560];
  v4 = a3;
  v5 = [v3 isICSCHarmonizationEnabled];
  v6 = MEMORY[0x277CCACA8];
  if (v5)
  {
    v7 = @"REMOTE_SECRET_ENTRY_SOFT_LIMIT_ALERT_SUBTITLE_TRUSTED_DEVICES";
  }

  else
  {
    v7 = @"PIGGYBACKING_RECOVERY_HELP_PROMPT_MESSAGE";
  }

  v8 = [MEMORY[0x277CFD508] builderForKey:v7];
  v9 = [v8 addSecretType:{objc_msgSend(v4, "localSecretType")}];
  v10 = [v9 localizedString];
  v11 = [v4 localizedName];
  v12 = [v4 localizedName];

  v13 = [v6 stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@%@" error:0, v11, v12];

  return v13;
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

- (void)_showQuotaScreenWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CDPDRecoveryFlowController *)self uiProvider];

  if (v5)
  {
    v7 = [(CDPDRecoveryFlowController *)self uiProvider];
    [v7 presentQuotaScreenWithCompletion:v4];
  }

  else
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CDPDRecoveryValidatedJoinFlowController _showQuotaScreenWithCompletion:];
    }

    (*(v4 + 2))(v4, 0, 0);
  }
}

- (void)_showAccountResetConfirmationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Prompting user for Reset confirmation", buf, 2u);
  }

  v6 = [MEMORY[0x277CBEC10] mutableCopy];
  v7 = [(CDPDRecoveryValidatedJoinFlowController *)self _resetDataErrorForCurrentContextWithRecoveryIndexMap:v6];
  v8 = [(CDPDRecoveryFlowController *)self uiProvider];

  if (v8)
  {
    v9 = [(CDPDRecoveryFlowController *)self uiProvider];
    v10 = [(CDPDRecoveryFlowController *)self recoveryContext];
    v11 = [v10 context];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __87__CDPDRecoveryValidatedJoinFlowController__showAccountResetConfirmationWithCompletion___block_invoke;
    v12[3] = &unk_278E24910;
    v13 = v6;
    v14 = v4;
    [v9 cdpContext:v11 showError:v7 withDefaultIndex:1 withCompletion:v12];
  }

  else
  {
    (*(v4 + 2))(v4, 0);
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

- (id)_resetDataErrorForCurrentContextWithRecoveryIndexMap:(id)a3
{
  v33[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CDPDRecoveryValidatedJoinFlowController *)self _isWalrusEnabled];
  v6 = [MEMORY[0x277CBEC10] mutableCopy];
  if (v5)
  {
    v7 = [MEMORY[0x277CFD508] builderForKey:@"RPD_CONFIRMATION_STEP_2_TITLE" inTable:@"Localizable-Walrus"];
    v8 = [v7 localizedString];
    [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x277CCA450]];

    v9 = [MEMORY[0x277CFD508] builderForKey:@"RPD_CONFIRMATION_STEP_2_MESSAGE" inTable:@"Localizable-Walrus"];
    v10 = [v9 localizedString];
    [v6 setObject:v10 forKeyedSubscript:*MEMORY[0x277CCA470]];

    v11 = [MEMORY[0x277CFD508] builderForKey:@"WALRUS_STORAGE_LIST_UNAVAILABLE_CONFIRMATION_DELETE_BUTTON_TITLE"];
    v12 = [v11 localizedString];
    v33[0] = v12;
    v13 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_CANCEL_BUTTON"];
    v14 = [v13 localizedString];
    v33[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
    [v6 setObject:v15 forKeyedSubscript:*MEMORY[0x277CCA480]];

    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:&unk_2858221B0];
    v16 = _CDPLogSystem();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    v32 = v4;
    v17 = "Showing RPD error alert for Walrus user. RecoveryMap is %@";
  }

  else
  {
    v18 = [MEMORY[0x277CFD508] builderForKey:@"RESET_CONFIRMATION_DIALOG_TITLE"];
    v19 = [v18 localizedString];
    [v6 setObject:v19 forKeyedSubscript:*MEMORY[0x277CCA450]];

    v20 = [MEMORY[0x277CFD508] builderForKey:@"RESET_CONFIRMATION_DIALOG_MESSAGE"];
    v21 = [v20 localizedString];
    [v6 setObject:v21 forKeyedSubscript:*MEMORY[0x277CCA470]];

    v22 = [MEMORY[0x277CFD508] builderForKey:@"RESET_CONFIRMATION_DIALOG_BUTTON_RESET"];
    v23 = [v22 localizedString];
    v24 = [MEMORY[0x277CFD508] builderForKey:{@"GENERIC_CANCEL_BUTTON", v23}];
    v25 = [v24 localizedString];
    v30[1] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    [v6 setObject:v26 forKeyedSubscript:*MEMORY[0x277CCA480]];

    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:&unk_2858221B0];
    v16 = _CDPLogSystem();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    v32 = v4;
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
  v2 = [(CDPDRecoveryValidatedJoinFlowController *)self _isWalrusEnabled];
  v3 = [MEMORY[0x277CBEC10] mutableCopy];
  v4 = _CDPLogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v5)
    {
      v23 = 0;
      _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "Showing RPD unrecoverable error alert for Walrus user", &v23, 2u);
    }

    v6 = [MEMORY[0x277CFD508] builderForKey:@"RPD_CONFIRMATION_STEP_2_TITLE" inTable:@"Localizable-Walrus"];
    v7 = [v6 localizedString];
    [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x277CCA450]];

    v8 = [MEMORY[0x277CFD508] builderForKey:@"RPD_CONFIRMATION_STEP_2_MESSAGE" inTable:@"Localizable-Walrus"];
    v9 = [v8 localizedString];
    [v3 setObject:v9 forKeyedSubscript:*MEMORY[0x277CCA470]];

    v10 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_CANCEL_BUTTON"];
    v11 = [v10 localizedString];
    v25[0] = v11;
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
    v15 = [v14 localizedString];
    [v3 setObject:v15 forKeyedSubscript:*MEMORY[0x277CCA450]];

    v16 = [MEMORY[0x277CFD508] builderForKey:@"RESET_CONFIRMATION_DIALOG_MESSAGE_NO_RECOVERY"];
    v17 = [v16 localizedString];
    [v3 setObject:v17 forKeyedSubscript:*MEMORY[0x277CCA470]];

    v10 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_CANCEL_BUTTON"];
    v11 = [v10 localizedString];
    v24 = v11;
    v12 = [MEMORY[0x277CFD508] builderForKey:@"RESET_CONFIRMATION_DIALOG_BUTTON_RESET_NO_RECOVERY"];
    v13 = &v24;
  }

  v18 = [v12 localizedString];
  v13[1] = v18;
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
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_24510B000, v3, OS_LOG_TYPE_DEFAULT, "Showing RPD skip error alert for non-Walrus user", v14, 2u);
  }

  v4 = [MEMORY[0x277CFD508] builderForKey:@"SKIP_CONFIRMATION_DIALOG_TITLE_NO_RECOVERY"];
  v5 = [v4 localizedString];
  [v2 setObject:v5 forKeyedSubscript:*MEMORY[0x277CCA450]];

  v6 = [MEMORY[0x277CFD508] builderForKey:@"SKIP_CONFIRMATION_DIALOG_MESSAGE_NO_RECOVERY"];
  v7 = [v6 localizedString];
  [v2 setObject:v7 forKeyedSubscript:*MEMORY[0x277CCA470]];

  v8 = [MEMORY[0x277CFD508] builderForKey:@"DATA_RECOVERY_ESCAPE_OPTION_SKIP"];
  v9 = [v8 localizedString];
  v15[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [v2 setObject:v10 forKeyedSubscript:*MEMORY[0x277CCA480]];

  v11 = _CDPStateError();

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_handleNoRecoveryFactorsWithMask:(unint64_t)a3 validator:(id)a4
{
  v6 = a4;
  v7 = [(CDPDRecoveryFlowController *)self uiProvider];

  if (v7)
  {
    v23 = v6;
    v8 = [CDPEscapeOffersLedger alloc];
    v9 = [(CDPDRecoveryFlowController *)self recoveryContext];
    v10 = [MEMORY[0x277CFD4F8] sharedInstance];
    v11 = [v10 hasLocalSecret];
    v12 = [MEMORY[0x277CFD480] sharedInstance];
    v13 = [MEMORY[0x277CFD560] isVirtualMachine];
    v14 = [(CDPDRecoveryFlowController *)self recoveryContext];
    v15 = [v14 context];
    v16 = -[CDPEscapeOffersLedger initWithExpectedEscapeOffers:recoveryFlowContext:deviceHasPasscode:probationChecker:deviceIsVM:isICDPEnabled:](v8, "initWithExpectedEscapeOffers:recoveryFlowContext:deviceHasPasscode:probationChecker:deviceIsVM:isICDPEnabled:", a3, v9, v11, v12, v13, [v15 isICDPEnabledFromNetwork]);

    v17 = [(CDPEscapeOffersLedger *)v16 canOfferRPD];
    if (v17)
    {
      [(CDPDRecoveryValidatedJoinFlowController *)self _resetProtectedDataErrorUnrecoverable];
    }

    else
    {
      [(CDPDRecoveryValidatedJoinFlowController *)self _skipErrorUnrecoverable];
    }
    v19 = ;
    v20 = [(CDPDRecoveryFlowController *)self uiProvider];
    v21 = [(CDPDRecoveryFlowController *)self recoveryContext];
    v22 = [v21 context];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __86__CDPDRecoveryValidatedJoinFlowController__handleNoRecoveryFactorsWithMask_validator___block_invoke;
    v25[3] = &unk_278E24960;
    v27 = v17;
    v25[4] = self;
    v6 = v24;
    v26 = v24;
    [v20 cdpContext:v22 showError:v19 withDefaultIndex:1 withCompletion:v25];
  }

  else
  {
    v18 = _CDPLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [CDPDRecoveryValidatedJoinFlowController _handleNoRecoveryFactorsWithMask:validator:];
    }

    [(CDPDRecoveryValidatedJoinFlowController *)self _handleResetOptionWithResetRequested:0 localSecret:0 validator:v6];
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
    v4 = [(CDPDRecoveryFlowController *)self recoveryContext];
    v5 = [v4 context];
    v11 = 134217984;
    v12 = [v5 walrusStatus];
    _os_log_impl(&dword_24510B000, v3, OS_LOG_TYPE_DEFAULT, "Walrus status on recovery context is %ld", &v11, 0xCu);
  }

  v6 = [(CDPDRecoveryFlowController *)self recoveryContext];
  v7 = [v6 context];
  v8 = [v7 walrusStatus] == 1;

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