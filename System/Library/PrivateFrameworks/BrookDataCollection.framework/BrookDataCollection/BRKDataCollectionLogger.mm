@interface BRKDataCollectionLogger
+ (id)sharedInstance;
- (BOOL)_dataCollectionEnabled;
- (BOOL)_shouldAllowDataCollectionUpload;
- (id)_deviceIdentifier;
- (id)_init;
- (id)_internalDeviceIdentifier;
- (id)_pathExtension:(id)a3;
- (id)_stringByRemovingPathExtension:(id)a3;
- (id)markFileForUpload:(id)a3;
- (void)_forceUpload;
- (void)_logUploadWithPath:(id)a3;
- (void)_purgeFilesForOSUpdate;
- (void)_purgeOutdatedFiles;
- (void)_refreshExternalDeviceMetadata;
- (void)_scheduleUploadTimer;
- (void)clearCollectedData;
- (void)dealloc;
@end

@implementation BRKDataCollectionLogger

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[BRKDataCollectionLogger sharedInstance];
  }

  v3 = sharedInstance_SharedLogger;

  return v3;
}

uint64_t __41__BRKDataCollectionLogger_sharedInstance__block_invoke()
{
  sharedInstance_SharedLogger = [[BRKDataCollectionLogger alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v26.receiver = self;
  v26.super_class = BRKDataCollectionLogger;
  v2 = [(BRKDataCollectionLogger *)&v26 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = +[BRKDataCollectionBundle defaultLogDirectory];
    storageDirectory = v3->_storageDirectory;
    v3->_storageDirectory = v4;

    v6 = MEMORY[0x277CBEB18];
    v7 = [(BRKDataCollectionLogger *)v3 _idsFileListPath];
    v8 = [v6 arrayWithContentsOfFile:v7];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [MEMORY[0x277CBEB18] array];
    }

    idsFilesList = v3->_idsFilesList;
    v3->_idsFilesList = v10;

    v12 = objc_alloc_init(MEMORY[0x277CCA968]);
    dateFormatter = v3->_dateFormatter;
    v3->_dateFormatter = v12;

    v14 = v3->_dateFormatter;
    v15 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"UTC"];
    [(NSDateFormatter *)v14 setTimeZone:v15];

    [(NSDateFormatter *)v3->_dateFormatter setDateFormat:@"yyyy/MM/dd/HH/mm"];
    v16 = BRKCreateDispatchQueue();
    queue = v3->_queue;
    v3->_queue = v16;

    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    v19 = BRKSignificantTimeChangeNotification();
    [v18 addObserver:v3 selector:sel__purgeOutdatedFiles name:v19 object:0];

    if ((BRKIsInternalBuild() & 1) == 0)
    {
      v20 = [MEMORY[0x277CCAD78] UUID];
      v21 = [v20 UUIDString];
      externalDailyDeviceIdentifier = v3->_externalDailyDeviceIdentifier;
      v3->_externalDailyDeviceIdentifier = v21;

      v23 = [MEMORY[0x277CCAB98] defaultCenter];
      v24 = BRKSignificantTimeChangeNotification();
      [v23 addObserver:v3 selector:sel__refreshExternalDeviceMetadata name:v24 object:0];
    }

    [(BRKDataCollectionLogger *)v3 _purgeOutdatedFiles];
    [(BRKDataCollectionLogger *)v3 _scheduleUploadTimer];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v5.receiver = self;
  v5.super_class = BRKDataCollectionLogger;
  [(BRKDataCollectionLogger *)&v5 dealloc];
}

- (id)_internalDeviceIdentifier
{
  v2 = CFPreferencesCopyAppValue(@"DCDeviceId", @"com.apple.dcservices");
  if (!v2)
  {
    v3 = [MEMORY[0x277CCAD78] UUID];
    v2 = [v3 UUIDString];

    CFPreferencesSetAppValue(@"DCDeviceId", v2, @"com.apple.dcservices");
    CFPreferencesAppSynchronize(@"com.apple.dcservices");
  }

  return v2;
}

- (id)_deviceIdentifier
{
  if (BRKIsInternalBuild())
  {
    v3 = [(BRKDataCollectionLogger *)self _internalDeviceIdentifier];
  }

  else
  {
    v3 = self->_externalDailyDeviceIdentifier;
  }

  return v3;
}

- (void)_refreshExternalDeviceMetadata
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = BRKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15 = @"Refreshing device identifier and session upload count after significant time change.";
    _os_log_impl(&dword_241ED9000, v3, OS_LOG_TYPE_INFO, "%@", &v14, 0xCu);
  }

  v4 = BRKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    externalDailyDeviceIdentifier = self->_externalDailyDeviceIdentifier;
    externalDailySessionUploadCount = self->_externalDailySessionUploadCount;
    v14 = 138412546;
    v15 = externalDailyDeviceIdentifier;
    v16 = 2048;
    v17 = externalDailySessionUploadCount;
    _os_log_impl(&dword_241ED9000, v4, OS_LOG_TYPE_INFO, "Current device identifier: %@, session upload count: %lu", &v14, 0x16u);
  }

  v7 = [MEMORY[0x277CCAD78] UUID];
  v8 = [v7 UUIDString];
  v9 = self->_externalDailyDeviceIdentifier;
  self->_externalDailyDeviceIdentifier = v8;

  self->_externalDailySessionUploadCount = 0;
  v10 = BRKLoggingObjectForDomain();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = self->_externalDailyDeviceIdentifier;
    v12 = self->_externalDailySessionUploadCount;
    v14 = 138412546;
    v15 = v11;
    v16 = 2048;
    v17 = v12;
    _os_log_impl(&dword_241ED9000, v10, OS_LOG_TYPE_INFO, "Refreshed device identifier: %@, session upload count: %lu", &v14, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_purgeFilesForOSUpdate
{
  if ([(BRKDataCollectionLogger *)self _dataCollectionIsAllowedToRunInCurrentProcess])
  {
    v8 = BRKBuildVersion();
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.brook"];
    v4 = [v3 stringForKey:@"DataCollectionLoggerBuild"];
    v5 = [v4 isEqualToString:v8];

    if ((v5 & 1) == 0)
    {
      v6 = [MEMORY[0x277CCAA00] defaultManager];
      [v6 removeItemAtPath:self->_storageDirectory error:0];

      v7 = [MEMORY[0x277CCAA00] defaultManager];
      [v7 createDirectoryAtPath:self->_storageDirectory withIntermediateDirectories:1 attributes:0 error:0];

      [v3 setObject:v8 forKey:@"DataCollectionLoggerBuild"];
    }
  }
}

- (void)_purgeOutdatedFiles
{
  v32 = *MEMORY[0x277D85DE8];
  if ([(BRKDataCollectionLogger *)self _dataCollectionIsAllowedToRunInCurrentProcess])
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:self->_storageDirectory];
    v5 = [v3 enumeratorAtURL:v4 includingPropertiesForKeys:0 options:0 errorHandler:0];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          v13 = BRKFileModifiedDate();
          [v13 timeIntervalSinceNow];
          v15 = fabs(v14);

          if (v15 > 259200.0)
          {
            v16 = [MEMORY[0x277CCAA00] defaultManager];
            v22 = v9;
            v17 = [v16 removeItemAtURL:v12 error:&v22];
            v18 = v22;

            if ((v17 & 1) == 0)
            {
              v19 = BRKLoggingObjectForDomain();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v28 = v12;
                v29 = 2112;
                v30 = v18;
                _os_log_error_impl(&dword_241ED9000, v19, OS_LOG_TYPE_ERROR, "Unable to remove stale file %@ %@", buf, 0x16u);
              }
            }

            v9 = v18;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v20 = BRKLoggingObjectForDomain();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241ED9000, v20, OS_LOG_TYPE_DEFAULT, "Purged outdated log files", buf, 2u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_stringByRemovingPathExtension:(id)a3
{
  v3 = a3;
  if ([v3 hasSuffix:@".tar.gz"])
  {
    [v3 substringToIndex:{objc_msgSend(v3, "length") - objc_msgSend(@".tar.gz", "length")}];
  }

  else
  {
    [v3 stringByDeletingPathExtension];
  }
  v4 = ;

  return v4;
}

- (id)_pathExtension:(id)a3
{
  v3 = a3;
  if ([v3 hasSuffix:@".tar.gz"])
  {
    v4 = @"tar";
  }

  else
  {
    v4 = [v3 pathExtension];
  }

  return v4;
}

- (id)markFileForUpload:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = BRKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v4;
    _os_log_impl(&dword_241ED9000, v5, OS_LOG_TYPE_DEFAULT, "Mark file for upload: %@", buf, 0xCu);
  }

  if ([(BRKDataCollectionLogger *)self _dataCollectionIsAllowedToRunInCurrentProcess])
  {
    v6 = [MEMORY[0x277CBEAA8] date];
    v7 = [v4 lastPathComponent];
    v8 = [(BRKDataCollectionLogger *)self _stringByRemovingPathExtension:v7];

    v9 = [v8 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

    v10 = MEMORY[0x277CCACA8];
    [v6 timeIntervalSinceReferenceDate];
    v12 = [v10 stringWithFormat:@"%@-%@-%@-%@-%f", @"brook", @"archive", @"Carousel", v9, v11];
    v13 = [(BRKDataCollectionLogger *)self _pathExtension:v4];
    v14 = [v12 stringByAppendingPathExtension:v13];

    v15 = [(NSString *)self->_storageDirectory stringByAppendingPathComponent:v14];
    v16 = [MEMORY[0x277CCAA00] defaultManager];
    v25 = 0;
    v17 = [v16 copyItemAtPath:v4 toPath:v15 error:&v25];
    v18 = v25;

    v19 = BRKLoggingObjectForDomain();
    v20 = v19;
    if (v17)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_241ED9000, v20, OS_LOG_TYPE_DEFAULT, "Marking session for upload", buf, 2u);
      }

      if ([(BRKDataCollectionLogger *)self _shouldAllowDataCollectionUpload])
      {
        os_unfair_lock_lock(&self->_lock);
        [(BRKDataCollectionLogger *)self _logUploadWithPath:v15];
        os_unfair_lock_unlock(&self->_lock);
        [(BRKDataCollectionLogger *)self _scheduleUploadTimer];
        v21 = [MEMORY[0x277CBEBC0] fileURLWithPath:v15];
        BRKMarkFilePurgeable();

        v22 = v15;
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(BRKDataCollectionLogger *)v4 markFileForUpload:v18, v20];
      }
    }

    v22 = 0;
    goto LABEL_16;
  }

  v6 = BRKLoggingObjectForDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241ED9000, v6, OS_LOG_TYPE_DEFAULT, "Not running in correct process", buf, 2u);
  }

  v22 = 0;
