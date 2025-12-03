@interface VCPMADPhotosProcessingTask
+ (void)unimplementedExceptionForMethodName:(id)name;
- (BOOL)_isAssetEligible:(id)eligible withAnalysisDatabase:(id)database previousStatus:(unint64_t *)status previousAttempts:(int *)attempts lastAttemptDate:(id *)date allowDownload:(BOOL)download;
- (VCPMADPhotosProcessingTask)initWithCompletionHandler:(id)handler;
- (int)_processAssetsInBatch:(id)batch;
- (int)processAssetsInFetchResult:(id)result initialScan:(BOOL)scan analysisDatabase:(id)database allowDownload:(BOOL)download progress:(id)progress;
@end

@implementation VCPMADPhotosProcessingTask

- (VCPMADPhotosProcessingTask)initWithCompletionHandler:(id)handler
{
  v9.receiver = self;
  v9.super_class = VCPMADPhotosProcessingTask;
  v3 = [(VCPMADPhotosProcessingTask *)&v9 initWithCompletionHandler:handler];
  if (v3)
  {
    v4 = dispatch_group_create();
    publishGroup = v3->_publishGroup;
    v3->_publishGroup = v4;

    v6 = dispatch_queue_create("com.apple.mediaanalysisd.photosprocessing.publish", 0);
    publishQueue = v3->_publishQueue;
    v3->_publishQueue = v6;
  }

  return v3;
}

- (BOOL)_isAssetEligible:(id)eligible withAnalysisDatabase:(id)database previousStatus:(unint64_t *)status previousAttempts:(int *)attempts lastAttemptDate:(id *)date allowDownload:(BOOL)download
{
  downloadCopy = download;
  eligibleCopy = eligible;
  databaseCopy = database;
  if (+[MADManagedProcessingStatus isMACDReadEnabled])
  {
    photoLibrary = [eligibleCopy photoLibrary];
    [photoLibrary mad_fetchRequest];
    v16 = databaseCopy;
    v18 = v17 = downloadCopy;
    v41 = 0;
    [eligibleCopy localIdentifier];
    v20 = v19 = eligibleCopy;
    statusCopy2 = status;
    v22 = [v18 fetchProcessingStatus:status attempts:attempts lastAttemptDate:date nextAttemptDate:&v41 localIdentifier:v20 taskID:{objc_msgSend(objc_opt_class(), "taskID")}];
    v23 = v41;

    eligibleCopy = v19;
    downloadCopy = v17;
    databaseCopy = v16;
  }

  else
  {
    v40 = 0;
    photoLibrary = [eligibleCopy localIdentifier];
    statusCopy2 = status;
    v22 = [databaseCopy queryProcessingStatus:status attempts:attempts lastAttemptDate:date andNextAttemptDate:&v40 forLocalIdentifier:photoLibrary andTaskID:{objc_msgSend(objc_opt_class(), "taskID")}];
    v23 = v40;
  }

  if (v22)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v24 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v24))
      {
        name = [objc_opt_class() name];
        localIdentifier = [eligibleCopy localIdentifier];
        *buf = 138412802;
        v43 = name;
        v44 = 2112;
        v45 = localIdentifier;
        v46 = 1024;
        LODWORD(v47) = v22;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "[%@][%@] Failed to query processing status due to DB error %d", buf, 0x1Cu);
      }
    }

    goto LABEL_19;
  }

  if (!*attempts)
  {
    goto LABEL_13;
  }

  v27 = eligibleCopy;
  v28 = +[NSDate date];
  v29 = [v23 compare:v28];

  if (v29 != 1)
  {
    v30 = 1;
    goto LABEL_15;
  }

  eligibleCopy = v27;
  if (!downloadCopy || *attempts != 1 || *statusCopy2 != 2)
  {
    if (MediaAnalysisLogLevel() < 7)
    {
LABEL_19:
      v30 = 0;
      goto LABEL_20;
    }

    v31 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v31))
    {
      name2 = [objc_opt_class() name];
      localIdentifier2 = [v27 localIdentifier];
      v34 = VCPProcessingStatusDescription();
      v35 = *attempts;
      v36 = +[VCPLogManager dateFormatter];
      v37 = [v36 stringFromDate:v23];
      *buf = 138413314;
      v43 = name2;
      v44 = 2112;
      v45 = localIdentifier2;
      v46 = 2112;
      v47 = v34;
      v48 = 1024;
      v49 = v35;
      v50 = 2112;
      v51 = v37;
      v38 = v31;
      eligibleCopy = v27;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v38, "[%@][%@] Asset skipped (%@|%d); revisit date: %@", buf, 0x30u);

      goto LABEL_19;
    }

    v30 = 0;
