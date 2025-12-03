@interface MDMManagedMediaReader
+ (id)_metadataByBundleIDExcludeDDMApps:(BOOL)apps;
+ (id)managedBooks;
@end

@implementation MDMManagedMediaReader

+ (id)managedBooks
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = MEMORY[0x277CBEAC0];
  v4 = MDMManagedStoreBooksManifestPath();
  v5 = [v3 dictionaryWithContentsOfFile:v4];

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:@"Books"];
    v7 = v6;
    if (v6)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v8 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v30;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v30 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [[MDMBook alloc] initWithManifestDictionary:*(*(&v29 + 1) + 8 * i)];
            [v2 addObject:v12];
          }

          v9 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v9);
      }
    }
  }

  v13 = MEMORY[0x277CBEAC0];
  v14 = MDMManagedNonStoreBooksManifestPath();
  v15 = [v13 dictionaryWithContentsOfFile:v14];

  if (v15)
  {
    v16 = [v15 objectForKeyedSubscript:@"Books"];
    v17 = v16;
    if (v16)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v18 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v26;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v26 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = [[MDMBook alloc] initWithManifestDictionary:*(*(&v25 + 1) + 8 * j)];
            [v2 addObject:v22];
          }

          v19 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
        }

        while (v19);
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)_metadataByBundleIDExcludeDDMApps:(BOOL)apps
{
  appsCopy = apps;
  v35 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = MDMAppManagementFilePath();
  v6 = [defaultManager fileExistsAtPath:v5];

  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = MEMORY[0x277CCAC58];
  v8 = MEMORY[0x277CBEA90];
  v9 = MDMAppManagementFilePath();
  v10 = [v8 dataWithContentsOfFile:v9];
  v31 = 0;
  v11 = [v7 DMCSafePropertyListWithData:v10 options:1 format:0 error:&v31];
  v12 = v31;

  if (v12)
  {
    v13 = *DMCLogObjects();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v34 = v12;
      _os_log_impl(&dword_22E997000, v13, OS_LOG_TYPE_ERROR, "MDMManagedMediaReader cannot read manifest with error: %{public}@", buf, 0xCu);
    }
  }

  if (v11)
  {
    v14 = [v11 objectForKey:@"metadataByBundleID"];
    v15 = [v14 mutableCopy];

    if (appsCopy)
    {
      allKeys = [v15 allKeys];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v17 = [allKeys countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v28;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v28 != v19)
            {
              objc_enumerationMutation(allKeys);
            }

            v21 = *(*(&v27 + 1) + 8 * i);
            v22 = [v15 objectForKeyedSubscript:v21];
            v23 = [v22 objectForKey:@"source"];

            if (v23)
            {
              [v15 setObject:0 forKeyedSubscript:v21];
            }
          }

          v18 = [allKeys countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v18);
      }
    }

    v24 = [v15 copy];
  }

  else
  {
LABEL_18:
    v24 = MEMORY[0x277CBEC10];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

@end