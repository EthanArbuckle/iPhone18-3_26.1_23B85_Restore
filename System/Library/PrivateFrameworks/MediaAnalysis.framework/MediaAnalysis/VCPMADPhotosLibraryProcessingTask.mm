@interface VCPMADPhotosLibraryProcessingTask
- (BOOL)run:(id *)run;
- (VCPMADPhotosLibraryProcessingTask)initWithPhotoLibraries:(id)libraries cancelBlock:(id)block progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (int)_checkHardFailuresForPhotoLibrary:(id)library withAnalysisDatabase:(id)database;
- (int)_processDownloadEligibleAssetsInPhotoLibrary:(id)library withAnalysisDatabase:(id)database andProgress:(id)progress;
- (int)_processFailedAssetsInPhotoLibrary:(id)library withAnalysisDatabase:(id)database andProgress:(id)progress;
- (int)_processPhotoLibrary:(id)library withProgress:(id)progress;
- (int)completeSceneProcessingWithProgress:(id)progress;
- (int)processAllAssetsInPhotoLibrary:(id)library withAnalysisDatabase:(id)database andProgress:(id)progress;
@end

@implementation VCPMADPhotosLibraryProcessingTask

- (VCPMADPhotosLibraryProcessingTask)initWithPhotoLibraries:(id)libraries cancelBlock:(id)block progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  librariesCopy = libraries;
  blockCopy = block;
  handlerCopy = handler;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001191F4;
  v21[3] = &unk_100284038;
  completionHandlerCopy = completionHandler;
  v22 = completionHandlerCopy;
  v20.receiver = self;
  v20.super_class = VCPMADPhotosLibraryProcessingTask;
  v15 = [(VCPMADPhotosProcessingTask *)&v20 initWithCompletionHandler:v21];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong((v15 + 28), libraries);
    v17 = objc_retainBlock(handlerCopy);
    v18 = *(v16 + 36);
    *(v16 + 36) = v17;

    [v16 setCancelBlock:blockCopy];
  }

  return v16;
}

- (int)completeSceneProcessingWithProgress:(id)progress
{
  progressCopy = progress;
  v5 = objc_autoreleasePoolPush();
  [progressCopy setTotalUnitCount:100];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100119408;
  v12[3] = &unk_100285690;
  v12[4] = self;
  v6 = progressCopy;
  v13 = v6;
  v7 = objc_retainBlock(v12);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001195E4;
  v11[3] = &unk_100283000;
  v11[4] = self;
  v8 = objc_retainBlock(v11);
  v9 = [VCPMADSceneLibraryProcessingTask taskWithPhotoLibraries:*(&self->super._publishError + 1) cancelBlock:v8 progressHandler:v7 andCompletionHandler:&stru_1002869F0];
  LODWORD(self) = [v9 run];

  objc_autoreleasePoolPop(v5);
  return self;
}

- (int)_checkHardFailuresForPhotoLibrary:(id)library withAnalysisDatabase:(id)database
{
  libraryCopy = library;
  databaseCopy = database;
  if (MediaAnalysisLogLevel() >= 5)
  {
    v7 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      name = [objc_opt_class() name];
      *buf = 138412290;
      v60 = name;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[%@][HFC] Checking processing status from previous runs", buf, 0xCu);
    }
  }

  if (+[MADManagedProcessingStatus isMACDReadEnabled])
  {
    mad_fetchRequest = [libraryCopy mad_fetchRequest];
    v58 = 0;
    [mad_fetchRequest fetchLocalIdentifiers:&v58 taskID:objc_msgSend(objc_opt_class() processingStatus:{"taskID"), 1}];
    v10 = v58;

    v11 = v10;
  }

  else
  {
    v57 = 0;
    [databaseCopy fetchLocalIdentifiers:&v57 withTaskID:objc_msgSend(objc_opt_class() andProcessingStatus:{"taskID"), 1}];
    v11 = v57;
  }

  v48 = v11;
  v12 = [v11 count];
  if (!v12)
  {
    goto LABEL_51;
  }

  v47 = v12;
  v44 = +[PHAsset vcp_fetchOptionsForLibrary:forTaskID:](PHAsset, "vcp_fetchOptionsForLibrary:forTaskID:", libraryCopy, [objc_opt_class() taskID]);
  v13 = [PHAsset fetchAssetsWithLocalIdentifiers:v48 options:?];
  v14 = 0;
  v43 = VCPLogToOSLogType[3];
  v45 = VCPLogToOSLogType[6];
  type = VCPLogToOSLogType[7];
  while (v14 < [v13 count])
  {
    v15 = objc_autoreleasePoolPush();
    if (([(VCPMADPhotosLibraryProcessingTask *)self isCanceled]& 1) == 0)
    {
      v17 = +[VCPWatchdog sharedWatchdog];
      [v17 pet];

      v18 = [v13 objectAtIndexedSubscript:v14];
      name2 = [objc_opt_class() name];
      localIdentifier = [v18 localIdentifier];
      v21 = [NSString stringWithFormat:@"[%@][HFC][%@]", name2, localIdentifier];

      if ([(VCPMADPhotosProcessingTask *)self shouldProcessAsset:v18])
      {
        v16 = 1;
        goto LABEL_14;
      }

      if (+[MADManagedProcessingStatus isMACDPersistEnabled])
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          [objc_opt_class() taskID];
          v23 = VCPTaskIDDescription();
          *buf = 138412546;
          v60 = v21;
          v61 = 2112;
          v62 = v23;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@[MACD] Removing processing status for %@", buf, 0x16u);
        }

        v54[0] = _NSConcreteStackBlock;
        v54[1] = 3221225472;
        v54[2] = sub_10011A070;
        v54[3] = &unk_100282938;
        v55 = v18;
        selfCopy = self;
        v53 = 0;
        v24 = [libraryCopy mad_performAnalysisDataStoreChanges:v54 error:&v53];
        v25 = v53;
        v26 = v25;
        if ((v24 & 1) == 0)
        {
          code = [v25 code];
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v43))
          {
            [objc_opt_class() taskID];
            v27 = VCPTaskIDDescription();
            *buf = 138412802;
            v60 = v21;
            v61 = 2112;
            v62 = v27;
            v63 = 2112;
            v64 = v26;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v43, "%@[MACD] Failed to remove processing status for taskID %@: %@", buf, 0x20u);
          }
        }

        if (v24)
        {
          v22 = code;
          goto LABEL_33;
        }

        v16 = 0;
