@interface MADPhotosTaskProvider
+ (void)unimplementedExceptionForMethodName:(id)name;
- (BOOL)_isAssetEligible:(id)eligible withPreviousStatus:(unint64_t *)status previousAttempts:(int *)attempts lastAttemptDate:(id *)date allowDownload:(BOOL)download;
- (MADPhotosTaskProvider)initWithPhotoLibrary:(id)library cancelBlock:(id)block;
- (id)fetchOptionsForLibrary:(id)library;
- (id)nextAssetProcessingTask;
- (id)nextDownloadAssetProcessingTask;
- (int)_cleanupHardFailures;
- (int)downloadStatus;
- (int)status;
- (int64_t)databaseValueForKey:(id)key;
- (unint64_t)iterations;
- (unint64_t)photosMediaProcessingTaskID;
- (unint64_t)priority;
- (void)_collectNumberOfAssets:(unint64_t)assets forCoreAnalyticsField:(id)field;
- (void)evaluateAsset:(id)asset forTask:(id)task download:(BOOL)download;
- (void)markIgnoredAssetsAsProcessed;
- (void)performDownloadAssetEvaluationWithTask:(id)task;
- (void)performDownloadRetryAssetEvaluationWithTask:(id)task;
- (void)performFailedAssetEvaluationWithTask:(id)task localIdentifierBlock:(id)block fetchCount:(unint64_t)count assetCount:(unint64_t)assetCount download:(BOOL)download;
- (void)performFullAssetEvaluationWithTask:(id)task andContext:(id)context;
- (void)performHardFailureAssetEvaluationWithTask:(id)task;
- (void)performSoftFailureAssetEvaluationWithTask:(id)task;
- (void)retireTask:(id)task;
- (void)setStatus:(int)status;
@end

@implementation MADPhotosTaskProvider

- (MADPhotosTaskProvider)initWithPhotoLibrary:(id)library cancelBlock:(id)block
{
  libraryCopy = library;
  blockCopy = block;
  v32.receiver = self;
  v32.super_class = MADPhotosTaskProvider;
  v9 = [(MADPhotosTaskProvider *)&v32 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_photoLibrary, library);
    v11 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:libraryCopy];
    analysisDatabase = v10->_analysisDatabase;
    v10->_analysisDatabase = v11;

    [(MADTaskProvider *)v10 taskID];
    v13 = VCPTaskIDDescription();
    vcp_description = [(PHPhotoLibrary *)v10->_photoLibrary vcp_description];
    v15 = [NSString stringWithFormat:@"[%@][%@]", v13, vcp_description];
    logPrefix = v10->_logPrefix;
    v10->_logPrefix = v15;

    v17 = dispatch_queue_create("MADPhotosTaskProvider.statusQueue", 0);
    statusQueue = v10->_statusQueue;
    v10->_statusQueue = v17;

    v10->_status = 0;
    v10->_downloadStatus = 0;
    v19 = dispatch_queue_create("MADPhotosTaskProvider.taskContextQueue", 0);
    taskContextQueue = v10->_taskContextQueue;
    v10->_taskContextQueue = v19;

    v21 = +[NSMutableArray array];
    taskContext = v10->_taskContext;
    v10->_taskContext = v21;

    v23 = +[NSMutableArray array];
    ignoredAssets = v10->_ignoredAssets;
    v10->_ignoredAssets = v23;

    v10->_assetStage = 0;
    v25 = objc_retainBlock(blockCopy);
    cancelBlock = v10->_cancelBlock;
    v10->_cancelBlock = v25;

    v27 = +[NSMutableSet set];
    activeAssets = v10->_activeAssets;
    v10->_activeAssets = v27;

    v29 = dispatch_queue_create("MADPhotosTaskProvider.activeAssetsManagementQueue", 0);
    activeAssetsManagementQueue = v10->_activeAssetsManagementQueue;
    v10->_activeAssetsManagementQueue = v29;

    [(MADPhotosTaskProvider *)v10 _cleanupHardFailures];
  }

  return v10;
}

- (unint64_t)priority
{
  taskID = [(MADTaskProvider *)self taskID];
  v4 = 10;
  v5 = 20;
  if (taskID != 10)
  {
    v5 = 0;
  }

  if (taskID != 12)
  {
    v4 = v5;
  }

  if (taskID == 3)
  {
    v6 = 30;
  }

  else
  {
    v6 = v4;
  }

  if ([(PHPhotoLibrary *)self->_photoLibrary isSystemPhotoLibrary])
  {
    return v6 + 2;
  }

  else
  {
    return v6 | [(PHPhotoLibrary *)self->_photoLibrary vcp_isSyndicationLibrary];
  }
}

- (unint64_t)iterations
{
  if ([(MADTaskProvider *)self taskID]!= 3)
  {
    return 1;
  }

  if ([(PHPhotoLibrary *)self->_photoLibrary isSystemPhotoLibrary])
  {
    return 4;
  }

  return 1;
}

