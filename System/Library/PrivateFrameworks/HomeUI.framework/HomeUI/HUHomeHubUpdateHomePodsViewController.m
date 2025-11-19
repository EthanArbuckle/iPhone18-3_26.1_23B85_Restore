@interface HUHomeHubUpdateHomePodsViewController
- (BOOL)_allHomePodsHaveValidSoftwareUpdatesOrSupportsHH2;
- (BOOL)_noHomePodsWithAvailableUpdates;
- (HUConfigurationViewControllerDelegate)delegate;
- (HUHomeHubUpdateHomePodsViewController)initWithOwnedHomes:(id)a3 homePodsToUpdate:(id)a4;
- (id)_homePodsDownloadingSoftwareUpdate;
- (id)_homePodsReadyToInstallSoftwareUpdate;
- (id)hu_preloadContent;
- (id)softwareUpdateUIManager:(id)a3 dismissViewController:(id)a4;
- (id)softwareUpdateUIManager:(id)a3 presentViewController:(id)a4;
- (void)_cancelButtonPressed:(id)a3;
- (void)_continueButtonPressed:(id)a3;
- (void)_dismiss;
- (void)_fetchSoftwareUpdates;
- (void)_hideSpinner;
- (void)_presentErrorWithMessage:(id)a3;
- (void)_presentGenericError;
- (void)_showSpinner;
- (void)_startUpdate;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUHomeHubUpdateHomePodsViewController

- (HUHomeHubUpdateHomePodsViewController)initWithOwnedHomes:(id)a3 homePodsToUpdate:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (([v8 na_all:&__block_literal_global_222] & 1) == 0)
  {
    NSLog(&cfstr_MustOnlyPassIn.isa);
  }

  v9 = _HULocalizedStringWithDefaultValue(@"HUHomePodSoftwareUpdateRequiredDescriptionSingularHomePodSingularHome", @"HUHomePodSoftwareUpdateRequiredDescriptionSingularHomePodSingularHome", 1);
  if ([v8 count] == 1 && objc_msgSend(v7, "count") > 1)
  {
    v10 = @"HUHomePodSoftwareUpdateRequiredDescriptionSingularHomePodMultipleHomes";
LABEL_12:
    v11 = _HULocalizedStringWithDefaultValue(v10, v10, 1);

    v9 = v11;
    goto LABEL_13;
  }

  if ([v8 count] >= 2 && objc_msgSend(v7, "count") == 1)
  {
    v10 = @"HUHomePodSoftwareUpdateRequiredDescriptionMultipleHomePodsSingularHome";
    goto LABEL_12;
  }

  if ([v8 count] >= 2 && objc_msgSend(v7, "count") >= 2)
  {
    v10 = @"HUHomePodSoftwareUpdateRequiredDescriptionMultipleHomePodsMultipleHomes";
    goto LABEL_12;
  }

LABEL_13:
  v12 = [HUHomeHubAccessoryListItemManager alloc];
  v13 = [MEMORY[0x277CBEB98] setWithArray:v8];
  v14 = [(HUHomeHubAccessoryListItemManager *)v12 initWithAccessories:v13 delegate:self];

  v15 = [(HUItemTableViewController *)[HUHomeHubSimpleTableViewController alloc] initWithItemManager:v14 tableViewStyle:1];
  v16 = _HULocalizedStringWithDefaultValue(@"HUHomePodSoftwareUpdateRequiredTitle", @"HUHomePodSoftwareUpdateRequiredTitle", 1);
  v19.receiver = self;
  v19.super_class = HUHomeHubUpdateHomePodsViewController;
  v17 = [(HUItemTableOBWelcomeController *)&v19 initWithTitle:v16 detailText:v9 icon:0 contentLayout:2 itemTableViewController:v15];

  if (v17)
  {
    objc_storeStrong(&v17->_homes, a3);
    objc_storeStrong(&v17->_homePods, a4);
    v17->_userTappedUpdate = 0;
  }

  return v17;
}

