@interface CDPToolFakeUIProvider
- (void)cdpContext:(id)context promptForAdoptionOfMultipleICSC:(id)c;
- (void)cdpContext:(id)context promptForBeneficiaryAccessKeyWithCompletion:(id)completion;
- (void)cdpContext:(id)context promptForICSCWithIsNumeric:(BOOL)numeric numericLength:(id)length isRandom:(BOOL)random validator:(id)validator;
- (void)cdpContext:(id)context promptForInteractiveAuthenticationWithCompletion:(id)completion;
- (void)cdpContext:(id)context promptForLocalSecretWithCompletion:(id)completion;
- (void)cdpContext:(id)context promptForRecoveryKeyWithSecretValidator:(id)validator completion:(id)completion;
- (void)cdpContext:(id)context promptForRecoveryKeyWithValidator:(id)validator completion:(id)completion;
- (void)cdpContext:(id)context promptForRemoteSecretWithDevices:(id)devices offeringRemoteApproval:(BOOL)approval validator:(id)validator;
- (void)cdpRecoveryFlowContext:(id)context promptForRemoteSecretWithDevices:(id)devices validator:(id)validator;
- (void)showCustodianProvidedCodeEntryScreen:(id)screen controller:(id)controller validator:(id)validator;
- (void)startCustodianRecoveryWithContext:(id)context validator:(id)validator;
- (void)validateCode:(id)code controller:(id)controller completion:(id)completion;
@end

@implementation CDPToolFakeUIProvider

- (void)cdpContext:(id)context promptForLocalSecretWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = +[CDPLocalDevice sharedInstance];
  hasLocalSecret = [v6 hasLocalSecret];

  if (!hasLocalSecret)
  {
    v13 = 2;
LABEL_8:
    mEMORY[0x1E69ADFB8] = [[CDPLocalSecret alloc] initWithValidatedSecret:self->_localSecret secretType:v13];
    completionCopy[2](completionCopy, mEMORY[0x1E69ADFB8], 0);
    goto LABEL_12;
  }

  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  localSecret = self->_localSecret;
  v16 = 0;
  v10 = [(CDPLocalSecret *)mEMORY[0x1E69ADFB8] unlockDeviceWithPasscode:localSecret outError:&v16];
  v11 = v16;
  v12 = v11;
  if (v10)
  {
    printf("Local secret is set and valid");
    v15 = 0;
    [(CDPLocalSecret *)mEMORY[0x1E69ADFB8] unlockScreenTypeWithOutSimplePasscodeType:&v15];
    if (v15 == -1)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    goto LABEL_8;
  }

  v14 = [v11 description];
  printf("Local secret is invalid, error: %s\n", [v14 UTF8String]);

  if (completionCopy)
  {
    (completionCopy)[2](completionCopy, 0, v12);
  }

LABEL_12:
}

- (void)cdpContext:(id)context promptForRemoteSecretWithDevices:(id)devices offeringRemoteApproval:(BOOL)approval validator:(id)validator
{
  contextCopy = context;
  devicesCopy = devices;
  validatorCopy = validator;
  v12 = validatorCopy;
  remoteSecret = self->_remoteSecret;
  if (remoteSecret)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __102__CDPToolFakeUIProvider_cdpContext_promptForRemoteSecretWithDevices_offeringRemoteApproval_validator___block_invoke;
    v23[3] = &unk_1E869DDB0;
    v24 = validatorCopy;
    [v24 validateSecret:remoteSecret devices:devicesCopy type:2 withCompletion:v23];
    v14 = v24;
  }

  else
  {
    recoveryKey = self->_recoveryKey;
    if (!recoveryKey)
    {
      objc_initWeak(&location, self);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __102__CDPToolFakeUIProvider_cdpContext_promptForRemoteSecretWithDevices_offeringRemoteApproval_validator___block_invoke_3;
      v16[3] = &unk_1E869DDD8;
      objc_copyWeak(&v19, &location);
      v17 = v12;
      v18 = contextCopy;
      [v17 supportedEscapeOfferMaskCompletion:v16];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
      goto LABEL_6;
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __102__CDPToolFakeUIProvider_cdpContext_promptForRemoteSecretWithDevices_offeringRemoteApproval_validator___block_invoke_2;
    v21[3] = &unk_1E869DDB0;
    v22 = validatorCopy;
    [v22 validateRecoveryKey:recoveryKey withCompletion:v21];
    v14 = v22;
  }

LABEL_6:
}

uint64_t __102__CDPToolFakeUIProvider_cdpContext_promptForRemoteSecretWithDevices_offeringRemoteApproval_validator___block_invoke(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = result;
    puts("Remote secret is invalid... cancelling prompt/validation");
    v4 = *(v3 + 32);

    return [v4 cancelValidationWithError:0];
  }

  return result;
}

uint64_t __102__CDPToolFakeUIProvider_cdpContext_promptForRemoteSecretWithDevices_offeringRemoteApproval_validator___block_invoke_2(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = result;
    puts("Recovery key is invalid... cancelling prompt/validation");
    v4 = *(v3 + 32);

    return [v4 cancelValidationWithError:0];
  }

  return result;
}

