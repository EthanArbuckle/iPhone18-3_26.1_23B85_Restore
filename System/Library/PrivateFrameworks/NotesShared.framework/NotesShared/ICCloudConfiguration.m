@interface ICCloudConfiguration
+ (BOOL)isConfigurationValid:(id)a3;
+ (ICCloudConfiguration)sharedConfiguration;
+ (NSArray)availableConfigurationURLs;
+ (NSURL)defaultConfigurationURL;
+ (id)cachedConfigurationURL;
+ (id)cloudConfigurationQueue;
+ (id)overridableValueForKey:(id)a3 inConfigurationDictionary:(id)a4 userDefaults:(id)a5;
+ (void)loadSharedConfigurationWithQoSClass:(unsigned int)a3 completionHandler:(id)a4;
+ (void)setDefaultConfigurationURL:(id)a3;
- (BOOL)audioTranscriptPostProcessingEnabled;
- (BOOL)fastSyncEnabled;
- (BOOL)fastSyncPaperKitEnableEphemeralRecords;
- (BOOL)fastSyncPaperKitEnablePCSEncryption;
- (BOOL)keychainFetchingEnabled;
- (BOOL)requestUserNotificationAuthorizationAtLaunch;
- (BOOL)shouldPerformTopHitSearch;
- (BOOL)shouldSyncWhenEnteringForeground;
- (ICCloudConfiguration)initWithConfigurationDictionary:(id)a3 userDefaults:(id)a4 usesLocalConfigurationFile:(BOOL)a5;
- (ICCloudConfiguration)initWithUserDefaults:(id)a3 usesLocalConfigurationFile:(BOOL)a4;
- (ICCloudThrottlingPolicy)throttlingPolicy;
- (NSDictionary)configurationDictionary;
- (NSNumber)maximumAttachmentSizeMB;
- (NSString)minimumClientVersion;
- (double)appStoreRatingIdleTimeInterval;
- (double)fastSyncPresenceDebounceDuration;
- (double)keychainFetchErrorTimeout;
- (double)keychainMaximumSyncInterval;
- (double)keychainMinimumSyncInterval;
- (id)overridableValueForKey:(id)a3 inConfigurationDictionary:(id)a4;
- (unint64_t)appStoreRatingCohortPercentage;
- (unint64_t)appStoreRatingLaunchCount;
- (unint64_t)appStoreRatingLaunchDayPeriod;
- (unint64_t)appStoreRatingNoteCount;
- (unint64_t)appStoreRatingOldestLaunchDayPeriod;
- (unint64_t)appStoreRatingRequestDayPeriod;
- (unint64_t)durationForNextPasswordReask;
- (unint64_t)fastSyncMaximumMessageSizeBytes;
- (unint64_t)fastSyncMaximumThumbnailMessageSizeBytes;
- (unint64_t)launchTaskMaxRetries;
- (unint64_t)maxAttachmentsPerNote;
- (unint64_t)maxInlineAssetSizeBytes;
- (unint64_t)maxSubAttachmentsPerAttachment;
- (unint64_t)mentionNotificationMaxRetries;
- (unint64_t)resultsLimitPerSyncOperation;
- (unint64_t)serverSideUpdateTaskMaxFailureCount;
- (unint64_t)unsupportedNoteDeviceCheckIntervalSeconds;
- (void)dealloc;
- (void)downloadConfigurationFromRemoteURL:(id)a3 completionHandler:(id)a4;
- (void)downloadRemoteConfiguration:(id)a3;
- (void)loadConfigurationFromURL:(id)a3;
- (void)loadConfigurationFromURL:(id)a3 completionHandler:(id)a4;
- (void)loadLocalConfigurationFile;
- (void)setConfigurationFromDictionary:(id)a3;
- (void)setDownloadTimer:(uint64_t)a1;
@end

@implementation ICCloudConfiguration

+ (id)cloudConfigurationQueue
{
  objc_opt_self();
  if (cloudConfigurationQueue_token != -1)
  {
    +[ICCloudConfiguration cloudConfigurationQueue];
  }

  v0 = cloudConfigurationQueue_queue;

  return v0;
}

void __47__ICCloudConfiguration_cloudConfigurationQueue__block_invoke()
{
  v2 = dispatch_get_global_queue(0, 0);
  v0 = dispatch_queue_create_with_target_V2("com.apple.notes.cloud-configuration", 0, v2);
  v1 = cloudConfigurationQueue_queue;
  cloudConfigurationQueue_queue = v0;
}

void __59__ICCloudConfiguration_SharedInstance__sharedConfiguration__block_invoke()
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"![NSThread isMainThread]" functionName:"+[ICCloudConfiguration(SharedInstance) sharedConfiguration]_block_invoke" simulateCrash:1 showAlert:0 format:@"Unexpected call from main thread"];
  }

  v0 = [ICCloudConfiguration alloc];
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [(ICCloudConfiguration *)v0 initWithUserDefaults:v3];
  v2 = sharedConfiguration_sharedConfiguration;
  sharedConfiguration_sharedConfiguration = v1;
}

- (void)loadLocalConfigurationFile
{
  v3 = [objc_opt_class() cachedConfigurationURL];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v3];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICCloudConfiguration loadLocalConfigurationFile];
  }

  if ([objc_opt_class() isConfigurationValid:v4])
  {
    v6 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [ICCloudConfiguration loadLocalConfigurationFile];
    }

    [(ICCloudConfiguration *)self setConfigurationFromDictionary:v4];
  }

  else
  {
LABEL_8:
    v7 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ICCloudConfiguration loadLocalConfigurationFile];
    }

    v8 = [objc_opt_class() defaultConfigurationURL];
    [(ICCloudConfiguration *)self loadConfigurationFromURL:v8];
  }
}

+ (id)cachedConfigurationURL
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:0];

  v4 = [v3 URLByAppendingPathComponent:@"RemoteConfiguration" isDirectory:0];
  v5 = [v4 URLByAppendingPathExtension:@"plist"];

  return v5;
}

- (NSString)minimumClientVersion
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_minimumClientVersion;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (ICCloudThrottlingPolicy)throttlingPolicy
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_throttlingPolicy;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

+ (ICCloudConfiguration)sharedConfiguration
{
  if (sharedConfiguration_onceToken != -1)
  {
    +[ICCloudConfiguration(SharedInstance) sharedConfiguration];
  }

  v3 = sharedConfiguration_sharedConfiguration;

  return v3;
}