- (void)viewDidLoad
{
  v40 = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = HUHomeHubUpdateHomePodsViewController;
  [(HUItemTableOBWelcomeController *)&v35 viewDidLoad];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUHomeHubUpdateHomePodsViewController:viewDidLoad]", buf, 2u);
  }

  v5 = [(HUHomeHubUpdateHomePodsViewController *)self headerView];
  v6 = [v5 subviews];
  [HUAccessibilityIdentifierUtilities setAccessibilityIDForViews:v6 withIDDictionary:&unk_282493148];

  v7 = _HULocalizedStringWithDefaultValue(@"HUHomePodSoftwareUpdateRequiredCaptionSingularHomePodSingularHome", @"HUHomePodSoftwareUpdateRequiredCaptionSingularHomePodSingularHome", 1);
  v8 = [(HUHomeHubUpdateHomePodsViewController *)self homePods];
  if ([v8 count] == 1)
  {
    v9 = [(HUHomeHubUpdateHomePodsViewController *)self homes];
    v10 = [v9 count];

    if (v10 > 1)
    {
      v11 = @"HUHomePodSoftwareUpdateRequiredCaptionSingularHomePodMultipleHomes";
LABEL_14:
      _HULocalizedStringWithDefaultValue(v11, v11, 1);
      v7 = v15 = v7;
      goto LABEL_15;
    }
  }

  else
  {
  }

  v12 = [(HUHomeHubUpdateHomePodsViewController *)self homePods];
  if ([v12 count] <= 1)
  {
  }

  else
  {
    v13 = [(HUHomeHubUpdateHomePodsViewController *)self homes];
    v14 = [v13 count];

    if (v14 == 1)
    {
      v11 = @"HUHomePodSoftwareUpdateRequiredCaptionMultipleHomePodsSingularHome";
      goto LABEL_14;
    }
  }

  v15 = [(HUHomeHubUpdateHomePodsViewController *)self homePods];
  if ([v15 count] >= 2)
  {
    v16 = [(HUHomeHubUpdateHomePodsViewController *)self homes];
    v17 = [v16 count];

    if (v17 < 2)
    {
      goto LABEL_16;
    }

    v11 = @"HUHomePodSoftwareUpdateRequiredCaptionMultipleHomePodsMultipleHomes";
    goto LABEL_14;
  }

LABEL_15:

LABEL_16:
  v18 = [(HUHomeHubUpdateHomePodsViewController *)self buttonTray];
  [v18 addCaptionText:v7];

  v19 = [MEMORY[0x277D37618] boldButton];
  [(HUHomeHubUpdateHomePodsViewController *)self setContinueButton:v19];

  v20 = [(HUHomeHubUpdateHomePodsViewController *)self continueButton];
  v21 = _HULocalizedStringWithDefaultValue(@"HUHomePodSoftwareUpdateRequiredUpdateNowButton", @"HUHomePodSoftwareUpdateRequiredUpdateNowButton", 1);
  [v20 setTitle:v21 forState:0];

  v22 = [(HUHomeHubUpdateHomePodsViewController *)self continueButton];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

  v23 = [(HUHomeHubUpdateHomePodsViewController *)self continueButton];
  [v23 addTarget:self action:sel__continueButtonPressed_ forControlEvents:64];

  v24 = [(HUHomeHubUpdateHomePodsViewController *)self continueButton];
  [v24 setAccessibilityIdentifier:@"Home.Onboarding.HomeHubMigration.HUHomeHubUpdateHomePod.NotNowButton"];

  v25 = [(HUHomeHubUpdateHomePodsViewController *)self buttonTray];
  v26 = [(HUHomeHubUpdateHomePodsViewController *)self continueButton];
  [v25 addButton:v26];

  v27 = objc_alloc(MEMORY[0x277D751E0]);
  v28 = _HULocalizedStringWithDefaultValue(@"HUCancelTitle", @"HUCancelTitle", 1);
  v29 = [v27 initWithTitle:v28 style:0 target:self action:sel__cancelButtonPressed_];
  [(HUHomeHubUpdateHomePodsViewController *)self setCancelButton:v29];

  v30 = [(HUHomeHubUpdateHomePodsViewController *)self cancelButton];
  [v30 setAccessibilityIdentifier:@"Home.Onboarding.HomeHubMigration.HUHomeHubUpdateHomePod.CancelButton"];

  v31 = [(OBBaseWelcomeController *)self navigationItem];
  v32 = [(HUHomeHubUpdateHomePodsViewController *)self cancelButton];
  [v31 setRightBarButtonItem:v32];

  [(HUHomeHubUpdateHomePodsViewController *)self setModalInPresentation:1];
  v33 = HFLogForCategory();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = NSStringFromSelector(a2);
    *buf = 138412546;
    v37 = self;
    v38 = 2112;
    v39 = v34;
    _os_log_impl(&dword_20CEB6000, v33, OS_LOG_TYPE_DEFAULT, "%@:%@: presented: HUHomeHubUpdateHomePodsViewController", buf, 0x16u);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HUHomeHubUpdateHomePodsViewController;
  [(HUHomeHubUpdateHomePodsViewController *)&v5 viewWillAppear:a3];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubUpdateHomePodsViewController:viewWillAppear]", v4, 2u);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HUHomeHubUpdateHomePodsViewController;
  [(OBBaseWelcomeController *)&v5 viewWillDisappear:a3];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubUpdateHomePodsViewController:viewWillDisappear]", v4, 2u);
  }
}

