@interface MFUserDefaultMigrator
+ (BOOL)migratePreferencesToSharedAppGroup;
+ (id)_keysToMigrateToSharedAppGroup;
+ (id)currentDeviceIdentifer;
+ (id)log;
+ (id)mobileMailDefaultForKey:(id)key;
+ (id)oldKeysToNewKeysMap;
+ (void)_migrateExtPropertiesPlist;
+ (void)migrateDefaults:(id)defaults;
+ (void)migrateDefaultsFromOldKeysToNewKeys:(id)keys;
+ (void)migratePropertyForOldKey:(id)key newKey:(id)newKey;
+ (void)removeMobileMailDefaultForKey:(id)key;
@end

@implementation MFUserDefaultMigrator

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__MFUserDefaultMigrator_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_35 != -1)
  {
    dispatch_once(&log_onceToken_35, block);
  }

  v2 = log_log_35;

  return v2;
}

void __28__MFUserDefaultMigrator_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_35;
  log_log_35 = v1;
}

+ (id)oldKeysToNewKeysMap
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"ReplyToSelf";
  v6[0] = *MEMORY[0x1E699AB48];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)_keysToMigrateToSharedAppGroup
{
  v2 = [&unk_1F2775700 arrayByAddingObjectsFromArray:&unk_1F2775718];

  return v2;
}

+ (void)_migrateExtPropertiesPlist
{
  v42[4] = *MEMORY[0x1E69E9840];
  v31 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:@"com.apple.mobilemail"];
  dataContainerURL = [v31 dataContainerURL];
  path = [dataContainerURL path];

  v32 = path;
  if ([path length])
  {
    v4 = [@"com.apple.MailAccount-ExtProperties" stringByAppendingPathExtension:@"plist"];
    v5 = MEMORY[0x1E696AEC0];
    v42[0] = path;
    v42[1] = @"Library";
    v42[2] = @"Preferences";
    v42[3] = v4;
    v29 = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:4];
    v30 = [v5 pathWithComponents:v6];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [defaultManager fileExistsAtPath:v30];

    v9 = +[MFUserDefaultMigrator log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"Not Found";
      if (v8)
      {
        v10 = @"Found";
      }

      *buf = 138543618;
      v39 = v10;
      v40 = 2112;
      v41 = v30;
      _os_log_impl(&dword_1B0389000, v9, OS_LOG_TYPE_DEFAULT, "extPropertiesDomain %{public}@ at path: %@", buf, 0x16u);
    }

    if (v8)
    {
      v11 = *MEMORY[0x1E695E8B8];
      v12 = *MEMORY[0x1E695E898];
      v28 = _CFPreferencesCopyValueWithContainer();
      if ([v28 BOOLValue])
      {
        v13 = +[MFUserDefaultMigrator log];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B0389000, v13, OS_LOG_TYPE_DEFAULT, "extPropertiesDomain already migrated to shared app group.", buf, 2u);
        }
      }

      else
      {
        v27 = _CFPreferencesCopyKeyListWithContainer();
        if ([v27 count])
        {
          v15 = +[MFUserDefaultMigrator log];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1B0389000, v15, OS_LOG_TYPE_DEFAULT, "Migrating extPropertiesDomain to shared app group.", buf, 2u);
          }

          v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v17 = v27;
          v18 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
          if (v18)
          {
            v19 = *v34;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v34 != v19)
                {
                  objc_enumerationMutation(v17);
                }

                v21 = *(*(&v33 + 1) + 8 * i);
                v22 = _CFPreferencesCopyValueWithContainer();
                [v16 setObject:v22 forKey:v21];
                _CFPreferencesSetValueWithContainer();
              }

              v18 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
            }

            while (v18);
          }

          em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
          [em_userDefaults setObject:v16 forKey:@"com.apple.MailAccount-ExtProperties"];

          v24 = +[MFUserDefaultMigrator log];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v39 = v16;
            _os_log_impl(&dword_1B0389000, v24, OS_LOG_TYPE_DEFAULT, "Migrated following extPropertiesDomain defaults to shared app group: %@", buf, 0xCu);
          }
        }

        else
        {
          v16 = +[MFUserDefaultMigrator log];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1B0389000, v16, OS_LOG_TYPE_DEFAULT, "No keys found to migrate in extPropertiesDomain.", buf, 2u);
          }
        }

        v25 = *MEMORY[0x1E695E4D0];
        _CFPreferencesSetValueWithContainer();
        v13 = v27;
      }
    }
  }

  else
  {
    v14 = +[MFUserDefaultMigrator log];
    v29 = v14;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_DEFAULT, "MobileMail container path not found - Skipping extProperties migration.", buf, 2u);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

