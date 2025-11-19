@interface HPSUISpatialProfileManager
+ (BOOL)isProfileExisting;
+ (BOOL)isProxCardEnrollmentSupportedForDevice:(id)a3;
+ (BOOL)isProxCardShowed;
+ (BOOL)isSettingsEnrollmentSupported;
+ (id)profileEnrollmentViewController:(id)a3;
+ (id)profileManagementSpecifier:(id)a3;
+ (id)spatialProfileStatus;
+ (void)setProxCardShowed:(BOOL)a3;
+ (void)setProxCardShowed:(BOOL)a3 forDevice:(id)a4;
@end

@implementation HPSUISpatialProfileManager

+ (BOOL)isSettingsEnrollmentSupported
{
  v22 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    v2 = MGCopyAnswer();
    v3 = [v2 BOOLValue];
    v4 = MGGetStringAnswer();
    v5 = [v4 isEqualToString:@"iPhone"];
    v6 = MGGetBoolAnswer();
    v7 = v3 & v5;
    v8 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "No";
      if (v7)
      {
        v10 = "Yes";
      }

      else
      {
        v10 = "No";
      }

      if (v3)
      {
        v11 = "Yes";
      }

      else
      {
        v11 = "No";
      }

      v14 = 136315906;
      v15 = v10;
      if (v5)
      {
        v12 = "Yes";
      }

      else
      {
        v12 = "No";
      }

      v16 = 2080;
      v17 = v11;
      v18 = 2080;
      v19 = v12;
      if (v6)
      {
        v9 = "Yes";
      }

      v20 = 2080;
      v21 = v9;
      _os_log_impl(&dword_1AC1C3000, v8, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Feature Enabled, Local Support: %s, HW Support: %s, is iPhone: %s iPhone with ANE: %s", &v14, 0x2Au);
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

+ (BOOL)isProxCardEnrollmentSupportedForDevice:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v16 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[HPSUISpatialProfileManager isProxCardEnrollmentSupportedForDevice:];
    }

    v17 = 0;
LABEL_50:

    goto LABEL_51;
  }

  if (_os_feature_enabled_impl())
  {
    v34 = a1;
    v35 = [a1 isSettingsEnrollmentSupported];
    v36 = +[HPSUISpatialProfileManager isProxCardShowed];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v5 = [MEMORY[0x1E698F468] sharedInstance];
    v6 = [v5 pairedDevices];

    v7 = [v6 countByEnumeratingWithState:&v40 objects:v52 count:16];
    if (v7)
    {
      v8 = *v41;
LABEL_5:
      v9 = 0;
      while (1)
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v40 + 1) + 8 * v9);
        v11 = [v10 address];
        v12 = [v11 uppercaseString];
        v13 = [v4 uppercaseString];
        v14 = [v12 isEqualToString:v13];

        if (v14)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v6 countByEnumeratingWithState:&v40 objects:v52 count:16];
          if (v7)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }

      v18 = [v10 getSpatialAudioPlatformSupport];
      v15 = v18 == 1;
      v19 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = "NO";
        if (v18 == 1)
        {
          v20 = "YES";
        }

        *buf = 138412546;
        *&buf[4] = v4;
        *&buf[12] = 2080;
        *&buf[14] = v20;
        _os_log_impl(&dword_1AC1C3000, v19, OS_LOG_TYPE_DEFAULT, "Spatial Profile: %@, Remote Support: %s", buf, 0x16u);
      }

      if ((v35 & (v18 == 1)) == 1)
      {
        v17 = ([v34 isProfileExisting] | v36) ^ 1;
        v15 = 1;
        goto LABEL_23;
      }
    }

    else
    {
LABEL_11:

      v15 = 0;
    }

    v17 = 0;
