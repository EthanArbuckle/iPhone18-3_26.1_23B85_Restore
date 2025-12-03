@interface NMCUICloudNotificationAccountDataSource
+ (BOOL)accountHasCredentials:(id)credentials;
+ (BOOL)accountSupportsNotifications:(id)notifications forceEnabled:(BOOL)enabled;
- (BOOL)accountIsPending:(id)pending;
- (BOOL)accountShowsAlerts:(id)alerts;
- (BOOL)cloudNotificationsEnabled;
- (BOOL)deviceSupportsCloudNotifications;
- (BOOL)shouldPromptToEnableNotifications:(id)notifications;
- (NMCUICloudNotificationAccountDataSource)initWithAccountDataSource:(id)source;
- (NPSDomainAccessor)domainAccessor;
- (id)_emailAddressFromJWTToken:(id)token error:(id *)error;
- (id)_ensureValidBase64String:(id)string;
- (id)_getValueForKey:(id)key;
- (id)accountsRequiringCredentials;
- (void)_displayFailedToSaveAlertShouldDismiss:(BOOL)dismiss viewController:(id)controller;
- (void)_handleDidUnpair;
- (void)_handlePairedDeviceChanged;
- (void)_setValue:(id)value forKey:(id)key;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)handleAccountAuthenication:(id)authenication viewController:(id)controller stateUpdateHandler:(id)handler;
- (void)removeObserver:(id)observer;
- (void)saveCredential:(id)credential emailAddress:(id)address forAccount:(id)account completion:(id)completion;
- (void)savePCCCredentialForAccount:(id)account identity:(id)identity viewController:(id)controller stateUpdateHandler:(id)handler;
@end

@implementation NMCUICloudNotificationAccountDataSource

- (NMCUICloudNotificationAccountDataSource)initWithAccountDataSource:(id)source
{
  sourceCopy = source;
  v11.receiver = self;
  v11.super_class = NMCUICloudNotificationAccountDataSource;
  v5 = [(NMCUICloudNotificationAccountDataSource *)&v11 init];
  if (v5)
  {
    nnmk_setupLoggingSubsystems();
    [(NMCUICloudNotificationAccountDataSource *)v5 setAccountDataSource:sourceCopy];
    v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:3];
    [(NMCUICloudNotificationAccountDataSource *)v5 setPendingAccountIds:v6];

    v7 = objc_alloc_init(MEMORY[0x277D2BA60]);
    [(NMCUICloudNotificationAccountDataSource *)v5 setSyncManager:v7];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__handleDidUnpair name:*MEMORY[0x277D2BC78] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v5 selector:sel__handlePairedDeviceChanged name:*MEMORY[0x277D2BC48] object:0];
  }

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D2BC78] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277D2BC48] object:0];

  v5.receiver = self;
  v5.super_class = NMCUICloudNotificationAccountDataSource;
  [(NMCUICloudNotificationAccountDataSource *)&v5 dealloc];
}

- (BOOL)deviceSupportsCloudNotifications
{
  deviceSupportsPCC = self->_deviceSupportsPCC;
  if (!deviceSupportsPCC)
  {
    mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
    activePairedDeviceSelectorBlock = [MEMORY[0x277D2BCF8] activePairedDeviceSelectorBlock];
    v6 = [mEMORY[0x277D2BCF8] getAllDevicesWithArchivedAltAccountDevicesMatching:activePairedDeviceSelectorBlock];
    firstObject = [v6 firstObject];

    v8 = MEMORY[0x277CCABB0];
    v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"62A0825B-34DD-490E-9DB9-D13AE37F601B"];
    v10 = [v8 numberWithBool:{objc_msgSend(firstObject, "supportsCapability:", v9)}];
    v11 = self->_deviceSupportsPCC;
    self->_deviceSupportsPCC = v10;

    deviceSupportsPCC = self->_deviceSupportsPCC;
  }

  return [(NSNumber *)deviceSupportsPCC BOOLValue];
}

