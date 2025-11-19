@interface CSLPRFAppBacklightPrivacySettings
+ (id)globalSettingsWithSerialization:(id)a3 delegate:(id)a4;
+ (id)settingsForApplication:(id)a3 withSerialization:(id)a4 delegate:(id)a5;
+ (id)sharedSettingsModel;
+ (unint64_t)categoryForApplication:(id)a3;
- (BOOL)hasCustomSetting;
- (BOOL)isEqual:(id)a3;
- (BOOL)privacyDuringAlwaysOnForApp;
- (BOOL)privacyDuringAlwaysOnForLiveActivities;
- (BOOL)privacyDuringAlwaysOnForNotification;
- (NSString)description;
- (id)initForApplication:(id)a3 isGlobalDefault:(BOOL)a4 withSerialization:(id)a5 delegate:(id)a6;
- (id)privacyDuringAlwaysOnForAppWithIgnoredSpecifier:(id)a3;
- (id)privacyDuringAlwaysOnForLiveActivitiesWithIgnoredSpecifier:(id)a3;
- (id)privacyDuringAlwaysOnForNotificationWithIgnoredSpecifier:(id)a3;
- (id)resolvedSettingWithGlobalSettings:(id)a3;
- (id)serialize;
- (unint64_t)hash;
- (void)setPrivacyDuringAlwaysOnForApp:(id)a3 withIgnoredSpecifier:(id)a4;
- (void)setPrivacyDuringAlwaysOnForLiveActivities:(id)a3 withIgnoredSpecifier:(id)a4;
- (void)setPrivacyDuringAlwaysOnForNotification:(id)a3 withIgnoredSpecifier:(id)a4;
- (void)updateSettingsWithBlock:(id)a3;
@end

@implementation CSLPRFAppBacklightPrivacySettings

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendBool:{-[CSLPRFAppBacklightPrivacySettings privacyDuringAlwaysOnForApp](self, "privacyDuringAlwaysOnForApp")}];
  v5 = [v3 appendBool:{-[CSLPRFAppBacklightPrivacySettings privacyDuringAlwaysOnForNotification](self, "privacyDuringAlwaysOnForNotification")}];
  v6 = [v3 appendBool:{-[CSLPRFAppBacklightPrivacySettings privacyDuringAlwaysOnForLiveActivities](self, "privacyDuringAlwaysOnForLiveActivities")}];
  v7 = [v3 appendObject:self->_application];
  v8 = [v3 hash];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(CSLPRFAppBacklightPrivacySettings *)self privacyDuringAlwaysOnForApp];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __45__CSLPRFAppBacklightPrivacySettings_isEqual___block_invoke;
  v28[3] = &unk_278745630;
  v7 = v4;
  v29 = v7;
  v8 = [v5 appendBool:v6 counterpart:v28];
  v9 = [(CSLPRFAppBacklightPrivacySettings *)self privacyDuringAlwaysOnForNotification];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __45__CSLPRFAppBacklightPrivacySettings_isEqual___block_invoke_2;
  v26[3] = &unk_278745630;
  v10 = v7;
  v27 = v10;
  v11 = [v5 appendBool:v9 counterpart:v26];
  v12 = [(CSLPRFAppBacklightPrivacySettings *)self privacyDuringAlwaysOnForLiveActivities];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __45__CSLPRFAppBacklightPrivacySettings_isEqual___block_invoke_3;
  v24[3] = &unk_278745630;
  v13 = v10;
  v25 = v13;
  v14 = [v5 appendBool:v12 counterpart:v24];
  application = self->_application;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __45__CSLPRFAppBacklightPrivacySettings_isEqual___block_invoke_4;
  v22 = &unk_278745500;
  v23 = v13;
  v16 = v13;
  v17 = [v5 appendObject:application counterpart:&v19];
  LOBYTE(application) = [v5 isEqual];

  return application;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:-[CSLPRFAppBacklightPrivacySettings privacyDuringAlwaysOnForApp](self withName:{"privacyDuringAlwaysOnForApp"), @"privacyForApp"}];
  v5 = [v3 appendBool:-[CSLPRFAppBacklightPrivacySettings privacyDuringAlwaysOnForNotification](self withName:{"privacyDuringAlwaysOnForNotification"), @"privacyForNotification"}];
  v6 = [v3 appendBool:-[CSLPRFAppBacklightPrivacySettings privacyDuringAlwaysOnForLiveActivities](self withName:{"privacyDuringAlwaysOnForLiveActivities"), @"privacyForLiveActivities"}];
  v7 = [v3 appendObject:self->_application withName:@"application"];
  v8 = [v3 build];

  return v8;
}

