@interface HUPersonalRequestsDevicesModuleController
- (HUPersonalRequestsDevicesModuleController)initWithModule:(id)a3;
- (HUPersonalRequestsDevicesModuleController)initWithModule:(id)a3 host:(id)a4;
- (id)_preflightEnablingPersonalRequests;
- (id)_promptToChangeLocationDeviceFromCurrentDevice:(id)a3;
- (id)_promptToChangeLocationDeviceIfNecessary;
- (id)_promptToEnableSiriIfNecessary;
- (id)setPersonalRequestsDevices:(id)a3;
- (id)turnOnPersonalRequestsForAllMultiUserCapableDevices;
- (void)_presentAlert:(id)a3;
- (void)_presentConfirmationForEnablingPersonalRequestsForItem:(id)a3 cell:(id)a4 didTurnOn:(BOOL)a5 isOutdatedOS:(BOOL)a6 unsupportedAccessoryLanguage:(BOOL)a7 hasMismatchedLanguages:(BOOL)a8;
- (void)_togglePersonalRequestStateForItem:(id)a3;
- (void)_turnOnPersonalRequestForItem:(id)a3 cell:(id)a4 didTurnOn:(BOOL)a5;
- (void)setupCell:(id)a3 forItem:(id)a4;
- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4;
@end

@implementation HUPersonalRequestsDevicesModuleController

- (HUPersonalRequestsDevicesModuleController)initWithModule:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithModule_host_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUPersonalRequestsDevicesModuleController.m" lineNumber:37 description:{@"%s is unavailable; use %@ instead", "-[HUPersonalRequestsDevicesModuleController initWithModule:]", v6}];

  return 0;
}

- (HUPersonalRequestsDevicesModuleController)initWithModule:(id)a3 host:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = v6;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v9;
    if (v10)
    {
      goto LABEL_8;
    }

    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v12 handleFailureInFunction:v13 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v8, objc_opt_class()}];
  }

  v11 = 0;
LABEL_8:

  v17.receiver = self;
  v17.super_class = HUPersonalRequestsDevicesModuleController;
  v14 = [(HUItemModuleController *)&v17 initWithModule:v9];
  v15 = v14;
  if (v14)
  {
    [(HUItemModuleController *)v14 setHost:v7];
  }

  return v15;
}

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(HUItemModuleController *)self module];
  if ([v7 isItemPersonalRequestsDevice:v6])
  {

LABEL_4:
    objc_opt_class();
    v10 = v13;
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    [v12 setDelegate:self];
    goto LABEL_8;
  }

  v8 = [(HUItemModuleController *)self module];
  v9 = [v8 isItemPersonalRequestsToggle:v6];

  if (v9)
  {
    goto LABEL_4;
  }

LABEL_8:
}

- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v4 = a4;
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v41 = self;
    v42 = 1024;
    v43 = v4;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@: User tapped switchCell to: %{BOOL}d", buf, 0x12u);
  }

  v39 = v4;

  v8 = [v6 item];
  objc_opt_class();
  objc_opt_class();
  v9 = v8;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [v11 sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  objc_opt_class();
  objc_opt_class();
  v15 = v9;
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  v18 = [v17 sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  if (v14)
  {
    v21 = [v14 mediaProfileContainer];
    v22 = [v21 hf_home];

    v23 = [v14 supportsMultiUser];
  }

  else
  {
    v24 = [v20 accessory];
    v22 = [v24 home];

    v25 = [v20 accessory];
    v23 = [v25 supportsMultiUser];
  }

  v26 = [(HUItemModuleController *)self module];
  if ([v26 isItemPersonalRequestsDevice:v15])
  {
  }

  else
  {
    v27 = [(HUItemModuleController *)self module];
    v28 = [v27 isItemPersonalRequestsToggle:v15];

    if (!v28)
    {
      goto LABEL_30;
    }
  }

  v37 = v20;
  v29 = v6;
  v30 = [(HUItemModuleController *)self module];
  if ([v30 isItemPersonalRequestsDevice:v15])
  {
    v31 = [v22 isMultiUserEnabled] & v39;
  }

  else
  {
    v31 = 0;
  }

  v32 = [(HUItemModuleController *)self module];
  v33 = [v32 recognitionLanguageIsSupportedVRLanguageForItem:v15];

  v34 = [(HUItemModuleController *)self module];
  v35 = [v34 isCurrentIOSDeviceOnSameVoiceRecognitionLanguageAsPersonalRequestsDeviceForItem:v15];

  if (v31 && ((v36 = v33 & v23 ^ 1u, (v36 & 1) != 0) || v35 != 1))
  {
    v6 = v29;
    -[HUPersonalRequestsDevicesModuleController _presentConfirmationForEnablingPersonalRequestsForItem:cell:didTurnOn:isOutdatedOS:unsupportedAccessoryLanguage:hasMismatchedLanguages:](self, "_presentConfirmationForEnablingPersonalRequestsForItem:cell:didTurnOn:isOutdatedOS:unsupportedAccessoryLanguage:hasMismatchedLanguages:", v15, v29, v39, [v14 supportsMultiUser] ^ 1, v36, v35 ^ 1u);
  }

  else
  {
    v6 = v29;
    [(HUPersonalRequestsDevicesModuleController *)self _turnOnPersonalRequestForItem:v15 cell:v29 didTurnOn:v39];
  }

  v20 = v38;
LABEL_30:
}

- (id)_preflightEnablingPersonalRequests
{
  if ([(HUPersonalRequestsDevicesModuleController *)self _isCurrentDeviceCandidateForLocationDevice])
  {
    v3 = [(HUPersonalRequestsDevicesModuleController *)self _promptToChangeLocationDeviceIfNecessary];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __79__HUPersonalRequestsDevicesModuleController__preflightEnablingPersonalRequests__block_invoke;
    v6[3] = &unk_277DBAFF8;
    v6[4] = self;
    v4 = [v3 flatMap:v6];
  }

  else
  {
    v4 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v4;
}

- (id)_promptToEnableSiriIfNecessary
{
  v3 = [MEMORY[0x277CEF368] sharedPreferences];
  v4 = [v3 assistantIsEnabled];

  if (v4)
  {
    v5 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v6 = [(HUItemModuleController *)self module];
    v7 = [v6 activeLocationDeviceFuture];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __75__HUPersonalRequestsDevicesModuleController__promptToEnableSiriIfNecessary__block_invoke;
    v9[3] = &unk_277DBA4E0;
    v9[4] = self;
    v5 = [v7 flatMap:v9];
  }

  return v5;
}

id __75__HUPersonalRequestsDevicesModuleController__promptToEnableSiriIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 isCurrentDevice])
  {
    v3 = HULocalizedModelString(@"HUUsersPersonalRequestsSiriDisabledAlertTitle");
    v4 = [*(a1 + 32) module];
    v5 = [v4 home];
    v6 = HULocalizedSiriTriggerPhrase(v5);
    v13 = HULocalizedStringWithFormat(@"HUUsersPersonalContentSiriDisabledAlertMessage", @"%@", v7, v8, v9, v10, v11, v12, v6);

    v14 = [MEMORY[0x277D75110] alertControllerWithTitle:v3 message:v13 preferredStyle:1];
    v15 = objc_alloc_init(MEMORY[0x277D2C900]);
    v16 = MEMORY[0x277D750F8];
    v17 = _HULocalizedStringWithDefaultValue(@"HUAlertCancel", @"HUAlertCancel", 1);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __75__HUPersonalRequestsDevicesModuleController__promptToEnableSiriIfNecessary__block_invoke_2;
    v28[3] = &unk_277DB7600;
    v18 = v15;
    v29 = v18;
    v19 = [v16 actionWithTitle:v17 style:1 handler:v28];

    [v14 addAction:v19];
    v20 = MEMORY[0x277D750F8];
    v21 = _HULocalizedStringWithDefaultValue(@"HUUsersPersonalRequestsSiriDisabledAlertActionTurnOn", @"HUUsersPersonalRequestsSiriDisabledAlertActionTurnOn", 1);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __75__HUPersonalRequestsDevicesModuleController__promptToEnableSiriIfNecessary__block_invoke_3;
    v26[3] = &unk_277DB7600;
    v27 = v18;
    v22 = v18;
    v23 = [v20 actionWithTitle:v21 style:0 handler:v26];

    [v14 addAction:v23];
    [v14 setPreferredAction:v23];
    [*(a1 + 32) _presentAlert:v14];
    v24 = [v22 flatMap:&__block_literal_global_94];
  }

  else
  {
    v24 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v24;
}

