@interface MSDWelcomeViewController
+ (void)needsToRun:(id)a3;
- (BOOL)_bothWifiAndCellularActive;
- (MSDWelcomeViewController)init;
- (void)_checkIn;
- (void)_showCheckInErrorAlert;
- (void)_showNetworkInterfaceSelectionAlert;
- (void)_showNextView;
@end

@implementation MSDWelcomeViewController

+ (void)needsToRun:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(25, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__MSDWelcomeViewController_needsToRun___block_invoke;
  v7[3] = &unk_2798F1C98;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __39__MSDWelcomeViewController_needsToRun___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D29520] sharedInstance];
  v3 = [v2 isEnrolled:0];

  v4 = defaultLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v16 = 138543618;
    v17 = objc_opt_class();
    v18 = 1024;
    v19 = v3 ^ 1;
    v6 = v17;
    _os_log_impl(&dword_259BCA000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ needs to run: %{BOOL}d", &v16, 0x12u);
  }

  v7 = [MEMORY[0x277D29510] sharedInstance];
  v8 = [v7 isDeviceEnrolledWithDeKOTA:0];

  v9 = defaultLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 40);
    v11 = objc_opt_class();
    v16 = 138543618;
    v17 = v11;
    v18 = 1024;
    v19 = v8;
    v12 = v11;
    _os_log_impl(&dword_259BCA000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ needs to enable SEP demo mode: %{BOOL}d", &v16, 0x12u);
  }

  if (v8)
  {
    v13 = [MEMORY[0x277D29520] sharedInstance];
    [v13 setSEPDemoMode:1];
  }

  result = (*(*(a1 + 32) + 16))();
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (MSDWelcomeViewController)init
{
  v3 = [MSDSetupUILocalization localizedStringForKey:@"DEMO_SETUP_WAIT_TEXT"];
  v8.receiver = self;
  v8.super_class = MSDWelcomeViewController;
  v4 = [(OBSetupAssistantSpinnerController *)&v8 initWithSpinnerText:v3];
  if (v4)
  {
    v5 = +[MSDSetupUIController sharedInstance];
    [(MSDWelcomeViewController *)v4 setController:v5];

    [(MSDWelcomeViewController *)v4 setCurrentSSID:0];
    v6 = [(OBBaseWelcomeController *)v4 navigationItem];
    [v6 setHidesBackButton:1];
  }

  return v4;
}

- (BOOL)_bothWifiAndCellularActive
{
  if (([(MSDWelcomeViewController *)self activeNetworkInterface]& 1) != 0)
  {
    return ([(MSDWelcomeViewController *)self activeNetworkInterface]>> 1) & 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)_checkIn
{
  if (!os_variant_has_internal_content())
  {
LABEL_14:
    v12 = defaultLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259BCA000, v12, OS_LOG_TYPE_DEFAULT, "Checking In with Demo Unit ...", buf, 2u);
    }

    v13 = [MEMORY[0x277D29520] sharedInstance];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __36__MSDWelcomeViewController__checkIn__block_invoke;
    v14[3] = &unk_2798F1CE8;
    v14[4] = self;
    [v13 checkInWithCompletion:v14];

    return;
  }

  v3 = +[MSDTestPreferences sharedInstance];
  v4 = [v3 storePickerUIMode];

  v5 = +[MSDTestPreferences sharedInstance];
  v6 = [v5 disassociateWiFiBeforeCheckIn];

  if (v4 != 1)
  {
    if (!v4)
    {
      v7 = defaultLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_259BCA000, v7, OS_LOG_TYPE_DEFAULT, "Skipping CheckIn and calling demod...", buf, 2u);
      }

      v8 = [(MSDWelcomeViewController *)self controller];
      [v8 setupCompleteWithStoreID:0];

      return;
    }

    if (v6)
    {
      v10 = defaultLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_259BCA000, v10, OS_LOG_TYPE_DEFAULT, "Disconnecting WiFi...", buf, 2u);
      }

      v11 = [(MSDWelcomeViewController *)self controller];
      [v11 disconnectWiFi];
    }

    goto LABEL_14;
  }

  v9 = defaultLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_259BCA000, v9, OS_LOG_TYPE_DEFAULT, "Showing store picker UI...", buf, 2u);
  }

  [(MSDWelcomeViewController *)self _showNextView];
}

