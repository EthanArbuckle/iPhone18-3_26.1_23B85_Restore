@interface CDPRemoteSecretEntryViewController
- (BOOL)validatePIN:(id)a3;
- (CDPRemoteSecretEntryViewController)initWithDevice:(id)a3 validator:(id)a4 delegate:(id)a5;
- (CDPRemoteSecretEntryViewController)initWithIsNumeric:(BOOL)a3 numericLength:(id)a4 validator:(id)a5 delegate:(id)a6;
- (CDPRemoteSecretEntryViewController)initWithValidator:(id)a3;
- (id)_passcodeEntryExplaination;
- (id)_passcodeEntryRequestForDevice;
- (void)_handleSecretValidationWithPasscode:(id)a3;
- (void)didAcceptEnteredPIN:(id)a3;
- (void)didCancelEnteringPIN;
- (void)didEnterValidRemoteSecret:(id)a3;
- (void)disableUserInteractionAndStartSpinner;
- (void)enableUserInteractionAndStopSpinner;
- (void)setPane:(id)a3;
- (void)showIncorrectRemoteSecretAlertForPasscode:(id)a3 withRecoveryError:(id)a4 completion:(id)a5;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CDPRemoteSecretEntryViewController

- (CDPRemoteSecretEntryViewController)initWithDevice:(id)a3 validator:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = a4;
  v12 = [v9 hasNumericSecret];
  v13 = [v9 numericSecretLength];
  v14 = [(CDPRemoteSecretEntryViewController *)self initWithIsNumeric:v12 numericLength:v13 validator:v11 delegate:v10];

  if (v14)
  {
    objc_storeStrong(&v14->_remoteRecoveryDevice, a3);
    v14->_remainingAttempts = [(CDPDevice *)v14->_remoteRecoveryDevice remainingAttempts];
  }

  return v14;
}

- (CDPRemoteSecretEntryViewController)initWithIsNumeric:(BOOL)a3 numericLength:(id)a4 validator:(id)a5 delegate:(id)a6
{
  v11 = a4;
  v12 = a6;
  v13 = [(CDPRemoteSecretEntryViewController *)self initWithValidator:a5];
  v14 = v13;
  if (v13)
  {
    *(&v13->_hasNumericSecret + 1) = a3;
    objc_storeStrong(&v13->_numericSecretLength, a4);
    v14->_remainingAttempts = 3;
    objc_storeWeak(&v14->_delegate, v12);
    [(DevicePINController *)v14 setPinDelegate:v14];
    if ([(CDPRemoteSecretEntryViewController *)v14 simplePIN])
    {
      [(DevicePINController *)v14 setPinLength:[(NSNumber *)v14->_numericSecretLength integerValue]];
    }

    v15 = [MEMORY[0x277D75418] currentDevice];
    v16 = [v15 userInterfaceIdiom];

    v17 = v16 != 1 && *(&v14->_hasNumericSecret + 1);
    [(DevicePINController *)v14 setNumericPIN:v17];
    WeakRetained = objc_loadWeakRetained(&v14->_delegate);
    v19 = [WeakRetained performingAccountRecovery];

    if (v19)
    {
      v20 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_NEXT_BUTTON"];
      v21 = [v20 localizedString];
      [(DevicePINController *)v14 setDoneButtonTitle:v21];
    }
  }

  return v14;
}

- (CDPRemoteSecretEntryViewController)initWithValidator:(id)a3
{
  v5 = a3;
  v6 = [(CDPPassphraseEntryViewController *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_validator, a3);
  }

  return v7;
}

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = CDPRemoteSecretEntryViewController;
  [(DevicePINController *)&v9 viewWillAppear:a3];
  v4 = [(CDPRemoteSecretEntryViewController *)self navigationController];
  v5 = [v4 viewControllers];
  v6 = [v5 firstObject];

  if (v6 == self)
  {
    v7 = [(CDPRemoteSecretEntryViewController *)self navigationController];
    v8 = [v7 navigationBar];
    [v8 _setBackgroundOpacity:0.0];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CDPRemoteSecretEntryViewController;
  [(DevicePINController *)&v4 viewDidDisappear:a3];
  [(CDPRemoteSecretEntryViewController *)self enableUserInteractionAndStopSpinner];
}