id __75__HUPersonalRequestsDevicesModuleController__promptToEnableSiriIfNecessary__block_invoke_4(uint64_t a1, void *a2)
{
  if ([a2 BOOLValue])
  {
    v2 = [MEMORY[0x277CEF368] sharedPreferences];
    [v2 setAssistantIsEnabled:1];

    v3 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v4 = MEMORY[0x277D2C900];
    v5 = [MEMORY[0x277CCA9B8] na_cancelledError];
    v3 = [v4 futureWithError:v5];
  }

  return v3;
}

- (id)_promptToChangeLocationDeviceIfNecessary
{
  v3 = [(HUItemModuleController *)self module];
  v4 = [v3 activeLocationDeviceFuture];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __85__HUPersonalRequestsDevicesModuleController__promptToChangeLocationDeviceIfNecessary__block_invoke;
  v11[3] = &unk_277DBA4E0;
  v11[4] = self;
  v5 = [v4 flatMap:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__HUPersonalRequestsDevicesModuleController__promptToChangeLocationDeviceIfNecessary__block_invoke_2;
  v10[3] = &unk_277DB9858;
  v10[4] = self;
  v6 = [v5 recover:v10];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __85__HUPersonalRequestsDevicesModuleController__promptToChangeLocationDeviceIfNecessary__block_invoke_40;
  v9[3] = &unk_277DB7AB8;
  v9[4] = self;
  v7 = [v6 flatMap:v9];

  return v7;
}

id __85__HUPersonalRequestsDevicesModuleController__promptToChangeLocationDeviceIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (([v6 isCurrentDevice] & 1) != 0 || (objc_msgSend(*(a1 + 32), "module"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "onlyShowDeviceSwitches"), v7, v8))
  {
    v9 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC28]];
  }

  else
  {
    v9 = [*(a1 + 32) _promptToChangeLocationDeviceFromCurrentDevice:v6];
  }

  v10 = v9;

  return v10;
}

id __85__HUPersonalRequestsDevicesModuleController__promptToChangeLocationDeviceIfNecessary__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "Failed to fetch active location device: %@", &v7, 0xCu);
  }

  v5 = [*(a1 + 32) _promptToChangeLocationDeviceFromCurrentDevice:0];

  return v5;
}

