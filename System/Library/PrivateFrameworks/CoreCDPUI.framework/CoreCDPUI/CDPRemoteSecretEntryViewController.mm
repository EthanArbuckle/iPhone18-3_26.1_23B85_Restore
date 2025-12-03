@interface CDPRemoteSecretEntryViewController
- (BOOL)validatePIN:(id)n;
- (CDPRemoteSecretEntryViewController)initWithDevice:(id)device validator:(id)validator delegate:(id)delegate;
- (CDPRemoteSecretEntryViewController)initWithIsNumeric:(BOOL)numeric numericLength:(id)length validator:(id)validator delegate:(id)delegate;
- (CDPRemoteSecretEntryViewController)initWithValidator:(id)validator;
- (id)_passcodeEntryExplaination;
- (id)_passcodeEntryRequestForDevice;
- (void)_handleSecretValidationWithPasscode:(id)passcode;
- (void)didAcceptEnteredPIN:(id)n;
- (void)didCancelEnteringPIN;
- (void)didEnterValidRemoteSecret:(id)secret;
- (void)disableUserInteractionAndStartSpinner;
- (void)enableUserInteractionAndStopSpinner;
- (void)setPane:(id)pane;
- (void)showIncorrectRemoteSecretAlertForPasscode:(id)passcode withRecoveryError:(id)error completion:(id)completion;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CDPRemoteSecretEntryViewController

- (CDPRemoteSecretEntryViewController)initWithDevice:(id)device validator:(id)validator delegate:(id)delegate
{
  deviceCopy = device;
  delegateCopy = delegate;
  validatorCopy = validator;
  hasNumericSecret = [deviceCopy hasNumericSecret];
  numericSecretLength = [deviceCopy numericSecretLength];
  v14 = [(CDPRemoteSecretEntryViewController *)self initWithIsNumeric:hasNumericSecret numericLength:numericSecretLength validator:validatorCopy delegate:delegateCopy];

  if (v14)
  {
    objc_storeStrong(&v14->_remoteRecoveryDevice, device);
    v14->_remainingAttempts = [(CDPDevice *)v14->_remoteRecoveryDevice remainingAttempts];
  }

  return v14;
}

- (CDPRemoteSecretEntryViewController)initWithIsNumeric:(BOOL)numeric numericLength:(id)length validator:(id)validator delegate:(id)delegate
{
  lengthCopy = length;
  delegateCopy = delegate;
  v13 = [(CDPRemoteSecretEntryViewController *)self initWithValidator:validator];
  v14 = v13;
  if (v13)
  {
    *(&v13->_hasNumericSecret + 1) = numeric;
    objc_storeStrong(&v13->_numericSecretLength, length);
    v14->_remainingAttempts = 3;
    objc_storeWeak(&v14->_delegate, delegateCopy);
    [(DevicePINController *)v14 setPinDelegate:v14];
    if ([(CDPRemoteSecretEntryViewController *)v14 simplePIN])
    {
      [(DevicePINController *)v14 setPinLength:[(NSNumber *)v14->_numericSecretLength integerValue]];
    }

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v17 = userInterfaceIdiom != 1 && *(&v14->_hasNumericSecret + 1);
    [(DevicePINController *)v14 setNumericPIN:v17];
    WeakRetained = objc_loadWeakRetained(&v14->_delegate);
    performingAccountRecovery = [WeakRetained performingAccountRecovery];

    if (performingAccountRecovery)
    {
      v20 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_NEXT_BUTTON"];
      localizedString = [v20 localizedString];
      [(DevicePINController *)v14 setDoneButtonTitle:localizedString];
    }
  }

  return v14;
}