- (id)hu_preloadContent
{
  [(HUHomeHubUpdateHomePodsViewController *)self _fetchSoftwareUpdates];
  v2 = MEMORY[0x277D2C900];

  return [v2 futureWithNoResult];
}

- (id)softwareUpdateUIManager:(id)a3 presentViewController:(id)a4
{
  v5 = a4;
  v6 = [(UIViewController *)self hu_presentPreloadableViewController:v5 animated:1];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__HUHomeHubUpdateHomePodsViewController_softwareUpdateUIManager_presentViewController___block_invoke;
  v10[3] = &unk_277DB7530;
  v11 = v5;
  v7 = v5;
  v8 = [v6 addCompletionBlock:v10];

  return v8;
}

void __87__HUHomeHubUpdateHomePodsViewController_softwareUpdateUIManager_presentViewController___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "[HUHomeHubUpdateHomePodsViewController:softwareUpdateUIManager:presentViewController:] completed presenting view controller %@", &v4, 0xCu);
  }
}

- (id)softwareUpdateUIManager:(id)a3 dismissViewController:(id)a4
{
  v5 = a4;
  [(HUHomeHubUpdateHomePodsViewController *)self _hideSpinner];
  v6 = objc_alloc_init(MEMORY[0x277D2C900]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__HUHomeHubUpdateHomePodsViewController_softwareUpdateUIManager_dismissViewController___block_invoke;
  v12[3] = &unk_277DB7558;
  v7 = v6;
  v13 = v7;
  v14 = v5;
  v8 = v5;
  [(HUHomeHubUpdateHomePodsViewController *)self dismissViewControllerAnimated:1 completion:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __87__HUHomeHubUpdateHomePodsViewController_softwareUpdateUIManager_dismissViewController___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) finishWithNoResult];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "[HUHomeHubUpdateHomePodsViewController:softwareUpdateUIManager:dismissViewController:] completed dismissing view controller %@", &v4, 0xCu);
  }
}

- (void)_continueButtonPressed:(id)a3
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUHomeHubUpdateHomePodsViewController:_continueButtonPressed] User tapped continue button", v5, 2u);
  }

  [(HUHomeHubUpdateHomePodsViewController *)self setUserTappedUpdate:1];
  [(HUHomeHubUpdateHomePodsViewController *)self _startUpdate];
}

- (void)_cancelButtonPressed:(id)a3
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "[HUHomeHubUpdateHomePodsViewController:_cancelButtonPressed] User tapped cancel button", v5, 2u);
  }

  [(HUHomeHubUpdateHomePodsViewController *)self _dismiss];
}

- (void)_dismiss
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = [(HUHomeHubUpdateHomePodsViewController *)self delegate];
  v5 = @"HUHomeHub2OnboardingKey_UserInput";
  v6[0] = &unk_282491EF8;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [v3 viewController:self didFinishWithConfigurationResults:v4];
}

