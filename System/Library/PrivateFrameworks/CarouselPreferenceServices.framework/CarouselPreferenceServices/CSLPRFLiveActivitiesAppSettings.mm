@interface CSLPRFLiveActivitiesAppSettings
+ (id)globalSettingsWithSerialization:(id)a3 delegate:(id)a4;
+ (id)settingsForApplication:(id)a3 withSerialization:(id)a4 delegate:(id)a5;
+ (id)sharedSettingsModel;
+ (os_state_data_s)_stateDataWithHints:(os_state_hints_s *)a3;
+ (unint64_t)categoryForApplication:(id)a3;
+ (void)migrateLegacySettings:(id)a3;
- (BOOL)allowLiveActivitiesForApp;
- (BOOL)globalAllowLiveActivities;
- (BOOL)globalAutoLaunchLiveActivities;
- (BOOL)hasCustomSetting;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)allowLiveActivitiesForAppWithIgnoredSpecifier:(id)a3;
- (id)globalAllowLiveActivitiesWithIgnoredSpecifier:(id)a3;
- (id)globalAutoLaunchLiveActivitiesWithIgnoredSpecifier:(id)a3;
- (id)initForApplication:(id)a3 isGlobalDefault:(BOOL)a4 withSerialization:(id)a5 delegate:(id)a6;
- (id)resolvedSettingWithGlobalSettings:(id)a3;
- (id)serialize;
- (unint64_t)autoLaunchBehaviorForApp;
- (unint64_t)autoLaunchBehaviorForAppWithIgnoredSpecifier:(id)a3;
- (unint64_t)hash;
- (void)setAllowLiveActivitiesForApp:(id)a3 withIgnoredSpecifier:(id)a4;
- (void)setAutoLaunchBehaviorForApp:(unint64_t)a3 withIgnoredSpecifier:(id)a4;
- (void)setDefaultAutoLaunchBehaviorWithBackgroundModes:(id)a3;
- (void)setGlobalAllowLiveActivities:(id)a3 withIgnoredSpecifier:(id)a4;
- (void)setGlobalAutoLaunchLiveActivities:(id)a3 withIgnoredSpecifier:(id)a4;
- (void)updateSettingsWithBlock:(id)a3;
@end

@implementation CSLPRFLiveActivitiesAppSettings

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendBool:{-[CSLPRFLiveActivitiesAppSettings globalAllowLiveActivities](self, "globalAllowLiveActivities")}];
  v5 = [v3 appendBool:{-[CSLPRFLiveActivitiesAppSettings globalAutoLaunchLiveActivities](self, "globalAutoLaunchLiveActivities")}];
  v6 = [v3 appendBool:{-[CSLPRFLiveActivitiesAppSettings allowLiveActivitiesForApp](self, "allowLiveActivitiesForApp")}];
  v7 = [v3 appendUnsignedInteger:{-[CSLPRFLiveActivitiesAppSettings autoLaunchBehaviorForApp](self, "autoLaunchBehaviorForApp")}];
  v8 = [v3 appendObject:self->_application];
  v9 = [v3 hash];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(CSLPRFLiveActivitiesAppSettings *)self globalAllowLiveActivities];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __43__CSLPRFLiveActivitiesAppSettings_isEqual___block_invoke;
  v30[3] = &unk_278745630;
  v7 = v4;
  v31 = v7;
  v8 = [v5 appendBool:v6 counterpart:v30];
  v9 = [(CSLPRFLiveActivitiesAppSettings *)self globalAutoLaunchLiveActivities];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __43__CSLPRFLiveActivitiesAppSettings_isEqual___block_invoke_2;
  v28[3] = &unk_278745630;
  v10 = v7;
  v29 = v10;
  v11 = [v5 appendBool:v9 counterpart:v28];
  v12 = [(CSLPRFLiveActivitiesAppSettings *)self allowLiveActivitiesForApp];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __43__CSLPRFLiveActivitiesAppSettings_isEqual___block_invoke_3;
  v26[3] = &unk_278745630;
  v13 = v10;
  v27 = v13;
  v14 = [v5 appendBool:v12 counterpart:v26];
  v15 = [(CSLPRFLiveActivitiesAppSettings *)self autoLaunchBehaviorForApp];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __43__CSLPRFLiveActivitiesAppSettings_isEqual___block_invoke_4;
  v24[3] = &unk_2787454D8;
  v16 = v13;
  v25 = v16;
  v17 = [v5 appendUnsignedInteger:v15 counterpart:v24];
  application = self->_application;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __43__CSLPRFLiveActivitiesAppSettings_isEqual___block_invoke_5;
  v22[3] = &unk_278745500;
  v23 = v16;
  v19 = v16;
  v20 = [v5 appendObject:application counterpart:v22];
  LOBYTE(application) = [v5 isEqual];

  return application;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:-[CSLPRFLiveActivitiesAppSettings globalAllowLiveActivities](self withName:{"globalAllowLiveActivities"), @"globalAllowLiveActivities"}];
  v5 = [v3 appendBool:-[CSLPRFLiveActivitiesAppSettings globalAutoLaunchLiveActivities](self withName:{"globalAutoLaunchLiveActivities"), @"globalAutoLaunchLiveActivities"}];
  v6 = [v3 appendBool:-[CSLPRFLiveActivitiesAppSettings allowLiveActivitiesForApp](self withName:{"allowLiveActivitiesForApp"), @"liveActivitiesForApp"}];
  v7 = [v3 appendUnsignedInteger:-[CSLPRFLiveActivitiesAppSettings autoLaunchBehaviorForApp](self withName:{"autoLaunchBehaviorForApp"), @"autoLaunchBehaviorForApp"}];
  v8 = [v3 appendObject:self->_application withName:@"application"];
  v9 = [v3 build];

  return v9;
}