LABEL_17:

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (void)clearCollectedData
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_241ED9000, a2, OS_LOG_TYPE_ERROR, "Unable to clear collected data %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (BOOL)_dataCollectionEnabled
{
  v2 = [MEMORY[0x277CF3480] settingsForActiveDevice];
  v3 = [v2 isDataCollectionEnabled];

  return v3;
}

- (BOOL)_shouldAllowDataCollectionUpload
{
  if ([(BRKDataCollectionLogger *)self _dataCollectionIsAllowedToRunInCurrentProcess])
  {
    os_unfair_lock_lock(&self->_lock);
    if ([(BRKDataCollectionLogger *)self _dataCollectionEnabled])
    {
      if ((BRKIsInternalBuild() & 1) == 0)
      {
        externalDailySessionUploadCount = self->_externalDailySessionUploadCount;
        if (externalDailySessionUploadCount >= 5)
        {
          v4 = BRKLoggingObjectForDomain();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
          {
            *v8 = 0;
            _os_log_impl(&dword_241ED9000, v4, OS_LOG_TYPE_DEFAULT, "Data collection hit daily limit", v8, 2u);
          }

          goto LABEL_8;
        }

        self->_externalDailySessionUploadCount = externalDailySessionUploadCount + 1;
      }

      v5 = 1;
      goto LABEL_14;
    }

LABEL_8:
    v5 = 0;
LABEL_14:
    os_unfair_lock_unlock(&self->_lock);
    return v5;
  }

  v6 = BRKLoggingObjectForDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241ED9000, v6, OS_LOG_TYPE_DEFAULT, "Data collection not running in correct process", buf, 2u);
  }

  return 0;
}

