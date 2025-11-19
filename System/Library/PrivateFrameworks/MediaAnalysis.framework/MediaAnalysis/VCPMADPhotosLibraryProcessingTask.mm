@interface VCPMADPhotosLibraryProcessingTask
- (BOOL)run:(id *)a3;
- (VCPMADPhotosLibraryProcessingTask)initWithPhotoLibraries:(id)a3 cancelBlock:(id)a4 progressHandler:(id)a5 andCompletionHandler:(id)a6;
- (int)_checkHardFailuresForPhotoLibrary:(id)a3 withAnalysisDatabase:(id)a4;
- (int)_processDownloadEligibleAssetsInPhotoLibrary:(id)a3 withAnalysisDatabase:(id)a4 andProgress:(id)a5;
- (int)_processFailedAssetsInPhotoLibrary:(id)a3 withAnalysisDatabase:(id)a4 andProgress:(id)a5;
- (int)_processPhotoLibrary:(id)a3 withProgress:(id)a4;
- (int)completeSceneProcessingWithProgress:(id)a3;
- (int)processAllAssetsInPhotoLibrary:(id)a3 withAnalysisDatabase:(id)a4 andProgress:(id)a5;
@end

@implementation VCPMADPhotosLibraryProcessingTask

- (VCPMADPhotosLibraryProcessingTask)initWithPhotoLibraries:(id)a3 cancelBlock:(id)a4 progressHandler:(id)a5 andCompletionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001191F4;
  v21[3] = &unk_100284038;
  v14 = a6;
  v22 = v14;
  v20.receiver = self;
  v20.super_class = VCPMADPhotosLibraryProcessingTask;
  v15 = [(VCPMADPhotosProcessingTask *)&v20 initWithCompletionHandler:v21];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong((v15 + 28), a3);
    v17 = objc_retainBlock(v13);
    v18 = *(v16 + 36);
    *(v16 + 36) = v17;

    [v16 setCancelBlock:v12];
  }

  return v16;
}

- (int)completeSceneProcessingWithProgress:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  [v4 setTotalUnitCount:100];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100119408;
  v12[3] = &unk_100285690;
  v12[4] = self;
  v6 = v4;
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

- (int)_checkHardFailuresForPhotoLibrary:(id)a3 withAnalysisDatabase:(id)a4
{
  v50 = a3;
  v49 = a4;
  if (MediaAnalysisLogLevel() >= 5)
  {
    v7 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      v8 = [objc_opt_class() name];
      *buf = 138412290;
      v60 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[%@][HFC] Checking processing status from previous runs", buf, 0xCu);
    }
  }

  if (+[MADManagedProcessingStatus isMACDReadEnabled])
  {
    v9 = [v50 mad_fetchRequest];
    v58 = 0;
    [v9 fetchLocalIdentifiers:&v58 taskID:objc_msgSend(objc_opt_class() processingStatus:{"taskID"), 1}];
    v10 = v58;

    v11 = v10;
  }

  else
  {
    v57 = 0;
    [v49 fetchLocalIdentifiers:&v57 withTaskID:objc_msgSend(objc_opt_class() andProcessingStatus:{"taskID"), 1}];
    v11 = v57;
  }

  v48 = v11;
  v12 = [v11 count];
  if (!v12)
  {
    goto LABEL_51;
  }

  v47 = v12;
  v44 = +[PHAsset vcp_fetchOptionsForLibrary:forTaskID:](PHAsset, "vcp_fetchOptionsForLibrary:forTaskID:", v50, [objc_opt_class() taskID]);
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
      v19 = [objc_opt_class() name];
      v20 = [v18 localIdentifier];
      v21 = [NSString stringWithFormat:@"[%@][HFC][%@]", v19, v20];

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
        v56 = self;
        v53 = 0;
        v24 = [v50 mad_performAnalysisDataStoreChanges:v54 error:&v53];
        v25 = v53;
        v26 = v25;
        if ((v24 & 1) == 0)
        {
          v4 = [v25 code];
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
          v22 = v4;
          goto LABEL_33;
        }

        v16 = 0;