LABEL_15:
    eligibleCopy = v27;
    goto LABEL_20;
  }

LABEL_13:
  v30 = 1;
LABEL_20:

  return v30;
}

- (int)_processAssetsInBatch:(id)batch
{
  batchCopy = batch;
  v5 = +[MADStateHandler sharedStateHandler];
  [v5 addBreadcrumb:{@"Processing batch size %lu", objc_msgSend(batchCopy, "count")}];

  prepare = [batchCopy prepare];
  if (prepare)
  {
    v7 = prepare;
    if (MediaAnalysisLogLevel() >= 3)
    {
      v8 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        *buf = 138412290;
        v19 = batchCopy;
        v9 = "Failed to prepare batch: %@";
LABEL_5:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, v9, buf, 0xCu);
      }
    }
  }

  else
  {
    process = [batchCopy process];
    v7 = process;
    if (process != -128 && process)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v8 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v8))
        {
          *buf = 138412290;
          v19 = batchCopy;
          v9 = "Failed to process batch: %@";
          goto LABEL_5;
        }
      }
    }

    else
    {
      v11 = +[MADStateHandler sharedStateHandler];
      [v11 addBreadcrumb:{@"Finished processing batch size %lu", objc_msgSend(batchCopy, "count")}];

      dispatch_group_wait(self->_publishGroup, 0xFFFFFFFFFFFFFFFFLL);
      if (!self->_publishError)
      {
        publishGroup = self->_publishGroup;
        publishQueue = self->_publishQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100171010;
        block[3] = &unk_100282F50;
        v16 = batchCopy;
        selfCopy = self;
        dispatch_group_async(publishGroup, publishQueue, block);
      }
    }
  }

  return v7;
}