LABEL_14:
        v22 = code;
      }

      else
      {
        localIdentifier2 = [v18 localIdentifier];
        v29 = [databaseCopy removeProcessingStatusForLocalIdentifier:localIdentifier2 andTaskID:{objc_msgSend(objc_opt_class(), "taskID")}];

        if (v29 == -108 || v29 == -36)
        {
          v22 = v29;
        }

        else
        {
          v22 = v29;
          if (v29 != -23)
          {
            v22 = code;
          }
        }

        v16 = 0;
        if (v29 != -108 && v29 != -36 && v29 != -23)
        {
LABEL_33:
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v45))
          {
            *buf = 138412290;
            v60 = v21;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v45, "%@ Asset is processed; clearing failure status", buf, 0xCu);
          }

          --v47;
          v16 = 1;
        }
      }

      code = v22;
      goto LABEL_38;
    }

    v16 = 0;
    code = 4294967168;
LABEL_38:
    objc_autoreleasePoolPop(v15);
    ++v14;
    if ((v16 & 1) == 0)
    {
      goto LABEL_68;
    }
  }

  v30 = +[VCPWatchdog sharedWatchdog];
  [v30 pet];

  if (+[MADManagedProcessingStatus isMACDPersistEnabled])
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
    {
      name3 = [objc_opt_class() name];
      *buf = 138412546;
      v60 = name3;
      v61 = 2048;
      v62 = v47;
      _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@][HFC][MACD] %lu assets processing status changed to Hard Failure", buf, 0x16u);
    }

    v51 = 0;
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_10011A104;
    v52[3] = &unk_100283AD0;
    v52[4] = self;
    v32 = [libraryCopy mad_performAnalysisDataStoreChanges:v52 error:&v51];
    v33 = v51;
    v34 = v33;
    if (v32)
    {

      goto LABEL_47;
    }

    LODWORD(code) = [v33 code];
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v43))
    {
      name4 = [objc_opt_class() name];
      *buf = 138412802;
      v60 = name4;
      v61 = 2048;
      v62 = v47;
      v63 = 2112;
      v64 = v34;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v43, "[%@][HFC][MACD] Failed to change processing status of %lu assets to Hard Failure: %@", buf, 0x20u);
    }

LABEL_68:
    goto LABEL_69;
  }

  v38 = [databaseCopy hardFailAllRunningProcessingStatusForTaskID:{objc_msgSend(objc_opt_class(), "taskID")}];
  if (v38 == -108 || v38 == -36)
  {
    v39 = v38;
  }

  else
  {
    v39 = v38;
    if (v38 != -23)
    {
      v39 = code;
    }
  }

  if (v38 == -108 || v38 == -36 || v38 == -23)
  {
    LODWORD(code) = v39;
    goto LABEL_68;
  }

  commit = [databaseCopy commit];
  if (commit == -108 || commit == -36)
  {
    LODWORD(code) = commit;
  }

  else
  {
    LODWORD(code) = commit;
    if (commit != -23)
    {
      LODWORD(code) = v39;
    }
  }

  if (commit == -108 || commit == -36 || commit == -23)
  {
    goto LABEL_68;
  }

LABEL_47:
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v45))
  {
    name5 = [objc_opt_class() name];
    *buf = 138412546;
    v60 = name5;
    v61 = 2048;
    v62 = v47;
    _os_log_impl(&_mh_execute_header, &_os_log_default, v45, "[%@][HFC] %lu assets processing status changed to Hard Failure", buf, 0x16u);
  }

LABEL_51:
  if (MediaAnalysisLogLevel() >= 6)
  {
    v36 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v36))
    {
      name6 = [objc_opt_class() name];
      *buf = 138412290;
      v60 = name6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v36, "[%@][HFC] Processing status is up-to-date", buf, 0xCu);
    }
  }

  LODWORD(code) = 0;