LABEL_23:
    if (!v36 && _os_feature_enabled_impl())
    {
      v21 = [objc_alloc(MEMORY[0x1E69A2A88]) initWithCameraSession:0];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v45) = 0;
      v22 = dispatch_group_create();
      dispatch_group_enter(v22);
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __69__HPSUISpatialProfileManager_isProxCardEnrollmentSupportedForDevice___block_invoke;
      v37[3] = &unk_1E7970608;
      v39 = buf;
      v23 = v22;
      v38 = v23;
      [v21 downloadHRTFAsset:1 withCompletion:v37];
      v24 = dispatch_time(0, 500000000);
      v25 = dispatch_group_wait(v23, v24);
      v26 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = @"timed out";
        if (!v25)
        {
          v27 = @"succeeded";
        }

        *v50 = 138412290;
        v51 = v27;
        _os_log_impl(&dword_1AC1C3000, v26, OS_LOG_TYPE_DEFAULT, "Spatial Profile: downloadAsset %@", v50, 0xCu);
      }

      if (v17)
      {
        v17 = *(*&buf[8] + 24);
      }

      else
      {
        v17 = 0;
      }

      _Block_object_dispose(buf, 8);
    }

    v16 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      if (v17)
      {
        v28 = "Yes";
      }

      else
      {
        v28 = "No";
      }

      if (v35)
      {
        v29 = "Yes";
      }

      else
      {
        v29 = "No";
      }

      if (v15)
      {
        v30 = "Yes";
      }

      else
      {
        v30 = "No";
      }

      if ([v34 isProfileExisting])
      {
        v31 = "Yes";
      }

      else
      {
        v31 = "No";
      }

      *buf = 136316162;
      if (v36)
      {
        v32 = "Yes";
      }

      else
      {
        v32 = "No";
      }

      *&buf[4] = v28;
      *&buf[12] = 2080;
      *&buf[14] = v29;
      *&buf[22] = 2080;
      v45 = v30;
      v46 = 2080;
      v47 = v31;
      v48 = 2080;
      v49 = v32;
      _os_log_impl(&dword_1AC1C3000, v16, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Overall Support: %s => Feature Enabled, Local Support: %s, Remote Support: %s, Profile Existing: %s, Prox Card Presented: %s", buf, 0x34u);
    }

    goto LABEL_50;
  }

  v17 = 0;
LABEL_51:

  return v17 & 1;
}

void __69__HPSUISpatialProfileManager_isProxCardEnrollmentSupportedForDevice___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109634;
    v10[1] = a2;
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_1AC1C3000, v9, OS_LOG_TYPE_DEFAULT, "Spatial Profile: downloadHRTFAsset isDownloaded %d, path %@, error %@", v10, 0x1Cu);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    CFPreferencesSetAppValue(@"downloadAssetPath", v7, @"com.apple.BTServer");
    CFPreferencesAppSynchronize(@"com.apple.BTServer");
  }

  dispatch_group_leave(*(a1 + 32));
}

+ (void)setProxCardShowed:(BOOL)a3 forDevice:(id)a4
{
  v4 = a3;
  v13 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (v5)
  {
    v6 = MEMORY[0x1E695E4D0];
    if (!v4)
    {
      v6 = MEMORY[0x1E695E4C0];
    }

    CFPreferencesSetAppValue(@"isSpatialProfileShowed", *v6, @"com.apple.BTServer");
    CFPreferencesAppSynchronize(@"com.apple.BTServer");
    v7 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "NO";
      if (v4)
      {
        v8 = "YES";
      }

      v9 = 136315394;
      v10 = v8;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_1AC1C3000, v7, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Set Prox Card Showd to %s for Device: %@", &v9, 0x16u);
    }
  }

  else
  {
    v7 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[HPSUISpatialProfileManager setProxCardShowed:forDevice:];
    }
  }
}

+ (void)setProxCardShowed:(BOOL)a3
{
  v3 = a3;
  v9 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695E4C0];
  if (a3)
  {
    v4 = MEMORY[0x1E695E4D0];
  }

  CFPreferencesSetAppValue(@"isSpatialProfileShowed", *v4, @"com.apple.BTServer");
  CFPreferencesAppSynchronize(@"com.apple.BTServer");
  v5 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    if (v3)
    {
      v6 = "YES";
    }

    v7 = 136315138;
    v8 = v6;
    _os_log_impl(&dword_1AC1C3000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: update prox card status via Enrollment : %s ", &v7, 0xCu);
  }
}

+ (BOOL)isProxCardShowed
{
  v13 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = 0;
  CFPreferencesAppSynchronize(@"com.apple.BTServer");
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"isSpatialProfileShowed", @"com.apple.BTServer", &keyExistsAndHasValidFormat);
  v3 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "YES";
    if (AppBooleanValue)
    {
      v5 = "YES";
    }

    else
    {
      v5 = "NO";
    }

    if (!keyExistsAndHasValidFormat)
    {
      v4 = "NO";
    }

    *buf = 136315394;
    v10 = v5;
    v11 = 2080;
    v12 = v4;
    _os_log_impl(&dword_1AC1C3000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Check if prox card is shown, showed %s %s ", buf, 0x16u);
  }

  if (AppBooleanValue)
  {
    v6 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v6 = 1;
  }

  return !v6;
}