- (CDPRemoteSecretEntryViewController)initWithValidator:(id)validator
{
  validatorCopy = validator;
  v6 = [(CDPPassphraseEntryViewController *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_validator, validator);
  }

  return v7;
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = CDPRemoteSecretEntryViewController;
  [(DevicePINController *)&v9 viewWillAppear:appear];
  navigationController = [(CDPRemoteSecretEntryViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  firstObject = [viewControllers firstObject];

  if (firstObject == self)
  {
    navigationController2 = [(CDPRemoteSecretEntryViewController *)self navigationController];
    navigationBar = [navigationController2 navigationBar];
    [navigationBar _setBackgroundOpacity:0.0];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CDPRemoteSecretEntryViewController;
  [(DevicePINController *)&v4 viewDidDisappear:disappear];
  [(CDPRemoteSecretEntryViewController *)self enableUserInteractionAndStopSpinner];
}

- (void)setPane:(id)pane
{
  paneCopy = pane;
  v9.receiver = self;
  v9.super_class = CDPRemoteSecretEntryViewController;
  [(DevicePINController *)&v9 setPane:paneCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = paneCopy;
    [v5 setRemoteSecretType:0];
    [v5 setDevice:self->_remoteRecoveryDevice];
    escapeOffer = [(CDPRemoteSecretEntryViewController *)self escapeOffer];
    [escapeOffer setPresentingViewController:self];

    escapeOffer2 = [(CDPRemoteSecretEntryViewController *)self escapeOffer];
    [v5 setEscapeOffer:escapeOffer2];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [v5 setRemoteAccountRecovery:{objc_msgSend(WeakRetained, "performingAccountRecovery")}];
  }
}

- (id)_passcodeEntryRequestForDevice
{
  if ([(CDPDevice *)self->_remoteRecoveryDevice isCurrentDevice])
  {
    mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
    if ([mEMORY[0x277CFD4F8] hasLocalSecret])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      performingAccountRecovery = [WeakRetained performingAccountRecovery];

      if (performingAccountRecovery)
      {
        mEMORY[0x277CFD4F8]2 = [MEMORY[0x277CFD4F8] sharedInstance];
        deviceClass = [mEMORY[0x277CFD4F8]2 deviceClass];

        v8 = [MEMORY[0x277CFD508] builderForKey:@"ACCOUNT_RECOVERY_CURRENT_DEVICE_REMOTE_SECRET_INSTRUCTIONS_REBRAND"];
        modelClass = [v8 addSecretType:1];
        v10 = [modelClass addDeviceClass:deviceClass];
LABEL_9:
        v17 = v10;
        localizedString = [v10 localizedString];

        goto LABEL_10;
      }
    }

    else
    {
    }

    deviceClass = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_MESSAGE_SAME"];
    v8 = [deviceClass addSecretType:{-[CDPDevice localSecretType](self->_remoteRecoveryDevice, "localSecretType")}];
    modelClass = [(CDPDevice *)self->_remoteRecoveryDevice modelClass];
    v10 = [v8 addUnqualifiedDeviceClass:modelClass];
    goto LABEL_9;
  }

  if (self->_remoteRecoveryDevice)
  {
    v11 = MEMORY[0x277CCACA8];
    deviceClass = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_MESSAGE_OTHER"];
    v8 = [deviceClass addSecretType:{-[CDPDevice localSecretType](self->_remoteRecoveryDevice, "localSecretType")}];
    modelClass2 = [(CDPDevice *)self->_remoteRecoveryDevice modelClass];
    v13 = [v8 addUnqualifiedDeviceClass:modelClass2];
    localizedString2 = [v13 localizedString];
    localizedName = [(CDPDevice *)self->_remoteRecoveryDevice localizedName];
    localizedString = [v11 stringWithValidatedFormat:localizedString2 validFormatSpecifiers:@"%@" error:0, localizedName];

LABEL_10:
    goto LABEL_11;
  }

  localizedString = CDPLocalizedString();
LABEL_11:

  return localizedString;
}

- (id)_passcodeEntryExplaination
{
  v3 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_SUBTITLE_REBRAND"];
  v4 = [v3 addSecretType:{-[CDPDevice localSecretType](self->_remoteRecoveryDevice, "localSecretType")}];
  localizedString = [v4 localizedString];

  return localizedString;
}

- (void)didAcceptEnteredPIN:(id)n
{
  if (self->_validationState == 2)
  {
    self->_validationState = 0;
    [(CDPRemoteSecretEntryViewController *)self didEnterValidRemoteSecret:n];
  }
}

- (void)didCancelEnteringPIN
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained cancelledRemoteSecretEntry:self];
}