- (void)_fetchSoftwareUpdates
{
  v3 = [(HUHomeHubUpdateHomePodsViewController *)self softwareUpdateFetchFuture];

  if (!v3)
  {
    v4 = objc_opt_new();
    [(HUHomeHubUpdateHomePodsViewController *)self setSoftwareUpdateFetchFuture:v4];
  }

  v5 = [(HUHomeHubUpdateHomePodsViewController *)self _allHomePodsHaveValidSoftwareUpdatesOrSupportsHH2];
  [(HUHomeHubUpdateHomePodsViewController *)self setRanIntoFetchError:0];
  if (v5)
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "[HUHomeHubUpdateHomePodsViewController:_fetchSoftwareUpdates] Skipping software update fetch since HomePods have valid SU or already support HH2", buf, 2u);
    }

    v7 = [(HUHomeHubUpdateHomePodsViewController *)self softwareUpdateFetchFuture];
    [v7 finishWithNoResult];
  }

  else
  {
    v8 = +[HUSoftwareUpdateUIManager sharedManager];
    v9 = MEMORY[0x277CBEB98];
    v10 = [(HUHomeHubUpdateHomePodsViewController *)self homePods];
    v11 = [v9 setWithArray:v10];
    v12 = [v8 fetchAvailableUpdatesForAccessories:v11 options:1];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __62__HUHomeHubUpdateHomePodsViewController__fetchSoftwareUpdates__block_invoke;
    v14[3] = &unk_277DB7B30;
    v14[4] = self;
    v13 = [v12 addCompletionBlock:v14];
  }
}

void __62__HUHomeHubUpdateHomePodsViewController__fetchSoftwareUpdates__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) softwareUpdateFetchFuture];
  [v7 finishWithResult:v5 error:v6];

  if (v6)
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = v6;
      _os_log_error_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_ERROR, "[HUHomeHubUpdateHomePodsViewController:_fetchSoftwareUpdates] Error fetching software updates: %@", &v18, 0xCu);
    }

    v9 = [*(a1 + 32) _allHomePodsHaveValidSoftwareUpdatesOrSupportsHH2];
    v10 = *(a1 + 32);
    if (v9)
    {
      if ([v10 userTappedUpdate])
      {
        v11 = HFLogForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v18) = 0;
          v12 = "[HUHomeHubUpdateHomePodsViewController:_fetchSoftwareUpdates] Error fetching software updates but will start updating since all HomePods have valid software updates";
          v13 = v11;
          v14 = 2;
LABEL_11:
          _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, v12, &v18, v14);
          goto LABEL_12;
        }

        goto LABEL_12;
      }
    }

    else
    {
      [v10 setRanIntoFetchError:1];
      if ([*(a1 + 32) userTappedUpdate])
      {
        v15 = [v6 code];
        v16 = *(a1 + 32);
        if (v15 == 8)
        {
          v17 = _HULocalizedStringWithDefaultValue(@"HUHomePodSoftwareUpdateRequiredFetchTimeoutErrorMessage", @"HUHomePodSoftwareUpdateRequiredFetchTimeoutErrorMessage", 1);
          [v16 _presentErrorWithMessage:v17];
        }

        else
        {
          [v16 _presentGenericError];
        }
      }
    }
  }

  else if ([*(a1 + 32) userTappedUpdate])
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v5;
      v12 = "[HUHomeHubUpdateHomePodsViewController:_fetchSoftwareUpdates] Completed fetching software updates with result: %@, and no error";
      v13 = v11;
      v14 = 12;
      goto LABEL_11;
    }

LABEL_12:

    [*(a1 + 32) _startUpdate];
  }
}