- (id)serialize
{
  v15[4] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  lock_globalAllowLiveActivities = self->_lock_globalAllowLiveActivities;
  lock_globalAutoLaunchLiveActivities = self->_lock_globalAutoLaunchLiveActivities;
  lock_allowLiveActivitiesForApp = self->_lock_allowLiveActivitiesForApp;
  lock_autoLaunchBehaviorForApp = self->_lock_autoLaunchBehaviorForApp;
  os_unfair_lock_unlock(&self->_lock);
  v14[0] = @"GlobalAllowLiveActivities";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:lock_globalAllowLiveActivities];
  v15[0] = v7;
  v14[1] = @"GlobalAutoLaunchLiveActivities";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:lock_globalAutoLaunchLiveActivities];
  v15[1] = v8;
  v14[2] = @"AllowLiveActivitiesForApp";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:lock_allowLiveActivitiesForApp];
  v15[2] = v9;
  v14[3] = @"LiveActivitiesAutoLaunchBehaviorForApp";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:lock_autoLaunchBehaviorForApp];
  v15[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)resolvedSettingWithGlobalSettings:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [[CSLPRFLiveActivitiesAppResolvedSettings alloc] initWithSettings:self globalSettings:v4];
  }

  else
  {
    v5 = self;
  }

  v6 = v5;

  return v6;
}

- (void)updateSettingsWithBlock:(id)a3
{
  v4 = a3;
  v6 = [[CSLPRFLiveActivitiesAppMutableSettings alloc] initWithSettings:self];
  v4[2](v4, v6);

  if (![(CSLPRFLiveActivitiesAppMutableSettings *)v6 isEqualToSettings:self])
  {
    os_unfair_lock_lock(&self->_lock);
    self->_lock_globalAllowLiveActivities = [(CSLPRFLiveActivitiesAppMutableSettings *)v6 globalAllowLiveActivities];
    self->_lock_globalAutoLaunchLiveActivities = [(CSLPRFLiveActivitiesAppMutableSettings *)v6 globalAutoLaunchLiveActivities];
    self->_lock_allowLiveActivitiesForApp = [(CSLPRFLiveActivitiesAppMutableSettings *)v6 allowLiveActivitiesForApp];
    self->_lock_autoLaunchBehaviorForApp = [(CSLPRFLiveActivitiesAppMutableSettings *)v6 autoLaunchBehaviorForApp];
    os_unfair_lock_unlock(&self->_lock);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didUpdateSettings:self];
  }
}