LABEL_69:

  return code;
}

- (int)processAllAssetsInPhotoLibrary:(id)library withAnalysisDatabase:(id)database andProgress:(id)progress
{
  libraryCopy = library;
  databaseCopy = database;
  progressCopy = progress;
  if (MediaAnalysisLogLevel() >= 5)
  {
    v8 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v8))
    {
      name = [objc_opt_class() name];
      *buf = 138412290;
      v47 = name;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[%@] Evaluating all assets in Photo Library", buf, 0xCu);
    }
  }

  assetPriorities = [(VCPMADPhotosLibraryProcessingTask *)self assetPriorities];
  v11 = 1;
  type = VCPLogToOSLogType[5];
  v43 = VCPLogToOSLogType[3];
  v39 = VCPLogToOSLogType[6];
  do
  {
    if (v11 - 1 >= [assetPriorities count])
    {
      break;
    }

    v12 = objc_autoreleasePoolPush();
    if ([assetPriorities count] >= 2 && MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
    {
      name2 = [objc_opt_class() name];
      *buf = 138412546;
      v47 = name2;
      v48 = 2048;
      v49 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@] Evaluating P%lu assets", buf, 0x16u);
    }

    v14 = [assetPriorities objectAtIndexedSubscript:v11 - 1];
    unsignedIntegerValue = [v14 unsignedIntegerValue];

    v16 = [PHMediaProcessingAlgorithmVersionProvider mad_sharedVersionProviderWithPhotoLibrary:libraryCopy];
    +[PHAsset mad_sceneConfidenceThresholdForTask:](PHAsset, "mad_sceneConfidenceThresholdForTask:", [objc_opt_class() taskID]);
    v18 = v17;
    v19 = +[MADStateHandler sharedStateHandler];
    name3 = [objc_opt_class() name];
    [v19 addBreadcrumb:{@"[%@] Fetching Priority%lu assets", name3, v11}];

    v21 = VCPSignPostLog();
    v22 = os_signpost_id_generate(v21);

    v23 = VCPSignPostLog();
    v24 = v23;
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "VCPMADPhotosLibraryProcessingTask_FetchAssets", "", buf, 2u);
    }

    [objc_opt_class() taskID];
    v25 = PHMediaProcessingTaskIDForVCPTaskID();
    v45 = 0;
    LODWORD(v26) = v18;
    v27 = [libraryCopy fetchAssetsForMediaProcessingTaskID:v25 priority:unsignedIntegerValue algorithmVersion:v16 sceneConfidenceThreshold:&v45 error:v26];
    v28 = v45;
    v29 = VCPSignPostLog();
    v30 = v29;
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_INTERVAL_END, v22, "VCPMADPhotosLibraryProcessingTask_FetchAssets", "", buf, 2u);
    }

    if (v28)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v43))
      {
        name4 = [objc_opt_class() name];
        *buf = 138412546;
        v47 = name4;
        v48 = 2112;
        v49 = v28;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v43, "[%@] Failed to fetch assets: %@", buf, 0x16u);
      }

      v32 = 0;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v39))
      {
        name5 = [objc_opt_class() name];
        v34 = [v27 count];
        *buf = 138412546;
        v47 = name5;
        v48 = 1024;
        LODWORD(v49) = v34;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v39, "[%@] Fetched %d assets", buf, 0x12u);
      }

      v35 = +[MADStateHandler sharedStateHandler];
      name6 = [objc_opt_class() name];
      [v35 addBreadcrumb:{@"[%@] Fetched %d Priority%lu assets", name6, objc_msgSend(v27, "count"), v11}];

      v32 = [(VCPMADPhotosProcessingTask *)self processAssetsInFetchResult:v27 initialScan:1 analysisDatabase:databaseCopy allowDownload:0 progress:progressCopy]== 0;
    }

    objc_autoreleasePoolPop(v12);
    ++v11;
  }

  while (v32);
  waitForPublishing = [(VCPMADPhotosProcessingTask *)self waitForPublishing];

  return waitForPublishing;
}

