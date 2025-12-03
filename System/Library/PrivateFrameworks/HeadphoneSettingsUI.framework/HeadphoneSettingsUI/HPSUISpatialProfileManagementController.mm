@interface HPSUISpatialProfileManagementController
- (HPSUISpatialProfileManagementController)init;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_processDownloadHRTFAsset:(id)asset isDownloaded:(BOOL)downloaded path:(id)path error:(id)error downloadResult:(unint64_t)result;
- (void)presentProfileEnrollmentController:(id)controller;
- (void)promptResetProfile:(id)profile;
- (void)resetProfile:(id)profile;
- (void)spatialAudioProfileUpdateHandler:(id)handler;
- (void)startAssetDownloadAndPresentEnrollmentController:(id)controller;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)userDidTapSpatialProfilePrivacyLink:(id)link;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HPSUISpatialProfileManagementController

- (HPSUISpatialProfileManagementController)init
{
  v8.receiver = self;
  v8.super_class = HPSUISpatialProfileManagementController;
  v2 = [(HPSUISpatialProfileManagementController *)&v8 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_spatialAudioProfileUpdateHandler_ name:@"HPSSpatialAudioProfileUpdated" object:0];

    v2->_spatialProfileAssetState = 0;
    v4 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    spinner = v2->_spinner;
    v2->_spinner = v4;

    downloadAssetPath = v2->_downloadAssetPath;
    v2->_downloadAssetPath = 0;
  }

  return v2;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HPSUISpatialProfileManagementController;
  [(HPSUISpatialProfileManagementController *)&v5 viewDidLoad];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_TITLE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  [(HPSUISpatialProfileManagementController *)self setTitle:v4];
}

