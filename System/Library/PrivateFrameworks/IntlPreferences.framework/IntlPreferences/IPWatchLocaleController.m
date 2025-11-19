@interface IPWatchLocaleController
- (BOOL)isMirroringEnabled;
- (IPWatchLocaleController)initWithSystemLanguages:(id)a3;
- (id)deviceLanguage;
- (id)preferredLanguages;
- (void)initializeMirrorSettings;
- (void)mirrorLanguagesAndLocaleToWatch;
- (void)postLocaleChangedNotification;
- (void)resetTimeFormat;
- (void)setLanguages:(id)a3;
- (void)setLocale:(id)a3;
- (void)updateLocale:(id)a3;
@end

@implementation IPWatchLocaleController

- (IPWatchLocaleController)initWithSystemLanguages:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = IPWatchLocaleController;
  v6 = [(IPWatchLocaleController *)&v12 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@".GlobalPreferences"];
    gizmoGlobalDomain = v6->_gizmoGlobalDomain;
    v6->_gizmoGlobalDomain = v7;

    v9 = objc_alloc_init(MEMORY[0x277D2BA60]);
    syncManager = v6->_syncManager;
    v6->_syncManager = v9;

    objc_storeStrong(&v6->_systemLanguages, a3);
  }

  return v6;
}

- (id)preferredLanguages
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [(IPWatchLocaleController *)self gizmoGlobalDomain];
  v4 = [v3 synchronize];

  v5 = [(IPWatchLocaleController *)self gizmoGlobalDomain];
  v6 = [v5 objectForKey:@"AppleLanguages"];

  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10[0] = @"en-001";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

    v6 = v7;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)setLanguages:(id)a3
{
  v4 = a3;
  v5 = [(IPWatchLocaleController *)self gizmoGlobalDomain];
  [v5 setObject:v4 forKey:@"AppleLanguages"];

  v6 = [(IPWatchLocaleController *)self gizmoGlobalDomain];
  v7 = [v6 synchronize];

  v8 = [(IPWatchLocaleController *)self syncManager];
  v9 = [(IPWatchLocaleController *)self gizmoGlobalDomain];
  v10 = [v9 domain];
  v11 = [MEMORY[0x277CBEB98] setWithObject:@"AppleLanguages"];
  [v8 synchronizeNanoDomain:v10 keys:v11];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.nano.watchlanguagechanged", 0, 0, 1u);
}

- (id)deviceLanguage
{
  v3 = [(IPWatchLocaleController *)self systemLanguages];
  if (!v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v4 localizations];
  }

  v5 = MEMORY[0x277CCA8D8];
  v6 = [(IPWatchLocaleController *)self preferredLanguages];
  v7 = [v5 preferredLocalizationsFromArray:v3 forPreferences:v6];
  v8 = [v7 firstObject];

  v9 = [MEMORY[0x277CBEAF8] canonicalLanguageIdentifierFromString:v8];

  return v9;
}

- (void)postLocaleChangedNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.nano.watchlocalechanged", 0, 0, 1u);
}

- (void)updateLocale:(id)a3
{
  v4 = a3;
  v5 = [(IPWatchLocaleController *)self gizmoGlobalDomain];
  [v5 setObject:v4 forKey:@"AppleLocale"];

  v6 = [(IPWatchLocaleController *)self gizmoGlobalDomain];
  v7 = [v6 synchronize];

  v11 = [(IPWatchLocaleController *)self syncManager];
  v8 = [(IPWatchLocaleController *)self gizmoGlobalDomain];
  v9 = [v8 domain];
  v10 = [MEMORY[0x277CBEB98] setWithObject:@"AppleLocale"];
  [v11 synchronizeNanoDomain:v9 keys:v10];
}