- (int)_processDownloadEligibleAssetsInPhotoLibrary:(id)library withAnalysisDatabase:(id)database andProgress:(id)progress
{
  libraryCopy = library;
  databaseCopy = database;
  progressCopy = progress;
  v8 = "ecTask=}32";
  if (MediaAnalysisLogLevel() >= 5)
  {
    v9 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v9))
    {
      name = [objc_opt_class() name];
      *buf = 138412290;
      v75 = name;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[%@] Evaluating download eligible assets", buf, 0xCu);
    }
  }

  if (+[MADManagedProcessingStatus isMACDReadEnabled])
  {
    mad_fetchRequest = [libraryCopy mad_fetchRequest];
    [progressCopy setTotalUnitCount:{objc_msgSend(mad_fetchRequest, "fetchAssetCountForTaskID:status:attempts:", objc_msgSend(objc_opt_class(), "taskID"), 2, 1)}];
  }

  else
  {
    [progressCopy setTotalUnitCount:{objc_msgSend(databaseCopy, "queryAssetCountForTaskID:withStatus:andAttempts:", objc_msgSend(objc_opt_class(), "taskID"), 2, 1)}];
  }

  type = VCPLogToOSLogType[3];
  v57 = VCPLogToOSLogType[7];
  do
  {
    v12 = objc_autoreleasePoolPush();
    if (([(VCPMADPhotosLibraryProcessingTask *)self isCanceled]& 1) != 0)
    {
      v8 = 4294967168;
      v13 = 1;
      goto LABEL_36;
    }

    v14 = +[VCPWatchdog sharedWatchdog];
    [v14 pet];

    if (+[MADManagedProcessingStatus isMACDReadEnabled])
    {
      mad_fetchRequest2 = [libraryCopy mad_fetchRequest];
      v72 = 0;
      v16 = [mad_fetchRequest2 fetchLocalIdentifiers:&v72 processingStatus:2 taskID:objc_msgSend(objc_opt_class() attempts:"taskID") fetchLimit:{1, 100}];
      v17 = v72;

      if (v16)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
        {
          name2 = [objc_opt_class() name];
          *buf = 138412290;
          v75 = name2;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@][MACD] Failed to fetch local identifiers that failed once", buf, 0xCu);
        }

        v13 = 1;
        goto LABEL_35;
      }

      v16 = v8;
    }

    else
    {
      v71 = 0;
      v19 = [databaseCopy fetchLocalIdentifiers:&v71 withProcessingStatus:2 andTaskID:objc_msgSend(objc_opt_class() andAttempts:"taskID") andFetchLimit:{1, 100}];
      v17 = v71;
      if (v19 == -108 || v19 == -36)
      {
        v16 = v19;
      }

      else
      {
        v16 = v19;
        if (v19 != -23)
        {
          v16 = v8;
        }
      }

      v13 = 1;
      if (v19 == -108 || v19 == -36 || v19 == -23)
      {
        goto LABEL_35;
      }
    }

    if (![v17 count])
    {
      v13 = 5;
      goto LABEL_35;
    }

    v20 = +[MADStateHandler sharedStateHandler];
    name3 = [objc_opt_class() name];
    [v20 addBreadcrumb:{@"[%@] Fetching %d download eligible assets", name3, objc_msgSend(v17, "count")}];

    v22 = +[PHAsset vcp_fetchOptionsForLibrary:forTaskID:](PHAsset, "vcp_fetchOptionsForLibrary:forTaskID:", libraryCopy, [objc_opt_class() taskID]);
    v23 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:0];
    v80 = v23;
    v24 = [NSArray arrayWithObjects:&v80 count:1];
    [v22 setSortDescriptors:v24];

    v25 = [PHAsset fetchAssetsWithLocalIdentifiers:v17 options:v22];
    v26 = +[MADStateHandler sharedStateHandler];
    name4 = [objc_opt_class() name];
    [v26 addBreadcrumb:{@"[%@] Fetched %d download eligible assets", name4, objc_msgSend(v17, "count")}];

    v28 = [(VCPMADPhotosProcessingTask *)self processAssetsInFetchResult:v25 initialScan:0 analysisDatabase:databaseCopy allowDownload:1 progress:0];
    if (v28 || ((v29 = [(VCPMADPhotosProcessingTask *)self waitForPublishing], v28 = v29, v29) ? (v30 = v29) : (v30 = v16), v29))
    {
      v13 = 1;
      goto LABEL_33;
    }

    [progressCopy setCompletedUnitCount:{objc_msgSend(v25, "count") + objc_msgSend(progressCopy, "completedUnitCount")}];
    code = v30;
    v31 = [[NSMutableSet alloc] initWithArray:v17];
    for (i = 0; i < [v25 count]; ++i)
    {
      v33 = objc_autoreleasePoolPush();
      v34 = [v25 objectAtIndexedSubscript:i];
      localIdentifier = [v34 localIdentifier];
      [v31 removeObject:localIdentifier];

      objc_autoreleasePoolPop(v33);
    }

    if (![v31 count])
    {
      goto LABEL_76;
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v57))
    {
      name5 = [objc_opt_class() name];
      v37 = [v31 count];
      *buf = 138412546;
      v75 = name5;
      v76 = 2048;
      *v77 = v37;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v57, "[%@] Dropping processing status for %lu unknown localIdentifiers", buf, 0x16u);
    }

    if (+[MADManagedProcessingStatus isMACDPersistEnabled])
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v57))
      {
        name6 = [objc_opt_class() name];
        taskID = [objc_opt_class() taskID];
        *buf = 138412802;
        v75 = name6;
        v76 = 1024;
        *v77 = taskID;
        *&v77[4] = 2112;
        *&v77[6] = v31;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v57, "[%@][MACD] Removing processing status for taskID %d, localIdentifiers %@", buf, 0x1Cu);
      }

      v68[0] = _NSConcreteStackBlock;
      v68[1] = 3221225472;
      v68[2] = sub_10011B2D0;
      v68[3] = &unk_100282938;
      v40 = v31;
      v69 = v40;
      selfCopy = self;
      v67 = 0;
      v41 = [libraryCopy mad_performAnalysisDataStoreChanges:v68 error:&v67];
      v42 = v67;
      v43 = v42;
      if ((v41 & 1) == 0)
      {
        code = [v42 code];
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
        {
          name7 = [objc_opt_class() name];
          taskID2 = [objc_opt_class() taskID];
          *buf = 138413058;
          v75 = name7;
          v76 = 1024;
          *v77 = taskID2;
          *&v77[4] = 2112;
          *&v77[6] = v40;
          v78 = 2112;
          v79 = v43;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@][MACD] Failed to remove processing status for taskID %d, localIdentifiers %@: %@", buf, 0x26u);
        }
      }

      if (v41)
      {
        goto LABEL_76;
      }

