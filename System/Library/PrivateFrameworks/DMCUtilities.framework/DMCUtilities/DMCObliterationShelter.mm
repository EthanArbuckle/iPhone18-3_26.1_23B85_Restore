@interface DMCObliterationShelter
- (BOOL)_createDirectoryAtPathIfNeeded:(id)a3 error:(id *)a4;
- (BOOL)clear;
- (BOOL)preserveWithError:(id *)a3;
- (BOOL)retrieveWithError:(id *)a3;
- (DMCObliterationShelter)init;
- (id)_allPathsToClear;
- (id)_cloudConfigProfilePath_retrieve;
- (id)_cloudConfigProfilePath_stash;
- (id)_configurationDictionaryPath_retrieve;
- (id)_configurationDictionaryPath_stash;
- (id)_createFailToWriteFileErrorWithFilePath:(id)a3;
- (id)_generateConfigurationDictionary;
- (id)_generateShelteredDetailsForLogging;
- (id)_mdmProfilePath_retrieve;
- (id)_mdmProfilePath_stash;
- (id)_stashDirectoryPath;
- (id)_wifiProfilePath_retrieve;
- (id)_wifiProfilePath_stash;
- (id)generateExclusionPaths;
- (void)_postConfigChangedNotification;
- (void)migrateAllFiles;
@end

@implementation DMCObliterationShelter

- (DMCObliterationShelter)init
{
  v8.receiver = self;
  v8.super_class = DMCObliterationShelter;
  v2 = [(DMCObliterationShelter *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __30__DMCObliterationShelter_init__block_invoke;
    v6[3] = &unk_1E7ADCE38;
    v7 = v2;
    v4 = [v3 addObserverForName:@"DMCObliterationShelterConfigChanged" object:0 queue:0 usingBlock:v6];
  }

  return v2;
}

- (BOOL)preserveWithError:(id *)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = [(DMCObliterationShelter *)self _stashDirectoryPath];
  v6 = [(DMCObliterationShelter *)self _createDirectoryAtPathIfNeeded:v5 error:a3];

  if (v6)
  {
    v7 = [(DMCObliterationShelter *)self _generateConfigurationDictionary];
    v8 = [(DMCObliterationShelter *)self _configurationDictionaryPath_stash];
    v9 = *MEMORY[0x1E696A3A8];
    v10 = [v7 DMCWriteToBinaryFile:v8 protectionType:*MEMORY[0x1E696A3A8]];

    if (v10)
    {
      v11 = [(DMCObliterationShelter *)self _configurationDictionaryPath_stash];
      DMCSetSkipBackupAttributeToItemAtPath(v11, 1);

      v12 = [(DMCObliterationShelter *)self wifiProfileData];

      if (v12)
      {
        v13 = [(DMCObliterationShelter *)self wifiProfileData];
        v14 = [(DMCObliterationShelter *)self _wifiProfilePath_stash];
        v38 = 0;
        [v13 writeToFile:v14 options:0x10000000 error:&v38];
        v15 = v38;

        if (v15)
        {
          v16 = *DMCLogObjects();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v40 = v15;
            v17 = "DMCObliterationShelter: Failed to store wifi profile data with error: %{public}@";
LABEL_18:
            _os_log_impl(&dword_1B1630000, v16, OS_LOG_TYPE_ERROR, v17, buf, 0xCu);
            goto LABEL_19;
          }

          goto LABEL_19;
        }

        v23 = [(DMCObliterationShelter *)self _wifiProfilePath_stash];
        DMCSetSkipBackupAttributeToItemAtPath(v23, 1);
      }

      v24 = [(DMCObliterationShelter *)self mdmProfileData];

      if (v24)
      {
        v25 = [(DMCObliterationShelter *)self mdmProfileData];
        v26 = [(DMCObliterationShelter *)self _mdmProfilePath_stash];
        v37 = 0;
        [v25 writeToFile:v26 options:0x10000000 error:&v37];
        v15 = v37;

        if (v15)
        {
          v16 = *DMCLogObjects();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v40 = v15;
            v17 = "DMCObliterationShelter: Failed to store mdm profile data with error: %{public}@";
            goto LABEL_18;
          }

LABEL_19:

          v7 = v15;
          goto LABEL_20;
        }

        v30 = [(DMCObliterationShelter *)self _mdmProfilePath_stash];
        DMCSetSkipBackupAttributeToItemAtPath(v30, 1);
      }

      v31 = [(DMCObliterationShelter *)self cloudConfigurationDetails];

      if (!v31)
      {
        v18 = 1;
        goto LABEL_23;
      }

      v32 = [(DMCObliterationShelter *)self cloudConfigurationDetails];
      v33 = [(DMCObliterationShelter *)self _cloudConfigProfilePath_stash];
      v34 = [v32 DMCWriteToBinaryFile:v33 protectionType:v9];

      if (v34)
      {
        v35 = [(DMCObliterationShelter *)self _cloudConfigProfilePath_stash];
        v18 = 1;
        DMCSetSkipBackupAttributeToItemAtPath(v35, 1);

LABEL_23:
        goto LABEL_24;
      }

      v36 = *DMCLogObjects();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1B1630000, v36, OS_LOG_TYPE_ERROR, "DMCObliterationShelter: Failed to store cloud config profile", buf, 2u);
      }

      v20 = [(DMCObliterationShelter *)self _cloudConfigProfilePath_stash];
    }

    else
    {
      v19 = *DMCLogObjects();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1B1630000, v19, OS_LOG_TYPE_ERROR, "DMCObliterationShelter: Failed to store configuration file", buf, 2u);
      }

      v20 = [(DMCObliterationShelter *)self _configurationDictionaryPath_stash];
    }

    v21 = v20;
    v22 = [(DMCObliterationShelter *)self _createFailToWriteFileErrorWithFilePath:v20];

    v7 = v22;
    if (v22)
    {
LABEL_20:
      if (a3)
      {
        v27 = v7;
        *a3 = v7;
      }

      [(DMCObliterationShelter *)self clear];
      v18 = 0;
      goto LABEL_23;
    }

    v18 = 1;
  }

  else
  {
    [(DMCObliterationShelter *)self clear];
    v18 = 0;
  }