- (id)serialize
{
  v16[3] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  lock_privacyDuringAlwaysOnForApp = self->_lock_privacyDuringAlwaysOnForApp;
  lock_privacyDuringAlwaysOnForNotification = self->_lock_privacyDuringAlwaysOnForNotification;
  lock_privacyDuringAlwaysOnForLiveActivities = self->_lock_privacyDuringAlwaysOnForLiveActivities;
  os_unfair_lock_unlock(&self->_lock);
  v6 = [(CSLPRFApplication *)self->_application defaultsToPrivateAlwaysOnDisplayTreatment];
  if (lock_privacyDuringAlwaysOnForApp == v6 && lock_privacyDuringAlwaysOnForNotification == v6 && !lock_privacyDuringAlwaysOnForLiveActivities)
  {
    v12 = 0;
  }

  else
  {
    v15[0] = @"AppPrivateDuringAOTForApp";
    v9 = [MEMORY[0x277CCABB0] numberWithBool:lock_privacyDuringAlwaysOnForApp];
    v16[0] = v9;
    v15[1] = @"AppPrivateDuringAOTForNotification";
    v10 = [MEMORY[0x277CCABB0] numberWithBool:lock_privacyDuringAlwaysOnForNotification];
    v16[1] = v10;
    v15[2] = @"AppPrivateDuringAOTForLiveActivities";
    v11 = [MEMORY[0x277CCABB0] numberWithBool:lock_privacyDuringAlwaysOnForLiveActivities];
    v16[2] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)resolvedSettingWithGlobalSettings:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [[CSLPRFAppBacklightPrivacyResolvedSettings alloc] initWithSettings:self globalSettings:v4];
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
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_category == 2)
  {
    v5 = cslprf_app_library_log();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_FAULT))
    {
      WeakRetained = [(CSLPRFApplication *)self->_application bundleIdentifier];
      application = self->_application;
      v9 = 134218498;
      v10 = self;
      v11 = 2114;
      v12 = WeakRetained;
      v13 = 2112;
      v14 = application;
      _os_log_fault_impl(&dword_22CE92000, &v5->super, OS_LOG_TYPE_FAULT, "%p cannot set settings on excluded application:%{public}@:%@", &v9, 0x20u);
LABEL_6:
    }
  }

  else
  {
    v5 = [[CSLPRFAppBacklightPrivacyMutableSettings alloc] initWithSettings:self];
    v4[2](v4, v5);
    if (![(CSLPRFAppBacklightPrivacyMutableSettings *)v5 isEqualToSettings:self])
    {
      os_unfair_lock_lock(&self->_lock);
      self->_lock_privacyDuringAlwaysOnForApp = [(CSLPRFAppBacklightPrivacyMutableSettings *)v5 privacyDuringAlwaysOnForApp];
      self->_lock_privacyDuringAlwaysOnForNotification = [(CSLPRFAppBacklightPrivacyMutableSettings *)v5 privacyDuringAlwaysOnForNotification];
      self->_lock_privacyDuringAlwaysOnForLiveActivities = [(CSLPRFAppBacklightPrivacyMutableSettings *)v5 privacyDuringAlwaysOnForLiveActivities];
      os_unfair_lock_unlock(&self->_lock);
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained didUpdateSettings:self];
      goto LABEL_6;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)privacyDuringAlwaysOnForLiveActivities
{
  os_unfair_lock_lock(&self->_lock);
  lock_privacyDuringAlwaysOnForLiveActivities = self->_lock_privacyDuringAlwaysOnForLiveActivities;
  os_unfair_lock_unlock(&self->_lock);
  return lock_privacyDuringAlwaysOnForLiveActivities;
}

- (BOOL)privacyDuringAlwaysOnForNotification
{
  os_unfair_lock_lock(&self->_lock);
  lock_privacyDuringAlwaysOnForNotification = self->_lock_privacyDuringAlwaysOnForNotification;
  os_unfair_lock_unlock(&self->_lock);
  return lock_privacyDuringAlwaysOnForNotification;
}

