@interface BPSFollowUpController
+ (id)_domainAccessorForDevice:(id)a3;
+ (id)skippedSetupPaneClassesForCurrentDevice;
+ (id)skippedSetupPaneClassesForDevice:(id)a3;
+ (void)addFollowUpForIdentifier:(id)a3 withAttributes:(id)a4 withCompletion:(id)a5;
+ (void)markSkippedSetupPaneClass:(Class)a3 forDevice:(id)a4;
+ (void)markSkippedSetupPaneClassForCurrentDevice:(Class)a3;
+ (void)removeFollowUpForIdentifier:(id)a3 withCompletion:(id)a4;
+ (void)removeSkippedPaneClass:(Class)a3 forDevice:(id)a4;
+ (void)removeSkippedPaneClassForCurrentDevice:(Class)a3;
@end

@implementation BPSFollowUpController

+ (id)skippedSetupPaneClassesForCurrentDevice
{
  v3 = [a1 _currentDevice];
  v4 = [a1 skippedSetupPaneClassesForDevice:v3];

  return v4;
}

+ (void)addFollowUpForIdentifier:(id)a3 withAttributes:(id)a4 withCompletion:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && v9 && [v8 length])
  {
    v11 = [a1 baseDomainIdentifier];
    v12 = objc_alloc_init(MEMORY[0x277CFE508]);
    [v12 setUniqueIdentifier:v8];
    [v12 setGroupIdentifier:v11];
    v13 = [v9 localizedTitle];
    [v12 setTitle:v13];

    v14 = [v9 localizedDescription];
    [v12 setInformativeText:v14];

    [v12 setTargetBundleIdentifier:v11];
    v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = [v9 followUpActions];

    if (v15)
    {
      v37 = v12;
      v38 = v10;
      v39 = v8;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v16 = [v9 followUpActions];
      v17 = [v16 allKeys];

      v18 = [v17 countByEnumeratingWithState:&v44 objects:v48 count:16];
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
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v44 + 1) + 8 * i);
            v23 = MEMORY[0x277CFE4F8];
            v24 = [v9 followUpActions];
            [v24 objectForKeyedSubscript:v22];
            v26 = v25 = v9;
            v27 = [v23 actionWithLabel:v22 url:v26];

            v9 = v25;
            [v40 addObject:v27];
          }

          v19 = [v17 countByEnumeratingWithState:&v44 objects:v48 count:16];
        }

        while (v19);
      }

      v10 = v38;
      v8 = v39;
      v12 = v37;
    }

    [v12 setActions:v40];
    if ([v9 wantNotification])
    {
      v28 = objc_alloc_init(MEMORY[0x277CFE510]);
      v29 = [v9 localizedNotificationTitle];
      [v28 setTitle:v29];

      v30 = [v9 localizedNotificationDescription];
      [v28 setInformativeText:v30];

      v31 = [v28 options];
      [v31 setByAddingObject:*MEMORY[0x277CFE488]];
      v33 = v32 = v9;
      [v28 setOptions:v33];

      v34 = [v28 options];
      v35 = [v34 setByAddingObject:*MEMORY[0x277CFE4A0]];
      [v28 setOptions:v35];

      v9 = v32;
      [v12 setNotification:v28];
    }

    v36 = [objc_alloc(MEMORY[0x277CFE500]) initWithClientIdentifier:v11];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __80__BPSFollowUpController_addFollowUpForIdentifier_withAttributes_withCompletion___block_invoke;
    v42[3] = &unk_278D23430;
    v43 = v10;
    [v36 postFollowUpItem:v12 completion:v42];
  }

  else
  {
    v11 = bps_setup_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241E74000, v11, OS_LOG_TYPE_DEFAULT, "Error!! Issuing a FollowUp requires dictating an identifier!", buf, 2u);
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

+ (void)removeFollowUpForIdentifier:(id)a3 withCompletion:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [a1 baseDomainIdentifier];
  if (v6 && [v6 length])
  {
    v9 = [objc_alloc(MEMORY[0x277CFE500]) initWithClientIdentifier:v8];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v8, v6];
    v15[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __68__BPSFollowUpController_removeFollowUpForIdentifier_withCompletion___block_invoke;
    v13[3] = &unk_278D23430;
    v14 = v7;
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

+ (id)_domainAccessorForDevice:(id)a3
{
  v3 = MEMORY[0x277D2BA58];
  v4 = a3;
  v5 = [[v3 alloc] initWithDomain:@"com.apple.Bridge" pairedDevice:v4];

  return v5;
}

+ (void)markSkippedSetupPaneClassForCurrentDevice:(Class)a3
{
  v5 = [a1 _currentDevice];
  [a1 markSkippedSetupPaneClass:a3 forDevice:v5];
}

+ (void)removeSkippedPaneClassForCurrentDevice:(Class)a3
{
  v5 = [a1 _currentDevice];
  [a1 removeSkippedPaneClass:a3 forDevice:v5];
}

+ (void)markSkippedSetupPaneClass:(Class)a3 forDevice:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = bps_setup_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136446466;
    v16 = "+[BPSFollowUpController markSkippedSetupPaneClass:forDevice:]";
    v17 = 2114;
    v18 = a3;
    _os_log_impl(&dword_241E74000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", &v15, 0x16u);
  }

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:a3];
  v9 = [MEMORY[0x277CCA8D8] mainBundle];

  if (v8 != v9)
  {
    a3 = [v8 principalClass];
  }

  v10 = NSStringFromClass(a3);
  v11 = [a1 _domainAccessorForDevice:v6];

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
  v14 = [v11 synchronize];
}

+ (void)removeSkippedPaneClass:(Class)a3 forDevice:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = bps_setup_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136446466;
    v14 = "+[BPSFollowUpController removeSkippedPaneClass:forDevice:]";
    v15 = 2114;
    v16 = a3;
    _os_log_impl(&dword_241E74000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", &v13, 0x16u);
  }

  v8 = NSStringFromClass(a3);
  v9 = [a1 _domainAccessorForDevice:v6];

  v10 = [v9 objectForKey:@"BridgeSkippedSetupPanes"];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = [v10 mutableCopy];
    [v11 removeObject:v8];
    [v9 setObject:v11 forKey:@"BridgeSkippedSetupPanes"];
    v12 = [v9 synchronize];
  }

  else
  {
    v11 = bps_setup_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = a3;
      _os_log_impl(&dword_241E74000, v11, OS_LOG_TYPE_DEFAULT, "Error: tried to remove skipped pane '%@' but none was found", &v13, 0xCu);
    }
  }
}

+ (id)skippedSetupPaneClassesForDevice:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a1 _domainAccessorForDevice:a3];
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