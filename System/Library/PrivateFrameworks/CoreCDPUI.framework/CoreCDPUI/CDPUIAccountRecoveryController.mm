@interface CDPUIAccountRecoveryController
- (id)_accountRecoveryDevicePickerEscapeOfferWithCDPContext:(id)context;
- (id)_accountRecoveryEscapeOfferForDevice:(id)device;
- (id)devicePicker:(id)picker escapeOffersForDevices:(id)devices;
- (void)_presentRemoteSecretControllerWithNewestDevice:(id)device;
- (void)_setupDevicePickerController:(id)controller;
- (void)devicePicker:(id)picker didSelectDevice:(id)device;
- (void)remoteSecretEntryDidRequestAccountRecoveryFromViewController:(id)controller newestDevice:(id)device;
@end

@implementation CDPUIAccountRecoveryController

- (void)devicePicker:(id)picker didSelectDevice:(id)device
{
  pickerCopy = picker;
  v7 = MEMORY[0x277CFD560];
  deviceCopy = device;
  if ([v7 isICSCHarmonizationEnabled])
  {
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CDPUIAccountRecoveryController devicePicker:v9 didSelectDevice:?];
    }

    v12.receiver = self;
    v12.super_class = CDPUIAccountRecoveryController;
    [(CDPUIController *)&v12 devicePicker:pickerCopy didSelectDevice:deviceCopy];
  }

  else
  {
    v10 = [(CDPUIController *)self _remoteSecretControllerForDevice:deviceCopy];
    [v10 setHidesCancelButton:1];
    v11 = [(CDPUIAccountRecoveryController *)self _accountRecoveryEscapeOfferForDevice:deviceCopy];

    [v10 setEscapeOffer:v11];
    [(UINavigationController *)self->super._navController pushViewController:v10 animated:1];
  }
}

- (id)devicePicker:(id)picker escapeOffersForDevices:(id)devices
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CFD4A8];
  pickerCopy = picker;
  contextForPrimaryAccount = [v5 contextForPrimaryAccount];
  v8 = [(CDPUIAccountRecoveryController *)self _accountRecoveryDevicePickerEscapeOfferWithCDPContext:contextForPrimaryAccount];

  [v8 setPresentingViewController:pickerCopy];
  v11[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  return v9;
}

- (void)remoteSecretEntryDidRequestAccountRecoveryFromViewController:(id)controller newestDevice:(id)device
{
  controllerCopy = controller;
  v7 = [(CDPUIAccountRecoveryController *)self _accountRecoveryEscapeOfferForDevice:device];
  [v7 setPresentingViewController:controllerCopy];
  [v7 handleEscapeAction:controllerCopy];
}

- (void)_presentRemoteSecretControllerWithNewestDevice:(id)device
{
  deviceCopy = device;
  v6 = [(CDPUIController *)self _remoteSecretControllerForNewestDevice:deviceCopy];
  v5 = [(CDPUIAccountRecoveryController *)self _accountRecoveryEscapeOfferForDevice:deviceCopy];

  [v6 setEscapeOffer:v5];
  [(CDPUIController *)self _presentRootController:v6 completion:0];
}

