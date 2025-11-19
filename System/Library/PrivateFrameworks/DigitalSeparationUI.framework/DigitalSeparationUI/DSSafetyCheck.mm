@interface DSSafetyCheck
+ (BOOL)isManagedAccount;
+ (BOOL)shouldShowHSA2Upgrade;
+ (BOOL)startWithPresentingViewController:(id)a3 withURL:(id)a4;
+ (id)safetyCheckViewController;
+ (void)authForSafetyCheckWithPresentingViewController:(id)a3 safetyCheckController:(id)a4;
+ (void)isChildOrTeenAccountWithCompletion:(id)a3;
+ (void)isManagedAccount;
+ (void)presentSafetyCheckWithViewController:(id)a3 navigationController:(id)a4;
+ (void)showHSA2UpgradeWithPresentingViewController:(id)a3 safetyCheckController:(id)a4;
+ (void)showManagedAccountAlertWithPresentingViewController:(id)a3;
+ (void)showlearnMoreForPresentingViewController:(id)a3 withURL:(id)a4;
+ (void)startEmergencyResetWithPresentingViewController:(id)a3;
+ (void)startManageSharingWithPresentingViewController:(id)a3;
+ (void)startReviewDeviceAccessWithPresentingViewController:(id)a3;
+ (void)startSafetyCheckWithPresentingViewController:(id)a3 safetyCheckController:(id)a4;
@end

@implementation DSSafetyCheck

+ (id)safetyCheckViewController
{
  v2 = objc_alloc_init(DSNavigationController);

  return v2;
}

+ (void)startSafetyCheckWithPresentingViewController:(id)a3 safetyCheckController:(id)a4
{
  v6 = a3;
  v5 = a4;
  if (+[DSSafetyCheck isManagedAccount])
  {
    [DSSafetyCheck showManagedAccountAlertWithPresentingViewController:v6];
  }

  else if (+[DSSafetyCheck shouldShowHSA2Upgrade])
  {
    [DSSafetyCheck showHSA2UpgradeWithPresentingViewController:v6 safetyCheckController:v5];
  }

  else if ([DSSafetyCheck shouldSkipAuthenticationForController:v5])
  {
    [DSSafetyCheck presentSafetyCheckWithViewController:v6 navigationController:v5];
  }

  else
  {
    [DSSafetyCheck authForSafetyCheckWithPresentingViewController:v6 safetyCheckController:v5];
  }
}

+ (void)startEmergencyResetWithPresentingViewController:(id)a3
{
  v4 = a3;
  v5 = [[DSNavigationController alloc] initStartingWithEmergencyReset];
  [a1 startSafetyCheckWithPresentingViewController:v4 safetyCheckController:v5];
}

+ (void)startManageSharingWithPresentingViewController:(id)a3
{
  v4 = a3;
  v5 = [[DSNavigationController alloc] initStartingWithMangeSharing];
  [a1 startSafetyCheckWithPresentingViewController:v4 safetyCheckController:v5];
}

+ (BOOL)startWithPresentingViewController:(id)a3 withURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[DSNavigationController alloc] initStartingWithURL:v7];
  if (v8)
  {
    [a1 startSafetyCheckWithPresentingViewController:v6 safetyCheckController:v8];
  }

  else
  {
    v9 = [v7 objectForKey:@"path"];
    if ([v9 containsString:@"#root"])
    {
      AnalyticsSendEventLazy();
    }
  }

  return v8 != 0;
}

+ (void)authForSafetyCheckWithPresentingViewController:(id)a3 safetyCheckController:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v26 = v7;
    v27 = v10;
    v29 = a1;
    v28 = v6;
    [v27 evaluatePolicy:2 localizedReason:v14 reply:v25];

    v15 = v26;
LABEL_3:

    goto LABEL_12;
  }

  v16 = [v12 domain];
  if ([v16 isEqualToString:*MEMORY[0x277CD4770]])
  {
    v17 = [v13 code];

    if (v17 == -5)
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
      v20 = v7;
      v21 = v10;
      v23 = a1;
      v22 = v6;
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

+ (void)presentSafetyCheckWithViewController:(id)a3 navigationController:(id)a4
{
  v5 = a4;
  [a3 presentViewController:v5 animated:1 completion:&__block_literal_global_360];
  [DSDTOManager isRatchetActiveWithCompletion:&__block_literal_global_365];
  v6 = v5;
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

+ (void)isChildOrTeenAccountWithCompletion:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D08280]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__DSSafetyCheck_isChildOrTeenAccountWithCompletion___block_invoke;
  v6[3] = &unk_278F758D8;
  v7 = v3;
  v5 = v3;
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
  v3 = [v2 aa_primaryAppleAccount];
  v4 = [MEMORY[0x277CF0130] sharedInstance];
  v5 = [v3 aa_altDSID];
  v11 = 0;
  v6 = [v4 authKitAccountWithAltDSID:v5 error:&v11];
  v7 = v11;

  if (v7 && os_log_type_enabled(DSLog_3, OS_LOG_TYPE_ERROR))
  {
    +[DSSafetyCheck isManagedAccount];
  }

  v8 = [MEMORY[0x277CF0130] sharedInstance];
  v9 = [v8 securityLevelForAccount:v6] == 5;

  return v9;
}