- (int)status
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  statusQueue = self->_statusQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000137FC;
  v5[3] = &unk_100282E88;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(statusQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int)downloadStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  statusQueue = self->_statusQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000138CC;
  v5[3] = &unk_100282E88;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(statusQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setStatus:(int)status
{
  statusQueue = self->_statusQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100013968;
  v4[3] = &unk_100282EB0;
  statusCopy = status;
  v4[4] = self;
  dispatch_sync(statusQueue, v4);
}

- (void)_collectNumberOfAssets:(unint64_t)assets forCoreAnalyticsField:(id)field
{
  fieldCopy = field;
  v6 = +[VCPMADCoreAnalyticsManager sharedManager];
  if ([(MADTaskProvider *)self taskID]== 10)
  {
    [v6 accumulateInt64Value:assets forField:fieldCopy andEvent:@"com.apple.mediaanalysisd.OCRAnalysisRunSession"];
  }
}

- (id)fetchOptionsForLibrary:(id)library
{
  libraryCopy = library;
  v5 = [PHAsset vcp_fetchOptionsForLibrary:libraryCopy forTaskID:[(MADTaskProvider *)self taskID]];

  return v5;
}

- (int)_cleanupHardFailures
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v3 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      logPrefix = self->_logPrefix;
      *buf = 138412290;
      v71 = logPrefix;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "%@ Checking processing status from previous runs", buf, 0xCu);
    }
  }

  v5 = off_100281000;
  if (+[MADManagedProcessingStatus isMACDReadEnabled])
  {
    mad_fetchRequest = [(PHPhotoLibrary *)self->_photoLibrary mad_fetchRequest];
    v69 = 0;
    processingStatusTaskID = [(MADPhotosTaskProvider *)self processingStatusTaskID];
    mediaTypePredicatesString = [(MADPhotosTaskProvider *)self mediaTypePredicatesString];
    [mad_fetchRequest fetchLocalIdentifiers:&v69 taskID:processingStatusTaskID processingStatus:1 additionalPredicates:mediaTypePredicatesString];
    v9 = v69;
  }

  else
  {
    analysisDatabase = self->_analysisDatabase;
    v68 = 0;
    processingStatusTaskID2 = [(MADPhotosTaskProvider *)self processingStatusTaskID];
    mad_fetchRequest = [(MADPhotosTaskProvider *)self mediaTypePredicatesString];
    [(VCPDatabaseWriter *)analysisDatabase fetchLocalIdentifiers:&v68 taskID:processingStatusTaskID2 processingStatus:1 additionalPredicates:mad_fetchRequest];
    v9 = v68;
  }

  v12 = [v9 count];
  if (!v12)
  {
    goto LABEL_45;
  }

  v13 = v12;
  [(MADPhotosTaskProvider *)self fetchOptionsForLibrary:self->_photoLibrary];
  v58 = v57 = v9;
  v14 = [PHAsset fetchAssetsWithLocalIdentifiers:v9 options:?];
  if ([v14 count])
  {
    v15 = 0;
    type = VCPLogToOSLogType[6];
    v59 = VCPLogToOSLogType[7];
    v56 = VCPLogToOSLogType[3];
    do
    {
      v16 = objc_autoreleasePoolPush();
      v17 = [v14 objectAtIndexedSubscript:v15];
      if (([v17 vcp_needsProcessingForTask:{-[MADTaskProvider taskID](self, "taskID")}] & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
        {
          v18 = self->_logPrefix;
          localIdentifier = [v17 localIdentifier];
          *buf = 138412546;
          v71 = v18;
          v72 = 2112;
          v73 = localIdentifier;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@[%@] Asset is processed; clearing failure status", buf, 0x16u);
        }

        if ([(__objc2_class *)v5[134] isMACDPersistEnabled])
        {
          v61 = v13;
          v20 = v5;
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v59))
          {
            v21 = self->_logPrefix;
            localIdentifier2 = [v17 localIdentifier];
            processingStatusTaskID3 = [(MADPhotosTaskProvider *)self processingStatusTaskID];
            *buf = 138412802;
            v71 = v21;
            v72 = 2112;
            v73 = localIdentifier2;
            v74 = 1024;
            LODWORD(v75[0]) = processingStatusTaskID3;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v59, "%@[%@][MACD] Removing processing status for taskID %d", buf, 0x1Cu);
          }

          photoLibrary = self->_photoLibrary;
          v65[0] = _NSConcreteStackBlock;
          v65[1] = 3221225472;
          v65[2] = sub_1000145A0;
          v65[3] = &unk_100282ED8;
          v25 = v17;
          v66 = v25;
          selfCopy = self;
          v64 = 0;
          v26 = [(PHPhotoLibrary *)photoLibrary mad_performAnalysisDataStoreChanges:v65 error:&v64];
          v27 = v64;
          v28 = v27;
          if ((v26 & 1) == 0)
          {
            mad_fetchRequest = [v27 code];
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v56))
            {
              v55 = self->_logPrefix;
              localIdentifier3 = [v25 localIdentifier];
              processingStatusTaskID4 = [(MADPhotosTaskProvider *)self processingStatusTaskID];
              *buf = 138413058;
              v71 = v55;
              v72 = 2112;
              v73 = localIdentifier3;
              v74 = 1024;
              LODWORD(v75[0]) = processingStatusTaskID4;
              WORD2(v75[0]) = 2112;
              *(v75 + 6) = v28;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v56, "%@[%@][MACD] Failed to remove processing status for taskID %d: %@", buf, 0x26u);
            }
          }

          v31 = mad_fetchRequest;
          v5 = v20;
          v13 = v61;
          if ((v26 & 1) == 0)
          {
            goto LABEL_53;
          }
        }

        else
        {
          v32 = self->_analysisDatabase;
          localIdentifier4 = [v17 localIdentifier];
          v34 = [(VCPDatabaseWriter *)v32 removeProcessingStatusForLocalIdentifier:localIdentifier4 andTaskID:[(MADPhotosTaskProvider *)self processingStatusTaskID]];

          if (v34 == -108)
          {
            v31 = v34;
          }

          else
          {
            v35 = v34 == -36 || v34 == -23;
            v31 = v34;
            if (!v35)
            {
              v31 = mad_fetchRequest;
            }
          }

          if (v34 == -108 || (v34 != -36 ? (v36 = v34 == -23) : (v36 = 1), v36))
          {
LABEL_53:

            objc_autoreleasePoolPop(v16);
            goto LABEL_65;
          }
        }

        --v13;
        mad_fetchRequest = v31;
      }

      objc_autoreleasePoolPop(v16);
      ++v15;
    }

    while (v15 < [v14 count]);
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v37 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v37))
    {
      v38 = self->_logPrefix;
      *buf = 138412546;
      v71 = v38;
      v72 = 2048;
      v73 = v13;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v37, "%@ Changing processing status to Hard Failure for %lu assets", buf, 0x16u);
    }
  }

  if (![(__objc2_class *)v5[134] isMACDPersistEnabled])
  {
    v46 = self->_analysisDatabase;
    processingStatusTaskID5 = [(MADPhotosTaskProvider *)self processingStatusTaskID];
    mediaTypePredicatesString2 = [(MADPhotosTaskProvider *)self mediaTypePredicatesString];
    v49 = [(VCPDatabaseWriter *)v46 hardFailAllRunningProcessingStatusForTaskID:processingStatusTaskID5 additionalPredicates:mediaTypePredicatesString2];

    if (v49 == -108 || v49 == -36)
    {
      v50 = v49;
    }

    else
    {
      v50 = v49;
      if (v49 != -23)
      {
        v50 = mad_fetchRequest;
      }
    }

    if (v49 == -108)
    {
      LODWORD(v31) = v50;
LABEL_65:
      v9 = v57;
      v43 = v58;
      goto LABEL_66;
    }

    v43 = v58;
    if (v49 == -36 || v49 == -23)
    {
      LODWORD(v31) = v50;
    }

    else
    {
      commit = [(VCPDatabaseWriter *)self->_analysisDatabase commit];
      if (commit == -108 || commit == -36)
      {
        LODWORD(v31) = commit;
      }

      else
      {
        LODWORD(v31) = commit;
        if (commit != -23)
        {
          LODWORD(v31) = v50;
        }
      }

      if (commit != -108)
      {
        v9 = v57;
        if (commit != -23 && commit != -36)
        {
          goto LABEL_44;
        }

LABEL_66:

        goto LABEL_67;
      }
    }

    v9 = v57;
    goto LABEL_66;
  }

  v39 = self->_photoLibrary;
  v62 = 0;
  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = sub_10001461C;
  v63[3] = &unk_100282F00;
  v63[4] = self;
  v40 = [(PHPhotoLibrary *)v39 mad_performAnalysisDataStoreChanges:v63 error:&v62];
  v41 = v62;
  v42 = v41;
  v9 = v57;
  if ((v40 & 1) == 0)
  {
    LODWORD(v31) = [v41 code];
    if (MediaAnalysisLogLevel() >= 3)
    {
      v51 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v51))
      {
        v52 = self->_logPrefix;
        *buf = 138412802;
        v71 = v52;
        v72 = 2048;
        v73 = v13;
        v74 = 2112;
        v75[0] = v42;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v51, "%@[MACD] Failed to change processing status of %lu assets: %@", buf, 0x20u);
      }
    }

    v43 = v58;
    goto LABEL_66;
  }

  v43 = v58;
LABEL_44:
  [(MADPhotosTaskProvider *)self _collectNumberOfAssets:v13 forCoreAnalyticsField:@"NumberOfAssetsHardFailure"];
  [(MADPhotosTaskProvider *)self _collectNumberOfAssets:v13 forCoreAnalyticsField:@"NumberOfAssetsIntoBlacklist"];

LABEL_45:
  if (MediaAnalysisLogLevel() >= 7)
  {
    v44 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v44))
    {
      v45 = self->_logPrefix;
      *buf = 138412290;
      v71 = v45;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v44, "%@ Processing status is up-to-date", buf, 0xCu);
    }
  }

  LODWORD(v31) = 0;
LABEL_67:

  return v31;
}

