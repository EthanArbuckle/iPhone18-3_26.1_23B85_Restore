@interface BDSUserPreferencesSync
+ (NSArray)syncedPreferenceKeys;
+ (id)objectFromGroupPreferencesForKey:(id)key;
+ (void)copyChangedGroupPreferencesToLocalContainer;
+ (void)copyChangedLocalPreferencesToGroupContainerWithAppSuiteName:(id)name container:(id)container groupName:(id)groupName groupContainer:(id)groupContainer;
@end

@implementation BDSUserPreferencesSync

+ (NSArray)syncedPreferenceKeys
{
  if (qword_1EE2B0478 != -1)
  {
    sub_1E45E3C94();
  }

  v3 = qword_1EE2B0470;

  return v3;
}

+ (id)objectFromGroupPreferencesForKey:(id)key
{
  keyCopy = key;
  v4 = objc_alloc(MEMORY[0x1E695E000]);
  v5 = +[BDSAppGroupContainer containerIdentifier];
  v6 = +[BDSAppGroupContainer containerURL];
  v7 = [v4 _initWithSuiteName:v5 container:v6];

  v8 = [@"watchSynced-" stringByAppendingString:keyCopy];
  v9 = [v7 objectForKey:v8];

  return v9;
}

+ (void)copyChangedGroupPreferencesToLocalContainer
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695E000]);
  v4 = +[BDSAppGroupContainer containerIdentifier];
  v5 = +[BDSAppGroupContainer containerURL];
  v6 = [v3 _initWithSuiteName:v4 container:v5];

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [self syncedPreferenceKeys];
  v8 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v25;
    *&v9 = 138412290;
    v22 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [@"watchSynced-" stringByAppendingString:{v13, v22}];
        v15 = [v6 objectForKey:v14];
        v16 = [standardUserDefaults objectForKey:v13];
        v17 = v16;
        if (v16)
        {
          v18 = 1;
        }

        else
        {
          v18 = v15 == 0;
        }

        if (v18 && (!v16 || ([v16 isEqual:v15] & 1) != 0))
        {
          v19 = BDSCloudKitAudiobookLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = v22;
            v29 = v13;
            _os_log_impl(&dword_1E45E0000, v19, OS_LOG_TYPE_INFO, "Preference %@ was unchanged", buf, 0xCu);
          }
        }

        else
        {
          v20 = BDSCloudKitAudiobookLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v29 = v13;
            v30 = 2112;
            v31 = v15;
            v32 = 2112;
            v33 = v17;
            _os_log_impl(&dword_1E45E0000, v20, OS_LOG_TYPE_DEFAULT, "Synced preference %@ changed in group, copying value locally (new value %@, old value %@)", buf, 0x20u);
          }

          [standardUserDefaults setObject:v15 forKey:v13];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v10);
  }

  v21 = *MEMORY[0x1E69E9840];
}

+ (void)copyChangedLocalPreferencesToGroupContainerWithAppSuiteName:(id)name container:(id)container groupName:(id)groupName groupContainer:(id)groupContainer
{
  v58 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  containerCopy = container;
  groupNameCopy = groupName;
  groupContainerCopy = groupContainer;
  v14 = BDSCloudKitAudiobookLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v51 = nameCopy;
    v52 = 2112;
    v53 = containerCopy;
    v54 = 2112;
    v55 = groupNameCopy;
    v56 = 2112;
    v57 = groupContainerCopy;
    _os_log_impl(&dword_1E45E0000, v14, OS_LOG_TYPE_DEFAULT, "Checking local preferences with appSuite: %@ container: %@ groupName: %@ groupContainer: %@", buf, 0x2Au);
  }

  v15 = objc_alloc(MEMORY[0x1E695E000]);
  v16 = v15;
  if (groupNameCopy && groupContainerCopy)
  {
    v17 = [v15 _initWithSuiteName:groupNameCopy container:{groupContainerCopy, groupContainerCopy, groupNameCopy}];
  }

  else
  {
    v18 = [BDSAppGroupContainer containerIdentifier:groupContainerCopy];
    v19 = +[BDSAppGroupContainer containerURL];
    v17 = [v16 _initWithSuiteName:v18 container:v19];
  }

  v41 = containerCopy;
  v42 = nameCopy;
  if (nameCopy && containerCopy)
  {
    standardUserDefaults = [objc_alloc(MEMORY[0x1E695E000]) _initWithSuiteName:nameCopy container:containerCopy];
  }

  else
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  }

  v21 = standardUserDefaults;
  v44 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = [self syncedPreferenceKeys];
  v22 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v46;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v46 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v45 + 1) + 8 * i);
        v27 = [@"watchSynced-" stringByAppendingString:v26];
        v28 = [v17 objectForKey:v27];
        v29 = [v21 objectForKey:v26];
        v30 = v29;
        if (v29)
        {
          v31 = 1;
        }

        else
        {
          v31 = v28 == 0;
        }

        if (v31 && (!v29 || ([v29 isEqual:v28] & 1) != 0))
        {
          v32 = BDSCloudKitAudiobookLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v51 = v26;
            _os_log_impl(&dword_1E45E0000, v32, OS_LOG_TYPE_INFO, "Preference %@ was unchanged", buf, 0xCu);
          }
        }

        else
        {
          v33 = BDSCloudKitAudiobookLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v51 = v26;
            v52 = 2112;
            v53 = v30;
            v54 = 2112;
            v55 = v28;
            _os_log_impl(&dword_1E45E0000, v33, OS_LOG_TYPE_DEFAULT, "Synced preference %@ changed locally, copying value to group container (new value %@, old value %@)", buf, 0x20u);
          }

          [v17 setObject:v30 forKey:v27];
          [v44 addObject:v27];
        }
      }

      v23 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v23);
  }

  if ([v44 count])
  {
    v34 = BDSCloudKitAudiobookLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v51 = v44;
      _os_log_impl(&dword_1E45E0000, v34, OS_LOG_TYPE_INFO, "Updating npsManager with sync keys: %@", buf, 0xCu);
    }

    v35 = +[BDSAppGroupContainer containerIdentifier];
    v36 = +[BDSAppGroupContainer containerIdentifier];
    v37 = objc_alloc_init(MEMORY[0x1E69B3590]);
    [v37 synchronizeUserDefaultsDomain:v35 keys:v44 container:@"com.apple.iBooks" appGroupContainer:v36];
  }

  v38 = *MEMORY[0x1E69E9840];
}

@end