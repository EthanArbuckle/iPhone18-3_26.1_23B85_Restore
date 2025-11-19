@interface HPSSpatialProfileManager
+ (BOOL)isProfileExisting;
+ (BOOL)isProxCardEnrollmentSupportedForDevice:(id)a3;
+ (BOOL)isProxCardShowed;
+ (BOOL)isSettingsEnrollmentSupported;
+ (id)profileEnrollmentViewController;
+ (id)profileManagementSpecifier;
+ (id)spatialProfileStatus;
+ (void)setProxCardShowed:(BOOL)a3;
+ (void)setProxCardShowed:(BOOL)a3 forDevice:(id)a4;
@end

@implementation HPSSpatialProfileManager

+ (BOOL)isSettingsEnrollmentSupported
{
  v23 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    v2 = MGCopyAnswer();
    v3 = [v2 BOOLValue];
    v4 = MGGetStringAnswer();
    v5 = [v4 isEqualToString:@"iPhone"];
    v6 = MGGetBoolAnswer();
    v7 = v3 & v5;
    v8 = sharedBluetoothSettingsLogComponent();
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

      v15 = 136315906;
      v16 = v10;
      if (v5)
      {
        v12 = "Yes";
      }

      else
      {
        v12 = "No";
      }

      v17 = 2080;
      v18 = v11;
      v19 = 2080;
      v20 = v12;
      if (v6)
      {
        v9 = "Yes";
      }

      v21 = 2080;
      v22 = v9;
      _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Feature Enabled, Local Support: %s, HW Support: %s, is iPhone: %s iPhone with ANE: %s", &v15, 0x2Au);
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (BOOL)isProxCardEnrollmentSupportedForDevice:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v16 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[HPSSpatialProfileManager isProxCardEnrollmentSupportedForDevice:];
    }

    v17 = 0;
LABEL_50:

    goto LABEL_51;
  }

  if (_os_feature_enabled_impl())
  {
    v35 = a1;
    v36 = [a1 isSettingsEnrollmentSupported];
    v37 = +[HPSSpatialProfileManager isProxCardShowed];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v5 = [MEMORY[0x277CF3248] sharedInstance];
    v6 = [v5 pairedDevices];

    v7 = [v6 countByEnumeratingWithState:&v41 objects:v53 count:16];
    if (v7)
    {
      v8 = *v42;
LABEL_5:
      v9 = 0;
      while (1)
      {
        if (*v42 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v41 + 1) + 8 * v9);
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
          v7 = [v6 countByEnumeratingWithState:&v41 objects:v53 count:16];
          if (v7)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }

      v18 = [v10 getSpatialAudioPlatformSupport];
      v15 = v18 == 1;
      v19 = sharedBluetoothSettingsLogComponent();
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
        _os_log_impl(&dword_251143000, v19, OS_LOG_TYPE_DEFAULT, "Spatial Profile: %@, Remote Support: %s", buf, 0x16u);
      }

      if ((v36 & (v18 == 1)) == 1)
      {
        v17 = ([v35 isProfileExisting] | v37) ^ 1;
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
    if (!v37 && _os_feature_enabled_impl())
    {
      v21 = [objc_alloc(MEMORY[0x277D0F968]) initWithCameraSession:0];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v46) = 0;
      v22 = dispatch_group_create();
      dispatch_group_enter(v22);
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __67__HPSSpatialProfileManager_isProxCardEnrollmentSupportedForDevice___block_invoke;
      v38[3] = &unk_2796AE1D8;
      v40 = buf;
      v23 = v22;
      v39 = v23;
      [v21 downloadHRTFAsset:1 withCompletion:v38];
      v24 = dispatch_time(0, 500000000);
      v25 = dispatch_group_wait(v23, v24);
      v26 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = @"timed out";
        if (!v25)
        {
          v27 = @"succeeded";
        }

        *v51 = 138412290;
        v52 = v27;
        _os_log_impl(&dword_251143000, v26, OS_LOG_TYPE_DEFAULT, "Spatial Profile: downloadAsset %@", v51, 0xCu);
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

    v16 = sharedBluetoothSettingsLogComponent();
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

      if (v36)
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

      if ([v35 isProfileExisting])
      {
        v31 = "Yes";
      }

      else
      {
        v31 = "No";
      }

      *buf = 136316162;
      if (v37)
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
      v46 = v30;
      v47 = 2080;
      v48 = v31;
      v49 = 2080;
      v50 = v32;
      _os_log_impl(&dword_251143000, v16, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Overall Support: %s => Feature Enabled, Local Support: %s, Remote Support: %s, Profile Existing: %s, Prox Card Presented: %s", buf, 0x34u);
    }

    goto LABEL_50;
  }

  v17 = 0;
LABEL_51:

  v33 = *MEMORY[0x277D85DE8];
  return v17 & 1;
}