- (BOOL)_isAssetEligible:(id)eligible withPreviousStatus:(unint64_t *)status previousAttempts:(int *)attempts lastAttemptDate:(id *)date allowDownload:(BOOL)download
{
  downloadCopy = download;
  eligibleCopy = eligible;
  if (+[MADManagedProcessingStatus isMACDReadEnabled])
  {
    photoLibrary = [eligibleCopy photoLibrary];
    mad_fetchRequest = [photoLibrary mad_fetchRequest];
    v33 = 0;
    localIdentifier = [eligibleCopy localIdentifier];
    v16 = [mad_fetchRequest fetchProcessingStatus:status attempts:attempts lastAttemptDate:date nextAttemptDate:&v33 localIdentifier:localIdentifier taskID:{-[MADPhotosTaskProvider processingStatusTaskID](self, "processingStatusTaskID")}];
    v17 = v33;
  }

  else
  {
    analysisDatabase = self->_analysisDatabase;
    v32 = 0;
    photoLibrary = [eligibleCopy localIdentifier];
    v16 = [(VCPDatabaseWriter *)analysisDatabase queryProcessingStatus:status attempts:attempts lastAttemptDate:date andNextAttemptDate:&v32 forLocalIdentifier:photoLibrary andTaskID:[(MADPhotosTaskProvider *)self processingStatusTaskID]];
    v17 = v32;
  }

  if (v16)
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_18;
    }

    v19 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v19))
    {
      goto LABEL_18;
    }

    logPrefix = self->_logPrefix;
    localIdentifier2 = [eligibleCopy localIdentifier];
    *buf = 138412802;
    v35 = logPrefix;
    v36 = 2112;
    v37 = localIdentifier2;
    v38 = 1024;
    LODWORD(v39) = v16;
    _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "%@[%@] Failed to query processing status due to DB error %d", buf, 0x1Cu);
LABEL_8:

LABEL_18:
    v24 = 0;
    goto LABEL_19;
  }

  if (*attempts)
  {
    v22 = +[NSDate date];
    v23 = [v17 compare:v22];

    if (v23 == 1 && (!downloadCopy || *attempts != 1 || *status != 2))
    {
      if (MediaAnalysisLogLevel() < 7)
      {
        goto LABEL_18;
      }

      v25 = VCPLogToOSLogType[7];
      if (!os_log_type_enabled(&_os_log_default, v25))
      {
        goto LABEL_18;
      }

      v26 = self->_logPrefix;
      localIdentifier3 = [eligibleCopy localIdentifier];
      localIdentifier2 = VCPProcessingStatusDescription();
      v28 = *attempts;
      v29 = +[VCPLogManager dateFormatter];
      v30 = [v29 stringFromDate:v17];
      *buf = 138413314;
      v35 = v26;
      v36 = 2112;
      v37 = localIdentifier3;
      v38 = 2112;
      v39 = localIdentifier2;
      v40 = 1024;
      v41 = v28;
      v42 = 2112;
      v43 = v30;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "%@[%@] Asset skipped (%@|%d); revisit date: %@", buf, 0x30u);

      goto LABEL_8;
    }
  }

  v24 = 1;
LABEL_19:

  return v24;
}