- (BOOL)validatePIN:(id)n
{
  v15 = *MEMORY[0x277D85DE8];
  nCopy = n;
  pane = [(PSDetailController *)self pane];
  [pane resignFirstResponder];

  validationState = self->_validationState;
  v7 = _CDPLogSystem();
  v8 = v7;
  if (validationState > 1)
  {
    if (validationState == 2)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [CDPRemoteSecretEntryViewController validatePIN:];
      }

      goto LABEL_18;
    }

    if (validationState != 3)
    {
      goto LABEL_11;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [CDPRemoteSecretEntryViewController validatePIN:];
    }

    v9 = 0;
    self->_validationState = 0;
  }

  else
  {
    if (validationState)
    {
      if (validationState == 1)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          [CDPRemoteSecretEntryViewController validatePIN:];
        }

LABEL_18:

        v9 = 1;
        goto LABEL_19;
      }

LABEL_11:
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [CDPRemoteSecretEntryViewController validatePIN:];
      }

      goto LABEL_18;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      validator = self->_validator;
      v13 = 138412290;
      v14 = validator;
      _os_log_impl(&dword_2451DB000, v8, OS_LOG_TYPE_DEFAULT, "ValidationStateNone - Requesting validation using %@", &v13, 0xCu);
    }

    v9 = 1;
    self->_validationState = 1;
    [(CDPRemoteSecretEntryViewController *)self _handleSecretValidationWithPasscode:nCopy];
  }

LABEL_19:
  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [CDPRemoteSecretEntryViewController validatePIN:];
  }

  return v9;
}

- (void)didEnterValidRemoteSecret:(id)secret
{
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [CDPRemoteSecretEntryViewController didEnterValidRemoteSecret:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteSecretEntry:self didAcceptValidRemoteSecretForDevice:self->_remoteRecoveryDevice];
}

- (void)_handleSecretValidationWithPasscode:(id)passcode
{
  v11[1] = *MEMORY[0x277D85DE8];
  passcodeCopy = passcode;
  [(CDPRemoteSecretEntryViewController *)self disableUserInteractionAndStartSpinner];
  validator = self->_validator;
  remoteRecoveryDevice = self->_remoteRecoveryDevice;
  if (remoteRecoveryDevice)
  {
    v11[0] = self->_remoteRecoveryDevice;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  }

  else
  {
    v7 = 0;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__CDPRemoteSecretEntryViewController__handleSecretValidationWithPasscode___block_invoke;
  v9[3] = &unk_278E2B870;
  v9[4] = self;
  v10 = passcodeCopy;
  v8 = passcodeCopy;
  [(CDPRemoteDeviceSecretValidator *)validator validateSecret:v8 devices:v7 type:0 withCompletion:v9];
  if (remoteRecoveryDevice)
  {
  }
}

void __74__CDPRemoteSecretEntryViewController__handleSecretValidationWithPasscode___block_invoke(uint64_t a1, int a2, int a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 32);
  if (a2)
  {
    v9 = *(v8 + 1272);
    *(v8 + 1272) = 0;

    *(*(a1 + 32) + 1288) = 2;
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2451DB000, v10, OS_LOG_TYPE_DEFAULT, "Validator provided response, moved to ValidationStateValid", buf, 2u);
    }

    [*(a1 + 32) pinEntered:*(a1 + 40)];
  }

  else
  {
    --*(v8 + 1264);
    [*(*(a1 + 32) + 1256) setRemainingAttempts:{objc_msgSend(*(*(a1 + 32) + 1256), "remainingAttempts") - 1}];
    if (a3)
    {
      [*(a1 + 32) enableUserInteractionAndStopSpinner];
      v11 = _CDPLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2451DB000, v11, OS_LOG_TYPE_DEFAULT, "Validator provided response, moved to ValidationStateInvalid", buf, 2u);
      }

      *(*(a1 + 32) + 1288) = 3;
      v13 = *(a1 + 32);
      v12 = *(a1 + 40);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __74__CDPRemoteSecretEntryViewController__handleSecretValidationWithPasscode___block_invoke_52;
      v23[3] = &unk_278E2B2D0;
      v23[4] = v13;
      v24 = v12;
      [v13 showIncorrectRemoteSecretAlertForPasscode:v24 withRecoveryError:v7 completion:v23];
      v14 = v24;
    }

    else
    {
      v15 = _CDPLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __74__CDPRemoteSecretEntryViewController__handleSecretValidationWithPasscode___block_invoke_cold_1();
      }

      v16 = *(a1 + 32);
      v17 = *(v16 + 1272);
      *(v16 + 1272) = 0;

      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __74__CDPRemoteSecretEntryViewController__handleSecretValidationWithPasscode___block_invoke_54;
      v20[3] = &unk_278E2B2D0;
      v18 = v7;
      v19 = *(a1 + 32);
      v21 = v18;
      v22 = v19;
      dispatch_async(MEMORY[0x277D85CD0], v20);
      v14 = v21;
    }
  }
}