- (void)setPane:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CDPRemoteSecretEntryViewController;
  [(DevicePINController *)&v9 setPane:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    [v5 setRemoteSecretType:0];
    [v5 setDevice:self->_remoteRecoveryDevice];
    v6 = [(CDPRemoteSecretEntryViewController *)self escapeOffer];
    [v6 setPresentingViewController:self];

    v7 = [(CDPRemoteSecretEntryViewController *)self escapeOffer];
    [v5 setEscapeOffer:v7];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [v5 setRemoteAccountRecovery:{objc_msgSend(WeakRetained, "performingAccountRecovery")}];
  }
}

- (id)_passcodeEntryRequestForDevice
{
  if ([(CDPDevice *)self->_remoteRecoveryDevice isCurrentDevice])
  {
    v3 = [MEMORY[0x277CFD4F8] sharedInstance];
    if ([v3 hasLocalSecret])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v5 = [WeakRetained performingAccountRecovery];

      if (v5)
      {
        v6 = [MEMORY[0x277CFD4F8] sharedInstance];
        v7 = [v6 deviceClass];

        v8 = [MEMORY[0x277CFD508] builderForKey:@"ACCOUNT_RECOVERY_CURRENT_DEVICE_REMOTE_SECRET_INSTRUCTIONS_REBRAND"];
        v9 = [v8 addSecretType:1];
        v10 = [v9 addDeviceClass:v7];
LABEL_9:
        v17 = v10;
        v16 = [v10 localizedString];

        goto LABEL_10;
      }
    }

    else
    {
    }

    v7 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_MESSAGE_SAME"];
    v8 = [v7 addSecretType:{-[CDPDevice localSecretType](self->_remoteRecoveryDevice, "localSecretType")}];
    v9 = [(CDPDevice *)self->_remoteRecoveryDevice modelClass];
    v10 = [v8 addUnqualifiedDeviceClass:v9];
    goto LABEL_9;
  }

  if (self->_remoteRecoveryDevice)
  {
    v11 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_MESSAGE_OTHER"];
    v8 = [v7 addSecretType:{-[CDPDevice localSecretType](self->_remoteRecoveryDevice, "localSecretType")}];
    v12 = [(CDPDevice *)self->_remoteRecoveryDevice modelClass];
    v13 = [v8 addUnqualifiedDeviceClass:v12];
    v14 = [v13 localizedString];
    v15 = [(CDPDevice *)self->_remoteRecoveryDevice localizedName];
    v16 = [v11 stringWithValidatedFormat:v14 validFormatSpecifiers:@"%@" error:0, v15];

LABEL_10:
    goto LABEL_11;
  }

  v16 = CDPLocalizedString();
LABEL_11:

  return v16;
}

- (id)_passcodeEntryExplaination
{
  v3 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_SUBTITLE_REBRAND"];
  v4 = [v3 addSecretType:{-[CDPDevice localSecretType](self->_remoteRecoveryDevice, "localSecretType")}];
  v5 = [v4 localizedString];

  return v5;
}

- (void)didAcceptEnteredPIN:(id)a3
{
  if (self->_validationState == 2)
  {
    self->_validationState = 0;
    [(CDPRemoteSecretEntryViewController *)self didEnterValidRemoteSecret:a3];
  }
}

- (void)didCancelEnteringPIN
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained cancelledRemoteSecretEntry:self];
}

- (BOOL)validatePIN:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PSDetailController *)self pane];
  [v5 resignFirstResponder];

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
    [(CDPRemoteSecretEntryViewController *)self _handleSecretValidationWithPasscode:v4];
  }

LABEL_19:
  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [CDPRemoteSecretEntryViewController validatePIN:];
  }

  return v9;
}

- (void)didEnterValidRemoteSecret:(id)a3
{
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [CDPRemoteSecretEntryViewController didEnterValidRemoteSecret:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteSecretEntry:self didAcceptValidRemoteSecretForDevice:self->_remoteRecoveryDevice];
}

- (void)_handleSecretValidationWithPasscode:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
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
  v10 = v4;
  v8 = v4;
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