- (void)_startUpdate
{
  v30 = *MEMORY[0x277D85DE8];
  [(HUHomeHubUpdateHomePodsViewController *)self _showSpinner];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(HUHomeHubUpdateHomePodsViewController *)self softwareUpdateFetchFuture];
    *buf = 67109376;
    *v28 = [v4 isFinished];
    *&v28[4] = 1024;
    *&v28[6] = [(HUHomeHubUpdateHomePodsViewController *)self ranIntoFetchError];
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "[HUHomeHubUpdateHomePodsViewController:_startUpdate] Did fetching software updates finish: %{BOOL}d. Did fetching software updates run into errors: %{BOOL}d", buf, 0xEu);
  }

  v5 = [(HUHomeHubUpdateHomePodsViewController *)self softwareUpdateFetchFuture];
  if (![v5 isFinished])
  {

    goto LABEL_9;
  }

  v6 = [(HUHomeHubUpdateHomePodsViewController *)self ranIntoFetchError];

  if (v6)
  {
LABEL_9:
    [(HUHomeHubUpdateHomePodsViewController *)self _fetchSoftwareUpdates];
    return;
  }

  v7 = [(HUHomeHubUpdateHomePodsViewController *)self _homePodsReadyToInstallSoftwareUpdate];
  v8 = [v7 count];

  if (v8)
  {
    v9 = +[HUSoftwareUpdateUIManager sharedManager];
    v10 = MEMORY[0x277CBEB98];
    v11 = [(HUHomeHubUpdateHomePodsViewController *)self _homePodsReadyToInstallSoftwareUpdate];
    v12 = [v10 setWithArray:v11];
    v13 = [v9 startUpdatesForAccessories:v12 presentationDelegate:self];

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __53__HUHomeHubUpdateHomePodsViewController__startUpdate__block_invoke;
    v26[3] = &unk_277DB8C00;
    v26[4] = self;
    v14 = [v13 addFailureBlock:v26];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __53__HUHomeHubUpdateHomePodsViewController__startUpdate__block_invoke_87;
    v25[3] = &unk_277DBA338;
    v25[4] = self;
    v15 = [v13 addSuccessBlock:v25];
LABEL_7:

    return;
  }

  v16 = [(HUHomeHubUpdateHomePodsViewController *)self _homePodsDownloadingSoftwareUpdate];
  v17 = [v16 count];

  if (v17)
  {
    v18 = HFLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(HUHomeHubUpdateHomePodsViewController *)self _homePodsDownloadingSoftwareUpdate];
      v20 = [v19 count];
      v21 = [(HUHomeHubUpdateHomePodsViewController *)self _homePodsDownloadingSoftwareUpdate];
      *buf = 134218242;
      *v28 = v20;
      *&v28[8] = 2112;
      v29 = v21;
      _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "[HUHomeHubUpdateHomePodsViewController:_startUpdate] Not starting installation since %lu software update(s) are being downloaded for HomePods: %@... should start installation once finished", buf, 0x16u);
    }

    [(HUHomeHubUpdateHomePodsViewController *)self _hideSpinner];
    [(HUHomeHubUpdateHomePodsViewController *)self _dismiss];
  }

  else
  {
    v22 = [(HUHomeHubUpdateHomePodsViewController *)self _noHomePodsWithAvailableUpdates];
    v23 = HFLogForCategory();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      if (v24)
      {
        *buf = 0;
        _os_log_error_impl(&dword_20CEB6000, v23, OS_LOG_TYPE_ERROR, "[HUHomeHubUpdateHomePodsViewController:_startUpdate] There are no available software updates for any HomePods... showing error message", buf, 2u);
      }

      v13 = _HULocalizedStringWithDefaultValue(@"HUHomePodSoftwareUpdateRequiredNoAvailableUpdateErrorMessage", @"HUHomePodSoftwareUpdateRequiredNoAvailableUpdateErrorMessage", 1);
      [(HUHomeHubUpdateHomePodsViewController *)self _presentErrorWithMessage:v13];
      goto LABEL_7;
    }

    if (v24)
    {
      *buf = 0;
      _os_log_error_impl(&dword_20CEB6000, v23, OS_LOG_TYPE_ERROR, "[HUHomeHubUpdateHomePodsViewController:_startUpdate] There are no software update downloads in progress... showing error message", buf, 2u);
    }

    [(HUHomeHubUpdateHomePodsViewController *)self _presentGenericError];
  }
}

void __53__HUHomeHubUpdateHomePodsViewController__startUpdate__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = MEMORY[0x277CBEB98];
    v9 = [*(a1 + 32) homePods];
    v10 = [v8 setWithArray:v9];
    v11 = 138412546;
    v12 = v10;
    v13 = 2112;
    v14 = v3;
    _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "[HUHomeHubUpdateHomePodsViewController:_startUpdate] Error installing software updates for HomePods: %@, error: %@", &v11, 0x16u);
  }

  v5 = [v3 code];
  v6 = *(a1 + 32);
  if (v5 == 8)
  {
    v7 = _HULocalizedStringWithDefaultValue(@"HUHomePodSoftwareUpdateRequiredUpdateTimeoutErrorMessage", @"HUHomePodSoftwareUpdateRequiredUpdateTimeoutErrorMessage", 1);
    [v6 _presentErrorWithMessage:v7];
  }

  else
  {
    [v6 _presentGenericError];
  }
}

uint64_t __53__HUHomeHubUpdateHomePodsViewController__startUpdate__block_invoke_87(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = MEMORY[0x277CBEB98];
    v4 = [*(a1 + 32) _homePodsReadyToInstallSoftwareUpdate];
    v5 = [v3 setWithArray:v4];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "[HUHomeHubUpdateHomePodsViewController:_startUpdate] Successfully started installing software updates for HomePods: %@", &v7, 0xCu);
  }

  [*(a1 + 32) _hideSpinner];
  return [*(a1 + 32) _dismiss];
}