- (unint64_t)autoLaunchBehaviorForApp
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(CSLPRFLiveActivitiesAppSettings *)self globalAllowLiveActivities])
  {
    if (self->_isGlobalDefault)
    {
      v3 = cslprf_settings_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = [(CSLPRFLiveActivitiesAppSettings *)self application];
        v5 = [v4 bundleIdentifier];
        v17 = 138412290;
        v18 = v5;
        _os_log_impl(&dword_22CE92000, v3, OS_LOG_TYPE_INFO, "App is not configured so using global settings for %@", &v17, 0xCu);
      }

      lock_autoLaunchBehaviorForApp = [(CSLPRFLiveActivitiesAppSettings *)self globalAutoLaunchLiveActivities];
    }

    else
    {
      os_unfair_lock_lock(&self->_lock);
      lock_autoLaunchBehaviorForApp = self->_lock_autoLaunchBehaviorForApp;
      os_unfair_lock_unlock(&self->_lock);
      v10 = cslprf_settings_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = @"off";
        if (lock_autoLaunchBehaviorForApp == 2)
        {
          v11 = @"app";
        }

        if (lock_autoLaunchBehaviorForApp == 1)
        {
          v12 = @"smart stack";
        }

        else
        {
          v12 = v11;
        }

        v13 = [(CSLPRFLiveActivitiesAppSettings *)self application];
        v14 = [v13 bundleIdentifier];
        v17 = 138412546;
        v18 = v12;
        v19 = 2112;
        v20 = v14;
        _os_log_impl(&dword_22CE92000, v10, OS_LOG_TYPE_INFO, "Returning live activities auto launch behavior = %@ for %@", &v17, 0x16u);
      }
    }
  }

  else
  {
    v7 = cslprf_settings_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [(CSLPRFLiveActivitiesAppSettings *)self application];
      v9 = [v8 bundleIdentifier];
      v17 = 138412290;
      v18 = v9;
      _os_log_impl(&dword_22CE92000, v7, OS_LOG_TYPE_INFO, "Not allowing auto launch of live activity for %@ and global setting is off", &v17, 0xCu);
    }

    lock_autoLaunchBehaviorForApp = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return lock_autoLaunchBehaviorForApp;
}

- (BOOL)allowLiveActivitiesForApp
{
  v22 = *MEMORY[0x277D85DE8];
  if (self->_isGlobalDefault)
  {
    goto LABEL_2;
  }

  v5 = [(CSLPRFLiveActivitiesAppSettings *)self application];
  v6 = [v5 bundleIdentifier];
  v7 = [v6 isEqualToString:@"com.apple.NanoPhone"];

  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = [(CSLPRFLiveActivitiesAppSettings *)self application];
  v9 = [v8 SDKVersion];
  [v9 floatValue];
  v11 = v10;

  if (v11 < 19.0)
  {
LABEL_2:
    v3 = *MEMORY[0x277D85DE8];

    return [(CSLPRFLiveActivitiesAppSettings *)self globalAllowLiveActivities];
  }

  else
  {
LABEL_7:
    os_unfair_lock_lock(&self->_lock);
    lock_allowLiveActivitiesForApp = self->_lock_allowLiveActivitiesForApp;
    os_unfair_lock_unlock(&self->_lock);
    v13 = cslprf_settings_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      if (lock_allowLiveActivitiesForApp)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      v15 = [(CSLPRFLiveActivitiesAppSettings *)self application];
      v16 = [v15 bundleIdentifier];
      v18 = 138412546;
      v19 = v14;
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_22CE92000, v13, OS_LOG_TYPE_INFO, "Returning allow live activities = %@ for %@", &v18, 0x16u);
    }

    v17 = *MEMORY[0x277D85DE8];
    return lock_allowLiveActivitiesForApp;
  }
}

- (BOOL)globalAutoLaunchLiveActivities
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  lock_globalAutoLaunchLiveActivities = self->_lock_globalAutoLaunchLiveActivities;
  os_unfair_lock_unlock(&self->_lock);
  v4 = cslprf_settings_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    if (lock_globalAutoLaunchLiveActivities)
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    v6 = [(CSLPRFLiveActivitiesAppSettings *)self application];
    v7 = [v6 bundleIdentifier];
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_22CE92000, v4, OS_LOG_TYPE_INFO, "Returning global auto launch live activities = %@ for %@", &v10, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return lock_globalAutoLaunchLiveActivities;
}

