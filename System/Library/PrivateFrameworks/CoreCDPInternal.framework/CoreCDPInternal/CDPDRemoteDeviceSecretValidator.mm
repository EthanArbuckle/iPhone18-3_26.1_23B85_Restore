@interface CDPDRemoteDeviceSecretValidator
- (id)_decoratedDelegate;
- (void)_decoratedDelegate;
- (void)_retriableValidateCustodianRecoveryInfo:(id)info withCompletion:(id)completion;
- (void)approveFromAnotherDeviceWithCompletion:(id)completion;
- (void)attemptToJoinCircleWithPiggybacking:(id)piggybacking withCompletion:(id)completion;
- (void)cancelApproveFromAnotherDevice;
- (void)resetAccountCDPStateWithEscapeOptionsOffered:(unint64_t)offered;
- (void)resetAccountCDPStateWithEscapeOptionsOffered:(unint64_t)offered andSetSecret:(id)secret;
- (void)setValidSecretHandler:(id)handler;
- (void)supportedEscapeOfferMaskCompletion:(id)completion;
- (void)validateCustodianRecoveryInfo:(id)info withCompletion:(id)completion;
@end

@implementation CDPDRemoteDeviceSecretValidator

- (void)setValidSecretHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__CDPDRemoteDeviceSecretValidator_setValidSecretHandler___block_invoke;
  v7[3] = &unk_278E24D90;
  objc_copyWeak(&v9, &location);
  v5 = handlerCopy;
  v8 = v5;
  v6.receiver = self;
  v6.super_class = CDPDRemoteDeviceSecretValidator;
  [(CDPDDeviceSecretValidator *)&v6 setValidSecretHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __57__CDPDRemoteDeviceSecretValidator_setValidSecretHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (!v5)
  {
    [WeakRetained cancelApproveFromAnotherDevice];
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v9, v5);
  }
}

- (void)approveFromAnotherDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CDPDRemoteDeviceSecretValidator approveFromAnotherDeviceWithCompletion:];
  }

  v6 = _Block_copy(completionCopy);
  requestToJoinCompletion = self->_requestToJoinCompletion;
  self->_requestToJoinCompletion = v6;

  self->_isWaitingForRemoteApproval = 1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__CDPDRemoteDeviceSecretValidator_approveFromAnotherDeviceWithCompletion___block_invoke;
  aBlock[3] = &unk_278E24DB8;
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  _decoratedDelegate = [(CDPDRemoteDeviceSecretValidator *)self _decoratedDelegate];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__CDPDRemoteDeviceSecretValidator_approveFromAnotherDeviceWithCompletion___block_invoke_2;
  v11[3] = &unk_278E24AE8;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [_decoratedDelegate remoteSecretValidator:self applyToJoinCircleWithJoinHandler:v11];
}

void __74__CDPDRemoteDeviceSecretValidator_approveFromAnotherDeviceWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 112);
  if (v3)
  {
    (*(v3 + 16))(v3, 0, a2);
    v4 = *(a1 + 32);
    v5 = *(v4 + 112);
    *(v4 + 112) = 0;

    *(*(a1 + 32) + 120) = 0;
  }
}

void __74__CDPDRemoteDeviceSecretValidator_approveFromAnotherDeviceWithCompletion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!a2)
  {
    v16 = _CDPLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __74__CDPDRemoteDeviceSecretValidator_approveFromAnotherDeviceWithCompletion___block_invoke_2_cold_1(v5, v16);
    }

    if (v5)
    {
      v20 = *MEMORY[0x277CCA7E8];
      v21[0] = v5;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    }

    else
    {
      v14 = 0;
    }

    v17 = *(a1 + 40);
    v18 = _CDPStateError();
    (*(v17 + 16))(v17, v18);

    goto LABEL_19;
  }

  v6 = [*(a1 + 32) isAttemptingRecovery];
  v7 = *(a1 + 32);
  if ((v6 & 1) != 0 || v7[120] != 1)
  {
    if ([v7 isAttemptingRecovery])
    {
      v14 = _CDPLogSystem();
      if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_DEBUG))
      {
        __74__CDPDRemoteDeviceSecretValidator_approveFromAnotherDeviceWithCompletion___block_invoke_2_cold_4();
      }
    }

    else
    {
      if (*(*(a1 + 32) + 120))
      {
        goto LABEL_20;
      }

      v14 = _CDPLogSystem();
      if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_DEBUG))
      {
        __74__CDPDRemoteDeviceSecretValidator_approveFromAnotherDeviceWithCompletion___block_invoke_2_cold_3();
      }
    }

    goto LABEL_19;
  }

  v7[120] = 0;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __74__CDPDRemoteDeviceSecretValidator_approveFromAnotherDeviceWithCompletion___block_invoke_2_cold_2();
  }

  v9 = *(a1 + 32);
  v10 = v9[14];
  if (v10)
  {
    (*(v10 + 16))(v9[14], 1, 0);
    v11 = *(a1 + 32);
    v12 = *(v11 + 112);
    *(v11 + 112) = 0;

    v9 = *(a1 + 32);
  }

  v13 = [v9 validSecretHandler];

  if (v13)
  {
    v14 = objc_alloc_init(CDPDRemoteSecretValidationResult);
    [(CDPDRemoteSecretValidationResult *)v14 setSecretType:4];
    v15 = [*(a1 + 32) validSecretHandler];
    (v15)[2](v15, v14, 0);

LABEL_19:
  }

