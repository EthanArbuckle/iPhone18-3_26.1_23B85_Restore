@interface CSLPRFLiveActivitiesAppSettingsCustomization
- (id)settingsForBundleIdentifier:(id)identifier fromAllSettings:(id)settings handled:(BOOL *)handled;
@end

@implementation CSLPRFLiveActivitiesAppSettingsCustomization

- (id)settingsForBundleIdentifier:(id)identifier fromAllSettings:(id)settings handled:(BOOL *)handled
{
  v36[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  settingsCopy = settings;
  v36[0] = @"com.apple.NanoPhone";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  if (![v9 containsObject:identifierCopy])
  {
    v12 = [MEMORY[0x277CC1E70] bundleRecordWithApplicationIdentifier:identifierCopy error:0];
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
          v35 = identifierCopy;
          _os_log_impl(&dword_22CE92000, v17, OS_LOG_TYPE_INFO, "Live activities settings requested for: %@", buf, 0xCu);
        }

        v33 = v16;
        v18 = [CSLPRFApp appWithApplicationRecord:v16];
        unionedBackgroundModes = [v18 unionedBackgroundModes];
        if ([unionedBackgroundModes containsObject:@"audio"])
        {
          v20 = 0;
        }

        else
        {
          bundleIdentifier = [v18 bundleIdentifier];
          v22 = [bundleIdentifier isEqualToString:@"com.apple.NanoNowPlaying"];

          v20 = v22 ^ 1;
        }

        unionedBackgroundModes2 = [v18 unionedBackgroundModes];
        if ([unionedBackgroundModes2 containsObject:@"workout-processing"])
        {
          v24 = 1;
        }

        else
        {
          bundleIdentifier2 = [v18 bundleIdentifier];
          v24 = [bundleIdentifier2 isEqualToString:@"com.apple.SessionTrackerApp"];
        }

        unionedBackgroundModes3 = [v18 unionedBackgroundModes];
        v27 = [unionedBackgroundModes3 containsObject:@"physical-therapy"];

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

          *handled = 1;
          v11 = [settingsCopy objectForKey:*v29];

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
    *handled = 0;
    goto LABEL_35;
  }

  v10 = cslprf_settings_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v35 = identifierCopy;
    _os_log_impl(&dword_22CE92000, v10, OS_LOG_TYPE_INFO, "%@ is configured as a media app but will use app specific settings.", buf, 0xCu);
  }

  v11 = 0;
  *handled = 0;
LABEL_36:

  v31 = *MEMORY[0x277D85DE8];

  return v11;
}

@end