- (BOOL)globalAllowLiveActivities
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(CSLPRFLiveActivitiesAppSettings *)self application];
  v4 = [v3 bundleIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.SafetyMonitorApp"];

  if (v5)
  {
    v6 = cslprf_settings_log();
    LOBYTE(lock_globalAllowLiveActivities) = 1;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = [(CSLPRFLiveActivitiesAppSettings *)self application];
      v9 = [v8 bundleIdentifier];
      v25 = 138412290;
      v26 = v9;
      v10 = "Overriding global settings to allow check-in activity for (%@)";
      v11 = v6;
      v12 = 12;
LABEL_14:
      _os_log_impl(&dword_22CE92000, v11, OS_LOG_TYPE_INFO, v10, &v25, v12);
    }
  }

  else
  {
    v13 = [(CSLPRFLiveActivitiesAppSettings *)self application];
    v14 = [v13 bundleIdentifier];
    v15 = [v14 isEqualToString:@"com.apple.NanoPhone"];

    if (!v15)
    {
      goto LABEL_9;
    }

    v16 = [(CSLPRFLiveActivitiesAppSettings *)self application];
    v17 = [v16 SDKVersion];
    [v17 floatValue];
    v19 = v18;

    if (v19 < 19.0)
    {
      v6 = cslprf_settings_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v20 = [(CSLPRFLiveActivitiesAppSettings *)self application];
        v21 = [v20 bundleIdentifier];
        v25 = 138412290;
        v26 = v21;
        _os_log_impl(&dword_22CE92000, v6, OS_LOG_TYPE_INFO, "Overriding global settings to block NanoPhone activity for (%@)", &v25, 0xCu);
      }

      LOBYTE(lock_globalAllowLiveActivities) = 0;
    }

    else
    {
LABEL_9:
      os_unfair_lock_lock(&self->_lock);
      lock_globalAllowLiveActivities = self->_lock_globalAllowLiveActivities;
      os_unfair_lock_unlock(&self->_lock);
      v6 = cslprf_settings_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        if (lock_globalAllowLiveActivities)
        {
          v22 = @"YES";
        }

        else
        {
          v22 = @"NO";
        }

        v8 = [(CSLPRFLiveActivitiesAppSettings *)self application];
        v9 = [v8 bundleIdentifier];
        v25 = 138412546;
        v26 = v22;
        v27 = 2112;
        v28 = v9;
        v10 = "Returning global allow live activities = %@ for %@";
        v11 = v6;
        v12 = 22;
        goto LABEL_14;
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return lock_globalAllowLiveActivities;
}

- (BOOL)hasCustomSetting
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_isGlobalDefault)
  {
    v3 = !self->_lock_globalAllowLiveActivities || !self->_lock_globalAutoLaunchLiveActivities;
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    lock_allowLiveActivitiesForApp = self->_lock_allowLiveActivitiesForApp;
    v5 = [(CSLPRFApplication *)self->_application supportsSmartStack];
    lock_autoLaunchBehaviorForApp = self->_lock_autoLaunchBehaviorForApp;
    defaultAutoLaunchBehaviorForApp = self->_defaultAutoLaunchBehaviorForApp;
    os_unfair_lock_unlock(&self->_lock);
    return lock_allowLiveActivitiesForApp != v5 || lock_autoLaunchBehaviorForApp != defaultAutoLaunchBehaviorForApp;
  }

  return v3;
}