LABEL_78:
      v13 = 1;
      goto LABEL_79;
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = v31;
    v46 = [obj countByEnumeratingWithState:&v63 objects:v73 count:16];
    if (!v46)
    {
      goto LABEL_75;
    }

    v56 = *v64;
    while (2)
    {
      v47 = 0;
      v48 = code;
      do
      {
        if (*v64 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v49 = [databaseCopy removeProcessingStatusForLocalIdentifier:*(*(&v63 + 1) + 8 * v47) andTaskID:{objc_msgSend(objc_opt_class(), "taskID")}];
        if (v49 == -108)
        {
          v51 = v49;
          goto LABEL_67;
        }

        v50 = v49 == -36 || v49 == -23;
        code = v49;
        if (!v50)
        {
          v51 = v48;
LABEL_67:
          code = v51;
        }

        if (v49 == -108 || (v49 != -36 ? (v52 = v49 == -23) : (v52 = 1), v52))
        {

          goto LABEL_78;
        }

        v47 = v47 + 1;
        v48 = code;
      }

      while (v46 != v47);
      v46 = [obj countByEnumeratingWithState:&v63 objects:v73 count:16];
      if (v46)
      {
        continue;
      }

      break;
    }

LABEL_75:

LABEL_76:
    v13 = 0;
LABEL_79:

    v28 = code;
LABEL_33:

    v16 = v28;
LABEL_35:

    v8 = v16;
LABEL_36:
    objc_autoreleasePoolPop(v12);
  }

  while (!v13);
  if (v13 == 5)
  {
    v53 = 0;
  }

  else
  {
    v53 = v8;
  }

  return v53;
}

