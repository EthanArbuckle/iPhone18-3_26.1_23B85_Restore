@interface HPSSpatialProfileManagementController
- (HPSSpatialProfileManagementController)init;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_processDownloadHRTFAsset:(id)a3 isDownloaded:(BOOL)a4 path:(id)a5 error:(id)a6 downloadResult:(unint64_t)a7;
- (void)presentProfileEnrollmentController:(id)a3;
- (void)promptResetProfile:(id)a3;
- (void)resetProfile:(id)a3;
- (void)spatialAudioProfileUpdateHandler:(id)a3;
- (void)startAssetDownloadAndPresentEnrollmentController:(id)a3;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)userDidTapSpatialProfilePrivacyLink:(id)a3;
@end

@implementation HPSSpatialProfileManagementController

- (HPSSpatialProfileManagementController)init
{
  v8.receiver = self;
  v8.super_class = HPSSpatialProfileManagementController;
  v2 = [(HPSSpatialProfileManagementController *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel_spatialAudioProfileUpdateHandler_ name:@"HPSSpatialAudioProfileUpdated" object:0];

    v2->_spatialProfileAssetState = 0;
    v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    spinner = v2->_spinner;
    v2->_spinner = v4;

    downloadAssetPath = v2->_downloadAssetPath;
    v2->_downloadAssetPath = 0;
  }

  return v2;
}

- (id)specifiers
{
  v52[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"HPSSpatialAudioProfileTapped" object:0];

  v4 = MEMORY[0x277CBEB18];
  v50.receiver = self;
  v50.super_class = HPSSpatialProfileManagementController;
  v5 = [(HPSSpatialProfileManagementController *)&v50 specifiers];
  v6 = [v4 arrayWithArray:v5];

  v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SP_TOP_GROUP_ID"];
  v8 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SP_MGMT_GROUP_ID"];
  if (+[HPSSpatialProfileManager isProfileExisting])
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v10 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_WHAT_ENROLLED_INFO" value:&stru_286339F58 table:@"SpatialAudioProfile"];
    v11 = v48 = v8;
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"SPATIAL_AUDIO_DETAIL_LINK" value:&stru_286339F58 table:@"DeviceConfig"];
    v14 = [v9 stringWithFormat:v11, v13];

    v15 = MEMORY[0x277D3FAD8];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_RESET" value:&stru_286339F58 table:@"SpatialAudioProfile"];
    v18 = [v15 preferenceSpecifierNamed:v17 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v18 setButtonAction:sel_promptResetProfile_];
    v8 = v48;
    [v18 setProperty:@"SPATIAL_AUDIO_PROFILE_RESET" forKey:*MEMORY[0x277D3FFB8]];
    [v18 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  }

  else
  {
    v19 = +[HPSSpatialProfileManager isSettingsEnrollmentSupported];
    v20 = MEMORY[0x277CCACA8];
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = v21;
    if (v19)
    {
      v49 = v8;
      v23 = [v21 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_WHAT_INFO" value:&stru_286339F58 table:@"SpatialAudioProfile"];
      v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v25 = [v24 localizedStringForKey:@"SPATIAL_AUDIO_DETAIL_LINK" value:&stru_286339F58 table:@"DeviceConfig"];
      v14 = [v20 stringWithFormat:v23, v25];

      v26 = MEMORY[0x277D3FAD8];
      v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v28 = [v27 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_CREATE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
      v18 = [v26 preferenceSpecifierNamed:v28 target:self set:0 get:0 detail:0 cell:13 edit:0];

      if (_os_feature_enabled_impl())
      {
        v29 = objc_alloc(MEMORY[0x277CBEB38]);
        v51 = *MEMORY[0x277D3FE58];
        v52[0] = objc_opt_class();
        v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];
        v31 = [v29 initWithDictionary:v30];

        [v18 setProperties:v31];
        [v18 setButtonAction:sel_startAssetDownloadAndPresentEnrollmentController_];
      }

      else
      {
        [v18 setButtonAction:sel_presentProfileEnrollmentController_];
      }

      v8 = v49;
    }

    else
    {
      v32 = [v21 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_USER_INFO" value:&stru_286339F58 table:@"SpatialAudioProfile"];
      v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v34 = [v33 localizedStringForKey:@"SPATIAL_AUDIO_DETAIL_LINK" value:&stru_286339F58 table:@"DeviceConfig"];
      v14 = [v20 stringWithFormat:v32, v34];

      v18 = 0;
    }
  }

  [v7 setProperty:v14 forKey:*MEMORY[0x277D3FF88]];
  v35 = objc_opt_class();
  v36 = NSStringFromClass(v35);
  [v7 setProperty:v36 forKey:*MEMORY[0x277D3FF48]];

  [v7 setProperty:v14 forKey:*MEMORY[0x277D3FF70]];
  v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v38 = [v37 localizedStringForKey:@"SPATIAL_AUDIO_DETAIL_LINK" value:&stru_286339F58 table:@"DeviceConfig"];
  v53.location = [v14 rangeOfString:v38];
  v39 = NSStringFromRange(v53);
  [v7 setProperty:v39 forKey:*MEMORY[0x277D3FF58]];

  v40 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
  [v7 setProperty:v40 forKey:*MEMORY[0x277D3FF68]];

  [v7 setProperty:@"userDidTapSpatialProfilePrivacyLink:" forKey:*MEMORY[0x277D3FF50]];
  [v6 addObject:v7];
  [v6 addObject:v8];
  if (v18)
  {
    [v6 addObject:v18];
  }

  v41 = [MEMORY[0x277CBEA60] arrayWithArray:v6];
  v42 = *MEMORY[0x277D3FC48];
  v43 = *(&self->super.super.super.super.super.isa + v42);
  *(&self->super.super.super.super.super.isa + v42) = v41;

  v44 = *(&self->super.super.super.super.super.isa + v42);
  v45 = v44;

  v46 = *MEMORY[0x277D85DE8];
  return v44;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v13 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v13;
    v6 = [v5 titleLabel];
    [v6 setLineBreakMode:0];

    v7 = [v5 titleLabel];
    [v7 setNumberOfLines:0];

    v8 = [v5 specifier];
    v9 = [v8 identifier];
    v10 = [v9 isEqualToString:@"SPATIAL_AUDIO_PROFILE_RESET"];

    if (v10)
    {
      v11 = [MEMORY[0x277D75348] redColor];
      v12 = [v5 textLabel];
      [v12 setTextColor:v11];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)spatialAudioProfileUpdateHandler:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HPSSpatialProfileManagementController_spatialAudioProfileUpdateHandler___block_invoke;
  block[3] = &unk_2796AD618;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)resetProfile:(id)a3
{
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Reset Profile", buf, 2u);
  }

  v4 = objc_alloc_init(MEMORY[0x277CF3260]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__HPSSpatialProfileManagementController_resetProfile___block_invoke;
  v6[3] = &unk_2796AD578;
  v7 = v4;
  v5 = v4;
  [v5 deleteSoundProfileRecordWithCompletion:v6];
}

void __54__HPSSpatialProfileManagementController_resetProfile___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_ERROR))
    {
      __54__HPSSpatialProfileManagementController_resetProfile___block_invoke_cold_1(v3, &v4->super);
    }
  }

  else
  {
    v4 = objc_alloc_init(HPSSpatialProfileAnalytics);
    [(HPSSpatialProfileAnalytics *)v4 submitHPSSpatialProfileResetAnalytics];
    v5 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Profile Reset Completed", v7, 2u);
    }

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 postNotificationName:@"HPSSpatialAudioProfileUpdated" object:0];
  }

  [*(a1 + 32) invalidate];
}