- (void)setDefaultAutoLaunchBehaviorWithBackgroundModes:(id)a3
{
  v11[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CSLPRFLiveActivitiesAppSettings *)self hasCustomSetting];
  v11[0] = @"com.apple.SessionTrackerApp";
  v11[1] = @"com.apple.Mind";
  v11[2] = @"com.apple.Mandrake";
  v11[3] = @"com.apple.NanoCompass.watchkitapp";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
  if ([v4 containsObject:@"physical-therapy"] & 1) != 0 || (objc_msgSend(v4, "containsObject:", @"workout-processing"))
  {
    v7 = 2;
  }

  else
  {
    v8 = [(CSLPRFApplication *)self->_application bundleIdentifier];
    v9 = [v6 containsObject:v8];

    v7 = 1;
    if (v9)
    {
      v7 = 2;
    }
  }

  self->_defaultAutoLaunchBehaviorForApp = v7;
  if (!v5)
  {
    self->_lock_autoLaunchBehaviorForApp = v7;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)initForApplication:(id)a3 isGlobalDefault:(BOOL)a4 withSerialization:(id)a5 delegate:(id)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v26.receiver = self;
  v26.super_class = CSLPRFLiveActivitiesAppSettings;
  v14 = [(CSLPRFLiveActivitiesAppSettings *)&v26 init];
  v15 = v14;
  if (v14)
  {
    v14->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v14->_application, a3);
    objc_storeWeak(&v15->_delegate, v13);
    v15->_isGlobalDefault = a4;
    *&v15->_lock_globalAllowLiveActivities = 257;
    v15->_lock_allowLiveActivitiesForApp = 1;
    v16 = [(CSLPRFApplication *)v15->_application unionedBackgroundModes];
    [(CSLPRFLiveActivitiesAppSettings *)v15 setDefaultAutoLaunchBehaviorWithBackgroundModes:v16];

    v15->_lock_autoLaunchBehaviorForApp = v15->_defaultAutoLaunchBehaviorForApp;
    v15->_category = [CSLPRFLiveActivitiesAppSettings categoryForApplication:v11];
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v12;
        v15->_lock_globalAllowLiveActivities = [v17 cslprf_BOOLForKey:@"GlobalAllowLiveActivities" withDefaultValue:1];
        v15->_lock_globalAutoLaunchLiveActivities = [v17 cslprf_BOOLForKey:@"GlobalAutoLaunchLiveActivities" withDefaultValue:1];
        v15->_lock_allowLiveActivitiesForApp = [v17 cslprf_BOOLForKey:@"AllowLiveActivitiesForApp" withDefaultValue:1];
        v18 = [v17 objectForKey:@"LiveActivitiesAutoLaunchBehaviorForApp"];
        if (v18)
        {
          v19 = v18;
          v20 = [v11 bundleIdentifier];
          v21 = +[CSLPRFLiveActivitiesAppSettings globalDefaultIdentifer];
          v22 = [v20 isEqualToString:v21];

          if ((v22 & 1) == 0)
          {
            v23 = [v17 objectForKey:@"LiveActivitiesAutoLaunchBehaviorForApp"];
            v15->_lock_autoLaunchBehaviorForApp = [v23 integerValue];
          }
        }
      }

      else
      {
        v17 = cslprf_app_library_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          *buf = 134218242;
          v28 = v15;
          v29 = 2112;
          v30 = v12;
          _os_log_fault_impl(&dword_22CE92000, v17, OS_LOG_TYPE_FAULT, "%p CSLPRFLiveActivitiesAppSettings serialization was not a NSDictionary:%@", buf, 0x16u);
        }
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (os_state_data_s)_stateDataWithHints:(os_state_hints_s *)a3
{
  v3 = +[CSLPRFLiveActivitiesAppSettings sharedSettingsModel];
  v4 = [MEMORY[0x277CF0C00] builderWithObject:v3];
  [v4 appendString:@"Live Activities Settings" withName:@"Title"];
  v5 = [v3 globalSettings];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __55__CSLPRFLiveActivitiesAppSettings__stateDataWithHints___block_invoke;
  v19[3] = &unk_2787455E0;
  v6 = v4;
  v20 = v6;
  v21 = v5;
  v7 = v5;
  [v6 appendBodySectionWithName:@"Globals" multilinePrefix:0 block:v19];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __55__CSLPRFLiveActivitiesAppSettings__stateDataWithHints___block_invoke_2;
  v16 = &unk_2787455E0;
  v17 = v3;
  v18 = v6;
  v8 = v6;
  v9 = v3;
  [v8 appendBodySectionWithName:@"Apps" multilinePrefix:0 block:&v13];
  v10 = [v8 build];
  v11 = CSLPRFStateDataWithTitleDescriptionAndHints(@"CSLPRFLiveActivities", v10);

  return v11;
}

void __55__CSLPRFLiveActivitiesAppSettings__stateDataWithHints___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [*(a1 + 32) allApplicationSettings];
  v2 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    do
    {
      v5 = 0;
      do
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v15 + 1) + 8 * v5);
        v7 = *(a1 + 40);
        v8 = [v6 identifier];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __55__CSLPRFLiveActivitiesAppSettings__stateDataWithHints___block_invoke_3;
        v12[3] = &unk_2787455E0;
        v13 = *(a1 + 40);
        v14 = v6;
        v9 = v6;
        [v7 appendBodySectionWithName:v8 multilinePrefix:0 block:v12];

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

id __55__CSLPRFLiveActivitiesAppSettings__stateDataWithHints___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"allowLiveActivitiesForApp"), @"Allow"}];
  if ([*(a1 + 40) autoLaunchBehaviorForApp] != 2)
  {
    [*(a1 + 40) autoLaunchBehaviorForApp];
  }

  v3 = [*(a1 + 32) appendBool:1 withName:@"Auto-Launch"];
  v4 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"supportsSmartStack"), @"Supports Smart Stack"}];
  if ([*(a1 + 40) category] != 1 && objc_msgSend(*(a1 + 40), "category") && objc_msgSend(*(a1 + 40), "category") != 3)
  {
    [*(a1 + 40) category];
  }

  return [*(a1 + 32) appendBool:1 withName:@"Category"];
}

