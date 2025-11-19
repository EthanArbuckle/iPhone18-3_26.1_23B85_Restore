@interface CloudHistoryConfiguration
+ (id)sharedConfiguration;
- (CloudHistoryConfiguration)init;
- (id)_cloudConfigurationAssetsSortedByVersionNumber;
- (id)platformBuiltInConfiguration;
- (id)remoteConfiguration;
- (void)_reloadConfigurationDataIfNecessary;
@end

@implementation CloudHistoryConfiguration

+ (id)sharedConfiguration
{
  if (+[CloudHistoryConfiguration sharedConfiguration]::onceToken != -1)
  {
    +[CloudHistoryConfiguration sharedConfiguration];
  }

  v3 = sharedCloudHistoryConfiguration;

  return v3;
}

void __48__CloudHistoryConfiguration_sharedConfiguration__block_invoke()
{
  v0 = objc_alloc_init(CloudHistoryConfiguration);
  v1 = sharedCloudHistoryConfiguration;
  sharedCloudHistoryConfiguration = v0;
}

- (CloudHistoryConfiguration)init
{
  v6.receiver = self;
  v6.super_class = CloudHistoryConfiguration;
  v2 = [(WBSCloudHistoryConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(CloudHistoryConfiguration *)v2 _reloadConfigurationDataIfNecessary];
    v4 = v3;
  }

  return v3;
}

- (id)platformBuiltInConfiguration
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D4A100];
  v6[0] = *MEMORY[0x277D4A110];
  v6[1] = v2;
  v7[0] = @"1:1440";
  v7[1] = @"15:1 | 1:1425";
  v3 = *MEMORY[0x277D4A0F8];
  v6[2] = *MEMORY[0x277D4A108];
  v6[3] = v3;
  v7[2] = @"1:1440";
  v7[3] = @"31:5 | 1:1285";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:4];

  return v4;
}

- (id)remoteConfiguration
{
  remoteConfigurationDictionary = self->_remoteConfigurationDictionary;
  if (remoteConfigurationDictionary)
  {
    v3 = remoteConfigurationDictionary;
  }

  else if (!self->_fetchedAssetData)
  {
    self->_fetchedAssetData = 1;
    v5 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__CloudHistoryConfiguration_remoteConfiguration__block_invoke;
    block[3] = &unk_2781D60B8;
    block[4] = self;
    dispatch_async(v5, block);
  }

  return remoteConfigurationDictionary;
}

void __48__CloudHistoryConfiguration_remoteConfiguration__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v1 = [*(a1 + 32) _cloudConfigurationAssetsSortedByVersionNumber];
  v2 = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = *v16;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v16 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v15 + 1) + 8 * i);
        if ([v5 state] == 1)
        {
          v6 = MEMORY[0x277CBEA90];
          v7 = [v5 localURL];
          v8 = [v7 URLByAppendingPathComponent:@"data.plist"];
          v9 = [v6 dataWithContentsOfURL:v8];

          if (v9)
          {
            v10 = [MEMORY[0x277CCAC58] propertyListWithData:v9 options:0 format:0 error:0];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __48__CloudHistoryConfiguration_remoteConfiguration__block_invoke_2;
              block[3] = &unk_2781D61F8;
              block[4] = *(a1 + 32);
              v14 = v10;
              v11 = v10;
              dispatch_async(MEMORY[0x277D85CD0], block);

              goto LABEL_14;
            }
          }
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

uint64_t __48__CloudHistoryConfiguration_remoteConfiguration__block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 80), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = v2[10];

  return [v2 applyRemoteConfiguration:v3];
}

- (id)_cloudConfigurationAssetsSortedByVersionNumber
{
  assetsSortedByVersionNumber = self->_assetsSortedByVersionNumber;
  if (assetsSortedByVersionNumber)
  {
    v3 = assetsSortedByVersionNumber;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277D289A8]) initWithAssetType:@"com.apple.MobileAsset.SafariCloudHistoryConfiguration"];
    v11 = 0;
    v6 = [v5 runQueryAndReturnError:&v11];
    v7 = v11;
    if ([v6 count])
    {
      v8 = [v6 sortedArrayUsingComparator:&__block_literal_global_305];
      v9 = self->_assetsSortedByVersionNumber;
      self->_assetsSortedByVersionNumber = v8;

      v3 = self->_assetsSortedByVersionNumber;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t __75__CloudHistoryConfiguration__cloudConfigurationAssetsSortedByVersionNumber__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 attributes];
  v6 = *MEMORY[0x277D28900];
  v7 = [v5 objectForKey:*MEMORY[0x277D28900]];
  v8 = [v4 attributes];
  v9 = [v8 objectForKey:v6];
  v10 = [v7 compare:v9];

  return v10;
}

- (void)_reloadConfigurationDataIfNecessary
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v3 doubleForKey:@"LastCloudHistoryConfigurationUpdateTime"];
  v5 = v4;

  Current = CFAbsoluteTimeGetCurrent();
  if (Current - v5 >= 604800.0)
  {
    v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v7 setDouble:@"LastCloudHistoryConfigurationUpdateTime" forKey:Current];

    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__CloudHistoryConfiguration__reloadConfigurationDataIfNecessary__block_invoke;
    block[3] = &unk_2781D60B8;
    block[4] = self;
    dispatch_async(v8, block);
  }
}

void __64__CloudHistoryConfiguration__reloadConfigurationDataIfNecessary__block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) _cloudConfigurationAssetsSortedByVersionNumber];
  v2 = [v1 firstObject];

  v3 = [v2 state];
  if (v3)
  {
    if (v3 == 3)
    {
      [v2 resumeDownloadAndReturnError:0];
    }
  }

  else
  {
    v5 = *MEMORY[0x277D28940];
    v6[0] = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
    [v2 beginDownloadWithOptions:v4];
  }
}

@end