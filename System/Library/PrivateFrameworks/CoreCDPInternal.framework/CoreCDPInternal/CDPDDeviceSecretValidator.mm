@interface CDPDDeviceSecretValidator
- (BOOL)_isFailedSecret:(id)secret forDevice:(id)device;
- (BOOL)_isInvalidICSCError:(id)error;
- (CDPDDeviceSecretValidator)init;
- (CDPDDeviceSecretValidator)initWithContext:(id)context delegate:(id)delegate;
- (CDPDDeviceSecretValidatorDelegate)delegate;
- (id)_failedSecretsForDevice:(id)device;
- (id)_failedSingleICSCs;
- (id)_handleMultiCSCRecoveryFailureForDevice:(id)device recoveryError:(id)error secret:(id)secret;
- (void)_attemptToRecoverDevice:(id)device withSecret:(id)secret completion:(id)completion;
- (void)_attemptToRecoverWithRecoveryKey:(id)key completion:(id)completion;
- (void)_handleDelegateValidationError:(id)error;
- (void)_handleMultiCSCRecoveryResults:(id)results clique:(id)clique type:(unint64_t)type secret:(id)secret device:(id)device completion:(id)completion;
- (void)_handleRecoveryFailureForFinalDevice:(id)device completion:(id)completion;
- (void)_performSingleiCSCRecoveryWithSecret:(id)secret type:(unint64_t)type completion:(id)completion;
- (void)approveFromAnotherDeviceWithCompletion:(id)completion;
- (void)attemptToJoinCircleWithPiggybacking:(id)piggybacking withCompletion:(id)completion;
- (void)cancelValidationWithError:(id)error;
- (void)supportedEscapeOfferMaskCompletion:(id)completion;
- (void)validateCustodianRecoveryInfo:(id)info withCompletion:(id)completion;
- (void)validateRecoveryKey:(id)key withCompletion:(id)completion;
- (void)validateSecret:(id)secret devices:(id)devices type:(unint64_t)type withCompletion:(id)completion;
@end

@implementation CDPDDeviceSecretValidator

- (CDPDDeviceSecretValidator)init
{
  v10.receiver = self;
  v10.super_class = CDPDDeviceSecretValidator;
  v2 = [(CDPDDeviceSecretValidator *)&v10 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    failedSecrets = v2->_failedSecrets;
    v2->_failedSecrets = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    recoveryErrors = v2->_recoveryErrors;
    v2->_recoveryErrors = dictionary2;

    v7 = [MEMORY[0x277CBEB58] set];
    failedRecoveryKeys = v2->_failedRecoveryKeys;
    v2->_failedRecoveryKeys = v7;
  }

  return v2;
}

- (CDPDDeviceSecretValidator)initWithContext:(id)context delegate:(id)delegate
{
  contextCopy = context;
  delegateCopy = delegate;
  v9 = [(CDPDDeviceSecretValidator *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    objc_storeWeak(&v10->_delegate, delegateCopy);
  }

  return v10;
}

- (void)_attemptToRecoverDevice:(id)device withSecret:(id)secret completion:(id)completion
{
  deviceCopy = device;
  secretCopy = secret;
  completionCopy = completion;
  if ([(CDPDDeviceSecretValidator *)self _isFailedSecret:secretCopy forDevice:deviceCopy])
  {
    v11 = _CDPLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [CDPDDeviceSecretValidator _attemptToRecoverDevice:withSecret:completion:];
    }

    v12 = _CDPStateError();
    completionCopy[2](completionCopy, 0, v12);
  }

  else
  {
    v12 = objc_alloc_init(CDPDSecureBackupContext);
    [(CDPDSecureBackupContext *)v12 setDevice:deviceCopy];
    [(CDPDSecureBackupContext *)v12 setRecoverySecret:secretCopy];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = objc_loadWeakRetained(&self->_delegate);
      [v15 secretValidatorWillAttemptRecovery];
    }

    v16 = objc_loadWeakRetained(&self->_delegate);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __75__CDPDDeviceSecretValidator__attemptToRecoverDevice_withSecret_completion___block_invoke;
    v17[3] = &unk_278E24EA8;
    v17[4] = self;
    v18 = completionCopy;
    [v16 secretValidator:self recoverSecureBackupWithContext:v12 completion:v17];
  }
}