LABEL_14:
        v22 = v4;
      }

      else
      {
        v28 = [v18 localIdentifier];
        v29 = [v49 removeProcessingStatusForLocalIdentifier:v28 andTaskID:{objc_msgSend(objc_opt_class(), "taskID")}];

        if (v29 == -108 || v29 == -36)
        {
          v22 = v29;
        }

        else
        {
          v22 = v29;
          if (v29 != -23)
          {
            v22 = v4;
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

      v4 = v22;
      goto LABEL_38;
    }

    v16 = 0;
    v4 = 4294967168;
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
      v31 = [objc_opt_class() name];
      *buf = 138412546;
      v60 = v31;
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
    v32 = [v50 mad_performAnalysisDataStoreChanges:v52 error:&v51];
    v33 = v51;
    v34 = v33;
    if (v32)
    {

      goto LABEL_47;
    }

    LODWORD(v4) = [v33 code];
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v43))
    {
      v40 = [objc_opt_class() name];
      *buf = 138412802;
      v60 = v40;
      v61 = 2048;
      v62 = v47;
      v63 = 2112;
      v64 = v34;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v43, "[%@][HFC][MACD] Failed to change processing status of %lu assets to Hard Failure: %@", buf, 0x20u);
    }

LABEL_68:
    goto LABEL_69;
  }

  v38 = [v49 hardFailAllRunningProcessingStatusForTaskID:{objc_msgSend(objc_opt_class(), "taskID")}];
  if (v38 == -108 || v38 == -36)
  {
    v39 = v38;
  }

  else
  {
    v39 = v38;
    if (v38 != -23)
    {
      v39 = v4;
    }
  }

  if (v38 == -108 || v38 == -36 || v38 == -23)
  {
    LODWORD(v4) = v39;
    goto LABEL_68;
  }

  v42 = [v49 commit];
  if (v42 == -108 || v42 == -36)
  {
    LODWORD(v4) = v42;
  }

  else
  {
    LODWORD(v4) = v42;
    if (v42 != -23)
    {
      LODWORD(v4) = v39;
    }
  }

  if (v42 == -108 || v42 == -36 || v42 == -23)
  {
    goto LABEL_68;
  }

LABEL_47:
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v45))
  {
    v35 = [objc_opt_class() name];
    *buf = 138412546;
    v60 = v35;
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
      v37 = [objc_opt_class() name];
      *buf = 138412290;
      v60 = v37;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v36, "[%@][HFC] Processing status is up-to-date", buf, 0xCu);
    }
  }

  LODWORD(v4) = 0;
LABEL_69:

  return v4;
}

- (int)processAllAssetsInPhotoLibrary:(id)a3 withAnalysisDatabase:(id)a4 andProgress:(id)a5
{
  v44 = a3;
  v41 = a4;
  v42 = a5;
  if (MediaAnalysisLogLevel() >= 5)
  {
    v8 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v8))
    {
      v9 = [objc_opt_class() name];
      *buf = 138412290;
      v47 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[%@] Evaluating all assets in Photo Library", buf, 0xCu);
    }
  }

  v10 = [(VCPMADPhotosLibraryProcessingTask *)self assetPriorities];
  v11 = 1;
  type = VCPLogToOSLogType[5];
  v43 = VCPLogToOSLogType[3];
  v39 = VCPLogToOSLogType[6];
  do
  {
    if (v11 - 1 >= [v10 count])
    {
      break;
    }

    v12 = objc_autoreleasePoolPush();
    if ([v10 count] >= 2 && MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
    {
      v13 = [objc_opt_class() name];
      *buf = 138412546;
      v47 = v13;
      v48 = 2048;
      v49 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@] Evaluating P%lu assets", buf, 0x16u);
    }

    v14 = [v10 objectAtIndexedSubscript:v11 - 1];
    v15 = [v14 unsignedIntegerValue];

    v16 = [PHMediaProcessingAlgorithmVersionProvider mad_sharedVersionProviderWithPhotoLibrary:v44];
    +[PHAsset mad_sceneConfidenceThresholdForTask:](PHAsset, "mad_sceneConfidenceThresholdForTask:", [objc_opt_class() taskID]);
    v18 = v17;
    v19 = +[MADStateHandler sharedStateHandler];
    v20 = [objc_opt_class() name];
    [v19 addBreadcrumb:{@"[%@] Fetching Priority%lu assets", v20, v11}];

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
    v27 = [v44 fetchAssetsForMediaProcessingTaskID:v25 priority:v15 algorithmVersion:v16 sceneConfidenceThreshold:&v45 error:v26];
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
        v31 = [objc_opt_class() name];
        *buf = 138412546;
        v47 = v31;
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
        v33 = [objc_opt_class() name];
        v34 = [v27 count];
        *buf = 138412546;
        v47 = v33;
        v48 = 1024;
        LODWORD(v49) = v34;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v39, "[%@] Fetched %d assets", buf, 0x12u);
      }

      v35 = +[MADStateHandler sharedStateHandler];
      v36 = [objc_opt_class() name];
      [v35 addBreadcrumb:{@"[%@] Fetched %d Priority%lu assets", v36, objc_msgSend(v27, "count"), v11}];

      v32 = [(VCPMADPhotosProcessingTask *)self processAssetsInFetchResult:v27 initialScan:1 analysisDatabase:v41 allowDownload:0 progress:v42]== 0;
    }

    objc_autoreleasePoolPop(v12);
    ++v11;
  }

  while (v32);
  v37 = [(VCPMADPhotosProcessingTask *)self waitForPublishing];

  return v37;
}