void __74__CDPRemoteSecretEntryViewController__handleSecretValidationWithPasscode___block_invoke_52(uint64_t a1)
{
  [*(a1 + 32) pinEntered:*(a1 + 40)];
  v2 = [*(a1 + 32) pane];
  [v2 becomeFirstResponder];
}

void __74__CDPRemoteSecretEntryViewController__handleSecretValidationWithPasscode___block_invoke_54(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) domain];
  v4 = [v3 isEqualToString:*MEMORY[0x277CFD418]];

  if (!v4)
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __74__CDPRemoteSecretEntryViewController__handleSecretValidationWithPasscode___block_invoke_54_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 1280));
    [WeakRetained finishValidation:*(a1 + 40) withError:*(a1 + 32)];
    goto LABEL_11;
  }

  v5 = [*v2 code];
  if (v5 > -5210)
  {
    if (v5 <= -5207)
    {
      if (v5 == -5209)
      {
        [*(a1 + 40) enableUserInteractionAndStopSpinner];
        v17 = objc_loadWeakRetained((*(a1 + 40) + 1280));
        [v17 performRemoteApproval:*(a1 + 40)];
        goto LABEL_39;
      }

      if (v5 == -5208)
      {
        v17 = objc_loadWeakRetained((*(a1 + 40) + 1280));
        [v17 performAccountReset:*(a1 + 40)];
        goto LABEL_39;
      }
    }

    else
    {
      switch(v5)
      {
        case -5206:
          [*(a1 + 40) enableUserInteractionAndStopSpinner];
          v17 = objc_loadWeakRetained((*(a1 + 40) + 1280));
          [v17 remoteSecretEntry:*(a1 + 40) depletedRemainingAttemptsForDevice:*(*(a1 + 40) + 1256)];
          goto LABEL_39;
        case -5203:
          [*(a1 + 40) enableUserInteractionAndStopSpinner];
          v17 = objc_loadWeakRetained((*(a1 + 40) + 1280));
          [v17 exceededMaximumAttemptsForRemoteSecretEntry:*(a1 + 40)];
          goto LABEL_39;
        case -5200:
          v17 = objc_loadWeakRetained((*(a1 + 40) + 1280));
          [v17 finishValidation:*(a1 + 40) withError:*(a1 + 32)];
LABEL_39:

          return;
      }
    }

    goto LABEL_42;
  }

  if (v5 > -5219)
  {
    if (v5 == -5218)
    {
      [*(a1 + 40) enableUserInteractionAndStopSpinner];
      v13 = objc_loadWeakRetained((*(a1 + 40) + 1280));

      if (!v13)
      {
        v14 = _CDPLogSystem();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          __74__CDPRemoteSecretEntryViewController__handleSecretValidationWithPasscode___block_invoke_54_cold_4();
        }
      }

      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 1280));
      [WeakRetained performCustodianRecovery:*(a1 + 40)];
      goto LABEL_11;
    }

    if (v5 == -5212)
    {
      [*(a1 + 40) enableUserInteractionAndStopSpinner];
      v17 = objc_loadWeakRetained((*(a1 + 40) + 1280));
      [v17 performRecoveryKeyRecovery:*(a1 + 40)];
      goto LABEL_39;
    }
  }

  else
  {
    if (v5 == -5223)
    {
      [*(a1 + 40) enableUserInteractionAndStopSpinner];
      v10 = objc_loadWeakRetained((*(a1 + 40) + 1280));

      if (!v10)
      {
        v11 = _CDPLogSystem();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          __74__CDPRemoteSecretEntryViewController__handleSecretValidationWithPasscode___block_invoke_54_cold_2();
        }
      }

      v12 = objc_loadWeakRetained((*(a1 + 40) + 1280));
      [v12 performPiggybackingRecovery:*(a1 + 40)];

      goto LABEL_42;
    }

    if (v5 == -5221)
    {
      [*(a1 + 40) enableUserInteractionAndStopSpinner];
      v8 = objc_loadWeakRetained((*(a1 + 40) + 1280));

      if (!v8)
      {
        v9 = _CDPLogSystem();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          __74__CDPRemoteSecretEntryViewController__handleSecretValidationWithPasscode___block_invoke_54_cold_3();
        }
      }

      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 1280));
      [WeakRetained presentDeviceSelection:*(a1 + 40)];
