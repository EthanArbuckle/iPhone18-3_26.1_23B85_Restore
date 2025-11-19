@interface FSSettings
+ (id)defaultSettings;
- (NSURL)enabledModulesArray;
- (NSURL)probeOrderArray;
- (NSURL)settingsContainer;
@end

@implementation FSSettings

+ (id)defaultSettings
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__FSSettings_defaultSettings__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (defaultSettings_onceToken != -1)
  {
    dispatch_once(&defaultSettings_onceToken, block);
  }

  v2 = defaultSettings_def;

  return v2;
}

uint64_t __29__FSSettings_defaultSettings__block_invoke(uint64_t a1)
{
  defaultSettings_def = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (NSURL)settingsContainer
{
  if (settingsContainer_onceToken != -1)
  {
    [FSSettings settingsContainer];
  }

  v3 = settingsContainer_containerURL;

  return v3;
}

void __31__FSSettings_settingsContainer__block_invoke()
{
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v1 = [v0 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.fskit.settings"];
  v2 = settingsContainer_containerURL;
  settingsContainer_containerURL = v1;

  if (settingsContainer_containerURL)
  {
    v9 = 0;
    v3 = [settingsContainer_containerURL path];
    v4 = [v0 fileExistsAtPath:v3 isDirectory:&v9];

    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v8 = 0;
      v6 = [v0 createDirectoryAtURL:settingsContainer_containerURL withIntermediateDirectories:1 attributes:0 error:&v8];
      v5 = v8;
      if ((v6 & 1) == 0)
      {
        v7 = fskit_std_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          __31__FSSettings_settingsContainer__block_invoke_cold_1(v5, v7);
        }
      }
    }
  }
}

- (NSURL)probeOrderArray
{
  v2 = [(FSSettings *)self settingsContainer];
  v3 = [v2 URLByAppendingPathComponent:@"probeOrder.plist" isDirectory:0];

  return v3;
}

- (NSURL)enabledModulesArray
{
  v2 = [(FSSettings *)self settingsContainer];
  v3 = [v2 URLByAppendingPathComponent:@"enabledModules.plist" isDirectory:0];

  return v3;
}

void __31__FSSettings_settingsContainer__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24A929000, a2, OS_LOG_TYPE_ERROR, "Error creating container: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end