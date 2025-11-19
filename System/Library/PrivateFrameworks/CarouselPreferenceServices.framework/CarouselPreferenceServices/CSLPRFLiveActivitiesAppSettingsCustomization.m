@interface CSLPRFLiveActivitiesAppSettingsCustomization
- (id)settingsForBundleIdentifier:(id)a3 fromAllSettings:(id)a4 handled:(BOOL *)a5;
@end

@implementation CSLPRFLiveActivitiesAppSettingsCustomization

- (id)settingsForBundleIdentifier:(id)a3 fromAllSettings:(id)a4 handled:(BOOL *)a5
{
  v36[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v36[0] = @"com.apple.NanoPhone";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  if (![v9 containsObject:v7])
  {
    v12 = [MEMORY[0x277CC1E70] bundleRecordWithApplicationIdentifier:v7 error:0];
    if (v12)
    {
      v13 = objc_opt_class();
      v14 = v12;
      if (v13)
      {
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      if (v16)
      {
        v17 = cslprf_settings_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v35 = v7;
          _os_log_impl(&dword_22CE92000, v17, OS_LOG_TYPE_INFO, "Live activities settings requested for: %@", buf, 0xCu);
        }

        v33 = v16;
        v18 = [CSLPRFApp appWithApplicationRecord:v16];
        v19 = [v18 unionedBackgroundModes];
        if ([v19 containsObject:@"audio"])
        {
          v20 = 0;
        }

        else
        {
          v21 = [v18 bundleIdentifier];
          v22 = [v21 isEqualToString:@"com.apple.NanoNowPlaying"];

          v20 = v22 ^ 1;
        }

        v23 = [v18 unionedBackgroundModes];
        if ([v23 containsObject:@"workout-processing"])
        {
          v24 = 1;
        }

        else
        {
          v25 = [v18 bundleIdentifier];
          v24 = [v25 isEqualToString:@"com.apple.SessionTrackerApp"];
        }

        v26 = [v18 unionedBackgroundModes];
        v27 = [v26 containsObject:@"physical-therapy"];

        if (((v20 | v24) & 1) == 0 && (v27 & 1) == 0)
        {
          v28 = cslprf_settings_log();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22CE92000, v28, OS_LOG_TYPE_INFO, "Bundle id is a media app, returning 'All Media Apps' settings", buf, 2u);
          }

          v29 = kAllMusicAppsBundleIdentifer;
LABEL_29:

          *a5 = 1;
          v11 = [v8 objectForKey:*v29];

LABEL_35:
          goto LABEL_36;
        }

        if (v24)
        {
          v28 = cslprf_settings_log();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22CE92000, v28, OS_LOG_TYPE_INFO, "Bundle id is a workout app, returning 'All Workout Apps' settings", buf, 2u);
          }

          v29 = kAllWorkoutAppsBundleIdentifier;
          goto LABEL_29;
        }

        v16 = v33;
      }
    }

    v30 = cslprf_settings_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22CE92000, v30, OS_LOG_TYPE_INFO, "Bundle id is not a special type of app, returning standard settings.", buf, 2u);
    }

    v11 = 0;
    *a5 = 0;
    goto LABEL_35;
  }

  v10 = cslprf_settings_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v35 = v7;
    _os_log_impl(&dword_22CE92000, v10, OS_LOG_TYPE_INFO, "%@ is configured as a media app but will use app specific settings.", buf, 0xCu);
  }

  v11 = 0;
  *a5 = 0;
LABEL_36:

  v31 = *MEMORY[0x277D85DE8];

  return v11;
}

@end