- (BOOL)_allHomePodsHaveValidSoftwareUpdatesOrSupportsHH2
{
  if (HFPreferencesBoolForKey())
  {
    return 1;
  }

  v4 = [(HUHomeHubUpdateHomePodsViewController *)self homePods];
  v5 = [v4 na_all:&__block_literal_global_90];

  return v5;
}

uint64_t __90__HUHomeHubUpdateHomePodsViewController__allHomePodsHaveValidSoftwareUpdatesOrSupportsHH2__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hf_hasNewValidSoftwareUpdate])
  {
    v3 = 1;
  }

  else
  {
    v4 = [v2 device];
    v3 = [v4 supportsHH2];
  }

  return v3;
}

- (id)_homePodsReadyToInstallSoftwareUpdate
{
  v2 = [(HUHomeHubUpdateHomePodsViewController *)self homePods];
  v3 = [v2 na_filter:&__block_literal_global_92_0];

  return v3;
}

uint64_t __78__HUHomeHubUpdateHomePodsViewController__homePodsReadyToInstallSoftwareUpdate__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isControllable])
  {
    v3 = [v2 hf_isReadyToInstallSoftwareUpdate];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_homePodsDownloadingSoftwareUpdate
{
  v2 = [(HUHomeHubUpdateHomePodsViewController *)self homePods];
  v3 = [v2 na_filter:&__block_literal_global_94];

  return v3;
}

- (BOOL)_noHomePodsWithAvailableUpdates
{
  v2 = [(HUHomeHubUpdateHomePodsViewController *)self homePods];
  v3 = [v2 na_all:&__block_literal_global_96_0];

  return v3;
}

BOOL __72__HUHomeHubUpdateHomePodsViewController__noHomePodsWithAvailableUpdates__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 softwareUpdateController];
  v3 = [v2 availableUpdate];

  if (v3)
  {
    v4 = [v3 state] == 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)_showSpinner
{
  v3 = [(HUHomeHubUpdateHomePodsViewController *)self spinner];

  if (!v3)
  {
    v4 = [(OBBaseWelcomeController *)self navigationItem];
    [v4 setHidesBackButton:1 animated:1];

    v5 = [(HUHomeHubUpdateHomePodsViewController *)self continueButton];
    v6 = [v5 titleLabel];
    [v6 setHidden:1];

    v7 = [(HUHomeHubUpdateHomePodsViewController *)self continueButton];
    [v7 setEnabled:0];

    v8 = [(HUHomeHubUpdateHomePodsViewController *)self cancelButton];
    [v8 setEnabled:0];

    v9 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [(HUHomeHubUpdateHomePodsViewController *)self setSpinner:v9];

    v10 = [(HUHomeHubUpdateHomePodsViewController *)self spinner];
    [v10 sizeToFit];

    v11 = [(HUHomeHubUpdateHomePodsViewController *)self spinner];
    [v11 startAnimating];

    v12 = [(HUHomeHubUpdateHomePodsViewController *)self spinner];
    [v12 setAccessibilityIdentifier:@"HUHomeHubUpdateHomePodsViewController.spinner"];

    v13 = [(HUHomeHubUpdateHomePodsViewController *)self continueButton];
    [v13 center];
    v15 = v14;
    v17 = v16;
    v18 = [(HUHomeHubUpdateHomePodsViewController *)self spinner];
    [v18 setCenter:{v15, v17}];

    v21 = [(HUHomeHubUpdateHomePodsViewController *)self continueButton];
    v19 = [v21 superview];
    v20 = [(HUHomeHubUpdateHomePodsViewController *)self spinner];
    [v19 addSubview:v20];
  }
}

- (void)_hideSpinner
{
  v3 = [(HUHomeHubUpdateHomePodsViewController *)self spinner];

  if (v3)
  {
    v4 = [(HUHomeHubUpdateHomePodsViewController *)self spinner];
    [v4 removeFromSuperview];

    [(HUHomeHubUpdateHomePodsViewController *)self setSpinner:0];
    v5 = [(HUHomeHubUpdateHomePodsViewController *)self view];
    [v5 setNeedsLayout];
  }

  v6 = [(OBBaseWelcomeController *)self navigationItem];
  [v6 setHidesBackButton:0 animated:1];

  v7 = [(HUHomeHubUpdateHomePodsViewController *)self continueButton];
  v8 = [v7 titleLabel];
  [v8 setHidden:0];

  v9 = [(HUHomeHubUpdateHomePodsViewController *)self continueButton];
  [v9 setEnabled:1];

  v10 = [(HUHomeHubUpdateHomePodsViewController *)self cancelButton];
  [v10 setEnabled:1];
}

