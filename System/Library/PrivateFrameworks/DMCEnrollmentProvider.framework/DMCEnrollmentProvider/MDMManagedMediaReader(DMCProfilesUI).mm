@interface MDMManagedMediaReader(DMCProfilesUI)
+ (id)managedAppsUninstalledOnMDMRemoval;
@end

@implementation MDMManagedMediaReader(DMCProfilesUI)

+ (id)managedAppsUninstalledOnMDMRemoval
{
  v20 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_new();
  v1 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [MEMORY[0x277D24678] managedAppIDsWithFlags:1 excludeDDMApps:{1, 0}];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        if ([v1 applicationIsInstalled:v7])
        {
          [v0 addObject:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v8 = objc_opt_new();
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v0, "count")}];
  [v8 setObject:v9 forKeyedSubscript:@"MDMManagedMediaCountKey"];

  if ([v0 count] == 1)
  {
    v10 = [DMCApplicationProxy alloc];
    v11 = [v0 firstObject];
    v12 = [(DMCApplicationProxy *)v10 initWithBundleID:v11 dataSource:0];

    v13 = [(DMCApplicationProxy *)v12 name];
    [v8 setObject:v13 forKeyedSubscript:@"MDMManagedMediaNameKey"];
  }

  return v8;
}

@end