id __85__HUPersonalRequestsDevicesModuleController__promptToChangeLocationDeviceIfNecessary__block_invoke_40(uint64_t a1, void *a2)
{
  if ([a2 BOOLValue])
  {
    v3 = [*(a1 + 32) module];
    v4 = [v3 updateLocationDeviceToThisDevice];
  }

  else
  {
    v4 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v4;
}

- (id)_promptToChangeLocationDeviceFromCurrentDevice:(id)a3
{
  v4 = a3;
  v5 = _HULocalizedStringWithDefaultValue(@"HUUsersPersonalRequestsChangeLocationDeviceAlertTitle", @"HUUsersPersonalRequestsChangeLocationDeviceAlertTitle", 1);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __92__HUPersonalRequestsDevicesModuleController__promptToChangeLocationDeviceFromCurrentDevice___block_invoke;
  v24[3] = &unk_277DBA4B8;
  v25 = v4;
  v19 = v4;
  v6 = __92__HUPersonalRequestsDevicesModuleController__promptToChangeLocationDeviceFromCurrentDevice___block_invoke(v24);
  v7 = [MEMORY[0x277D75110] alertControllerWithTitle:v5 message:v6 preferredStyle:1];
  v8 = objc_alloc_init(MEMORY[0x277D2C900]);
  v9 = MEMORY[0x277D750F8];
  v10 = _HULocalizedStringWithDefaultValue(@"HUUsersPersonalRequestsChangeLocationDeviceAlertActionNotNow", @"HUUsersPersonalRequestsChangeLocationDeviceAlertActionNotNow", 1);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __92__HUPersonalRequestsDevicesModuleController__promptToChangeLocationDeviceFromCurrentDevice___block_invoke_2;
  v22[3] = &unk_277DB7600;
  v11 = v8;
  v23 = v11;
  v12 = [v9 actionWithTitle:v10 style:1 handler:v22];

  [v7 addAction:v12];
  v13 = MEMORY[0x277D750F8];
  v14 = _HULocalizedStringWithDefaultValue(@"HUUsersPersonalRequestsChangeLocationDeviceAlertActionUseCurrentDevice", @"HUUsersPersonalRequestsChangeLocationDeviceAlertActionUseCurrentDevice", 1);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __92__HUPersonalRequestsDevicesModuleController__promptToChangeLocationDeviceFromCurrentDevice___block_invoke_3;
  v20[3] = &unk_277DB7600;
  v15 = v11;
  v21 = v15;
  v16 = [v13 actionWithTitle:v14 style:0 handler:v20];

  [v7 addAction:v16];
  [v7 setPreferredAction:v16];
  [(HUPersonalRequestsDevicesModuleController *)self _presentAlert:v7];
  v17 = v15;

  return v15;
}

id __92__HUPersonalRequestsDevicesModuleController__promptToChangeLocationDeviceFromCurrentDevice___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [v1 name];
    v9 = HULocalizedStringWithFormat(@"HUUsersPersonalContentChangeLocationDeviceAlertMessageFormat", @"%@", v3, v4, v5, v6, v7, v8, v2);
  }

  else
  {
    v9 = _HULocalizedStringWithDefaultValue(@"HUUsersPersonalContentChangeLocationDeviceAlertMessageNoCurrentDevice", @"HUUsersPersonalContentChangeLocationDeviceAlertMessageNoCurrentDevice", 1);
  }

  return v9;
}

- (void)_presentAlert:(id)a3
{
  v6 = [HUViewControllerPresentationRequest requestWithViewController:a3];
  [v6 setPreferredPresentationType:0];
  v4 = [(HUItemModuleController *)self host];
  v5 = [v4 moduleController:self presentViewControllerForRequest:v6];
}

- (void)_togglePersonalRequestStateForItem:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HUItemModuleController *)self module];
  v7 = [v6 isItemPersonalRequestsDevice:v5];

  if (v7)
  {
    objc_opt_class();
    objc_opt_class();
    v8 = v5;
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = [v10 sourceItem];
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    v49 = v13;
    v14 = [v13 accessories];
    objc_opt_class();
    objc_opt_class();
    v15 = v8;
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    v18 = [v17 sourceItem];
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    v21 = [v20 accessories];
    v22 = v21;
    if (v14)
    {
      v23 = v14;
    }

    else
    {
      v23 = v21;
    }

    v24 = v23;
    v25 = HFLogForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = NSStringFromSelector(a2);
      v27 = [(HUItemModuleController *)self module];
      [v27 personalRequestsDevices];
      v28 = v47 = self;
      *buf = 138412802;
      v56 = v26;
      v57 = 2112;
      v58 = v24;
      v59 = 2112;
      v60 = v28;
      _os_log_impl(&dword_20CEB6000, v25, OS_LOG_TYPE_DEFAULT, "%@ toggling PR Set for targetSet = [%@], currentPRDevices = %@", buf, 0x20u);

      self = v47;
    }

    if (!v24)
    {
      goto LABEL_36;
    }

    v29 = self;
    v30 = [(HUItemModuleController *)self module];
    v31 = [v30 personalRequestsDevices];
    v32 = [v31 mutableCopy];
    v33 = v32;
    if (v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = objc_opt_new();
    }

    v36 = v34;

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v37 = v24;
    v38 = [v37 countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v38)
    {
      v39 = v38;
      v46 = v22;
      v48 = v20;
      v40 = *v51;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v51 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = [v36 containsObject:*(*(&v50 + 1) + 8 * i)];
        }

        v43 = v42;
        v39 = [v37 countByEnumeratingWithState:&v50 objects:v54 count:16];
      }

      while (v39);

      v22 = v46;
      v20 = v48;
      if (v43)
      {
        v44 = [v37 allObjects];
        [v36 removeObjectsInArray:v44];
LABEL_35:

        v45 = [(HUItemModuleController *)v29 module];
        [v45 setPersonalRequestsDevices:v36];

LABEL_36:
        goto LABEL_37;
      }
    }

    else
    {
    }

    v44 = [v37 allObjects];
    [v36 addObjectsFromArray:v44];
    goto LABEL_35;
  }

  v35 = [(HUItemModuleController *)self module];
  [v35 toggleAllPersonalRequestsDevices];