void __75__CDPDDeviceSecretValidator__attemptToRecoverDevice_withSecret_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained((*(a1 + 32) + 96));
      v9 = *(a1 + 32);
      v13 = 0;
      v10 = [v8 secretValidator:v9 shouldAcceptRecoveryError:&v13];
      v11 = v13;

      if ((v10 & 1) == 0)
      {
        v12 = _CDPLogSystem();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          __75__CDPDDeviceSecretValidator__attemptToRecoverDevice_withSecret_completion___block_invoke_cold_1();
        }
      }
    }

    else
    {
      v11 = 0;
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)_attemptToRecoverWithRecoveryKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  if ([(NSMutableSet *)self->_failedRecoveryKeys containsObject:keyCopy])
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [CDPDDeviceSecretValidator _attemptToRecoverWithRecoveryKey:completion:];
    }

    v9 = _CDPStateError();
    completionCopy[2](completionCopy, 0, v9);
  }

  else
  {
    v9 = objc_alloc_init(CDPDSecureBackupContext);
    [(CDPDSecureBackupContext *)v9 setRecoveryKey:keyCopy];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_delegate);
      [v12 secretValidatorWillAttemptRecovery];
    }

    v13 = objc_loadWeakRetained(&self->_delegate);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __73__CDPDDeviceSecretValidator__attemptToRecoverWithRecoveryKey_completion___block_invoke;
    v14[3] = &unk_278E24EA8;
    v14[4] = self;
    v15 = completionCopy;
    [v13 secretValidator:self recoverSecureBackupWithContext:v9 completion:v14];
  }
}

void __73__CDPDDeviceSecretValidator__attemptToRecoverWithRecoveryKey_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained((*(a1 + 32) + 96));
      v9 = *(a1 + 32);
      v13 = 0;
      v10 = [v8 secretValidator:v9 shouldAcceptRecoveryError:&v13];
      v11 = v13;

      if ((v10 & 1) == 0)
      {
        v12 = _CDPLogSystem();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          __75__CDPDDeviceSecretValidator__attemptToRecoverDevice_withSecret_completion___block_invoke_cold_1();
        }
      }
    }

    else
    {
      v11 = 0;
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)validateRecoveryKey:(id)key withCompletion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  if (keyCopy)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__CDPDDeviceSecretValidator_validateRecoveryKey_withCompletion___block_invoke;
    v10[3] = &unk_278E25620;
    v10[4] = self;
    v11 = keyCopy;
    v12 = completionCopy;
    [(CDPDDeviceSecretValidator *)self _attemptToRecoverWithRecoveryKey:v11 completion:v10];
  }

  else
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CDPDDeviceSecretValidator validateRecoveryKey:withCompletion:];
    }

    v9 = _CDPStateError();
    (*(completionCopy + 2))(completionCopy, 0, 1, v9);
  }
}

void __64__CDPDDeviceSecretValidator_validateRecoveryKey_withCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = a1[4];
  if (v5)
  {
    [v6[4] addObject:a1[5]];
    v7 = a1[6];
    if (v7)
    {
      (*(v7 + 16))(v7, 0, 1, v5);
    }
  }

  else
  {
    [v6 _handleMultiCSCRecoveryResults:v8 clique:0 type:5 secret:a1[5] device:0 completion:a1[6]];
  }
}

- (void)validateSecret:(id)secret devices:(id)devices type:(unint64_t)type withCompletion:(id)completion
{
  secretCopy = secret;
  devicesCopy = devices;
  completionCopy = completion;
  if ([(CDPDDeviceSecretValidator *)self isUsingMultipleICSC])
  {
    v13 = _CDPLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [CDPDDeviceSecretValidator validateSecret:devices:type:withCompletion:];
    }

    self->_isAttemptingRecovery = 1;
    v14 = [devicesCopy mutableCopy];
    firstObject = [v14 firstObject];
    currentDevice = self->_currentDevice;
    self->_currentDevice = firstObject;

    v17 = self->_currentDevice;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __72__CDPDDeviceSecretValidator_validateSecret_devices_type_withCompletion___block_invoke;
    v19[3] = &unk_278E25648;
    v19[4] = self;
    typeCopy = type;
    v20 = secretCopy;
    v23 = completionCopy;
    v21 = devicesCopy;
    v22 = v14;
    v18 = v14;
    [(CDPDDeviceSecretValidator *)self _attemptToRecoverDevice:v17 withSecret:v20 completion:v19];
  }

  else
  {
    self->_isAttemptingRecovery = 1;
    [(CDPDDeviceSecretValidator *)self _performSingleiCSCRecoveryWithSecret:secretCopy type:type completion:completionCopy];
  }
}