LABEL_24:
  v28 = *MEMORY[0x1E69E9840];
  return v18;
}

- (BOOL)retrieveWithError:(id *)a3
{
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [(DMCObliterationShelter *)self _retrievalDirectoryPath];
  v6 = [v4 fileExistsAtPath:v5];

  if (v6)
  {
    v7 = [(DMCObliterationShelter *)self _configurationDictionaryPath_retrieve];
    v8 = [(DMCObliterationShelter *)self _wifiProfilePath_retrieve];
    v9 = [(DMCObliterationShelter *)self _mdmProfilePath_retrieve];
    v10 = [(DMCObliterationShelter *)self _cloudConfigProfilePath_retrieve];
  }

  else
  {
    v11 = [(DMCObliterationShelter *)self _stashDirectoryPath];
    v12 = [v4 fileExistsAtPath:v11];

    if (!v12)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v14 = 0;
      goto LABEL_19;
    }

    v13 = *DMCLogObjects();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 0;
      _os_log_impl(&dword_1B1630000, v13, OS_LOG_TYPE_DEFAULT, "DMCObliterationShelter: config file exists in the stash directory instead. This might be before data migration", v27, 2u);
    }

    v7 = [(DMCObliterationShelter *)self _configurationDictionaryPath_stash];
    v8 = [(DMCObliterationShelter *)self _wifiProfilePath_stash];
    v9 = [(DMCObliterationShelter *)self _mdmProfilePath_stash];
    v10 = [(DMCObliterationShelter *)self _cloudConfigProfilePath_stash];
  }

  v14 = v10;
  if (v7)
  {
    if ([v4 fileExistsAtPath:v7])
    {
      [(DMCObliterationShelter *)self setHasConfigFile:1];
      v15 = [MEMORY[0x1E695DF20] DMCDictionaryFromFile:v7];
      v16 = [v15 objectForKeyedSubscript:@"Languages"];
      [(DMCObliterationShelter *)self setLanguageStrings:v16];

      v17 = [v15 objectForKeyedSubscript:@"Locale"];
      [(DMCObliterationShelter *)self setLocaleString:v17];

      v18 = [v15 objectForKeyedSubscript:@"IsSupervised"];
      -[DMCObliterationShelter setIsSupervised:](self, "setIsSupervised:", [v18 BOOLValue]);

      v19 = [v15 objectForKeyedSubscript:@"IsRapidReturnToService"];
      -[DMCObliterationShelter setIsRapidReturnToService:](self, "setIsRapidReturnToService:", [v19 BOOLValue]);

      v20 = [v15 objectForKeyedSubscript:@"IsSharediPad"];
      -[DMCObliterationShelter setIsSharediPad:](self, "setIsSharediPad:", [v20 BOOLValue]);

      v21 = [v15 objectForKeyedSubscript:@"AdditionalDetails"];
      [(DMCObliterationShelter *)self setAdditionalDetails:v21];

      if (+[DMCFeatureFlags isAppleInternal])
      {
        v22 = [v15 objectForKeyedSubscript:@"UserDefaults"];
        [(DMCObliterationShelter *)self setUserDefaults:v22];
      }
    }

    if ([v4 fileExistsAtPath:v8])
    {
      v23 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v8];
      [(DMCObliterationShelter *)self setWifiProfileData:v23];
    }

    if ([v4 fileExistsAtPath:v9])
    {
      v24 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v9];
      [(DMCObliterationShelter *)self setMdmProfileData:v24];
    }

    if ([v4 fileExistsAtPath:v14])
    {
      v25 = [MEMORY[0x1E695DF20] DMCDictionaryFromFile:v14];
      [(DMCObliterationShelter *)self setCloudConfigurationDetails:v25];
    }
  }

