@interface MADPhotosFullTaskProvider
- (BOOL)assetsDownloadAllowed;
- (BOOL)checkCompatibilityForAsset:(id)asset;
- (MADPhotosFullTaskProvider)initWithPhotoLibrary:(id)library cancelBlock:(id)block progressReporter:(id)reporter mediaType:(int64_t)type mediaSubtype:(unint64_t)subtype imageOnlyAnalysis:(BOOL)analysis;
- (id)assetPriorities;
- (id)assetTaskWithAnalysisDatabase:(id)database;
- (id)mediaTypePredicatesString;
- (id)nextAssetProcessingTask;
- (id)nextClusterProcessingTask;
- (id)nextDownloadAssetProcessingTask;
- (unint64_t)batchAssetCount;
- (unint64_t)iterations;
- (unint64_t)photosMediaProcessingTaskID;
- (unint64_t)priority;
- (unint64_t)processingStatusTaskID;
- (void)increaseProcessedJobCountByOne;
- (void)retireTask:(id)task;
@end

@implementation MADPhotosFullTaskProvider

- (unint64_t)priority
{
  if (self->_imageOnlyAnalysis)
  {
    v3 = 10;
  }

  else
  {
    v3 = 0;
  }

  photoLibrary = [(MADPhotosTaskProvider *)self photoLibrary];
  isSystemPhotoLibrary = [photoLibrary isSystemPhotoLibrary];

  if (isSystemPhotoLibrary)
  {
    return v3 + 2;
  }

  photoLibrary2 = [(MADPhotosTaskProvider *)self photoLibrary];
  vcp_isSyndicationLibrary = [photoLibrary2 vcp_isSyndicationLibrary];

  return v3 | vcp_isSyndicationLibrary;
}

- (unint64_t)iterations
{
  if (self->_imageOnlyAnalysis)
  {
    return 30;
  }

  else
  {
    return 1;
  }
}

- (unint64_t)batchAssetCount
{
  if (self->_imageOnlyAnalysis)
  {
    return 100;
  }

  else
  {
    return 10;
  }
}

- (unint64_t)processingStatusTaskID
{
  if (self->_imageOnlyAnalysis)
  {
    return 255;
  }

  else
  {
    return 1;
  }
}

- (unint64_t)photosMediaProcessingTaskID
{
  if (self->_imageOnlyAnalysis)
  {
    return 17;
  }

  else
  {
    return 1;
  }
}

- (BOOL)checkCompatibilityForAsset:(id)asset
{
  assetCopy = asset;
  v5 = assetCopy;
  if (!self->_imageOnlyAnalysis)
  {
    mediaType = self->_mediaType;
    if (mediaType != [assetCopy mediaType] || objc_msgSend(v5, "mad_isNonLivePhotoImage"))
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v11 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v11))
        {
          logPrefix = self->_logPrefix;
          logDescription = self->_logDescription;
          localIdentifier = [v5 localIdentifier];
          mediaType = [v5 mediaType];
          mediaSubtypes = [v5 mediaSubtypes];
          v17 = self->_mediaType;
          mediaSubtype = self->_mediaSubtype;
          v21 = 138413826;
          v22 = logPrefix;
          v23 = 2112;
          v24 = logDescription;
          v25 = 2112;
          v26 = localIdentifier;
          v27 = 2048;
          v28 = mediaType;
          v29 = 2048;
          v30 = mediaSubtypes;
          v31 = 2048;
          v32 = v17;
          v33 = 2048;
          v34 = mediaSubtype;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "%@[%@][%@] Incompatible asset(mediaType %ld, mediaSubtypes %ld) for taskProvider(mediaType %ld, mediaSubtypes %ld)", &v21, 0x48u);
        }
      }

      goto LABEL_13;
    }

LABEL_14:
    v19 = 1;
    goto LABEL_15;
  }

  if ((DeviceWithGreymatterSupport() & 1) != 0 || ([v5 vcp_isLivePhoto] & 1) == 0 && !objc_msgSend(v5, "isVideo"))
  {
    goto LABEL_14;
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v6 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      v7 = self->_logPrefix;
      v8 = self->_logDescription;
      localIdentifier2 = [v5 localIdentifier];
      v21 = 138412802;
      v22 = v7;
      v23 = 2112;
      v24 = v8;
      v25 = 2112;
      v26 = localIdentifier2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "%@[%@][%@] Skip processing Live Photos/Movies during full image-only processing on non-GM device", &v21, 0x20u);
    }
  }

LABEL_13:
  v19 = 0;
LABEL_15:

  return v19;
}

