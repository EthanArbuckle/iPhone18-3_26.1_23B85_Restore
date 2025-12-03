@interface MSASPlatformImplementation
- (BOOL)MSASIsAllowedToTransferMetadata;
- (BOOL)MSASIsAllowedToUploadAssets;
- (BOOL)MSASPersonIDIsAllowedToDownloadAssets:(id)assets;
- (BOOL)deviceHasEnoughDiskSpaceRemainingToOperate;
- (BOOL)personIDEnabledForAlbumSharing:(id)sharing;
- (BOOL)personIDUsesProductionPushEnvironment:(id)environment;
- (Class)pluginClass;
- (MSASPlatformImplementation)init;
- (id)MMCSDownloadSocketOptionsForPersonID:(id)d;
- (id)MMCSUploadSocketOptionsForPersonID:(id)d;
- (id)_accountForPersonID:(id)d;
- (id)baseSharingURLForPersonID:(id)d;
- (id)pathAlbumSharingDir;
- (id)personIDsEnabledForAlbumSharing;
- (id)pushTokenForPersonID:(id)d;
- (int)MMCSConcurrentConnectionsCount;
- (void)logLevel:(int)level personID:(id)d albumGUID:(id)iD format:(id)format;
@end

@implementation MSASPlatformImplementation

- (int)MMCSConcurrentConnectionsCount
{
  v2 = CFPreferencesCopyAppValue(@"AlbumSharingMMCSConnections", @"com.apple.mediastream.mstreamd");
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
    NSLog(&cfstr_UsingUserDefin.isa, intValue);
  }

  else
  {
    LODWORD(intValue) = 6;
  }

  return intValue;
}

- (id)personIDsEnabledForAlbumSharing
{
  v21 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  accountStore = [(MSASPlatformImplementation *)self accountStore];
  accounts = [accountStore accounts];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [accounts countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v9 = *MEMORY[0x277CB91B0];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(accounts);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 isEnabledForDataclass:v9])
        {
          aa_personID = [v11 aa_personID];

          if (aa_personID)
          {
            aa_personID2 = [v11 aa_personID];
            [array addObject:aa_personID2];
          }
        }
      }

      v7 = [accounts countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];

  return array;
}

- (BOOL)personIDEnabledForAlbumSharing:(id)sharing
{
  v3 = [(MSASPlatformImplementation *)self _accountForPersonID:sharing];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isEnabledForDataclass:*MEMORY[0x277CB91B0]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)pushTokenForPersonID:(id)d
{
  v3 = MSPlatform();
  pushToken = [v3 pushToken];

  return pushToken;
}

- (BOOL)personIDUsesProductionPushEnvironment:(id)environment
{
  v3 = [(MSASPlatformImplementation *)self _accountForPersonID:environment];
  v4 = [v3 propertiesForDataclass:*MEMORY[0x277CB91B0]];
  v5 = [v4 objectForKey:@"apsEnv"];
  v6 = [v5 isEqualToString:@"production"];

  return v6;
}

- (id)_accountForPersonID:(id)d
{
  dCopy = d;
  accountStore = [(MSASPlatformImplementation *)self accountStore];
  v6 = [accountStore aa_appleAccountWithPersonID:dCopy];

  return v6;
}