+ (void)migrateLegacySettings:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.Carousel"];
  v5 = [v4 synchronize];
  v6 = [v4 objectForKey:@"mediaAutoLaunch"];

  if (v6)
  {
    v7 = [v4 BOOLForKey:@"mediaAutoLaunch"];
    v8 = cslprf_settings_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v9)
      {
        *buf = 0;
        _os_log_impl(&dword_22CE92000, v8, OS_LOG_TYPE_INFO, "Legacy audio auto-launch setting was on, not migrating", buf, 2u);
      }
    }

    else
    {
      if (v9)
      {
        *v15 = 0;
        _os_log_impl(&dword_22CE92000, v8, OS_LOG_TYPE_INFO, "Migrating legacy audio auto-launch setting to off", v15, 2u);
      }

      v8 = [CSLPRFPerApplicationSettings fakeApplicationWithIdentifier:@"com.apple.NanoAllMusicApps"];
      v11 = [v3 settingsForApplication:v8];
      [v11 updateSettingsWithBlock:&__block_literal_global_79];
    }

    [v4 removeObjectForKey:@"mediaAutoLaunch"];
    v12 = [v4 synchronize];
  }

  else
  {
    v10 = cslprf_settings_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_22CE92000, v10, OS_LOG_TYPE_INFO, "Attempted migration of legacy media auto launch setting, no setting found on device", v13, 2u);
    }
  }
}

+ (id)sharedSettingsModel
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__CSLPRFLiveActivitiesAppSettings_sharedSettingsModel__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedSettingsModel_onceToken_4571 != -1)
  {
    dispatch_once(&sharedSettingsModel_onceToken_4571, block);
  }

  v2 = sharedSettingsModel_sharedModel_4572;

  return v2;
}

void __54__CSLPRFLiveActivitiesAppSettings_sharedSettingsModel__block_invoke(uint64_t a1)
{
  v2 = [CSLPRFPerApplicationSettingsModel alloc];
  v3 = [CSLPRFApplicationLibrary sharedLibraryForLocation:3];
  v4 = [(CSLPRFPerApplicationSettingsModel *)v2 initWithApplicationLibrary:v3 perApplicationSettingsClass:objc_opt_class()];
  v5 = sharedSettingsModel_sharedModel_4572;
  sharedSettingsModel_sharedModel_4572 = v4;

  v13 = [CSLPRFPerApplicationSettings fakeApplicationWithIdentifier:@"com.apple.NanoAllMusicApps"];
  v6 = [CSLPRFPerApplicationSettings fakeApplicationWithIdentifier:@"com.apple.NanoAllWorkoutApps"];
  v7 = [CSLPRFPerApplicationSettings fakeApplicationWithIdentifier:@"com.apple.SafetyMonitorApp"];
  v8 = [sharedSettingsModel_sharedModel_4572 settingsForApplication:v7];
  [v8 updateSettingsWithBlock:&__block_literal_global_4573];
  v9 = [sharedSettingsModel_sharedModel_4572 settingsForApplication:v6];
  v10 = [sharedSettingsModel_sharedModel_4572 settingsForApplication:v13];
  v11 = objc_opt_new();
  v12 = sharedSettingsModel_customizationDelegate;
  sharedSettingsModel_customizationDelegate = v11;

  [sharedSettingsModel_sharedModel_4572 setCustomizationDelegate:sharedSettingsModel_customizationDelegate];
  [*(a1 + 32) migrateLegacySettings:sharedSettingsModel_sharedModel_4572];
  if (os_variant_has_internal_diagnostics())
  {
    os_state_add_handler();
  }
}

void __54__CSLPRFLiveActivitiesAppSettings_sharedSettingsModel__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setAllowLiveActivitiesForApp:1];
  [v2 setAutoLaunchBehaviorForApp:1];
}