LABEL_11:

      return;
    }
  }

LABEL_42:
  v15 = objc_loadWeakRetained((*(a1 + 40) + 1280));
  [v15 dismissRecoveryFlow:*(a1 + 40) completion:0];

  v16 = _CDPLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    __74__CDPRemoteSecretEntryViewController__handleSecretValidationWithPasscode___block_invoke_54_cold_5();
  }
}

- (void)showIncorrectRemoteSecretAlertForPasscode:(id)passcode withRecoveryError:(id)error completion:(id)completion
{
  passcodeCopy = passcode;
  completionCopy = completion;
  if (self->_remoteRecoveryDevice)
  {
    userInfo = [error userInfo];
    allValues = [userInfo allValues];
    firstObject = [allValues firstObject];

    v46 = passcodeCopy;
    if (![firstObject cdp_isCDPErrorWithCode:-5205])
    {
      v17 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_RECOVERY_ERROR_TITLE"];
      localizedString = [v17 localizedString];

      v18 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_RECOVERY_ERROR_MESSAGE"];
      v19 = [v18 addSecretType:{-[CDPDevice localSecretType](self->_remoteRecoveryDevice, "localSecretType")}];
      modelClass = [(CDPDevice *)self->_remoteRecoveryDevice modelClass];
      v21 = [v19 addDeviceClass:modelClass];
      localizedString2 = [v21 localizedString];

LABEL_16:
      passcodeCopy = v46;
      goto LABEL_17;
    }

    mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
    deviceClass = [mEMORY[0x277CFD4F8] deviceClass];

    modelClass2 = [(CDPDevice *)self->_remoteRecoveryDevice modelClass];
    if ([modelClass2 length])
    {
      modelClass3 = [(CDPDevice *)self->_remoteRecoveryDevice modelClass];
    }

    else
    {
      modelClass3 = 0;
    }

    localSecretType = [(CDPDevice *)self->_remoteRecoveryDevice localSecretType];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (([WeakRetained performingAccountRecovery] & 1) == 0)
    {
      mEMORY[0x277CFD4F8]2 = [MEMORY[0x277CFD4F8] sharedInstance];
      if ([mEMORY[0x277CFD4F8]2 hasLocalSecret])
      {
        mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
        v49 = 0;
        v26 = [mEMORY[0x277D262A0] unlockDeviceWithPasscode:passcodeCopy outError:&v49];
        v43 = v49;

        if (v26)
        {
          v27 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_INCORRECT_TITLE_OTHER_DEVICE"];
          v28 = [v27 addSecretType:localSecretType];
          v29 = [v28 addDeviceClass:modelClass3];
          localizedString = [v29 localizedString];

          v30 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_INCORRECT_MESSAGE_OTHER_DEVICE"];
          v31 = [v30 addSecretType:localSecretType];
          v32 = [v31 addDeviceClass:modelClass3];
          v42 = [v32 addSecretType:localSecretType];
          v33 = [v42 addDeviceClass:deviceClass];
          localizedString2 = [v33 localizedString];

          v34 = modelClass3;
LABEL_15:

          goto LABEL_16;
        }

LABEL_14:
        v35 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_INCORRECT_TITLE"];
        v36 = [v35 addSecretType:localSecretType];
        localizedString = [v36 localizedString];

        v30 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_INCORRECT_MESSAGE"];
        v34 = modelClass3;
        v31 = [v30 addDeviceClass:modelClass3];
        v32 = [v31 addSecretType:localSecretType];
        localizedString2 = [v32 localizedString];
        goto LABEL_15;
      }
    }

    v43 = 0;
    goto LABEL_14;
  }

  localizedString = CDPLocalizedString();
  localizedString2 = CDPLocalizedString();
LABEL_17:
  v37 = MEMORY[0x277D750F8];
  v38 = CDPLocalizedString();
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __109__CDPRemoteSecretEntryViewController_showIncorrectRemoteSecretAlertForPasscode_withRecoveryError_completion___block_invoke;
  v47[3] = &unk_278E2BAC8;
  v47[4] = self;
  v48 = completionCopy;
  v39 = completionCopy;
  v40 = [v37 actionWithTitle:v38 style:0 handler:v47];

  v41 = [MEMORY[0x277D75110] alertControllerWithTitle:localizedString message:localizedString2 preferredStyle:1];
  [v41 addAction:v40];
  [(CDPRemoteSecretEntryViewController *)self presentViewController:v41 animated:1 completion:0];
}