- (int)_processFailedAssetsInPhotoLibrary:(id)library withAnalysisDatabase:(id)database andProgress:(id)progress
{
  libraryCopy = library;
  databaseCopy = database;
  progressCopy = progress;
  if (MediaAnalysisLogLevel() >= 5)
  {
    v9 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v9))
    {
      name = [objc_opt_class() name];
      *buf = 138412290;
      v75 = name;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[%@] Evaluating failed assets for retry eligibility", buf, 0xCu);
    }
  }

  vcp_allowsCloudLibraryResourceDownload = [libraryCopy vcp_allowsCloudLibraryResourceDownload];
  if (+[MADManagedProcessingStatus isMACDReadEnabled])
  {
    mad_fetchRequest = [libraryCopy mad_fetchRequest];
    [progressCopy setTotalUnitCount:{objc_msgSend(mad_fetchRequest, "fetchEligibleToRetryAssetCountWithTaskID:", objc_msgSend(objc_opt_class(), "taskID"))}];
  }

  else
  {
    [progressCopy setTotalUnitCount:{objc_msgSend(databaseCopy, "queryEligibleToRetryAssetCountWithTaskID:", objc_msgSend(objc_opt_class(), "taskID"))}];
  }

  type = VCPLogToOSLogType[7];
  v56 = VCPLogToOSLogType[3];
  do
  {
    v12 = objc_autoreleasePoolPush();
    if (([(VCPMADPhotosLibraryProcessingTask *)self isCanceled]& 1) != 0)
    {
      v5 = 4294967168;
      v13 = 1;
      goto LABEL_33;
    }

    v14 = +[VCPWatchdog sharedWatchdog];
    [v14 pet];

    if (+[MADManagedProcessingStatus isMACDReadEnabled])
    {
      mad_fetchRequest2 = [libraryCopy mad_fetchRequest];
      v72 = 0;
      v16 = [mad_fetchRequest2 fetchLocalIdentifiersEligibleForRetry:&v72 taskID:objc_msgSend(objc_opt_class() fetchLimit:{"taskID"), 100}];
      v17 = v72;

      if (v16)
      {
        v13 = 1;
        goto LABEL_32;
      }

      v16 = v5;
    }

    else
    {
      v71 = 0;
      v18 = [databaseCopy fetchLocalIdentifiersEligibleForRetry:&v71 withTaskID:objc_msgSend(objc_opt_class() andFetchLimit:{"taskID"), 100}];
      v17 = v71;
      if (v18 == -108 || v18 == -36)
      {
        v16 = v18;
      }

      else
      {
        v16 = v18;
        if (v18 != -23)
        {
          v16 = v5;
        }
      }

      v13 = 1;
      if (v18 == -108 || v18 == -36 || v18 == -23)
      {
        goto LABEL_32;
      }
    }

    if (![v17 count])
    {
      v13 = 5;
      goto LABEL_32;
    }

    v19 = +[MADStateHandler sharedStateHandler];
    name2 = [objc_opt_class() name];
    [v19 addBreadcrumb:{@"[%@] Fetching %d retry eligible assets", name2, objc_msgSend(v17, "count")}];

    v21 = +[PHAsset vcp_fetchOptionsForLibrary:forTaskID:](PHAsset, "vcp_fetchOptionsForLibrary:forTaskID:", libraryCopy, [objc_opt_class() taskID]);
    v22 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:0];
    v80 = v22;
    v23 = [NSArray arrayWithObjects:&v80 count:1];
    [v21 setSortDescriptors:v23];

    v24 = [PHAsset fetchAssetsWithLocalIdentifiers:v17 options:v21];
    v25 = +[MADStateHandler sharedStateHandler];
    name3 = [objc_opt_class() name];
    [v25 addBreadcrumb:{@"[%@] Fetched %d retry eligible assets", name3, objc_msgSend(v17, "count")}];

    v27 = [(VCPMADPhotosProcessingTask *)self processAssetsInFetchResult:v24 initialScan:0 analysisDatabase:databaseCopy allowDownload:vcp_allowsCloudLibraryResourceDownload progress:0];
    if (v27 || ((v28 = [(VCPMADPhotosProcessingTask *)self waitForPublishing], v27 = v28, v28) ? (v29 = v28) : (v29 = v16), v28))
    {
      v13 = 1;
      goto LABEL_30;
    }

    code = v29;
    [progressCopy setCompletedUnitCount:{objc_msgSend(v24, "count") + objc_msgSend(progressCopy, "completedUnitCount")}];
    [v24 count];
    v30 = [[NSMutableSet alloc] initWithArray:v17];
    for (i = 0; i < [v24 count]; ++i)
    {
      v32 = objc_autoreleasePoolPush();
      v33 = [v24 objectAtIndexedSubscript:i];
      localIdentifier = [v33 localIdentifier];
      [v30 removeObject:localIdentifier];

      objc_autoreleasePoolPop(v32);
    }

    if (![v30 count])
    {
      goto LABEL_73;
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
    {
      name4 = [objc_opt_class() name];
      v36 = [v30 count];
      *buf = 138412546;
      v75 = name4;
      v76 = 2048;
      *v77 = v36;
      _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@] Dropping processing status for %lu unknown localIdentifiers", buf, 0x16u);
    }

    if (+[MADManagedProcessingStatus isMACDPersistEnabled])
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
      {
        name5 = [objc_opt_class() name];
        taskID = [objc_opt_class() taskID];
        *buf = 138412802;
        v75 = name5;
        v76 = 1024;
        *v77 = taskID;
        *&v77[4] = 2112;
        *&v77[6] = v30;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@][MACD] Removing processing status for taskID %d, localIdentifiers %@", buf, 0x1Cu);
      }

      v68[0] = _NSConcreteStackBlock;
      v68[1] = 3221225472;
      v68[2] = sub_10011BDEC;
      v68[3] = &unk_100282938;
      v39 = v30;
      v69 = v39;
      selfCopy = self;
      v67 = 0;
      v40 = [libraryCopy mad_performAnalysisDataStoreChanges:v68 error:&v67];
      v41 = v67;
      v42 = v41;
      if ((v40 & 1) == 0)
      {
        code = [v41 code];
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v56))
        {
          name6 = [objc_opt_class() name];
          taskID2 = [objc_opt_class() taskID];
          *buf = 138413058;
          v75 = name6;
          v76 = 1024;
          *v77 = taskID2;
          *&v77[4] = 2112;
          *&v77[6] = v39;
          v78 = 2112;
          v79 = v42;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v56, "[%@][MACD] Failed to remove processing status for taskID %d, localIdentifiers %@: %@", buf, 0x26u);
        }
      }

      if (v40)
      {
        goto LABEL_73;
      }

LABEL_75:
      v13 = 1;
      goto LABEL_76;
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = v30;
    v45 = [obj countByEnumeratingWithState:&v63 objects:v73 count:16];
    if (!v45)
    {
      goto LABEL_72;
    }

    v55 = *v64;
    while (2)
    {
      v46 = 0;
      v47 = code;
      do
      {
        if (*v64 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v48 = [databaseCopy removeProcessingStatusForLocalIdentifier:*(*(&v63 + 1) + 8 * v46) andTaskID:{objc_msgSend(objc_opt_class(), "taskID")}];
        if (v48 == -108)
        {
          v50 = v48;
          goto LABEL_64;
        }

        v49 = v48 == -36 || v48 == -23;
        code = v48;
        if (!v49)
        {
          v50 = v47;
LABEL_64:
          code = v50;
        }

        if (v48 == -108 || (v48 != -36 ? (v51 = v48 == -23) : (v51 = 1), v51))
        {

          goto LABEL_75;
        }

        v46 = v46 + 1;
        v47 = code;
      }

      while (v45 != v46);
      v45 = [obj countByEnumeratingWithState:&v63 objects:v73 count:16];
      if (v45)
      {
        continue;
      }

      break;
    }

LABEL_72:

LABEL_73:
    v13 = 0;
LABEL_76:

    v27 = code;
LABEL_30:

    v16 = v27;
LABEL_32:

    v5 = v16;
LABEL_33:
    objc_autoreleasePoolPop(v12);
  }

  while (!v13);
  if (v13 == 5)
  {
    v52 = 0;
  }

  else
  {
    v52 = v5;
  }

  return v52;
}