- (BOOL)fastSyncEnabled
{
  os_unfair_lock_lock(&self->_lock);
  fastSyncEnabled = self->_fastSyncEnabled;
  os_unfair_lock_unlock(&self->_lock);
  return fastSyncEnabled;
}

+ (id)overridableValueForKey:(id)a3 inConfigurationDictionary:(id)a4 userDefaults:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [a5 objectForKey:v7];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [v8 objectForKeyedSubscript:v7];
  }

  v12 = v11;

  return v12;
}

- (NSDictionary)configurationDictionary
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSDictionary *)self->_configurationDictionary copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (unint64_t)appStoreRatingCohortPercentage
{
  os_unfair_lock_lock(&self->_lock);
  appStoreRatingCohortPercentage = self->_appStoreRatingCohortPercentage;
  os_unfair_lock_unlock(&self->_lock);
  return appStoreRatingCohortPercentage;
}

- (double)appStoreRatingIdleTimeInterval
{
  os_unfair_lock_lock(&self->_lock);
  appStoreRatingIdleTimeInterval = self->_appStoreRatingIdleTimeInterval;
  os_unfair_lock_unlock(&self->_lock);
  return appStoreRatingIdleTimeInterval;
}

- (unint64_t)appStoreRatingLaunchCount
{
  os_unfair_lock_lock(&self->_lock);
  appStoreRatingLaunchCount = self->_appStoreRatingLaunchCount;
  os_unfair_lock_unlock(&self->_lock);
  return appStoreRatingLaunchCount;
}

- (unint64_t)appStoreRatingLaunchDayPeriod
{
  os_unfair_lock_lock(&self->_lock);
  appStoreRatingLaunchDayPeriod = self->_appStoreRatingLaunchDayPeriod;
  os_unfair_lock_unlock(&self->_lock);
  return appStoreRatingLaunchDayPeriod;
}

- (unint64_t)appStoreRatingOldestLaunchDayPeriod
{
  os_unfair_lock_lock(&self->_lock);
  appStoreRatingOldestLaunchDayPeriod = self->_appStoreRatingOldestLaunchDayPeriod;
  os_unfair_lock_unlock(&self->_lock);
  return appStoreRatingOldestLaunchDayPeriod;
}

- (unint64_t)appStoreRatingNoteCount
{
  os_unfair_lock_lock(&self->_lock);
  appStoreRatingNoteCount = self->_appStoreRatingNoteCount;
  os_unfair_lock_unlock(&self->_lock);
  return appStoreRatingNoteCount;
}

- (unint64_t)appStoreRatingRequestDayPeriod
{
  os_unfair_lock_lock(&self->_lock);
  appStoreRatingRequestDayPeriod = self->_appStoreRatingRequestDayPeriod;
  os_unfair_lock_unlock(&self->_lock);
  return appStoreRatingRequestDayPeriod;
}

- (BOOL)shouldSyncWhenEnteringForeground
{
  os_unfair_lock_lock(&self->_lock);
  shouldSyncWhenEnteringForeground = self->_shouldSyncWhenEnteringForeground;
  os_unfair_lock_unlock(&self->_lock);
  return shouldSyncWhenEnteringForeground;
}

- (unint64_t)maxInlineAssetSizeBytes
{
  os_unfair_lock_lock(&self->_lock);
  maxInlineAssetSizeBytes = self->_maxInlineAssetSizeBytes;
  os_unfair_lock_unlock(&self->_lock);
  return maxInlineAssetSizeBytes;
}

- (NSNumber)maximumAttachmentSizeMB
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_maximumAttachmentSizeMB;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (unint64_t)maxAttachmentsPerNote
{
  os_unfair_lock_lock(&self->_lock);
  maxAttachmentsPerNote = self->_maxAttachmentsPerNote;
  os_unfair_lock_unlock(&self->_lock);
  return maxAttachmentsPerNote;
}

- (unint64_t)maxSubAttachmentsPerAttachment
{
  os_unfair_lock_lock(&self->_lock);
  maxSubAttachmentsPerAttachment = self->_maxSubAttachmentsPerAttachment;
  os_unfair_lock_unlock(&self->_lock);
  return maxSubAttachmentsPerAttachment;
}

- (unint64_t)resultsLimitPerSyncOperation
{
  os_unfair_lock_lock(&self->_lock);
  resultsLimitPerSyncOperation = self->_resultsLimitPerSyncOperation;
  os_unfair_lock_unlock(&self->_lock);
  return resultsLimitPerSyncOperation;
}

- (BOOL)shouldPerformTopHitSearch
{
  os_unfair_lock_lock(&self->_lock);
  shouldPerformTopHitSearch = self->_shouldPerformTopHitSearch;
  os_unfair_lock_unlock(&self->_lock);
  return shouldPerformTopHitSearch;
}

- (unint64_t)mentionNotificationMaxRetries
{
  os_unfair_lock_lock(&self->_lock);
  mentionNotificationMaxRetries = self->_mentionNotificationMaxRetries;
  os_unfair_lock_unlock(&self->_lock);
  return mentionNotificationMaxRetries;
}

- (unint64_t)launchTaskMaxRetries
{
  os_unfair_lock_lock(&self->_lock);
  launchTaskMaxRetries = self->_launchTaskMaxRetries;
  os_unfair_lock_unlock(&self->_lock);
  return launchTaskMaxRetries;
}

- (unint64_t)serverSideUpdateTaskMaxFailureCount
{
  os_unfair_lock_lock(&self->_lock);
  serverSideUpdateTaskMaxFailureCount = self->_serverSideUpdateTaskMaxFailureCount;
  os_unfair_lock_unlock(&self->_lock);
  return serverSideUpdateTaskMaxFailureCount;
}

- (unint64_t)durationForNextPasswordReask
{
  os_unfair_lock_lock(&self->_lock);
  durationForNextPasswordReask = self->_durationForNextPasswordReask;
  os_unfair_lock_unlock(&self->_lock);
  return durationForNextPasswordReask;
}

- (unint64_t)unsupportedNoteDeviceCheckIntervalSeconds
{
  os_unfair_lock_lock(&self->_lock);
  unsupportedNoteDeviceCheckIntervalSeconds = self->_unsupportedNoteDeviceCheckIntervalSeconds;
  os_unfair_lock_unlock(&self->_lock);
  return unsupportedNoteDeviceCheckIntervalSeconds;
}

- (BOOL)requestUserNotificationAuthorizationAtLaunch
{
  os_unfair_lock_lock(&self->_lock);
  requestUserNotificationAuthorizationAtLaunch = self->_requestUserNotificationAuthorizationAtLaunch;
  os_unfair_lock_unlock(&self->_lock);
  return requestUserNotificationAuthorizationAtLaunch;
}

