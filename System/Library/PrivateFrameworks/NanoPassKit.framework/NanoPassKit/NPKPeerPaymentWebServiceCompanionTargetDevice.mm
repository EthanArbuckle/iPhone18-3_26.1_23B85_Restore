@interface NPKPeerPaymentWebServiceCompanionTargetDevice
+ (void)attemptToDownloadPeerPaymentPassAtURL:(id)l withWebService:(id)service completion:(id)completion;
- (BOOL)userHasDisabledPeerPayment;
- (NPKPeerPaymentWebServiceCompanionTargetDevice)init;
- (PKPeerPaymentWebService)peerPaymentWebService;
- (id)account;
- (id)appleAccountInformation;
- (id)preferences;
- (void)_handleAccountChanged:(id)changed;
- (void)checkTLKsMissingWithCompletion:(id)completion;
- (void)cloudStoreStatusWithCompletion:(id)completion;
- (void)dealloc;
- (void)downloadPassIfNecessaryWithCompletion:(id)completion;
- (void)initalizeCloudStoreIfNecessaryWithCompletion:(id)completion;
- (void)initalizeCloudStoreIfNecessaryWithHandler:(id)handler;
- (void)peerPaymentReRegisterWithURL:(id)l pushToken:(id)token peerPaymentWebService:(id)service completion:(id)completion;
- (void)provisionPeerPaymentPassWithProvisioningController:(id)controller credential:(id)credential completion:(id)completion;
- (void)resetApplePayManateeViewWithCompletion:(id)completion;
- (void)setPreferences:(id)preferences completion:(id)completion;
- (void)updateAccountWithCompletion:(id)completion;
@end

@implementation NPKPeerPaymentWebServiceCompanionTargetDevice

+ (void)attemptToDownloadPeerPaymentPassAtURL:(id)l withWebService:(id)service completion:(id)completion
{
  lCopy = l;
  serviceCopy = service;
  completionCopy = completion;
  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Attempting to download peer payment pass following provisioning", buf, 2u);
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __113__NPKPeerPaymentWebServiceCompanionTargetDevice_attemptToDownloadPeerPaymentPassAtURL_withWebService_completion___block_invoke;
  v15[3] = &unk_279947520;
  v16 = serviceCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = serviceCopy;
  [v14 passAtURL:lCopy completion:v15];
}

void __113__NPKPeerPaymentWebServiceCompanionTargetDevice_attemptToDownloadPeerPaymentPassAtURL_withWebService_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 == 1 && v5)
  {
    v7 = [MEMORY[0x277D37E18] sharedInstance];
    v8 = [v6 dataAccessor];
    v9 = NPKPairedDeviceSecureElementIdentifiers();
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __113__NPKPeerPaymentWebServiceCompanionTargetDevice_attemptToDownloadPeerPaymentPassAtURL_withWebService_completion___block_invoke_2;
    v11[3] = &unk_279946698;
    v12 = *(a1 + 32);
    v13 = v6;
    v14 = *(a1 + 40);
    [v8 downloadRemoteAssetsWithCloudStoreCoordinatorDelegate:v7 seids:v9 completion:v11];
  }

  else
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))();
    }
  }
}

void __113__NPKPeerPaymentWebServiceCompanionTargetDevice_attemptToDownloadPeerPaymentPassAtURL_withWebService_completion___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) targetDevice];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __113__NPKPeerPaymentWebServiceCompanionTargetDevice_attemptToDownloadPeerPaymentPassAtURL_withWebService_completion___block_invoke_3;
    v6[3] = &unk_279945198;
    v7 = *(a1 + 48);
    [v3 paymentWebService:v4 addPaymentPass:v5 withCompletionHandler:v6];
  }
}

uint64_t __113__NPKPeerPaymentWebServiceCompanionTargetDevice_attemptToDownloadPeerPaymentPassAtURL_withWebService_completion___block_invoke_3(uint64_t a1)
{
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Added payment pass following provisioning", v6, 2u);
    }
  }

  return (*(*(a1 + 32) + 16))();
}

- (NPKPeerPaymentWebServiceCompanionTargetDevice)init
{
  v5.receiver = self;
  v5.super_class = NPKPeerPaymentWebServiceCompanionTargetDevice;
  v2 = [(NPKPeerPaymentWebServiceCompanionTargetDevice *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleAccountChanged_ name:@"NPKSharedPeerPaymentAccountDidChangeNotification" object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = NPKPeerPaymentWebServiceCompanionTargetDevice;
  [(NPKPeerPaymentWebServiceCompanionTargetDevice *)&v4 dealloc];
}

- (void)downloadPassIfNecessaryWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 1);
  }
}