- (void)_presentGenericError
{
  [(HUHomeHubUpdateHomePodsViewController *)self setUserTappedUpdate:0];
  v3 = MEMORY[0x277D75110];
  v4 = _HULocalizedStringWithDefaultValue(@"HUHomePodSoftwareUpdateRequiredErrorTitle", @"HUHomePodSoftwareUpdateRequiredErrorTitle", 1);
  v5 = _HULocalizedStringWithDefaultValue(@"HUHomePodSoftwareUpdateRequiredErrorMessage", @"HUHomePodSoftwareUpdateRequiredErrorMessage", 1);
  v6 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v7 = MEMORY[0x277D750F8];
  v8 = _HULocalizedStringWithDefaultValue(@"HUOkTitle", @"HUOkTitle", 1);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__HUHomeHubUpdateHomePodsViewController__presentGenericError__block_invoke;
  v10[3] = &unk_277DB7600;
  v10[4] = self;
  v9 = [v7 actionWithTitle:v8 style:1 handler:v10];
  [v6 addAction:v9];

  [(HUHomeHubUpdateHomePodsViewController *)self presentViewController:v6 animated:1 completion:&__block_literal_global_115];
}

void __61__HUHomeHubUpdateHomePodsViewController__presentGenericError__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _hideSpinner];
  v1 = HFLogForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_20CEB6000, v1, OS_LOG_TYPE_DEFAULT, "[HUHomeHubUpdateHomePodsViewController:_presentGenericError] User tapped alert OK button", v2, 2u);
  }
}

void __61__HUHomeHubUpdateHomePodsViewController__presentGenericError__block_invoke_113()
{
  v0 = HFLogForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_20CEB6000, v0, OS_LOG_TYPE_DEFAULT, "[HUHomeHubUpdateHomePodsViewController:_presentGenericError] presented alert controller", v1, 2u);
  }
}

- (void)_presentErrorWithMessage:(id)a3
{
  v4 = a3;
  [(HUHomeHubUpdateHomePodsViewController *)self setUserTappedUpdate:0];
  v5 = MEMORY[0x277D75110];
  v6 = _HULocalizedStringWithDefaultValue(@"HUHomePodSoftwareUpdateRequiredErrorTitle", @"HUHomePodSoftwareUpdateRequiredErrorTitle", 1);
  v7 = [v5 alertControllerWithTitle:v6 message:v4 preferredStyle:1];

  v8 = MEMORY[0x277D750F8];
  v9 = _HULocalizedStringWithDefaultValue(@"HUOkTitle", @"HUOkTitle", 1);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__HUHomeHubUpdateHomePodsViewController__presentErrorWithMessage___block_invoke;
  v14[3] = &unk_277DB7600;
  v14[4] = self;
  v10 = [v8 actionWithTitle:v9 style:1 handler:v14];
  [v7 addAction:v10];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__HUHomeHubUpdateHomePodsViewController__presentErrorWithMessage___block_invoke_116;
  v12[3] = &unk_277DB8488;
  v13 = v4;
  v11 = v4;
  [(HUHomeHubUpdateHomePodsViewController *)self presentViewController:v7 animated:1 completion:v12];
}

void __66__HUHomeHubUpdateHomePodsViewController__presentErrorWithMessage___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _hideSpinner];
  v1 = HFLogForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_20CEB6000, v1, OS_LOG_TYPE_DEFAULT, "[HUHomeHubUpdateHomePodsViewController:_presentErrorWithMessage] User tapped alert OK button", v2, 2u);
  }
}

void __66__HUHomeHubUpdateHomePodsViewController__presentErrorWithMessage___block_invoke_116(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "[HUHomeHubUpdateHomePodsViewController:_presentErrorWithMessage] presented alert error HPSoftwareUpdateRequired with message: '%@'", &v4, 0xCu);
  }
}

- (HUConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end