- (void)evaluateAsset:(id)asset forTask:(id)task download:(BOOL)download
{
  downloadCopy = download;
  assetCopy = asset;
  taskCopy = task;
  logPrefix = self->_logPrefix;
  localIdentifier = [assetCopy localIdentifier];
  v12 = [NSString stringWithFormat:@"%@[%@][TaskID-%d]", logPrefix, localIdentifier, [(MADPhotosTaskProvider *)self processingStatusTaskID]];

  if (MediaAnalysisLogLevel() >= 7)
  {
    v13 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v13))
    {
      v14 = @"dis";
      if (downloadCopy)
      {
        v14 = &stru_1002890F8;
      }

      *buf = 138412546;
      v101 = v12;
      v102 = 2112;
      v103 = v14;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "%@ Evaluating asset ... (download %@allowed)", buf, 0x16u);
    }
  }

  v15 = +[VCPWatchdog sharedWatchdog];
  [v15 pet];

  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v99 = 0;
  activeAssetsManagementQueue = self->_activeAssetsManagementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000158C0;
  block[3] = &unk_100282F28;
  v95 = &v96;
  block[4] = self;
  v17 = assetCopy;
  v94 = v17;
  dispatch_sync(activeAssetsManagementQueue, block);
  if (*(v97 + 24) == 1)
  {
    if (MediaAnalysisLogLevel() < 4)
    {
      goto LABEL_66;
    }

    v18 = VCPLogToOSLogType[4];
    if (!os_log_type_enabled(&_os_log_default, v18))
    {
      goto LABEL_66;
    }

    *buf = 138412290;
    v101 = v12;
    v19 = "%@ Asset already added to a processing batch; skipping";
LABEL_10:
    _os_log_impl(&_mh_execute_header, &_os_log_default, v18, v19, buf, 0xCu);
LABEL_66:
    [(MADPhotosTaskProvider *)self increaseProcessedJobCountByOne];
    goto LABEL_67;
  }

  if ([(MADTaskProvider *)self taskID]== 3)
  {
    photoLibrary = [v17 photoLibrary];
    if ([photoLibrary mad_pauseFCPeopleFurtherProcessing])
    {
      v21 = [v17 faceAnalysisVersion] == 14;

      if (v21)
      {
        if (MediaAnalysisLogLevel() < 5)
        {
          goto LABEL_66;
        }

        v18 = VCPLogToOSLogType[5];
        if (!os_log_type_enabled(&_os_log_default, v18))
        {
          goto LABEL_66;
        }

        *buf = 138412290;
        v101 = v12;
        v19 = "%@ already with FC version; skipping";
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  if ([(MADTaskProvider *)self taskID]!= 1)
  {
    if (([v17 vcp_needsProcessingForTask:{-[MADTaskProvider taskID](self, "taskID")}] & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v42 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v42))
        {
          *buf = 138412290;
          v101 = v12;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v42, "%@ Asset is up-to-date; skipping", buf, 0xCu);
        }
      }

      if (+[MADManagedProcessingStatus isMACDPersistEnabled])
      {
        if (MediaAnalysisLogLevel() >= 7)
        {
          v43 = &_os_log_default;
          v44 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v44))
          {
            v45 = self->_logPrefix;
            localIdentifier2 = [v17 localIdentifier];
            processingStatusTaskID = [(MADPhotosTaskProvider *)self processingStatusTaskID];
            *buf = 138412802;
            v101 = v45;
            v102 = 2112;
            v103 = localIdentifier2;
            v104 = 1024;
            v105 = processingStatusTaskID;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v44, "%@[%@][MACD] Removing processing status for taskID %d", buf, 0x1Cu);
          }
        }

        photoLibrary = self->_photoLibrary;
        v83[0] = _NSConcreteStackBlock;
        v83[1] = 3221225472;
        v83[2] = sub_100015A14;
        v83[3] = &unk_100282ED8;
        v49 = v17;
        v84 = v49;
        selfCopy = self;
        v82 = 0;
        v50 = [(PHPhotoLibrary *)photoLibrary mad_performAnalysisDataStoreChanges:v83 error:&v82];
        localIdentifier4 = v82;
        if ((v50 & 1) == 0 && MediaAnalysisLogLevel() >= 3)
        {
          v52 = &_os_log_default;
          v53 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v53))
          {
            v54 = self->_logPrefix;
            localIdentifier3 = [v49 localIdentifier];
            processingStatusTaskID2 = [(MADPhotosTaskProvider *)self processingStatusTaskID];
            *buf = 138413058;
            v101 = v54;
            v102 = 2112;
            v103 = localIdentifier3;
            v104 = 1024;
            v105 = processingStatusTaskID2;
            v106 = 2112;
            v107 = localIdentifier4;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v53, "%@[%@][MACD] Failed to remove processing status for taskID %d: %@", buf, 0x26u);
          }
        }
      }

      else
      {
        analysisDatabase = self->_analysisDatabase;
        localIdentifier4 = [v17 localIdentifier];
        [(VCPDatabaseWriter *)analysisDatabase removeProcessingStatusForLocalIdentifier:localIdentifier4 andTaskID:[(MADPhotosTaskProvider *)self processingStatusTaskID]];
      }

      goto LABEL_66;
    }

    goto LABEL_36;
  }

  if ([(MADPhotosTaskProvider *)self checkCompatibilityForAsset:v17])
  {
    if (([v17 mad_isFullAnalysisVersionOutdated:{-[MADPhotosTaskProvider processingStatusTaskID](self, "processingStatusTaskID") == 255}] & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v22 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v22))
        {
          *buf = 138412290;
          v101 = v12;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "%@ Asset is up-to-date; skipping", buf, 0xCu);
        }
      }

      if (+[MADManagedProcessingStatus isMACDPersistEnabled])
      {
        if (MediaAnalysisLogLevel() >= 7)
        {
          v23 = &_os_log_default;
          v24 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v24))
          {
            v25 = self->_logPrefix;
            localIdentifier5 = [v17 localIdentifier];
            processingStatusTaskID3 = [(MADPhotosTaskProvider *)self processingStatusTaskID];
            *buf = 138412802;
            v101 = v25;
            v102 = 2112;
            v103 = localIdentifier5;
            v104 = 1024;
            v105 = processingStatusTaskID3;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "%@[%@][MACD] Removing processing status for taskID %d", buf, 0x1Cu);
          }
        }

        v28 = self->_photoLibrary;
        v90[0] = _NSConcreteStackBlock;
        v90[1] = 3221225472;
        v90[2] = sub_100015930;
        v90[3] = &unk_100282ED8;
        v29 = v17;
        v91 = v29;
        selfCopy2 = self;
        v89 = 0;
        v30 = [(PHPhotoLibrary *)v28 mad_performAnalysisDataStoreChanges:v90 error:&v89];
        localIdentifier7 = v89;
        if ((v30 & 1) == 0 && MediaAnalysisLogLevel() >= 3)
        {
          v32 = &_os_log_default;
          v33 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v33))
          {
            v34 = self->_logPrefix;
            localIdentifier6 = [v29 localIdentifier];
            processingStatusTaskID4 = [(MADPhotosTaskProvider *)self processingStatusTaskID];
            *buf = 138413058;
            v101 = v34;
            v102 = 2112;
            v103 = localIdentifier6;
            v104 = 1024;
            v105 = processingStatusTaskID4;
            v106 = 2112;
            v107 = localIdentifier7;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v33, "%@[%@][MACD] Failed to remove processing status for taskID %d: %@", buf, 0x26u);
          }
        }
      }

      else
      {
        v58 = self->_analysisDatabase;
        localIdentifier7 = [v17 localIdentifier];
        [(VCPDatabaseWriter *)v58 removeProcessingStatusForLocalIdentifier:localIdentifier7 andTaskID:[(MADPhotosTaskProvider *)self processingStatusTaskID]];
      }

      if ([(MADPhotosTaskProvider *)self processingStatusTaskID]== 1)
      {
        if (+[MADManagedProcessingStatus isMACDPersistEnabled])
        {
          if (MediaAnalysisLogLevel() >= 7)
          {
            v59 = &_os_log_default;
            v60 = VCPLogToOSLogType[7];
            if (os_log_type_enabled(&_os_log_default, v60))
            {
              v61 = self->_logPrefix;
              localIdentifier8 = [v17 localIdentifier];
              *buf = 138412802;
              v101 = v61;
              v102 = 2112;
              v103 = localIdentifier8;
              v104 = 1024;
              v105 = 255;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v60, "%@[%@][MACD] Removing processing status for taskID %d", buf, 0x1Cu);
            }
          }

          v63 = self->_photoLibrary;
          v87[0] = _NSConcreteStackBlock;
          v87[1] = 3221225472;
          v87[2] = sub_1000159AC;
          v87[3] = &unk_100282F00;
          v64 = v17;
          v88 = v64;
          v86 = 0;
          v65 = [(PHPhotoLibrary *)v63 mad_performAnalysisDataStoreChanges:v87 error:&v86];
          localIdentifier10 = v86;
          if ((v65 & 1) == 0 && MediaAnalysisLogLevel() >= 3)
          {
            v67 = &_os_log_default;
            v68 = VCPLogToOSLogType[3];
            if (os_log_type_enabled(&_os_log_default, v68))
            {
              v69 = self->_logPrefix;
              localIdentifier9 = [v64 localIdentifier];
              *buf = 138413058;
              v101 = v69;
              v102 = 2112;
              v103 = localIdentifier9;
              v104 = 1024;
              v105 = 255;
              v106 = 2112;
              v107 = localIdentifier10;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v68, "%@[%@][MACD] Failed to remove processing status for taskID %d: %@", buf, 0x26u);
            }
          }
        }

        else
        {
          v76 = self->_analysisDatabase;
          localIdentifier10 = [v17 localIdentifier];
          [(VCPDatabaseWriter *)v76 removeProcessingStatusForLocalIdentifier:localIdentifier10 andTaskID:255];
        }
      }

      goto LABEL_66;
    }

LABEL_36:
    v81 = 0;
    v80 = 0;
    v79 = 0;
    v37 = [(MADPhotosTaskProvider *)self _isAssetEligible:v17 withPreviousStatus:&v81 previousAttempts:&v80 lastAttemptDate:&v79 allowDownload:downloadCopy];
    v38 = v79;
    if (v37)
    {
      if ([(PHPhotoLibrary *)self->_photoLibrary vcp_requiresDownloadForTask:[(MADPhotosTaskProvider *)self processingStatusTaskID]]&& !downloadCopy && (v81 == 7 || v81 == 2))
      {
        if (MediaAnalysisLogLevel() < 7)
        {
          goto LABEL_74;
        }

        v39 = VCPLogToOSLogType[7];
        if (!os_log_type_enabled(&_os_log_default, v39))
        {
          goto LABEL_74;
        }

        *buf = 138412290;
        v101 = v12;
        v40 = "%@ Asset requires resource download; skipping";
      }

      else
      {
        if (self->_assetStage == 1 || v81 != 4)
        {
          if (MediaAnalysisLogLevel() >= 7)
          {
            v71 = VCPLogToOSLogType[7];
            if (os_log_type_enabled(&_os_log_default, v71))
            {
              *buf = 138412290;
              v101 = v12;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v71, "%@ Adding to process batch ...", buf, 0xCu);
            }
          }

          [taskCopy addPhotosAsset:v17 priority:self->_currentAssetPriority previousStatus:v81 attempts:v80 lastAttemptDate:v38];
          assetLocalIdentifiers = [taskCopy assetLocalIdentifiers];
          localIdentifier11 = [v17 localIdentifier];
          v74 = [assetLocalIdentifiers containsObject:localIdentifier11];

          if (v74)
          {
            v75 = self->_activeAssetsManagementQueue;
            v77[0] = _NSConcreteStackBlock;
            v77[1] = 3221225472;
            v77[2] = sub_100015A90;
            v77[3] = &unk_100282F50;
            v77[4] = self;
            v78 = v17;
            dispatch_sync(v75, v77);
          }

          goto LABEL_75;
        }

        if (MediaAnalysisLogLevel() < 7 || (v39 = VCPLogToOSLogType[7], !os_log_type_enabled(&_os_log_default, v39)))
        {
LABEL_74:
          [(MADPhotosTaskProvider *)self increaseProcessedJobCountByOne];
LABEL_75:

          goto LABEL_67;
        }

        *buf = 138412290;
        v101 = v12;
        v40 = "%@ Asset has a previous hard failure; skipping";
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() < 7)
      {
        goto LABEL_74;
      }

      v39 = VCPLogToOSLogType[7];
      if (!os_log_type_enabled(&_os_log_default, v39))
      {
        goto LABEL_74;
      }

      *buf = 138412290;
      v101 = v12;
      v40 = "%@ Asset not eligible for processing; skipping";
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v39, v40, buf, 0xCu);
    goto LABEL_74;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v41 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v41))
    {
      *buf = 138412290;
      v101 = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v41, "%@ Asset incompatible with the associated task; skipping", buf, 0xCu);
    }
  }

