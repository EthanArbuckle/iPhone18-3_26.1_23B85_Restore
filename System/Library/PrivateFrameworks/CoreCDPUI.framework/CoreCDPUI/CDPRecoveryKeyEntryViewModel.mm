@interface CDPRecoveryKeyEntryViewModel
- (BOOL)isDataRecoveryFlow;
- (CDPRecoveryKeyEntryViewModel)initWithContext:(id)context validator:(id)validator;
- (CDPRecoveryKeyEntryViewModel)initWithContext:(id)context validator:(id)validator mode:(int)mode;
- (id)footerButtonTitle;
- (id)footerLabelText;
- (id)headerSubtitle;
- (id)headerTitle;
- (id)placeholderText;
- (void)handleCancel;
- (void)handleForgotRecoveryKeyWithCDPStateError:(int64_t)error;
- (void)handleNoRecoveryKeyWithCDPStateError:(int64_t)error;
- (void)processCollectedRecoveryKey:(id)key completion:(id)completion;
@end

@implementation CDPRecoveryKeyEntryViewModel

- (CDPRecoveryKeyEntryViewModel)initWithContext:(id)context validator:(id)validator mode:(int)mode
{
  contextCopy = context;
  validatorCopy = validator;
  v11 = [(CDPRecoveryKeyEntryViewModel *)self init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_context, context);
    v12->_mode = mode;
    objc_storeStrong(&v12->_validator, validator);
    if ([(CDPRecoveryKeyEntryViewModel *)v12 supportsRKRecovery])
    {
      v12->_shouldSuppressCancelButton = 0;
      p_isFooterForVerifyFlow = &v12->_isFooterForVerifyFlow;
    }

    else
    {
      p_isFooterForVerifyFlow = &v12->_shouldSuppressCancelButton;
    }

    *p_isFooterForVerifyFlow = 1;
  }

  return v12;
}

- (CDPRecoveryKeyEntryViewModel)initWithContext:(id)context validator:(id)validator
{
  contextCopy = context;
  validatorCopy = validator;
  v9 = [(CDPRecoveryKeyEntryViewModel *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    if ([(CDPContext *)v10->_context type]== 8)
    {
      v10->_shouldSuppressCancelButton = 0;
      v11 = 1;
    }

    else
    {
      if ([(CDPContext *)v10->_context type]== 9)
      {
        v10->_shouldSuppressCancelButton = 0;
        v11 = 1;
        v12 = 34;
LABEL_8:
        *(&v10->super.isa + v12) = v11;
        objc_storeStrong(&v10->_secretValidator, validator);
        v10->_mode = 2;
        goto LABEL_9;
      }

      v11 = 0;
      v10->_shouldSuppressCancelButton = 1;
    }

    v12 = 33;
    goto LABEL_8;
  }

LABEL_9:

  return v10;
}

- (id)footerButtonTitle
{
  v3 = MEMORY[0x277CBEB38];
  _systemInteractionTintColor = [MEMORY[0x277D75348] _systemInteractionTintColor];
  v5 = *MEMORY[0x277D740C0];
  v6 = MEMORY[0x277D74300];
  v7 = *MEMORY[0x277D76918];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  traitCollection = [mainScreen traitCollection];
  v10 = [v6 preferredFontForTextStyle:v7 compatibleWithTraitCollection:traitCollection];
  v11 = [v3 dictionaryWithObjectsAndKeys:{_systemInteractionTintColor, v5, v10, *MEMORY[0x277D740A8], 0}];

  mode = self->_mode;
  if (mode == 2)
  {
    if ([(CDPContext *)self->_context type]== 8)
    {
      v13 = objc_alloc(MEMORY[0x277CCA898]);
      v14 = MEMORY[0x277CFD508];
      v15 = @"RECOVERY_KEY_FORGOT_BUTTON_TITLE";
      goto LABEL_13;
    }

    if ([(CDPContext *)self->_context type]!= 9)
    {
      if (![(CDPRecoveryKeyEntryViewModel *)self supportsRKRecovery]&& ![(CDPRecoveryKeyEntryViewModel *)self isDataRecoveryFlow])
      {
        goto LABEL_14;
      }

      v16 = _CDPLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2451DB000, v16, OS_LOG_TYPE_DEFAULT, "CDPContext supports RK recovery. Adding Don't Have Recovery Key? button in the recovery flow", buf, 2u);
      }
    }

    v13 = objc_alloc(MEMORY[0x277CCA898]);
    v14 = MEMORY[0x277CFD508];
    v15 = @"DONT_HAVE_RECOVERY_KEY";
    goto LABEL_13;
  }

  if (mode == 1)
  {
    v13 = objc_alloc(MEMORY[0x277CCA898]);
    v14 = MEMORY[0x277CFD508];
    v15 = @"RECOVERY_KEY_CONTINUE_BUTTON_TITLE";
LABEL_13:
    v17 = [v14 builderForKey:v15];
    localizedString = [v17 localizedString];
    v19 = [v13 initWithString:localizedString attributes:v11];

    goto LABEL_15;
  }