- (unint64_t)fastSyncMaximumMessageSizeBytes
{
  os_unfair_lock_lock(&self->_lock);
  fastSyncMaximumMessageSizeBytes = self->_fastSyncMaximumMessageSizeBytes;
  os_unfair_lock_unlock(&self->_lock);
  return fastSyncMaximumMessageSizeBytes;
}

- (BOOL)fastSyncPaperKitEnablePCSEncryption
{
  os_unfair_lock_lock(&self->_lock);
  fastSyncPaperKitEnablePCSEncryption = self->_fastSyncPaperKitEnablePCSEncryption;
  os_unfair_lock_unlock(&self->_lock);
  return fastSyncPaperKitEnablePCSEncryption;
}

- (BOOL)fastSyncPaperKitEnableEphemeralRecords
{
  os_unfair_lock_lock(&self->_lock);
  fastSyncPaperKitEnableEphemeralRecords = self->_fastSyncPaperKitEnableEphemeralRecords;
  os_unfair_lock_unlock(&self->_lock);
  return fastSyncPaperKitEnableEphemeralRecords;
}

- (unint64_t)fastSyncMaximumThumbnailMessageSizeBytes
{
  os_unfair_lock_lock(&self->_lock);
  fastSyncMaximumThumbnailMessageSizeBytes = self->_fastSyncMaximumThumbnailMessageSizeBytes;
  os_unfair_lock_unlock(&self->_lock);
  return fastSyncMaximumThumbnailMessageSizeBytes;
}

- (double)fastSyncPresenceDebounceDuration
{
  os_unfair_lock_lock(&self->_lock);
  fastSyncPresenceDebounceDuration = self->_fastSyncPresenceDebounceDuration;
  os_unfair_lock_unlock(&self->_lock);
  return fastSyncPresenceDebounceDuration;
}

- (BOOL)keychainFetchingEnabled
{
  os_unfair_lock_lock(&self->_lock);
  keychainFetchingEnabled = self->_keychainFetchingEnabled;
  os_unfair_lock_unlock(&self->_lock);
  return keychainFetchingEnabled;
}

- (double)keychainFetchErrorTimeout
{
  os_unfair_lock_lock(&self->_lock);
  keychainFetchErrorTimeout = self->_keychainFetchErrorTimeout;
  os_unfair_lock_unlock(&self->_lock);
  return keychainFetchErrorTimeout;
}

- (double)keychainMinimumSyncInterval
{
  os_unfair_lock_lock(&self->_lock);
  keychainMinimumSyncInterval = self->_keychainMinimumSyncInterval;
  os_unfair_lock_unlock(&self->_lock);
  return keychainMinimumSyncInterval;
}

- (double)keychainMaximumSyncInterval
{
  os_unfair_lock_lock(&self->_lock);
  keychainMaximumSyncInterval = self->_keychainMaximumSyncInterval;
  os_unfair_lock_unlock(&self->_lock);
  return keychainMaximumSyncInterval;
}

- (BOOL)audioTranscriptPostProcessingEnabled
{
  os_unfair_lock_lock(&self->_lock);
  audioTranscriptPostProcessingEnabled = self->_audioTranscriptPostProcessingEnabled;
  os_unfair_lock_unlock(&self->_lock);
  return audioTranscriptPostProcessingEnabled;
}

- (ICCloudConfiguration)initWithConfigurationDictionary:(id)a3 userDefaults:(id)a4 usesLocalConfigurationFile:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = ICCloudConfiguration;
  v10 = [(ICCloudConfiguration *)&v15 init];
  if (v10)
  {
    v11 = [v8 copy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = MEMORY[0x277CBEC10];
    }

    objc_storeStrong(&v10->_configurationDictionary, v13);

    v10->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v10->_userDefaults, a4);
    v10->_usesLocalConfigurationFile = a5;
  }

  return v10;
}

- (ICCloudConfiguration)initWithUserDefaults:(id)a3 usesLocalConfigurationFile:(BOOL)a4
{
  v4 = a4;
  v5 = [(ICCloudConfiguration *)self initWithConfigurationDictionary:MEMORY[0x277CBEC10] userDefaults:a3 usesLocalConfigurationFile:a4];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      [(ICCloudConfiguration *)v5 loadLocalConfigurationFile];
    }

    v7 = dispatch_time(0, 2000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__ICCloudConfiguration_initWithUserDefaults_usesLocalConfigurationFile___block_invoke;
    block[3] = &unk_278194B00;
    v10 = v6;
    dispatch_after(v7, MEMORY[0x277D85CD0], block);
  }

  return v6;
}

void __72__ICCloudConfiguration_initWithUserDefaults_usesLocalConfigurationFile___block_invoke(uint64_t a1)
{
  [*(a1 + 32) downloadRemoteConfiguration:0];
  v2 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:*(a1 + 32) target:sel_downloadRemoteConfiguration_ selector:0 userInfo:1 repeats:86400.0];
  [(ICCloudConfiguration *)*(a1 + 32) setDownloadTimer:v2];
}

+ (BOOL)isConfigurationValid:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [a3 objectForKeyedSubscript:@"configurationVersion"];
  v4 = v3;
  if (!v3)
  {
    v6 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_DEFAULT, "Configuration has no version", &v8, 2u);
    }

    goto LABEL_9;
  }

  if ([v3 unsignedIntegerValue] != 11)
  {
    v6 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134218240;
      v9 = [v4 unsignedIntegerValue];
      v10 = 2048;
      v11 = 11;
      _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_DEFAULT, "Configuration version (%ld) is not the expected version (%ld)", &v8, 0x16u);
    }

LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v5 = 1;
LABEL_10:

  return v5;
}

+ (NSURL)defaultConfigurationURL
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v4 = [v3 stringForKey:@"CloudConfigurationPath"];

  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
  if (([v5 checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    v6 = [a1 availableConfigurationURLs];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __47__ICCloudConfiguration_defaultConfigurationURL__block_invoke;
    v22[3] = &unk_278196620;
    v23 = v4;
    v7 = [v6 ic_objectPassingTest:v22];

    [a1 setDefaultConfigurationURL:v7];
    v5 = v7;
  }

  if (!v5)
  {
LABEL_5:
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [a1 availableConfigurationURLs];
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
LABEL_7:
      v12 = 0;
      while (1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        v14 = [v13 lastPathComponent];
        v15 = [v14 containsString:@"Normal"];

        if (v15)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
          if (v10)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }
      }

      v5 = v13;

      if (v5)
      {
        goto LABEL_16;
      }
    }

    else
    {
LABEL_13:
    }

    v16 = [a1 availableConfigurationURLs];
    v5 = [v16 firstObject];

LABEL_16:
    [a1 setDefaultConfigurationURL:v5];
  }

  return v5;
}

