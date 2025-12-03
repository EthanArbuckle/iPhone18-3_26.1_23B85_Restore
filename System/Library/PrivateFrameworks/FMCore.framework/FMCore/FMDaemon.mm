@interface FMDaemon
- (id)verifyLaunchEventsConfiguration:(id)configuration withExclusions:(id)exclusions;
- (void)initialize;
- (void)registerXPCEventHandlers;
- (void)run;
- (void)startupWithCompletion:(id)completion;
@end

@implementation FMDaemon

- (void)run
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __15__FMDaemon_run__block_invoke;
  v3[3] = &unk_278FD9780;
  v3[4] = self;
  [(FMDaemon *)self startupWithCompletion:v3];
  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [mainRunLoop run];
}

- (void)initialize
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __22__FMDaemon_initialize__block_invoke;
  v2[3] = &unk_278FD9780;
  v2[4] = self;
  [(FMDaemon *)self startupWithCompletion:v2];
}

- (void)startupWithCompletion:(id)completion
{
  completionCopy = completion;
  [(FMDaemon *)self startup];
  v4 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v4 = completionCopy;
  }
}

- (void)registerXPCEventHandlers
{
  xpcDarwinEventHandlers = [(FMDaemon *)self xpcDarwinEventHandlers];
  if (xpcDarwinEventHandlers)
  {
    [FMXPCNotificationsUtil handleDarwinNotificationsWithHandlers:xpcDarwinEventHandlers];
  }

  xpcDistributedEventHandlers = [(FMDaemon *)self xpcDistributedEventHandlers];
  if (xpcDistributedEventHandlers)
  {
    [FMXPCNotificationsUtil handleDistributedNotificationsWithHandlers:xpcDistributedEventHandlers];
  }
}

- (id)verifyLaunchEventsConfiguration:(id)configuration withExclusions:(id)exclusions
{
  v70 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v7 = [MEMORY[0x277CBEB98] setWithArray:exclusions];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:configurationCopy];
  v9 = v8;
  if (v8)
  {
    selfCopy = self;
    v53 = v8;
    v54 = v7;
    v10 = [v8 objectForKeyedSubscript:@"LaunchEvents"];
    v11 = [v10 objectForKeyedSubscript:@"com.apple.notifyd.matching"];

    v12 = [MEMORY[0x277CBEB58] set];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v64 objects:v69 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v65;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v65 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v64 + 1) + 8 * i);
          [v12 addObject:v18];
          v19 = [v13 objectForKeyedSubscript:v18];
          v20 = [v19 objectForKeyedSubscript:@"Notification"];

          if (![v18 isEqualToString:v20])
          {
            v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Darwin event key %@ does not match with its notification name %@", v18, v20];
            xpcDarwinEventHandlers = v13;
            v9 = v53;
            v7 = v54;
            goto LABEL_37;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v64 objects:v69 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v7 = v54;
    [v12 minusSet:v54];
    xpcDarwinEventHandlers = [(FMDaemon *)selfCopy xpcDarwinEventHandlers];
    v22 = [MEMORY[0x277CBEB58] set];
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __59__FMDaemon_verifyLaunchEventsConfiguration_withExclusions___block_invoke;
    v62[3] = &unk_278FD97A8;
    v20 = v22;
    v63 = v20;
    [xpcDarwinEventHandlers enumerateKeysAndObjectsUsingBlock:v62];
    [v20 minusSet:v54];
    string = [MEMORY[0x277CCAB68] string];
    v24 = [v12 mutableCopy];
    [v24 minusSet:v20];
    if ([v24 count])
    {
      [string appendFormat:@"launchd plist has these darwin notifications that don't have a handler defined in code: %@\n", v24];
    }

    v25 = [v20 mutableCopy];
    [v25 minusSet:v12];
    v9 = v53;
    if ([v25 count])
    {
      [string appendFormat:@"launchd plist does not have these darwin notifications but, they have a handler defined in code: %@\n", v25];
    }

    v50 = v25;
    if ([string length])
    {
      v26 = string;
    }

    else
    {
      v46 = v24;
      v47 = string;
      v48 = xpcDarwinEventHandlers;
      v49 = configurationCopy;
      v27 = [v53 objectForKeyedSubscript:@"LaunchEvents"];
      v28 = [v27 objectForKeyedSubscript:@"com.apple.distnoted.matching"];

      v55 = [MEMORY[0x277CBEB58] set];
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v29 = v28;
      v30 = [v29 countByEnumeratingWithState:&v58 objects:v68 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v59;
        while (2)
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v59 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v58 + 1) + 8 * j);
            [v55 addObject:v34];
            v35 = [v29 objectForKeyedSubscript:v34];
            v36 = [v35 objectForKeyedSubscript:@"Name"];

            if (![v34 isEqualToString:v36])
            {
              v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Distributed event key %@ does not match with its notification name %@", v34, v36];
              v42 = v29;
              v7 = v54;
              v24 = v46;
              goto LABEL_35;
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v58 objects:v68 count:16];
          if (v31)
          {
            continue;
          }

          break;
        }
      }

      v7 = v54;
      [v55 minusSet:v54];
      xpcDistributedEventHandlers = [(FMDaemon *)selfCopy xpcDistributedEventHandlers];
      v38 = [MEMORY[0x277CBEB58] set];
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __59__FMDaemon_verifyLaunchEventsConfiguration_withExclusions___block_invoke_2;
      v56[3] = &unk_278FD97A8;
      v36 = v38;
      v57 = v36;
      v52 = xpcDistributedEventHandlers;
      [xpcDistributedEventHandlers enumerateKeysAndObjectsUsingBlock:v56];
      [v36 minusSet:v54];
      string2 = [MEMORY[0x277CCAB68] string];
      v40 = [v55 mutableCopy];
      [v40 minusSet:v36];
      if ([v40 count])
      {
        [string2 appendFormat:@"launchd plist has these distributed notifications that don't have a handler defined in code: %@\n", v40];
      }

      v45 = v40;
      v41 = [v36 mutableCopy];
      [v41 minusSet:v55];
      if ([v41 count])
      {
        [string2 appendFormat:@"launchd plist does not have these distributed notifications but, they have a handler defined in code: %@\n", v41];
      }

      v24 = v46;
      if ([string2 length])
      {
        v26 = string2;
      }

      else
      {
        v26 = 0;
      }

      v42 = v52;
LABEL_35:

      xpcDarwinEventHandlers = v48;
      configurationCopy = v49;
      v9 = v53;
      string = v47;
    }

LABEL_37:
  }

  else
  {
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not load %@", 0];
  }

  v43 = *MEMORY[0x277D85DE8];

  return v26;
}

void __59__FMDaemon_verifyLaunchEventsConfiguration_withExclusions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) addObjectsFromArray:v3];
    }
  }
}

void __59__FMDaemon_verifyLaunchEventsConfiguration_withExclusions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) addObjectsFromArray:v3];
    }
  }
}

@end