void __36__MSDWelcomeViewController__checkIn__block_invoke(uint64_t a1, char a2, char a3, void *a4)
{
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__MSDWelcomeViewController__checkIn__block_invoke_2;
  block[3] = &unk_2798F1CC0;
  v13 = a2;
  v14 = a3;
  v8 = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  v9 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __36__MSDWelcomeViewController__checkIn__block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = defaultLogHandle();
  v5 = v4;
  if (v3)
  {
    __36__MSDWelcomeViewController__checkIn__block_invoke_2_cold_1(v4, v2, a1);
    goto LABEL_16;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 49);
    v17 = 67109376;
    v18 = v6;
    v19 = 1024;
    v20 = v7;
    _os_log_impl(&dword_259BCA000, v5, OS_LOG_TYPE_DEFAULT, "Device eligibility for demo: %d; showUI: %d", &v17, 0xEu);
  }

  if (*(a1 + 48) != 1)
  {
    v9 = defaultLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 40) controller];
      v11 = [v10 hasSecureCookie];
      v17 = 67109120;
      v18 = v11;
      _os_log_impl(&dword_259BCA000, v9, OS_LOG_TYPE_DEFAULT, "Device is not eligible; hasSecureCookie=%d", &v17, 8u);
    }

    v12 = [*(a1 + 40) controller];
    v13 = [v12 hasSecureCookie];

    v14 = [*(a1 + 40) controller];
    v15 = v14;
    if (v13)
    {
      [v14 quitToOfflineMode];
    }

    else
    {
      [v14 quitToCustomerFlow];
    }

    goto LABEL_15;
  }

  if (*(a1 + 49) != 1)
  {
    v15 = [*(a1 + 40) controller];
    [v15 setupCompleteWithStoreID:0];
LABEL_15:

    goto LABEL_16;
  }

  v8 = defaultLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_259BCA000, v8, OS_LOG_TYPE_DEFAULT, "Showing store picker UI...", &v17, 2u);
  }

  [*(a1 + 40) _showNextView];
LABEL_16:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_showCheckInErrorAlert
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__MSDWelcomeViewController__showCheckInErrorAlert__block_invoke;
  block[3] = &unk_2798F1C48;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __50__MSDWelcomeViewController__showCheckInErrorAlert__block_invoke(uint64_t a1)
{
  v2 = [MSDSetupUILocalization localizedStringForKey:@"CHECK_IN_ERROR_TITLE"];
  v3 = [MSDSetupUILocalization localizedStringForKey:@"CHOOSE_NETWORK_OPTION"];
  v4 = [MSDSetupUILocalization localizedStringForKey:@"COMPLETE_SETUP_OPTION"];
  v5 = [MEMORY[0x277D75110] alertControllerWithTitle:v2 message:0 preferredStyle:1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__MSDWelcomeViewController__showCheckInErrorAlert__block_invoke_2;
  v9[3] = &unk_2798F1D10;
  v9[4] = *(a1 + 32);
  v6 = [MEMORY[0x277D750F8] actionWithTitle:v3 style:0 handler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__MSDWelcomeViewController__showCheckInErrorAlert__block_invoke_27;
  v8[3] = &unk_2798F1D10;
  v8[4] = *(a1 + 32);
  v7 = [MEMORY[0x277D750F8] actionWithTitle:v4 style:1 handler:v8];
  [v5 addAction:v6];
  [v5 addAction:v7];
  [*(a1 + 32) presentViewController:v5 animated:1 completion:0];
}

void __50__MSDWelcomeViewController__showCheckInErrorAlert__block_invoke_2(uint64_t a1)
{
  v2 = defaultLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_259BCA000, v2, OS_LOG_TYPE_DEFAULT, "Back to wifi pane to choose different network", v4, 2u);
  }

  v3 = [*(a1 + 32) controller];
  [v3 popTopmostViewController];
}

void __50__MSDWelcomeViewController__showCheckInErrorAlert__block_invoke_27(uint64_t a1)
{
  v2 = defaultLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_259BCA000, v2, OS_LOG_TYPE_DEFAULT, "Completing setup and quitting store picker UI...", v7, 2u);
  }

  v3 = [*(a1 + 32) controller];
  v4 = [v3 hasSecureCookie];

  v5 = [*(a1 + 32) controller];
  v6 = v5;
  if (v4)
  {
    [v5 quitToOfflineMode];
  }

  else
  {
    [v5 quitToHomeScreen];
  }
}