uint64_t __47__ICCloudConfiguration_defaultConfigurationURL__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 lastPathComponent];
  v4 = [*(a1 + 32) lastPathComponent];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

+ (void)setDefaultConfigurationURL:(id)a3
{
  v3 = MEMORY[0x277D36180];
  v4 = a3;
  v5 = [v3 sharedAppGroupDefaults];
  v6 = [v4 path];

  [v5 setObject:v6 forKey:@"CloudConfigurationPath"];
  v7 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  [v7 synchronize];
}

+ (NSArray)availableConfigurationURLs
{
  os_unfair_lock_lock(&availableConfigurationURLs_lock);
  if (availableConfigurationURLs_configurationURLs)
  {
    v2 = [availableConfigurationURLs_configurationURLs copy];
  }

  else
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 resourceURL];
    v5 = [v4 URLByAppendingPathComponent:@"CloudConfigurations" isDirectory:1];

    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [v6 enumeratorAtURL:v5 includingPropertiesForKeys:0 options:5 errorHandler:0];

    if (v7)
    {
      v8 = [v7 allObjects];
      v9 = availableConfigurationURLs_configurationURLs;
      availableConfigurationURLs_configurationURLs = v8;
    }

    else
    {
      v10 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        +[ICCloudConfiguration availableConfigurationURLs];
      }
    }

    v2 = availableConfigurationURLs_configurationURLs;
  }

  os_unfair_lock_unlock(&availableConfigurationURLs_lock);

  return v2;
}

- (void)downloadRemoteConfiguration:(id)a3
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"https://configuration.apple.com/configurations/internetservices/cloudkit/notes-1.9.plist"];
  [(ICCloudConfiguration *)self downloadConfigurationFromRemoteURL:v4 completionHandler:&__block_literal_global_170];
}

void __52__ICCloudConfiguration_downloadRemoteConfiguration___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __52__ICCloudConfiguration_downloadRemoteConfiguration___block_invoke_cold_1();
    }
  }
}

- (void)downloadConfigurationFromRemoteURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CCAD38];
  v8 = a3;
  v9 = [v7 defaultSessionConfiguration];
  [v9 setRequestCachePolicy:1];
  v10 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v9];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __77__ICCloudConfiguration_downloadConfigurationFromRemoteURL_completionHandler___block_invoke;
  v16 = &unk_278196668;
  v17 = self;
  v18 = v6;
  v11 = v6;
  v12 = [v10 dataTaskWithURL:v8 completionHandler:&v13];

  [v12 resume];
}

void __77__ICCloudConfiguration_downloadConfigurationFromRemoteURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __77__ICCloudConfiguration_downloadConfigurationFromRemoteURL_completionHandler___block_invoke_cold_1(v9);
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      (*(v11 + 16))(v11, 0);
    }
  }

  else
  {
    v12 = v8;
    if ([v12 statusCode] == 200)
    {
      v25 = 0;
      v13 = [MEMORY[0x277CCAC58] propertyListWithData:v7 options:0 format:0 error:&v25];
      v14 = v25;
      v15 = os_log_create("com.apple.notes", "Cloud");
      v16 = v15;
      if (v14)
      {
        v17 = v15;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          __77__ICCloudConfiguration_downloadConfigurationFromRemoteURL_completionHandler___block_invoke_cold_3(v14);
        }

        (*(*(a1 + 40) + 16))();
      }

      else
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          __77__ICCloudConfiguration_downloadConfigurationFromRemoteURL_completionHandler___block_invoke_cold_4();
        }

        if ([objc_opt_class() isConfigurationValid:v13])
        {
          v20 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            __77__ICCloudConfiguration_downloadConfigurationFromRemoteURL_completionHandler___block_invoke_cold_5();
          }

          [*(a1 + 32) setConfigurationFromDictionary:v13];
        }

        v21 = [objc_opt_class() cachedConfigurationURL];
        if (([v13 writeToURL:v21 atomically:1] & 1) == 0)
        {
          v22 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *v24 = 0;
            _os_log_impl(&dword_214D51000, v22, OS_LOG_TYPE_DEFAULT, "Not able to write remote configuration to cache.", v24, 2u);
          }
        }

        v23 = *(a1 + 40);
        if (v23)
        {
          (*(v23 + 16))(v23, 1);
        }
      }
    }

    else
    {
      v18 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __77__ICCloudConfiguration_downloadConfigurationFromRemoteURL_completionHandler___block_invoke_cold_2(v12);
      }

      v19 = *(a1 + 40);
      if (v19)
      {
        (*(v19 + 16))(v19, 0);
      }
    }
  }
}

- (void)loadConfigurationFromURL:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICCloudConfiguration loadConfigurationFromURL:];
  }

  v6 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v4];
  if (v6)
  {
    [(ICCloudConfiguration *)self setConfigurationFromDictionary:v6];
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ICCloudConfiguration loadConfigurationFromURL:];
    }
  }
}

- (void)loadConfigurationFromURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[ICCloudConfiguration cloudConfigurationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__ICCloudConfiguration_loadConfigurationFromURL_completionHandler___block_invoke;
  block[3] = &unk_278196690;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __67__ICCloudConfiguration_loadConfigurationFromURL_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8 = 0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v2 error:&v8];
  v4 = v8;
  if (v3)
  {
    [*(a1 + 40) setConfigurationFromDictionary:v3];
    v5 = *(a1 + 48);
    if (v5)
    {
      v6 = *(v5 + 16);
LABEL_6:
      v6();
    }
  }

  else
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      v6 = *(v7 + 16);
      goto LABEL_6;
    }
  }
}