- (void)viewDidAppear:(BOOL)appear
{
  v18[1] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = HPSUISpatialProfileManagementController;
  [(HPSUISpatialProfileManagementController *)&v17 viewDidAppear:appear];
  v4 = [MEMORY[0x1E695DFF8] URLWithString:@"settings-navigation://com.apple.Settings.Sounds/PERSONALIZED_SPATIAL_AUDIO"];
  v5 = objc_alloc(MEMORY[0x1E696B100]);
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  bundleURL = [v7 bundleURL];
  v9 = [v5 initWithKey:@"SPATIAL_AUDIO_PROFILE_TITLE" table:@"SpatialAudioProfile" locale:currentLocale bundleURL:bundleURL];

  v10 = objc_alloc(MEMORY[0x1E696B100]);
  if (MGGetBoolAnswer())
  {
    v11 = @"SOUNDS_AND_HAPTICS";
  }

  else
  {
    v11 = @"SOUNDS";
  }

  currentLocale2 = [MEMORY[0x1E695DF58] currentLocale];
  v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  bundleURL2 = [v13 bundleURL];
  v15 = [v10 initWithKey:v11 table:@"SpatialAudioProfile" locale:currentLocale2 bundleURL:bundleURL2];

  v18[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [(HPSUISpatialProfileManagementController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.sound" title:v9 localizedNavigationComponents:v16 deepLink:v4];
}

- (id)specifiers
{
  v53[1] = *MEMORY[0x1E69E9840];
  userInfo = [*(&self->super.super.super.super.super.isa + *MEMORY[0x1E69C5808]) userInfo];
  v4 = [userInfo objectForKey:@"content"];
  [(HPSUISpatialProfileManagementController *)self setContent:v4];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"HPSSpatialAudioProfileTapped" object:0];

  v6 = MEMORY[0x1E695DF70];
  v51.receiver = self;
  v51.super_class = HPSUISpatialProfileManagementController;
  specifiers = [(HPSUISpatialProfileManagementController *)&v51 specifiers];
  v8 = [v6 arrayWithArray:specifiers];

  v9 = [MEMORY[0x1E69C5748] groupSpecifierWithID:@"SP_TOP_GROUP_ID"];
  v10 = [MEMORY[0x1E69C5748] groupSpecifierWithID:@"SP_MGMT_GROUP_ID"];
  if (+[HPSUISpatialProfileManager isProfileExisting])
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    [v12 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_WHAT_ENROLLED_INFO" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
    v13 = v49 = v10;
    v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"SPATIAL_AUDIO_DETAIL_LINK" value:&stru_1F20FAB50 table:@"DeviceConfig"];
    v16 = [v11 stringWithFormat:v13, v15];

    v17 = MEMORY[0x1E69C5748];
    v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_RESET" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
    v20 = [v17 preferenceSpecifierNamed:v19 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v20 setButtonAction:sel_promptResetProfile_];
    v10 = v49;
    [v20 setProperty:@"SPATIAL_AUDIO_PROFILE_RESET" forKey:*MEMORY[0x1E69C5918]];
    [v20 setProperty:objc_opt_class() forKey:*MEMORY[0x1E69C5860]];
  }

  else
  {
    v21 = +[HPSUISpatialProfileManager isSettingsEnrollmentSupported];
    v22 = MEMORY[0x1E696AEC0];
    v23 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v24 = v23;
    if (v21)
    {
      v50 = v10;
      v25 = [v23 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_WHAT_INFO" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
      v26 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v27 = [v26 localizedStringForKey:@"SPATIAL_AUDIO_DETAIL_LINK" value:&stru_1F20FAB50 table:@"DeviceConfig"];
      v16 = [v22 stringWithFormat:v25, v27];

      v28 = MEMORY[0x1E69C5748];
      v29 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v30 = [v29 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_CREATE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
      v20 = [v28 preferenceSpecifierNamed:v30 target:self set:0 get:0 detail:0 cell:13 edit:0];

      if (_os_feature_enabled_impl())
      {
        v31 = objc_alloc(MEMORY[0x1E695DF90]);
        v52 = *MEMORY[0x1E69C5860];
        v53[0] = objc_opt_class();
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];
        v33 = [v31 initWithDictionary:v32];

        [v20 setProperties:v33];
        [v20 setButtonAction:sel_startAssetDownloadAndPresentEnrollmentController_];
      }

      else
      {
        [v20 setButtonAction:sel_presentProfileEnrollmentController_];
      }

      v10 = v50;
    }

    else
    {
      v34 = [v23 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_USER_INFO" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
      v35 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v36 = [v35 localizedStringForKey:@"SPATIAL_AUDIO_DETAIL_LINK" value:&stru_1F20FAB50 table:@"DeviceConfig"];
      v16 = [v22 stringWithFormat:v34, v36];

      v20 = 0;
    }
  }

  [v9 setProperty:v16 forKey:*MEMORY[0x1E69C5900]];
  v37 = objc_opt_class();
  v38 = NSStringFromClass(v37);
  [v9 setProperty:v38 forKey:*MEMORY[0x1E69C58D8]];

  [v9 setProperty:v16 forKey:*MEMORY[0x1E69C58F8]];
  v39 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v40 = [v39 localizedStringForKey:@"SPATIAL_AUDIO_DETAIL_LINK" value:&stru_1F20FAB50 table:@"DeviceConfig"];
  v54.location = [v16 rangeOfString:v40];
  v41 = NSStringFromRange(v54);
  [v9 setProperty:v41 forKey:*MEMORY[0x1E69C58E8]];

  v42 = [MEMORY[0x1E696B098] valueWithNonretainedObject:self];
  [v9 setProperty:v42 forKey:*MEMORY[0x1E69C58F0]];

  [v9 setProperty:@"userDidTapSpatialProfilePrivacyLink:" forKey:*MEMORY[0x1E69C58E0]];
  [v8 addObject:v9];
  [v8 addObject:v10];
  if (v20)
  {
    [v8 addObject:v20];
  }

  v43 = [MEMORY[0x1E695DEC8] arrayWithArray:v8];
  v44 = *MEMORY[0x1E69C57B8];
  v45 = *(&self->super.super.super.super.super.isa + v44);
  *(&self->super.super.super.super.super.isa + v44) = v43;

  v46 = *(&self->super.super.super.super.super.isa + v44);
  v47 = v46;

  return v46;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = cellCopy;
    titleLabel = [v5 titleLabel];
    [titleLabel setLineBreakMode:0];

    titleLabel2 = [v5 titleLabel];

    [titleLabel2 setNumberOfLines:0];
  }
}

- (void)spatialAudioProfileUpdateHandler:(id)handler
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__HPSUISpatialProfileManagementController_spatialAudioProfileUpdateHandler___block_invoke;
  block[3] = &unk_1E7970208;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)resetProfile:(id)profile
{
  v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Reset Profile", buf, 2u);
  }

  v4 = objc_alloc_init(MEMORY[0x1E698D460]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__HPSUISpatialProfileManagementController_resetProfile___block_invoke;
  v6[3] = &unk_1E7970288;
  v7 = v4;
  v5 = v4;
  [v5 deleteSoundProfileRecordWithCompletion:v6];
}

void __56__HPSUISpatialProfileManagementController_resetProfile___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_ERROR))
    {
      __56__HPSUISpatialProfileManagementController_resetProfile___block_invoke_cold_1(v3, &v4->super);
    }
  }

  else
  {
    v4 = objc_alloc_init(HPSUISpatialProfileAnalytics);
    [(HPSUISpatialProfileAnalytics *)v4 submitHPSSpatialProfileResetAnalytics];
    v5 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1AC1C3000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Profile Reset Completed", v7, 2u);
    }

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 postNotificationName:@"HPSSpatialAudioProfileUpdated" object:0];
  }

  [*(a1 + 32) invalidate];
}