+ (BOOL)accountSupportsNotifications:(id)notifications forceEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  notificationsCopy = notifications;
  accountTypeIdentifier = [notificationsCopy accountTypeIdentifier];
  if ([accountTypeIdentifier isEqualToString:*MEMORY[0x277CB8C40]])
  {
    v7 = [notificationsCopy enabled] | enabledCopy;
  }

  else
  {
    accountTypeIdentifier2 = [notificationsCopy accountTypeIdentifier];
    if ([accountTypeIdentifier2 isEqualToString:*MEMORY[0x277CB8C50]])
    {
      v7 = [notificationsCopy enabled] | enabledCopy;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

+ (BOOL)accountHasCredentials:(id)credentials
{
  credentialsCopy = credentials;
  acAccount = [credentialsCopy acAccount];

  if (acAccount)
  {
    acAccount2 = [credentialsCopy acAccount];
    accountType = [acAccount2 accountType];
    identifier = [accountType identifier];
    if (![identifier isEqualToString:*MEMORY[0x277CB8C40]])
    {
      v12 = 1;
      goto LABEL_9;
    }

    acAccount3 = [credentialsCopy acAccount];
    v9 = getNNMKEmailAddressTokenKey();
    v10 = [acAccount3 accountPropertyForKey:v9];
  }

  else
  {
    nnmkAccount = [credentialsCopy nnmkAccount];

    if (!nnmkAccount)
    {
      v12 = 0;
      goto LABEL_11;
    }

    acAccount2 = [credentialsCopy nnmkAccount];
    accountType = [acAccount2 typeIdentifier];
    if (![accountType isEqualToString:*MEMORY[0x277CB8C40]])
    {
      v12 = 1;
      goto LABEL_10;
    }

    identifier = [credentialsCopy nnmkAccount];
    acAccount3 = [identifier emailAddressToken];
    v10 = acAccount3;
  }

  v12 = v10 != 0;

LABEL_9:
LABEL_10:

LABEL_11:
  return v12;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  accountDataSource = [(NMCUICloudNotificationAccountDataSource *)self accountDataSource];
  [accountDataSource addObserver:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  accountDataSource = [(NMCUICloudNotificationAccountDataSource *)self accountDataSource];
  [accountDataSource removeObserver:observerCopy];
}

- (BOOL)accountIsPending:(id)pending
{
  pendingAccountIds = self->_pendingAccountIds;
  identifier = [pending identifier];
  LOBYTE(pendingAccountIds) = [(NSMutableSet *)pendingAccountIds containsObject:identifier];

  return pendingAccountIds;
}

- (id)accountsRequiringCredentials
{
  accounts = [(NMCUIAccountDataSource *)self->_accountDataSource accounts];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__NMCUICloudNotificationAccountDataSource_accountsRequiringCredentials__block_invoke;
  v6[3] = &unk_2799346C8;
  v6[4] = self;
  v4 = [accounts ac_filter:v6];

  return v4;
}

uint64_t __71__NMCUICloudNotificationAccountDataSource_accountsRequiringCredentials__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  LODWORD(v2) = [objc_opt_class() accountHasCredentials:v3];

  return v2 ^ 1;
}

- (BOOL)cloudNotificationsEnabled
{
  v3 = getNanoMailCloudNotificationsEnabledKey();
  v4 = [(NMCUICloudNotificationAccountDataSource *)self _getValueForKey:v3];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)shouldPromptToEnableNotifications:(id)notifications
{
  notificationsCopy = notifications;
  if ([(NMCUICloudNotificationAccountDataSource *)self deviceSupportsCloudNotifications])
  {
    nnmkAccount = [notificationsCopy nnmkAccount];
    if ([NMCUICloudNotificationAccountDataSource accountSupportsNotifications:notificationsCopy forceEnabled:nnmkAccount != 0])
    {
      if ([(NMCUICloudNotificationAccountDataSource *)self cloudNotificationsEnabled])
      {
        v6 = ![NMCUICloudNotificationAccountDataSource accountHasCredentials:notificationsCopy];
      }

      else
      {
        LOBYTE(v6) = 1;
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)accountShowsAlerts:(id)alerts
{
  v38 = *MEMORY[0x277D85DE8];
  alertsCopy = alerts;
  if ([(NMCUICloudNotificationAccountDataSource *)self showsAlerts])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = [(NMCUICloudNotificationAccountDataSource *)self notificationSubsections];
    v5 = [obj countByEnumeratingWithState:&v24 objects:v37 count:16];
    if (v5)
    {
      v6 = *v25;
      v22 = &v30;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v25 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v24 + 1) + 8 * i);
          v33 = 0;
          v34 = &v33;
          v35 = 0x2020000000;
          v9 = getBPSNanoBulletinSubsectionIdSymbolLoc_ptr;
          v36 = getBPSNanoBulletinSubsectionIdSymbolLoc_ptr;
          if (!getBPSNanoBulletinSubsectionIdSymbolLoc_ptr)
          {
            v28 = MEMORY[0x277D85DD0];
            v29 = 3221225472;
            v30 = __getBPSNanoBulletinSubsectionIdSymbolLoc_block_invoke;
            v31 = &unk_279934660;
            v32 = &v33;
            v10 = BridgePreferencesLibrary_0();
            v11 = dlsym(v10, "BPSNanoBulletinSubsectionId");
            *(v32[1] + 24) = v11;
            getBPSNanoBulletinSubsectionIdSymbolLoc_ptr = *(v32[1] + 24);
            v9 = v34[3];
          }

          _Block_object_dispose(&v33, 8);
          if (!v9)
          {
            goto LABEL_21;
          }

          v12 = [v8 objectForKeyedSubscript:{*v9, v22}];
          identifier = [alertsCopy identifier];
          v14 = [v12 isEqualToString:identifier];

          if (v14)
          {
            v33 = 0;
            v34 = &v33;
            v35 = 0x2020000000;
            v16 = getBPSNanoBulletinShowsAlertsSymbolLoc_ptr;
            v36 = getBPSNanoBulletinShowsAlertsSymbolLoc_ptr;
            if (!getBPSNanoBulletinShowsAlertsSymbolLoc_ptr)
            {
              v28 = MEMORY[0x277D85DD0];
              v29 = 3221225472;
              v30 = __getBPSNanoBulletinShowsAlertsSymbolLoc_block_invoke;
              v31 = &unk_279934660;
              v32 = &v33;
              v17 = BridgePreferencesLibrary_0();
              v18 = dlsym(v17, "BPSNanoBulletinShowsAlerts");
              *(v32[1] + 24) = v18;
              getBPSNanoBulletinShowsAlertsSymbolLoc_ptr = *(v32[1] + 24);
              v16 = v34[3];
            }

            _Block_object_dispose(&v33, 8);
            if (!v16)
            {
LABEL_21:
              soft_BPSCellHightlightColor_cold_1();
              __break(1u);
            }

            v19 = [v8 objectForKeyedSubscript:*v16];
            bOOLValue = [v19 BOOLValue];

            goto LABEL_19;
          }
        }

        v5 = [obj countByEnumeratingWithState:&v24 objects:v37 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    bOOLValue = 1;
LABEL_19:
  }

  else
  {
    bOOLValue = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return bOOLValue;
}

- (void)saveCredential:(id)credential emailAddress:(id)address forAccount:(id)account completion:(id)completion
{
  credentialCopy = credential;
  addressCopy = address;
  accountCopy = account;
  completionCopy = completion;
  acAccount = [accountCopy acAccount];

  if (acAccount)
  {
    acAccount2 = [accountCopy acAccount];
    v16 = getNNMKEmailAddressTokenKey();
    [acAccount2 setAccountProperty:credentialCopy forKey:v16];

    acAccount3 = [accountCopy acAccount];
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v18 = getNNMKPCCEmailAddressKeySymbolLoc_ptr;
    v26 = getNNMKPCCEmailAddressKeySymbolLoc_ptr;
    if (!getNNMKPCCEmailAddressKeySymbolLoc_ptr)
    {
      v19 = NanoMailKitServerLibrary();
      v24[3] = dlsym(v19, "NNMKPCCEmailAddressKey");
      getNNMKPCCEmailAddressKeySymbolLoc_ptr = v24[3];
      v18 = v24[3];
    }

    _Block_object_dispose(&v23, 8);
    if (!v18)
    {
      v22 = soft_BPSCellHightlightColor_cold_1();
      _Block_object_dispose(&v23, 8);
      _Unwind_Resume(v22);
    }

    [acAccount3 setAccountProperty:addressCopy forKey:*v18];
    goto LABEL_8;
  }

  nnmkAccount = [accountCopy nnmkAccount];

  if (nnmkAccount)
  {
    nnmkAccount2 = [accountCopy nnmkAccount];
    [nnmkAccount2 setEmailAddressToken:credentialCopy];

    acAccount3 = [accountCopy nnmkAccount];
    [acAccount3 setPccEmailAddress:addressCopy];
LABEL_8:
  }

  [(NMCUIAccountDataSource *)self->_accountDataSource saveAccount:accountCopy completion:completionCopy];
}

- (void)handleAccountAuthenication:(id)authenication viewController:(id)controller stateUpdateHandler:(id)handler
{
  authenicationCopy = authenication;
  controllerCopy = controller;
  handlerCopy = handler;
  accountTypeIdentifier = [authenicationCopy accountTypeIdentifier];
  v12 = [accountTypeIdentifier isEqualToString:*MEMORY[0x277CB8C40]];

  if (v12)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v13 = getSLGoogleAuthControllerClass_softClass;
    v29 = getSLGoogleAuthControllerClass_softClass;
    if (!getSLGoogleAuthControllerClass_softClass)
    {
      location[0] = MEMORY[0x277D85DD0];
      location[1] = 3221225472;
      location[2] = __getSLGoogleAuthControllerClass_block_invoke;
      location[3] = &unk_279934660;
      location[4] = &v26;
      __getSLGoogleAuthControllerClass_block_invoke(location);
      v13 = v27[3];
    }

    v14 = v13;
    _Block_object_dispose(&v26, 8);
    v15 = [v13 alloc];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __104__NMCUICloudNotificationAccountDataSource_handleAccountAuthenication_viewController_stateUpdateHandler___block_invoke;
    v23[3] = &unk_2799346F0;
    v16 = controllerCopy;
    v24 = v16;
    v17 = [v15 initWithEmailOnlyScope:1 presentationBlock:v23];
    objc_initWeak(location, self);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __104__NMCUICloudNotificationAccountDataSource_handleAccountAuthenication_viewController_stateUpdateHandler___block_invoke_2;
    v18[3] = &unk_279934740;
    v19 = authenicationCopy;
    objc_copyWeak(&v22, location);
    v20 = v16;
    v21 = handlerCopy;
    [v17 setCompletion:v18];

    objc_destroyWeak(&v22);
    objc_destroyWeak(location);
  }
}

void __104__NMCUICloudNotificationAccountDataSource_handleAccountAuthenication_viewController_stateUpdateHandler___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __104__NMCUICloudNotificationAccountDataSource_handleAccountAuthenication_viewController_stateUpdateHandler___block_invoke_3;
  v9[3] = &unk_279934718;
  v10 = v5;
  v11 = v6;
  v12 = a1[4];
  v7 = v6;
  v8 = v5;
  objc_copyWeak(&v15, a1 + 7);
  v13 = a1[5];
  v14 = a1[6];
  dispatch_async(MEMORY[0x277D85CD0], v9);

  objc_destroyWeak(&v15);
}

void __104__NMCUICloudNotificationAccountDataSource_handleAccountAuthenication_viewController_stateUpdateHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && !*(a1 + 40))
  {
    v10 = [v2 username];
    v11 = [*(a1 + 48) username];
    v12 = [v10 compare:v11 options:1];

    if (v12)
    {
      v13 = qword_27FA3F1E0;
      if (os_log_type_enabled(qword_27FA3F1E0, OS_LOG_TYPE_ERROR))
      {
        __104__NMCUICloudNotificationAccountDataSource_handleAccountAuthenication_viewController_stateUpdateHandler___block_invoke_3_cold_1(v13);
      }

      v14 = MEMORY[0x277D75110];
      v15 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoMailCompanionUI"];
      v16 = [v15 localizedStringForKey:@"AUTHENTICATION_FAILURE_ALERT_TITLE" value:&stru_286C65BF0 table:@"NanoMailCompanionUI"];
      v17 = MEMORY[0x277CCACA8];
      v18 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoMailCompanionUI"];
      v19 = [v18 localizedStringForKey:@"AUTHENTICATION_FAILURE_INCORRECT_ACCOUNT_ALERT_DETAILS_FORMAT %@" value:&stru_286C65BF0 table:@"NanoMailCompanionUI"];
      v20 = [*(a1 + 48) username];
      v21 = [v17 stringWithFormat:v19, v20];
      v22 = [v14 alertControllerWithTitle:v16 message:v21 preferredStyle:1];

      v23 = MEMORY[0x277D750F8];
      v24 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoMailCompanionUI"];
      v25 = [v24 localizedStringForKey:@"CANCEL_ALERT_BUTTON" value:&stru_286C65BF0 table:@"NanoMailCompanionUI"];
      v26 = [v23 actionWithTitle:v25 style:1 handler:0];

      [v22 addAction:v26];
      [*(a1 + 56) presentViewController:v22 animated:1 completion:0];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((a1 + 72));
      v28 = qword_27FA3F1E0;
      if (os_log_type_enabled(qword_27FA3F1E0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B191000, v28, OS_LOG_TYPE_DEFAULT, "Cloud Notifications: Google authentication succeeded. Getting token.", buf, 2u);
      }

      [WeakRetained savePCCCredentialForAccount:*(a1 + 48) identity:*(a1 + 32) viewController:*(a1 + 56) stateUpdateHandler:*(a1 + 64)];
    }
  }

  else
  {
    v3 = qword_27FA3F1E0;
    if (os_log_type_enabled(qword_27FA3F1E0, OS_LOG_TYPE_ERROR))
    {
      __104__NMCUICloudNotificationAccountDataSource_handleAccountAuthenication_viewController_stateUpdateHandler___block_invoke_3_cold_2(a1, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)savePCCCredentialForAccount:(id)account identity:(id)identity viewController:(id)controller stateUpdateHandler:(id)handler
{
  v57[1] = *MEMORY[0x277D85DE8];
  accountCopy = account;
  identityCopy = identity;
  controllerCopy = controller;
  handlerCopy = handler;
  pendingAccountIds = [(NMCUICloudNotificationAccountDataSource *)self pendingAccountIds];
  identifier = [accountCopy identifier];
  [pendingAccountIds addObject:identifier];

  handlerCopy[2](handlerCopy);
  idToken = [identityCopy idToken];
  v55 = 0;
  v16 = [(NMCUICloudNotificationAccountDataSource *)self _emailAddressFromJWTToken:idToken error:&v55];
  v17 = v55;

  if (v16)
  {
    inited = objc_initWeak(&location, self);
    NNMKURLRequestClass = getNNMKURLRequestClass(inited, v19, v20, v21, v22, v23, v24, v25);
    v34 = [getNNMKURLRequestClass(NNMKURLRequestClass v27];
    v56 = @"idToken";
    idToken2 = [identityCopy idToken];
    v57[0] = idToken2;
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:&v56 count:1];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __114__NMCUICloudNotificationAccountDataSource_savePCCCredentialForAccount_identity_viewController_stateUpdateHandler___block_invoke;
    v48[3] = &unk_2799347B8;
    objc_copyWeak(&v53, &location);
    v49 = controllerCopy;
    v50 = accountCopy;
    v52 = handlerCopy;
    v51 = v16;
    [NNMKURLRequestClass postRequestWithBaseURLString:v34 path:@"/gmail/authenticateEmail" body:v36 token:0 needsBAA:1 completion:v48];

    objc_destroyWeak(&v53);
    objc_destroyWeak(&location);
  }

  else
  {
    v37 = qword_27FA3F1E0;
    if (os_log_type_enabled(qword_27FA3F1E0, OS_LOG_TYPE_ERROR))
    {
      [(NMCUICloudNotificationAccountDataSource *)v17 savePCCCredentialForAccount:v37 identity:v38 viewController:v39 stateUpdateHandler:v40, v41, v42, v43];
    }

    pendingAccountIds2 = [(NMCUICloudNotificationAccountDataSource *)self pendingAccountIds];
    identifier2 = [accountCopy identifier];
    [pendingAccountIds2 removeObject:identifier2];

    handlerCopy[2](handlerCopy);
  }

  v46 = *MEMORY[0x277D85DE8];
}

void __114__NMCUICloudNotificationAccountDataSource_savePCCCredentialForAccount_identity_viewController_stateUpdateHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = [v5 objectForKeyedSubscript:@"emailAuthToken"];
  v9 = v8;
  if (v6 || !v8)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __114__NMCUICloudNotificationAccountDataSource_savePCCCredentialForAccount_identity_viewController_stateUpdateHandler___block_invoke_2;
    block[3] = &unk_279934768;
    v16 = v6;
    v17 = *(a1 + 32);
    v18 = WeakRetained;
    v19 = *(a1 + 40);
    v20 = *(a1 + 56);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __114__NMCUICloudNotificationAccountDataSource_savePCCCredentialForAccount_identity_viewController_stateUpdateHandler___block_invoke_70;
    v12[3] = &unk_279934790;
    objc_copyWeak(&v14, (a1 + 64));
    v13 = *(a1 + 40);
    [WeakRetained saveCredential:v9 emailAddress:v10 forAccount:v11 completion:v12];

    objc_destroyWeak(&v14);
  }
}

void __114__NMCUICloudNotificationAccountDataSource_savePCCCredentialForAccount_identity_viewController_stateUpdateHandler___block_invoke_2(uint64_t a1)
{
  v2 = qword_27FA3F1E0;
  if (os_log_type_enabled(qword_27FA3F1E0, OS_LOG_TYPE_ERROR))
  {
    __114__NMCUICloudNotificationAccountDataSource_savePCCCredentialForAccount_identity_viewController_stateUpdateHandler___block_invoke_2_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  v9 = MEMORY[0x277D75110];
  v10 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoMailCompanionUI"];
  v11 = [v10 localizedStringForKey:@"AUTHENTICATION_FAILURE_ALERT_TITLE" value:&stru_286C65BF0 table:@"NanoMailCompanionUI"];
  v12 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoMailCompanionUI"];
  v13 = [v12 localizedStringForKey:@"AUTHENTICATION_SERVER__FAILURE_ALERT_DETAILS" value:&stru_286C65BF0 table:@"NanoMailCompanionUI"];
  v14 = [v9 alertControllerWithTitle:v11 message:v13 preferredStyle:1];

  v15 = MEMORY[0x277D750F8];
  v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoMailCompanionUI"];
  v17 = [v16 localizedStringForKey:@"CANCEL_ALERT_BUTTON" value:&stru_286C65BF0 table:@"NanoMailCompanionUI"];
  v18 = [v15 actionWithTitle:v17 style:1 handler:0];

  [v14 addAction:v18];
  [*(a1 + 40) presentViewController:v14 animated:1 completion:0];
  v19 = [*(a1 + 48) pendingAccountIds];
  v20 = [*(a1 + 56) identifier];
  [v19 removeObject:v20];

  (*(*(a1 + 64) + 16))();
}

void __114__NMCUICloudNotificationAccountDataSource_savePCCCredentialForAccount_identity_viewController_stateUpdateHandler___block_invoke_70(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained pendingAccountIds];
  v8 = *(a1 + 32);
  v7 = (a1 + 32);
  v9 = [v8 identifier];
  [v6 removeObject:v9];

  if (v4)
  {
    v10 = qword_27FA3F1E0;
    if (os_log_type_enabled(qword_27FA3F1E0, OS_LOG_TYPE_ERROR))
    {
      __114__NMCUICloudNotificationAccountDataSource_savePCCCredentialForAccount_identity_viewController_stateUpdateHandler___block_invoke_70_cold_1(v4, v7, v10);
    }
  }
}

- (void)_displayFailedToSaveAlertShouldDismiss:(BOOL)dismiss viewController:(id)controller
{
  v4 = MEMORY[0x277D75110];
  v5 = MEMORY[0x277CCA8D8];
  controllerCopy = controller;
  v7 = [v5 bundleWithIdentifier:@"com.apple.NanoMailCompanionUI"];
  v8 = [v7 localizedStringForKey:@"FAILED_TO_SAVE" value:&stru_286C65BF0 table:@"NanoMailCompanionUI"];
  v9 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoMailCompanionUI"];
  v10 = [v9 localizedStringForKey:@"PLEASE_TRY_AGAIN" value:&stru_286C65BF0 table:@"NanoMailCompanionUI"];
  v15 = [v4 alertControllerWithTitle:v8 message:v10 preferredStyle:1];

  v11 = MEMORY[0x277D750F8];
  v12 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoMailCompanionUI"];
  v13 = [v12 localizedStringForKey:@"OK_ALERT_BUTTON" value:&stru_286C65BF0 table:@"NanoMailCompanionUI"];
  v14 = [v11 actionWithTitle:v13 style:1 handler:0];
  [v15 addAction:v14];

  [controllerCopy presentViewController:v15 animated:1 completion:0];
}

- (id)_emailAddressFromJWTToken:(id)token error:(id *)error
{
  v6 = [token componentsSeparatedByString:@"."];
  if ([v6 count] == 3)
  {
    v7 = objc_alloc(MEMORY[0x277CBEA90]);
    v8 = [v6 objectAtIndexedSubscript:1];
    v9 = [(NMCUICloudNotificationAccountDataSource *)self _ensureValidBase64String:v8];
    v10 = [v7 initWithBase64EncodedString:v9 options:1];

    if (v10 && ([MEMORY[0x277CCAAA0] JSONObjectWithData:v10 options:0 error:error], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = v11;
      v13 = [v11 objectForKeyedSubscript:@"email"];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_ensureValidBase64String:(id)string
{
  stringCopy = string;
  if (([stringCopy length] & 3) != 0)
  {
    v4 = [stringCopy stringByPaddingToLength:objc_msgSend(stringCopy withString:"length") - (objc_msgSend(stringCopy startingAtIndex:{"length") & 3) + 4, @"=", 0}];
  }

  else
  {
    v4 = stringCopy;
  }

  v5 = v4;

  return v5;
}

- (void)_handleDidUnpair
{
  domainAccessor = self->_domainAccessor;
  self->_domainAccessor = 0;
  MEMORY[0x2821F96F8]();
}

- (void)_handlePairedDeviceChanged
{
  domainAccessor = self->_domainAccessor;
  self->_domainAccessor = 0;
  MEMORY[0x2821F96F8]();
}

- (NPSDomainAccessor)domainAccessor
{
  domainAccessor = self->_domainAccessor;
  if (!domainAccessor)
  {
    v4 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.NanoMail"];
    v5 = self->_domainAccessor;
    self->_domainAccessor = v4;

    domainAccessor = self->_domainAccessor;
  }

  return domainAccessor;
}

- (id)_getValueForKey:(id)key
{
  keyCopy = key;
  domainAccessor = [(NMCUICloudNotificationAccountDataSource *)self domainAccessor];
  synchronize = [domainAccessor synchronize];

  domainAccessor2 = [(NMCUICloudNotificationAccountDataSource *)self domainAccessor];
  v8 = [domainAccessor2 objectForKey:keyCopy];

  return v8;
}

- (void)_setValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  domainAccessor = [(NMCUICloudNotificationAccountDataSource *)self domainAccessor];
  v8 = [domainAccessor objectForKey:keyCopy];

  if (([v8 isEqual:valueCopy] & 1) == 0)
  {
    domainAccessor2 = [(NMCUICloudNotificationAccountDataSource *)self domainAccessor];
    [domainAccessor2 setObject:valueCopy forKey:keyCopy];

    domainAccessor3 = [(NMCUICloudNotificationAccountDataSource *)self domainAccessor];
    synchronize = [domainAccessor3 synchronize];

    syncManager = self->_syncManager;
    v13 = [MEMORY[0x277CBEB98] setWithObject:keyCopy];
    [(NPSManager *)syncManager synchronizeNanoDomain:@"com.apple.NanoMail" keys:v13];
  }
}

void __104__NMCUICloudNotificationAccountDataSource_handleAccountAuthenication_viewController_stateUpdateHandler___block_invoke_3_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 40));
  OUTLINED_FUNCTION_0(&dword_25B191000, a2, a3, "Cloud Notifications: Google authentication failed. %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)savePCCCredentialForAccount:(uint64_t)a3 identity:(uint64_t)a4 viewController:(uint64_t)a5 stateUpdateHandler:(uint64_t)a6 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_25B191000, a2, a3, "Cloud Notifications: unable to parse email from token %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __114__NMCUICloudNotificationAccountDataSource_savePCCCredentialForAccount_identity_viewController_stateUpdateHandler___block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_0(&dword_25B191000, a2, a3, "Cloud Notifications: PCC Error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __114__NMCUICloudNotificationAccountDataSource_savePCCCredentialForAccount_identity_viewController_stateUpdateHandler___block_invoke_70_cold_1(uint64_t a1, void **a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = a3;
  v6 = [v4 identifier];
  v8 = 138543618;
  v9 = a1;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_25B191000, v5, OS_LOG_TYPE_ERROR, "Failed to update account to device, Error: %{public}@, Account: %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end