- (BOOL)MSASPersonIDIsAllowedToDownloadAssets:(id)assets
{
  v17 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  if ([(MSASPlatformImplementation *)self deviceHasEnoughDiskSpaceRemainingToOperate])
  {
    albumSharingDaemon = [(MSASPlatformImplementation *)self albumSharingDaemon];
    v6 = [albumSharingDaemon isPersonIDAllowedToDownloadAssets:assetsCopy];

    if (v6)
    {
      v7 = +[MSPauseManager sharedManager];
      isPaused = [v7 isPaused];

      if (!isPaused)
      {
        v12 = 1;
        goto LABEL_13;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        v9 = MEMORY[0x277D86220];
        v10 = "mstreamd is paused. Not downloading assets at this time.";
LABEL_8:
        v11 = 2;
LABEL_11:
        _os_log_impl(&dword_258743000, v9, OS_LOG_TYPE_DEFAULT, v10, &v15, v11);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = assetsCopy;
      v9 = MEMORY[0x277D86220];
      v10 = "%@ is not allowed to download assets at this time.";
      v11 = 12;
      goto LABEL_11;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    v9 = MEMORY[0x277D86220];
    v10 = "Not enough disk space to continue downloading assets.";
    goto LABEL_8;
  }

  v12 = 0;
LABEL_13:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)MSASIsAllowedToUploadAssets
{
  if ([(MSASPlatformImplementation *)self deviceHasEnoughDiskSpaceRemainingToOperate])
  {
    v2 = +[MSPauseManager sharedManager];
    isPaused = [v2 isPaused];

    if (!isPaused)
    {
      LOBYTE(v4) = 1;
      return v4;
    }

    v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      v10 = 0;
      v5 = MEMORY[0x277D86220];
      v6 = "mstreamd is paused. Not uploading assets at this time.";
      v7 = &v10;
LABEL_7:
      _os_log_impl(&dword_258743000, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      v9 = 0;
      v5 = MEMORY[0x277D86220];
      v6 = "Not enough disk space to continue uploading assets.";
      v7 = &v9;
      goto LABEL_7;
    }
  }

  return v4;
}

- (BOOL)MSASIsAllowedToTransferMetadata
{
  if ([(MSASPlatformImplementation *)self deviceHasEnoughDiskSpaceRemainingToOperate])
  {
    v2 = +[MSPauseManager sharedManager];
    isPaused = [v2 isPaused];

    if (!isPaused)
    {
      LOBYTE(v4) = 1;
      return v4;
    }

    v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      v10 = 0;
      v5 = MEMORY[0x277D86220];
      v6 = "mstreamd is paused. Not transferring metadata at this time.";
      v7 = &v10;
LABEL_7:
      _os_log_impl(&dword_258743000, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      v9 = 0;
      v5 = MEMORY[0x277D86220];
      v6 = "Not enough disk space to continue transferring metadata.";
      v7 = &v9;
      goto LABEL_7;
    }
  }

  return v4;
}

- (id)MMCSUploadSocketOptionsForPersonID:(id)d
{
  v3 = MEMORY[0x277CBEB38];
  dCopy = d;
  dictionary = [v3 dictionary];
  v6 = MSASPlatform();
  albumSharingDaemon = [v6 albumSharingDaemon];
  v8 = [albumSharingDaemon powerBudgetForPersonID:dCopy];

  if (([v8 hasForegroundFocus] & 1) == 0)
  {
    [dictionary setObject:*MEMORY[0x277CBAD68] forKey:*MEMORY[0x277CBAD50]];
  }

  if ([dictionary count])
  {
    v9 = dictionary;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)MMCSDownloadSocketOptionsForPersonID:(id)d
{
  v3 = MEMORY[0x277CBEB38];
  dCopy = d;
  dictionary = [v3 dictionary];
  v6 = MSASPlatform();
  albumSharingDaemon = [v6 albumSharingDaemon];
  v8 = [albumSharingDaemon powerBudgetForPersonID:dCopy];

  if (([v8 hasForegroundFocus] & 1) == 0)
  {
    [dictionary setObject:*MEMORY[0x277CBAD68] forKey:*MEMORY[0x277CBAD50]];
  }

  if (([v8 hasForegroundFocus] & 1) == 0 && (objc_msgSend(v8, "hasActiveTimers") & 1) == 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [dictionary setObject:v9 forKey:*MEMORY[0x277CBAE40]];
  }

  if ([dictionary count])
  {
    v10 = dictionary;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)deviceHasEnoughDiskSpaceRemainingToOperate
{
  if (deviceHasEnoughDiskSpaceRemainingToOperate_onceToken != -1)
  {
    dispatch_once(&deviceHasEnoughDiskSpaceRemainingToOperate_onceToken, &__block_literal_global_33);
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__MSASPlatformImplementation_deviceHasEnoughDiskSpaceRemainingToOperate__block_invoke_2;
  block[3] = &unk_2798A50D0;
  block[4] = &v5;
  dispatch_sync(deviceHasEnoughDiskSpaceRemainingToOperate_queue, block);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __72__MSASPlatformImplementation_deviceHasEnoughDiskSpaceRemainingToOperate__block_invoke_2(uint64_t a1)
{
  if (!deviceHasEnoughDiskSpaceRemainingToOperate_lastCheckDate)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v25 = 0;
      _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Checking remaining disk space for the first time.", v25, 2u);
    }

    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = _throttledIndicatorFilePath();
    v11 = [v9 fileExistsAtPath:v10];

    if (!v11)
    {
      v12 = _availableDiskBlocks() >> 9 < 0x4B;
      goto LABEL_17;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *v24 = 0;
    v6 = MEMORY[0x277D86220];
    v7 = "Detected that the process was shut down while throttled by disk space. Remaining throttled.";
    v8 = v24;
    goto LABEL_14;
  }

  v2 = [MEMORY[0x277CBEAA8] date];
  [v2 timeIntervalSinceDate:deviceHasEnoughDiskSpaceRemainingToOperate_lastCheckDate];
  v4 = v3;

  if (v4 < 7.0)
  {
    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Checking remaining disk space again.", buf, 2u);
  }

  v5 = _availableDiskBlocks();
  if ((deviceHasEnoughDiskSpaceRemainingToOperate_state & 1) == 0 && v5 >> 9 <= 0x4A)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
LABEL_15:
      v12 = 1;
      goto LABEL_17;
    }

    v22 = 0;
    v6 = MEMORY[0x277D86220];
    v7 = "Disk space has become too low for continued operation.";
    v8 = &v22;
LABEL_14:
    _os_log_impl(&dword_258743000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    goto LABEL_15;
  }

  if (v5 >> 11 > 0x18)
  {
    v17 = deviceHasEnoughDiskSpaceRemainingToOperate_state;
  }

  else
  {
    v17 = 0;
  }

  if (v17 != 1)
  {
    goto LABEL_18;
  }

  v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  v12 = 0;
  if (v18)
  {
    *v21 = 0;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Enough disk space has become available to continue operation.", v21, 2u);
    v12 = 0;
  }

LABEL_17:
  deviceHasEnoughDiskSpaceRemainingToOperate_state = v12;
LABEL_18:
  v13 = [MEMORY[0x277CBEAA8] date];
  v14 = deviceHasEnoughDiskSpaceRemainingToOperate_lastCheckDate;
  deviceHasEnoughDiskSpaceRemainingToOperate_lastCheckDate = v13;

LABEL_19:
  if (deviceHasEnoughDiskSpaceRemainingToOperate_state)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Disk space is too low for continued operation.", v19, 2u);
    }

    v15 = [MEMORY[0x277CBEA90] data];
    v16 = _throttledIndicatorFilePath();
    [v15 writeToFile:v16 options:0 error:0];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Disk space is OK to continue operations.", v20, 2u);
    }

    v15 = [MEMORY[0x277CCAA00] defaultManager];
    v16 = _throttledIndicatorFilePath();
    [v15 removeItemAtPath:v16 error:0];
  }

  *(*(*(a1 + 32) + 8) + 24) = (deviceHasEnoughDiskSpaceRemainingToOperate_state & 1) == 0;
}

uint64_t __72__MSASPlatformImplementation_deviceHasEnoughDiskSpaceRemainingToOperate__block_invoke()
{
  deviceHasEnoughDiskSpaceRemainingToOperate_queue = dispatch_queue_create("MSASPlatformImplementation disk space queue", 0);

  return MEMORY[0x2821F96F8]();
}

- (id)baseSharingURLForPersonID:(id)d
{
  v4 = MEMORY[0x277CBEBD0];
  dCopy = d;
  standardUserDefaults = [v4 standardUserDefaults];
  v7 = [standardUserDefaults objectForKey:@"MSASForcedBaseURL"];

  if (v7)
  {
    v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];
  }

  else
  {
    accountStore = [(MSASPlatformImplementation *)self accountStore];
    v10 = [accountStore aa_appleAccountWithPersonID:dCopy];

    v11 = [v10 propertiesForDataclass:*MEMORY[0x277CB91B0]];
    v12 = [v11 objectForKey:@"url"];

    v8 = [MEMORY[0x277CBEBC0] URLWithString:v12];
  }

  v13 = [v8 URLByAppendingPathComponent:dCopy];

  v14 = [v13 URLByAppendingPathComponent:@"sharedstreams"];

  return v14;
}