- (id)_accountRecoveryEscapeOfferForDevice:(id)device
{
  deviceCopy = device;
  v5 = [CDPRemoteValidationEscapeOffer alloc];
  contextForPrimaryAccount = [MEMORY[0x277CFD4A8] contextForPrimaryAccount];
  v7 = [(CDPRemoteValidationEscapeOffer *)v5 initWithCDPContext:contextForPrimaryAccount];

  v8 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_FORGOT_HATCH"];
  modelClass = [deviceCopy modelClass];
  v10 = [v8 addDeviceClass:modelClass];
  v11 = [v10 addSecretType:{objc_msgSend(deviceCopy, "localSecretType")}];
  localizedString = [v11 localizedString];
  [(CDPRemoteValidationEscapeOffer *)v7 setEscapeOfferName:localizedString];

  v13 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_FORGOT_HATCH"];
  modelClass2 = [deviceCopy modelClass];
  v15 = [v13 addDeviceClass:modelClass2];
  v16 = [v15 addSecretType:{objc_msgSend(deviceCopy, "localSecretType")}];
  localizedString2 = [v16 localizedString];
  [(CDPRemoteValidationEscapeOffer *)v7 setTitle:localizedString2];

  [(CDPRemoteValidationEscapeOffer *)v7 setTitleTelemetryKey:*MEMORY[0x277CFD9A0]];
  v18 = objc_alloc_init(CDPEscapeOption);
  supportedEscapeOfferMask = [(CDPRemoteDeviceSecretValidator *)self->super._remoteSecretValidator supportedEscapeOfferMask];
  v42 = (supportedEscapeOfferMask & 0x40) == 0;
  objc_initWeak(&location, self);
  if ([(NSArray *)self->super._devices count]< 2)
  {
    if ((supportedEscapeOfferMask & 0x40) != 0)
    {
      [(CDPRemoteValidationEscapeOffer *)v7 setTitle:0];
      [(CDPEscapeOption *)v18 setStyle:4];
    }

    else
    {
      v30 = MEMORY[0x277CCACA8];
      v31 = [MEMORY[0x277CFD508] builderForKey:@"ACCOUNT_RECOVERY_FORGOT_CODE_DIALOG_MESSAGE_SINGLE_REBRAND"];
      v32 = [v31 addSecretType:{objc_msgSend(deviceCopy, "localSecretType")}];
      modelClass3 = [deviceCopy modelClass];
      v34 = [v32 addDeviceClass:modelClass3];
      localizedString3 = [v34 localizedString];
      localizedName = [deviceCopy localizedName];
      v37 = [v30 stringWithValidatedFormat:localizedString3 validFormatSpecifiers:@"%@" error:0, localizedName];
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
    v22 = [v21 addSecretType:{objc_msgSend(deviceCopy, "localSecretType")}];
    v23 = [v22 addSecretType:{-[NSArray prevailingLocalSecretType](self->super._devices, "prevailingLocalSecretType")}];
    localizedString4 = [v23 localizedString];
    localizedName2 = [deviceCopy localizedName];
    v26 = [v20 stringWithValidatedFormat:localizedString4 validFormatSpecifiers:@"%@" error:0, localizedName2];
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

- (void)_setupDevicePickerController:(id)controller
{
  controllerCopy = controller;
  v4 = [[CDPDevicePickerViewController alloc] initWithDevices:self->super._devices delegate:self];
  devicePicker = self->super._devicePicker;
  self->super._devicePicker = v4;

  if ([MEMORY[0x277CFD560] isNaturalUIEnabled])
  {
    v6 = [[CDPDevicePickerViewController alloc] initWithDevices:self->super._devices delegate:self tableViewStyle:2];
    v7 = self->super._devicePicker;
    self->super._devicePicker = v6;
  }

  controllerCopy[2](controllerCopy, self->super._devicePicker);
}

- (id)_accountRecoveryDevicePickerEscapeOfferWithCDPContext:(id)context
{
  contextCopy = context;
  v5 = [[CDPRemoteValidationEscapeOffer alloc] initWithCDPContext:contextCopy];
  prevailingLocalSecretType = [(NSArray *)self->super._devices prevailingLocalSecretType];
  v7 = [MEMORY[0x277CFD508] builderForKey:@"DEVICE_PICKER_FORGOT_CODE_DIALOG_TITLE"];
  v8 = [v7 addSecretType:prevailingLocalSecretType];
  localizedString = [v8 localizedString];

  v10 = [MEMORY[0x277CFD508] builderForKey:@"ACCOUNT_RECOVERY_FORGOT_CODE_DIALOG_MESSAGE_MULTI_REBRAND"];
  v11 = [v10 addSecretType:prevailingLocalSecretType];
  localizedString2 = [v11 localizedString];

  v13 = [MEMORY[0x277CFD508] builderForKey:@"DEVICE_PICKER_APPROVE_FROM_ANOTHER_DEVICE"];
  v14 = [v13 addSecretType:prevailingLocalSecretType];
  localizedString3 = [v14 localizedString];
  [(CDPRemoteValidationEscapeOffer *)v5 setEscapeOfferName:localizedString3];

  [(CDPRemoteValidationEscapeOffer *)v5 setTitle:localizedString];
  [(CDPRemoteValidationEscapeOffer *)v5 setMessage:localizedString2];
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