- (void)promptResetProfile:(id)a3
{
  v4 = a3;
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Prompt Reset", buf, 2u);
  }

  v6 = MEMORY[0x277D75110];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"RESET_SPATIAL_AUDIO_PROFILE_PROMPT_HEAD" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"RESET_SPATIAL_AUDIO_PROFILE_PROMPT_CONTENT" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  v11 = [v6 alertControllerWithTitle:v8 message:v10 preferredStyle:0];

  v12 = MEMORY[0x277D750F8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"RESET_SPATIAL_AUDIO_PROFILE_CONFIRM" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __60__HPSSpatialProfileManagementController_promptResetProfile___block_invoke;
  v24 = &unk_2796ADB78;
  v25 = self;
  v26 = v4;
  v15 = v4;
  v16 = [v12 actionWithTitle:v14 style:2 handler:&v21];

  v17 = MEMORY[0x277D750F8];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class(), v21, v22, v23, v24, v25}];
  v19 = [v18 localizedStringForKey:@"RESET_SPATIAL_AUDIO_PROFILE_CANCEL" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  v20 = [v17 actionWithTitle:v19 style:1 handler:0];

  [v11 addAction:v16];
  [v11 addAction:v20];
  [(HPSSpatialProfileManagementController *)self presentViewController:v11 animated:1 completion:0];
}

uint64_t __60__HPSSpatialProfileManagementController_promptResetProfile___block_invoke(uint64_t a1)
{
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Reset Sound Profile", v4, 2u);
  }

  return [*(a1 + 32) resetProfile:*(a1 + 40)];
}

- (void)userDidTapSpatialProfilePrivacyLink:(id)a3
{
  v4 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.spatialAudioProfiles"];
  [v4 setPresentingViewController:self];
  [v4 present];
}

- (void)startAssetDownloadAndPresentEnrollmentController:(id)a3
{
  v4 = a3;
  self->_spatialProfileAssetState = 1;
  [(HPSSpatialProfileManagementController *)self spatialAudioProfileUpdateHandler:0];
  [v4 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  v5 = [objc_alloc(MEMORY[0x277D0F968]) initWithCameraSession:0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__HPSSpatialProfileManagementController_startAssetDownloadAndPresentEnrollmentController___block_invoke;
  v7[3] = &unk_2796ADBA0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 downloadHRTFAssetV2:0 withCompletion:v7];
}

- (void)_processDownloadHRTFAsset:(id)a3 isDownloaded:(BOOL)a4 path:(id)a5 error:(id)a6 downloadResult:(unint64_t)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __106__HPSSpatialProfileManagementController__processDownloadHRTFAsset_isDownloaded_path_error_downloadResult___block_invoke;
  v18[3] = &unk_2796ADBC8;
  v19 = v12;
  v20 = self;
  v24 = a4;
  v21 = v13;
  v22 = v14;
  v23 = a7;
  v15 = v14;
  v16 = v13;
  v17 = v12;
  dispatch_async(MEMORY[0x277D85CD0], v18);
}