+ (unint64_t)categoryForApplication:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 bundleIdentifier];
  v5 = +[CSLPRFLiveActivitiesAppSettings globalDefaultIdentifer];
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v8 = [v3 bundleIdentifier];
    if ([v8 isEqualToString:@"com.apple.NanoAllMusicApps"])
    {

LABEL_6:
      v7 = 0;
      goto LABEL_12;
    }

    v9 = [v3 bundleIdentifier];
    v10 = [v9 isEqualToString:@"com.apple.NanoAllWorkoutApps"];

    if (v10)
    {
      goto LABEL_6;
    }

    v11 = MEMORY[0x277CC1E70];
    v12 = [v3 bundleIdentifier];
    v28 = 0;
    v13 = [v11 bundleRecordWithApplicationIdentifier:v12 error:&v28];
    v14 = v28;

    if (v14)
    {
      v15 = cslprf_app_library_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v26 = [v3 bundleIdentifier];
        *buf = 138412546;
        v30 = v26;
        v31 = 2112;
        v32 = v14;
        _os_log_error_impl(&dword_22CE92000, v15, OS_LOG_TYPE_ERROR, "Error reading category for application %@ - error: %@", buf, 0x16u);
      }
    }

    else
    {
      v18 = objc_opt_class();
      v19 = v13;
      if (v18)
      {
        if (objc_opt_isKindOfClass())
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
      }

      v15 = v20;

      if (v15)
      {
        v21 = [v3 bundleIdentifier];

        if (v21 == @"com.apple.NanoPhone")
        {
          v23 = [v3 SDKVersion];
          [v23 floatValue];
          v25 = v24;

          if (v25 >= 19.0)
          {
            v7 = 1;
          }

          else
          {
            v7 = 2;
          }
        }

        else if ([v15 supportsLiveActivities])
        {
          v7 = 1;
        }

        else
        {
          v7 = 2;
        }

        goto LABEL_11;
      }

      v22 = cslprf_app_library_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v27 = [v3 bundleIdentifier];
        *buf = 138412290;
        v30 = v27;
        _os_log_error_impl(&dword_22CE92000, v22, OS_LOG_TYPE_ERROR, "Error record from proxy for application %@", buf, 0xCu);
      }

      v15 = 0;
    }

    v7 = 2;
LABEL_11:

    goto LABEL_12;
  }

  v7 = 3;
LABEL_12:

  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)globalSettingsWithSerialization:(id)a3 delegate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 alloc];
  v9 = [a1 globalDefaultIdentifer];
  v10 = [CSLPRFPerApplicationSettings fakeApplicationWithIdentifier:v9];
  v11 = [v8 initForApplication:v10 isGlobalDefault:1 withSerialization:v7 delegate:v6];

  return v11;
}

+ (id)settingsForApplication:(id)a3 withSerialization:(id)a4 delegate:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initForApplication:v10 isGlobalDefault:0 withSerialization:v9 delegate:v8];

  return v11;
}

- (void)setAutoLaunchBehaviorForApp:(unint64_t)a3 withIgnoredSpecifier:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = cslprf_settings_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 134218754;
    v12 = self;
    v13 = 2112;
    v14 = v9;
    v15 = 2048;
    v16 = a3;
    v17 = 2112;
    v18 = self;
    _os_log_debug_impl(&dword_22CE92000, v7, OS_LOG_TYPE_DEBUG, "%p %@:%lu %@", buf, 0x2Au);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__CSLPRFLiveActivitiesAppSettings_PSSpecifier__setAutoLaunchBehaviorForApp_withIgnoredSpecifier___block_invoke;
  v10[3] = &__block_descriptor_40_e52_v16__0___CSLPRFLiveActivitiesAppMutableProperties__8l;
  v10[4] = a3;
  [(CSLPRFLiveActivitiesAppSettings *)self updateSettingsWithBlock:v10];
  v8 = *MEMORY[0x277D85DE8];
}

- (unint64_t)autoLaunchBehaviorForAppWithIgnoredSpecifier:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = cslprf_settings_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = NSStringFromSelector(a2);
    v9 = 134218498;
    v10 = self;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = self;
    _os_log_debug_impl(&dword_22CE92000, v5, OS_LOG_TYPE_DEBUG, "%p %@ %@", &v9, 0x20u);
  }

  result = [(CSLPRFLiveActivitiesAppSettings *)self autoLaunchBehaviorForApp];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setAllowLiveActivitiesForApp:(id)a3 withIgnoredSpecifier:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = cslprf_settings_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 134218754;
    v14 = self;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = self;
    _os_log_debug_impl(&dword_22CE92000, v7, OS_LOG_TYPE_DEBUG, "%p %@:%@ %@", buf, 0x2Au);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __98__CSLPRFLiveActivitiesAppSettings_PSSpecifier__setAllowLiveActivitiesForApp_withIgnoredSpecifier___block_invoke;
  v11[3] = &unk_278745528;
  v12 = v6;
  v8 = v6;
  [(CSLPRFLiveActivitiesAppSettings *)self updateSettingsWithBlock:v11];

  v9 = *MEMORY[0x277D85DE8];
}