LABEL_14:
  v19 = 0;
LABEL_15:

  return v19;
}

- (id)footerLabelText
{
  if (self->_mode == 1)
  {
    if ([(CDPContext *)self->_context type]== 4)
    {
      v2 = @"CDP_VERIFY_RECOVERY_KEY_FOOTER_LABEL_REBRAND";
    }

    else
    {
      v2 = @"RECOVERY_KEY_FOOTER_LABEL_ENABLE_FLOW_REBRAND";
    }

    v3 = [MEMORY[0x277CFD508] builderForKey:v2];
    localizedString = [v3 localizedString];
  }

  else
  {
    localizedString = 0;
  }

  return localizedString;
}

- (id)headerTitle
{
  if ([(CDPContext *)self->_context type]== 5 || [(CDPContext *)self->_context type]== 4 || [(CDPContext *)self->_context type]== 8 || [(CDPContext *)self->_context type]== 9)
  {
    mode = [(CDPRecoveryKeyEntryViewModel *)self mode];
    v4 = MEMORY[0x277CFD508];
    if (mode == 1)
    {
      v5 = @"RECOVERY_KEY_TITLE";
    }

    else
    {
      v5 = @"RECOVERY_KEY_TITLE_VERIFY";
    }
  }

  else
  {
    v4 = MEMORY[0x277CFD508];
    v5 = @"RECOVERY_KEY_TITLE_VERIFY_SIGNIN";
  }

  v6 = [v4 builderForKey:v5];
  localizedString = [v6 localizedString];

  return localizedString;
}

- (id)headerSubtitle
{
  mode = [(CDPRecoveryKeyEntryViewModel *)self mode];
  type = [(CDPContext *)self->_context type];
  v5 = type;
  if (mode == 1)
  {
    v6 = MEMORY[0x277CFD508];
    if (v5 == 4)
    {
      v7 = @"CDP_VERIFY_RECOVERY_KEY_HEADER_SUBTITLE";
    }

    else
    {
      v7 = @"RECOVERY_KEY_SUBTITLE_ENABLE_FLOW";
    }
  }

  else if (type == 4)
  {
    v6 = MEMORY[0x277CFD508];
    v7 = @"RECOVERY_KEY_SUBTITLE_VERIFY_REGEN_FLOW";
  }

  else
  {
    type2 = [(CDPContext *)self->_context type];
    v6 = MEMORY[0x277CFD508];
    if (type2 == 5)
    {
      v7 = @"RECOVERY_KEY_SUBTITLE_VERIFY_ENABLE_FLOW";
    }

    else
    {
      v7 = @"RECOVERY_KEY_SUBTITLE_VERIFY_JOIN_FLOW";
    }
  }

  v9 = [v6 builderForKey:v7];
  localizedString = [v9 localizedString];

  return localizedString;
}

- (id)placeholderText
{
  v2 = [MEMORY[0x277CFD508] builderForKey:@"RECOVERY_KEY_PLACEHOLDER"];
  localizedString = [v2 localizedString];

  return localizedString;
}

- (void)processCollectedRecoveryKey:(id)key completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  completionCopy = completion;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "[CDPRecoveryKeyEntryViewModel processCollectedRecoveryKey:completion:]";
    v19 = 1024;
    v20 = 132;
    _os_log_impl(&dword_2451DB000, v8, OS_LOG_TYPE_DEFAULT, "%s (%d) called", buf, 0x12u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__CDPRecoveryKeyEntryViewModel_processCollectedRecoveryKey_completion___block_invoke;
  aBlock[3] = &unk_278E2B2A8;
  aBlock[4] = self;
  v9 = completionCopy;
  v16 = v9;
  v10 = _Block_copy(aBlock);
  v11 = v10;
  secretValidator = self->_secretValidator;
  if (secretValidator)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __71__CDPRecoveryKeyEntryViewModel_processCollectedRecoveryKey_completion___block_invoke_70;
    v13[3] = &unk_278E2BAA0;
    v14 = v10;
    [(CDPRemoteDeviceSecretValidatorProtocol *)secretValidator validateRecoveryKey:keyCopy withCompletion:v13];
  }

  else
  {
    [(CDPRecoveryKeyValidator *)self->_validator confirmRecoveryKey:keyCopy completion:v10];
  }
}

