@interface MDMOptionsUtilities
+ (id)defaultMDMOptions;
+ (id)validatedMDMOptionsFromOptionsDictionary:(id)a3;
+ (void)setDefaultMDMOptions:(id)a3;
@end

@implementation MDMOptionsUtilities

+ (id)validatedMDMOptionsFromOptionsDictionary:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v15 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v3, "count")}];
  if (validatedMDMOptionsFromOptionsDictionary__onceToken != -1)
  {
    +[MDMOptionsUtilities validatedMDMOptionsFromOptionsDictionary:];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = validatedMDMOptionsFromOptionsDictionary__validKeysAndClasses;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v3 objectForKeyedSubscript:v9];
        if (v10)
        {
          v11 = [validatedMDMOptionsFromOptionsDictionary__validKeysAndClasses objectForKeyedSubscript:v9];
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            [v15 setObject:v10 forKeyedSubscript:v9];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v15;
}

void __64__MDMOptionsUtilities_validatedMDMOptionsFromOptionsDictionary___block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v3[0] = @"ActivationLockAllowedWhileSupervised";
  v4[0] = objc_opt_class();
  v3[1] = @"IdleRebootAllowed";
  v4[1] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = validatedMDMOptionsFromOptionsDictionary__validKeysAndClasses;
  validatedMDMOptionsFromOptionsDictionary__validKeysAndClasses = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)defaultMDMOptions
{
  v2 = CFPreferencesCopyAppValue(@"DefaultMDMOptions", @"com.apple.devicemanagementclient.notbackedup");

  return v2;
}

+ (void)setDefaultMDMOptions:(id)a3
{
  CFPreferencesSetAppValue(@"DefaultMDMOptions", a3, @"com.apple.devicemanagementclient.notbackedup");

  CFPreferencesAppSynchronize(@"com.apple.devicemanagementclient.notbackedup");
}

@end