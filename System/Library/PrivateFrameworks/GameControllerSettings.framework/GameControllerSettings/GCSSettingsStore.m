@interface GCSSettingsStore
- (BOOL)savedDataMeetsRequiredVersion:(id)a3;
- (GCSSettingsStore)initWithUserDefaults:(id)a3;
- (id)profileForPersistentControllerIdentifier:(id)a3 appBundleIdentifier:(id)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation GCSSettingsStore

- (GCSSettingsStore)initWithUserDefaults:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = GCSSettingsStore;
  v6 = [(GCSSettingsStore *)&v20 init];
  v7 = v6;
  if (v6)
  {
    settingsVersion = v6->_settingsVersion;
    v6->_settingsVersion = @"0.0.0";

    objc_storeStrong(&v7->_defaults, a3);
    [(GCUserDefaults *)v7->_defaults addObserver:v7 forKeyPath:@"settingsVersion" options:5 context:0];
    v9 = [[GCSGamesCollection alloc] initWithSettingsStore:v7 userDefaults:v7->_defaults];
    games = v7->_games;
    v7->_games = v9;

    v11 = [[GCSProfilesCollection alloc] initWithSettingsStore:v7 userDefaults:v7->_defaults];
    profiles = v7->_profiles;
    v7->_profiles = v11;

    v13 = [[GCSMouseProfilesCollection alloc] initWithSettingsStore:v7 userDefaults:v7->_defaults];
    mouseProfiles = v7->_mouseProfiles;
    v7->_mouseProfiles = v13;

    v15 = [[GCSControllersCollection alloc] initWithSettingsStore:v7 userDefaults:v7->_defaults];
    controllers = v7->_controllers;
    v7->_controllers = v15;

    v17 = [[GCSCopilotFusedControllersCollection alloc] initWithSettingsStore:v7 userDefaults:v7->_defaults];
    copilotFusedControllers = v7->_copilotFusedControllers;
    v7->_copilotFusedControllers = v17;
  }

  return v7;
}

- (id)profileForPersistentControllerIdentifier:(id)a3 appBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = [(GCSGames *)self->_games gameWithBundleIdentifier:a4];
  if (!v7)
  {
    games = self->_games;
    v9 = +[GCSGame defaultIdentifier];
    v7 = [(GCSGames *)games gameWithBundleIdentifier:v9];
  }

  v10 = [v7 profileUUIDForPersistentControllerIdentifier:v6];
  if (v10)
  {
    v11 = [(GCSProfiles *)self->_profiles profileForIdentifier:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)savedDataMeetsRequiredVersion:(id)a3
{
  v4 = [a3 shortenedVersionNumberString];
  v5 = [(NSString *)self->_settingsVersion shortenedVersionNumberString];
  v6 = [v4 compare:v5 options:64] != 1;

  return v6;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v20 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:@"settingsVersion"])
  {
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(GCSSettingsStore *)self setSettingsVersion:v13];
      v14 = getGCSLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        goto LABEL_7;
      }
    }

    else
    {
      [(GCSSettingsStore *)self setSettingsVersion:@"0.0.0"];
      v14 = getGCSLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
LABEL_7:
        v15 = [(GCSSettingsStore *)self settingsVersion];
        *buf = 138412290;
        v19 = v15;
        _os_log_impl(&dword_24E4FA000, v14, OS_LOG_TYPE_INFO, "GCSSettingsStore.settingsVersion = %@", buf, 0xCu);
      }
    }

    goto LABEL_9;
  }

  v17.receiver = self;
  v17.super_class = GCSSettingsStore;
  [(GCSSettingsStore *)&v17 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  v13 = v12;
LABEL_9:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(GCUserDefaults *)self->_defaults removeObserver:self forKeyPath:@"settingsVersion" context:0];
  v3.receiver = self;
  v3.super_class = GCSSettingsStore;
  [(GCSSettingsStore *)&v3 dealloc];
}

@end