@interface IPWatchLocaleController
- (BOOL)isMirroringEnabled;
- (IPWatchLocaleController)initWithSystemLanguages:(id)languages;
- (id)deviceLanguage;
- (id)preferredLanguages;
- (void)initializeMirrorSettings;
- (void)mirrorLanguagesAndLocaleToWatch;
- (void)postLocaleChangedNotification;
- (void)resetTimeFormat;
- (void)setLanguages:(id)languages;
- (void)setLocale:(id)locale;
- (void)updateLocale:(id)locale;
@end

@implementation IPWatchLocaleController

- (IPWatchLocaleController)initWithSystemLanguages:(id)languages
{
  languagesCopy = languages;
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

    objc_storeStrong(&v6->_systemLanguages, languages);
  }

  return v6;
}

- (id)preferredLanguages
{
  v10[1] = *MEMORY[0x277D85DE8];
  gizmoGlobalDomain = [(IPWatchLocaleController *)self gizmoGlobalDomain];
  synchronize = [gizmoGlobalDomain synchronize];

  gizmoGlobalDomain2 = [(IPWatchLocaleController *)self gizmoGlobalDomain];
  v6 = [gizmoGlobalDomain2 objectForKey:@"AppleLanguages"];

  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10[0] = @"en-001";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

    v6 = v7;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)setLanguages:(id)languages
{
  languagesCopy = languages;
  gizmoGlobalDomain = [(IPWatchLocaleController *)self gizmoGlobalDomain];
  [gizmoGlobalDomain setObject:languagesCopy forKey:@"AppleLanguages"];

  gizmoGlobalDomain2 = [(IPWatchLocaleController *)self gizmoGlobalDomain];
  synchronize = [gizmoGlobalDomain2 synchronize];

  syncManager = [(IPWatchLocaleController *)self syncManager];
  gizmoGlobalDomain3 = [(IPWatchLocaleController *)self gizmoGlobalDomain];
  domain = [gizmoGlobalDomain3 domain];
  v11 = [MEMORY[0x277CBEB98] setWithObject:@"AppleLanguages"];
  [syncManager synchronizeNanoDomain:domain keys:v11];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.nano.watchlanguagechanged", 0, 0, 1u);
}

- (id)deviceLanguage
{
  systemLanguages = [(IPWatchLocaleController *)self systemLanguages];
  if (!systemLanguages)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    systemLanguages = [v4 localizations];
  }

  v5 = MEMORY[0x277CCA8D8];
  preferredLanguages = [(IPWatchLocaleController *)self preferredLanguages];
  v7 = [v5 preferredLocalizationsFromArray:systemLanguages forPreferences:preferredLanguages];
  firstObject = [v7 firstObject];

  v9 = [MEMORY[0x277CBEAF8] canonicalLanguageIdentifierFromString:firstObject];

  return v9;
}

- (void)postLocaleChangedNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.nano.watchlocalechanged", 0, 0, 1u);
}

- (void)updateLocale:(id)locale
{
  localeCopy = locale;
  gizmoGlobalDomain = [(IPWatchLocaleController *)self gizmoGlobalDomain];
  [gizmoGlobalDomain setObject:localeCopy forKey:@"AppleLocale"];

  gizmoGlobalDomain2 = [(IPWatchLocaleController *)self gizmoGlobalDomain];
  synchronize = [gizmoGlobalDomain2 synchronize];

  syncManager = [(IPWatchLocaleController *)self syncManager];
  gizmoGlobalDomain3 = [(IPWatchLocaleController *)self gizmoGlobalDomain];
  domain = [gizmoGlobalDomain3 domain];
  v10 = [MEMORY[0x277CBEB98] setWithObject:@"AppleLocale"];
  [syncManager synchronizeNanoDomain:domain keys:v10];
}