LABEL_37:
}

- (void)_presentConfirmationForEnablingPersonalRequestsForItem:(id)a3 cell:(id)a4 didTurnOn:(BOOL)a5 isOutdatedOS:(BOOL)a6 unsupportedAccessoryLanguage:(BOOL)a7 hasMismatchedLanguages:(BOOL)a8
{
  v8 = a8;
  v45 = a7;
  v9 = a6;
  v11 = a3;
  v12 = a4;
  objc_opt_class();
  v13 = v11;
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v15)
  {
    v16 = [v15 sourceItem];
  }

  else
  {
    v16 = v13;
  }

  v17 = v16;
  v18 = &unk_28251B0C8;
  if ([v17 conformsToProtocol:v18])
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  if (v15)
  {
  }

  v21 = [v20 accessories];
  v22 = [v21 anyObject];
  v23 = [v22 hf_categoryOrPrimaryServiceType];

  v24 = [(HUItemModuleController *)self module];
  v25 = [v24 recognitionLanguageIsSupportedVRLanguageForCurrentDevice];

  v26 = [MEMORY[0x277D75418] currentDevice];
  v32 = [v26 name];
  v47 = v23;
  if (v9)
  {
    HULocalizedCategoryOrPrimaryServiceTypeStringWithFormat(@"HUUsersPersonalContentAlertTitleForUnsupported", @"%@", v23, v27, v28, v29, v30, v31, v32);
  }

  else if (v8)
  {
    if (v45)
    {
      v33 = @"HUUsersPersonalContentAlertTitleForMismatchedUnsupportedAccessoryLanguage";
    }

    else
    {
      if ((v25 & 1) == 0)
      {
        HULocalizedCategoryOrPrimaryServiceTypeStringWithFormat(@"HUUsersPersonalContentAlertTitleForMismatchedUnsupportedDeviceLanguage", @"%1$@ %1$@ %1$@", v23, v27, v28, v29, v30, v31, v32);
        goto LABEL_22;
      }

      v33 = @"HUUsersPersonalContentAlertTitleForMismatchedSupportedLanguages";
    }

    HULocalizedCategoryOrPrimaryServiceTypeStringWithFormat(v33, @"%1$@ %1$@", v23, v27, v28, v29, v30, v31, v32);
  }

  else
  {
    HULocalizedCategoryOrPrimaryServiceTypeStringWithFormat(@"HUUsersPersonalContentAlertTitleForUnsupportedMULanguages", @"%@", v23, v27, v28, v29, v30, v31, v32);
  }

  v34 = LABEL_22:;

  v35 = [MEMORY[0x277D75110] hu_actionSheetWithTitle:0 message:v34 anchorView:v12];
  objc_initWeak(location, self);
  v36 = MEMORY[0x277D750F8];
  v37 = _HULocalizedStringWithDefaultValue(@"HUUsersPersonalContentUsePersonalContentAnywayActionTitle", @"HUUsersPersonalContentUsePersonalContentAnywayActionTitle", 1);
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __180__HUPersonalRequestsDevicesModuleController__presentConfirmationForEnablingPersonalRequestsForItem_cell_didTurnOn_isOutdatedOS_unsupportedAccessoryLanguage_hasMismatchedLanguages___block_invoke;
  v51[3] = &unk_277DBC5B8;
  objc_copyWeak(&v54, location);
  v38 = v13;
  v52 = v38;
  v39 = v12;
  v53 = v39;
  v55 = a5;
  v40 = [v36 actionWithTitle:v37 style:0 handler:v51];

  v41 = MEMORY[0x277D750F8];
  v42 = _HULocalizedStringWithDefaultValue(@"HUUsersPersonalRequestsUsePersonalRequestsCancelActionTitle", @"HUUsersPersonalRequestsUsePersonalRequestsCancelActionTitle", 1);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __180__HUPersonalRequestsDevicesModuleController__presentConfirmationForEnablingPersonalRequestsForItem_cell_didTurnOn_isOutdatedOS_unsupportedAccessoryLanguage_hasMismatchedLanguages___block_invoke_2;
  v49[3] = &unk_277DB7600;
  v43 = v39;
  v50 = v43;
  v44 = [v41 actionWithTitle:v42 style:1 handler:v49];

  [v35 addAction:v40];
  [v35 addAction:v44];
  [(HUPersonalRequestsDevicesModuleController *)self _presentAlert:v35];

  objc_destroyWeak(&v54);
  objc_destroyWeak(location);
}