- (id)account
{
  v2 = +[NPKSharedWebServiceProvider sharedWebServiceProvider];
  peerPaymentAccount = [v2 peerPaymentAccount];

  return peerPaymentAccount;
}

- (void)updateAccountWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[NPKSharedWebServiceProvider sharedWebServiceProvider];
  targetDevice = [v4 targetDevice];

  [targetDevice updatePeerPaymentAccountWithCompletion:completionCopy];
}

- (BOOL)userHasDisabledPeerPayment
{
  v2 = NPKDomainAccessorForDomain(@".GlobalPreferences");
  v3 = [v2 BOOLForKey:*MEMORY[0x277D38A78]];

  return v3;
}

- (void)provisionPeerPaymentPassWithProvisioningController:(id)controller credential:(id)credential completion:(id)completion
{
  completionCopy = completion;
  controllerCopy = controller;
  v9 = +[NPKSharedWebServiceProvider sharedWebServiceProvider];
  targetDevice = [v9 targetDevice];

  webService = [controllerCopy webService];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __122__NPKPeerPaymentWebServiceCompanionTargetDevice_provisionPeerPaymentPassWithProvisioningController_credential_completion___block_invoke;
  v14[3] = &unk_279947548;
  v14[4] = self;
  v15 = webService;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = webService;
  [targetDevice provisionPeerPaymentPassWithCompletion:v14];
}

void __122__NPKPeerPaymentWebServiceCompanionTargetDevice_provisionPeerPaymentPassWithProvisioningController_credential_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = [*(a1 + 32) account];
    v8 = [v7 associatedPassURL];

    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = objc_opt_class();
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __122__NPKPeerPaymentWebServiceCompanionTargetDevice_provisionPeerPaymentPassWithProvisioningController_credential_completion___block_invoke_2;
      v22[3] = &unk_279945700;
      v11 = *(a1 + 40);
      v24 = *(a1 + 48);
      v25 = a2;
      v23 = v6;
      [v10 attemptToDownloadPeerPaymentPassAtURL:v8 withWebService:v11 completion:v22];
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v12 = [v5 domain];
    v13 = [v12 isEqualToString:@"com.apple.NPKErrorDomain"];

    if (v13)
    {
      v14 = *(a1 + 32);
      v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:@"GIZMO_UNREACHABLE_ALERT_TITLE" value:&stru_286C934F8 table:@"NanoPassKit"];
      v17 = *(a1 + 32);
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"GIZMO_UNREACHABLE_ALERT_MESSAGE" value:&stru_286C934F8 table:@"NanoPassKit"];
      v20 = PKDisplayableErrorCustom();

      v6 = v20;
    }
  }

  v21 = *(a1 + 48);
  if (v21)
  {
    (*(v21 + 16))(v21, a2, v6);
  }
}

- (void)initalizeCloudStoreIfNecessaryWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[NPKSharedWebServiceProvider sharedWebServiceProvider];
  targetDevice = [v4 targetDevice];

  [targetDevice initializeCloudStoreIfNecessaryWithCompletion:completionCopy];
}

- (void)initalizeCloudStoreIfNecessaryWithHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[NPKSharedWebServiceProvider sharedWebServiceProvider];
  targetDevice = [v4 targetDevice];

  [targetDevice initializeCloudStoreIfNecessaryWithHandler:handlerCopy];
}

- (void)checkTLKsMissingWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[NPKSharedWebServiceProvider sharedWebServiceProvider];
  targetDevice = [v4 targetDevice];

  [targetDevice checkTLKsMissingWithCompletion:completionCopy];
}

- (void)resetApplePayManateeViewWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[NPKSharedWebServiceProvider sharedWebServiceProvider];
  targetDevice = [v4 targetDevice];

  [targetDevice resetApplePayManateeViewWithCompletion:completionCopy];
}

- (void)cloudStoreStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[NPKSharedWebServiceProvider sharedWebServiceProvider];
  targetDevice = [v4 targetDevice];

  [targetDevice cloudStoreStatusWithCompletion:completionCopy];
}

- (void)peerPaymentReRegisterWithURL:(id)l pushToken:(id)token peerPaymentWebService:(id)service completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  v9 = +[NPKSharedWebServiceProvider sharedWebServiceProvider];
  targetDevice = [v9 targetDevice];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __121__NPKPeerPaymentWebServiceCompanionTargetDevice_peerPaymentReRegisterWithURL_pushToken_peerPaymentWebService_completion___block_invoke;
  v12[3] = &unk_279947570;
  v13 = completionCopy;
  v11 = completionCopy;
  [targetDevice peerPaymentRegisterWithURL:lCopy forceReRegistration:1 completion:v12];
}