void __72__CDPDDeviceSecretValidator_validateSecret_devices_type_withCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a3)
  {
    v6 = [v4 _handleMultiCSCRecoveryFailureForDevice:v4[8] recoveryError:a3 secret:*(a1 + 40)];
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(a1 + 32) + 64), "remainingAttempts")}];
      v19 = 138412290;
      v20 = v8;
      _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "Remaining attempts: %@", &v19, 0xCu);
    }

    if (![*(*(a1 + 32) + 64) remainingAttempts])
    {
      *(*(a1 + 32) + 56) = 1;
    }

    v9 = *(a1 + 32);
    if (*(v9 + 56) == 1)
    {
      v10 = _CDPLogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 48);
        v19 = 138412290;
        v20 = v11;
        _os_log_impl(&dword_24510B000, v10, OS_LOG_TYPE_DEFAULT, "Depleted remaining attempts for multiple-iCSC entry (%@)", &v19, 0xCu);
      }

      v9 = *(a1 + 32);
    }

    [*(a1 + 56) removeObject:*(v9 + 64)];
    v12 = [*(a1 + 32) delegate];
    if ([v12 secretValidator:*(a1 + 32) shouldContinueValidationAfterError:v6])
    {
      v13 = [*(a1 + 56) count];

      if (v13)
      {
        [*(a1 + 32) validateSecret:*(a1 + 40) devices:*(a1 + 56) type:*(a1 + 72) withCompletion:*(a1 + 64)];
LABEL_18:

        v18 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
    }

    [*(a1 + 32) _handleRecoveryFailureForFinalDevice:*(*(a1 + 32) + 64) completion:*(a1 + 64)];
    goto LABEL_18;
  }

  v14 = v4[8];
  v16 = *(a1 + 64);
  v15 = *(a1 + 72);
  v17 = *MEMORY[0x277D85DE8];

  [v4 _handleMultiCSCRecoveryResults:a2 clique:0 type:v15 secret:v5 device:v14 completion:v16];
}

- (void)_handleRecoveryFailureForFinalDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Un-set _isAttemptingRecovery to resume acting upon circle changes after failed multiple iCSC recovery", buf, 2u);
  }

  self->_isAttemptingRecovery = 0;
  if (([(CDPContext *)self->_context idmsRecovery]& 1) != 0 || ([(CDPContext *)self->_context findMyiPhoneUUID], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    v12 = _CDPLogSystem();
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24510B000, v13, OS_LOG_TYPE_DEFAULT, "Redirecting error to the delegate", buf, 2u);
      }

      v14 = objc_loadWeakRetained(&self->_delegate);
      v15 = [(NSMutableDictionary *)self->_recoveryErrors copy];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __77__CDPDDeviceSecretValidator__handleRecoveryFailureForFinalDevice_completion___block_invoke;
      v31[3] = &unk_278E255A0;
      v31[4] = self;
      v32 = completionCopy;
      [v14 secretValidator:self didFailRecoveryWithErrors:v15 completion:v31];

      v16 = v32;
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CDPDDeviceSecretValidator _handleRecoveryFailureForFinalDevice:completion:];
      }

      validSecretHandler = self->_validSecretHandler;
      v16 = _CDPStateError();
      validSecretHandler[2](validSecretHandler, 0, v16);
    }
  }

  else
  {
    v18 = self->_failedAttempts + 1;
    self->_failedAttempts = v18;
    v19 = v18 > 2;
    v20 = -5200;
    if (v19)
    {
      v20 = -5203;
    }

    if (self->_depletedRemainingAttempts)
    {
      v21 = -5206;
    }

    else
    {
      v21 = v20;
    }

    v16 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:v21 userInfo:self->_recoveryErrors];
    v22 = _CDPLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v22, OS_LOG_TYPE_DEFAULT, "Reaching out to the delegate for error handling", buf, 2u);
    }

    v23 = objc_loadWeakRetained(&self->_delegate);
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      v25 = objc_loadWeakRetained(&self->_delegate);
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __77__CDPDDeviceSecretValidator__handleRecoveryFailureForFinalDevice_completion___block_invoke_36;
      v29[3] = &unk_278E255A0;
      v29[4] = self;
      v30 = completionCopy;
      [v25 secretValidator:self didFailRecovery:deviceCopy withError:v16 completion:v29];

      v26 = v30;
    }

    else
    {
      v27 = _CDPLogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [CDPDDeviceSecretValidator _handleRecoveryFailureForFinalDevice:completion:];
      }

      v28 = self->_validSecretHandler;
      v26 = _CDPStateError();
      v28[2](v28, 0, v26);
    }
  }

  [(NSMutableDictionary *)self->_recoveryErrors removeAllObjects];
}