LABEL_19:

  return 1;
}

- (BOOL)clear
{
  v27 = *MEMORY[0x1E69E9840];
  [(DMCObliterationShelter *)self setLanguageStrings:0];
  [(DMCObliterationShelter *)self setLocaleString:0];
  [(DMCObliterationShelter *)self setWifiProfileData:0];
  [(DMCObliterationShelter *)self setMdmProfileData:0];
  [(DMCObliterationShelter *)self setCloudConfigurationDetails:0];
  [(DMCObliterationShelter *)self setIsSupervised:0];
  [(DMCObliterationShelter *)self setHasConfigFile:0];
  [(DMCObliterationShelter *)self setIsRapidReturnToService:0];
  [(DMCObliterationShelter *)self setIsSharediPad:0];
  [(DMCObliterationShelter *)self setAdditionalDetails:0];
  [(DMCObliterationShelter *)self setUserDefaults:0];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v16 = self;
  v4 = [(DMCObliterationShelter *)self _allPathsToClear];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    v8 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([v3 fileExistsAtPath:v10])
        {
          v17 = 0;
          [v3 removeItemAtPath:v10 error:&v17];
          v11 = v17;
          if (v11)
          {
            v12 = v11;
            v13 = *DMCLogObjects();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v23 = v10;
              v24 = 2114;
              v25 = v12;
              _os_log_impl(&dword_1B1630000, v13, OS_LOG_TYPE_ERROR, "DMCObliterationShelter: Failed to remove file from path: %{public}@, error: %{public}@", buf, 0x16u);
            }

            v8 = 0;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 1;
  }

  [(DMCObliterationShelter *)v16 _postConfigChangedNotification];
  v14 = *MEMORY[0x1E69E9840];
  return v8 & 1;
}

- (void)migrateAllFiles
{
  v27 = *MEMORY[0x1E69E9840];
  [(DMCObliterationShelter *)self retrieveWithError:0];
  if (![(DMCObliterationShelter *)self isSharediPad])
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [(DMCObliterationShelter *)self _retrievalDirectoryPath];
    v6 = [v4 fileExistsAtPath:v5];

    if (!v6)
    {
      goto LABEL_11;
    }

    v7 = *DMCLogObjects();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v7, OS_LOG_TYPE_DEFAULT, "DMCObliterationShelter: Cleaning up existing Return to Service files.", buf, 2u);
    }

    v8 = [(DMCObliterationShelter *)self _retrievalDirectoryPath];
    v24 = 0;
    [v4 removeItemAtPath:v8 error:&v24];
    v9 = v24;

    if (v9)
    {
      v10 = *DMCLogObjects();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v26 = v9;
        _os_log_impl(&dword_1B1630000, v10, OS_LOG_TYPE_ERROR, "DMCObliterationShelter: Failed to delete existing file in the retrieve directory. Error: %{public}@", buf, 0xCu);
      }

      [(DMCObliterationShelter *)self clear];
    }

    else
    {
LABEL_11:
      v11 = [(DMCObliterationShelter *)self _stashDirectoryPath];
      v12 = [v4 fileExistsAtPath:v11];

      v13 = *DMCLogObjects();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if ((v12 & 1) == 0)
      {
        if (v14)
        {
          *buf = 0;
          _os_log_impl(&dword_1B1630000, v13, OS_LOG_TYPE_DEFAULT, "DMCObliterationShelter: Nothing to migrate.", buf, 2u);
        }

        goto LABEL_25;
      }

      if (v14)
      {
        *buf = 0;
        _os_log_impl(&dword_1B1630000, v13, OS_LOG_TYPE_DEFAULT, "DMCObliterationShelter: Migrating sheltered files.", buf, 2u);
      }

      v15 = [(DMCObliterationShelter *)self _stashDirectoryPath];
      v16 = [(DMCObliterationShelter *)self _retrievalDirectoryPath];
      v23 = 0;
      [v4 moveItemAtPath:v15 toPath:v16 error:&v23];
      v9 = v23;

      if (v9)
      {
        v17 = *DMCLogObjects();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v26 = v9;
          _os_log_impl(&dword_1B1630000, v17, OS_LOG_TYPE_ERROR, "DMCObliterationShelter: Failed to migrate stashed directory. Error: %{public}@", buf, 0xCu);
        }

        [(DMCObliterationShelter *)self clear];
      }

      else
      {
        v18 = [(DMCObliterationShelter *)self _retrievalDirectoryPath];
        DMCSetSkipBackupAttributeToItemAtPath(v18, 1);

        v19 = *DMCLogObjects();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B1630000, v19, OS_LOG_TYPE_DEFAULT, "DMCObliterationShelter: sheltered files migrated.", buf, 2u);
        }

        v20 = objc_opt_new();
        v21 = [(DMCObliterationShelter *)self _generateShelteredDetailsForLogging];
        [v20 logRegularEventForTopic:@"Return to Service" reason:@"RTS File Migrated" details:v21];
      }

      [(DMCObliterationShelter *)self _postConfigChangedNotification];
    }