- (void)_showNetworkInterfaceSelectionAlert
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__MSDWelcomeViewController__showNetworkInterfaceSelectionAlert__block_invoke;
  block[3] = &unk_2798F1C48;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __63__MSDWelcomeViewController__showNetworkInterfaceSelectionAlert__block_invoke(uint64_t a1)
{
  v2 = [MSDSetupUILocalization localizedStringForKey:@"NETWORK_CONFIG_TITLE"];
  v3 = [*(a1 + 32) currentSSID];
  v4 = [MSDSetupUILocalization localizedStringForKey:@"NETWORK_CONFIG_DESCRIPTION" withStringArgument:v3];

  v5 = [MSDSetupUILocalization localizedStringForKey:@"USE_CELLULAR_OPTION"];
  v6 = [MSDSetupUILocalization localizedStringForKey:@"CHOOSE_NETWORK_OPTION"];
  if (MGGetBoolAnswer())
  {
    v7 = @"USE_WLAN_AND_CELLUAR_OPTION";
  }

  else
  {
    v7 = @"USE_WIFI_AND_CELLUAR_OPTION";
  }

  v8 = [MSDSetupUILocalization localizedStringForKey:v7];
  v9 = [MEMORY[0x277D75110] alertControllerWithTitle:v2 message:v4 preferredStyle:1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__MSDWelcomeViewController__showNetworkInterfaceSelectionAlert__block_invoke_2;
  v15[3] = &unk_2798F1D10;
  v15[4] = *(a1 + 32);
  v10 = [MEMORY[0x277D750F8] actionWithTitle:v5 style:0 handler:v15];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__MSDWelcomeViewController__showNetworkInterfaceSelectionAlert__block_invoke_46;
  v14[3] = &unk_2798F1D10;
  v14[4] = *(a1 + 32);
  v11 = [MEMORY[0x277D750F8] actionWithTitle:v8 style:0 handler:v14];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__MSDWelcomeViewController__showNetworkInterfaceSelectionAlert__block_invoke_47;
  v13[3] = &unk_2798F1D10;
  v13[4] = *(a1 + 32);
  v12 = [MEMORY[0x277D750F8] actionWithTitle:v6 style:0 handler:v13];
  [v9 addAction:v10];
  [v9 addAction:v11];
  [v9 addAction:v12];
  [v9 setPreferredAction:v12];
  [*(a1 + 32) presentViewController:v9 animated:1 completion:0];
}

void __63__MSDWelcomeViewController__showNetworkInterfaceSelectionAlert__block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = defaultLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_259BCA000, v2, OS_LOG_TYPE_DEFAULT, "Using Cellular Only", buf, 2u);
  }

  v3 = [MEMORY[0x277D29520] sharedInstance];
  v7 = 0;
  [v3 disconnectAndForgetWiFi:&v7];
  v4 = v7;

  v5 = defaultLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = v4;
    _os_log_impl(&dword_259BCA000, v5, OS_LOG_TYPE_DEFAULT, "Disconnect and forget wifi completed with error: %{public}@", buf, 0xCu);
  }

  [*(a1 + 32) _checkIn];
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __63__MSDWelcomeViewController__showNetworkInterfaceSelectionAlert__block_invoke_46(uint64_t a1)
{
  v2 = defaultLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_259BCA000, v2, OS_LOG_TYPE_DEFAULT, "Using WiFi + Cellular", v4, 2u);
  }

  return [*(a1 + 32) _checkIn];
}

void __63__MSDWelcomeViewController__showNetworkInterfaceSelectionAlert__block_invoke_47(uint64_t a1)
{
  v2 = defaultLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_259BCA000, v2, OS_LOG_TYPE_DEFAULT, "Back to wifi pane to choose different network", v4, 2u);
  }

  v3 = [*(a1 + 32) controller];
  [v3 popTopmostViewController];
}

- (void)_showNextView
{
  v4 = objc_alloc_init(MSDDemoSetupViewController);
  v3 = [(MSDWelcomeViewController *)self controller];
  [v3 pushViewController:v4 andRemoveTopmostView:0];
}

- (void)viewDidAppear:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_259BCA000, a2, OS_LOG_TYPE_ERROR, "Failed to get current network info with error: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t __36__MSDWelcomeViewController__checkIn__block_invoke_2_cold_1(NSObject *a1, uint64_t *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v8 = *a2;
    v9 = 138543362;
    v10 = v8;
    _os_log_error_impl(&dword_259BCA000, a1, OS_LOG_TYPE_ERROR, "CheckIn returned error: %{public}@", &v9, 0xCu);
  }

  result = [*(a3 + 40) _showCheckInErrorAlert];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

@end