void __106__HPSSpatialProfileManagementController__processDownloadHRTFAsset_isDownloaded_path_error_downloadResult___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  [*(a1 + 40) spatialAudioProfileUpdateHandler:0];
  v2 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 72);
    v5 = *(a1 + 48);
    v4 = *(a1 + 56);
    v6 = *(a1 + 64) - 1;
    if (v6 > 3)
    {
      v7 = "Unknown";
    }

    else
    {
      v7 = off_2796ADBE8[v6];
    }

    v29[0] = 67109890;
    v29[1] = v3;
    v30 = 2112;
    v31 = v5;
    v32 = 2112;
    v33 = v4;
    v34 = 2080;
    v35 = v7;
    _os_log_impl(&dword_251143000, v2, OS_LOG_TYPE_DEFAULT, "HRTF Asset Download: downloadHRTFAsset isDownloaded %d, path %@ error %@ result %s", v29, 0x26u);
  }

  if (*(a1 + 72) == 1)
  {
    objc_storeStrong((*(a1 + 40) + 1472), *(a1 + 48));
    [*(a1 + 40) presentProfileEnrollmentController:*(a1 + 32)];
    *(*(a1 + 40) + 1456) = 3;
  }

  else
  {
    *(*(a1 + 40) + 1456) = 2;
    v8 = *(a1 + 40);
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_ASSET_DOWNLOAD_FAIL_TITLE" value:&stru_286339F58 table:@"SpatialAudioProfile"];

    v11 = *(a1 + 40);
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_ASSET_DOWNLOAD_FAIL_MESSAGE" value:&stru_286339F58 table:@"SpatialAudioProfile"];

    v14 = *(a1 + 40);
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"TRY_AGAIN" value:&stru_286339F58 table:@"SpatialAudioProfile"];

    v17 = *(a1 + 64) - 1;
    if (v17 <= 3)
    {
      v18 = off_2796ADC08[v17];
      v19 = off_2796ADC28[v17];
      v20 = *(a1 + 40);
      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = [v21 localizedStringForKey:v18 value:&stru_286339F58 table:@"SpatialAudioProfile"];

      v23 = *(a1 + 40);
      v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v25 = [v24 localizedStringForKey:v19 value:&stru_286339F58 table:@"SpatialAudioProfile"];

      v16 = v25;
      v13 = v22;
    }

    v26 = [MEMORY[0x277D75110] alertControllerWithTitle:v10 message:v13 preferredStyle:1];
    v27 = [MEMORY[0x277D750F8] actionWithTitle:v16 style:0 handler:&__block_literal_global_121];
    [v26 addAction:v27];

    [*(a1 + 40) presentViewController:v26 animated:1 completion:0];
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)presentProfileEnrollmentController:(id)a3
{
  if (_os_feature_enabled_impl())
  {
    v7 = objc_alloc_init(HPSSpatialProfileSingeStepEnrollmentController);
    [(HPSSpatialProfileSingeStepEnrollmentController *)v7 setDownloadAssetPath:self->_downloadAssetPath];
  }

  else
  {
    v7 = objc_alloc_init(HPSSpatialProfileEnrollmentController);
  }

  v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelEnrollment];
  v5 = [(HPSSpatialProfileSingeStepEnrollmentController *)v7 navigationItem];
  [v5 setLeftBarButtonItem:v4];

  v6 = [[HPSSpatialProfileNavigationController alloc] initWithRootViewController:v7];
  [(HPSSpatialProfileNavigationController *)v6 setModalPresentationStyle:0];
  [(HPSSpatialProfileNavigationController *)v6 setModalInPresentation:1];
  [(HPSSpatialProfileManagementController *)self presentViewController:v6 animated:1 completion:0];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v9.receiver = self;
  v9.super_class = HPSSpatialProfileManagementController;
  v5 = [(HPSSpatialProfileManagementController *)&v9 tableView:a3 cellForRowAtIndexPath:a4];
  if ([v5 tag] == 13)
  {
    v6 = objc_opt_class();
    if (v6 == objc_opt_class())
    {
      [v5 setAccessoryView:self->_spinner];
      spinner = self->_spinner;
      if (self->_spatialProfileAssetState == 1)
      {
        [(UIActivityIndicatorView *)spinner startAnimating];
      }

      else
      {
        [(UIActivityIndicatorView *)spinner stopAnimating];
      }
    }
  }

  return v5;
}

void __54__HPSSpatialProfileManagementController_resetProfile___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_251143000, a2, OS_LOG_TYPE_ERROR, "Spatial Profile: Cannot Reset Profile, Error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end