LABEL_25:
    goto LABEL_26;
  }

  v3 = *DMCLogObjects();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1630000, v3, OS_LOG_TYPE_DEFAULT, "DMCObliterationShelter: Device was in Shared iPad mode. Nothing to migrate.", buf, 2u);
  }

LABEL_26:
  v22 = *MEMORY[0x1E69E9840];
}

- (void)_postConfigChangedNotification
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"DMCObliterationShelterConfigChanged" object:0];
}

- (id)_generateConfigurationDictionary
{
  v3 = objc_opt_new();
  v4 = [(DMCObliterationShelter *)self languageStrings];
  [v3 setObject:v4 forKeyedSubscript:@"Languages"];

  v5 = [(DMCObliterationShelter *)self localeString];
  [v3 setObject:v5 forKeyedSubscript:@"Locale"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMCObliterationShelter isSupervised](self, "isSupervised")}];
  [v3 setObject:v6 forKeyedSubscript:@"IsSupervised"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMCObliterationShelter isRapidReturnToService](self, "isRapidReturnToService")}];
  [v3 setObject:v7 forKeyedSubscript:@"IsRapidReturnToService"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMCObliterationShelter isSharediPad](self, "isSharediPad")}];
  [v3 setObject:v8 forKeyedSubscript:@"IsSharediPad"];

  v9 = [(DMCObliterationShelter *)self additionalDetails];
  [v3 setObject:v9 forKeyedSubscript:@"AdditionalDetails"];

  if (+[DMCFeatureFlags isAppleInternal])
  {
    v10 = [(DMCObliterationShelter *)self userDefaults];
    [v3 setObject:v10 forKeyedSubscript:@"UserDefaults"];
  }

  v11 = [v3 copy];

  return v11;
}

- (id)_generateShelteredDetailsForLogging
{
  v3 = [(DMCObliterationShelter *)self _generateConfigurationDictionary];
  v4 = [v3 mutableCopy];

  v5 = [(DMCObliterationShelter *)self generateExclusionPaths];
  [v4 setObject:v5 forKeyedSubscript:@"ExclusionPaths"];

  v6 = [(DMCObliterationShelter *)self wifiProfileData];
  v7 = [v6 description];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"<None>";
  }

  [v4 setObject:v9 forKeyedSubscript:@"WiFiProfileData"];

  v10 = [(DMCObliterationShelter *)self mdmProfileData];
  v11 = [v10 description];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = @"<None>";
  }

  [v4 setObject:v13 forKeyedSubscript:@"MDMProfileData"];

  v14 = [v4 objectForKeyedSubscript:@"AdditionalDetails"];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = MEMORY[0x1E695E0F8];
  }

  [v4 addEntriesFromDictionary:v16];

  [v4 setObject:0 forKeyedSubscript:@"AdditionalDetails"];
  v17 = [v4 copy];

  return v17;
}

