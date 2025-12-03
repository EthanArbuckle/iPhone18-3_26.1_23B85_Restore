@interface GKContentPropertyList
+ (id)localPropertyListForGameDescriptor:(id)descriptor;
- (id)_mainBundle;
- (id)_rootDictionary;
- (id)achievementDescriptionForIdentifier:(id)identifier;
- (id)achievementDescriptions;
- (id)imageNameForDashboardLogo;
- (id)leaderboardDescriptionForIdentifier:(id)identifier;
- (id)leaderboardDescriptions;
- (id)leaderboardSetDescriptionForIdentifier:(id)identifier;
- (id)leaderboardSetDescriptions;
- (id)localizedStringForKey:(id)key;
@end

@implementation GKContentPropertyList

+ (id)localPropertyListForGameDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = objc_alloc_init(self);
  _rootDictionary = [v5 _rootDictionary];
  v7 = [_rootDictionary objectForKeyedSubscript:@"GKPropertyListVersion"];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0 && [v7 intValue] <= 0)
  {
    v10 = [descriptorCopy objectForKeyedSubscript:@"bundle-id"];
    [v5 setBundleID:v10];

    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_mainBundle
{
  v3 = +[GKApplicationWorkspace defaultWorkspace];
  v4 = [v3 applicationProxyForBundleID:self->_bundleID];
  bundle = [v4 bundle];

  return bundle;
}

- (id)localizedStringForKey:(id)key
{
  keyCopy = key;
  _mainBundle = [(GKContentPropertyList *)self _mainBundle];
  v6 = [_mainBundle _gkSystemLocalizedStringForKey:keyCopy value:keyCopy table:@"GKGameCenter"];

  return v6;
}

- (id)imageNameForDashboardLogo
{
  _rootDictionary = [(GKContentPropertyList *)self _rootDictionary];
  v3 = [_rootDictionary objectForKeyedSubscript:@"GKDashboardImages"];
  v4 = [v3 objectForKeyedSubscript:@"logoImageName"];

  return v4;
}

- (id)_rootDictionary
{
  v21 = *MEMORY[0x277D85DE8];
  root = [(GKContentPropertyList *)self root];
  if (!root)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:self->_bundleID];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 pathForResource:@"GKGameCenterContent" ofType:@"plist"];
      v7 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v6];
      if (v7)
      {
        v18 = 0;
        root = [MEMORY[0x277CCAC58] propertyListWithData:v7 options:0 format:0 error:&v18];
        v8 = v18;
        if (!root)
        {
          v9 = os_log_GKGeneral;
          if (!os_log_GKGeneral)
          {
            v10 = GKOSLoggers();
            v9 = os_log_GKGeneral;
          }

          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v20 = v8;
            _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "reading content plist: %@", buf, 0xCu);
          }
        }

        [(GKContentPropertyList *)self setRoot:root];
      }

      else
      {
        v14 = os_log_GKGeneral;
        if (!os_log_GKGeneral)
        {
          v15 = GKOSLoggers();
          v14 = os_log_GKGeneral;
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v20 = v6;
          _os_log_impl(&dword_227904000, v14, OS_LOG_TYPE_INFO, "can't read file from path: %@", buf, 0xCu);
        }

        root = 0;
      }
    }

    else
    {
      v11 = os_log_GKGeneral;
      if (!os_log_GKGeneral)
      {
        v12 = GKOSLoggers();
        v11 = os_log_GKGeneral;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        bundleID = self->_bundleID;
        *buf = 138412290;
        v20 = bundleID;
        _os_log_impl(&dword_227904000, v11, OS_LOG_TYPE_INFO, "no bundle for bundleID: %@", buf, 0xCu);
      }

      root = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return root;
}

- (id)leaderboardDescriptions
{
  _rootDictionary = [(GKContentPropertyList *)self _rootDictionary];
  v3 = [_rootDictionary objectForKeyedSubscript:@"GKLeaderboards"];

  return v3;
}

- (id)leaderboardSetDescriptions
{
  _rootDictionary = [(GKContentPropertyList *)self _rootDictionary];
  v3 = [_rootDictionary objectForKeyedSubscript:@"GKLeaderboardSets"];

  return v3;
}

- (id)achievementDescriptionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  achievementsByIdentifier = self->_achievementsByIdentifier;
  if (!achievementsByIdentifier)
  {
    v6 = [(NSDictionary *)self->_root objectForKeyedSubscript:@"GKAchievements"];
    v7 = [v6 _gkMapDictionaryWithKeyPath:@"identifier"];
    v8 = self->_achievementsByIdentifier;
    self->_achievementsByIdentifier = v7;

    achievementsByIdentifier = self->_achievementsByIdentifier;
  }

  v9 = [(NSDictionary *)achievementsByIdentifier objectForKeyedSubscript:identifierCopy];

  return v9;
}

- (id)leaderboardDescriptionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  leaderboardsByIdentifier = self->_leaderboardsByIdentifier;
  if (!leaderboardsByIdentifier)
  {
    v6 = [(NSDictionary *)self->_root objectForKeyedSubscript:@"GKLeaderboards"];
    v7 = [v6 _gkMapDictionaryWithKeyPath:@"identifier"];
    v8 = self->_leaderboardsByIdentifier;
    self->_leaderboardsByIdentifier = v7;

    leaderboardsByIdentifier = self->_leaderboardsByIdentifier;
  }

  v9 = [(NSDictionary *)leaderboardsByIdentifier objectForKeyedSubscript:identifierCopy];

  return v9;
}

- (id)leaderboardSetDescriptionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  leaderboardSetsByIdentifier = self->_leaderboardSetsByIdentifier;
  if (!leaderboardSetsByIdentifier)
  {
    v6 = [(NSDictionary *)self->_root objectForKeyedSubscript:@"GKLeaderboardSets"];
    v7 = [v6 _gkMapDictionaryWithKeyPath:@"identifier"];
    v8 = self->_leaderboardSetsByIdentifier;
    self->_leaderboardSetsByIdentifier = v7;

    leaderboardSetsByIdentifier = self->_leaderboardSetsByIdentifier;
  }

  v9 = [(NSDictionary *)leaderboardSetsByIdentifier objectForKeyedSubscript:identifierCopy];

  return v9;
}

- (id)achievementDescriptions
{
  _rootDictionary = [(GKContentPropertyList *)self _rootDictionary];
  v3 = [_rootDictionary objectForKeyedSubscript:@"GKAchievements"];

  return v3;
}

@end