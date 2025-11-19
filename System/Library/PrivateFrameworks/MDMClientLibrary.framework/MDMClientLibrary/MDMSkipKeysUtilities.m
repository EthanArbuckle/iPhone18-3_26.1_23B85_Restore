@interface MDMSkipKeysUtilities
- (BOOL)isBuddyPaneSkipped:(id)a3;
- (id)_cloudConfigSkipKeys;
- (id)_payloadSkipKeys;
- (id)_specialSkipKeys;
- (id)_validateAndUpdateSkipKeys:(id)a3;
- (id)currentSkipKeys;
@end

@implementation MDMSkipKeysUtilities

- (id)currentSkipKeys
{
  v3 = MEMORY[0x277CBEB58];
  v4 = [(MDMSkipKeysUtilities *)self _cloudConfigSkipKeys];
  v5 = [v3 setWithArray:v4];

  v6 = [(MDMSkipKeysUtilities *)self _payloadSkipKeys];
  [v5 addObjectsFromArray:v6];

  v7 = [(MDMSkipKeysUtilities *)self _specialSkipKeys];
  [v5 addObjectsFromArray:v7];

  v8 = [v5 copy];

  return v8;
}

- (BOOL)isBuddyPaneSkipped:(id)a3
{
  v4 = a3;
  v5 = [(MDMSkipKeysUtilities *)self currentSkipKeys];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (id)_cloudConfigSkipKeys
{
  v3 = +[MDMCloudConfiguration sharedConfiguration];
  [v3 refreshDetailsFromDisk];

  v4 = +[MDMCloudConfiguration sharedConfiguration];
  v5 = [v4 skipSetupKeys];

  v6 = [(MDMSkipKeysUtilities *)self _validateAndUpdateSkipKeys:v5];

  return v6;
}

- (id)_payloadSkipKeys
{
  v3 = [(MDMSkipKeysUtilities *)self testSetupAssistantPayloadPath];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MDMSetupAssistantSettingsFilePath();
  }

  v6 = v5;

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v7 fileExistsAtPath:v6];

  if (v8)
  {
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v6];
    v10 = [v9 objectForKeyedSubscript:@"SkipSetupItems"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v9 objectForKeyedSubscript:@"SkipSetupItems"];
      v12 = [(MDMSkipKeysUtilities *)self _validateAndUpdateSkipKeys:v11];
    }

    else
    {
      v12 = [(MDMSkipKeysUtilities *)self _validateAndUpdateSkipKeys:0];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_specialSkipKeys
{
  v2 = objc_opt_new();
  v3 = DMCDeviceManagementDaemonSetupOptionDirectoryPath();
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    [v2 addObject:*MEMORY[0x277D03130]];
  }

  v6 = [v2 copy];

  return v6;
}

- (id)_validateAndUpdateSkipKeys:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = MEMORY[0x277D03000];
  v5 = a3;
  v6 = [v4 allSkipKeys];
  v7 = [v3 setWithArray:v6];

  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  v9 = [MEMORY[0x277CBEB58] setWithArray:v8];

  if ([v9 containsObject:*MEMORY[0x277D03128]])
  {
    v10 = [v7 mutableCopy];

    v9 = v10;
  }

  else
  {
    [v9 intersectSet:v7];
  }

  v11 = [v9 allObjects];

  return v11;
}

@end