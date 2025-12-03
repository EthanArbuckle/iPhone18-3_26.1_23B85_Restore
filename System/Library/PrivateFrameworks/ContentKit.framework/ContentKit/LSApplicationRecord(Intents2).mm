@interface LSApplicationRecord(Intents2)
- (id)in2_supportedIntents;
@end

@implementation LSApplicationRecord(Intents2)

- (id)in2_supportedIntents
{
  v35 = *MEMORY[0x277D85DE8];
  applicationExtensionRecords = [self applicationExtensionRecords];
  allObjects = [applicationExtensionRecords allObjects];
  v4 = [allObjects if_objectsPassingTest:&__block_literal_global_198_14399];
  v5 = [v4 mutableCopy];

  bundleIdentifier = [self bundleIdentifier];
  LOBYTE(allObjects) = [bundleIdentifier hasPrefix:*MEMORY[0x277CD38C0]];

  if (allObjects)
  {
    v7 = @"com.apple.WorkflowKit.ShortcutsIntents";
  }

  else
  {
    bundleIdentifier2 = [self bundleIdentifier];
    v9 = [bundleIdentifier2 isEqualToString:@"com.apple.mobiletimer"];

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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
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
        if_extensionAttributesDictionary = [v18 if_extensionAttributesDictionary];
        v20 = [if_extensionAttributesDictionary objectForKeyedSubscript:v16];
        if ([v20 count])
        {
          extensionPointRecord = [v18 extensionPointRecord];
          identifier = [extensionPointRecord identifier];

          v23 = [MEMORY[0x277CBEB98] setWithArray:v20];
          [dictionary setObject:v23 forKeyedSubscript:identifier];

          [v29 addObjectsFromArray:v20];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v14);
  }

  v24 = MEMORY[0x277CBEB58];
  supportedIntents = [v28 supportedIntents];
  v26 = [v24 setWithArray:supportedIntents];

  [v26 unionSet:v29];

  return v26;
}

@end