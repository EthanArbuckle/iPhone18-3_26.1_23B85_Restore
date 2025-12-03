@interface DSSafetyCheck
+ (BOOL)isManagedAccount;
+ (BOOL)shouldShowHSA2Upgrade;
+ (BOOL)startWithPresentingViewController:(id)controller withURL:(id)l;
+ (id)safetyCheckViewController;
+ (void)authForSafetyCheckWithPresentingViewController:(id)controller safetyCheckController:(id)checkController;
+ (void)isChildOrTeenAccountWithCompletion:(id)completion;
+ (void)isManagedAccount;
+ (void)presentSafetyCheckWithViewController:(id)controller navigationController:(id)navigationController;
+ (void)showHSA2UpgradeWithPresentingViewController:(id)controller safetyCheckController:(id)checkController;
+ (void)showManagedAccountAlertWithPresentingViewController:(id)controller;
+ (void)showlearnMoreForPresentingViewController:(id)controller withURL:(id)l;
+ (void)startEmergencyResetWithPresentingViewController:(id)controller;
+ (void)startManageSharingWithPresentingViewController:(id)controller;
+ (void)startReviewDeviceAccessWithPresentingViewController:(id)controller;
+ (void)startSafetyCheckWithPresentingViewController:(id)controller safetyCheckController:(id)checkController;
@end

@implementation DSSafetyCheck

+ (id)safetyCheckViewController
{
  v2 = objc_alloc_init(DSNavigationController);

  return v2;
}

+ (void)startSafetyCheckWithPresentingViewController:(id)controller safetyCheckController:(id)checkController
{
  controllerCopy = controller;
  checkControllerCopy = checkController;
  if (+[DSSafetyCheck isManagedAccount])
  {
    [DSSafetyCheck showManagedAccountAlertWithPresentingViewController:controllerCopy];
  }

  else if (+[DSSafetyCheck shouldShowHSA2Upgrade])
  {
    [DSSafetyCheck showHSA2UpgradeWithPresentingViewController:controllerCopy safetyCheckController:checkControllerCopy];
  }

  else if ([DSSafetyCheck shouldSkipAuthenticationForController:checkControllerCopy])
  {
    [DSSafetyCheck presentSafetyCheckWithViewController:controllerCopy navigationController:checkControllerCopy];
  }

  else
  {
    [DSSafetyCheck authForSafetyCheckWithPresentingViewController:controllerCopy safetyCheckController:checkControllerCopy];
  }
}

+ (void)startEmergencyResetWithPresentingViewController:(id)controller
{
  controllerCopy = controller;
  initStartingWithEmergencyReset = [[DSNavigationController alloc] initStartingWithEmergencyReset];
  [self startSafetyCheckWithPresentingViewController:controllerCopy safetyCheckController:initStartingWithEmergencyReset];
}

+ (void)startManageSharingWithPresentingViewController:(id)controller
{
  controllerCopy = controller;
  initStartingWithMangeSharing = [[DSNavigationController alloc] initStartingWithMangeSharing];
  [self startSafetyCheckWithPresentingViewController:controllerCopy safetyCheckController:initStartingWithMangeSharing];
}

+ (BOOL)startWithPresentingViewController:(id)controller withURL:(id)l
{
  controllerCopy = controller;
  lCopy = l;
  v8 = [[DSNavigationController alloc] initStartingWithURL:lCopy];
  if (v8)
  {
    [self startSafetyCheckWithPresentingViewController:controllerCopy safetyCheckController:v8];
  }

  else
  {
    v9 = [lCopy objectForKey:@"path"];
    if ([v9 containsString:@"#root"])
    {
      AnalyticsSendEventLazy();
    }
  }

  return v8 != 0;
}

