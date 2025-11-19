@interface HUCameraRecordingOnboardingFlow
+ (id)needsOnboardingForHome:(id)a3 options:(id)a4;
- (HUCameraRecordingOnboardingFlow)initWithUsageOptions:(id)a3 home:(id)a4;
- (id)_determineInitialViewController;
- (id)processUserInput:(id)a3;
- (void)_setThisUserDismissedCameraOnboardingAndReminder;
@end

@implementation HUCameraRecordingOnboardingFlow

- (HUCameraRecordingOnboardingFlow)initWithUsageOptions:(id)a3 home:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = HUCameraRecordingOnboardingFlow;
  v8 = [(HUCameraRecordingOnboardingFlow *)&v22 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, a4);
    v10 = objc_alloc(MEMORY[0x277D14C98]);
    home = v9->_home;
    v12 = [(HMHome *)home currentUser];
    v13 = [v10 initWithHome:home user:v12 nameStyle:0];
    userItem = v9->_userItem;
    v9->_userItem = v13;

    objc_initWeak(&location, v9);
    v15 = [objc_opt_class() needsOnboardingForHome:v7 options:v6];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __61__HUCameraRecordingOnboardingFlow_initWithUsageOptions_home___block_invoke;
    v19[3] = &unk_277DB9238;
    objc_copyWeak(&v20, &location);
    v16 = [v15 flatMap:v19];
    onboardingFuture = v9->_onboardingFuture;
    v9->_onboardingFuture = v16;

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v9;
}

id __61__HUCameraRecordingOnboardingFlow_initWithUsageOptions_home___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__HUCameraRecordingOnboardingFlow_initWithUsageOptions_home___block_invoke_2;
  v8[3] = &unk_277DB9210;
  objc_copyWeak(&v10, (a1 + 32));
  v5 = v3;
  v9 = v5;
  v6 = [v4 futureWithBlock:v8];

  objc_destroyWeak(&v10);

  return v6;
}

void __61__HUCameraRecordingOnboardingFlow_initWithUsageOptions_home___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([*(a1 + 32) BOOLValue])
  {
    v4 = [WeakRetained _determineInitialViewController];
    [WeakRetained setInitialViewController:v4];
  }

  v5 = [WeakRetained initialViewController];

  if (!v5)
  {
    [v6 finishWithNoResult];
  }
}

- (void)_setThisUserDismissedCameraOnboardingAndReminder
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"HUHomeFeatureOnboardingKey_CameraRecording_DismissReminderBanner";
  v6[1] = @"HUHomeFeatureOnboardingKey_CameraRecording_FinishedOnboarding";
  v7[0] = MEMORY[0x277CBEC38];
  v7[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = [(HUCameraRecordingOnboardingFlow *)self home];
  v5 = [HUHomeFeatureOnboardingUtilities home:v4 processHomeFeatureOnboarderResults:v3];
}