LABEL_67:

  _Block_object_dispose(&v96, 8);
}

- (void)markIgnoredAssetsAsProcessed
{
  if ([(NSMutableArray *)self->_ignoredAssets count])
  {
    v3 = [(NSMutableArray *)self->_ignoredAssets count];
    if (v3 >= +[PHPhotoLibrary mad_maxIgnoredAssetsToMarkAsProcessed]|| self->_assetStage == 1)
    {
      v4 = +[VCPWatchdog sharedWatchdog];
      [v4 pet];

      [(PHPhotoLibrary *)self->_photoLibrary mad_markAsProcessedByTask:[(MADPhotosTaskProvider *)self processingStatusTaskID] forAssets:self->_ignoredAssets cancelBlock:self->_cancelBlock extendTimeoutBlock:&stru_100282F70];
      ignoredAssets = self->_ignoredAssets;

      [(NSMutableArray *)ignoredAssets removeAllObjects];
    }
  }
}

- (int64_t)databaseValueForKey:(id)key
{
  keyCopy = key;
  if ((+[MADManagedKeyValueStore isMACDReadEnabled]& 1) != 0)
  {
    mad_fetchRequest = [(PHPhotoLibrary *)self->_photoLibrary mad_fetchRequest];
    v6 = [mad_fetchRequest dataStoreValueForKey:keyCopy];
  }

  else
  {
    v6 = [(VCPDatabaseWriter *)self->_analysisDatabase valueForKey:keyCopy];
  }

  return v6;
}

