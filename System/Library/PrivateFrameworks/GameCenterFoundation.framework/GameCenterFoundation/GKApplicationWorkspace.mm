@interface GKApplicationWorkspace
+ (id)defaultWorkspace;
+ (int64_t)getPlatformForBundleID:(id)a3;
- (id)applicationProxyForBundleID:(id)a3;
- (id)gameDescriptorsWithInstalledBundleVersionsForGameDescriptors:(id)a3;
- (id)openURL:(id)a3;
- (void)openICloudSettings;
- (void)openNewsApp;
- (void)openSoftwareUpdateSettings;
@end

@implementation GKApplicationWorkspace

+ (id)defaultWorkspace
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

id __81__GKApplicationWorkspace_gameDescriptorsWithInstalledBundleVersionsForBundleIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB38];
  v3 = a2;
  v4 = [v2 dictionaryWithCapacity:4];
  [v4 setObject:v3 forKeyedSubscript:@"bundle-id"];
  v5 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v3 allowPlaceholder:0 error:0];

  v6 = [v5 bundleVersion];
  [v4 setObject:v6 forKeyedSubscript:@"bundle-version"];

  v7 = [v5 shortVersionString];
  [v4 setObject:v7 forKeyedSubscript:@"short-bundle-version"];

  v8 = +[GKGameDescriptor stringForPlatform:](GKGameDescriptor, "stringForPlatform:", GKGamePlatformFromDyldPlatform([v5 platform]));
  [v4 setObject:v8 forKeyedSubscript:@"platform"];

  v9 = [v4 copy];

  return v9;
}

- (id)gameDescriptorsWithInstalledBundleVersionsForGameDescriptors:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __87__GKApplicationWorkspace_gameDescriptorsWithInstalledBundleVersionsForGameDescriptors___block_invoke;
  v5[3] = &unk_2785DFED8;
  v5[4] = self;
  v3 = [a3 _gkMapWithBlock:v5];

  return v3;
}

id __87__GKApplicationWorkspace_gameDescriptorsWithInstalledBundleVersionsForGameDescriptors___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"bundle-id"];
  if (v4)
  {
    v5 = [v3 mutableCopy];
    v6 = [*(a1 + 32) applicationProxyForBundleID:v4];
    v7 = [v6 bundleVersion];
    if (v7)
    {
      [v5 setObject:v7 forKeyedSubscript:@"bundle-version"];
    }

    v8 = [v6 bundleShortVersion];
    if (v8)
    {
      [v5 setObject:v8 forKeyedSubscript:@"short-bundle-version"];
    }

    v9 = [v5 copy];
  }

  else
  {
    v9 = v3;
  }

  return v9;
}

+ (int64_t)getPlatformForBundleID:(id)a3
{
  v3 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:a3 allowPlaceholder:0 error:0];
  v4 = GKGamePlatformFromDyldPlatform([v3 platform]);

  return v4;
}

- (id)applicationProxyForBundleID:(id)a3
{
  v3 = a3;
  v4 = [[GKApplicationProxy alloc] initWithBundleID:v3];

  return v4;
}

- (id)openURL:(id)a3
{
  v3 = MEMORY[0x277CC1E80];
  v4 = a3;
  v5 = [v3 defaultWorkspace];
  v9 = 0;
  [v5 openSensitiveURL:v4 withOptions:0 error:&v9];

  v6 = v9;
  v7 = v9;

  return v6;
}

- (void)openICloudSettings
{
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE"];
  v4 = [(GKApplicationWorkspace *)self openURL:v3];
  if (v4)
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      [(GKApplicationWorkspace(OSSpecific) *)v4 openICloudSettings];
    }
  }
}

- (void)openSoftwareUpdateSettings
{
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=General&path=SOFTWARE_UPDATE_LINK"];
  v4 = [(GKApplicationWorkspace *)self openURL:v3];
  if (v4)
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      [(GKApplicationWorkspace(OSSpecific) *)v4 openSoftwareUpdateSettings];
    }
  }
}

- (void)openNewsApp
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"https://apple.news/puzzles"];
  v3 = [(GKApplicationWorkspace *)self openURL:v4];
}

@end