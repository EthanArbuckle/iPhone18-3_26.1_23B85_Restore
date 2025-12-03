@interface BPSFollowUpController
+ (id)_domainAccessorForDevice:(id)device;
+ (id)skippedSetupPaneClassesForCurrentDevice;
+ (id)skippedSetupPaneClassesForDevice:(id)device;
+ (void)addFollowUpForIdentifier:(id)identifier withAttributes:(id)attributes withCompletion:(id)completion;
+ (void)markSkippedSetupPaneClass:(Class)class forDevice:(id)device;
+ (void)markSkippedSetupPaneClassForCurrentDevice:(Class)device;
+ (void)removeFollowUpForIdentifier:(id)identifier withCompletion:(id)completion;
+ (void)removeSkippedPaneClass:(Class)class forDevice:(id)device;
+ (void)removeSkippedPaneClassForCurrentDevice:(Class)device;
@end

@implementation BPSFollowUpController

+ (id)skippedSetupPaneClassesForCurrentDevice
{
  _currentDevice = [self _currentDevice];
  v4 = [self skippedSetupPaneClassesForDevice:_currentDevice];

  return v4;
}

+ (void)addFollowUpForIdentifier:(id)identifier withAttributes:(id)attributes withCompletion:(id)completion
{
  v49 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  attributesCopy = attributes;
  completionCopy = completion;
  if (identifierCopy && attributesCopy && [identifierCopy length])
  {
    baseDomainIdentifier = [self baseDomainIdentifier];
    v12 = objc_alloc_init(MEMORY[0x277CFE508]);
    [v12 setUniqueIdentifier:identifierCopy];
    [v12 setGroupIdentifier:baseDomainIdentifier];
    localizedTitle = [attributesCopy localizedTitle];
    [v12 setTitle:localizedTitle];

    localizedDescription = [attributesCopy localizedDescription];
    [v12 setInformativeText:localizedDescription];

    [v12 setTargetBundleIdentifier:baseDomainIdentifier];
    v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
    followUpActions = [attributesCopy followUpActions];

    if (followUpActions)
    {
      v37 = v12;
      v38 = completionCopy;
      v39 = identifierCopy;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      followUpActions2 = [attributesCopy followUpActions];
      allKeys = [followUpActions2 allKeys];

      v18 = [allKeys countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v45;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v45 != v20)
            {
              objc_enumerationMutation(allKeys);
            }

            v22 = *(*(&v44 + 1) + 8 * i);
            v23 = MEMORY[0x277CFE4F8];
            followUpActions3 = [attributesCopy followUpActions];
            [followUpActions3 objectForKeyedSubscript:v22];
            v26 = v25 = attributesCopy;
            v27 = [v23 actionWithLabel:v22 url:v26];

            attributesCopy = v25;
            [v40 addObject:v27];
          }

          v19 = [allKeys countByEnumeratingWithState:&v44 objects:v48 count:16];
        }

        while (v19);
      }

      completionCopy = v38;
      identifierCopy = v39;
      v12 = v37;
    }

    [v12 setActions:v40];
    if ([attributesCopy wantNotification])
    {
      v28 = objc_alloc_init(MEMORY[0x277CFE510]);
      localizedNotificationTitle = [attributesCopy localizedNotificationTitle];
      [v28 setTitle:localizedNotificationTitle];

      localizedNotificationDescription = [attributesCopy localizedNotificationDescription];
      [v28 setInformativeText:localizedNotificationDescription];

      options = [v28 options];
      [options setByAddingObject:*MEMORY[0x277CFE488]];
      v33 = v32 = attributesCopy;
      [v28 setOptions:v33];

      options2 = [v28 options];
      v35 = [options2 setByAddingObject:*MEMORY[0x277CFE4A0]];
      [v28 setOptions:v35];

      attributesCopy = v32;
      [v12 setNotification:v28];
    }

    v36 = [objc_alloc(MEMORY[0x277CFE500]) initWithClientIdentifier:baseDomainIdentifier];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __80__BPSFollowUpController_addFollowUpForIdentifier_withAttributes_withCompletion___block_invoke;
    v42[3] = &unk_278D23430;
    v43 = completionCopy;
    [v36 postFollowUpItem:v12 completion:v42];
  }

  else
  {
    baseDomainIdentifier = bps_setup_log();
    if (os_log_type_enabled(baseDomainIdentifier, OS_LOG_TYPE_ERROR) && os_log_type_enabled(baseDomainIdentifier, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241E74000, baseDomainIdentifier, OS_LOG_TYPE_DEFAULT, "Error!! Issuing a FollowUp requires dictating an identifier!", buf, 2u);
    }
  }
}