- (void)performFullAssetEvaluationWithTask:(id)task andContext:(id)context
{
  taskCopy = task;
  contextCopy = context;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v7 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      logPrefix = self->_logPrefix;
      *buf = 138412290;
      v105 = logPrefix;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "%@ Perform full asset evaluation ... ", buf, 0xCu);
    }
  }

  assetPriorities = [(MADPhotosTaskProvider *)self assetPriorities];
  v86 = [assetPriorities count];
  if (v86)
  {
    v9 = PHPersonDeleteRequest_ptr;
    v92 = VCPLogToOSLogType[7];
    type = VCPLogToOSLogType[5];
    v91 = VCPLogToOSLogType[3];
    v85 = VCPLogToOSLogType[6];
    v83 = VCPKeyValueOCRAnalysisLastGatingIncludedFetchTimestamp;
    v84 = taskCopy;
    while (1)
    {
      while (1)
      {
        fetchIdx = self->_fetchIdx;
        if (fetchIdx < [(PHFetchResult *)self->_fetchResult count])
        {
          break;
        }

        if (+[VCPDatabaseWriter isLegacyPersistEnabled])
        {
          [(VCPDatabaseWriter *)self->_analysisDatabase commit];
        }

        fetchResult = self->_fetchResult;
        self->_fetchResult = 0;

        self->_fetchIdx = 0;
        if (self->_assetPrioritiesIdx >= v86)
        {
          self->_assetStage = 1;
          goto LABEL_81;
        }

        context = objc_autoreleasePoolPush();
        v38 = +[VCPWatchdog sharedWatchdog];
        [v38 pet];

        v39 = @"All";
        if (v86 != 1)
        {
          v40 = [assetPriorities objectAtIndexedSubscript:self->_assetPrioritiesIdx];
          v39 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Priority %lu", [v40 unsignedIntegerValue]);
        }

        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v85))
        {
          v41 = self->_logPrefix;
          *buf = 138412546;
          v105 = v41;
          v106 = 2112;
          v107 = v39;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v85, "%@ Fetching %@ assets...", buf, 0x16u);
        }

        v42 = +[MADStateHandler sharedStateHandler];
        [v42 addBreadcrumb:{@"%@ Fetching %@ assets...", self->_logPrefix, v39}];

        ++self->_assetPrioritiesIdx;
        v43 = [assetPriorities objectAtIndexedSubscript:?];
        self->_currentAssetPriority = [v43 unsignedIntegerValue];

        v87 = [PHMediaProcessingAlgorithmVersionProvider mad_sharedVersionProviderWithPhotoLibrary:self->_photoLibrary];
        [PHAsset mad_sceneConfidenceThresholdForTask:[(MADTaskProvider *)self taskID]];
        v45 = v44;
        v88 = v39;
        if ([(MADTaskProvider *)self taskID]== 10)
        {
          v46 = [NSDate dateWithTimeIntervalSinceReferenceDate:[(MADPhotosTaskProvider *)self databaseValueForKey:v83]];
          v47 = +[NSDate now];
          [v47 timeIntervalSinceDate:v46];
          v49 = v48 < 604800.0;
        }

        else
        {
          v49 = 0;
        }

        v50 = VCPSignPostLog();
        v51 = os_signpost_id_generate(v50);

        v52 = VCPSignPostLog();
        v53 = v52;
        if (v51 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v53, OS_SIGNPOST_INTERVAL_BEGIN, v51, "MADPhotosTaskProvider_FetchAssets", "", buf, 2u);
        }

        if (v49)
        {
          photoLibrary = self->_photoLibrary;
          photosMediaProcessingTaskID = [(MADPhotosTaskProvider *)self photosMediaProcessingTaskID];
          currentAssetPriority = self->_currentAssetPriority;
          v96 = 0;
          v57 = &v96;
          v58 = v87;
          LODWORD(v59) = v45;
          v60 = [(PHPhotoLibrary *)photoLibrary fetchUnprocessedAssetsForMediaProcessingTaskID:photosMediaProcessingTaskID priority:currentAssetPriority algorithmVersion:v87 sceneConfidenceThreshold:&v96 error:v59];
        }

        else
        {
          if ([(MADTaskProvider *)self taskID]== 10)
          {
            v61 = +[NSDate now];
            [v61 timeIntervalSinceReferenceDate];
            v63 = v62;

            if (+[MADManagedKeyValueStore isMACDPersistEnabled])
            {
              v64 = self->_photoLibrary;
              v95[0] = _NSConcreteStackBlock;
              v95[1] = 3221225472;
              v95[2] = sub_100016B54;
              v95[3] = &unk_100282F90;
              v95[4] = v63;
              [(PHPhotoLibrary *)v64 mad_performAnalysisDataStoreChanges:v95 error:0];
            }

            else
            {
              [(VCPDatabaseWriter *)self->_analysisDatabase setValue:v63 forKey:v83];
              [(VCPDatabaseWriter *)self->_analysisDatabase commit];
            }
          }

          v65 = self->_photoLibrary;
          photosMediaProcessingTaskID2 = [(MADPhotosTaskProvider *)self photosMediaProcessingTaskID];
          v67 = self->_currentAssetPriority;
          v94 = 0;
          v57 = &v94;
          v58 = v87;
          LODWORD(v68) = v45;
          v60 = [(PHPhotoLibrary *)v65 fetchAssetsForMediaProcessingTaskID:photosMediaProcessingTaskID2 priority:v67 algorithmVersion:v87 sceneConfidenceThreshold:&v94 error:v68];
        }

        v69 = v60;
        v70 = *v57;
        v71 = self->_fetchResult;
        self->_fetchResult = v69;

        v72 = VCPSignPostLog();
        v73 = v72;
        if (v51 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v72))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v73, OS_SIGNPOST_INTERVAL_END, v51, "MADPhotosTaskProvider_FetchAssets", "", buf, 2u);
        }

        v74 = MediaAnalysisLogLevel();
        if (v70)
        {
          taskCopy = v84;
          if (v74 >= 3 && os_log_type_enabled(&_os_log_default, v91))
          {
            v75 = self->_logPrefix;
            *buf = 138412546;
            v105 = v75;
            v106 = 2112;
            v107 = v70;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v91, "%@ Failed to fetch assets: %@", buf, 0x16u);
          }
        }

        else
        {
          taskCopy = v84;
          if (v74 >= 6 && os_log_type_enabled(&_os_log_default, v85))
          {
            v76 = self->_logPrefix;
            v77 = [(PHFetchResult *)self->_fetchResult count];
            *buf = 138412546;
            v105 = v76;
            v106 = 1024;
            LODWORD(v107) = v77;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v85, "%@ Fetched %d assets", buf, 0x12u);
          }

          v78 = +[MADStateHandler sharedStateHandler];
          [v78 addBreadcrumb:{@"%@ Fetched %d assets", self->_logPrefix, -[PHFetchResult count](self->_fetchResult, "count")}];
        }

        objc_autoreleasePoolPop(context);
        v9 = PHPersonDeleteRequest_ptr;
        if (v70)
        {
          goto LABEL_81;
        }
      }

      v11 = objc_autoreleasePoolPush();
      v12 = self->_fetchResult;
      ++self->_fetchIdx;
      v13 = [(PHFetchResult *)v12 objectAtIndexedSubscript:?];
      if ([v9[1] mad_isProcessingNeededOnAsset:v13 forTaskID:{-[MADPhotosTaskProvider processingStatusTaskID](self, "processingStatusTaskID")}])
      {
        [(MADPhotosTaskProvider *)self evaluateAsset:v13 forTask:taskCopy download:0];
        if ([taskCopy hasAdequateAssets:{-[MADPhotosTaskProvider batchAssetCount](self, "batchAssetCount")}])
        {
          v79 = self->_fetchIdx;
          if (v79 >= [(PHFetchResult *)self->_fetchResult count]&& self->_assetPrioritiesIdx >= v86)
          {
            self->_assetStage = 1;
          }

          if (+[VCPDatabaseWriter isLegacyPersistEnabled])
          {
            [(VCPDatabaseWriter *)self->_analysisDatabase commit];
          }

          objc_autoreleasePoolPop(v11);
          goto LABEL_81;
        }
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
        {
          v14 = self->_logPrefix;
          localIdentifier = [v13 localIdentifier];
          processingStatusTaskID = [(MADPhotosTaskProvider *)self processingStatusTaskID];
          *buf = 138412802;
          v105 = v14;
          v106 = 2112;
          v107 = localIdentifier;
          v108 = 2048;
          v109[0] = processingStatusTaskID;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@][%@] Asset does not need processing in task %lu, ignoring... ", buf, 0x20u);
        }

        [(NSMutableArray *)self->_ignoredAssets addObject:v13];
        if (+[MADManagedProcessingStatus isMACDPersistEnabled])
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v92))
          {
            v17 = self->_logPrefix;
            localIdentifier2 = [v13 localIdentifier];
            processingStatusTaskID2 = [(MADPhotosTaskProvider *)self processingStatusTaskID];
            *buf = 138412802;
            v105 = v17;
            v106 = 2112;
            v107 = localIdentifier2;
            v108 = 1024;
            LODWORD(v109[0]) = processingStatusTaskID2;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v92, "%@[%@][MACD] Removing processing status for taskID %d", buf, 0x1Cu);
          }

          v20 = self->_photoLibrary;
          v101[0] = _NSConcreteStackBlock;
          v101[1] = 3221225472;
          v101[2] = sub_100016A70;
          v101[3] = &unk_100282ED8;
          v21 = v13;
          v102 = v21;
          selfCopy = self;
          v100 = 0;
          v22 = [(PHPhotoLibrary *)v20 mad_performAnalysisDataStoreChanges:v101 error:&v100];
          localIdentifier4 = v100;
          if ((v22 & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v91))
          {
            v24 = self->_logPrefix;
            localIdentifier3 = [v21 localIdentifier];
            processingStatusTaskID3 = [(MADPhotosTaskProvider *)self processingStatusTaskID];
            *buf = 138413058;
            v105 = v24;
            v106 = 2112;
            v107 = localIdentifier3;
            v108 = 1024;
            LODWORD(v109[0]) = processingStatusTaskID3;
            WORD2(v109[0]) = 2112;
            *(v109 + 6) = localIdentifier4;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v91, "%@[%@][MACD] Failed to remove processing status for taskID %d: %@", buf, 0x26u);
          }

          v9 = PHPersonDeleteRequest_ptr;
        }

        else
        {
          analysisDatabase = self->_analysisDatabase;
          localIdentifier4 = [v13 localIdentifier];
          [(VCPDatabaseWriter *)analysisDatabase removeProcessingStatusForLocalIdentifier:localIdentifier4 andTaskID:[(MADPhotosTaskProvider *)self processingStatusTaskID]];
        }

        if ([(MADPhotosTaskProvider *)self processingStatusTaskID]== 1)
        {
          if (+[MADManagedProcessingStatus isMACDPersistEnabled])
          {
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v92))
            {
              v28 = self->_logPrefix;
              localIdentifier5 = [v13 localIdentifier];
              *buf = 138412802;
              v105 = v28;
              v106 = 2112;
              v107 = localIdentifier5;
              v108 = 1024;
              LODWORD(v109[0]) = 255;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v92, "%@[%@][MACD] Removing processing status for taskID %d", buf, 0x1Cu);
            }

            v30 = self->_photoLibrary;
            v98[0] = _NSConcreteStackBlock;
            v98[1] = 3221225472;
            v98[2] = sub_100016AEC;
            v98[3] = &unk_100282F00;
            v31 = v13;
            v99 = v31;
            v97 = 0;
            v32 = [(PHPhotoLibrary *)v30 mad_performAnalysisDataStoreChanges:v98 error:&v97];
            localIdentifier7 = v97;
            if ((v32 & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v91))
            {
              v34 = self->_logPrefix;
              localIdentifier6 = [v31 localIdentifier];
              *buf = 138413058;
              v105 = v34;
              v106 = 2112;
              v107 = localIdentifier6;
              v108 = 1024;
              LODWORD(v109[0]) = 255;
              WORD2(v109[0]) = 2112;
              *(v109 + 6) = localIdentifier7;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v91, "%@[%@][MACD] Failed to remove processing status for taskID %d: %@", buf, 0x26u);
            }

            v9 = PHPersonDeleteRequest_ptr;
          }

          else
          {
            v36 = self->_analysisDatabase;
            localIdentifier7 = [v13 localIdentifier];
            [(VCPDatabaseWriter *)v36 removeProcessingStatusForLocalIdentifier:localIdentifier7 andTaskID:255];
          }
        }

        [(MADPhotosTaskProvider *)self markIgnoredAssetsAsProcessed];
      }

      objc_autoreleasePoolPop(v11);
    }
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v80 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v80))
    {
      v81 = self->_logPrefix;
      *buf = 138412290;
      v105 = v81;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v80, "%@ Failed to perform full asset evaluation", buf, 0xCu);
    }
  }