- (void)logLevel:(int)level personID:(id)d albumGUID:(id)iD format:(id)format
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    formatCopy = format;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unexpected call to legacy logging method, please switch to os_log(): %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (Class)pluginClass
{
  if (pluginClass_onceToken_701 != -1)
  {
    dispatch_once(&pluginClass_onceToken_701, &__block_literal_global_13);
  }

  v3 = pluginClass_class;

  return v3;
}

void __41__MSASPlatformImplementation_pluginClass__block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [@"/System/Library/MediaStreamPlugins" stringByAppendingPathComponent:@"PhotoSharingPlugin.mediastream"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v0;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Loading Shared Streams plugin from %@", &v5, 0xCu);
  }

  v1 = [MEMORY[0x277CCA8D8] bundleWithPath:v0];
  v2 = [v1 principalClass];
  v3 = pluginClass_class;
  pluginClass_class = v2;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = 138543362;
    v6 = pluginClass_class;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Loaded class: %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)pathAlbumSharingDir
{
  if (pathAlbumSharingDir_once != -1)
  {
    dispatch_once(&pathAlbumSharingDir_once, &__block_literal_global_706);
  }

  v3 = pathAlbumSharingDir_path;

  return v3;
}

void __49__MSASPlatformImplementation_pathAlbumSharingDir__block_invoke()
{
  v4 = [MEMORY[0x277CCACA8] MSMSUserDirectory];
  v0 = [v4 stringByAppendingPathComponent:@"Library"];
  v1 = [v0 stringByAppendingPathComponent:@"MediaStream"];
  v2 = [v1 stringByAppendingPathComponent:@"albumshare"];
  v3 = pathAlbumSharingDir_path;
  pathAlbumSharingDir_path = v2;
}

- (MSASPlatformImplementation)init
{
  v6.receiver = self;
  v6.super_class = MSASPlatformImplementation;
  v2 = [(MSASPlatformImplementation *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CB8F48]);
    accountStore = v2->_accountStore;
    v2->_accountStore = v3;
  }

  return v2;
}

@end