void __98__CSLPRFLiveActivitiesAppSettings_PSSpecifier__setAllowLiveActivitiesForApp_withIgnoredSpecifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setAllowLiveActivitiesForApp:{objc_msgSend(v2, "BOOLValue") ^ 1}];
}

- (id)allowLiveActivitiesForAppWithIgnoredSpecifier:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = cslprf_settings_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = NSStringFromSelector(a2);
    v10 = 134218498;
    v11 = self;
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = self;
    _os_log_debug_impl(&dword_22CE92000, v5, OS_LOG_TYPE_DEBUG, "%p %@ %@", &v10, 0x20u);
  }

  v6 = [MEMORY[0x277CCABB0] numberWithInt:{-[CSLPRFLiveActivitiesAppSettings allowLiveActivitiesForApp](self, "allowLiveActivitiesForApp") ^ 1}];
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)setGlobalAutoLaunchLiveActivities:(id)a3 withIgnoredSpecifier:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = cslprf_settings_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 134218754;
    v14 = self;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = self;
    _os_log_debug_impl(&dword_22CE92000, v7, OS_LOG_TYPE_DEBUG, "%p %@:%@ %@", buf, 0x2Au);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __103__CSLPRFLiveActivitiesAppSettings_PSSpecifier__setGlobalAutoLaunchLiveActivities_withIgnoredSpecifier___block_invoke;
  v11[3] = &unk_278745528;
  v12 = v6;
  v8 = v6;
  [(CSLPRFLiveActivitiesAppSettings *)self updateSettingsWithBlock:v11];

  v9 = *MEMORY[0x277D85DE8];
}

void __103__CSLPRFLiveActivitiesAppSettings_PSSpecifier__setGlobalAutoLaunchLiveActivities_withIgnoredSpecifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setGlobalAutoLaunchLiveActivities:{objc_msgSend(v2, "BOOLValue") ^ 1}];
}

- (id)globalAutoLaunchLiveActivitiesWithIgnoredSpecifier:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = cslprf_settings_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = NSStringFromSelector(a2);
    v10 = 134218498;
    v11 = self;
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = self;
    _os_log_debug_impl(&dword_22CE92000, v5, OS_LOG_TYPE_DEBUG, "%p %@ %@", &v10, 0x20u);
  }

  v6 = [MEMORY[0x277CCABB0] numberWithInt:{-[CSLPRFLiveActivitiesAppSettings globalAutoLaunchLiveActivities](self, "globalAutoLaunchLiveActivities") ^ 1}];
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)setGlobalAllowLiveActivities:(id)a3 withIgnoredSpecifier:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = cslprf_settings_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 134218754;
    v14 = self;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = self;
    _os_log_debug_impl(&dword_22CE92000, v7, OS_LOG_TYPE_DEBUG, "%p %@:%@ %@", buf, 0x2Au);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __98__CSLPRFLiveActivitiesAppSettings_PSSpecifier__setGlobalAllowLiveActivities_withIgnoredSpecifier___block_invoke;
  v11[3] = &unk_278745528;
  v12 = v6;
  v8 = v6;
  [(CSLPRFLiveActivitiesAppSettings *)self updateSettingsWithBlock:v11];

  v9 = *MEMORY[0x277D85DE8];
}

void __98__CSLPRFLiveActivitiesAppSettings_PSSpecifier__setGlobalAllowLiveActivities_withIgnoredSpecifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setGlobalAllowLiveActivities:{objc_msgSend(v2, "BOOLValue") ^ 1}];
}

- (id)globalAllowLiveActivitiesWithIgnoredSpecifier:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = cslprf_settings_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = NSStringFromSelector(a2);
    v10 = 134218498;
    v11 = self;
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = self;
    _os_log_debug_impl(&dword_22CE92000, v5, OS_LOG_TYPE_DEBUG, "%p %@ %@", &v10, 0x20u);
  }

  v6 = [MEMORY[0x277CCABB0] numberWithInt:{-[CSLPRFLiveActivitiesAppSettings globalAllowLiveActivities](self, "globalAllowLiveActivities") ^ 1}];
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end