LABEL_81:
}

- (void)performFailedAssetEvaluationWithTask:(id)task localIdentifierBlock:(id)block fetchCount:(unint64_t)count assetCount:(unint64_t)assetCount download:(BOOL)download
{
  downloadCopy = download;
  taskCopy = task;
  blockCopy = block;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v14 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v14))
    {
      logPrefix = self->_logPrefix;
      v16 = @"NO";
      if (downloadCopy)
      {
        v16 = @"YES";
      }

      *buf = 138412546;
      v75 = logPrefix;
      v76 = 2112;
      *v77 = v16;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "%@ Perform failed asset evaluation ... (download allowed: %@)", buf, 0x16u);
    }
  }

  self->_currentAssetPriority = 0;
  v17 = +[NSMutableSet set];
  v53 = VCPLogToOSLogType[3];
  type = VCPLogToOSLogType[7];
  v55 = VCPLogToOSLogType[4];
  assetCountCopy = assetCount;
  v64 = v17;
  v62 = blockCopy;
  v56 = downloadCopy;
  countCopy = count;
  while (1)
  {
    v18 = blockCopy[2](blockCopy, count);
    if (![v18 count])
    {
      break;
    }

    if ([v17 count])
    {
      v19 = [NSMutableSet setWithArray:v18];
      [v19 minusSet:v17];
      allObjects = [v19 allObjects];

      v18 = allObjects;
    }

    v21 = +[VCPWatchdog sharedWatchdog];
    [v21 pet];

    v22 = [(MADPhotosTaskProvider *)self fetchOptionsForLibrary:self->_photoLibrary];
    v23 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:0];
    v80 = v23;
    v24 = [NSArray arrayWithObjects:&v80 count:1];
    [v22 setSortDescriptors:v24];

    v25 = +[MADStateHandler sharedStateHandler];
    [v25 addBreadcrumb:{@"%@ Fetching %lu assets for retry with fetchOptions: %@", self->_logPrefix, objc_msgSend(v18, "count"), v22}];

    v61 = v22;
    v26 = [PHAsset fetchAssetsWithLocalIdentifiers:v18 options:v22];
    v27 = +[MADStateHandler sharedStateHandler];
    [v27 addBreadcrumb:{@"%@ Fetched %lu assets for retry", self->_logPrefix, objc_msgSend(v18, "count")}];

    v63 = v18;
    v28 = [v18 count];
    v29 = assetCountCopy;
    blockCopy = v62;
    if (v28 != [v26 count])
    {
      v30 = [NSMutableSet setWithArray:v63];
      if ([v26 count])
      {
        v31 = 0;
        do
        {
          v32 = objc_autoreleasePoolPush();
          v33 = [v26 objectAtIndexedSubscript:v31];
          localIdentifier = [v33 localIdentifier];
          [v30 removeObject:localIdentifier];

          objc_autoreleasePoolPop(v32);
          ++v31;
        }

        while (v31 < [v26 count]);
      }

      if ([v30 count])
      {
        if (+[MADManagedProcessingStatus isMACDPersistEnabled])
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            v35 = self->_logPrefix;
            processingStatusTaskID = [(MADPhotosTaskProvider *)self processingStatusTaskID];
            *buf = 138412802;
            v75 = v35;
            v29 = assetCountCopy;
            v76 = 1024;
            *v77 = processingStatusTaskID;
            *&v77[4] = 2112;
            *&v77[6] = v30;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@[MACD] Removing processing status for taskID %d, localIdentifiers %@", buf, 0x1Cu);
          }

          photoLibrary = self->_photoLibrary;
          v70[0] = _NSConcreteStackBlock;
          v70[1] = 3221225472;
          v70[2] = sub_100017390;
          v70[3] = &unk_100282ED8;
          v38 = v30;
          v71 = v38;
          selfCopy = self;
          v69 = 0;
          LOBYTE(photoLibrary) = [(PHPhotoLibrary *)photoLibrary mad_performAnalysisDataStoreChanges:v70 error:&v69];
          v58 = v69;
          blockCopy = v62;
          downloadCopy = v56;
          if ((photoLibrary & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v53))
          {
            v39 = self->_logPrefix;
            processingStatusTaskID2 = [(MADPhotosTaskProvider *)self processingStatusTaskID];
            *buf = 138413058;
            v75 = v39;
            v76 = 1024;
            *v77 = processingStatusTaskID2;
            *&v77[4] = 2112;
            *&v77[6] = v38;
            v78 = 2112;
            v29 = assetCountCopy;
            v79 = v58;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v53, "%@[MACD] Failed to remove processing status for taskID %d, localIdentifiers %@: %@", buf, 0x26u);
          }
        }

        else
        {
          v59 = taskCopy;
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v44 = v30;
          v45 = [v44 countByEnumeratingWithState:&v65 objects:v73 count:16];
          if (v45)
          {
            v46 = v45;
            v47 = *v66;
            do
            {
              for (i = 0; i != v46; i = i + 1)
              {
                if (*v66 != v47)
                {
                  objc_enumerationMutation(v44);
                }

                [(VCPDatabaseWriter *)self->_analysisDatabase removeProcessingStatusForLocalIdentifier:*(*(&v65 + 1) + 8 * i) andTaskID:[(MADPhotosTaskProvider *)self processingStatusTaskID]];
              }

              v46 = [v44 countByEnumeratingWithState:&v65 objects:v73 count:16];
            }

            while (v46);
          }

          [(VCPDatabaseWriter *)self->_analysisDatabase commit];
          taskCopy = v59;
          v29 = assetCountCopy;
          blockCopy = v62;
          downloadCopy = v56;
        }
      }

      else
      {
        blockCopy = v62;
        downloadCopy = v56;
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v55))
        {
          v41 = self->_logPrefix;
          v42 = [v63 count];
          v43 = [v26 count];
          *buf = 138412802;
          v75 = v41;
          v29 = assetCountCopy;
          v76 = 1024;
          *v77 = v42;
          *&v77[4] = 1024;
          *&v77[6] = v43;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v55, "%@ Fetch count mismatch (%d vs %d); but no missing identifiers...", buf, 0x18u);
        }
      }
    }

    if ([v26 count])
    {
      v49 = 0;
      while (1)
      {
        v50 = [v26 objectAtIndexedSubscript:v49];
        [(MADPhotosTaskProvider *)self evaluateAsset:v50 forTask:taskCopy download:downloadCopy];
        localIdentifier2 = [v50 localIdentifier];
        [v64 addObject:localIdentifier2];

        if ([taskCopy hasAdequateAssets:v29])
        {
          break;
        }

        if (++v49 >= [v26 count])
        {
          goto LABEL_40;
        }
      }

      v18 = v63;
      if (+[VCPDatabaseWriter isLegacyPersistEnabled])
      {
        [(VCPDatabaseWriter *)self->_analysisDatabase commit];
      }

      v17 = v64;
      break;
    }

LABEL_40:
    if (+[VCPDatabaseWriter isLegacyPersistEnabled])
    {
      [(VCPDatabaseWriter *)self->_analysisDatabase commit];
    }

    v52 = [v63 count];

    count = countCopy;
    v17 = v64;
    if (v52 < countCopy)
    {
      goto LABEL_48;
    }
  }

  blockCopy = v62;
LABEL_48:
}