- (MADPhotosFullTaskProvider)initWithPhotoLibrary:(id)library cancelBlock:(id)block progressReporter:(id)reporter mediaType:(int64_t)type mediaSubtype:(unint64_t)subtype imageOnlyAnalysis:(BOOL)analysis
{
  analysisCopy = analysis;
  libraryCopy = library;
  blockCopy = block;
  reporterCopy = reporter;
  v29.receiver = self;
  v29.super_class = MADPhotosFullTaskProvider;
  v16 = [(MADPhotosTaskProvider *)&v29 initWithPhotoLibrary:libraryCopy cancelBlock:blockCopy];
  v17 = v16;
  if (v16)
  {
    v16->_mediaType = type;
    v16->_mediaSubtype = subtype;
    v16->_imageOnlyAnalysis = analysisCopy;
    objc_storeStrong(&v16->_progressReporter, reporter);
    vcp_description = [libraryCopy vcp_description];
    v19 = [NSString stringWithFormat:@"[%@][%@]", vcp_description, objc_opt_class()];
    logPrefix = v17->_logPrefix;
    v17->_logPrefix = v19;

    atomic_store(0, &v17->_shouldPerformClustering);
    mediaType = v17->_mediaType;
    if (mediaType == 2)
    {
      v25 = &stru_1002890F8;
      if (analysisCopy)
      {
        v25 = @"|ImageOnly";
      }

      v24 = [NSString stringWithFormat:@"Full|Movie%@", v25];
      goto LABEL_13;
    }

    if (mediaType == 1)
    {
      v22 = @"Image";
      if (v17->_mediaSubtype == 8)
      {
        v22 = @"LivePhoto";
      }

      if (v17->_mediaSubtype == 8 && analysisCopy)
      {
        v23 = @"|ImageOnly";
      }

      else
      {
        v23 = &stru_1002890F8;
      }

      v24 = [NSString stringWithFormat:@"Full|%@%@", v22, v23];
LABEL_13:
      logDescription = v17->_logDescription;
      v17->_logDescription = v24;
    }
  }

  return v17;
}

- (id)mediaTypePredicatesString
{
  if (self->_imageOnlyAnalysis)
  {
    v2 = 0;
  }

  else if ((+[MADManagedProcessingStatus isMACDPersistEnabled](MADManagedProcessingStatus, "isMACDPersistEnabled") & 1) != 0 || +[MADManagedProcessingStatus isMACDReadEnabled])
  {
    v2 = [MADManagedProcessingStatus assetTypePredicatesStringWithMediaType:self->_mediaType mediaSubtypes:self->_mediaSubtype];
  }

  else
  {
    v2 = [VCPDatabaseWriter assetTypePredicatesStringWithMediaType:self->_mediaType mediaSubtypes:self->_mediaSubtype imageOnlyAnalysis:self->_imageOnlyAnalysis];
  }

  return v2;
}

- (void)increaseProcessedJobCountByOne
{
  progressReporter = self->_progressReporter;
  if (progressReporter)
  {
    [(VCPProgressReporter *)progressReporter increaseProcessedJobCountByOne];
  }
}

- (id)assetPriorities
{
  if (self->_imageOnlyAnalysis)
  {
    return &off_100296140;
  }

  mediaType = self->_mediaType;
  if (mediaType == 2)
  {
    return &off_100296170;
  }

  if (mediaType == 1 && self->_mediaSubtype == 8)
  {
    return &off_100296158;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v5 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      logPrefix = self->_logPrefix;
      logDescription = self->_logDescription;
      v8 = self->_mediaType;
      mediaSubtype = self->_mediaSubtype;
      imageOnlyAnalysis = self->_imageOnlyAnalysis;
      v11 = 138413314;
      v12 = logPrefix;
      v13 = 2112;
      v14 = logDescription;
      v15 = 2048;
      v16 = v8;
      v17 = 2048;
      v18 = mediaSubtype;
      v19 = 1024;
      v20 = imageOnlyAnalysis;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@[%@] Invalid task provider, mediaType %lu, mediaSubtype %lu, imageOnly %d", &v11, 0x30u);
    }
  }

  return 0;
}

- (BOOL)assetsDownloadAllowed
{
  if (self->_imageOnlyAnalysis)
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v3 = VCPLogToOSLogType[7];
      v4 = os_log_type_enabled(&_os_log_default, v3);
      if (v4)
      {
        logPrefix = self->_logPrefix;
        logDescription = self->_logDescription;
        v17 = 138412546;
        v18 = logPrefix;
        v19 = 2112;
        v20 = logDescription;
        v7 = " %@[%@] Asset downloading is not allowed: image only analysis";
LABEL_14:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v3, v7, &v17, 0x16u);
        goto LABEL_15;
      }

      return v4;
    }

