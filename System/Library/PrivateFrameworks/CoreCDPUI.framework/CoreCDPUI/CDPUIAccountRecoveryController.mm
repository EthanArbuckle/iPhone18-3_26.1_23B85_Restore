@interface CDPUIAccountRecoveryController
- (id)_accountRecoveryDevicePickerEscapeOfferWithCDPContext:(id)a3;
- (id)_accountRecoveryEscapeOfferForDevice:(id)a3;
- (id)devicePicker:(id)a3 escapeOffersForDevices:(id)a4;
- (void)_presentRemoteSecretControllerWithNewestDevice:(id)a3;
- (void)_setupDevicePickerController:(id)a3;
- (void)devicePicker:(id)a3 didSelectDevice:(id)a4;
- (void)remoteSecretEntryDidRequestAccountRecoveryFromViewController:(id)a3 newestDevice:(id)a4;
@end

@implementation CDPUIAccountRecoveryController

- (void)devicePicker:(id)a3 didSelectDevice:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x277CFD560];
  v8 = a4;
  if ([v7 isICSCHarmonizationEnabled])
  {
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CDPUIAccountRecoveryController devicePicker:v9 didSelectDevice:?];
    }

    v12.receiver = self;
    v12.super_class = CDPUIAccountRecoveryController;
    [(CDPUIController *)&v12 devicePicker:v6 didSelectDevice:v8];
  }

  else
  {
    v10 = [(CDPUIController *)self _remoteSecretControllerForDevice:v8];
    [v10 setHidesCancelButton:1];
    v11 = [(CDPUIAccountRecoveryController *)self _accountRecoveryEscapeOfferForDevice:v8];

    [v10 setEscapeOffer:v11];
    [(UINavigationController *)self->super._navController pushViewController:v10 animated:1];
  }
}

- (id)devicePicker:(id)a3 escapeOffersForDevices:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CFD4A8];
  v6 = a3;
  v7 = [v5 contextForPrimaryAccount];
  v8 = [(CDPUIAccountRecoveryController *)self _accountRecoveryDevicePickerEscapeOfferWithCDPContext:v7];

  [v8 setPresentingViewController:v6];
  v11[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  return v9;
}

- (void)remoteSecretEntryDidRequestAccountRecoveryFromViewController:(id)a3 newestDevice:(id)a4
{
  v6 = a3;
  v7 = [(CDPUIAccountRecoveryController *)self _accountRecoveryEscapeOfferForDevice:a4];
  [v7 setPresentingViewController:v6];
  [v7 handleEscapeAction:v6];
}

- (void)_presentRemoteSecretControllerWithNewestDevice:(id)a3
{
  v4 = a3;
  v6 = [(CDPUIController *)self _remoteSecretControllerForNewestDevice:v4];
  v5 = [(CDPUIAccountRecoveryController *)self _accountRecoveryEscapeOfferForDevice:v4];

  [v6 setEscapeOffer:v5];
  [(CDPUIController *)self _presentRootController:v6 completion:0];
}