- (int)processAssetsInFetchResult:(id)result initialScan:(BOOL)scan analysisDatabase:(id)database allowDownload:(BOOL)download progress:(id)progress
{
  downloadCopy = download;
  scanCopy = scan;
  resultCopy = result;
  databaseCopy = database;
  progressCopy = progress;
  v101[0] = _NSConcreteStackBlock;
  v101[1] = 3221225472;
  v101[2] = sub_1001720F0;
  v101[3] = &unk_100285F90;
  v101[4] = self;
  v77 = downloadCopy;
  v80 = [(VCPMADPhotosProcessingTask *)self batchWithAnalysisDatabase:databaseCopy allowDownload:downloadCopy cancelBlock:v101];
  v79 = progressCopy;
  [progressCopy setTotalUnitCount:{objc_msgSend(resultCopy, "count")}];
  v84 = +[NSMutableArray array];
  v85 = resultCopy;
  v14 = [resultCopy count];
  p_superclass = &OBJC_METACLASS___MADPhotosTaskProvider.superclass;
  v81 = databaseCopy;
  photoLibrary = 0;
  if (!v14)
  {
LABEL_76:
    if ([v84 count])
    {
      sharedWatchdog = [p_superclass + 64 sharedWatchdog];
      [sharedWatchdog pet];

      v86[0] = _NSConcreteStackBlock;
      v86[1] = 3221225472;
      v86[2] = sub_100172258;
      v86[3] = &unk_100285F90;
      v86[4] = self;
      [photoLibrary mad_markAsProcessedByTask:objc_msgSend(objc_opt_class() forAssets:"taskID") cancelBlock:v84 extendTimeoutBlock:{v86, &stru_1002878B0}];
      [v84 removeAllObjects];
    }

    if ([v80 count] && (objc_msgSend(v79, "setCompletedUnitCount:", objc_msgSend(v80, "count") + objc_msgSend(v79, "completedUnitCount")), (v67 = -[VCPMADPhotosProcessingTask _processAssetsInBatch:](self, "_processAssetsInBatch:", v80)) != 0))
    {
      LODWORD(v72) = v67;
    }

    else
    {
      LODWORD(v72) = 0;
    }

    goto LABEL_90;
  }

  v82 = 0;
  v17 = 0;
  type = VCPLogToOSLogType[7];
  v78 = VCPLogToOSLogType[5];
  v74 = VCPLogToOSLogType[3];
  code = "ecTask=}32";
  while (1)
  {
    v18 = objc_autoreleasePoolPush();
    if ([(VCPMADPhotosProcessingTask *)self isCanceled])
    {
      objc_autoreleasePoolPop(v18);
      LODWORD(v72) = -128;
      goto LABEL_90;
    }

    sharedWatchdog2 = [p_superclass + 64 sharedWatchdog];
    [sharedWatchdog2 pet];

    v20 = [v85 objectAtIndexedSubscript:v17];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
    {
      name = [objc_opt_class() name];
      localIdentifier = [v20 localIdentifier];
      *buf = 138412546;
      v103 = name;
      v104 = 2112;
      v105 = localIdentifier;
      _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@][%@] Evaluating asset...", buf, 0x16u);
    }

    if (!photoLibrary)
    {
      break;
    }

LABEL_12:
    if ((+[PHPhotoLibrary mad_isProcessingNeededOnAsset:forTaskID:](PHPhotoLibrary, "mad_isProcessingNeededOnAsset:forTaskID:", v20, [objc_opt_class() taskID]) & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v78))
      {
        v28 = objc_opt_class();
        v29 = v28;
        localIdentifier2 = [v20 localIdentifier];
        taskID = [objc_opt_class() taskID];
        *buf = 138412802;
        v103 = v28;
        v104 = 2112;
        v105 = localIdentifier2;
        v106 = 1024;
        v107 = taskID;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v78, "[%@][%@] Asset does not need processing in task %u, ignoring... ", buf, 0x1Cu);

        p_superclass = &OBJC_METACLASS___MADPhotosTaskProvider.superclass;
      }

      [v84 addObject:v20];
      if (+[MADManagedProcessingStatus isMACDPersistEnabled])
      {
        if ((v82 & 1) == 0)
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            name2 = [objc_opt_class() name];
            localIdentifier3 = [v20 localIdentifier];
            taskID2 = [objc_opt_class() taskID];
            *buf = 138412802;
            v103 = name2;
            v104 = 2112;
            v105 = localIdentifier3;
            v106 = 1024;
            v107 = taskID2;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@][%@][MACD] Removing processing status for taskID %d", buf, 0x1Cu);
          }

          v98[0] = _NSConcreteStackBlock;
          v98[1] = 3221225472;
          v98[2] = sub_1001720F8;
          v98[3] = &unk_100282ED8;
          v35 = v20;
          v99 = v35;
          selfCopy = self;
          v97 = 0;
          v36 = [photoLibrary mad_performAnalysisDataStoreChanges:v98 error:&v97];
          v37 = v97;
          if ((v36 & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v74))
          {
            name3 = [objc_opt_class() name];
            localIdentifier4 = [v35 localIdentifier];
            taskID3 = [objc_opt_class() taskID];
            *buf = 138413058;
            v103 = name3;
            v104 = 2112;
            v105 = localIdentifier4;
            v106 = 1024;
            v107 = taskID3;
            v108 = 2112;
            v109 = v37;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v74, "[%@][%@][MACD] Failed to remove processing status for taskID %d: %@", buf, 0x26u);
          }

          p_superclass = (&OBJC_METACLASS___MADPhotosTaskProvider + 8);
        }
      }

      else
      {
        localIdentifier5 = [v20 localIdentifier];
        [v81 removeProcessingStatusForLocalIdentifier:localIdentifier5 andTaskID:{objc_msgSend(objc_opt_class(), "taskID")}];

        [v81 commit];
      }

      v54 = [v84 count];
      if (v54 >= +[PHPhotoLibrary mad_maxIgnoredAssetsToMarkAsProcessed])
      {
        sharedWatchdog3 = [p_superclass + 64 sharedWatchdog];
        [sharedWatchdog3 pet];

        taskID4 = [objc_opt_class() taskID];
        v96[0] = _NSConcreteStackBlock;
        v96[1] = 3221225472;
        v96[2] = sub_100172178;
        v96[3] = &unk_100285F90;
        v96[4] = self;
        [photoLibrary mad_markAsProcessedByTask:taskID4 forAssets:v84 cancelBlock:v96 extendTimeoutBlock:&stru_100287890];
        [v84 removeAllObjects];
      }

      goto LABEL_71;
    }

    if ([(VCPMADPhotosProcessingTask *)self shouldProcessAsset:v20])
    {
      v91 = 0;
      v90 = 0;
      if (v82)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
LABEL_16:
        [v80 addPhotosAsset:v20 withPreviousStatus:v25 attempts:v23 andAttemptDate:v24];
        if ([v80 count] >= 0x64)
        {
          [v79 setCompletedUnitCount:{objc_msgSend(v80, "count") + objc_msgSend(v79, "completedUnitCount")}];
          v26 = [(VCPMADPhotosProcessingTask *)self _processAssetsInBatch:v80];
          if (v26)
          {
            LODWORD(v72) = v26;
LABEL_88:

            goto LABEL_89;
          }

          v87[0] = _NSConcreteStackBlock;
          v87[1] = 3221225472;
          v87[2] = sub_100172250;
          v87[3] = &unk_100285F90;
          v87[4] = self;
          v27 = [(VCPMADPhotosProcessingTask *)self batchWithAnalysisDatabase:v81 allowDownload:v77 cancelBlock:v87];

          v80 = v27;
          p_superclass = (&OBJC_METACLASS___MADPhotosTaskProvider + 8);
        }

        goto LABEL_70;
      }

      v89 = 0;
      v57 = [(VCPMADPhotosProcessingTask *)self _isAssetEligible:v20 withAnalysisDatabase:v81 previousStatus:&v91 previousAttempts:&v90 lastAttemptDate:&v89 allowDownload:v77];
      v24 = v89;
      if (v57)
      {
        v23 = v90;
        if (!scanCopy || !v90)
        {
          v25 = v91;
          if (v91 != 4)
          {
            goto LABEL_16;
          }

          v88[0] = _NSConcreteStackBlock;
          v88[1] = 3221225472;
          v88[2] = sub_100172248;
          v88[3] = &unk_100285F90;
          v88[4] = self;
          v65 = [(VCPMADPhotosProcessingTask *)self batchWithAnalysisDatabase:v81 allowDownload:v77 cancelBlock:v88];
          [v65 addPhotosAsset:v20 withPreviousStatus:v91 attempts:v90 andAttemptDate:v24];
          [v79 setCompletedUnitCount:{objc_msgSend(v79, "completedUnitCount") + 1}];
          LODWORD(v72) = [(VCPMADPhotosProcessingTask *)self _processAssetsInBatch:v65];

          if (v72)
          {
            goto LABEL_88;
          }

          p_superclass = (&OBJC_METACLASS___MADPhotosTaskProvider + 8);
LABEL_70:

          goto LABEL_71;
        }

        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          name4 = [objc_opt_class() name];
          localIdentifier6 = [v20 localIdentifier];
          *buf = 138412802;
          v103 = name4;
          v104 = 2112;
          v105 = localIdentifier6;
          v106 = 1024;
          v107 = v90;
          v60 = type;
          v61 = "[%@][%@] Initial scan skips asset with previous attempts (%d)";
          v62 = 28;
          goto LABEL_68;
        }
      }

      else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
      {
        name4 = [objc_opt_class() name];
        localIdentifier6 = [v20 localIdentifier];
        *buf = 138412546;
        v103 = name4;
        v104 = 2112;
        v105 = localIdentifier6;
        v60 = type;
        v61 = "[%@][%@] Asset not eligible for processing; skipping";
        v62 = 22;
LABEL_68:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v60, v61, buf, v62);
      }

      [v79 setCompletedUnitCount:{objc_msgSend(v79, "completedUnitCount") + 1}];
      goto LABEL_70;
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
    {
      name5 = [objc_opt_class() name];
      localIdentifier7 = [v20 localIdentifier];
      *buf = 138412546;
      v103 = name5;
      v104 = 2112;
      v105 = localIdentifier7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@][%@] Asset up-to-date; skipping", buf, 0x16u);
    }

    if (+[MADManagedProcessingStatus isMACDPersistEnabled])
    {
      if ((v82 & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          name6 = [objc_opt_class() name];
          localIdentifier8 = [v20 localIdentifier];
          taskID5 = [objc_opt_class() taskID];
          *buf = 138412802;
          v103 = name6;
          v104 = 2112;
          v105 = localIdentifier8;
          v106 = 1024;
          v107 = taskID5;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@][%@][MACD] Removing processing status for taskID %d", buf, 0x1Cu);
        }

        v93[0] = _NSConcreteStackBlock;
        v93[1] = 3221225472;
        v93[2] = sub_1001721C8;
        v93[3] = &unk_100282ED8;
        v46 = v20;
        v94 = v46;
        selfCopy2 = self;
        v92 = 0;
        v47 = [photoLibrary mad_performAnalysisDataStoreChanges:v93 error:&v92];
        v48 = v92;
        v49 = v48;
        if ((v47 & 1) == 0)
        {
          code = [v48 code];
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v74))
          {
            name7 = [objc_opt_class() name];
            localIdentifier9 = [v46 localIdentifier];
            taskID6 = [objc_opt_class() taskID];
            *buf = 138413058;
            v103 = name7;
            v104 = 2112;
            v105 = localIdentifier9;
            v106 = 1024;
            v107 = taskID6;
            v108 = 2112;
            v109 = v49;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v74, "[%@][%@][MACD] Failed to remove processing status for taskID %d: %@", buf, 0x26u);
          }
        }

        p_superclass = (&OBJC_METACLASS___MADPhotosTaskProvider + 8);
        if ((v47 & 1) == 0)
        {
          LODWORD(v72) = code;
          goto LABEL_89;
        }
      }
    }

    else
    {
      localIdentifier10 = [v20 localIdentifier];
      v64 = [v81 removeProcessingStatusForLocalIdentifier:localIdentifier10 andTaskID:{objc_msgSend(objc_opt_class(), "taskID")}];

      if (v64 == -108 || v64 == -36)
      {
        v72 = v64;
      }

      else
      {
        v72 = v64;
        if (v64 != -23)
        {
          v72 = code;
        }
      }

      if (v64 == -108 || v64 == -36 || v64 == -23)
      {
        goto LABEL_89;
      }

      [v81 commit];
      code = v72;
    }

    [v79 setCompletedUnitCount:{objc_msgSend(v79, "completedUnitCount") + 1}];