- (void)resetTimeFormat
{
  v13[2] = *MEMORY[0x277D85DE8];
  gizmoGlobalDomain = [(IPWatchLocaleController *)self gizmoGlobalDomain];
  [gizmoGlobalDomain setObject:0 forKey:@"AppleICUForce12HourTime"];

  gizmoGlobalDomain2 = [(IPWatchLocaleController *)self gizmoGlobalDomain];
  synchronize = [gizmoGlobalDomain2 synchronize];

  gizmoGlobalDomain3 = [(IPWatchLocaleController *)self gizmoGlobalDomain];
  [gizmoGlobalDomain3 setObject:0 forKey:@"AppleICUForce24HourTime"];

  v13[0] = @"AppleICUForce24HourTime";
  v13[1] = @"AppleICUForce12HourTime";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  syncManager = [(IPWatchLocaleController *)self syncManager];
  gizmoGlobalDomain4 = [(IPWatchLocaleController *)self gizmoGlobalDomain];
  domain = [gizmoGlobalDomain4 domain];
  v11 = [MEMORY[0x277CBEB98] setWithArray:v7];
  [syncManager synchronizeNanoDomain:domain keys:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setLocale:(id)locale
{
  [(IPWatchLocaleController *)self updateLocale:locale];
  [(IPWatchLocaleController *)self resetTimeFormat];

  [(IPWatchLocaleController *)self postLocaleChangedNotification];
}

- (void)initializeMirrorSettings
{
  v31 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  isPaired = [mEMORY[0x277D2BCF8] isPaired];

  if (isPaired)
  {
    v5 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.bulletinboard.apps"];
    v6 = [v5 dictionaryForKey:@"com.apple.CompanionInternationalSettings"];
    dictionary = [v6 mutableCopy];

    if (!dictionary)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    v8 = [dictionary objectForKeyedSubscript:@"BPSNanoBulletinShowsCustomSettings"];
    if (!v8)
    {
      preferredLanguages = [(IPWatchLocaleController *)self preferredLanguages];
      preferredLanguages2 = [MEMORY[0x277CBEAF8] preferredLanguages];
      if ([preferredLanguages isEqualToArray:preferredLanguages2])
      {
        v11 = Logger();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 136315394;
          v22 = "[IPWatchLocaleController initializeMirrorSettings]";
          v23 = 2114;
          v24 = preferredLanguages2;
          _os_log_impl(&dword_22DFB7000, v11, OS_LOG_TYPE_DEFAULT, "%s: Enabling language mirroring after initial pair (%{public}@).", &v21, 0x16u);
        }

        v12 = 0;
      }

      else
      {
        deviceLanguage = [(IPWatchLocaleController *)self deviceLanguage];
        _deviceLanguage = [MEMORY[0x277CBEAF8] _deviceLanguage];
        v15 = [deviceLanguage isEqualToString:_deviceLanguage];
        v16 = Logger();
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        if (v15)
        {
          if (v17)
          {
            v21 = 136315906;
            v22 = "[IPWatchLocaleController initializeMirrorSettings]";
            v23 = 2114;
            v24 = preferredLanguages;
            v25 = 2114;
            v26 = preferredLanguages2;
            v27 = 2114;
            v28 = deviceLanguage;
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
            v24 = preferredLanguages;
            v25 = 2114;
            v26 = preferredLanguages2;
            v27 = 2114;
            v28 = deviceLanguage;
            v29 = 2114;
            v30 = _deviceLanguage;
            _os_log_impl(&dword_22DFB7000, v16, OS_LOG_TYPE_DEFAULT, "%s: Preferred languages don’t match (watch %{public}@ ≠ phone %{public}@). Disabling language mirroring because device language doesn’t match (watch %{public}@ ≠ phone %{public}@).", &v21, 0x34u);
          }
        }

        v12 = v15 ^ 1u;
      }

      v18 = [MEMORY[0x277CCABB0] numberWithInt:v12];
      [dictionary setObject:v18 forKeyedSubscript:@"BPSNanoBulletinShowsCustomSettings"];

      [v5 setObject:dictionary forKey:@"com.apple.CompanionInternationalSettings"];
      synchronize = [v5 synchronize];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)isMirroringEnabled
{
  v2 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.bulletinboard.apps"];
  v3 = [v2 dictionaryForKey:@"com.apple.CompanionInternationalSettings"];
  v4 = [v3 objectForKeyedSubscript:@"BPSNanoBulletinShowsCustomSettings"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue ^ 1;
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

  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  [(IPWatchLocaleController *)self setLanguages:preferredLanguages];

  preferredLocale = [MEMORY[0x277CBEAF8] preferredLocale];
  localeIdentifier = [preferredLocale localeIdentifier];
  [(IPWatchLocaleController *)self setLocale:localeIdentifier];

  v7 = *MEMORY[0x277D85DE8];
}

@end