void __77__CDPDDeviceSecretValidator__handleRecoveryFailureForFinalDevice_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __77__CDPDDeviceSecretValidator__handleRecoveryFailureForFinalDevice_completion___block_invoke_cold_1();
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, a2, v5);
  }

  if ((a2 & 1) == 0 && ([v5 cdp_isCDPErrorWithCode:-5206] & 1) == 0)
  {
    v8 = *(*(a1 + 32) + 88);
    v9 = MEMORY[0x277CCA9B8];
    v10 = [v5 domain];
    v11 = [v9 errorWithDomain:v10 code:objc_msgSend(v5 userInfo:{"code"), 0}];
    (*(v8 + 16))(v8, 0, v11);
  }
}

void __77__CDPDDeviceSecretValidator__handleRecoveryFailureForFinalDevice_completion___block_invoke_36(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __77__CDPDDeviceSecretValidator__handleRecoveryFailureForFinalDevice_completion___block_invoke_cold_1();
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, a2, v5);
  }

  v8 = [v5 domain];
  v9 = [v8 isEqualToString:*MEMORY[0x277CFD418]];

  if (v9)
  {
    v10 = [v5 code];
    if (v10 == -5308)
    {
      v11 = *(*(a1 + 32) + 88);
      v12 = _CDPStateError();
      (*(v11 + 16))(v11, 0, v12);
    }

    else if (v10 == -5222 || v10 == -5307)
    {
      [*(a1 + 32) cancelValidationWithError:v5];
    }
  }

  *(*(a1 + 32) + 56) = 0;
}

- (void)cancelValidationWithError:(id)error
{
  errorCopy = error;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "cancelValidationWithError was called", buf, 2u);
  }

  if ([errorCopy isLoginHardLimit])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      currentDevice = self->_currentDevice;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __55__CDPDDeviceSecretValidator_cancelValidationWithError___block_invoke;
      v13[3] = &unk_278E24BB0;
      v13[4] = self;
      [v8 secretValidator:self didFailRecovery:currentDevice withError:errorCopy completion:v13];
LABEL_10:

      goto LABEL_11;
    }
  }

  validSecretHandler = [(CDPDDeviceSecretValidator *)self validSecretHandler];

  if (validSecretHandler)
  {
    v11 = objc_alloc_init(CDPDRemoteSecretValidationResult);
    v8 = v11;
    if (errorCopy)
    {
      [(CDPDRemoteSecretValidationResult *)v11 setUserDidCancel:1];
    }

    validSecretHandler2 = [(CDPDDeviceSecretValidator *)self validSecretHandler];
    (validSecretHandler2)[2](validSecretHandler2, v8, errorCopy);

    goto LABEL_10;
  }

LABEL_11:
}