+ (void)authForSafetyCheckWithPresentingViewController:(id)controller safetyCheckController:(id)checkController
{
  controllerCopy = controller;
  checkControllerCopy = checkController;
  v8 = os_log_create("com.apple.DigitalSeparation", "DSSafetyCheck");
  v9 = DSLog_3;
  DSLog_3 = v8;

  v10 = objc_alloc_init(MEMORY[0x277CD4790]);
  v30 = 0;
  v11 = [v10 canEvaluatePolicy:2 error:&v30];
  v12 = v30;
  v13 = v12;
  if (v11)
  {
    v14 = DSUILocStringForKey(@"SAFETY_CHECK_AUTH_REASON");
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __86__DSSafetyCheck_authForSafetyCheckWithPresentingViewController_safetyCheckController___block_invoke;
    v25[3] = &unk_278F75890;
    v26 = checkControllerCopy;
    v27 = v10;
    selfCopy = self;
    v28 = controllerCopy;
    [v27 evaluatePolicy:2 localizedReason:v14 reply:v25];

    v15 = v26;
LABEL_3:

    goto LABEL_12;
  }

  domain = [v12 domain];
  if ([domain isEqualToString:*MEMORY[0x277CD4770]])
  {
    code = [v13 code];

    if (code == -5)
    {
      v18 = DSLog_3;
      if (os_log_type_enabled(DSLog_3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_248C7E000, v18, OS_LOG_TYPE_INFO, "Cannot evaluate authentication policy for Safety Check, no passcode set, allowing access.", buf, 2u);
      }

      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __86__DSSafetyCheck_authForSafetyCheckWithPresentingViewController_safetyCheckController___block_invoke_358;
      v19[3] = &unk_278F75868;
      v20 = checkControllerCopy;
      v21 = v10;
      selfCopy2 = self;
      v22 = controllerCopy;
      dispatch_async(MEMORY[0x277D85CD0], v19);

      v15 = v20;
      goto LABEL_3;
    }
  }

  else
  {
  }

  if (os_log_type_enabled(DSLog_3, OS_LOG_TYPE_ERROR))
  {
    +[DSSafetyCheck authForSafetyCheckWithPresentingViewController:safetyCheckController:];
  }

LABEL_12:
}

void __86__DSSafetyCheck_authForSafetyCheckWithPresentingViewController_safetyCheckController___block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = DSLog_3;
  if (!os_log_type_enabled(DSLog_3, OS_LOG_TYPE_INFO))
  {
    if (!a2)
    {
      goto LABEL_3;
    }

LABEL_6:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__DSSafetyCheck_authForSafetyCheckWithPresentingViewController_safetyCheckController___block_invoke_355;
    block[3] = &unk_278F75868;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v9 = *(a1 + 48);
    v7 = v9;
    v13 = v9;
    dispatch_async(MEMORY[0x277D85CD0], block);

    if (!v5)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  *buf = 67109120;
  v15 = a2;
  _os_log_impl(&dword_248C7E000, v6, OS_LOG_TYPE_INFO, "Asked user to auth for Safety Check on entry with success: %d", buf, 8u);
  if (a2)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (os_log_type_enabled(DSLog_3, OS_LOG_TYPE_ERROR))
  {
    __86__DSSafetyCheck_authForSafetyCheckWithPresentingViewController_safetyCheckController___block_invoke_cold_1();
  }

LABEL_9:

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __86__DSSafetyCheck_authForSafetyCheckWithPresentingViewController_safetyCheckController___block_invoke_355(uint64_t a1)
{
  [*(a1 + 32) setAuthContext:*(a1 + 40)];
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  v4 = *(a1 + 32);

  return [v2 presentSafetyCheckWithViewController:v3 navigationController:v4];
}

uint64_t __86__DSSafetyCheck_authForSafetyCheckWithPresentingViewController_safetyCheckController___block_invoke_358(uint64_t a1)
{
  [*(a1 + 32) setAuthContext:*(a1 + 40)];
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  v4 = *(a1 + 32);

  return [v2 presentSafetyCheckWithViewController:v3 navigationController:v4];
}

+ (void)presentSafetyCheckWithViewController:(id)controller navigationController:(id)navigationController
{
  navigationControllerCopy = navigationController;
  [controller presentViewController:navigationControllerCopy animated:1 completion:&__block_literal_global_360];
  [DSDTOManager isRatchetActiveWithCompletion:&__block_literal_global_365];
  v6 = navigationControllerCopy;
  AnalyticsSendEventLazy();
}

void __75__DSSafetyCheck_presentSafetyCheckWithViewController_navigationController___block_invoke()
{
  v0 = +[DSDeviceManager sharedInstance];
  [v0 appDidLaunch];
}

uint64_t __75__DSSafetyCheck_presentSafetyCheckWithViewController_navigationController___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    return +[DSDTOManager protectUserLocationOnWebDuringDTO];
  }

  return result;
}