LABEL_20:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)validateCustodianRecoveryInfo:(id)info withCompletion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v8 = [objc_alloc(MEMORY[0x277CE4698]) initWithMaxRetries:1];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__CDPDRemoteDeviceSecretValidator_validateCustodianRecoveryInfo_withCompletion___block_invoke;
  aBlock[3] = &unk_278E24DE0;
  objc_copyWeak(&v19, &location);
  v9 = infoCopy;
  v18 = v9;
  v10 = _Block_copy(aBlock);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__CDPDRemoteDeviceSecretValidator_validateCustodianRecoveryInfo_withCompletion___block_invoke_2;
  v13[3] = &unk_278E24E08;
  objc_copyWeak(&v16, &location);
  v11 = completionCopy;
  v15 = v11;
  v12 = v8;
  v14 = v12;
  [v12 scheduleTask:v10 shouldRetry:0 completionHandler:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __80__CDPDRemoteDeviceSecretValidator_validateCustodianRecoveryInfo_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _retriableValidateCustodianRecoveryInfo:*(a1 + 32) withCompletion:v3];
}

void __80__CDPDRemoteDeviceSecretValidator_validateCustodianRecoveryInfo_withCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412546;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Circle join using custodian recovery info result: %@, %@", &v19, 0x16u);
  }

  objc_opt_class();
  v9 = v5;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (WeakRetained)
  {
    v11 = [WeakRetained validSecretHandler];

    if (v11)
    {
      v12 = [v10 BOOLValue];
      v13 = _CDPLogSystem();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        if (v14)
        {
          LOWORD(v19) = 0;
          _os_log_impl(&dword_24510B000, v13, OS_LOG_TYPE_DEFAULT, "Joining to circle succeed", &v19, 2u);
        }

        v15 = objc_alloc_init(CDPDRemoteSecretValidationResult);
        [(CDPDRemoteSecretValidationResult *)v15 setSecretType:6];
        v16 = [WeakRetained validSecretHandler];
        (v16)[2](v16, v15, 0);
      }

      else
      {
        if (v14)
        {
          LOWORD(v19) = 0;
          _os_log_impl(&dword_24510B000, v13, OS_LOG_TYPE_DEFAULT, "Joining to circle failed", &v19, 2u);
        }

        v15 = [WeakRetained validSecretHandler];
        (v15->_secretType)(v15, 0, v6);
      }
    }

    else
    {
      v15 = _CDPLogSystem();
      if (os_log_type_enabled(&v15->super, OS_LOG_TYPE_DEBUG))
      {
        __80__CDPDRemoteDeviceSecretValidator_validateCustodianRecoveryInfo_withCompletion___block_invoke_2_cold_1();
      }
    }
  }

  else
  {
    v15 = _CDPLogSystem();
    if (os_log_type_enabled(&v15->super, OS_LOG_TYPE_DEBUG))
    {
      __80__CDPDRemoteDeviceSecretValidator_validateCustodianRecoveryInfo_withCompletion___block_invoke_2_cold_2();
    }
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))(v17, [v10 BOOLValue], v6);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_retriableValidateCustodianRecoveryInfo:(id)info withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = MEMORY[0x277CE44D8];
  infoCopy = info;
  context = [(CDPDDeviceSecretValidator *)self context];
  v10 = [v7 analyticsEventWithContext:context eventName:*MEMORY[0x277CFD8B8] category:*MEMORY[0x277CFD930]];

  _decoratedDelegate = [(CDPDRemoteDeviceSecretValidator *)self _decoratedDelegate];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __90__CDPDRemoteDeviceSecretValidator__retriableValidateCustodianRecoveryInfo_withCompletion___block_invoke;
  v14[3] = &unk_278E24AE8;
  v15 = v10;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = v10;
  [_decoratedDelegate remoteSecretValidator:self attemptCustodianRecoveryWithInfo:infoCopy completion:v14];
}

void __90__CDPDRemoteDeviceSecretValidator__retriableValidateCustodianRecoveryInfo_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:*MEMORY[0x277CFD6C0]];

  [*(a1 + 32) populateUnderlyingErrorsStartingWithRootError:v9];
  v6 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v6 sendEvent:*(a1 + 32)];

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    (*(v7 + 16))(v7, v8, v9);
  }
}