- (void)_logUploadWithPath:(id)a3
{
  v6 = a3;
  if ([(BRKDataCollectionLogger *)self _dataCollectionEnabled])
  {
    [(NSMutableArray *)self->_idsFilesList addObject:v6];
    idsFilesList = self->_idsFilesList;
    v5 = [(BRKDataCollectionLogger *)self _idsFileListPath];
    [(NSMutableArray *)idsFilesList writeToFile:v5 atomically:1];
  }
}

- (void)_forceUpload
{
  v3 = BRKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_241ED9000, v3, OS_LOG_TYPE_DEFAULT, "Force uploading data collection logs", v4, 2u);
  }

  [(BRKDataCollectionLogger *)self _triggerUpload:1];
}

- (void)_scheduleUploadTimer
{
  v3 = objc_alloc_init(BRKDataCollectionScheduler);
  uploadScheduler = self->_uploadScheduler;
  self->_uploadScheduler = v3;

  objc_initWeak(&location, self);
  v5 = self->_uploadScheduler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__BRKDataCollectionLogger__scheduleUploadTimer__block_invoke;
  v6[3] = &unk_278D27E98;
  objc_copyWeak(&v7, &location);
  [(BRKDataCollectionScheduler *)v5 schedule:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __47__BRKDataCollectionLogger__scheduleUploadTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _triggerUpload:0];
}

- (void)markFileForUpload:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_241ED9000, log, OS_LOG_TYPE_ERROR, "Unable to move file for upload %@ %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end