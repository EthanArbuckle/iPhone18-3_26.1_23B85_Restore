@interface MDMSkipKeysUtilities
- (BOOL)isBuddyPaneSkipped:(id)skipped;
- (id)_cloudConfigSkipKeys;
- (id)_payloadSkipKeys;
- (id)_specialSkipKeys;
- (id)_validateAndUpdateSkipKeys:(id)keys;
- (id)currentSkipKeys;
@end

@implementation MDMSkipKeysUtilities

- (id)currentSkipKeys
{
  v3 = MEMORY[0x277CBEB58];
  _cloudConfigSkipKeys = [(MDMSkipKeysUtilities *)self _cloudConfigSkipKeys];
  v5 = [v3 setWithArray:_cloudConfigSkipKeys];

  _payloadSkipKeys = [(MDMSkipKeysUtilities *)self _payloadSkipKeys];
  [v5 addObjectsFromArray:_payloadSkipKeys];

  _specialSkipKeys = [(MDMSkipKeysUtilities *)self _specialSkipKeys];
  [v5 addObjectsFromArray:_specialSkipKeys];

  v8 = [v5 copy];

  return v8;
}

- (BOOL)isBuddyPaneSkipped:(id)skipped
{
  skippedCopy = skipped;
  currentSkipKeys = [(MDMSkipKeysUtilities *)self currentSkipKeys];
  v6 = [currentSkipKeys containsObject:skippedCopy];

  return v6;
}

- (id)_cloudConfigSkipKeys
{
  v3 = +[MDMCloudConfiguration sharedConfiguration];
  [v3 refreshDetailsFromDisk];

  v4 = +[MDMCloudConfiguration sharedConfiguration];
  skipSetupKeys = [v4 skipSetupKeys];

  v6 = [(MDMSkipKeysUtilities *)self _validateAndUpdateSkipKeys:skipSetupKeys];

  return v6;
}

- (id)_payloadSkipKeys
{
  testSetupAssistantPayloadPath = [(MDMSkipKeysUtilities *)self testSetupAssistantPayloadPath];
  v4 = testSetupAssistantPayloadPath;
  if (testSetupAssistantPayloadPath)
  {
    v5 = testSetupAssistantPayloadPath;
  }

  else
  {
    v5 = MDMSetupAssistantSettingsFilePath();
  }

  v6 = v5;

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [defaultManager fileExistsAtPath:v6];

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
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:v3];

  if (v5)
  {
    [v2 addObject:*MEMORY[0x277D03130]];
  }

  v6 = [v2 copy];

  return v6;
}

- (id)_validateAndUpdateSkipKeys:(id)keys
{
  v3 = MEMORY[0x277CBEB98];
  v4 = MEMORY[0x277D03000];
  keysCopy = keys;
  allSkipKeys = [v4 allSkipKeys];
  v7 = [v3 setWithArray:allSkipKeys];

  if (keysCopy)
  {
    v8 = keysCopy;
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

  allObjects = [v9 allObjects];

  return allObjects;
}

@end