- (void)attemptToJoinCircleWithPiggybacking:(id)piggybacking withCompletion:(id)completion
{
  completionCopy = completion;
  piggybackingCopy = piggybacking;
  _decoratedDelegate = [(CDPDRemoteDeviceSecretValidator *)self _decoratedDelegate];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__CDPDRemoteDeviceSecretValidator_attemptToJoinCircleWithPiggybacking_withCompletion___block_invoke;
  v10[3] = &unk_278E24AE8;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [_decoratedDelegate remoteSecretValidator:self attemptCircleJoinWithPiggybackingContext:piggybackingCopy completion:v10];
}

void __86__CDPDRemoteDeviceSecretValidator_attemptToJoinCircleWithPiggybacking_withCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __86__CDPDRemoteDeviceSecretValidator_attemptToJoinCircleWithPiggybacking_withCompletion___block_invoke_cold_1();
    }

    v7 = [*(a1 + 32) validSecretHandler];

    if (v7)
    {
      v8 = objc_alloc_init(CDPDRemoteSecretValidationResult);
      [(CDPDRemoteSecretValidationResult *)v8 setSecretType:7];
      v9 = [*(a1 + 32) validSecretHandler];
      (v9)[2](v9, v8, 0);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (id)_decoratedDelegate
{
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(CDPDRemoteDeviceSecretValidator *)self _decoratedDelegate];
  }

  delegate = [(CDPDDeviceSecretValidator *)self delegate];
  v5 = [delegate conformsToProtocol:&unk_285825AE8];

  if (v5)
  {
    delegate2 = [(CDPDDeviceSecretValidator *)self delegate];
  }

  else
  {
    delegate2 = 0;
  }

  return delegate2;
}

- (void)cancelApproveFromAnotherDevice
{
  self->_isWaitingForRemoteApproval = 0;
  _decoratedDelegate = [(CDPDRemoteDeviceSecretValidator *)self _decoratedDelegate];
  [_decoratedDelegate cancelRemoteSecretValidatorApplicationToJoinCircle:self];

  requestToJoinCompletion = self->_requestToJoinCompletion;
  if (requestToJoinCompletion)
  {
    v5 = *(requestToJoinCompletion + 2);

    v5();
  }
}

- (void)resetAccountCDPStateWithEscapeOptionsOffered:(unint64_t)offered
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[CDPDRemoteDeviceSecretValidator resetAccountCDPStateWithEscapeOptionsOffered:]";
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "%s: was called", &v7, 0xCu);
  }

  [(CDPDRemoteDeviceSecretValidator *)self resetAccountCDPStateWithEscapeOptionsOffered:offered andSetSecret:0];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)resetAccountCDPStateWithEscapeOptionsOffered:(unint64_t)offered andSetSecret:(id)secret
{
  v17 = *MEMORY[0x277D85DE8];
  secretCopy = secret;
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[CDPDRemoteDeviceSecretValidator resetAccountCDPStateWithEscapeOptionsOffered:andSetSecret:]";
    _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "%s: was called", &v15, 0xCu);
  }

  validSecretHandler = [(CDPDDeviceSecretValidator *)self validSecretHandler];

  if (validSecretHandler)
  {
    v9 = objc_alloc_init(CDPDRemoteSecretValidationResult);
    [(CDPDRemoteSecretValidationResult *)v9 setUserDidReset:1];
    [(CDPDRemoteSecretValidationResult *)v9 setRequiredEscapeOffers:[(CDPDDeviceSecretValidator *)self supportedEscapeOfferMask]];
    [(CDPDRemoteSecretValidationResult *)v9 setEscapeOffersPresentedMask:offered];
    if (secretCopy)
    {
      v10 = objc_alloc(MEMORY[0x277CFD500]);
      validatedSecret = [secretCopy validatedSecret];
      v12 = [v10 initWithValidatedSecret:validatedSecret secretType:{objc_msgSend(secretCopy, "secretType")}];
      [(CDPDRemoteSecretValidationResult *)v9 setCachedSecretForReenrollment:v12];
    }

    validSecretHandler2 = [(CDPDDeviceSecretValidator *)self validSecretHandler];
    (validSecretHandler2)[2](validSecretHandler2, v9, 0);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)supportedEscapeOfferMaskCompletion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    (*(completion + 2))(completionCopy, [(CDPDDeviceSecretValidator *)self supportedEscapeOfferMask]);
  }
}

void __74__CDPDRemoteDeviceSecretValidator_approveFromAnotherDeviceWithCompletion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24510B000, a2, OS_LOG_TYPE_ERROR, "Failed to request circle join approval from another device - %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_decoratedDelegate
{
  v7 = *MEMORY[0x277D85DE8];
  delegate = [self delegate];
  v5 = 138412290;
  v6 = delegate;
  _os_log_debug_impl(&dword_24510B000, a2, OS_LOG_TYPE_DEBUG, "Fetching decorated delegate: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end