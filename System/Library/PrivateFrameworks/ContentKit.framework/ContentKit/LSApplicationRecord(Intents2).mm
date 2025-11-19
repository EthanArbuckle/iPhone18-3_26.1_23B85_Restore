@interface LSApplicationRecord(Intents2)
- (id)in2_supportedIntents;
@end

@implementation LSApplicationRecord(Intents2)

- (id)in2_supportedIntents
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = [a1 applicationExtensionRecords];
  v3 = [v2 allObjects];
  v4 = [v3 if_objectsPassingTest:&__block_literal_global_198_14399];
  v5 = [v4 mutableCopy];

  v6 = [a1 bundleIdentifier];
  LOBYTE(v3) = [v6 hasPrefix:*MEMORY[0x277CD38C0]];

  if (v3)
  {
    v7 = @"com.apple.WorkflowKit.ShortcutsIntents";
  }

  else
  {
    v8 = [a1 bundleIdentifier];
    v9 = [v8 isEqualToString:@"com.apple.mobiletimer"];

    if (!v9)
    {
      goto LABEL_6;
    }

    v7 = @"com.apple.mobiletimer-framework.MobileTimerIntents";
  }

  v10 = [objc_alloc(MEMORY[0x277CC1E50]) initWithBundleIdentifier:v7 error:0];
  [v5 if_addObjectIfNonNil:v10];

LABEL_6:
  v29 = [MEMORY[0x277CBEB58] set];
  v11 = [MEMORY[0x277CBEB38] dictionary];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    v16 = *MEMORY[0x277CD3830];
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v30 + 1) + 8 * i);
        v19 = [v18 if_extensionAttributesDictionary];
        v20 = [v19 objectForKeyedSubscript:v16];
        if ([v20 count])
        {
          v21 = [v18 extensionPointRecord];
          v22 = [v21 identifier];

          v23 = [MEMORY[0x277CBEB98] setWithArray:v20];
          [v11 setObject:v23 forKeyedSubscript:v22];

          [v29 addObjectsFromArray:v20];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v14);
  }

  v24 = MEMORY[0x277CBEB58];
  v25 = [v28 supportedIntents];
  v26 = [v24 setWithArray:v25];

  [v26 unionSet:v29];

  return v26;
}

@end