- (int)_processPhotoLibrary:(id)library withProgress:(id)progress
{
  libraryCopy = library;
  progressCopy = progress;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10011C348;
  v29[3] = &unk_100283000;
  v29[4] = self;
  v8 = objc_retainBlock(v29);
  [progressCopy setTotalUnitCount:10];
  +[VCPAnalysisProgressQuery reportProgressForPhotoLibrary:taskID:logMessage:cancelOrExtendTimeoutBlock:](VCPAnalysisProgressQuery, "reportProgressForPhotoLibrary:taskID:logMessage:cancelOrExtendTimeoutBlock:", libraryCopy, [objc_opt_class() taskID], @"Checking progress before task", v8);
  v9 = objc_alloc_init(VCPTimeMeasurement);
  [v9 start];
  v10 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:libraryCopy];
  if (v10)
  {
    v11 = [(VCPMADPhotosLibraryProcessingTask *)self _checkHardFailuresForPhotoLibrary:libraryCopy withAnalysisDatabase:v10];
    if (!v11)
    {
      if ((_os_feature_enabled_impl() & 1) != 0 || (_os_feature_enabled_impl() & 1) != 0 || [objc_opt_class() taskID] != 2 || (-[VCPMADPhotosLibraryProcessingTask cancelBlock](self, "cancelBlock"), v12 = objc_claimAutoreleasedReturnValue(), +[MADPhotosLibraryRestoreTask taskWithPhotoLibrary:progressHandler:completionHandler:cancelBlock:](MADPhotosLibraryRestoreTask, "taskWithPhotoLibrary:progressHandler:completionHandler:cancelBlock:", libraryCopy, 0, 0, v12), v13 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v13, "run"), v13, v12, !v11))
      {
        v14 = objc_autoreleasePoolPush();
        vcp_allowsCloudLibraryResourceDownload = [libraryCopy vcp_allowsCloudLibraryResourceDownload];
        if (vcp_allowsCloudLibraryResourceDownload)
        {
          v16 = 5;
        }

        else
        {
          v16 = 9;
        }

        v17 = [progressCopy vcp_childWithPendingUnitCount:v16];
        v11 = [(VCPMADPhotosLibraryProcessingTask *)self processAllAssetsInPhotoLibrary:libraryCopy withAnalysisDatabase:v10 andProgress:v17];
        if (v11 || vcp_allowsCloudLibraryResourceDownload && ([progressCopy vcp_childWithPendingUnitCount:4], v26 = objc_claimAutoreleasedReturnValue(), v11 = -[VCPMADPhotosLibraryProcessingTask _processDownloadEligibleAssetsInPhotoLibrary:withAnalysisDatabase:andProgress:](self, "_processDownloadEligibleAssetsInPhotoLibrary:withAnalysisDatabase:andProgress:", libraryCopy, v10, v26), v26, v11))
        {
          v18 = 6;
        }

        else
        {
          v18 = 0;
          v11 = 0;
        }

        objc_autoreleasePoolPop(v14);
        if (v18 != 6)
        {
          v27 = [progressCopy vcp_childWithPendingUnitCount:1];
          v28 = [(VCPMADPhotosLibraryProcessingTask *)self _processFailedAssetsInPhotoLibrary:libraryCopy withAnalysisDatabase:v10 andProgress:v27];

          if (v28)
          {
            v11 = v28;
          }
        }
      }
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v19 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v19))
      {
        name = [objc_opt_class() name];
        *buf = 138412290;
        v31 = name;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "[%@] Failed to load MediaAnalysis database", buf, 0xCu);
      }
    }

    v11 = -18;
  }

  if (!+[VCPDatabaseWriter isLegacyPersistEnabled])
  {
    goto LABEL_21;
  }

  commit = [v10 commit];
  v22 = commit;
  if (commit != -108 && commit != -36 && commit != -23)
  {
    [v10 flush];
LABEL_21:
    [v9 stop];
    [v9 elapsedTimeSeconds];
    v24 = [NSString stringWithFormat:@"Checking progress after task (%.2f seconds)", v23];
    +[VCPAnalysisProgressQuery reportProgressForPhotoLibrary:taskID:logMessage:cancelOrExtendTimeoutBlock:](VCPAnalysisProgressQuery, "reportProgressForPhotoLibrary:taskID:logMessage:cancelOrExtendTimeoutBlock:", libraryCopy, [objc_opt_class() taskID], v24, v8);

    v22 = v11;
  }

  return v22;
}