- (id)_accountRecoveryEscapeOfferForDevice:(id)a3
{
  v4 = a3;
  v5 = [CDPRemoteValidationEscapeOffer alloc];
  v6 = [MEMORY[0x277CFD4A8] contextForPrimaryAccount];
  v7 = [(CDPRemoteValidationEscapeOffer *)v5 initWithCDPContext:v6];

  v8 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_FORGOT_HATCH"];
  v9 = [v4 modelClass];
  v10 = [v8 addDeviceClass:v9];
  v11 = [v10 addSecretType:{objc_msgSend(v4, "localSecretType")}];
  v12 = [v11 localizedString];
  [(CDPRemoteValidationEscapeOffer *)v7 setEscapeOfferName:v12];

  v13 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_FORGOT_HATCH"];
  v14 = [v4 modelClass];
  v15 = [v13 addDeviceClass:v14];
  v16 = [v15 addSecretType:{objc_msgSend(v4, "localSecretType")}];
  v17 = [v16 localizedString];
  [(CDPRemoteValidationEscapeOffer *)v7 setTitle:v17];

  [(CDPRemoteValidationEscapeOffer *)v7 setTitleTelemetryKey:*MEMORY[0x277CFD9A0]];
  v18 = objc_alloc_init(CDPEscapeOption);
  v19 = [(CDPRemoteDeviceSecretValidator *)self->super._remoteSecretValidator supportedEscapeOfferMask];
  v42 = (v19 & 0x40) == 0;
  objc_initWeak(&location, self);
  if ([(NSArray *)self->super._devices count]< 2)
  {
    if ((v19 & 0x40) != 0)
    {
      [(CDPRemoteValidationEscapeOffer *)v7 setTitle:0];
      [(CDPEscapeOption *)v18 setStyle:4];
    }

    else
    {
      v30 = MEMORY[0x277CCACA8];
      v31 = [MEMORY[0x277CFD508] builderForKey:@"ACCOUNT_RECOVERY_FORGOT_CODE_DIALOG_MESSAGE_SINGLE_REBRAND"];
      v32 = [v31 addSecretType:{objc_msgSend(v4, "localSecretType")}];
      v33 = [v4 modelClass];
      v34 = [v32 addDeviceClass:v33];
      v35 = [v34 localizedString];
      v36 = [v4 localizedName];
      v37 = [v30 stringWithValidatedFormat:v35 validFormatSpecifiers:@"%@" error:0, v36];
      [(CDPRemoteValidationEscapeOffer *)v7 setMessage:v37];
    }

    v38 = CDPLocalizedString();
    [(CDPEscapeOption *)v18 setTitle:v38];

    [(CDPEscapeOption *)v18 setTitleTelemetryKey:*MEMORY[0x277CFD938]];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __71__CDPUIAccountRecoveryController__accountRecoveryEscapeOfferForDevice___block_invoke_3;
    v43[3] = &unk_278E2B4B0;
    v28 = &v44;
    objc_copyWeak(&v44, &location);
    [(CDPEscapeOption *)v18 setEscapeAction:v43];
    v29 = v42;
  }

  else
  {
    v20 = MEMORY[0x277CCACA8];
    v21 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_FORGOT_CODE_DIALOG_MESSAGE_ANOTHER_DEVICE"];
    v22 = [v21 addSecretType:{objc_msgSend(v4, "localSecretType")}];
    v23 = [v22 addSecretType:{-[NSArray prevailingLocalSecretType](self->super._devices, "prevailingLocalSecretType")}];
    v24 = [v23 localizedString];
    v25 = [v4 localizedName];
    v26 = [v20 stringWithValidatedFormat:v24 validFormatSpecifiers:@"%@" error:0, v25];
    [(CDPRemoteValidationEscapeOffer *)v7 setMessage:v26];

    v27 = CDPLocalizedString();
    [(CDPEscapeOption *)v18 setTitle:v27];

    [(CDPEscapeOption *)v18 setTitleTelemetryKey:*MEMORY[0x277CFD990]];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __71__CDPUIAccountRecoveryController__accountRecoveryEscapeOfferForDevice___block_invoke;
    v45[3] = &unk_278E2B4B0;
    v28 = &v46;
    objc_copyWeak(&v46, &location);
    [(CDPEscapeOption *)v18 setEscapeAction:v45];
    v29 = 1;
  }

  objc_destroyWeak(v28);
  v39 = objc_alloc_init(CDPEscapeOption);
  v40 = CDPLocalizedString();
  [(CDPEscapeOption *)v39 setTitle:v40];

  [(CDPEscapeOption *)v39 setStyle:1];
  [(CDPEscapeOption *)v39 setTitleTelemetryKey:*MEMORY[0x277CFD958]];
  [(CDPRemoteValidationEscapeOffer *)v7 addEscapeOptionsObject:v18];
  if (v29)
  {
    [(CDPRemoteValidationEscapeOffer *)v7 addEscapeOptionsObject:v39];
  }

  objc_destroyWeak(&location);

  return v7;
}

void __71__CDPUIAccountRecoveryController__accountRecoveryEscapeOfferForDevice___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __71__CDPUIAccountRecoveryController__accountRecoveryEscapeOfferForDevice___block_invoke_2;
  v2[3] = &unk_278E2B488;
  v2[4] = WeakRetained;
  [WeakRetained _setupDevicePickerController:v2];
}