- (void)setConfigurationFromDictionary:(id)a3
{
  v212 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 copy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x277CBEC10];
  }

  v8 = v7;

  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_configurationDictionary, v7);
  v9 = [v8 objectForKeyedSubscript:@"minimumClientVersions"];
  v10 = v9;
  if (v9 && ([v9 objectForKeyedSubscript:@"iOS"], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12 = [v10 objectForKeyedSubscript:@"iOS"];
    minimumClientVersion = self->_minimumClientVersion;
    self->_minimumClientVersion = v12;
  }

  else
  {
    v14 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v14, OS_LOG_TYPE_DEFAULT, "Trying to create a cloud configuration with no minimum client version", buf, 2u);
    }

    minimumClientVersion = self->_minimumClientVersion;
    self->_minimumClientVersion = @"9,0,0";
  }

  v15 = [v8 objectForKeyedSubscript:@"throttlingPolicyResetIntervalSeconds"];
  [v15 doubleValue];
  v17 = v16;

  if (v17 == 0.0)
  {
    v17 = 86400.0;
  }

  v18 = [v8 objectForKeyedSubscript:@"throttlingPolicy"];
  v196 = v10;
  v197 = self;
  v195 = v18;
  if (v18)
  {
    v19 = v18;
    v193 = v8;
    v20 = [MEMORY[0x277CBEB18] array];
    v202 = 0u;
    v203 = 0u;
    v204 = 0u;
    v205 = 0u;
    obj = v19;
    v21 = [obj countByEnumeratingWithState:&v202 objects:v211 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v203;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v203 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v202 + 1) + 8 * i);
          v26 = [v25 objectForKeyedSubscript:@"count"];
          v27 = [v26 unsignedIntegerValue];

          v28 = [v25 objectForKeyedSubscript:@"intervalSeconds"];
          [v28 doubleValue];
          v30 = v29;

          v31 = [v25 objectForKeyedSubscript:@"maximumIntervalFactor"];
          [v31 doubleValue];
          v33 = v32;

          v34 = [[ICCloudThrottlingLevel alloc] initWithBatchInterval:v27 maximumBatchIntervalFactor:v30 numberOfBatches:v33];
          [(ICCloudThrottlingLevel *)v20 addObject:v34];
        }

        v22 = [obj countByEnumeratingWithState:&v202 objects:v211 count:16];
      }

      while (v22);
    }

    v35 = [[ICCloudThrottlingPolicy alloc] initWithThrottlingLevels:v20 resetInterval:v17];
    self = v197;
    throttlingPolicy = v197->_throttlingPolicy;
    v197->_throttlingPolicy = v35;
    v8 = v193;
  }

  else
  {
    v37 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v37, OS_LOG_TYPE_DEFAULT, "Trying to create a cloud configuration with no throttling levels", buf, 2u);
    }

    v20 = [[ICCloudThrottlingLevel alloc] initWithBatchInterval:0 maximumBatchIntervalFactor:60.0 numberOfBatches:5.0];
    v38 = [ICCloudThrottlingPolicy alloc];
    v210 = v20;
    throttlingPolicy = [MEMORY[0x277CBEA60] arrayWithObjects:&v210 count:1];
    v39 = [(ICCloudThrottlingPolicy *)v38 initWithThrottlingLevels:throttlingPolicy resetInterval:v17];
    v40 = self->_throttlingPolicy;
    self->_throttlingPolicy = v39;
  }

  objc_opt_class();
  v41 = [(ICCloudConfiguration *)self overridableValueForKey:@"appStoreRatingCohortPercentage" inConfigurationDictionary:v8];
  v42 = ICDynamicCast();

  obja = v42;
  if (v42)
  {
    v43 = [v42 unsignedIntegerValue];
  }

  else
  {
    v44 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v44, OS_LOG_TYPE_DEFAULT, "Trying to create a cloud configuration with no app store rating cohort percentage", buf, 2u);
    }

    v43 = 0;
  }

  self->_appStoreRatingCohortPercentage = v43;
  objc_opt_class();
  v45 = [(ICCloudConfiguration *)self overridableValueForKey:@"appStoreRatingIdleTimeInterval" inConfigurationDictionary:v8];
  v46 = ICDynamicCast();

  v194 = v46;
  if (v46)
  {
    [v46 doubleValue];
  }

  else
  {
    v48 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v48, OS_LOG_TYPE_DEFAULT, "Trying to create a cloud configuration with no app store rating idle time interval", buf, 2u);
    }

    v47 = 5.0;
  }

  self->_appStoreRatingIdleTimeInterval = v47;
  objc_opt_class();
  v49 = [(ICCloudConfiguration *)self overridableValueForKey:@"appStoreRatingLaunchCount" inConfigurationDictionary:v8];
  v50 = ICDynamicCast();

  v192 = v50;
  if (v50)
  {
    v51 = [v50 unsignedIntegerValue];
  }

  else
  {
    v52 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v52, OS_LOG_TYPE_DEFAULT, "Trying to create a cloud configuration with no app store rating launch count", buf, 2u);
    }

    v51 = 3;
  }

  self->_appStoreRatingLaunchCount = v51;
  objc_opt_class();
  v53 = [(ICCloudConfiguration *)self overridableValueForKey:@"appStoreRatingLaunchDayPeriod" inConfigurationDictionary:v8];
  v54 = ICDynamicCast();

  v191 = v54;
  if (v54)
  {
    v55 = [v54 unsignedIntegerValue];
  }

  else
  {
    v56 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v56, OS_LOG_TYPE_DEFAULT, "Trying to create a cloud configuration with no app store rating launch day period", buf, 2u);
    }

    v55 = 30;
  }

  self->_appStoreRatingLaunchDayPeriod = v55;
  objc_opt_class();
  v57 = [(ICCloudConfiguration *)self overridableValueForKey:@"appStoreRatingOldestLaunchDayPeriod" inConfigurationDictionary:v8];
  v58 = ICDynamicCast();

  v190 = v58;
  if (v58)
  {
    v59 = [v58 unsignedIntegerValue];
  }

  else
  {
    v60 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v60, OS_LOG_TYPE_DEFAULT, "Trying to create a cloud configuration with no app store rating oldest launch day period", buf, 2u);
    }

    v59 = 7;
  }

  self->_appStoreRatingOldestLaunchDayPeriod = v59;
  objc_opt_class();
  v61 = [(ICCloudConfiguration *)self overridableValueForKey:@"appStoreRatingNoteCount" inConfigurationDictionary:v8];
  v62 = ICDynamicCast();

  v189 = v62;
  if (v62)
  {
    v63 = [v62 unsignedIntegerValue];
  }

  else
  {
    v64 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v64, OS_LOG_TYPE_DEFAULT, "Trying to create a cloud configuration with no app store rating note count", buf, 2u);
    }

    v63 = 100;
  }

  self->_appStoreRatingNoteCount = v63;
  objc_opt_class();
  v65 = [(ICCloudConfiguration *)self overridableValueForKey:@"appStoreRatingRequestDayPeriod" inConfigurationDictionary:v8];
  v66 = ICDynamicCast();

  v188 = v66;
  if (v66)
  {
    v67 = [v66 unsignedIntegerValue];
  }

  else
  {
    v68 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v68, OS_LOG_TYPE_DEFAULT, "Trying to create a cloud configuration with no app store rating request day period", buf, 2u);
    }

    v67 = 120;
  }

  self->_appStoreRatingRequestDayPeriod = v67;
  objc_opt_class();
  v69 = [(ICCloudConfiguration *)self overridableValueForKey:@"maxInlineAssetSizeBytes" inConfigurationDictionary:v8];
  v70 = ICDynamicCast();

  v187 = v70;
  if (v70)
  {
    v71 = [v70 unsignedIntegerValue];
  }

  else
  {
    v72 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v72, OS_LOG_TYPE_DEFAULT, "Trying to create a cloud configuration with no max inline asset size", buf, 2u);
    }

    v71 = 0x80000;
  }

  self->_maxInlineAssetSizeBytes = v71;
  objc_opt_class();
  v73 = [(ICCloudConfiguration *)self overridableValueForKey:@"maxAttachmentsPerNote" inConfigurationDictionary:v8];
  v74 = ICDynamicCast();

  v75 = os_log_create("com.apple.notes", "Cloud");
  v76 = os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT);
  v186 = v74;
  if (v74)
  {
    if (v76)
    {
      v77 = [v74 unsignedIntegerValue];
      *buf = 134217984;
      v209 = v77;
      _os_log_impl(&dword_214D51000, v75, OS_LOG_TYPE_DEFAULT, "Maximum attachments per note %lu", buf, 0xCu);
    }

    v78 = [v74 unsignedIntegerValue];
  }

  else
  {
    if (v76)
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v75, OS_LOG_TYPE_DEFAULT, "Trying to create a cloud configuration with no max attachments per note", buf, 2u);
    }

    v78 = 100;
  }

  self->_maxAttachmentsPerNote = v78;
  objc_opt_class();
  v79 = [(ICCloudConfiguration *)self overridableValueForKey:@"maxSubAttachmentsPerAttachment" inConfigurationDictionary:v8];
  v80 = ICDynamicCast();

  v185 = v80;
  if (v80)
  {
    v81 = [v80 unsignedIntegerValue];
  }

  else
  {
    v82 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v82, OS_LOG_TYPE_DEFAULT, "Trying to create a cloud configuration with no max sub attachments per attachment", buf, 2u);
    }

    v81 = 24;
  }

  self->_maxSubAttachmentsPerAttachment = v81;
  v83 = [v8 objectForKeyedSubscript:@"shouldSyncWhenEnteringForeground"];
  v84 = v83;
  if (v83)
  {
    v85 = [v83 objectForKeyedSubscript:@"iOS"];
    self->_shouldSyncWhenEnteringForeground = [v85 BOOLValue];
  }

  v184 = v84;
  objc_opt_class();
  v86 = [(ICCloudConfiguration *)self overridableValueForKey:@"maximumAttachmentSizeMB" inConfigurationDictionary:v8];
  v87 = ICDynamicCast();

  v183 = v87;
  if (v87)
  {
    v88 = v87;
  }

  else
  {
    v89 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v89, OS_LOG_TYPE_DEFAULT, "Trying to create a cloud configuration with no max attachment size", buf, 2u);
    }

    v88 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:0x4000];
  }

  maximumAttachmentSizeMB = self->_maximumAttachmentSizeMB;
  self->_maximumAttachmentSizeMB = v88;

  objc_opt_class();
  v91 = [(ICCloudConfiguration *)self overridableValueForKey:@"resultsLimitPerSyncOperation" inConfigurationDictionary:v8];
  v92 = ICDynamicCast();

  v182 = v92;
  if (v92)
  {
    v93 = [v92 unsignedIntegerValue];
  }

  else
  {
    v93 = 50;
  }

  self->_resultsLimitPerSyncOperation = v93;
  objc_opt_class();
  v94 = [(ICCloudConfiguration *)self overridableValueForKey:@"shouldPerformTopHit" inConfigurationDictionary:v8];
  v95 = ICDynamicCast();

  v181 = v95;
  if (v95)
  {
    self->_shouldPerformTopHitSearch = [v95 BOOLValue];
  }

  else
  {
    v96 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v96, OS_LOG_TYPE_DEFAULT, "Trying to create a cloud configuration not knowing whether or not the Top Hit Search Query should be enabled. Enabling it by default", buf, 2u);
    }

    self->_shouldPerformTopHitSearch = 1;
  }

  objc_opt_class();
  v97 = [(ICCloudConfiguration *)self overridableValueForKey:@"mentionNotificationMaxRetries" inConfigurationDictionary:v8];
  v98 = ICDynamicCast();

  v180 = v98;
  if (v98)
  {
    v99 = [v98 unsignedIntegerValue];
  }

  else
  {
    v100 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v100, OS_LOG_TYPE_DEFAULT, "Trying to create a cloud configuration with no mentionNotificationMaxRetries value", buf, 2u);
    }

    v99 = 10;
  }

  self->_mentionNotificationMaxRetries = v99;
  objc_opt_class();
  v101 = [(ICCloudConfiguration *)self overridableValueForKey:@"launchTaskMaxRetries" inConfigurationDictionary:v8];
  v102 = ICDynamicCast();

  if (v102)
  {
    v103 = [v102 unsignedIntegerValue];
  }

  else
  {
    v104 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v104, OS_LOG_TYPE_DEFAULT, "Trying to create a cloud configuration with no launchTaskMaxRetryNumber value", buf, 2u);
    }

    v103 = 10;
  }

  self->_launchTaskMaxRetries = v103;
  objc_opt_class();
  v105 = [(ICCloudConfiguration *)self overridableValueForKey:@"serverSideUpdateTaskMaxFailureCount" inConfigurationDictionary:v8];
  v106 = ICDynamicCast();

  v178 = v106;
  if (v106)
  {
    v107 = [v102 unsignedIntegerValue];
  }

  else
  {
    v108 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v108, OS_LOG_TYPE_DEFAULT, "Trying to create a cloud configuration with no serverSideUpdateTaskMaxFailureCount value", buf, 2u);
    }

    v107 = 10;
  }

  self->_serverSideUpdateTaskMaxFailureCount = v107;
  v109 = [v8 objectForKeyedSubscript:@"durationInSecondsForNextPasswordReask"];
  v177 = v109;
  if (v109)
  {
    v110 = [v109 unsignedIntegerValue];
  }

  else
  {
    v111 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v111, OS_LOG_TYPE_DEFAULT, "Trying to create a cloud configuration with no durationForNextPasswordReask value", buf, 2u);
    }

    v110 = 1209600;
  }

  self->_durationForNextPasswordReask = v110;
  objc_opt_class();
  v112 = [(ICCloudConfiguration *)self overridableValueForKey:@"unsupportedNoteDeviceCheckIntervalSeconds" inConfigurationDictionary:v8];
  v113 = ICDynamicCast();

  v176 = v113;
  if (v113)
  {
    v114 = [v113 unsignedIntegerValue];
  }

  else
  {
    v115 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v115, OS_LOG_TYPE_DEFAULT, "Trying to create a cloud configuration with no unsupportedNoteDeviceCheckIntervalSecondsNumber value", buf, 2u);
    }

    v114 = 86400;
  }

  self->_unsupportedNoteDeviceCheckIntervalSeconds = v114;
  objc_opt_class();
  v116 = [(ICCloudConfiguration *)self overridableValueForKey:@"requestUserNotificationAuthorizationAtLaunch" inConfigurationDictionary:v8];
  v117 = ICDynamicCast();

  v175 = v117;
  if (v117)
  {
    self->_requestUserNotificationAuthorizationAtLaunch = [v117 BOOLValue];
  }

  else
  {
    v118 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v118, OS_LOG_TYPE_DEFAULT, "Trying to create a cloud configuration with requestUserNotificationAuthorizationAtLaunch missing. We will check for shared objects before requesting authorization for user notifications at launch by default", buf, 2u);
    }

    self->_requestUserNotificationAuthorizationAtLaunch = 0;
  }

  objc_opt_class();
  v119 = [(ICCloudConfiguration *)self overridableValueForKey:@"fastSyncEnabled" inConfigurationDictionary:v8];
  v120 = ICDynamicCast();

  v174 = v120;
  if (v120)
  {
    self->_fastSyncEnabled = [v120 BOOLValue];
  }

  else
  {
    v121 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v121, OS_LOG_TYPE_DEFAULT, "Trying to create a cloud configuration with no fastSyncEnabled value", buf, 2u);
    }

    self->_fastSyncEnabled = 1;
  }

  objc_opt_class();
  v122 = [(ICCloudConfiguration *)self overridableValueForKey:@"fastSyncMaximumMessageSizeBytes" inConfigurationDictionary:v8];
  v123 = ICDynamicCast();

  v173 = v123;
  if (v123)
  {
    v124 = [v123 unsignedIntegerValue];
  }

  else
  {
    v125 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v125, OS_LOG_TYPE_DEFAULT, "Trying to create a cloud configuration with no fastSyncMaximumMessageSizeBytes value", buf, 2u);
    }

    v124 = 64000;
  }

  self->_fastSyncMaximumMessageSizeBytes = v124;
  objc_opt_class();
  v126 = [(ICCloudConfiguration *)self overridableValueForKey:@"fastSyncPaperKitEnablePCSEncryption" inConfigurationDictionary:v8];
  v127 = ICDynamicCast();

  v172 = v127;
  if (v127)
  {
    self->_fastSyncPaperKitEnablePCSEncryption = [v127 BOOLValue];
  }

  else
  {
    v128 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v128, OS_LOG_TYPE_DEFAULT, "Trying to create a cloud configuration with no fastSyncPaperKitEnablePCSEncryption value", buf, 2u);
    }

    self->_fastSyncPaperKitEnablePCSEncryption = 1;
  }

  objc_opt_class();
  v129 = [(ICCloudConfiguration *)self overridableValueForKey:@"fastSyncPaperKitEnableEphemeralRecords" inConfigurationDictionary:v8];
  v130 = ICDynamicCast();

  v171 = v130;
  if (v130)
  {
    self->_fastSyncPaperKitEnableEphemeralRecords = [v130 BOOLValue];
  }

  else
  {
    v131 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v131, OS_LOG_TYPE_DEFAULT, "Trying to create a cloud configuration with no fastSyncPaperKitEnableEphemeralRecords value", buf, 2u);
    }

    self->_fastSyncPaperKitEnableEphemeralRecords = 1;
  }

  objc_opt_class();
  v132 = [(ICCloudConfiguration *)self overridableValueForKey:@"fastSyncMaximumThumbnailMessageSizeBytes" inConfigurationDictionary:v8];
  v133 = ICDynamicCast();

  v179 = v102;
  if (v133)
  {
    v134 = [v133 unsignedIntegerValue];
  }

  else
  {
    v135 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v135, OS_LOG_TYPE_DEFAULT, "Trying to create a cloud configuration with no fastSyncMaximumThumbnailMessageSizeBytes value", buf, 2u);
    }

    v134 = 102400;
  }

  self->_fastSyncMaximumThumbnailMessageSizeBytes = v134;
  v136 = [(ICCloudConfiguration *)self overridableValueForKey:@"fastSyncPresenceDebounceDuration" inConfigurationDictionary:v8];
  v170 = v133;
  if (objc_opt_respondsToSelector())
  {
    [v136 doubleValue];
    if (v137 > 5.0)
    {
      v137 = 5.0;
    }

    v138 = fmax(v137, 0.25);
  }

  else
  {
    v139 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v209 = @"fastSyncPresenceDebounceDuration";
      _os_log_impl(&dword_214D51000, v139, OS_LOG_TYPE_DEFAULT, "Trying to create a cloud configuration with no %@ value", buf, 0xCu);
    }

    v138 = 1.0;
  }

  self->_fastSyncPresenceDebounceDuration = v138;
  objc_opt_class();
  v140 = [(ICCloudConfiguration *)self overridableValueForKey:@"keychainFetchingEnabled" inConfigurationDictionary:v8];
  v141 = ICDynamicCast();

  v168 = v141;
  if (v141)
  {
    self->_keychainFetchingEnabled = [v141 BOOLValue];
  }

  else
  {
    v142 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v209 = @"keychainFetchingEnabled";
      _os_log_impl(&dword_214D51000, v142, OS_LOG_TYPE_DEFAULT, "Trying to create a cloud configuration with no %@ value", buf, 0xCu);
    }

    self->_keychainFetchingEnabled = 1;
  }

  objc_opt_class();
  v143 = [(ICCloudConfiguration *)self overridableValueForKey:@"keychainFetchErrorTimeout" inConfigurationDictionary:v8];
  v144 = ICDynamicCast();

  v169 = v136;
  if (v144)
  {
    [v144 doubleValue];
  }

  else
  {
    v146 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v209 = @"keychainFetchErrorTimeout";
      _os_log_impl(&dword_214D51000, v146, OS_LOG_TYPE_DEFAULT, "Trying to create a cloud configuration with no %@ value", buf, 0xCu);
    }

    v145 = 300.0;
  }

  self->_keychainFetchErrorTimeout = v145;
  objc_opt_class();
  v147 = [(ICCloudConfiguration *)self overridableValueForKey:@"keychainMinimumSyncInterval" inConfigurationDictionary:v8];
  v148 = ICDynamicCast();

  if (v148)
  {
    [v148 doubleValue];
  }

  else
  {
    v150 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v209 = @"keychainMinimumSyncInterval";
      _os_log_impl(&dword_214D51000, v150, OS_LOG_TYPE_DEFAULT, "Trying to create a cloud configuration with no %@ value", buf, 0xCu);
    }

    v149 = 3600.0;
  }

  self->_keychainMinimumSyncInterval = v149;
  objc_opt_class();
  v151 = [(ICCloudConfiguration *)self overridableValueForKey:@"keychainMaximumSyncInterval" inConfigurationDictionary:v8];
  v152 = ICDynamicCast();

  if (v152)
  {
    [v152 doubleValue];
  }

  else
  {
    v154 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v209 = @"keychainMaximumSyncInterval";
      _os_log_impl(&dword_214D51000, v154, OS_LOG_TYPE_DEFAULT, "Trying to create a cloud configuration with no %@ value", buf, 0xCu);
    }

    v153 = 3600.0;
    self = v197;
  }

  self->_keychainMaximumSyncInterval = v153;
  objc_opt_class();
  v155 = [(ICCloudConfiguration *)self overridableValueForKey:@"audioTranscriptPostProcessingEnabled" inConfigurationDictionary:v8];
  v156 = ICDynamicCast();

  if (v156)
  {
    self->_audioTranscriptPostProcessingEnabled = [v156 BOOLValue];
  }

  else
  {
    v157 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v157, OS_LOG_TYPE_DEFAULT, "Trying to create a cloud configuration with no audioTranscriptPostProcessingEnabled value", buf, 2u);
    }

    self = v197;
    v197->_audioTranscriptPostProcessingEnabled = 1;
  }

  objc_opt_class();
  v158 = [(ICCloudConfiguration *)self overridableValueForKey:@"searchSubstringMatchingEnabled" inConfigurationDictionary:v8];
  v159 = ICDynamicCast();

  if (v159)
  {
    self->_searchSubstringMatchingEnabled = [v159 BOOLValue];
  }

  else
  {
    v160 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_214D51000, v160, OS_LOG_TYPE_DEFAULT, "Trying to create a cloud configuration with no searchSubstringMatchingEnabled value", buf, 2u);
    }

    self = v197;
    v197->_searchSubstringMatchingEnabled = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  v161 = MEMORY[0x277CCAB88];
  v206[0] = @"ICCloudConfigurationDictionary";
  v206[1] = @"ICCloudConfigurationUserDefaults";
  v207[0] = v8;
  v162 = self->_userDefaults;
  v207[1] = v162;
  v163 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v207 forKeys:v206 count:2];
  v164 = [v161 notificationWithName:@"ICCloudConfigurationChanged" object:self userInfo:v163];

  v165 = MEMORY[0x277D85CD0];
  v166 = MEMORY[0x277D85CD0];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__ICCloudConfiguration_setConfigurationFromDictionary___block_invoke;
  block[3] = &unk_278194B00;
  v167 = v164;
  v201 = v167;
  dispatch_async(v165, block);
}