- (BOOL)run:(id *)run
{
  +[NSProgress progressWithTotalUnitCount:](NSProgress, "progressWithTotalUnitCount:", 100 * [*(&self->super._publishError + 1) count]);
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_10011CD60;
  v56[3] = &unk_100282BC8;
  v49 = v56[4] = self;
  v57 = v49;
  v47 = [VCPTimer timerWithIntervalSeconds:10 isOneShot:0 andBlock:v56];
  v4 = *(&self->_photoLibraries + 4);
  if (v4)
  {
    (*(v4 + 16))(0.0);
  }

  if ([objc_opt_class() taskID] == 2 || (objc_msgSend(v49, "vcp_childWithPendingUnitCount:", objc_msgSend(*(&self->super._publishError + 1), "count")), v5 = objc_claimAutoreleasedReturnValue(), v6 = -[VCPMADPhotosLibraryProcessingTask completeSceneProcessingWithProgress:](self, "completeSceneProcessingWithProgress:", v5), v5, !v6))
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = *(&self->super._publishError + 1);
    v14 = [obj countByEnumeratingWithState:&v52 objects:v64 count:16];
    if (!v14)
    {
      goto LABEL_49;
    }

    v15 = *v53;
    type = VCPLogToOSLogType[5];
    while (1)
    {
      v16 = 0;
      do
      {
        if (*v53 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v52 + 1) + 8 * v16);
        v18 = objc_autoreleasePoolPush();
        if (([v17 isReadyForAnalysisCPLInitialDownloadCompleted] & 1) == 0)
        {
          if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
          {
            name = [objc_opt_class() name];
            photoLibraryURL = [v17 photoLibraryURL];
            path = [photoLibraryURL path];
            *buf = 138412546;
            v61 = name;
            v62 = 2112;
            v63 = path;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@] Photo Library %@ is not ready (initial download) for analysis", buf, 0x16u);
          }

          goto LABEL_42;
        }

        if (([v17 vcp_requiresProcessingForTask:{objc_msgSend(objc_opt_class(), "taskID")}] & 1) == 0)
        {
          if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
          {
            name2 = [objc_opt_class() name];
            photoLibraryURL2 = [v17 photoLibraryURL];
            path2 = [photoLibraryURL2 path];
            *buf = 138412546;
            v61 = name2;
            v62 = 2112;
            v63 = path2;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@] Photo Library does not require processing; skipping library (%@)", buf, 0x16u);
          }

          goto LABEL_42;
        }

        if (([v17 vcp_anyAssetsForTaskID:{objc_msgSend(objc_opt_class(), "taskID")}] & 1) == 0)
        {
          if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
          {
            name3 = [objc_opt_class() name];
            photoLibraryURL3 = [v17 photoLibraryURL];
            path3 = [photoLibraryURL3 path];
            *buf = 138412546;
            v61 = name3;
            v62 = 2112;
            v63 = path3;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@] PhotoLibrary %@ is empty; skipping", buf, 0x16u);
          }

LABEL_42:
          v34 = 3;
          goto LABEL_43;
        }

        v19 = VCPSignPostLog();
        v20 = os_signpost_id_generate(v19);

        v21 = VCPSignPostLog();
        v22 = v21;
        if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "VCPProcessPhotoLibrary", "", buf, 2u);
        }

        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
        {
          name4 = [objc_opt_class() name];
          photoLibraryURL4 = [v17 photoLibraryURL];
          *buf = 138412546;
          v61 = name4;
          v62 = 2112;
          v63 = photoLibraryURL4;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@] Processing library %@", buf, 0x16u);
        }

        v25 = [v49 vcp_childWithPendingUnitCount:99];
        v26 = [(VCPMADPhotosLibraryProcessingTask *)self _processPhotoLibrary:v17 withProgress:v25];

        v27 = VCPSignPostLog();
        v28 = v27;
        if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_END, v20, "VCPProcessPhotoLibrary", "", buf, 2u);
        }

        if (v26)
        {
          if (run)
          {
            v58 = NSLocalizedDescriptionKey;
            v29 = "failed";
            if (v26 == -128)
            {
              v29 = "canceled";
            }

            v30 = [NSString stringWithFormat:@"Processing %s", v29];
            v59 = v30;
            v31 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
            v32 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v26 userInfo:v31];
            v33 = *run;
            *run = v32;
          }

          v34 = 1;
        }

        else
        {
          MediaAnalysisDaemonReleaseSharedDataStores(v17);
          v34 = 0;
        }

LABEL_43:
        objc_autoreleasePoolPop(v18);
        if (v34 != 3 && v34)
        {
          goto LABEL_9;
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v44 = [obj countByEnumeratingWithState:&v52 objects:v64 count:16];
      v14 = v44;
      if (!v44)
      {
LABEL_49:

        v45 = *(&self->_photoLibraries + 4);
        if (v45)
        {
          (*(v45 + 16))(100.0);
        }

        [v47 destroy];
        obj = [(VCPMADPhotosLibraryProcessingTask *)self completionHandler];
        (*(obj + 2))(obj, 0, 0);
        v13 = 1;
        goto LABEL_52;
      }
    }
  }

  if (run)
  {
    v65 = NSLocalizedDescriptionKey;
    name5 = [objc_opt_class() name];
    v8 = "failed";
    if (v6 == -128)
    {
      v8 = "canceled";
    }

    obj = name5;
    v9 = [NSString stringWithFormat:@"[%@] Pre Analysis %s", name5, v8];
    v66 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v11 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v6 userInfo:v10];
    v12 = *run;
    *run = v11;

LABEL_9:
    v13 = 0;
LABEL_52:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end