- (BOOL)privacyDuringAlwaysOnForApp
{
  os_unfair_lock_lock(&self->_lock);
  lock_privacyDuringAlwaysOnForApp = self->_lock_privacyDuringAlwaysOnForApp;
  os_unfair_lock_unlock(&self->_lock);
  return lock_privacyDuringAlwaysOnForApp;
}

- (BOOL)hasCustomSetting
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(CSLPRFApplication *)self->_application defaultsToPrivateAlwaysOnDisplayTreatment];
  lock_privacyDuringAlwaysOnForApp = self->_lock_privacyDuringAlwaysOnForApp;
  v5 = lock_privacyDuringAlwaysOnForApp != v3 || self->_lock_privacyDuringAlwaysOnForNotification != lock_privacyDuringAlwaysOnForApp || self->_lock_privacyDuringAlwaysOnForLiveActivities;
  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (id)initForApplication:(id)a3 isGlobalDefault:(BOOL)a4 withSerialization:(id)a5 delegate:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = CSLPRFAppBacklightPrivacySettings;
  v14 = [(CSLPRFAppBacklightPrivacySettings *)&v22 init];
  v15 = v14;
  if (v14)
  {
    v14->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v14->_application, a3);
    objc_storeWeak(&v15->_delegate, v13);
    v15->_isGlobalDefault = a4;
    v16 = [v11 defaultsToPrivateAlwaysOnDisplayTreatment];
    v15->_lock_privacyDuringAlwaysOnForApp = v16;
    *&v15->_lock_privacyDuringAlwaysOnForNotification = v16;
    v15->_category = [CSLPRFAppBacklightPrivacySettings categoryForApplication:v11];
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v12;
        v15->_lock_privacyDuringAlwaysOnForApp = [v17 cslprf_BOOLForKey:@"AppPrivateDuringAOTForApp" withDefaultValue:v16];
        v15->_lock_privacyDuringAlwaysOnForNotification = [v17 cslprf_BOOLForKey:@"AppPrivateDuringAOTForNotification" withDefaultValue:v16];
        v18 = [v17 cslprf_BOOLForKey:@"AppPrivateDuringAOTForLiveActivities" withDefaultValue:0];

        v15->_lock_privacyDuringAlwaysOnForLiveActivities = v18;
      }

      else
      {
        v19 = cslprf_app_library_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          *buf = 134218242;
          v24 = v15;
          v25 = 2112;
          v26 = v12;
          _os_log_fault_impl(&dword_22CE92000, v19, OS_LOG_TYPE_FAULT, "%p CSLPRFAppBacklightPrivacySettings serialization was not a NSDictionary:%@", buf, 0x16u);
        }
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (id)sharedSettingsModel
{
  if (sharedSettingsModel_onceToken != -1)
  {
    dispatch_once(&sharedSettingsModel_onceToken, &__block_literal_global_41);
  }

  v3 = sharedSettingsModel_sharedModel;

  return v3;
}

void __56__CSLPRFAppBacklightPrivacySettings_sharedSettingsModel__block_invoke()
{
  v0 = [CSLPRFPerApplicationSettingsModel alloc];
  v3 = [CSLPRFApplicationLibrary sharedLibraryForLocation:2];
  v1 = [(CSLPRFPerApplicationSettingsModel *)v0 initWithApplicationLibrary:v3 perApplicationSettingsClass:objc_opt_class()];
  v2 = sharedSettingsModel_sharedModel;
  sharedSettingsModel_sharedModel = v1;
}

