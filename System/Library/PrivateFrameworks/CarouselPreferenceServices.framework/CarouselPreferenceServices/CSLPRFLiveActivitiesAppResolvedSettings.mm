@interface CSLPRFLiveActivitiesAppResolvedSettings
- (BOOL)allowLiveActivitiesForApp;
- (CSLPRFLiveActivitiesAppResolvedSettings)initWithSettings:(id)settings globalSettings:(id)globalSettings;
- (unint64_t)autoLaunchBehaviorForApp;
@end

@implementation CSLPRFLiveActivitiesAppResolvedSettings

- (unint64_t)autoLaunchBehaviorForApp
{
  v36 = *MEMORY[0x277D85DE8];
  settings = self->_settings;
  v5 = objc_opt_class();
  v6 = settings;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    application = [(CSLPRFLiveActivitiesAppProperties *)v8 application];
    bundleIdentifier = [application bundleIdentifier];
    v11 = [bundleIdentifier isEqualToString:@"com.apple.SafetyMonitorApp"];

    if (v11)
    {
      application3 = cslprf_settings_log();
      if (os_log_type_enabled(application3, OS_LOG_TYPE_INFO))
      {
        v13 = NSStringFromSelector(a2);
        application2 = [(CSLPRFLiveActivitiesAppProperties *)v8 application];
        bundleIdentifier2 = [application2 bundleIdentifier];
        v30 = 134218498;
        selfCopy3 = self;
        v32 = 2112;
        v33 = v13;
        v34 = 2112;
        v35 = bundleIdentifier2;
        _os_log_impl(&dword_22CE92000, application3, OS_LOG_TYPE_INFO, "%p %@ -- this (%@) is a check-in activity, always allow it to launch to .smartstack.", &v30, 0x20u);
      }

      goto LABEL_16;
    }
  }

  if ([(CSLPRFLiveActivitiesAppProperties *)self->_globalSettings globalAutoLaunchLiveActivities]&& ([(CSLPRFLiveActivitiesAppProperties *)self->_globalSettings globalAllowLiveActivities]& 1) != 0)
  {
    application3 = [(CSLPRFLiveActivitiesAppProperties *)v8 application];
    bundleIdentifier3 = [application3 bundleIdentifier];
    if (![bundleIdentifier3 isEqual:@"com.apple.NanoAllMusicApps"])
    {
LABEL_15:

LABEL_16:
LABEL_17:
      autoLaunchBehaviorForApp = [(CSLPRFLiveActivitiesAppProperties *)self->_settings autoLaunchBehaviorForApp];
      goto LABEL_21;
    }

    v17 = [MEMORY[0x277CC1E70] bundleRecordWithApplicationIdentifier:@"com.apple.NanoNowPlaying" error:0];
    if (v17)
    {

      goto LABEL_15;
    }

    autoLaunchBehaviorForApp2 = [(CSLPRFLiveActivitiesAppProperties *)self->_settings autoLaunchBehaviorForApp];

    if (autoLaunchBehaviorForApp2 != 1)
    {
      goto LABEL_17;
    }

    v26 = cslprf_settings_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = NSStringFromSelector(a2);
      application4 = [(CSLPRFLiveActivitiesAppProperties *)v8 application];
      bundleIdentifier4 = [application4 bundleIdentifier];
      v30 = 134218498;
      selfCopy3 = self;
      v32 = 2112;
      v33 = v27;
      v34 = 2112;
      v35 = bundleIdentifier4;
      _os_log_impl(&dword_22CE92000, v26, OS_LOG_TYPE_INFO, "%p %@ -- user uninstalled Now Playing but configured .smartstack for all audio apps, returning .app instead for (%@).", &v30, 0x20u);
    }

    autoLaunchBehaviorForApp = 2;
  }

  else
  {
    v19 = cslprf_settings_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = NSStringFromSelector(a2);
      application5 = [(CSLPRFLiveActivitiesAppProperties *)v8 application];
      bundleIdentifier5 = [application5 bundleIdentifier];
      v30 = 134218498;
      selfCopy3 = self;
      v32 = 2112;
      v33 = v20;
      v34 = 2112;
      v35 = bundleIdentifier5;
      _os_log_impl(&dword_22CE92000, v19, OS_LOG_TYPE_INFO, "%p %@ -- overriding app setting for (%@) because global setting is off.", &v30, 0x20u);
    }

    autoLaunchBehaviorForApp = 0;
  }

LABEL_21:

  v23 = *MEMORY[0x277D85DE8];
  return autoLaunchBehaviorForApp;
}

- (BOOL)allowLiveActivitiesForApp
{
  settings = self->_settings;
  v4 = objc_opt_class();
  v5 = settings;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7 && (-[CSLPRFLiveActivitiesAppProperties application](v7, "application"), v8 = objc_claimAutoreleasedReturnValue(), [v8 bundleIdentifier], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", @"com.apple.SafetyMonitorApp"), v9, v8, (v10 & 1) != 0) || -[CSLPRFLiveActivitiesAppProperties globalAllowLiveActivities](self->_globalSettings, "globalAllowLiveActivities"))
  {
    allowLiveActivitiesForApp = [(CSLPRFLiveActivitiesAppProperties *)self->_settings allowLiveActivitiesForApp];
  }

  else
  {
    allowLiveActivitiesForApp = 0;
  }

  return allowLiveActivitiesForApp;
}

- (CSLPRFLiveActivitiesAppResolvedSettings)initWithSettings:(id)settings globalSettings:(id)globalSettings
{
  settingsCopy = settings;
  globalSettingsCopy = globalSettings;
  v12.receiver = self;
  v12.super_class = CSLPRFLiveActivitiesAppResolvedSettings;
  v9 = [(CSLPRFLiveActivitiesAppResolvedSettings *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_settings, settings);
    objc_storeStrong(&v10->_globalSettings, globalSettings);
  }

  return v10;
}

@end