- (void)promptResetProfile:(id)profile
{
  profileCopy = profile;
  v5 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AC1C3000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Prompt Reset", buf, 2u);
  }

  v6 = MEMORY[0x1E69DC650];
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"RESET_SPATIAL_AUDIO_PROFILE_PROMPT_HEAD" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"RESET_SPATIAL_AUDIO_PROFILE_PROMPT_CONTENT" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  v11 = [v6 alertControllerWithTitle:v8 message:v10 preferredStyle:0];

  v12 = MEMORY[0x1E69DC648];
  v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"RESET_SPATIAL_AUDIO_PROFILE_CONFIRM" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __62__HPSUISpatialProfileManagementController_promptResetProfile___block_invoke;
  v24 = &unk_1E79702B0;
  selfCopy = self;
  v26 = profileCopy;
  v15 = profileCopy;
  v16 = [v12 actionWithTitle:v14 style:2 handler:&v21];

  v17 = MEMORY[0x1E69DC648];
  v18 = [MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class(), v21, v22, v23, v24, selfCopy}];
  v19 = [v18 localizedStringForKey:@"RESET_SPATIAL_AUDIO_PROFILE_CANCEL" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  v20 = [v17 actionWithTitle:v19 style:1 handler:0];

  [v11 addAction:v16];
  [v11 addAction:v20];
  [(HPSUISpatialProfileManagementController *)self presentViewController:v11 animated:1 completion:0];
}

uint64_t __62__HPSUISpatialProfileManagementController_promptResetProfile___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Reset Sound Profile", v4, 2u);
  }

  return [*(a1 + 32) resetProfile:*(a1 + 40)];
}

- (void)userDidTapSpatialProfilePrivacyLink:(id)link
{
  v4 = [MEMORY[0x1E69B7D58] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.spatialAudioProfiles"];
  [v4 setPresentingViewController:self];
  [v4 present];
}

- (void)startAssetDownloadAndPresentEnrollmentController:(id)controller
{
  controllerCopy = controller;
  self->_spatialProfileAssetState = 1;
  [(HPSUISpatialProfileManagementController *)self spatialAudioProfileUpdateHandler:0];
  [controllerCopy setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E69C58C8]];
  v5 = [objc_alloc(MEMORY[0x1E69A2A88]) initWithCameraSession:0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __92__HPSUISpatialProfileManagementController_startAssetDownloadAndPresentEnrollmentController___block_invoke;
  v7[3] = &unk_1E79702D8;
  v7[4] = self;
  v8 = controllerCopy;
  v6 = controllerCopy;
  [v5 downloadHRTFAssetV2:0 withCompletion:v7];
}

- (void)_processDownloadHRTFAsset:(id)asset isDownloaded:(BOOL)downloaded path:(id)path error:(id)error downloadResult:(unint64_t)result
{
  assetCopy = asset;
  pathCopy = path;
  errorCopy = error;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __108__HPSUISpatialProfileManagementController__processDownloadHRTFAsset_isDownloaded_path_error_downloadResult___block_invoke;
  v18[3] = &unk_1E7970320;
  v19 = assetCopy;
  selfCopy = self;
  downloadedCopy = downloaded;
  v21 = pathCopy;
  v22 = errorCopy;
  resultCopy = result;
  v15 = errorCopy;
  v16 = pathCopy;
  v17 = assetCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v18);
}