- (int)_processDownloadEligibleAssetsInPhotoLibrary:(id)a3 withAnalysisDatabase:(id)a4 andProgress:(id)a5
{
  v61 = a3;
  v62 = a4;
  v60 = a5;
  v8 = "ecTask=}32";
  if (MediaAnalysisLogLevel() >= 5)
  {
    v9 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v9))
    {
      v10 = [objc_opt_class() name];
      *buf = 138412290;
      v75 = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[%@] Evaluating download eligible assets", buf, 0xCu);
    }
  }

  if (+[MADManagedProcessingStatus isMACDReadEnabled])
  {
    v11 = [v61 mad_fetchRequest];
    [v60 setTotalUnitCount:{objc_msgSend(v11, "fetchAssetCountForTaskID:status:attempts:", objc_msgSend(objc_opt_class(), "taskID"), 2, 1)}];
  }

  else
  {
    [v60 setTotalUnitCount:{objc_msgSend(v62, "queryAssetCountForTaskID:withStatus:andAttempts:", objc_msgSend(objc_opt_class(), "taskID"), 2, 1)}];
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
      v15 = [v61 mad_fetchRequest];
      v72 = 0;
      v16 = [v15 fetchLocalIdentifiers:&v72 processingStatus:2 taskID:objc_msgSend(objc_opt_class() attempts:"taskID") fetchLimit:{1, 100}];
      v17 = v72;

      if (v16)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
        {
          v18 = [objc_opt_class() name];
          *buf = 138412290;
          v75 = v18;
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
      v19 = [v62 fetchLocalIdentifiers:&v71 withProcessingStatus:2 andTaskID:objc_msgSend(objc_opt_class() andAttempts:"taskID") andFetchLimit:{1, 100}];
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
    v21 = [objc_opt_class() name];
    [v20 addBreadcrumb:{@"[%@] Fetching %d download eligible assets", v21, objc_msgSend(v17, "count")}];

    v22 = +[PHAsset vcp_fetchOptionsForLibrary:forTaskID:](PHAsset, "vcp_fetchOptionsForLibrary:forTaskID:", v61, [objc_opt_class() taskID]);
    v23 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:0];
    v80 = v23;
    v24 = [NSArray arrayWithObjects:&v80 count:1];
    [v22 setSortDescriptors:v24];

    v25 = [PHAsset fetchAssetsWithLocalIdentifiers:v17 options:v22];
    v26 = +[MADStateHandler sharedStateHandler];
    v27 = [objc_opt_class() name];
    [v26 addBreadcrumb:{@"[%@] Fetched %d download eligible assets", v27, objc_msgSend(v17, "count")}];

    v28 = [(VCPMADPhotosProcessingTask *)self processAssetsInFetchResult:v25 initialScan:0 analysisDatabase:v62 allowDownload:1 progress:0];
    if (v28 || ((v29 = [(VCPMADPhotosProcessingTask *)self waitForPublishing], v28 = v29, v29) ? (v30 = v29) : (v30 = v16), v29))
    {
      v13 = 1;
      goto LABEL_33;
    }

    [v60 setCompletedUnitCount:{objc_msgSend(v25, "count") + objc_msgSend(v60, "completedUnitCount")}];
    v58 = v30;
    v31 = [[NSMutableSet alloc] initWithArray:v17];
    for (i = 0; i < [v25 count]; ++i)
    {
      v33 = objc_autoreleasePoolPush();
      v34 = [v25 objectAtIndexedSubscript:i];
      v35 = [v34 localIdentifier];
      [v31 removeObject:v35];

      objc_autoreleasePoolPop(v33);
    }

    if (![v31 count])
    {
      goto LABEL_76;
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v57))
    {
      v36 = [objc_opt_class() name];
      v37 = [v31 count];
      *buf = 138412546;
      v75 = v36;
      v76 = 2048;
      *v77 = v37;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v57, "[%@] Dropping processing status for %lu unknown localIdentifiers", buf, 0x16u);
    }

    if (+[MADManagedProcessingStatus isMACDPersistEnabled])
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v57))
      {
        v38 = [objc_opt_class() name];
        v39 = [objc_opt_class() taskID];
        *buf = 138412802;
        v75 = v38;
        v76 = 1024;
        *v77 = v39;
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
      v70 = self;
      v67 = 0;
      v41 = [v61 mad_performAnalysisDataStoreChanges:v68 error:&v67];
      v42 = v67;
      v43 = v42;
      if ((v41 & 1) == 0)
      {
        v58 = [v42 code];
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
        {
          v44 = [objc_opt_class() name];
          v45 = [objc_opt_class() taskID];
          *buf = 138413058;
          v75 = v44;
          v76 = 1024;
          *v77 = v45;
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
      v48 = v58;
      do
      {
        if (*v64 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v49 = [v62 removeProcessingStatusForLocalIdentifier:*(*(&v63 + 1) + 8 * v47) andTaskID:{objc_msgSend(objc_opt_class(), "taskID")}];
        if (v49 == -108)
        {
          v51 = v49;
          goto LABEL_67;
        }

        v50 = v49 == -36 || v49 == -23;
        v58 = v49;
        if (!v50)
        {
          v51 = v48;
LABEL_67:
          v58 = v51;
        }

        if (v49 == -108 || (v49 != -36 ? (v52 = v49 == -23) : (v52 = 1), v52))
        {

          goto LABEL_78;
        }

        v47 = v47 + 1;
        v48 = v58;
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

    v28 = v58;
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

- (int)_processFailedAssetsInPhotoLibrary:(id)a3 withAnalysisDatabase:(id)a4 andProgress:(id)a5
{
  v62 = a3;
  v61 = a4;
  v60 = a5;
  if (MediaAnalysisLogLevel() >= 5)
  {
    v9 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v9))
    {
      v10 = [objc_opt_class() name];
      *buf = 138412290;
      v75 = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[%@] Evaluating failed assets for retry eligibility", buf, 0xCu);
    }
  }

  v59 = [v62 vcp_allowsCloudLibraryResourceDownload];
  if (+[MADManagedProcessingStatus isMACDReadEnabled])
  {
    v11 = [v62 mad_fetchRequest];
    [v60 setTotalUnitCount:{objc_msgSend(v11, "fetchEligibleToRetryAssetCountWithTaskID:", objc_msgSend(objc_opt_class(), "taskID"))}];
  }

  else
  {
    [v60 setTotalUnitCount:{objc_msgSend(v61, "queryEligibleToRetryAssetCountWithTaskID:", objc_msgSend(objc_opt_class(), "taskID"))}];
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
      v15 = [v62 mad_fetchRequest];
      v72 = 0;
      v16 = [v15 fetchLocalIdentifiersEligibleForRetry:&v72 taskID:objc_msgSend(objc_opt_class() fetchLimit:{"taskID"), 100}];
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
      v18 = [v61 fetchLocalIdentifiersEligibleForRetry:&v71 withTaskID:objc_msgSend(objc_opt_class() andFetchLimit:{"taskID"), 100}];
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
    v20 = [objc_opt_class() name];
    [v19 addBreadcrumb:{@"[%@] Fetching %d retry eligible assets", v20, objc_msgSend(v17, "count")}];

    v21 = +[PHAsset vcp_fetchOptionsForLibrary:forTaskID:](PHAsset, "vcp_fetchOptionsForLibrary:forTaskID:", v62, [objc_opt_class() taskID]);
    v22 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:0];
    v80 = v22;
    v23 = [NSArray arrayWithObjects:&v80 count:1];
    [v21 setSortDescriptors:v23];

    v24 = [PHAsset fetchAssetsWithLocalIdentifiers:v17 options:v21];
    v25 = +[MADStateHandler sharedStateHandler];
    v26 = [objc_opt_class() name];
    [v25 addBreadcrumb:{@"[%@] Fetched %d retry eligible assets", v26, objc_msgSend(v17, "count")}];

    v27 = [(VCPMADPhotosProcessingTask *)self processAssetsInFetchResult:v24 initialScan:0 analysisDatabase:v61 allowDownload:v59 progress:0];
    if (v27 || ((v28 = [(VCPMADPhotosProcessingTask *)self waitForPublishing], v27 = v28, v28) ? (v29 = v28) : (v29 = v16), v28))
    {
      v13 = 1;
      goto LABEL_30;
    }

    v58 = v29;
    [v60 setCompletedUnitCount:{objc_msgSend(v24, "count") + objc_msgSend(v60, "completedUnitCount")}];
    [v24 count];
    v30 = [[NSMutableSet alloc] initWithArray:v17];
    for (i = 0; i < [v24 count]; ++i)
    {
      v32 = objc_autoreleasePoolPush();
      v33 = [v24 objectAtIndexedSubscript:i];
      v34 = [v33 localIdentifier];
      [v30 removeObject:v34];

      objc_autoreleasePoolPop(v32);
    }

    if (![v30 count])
    {
      goto LABEL_73;
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
    {
      v35 = [objc_opt_class() name];
      v36 = [v30 count];
      *buf = 138412546;
      v75 = v35;
      v76 = 2048;
      *v77 = v36;
      _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@] Dropping processing status for %lu unknown localIdentifiers", buf, 0x16u);
    }

    if (+[MADManagedProcessingStatus isMACDPersistEnabled])
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
      {
        v37 = [objc_opt_class() name];
        v38 = [objc_opt_class() taskID];
        *buf = 138412802;
        v75 = v37;
        v76 = 1024;
        *v77 = v38;
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
      v70 = self;
      v67 = 0;
      v40 = [v62 mad_performAnalysisDataStoreChanges:v68 error:&v67];
      v41 = v67;
      v42 = v41;
      if ((v40 & 1) == 0)
      {
        v58 = [v41 code];
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v56))
        {
          v43 = [objc_opt_class() name];
          v44 = [objc_opt_class() taskID];
          *buf = 138413058;
          v75 = v43;
          v76 = 1024;
          *v77 = v44;
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
      v47 = v58;
      do
      {
        if (*v64 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v48 = [v61 removeProcessingStatusForLocalIdentifier:*(*(&v63 + 1) + 8 * v46) andTaskID:{objc_msgSend(objc_opt_class(), "taskID")}];
        if (v48 == -108)
        {
          v50 = v48;
          goto LABEL_64;
        }

        v49 = v48 == -36 || v48 == -23;
        v58 = v48;
        if (!v49)
        {
          v50 = v47;
LABEL_64:
          v58 = v50;
        }

        if (v48 == -108 || (v48 != -36 ? (v51 = v48 == -23) : (v51 = 1), v51))
        {

          goto LABEL_75;
        }

        v46 = v46 + 1;
        v47 = v58;
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

    v27 = v58;
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

- (int)_processPhotoLibrary:(id)a3 withProgress:(id)a4
{
  v6 = a3;
  v7 = a4;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10011C348;
  v29[3] = &unk_100283000;
  v29[4] = self;
  v8 = objc_retainBlock(v29);
  [v7 setTotalUnitCount:10];
  +[VCPAnalysisProgressQuery reportProgressForPhotoLibrary:taskID:logMessage:cancelOrExtendTimeoutBlock:](VCPAnalysisProgressQuery, "reportProgressForPhotoLibrary:taskID:logMessage:cancelOrExtendTimeoutBlock:", v6, [objc_opt_class() taskID], @"Checking progress before task", v8);
  v9 = objc_alloc_init(VCPTimeMeasurement);
  [v9 start];
  v10 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v6];
  if (v10)
  {
    v11 = [(VCPMADPhotosLibraryProcessingTask *)self _checkHardFailuresForPhotoLibrary:v6 withAnalysisDatabase:v10];
    if (!v11)
    {
      if ((_os_feature_enabled_impl() & 1) != 0 || (_os_feature_enabled_impl() & 1) != 0 || [objc_opt_class() taskID] != 2 || (-[VCPMADPhotosLibraryProcessingTask cancelBlock](self, "cancelBlock"), v12 = objc_claimAutoreleasedReturnValue(), +[MADPhotosLibraryRestoreTask taskWithPhotoLibrary:progressHandler:completionHandler:cancelBlock:](MADPhotosLibraryRestoreTask, "taskWithPhotoLibrary:progressHandler:completionHandler:cancelBlock:", v6, 0, 0, v12), v13 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v13, "run"), v13, v12, !v11))
      {
        v14 = objc_autoreleasePoolPush();
        v15 = [v6 vcp_allowsCloudLibraryResourceDownload];
        if (v15)
        {
          v16 = 5;
        }

        else
        {
          v16 = 9;
        }

        v17 = [v7 vcp_childWithPendingUnitCount:v16];
        v11 = [(VCPMADPhotosLibraryProcessingTask *)self processAllAssetsInPhotoLibrary:v6 withAnalysisDatabase:v10 andProgress:v17];
        if (v11 || v15 && ([v7 vcp_childWithPendingUnitCount:4], v26 = objc_claimAutoreleasedReturnValue(), v11 = -[VCPMADPhotosLibraryProcessingTask _processDownloadEligibleAssetsInPhotoLibrary:withAnalysisDatabase:andProgress:](self, "_processDownloadEligibleAssetsInPhotoLibrary:withAnalysisDatabase:andProgress:", v6, v10, v26), v26, v11))
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
          v27 = [v7 vcp_childWithPendingUnitCount:1];
          v28 = [(VCPMADPhotosLibraryProcessingTask *)self _processFailedAssetsInPhotoLibrary:v6 withAnalysisDatabase:v10 andProgress:v27];

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
        v20 = [objc_opt_class() name];
        *buf = 138412290;
        v31 = v20;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "[%@] Failed to load MediaAnalysis database", buf, 0xCu);
      }
    }

    v11 = -18;
  }

  if (!+[VCPDatabaseWriter isLegacyPersistEnabled])
  {
    goto LABEL_21;
  }

  v21 = [v10 commit];
  v22 = v21;
  if (v21 != -108 && v21 != -36 && v21 != -23)
  {
    [v10 flush];
LABEL_21:
    [v9 stop];
    [v9 elapsedTimeSeconds];
    v24 = [NSString stringWithFormat:@"Checking progress after task (%.2f seconds)", v23];
    +[VCPAnalysisProgressQuery reportProgressForPhotoLibrary:taskID:logMessage:cancelOrExtendTimeoutBlock:](VCPAnalysisProgressQuery, "reportProgressForPhotoLibrary:taskID:logMessage:cancelOrExtendTimeoutBlock:", v6, [objc_opt_class() taskID], v24, v8);

    v22 = v11;
  }

  return v22;
}

- (BOOL)run:(id *)a3
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
            v35 = [objc_opt_class() name];
            v36 = [v17 photoLibraryURL];
            v37 = [v36 path];
            *buf = 138412546;
            v61 = v35;
            v62 = 2112;
            v63 = v37;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@] Photo Library %@ is not ready (initial download) for analysis", buf, 0x16u);
          }

          goto LABEL_42;
        }

        if (([v17 vcp_requiresProcessingForTask:{objc_msgSend(objc_opt_class(), "taskID")}] & 1) == 0)
        {
          if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
          {
            v38 = [objc_opt_class() name];
            v39 = [v17 photoLibraryURL];
            v40 = [v39 path];
            *buf = 138412546;
            v61 = v38;
            v62 = 2112;
            v63 = v40;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@] Photo Library does not require processing; skipping library (%@)", buf, 0x16u);
          }

          goto LABEL_42;
        }

        if (([v17 vcp_anyAssetsForTaskID:{objc_msgSend(objc_opt_class(), "taskID")}] & 1) == 0)
        {
          if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
          {
            v41 = [objc_opt_class() name];
            v42 = [v17 photoLibraryURL];
            v43 = [v42 path];
            *buf = 138412546;
            v61 = v41;
            v62 = 2112;
            v63 = v43;
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
          v23 = [objc_opt_class() name];
          v24 = [v17 photoLibraryURL];
          *buf = 138412546;
          v61 = v23;
          v62 = 2112;
          v63 = v24;
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
          if (a3)
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
            v33 = *a3;
            *a3 = v32;
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

  if (a3)
  {
    v65 = NSLocalizedDescriptionKey;
    v7 = [objc_opt_class() name];
    v8 = "failed";
    if (v6 == -128)
    {
      v8 = "canceled";
    }

    obj = v7;
    v9 = [NSString stringWithFormat:@"[%@] Pre Analysis %s", v7, v8];
    v66 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v11 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v6 userInfo:v10];
    v12 = *a3;
    *a3 = v11;

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