+ (void)showManagedAccountAlertWithPresentingViewController:(id)a3
{
  v3 = MEMORY[0x277D75110];
  v4 = a3;
  v5 = DSUILocStringForKey(@"MANAGED_ACCOUNT_TITLE");
  v6 = DSUILocStringForKey(@"MANAGED_ACCOUNT_DETAIL");
  v10 = [v3 alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v7 = MEMORY[0x277D750F8];
  v8 = DSUILocStringForKey(@"OK");
  v9 = [v7 actionWithTitle:v8 style:1 handler:&__block_literal_global_384_0];
  [v10 addAction:v9];

  [v4 presentViewController:v10 animated:1 completion:0];
  AnalyticsSendEventLazy();
}

+ (BOOL)shouldShowHSA2Upgrade
{
  v2 = objc_opt_new();
  v3 = [v2 aa_primaryAppleAccount];
  v4 = [MEMORY[0x277CF0130] sharedInstance];
  v5 = [v3 aa_altDSID];
  v11 = 0;
  v6 = [v4 authKitAccountWithAltDSID:v5 error:&v11];
  v7 = v11;

  if (v7 && os_log_type_enabled(DSLog_3, OS_LOG_TYPE_ERROR))
  {
    +[DSSafetyCheck isManagedAccount];
  }

  v8 = [MEMORY[0x277CF0130] sharedInstance];
  v9 = [v8 securityLevelForAccount:v6] != 4;

  return v9;
}

+ (void)showHSA2UpgradeWithPresentingViewController:(id)a3 safetyCheckController:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = [v7 aa_primaryAppleAccount];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 aa_altDSID];
    v11 = [objc_alloc(MEMORY[0x277CFDAE8]) initWithAltDSID:v10];
    [v11 setDeviceToDeviceEncryptionUpgradeUIStyle:0];
    [v11 setDeviceToDeviceEncryptionUpgradeType:1];
    v12 = DSUILocStringForKey(@"SAFETY_CHECK");
    [v11 setFeatureName:v12];

    [v11 setPresentingViewController:v5];
    v13 = [objc_alloc(MEMORY[0x277CFDAF0]) initWithContext:v11];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __83__DSSafetyCheck_showHSA2UpgradeWithPresentingViewController_safetyCheckController___block_invoke_3;
    v20[3] = &unk_278F75900;
    v21 = v5;
    v22 = v6;
    [v13 performDeviceToDeviceEncryptionStateRepairWithCompletion:v20];
  }

  else
  {
    v14 = MEMORY[0x277D75110];
    v15 = DSUILocStringForKey(@"HSA2_NOT_REPAIRED_TITLE");
    v16 = DSUILocStringForKey(@"HSA2_NOT_REPAIRED_DETAIL");
    v10 = [v14 alertControllerWithTitle:v15 message:v16 preferredStyle:1];

    v17 = MEMORY[0x277D750F8];
    v18 = DSUILocStringForKey(@"OK");
    v19 = [v17 actionWithTitle:v18 style:1 handler:&__block_literal_global_410];
    [v10 addAction:v19];

    [v5 presentViewController:v10 animated:1 completion:0];
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

+ (void)showlearnMoreForPresentingViewController:(id)a3 withURL:(id)a4
{
  v5 = MEMORY[0x277CDB708];
  v6 = a4;
  v7 = a3;
  v11 = objc_alloc_init(v5);
  [v11 _setEphemeral:1];
  v8 = objc_alloc(MEMORY[0x277CDB700]);
  v9 = [MEMORY[0x277CBEBC0] URLWithString:v6];

  v10 = [v8 initWithURL:v9 configuration:v11];
  [v7 presentViewController:v10 animated:1 completion:0];
}

+ (void)startReviewDeviceAccessWithPresentingViewController:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 sf_isiPhone];

  if (v5)
  {
    v6 = +[DSAlternateDeviceAccessManager sharedManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __69__DSSafetyCheck_startReviewDeviceAccessWithPresentingViewController___block_invoke;
    v8[3] = &unk_278F75950;
    v9 = v3;
    [v6 fetchAccessMethodsWithCompletion:v8];
  }

  else
  {
    v7 = [v3 presentingViewController];
    [v7 dismissViewControllerAnimated:1 completion:0];
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