void __71__CDPUIAccountRecoveryController__accountRecoveryEscapeOfferForDevice___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __71__CDPUIAccountRecoveryController__accountRecoveryEscapeOfferForDevice___block_invoke_4;
  v2[3] = &unk_278E2AF90;
  v2[4] = WeakRetained;
  [WeakRetained _dismissPresentedViewControllerWithReason:@"com.apple.CoreCDPUI.CDPEnrollmentDismissUI" completion:v2];
}

void __71__CDPUIAccountRecoveryController__accountRecoveryEscapeOfferForDevice___block_invoke_4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = _CDPStateError();
  [v1 cancelValidationWithError:v2];
}

- (void)_setupDevicePickerController:(id)a3
{
  v8 = a3;
  v4 = [[CDPDevicePickerViewController alloc] initWithDevices:self->super._devices delegate:self];
  devicePicker = self->super._devicePicker;
  self->super._devicePicker = v4;

  if ([MEMORY[0x277CFD560] isNaturalUIEnabled])
  {
    v6 = [[CDPDevicePickerViewController alloc] initWithDevices:self->super._devices delegate:self tableViewStyle:2];
    v7 = self->super._devicePicker;
    self->super._devicePicker = v6;
  }

  v8[2](v8, self->super._devicePicker);
}

- (id)_accountRecoveryDevicePickerEscapeOfferWithCDPContext:(id)a3
{
  v4 = a3;
  v5 = [[CDPRemoteValidationEscapeOffer alloc] initWithCDPContext:v4];
  v6 = [(NSArray *)self->super._devices prevailingLocalSecretType];
  v7 = [MEMORY[0x277CFD508] builderForKey:@"DEVICE_PICKER_FORGOT_CODE_DIALOG_TITLE"];
  v8 = [v7 addSecretType:v6];
  v9 = [v8 localizedString];

  v10 = [MEMORY[0x277CFD508] builderForKey:@"ACCOUNT_RECOVERY_FORGOT_CODE_DIALOG_MESSAGE_MULTI_REBRAND"];
  v11 = [v10 addSecretType:v6];
  v12 = [v11 localizedString];

  v13 = [MEMORY[0x277CFD508] builderForKey:@"DEVICE_PICKER_APPROVE_FROM_ANOTHER_DEVICE"];
  v14 = [v13 addSecretType:v6];
  v15 = [v14 localizedString];
  [(CDPRemoteValidationEscapeOffer *)v5 setEscapeOfferName:v15];

  [(CDPRemoteValidationEscapeOffer *)v5 setTitle:v9];
  [(CDPRemoteValidationEscapeOffer *)v5 setMessage:v12];
  objc_initWeak(&location, self);
  v16 = objc_alloc_init(CDPEscapeOption);
  v17 = CDPLocalizedString();
  [(CDPEscapeOption *)v16 setTitle:v17];

  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __88__CDPUIAccountRecoveryController__accountRecoveryDevicePickerEscapeOfferWithCDPContext___block_invoke;
  v24 = &unk_278E2B4B0;
  objc_copyWeak(&v25, &location);
  [(CDPEscapeOption *)v16 setEscapeAction:&v21];
  v18 = objc_alloc_init(CDPEscapeOption);
  v19 = CDPLocalizedString();
  [(CDPEscapeOption *)v18 setTitle:v19, v21, v22, v23, v24];

  [(CDPEscapeOption *)v18 setStyle:1];
  [(CDPRemoteValidationEscapeOffer *)v5 addEscapeOptionsObject:v16];
  [(CDPRemoteValidationEscapeOffer *)v5 addEscapeOptionsObject:v18];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  return v5;
}

void __88__CDPUIAccountRecoveryController__accountRecoveryDevicePickerEscapeOfferWithCDPContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __88__CDPUIAccountRecoveryController__accountRecoveryDevicePickerEscapeOfferWithCDPContext___block_invoke_2;
  v2[3] = &unk_278E2AF90;
  v2[4] = WeakRetained;
  [WeakRetained _dismissPresentedViewControllerWithReason:@"com.apple.CoreCDPUI.CDPEnrollmentDismissUI" completion:v2];
}

void __88__CDPUIAccountRecoveryController__accountRecoveryDevicePickerEscapeOfferWithCDPContext___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = _CDPStateError();
  [v1 cancelValidationWithError:v2];
}

@end