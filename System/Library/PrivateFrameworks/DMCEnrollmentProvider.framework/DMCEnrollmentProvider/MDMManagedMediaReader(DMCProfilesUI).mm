@interface MDMManagedMediaReader(DMCProfilesUI)
+ (id)managedAppsUninstalledOnMDMRemoval;
@end

@implementation MDMManagedMediaReader(DMCProfilesUI)

+ (id)managedAppsUninstalledOnMDMRemoval
{
  v20 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_new();
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
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
        if ([defaultWorkspace applicationIsInstalled:v7])
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
    firstObject = [v0 firstObject];
    v12 = [(DMCApplicationProxy *)v10 initWithBundleID:firstObject dataSource:0];

    name = [(DMCApplicationProxy *)v12 name];
    [v8 setObject:name forKeyedSubscript:@"MDMManagedMediaNameKey"];
  }

  return v8;
}

@end