void __102__CDPToolFakeUIProvider_cdpContext_promptForRemoteSecretWithDevices_offeringRemoteApproval_validator___block_invoke_3(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_4;
  }

  if ((a2 & 0x40) == 0)
  {
    puts("A remote secret or recovery key is required to attempt backup recovery (use -remote <secret> OR -mk <recoveryKey>)");
LABEL_4:
    [*(a1 + 32) cancelValidationWithError:0];
    goto LABEL_6;
  }

  [WeakRetained startCustodianRecoveryWithContext:*(a1 + 40) validator:*(a1 + 32)];
LABEL_6:
}

- (void)startCustodianRecoveryWithContext:(id)context validator:(id)validator
{
  contextCopy = context;
  validatorCopy = validator;
  v8 = [[CDPCustodianRecoveryController alloc] initWithContext:contextCopy];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__CDPToolFakeUIProvider_startCustodianRecoveryWithContext_validator___block_invoke;
  v12[3] = &unk_1E869DE00;
  objc_copyWeak(&v16, &location);
  v9 = contextCopy;
  v13 = v9;
  v10 = v8;
  v14 = v10;
  v11 = validatorCopy;
  v15 = v11;
  [(CDPCustodianRecoveryController *)v10 startRecoverySessionWithCompletion:v12];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __69__CDPToolFakeUIProvider_startCustodianRecoveryWithContext_validator___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1DED99000, v7, OS_LOG_TYPE_DEFAULT, "Custodian recovery session started sessionID: %@, error: %@", &v10, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained showCustodianProvidedCodeEntryScreen:*(a1 + 32) controller:*(a1 + 40) validator:*(a1 + 48)];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)showCustodianProvidedCodeEntryScreen:(id)screen controller:(id)controller validator:(id)validator
{
  v18 = *MEMORY[0x1E69E9840];
  validatorCopy = validator;
  controllerCopy = controller;
  v9 = _CDPLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DED99000, v9, OS_LOG_TYPE_DEFAULT, "CLI: Enter the recovery code provided by your custodian...", buf, 2u);
  }

  printf("Enter the recovery code provided by your custodian: ");
  scanf("%s", v17);
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v17];
  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [CDPToolFakeUIProvider showCustodianProvidedCodeEntryScreen:v10 controller:v11 validator:?];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __83__CDPToolFakeUIProvider_showCustodianProvidedCodeEntryScreen_controller_validator___block_invoke;
  v14[3] = &unk_1E869DE50;
  v15 = validatorCopy;
  v12 = validatorCopy;
  [(CDPToolFakeUIProvider *)self validateCode:v10 controller:controllerCopy completion:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __83__CDPToolFakeUIProvider_showCustodianProvidedCodeEntryScreen_controller_validator___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _CDPLogSystem();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __83__CDPToolFakeUIProvider_showCustodianProvidedCodeEntryScreen_controller_validator___block_invoke_cold_1(v6, v8);
    }

    v9 = [v6 description];
    printf("Error: %s\n", [v9 UTF8String]);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DED99000, v8, OS_LOG_TYPE_DEFAULT, "CLI: Recovery code validated. Validating recovery info...", buf, 2u);
    }

    puts("Recovery code validated.");
    puts("Validating recovery info...");
    v10 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __83__CDPToolFakeUIProvider_showCustodianProvidedCodeEntryScreen_controller_validator___block_invoke_33;
    v11[3] = &unk_1E869DE28;
    v12 = 0;
    [v10 validateCustodianRecoveryInfo:v5 withCompletion:v11];
    v9 = v12;
  }
}

void __83__CDPToolFakeUIProvider_showCustodianProvidedCodeEntryScreen_controller_validator___block_invoke_33(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _CDPLogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DED99000, v7, OS_LOG_TYPE_DEFAULT, "Custodian recovery info validated, safe to dismiss the view", buf, 2u);
    }

    puts("Recovery completed");
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __83__CDPToolFakeUIProvider_showCustodianProvidedCodeEntryScreen_controller_validator___block_invoke_33_cold_1(a1, v7);
    }

    v8 = [v5 description];
    printf("Recovery failed with error: %s", [v8 UTF8String]);
  }
}

