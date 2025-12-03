@interface GPGameMonitorEnvoy
+ (BOOL)applicationIsIdentifiedGame:(id)game info:(id)info entitlements:(id)entitlements;
+ (id)gameCategories;
+ (id)gameModeBundleIdentifierAllowList;
+ (id)sharedInstance;
- (GPGameMonitorEnvoy)init;
- (void)gameDidLaunch:(id)launch;
@end

@implementation GPGameMonitorEnvoy

+ (id)sharedInstance
{
  if (sharedInstance__onceToken != -1)
  {
    +[GPGameMonitorEnvoy sharedInstance];
  }

  v3 = sharedInstance__sharedMonitor;

  return v3;
}

uint64_t __36__GPGameMonitorEnvoy_sharedInstance__block_invoke()
{
  sharedInstance__sharedMonitor = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)gameCategories
{
  if (gameCategories_onceToken != -1)
  {
    +[GPGameMonitorEnvoy gameCategories];
  }

  v3 = gameCategories__gameCategories;

  return v3;
}

void __36__GPGameMonitorEnvoy_gameCategories__block_invoke()
{
  v13[20] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CC1F70];
  v13[0] = *MEMORY[0x277CC1FB8];
  v13[1] = v0;
  v1 = *MEMORY[0x277CC1F80];
  v13[2] = *MEMORY[0x277CC1F78];
  v13[3] = v1;
  v2 = *MEMORY[0x277CC1F90];
  v13[4] = *MEMORY[0x277CC1F88];
  v13[5] = v2;
  v3 = *MEMORY[0x277CC1FA0];
  v13[6] = *MEMORY[0x277CC1F98];
  v13[7] = v3;
  v4 = *MEMORY[0x277CC1FB0];
  v13[8] = *MEMORY[0x277CC1FA8];
  v13[9] = v4;
  v5 = *MEMORY[0x277CC1FC8];
  v13[10] = *MEMORY[0x277CC1FC0];
  v13[11] = v5;
  v6 = *MEMORY[0x277CC1FD8];
  v13[12] = *MEMORY[0x277CC1FD0];
  v13[13] = v6;
  v7 = *MEMORY[0x277CC1FE8];
  v13[14] = *MEMORY[0x277CC1FE0];
  v13[15] = v7;
  v8 = *MEMORY[0x277CC1FF8];
  v13[16] = *MEMORY[0x277CC1FF0];
  v13[17] = v8;
  v9 = *MEMORY[0x277CC2008];
  v13[18] = *MEMORY[0x277CC2000];
  v13[19] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:20];
  v11 = gameCategories__gameCategories;
  gameCategories__gameCategories = v10;

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)gameModeBundleIdentifierAllowList
{
  if (gameModeBundleIdentifierAllowList_onceToken != -1)
  {
    +[GPGameMonitorEnvoy gameModeBundleIdentifierAllowList];
  }

  v3 = gameModeBundleIdentifierAllowList__gameModeBundleIdentifierAllowList;

  return v3;
}

void __55__GPGameMonitorEnvoy_gameModeBundleIdentifierAllowList__block_invoke()
{
  v0 = gameModeBundleIdentifierAllowList__gameModeBundleIdentifierAllowList;
  gameModeBundleIdentifierAllowList__gameModeBundleIdentifierAllowList = &unk_28619F188;
}