void __71__CDPRecoveryKeyEntryViewModel_processCollectedRecoveryKey_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = [*(a1 + 32) completionHandler];
    v11 = _Block_copy(v10);
    v12 = 136315906;
    v13 = "[CDPRecoveryKeyEntryViewModel processCollectedRecoveryKey:completion:]_block_invoke";
    v14 = 1024;
    v15 = a2;
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v11;
    _os_log_debug_impl(&dword_2451DB000, v6, OS_LOG_TYPE_DEBUG, "%s: RK is Valid=%{BOOL}d, validationError=%@, completionHandler=%@", &v12, 0x26u);
  }

  if (a2)
  {
    v7 = [*(a1 + 32) completionHandler];

    if (v7)
    {
      v8 = [*(a1 + 32) completionHandler];
      v8[2](v8, 1, 0);
    }

    v9 = *(*(a1 + 40) + 16);
  }

  else
  {
    v9 = *(*(a1 + 40) + 16);
  }

  v9();
}

- (void)handleCancel
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[CDPRecoveryKeyEntryViewModel mode](self, "mode")}];
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_2451DB000, v3, OS_LOG_TYPE_DEFAULT, "Cancelling the recovery key flow in mode: %@", &v10, 0xCu);
  }

  completionHandler = [(CDPRecoveryKeyEntryViewModel *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(CDPRecoveryKeyEntryViewModel *)self completionHandler];
    v7 = _CDPStateError();
    (completionHandler2)[2](completionHandler2, 0, v7);
  }

  secretValidator = self->_secretValidator;
  if (secretValidator)
  {
    v9 = _CDPStateError();
    [(CDPRemoteDeviceSecretValidatorProtocol *)secretValidator cancelValidationWithError:v9];
  }
}

- (void)handleForgotRecoveryKeyWithCDPStateError:(int64_t)error
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[CDPRecoveryKeyEntryViewModel mode](self, "mode")}];
    v10 = 138412546;
    v11 = v6;
    v12 = 2048;
    errorCopy = error;
    _os_log_impl(&dword_2451DB000, v5, OS_LOG_TYPE_DEFAULT, "Forgot Recovery key tapped in mode: %@, error: %ld", &v10, 0x16u);
  }

  completionHandler = [(CDPRecoveryKeyEntryViewModel *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(CDPRecoveryKeyEntryViewModel *)self completionHandler];
    v9 = _CDPStateError();
    (completionHandler2)[2](completionHandler2, 0, v9);
  }
}

- (void)handleNoRecoveryKeyWithCDPStateError:(int64_t)error
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109376;
    v9[1] = [(CDPRecoveryKeyEntryViewModel *)self mode];
    v10 = 2048;
    errorCopy = error;
    _os_log_impl(&dword_2451DB000, v5, OS_LOG_TYPE_DEFAULT, "Don't Have Recovery Key? was tapped in account recovery flow. Mode: %d, error: %ld", v9, 0x12u);
  }

  completionHandler = [(CDPRecoveryKeyEntryViewModel *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(CDPRecoveryKeyEntryViewModel *)self completionHandler];
    v8 = _CDPStateError();
    (completionHandler2)[2](completionHandler2, 0, v8);
  }
}

- (BOOL)isDataRecoveryFlow
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    type = [(CDPContext *)self->_context type];
    v6 = 134217984;
    v7 = type;
    _os_log_impl(&dword_2451DB000, v3, OS_LOG_TYPE_DEFAULT, "cdpContextType = %ld", &v6, 0xCu);
  }

  if ([MEMORY[0x277CFD4A8] isSubsetOfContextTypeSignIn:{-[CDPContext type](self->_context, "type")}])
  {
    return 1;
  }

  else
  {
    return [MEMORY[0x277CFD4A8] isSubsetOfContextTypeRepair:{-[CDPContext type](self->_context, "type")}];
  }
}

@end