- (void)resetTimeFormat
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = [(IPWatchLocaleController *)self gizmoGlobalDomain];
  [v3 setObject:0 forKey:@"AppleICUForce12HourTime"];

  v4 = [(IPWatchLocaleController *)self gizmoGlobalDomain];
  v5 = [v4 synchronize];

  v6 = [(IPWatchLocaleController *)self gizmoGlobalDomain];
  [v6 setObject:0 forKey:@"AppleICUForce24HourTime"];

  v13[0] = @"AppleICUForce24HourTime";
  v13[1] = @"AppleICUForce12HourTime";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v8 = [(IPWatchLocaleController *)self syncManager];
  v9 = [(IPWatchLocaleController *)self gizmoGlobalDomain];
  v10 = [v9 domain];
  v11 = [MEMORY[0x277CBEB98] setWithArray:v7];
  [v8 synchronizeNanoDomain:v10 keys:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setLocale:(id)a3
{
  [(IPWatchLocaleController *)self updateLocale:a3];
  [(IPWatchLocaleController *)self resetTimeFormat];

  [(IPWatchLocaleController *)self postLocaleChangedNotification];
}

- (void)initializeMirrorSettings
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D2BCF8] sharedInstance];
  v4 = [v3 isPaired];

  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.bulletinboard.apps"];
    v6 = [v5 dictionaryForKey:@"com.apple.CompanionInternationalSettings"];
    v7 = [v6 mutableCopy];

    if (!v7)
    {
      v7 = [MEMORY[0x277CBEB38] dictionary];
    }

    v8 = [v7 objectForKeyedSubscript:@"BPSNanoBulletinShowsCustomSettings"];
    if (!v8)
    {
      v9 = [(IPWatchLocaleController *)self preferredLanguages];
      v10 = [MEMORY[0x277CBEAF8] preferredLanguages];
      if ([v9 isEqualToArray:v10])
      {
        v11 = Logger();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 136315394;
          v22 = "[IPWatchLocaleController initializeMirrorSettings]";
          v23 = 2114;
          v24 = v10;
          _os_log_impl(&dword_22DFB7000, v11, OS_LOG_TYPE_DEFAULT, "%s: Enabling language mirroring after initial pair (%{public}@).", &v21, 0x16u);
        }

        v12 = 0;
      }

      else
      {
        v13 = [(IPWatchLocaleController *)self deviceLanguage];
        v14 = [MEMORY[0x277CBEAF8] _deviceLanguage];
        v15 = [v13 isEqualToString:v14];
        v16 = Logger();
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        if (v15)
        {
          if (v17)
          {
            v21 = 136315906;
            v22 = "[IPWatchLocaleController initializeMirrorSettings]";
            v23 = 2114;
            v24 = v9;
            v25 = 2114;
            v26 = v10;
            v27 = 2114;
            v28 = v13;
            _os_log_impl(&dword_22DFB7000, v16, OS_LOG_TYPE_DEFAULT, "%s: Preferred languages don’t match (watch %{public}@ ≠ phone %{public}@). Enabling language mirroring because device languages match (%{public}@).", &v21, 0x2Au);
          }

          [(IPWatchLocaleController *)self mirrorLanguagesAndLocaleToWatch];
        }

        else
        {
          if (v17)
          {
            v21 = 136316162;
            v22 = "[IPWatchLocaleController initializeMirrorSettings]";
            v23 = 2114;
            v24 = v9;
            v25 = 2114;
            v26 = v10;
            v27 = 2114;
            v28 = v13;
            v29 = 2114;
            v30 = v14;
            _os_log_impl(&dword_22DFB7000, v16, OS_LOG_TYPE_DEFAULT, "%s: Preferred languages don’t match (watch %{public}@ ≠ phone %{public}@). Disabling language mirroring because device language doesn’t match (watch %{public}@ ≠ phone %{public}@).", &v21, 0x34u);
          }
        }

        v12 = v15 ^ 1u;
      }

      v18 = [MEMORY[0x277CCABB0] numberWithInt:v12];
      [v7 setObject:v18 forKeyedSubscript:@"BPSNanoBulletinShowsCustomSettings"];

      [v5 setObject:v7 forKey:@"com.apple.CompanionInternationalSettings"];
      v19 = [v5 synchronize];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)isMirroringEnabled
{
  v2 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.bulletinboard.apps"];
  v3 = [v2 dictionaryForKey:@"com.apple.CompanionInternationalSettings"];
  v4 = [v3 objectForKeyedSubscript:@"BPSNanoBulletinShowsCustomSettings"];
  v5 = [v4 BOOLValue];

  return v5 ^ 1;
}

- (void)mirrorLanguagesAndLocaleToWatch
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = Logger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[IPWatchLocaleController mirrorLanguagesAndLocaleToWatch]";
    _os_log_impl(&dword_22DFB7000, v3, OS_LOG_TYPE_DEFAULT, "%s: Mirroring languages and locale to watch…", &v8, 0xCu);
  }

  v4 = [MEMORY[0x277CBEAF8] preferredLanguages];
  [(IPWatchLocaleController *)self setLanguages:v4];

  v5 = [MEMORY[0x277CBEAF8] preferredLocale];
  v6 = [v5 localeIdentifier];
  [(IPWatchLocaleController *)self setLocale:v6];

  v7 = *MEMORY[0x277D85DE8];
}

@end