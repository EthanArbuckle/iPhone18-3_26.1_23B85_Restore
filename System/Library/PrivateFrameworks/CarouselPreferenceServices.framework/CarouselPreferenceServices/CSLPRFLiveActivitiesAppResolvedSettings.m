@interface CSLPRFLiveActivitiesAppResolvedSettings
- (BOOL)allowLiveActivitiesForApp;
- (CSLPRFLiveActivitiesAppResolvedSettings)initWithSettings:(id)a3 globalSettings:(id)a4;
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
    v9 = [(CSLPRFLiveActivitiesAppProperties *)v8 application];
    v10 = [v9 bundleIdentifier];
    v11 = [v10 isEqualToString:@"com.apple.SafetyMonitorApp"];

    if (v11)
    {
      v12 = cslprf_settings_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = NSStringFromSelector(a2);
        v14 = [(CSLPRFLiveActivitiesAppProperties *)v8 application];
        v15 = [v14 bundleIdentifier];
        v30 = 134218498;
        v31 = self;
        v32 = 2112;
        v33 = v13;
        v34 = 2112;
        v35 = v15;
        _os_log_impl(&dword_22CE92000, v12, OS_LOG_TYPE_INFO, "%p %@ -- this (%@) is a check-in activity, always allow it to launch to .smartstack.", &v30, 0x20u);
      }

      goto LABEL_16;
    }
  }

  if ([(CSLPRFLiveActivitiesAppProperties *)self->_globalSettings globalAutoLaunchLiveActivities]&& ([(CSLPRFLiveActivitiesAppProperties *)self->_globalSettings globalAllowLiveActivities]& 1) != 0)
  {
    v12 = [(CSLPRFLiveActivitiesAppProperties *)v8 application];
    v16 = [v12 bundleIdentifier];
    if (![v16 isEqual:@"com.apple.NanoAllMusicApps"])
    {
LABEL_15:

LABEL_16:
LABEL_17:
      v18 = [(CSLPRFLiveActivitiesAppProperties *)self->_settings autoLaunchBehaviorForApp];
      goto LABEL_21;
    }

    v17 = [MEMORY[0x277CC1E70] bundleRecordWithApplicationIdentifier:@"com.apple.NanoNowPlaying" error:0];
    if (v17)
    {

      goto LABEL_15;
    }

    v25 = [(CSLPRFLiveActivitiesAppProperties *)self->_settings autoLaunchBehaviorForApp];

    if (v25 != 1)
    {
      goto LABEL_17;
    }

    v26 = cslprf_settings_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = NSStringFromSelector(a2);
      v28 = [(CSLPRFLiveActivitiesAppProperties *)v8 application];
      v29 = [v28 bundleIdentifier];
      v30 = 134218498;
      v31 = self;
      v32 = 2112;
      v33 = v27;
      v34 = 2112;
      v35 = v29;
      _os_log_impl(&dword_22CE92000, v26, OS_LOG_TYPE_INFO, "%p %@ -- user uninstalled Now Playing but configured .smartstack for all audio apps, returning .app instead for (%@).", &v30, 0x20u);
    }

    v18 = 2;
  }

  else
  {
    v19 = cslprf_settings_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = NSStringFromSelector(a2);
      v21 = [(CSLPRFLiveActivitiesAppProperties *)v8 application];
      v22 = [v21 bundleIdentifier];
      v30 = 134218498;
      v31 = self;
      v32 = 2112;
      v33 = v20;
      v34 = 2112;
      v35 = v22;
      _os_log_impl(&dword_22CE92000, v19, OS_LOG_TYPE_INFO, "%p %@ -- overriding app setting for (%@) because global setting is off.", &v30, 0x20u);
    }

    v18 = 0;
  }

LABEL_21:

  v23 = *MEMORY[0x277D85DE8];
  return v18;
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
    v11 = [(CSLPRFLiveActivitiesAppProperties *)self->_settings allowLiveActivitiesForApp];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CSLPRFLiveActivitiesAppResolvedSettings)initWithSettings:(id)a3 globalSettings:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CSLPRFLiveActivitiesAppResolvedSettings;
  v9 = [(CSLPRFLiveActivitiesAppResolvedSettings *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_settings, a3);
    objc_storeStrong(&v10->_globalSettings, a4);
  }

  return v10;
}

@end