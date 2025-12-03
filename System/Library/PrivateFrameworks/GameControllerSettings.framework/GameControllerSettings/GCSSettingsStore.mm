@interface GCSSettingsStore
- (BOOL)savedDataMeetsRequiredVersion:(id)version;
- (GCSSettingsStore)initWithUserDefaults:(id)defaults;
- (id)profileForPersistentControllerIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation GCSSettingsStore

- (GCSSettingsStore)initWithUserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v20.receiver = self;
  v20.super_class = GCSSettingsStore;
  v6 = [(GCSSettingsStore *)&v20 init];
  v7 = v6;
  if (v6)
  {
    settingsVersion = v6->_settingsVersion;
    v6->_settingsVersion = @"0.0.0";

    objc_storeStrong(&v7->_defaults, defaults);
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

- (id)profileForPersistentControllerIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier
{
  identifierCopy = identifier;
  v7 = [(GCSGames *)self->_games gameWithBundleIdentifier:bundleIdentifier];
  if (!v7)
  {
    games = self->_games;
    v9 = +[GCSGame defaultIdentifier];
    v7 = [(GCSGames *)games gameWithBundleIdentifier:v9];
  }

  v10 = [v7 profileUUIDForPersistentControllerIdentifier:identifierCopy];
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

- (BOOL)savedDataMeetsRequiredVersion:(id)version
{
  shortenedVersionNumberString = [version shortenedVersionNumberString];
  shortenedVersionNumberString2 = [(NSString *)self->_settingsVersion shortenedVersionNumberString];
  v6 = [shortenedVersionNumberString compare:shortenedVersionNumberString2 options:64] != 1;

  return v6;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v20 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"settingsVersion"])
  {
    v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];

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
        settingsVersion = [(GCSSettingsStore *)self settingsVersion];
        *buf = 138412290;
        v19 = settingsVersion;
        _os_log_impl(&dword_24E4FA000, v14, OS_LOG_TYPE_INFO, "GCSSettingsStore.settingsVersion = %@", buf, 0xCu);
      }
    }

    goto LABEL_9;
  }

  v17.receiver = self;
  v17.super_class = GCSSettingsStore;
  [(GCSSettingsStore *)&v17 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  v13 = changeCopy;
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