+ (BOOL)applicationIsIdentifiedGame:(id)game info:(id)info entitlements:(id)entitlements
{
  v61 = *MEMORY[0x277D85DE8];
  gameCopy = game;
  entitlementsCopy = entitlements;
  genreID = [gameCopy genreID];
  unsignedIntValue = [genreID unsignedIntValue];

  v11 = 1;
  if (unsignedIntValue != 6014 && (unsignedIntValue - 7001) >= 0x11)
  {
    correspondingApplicationRecord = [gameCopy correspondingApplicationRecord];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    gameModeBundleIdentifierAllowList = [self gameModeBundleIdentifierAllowList];
    v14 = [gameModeBundleIdentifierAllowList countByEnumeratingWithState:&v54 objects:v60 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v55;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v55 != v16)
          {
            objc_enumerationMutation(gameModeBundleIdentifierAllowList);
          }

          v18 = *(*(&v54 + 1) + 8 * i);
          bundleIdentifier = [correspondingApplicationRecord bundleIdentifier];
          LOBYTE(v18) = [bundleIdentifier isEqual:v18];

          if (v18)
          {

            goto LABEL_19;
          }
        }

        v15 = [gameModeBundleIdentifierAllowList countByEnumeratingWithState:&v54 objects:v60 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    if (!unsignedIntValue)
    {
      v53 = 0;
      v27 = [correspondingApplicationRecord categoryTypesWithError:&v53];
      v44 = v53;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v28 = v27;
      v41 = [v28 countByEnumeratingWithState:&v49 objects:v59 count:16];
      if (v41)
      {
        v29 = *v50;
        v30 = 0x279685000uLL;
        v43 = v28;
        v40 = *v50;
        do
        {
          v31 = 0;
          do
          {
            if (*v50 != v29)
            {
              objc_enumerationMutation(v28);
            }

            v42 = v31;
            v32 = *(*(&v49 + 1) + 8 * v31);
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            gameCategories = [*(v30 + 1400) gameCategories];
            v34 = [gameCategories countByEnumeratingWithState:&v45 objects:v58 count:16];
            if (v34)
            {
              v35 = v34;
              v36 = *v46;
              while (2)
              {
                for (j = 0; j != v35; ++j)
                {
                  if (*v46 != v36)
                  {
                    objc_enumerationMutation(gameCategories);
                  }

                  v38 = *(*(&v45 + 1) + 8 * j);
                  identifier = [v32 identifier];
                  LOBYTE(v38) = [identifier isEqual:v38];

                  if (v38)
                  {

                    goto LABEL_19;
                  }
                }

                v35 = [gameCategories countByEnumeratingWithState:&v45 objects:v58 count:16];
                if (v35)
                {
                  continue;
                }

                break;
              }
            }

            v31 = v42 + 1;
            v28 = v43;
            v29 = v40;
            v30 = 0x279685000;
          }

          while (v42 + 1 != v41);
          v41 = [v43 countByEnumeratingWithState:&v49 objects:v59 count:16];
        }

        while (v41);
      }
    }

    if ([entitlementsCopy BOOLForKey:@"com.apple.developer.sustained-execution"] & 1) != 0 || (objc_msgSend(entitlementsCopy, "BOOLForKey:", @"com.apple.developer.kernel.increased-memory-limit") & 1) != 0 || (objc_msgSend(entitlementsCopy, "BOOLForKey:", @"com.apple.developer.kernel.increased-debugging-memory-limit") & 1) != 0 || (objc_msgSend(gameCopy, "requiredDeviceCapabilities"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "containsObject:", @"iphone-performance-gaming-tier"), v20, (v21) || (objc_msgSend(correspondingApplicationRecord, "supportsGameMode"), v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
    {
LABEL_19:
      v11 = 1;
    }

    else
    {
      infoDictionary = [correspondingApplicationRecord infoDictionary];
      v24 = [infoDictionary objectForKey:@"GCSupportsControllerUserInteraction" ofClass:objc_opt_class()];

      v11 = v24 != 0;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v11;
}

- (GPGameMonitorEnvoy)init
{
  v3.receiver = self;
  v3.super_class = GPGameMonitorEnvoy;
  return [(GPGameMonitorEnvoy *)&v3 init];
}

- (void)gameDidLaunch:(id)launch
{
  launchCopy = launch;
  if (+[GPGameMonitorEnvoy deviceSupportsGamePolicy])
  {
    if (gp_isInternalBuild())
    {
      [GPGameMonitorEnvoy gameDidLaunch:launchCopy];
    }

    notify_post([@"com.apple.gamepolicy.daemon.launch" UTF8String]);
  }
}

- (void)gameDidLaunch:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = getGPLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = a1;
    _os_log_impl(&dword_24E5B8000, v2, OS_LOG_TYPE_INFO, "[GPGameMonitorEnvoy] gameDidLaunch: %@", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

@end