void __67__HPSSpatialProfileManager_isProxCardEnrollmentSupportedForDevice___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109634;
    v11[1] = a2;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_251143000, v9, OS_LOG_TYPE_DEFAULT, "Spatial Profile: downloadHRTFAsset isDownloaded %d, path %@, error %@", v11, 0x1Cu);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    CFPreferencesSetAppValue(@"downloadAssetPath", v7, @"com.apple.BTServer");
    CFPreferencesAppSynchronize(@"com.apple.BTServer");
  }

  dispatch_group_leave(*(a1 + 32));

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)setProxCardShowed:(BOOL)a3 forDevice:(id)a4
{
  v4 = a3;
  v14 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (v5)
  {
    v6 = MEMORY[0x277CBED28];
    if (!v4)
    {
      v6 = MEMORY[0x277CBED10];
    }

    CFPreferencesSetAppValue(@"isSpatialProfileShowed", *v6, @"com.apple.BTServer");
    CFPreferencesAppSynchronize(@"com.apple.BTServer");
    v7 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "NO";
      if (v4)
      {
        v8 = "YES";
      }

      v10 = 136315394;
      v11 = v8;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Set Prox Card Showd to %s for Device: %@", &v10, 0x16u);
    }
  }

  else
  {
    v7 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[HPSSpatialProfileManager setProxCardShowed:forDevice:];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)setProxCardShowed:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBED10];
  if (a3)
  {
    v4 = MEMORY[0x277CBED28];
  }

  CFPreferencesSetAppValue(@"isSpatialProfileShowed", *v4, @"com.apple.BTServer");
  CFPreferencesAppSynchronize(@"com.apple.BTServer");
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    if (v3)
    {
      v6 = "YES";
    }

    v8 = 136315138;
    v9 = v6;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: update prox card status via Enrollment : %s ", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isProxCardShowed
{
  v14 = *MEMORY[0x277D85DE8];
  keyExistsAndHasValidFormat = 0;
  CFPreferencesAppSynchronize(@"com.apple.BTServer");
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"isSpatialProfileShowed", @"com.apple.BTServer", &keyExistsAndHasValidFormat);
  v3 = sharedBluetoothSettingsLogComponent();
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
    v11 = v5;
    v12 = 2080;
    v13 = v4;
    _os_log_impl(&dword_251143000, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Check if prox card is shown, showed %s %s ", buf, 0x16u);
  }

  if (AppBooleanValue)
  {
    v6 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v6 = 1;
  }

  result = !v6;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)profileEnrollmentViewController
{
  v11 = *MEMORY[0x277D85DE8];
  if (!_os_feature_enabled_impl())
  {
    v2 = objc_alloc_init(HPSSpatialProfileEnrollmentController);
LABEL_7:
    v6 = [[HPSSpatialProfileNavigationController alloc] initWithRootViewController:v2];
    goto LABEL_8;
  }

  v2 = objc_alloc_init(HPSSpatialProfileSingeStepEnrollmentController);
  CFPreferencesAppSynchronize(@"com.apple.BTServer");
  v3 = CFPreferencesCopyAppValue(@"downloadAssetPath", @"com.apple.BTServer");
  v4 = sharedBluetoothSettingsLogComponent();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Profile: settting savedHRTFAssetPath %@", &v9, 0xCu);
    }

    [(HPSSpatialProfileEnrollmentController *)v2 setDownloadAssetPath:v3];
    goto LABEL_7;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    +[HPSSpatialProfileManager profileEnrollmentViewController];
  }

  v6 = 0;
LABEL_8:

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)profileManagementSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"SPATIAL_AUDIO_PROFILE_TITLE" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  v6 = [v3 preferenceSpecifierNamed:v5 target:a1 set:0 get:sel_spatialProfileStatus detail:objc_opt_class() cell:2 edit:0];

  return v6;
}

+ (id)spatialProfileStatus
{
  if ([a1 isProfileExisting])
  {
    v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v2 localizedStringForKey:@"ON" value:&stru_286339F58 table:@"SpatialAudioProfile"];
  }

  else
  {
    v3 = &stru_286339F58;
  }

  return v3;
}

+ (BOOL)isProfileExisting
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v2 = objc_alloc_init(MEMORY[0x277CF3260]);
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __45__HPSSpatialProfileManager_isProfileExisting__block_invoke;
  v14 = &unk_2796AE200;
  v16 = &v17;
  v4 = v3;
  v15 = v4;
  [v2 fetchSoundProfileRecordWithCompletion:&v11];

  v5 = dispatch_time(0, 1000000000);
  dispatch_group_wait(v4, v5);
  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(v18 + 24);
    *buf = 67109120;
    v22 = v7;
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "Spatial Profile: isProfileExisting %i", buf, 8u);
  }

  [v2 invalidate];
  v8 = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  v9 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

void __45__HPSSpatialProfileManager_isProfileExisting__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __45__HPSSpatialProfileManager_isProfileExisting__block_invoke_cold_1(v6, v7);
    }

LABEL_4:

    goto LABEL_5;
  }

  v9 = sharedBluetoothSettingsLogComponent();
  v7 = v9;
  if (!v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __45__HPSSpatialProfileManager_isProfileExisting__block_invoke_cold_2();
    }

    goto LABEL_4;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v5 soundProfileData];
    v13 = 134217984;
    v14 = [v10 length];
    _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "Spatial Profile: isProfileExisting Profile Data Size: %lu", &v13, 0xCu);
  }

  v11 = [v5 soundProfileData];
  v12 = [v11 length];

  if (v12)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

LABEL_5:
  dispatch_group_leave(*(a1 + 32));

  v8 = *MEMORY[0x277D85DE8];
}

void __45__HPSSpatialProfileManager_isProfileExisting__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_251143000, a2, OS_LOG_TYPE_ERROR, "Spatial Profile: isProfileExisting Error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end