- (void)performSoftFailureAssetEvaluationWithTask:(id)task
{
  taskCopy = task;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      logPrefix = self->_logPrefix;
      *buf = 138412290;
      v10 = logPrefix;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@ Perform soft failure asset evaluation ... ", buf, 0xCu);
    }
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001756C;
  v8[3] = &unk_100282FB8;
  v8[4] = self;
  v7 = objc_retainBlock(v8);
  [(MADPhotosTaskProvider *)self performFailedAssetEvaluationWithTask:taskCopy localIdentifierBlock:v7 fetchCount:[(MADPhotosTaskProvider *)self assetFetchCount] assetCount:[(MADPhotosTaskProvider *)self batchAssetCount] download:0];
}

- (void)performHardFailureAssetEvaluationWithTask:(id)task
{
  taskCopy = task;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      logPrefix = self->_logPrefix;
      *buf = 138412290;
      v10 = logPrefix;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@ Perform hard failure asset evaluation ... ", buf, 0xCu);
    }
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100017828;
  v8[3] = &unk_100282FB8;
  v8[4] = self;
  v7 = objc_retainBlock(v8);
  [(MADPhotosTaskProvider *)self performFailedAssetEvaluationWithTask:taskCopy localIdentifierBlock:v7 fetchCount:10 assetCount:1 download:0];
}

- (id)nextAssetProcessingTask
{
  if ([(MADPhotosTaskProvider *)self status])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(MADPhotosTaskProvider *)self assetTaskWithAnalysisDatabase:self->_analysisDatabase];
    v5 = [MADPhotosTaskContext alloc];
    uuid = [v4 uuid];
    v7 = [(MADPhotosTaskContext *)v5 initWithTaskUUID:uuid];

    if (!self->_assetStage)
    {
      [(MADPhotosTaskProvider *)self performFullAssetEvaluationWithTask:v4 andContext:v7];
    }

    v8 = [v4 count];
    if (self->_assetStage == 1)
    {
      v9 = +[VCPWatchdog sharedWatchdog];
      [v9 pet];

      [(MADPhotosTaskProvider *)self markIgnoredAssetsAsProcessed];
      [(MADPhotosTaskProvider *)self performSoftFailureAssetEvaluationWithTask:v4];
      if (![v4 count])
      {
        [(MADPhotosTaskProvider *)self performHardFailureAssetEvaluationWithTask:v4];
      }
    }

    -[MADPhotosTaskProvider _collectNumberOfAssets:forCoreAnalyticsField:](self, "_collectNumberOfAssets:forCoreAnalyticsField:", [v4 count] - v8, @"NumberOfAssetsOutFromBlacklist");
    if ([v4 count])
    {
      taskContextQueue = self->_taskContextQueue;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100017B2C;
      v12[3] = &unk_100282F50;
      v12[4] = self;
      v13 = v7;
      dispatch_sync(taskContextQueue, v12);
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)performDownloadAssetEvaluationWithTask:(id)task
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100017CE4;
  v9[3] = &unk_100282FB8;
  v9[4] = self;
  taskCopy = task;
  v5 = objc_retainBlock(v9);
  if (MediaAnalysisLogLevel() >= 6)
  {
    v6 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      logPrefix = self->_logPrefix;
      mediaTypePredicatesString = [(MADPhotosTaskProvider *)self mediaTypePredicatesString];
      *buf = 138412546;
      v11 = logPrefix;
      v12 = 2112;
      v13 = mediaTypePredicatesString;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "%@ perform download assets with %@ ...", buf, 0x16u);
    }
  }

  [(MADPhotosTaskProvider *)self performFailedAssetEvaluationWithTask:taskCopy localIdentifierBlock:v5 fetchCount:[(MADPhotosTaskProvider *)self assetFetchCount] assetCount:[(MADPhotosTaskProvider *)self batchAssetCount] download:1];
}

- (void)performDownloadRetryAssetEvaluationWithTask:(id)task
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100017F98;
  v9[3] = &unk_100282FB8;
  v9[4] = self;
  taskCopy = task;
  v5 = objc_retainBlock(v9);
  if (MediaAnalysisLogLevel() >= 6)
  {
    v6 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      logPrefix = self->_logPrefix;
      mediaTypePredicatesString = [(MADPhotosTaskProvider *)self mediaTypePredicatesString];
      *buf = 138412546;
      v11 = logPrefix;
      v12 = 2112;
      v13 = mediaTypePredicatesString;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "%@ perform download retry assets with %@ ...", buf, 0x16u);
    }
  }

  [(MADPhotosTaskProvider *)self performFailedAssetEvaluationWithTask:taskCopy localIdentifierBlock:v5 fetchCount:[(MADPhotosTaskProvider *)self assetFetchCount] assetCount:[(MADPhotosTaskProvider *)self batchAssetCount] download:1];
}

- (id)nextDownloadAssetProcessingTask
{
  if (![(PHPhotoLibrary *)self->_photoLibrary vcp_requiresDownloadForTask:[(MADTaskProvider *)self taskID]]|| [(MADPhotosTaskProvider *)self bypassDownload]|| [(MADPhotosTaskProvider *)self downloadStatus]|| [(MADPhotosTaskProvider *)self status])
  {
    v3 = 0;
  }

  else
  {
    v5 = [(MADPhotosTaskProvider *)self assetTaskWithAnalysisDatabase:self->_analysisDatabase];
    [(MADPhotosTaskProvider *)self performDownloadAssetEvaluationWithTask:v5];
    if (([v5 hasAdequateAssets:{-[MADPhotosTaskProvider batchAssetCount](self, "batchAssetCount")}] & 1) == 0)
    {
      [(MADPhotosTaskProvider *)self performDownloadRetryAssetEvaluationWithTask:v5];
    }

    -[MADPhotosTaskProvider _collectNumberOfAssets:forCoreAnalyticsField:](self, "_collectNumberOfAssets:forCoreAnalyticsField:", [v5 count], @"NumberOfAssetsOutFromBlacklist");
    if ([v5 count])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v3 = v6;
  }

  return v3;
}

- (void)retireTask:(id)task
{
  taskCopy = task;
  if (MediaAnalysisLogLevel() >= 5)
  {
    v5 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      logPrefix = self->_logPrefix;
      v7 = objc_opt_class();
      v8 = v7;
      uuid = [taskCopy uuid];
      *buf = 138412802;
      v19 = logPrefix;
      v20 = 2112;
      v21 = v7;
      v22 = 2112;
      v23 = uuid;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@ Retiring task %@ (%@)", buf, 0x20u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    activeAssetsManagementQueue = self->_activeAssetsManagementQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100018404;
    block[3] = &unk_100282F50;
    block[4] = self;
    v11 = taskCopy;
    v17 = v11;
    dispatch_sync(activeAssetsManagementQueue, block);
    status = [v11 status];
    if (status)
    {
      [(MADPhotosTaskProvider *)self setStatus:status];
    }

    taskContextQueue = self->_taskContextQueue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100018464;
    v14[3] = &unk_100282F50;
    v14[4] = self;
    v15 = v11;
    dispatch_sync(taskContextQueue, v14);
  }
}

+ (void)unimplementedExceptionForMethodName:(id)name
{
  [NSString stringWithFormat:@"[VCPMADPhotosProcessingTask %@] should not be called", name];
  v3 = [NSException exceptionWithName:@"NotImplementedException" reason:objc_claimAutoreleasedReturnValue() userInfo:0];
  objc_exception_throw(v3);
}

- (unint64_t)photosMediaProcessingTaskID
{
  [(MADTaskProvider *)self taskID];

  return PHMediaProcessingTaskIDForVCPTaskID();
}

@end