void __55__ICCloudConfiguration_setConfigurationFromDictionary___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotification:*(a1 + 32)];
}

+ (void)loadSharedConfigurationWithQoSClass:(unsigned int)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = +[ICCloudConfiguration cloudConfigurationQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __94__ICCloudConfiguration_SharedInstance__loadSharedConfigurationWithQoSClass_completionHandler___block_invoke;
  v10[3] = &unk_2781966B8;
  v11 = v6;
  v12 = a1;
  v8 = v6;
  v9 = dispatch_block_create_with_qos_class(0, a3, 0, v10);
  dispatch_async(v7, v9);
}

void __94__ICCloudConfiguration_SharedInstance__loadSharedConfigurationWithQoSClass_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) sharedConfiguration];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v2;
    (*(v3 + 16))();
    v2 = v4;
  }
}

- (id)overridableValueForKey:(id)a3 inConfigurationDictionary:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  if (self)
  {
    userDefaults = self->_userDefaults;
  }

  else
  {
    userDefaults = 0;
  }

  v10 = [v8 overridableValueForKey:v7 inConfigurationDictionary:v6 userDefaults:userDefaults];

  return v10;
}

- (void)setDownloadTimer:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 232), a2);
  }
}

- (void)dealloc
{
  v2 = self;
  if (self)
  {
    self = self->_downloadTimer;
  }

  [(ICCloudConfiguration *)self invalidate];
  v3.receiver = v2;
  v3.super_class = ICCloudConfiguration;
  [(ICCloudConfiguration *)&v3 dealloc];
}

void __77__ICCloudConfiguration_downloadConfigurationFromRemoteURL_completionHandler___block_invoke_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Error downloading remote configuration plist: %@", v4, v5, v6, v7, v8);
}

void __77__ICCloudConfiguration_downloadConfigurationFromRemoteURL_completionHandler___block_invoke_cold_2(void *a1)
{
  v1 = [MEMORY[0x277CCAA40] localizedStringForStatusCode:{objc_msgSend(a1, "statusCode")}];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Connected to remote configuration plist server but got back non 200 response: %@", v4, v5, v6, v7, v8);
}

void __77__ICCloudConfiguration_downloadConfigurationFromRemoteURL_completionHandler___block_invoke_cold_3(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_214D51000, v2, v3, "Error serializing plist data to dictionary: %@", v4, v5, v6, v7, v8);
}

- (void)loadConfigurationFromURL:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_214D51000, v0, OS_LOG_TYPE_DEBUG, "Loading cloud configuration from URL: %@", v1, 0xCu);
}

- (void)loadConfigurationFromURL:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_214D51000, v0, OS_LOG_TYPE_ERROR, "Failed to load cloud configuration dictionary from URL: %@", v1, 0xCu);
}

@end