- (void)_handleDelegateValidationError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v6 = [domain isEqualToString:*MEMORY[0x277CFD418]];

  if (!v6)
  {
LABEL_6:
    validSecretHandler = [(CDPDDeviceSecretValidator *)self validSecretHandler];

    if (!validSecretHandler)
    {
      goto LABEL_9;
    }

    validSecretHandler2 = [(CDPDDeviceSecretValidator *)self validSecretHandler];
    (*(validSecretHandler2 + 16))(validSecretHandler2, 0, errorCopy);
LABEL_8:

    goto LABEL_9;
  }

  code = [errorCopy code];
  if (code == -5210)
  {
    validSecretHandler2 = _CDPLogSystem();
    if (os_log_type_enabled(validSecretHandler2, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_24510B000, validSecretHandler2, OS_LOG_TYPE_DEFAULT, "Event handled, skipping call to valid secret handler", v13, 2u);
    }

    goto LABEL_8;
  }

  if (code != -5208)
  {
    if (code == -5209)
    {
      [(CDPDDeviceSecretValidator *)self approveFromAnotherDeviceWithCompletion:0];
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v10 = objc_alloc_init(CDPDRemoteSecretValidationResult);
  [(CDPDRemoteSecretValidationResult *)v10 setUserDidReset:1];
  validSecretHandler3 = [(CDPDDeviceSecretValidator *)self validSecretHandler];

  if (validSecretHandler3)
  {
    validSecretHandler4 = [(CDPDDeviceSecretValidator *)self validSecretHandler];
    (validSecretHandler4)[2](validSecretHandler4, v10, errorCopy);
  }

LABEL_9:
}

- (id)_handleMultiCSCRecoveryFailureForDevice:(id)device recoveryError:(id)error secret:(id)secret
{
  v20[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  errorCopy = error;
  secretCopy = secret;
  v11 = errorCopy;
  if ([(CDPDDeviceSecretValidator *)self _isInvalidICSCError:v11])
  {
    [deviceCopy setRemainingAttempts:{objc_msgSend(deviceCopy, "remainingAttempts") - 1}];
    v12 = [(CDPDDeviceSecretValidator *)self _failedSecretsForDevice:deviceCopy];
    [v12 addObject:secretCopy];
    domain = [v11 domain];
    v14 = [domain isEqualToString:*MEMORY[0x277CFD418]];

    v15 = v11;
    if ((v14 & 1) == 0)
    {
      v19 = *MEMORY[0x277CCA7E8];
      v20[0] = v11;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v15 = _CDPStateError();
    }
  }

  else if ([v11 code] == 14 || (v15 = v11, objc_msgSend(v11, "code") == 14))
  {
    [deviceCopy setRemainingAttempts:0];
    v15 = v11;
  }

  [(NSMutableDictionary *)self->_recoveryErrors setObject:v15 forKey:deviceCopy];

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_failedSecretsForDevice:(id)device
{
  recordID = [device recordID];
  if (recordID)
  {
    v5 = [(NSMutableDictionary *)self->_failedSecrets objectForKey:recordID];
    if (!v5)
    {
      v5 = [MEMORY[0x277CBEB58] set];
      [(NSMutableDictionary *)self->_failedSecrets setObject:v5 forKeyedSubscript:recordID];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_failedSingleICSCs
{
  failedSingleICSCs = self->_failedSingleICSCs;
  if (!failedSingleICSCs)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    v5 = self->_failedSingleICSCs;
    self->_failedSingleICSCs = v4;

    failedSingleICSCs = self->_failedSingleICSCs;
  }

  return failedSingleICSCs;
}

- (BOOL)_isFailedSecret:(id)secret forDevice:(id)device
{
  secretCopy = secret;
  deviceCopy = device;
  recordID = [deviceCopy recordID];

  if (recordID)
  {
    failedSecrets = self->_failedSecrets;
    recordID2 = [deviceCopy recordID];
    v11 = [(NSMutableDictionary *)failedSecrets objectForKeyedSubscript:recordID2];
    v12 = [v11 containsObject:secretCopy];
  }

  else
  {
    v12 = [(NSMutableSet *)self->_failedSingleICSCs containsObject:secretCopy];
  }

  return v12;
}

- (void)_handleMultiCSCRecoveryResults:(id)results clique:(id)clique type:(unint64_t)type secret:(id)secret device:(id)device completion:(id)completion
{
  resultsCopy = results;
  secretCopy = secret;
  deviceCopy = device;
  completionCopy = completion;
  [(NSMutableDictionary *)self->_recoveryErrors removeAllObjects];
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1, 0, 0);
  }

  if (self->_validSecretHandler)
  {
    v16 = objc_alloc_init(CDPDRemoteSecretValidationResult);
    [(CDPDRemoteSecretValidationResult *)v16 setDevice:deviceCopy];
    [(CDPDRemoteSecretValidationResult *)v16 setValidSecret:secretCopy];
    [(CDPDRemoteSecretValidationResult *)v16 setSecretType:type];
    recoveredInfo = [resultsCopy recoveredInfo];
    [(CDPDRemoteSecretValidationResult *)v16 setRecoveredInfo:recoveredInfo];

    recoveredClique = [resultsCopy recoveredClique];
    [(CDPDRemoteSecretValidationResult *)v16 setRecoveredClique:recoveredClique];

    (*(self->_validSecretHandler + 2))();
  }
}

- (void)_performSingleiCSCRecoveryWithSecret:(id)secret type:(unint64_t)type completion:(id)completion
{
  secretCopy = secret;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__CDPDDeviceSecretValidator__performSingleiCSCRecoveryWithSecret_type_completion___block_invoke;
  v12[3] = &unk_278E25670;
  v12[4] = self;
  v13 = secretCopy;
  v14 = completionCopy;
  typeCopy = type;
  v10 = secretCopy;
  v11 = completionCopy;
  [(CDPDDeviceSecretValidator *)self _attemptToRecoverDevice:0 withSecret:v10 completion:v12];
}

void __82__CDPDDeviceSecretValidator__performSingleiCSCRecoveryWithSecret_type_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if ([*(a1 + 32) _isInvalidICSCError:v6])
    {
      v7 = [*(a1 + 32) _failedSingleICSCs];
      [v7 addObject:*(a1 + 40)];
    }

    ++*(*(a1 + 32) + 16);
    *(*(a1 + 32) + 8) = 0;
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __82__CDPDDeviceSecretValidator__performSingleiCSCRecoveryWithSecret_type_completion___block_invoke_cold_1();
    }

    if (*(a1 + 48))
    {
      if (*(*(a1 + 32) + 16) <= 2uLL)
      {
        v9 = -5200;
      }

      else
      {
        v9 = -5203;
      }

      v10 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:v9];
      (*(*(a1 + 48) + 16))(*(a1 + 48), 0, *(*(a1 + 32) + 16) < 3uLL, v10);
    }

    if (*(*(a1 + 32) + 16) >= 3uLL)
    {
      v11 = _CDPLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __82__CDPDDeviceSecretValidator__performSingleiCSCRecoveryWithSecret_type_completion___block_invoke_cold_2();
      }

      if (*(*(a1 + 32) + 88))
      {
        v12 = CDPLocalizedString();
        v13 = CDPLocalizedString();
        v14 = [MEMORY[0x277CBEB38] dictionary];
        v15 = v14;
        if (v12)
        {
          [v14 setObject:v12 forKeyedSubscript:*MEMORY[0x277CCA450]];
        }

        if (v13)
        {
          [v15 setObject:v13 forKeyedSubscript:*MEMORY[0x277CCA470]];
        }

        v16 = *(*(a1 + 32) + 88);
        v17 = [v15 copy];
        v18 = _CDPStateError();
        (*(v16 + 16))(v16, 0, v18);

        goto LABEL_24;
      }
    }
  }

  else
  {
    v19 = *(a1 + 48);
    if (v19)
    {
      (*(v19 + 16))(v19, 1, 0, 0);
    }

    if (*(*(a1 + 32) + 88))
    {
      v12 = objc_alloc_init(CDPDRemoteSecretValidationResult);
      [(CDPDRemoteSecretValidationResult *)v12 setValidSecret:*(a1 + 40)];
      [(CDPDRemoteSecretValidationResult *)v12 setSecretType:*(a1 + 56)];
      v20 = [v5 recoveredInfo];
      [(CDPDRemoteSecretValidationResult *)v12 setRecoveredInfo:v20];

      v21 = [v5 recoveredClique];
      [(CDPDRemoteSecretValidationResult *)v12 setRecoveredClique:v21];

      (*(*(*(a1 + 32) + 88) + 16))();
LABEL_24:
    }
  }
}

- (void)supportedEscapeOfferMaskCompletion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    (*(completion + 2))(completionCopy, [(CDPDDeviceSecretValidator *)self supportedEscapeOfferMask]);
  }
}

- (void)approveFromAnotherDeviceWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0, 0);
  }
}

- (void)validateCustodianRecoveryInfo:(id)info withCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0, 0);
  }
}

- (void)attemptToJoinCircleWithPiggybacking:(id)piggybacking withCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0, 0);
  }
}

- (BOOL)_isInvalidICSCError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277CFB2F0]])
  {
    v5 = [errorCopy code] == 26;
  }

  else
  {
    v5 = 0;
  }

  v6 = [errorCopy cdp_isCDPErrorWithCode:-5205];
  return (v6 | v5) & 1;
}

- (CDPDDeviceSecretValidatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __75__CDPDDeviceSecretValidator__attemptToRecoverDevice_withSecret_completion___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_24510B000, v0, OS_LOG_TYPE_DEBUG, "Recovery delegate rejected recovery with error. %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)validateRecoveryKey:withCompletion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleRecoveryFailureForFinalDevice:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __77__CDPDDeviceSecretValidator__handleRecoveryFailureForFinalDevice_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end