+ (id)profileEnrollmentViewController:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!_os_feature_enabled_impl())
  {
    v4 = objc_alloc_init(HPSUISpatialProfileEnrollmentController);
    [(HPSUISpatialProfileEnrollmentController *)v4 setContent:v3];
LABEL_7:
    v8 = [[HPSUISpatialProfileNavigationController alloc] initWithRootViewController:v4];
    goto LABEL_8;
  }

  v4 = objc_alloc_init(HPSUISpatialProfileSingeStepEnrollmentController);
  CFPreferencesAppSynchronize(@"com.apple.BTServer");
  v5 = CFPreferencesCopyAppValue(@"downloadAssetPath", @"com.apple.BTServer");
  v6 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1AC1C3000, v7, OS_LOG_TYPE_DEFAULT, "Spatial Profile: settting savedHRTFAssetPath %@", &v10, 0xCu);
    }

    [(HPSUISpatialProfileEnrollmentController *)v4 setDownloadAssetPath:v5];
    [(HPSUISpatialProfileEnrollmentController *)v4 setContent:v3];

    goto LABEL_7;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    +[HPSUISpatialProfileManager profileEnrollmentViewController:];
  }

  v8 = 0;
LABEL_8:

  return v8;
}

+ (id)profileManagementSpecifier:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69C5748];
  v5 = MEMORY[0x1E696AAE8];
  v6 = a3;
  v7 = [v5 bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_TITLE" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  v9 = [v4 preferenceSpecifierNamed:v8 target:a1 set:0 get:sel_spatialProfileStatus detail:objc_opt_class() cell:2 edit:0];

  v12 = @"content";
  v13[0] = v6;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  [v9 setUserInfo:v10];
  [v9 setIdentifier:@"PERSONALIZED_SPATIAL_AUDIO"];

  return v9;
}

+ (id)spatialProfileStatus
{
  if ([a1 isProfileExisting])
  {
    v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v3 = [v2 localizedStringForKey:@"ON" value:&stru_1F20FAB50 table:@"SpatialAudioProfile"];
  }

  else
  {
    v3 = &stru_1F20FAB50;
  }

  return v3;
}

+ (BOOL)isProfileExisting
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v2 = objc_alloc_init(MEMORY[0x1E698D460]);
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __47__HPSUISpatialProfileManager_isProfileExisting__block_invoke;
  v13 = &unk_1E7970630;
  v15 = &v16;
  v4 = v3;
  v14 = v4;
  [v2 fetchSoundProfileRecordWithCompletion:&v10];

  v5 = dispatch_time(0, 1000000000);
  dispatch_group_wait(v4, v5);
  v6 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(v17 + 24);
    *buf = 67109120;
    v21 = v7;
    _os_log_impl(&dword_1AC1C3000, v6, OS_LOG_TYPE_DEFAULT, "Spatial Profile: isProfileExisting %i", buf, 8u);
  }

  [v2 invalidate];
  v8 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v8 & 1;
}

void __47__HPSUISpatialProfileManager_isProfileExisting__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __47__HPSUISpatialProfileManager_isProfileExisting__block_invoke_cold_1(v6, v7);
    }

LABEL_4:

    goto LABEL_5;
  }

  v8 = os_log_create("com.apple.connectedAudio", "HeadphoneCommonUIKit");
  v7 = v8;
  if (!v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __47__HPSUISpatialProfileManager_isProfileExisting__block_invoke_cold_2();
    }

    goto LABEL_4;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 soundProfileData];
    v12 = 134217984;
    v13 = [v9 length];
    _os_log_impl(&dword_1AC1C3000, v7, OS_LOG_TYPE_DEFAULT, "Spatial Profile: isProfileExisting Profile Data Size: %lu", &v12, 0xCu);
  }

  v10 = [v5 soundProfileData];
  v11 = [v10 length];

  if (v11)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

LABEL_5:
  dispatch_group_leave(*(a1 + 32));
}

void __47__HPSUISpatialProfileManager_isProfileExisting__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AC1C3000, a2, OS_LOG_TYPE_ERROR, "Spatial Profile: isProfileExisting Error: %@", &v2, 0xCu);
}

@end