id __75__DSSafetyCheck_presentSafetyCheckWithViewController_navigationController___block_invoke_3(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"entrypoint";
  v1 = [*(a1 + 32) entryMethod];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (void)isChildOrTeenAccountWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_alloc_init(MEMORY[0x277D08280]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__DSSafetyCheck_isChildOrTeenAccountWithCompletion___block_invoke;
  v6[3] = &unk_278F758D8;
  v7 = completionCopy;
  v5 = completionCopy;
  [v4 startRequestWithCompletionHandler:v6];
}

void __52__DSSafetyCheck_isChildOrTeenAccountWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.DigitalSeparation", "DSSafetyCheck");
    v8 = DSLog_3;
    DSLog_3 = v7;

    if (os_log_type_enabled(DSLog_3, OS_LOG_TYPE_ERROR))
    {
      __52__DSSafetyCheck_isChildOrTeenAccountWithCompletion___block_invoke_cold_1();
    }
  }

  [v5 members];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v19 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if ([v14 isMe] && objc_msgSend(v14, "memberType"))
        {
          (*(*(a1 + 32) + 16))();

          goto LABEL_15;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  (*(*(a1 + 32) + 16))();
LABEL_15:

  v15 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isManagedAccount
{
  v2 = objc_opt_new();
  aa_primaryAppleAccount = [v2 aa_primaryAppleAccount];
  mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
  aa_altDSID = [aa_primaryAppleAccount aa_altDSID];
  v11 = 0;
  v6 = [mEMORY[0x277CF0130] authKitAccountWithAltDSID:aa_altDSID error:&v11];
  v7 = v11;

  if (v7 && os_log_type_enabled(DSLog_3, OS_LOG_TYPE_ERROR))
  {
    +[DSSafetyCheck isManagedAccount];
  }

  mEMORY[0x277CF0130]2 = [MEMORY[0x277CF0130] sharedInstance];
  v9 = [mEMORY[0x277CF0130]2 securityLevelForAccount:v6] == 5;

  return v9;
}

+ (void)showManagedAccountAlertWithPresentingViewController:(id)controller
{
  v3 = MEMORY[0x277D75110];
  controllerCopy = controller;
  v5 = DSUILocStringForKey(@"MANAGED_ACCOUNT_TITLE");
  v6 = DSUILocStringForKey(@"MANAGED_ACCOUNT_DETAIL");
  v10 = [v3 alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v7 = MEMORY[0x277D750F8];
  v8 = DSUILocStringForKey(@"OK");
  v9 = [v7 actionWithTitle:v8 style:1 handler:&__block_literal_global_384_0];
  [v10 addAction:v9];

  [controllerCopy presentViewController:v10 animated:1 completion:0];
  AnalyticsSendEventLazy();
}

+ (BOOL)shouldShowHSA2Upgrade
{
  v2 = objc_opt_new();
  aa_primaryAppleAccount = [v2 aa_primaryAppleAccount];
  mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
  aa_altDSID = [aa_primaryAppleAccount aa_altDSID];
  v11 = 0;
  v6 = [mEMORY[0x277CF0130] authKitAccountWithAltDSID:aa_altDSID error:&v11];
  v7 = v11;

  if (v7 && os_log_type_enabled(DSLog_3, OS_LOG_TYPE_ERROR))
  {
    +[DSSafetyCheck isManagedAccount];
  }

  mEMORY[0x277CF0130]2 = [MEMORY[0x277CF0130] sharedInstance];
  v9 = [mEMORY[0x277CF0130]2 securityLevelForAccount:v6] != 4;

  return v9;
}

+ (void)showHSA2UpgradeWithPresentingViewController:(id)controller safetyCheckController:(id)checkController
{
  controllerCopy = controller;
  checkControllerCopy = checkController;
  v7 = objc_opt_new();
  aa_primaryAppleAccount = [v7 aa_primaryAppleAccount];
  v9 = aa_primaryAppleAccount;
  if (aa_primaryAppleAccount)
  {
    aa_altDSID = [aa_primaryAppleAccount aa_altDSID];
    v11 = [objc_alloc(MEMORY[0x277CFDAE8]) initWithAltDSID:aa_altDSID];
    [v11 setDeviceToDeviceEncryptionUpgradeUIStyle:0];
    [v11 setDeviceToDeviceEncryptionUpgradeType:1];
    v12 = DSUILocStringForKey(@"SAFETY_CHECK");
    [v11 setFeatureName:v12];

    [v11 setPresentingViewController:controllerCopy];
    v13 = [objc_alloc(MEMORY[0x277CFDAF0]) initWithContext:v11];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __83__DSSafetyCheck_showHSA2UpgradeWithPresentingViewController_safetyCheckController___block_invoke_3;
    v20[3] = &unk_278F75900;
    v21 = controllerCopy;
    v22 = checkControllerCopy;
    [v13 performDeviceToDeviceEncryptionStateRepairWithCompletion:v20];
  }

  else
  {
    v14 = MEMORY[0x277D75110];
    v15 = DSUILocStringForKey(@"HSA2_NOT_REPAIRED_TITLE");
    v16 = DSUILocStringForKey(@"HSA2_NOT_REPAIRED_DETAIL");
    aa_altDSID = [v14 alertControllerWithTitle:v15 message:v16 preferredStyle:1];

    v17 = MEMORY[0x277D750F8];
    v18 = DSUILocStringForKey(@"OK");
    v19 = [v17 actionWithTitle:v18 style:1 handler:&__block_literal_global_410];
    [aa_altDSID addAction:v19];

    [controllerCopy presentViewController:aa_altDSID animated:1 completion:0];
    AnalyticsSendEventLazy();
  }
}

void __83__DSSafetyCheck_showHSA2UpgradeWithPresentingViewController_safetyCheckController___block_invoke_3(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    AnalyticsSendEventLazy();
    [DSSafetyCheck authForSafetyCheckWithPresentingViewController:*(a1 + 32) safetyCheckController:*(a1 + 40)];
  }

  else
  {
    if (v5)
    {
      v7 = os_log_create("com.apple.DigitalSeparation", "DSSafetyCheck");
      v8 = DSLog_3;
      DSLog_3 = v7;

      if (os_log_type_enabled(DSLog_3, OS_LOG_TYPE_ERROR))
      {
        __83__DSSafetyCheck_showHSA2UpgradeWithPresentingViewController_safetyCheckController___block_invoke_3_cold_1();
      }

      v9 = MEMORY[0x277D75110];
      v10 = DSUILocStringForKey(@"HSA2_NOT_REPAIRED_TITLE");
      v11 = [v9 alertControllerWithTitle:v10 message:0 preferredStyle:1];

      v12 = MEMORY[0x277D750F8];
      v13 = DSUILocStringForKey(@"OK");
      v14 = [v12 actionWithTitle:v13 style:1 handler:&__block_literal_global_433];
      [v11 addAction:v14];

      [*(a1 + 32) presentViewController:v11 animated:1 completion:0];
    }

    AnalyticsSendEventLazy();
  }
}

+ (void)showlearnMoreForPresentingViewController:(id)controller withURL:(id)l
{
  v5 = MEMORY[0x277CDB708];
  lCopy = l;
  controllerCopy = controller;
  v11 = objc_alloc_init(v5);
  [v11 _setEphemeral:1];
  v8 = objc_alloc(MEMORY[0x277CDB700]);
  v9 = [MEMORY[0x277CBEBC0] URLWithString:lCopy];

  v10 = [v8 initWithURL:v9 configuration:v11];
  [controllerCopy presentViewController:v10 animated:1 completion:0];
}

+ (void)startReviewDeviceAccessWithPresentingViewController:(id)controller
{
  controllerCopy = controller;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sf_isiPhone = [currentDevice sf_isiPhone];

  if (sf_isiPhone)
  {
    v6 = +[DSAlternateDeviceAccessManager sharedManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __69__DSSafetyCheck_startReviewDeviceAccessWithPresentingViewController___block_invoke;
    v8[3] = &unk_278F75950;
    v9 = controllerCopy;
    [v6 fetchAccessMethodsWithCompletion:v8];
  }

  else
  {
    presentingViewController = [controllerCopy presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

void __69__DSSafetyCheck_startReviewDeviceAccessWithPresentingViewController___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__DSSafetyCheck_startReviewDeviceAccessWithPresentingViewController___block_invoke_2;
  block[3] = &unk_278F75928;
  v10 = a2;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __69__DSSafetyCheck_startReviewDeviceAccessWithPresentingViewController___block_invoke_2(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (*(a1 + 48) != 1)
  {
    if (!v2)
    {
LABEL_9:
      v13 = [*(a1 + 40) presentingViewController];
      [v13 dismissViewControllerAnimated:1 completion:0];

      return;
    }

LABEL_7:
    v4 = os_log_create("com.apple.DigitalSeparation", "DSSafetyCheck");
    v5 = DSLog_3;
    DSLog_3 = v4;

    v6 = DSLog_3;
    if (os_log_type_enabled(DSLog_3, OS_LOG_TYPE_ERROR))
    {
      __69__DSSafetyCheck_startReviewDeviceAccessWithPresentingViewController___block_invoke_2_cold_1(v3, v6, v7, v8, v9, v10, v11, v12);
    }

    goto LABEL_9;
  }

  if (v2)
  {
    goto LABEL_7;
  }

  v14 = +[DSAlternateDeviceAccessManager sharedManager];
  [v14 startPresentationWithNavigationController:*(a1 + 40)];
}

+ (void)authForSafetyCheckWithPresentingViewController:safetyCheckController:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_248C7E000, v0, v1, "Cannot evaluate authentication policy for Safety Check, error %@, returning.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __86__DSSafetyCheck_authForSafetyCheckWithPresentingViewController_safetyCheckController___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_248C7E000, v0, v1, "Error while evaluating authentication policy for Safety Check, error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __52__DSSafetyCheck_isChildOrTeenAccountWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_248C7E000, v0, v1, "Failed to fetch family members, error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)isManagedAccount
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_248C7E000, v0, v1, "Failed to fetch AK Account, error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __83__DSSafetyCheck_showHSA2UpgradeWithPresentingViewController_safetyCheckController___block_invoke_3_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_248C7E000, v0, v1, "Failed to complete HSA2 repair with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __69__DSSafetyCheck_startReviewDeviceAccessWithPresentingViewController___block_invoke_2_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0(&dword_248C7E000, a2, a3, "Failed to fetch all device access methods (%@), bailing...", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end