LABEL_15:
    LOBYTE(v4) = 0;
    return v4;
  }

  photoLibrary = [(MADPhotosTaskProvider *)self photoLibrary];
  vcp_isCPLEnabled = [photoLibrary vcp_isCPLEnabled];

  if (vcp_isCPLEnabled)
  {
    v10 = +[VCPInternetReachability sharedInstance];
    hasWifiOrEthernetConnection = [v10 hasWifiOrEthernetConnection];

    if (hasWifiOrEthernetConnection)
    {
      LOBYTE(v4) = 1;
      return v4;
    }

    if (MediaAnalysisLogLevel() >= 6)
    {
      v3 = VCPLogToOSLogType[6];
      v4 = os_log_type_enabled(&_os_log_default, v3);
      if (v4)
      {
        v14 = self->_logPrefix;
        v15 = self->_logDescription;
        v17 = 138412546;
        v18 = v14;
        v19 = 2112;
        v20 = v15;
        v7 = " %@[%@] Asset downloading is not allowed: Wifi/Ethernet connection unavailable";
        goto LABEL_14;
      }

      return v4;
    }

    goto LABEL_15;
  }

  if (MediaAnalysisLogLevel() < 7)
  {
    goto LABEL_15;
  }

  v3 = VCPLogToOSLogType[7];
  v4 = os_log_type_enabled(&_os_log_default, v3);
  if (v4)
  {
    v12 = self->_logPrefix;
    v13 = self->_logDescription;
    v17 = 138412546;
    v18 = v12;
    v19 = 2112;
    v20 = v13;
    v7 = " %@[%@] Asset downloading is not allowed: iCPL disabled";
    goto LABEL_14;
  }

  return v4;
}

- (id)assetTaskWithAnalysisDatabase:(id)database
{
  databaseCopy = database;
  photoLibrary = [(MADPhotosTaskProvider *)self photoLibrary];
  progressReporter = self->_progressReporter;
  mediaType = self->_mediaType;
  mediaSubtype = self->_mediaSubtype;
  imageOnlyAnalysis = self->_imageOnlyAnalysis;
  LOBYTE(v12) = [(MADPhotosFullTaskProvider *)self assetsDownloadAllowed];
  v10 = [MADPhotosFullAssetProcessingTask taskWithAnalysisDatabase:databaseCopy photoLibrary:photoLibrary progressReporter:progressReporter mediaType:mediaType mediaSubtype:mediaSubtype imageOnlyAnalysis:imageOnlyAnalysis downloadAllowed:v12];

  return v10;
}

- (id)nextAssetProcessingTask
{
  v3 = objc_alloc_init(VCPTimeMeasurement);
  [v3 start];
  v9.receiver = self;
  v9.super_class = MADPhotosFullTaskProvider;
  nextAssetProcessingTask = [(MADPhotosTaskProvider *)&v9 nextAssetProcessingTask];
  [v3 stop];
  v5 = VCPCoreAnalyticsFieldForFull(self->_imageOnlyAnalysis, self->_mediaType, self->_mediaSubtype, 0);
  if (v5)
  {
    v6 = +[VCPMADCoreAnalyticsManager sharedManager];
    [v3 elapsedTimeSeconds];
    [v6 accumulateDoubleValue:v5 forField:@"com.apple.mediaanalysisd.FullAnalysisRunSession" andEvent:?];
  }

  if (nextAssetProcessingTask)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_fetchedP1AssetCount += [nextAssetProcessingTask p1AssetCount];
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_1000B8C80(self);
    }

    v7 = nextAssetProcessingTask;
  }

  return nextAssetProcessingTask;
}

- (id)nextDownloadAssetProcessingTask
{
  if (self->_imageOnlyAnalysis)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v3 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v3))
      {
        logPrefix = self->_logPrefix;
        logDescription = self->_logDescription;
        *buf = 138412546;
        v10 = logPrefix;
        v11 = 2112;
        v12 = logDescription;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "%@[%@] Image only analysis; skip download task", buf, 0x16u);
      }
    }

    nextDownloadAssetProcessingTask = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MADPhotosFullTaskProvider;
    nextDownloadAssetProcessingTask = [(MADPhotosTaskProvider *)&v8 nextDownloadAssetProcessingTask];
  }

  return nextDownloadAssetProcessingTask;
}