void __108__HPSUISpatialProfileManagementController__processDownloadHRTFAsset_isDownloaded_path_error_downloadResult___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69C58C8]];
  [*(a1 + 40) spatialAudioProfileUpdateHandler:0];
  v2 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
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
      v7 = off_1E7970340[v6];
    }

    v23[0] = 67109890;
    v23[1] = v3;
    v24 = 2112;
    v25 = v5;
    v26 = 2112;
    v27 = v4;
    v28 = 2080;
    v29 = v7;
    _os_log_impl(&dword_1AC1C3000, v2, OS_LOG_TYPE_DEFAULT, "HRTF Asset Download: downloadHRTFAsset isDownloaded %d, path %@ error %@ result %s", v23, 0x26u);
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
    v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_ASSET_DOWNLOAD_FAIL_TITLE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];

    v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_ASSET_DOWNLOAD_FAIL_MESSAGE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];

    v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"TRY_AGAIN" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];

    v14 = *(a1 + 64) - 1;
    if (v14 <= 3)
    {
      v15 = off_1E7970360[v14];
      v16 = off_1E7970380[v14];
      v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v18 = [v17 localizedStringForKey:v15 value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];

      v19 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:v16 value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];

      v13 = v20;
      v11 = v18;
    }

    v21 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v9 message:v11 preferredStyle:1];
    v22 = [MEMORY[0x1E69DC648] actionWithTitle:v13 style:0 handler:&__block_literal_global_435];
    [v21 addAction:v22];

    [*(a1 + 40) presentViewController:v21 animated:1 completion:0];
  }
}

- (void)presentProfileEnrollmentController:(id)controller
{
  if (_os_feature_enabled_impl())
  {
    v8 = objc_alloc_init(HPSUISpatialProfileSingeStepEnrollmentController);
    [(HPSUISpatialProfileSingeStepEnrollmentController *)v8 setDownloadAssetPath:self->_downloadAssetPath];
  }

  else
  {
    v8 = objc_alloc_init(HPSUISpatialProfileEnrollmentController);
  }

  content = [(HPSUISpatialProfileManagementController *)self content];
  [(HPSUISpatialProfileSingeStepEnrollmentController *)v8 setContent:content];

  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelEnrollment];
  navigationItem = [(HPSUISpatialProfileSingeStepEnrollmentController *)v8 navigationItem];
  [navigationItem setLeftBarButtonItem:v5];

  v7 = [[HPSUISpatialProfileNavigationController alloc] initWithRootViewController:v8];
  [(HPSUISpatialProfileNavigationController *)v7 setModalPresentationStyle:0];
  [(HPSUISpatialProfileNavigationController *)v7 setModalInPresentation:1];
  [(HPSUISpatialProfileManagementController *)self presentViewController:v7 animated:1 completion:0];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v9.receiver = self;
  v9.super_class = HPSUISpatialProfileManagementController;
  v5 = [(HPSUISpatialProfileManagementController *)&v9 tableView:view cellForRowAtIndexPath:path];
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

void __56__HPSUISpatialProfileManagementController_resetProfile___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AC1C3000, a2, OS_LOG_TYPE_ERROR, "Spatial Profile: Cannot Reset Profile, Error: %@", &v2, 0xCu);
}

@end