uint64_t __109__CDPRemoteSecretEntryViewController_showIncorrectRemoteSecretAlertForPasscode_withRecoveryError_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 setLastEntry:0];
}

- (void)disableUserInteractionAndStartSpinner
{
  mEMORY[0x277D3FA90] = [MEMORY[0x277D3FA90] sharedSpinnerManager];
  navigationItem = [(CDPRemoteSecretEntryViewController *)self navigationItem];
  [mEMORY[0x277D3FA90] startAnimatingInNavItem:navigationItem forIdentifier:@"remoteSecretValidator" hideBackButton:1];

  view = [(CDPRemoteSecretEntryViewController *)self view];
  [view setUserInteractionEnabled:0];
}

- (void)enableUserInteractionAndStopSpinner
{
  view = [(CDPRemoteSecretEntryViewController *)self view];
  [view setUserInteractionEnabled:1];

  mEMORY[0x277D3FA90] = [MEMORY[0x277D3FA90] sharedSpinnerManager];
  [mEMORY[0x277D3FA90] stopAnimatingForIdentifier:@"remoteSecretValidator"];
}

- (void)validatePIN:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)validatePIN:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)validatePIN:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)didEnterValidRemoteSecret:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __74__CDPRemoteSecretEntryViewController__handleSecretValidationWithPasscode___block_invoke_54_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __74__CDPRemoteSecretEntryViewController__handleSecretValidationWithPasscode___block_invoke_54_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __74__CDPRemoteSecretEntryViewController__handleSecretValidationWithPasscode___block_invoke_54_cold_3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __74__CDPRemoteSecretEntryViewController__handleSecretValidationWithPasscode___block_invoke_54_cold_4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end