- (id)nextClusterProcessingTask
{
  v2 = atomic_load(&self->_shouldPerformClustering);
  if (v2)
  {
    v4 = 0;
    atomic_store(0, &self->_shouldPerformClustering);
    v5 = atomic_load(&self->_isFullImageP1Processed);
    if (v5)
    {
      if (+[MADManagedKeyValueStore isMACDReadEnabled])
      {
        photoLibrary = [(MADPhotosTaskProvider *)self photoLibrary];
        mad_fetchRequest = [photoLibrary mad_fetchRequest];
        [mad_fetchRequest dataStoreValueForKey:VCPKeyValueMediaAnalysisImagePriority1LastFullModeClusterTimestamp];

        v4 = 1;
      }

      else
      {
        photoLibrary2 = [(MADPhotosTaskProvider *)self photoLibrary];
        v9 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:photoLibrary2];

        v10 = [v9 valueForKey:VCPKeyValueMediaAnalysisImagePriority1LastFullModeClusterTimestamp];
        v4 = v10 == 0;
      }
    }

    if (MediaAnalysisLogLevel() >= 6)
    {
      v11 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v11))
      {
        logPrefix = self->_logPrefix;
        logDescription = self->_logDescription;
        v14 = @"without";
        if (v4)
        {
          v14 = @"with";
        }

        *buf = 138412802;
        v36 = logPrefix;
        v37 = 2112;
        v38 = logDescription;
        v39 = 2112;
        v40 = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "%@[%@] Requesting cluster processing %@ progress query from Photos database", buf, 0x20u);
      }
    }

    if (!_os_feature_enabled_impl())
    {
      photoLibrary3 = [(MADPhotosTaskProvider *)self photoLibrary];
      v26 = [MADPhotosFullClusterProcessingTask taskWithPhotoLibrary:photoLibrary3];

      [v26 setRequiresProgressQuery:v4];
      goto LABEL_33;
    }

    v15 = +[NSProcessInfo processInfo];
    processName = [v15 processName];

    if (![processName isEqualToString:@"mediaanalysisd"])
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v27 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v27))
        {
          v28 = self->_logPrefix;
          *buf = 138412290;
          v36 = v28;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "%@ Skip submitting from service daemon", buf, 0xCu);
        }
      }

      goto LABEL_26;
    }

    v17 = +[MADPhotosFullClusterBackgroundSystemTask identifier];
    v18 = +[MADPhotosFullClusterBackgroundSystemTask sharedTask];
    v34 = 0;
    [v18 submitTask:&v34];
    v19 = v34;

    if (v19)
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_25;
      }

      v20 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v20))
      {
        goto LABEL_25;
      }

      v21 = self->_logPrefix;
      *buf = 138412802;
      v36 = v21;
      v37 = 2112;
      v38 = v17;
      v39 = 2112;
      v40 = v19;
      v22 = "%@[%@] Failed to submit - %@";
      v23 = v20;
      v24 = 32;
    }

    else
    {
      if (MediaAnalysisLogLevel() < 5)
      {
        goto LABEL_25;
      }

      v29 = VCPLogToOSLogType[5];
      if (!os_log_type_enabled(&_os_log_default, v29))
      {
        goto LABEL_25;
      }

      v30 = self->_logPrefix;
      *buf = 138412546;
      v36 = v30;
      v37 = 2112;
      v38 = v17;
      v22 = "%@[%@] Submitted";
      v23 = v29;
      v24 = 22;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v23, v22, buf, v24);
LABEL_25:

LABEL_26:
    if (v4)
    {
      if (+[MADManagedKeyValueStore isMACDPersistEnabled])
      {
        photoLibrary4 = [(MADPhotosTaskProvider *)self photoLibrary];
        [photoLibrary4 mad_performAnalysisDataStoreChanges:&stru_100285778 error:0];
      }

      else
      {
        photoLibrary5 = [(MADPhotosTaskProvider *)self photoLibrary];
        photoLibrary4 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:photoLibrary5];

        [photoLibrary4 setValue:1 forKey:VCPKeyValueMediaAnalysisFullClusterProgressQuery];
        [photoLibrary4 commit];
      }
    }
  }

  v26 = 0;
LABEL_33:

  return v26;
}

- (void)retireTask:(id)task
{
  taskCopy = task;
  v10.receiver = self;
  v10.super_class = MADPhotosFullTaskProvider;
  [(MADPhotosTaskProvider *)&v10 retireTask:taskCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    p1AssetCount = [taskCopy p1AssetCount];
    if (p1AssetCount)
    {
      v6 = p1AssetCount + self->_retiredP1AssetCount;
      self->_retiredP1AssetCount = v6;
      if (self->_imageOnlyAnalysis && v6 == self->_fetchedP1AssetCount && [(MADPhotosTaskProvider *)self currentAssetPriority]!= 1)
      {
        if (MediaAnalysisLogLevel() >= 6)
        {
          v7 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v7))
          {
            logPrefix = self->_logPrefix;
            logDescription = self->_logDescription;
            *buf = 138412546;
            v12 = logPrefix;
            v13 = 2112;
            v14 = logDescription;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "%@[%@] All image-only P1 assets processed", buf, 0x16u);
          }
        }

        atomic_store(1u, &self->_isFullImageP1Processed);
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    atomic_store(1u, &self->_shouldPerformClustering);
  }
}

@end