void __121__NPKPeerPaymentWebServiceCompanionTargetDevice_peerPaymentReRegisterWithURL_pushToken_peerPaymentWebService_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109378;
      v11[1] = a2;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Calling peerPaymentReRegisterWithURL:pushToken: completion with success %i error %@", v11, 0x12u);
    }
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleAccountChanged:(id)changed
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x277D38970] object:self userInfo:0];
}

- (id)appleAccountInformation
{
  mEMORY[0x277D37D38] = [MEMORY[0x277D37D38] sharedInstance];
  appleAccountInformation = [mEMORY[0x277D37D38] appleAccountInformation];

  return appleAccountInformation;
}

- (id)preferences
{
  v2 = NPKPairedDevicePeerPaymentPreferences();
  if (v2)
  {
    preferences = v2;
    goto LABEL_11;
  }

  v4 = NPKPairedOrPairingDevice();
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"47B09AC1-3757-485D-9FB4-F124AC8FE430"];
  v6 = [v4 supportsCapability:v5];

  if (v6)
  {
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277D381A0]);
    preferences = [v7 preferences];

    if (preferences)
    {
      goto LABEL_11;
    }
  }

  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Missing peer payment preferences for paring paired device", v12, 2u);
    }
  }

  preferences = 0;
LABEL_11:

  return preferences;
}

- (void)setPreferences:(id)preferences completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  preferencesCopy = preferences;
  completionCopy = completion;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = preferencesCopy;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Requested to set peer payment preferences:%@", buf, 0xCu);
    }
  }

  v11 = NPKPairedOrPairingDevice();
  v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"47B09AC1-3757-485D-9FB4-F124AC8FE430"];
  v13 = [v11 supportsCapability:v12];

  if (v13)
  {
    v14 = +[NPKSharedWebServiceProvider sharedWebServiceProvider];
    targetDevice = [v14 targetDevice];

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __75__NPKPeerPaymentWebServiceCompanionTargetDevice_setPreferences_completion___block_invoke;
    v26[3] = &unk_279947598;
    v27 = completionCopy;
    [targetDevice setPeerPaymentPreferences:preferencesCopy completion:v26];
    v16 = v27;
LABEL_13:

    goto LABEL_14;
  }

  WeakRetained = objc_loadWeakRetained(&self->_peerPaymentWebService);

  v18 = pk_General_log();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

  if (WeakRetained)
  {
    if (v19)
    {
      v20 = pk_General_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_DEFAULT, "Notice: Falling back to setting preferences via peer payment web service", buf, 2u);
      }
    }

    targetDevice = [objc_alloc(MEMORY[0x277D381A8]) initWithPeerPaymentPreferences:preferencesCopy];
    v21 = objc_loadWeakRetained(&self->_peerPaymentWebService);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __75__NPKPeerPaymentWebServiceCompanionTargetDevice_setPreferences_completion___block_invoke_96;
    v24[3] = &unk_2799475C0;
    v24[4] = self;
    v25 = completionCopy;
    [v21 peerPaymentUpdatePreferencesWithRequest:targetDevice completion:v24];

    v16 = v25;
    goto LABEL_13;
  }

  if (v19)
  {
    v23 = pk_General_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v23, OS_LOG_TYPE_DEFAULT, "Warning: No peer payment web service; not setting preferences", buf, 2u);
    }
  }

  targetDevice = [(NPKPeerPaymentWebServiceCompanionTargetDevice *)self preferences];
  (*(completionCopy + 2))(completionCopy, targetDevice, 0);
LABEL_14:

  v22 = *MEMORY[0x277D85DE8];
}

void __75__NPKPeerPaymentWebServiceCompanionTargetDevice_setPreferences_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Calling setPreferences:completion: completion with preferences %@ error %@", &v12, 0x16u);
    }
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __75__NPKPeerPaymentWebServiceCompanionTargetDevice_setPreferences_completion___block_invoke_96(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = [a2 peerPaymentPreferences];
  if (v9)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = [*(a1 + 32) preferences];
      (*(v6 + 16))(v6, v7, v9);
    }
  }

  else
  {
    [v5 setDirty:0];
    NPKPairedDeviceSetPeerPaymentPreferences(v5);
    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, v5, 0);
    }
  }
}

- (PKPeerPaymentWebService)peerPaymentWebService
{
  WeakRetained = objc_loadWeakRetained(&self->_peerPaymentWebService);

  return WeakRetained;
}

@end