LABEL_71:

    objc_autoreleasePoolPop(v18);
    if (++v17 >= [v85 count])
    {
      goto LABEL_76;
    }
  }

  photoLibrary = [v20 photoLibrary];
  if (![MADPhotosDataStoreClient needsDataStoreMigrationForPhotoLibrary:photoLibrary])
  {
    v82 = 0;
    goto LABEL_12;
  }

  if ([objc_opt_class() allowBeforeMigration])
  {
    v82 = 1;
    goto LABEL_12;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v74))
  {
    v68 = objc_opt_class();
    v69 = v68;
    localIdentifier11 = [v20 localIdentifier];
    taskID7 = [objc_opt_class() taskID];
    *buf = 138412802;
    v103 = v68;
    v104 = 2112;
    v105 = localIdentifier11;
    v106 = 1024;
    v107 = taskID7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, v74, "[%@][%@] Skipping task %u due to migration incomplete", buf, 0x1Cu);
  }

  LODWORD(v72) = -18;
LABEL_89:

  objc_autoreleasePoolPop(v18);
LABEL_90:

  return v72;
}

+ (void)unimplementedExceptionForMethodName:(id)name
{
  [NSString stringWithFormat:@"[VCPMADPhotosProcessingTask %@] should not be called", name];
  v3 = [NSException exceptionWithName:@"NotImplementedException" reason:objc_claimAutoreleasedReturnValue() userInfo:0];
  objc_exception_throw(v3);
}

@end