+ (BOOL)migratePreferencesToSharedAppGroup
{
  v18 = *MEMORY[0x1E69E9840];
  oldKeysToNewKeysMap = [self oldKeysToNewKeysMap];
  [self migrateDefaultsFromOldKeysToNewKeys:oldKeysToNewKeysMap];

  _keysToMigrateToSharedAppGroup = [self _keysToMigrateToSharedAppGroup];
  [self migrateDefaults:_keysToMigrateToSharedAppGroup];

  [self _migrateExtPropertiesPlist];
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  currentDeviceIdentifer = [self currentDeviceIdentifer];
  [em_userDefaults setObject:currentDeviceIdentifer forKey:@"DeviceIdentifier"];

  em_userDefaults2 = [MEMORY[0x1E695E000] em_userDefaults];
  [em_userDefaults2 synchronize];

  *v15 = 0xE00000001;
  v16 = 0;
  v17 = 0;
  size = 0xAAAAAAAAAAAAAAAALL;
  v8 = sysctl(v15, 3u, 0, &size, 0, 0);
  if (!v8)
  {
    v9 = malloc_type_malloc(size, 0x10B2040B74D5165uLL);
    v8 = sysctl(v15, 3u, v9, &size, 0, 0);
    if (!v8)
    {
      if (size < 0x288)
      {
LABEL_12:
        free(v9);
        goto LABEL_6;
      }

      v12 = size / 0x288;
      v13 = v9 + 243;
      while (1)
      {
        v8 = *(v13 - 203);
        if (v8 >= 1 && !strncmp("maild", v13, 0x10uLL))
        {
          break;
        }

        v13 += 648;
        if (!--v12)
        {
          goto LABEL_12;
        }
      }

      free(v9);
      goto LABEL_5;
    }

    free(v9);
  }

  if (v8 >= 1)
  {
LABEL_5:
    kill(v8, 9);
  }

LABEL_6:
  v10 = *MEMORY[0x1E69E9840];
  return 1;
}

+ (void)migrateDefaults:(id)defaults
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  defaultsCopy = defaults;
  v5 = [defaultsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(defaultsCopy);
        }

        [self migratePropertyForOldKey:*(*(&v9 + 1) + 8 * v7) newKey:{*(*(&v9 + 1) + 8 * v7), v9}];
        ++v7;
      }

      while (v5 != v7);
      v5 = [defaultsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)migrateDefaultsFromOldKeysToNewKeys:(id)keys
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__MFUserDefaultMigrator_migrateDefaultsFromOldKeysToNewKeys___block_invoke;
  v3[3] = &__block_descriptor_40_e35_v32__0__NSString_8__NSString_16_B24l;
  v3[4] = self;
  [keys enumerateKeysAndObjectsUsingBlock:v3];
}

+ (void)migratePropertyForOldKey:(id)key newKey:(id)newKey
{
  v20 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  newKeyCopy = newKey;
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  v9 = [em_userDefaults valueForKey:newKeyCopy];

  if (!v9)
  {
    v10 = [self mobileMailDefaultForKey:keyCopy];
    if (v10)
    {
      v11 = +[MFUserDefaultMigrator log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412802;
        v15 = keyCopy;
        v16 = 2112;
        v17 = newKeyCopy;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&dword_1B0389000, v11, OS_LOG_TYPE_DEFAULT, "Migrating %@ to %@ with default %@", &v14, 0x20u);
      }

      [em_userDefaults setObject:v10 forKey:newKeyCopy];
      [self removeMobileMailDefaultForKey:keyCopy];
    }

    else
    {
      v12 = +[MFUserDefaultMigrator log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = keyCopy;
        _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_DEFAULT, "No default for key %@", &v14, 0xCu);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

+ (id)currentDeviceIdentifer
{
  v2 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:@"com.apple.mobilemail"];
  dataContainerURL = [v2 dataContainerURL];
  path = [dataContainerURL path];

  v5 = *MEMORY[0x1E695E8B8];
  v6 = *MEMORY[0x1E695E898];
  v7 = _CFPreferencesCopyValueWithContainer();

  return v7;
}

+ (id)mobileMailDefaultForKey:(id)key
{
  keyCopy = key;
  v4 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:@"com.apple.mobilemail"];
  dataContainerURL = [v4 dataContainerURL];
  path = [dataContainerURL path];

  v7 = *MEMORY[0x1E69B17F0];
  v8 = *MEMORY[0x1E695E8B8];
  v9 = *MEMORY[0x1E695E898];
  v10 = _CFPreferencesCopyValueWithContainer();

  return v10;
}

+ (void)removeMobileMailDefaultForKey:(id)key
{
  keyCopy = key;
  v3 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:@"com.apple.mobilemail"];
  dataContainerURL = [v3 dataContainerURL];
  path = [dataContainerURL path];

  v6 = *MEMORY[0x1E69B17F0];
  v7 = *MEMORY[0x1E695E8B8];
  v8 = *MEMORY[0x1E695E898];
  _CFPreferencesSetValueWithContainer();
  _CFPreferencesSynchronizeWithContainer();
}

@end