- (void)showIncorrectRemoteSecretAlertForPasscode:(id)a3 withRecoveryError:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (self->_remoteRecoveryDevice)
  {
    v10 = [a4 userInfo];
    v11 = [v10 allValues];
    v12 = [v11 firstObject];

    v46 = v8;
    if (![v12 cdp_isCDPErrorWithCode:-5205])
    {
      v17 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_RECOVERY_ERROR_TITLE"];
      v15 = [v17 localizedString];

      v18 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_RECOVERY_ERROR_MESSAGE"];
      v19 = [v18 addSecretType:{-[CDPDevice localSecretType](self->_remoteRecoveryDevice, "localSecretType")}];
      v20 = [(CDPDevice *)self->_remoteRecoveryDevice modelClass];
      v21 = [v19 addDeviceClass:v20];
      v16 = [v21 localizedString];

LABEL_16:
      v8 = v46;
      goto LABEL_17;
    }

    v13 = [MEMORY[0x277CFD4F8] sharedInstance];
    v44 = [v13 deviceClass];

    v14 = [(CDPDevice *)self->_remoteRecoveryDevice modelClass];
    if ([v14 length])
    {
      v45 = [(CDPDevice *)self->_remoteRecoveryDevice modelClass];
    }

    else
    {
      v45 = 0;
    }

    v22 = [(CDPDevice *)self->_remoteRecoveryDevice localSecretType];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (([WeakRetained performingAccountRecovery] & 1) == 0)
    {
      v24 = [MEMORY[0x277CFD4F8] sharedInstance];
      if ([v24 hasLocalSecret])
      {
        v25 = [MEMORY[0x277D262A0] sharedConnection];
        v49 = 0;
        v26 = [v25 unlockDeviceWithPasscode:v8 outError:&v49];
        v43 = v49;

        if (v26)
        {
          v27 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_INCORRECT_TITLE_OTHER_DEVICE"];
          v28 = [v27 addSecretType:v22];
          v29 = [v28 addDeviceClass:v45];
          v15 = [v29 localizedString];

          v30 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_INCORRECT_MESSAGE_OTHER_DEVICE"];
          v31 = [v30 addSecretType:v22];
          v32 = [v31 addDeviceClass:v45];
          v42 = [v32 addSecretType:v22];
          v33 = [v42 addDeviceClass:v44];
          v16 = [v33 localizedString];

          v34 = v45;
LABEL_15:

          goto LABEL_16;
        }

LABEL_14:
        v35 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_INCORRECT_TITLE"];
        v36 = [v35 addSecretType:v22];
        v15 = [v36 localizedString];

        v30 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_INCORRECT_MESSAGE"];
        v34 = v45;
        v31 = [v30 addDeviceClass:v45];
        v32 = [v31 addSecretType:v22];
        v16 = [v32 localizedString];
        goto LABEL_15;
      }
    }

    v43 = 0;
    goto LABEL_14;
  }

  v15 = CDPLocalizedString();
  v16 = CDPLocalizedString();
LABEL_17:
  v37 = MEMORY[0x277D750F8];
  v38 = CDPLocalizedString();
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __109__CDPRemoteSecretEntryViewController_showIncorrectRemoteSecretAlertForPasscode_withRecoveryError_completion___block_invoke;
  v47[3] = &unk_278E2BAC8;
  v47[4] = self;
  v48 = v9;
  v39 = v9;
  v40 = [v37 actionWithTitle:v38 style:0 handler:v47];

  v41 = [MEMORY[0x277D75110] alertControllerWithTitle:v15 message:v16 preferredStyle:1];
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
  v3 = [MEMORY[0x277D3FA90] sharedSpinnerManager];
  v4 = [(CDPRemoteSecretEntryViewController *)self navigationItem];
  [v3 startAnimatingInNavItem:v4 forIdentifier:@"remoteSecretValidator" hideBackButton:1];

  v5 = [(CDPRemoteSecretEntryViewController *)self view];
  [v5 setUserInteractionEnabled:0];
}

- (void)enableUserInteractionAndStopSpinner
{
  v2 = [(CDPRemoteSecretEntryViewController *)self view];
  [v2 setUserInteractionEnabled:1];

  v3 = [MEMORY[0x277D3FA90] sharedSpinnerManager];
  [v3 stopAnimatingForIdentifier:@"remoteSecretValidator"];
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