- (id)_determineInitialViewController
{
  v3 = [(HUCameraRecordingOnboardingFlow *)self home];
  v4 = [v3 hf_cameraRecordingHasBeenOnboarded];

  v5 = [(HUCameraRecordingOnboardingFlow *)self userItem];
  v6 = [v5 hasDismissedCameraRecordingOnboarding];

  v7 = [(HUCameraRecordingOnboardingFlow *)self home];
  v8 = [v7 hf_currentUserIsOwner];

  v9 = [(HUCameraRecordingOnboardingFlow *)self home];
  v10 = [v9 residentDevices];
  v11 = [v10 count];

  v12 = [(HUCameraRecordingOnboardingFlow *)self home];
  v13 = [v12 hf_hasCameraRecordingResident];

  v14 = [(HUCameraRecordingOnboardingFlow *)self home];
  v15 = [v14 hf_hasSecureRecordingCameras];

  v16 = [(HUCameraRecordingOnboardingFlow *)self home];
  v17 = [v16 hf_allCameraProfiles];
  v18 = [v17 count];

  v19 = 0;
  if (v18 && (v6 & 1) == 0)
  {
    [(HUCameraRecordingOnboardingFlow *)self _setThisUserDismissedCameraOnboardingAndReminder];
    v20 = [HUCameraRecordingIntroViewController alloc];
    v21 = [(HUCameraRecordingOnboardingFlow *)self home];
    if (v11)
    {
      v22 = v15;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22 & v13;
    v24 = 3;
    if (v11)
    {
      v24 = 4;
    }

    if (v15)
    {
      v25 = v24;
    }

    else
    {
      v25 = 1;
    }

    if (v23 == 1)
    {
      if (v4)
      {
        if (v8)
        {
          v25 = 5;
        }

        else
        {
          v25 = 6;
        }
      }

      else if (v8)
      {
        v25 = 2;
      }

      else
      {
        v25 = 0;
      }
    }

    v19 = [(HUCameraRecordingIntroViewController *)v20 initWithIntroVariant:v25 home:v21];
  }

  return v19;
}

- (id)processUserInput:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"HUCameraRecordingOnboardingKey_UserInput"];
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 138412802;
    v34 = self;
    v35 = 2112;
    v36 = v8;
    v37 = 2112;
    v38 = v5;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ with input results: %@", buf, 0x20u);
  }

  if ([v6 integerValue] == 1)
  {
    v9 = [(HUCameraRecordingOnboardingFlow *)self onboardingFuture];
    [(HUSimpleItemModuleTableViewController *)v9 finishWithNoResult];
  }

  else
  {
    if (![v6 integerValue])
    {
      v15 = [(HUCameraRecordingOnboardingFlow *)self home];
      v16 = [v15 hf_allCameraProfilesSupportingRecording];

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __52__HUCameraRecordingOnboardingFlow_processUserInput___block_invoke;
      aBlock[3] = &unk_277DB9F78;
      v32 = v16;
      v9 = v16;
      v17 = _Block_copy(aBlock);
      v18 = [[HUSimpleItemModuleTableViewController alloc] initWithTableViewStyle:2 moduleCreator:v17 moduleControllerBuilder:&__block_literal_global_48];
      v19 = [HUCameraRecordingSetupViewController alloc];
      v20 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingSetup_Title", @"HUCameraRecordingSetup_Title", 1);
      v21 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingSetup_Detail", @"HUCameraRecordingSetup_Detail", 1);
      v22 = [(HUCameraRecordingOnboardingFlow *)self home];
      v14 = [(HUCameraRecordingSetupViewController *)v19 initWithTitle:v20 detailText:v21 icon:0 itemTableViewController:v18 home:v22];

      goto LABEL_14;
    }

    if ([v6 integerValue] == 2)
    {
      v9 = [[HUSimpleItemModuleTableViewController alloc] initWithTableViewStyle:2 moduleCreator:&__block_literal_global_25_0 moduleControllerBuilder:&__block_literal_global_28_0];
      v10 = [HUCameraRecordingPermissionsViewController alloc];
      v11 = _HULocalizedStringWithDefaultValue(@"HUCameraPermissionsSettingsHeader_Title", @"HUCameraPermissionsSettingsHeader_Title", 1);
      v12 = _HULocalizedStringWithDefaultValue(@"HUCameraPermissionsSettingsHeader_Body", @"HUCameraPermissionsSettingsHeader_Body", 1);
      v13 = [(HUCameraRecordingOnboardingFlow *)self home];
      v14 = [(HUCameraRecordingPermissionsViewController *)v10 initWithTitle:v11 detailText:v12 icon:0 itemTableViewController:v9 home:v13];

      goto LABEL_14;
    }

    v23 = objc_alloc(MEMORY[0x277D14C98]);
    v24 = [(HUCameraRecordingOnboardingFlow *)self home];
    v25 = [(HUCameraRecordingOnboardingFlow *)self home];
    v26 = [v25 currentUser];
    v9 = [v23 initWithHome:v24 user:v26 nameStyle:0];

    if (([(HUSimpleItemModuleTableViewController *)v9 hasDismissedCameraRecordingOnboarding]& 1) != 0)
    {
      v27 = [MEMORY[0x277CCABB0] numberWithBool:1];
      [v5 setObject:v27 forKeyedSubscript:@"HUHomeFeatureOnboardingKey_CameraRecording_DismissReminderBanner"];
    }

    else
    {
      [v5 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"HUHomeFeatureOnboardingKey_CameraRecording_DismissReminderBanner"];
    }

    v28 = [MEMORY[0x277CCA890] currentHandler];
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[HUCameraRecordingOnboardingFlow processUserInput:]"];
    [v28 handleFailureInFunction:v29 file:@"HUCameraRecordingOnboardingFlow.m" lineNumber:190 description:{@"We should have handled all cases! results: %@", v5}];
  }

  v14 = 0;
LABEL_14:

  return v14;
}

id __52__HUCameraRecordingOnboardingFlow_processUserInput___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [HUCameraRecordingSettingsModule alloc];
  v6 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 32)];
  v7 = [(HUCameraRecordingSettingsModule *)v5 initWithItemUpdater:v4 cameraProfiles:v6 displayStyle:1];

  v10[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  return v8;
}

HUCameraSettingsModuleController *__52__HUCameraRecordingOnboardingFlow_processUserInput___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HUCameraSettingsModuleController alloc] initWithModule:v2];

  return v3;
}

id __52__HUCameraRecordingOnboardingFlow_processUserInput___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = a2;
  v6 = [[HUCameraPermissionsSettingsModule alloc] initWithItemUpdater:v4 home:v5 displayStyle:1];

  v9[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  return v7;
}

HUCameraSettingsModuleController *__52__HUCameraRecordingOnboardingFlow_processUserInput___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HUCameraSettingsModuleController alloc] initWithModule:v2];

  return v3;
}

+ (id)needsOnboardingForHome:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = [v6 hf_hasSecureRecordingCameras];
  v8 = MEMORY[0x277D2C900];
  if (v7)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __66__HUCameraRecordingOnboardingFlow_needsOnboardingForHome_options___block_invoke;
    v11[3] = &unk_277DB9FE0;
    v12 = v6;
    v13 = a1;
    v14 = a2;
    v15 = 1;
    v9 = [v8 futureWithBlock:v11];
  }

  else
  {
    v9 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC28]];
  }

  return v9;
}

void __66__HUCameraRecordingOnboardingFlow_needsOnboardingForHome_options___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D14C98];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = *(a1 + 32);
  v7 = [v6 currentUser];
  v8 = [v5 initWithHome:v6 user:v7 nameStyle:0];

  v9 = [v8 hasDismissedCameraRecordingOnboarding];
  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 40);
    v12 = NSStringFromSelector(*(a1 + 48));
    v13 = v12;
    v14 = *(a1 + 32);
    v15 = @"Can";
    v16 = *(a1 + 56);
    v18 = 138413826;
    if (v9)
    {
      v15 = @"Cannot";
    }

    v19 = v11;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v15;
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = v14;
    v28 = 1024;
    v29 = v9 ^ 1;
    v30 = 1024;
    v31 = v16;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@:%@: %@ show because: user(%@) in home(%@):\n\t\thasPreviouslyDismissed = %{BOOL}d\n\t\thasSecureRecordingCameras = %{BOOL}d", &v18, 0x40u);
  }

  v17 = [MEMORY[0x277CCABB0] numberWithBool:v9 ^ 1u];
  [v4 finishWithResult:v17];
}

@end