void __180__HUPersonalRequestsDevicesModuleController__presentConfirmationForEnablingPersonalRequestsForItem_cell_didTurnOn_isOutdatedOS_unsupportedAccessoryLanguage_hasMismatchedLanguages___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _turnOnPersonalRequestForItem:*(a1 + 32) cell:*(a1 + 40) didTurnOn:*(a1 + 56)];
}

- (void)_turnOnPersonalRequestForItem:(id)a3 cell:(id)a4 didTurnOn:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    [(HUPersonalRequestsDevicesModuleController *)self _preflightEnablingPersonalRequests];
  }

  else
  {
    [MEMORY[0x277D2C900] futureWithNoResult];
  }
  v10 = ;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __90__HUPersonalRequestsDevicesModuleController__turnOnPersonalRequestForItem_cell_didTurnOn___block_invoke;
  v17[3] = &unk_277DB7E68;
  v17[4] = self;
  v18 = v8;
  v11 = v8;
  v12 = [v10 addSuccessBlock:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__HUPersonalRequestsDevicesModuleController__turnOnPersonalRequestForItem_cell_didTurnOn___block_invoke_2;
  v15[3] = &unk_277DB8C00;
  v16 = v9;
  v13 = v9;
  v14 = [v12 addFailureBlock:v15];
}

- (id)turnOnPersonalRequestsForAllMultiUserCapableDevices
{
  v3 = [(HUPersonalRequestsDevicesModuleController *)self _preflightEnablingPersonalRequests];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __96__HUPersonalRequestsDevicesModuleController_turnOnPersonalRequestsForAllMultiUserCapableDevices__block_invoke;
  v6[3] = &unk_277DBA338;
  v6[4] = self;
  v4 = [v3 addSuccessBlock:v6];

  return v3;
}

void __96__HUPersonalRequestsDevicesModuleController_turnOnPersonalRequestsForAllMultiUserCapableDevices__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) module];
  [v1 turnOnPersonalRequestsForAllVoiceRecognitionCapablePersonalRequestsDevices];
}

- (id)setPersonalRequestsDevices:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    [(HUPersonalRequestsDevicesModuleController *)self _preflightEnablingPersonalRequests];
  }

  else
  {
    [MEMORY[0x277D2C900] futureWithNoResult];
  }
  v5 = ;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__HUPersonalRequestsDevicesModuleController_setPersonalRequestsDevices___block_invoke;
  v9[3] = &unk_277DB7E68;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 addSuccessBlock:v9];

  return v5;
}

void __72__HUPersonalRequestsDevicesModuleController_setPersonalRequestsDevices___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) module];
  [v2 setPersonalRequestsDevices:*(a1 + 40)];
}

@end