- (void)validateCode:(id)code controller:(id)controller completion:(id)completion
{
  codeCopy = code;
  controllerCopy = controller;
  completionCopy = completion;
  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1DED99000, v11, OS_LOG_TYPE_DEFAULT, "CLI: Validating the recovery code...", buf, 2u);
  }

  puts("Validating the recovery code...");
  objc_initWeak(buf, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__CDPToolFakeUIProvider_validateCode_controller_completion___block_invoke;
  v14[3] = &unk_1E869DE78;
  objc_copyWeak(&v17, buf);
  v12 = completionCopy;
  v16 = v12;
  v13 = controllerCopy;
  v15 = v13;
  [v13 validateRecoveryCode:codeCopy withCompletion:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

void __60__CDPToolFakeUIProvider_validateCode_controller_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if ([v6 code] == -9002)
    {
      v8 = _CDPLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DED99000, v8, OS_LOG_TYPE_DEFAULT, "CLI: The recovery code is not valid", buf, 2u);
      }

      puts("The recovery code is not valid");
      v9 = _CDPLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_1DED99000, v9, OS_LOG_TYPE_DEFAULT, "CLI: Reenter the recovery code provided by your custodian...", v16, 2u);
      }

      printf("Reenter the recovery code provided by your custodian: ");
      scanf("%s", v15);
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v15];
      v11 = _CDPLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __60__CDPToolFakeUIProvider_validateCode_controller_completion___block_invoke_cold_1(v10, v11);
      }

      [WeakRetained validateCode:v10 controller:*(a1 + 32) completion:*(a1 + 40)];
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v12 = *(a1 + 40);
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CDPStateError" code:0 userInfo:0];
    (*(v12 + 16))(v12, 0, v13);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)cdpRecoveryFlowContext:(id)context promptForRemoteSecretWithDevices:(id)devices validator:(id)validator
{
  validatorCopy = validator;
  devicesCopy = devices;
  contextCopy = context;
  context = [contextCopy context];
  hasPeersForRemoteApproval = [contextCopy hasPeersForRemoteApproval];

  [(CDPToolFakeUIProvider *)self cdpContext:context promptForRemoteSecretWithDevices:devicesCopy offeringRemoteApproval:hasPeersForRemoteApproval validator:validatorCopy];
}

- (void)cdpContext:(id)context promptForICSCWithIsNumeric:(BOOL)numeric numericLength:(id)length isRandom:(BOOL)random validator:(id)validator
{
  validatorCopy = validator;
  v9 = validatorCopy;
  icsc = self->_icsc;
  if (icsc)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __96__CDPToolFakeUIProvider_cdpContext_promptForICSCWithIsNumeric_numericLength_isRandom_validator___block_invoke;
    v11[3] = &unk_1E869DDB0;
    v12 = validatorCopy;
    [v12 validateSecret:icsc devices:0 type:0 withCompletion:v11];
  }

  else
  {
    puts("An iCSC is required to attempt backup recovery (use -icsc <iCSC>)");
    [v9 cancelValidationWithError:0];
  }
}

uint64_t __96__CDPToolFakeUIProvider_cdpContext_promptForICSCWithIsNumeric_numericLength_isRandom_validator___block_invoke(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = result;
    puts("ICSC is invalid... cancelling prompt/validation");
    v4 = *(v3 + 32);

    return [v4 cancelValidationWithError:0];
  }

  return result;
}

- (void)cdpContext:(id)context promptForRecoveryKeyWithValidator:(id)validator completion:(id)completion
{
  completionCopy = completion;
  validatorCopy = validator;
  recoveryKey = [(CDPToolFakeUIProvider *)self recoveryKey];
  [validatorCopy confirmRecoveryKey:recoveryKey completion:completionCopy];
}

- (void)cdpContext:(id)context promptForAdoptionOfMultipleICSC:(id)c
{
  if (c)
  {
    (*(c + 2))(c, 1, 0);
  }
}

- (void)cdpContext:(id)context promptForInteractiveAuthenticationWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0, 0);
  }
}

- (void)cdpContext:(id)context promptForBeneficiaryAccessKeyWithCompletion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    accessKey = [(CDPToolFakeUIProvider *)self accessKey];
    (*(completion + 2))(completionCopy, accessKey, 0);
  }
}

- (void)cdpContext:(id)context promptForRecoveryKeyWithSecretValidator:(id)validator completion:(id)completion
{
  validatorCopy = validator;
  completionCopy = completion;
  v9 = [[CDPRecoveryKeySecretValidatorProxyImpl alloc] initWithRemoteObject:validatorCopy];
  recoveryKey = self->_recoveryKey;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __87__CDPToolFakeUIProvider_cdpContext_promptForRecoveryKeyWithSecretValidator_completion___block_invoke;
  v13[3] = &unk_1E869DBA8;
  v14 = validatorCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = validatorCopy;
  [(CDPRecoveryKeySecretValidatorProxyImpl *)v9 validateRecoveryKey:recoveryKey withCompletion:v13];
}

void __87__CDPToolFakeUIProvider_cdpContext_promptForRecoveryKeyWithSecretValidator_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v6 = a4;
  [v5 cancelValidationWithError:0];
  (*(*(a1 + 40) + 16))();
}

- (void)showCustodianProvidedCodeEntryScreen:(uint64_t)a1 controller:(NSObject *)a2 validator:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1DED99000, a2, OS_LOG_TYPE_DEBUG, "CLI: Entered recovery code: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __83__CDPToolFakeUIProvider_showCustodianProvidedCodeEntryScreen_controller_validator___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DED99000, a2, OS_LOG_TYPE_ERROR, "CLI: Validate recovery code failed with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __83__CDPToolFakeUIProvider_showCustodianProvidedCodeEntryScreen_controller_validator___block_invoke_33_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1DED99000, a2, OS_LOG_TYPE_ERROR, "Custodian recovery info failed validation with error: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __60__CDPToolFakeUIProvider_validateCode_controller_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1DED99000, a2, OS_LOG_TYPE_DEBUG, "CLI: Reentered recovery code: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end