uint64_t __80__BPSFollowUpController_addFollowUpForIdentifier_withAttributes_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)removeFollowUpForIdentifier:(id)identifier withCompletion:(id)completion
{
  v15[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  baseDomainIdentifier = [self baseDomainIdentifier];
  if (identifierCopy && [identifierCopy length])
  {
    v9 = [objc_alloc(MEMORY[0x277CFE500]) initWithClientIdentifier:baseDomainIdentifier];
    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", baseDomainIdentifier, identifierCopy];
    v15[0] = identifierCopy;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __68__BPSFollowUpController_removeFollowUpForIdentifier_withCompletion___block_invoke;
    v13[3] = &unk_278D23430;
    v14 = completionCopy;
    [v9 clearPendingFollowUpItemsWithUniqueIdentifiers:v11 completion:v13];
  }

  else
  {
    v9 = bps_setup_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241E74000, v9, OS_LOG_TYPE_DEFAULT, "Error!! Issuing a FollowUp requires dictating an identifier!", buf, 2u);
    }
  }
}

uint64_t __68__BPSFollowUpController_removeFollowUpForIdentifier_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (id)_domainAccessorForDevice:(id)device
{
  v3 = MEMORY[0x277D2BA58];
  deviceCopy = device;
  v5 = [[v3 alloc] initWithDomain:@"com.apple.Bridge" pairedDevice:deviceCopy];

  return v5;
}

+ (void)markSkippedSetupPaneClassForCurrentDevice:(Class)device
{
  _currentDevice = [self _currentDevice];
  [self markSkippedSetupPaneClass:device forDevice:_currentDevice];
}

+ (void)removeSkippedPaneClassForCurrentDevice:(Class)device
{
  _currentDevice = [self _currentDevice];
  [self removeSkippedPaneClass:device forDevice:_currentDevice];
}

+ (void)markSkippedSetupPaneClass:(Class)class forDevice:(id)device
{
  v19 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v7 = bps_setup_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136446466;
    v16 = "+[BPSFollowUpController markSkippedSetupPaneClass:forDevice:]";
    v17 = 2114;
    classCopy = class;
    _os_log_impl(&dword_241E74000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", &v15, 0x16u);
  }

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:class];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];

  if (v8 != mainBundle)
  {
    class = [v8 principalClass];
  }

  v10 = NSStringFromClass(class);
  v11 = [self _domainAccessorForDevice:deviceCopy];

  v12 = [v11 objectForKey:@"BridgeSkippedSetupPanes"];
  if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v12 = MEMORY[0x277CBEBF8];
  }

  if (([v12 containsObject:v10] & 1) == 0)
  {
    v13 = [v12 arrayByAddingObject:v10];

    v12 = v13;
  }

  [v11 setObject:v12 forKey:@"BridgeSkippedSetupPanes"];
  synchronize = [v11 synchronize];
}

+ (void)removeSkippedPaneClass:(Class)class forDevice:(id)device
{
  v17 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v7 = bps_setup_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136446466;
    classCopy2 = "+[BPSFollowUpController removeSkippedPaneClass:forDevice:]";
    v15 = 2114;
    classCopy = class;
    _os_log_impl(&dword_241E74000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", &v13, 0x16u);
  }

  v8 = NSStringFromClass(class);
  v9 = [self _domainAccessorForDevice:deviceCopy];

  v10 = [v9 objectForKey:@"BridgeSkippedSetupPanes"];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = [v10 mutableCopy];
    [v11 removeObject:v8];
    [v9 setObject:v11 forKey:@"BridgeSkippedSetupPanes"];
    synchronize = [v9 synchronize];
  }

  else
  {
    v11 = bps_setup_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      classCopy2 = class;
      _os_log_impl(&dword_241E74000, v11, OS_LOG_TYPE_DEFAULT, "Error: tried to remove skipped pane '%@' but none was found", &v13, 0xCu);
    }
  }
}

+ (id)skippedSetupPaneClassesForDevice:(id)device
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [self _domainAccessorForDevice:device];
  v4 = [v3 objectForKey:@"BridgeSkippedSetupPanes"];

  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = bps_setup_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "+[BPSFollowUpController skippedSetupPaneClassesForDevice:]";
    v9 = 2050;
    v10 = [v4 count];
    _os_log_impl(&dword_241E74000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s found %{public}lu panes", &v7, 0x16u);
  }

  return v4;
}

@end