- (BOOL)_createDirectoryAtPathIfNeeded:(id)a3 error:(id *)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  if ([v6 fileExistsAtPath:v5])
  {
    v7 = 0;
    v8 = 1;
  }

  else
  {
    v17 = *MEMORY[0x1E696A370];
    v18[0] = &unk_1F2868290;
    v8 = 1;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v14 = 0;
    [v6 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:v9 error:&v14];
    v7 = v14;

    if (v7)
    {
      v10 = *DMCLogObjects();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v16 = v7;
        _os_log_impl(&dword_1B1630000, v10, OS_LOG_TYPE_ERROR, "DMCObliterationShelter: Failed to create stash directory with error: %{public}@", buf, 0xCu);
      }

      if (a4)
      {
        v11 = v7;
        v8 = 0;
        *a4 = v7;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)_createFailToWriteFileErrorWithFilePath:(id)a3
{
  v8 = MEMORY[0x1E696ABC0];
  v9 = DMCErrorArray(@"Failed to store file to path %@", a2, a3, v3, v4, v5, v6, v7, a3);
  v10 = [v8 DMCErrorWithDomain:@"DMCReturnToServiceErrorDomain" code:16008 descriptionArray:v9 errorType:@"DMCFatalError"];

  return v10;
}

- (id)generateExclusionPaths
{
  v3 = objc_opt_new();
  v4 = [(DMCObliterationShelter *)self _stashDirectoryPath];
  [v3 addObject:v4];

  v5 = [(DMCObliterationShelter *)self _configurationDictionaryPath_stash];
  [v3 addObject:v5];

  if (+[DMCMultiUserModeUtilities isSharediPad])
  {
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v7 = [(DMCObliterationShelter *)self _containerMetadataPlistPath_stash];
    v8 = [v6 fileExistsAtPath:v7];

    if (v8)
    {
      v9 = [(DMCObliterationShelter *)self _containerMetadataPlistPath_stash];
      [v3 addObject:v9];
    }
  }

  v10 = [(DMCObliterationShelter *)self wifiProfileData];

  if (v10)
  {
    v11 = [(DMCObliterationShelter *)self _wifiProfilePath_stash];
    [v3 addObject:v11];
  }

  v12 = [(DMCObliterationShelter *)self mdmProfileData];

  if (v12)
  {
    v13 = [(DMCObliterationShelter *)self _mdmProfilePath_stash];
    [v3 addObject:v13];
  }

  v14 = [(DMCObliterationShelter *)self cloudConfigurationDetails];

  if (v14)
  {
    v15 = [(DMCObliterationShelter *)self _cloudConfigProfilePath_stash];
    [v3 addObject:v15];
  }

  v16 = [v3 copy];

  return v16;
}

- (id)_allPathsToClear
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__4;
  v9 = __Block_byref_object_dispose__4;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__DMCObliterationShelter__allPathsToClear__block_invoke;
  v4[3] = &unk_1E7ADC9F0;
  v4[4] = self;
  v4[5] = &v5;
  if (_allPathsToClear_onceToken != -1)
  {
    dispatch_once(&_allPathsToClear_onceToken, v4);
  }

  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __42__DMCObliterationShelter__allPathsToClear__block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _stashDirectoryPath];
  v8[0] = v2;
  v3 = [*(a1 + 32) _retrievalDirectoryPath];
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *MEMORY[0x1E69E9840];
}

- (id)_stashDirectoryPath
{
  if (+[DMCMultiUserModeUtilities isSharediPad])
  {
    MDMSystemReturnToServiceStorageDirectory();
  }

  else
  {
    MDMDatabaseReturnToServiceStorageDirectory();
  }
  v2 = ;

  return v2;
}

- (id)_configurationDictionaryPath_stash
{
  v2 = [(DMCObliterationShelter *)self _stashDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"config_stash.plist"];

  return v3;
}

- (id)_wifiProfilePath_stash
{
  v2 = [(DMCObliterationShelter *)self _stashDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"wifi_profile_stash.mobileconfig"];

  return v3;
}

- (id)_mdmProfilePath_stash
{
  v2 = [(DMCObliterationShelter *)self _stashDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"mdm_profile_stash.mobileconfig"];

  return v3;
}

- (id)_cloudConfigProfilePath_stash
{
  v2 = [(DMCObliterationShelter *)self _stashDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"cloud_config_profile_stash.plist"];

  return v3;
}

- (id)_configurationDictionaryPath_retrieve
{
  v2 = [(DMCObliterationShelter *)self _retrievalDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"config_stash.plist"];

  return v3;
}

- (id)_wifiProfilePath_retrieve
{
  v2 = [(DMCObliterationShelter *)self _retrievalDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"wifi_profile_stash.mobileconfig"];

  return v3;
}

- (id)_mdmProfilePath_retrieve
{
  v2 = [(DMCObliterationShelter *)self _retrievalDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"mdm_profile_stash.mobileconfig"];

  return v3;
}

- (id)_cloudConfigProfilePath_retrieve
{
  v2 = [(DMCObliterationShelter *)self _retrievalDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"cloud_config_profile_stash.plist"];

  return v3;
}

@end