+ (unint64_t)categoryForApplication:(id)a3
{
  v3 = a3;
  if (categoryForApplication__onceToken != -1)
  {
    dispatch_once(&categoryForApplication__onceToken, &__block_literal_global);
  }

  if ([v3 isBBSourcedApplication])
  {
    v4 = categoryForApplication__appsWhichCannotBeMarkedPrivate;
    v5 = [v3 bundleIdentifier];
    LODWORD(v4) = [v4 containsObject:v5];

    if (v4)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  else if ([v3 supportsAlwaysOnDisplay])
  {
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  return v6;
}

void __60__CSLPRFAppBacklightPrivacySettings_categoryForApplication___block_invoke()
{
  v5[5] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"com.apple.facetime";
  v5[1] = @"com.apple.tips";
  v5[2] = @"com.apple.TapToRadar";
  v5[3] = @"com.apple.Bridge";
  v5[4] = @"com.apple.Sharing.Remote";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:5];
  v2 = [v0 setWithArray:v1];
  v3 = categoryForApplication__appsWhichCannotBeMarkedPrivate;
  categoryForApplication__appsWhichCannotBeMarkedPrivate = v2;

  v4 = *MEMORY[0x277D85DE8];
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

- (void)setPrivacyDuringAlwaysOnForLiveActivities:(id)a3 withIgnoredSpecifier:(id)a4
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
  v11[2] = __113__CSLPRFAppBacklightPrivacySettings_PSSpecifier__setPrivacyDuringAlwaysOnForLiveActivities_withIgnoredSpecifier___block_invoke;
  v11[3] = &unk_278744468;
  v12 = v6;
  v8 = v6;
  [(CSLPRFAppBacklightPrivacySettings *)self updateSettingsWithBlock:v11];

  v9 = *MEMORY[0x277D85DE8];
}

void __113__CSLPRFAppBacklightPrivacySettings_PSSpecifier__setPrivacyDuringAlwaysOnForLiveActivities_withIgnoredSpecifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setPrivacyDuringAlwaysOnForLiveActivities:{objc_msgSend(v2, "BOOLValue") ^ 1}];
}

- (id)privacyDuringAlwaysOnForLiveActivitiesWithIgnoredSpecifier:(id)a3
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

  v6 = [MEMORY[0x277CCABB0] numberWithInt:{-[CSLPRFAppBacklightPrivacySettings privacyDuringAlwaysOnForLiveActivities](self, "privacyDuringAlwaysOnForLiveActivities") ^ 1}];
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)setPrivacyDuringAlwaysOnForNotification:(id)a3 withIgnoredSpecifier:(id)a4
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
  v11[2] = __111__CSLPRFAppBacklightPrivacySettings_PSSpecifier__setPrivacyDuringAlwaysOnForNotification_withIgnoredSpecifier___block_invoke;
  v11[3] = &unk_278744468;
  v12 = v6;
  v8 = v6;
  [(CSLPRFAppBacklightPrivacySettings *)self updateSettingsWithBlock:v11];

  v9 = *MEMORY[0x277D85DE8];
}

void __111__CSLPRFAppBacklightPrivacySettings_PSSpecifier__setPrivacyDuringAlwaysOnForNotification_withIgnoredSpecifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setPrivacyDuringAlwaysOnForNotification:{objc_msgSend(v2, "BOOLValue") ^ 1}];
}

- (id)privacyDuringAlwaysOnForNotificationWithIgnoredSpecifier:(id)a3
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

  v6 = [MEMORY[0x277CCABB0] numberWithInt:{-[CSLPRFAppBacklightPrivacySettings privacyDuringAlwaysOnForNotification](self, "privacyDuringAlwaysOnForNotification") ^ 1}];
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)setPrivacyDuringAlwaysOnForApp:(id)a3 withIgnoredSpecifier:(id)a4
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
  v11[2] = __102__CSLPRFAppBacklightPrivacySettings_PSSpecifier__setPrivacyDuringAlwaysOnForApp_withIgnoredSpecifier___block_invoke;
  v11[3] = &unk_278744468;
  v12 = v6;
  v8 = v6;
  [(CSLPRFAppBacklightPrivacySettings *)self updateSettingsWithBlock:v11];

  v9 = *MEMORY[0x277D85DE8];
}

void __102__CSLPRFAppBacklightPrivacySettings_PSSpecifier__setPrivacyDuringAlwaysOnForApp_withIgnoredSpecifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setPrivacyDuringAlwaysOnForApp:{objc_msgSend(v2, "BOOLValue") ^ 1}];
}

- (id)privacyDuringAlwaysOnForAppWithIgnoredSpecifier:(id)a3
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

  v6 = [MEMORY[0x277CCABB0] numberWithInt:{-[CSLPRFAppBacklightPrivacySettings privacyDuringAlwaysOnForApp](self, "privacyDuringAlwaysOnForApp") ^ 1}];
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end