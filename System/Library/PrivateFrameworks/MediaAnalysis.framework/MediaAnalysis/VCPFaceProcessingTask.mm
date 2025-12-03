@interface VCPFaceProcessingTask
+ (BOOL)_concurrentFaceProcessing;
+ (id)taskWithPhotoLibrary:(id)library andContext:(id)context andCancelBlock:(id)block;
- (BOOL)_copyResourceFromURL:(id)l toURL:(id *)rL forAsset:(id)asset error:(id *)error;
- (BOOL)isCancelled;
- (VCPFaceProcessingTask)initWithPhotoLibrary:(id)library andContext:(id)context andCancelBlock:(id)block;
- (int)_detectAsset:(id)asset withResults:(id *)results andBatchContext:(id)context;
- (int)_dispatchAssets:(id)assets withBatchContext:(id)context;
- (int)_publishClusterAndPersonProcessingWithBatchContext:(id)context;
- (int)_recoverAttemptsForAssets:(id)assets withProcessingStatusMap:(id)map;
- (int)_removeTemporaryDownloadDirectory;
- (int)processAssets:(id)assets;
- (int)processFaceCrops;
- (int)processGalleryPersons:(BOOL *)persons;
- (int)promotePersons;
- (int)promotePets;
- (int64_t)_valueForKey:(id)key;
- (int64_t)databaseValueForKey:(id)key;
- (void)_asyncAnalyzeAsset:(id)asset andBatchContext:(id)context;
- (void)_processDetectionResults:(id)results withDetectionStatus:(int)status asset:(id)asset andBatchContext:(id)context;
- (void)dealloc;
@end

@implementation VCPFaceProcessingTask

- (VCPFaceProcessingTask)initWithPhotoLibrary:(id)library andContext:(id)context andCancelBlock:(id)block
{
  libraryCopy = library;
  contextCopy = context;
  blockCopy = block;
  v66.receiver = self;
  v66.super_class = VCPFaceProcessingTask;
  v10 = [(VCPFaceProcessingTask *)&v66 init];
  v11 = v10;
  v12 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_photoLibrary, library);
    objc_storeStrong(&v11->_context, context);
    if (blockCopy)
    {
      v13 = blockCopy;
    }

    else
    {
      v13 = &stru_100286078;
    }

    v59 = objc_retainBlock(v13);
    v14 = objc_retainBlock(v59);
    cancelBlock = v11->_cancelBlock;
    v11->_cancelBlock = v14;

    v16 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v11->_photoLibrary];
    database = v11->_database;
    v11->_database = v16;

    v18 = [[VCPFaceAnalyzer alloc] initWithContext:v11->_context];
    analyzer = v11->_analyzer;
    v11->_analyzer = v18;

    v20 = [[VCPFaceCropManager alloc] initWithPhotoLibrary:v11->_photoLibrary andContext:v11->_context];
    faceCropManager = v11->_faceCropManager;
    v11->_faceCropManager = v20;

    if ([(PHPhotoLibrary *)v11->_photoLibrary vcp_isSyndicationLibrary])
    {
      v22 = +[PHPhotoLibrary vcp_defaultPhotoLibrary];
      vcp_visionCacheStorageDirectoryURL = [v22 vcp_visionCacheStorageDirectoryURL];

      v23 = 1;
    }

    else
    {
      vcp_visionCacheStorageDirectoryURL = [(PHPhotoLibrary *)v11->_photoLibrary vcp_visionCacheStorageDirectoryURL];
      v23 = 0;
    }

    v65 = 0;
    v24 = [[VUWGallery alloc] initWithClient:v23 path:vcp_visionCacheStorageDirectoryURL error:&v65];
    v25 = v65;
    gallery = v11->_gallery;
    v11->_gallery = v24;

    if (v11->_gallery)
    {
      if (![contextCopy skipGallerySyncing])
      {
        v27 = objc_alloc_init(VCPTimeMeasurement);
        [v27 start];
        v28 = qos_class_self();
        v29 = dispatch_get_global_queue(v28, 0);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000E65B0;
        block[3] = &unk_100282BC8;
        v63 = v11;
        v64 = v27;
        v30 = v27;
        dispatch_async(v29, block);
      }

      v31 = dispatch_group_create();
      downloadGroup = v11->_downloadGroup;
      v11->_downloadGroup = v31;

      v33 = dispatch_group_create();
      detectionGroup = v11->_detectionGroup;
      v11->_detectionGroup = v33;

      v35 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v36 = dispatch_queue_create("com.apple.mediaanalysis.detectionQueue", v35);
      detectionQueue = v11->_detectionQueue;
      v11->_detectionQueue = v36;

      v38 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v39 = dispatch_queue_create("com.apple.mediaanalysis.postDetectionQueue", v38);
      postDetectionQueue = v11->_postDetectionQueue;
      v11->_postDetectionQueue = v39;

      v11->_detectionProcessingJobCount = 0;
      v11->_detectionProcessingQueuesAllowed = 0;
      v41 = +[NSMutableArray array];
      for (i = 0; i < [objc_opt_class() _concurrentFaceProcessingThreadCount]; ++i)
      {
        v43 = [NSString stringWithFormat:@"com.apple.mediaanalysis.detectionQueue%lu", i];
        v44 = v43;
        v45 = dispatch_queue_create([v43 UTF8String], 0);
        v46 = qos_class_self();
        v47 = dispatch_get_global_queue(v46, 0);
        dispatch_set_target_queue(v45, v47);

        [(NSArray *)v41 addObject:v45];
      }

      detectionProcessingQueues = v11->_detectionProcessingQueues;
      v11->_detectionProcessingQueues = v41;
      v49 = v41;

      v11->_publishDetectionAndProcessPersonStatus = 0;
      v50 = dispatch_group_create();
      publishDetectionAndProcessPersonGroup = v11->_publishDetectionAndProcessPersonGroup;
      v11->_publishDetectionAndProcessPersonGroup = v50;

      v52 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v53 = dispatch_queue_create("com.apple.mediaanalysis.processPersonQueue", v52);
      publishDetectionAndProcessPersonQueue = v11->_publishDetectionAndProcessPersonQueue;
      v11->_publishDetectionAndProcessPersonQueue = v53;

      v12 = v11;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v55 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v55))
        {
          *buf = 138412290;
          v68 = v25;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v55, "Failed to create VUWGallery - %@", buf, 0xCu);
        }
      }

      v12 = 0;
    }
  }

  v56 = v12;

  return v56;
}

- (int64_t)_valueForKey:(id)key
{
  keyCopy = key;
  if (+[MADManagedKeyValueStore isMACDReadEnabled])
  {
    mad_fetchRequest = [(PHPhotoLibrary *)self->_photoLibrary mad_fetchRequest];
    v6 = [mad_fetchRequest dataStoreValueForKey:keyCopy];
  }

  else
  {
    v6 = [(VCPDatabaseWriter *)self->_database valueForKey:keyCopy];
  }

  return v6;
}

+ (id)taskWithPhotoLibrary:(id)library andContext:(id)context andCancelBlock:(id)block
{
  libraryCopy = library;
  contextCopy = context;
  blockCopy = block;
  v10 = [objc_alloc(objc_opt_class()) initWithPhotoLibrary:libraryCopy andContext:contextCopy andCancelBlock:blockCopy];

  return v10;
}

- (void)dealloc
{
  [(VCPFaceProcessingTask *)self _removeTemporaryDownloadDirectory];
  v3.receiver = self;
  v3.super_class = VCPFaceProcessingTask;
  [(VCPFaceProcessingTask *)&v3 dealloc];
}

- (BOOL)isCancelled
{
  if ((*(self->_cancelBlock + 2))())
  {
    v3 = 1;
  }

  else
  {
    v3 = atomic_load(&self->_cancel);
  }

  return v3 & 1;
}

- (int)_removeTemporaryDownloadDirectory
{
  v2 = +[NSFileManager defaultManager];
  v3 = NSTemporaryDirectory();
  v4 = [v3 stringByAppendingPathComponent:kDownloadCacheDirectory];
  v5 = [NSURL fileURLWithPath:v4];

  path = [v5 path];
  LOBYTE(v4) = [v2 fileExistsAtPath:path isDirectory:0];

  if (v4)
  {
    v13 = 0;
    v7 = [v2 removeItemAtURL:v5 error:&v13];
    v8 = v13;
    if (v7)
    {
      v9 = 0;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v11 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v11))
        {
          *buf = 138412546;
          v15 = v5;
          v16 = 2112;
          v17 = v8;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "Failed to remove temporary download directory %@ - %@", buf, 0x16u);
        }
      }

      v9 = -36;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v10 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        *buf = 138412290;
        v15 = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "Temporary download directory %@ does not exist", buf, 0xCu);
      }
    }

    v9 = 0;
  }

  return v9;
}

+ (BOOL)_concurrentFaceProcessing
{
  if ((atomic_load_explicit(&qword_1002B83B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1002B83B8))
  {
    byte_1002B83B0 = DeviceHasANE();
    __cxa_guard_release(&qword_1002B83B8);
  }

  return byte_1002B83B0;
}

- (int)_detectAsset:(id)asset withResults:(id *)results andBatchContext:(id)context
{
  assetCopy = asset;
  contextCopy = context;
  *results = 0;
  if ([(VCPFaceProcessingTask *)self isCancelled])
  {
    v10 = -128;
    goto LABEL_39;
  }

  adjustmentVersion = [assetCopy adjustmentVersion];

  if (adjustmentVersion)
  {
    completedLocalIdentifiersFromComputeSync = [contextCopy completedLocalIdentifiersFromComputeSync];
    localIdentifier = [assetCopy localIdentifier];
    v14 = [completedLocalIdentifiersFromComputeSync containsObject:localIdentifier];

    if (v14)
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v15 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v15))
        {
          localIdentifier2 = [assetCopy localIdentifier];
          *buf = 138412290;
          v50 = localIdentifier2;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[Face][%@] Analysis already complete from compute sync ingestion; skipping", buf, 0xCu);
        }
      }

      v10 = 0;
      goto LABEL_39;
    }

    localIdentifier3 = [assetCopy localIdentifier];
    v20 = [contextCopy resourceForLocalIdentifier:localIdentifier3];

    resourceURL = [v20 resourceURL];
    if (!resourceURL || (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v22 = objc_claimAutoreleasedReturnValue(), [resourceURL path], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v22, "fileExistsAtPath:", v23), v23, v22, (v24 & 1) == 0))
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v40 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v40))
        {
          localIdentifier4 = [assetCopy localIdentifier];
          *buf = 138412290;
          v50 = localIdentifier4;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v40, "[%@] No local resource", buf, 0xCu);
        }
      }

      v10 = -23802;
      goto LABEL_38;
    }

    if (MediaAnalysisLogLevel() >= 6)
    {
      v25 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v25))
      {
        localIdentifier5 = [assetCopy localIdentifier];
        vcp_typeDescription = [assetCopy vcp_typeDescription];
        resource = [v20 resource];
        *buf = 138413058;
        v50 = localIdentifier5;
        v51 = 2112;
        *v52 = vcp_typeDescription;
        *&v52[8] = 2048;
        type = [resource type];
        v54 = 2112;
        v55 = resourceURL;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "[Face][%@] Analyzing %@ using resource (%lu) %@", buf, 0x2Au);
      }
    }

    v29 = VCPSignPostLog();
    spid = os_signpost_id_generate(v29);

    v30 = VCPSignPostLog();
    v31 = v30;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPFaceProcessingAnalyzeAsset", "", buf, 2u);
    }

    analyzer = self->_analyzer;
    resource2 = [v20 resource];
    v48 = 0;
    v10 = -[VCPFaceAnalyzer analyzeAsset:withResource:resourceURL:isBestResource:quickMode:results:](analyzer, "analyzeAsset:withResource:resourceURL:isBestResource:quickMode:results:", assetCopy, resource2, resourceURL, [v20 isBestResource], 0, &v48);
    v34 = v48;

    if (!v10 && v34)
    {
      v35 = [v34 objectForKeyedSubscript:VCPAnalysisResultWarningImageTooSmallKey];
      bOOLValue = [v35 BOOLValue];

      isBestResource = [v20 isBestResource];
      if (MediaAnalysisLogLevel() >= 7)
      {
        v38 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v38))
        {
          localIdentifier6 = [assetCopy localIdentifier];
          *buf = 138412802;
          v50 = localIdentifier6;
          v51 = 1024;
          *v52 = bOOLValue;
          *&v52[4] = 1024;
          *&v52[6] = isBestResource;
          v46 = localIdentifier6;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v38, "[%@] Resource Too Small: %d; Best Resource: %d", buf, 0x18u);
        }
      }

      if (isBestResource & 1 | ((bOOLValue & 1) == 0))
      {
        v10 = 0;
      }

      else
      {
        v10 = -23802;
        if (!_os_feature_enabled_impl())
        {
          goto LABEL_34;
        }
      }

      v42 = v34;
      *results = v34;
    }

LABEL_34:
    v43 = VCPSignPostLog();
    v44 = v43;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, OS_SIGNPOST_INTERVAL_END, spid, "VCPFaceProcessingAnalyzeAsset", "", buf, 2u);
    }

LABEL_38:
    goto LABEL_39;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v17 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v17))
    {
      localIdentifier7 = [assetCopy localIdentifier];
      *buf = 138412290;
      v50 = localIdentifier7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "[%@] Adjustment version is nil", buf, 0xCu);
    }
  }

  v10 = -23803;
LABEL_39:

  return v10;
}

- (void)_processDetectionResults:(id)results withDetectionStatus:(int)status asset:(id)asset andBatchContext:(id)context
{
  resultsCopy = results;
  assetCopy = asset;
  contextCopy = context;
  v78 = +[VCPMADCoreAnalyticsManager sharedManager];
  completedLocalIdentifiersFromComputeSync = [contextCopy completedLocalIdentifiersFromComputeSync];
  localIdentifier = [assetCopy localIdentifier];
  v14 = [completedLocalIdentifiersFromComputeSync containsObject:localIdentifier];

  if (!v14)
  {
    localIdentifier2 = [assetCopy localIdentifier];
    v19 = [contextCopy resourceForLocalIdentifier:localIdentifier2];

    v77 = v19;
    if ([v19 requestDownload])
    {
      resourceURL = [v19 resourceURL];
      if (resourceURL)
      {
        v21 = +[NSFileManager defaultManager];
        v88 = 0;
        v22 = [v21 removeItemAtURL:resourceURL error:&v88];
        v23 = v88;

        if ((v22 & 1) == 0 && MediaAnalysisLogLevel() >= 3)
        {
          v24 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v24))
          {
            localIdentifier3 = [assetCopy localIdentifier];
            *buf = 138412802;
            v94 = localIdentifier3;
            v95 = 2112;
            *v96 = resourceURL;
            *&v96[8] = 2112;
            *&v96[10] = v23;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "[%@] Failed to remove downloaded resource %@ - %@", buf, 0x20u);
          }
        }
      }

      else
      {
        v23 = 0;
      }
    }

    if (!resultsCopy || status)
    {
      v46 = _os_feature_enabled_impl();
      if (resultsCopy)
      {
        v47 = v46;
      }

      else
      {
        v47 = 0;
      }

      if (status == -23802 && v47)
      {
        v89[0] = MediaAnalysisVersionKey;
        photoLibrary = [assetCopy photoLibrary];
        v49 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [photoLibrary mad_faceProcessingInternalVersion]);
        v90[0] = v49;
        v89[1] = MediaAnalysisDateAnalyzedKey;
        v50 = +[NSDate date];
        v90[1] = v50;
        v90[2] = &off_100294968;
        v89[2] = MediaAnalysisAnalysisTypesKey;
        v89[3] = MediaAnalysisResultsKey;
        v90[3] = resultsCopy;
        v51 = [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:4];

        changeBatch = [contextCopy changeBatch];
        v53 = [changeBatch updateAsset:assetCopy withAnalysis:v51];

        if (v53)
        {
          if (MediaAnalysisLogLevel() >= 3)
          {
            v54 = VCPLogToOSLogType[3];
            if (os_log_type_enabled(&_os_log_default, v54))
            {
              localIdentifier4 = [assetCopy localIdentifier];
              *buf = 138412546;
              v94 = localIdentifier4;
              v95 = 1024;
              *v96 = v53;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v54, "[%@][FC] Failed to update asset (%d)", buf, 0x12u);
            }
          }
        }
      }

      if (MediaAnalysisLogLevel() >= 4)
      {
        v56 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v56))
        {
          localIdentifier5 = [assetCopy localIdentifier];
          downloadStatus = [v77 downloadStatus];
          *buf = 138412802;
          v94 = localIdentifier5;
          v95 = 1024;
          *v96 = status;
          *&v96[4] = 1024;
          *&v96[6] = downloadStatus;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v56, "[%@] Analysis failed (detection:%d) (download:%d)", buf, 0x18u);
        }
      }

      v29 = @"NumberOfAssetsSoftFailure";
      if (status == -23802)
      {
        if ([v77 requestDownload] && objc_msgSend(v77, "downloadStatus") == -23808)
        {
          v59 = VCPAnalyticsFieldNumberOfAssetsDownloadThrottled;
          v60 = 7;
        }

        else
        {
          v59 = VCPAnalyticsFieldNumberOfAssetsNoResource;
          v60 = 2;
        }

        v61 = *v59;

        v29 = v61;
      }

      else
      {
        v60 = 3;
      }

      processingStatusMap = [contextCopy processingStatusMap];
      localIdentifier6 = [assetCopy localIdentifier];
      v36 = [processingStatusMap objectForKeyedSubscript:localIdentifier6];

      currentAttemptDate = [v36 currentAttemptDate];
      v38 = [assetCopy mad_nextAttemptDateForStatus:v60 currentAttemptDate:currentAttemptDate attemptCount:{objc_msgSend(v36, "previousAttempts") + 1}];

      if (+[MADManagedProcessingStatus isMACDPersistEnabled])
      {
        if (MediaAnalysisLogLevel() >= 7)
        {
          v65 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v65))
          {
            localIdentifier7 = [assetCopy localIdentifier];
            *buf = 138412546;
            v94 = localIdentifier7;
            v95 = 1024;
            *v96 = 3;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v65, "[%@][MACD] Updating processing status for taskID %d", buf, 0x12u);
          }
        }

        photoLibrary = self->_photoLibrary;
        v80[0] = _NSConcreteStackBlock;
        v80[1] = 3221225472;
        v80[2] = sub_1000E82E8;
        v80[3] = &unk_100284080;
        v83 = v60;
        v81 = v38;
        v68 = assetCopy;
        v82 = v68;
        v79 = 0;
        LOBYTE(photoLibrary) = [(PHPhotoLibrary *)photoLibrary mad_performAnalysisDataStoreChanges:v80 error:&v79];
        localIdentifier9 = v79;
        if ((photoLibrary & 1) == 0 && MediaAnalysisLogLevel() >= 3)
        {
          v70 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v70))
          {
            localIdentifier8 = [v68 localIdentifier];
            *buf = 138412802;
            v94 = localIdentifier8;
            v95 = 1024;
            *v96 = 3;
            *&v96[4] = 2112;
            *&v96[6] = localIdentifier9;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v70, "[%@][MACD] Failed to update processing status for taskID %d: %@", buf, 0x1Cu);
          }
        }
      }

      else
      {
        database = self->_database;
        localIdentifier9 = [assetCopy localIdentifier];
        [(VCPDatabaseWriter *)database updateProcessingStatus:v60 andNextAttemptDate:v38 forLocalIdentifier:localIdentifier9 andTaskID:3];
      }

      if (status != -128)
      {
        unprocessedAssets = [contextCopy unprocessedAssets];
        [unprocessedAssets removeObject:assetCopy];
      }

      [v78 accumulateInt64Value:1 forField:v29 andEvent:@"com.apple.mediaanalysisd.FaceAnalysisRunSession"];
    }

    else
    {
      v91[0] = MediaAnalysisVersionKey;
      photoLibrary2 = [assetCopy photoLibrary];
      v27 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [photoLibrary2 mad_faceProcessingInternalVersion]);
      v92[0] = v27;
      v91[1] = MediaAnalysisDateAnalyzedKey;
      v28 = +[NSDate date];
      v92[1] = v28;
      v92[2] = &off_100294968;
      v91[2] = MediaAnalysisAnalysisTypesKey;
      v91[3] = MediaAnalysisResultsKey;
      v92[3] = resultsCopy;
      v29 = [NSDictionary dictionaryWithObjects:v92 forKeys:v91 count:4];

      changeBatch2 = [contextCopy changeBatch];
      v31 = [changeBatch2 updateAsset:assetCopy withAnalysis:v29];

      if (!v31)
      {
        processedAssets = [contextCopy processedAssets];
        [processedAssets addObject:assetCopy];

        [v78 accumulateInt64Value:1 forField:@"NumberOfAssetsAnalyzed" andEvent:@"com.apple.mediaanalysisd.FaceAnalysisRunSession"];
LABEL_66:

        goto LABEL_67;
      }

      if (MediaAnalysisLogLevel() >= 4)
      {
        v32 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v32))
        {
          localIdentifier10 = [assetCopy localIdentifier];
          *buf = 138412546;
          v94 = localIdentifier10;
          v95 = 1024;
          *v96 = v31;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "[%@] Analysis failed to update change (%d)", buf, 0x12u);
        }
      }

      processingStatusMap2 = [contextCopy processingStatusMap];
      localIdentifier11 = [assetCopy localIdentifier];
      v36 = [processingStatusMap2 objectForKeyedSubscript:localIdentifier11];

      currentAttemptDate2 = [v36 currentAttemptDate];
      v38 = [assetCopy mad_nextAttemptDateForStatus:3 currentAttemptDate:currentAttemptDate2 attemptCount:{objc_msgSend(v36, "previousAttempts") + 1}];

      if (+[MADManagedProcessingStatus isMACDPersistEnabled])
      {
        if (MediaAnalysisLogLevel() >= 7)
        {
          v39 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v39))
          {
            localIdentifier12 = [assetCopy localIdentifier];
            *buf = 138412546;
            v94 = localIdentifier12;
            v95 = 1024;
            *v96 = 3;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v39, "[%@][MACD] Updating processing status for taskID %d", buf, 0x12u);
          }
        }

        v41 = self->_photoLibrary;
        v85[0] = _NSConcreteStackBlock;
        v85[1] = 3221225472;
        v85[2] = sub_1000E8258;
        v85[3] = &unk_100282938;
        v86 = v38;
        v42 = assetCopy;
        v87 = v42;
        v84 = 0;
        LOBYTE(v41) = [(PHPhotoLibrary *)v41 mad_performAnalysisDataStoreChanges:v85 error:&v84];
        localIdentifier14 = v84;
        if ((v41 & 1) == 0 && MediaAnalysisLogLevel() >= 3)
        {
          v44 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v44))
          {
            localIdentifier13 = [v42 localIdentifier];
            *buf = 138412802;
            v94 = localIdentifier13;
            v95 = 1024;
            *v96 = 3;
            *&v96[4] = 2112;
            *&v96[6] = localIdentifier14;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v44, "[%@][MACD] Failed to update processing status for taskID %d: %@", buf, 0x1Cu);
          }
        }
      }

      else
      {
        v75 = self->_database;
        localIdentifier14 = [assetCopy localIdentifier];
        [(VCPDatabaseWriter *)v75 updateProcessingStatus:3 andNextAttemptDate:v38 forLocalIdentifier:localIdentifier14 andTaskID:3];
      }

      [v78 accumulateInt64Value:1 forField:@"NumberOfAssetsSoftFailure" andEvent:@"com.apple.mediaanalysisd.FaceAnalysisRunSession"];
    }

    goto LABEL_66;
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v15 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v15))
    {
      localIdentifier15 = [assetCopy localIdentifier];
      *buf = 138412290;
      v94 = localIdentifier15;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[%@] Analysis already complete from compute sync ingestion; skip updating change batch", buf, 0xCu);
    }
  }

  processedAssets2 = [contextCopy processedAssets];
  [processedAssets2 addObject:assetCopy];

  [v78 accumulateInt64Value:1 forField:@"NumberOfAssetsAnalyzed" andEvent:@"com.apple.mediaanalysisd.FaceAnalysisRunSession"];
LABEL_67:
}

- (void)_asyncAnalyzeAsset:(id)asset andBatchContext:(id)context
{
  assetCopy = asset;
  contextCopy = context;
  detectionQueue = self->_detectionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E8448;
  block[3] = &unk_1002832A0;
  block[4] = self;
  v12 = assetCopy;
  v13 = contextCopy;
  v9 = contextCopy;
  v10 = assetCopy;
  dispatch_async(detectionQueue, block);
}

- (BOOL)_copyResourceFromURL:(id)l toURL:(id *)rL forAsset:(id)asset error:(id *)error
{
  lCopy = l;
  assetCopy = asset;
  v11 = +[NSFileManager defaultManager];
  v12 = NSTemporaryDirectory();
  v13 = [v12 stringByAppendingPathComponent:kDownloadCacheDirectory];
  v14 = [NSURL fileURLWithPath:v13];

  if ([v11 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:error])
  {
    rLCopy = rL;
    localIdentifier = [assetCopy localIdentifier];
    v16 = [PHObject uuidFromLocalIdentifier:localIdentifier];
    pathExtension = [lCopy pathExtension];
    v18 = [NSString stringWithFormat:@"%@.%@", v16, pathExtension];

    v19 = [NSURL fileURLWithPath:v18 relativeToURL:v14];
    v20 = [v11 copyItemAtURL:lCopy toURL:v19 error:error];
    if (v20)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v21 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v21))
        {
          localIdentifier2 = [assetCopy localIdentifier];
          *buf = 138412802;
          v33 = localIdentifier2;
          v34 = 2112;
          v35 = lCopy;
          v36 = 2112;
          v37 = v19;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "[%@] Succesfully copied downloaded file from %@ to %@", buf, 0x20u);
        }
      }

      v23 = v19;
      *rLCopy = v19;
    }

    else if (MediaAnalysisLogLevel() >= 3)
    {
      v27 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v27))
      {
        localIdentifier3 = [assetCopy localIdentifier];
        v29 = *error;
        *buf = 138413058;
        v33 = localIdentifier3;
        v34 = 2112;
        v35 = lCopy;
        v36 = 2112;
        v37 = v19;
        v38 = 2112;
        v39 = v29;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "[%@] Failed to copy downloaded file from %@ to %@ - %@", buf, 0x2Au);
      }
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v24 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v24))
      {
        localIdentifier4 = [assetCopy localIdentifier];
        v26 = *error;
        *buf = 138412802;
        v33 = localIdentifier4;
        v34 = 2112;
        v35 = v14;
        v36 = 2112;
        v37 = v26;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "[%@] Failed to create directory %@ to store downloaded files - %@", buf, 0x20u);
      }
    }

    LOBYTE(v20) = 0;
  }

  return v20;
}

- (int)_dispatchAssets:(id)assets withBatchContext:(id)context
{
  assetsCopy = assets;
  contextCopy = context;
  [contextCopy setHasPanorama:0];
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  obj = assetsCopy;
  v6 = [obj countByEnumeratingWithState:&v105 objects:v114 count:16];
  if (v6)
  {
    v7 = *v106;
    type = VCPLogToOSLogType[7];
    v73 = VCPLogToOSLogType[3];
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v106 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v105 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        if (([contextCopy hasPanorama] & 1) == 0 && objc_msgSend(v9, "vcp_isPano"))
        {
          [contextCopy setHasPanorama:1];
        }

        unprocessedAssets = [contextCopy unprocessedAssets];
        [unprocessedAssets addObject:v9];

        v104 = 0;
        v103 = 0;
        if (+[MADManagedProcessingStatus isMACDReadEnabled])
        {
          photoLibrary = [(VCPFaceProcessingTask *)self photoLibrary];
          mad_fetchRequest = [photoLibrary mad_fetchRequest];

          v102 = 0;
          localIdentifier = [v9 localIdentifier];
          v15 = [mad_fetchRequest fetchProcessingStatus:&v104 attempts:&v103 lastAttemptDate:&v102 nextAttemptDate:0 localIdentifier:localIdentifier taskID:3];
          v16 = v102;

          if (v15)
          {
            v17 = 0;
            code = v15;
            goto LABEL_36;
          }

LABEL_14:
          v21 = [VCPFaceAssetProcessingStatusEntry entryWithPreviousStatus:v104 previousAttempts:v103 andLastAttemptDate:v16];
          processingStatusMap = [contextCopy processingStatusMap];
          localIdentifier2 = [v9 localIdentifier];
          [processingStatusMap setObject:v21 forKeyedSubscript:localIdentifier2];

          v24 = +[NSDate now];
          if (+[MADManagedProcessingStatus isMACDPersistEnabled])
          {
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
            {
              localIdentifier3 = [v9 localIdentifier];
              *buf = 138412290;
              v111 = localIdentifier3;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@][MACD] Setting processing status to running", buf, 0xCu);
            }

            photoLibrary = self->_photoLibrary;
            v98[0] = _NSConcreteStackBlock;
            v98[1] = 3221225472;
            v98[2] = sub_1000E995C;
            v98[3] = &unk_1002860C8;
            v100 = v103;
            v98[4] = v9;
            v99 = v24;
            v97 = 0;
            v27 = [(PHPhotoLibrary *)photoLibrary mad_performAnalysisDataStoreChanges:v98 error:&v97];
            v28 = v97;
            v29 = v28;
            if ((v27 & 1) == 0)
            {
              code = [v28 code];
              if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v73))
              {
                localIdentifier4 = [v9 localIdentifier];
                *buf = 138412546;
                v111 = localIdentifier4;
                v112 = 2112;
                v113 = v29;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v73, "[%@][MACD] Failed to set processing status to running: %@", buf, 0x16u);
              }
            }

            if (v27)
            {
              v20 = code;
              goto LABEL_32;
            }

            v17 = 0;
            v20 = code;
          }

          else
          {
            v31 = [(VCPDatabaseWriter *)self->_database setAttempts:v103 + 1 asset:v9 taskID:3 status:1 lastAttemptDate:v24];
            if (v31 == -108 || v31 == -36)
            {
              v20 = v31;
            }

            else
            {
              v20 = v31;
              if (v31 != -23)
              {
                v20 = code;
              }
            }

            v17 = 0;
            if (v31 != -108 && v31 != -36 && v31 != -23)
            {
LABEL_32:
              v17 = 1;
            }
          }

          goto LABEL_35;
        }

        database = self->_database;
        v101 = 0;
        localIdentifier5 = [v9 localIdentifier];
        v20 = [(VCPDatabaseWriter *)database queryProcessingStatus:&v104 attempts:&v103 lastAttemptDate:&v101 andNextAttemptDate:0 forLocalIdentifier:localIdentifier5 andTaskID:3];
        v16 = v101;

        if (!v20)
        {
          goto LABEL_14;
        }

        v17 = 0;
LABEL_35:
        code = v20;
LABEL_36:

        objc_autoreleasePoolPop(v10);
        if (!v17)
        {
          goto LABEL_80;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v105 objects:v114 count:16];
    }

    while (v6);
  }

  if (!+[VCPDatabaseWriter isLegacyPersistEnabled]|| (LODWORD(code) = [(VCPDatabaseWriter *)self->_database commit], !code))
  {
    if ([objc_opt_class() _concurrentFaceProcessing] && (objc_msgSend(contextCopy, "hasPanorama") & 1) == 0)
    {
      _concurrentFaceProcessingThreadCount = [objc_opt_class() _concurrentFaceProcessingThreadCount];
      v32 = 4;
      if (_concurrentFaceProcessingThreadCount < 4)
      {
        v32 = _concurrentFaceProcessingThreadCount;
      }
    }

    else
    {
      v32 = 1;
    }

    self->_detectionProcessingQueuesAllowed = v32;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v70 = obj;
    v34 = [v70 countByEnumeratingWithState:&v93 objects:v109 count:16];
    if (v34)
    {
      *v74 = *v94;
      v69 = VCPLogToOSLogType[5];
      v67 = VCPLogToOSLogType[4];
      do
      {
        *typea = v34;
        v35 = 0;
        do
        {
          if (*v94 != *v74)
          {
            objc_enumerationMutation(v70);
          }

          v36 = *(*(&v93 + 1) + 8 * v35);
          v37 = objc_autoreleasePoolPush();
          v38 = +[VCPWatchdog sharedWatchdog];
          [v38 pet];

          v39 = [VCPFaceUtils preferredResourcesForFaceProcessingWithAsset:v36];
          processingStatusMap2 = [contextCopy processingStatusMap];
          localIdentifier6 = [v36 localIdentifier];
          v42 = [processingStatusMap2 objectForKeyedSubscript:localIdentifier6];

          if (v42 && ![v42 previousAttempts] && _os_feature_enabled_impl())
          {
            vcp_thumbnailResource = [v39 vcp_thumbnailResource];
          }

          else
          {
            vcp_thumbnailResource = [VCPFaceUtils resourceForFaceProcessing:v39 allowStreaming:self->_allowStreaming];
          }

          v44 = vcp_thumbnailResource;
          v45 = [VCPFaceUtils isBestResourceForFaceProcessing:vcp_thumbnailResource fromResources:v39];
          if (!v44)
          {
            dispatch_group_enter(self->_detectionGroup);
LABEL_65:
            privateFileURL = [v44 privateFileURL];
            localIdentifier7 = [v36 localIdentifier];
            [contextCopy storeResource:v44 resourceURL:privateFileURL isBestResource:v45 requestDownload:0 downloadStatus:0 forLocalIdentifier:localIdentifier7];

            [(VCPFaceProcessingTask *)self _asyncAnalyzeAsset:v36 andBatchContext:contextCopy];
            goto LABEL_77;
          }

          vcp_isLocallyAvailable = [v44 vcp_isLocallyAvailable];
          dispatch_group_enter(self->_detectionGroup);
          if (vcp_isLocallyAvailable)
          {
            goto LABEL_65;
          }

          v47 = [PHAssetResource vcp_allResourcesForAsset:v36];
          mad_computeSyncResource = [v47 mad_computeSyncResource];

          if (!mad_computeSyncResource)
          {
            goto LABEL_69;
          }

          v92[0] = _NSConcreteStackBlock;
          v92[1] = 3221225472;
          v92[2] = sub_1000E9978;
          v92[3] = &unk_100283000;
          v92[4] = self;
          if (![mad_computeSyncResource mad_isAnalysisCompleteFromComputeSyncForAsset:v36 taskID:3 allowDownload:1 cancel:v92])
          {
            if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v69))
            {
              localIdentifier8 = [v36 localIdentifier];
              *buf = 138412290;
              v111 = localIdentifier8;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v69, "[Face][Download][%@] Analysis remains incomplete with compute sync, falling back to media resource download", buf, 0xCu);
            }

LABEL_69:
            v90[0] = _NSConcreteStackBlock;
            v90[1] = 3221225472;
            v90[2] = sub_1000E9980;
            v90[3] = &unk_100283210;
            v54 = contextCopy;
            v91 = v54;
            v71 = objc_retainBlock(v90);
            v86[0] = _NSConcreteStackBlock;
            v86[1] = 3221225472;
            v86[2] = sub_1000E99E0;
            v86[3] = &unk_1002860F0;
            v86[4] = self;
            v86[5] = v36;
            v55 = v54;
            v87 = v55;
            v56 = v44;
            v88 = v56;
            v89 = v45;
            v72 = objc_retainBlock(v86);
            v80[0] = _NSConcreteStackBlock;
            v80[1] = 3221225472;
            v80[2] = sub_1000E9B18;
            v80[3] = &unk_100286118;
            v57 = v55;
            v81 = v57;
            v58 = v56;
            v85 = v45;
            v82 = v58;
            v83 = v36;
            selfCopy = self;
            v59 = objc_retainBlock(v80);
            dispatch_group_enter(self->_downloadGroup);
            v60 = [PHAssetResourceManager vcp_requestFileURLForAssetResource:v58 withTaskID:3 timeoutHandler:v71 urlHandler:v72 andCompletionHandler:v59];
            if (v60)
            {
              v61 = [NSNumber numberWithInt:v60];
              downloadRequests = [v57 downloadRequests];
              localIdentifier9 = [v36 localIdentifier];
              [downloadRequests setObject:v61 forKeyedSubscript:localIdentifier9];

              [v57 updateLastestDownloadTimestamp];
            }

            else
            {
              dispatch_group_leave(self->_downloadGroup);
              if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v67))
              {
                localIdentifier10 = [v36 localIdentifier];
                *buf = 138412546;
                v111 = localIdentifier10;
                v112 = 2112;
                v113 = v58;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v67, "[%@] Failed to request download resource %@", buf, 0x16u);
              }

              [(VCPFaceProcessingTask *)self _asyncAnalyzeAsset:v36 andBatchContext:v57];
            }

            goto LABEL_76;
          }

          if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v69))
          {
            localIdentifier11 = [v36 localIdentifier];
            *buf = 138412290;
            v111 = localIdentifier11;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v69, "[Face][Download][%@] Analysis complete with compute sync, skipping media resource download", buf, 0xCu);
          }

          completedLocalIdentifiersFromComputeSync = [contextCopy completedLocalIdentifiersFromComputeSync];
          localIdentifier12 = [v36 localIdentifier];
          [completedLocalIdentifiersFromComputeSync addObject:localIdentifier12];

          [(VCPFaceProcessingTask *)self _asyncAnalyzeAsset:v36 andBatchContext:contextCopy];
LABEL_76:

LABEL_77:
          objc_autoreleasePoolPop(v37);
          ++v35;
        }

        while (*typea != v35);
        v34 = [v70 countByEnumeratingWithState:&v93 objects:v109 count:16];
      }

      while (v34);
    }

    LODWORD(code) = 0;
LABEL_80:
  }

  return code;
}

- (int)processAssets:(id)assets
{
  assetsCopy = assets;
  v5 = objc_autoreleasePoolPush();
  v6 = [VCPFaceProcessingBatchContext batchContextWithPhotoLibrary:self->_photoLibrary context:self->_context];
  if (v6)
  {
    v28 = objc_alloc_init(VCPTimeMeasurement);
    [v28 start];
    v7 = objc_alloc_init(VCPTimeMeasurement);
    [v7 start];
    v8 = [(VCPFaceProcessingTask *)self _dispatchAssets:assetsCopy withBatchContext:v6];
    if (v8)
    {
      goto LABEL_36;
    }

    downloadGroup = self->_downloadGroup;
    v10 = dispatch_time(0, 100000000);
    if (dispatch_group_wait(downloadGroup, v10))
    {
      v11 = VCPLogToOSLogType[7];
      do
      {
        if (-[VCPFaceProcessingTask isCancelled](self, "isCancelled") || [v6 downloadTimedout])
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v11))
          {
            downloadRequests = [v6 downloadRequests];
            v13 = [downloadRequests count];
            *buf = 134217984;
            v30 = v13;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "Cancelling all %lu download requests", buf, 0xCu);
          }

          downloadRequests2 = [v6 downloadRequests];
          [downloadRequests2 enumerateKeysAndObjectsUsingBlock:&stru_100286158];

          dispatch_group_wait(self->_downloadGroup, 0xFFFFFFFFFFFFFFFFLL);
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v11))
          {
            downloadRequests3 = [v6 downloadRequests];
            v16 = [downloadRequests3 count];
            *buf = 134217984;
            v30 = v16;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "Cancelled all %lu download requests", buf, 0xCu);
          }
        }

        v17 = self->_downloadGroup;
        v18 = dispatch_time(0, 100000000);
      }

      while (dispatch_group_wait(v17, v18));
    }

    if (MediaAnalysisLogLevel() >= 7)
    {
      v19 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v19))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "Waiting for detection-group to finish", buf, 2u);
      }
    }

    dispatch_group_wait(self->_detectionGroup, 0xFFFFFFFFFFFFFFFFLL);
    if (MediaAnalysisLogLevel() >= 7)
    {
      v20 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v20))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "Detection-group finished", buf, 2u);
      }
    }

    [v7 stop];
    v21 = +[VCPMADCoreAnalyticsManager sharedManager];
    [v7 elapsedTimeSeconds];
    [v21 accumulateDoubleValue:@"FaceDetectionElapsedTimeInSeconds" forField:@"com.apple.mediaanalysisd.FaceAnalysisRunSession" andEvent:?];

    v8 = [(VCPFaceProcessingTask *)self _publishClusterAndPersonProcessingWithBatchContext:v6];
    if (v8)
    {
      goto LABEL_36;
    }

    if ([v6 downloadTimedout])
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v22 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v22))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "Network error; skip to next batch", buf, 2u);
        }
      }
    }

    else
    {
      if ([(VCPFaceProcessingTask *)self isCancelled])
      {
        v8 = -128;
LABEL_36:

        goto LABEL_37;
      }

      if ([assetsCopy count])
      {
        [v28 stop];
        if ([v6 hasPanorama])
        {
          v23 = @"Serial-With-Panorama";
        }

        else if ([objc_opt_class() _concurrentFaceProcessing])
        {
          v23 = @"Concurrent";
        }

        else
        {
          v23 = @"Serial";
        }

        v24 = VCPTaskIDDescription();
        v25 = [NSString stringWithFormat:@"%@-%@-Analyze", v24, v23];

        [v28 elapsedTimeSeconds];
        VCPCoreAnalyticsQoSReportSpeed(v25, v26 * 1000.0 / [assetsCopy count]);
      }
    }

    v8 = 0;
    goto LABEL_36;
  }

  v8 = -18;
LABEL_37:

  objc_autoreleasePoolPop(v5);
  return v8;
}

- (int)_recoverAttemptsForAssets:(id)assets withProcessingStatusMap:(id)map
{
  assetsCopy = assets;
  mapCopy = map;
  v29 = assetsCopy;
  if (![assetsCopy count])
  {
LABEL_8:
    mapCopy5 = 0;
    goto LABEL_30;
  }

  if (+[MADManagedProcessingStatus isMACDPersistEnabled])
  {
    photoLibrary = self->_photoLibrary;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1000EA818;
    v39[3] = &unk_100282938;
    v40 = assetsCopy;
    v41 = mapCopy;
    v38 = 0;
    v8 = [(PHPhotoLibrary *)photoLibrary mad_performAnalysisDataStoreChanges:v39 error:&v38];
    v9 = v38;
    v10 = v9;
    if ((v8 & 1) == 0)
    {
      mapCopy5 = [v9 code];
      if (MediaAnalysisLogLevel() >= 3)
      {
        v11 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v11))
        {
          *buf = 138412290;
          v44 = v10;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[MACD] Failed to save changes: %@", buf, 0xCu);
        }
      }
    }

    if (v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = assetsCopy;
    v12 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v12)
    {
      v31 = *v35;
      while (2)
      {
        v13 = 0;
        mapCopy4 = map;
        do
        {
          if (*v35 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v34 + 1) + 8 * v13);
          v16 = objc_autoreleasePoolPush();
          localIdentifier = [v15 localIdentifier];
          v18 = [mapCopy objectForKeyedSubscript:localIdentifier];

          previousAttempts = [v18 previousAttempts];
          database = self->_database;
          if (previousAttempts)
          {
            previousAttempts2 = [v18 previousAttempts];
            previousStatus = [v18 previousStatus];
            lastAttemptDate = [v18 lastAttemptDate];
            v24 = [(VCPDatabaseWriter *)database setAttempts:previousAttempts2 asset:v15 taskID:3 status:previousStatus lastAttemptDate:lastAttemptDate];
          }

          else
          {
            localIdentifier2 = [v15 localIdentifier];
            v24 = [(VCPDatabaseWriter *)database removeProcessingStatusForLocalIdentifier:localIdentifier2 andTaskID:3];
          }

          if (v24 == -108 || v24 == -36)
          {
            map = v24;
          }

          else
          {
            map = v24;
            if (v24 != -23)
            {
              map = mapCopy4;
            }
          }

          v26 = 0;
          if (v24 != -108 && v24 != -36)
          {
            v26 = v24 != -23;
          }

          objc_autoreleasePoolPop(v16);
          if (!v26)
          {

            mapCopy5 = map;
            goto LABEL_30;
          }

          v13 = v13 + 1;
          mapCopy4 = map;
        }

        while (v12 != v13);
        v12 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    commit = [(VCPDatabaseWriter *)self->_database commit];
    if (commit == -108 || commit == -36)
    {
      mapCopy5 = commit;
    }

    else
    {
      mapCopy5 = commit;
      if (commit != -23)
      {
        mapCopy5 = map;
      }
    }

    if (commit != -108 && commit != -36 && commit != -23)
    {
      goto LABEL_8;
    }
  }

LABEL_30:

  return mapCopy5;
}

- (int)promotePersons
{
  v2 = objc_alloc_init(VCPTimeMeasurement);
  [v2 start];
  v3 = objc_autoreleasePoolPush();
  v4 = VCPPromotePersons();
  objc_autoreleasePoolPop(v3);
  [v2 stop];
  v5 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v2 elapsedTimeSeconds];
  [v5 accumulateDoubleValue:@"PersonPromotingElapsedTimeInSeconds" forField:@"com.apple.mediaanalysisd.FaceAnalysisRunSession" andEvent:?];

  v6 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v6 accumulateInt64Value:1 forField:@"NumberOfPersonPromotingEvents" andEvent:@"com.apple.mediaanalysisd.FaceAnalysisRunSession"];

  if (v4)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v7 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v7))
      {
        *buf = 67109120;
        v10 = v4;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[FaceProcessing] Failed to promote person - %d", buf, 8u);
      }
    }
  }

  return v4;
}

- (int)promotePets
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v3 = objc_alloc_init(VCPTimeMeasurement);
  [v3 start];
  v4 = objc_autoreleasePoolPush();
  v5 = [[VCPPhotosPersistenceDelegate alloc] initWithPhotoLibrary:self->_photoLibrary];
  v6 = [[PNPetPromoterWrapper alloc] initWithLibrary:self->_photoLibrary andDelegate:v5];
  v7 = mach_absolute_time();
  v8 = VCPSignPostLog();
  v9 = os_signpost_id_generate(v8);

  v10 = VCPSignPostLog();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "MADPhotosPersonProcessingTaskPromotePet", "", buf, 2u);
  }

  *buf = 0;
  v32 = buf;
  v33 = 0x3032000000;
  v34 = sub_1000E58EC;
  v35 = sub_1000E58FC;
  v36 = +[NSDate distantPast];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000EB228;
  v22[3] = &unk_1002861C8;
  v12 = dispatch_queue_create("MADPetPromotingProgress", 0);
  v23 = v12;
  selfCopy = self;
  v25 = buf;
  v26 = &v27;
  [v6 promoteUnverifiedPetsWithUpdateBlock:v22];
  v13 = VCPSignPostLog();
  v14 = v13;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *v21 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, v9, "MADPhotosPersonProcessingTaskPromotePet", "", v21, 2u);
  }

  if (v7)
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

  _Block_object_dispose(buf, 8);
  objc_autoreleasePoolPop(v4);
  [v3 stop];
  v15 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v3 elapsedTimeSeconds];
  [v15 accumulateDoubleValue:@"PetPromotingElapsedTimeInSeconds" forField:@"com.apple.mediaanalysisd.FaceAnalysisRunSession" andEvent:?];

  v16 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v16 accumulateInt64Value:1 forField:@"NumberOfPetPromotingEvents" andEvent:@"com.apple.mediaanalysisd.FaceAnalysisRunSession"];

  v17 = *(v28 + 6);
  if (v17)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v18 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v18))
      {
        v19 = *(v28 + 6);
        *buf = 67109120;
        *&buf[4] = v19;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "[FaceProcessing] Failed to promote pet - %d", buf, 8u);
      }
    }
  }

  _Block_object_dispose(&v27, 8);
  return v17;
}

- (int64_t)databaseValueForKey:(id)key
{
  keyCopy = key;
  if (+[MADManagedKeyValueStore isMACDReadEnabled])
  {
    mad_fetchRequest = [(PHPhotoLibrary *)self->_photoLibrary mad_fetchRequest];
    v6 = [mad_fetchRequest dataStoreValueForKey:keyCopy];
  }

  else
  {
    v6 = [(VCPDatabaseWriter *)self->_database valueForKey:keyCopy];
  }

  return v6;
}

- (int)processGalleryPersons:(BOOL *)persons
{
  v4 = +[MADVUUtilities sharedInstance];
  [v4 flush];

  vcp_description = [(PHPhotoLibrary *)self->_photoLibrary vcp_description];
  v187 = [NSString stringWithFormat:@"[FaceLibraryProcessing][Person][%@]", vcp_description];

  v223[0] = _NSConcreteStackBlock;
  v223[1] = 3221225472;
  v223[2] = sub_1000ED9DC;
  v223[3] = &unk_100283000;
  v223[4] = self;
  v186 = objc_retainBlock(v223);
  mad_countOfUnclusteredFaces = [(PHPhotoLibrary *)self->_photoLibrary mad_countOfUnclusteredFaces];
  if (MediaAnalysisLogLevel() >= 7)
  {
    v7 = &_os_log_default;
    v8 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v8))
    {
      *buf = 138412546;
      v225 = v187;
      v226 = 2048;
      v227 = mad_countOfUnclusteredFaces;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "%@ Found %lu faces to add to Gallery", buf, 0x16u);
    }
  }

  if (mad_countOfUnclusteredFaces)
  {
    v9 = objc_alloc_init(VCPTimeMeasurement);
    [v9 start];
    v10 = mach_absolute_time();
    v11 = VCPSignPostLog();
    v12 = os_signpost_id_generate(v11);

    v13 = VCPSignPostLog();
    v14 = v13;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "FaceLibraryProcessingSendFaces", "", buf, 2u);
    }

    mad_unclusteredFacesFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary mad_unclusteredFacesFetchOptions];
    v16 = [PHFace fetchFacesWithOptions:mad_unclusteredFacesFetchOptions];
    v17 = +[MADVUUtilities sharedInstance];
    gallery = self->_gallery;
    v222 = 0;
    v19 = [v17 prepareClusteringWithFaces:v16 gallery:gallery cancelOrExtendTimeoutBlock:v186 error:&v222];
    mad_countOfUnclusteredFaces = v222;

    if ((v19 & 1) == 0 && MediaAnalysisLogLevel() >= 3)
    {
      v20 = &_os_log_default;
      v21 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v21))
      {
        *buf = 138412546;
        v225 = v187;
        v226 = 2112;
        v227 = mad_countOfUnclusteredFaces;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "%@ Failed to add faces to Gallery - %@", buf, 0x16u);
      }
    }

    v22 = VCPSignPostLog();
    v23 = v22;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_END, v12, "FaceLibraryProcessingSendFaces", "", buf, 2u);
    }

    if (v10)
    {
      mach_absolute_time();
      VCPPerformance_LogMeasurement();
    }

    [v9 stop];
    v24 = +[VCPMADCoreAnalyticsManager sharedManager];
    [v9 elapsedTimeSeconds];
    [v24 accumulateDoubleValue:@"FaceClusteringElapsedTimeInSeconds" forField:@"com.apple.mediaanalysisd.FaceAnalysisRunSession" andEvent:?];

    mad_countOfUnclusteredFaces2 = [(PHPhotoLibrary *)self->_photoLibrary mad_countOfUnclusteredFaces];
    if (MediaAnalysisLogLevel() >= 6)
    {
      v26 = &_os_log_default;
      v27 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v27))
      {
        *buf = 138412546;
        v225 = mad_countOfUnclusteredFaces;
        v226 = 2048;
        v227 = mad_countOfUnclusteredFaces2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "%@ Found %lu (expected 0) faces yet to add to Gallery", buf, 0x16u);
      }
    }
  }

  [PNPersonPromoter setProcessed:0 forLibrary:self->_photoLibrary];
  ready = [(VUWGallery *)self->_gallery ready];
  if (ready)
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v28 = &_os_log_default;
      v29 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v29))
      {
        *buf = 138412290;
        v225 = v187;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v29, "%@ Gallery is ready; skip updating", buf, 0xCu);
      }
    }

    v183 = mad_countOfUnclusteredFaces;
    goto LABEL_63;
  }

  v30 = objc_alloc_init(VCPTimeMeasurement);
  [v30 start];
  v184 = mach_absolute_time();
  v31 = VCPSignPostLog();
  v32 = os_signpost_id_generate(v31);

  v33 = VCPSignPostLog();
  v34 = v33;
  if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, OS_SIGNPOST_INTERVAL_BEGIN, v32, "FaceProcessingClusterFace", "", buf, 2u);
  }

  v35 = [(VCPFaceProcessingTask *)self databaseValueForKey:VCPKeyValuePrioritizedFaceAnalysisCompleteTimestamp];
  v36 = VCPKeyValueFaceAnalysisLastFullModeClusterTimestamp;
  v37 = [(VCPFaceProcessingTask *)self databaseValueForKey:VCPKeyValueFaceAnalysisLastFullModeClusterTimestamp];
  v38 = +[NSDate now];
  [v38 timeIntervalSinceReferenceDate];
  v40 = v39;

  v41 = v35 && v35 > v37 || MADFullModeClusterInterval <= (v40 - v37);
  if (MediaAnalysisLogLevel() >= 6)
  {
    v42 = &_os_log_default;
    v43 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v43))
    {
      v44 = @"fast";
      if (v41)
      {
        v44 = @"full";
      }

      *buf = 138412546;
      v225 = v187;
      v226 = 2112;
      v227 = v44;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v43, "%@ Start Gallery update (mode: %@)", buf, 0x16u);
    }
  }

  v45 = self->_gallery;
  v219[0] = _NSConcreteStackBlock;
  v219[1] = 3221225472;
  v219[2] = sub_1000EDA38;
  v219[3] = &unk_1002861F0;
  v46 = v187;
  v220 = v46;
  v221 = v186;
  v218 = mad_countOfUnclusteredFaces;
  v47 = [(VUWGallery *)v45 updateForType:1 mode:!v41 progressHandler:v219 error:&v218];
  v183 = v218;

  if (v47)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v48 = &_os_log_default;
      v49 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v49))
      {
        *buf = 138412290;
        v225 = v46;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v49, "%@ Finished Face Clustering", buf, 0xCu);
      }
    }

    [v30 stop];
    if (v41)
    {
      v50 = +[NSDate now];
      [v50 timeIntervalSinceReferenceDate];
      v52 = v51;

      if (+[MADManagedKeyValueStore isMACDPersistEnabled])
      {
        photoLibrary = self->_photoLibrary;
        v217[0] = _NSConcreteStackBlock;
        v217[1] = 3221225472;
        v217[2] = sub_1000EDB30;
        v217[3] = &unk_100282F90;
        v217[4] = v52;
        [(PHPhotoLibrary *)photoLibrary mad_performAnalysisDataStoreChanges:v217 error:0];
      }

      else
      {
        [(VCPDatabaseWriter *)self->_database setValue:v52 forKey:v36];
        [(VCPDatabaseWriter *)self->_database commit];
      }
    }

    v56 = +[VCPMADCoreAnalyticsManager sharedManager];
    [v30 elapsedTimeSeconds];
    [v56 accumulateDoubleValue:@"FaceClusteringElapsedTimeInSeconds" forField:@"com.apple.mediaanalysisd.FaceAnalysisRunSession" andEvent:?];

    v57 = +[VCPMADCoreAnalyticsManager sharedManager];
    [v57 accumulateInt64Value:1 forField:@"NumberOfClusterEvents" andEvent:@"com.apple.mediaanalysisd.FaceAnalysisRunSession"];

    v58 = VCPSignPostLog();
    v59 = v58;
    if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v59, OS_SIGNPOST_INTERVAL_END, v32, "FaceProcessingClusterFace", "", buf, 2u);
    }

    if (v184)
    {
      mach_absolute_time();
      VCPPerformance_LogMeasurement();
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v54 = &_os_log_default;
      v55 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v55))
      {
        *buf = 138412546;
        v225 = v46;
        v226 = 2112;
        v227 = v183;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v55, "%@ Failed to update gallery for face clustering and person building - %@", buf, 0x16u);
      }
    }

    [v30 stop];
    LODWORD(v32) = [v183 code];
  }

  if (v47)
  {
LABEL_63:
    if (+[MADManagedChangeToken isMACDReadEnabled])
    {
      photoLibrary = [(VCPFaceProcessingTask *)self photoLibrary];
      mad_fetchRequest = [photoLibrary mad_fetchRequest];
      v216 = 0;
      [mad_fetchRequest fetchChangeToken:&v216 taskID:3 changeTokenType:4];
      v62 = v216;
    }

    else
    {
      database = self->_database;
      v215 = 0;
      v64 = [(VCPDatabaseWriter *)database queryChangeToken:&v215 forTaskID:3 andChangeTokenType:4];
      v62 = v215;
      if (!v64 || MediaAnalysisLogLevel() < 3)
      {
LABEL_70:
        if (v62 && MediaAnalysisLogLevel() >= 7)
        {
          v67 = &_os_log_default;
          v68 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v68))
          {
            *buf = 138412546;
            v225 = v187;
            v226 = 2112;
            v227 = v62;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v68, "%@ previousChangeBookmark %@", buf, 0x16u);
          }
        }

        v180 = +[NSMutableSet set];
        if (v62)
        {
          v211[0] = _NSConcreteStackBlock;
          v211[1] = 3221225472;
          v211[2] = sub_1000EDB48;
          v211[3] = &unk_100286218;
          v69 = v180;
          v212 = v69;
          v70 = v187;
          v213 = v70;
          selfCopy = self;
          v71 = objc_retainBlock(v211);
          v72 = self->_gallery;
          v210 = 0;
          v185 = [(VUWGallery *)v72 changesSince:v62 error:&v210 body:v71];
          v73 = v210;
          if (!v185)
          {
            if (MediaAnalysisLogLevel() >= 3)
            {
              v74 = &_os_log_default;
              v75 = VCPLogToOSLogType[3];
              if (os_log_type_enabled(&_os_log_default, v75))
              {
                *buf = 138412546;
                v225 = v70;
                v226 = 2112;
                v227 = v73;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v75, "%@ Failed to fetch Gallery updates; falls to full sync - %@", buf, 0x16u);
              }
            }

            [v69 removeAllObjects];
          }

          if (MediaAnalysisLogLevel() >= 7)
          {
            v76 = &_os_log_default;
            v77 = VCPLogToOSLogType[7];
            if (os_log_type_enabled(&_os_log_default, v77))
            {
              v78 = [v69 count];
              *buf = 138412546;
              v225 = v70;
              v226 = 2048;
              v227 = v78;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v77, "%@ Fetched %lu entities to update", buf, 0x16u);
            }
          }
        }

        else
        {
          v185 = 0;
        }

        v79 = mach_absolute_time();
        v80 = VCPSignPostLog();
        v81 = os_signpost_id_generate(v80);

        v82 = VCPSignPostLog();
        v83 = v82;
        if (v81 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v82))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v83, OS_SIGNPOST_INTERVAL_BEGIN, v81, "GalleryPhotosUpdate_UpdateEndToEnd", "", buf, 2u);
        }

        v181 = +[NSDate now];
        if (MediaAnalysisLogLevel() >= 6)
        {
          v84 = &_os_log_default;
          v85 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v85))
          {
            v86 = [v180 count];
            *buf = 138412546;
            v225 = v187;
            v226 = 2048;
            v227 = v86;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v85, "%@ Initiate all entities from Gallery to PhotosDB (with %lu changed entities)", buf, 0x16u);
          }
        }

        v177 = +[NSMutableSet set];
        if (([(PHPhotoLibrary *)self->_photoLibrary vcp_isSyndicationLibrary]& 1) == 0)
        {
          v87 = [MADVUUtilities fetchKeyFaceLocalIdentifiersForPhotoLibrary:self->_photoLibrary];
          if ([v87 count])
          {
            [v177 unionSet:v87];
          }
        }

        v209[0] = 0;
        v209[1] = v209;
        v209[2] = 0x2020000000;
        v209[3] = 0;
        v167 = [(PHPhotoLibrary *)self->_photoLibrary mad_allPersonsFetchOptionsWithDetectionTypes:0 andVerifiedTypes:0];
        [v167 setFetchLimit:1];
        [v167 setShouldPrefetchCount:1];
        v200[0] = _NSConcreteStackBlock;
        v200[1] = 3221225472;
        v200[2] = sub_1000EDD0C;
        v200[3] = &unk_100286240;
        v208 = v209;
        v88 = v187;
        v201 = v88;
        v175 = v62;
        v202 = v175;
        v168 = v180;
        v203 = v168;
        v170 = v167;
        v204 = v170;
        selfCopy2 = self;
        v207 = v186;
        v169 = v177;
        v206 = v169;
        v182 = objc_retainBlock(v200);
        v89 = +[MADVUUtilities sharedInstance];
        [v89 flush];

        v90 = self->_gallery;
        v199 = 0;
        v176 = [(VUWGallery *)v90 entities:0 error:&v199 body:v182];
        v174 = v199;
        if (v174 || [(VCPFaceProcessingTask *)self isCancelled])
        {
          if (MediaAnalysisLogLevel() < 3)
          {
            v94 = 1;
LABEL_124:
            v101 = VCPSignPostLog();
            v102 = v101;
            if (v81 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v101))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v102, OS_SIGNPOST_INTERVAL_END, v81, "GalleryPhotosUpdate_UpdateEndToEnd", "", buf, 2u);
            }

            if (v79)
            {
              mach_absolute_time();
              VCPPerformance_LogMeasurement();
            }

            v103 = +[VCPMADCoreAnalyticsManager sharedManager];
            [v181 timeIntervalSinceNow];
            [v103 accumulateDoubleValue:@"PersonBuildingElapsedTimeInSeconds" forField:@"com.apple.mediaanalysisd.FaceAnalysisRunSession" andEvent:-v104];
            [v103 accumulateInt64Value:1 forField:@"NumberOfPersonBuildingEvents" andEvent:@"com.apple.mediaanalysisd.FaceAnalysisRunSession"];
            v105 = [(PHPhotoLibrary *)self->_photoLibrary mad_allPersonsFetchOptionsWithDetectionTypes:&off_100296230 andVerifiedTypes:&off_100296248];
            v106 = [PHPerson fetchPersonsWithOptions:v105];
            v107 = [v106 count];

            if (MediaAnalysisLogLevel() >= 7)
            {
              v108 = &_os_log_default;
              v109 = VCPLogToOSLogType[7];
              if (os_log_type_enabled(&_os_log_default, v109))
              {
                *buf = 138412546;
                v225 = v88;
                v226 = 2048;
                v227 = v107;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v109, "%@ Start Person Promoting with %lu graph verified person", buf, 0x16u);
              }
            }

            LODWORD(v32) = [(VCPFaceProcessingTask *)self promotePersons];
            if (v32)
            {
              goto LABEL_211;
            }

            v110 = [PHPerson fetchPersonsWithOptions:v105];
            v111 = [v110 count];

            if (MediaAnalysisLogLevel() >= 6)
            {
              v112 = &_os_log_default;
              v113 = VCPLogToOSLogType[6];
              if (os_log_type_enabled(&_os_log_default, v113))
              {
                *buf = 138412546;
                v225 = v88;
                v226 = 2048;
                v227 = v111 - v107;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v113, "%@ Finished Person Promoting with %lu new Graph verified persons", buf, 0x16u);
              }
            }

            if (persons && v111 != v107)
            {
              *persons = 1;
            }

            v166 = [(PHPhotoLibrary *)self->_photoLibrary mad_allPersonsFetchOptionsWithDetectionTypes:&off_100296260 andVerifiedTypes:&off_100296278];
            v114 = [PHPerson fetchPersonsWithOptions:?];
            v115 = [v114 count];

            if (MediaAnalysisLogLevel() >= 7)
            {
              v116 = &_os_log_default;
              v117 = VCPLogToOSLogType[7];
              if (os_log_type_enabled(&_os_log_default, v117))
              {
                *buf = 138412546;
                v225 = v88;
                v226 = 2048;
                v227 = v115;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v117, "%@ Start Pet Promoting with %lu graph verified pet", buf, 0x16u);
              }
            }

            LODWORD(v32) = [(VCPFaceProcessingTask *)self promotePets];
            if (v32)
            {
LABEL_210:

LABEL_211:
              _Block_object_dispose(v209, 8);

              goto LABEL_212;
            }

            v118 = [PHPerson fetchPersonsWithOptions:v166];
            v119 = [v118 count];

            if (MediaAnalysisLogLevel() >= 6)
            {
              v120 = &_os_log_default;
              v121 = VCPLogToOSLogType[6];
              if (os_log_type_enabled(&_os_log_default, v121))
              {
                *buf = 138412546;
                v225 = v88;
                v226 = 2048;
                v227 = v119 - v115;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v121, "%@ Finished Pet Promoting with %lu new Graph verified pets", buf, 0x16u);
              }
            }

            if (persons && v119 != v115)
            {
              *persons = 1;
            }

            [PNPersonPromoter setProcessed:1 forLibrary:self->_photoLibrary];
            if (ready & v94)
            {
LABEL_209:
              [MADProgressManager cacheProcessedAssetCountAfterPromoter:[(VCPFaceProcessingTask *)self _valueForKey:VCPKeyValueNumberOfAssetsAnalyzedForPhotosFaceProcessing] photoLibrary:self->_photoLibrary];
              goto LABEL_210;
            }

            if (MediaAnalysisLogLevel() >= 6)
            {
              v122 = &_os_log_default;
              v123 = VCPLogToOSLogType[6];
              if (os_log_type_enabled(&_os_log_default, v123))
              {
                *buf = 138412290;
                v225 = v88;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v123, "%@ Start updating VUWGallery plugins", buf, 0xCu);
              }
            }

            v192[0] = _NSConcreteStackBlock;
            v192[1] = 3221225472;
            v192[2] = sub_1000EE610;
            v192[3] = &unk_100286268;
            v192[4] = self;
            v165 = v88;
            v193 = v165;
            v124 = objc_retainBlock(v192);
            v179 = [MADVUWGalleryManager sharedGalleryForPhotoLibrary:self->_photoLibrary];
            v172 = mach_absolute_time();
            v125 = VCPSignPostLog();
            v126 = os_signpost_id_generate(v125);

            v127 = VCPSignPostLog();
            v128 = v127;
            if (v126 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v127))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v128, OS_SIGNPOST_INTERVAL_BEGIN, v126, "MADVUWGalleryPluginTypeDeviceOwner", "", buf, 2u);
            }

            v191 = 0;
            v129 = [v179 updatePlugin:0 progressHandler:v124 error:&v191];
            v130 = v191;
            if ((v129 & 1) == 0 && MediaAnalysisLogLevel() >= 3)
            {
              v131 = &_os_log_default;
              v132 = VCPLogToOSLogType[3];
              if (os_log_type_enabled(&_os_log_default, v132))
              {
                *buf = 138412546;
                v225 = v165;
                v226 = 2112;
                v227 = v130;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v132, "%@ Failed to update device owner - %@", buf, 0x16u);
              }
            }

            v133 = VCPSignPostLog();
            v134 = v133;
            if (v126 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v133))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v134, OS_SIGNPOST_INTERVAL_END, v126, "MADVUWGalleryPluginTypeDeviceOwner", "", buf, 2u);
            }

            if (v172)
            {
              mach_absolute_time();
              VCPPerformance_LogMeasurement();
            }

            if (!DeviceWithGreymatterSupport())
            {
              goto LABEL_204;
            }

            v173 = mach_absolute_time();
            v135 = VCPSignPostLog();
            v136 = os_signpost_id_generate(v135);

            v137 = VCPSignPostLog();
            v138 = v137;
            if (v136 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v137))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v138, OS_SIGNPOST_INTERVAL_BEGIN, v136, "MADVUWGalleryPluginTypePersonalization", "", buf, 2u);
            }

            v190 = v130;
            v139 = [v179 updatePlugin:1 progressHandler:v124 error:&v190];
            v140 = v190;
            v141 = v130;
            v130 = v140;

            if ((v139 & 1) == 0 && MediaAnalysisLogLevel() >= 3)
            {
              v142 = &_os_log_default;
              v143 = VCPLogToOSLogType[3];
              if (os_log_type_enabled(&_os_log_default, v143))
              {
                *buf = 138412546;
                v225 = v165;
                v226 = 2112;
                v227 = v130;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v143, "%@ Failed to update personalization - %@", buf, 0x16u);
              }
            }

            v144 = VCPSignPostLog();
            v145 = v144;
            if (v136 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v144))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v145, OS_SIGNPOST_INTERVAL_END, v136, "MADVUWGalleryPluginTypePersonalization", "", buf, 2u);
            }

            if (v173)
            {
              mach_absolute_time();
              VCPPerformance_LogMeasurement();
            }

            if (MediaAnalysisLogLevel() >= 6)
            {
              v146 = &_os_log_default;
              v147 = VCPLogToOSLogType[6];
              if (os_log_type_enabled(&_os_log_default, v147))
              {
                *buf = 138412290;
                v225 = v165;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v147, "%@ Finished personalization plugin", buf, 0xCu);
              }
            }

            if (![(VCPFaceProcessingTask *)self _valueForKey:VCPKeyValuePrioritizedFaceCheckpointReportedTimestamp]|| (v148 = VCPKeyValuePersonalizationCheckpointReportedTimestamp, [(VCPFaceProcessingTask *)self _valueForKey:VCPKeyValuePersonalizationCheckpointReportedTimestamp]))
            {
LABEL_204:
              if (MediaAnalysisLogLevel() >= 6)
              {
                v162 = &_os_log_default;
                v163 = VCPLogToOSLogType[6];
                if (os_log_type_enabled(&_os_log_default, v163))
                {
                  *buf = 138412290;
                  v225 = v165;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v163, "%@ Finished updating VUWGallery plugins", buf, 0xCu);
                }
              }

              goto LABEL_209;
            }

            v189 = v130;
            v149 = [BGSystemTaskCheckpoints reportFeatureCheckpoint:50 forFeature:802 error:&v189];
            v150 = v189;

            if (v149)
            {
              if (MediaAnalysisLogLevel() >= 5)
              {
                v151 = &_os_log_default;
                v152 = VCPLogToOSLogType[5];
                if (os_log_type_enabled(&_os_log_default, v152))
                {
                  *buf = 138412802;
                  v225 = v165;
                  v226 = 2048;
                  v227 = 30;
                  v228 = 2048;
                  v229 = 802;
                  v153 = "%@ Reported checkpoint %lu for %lu";
                  v154 = v152;
                  v155 = 32;
LABEL_198:
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v154, v153, buf, v155);
                  goto LABEL_199;
                }

                goto LABEL_199;
              }
            }

            else if (MediaAnalysisLogLevel() >= 3)
            {
              v156 = &_os_log_default;
              v157 = VCPLogToOSLogType[3];
              if (os_log_type_enabled(&_os_log_default, v157))
              {
                *buf = 138413058;
                v225 = v165;
                v226 = 2048;
                v227 = 30;
                v228 = 2048;
                v229 = 802;
                v230 = 2112;
                v231 = v150;
                v153 = "%@ Failed to report checkpoint %lu for %lu - %@";
                v154 = v157;
                v155 = 42;
                goto LABEL_198;
              }

LABEL_199:
            }

            v158 = +[NSDate now];
            [v158 timeIntervalSinceReferenceDate];
            v160 = v159;

            if (+[MADManagedKeyValueStore isMACDPersistEnabled])
            {
              v161 = self->_photoLibrary;
              v188[0] = _NSConcreteStackBlock;
              v188[1] = 3221225472;
              v188[2] = sub_1000EE758;
              v188[3] = &unk_100282F90;
              v188[4] = v160;
              [(PHPhotoLibrary *)v161 mad_performAnalysisDataStoreChanges:v188 error:0];
            }

            else
            {
              [(VCPDatabaseWriter *)self->_database setValue:v160 forKey:v148];
              [(VCPDatabaseWriter *)self->_database commit];
            }

            v130 = v150;
            goto LABEL_204;
          }

          v91 = &_os_log_default;
          v92 = &_os_log_default;
          v93 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v93))
          {
            *buf = 138412546;
            v225 = v88;
            v226 = 2112;
            v227 = v174;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v93, "%@ Failed to initialize entities from Gallery - %@", buf, 0x16u);
          }

          v94 = 1;
        }

        else if (v62)
        {
          if (MediaAnalysisLogLevel() >= 7)
          {
            v95 = &_os_log_default;
            v96 = VCPLogToOSLogType[7];
            if (os_log_type_enabled(&_os_log_default, v96))
            {
              *buf = 138412546;
              v225 = v88;
              v226 = 2112;
              v227 = v176;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v96, "%@ Update MADVUWChangeBookmark %@", buf, 0x16u);
            }
          }

          if (+[MADManagedChangeToken isMACDPersistEnabled])
          {
            v97 = self->_photoLibrary;
            v194[0] = _NSConcreteStackBlock;
            v194[1] = 3221225472;
            v194[2] = sub_1000EE5FC;
            v194[3] = &unk_100283AD0;
            v195 = v176;
            [(PHPhotoLibrary *)v97 mad_performAnalysisDataStoreChanges:v194 error:0];
          }

          else
          {
            [(VCPDatabaseWriter *)self->_database updateChangeToken:v176 forTaskID:3 andChangeTokenType:4];
            [(VCPDatabaseWriter *)self->_database commit];
          }

          v91 = v175;
          v94 = 1;
          v175 = v185;
        }

        else
        {
          v91 = +[NSDate date];
          if (MediaAnalysisLogLevel() >= 7)
          {
            v98 = &_os_log_default;
            v99 = VCPLogToOSLogType[7];
            if (os_log_type_enabled(&_os_log_default, v99))
            {
              *buf = 138412546;
              v225 = v88;
              v226 = 2112;
              v227 = v176;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v99, "%@ Initiate MADVUWChangeBookmark %@", buf, 0x16u);
            }
          }

          if (+[MADManagedChangeToken isMACDPersistEnabled])
          {
            v100 = self->_photoLibrary;
            v196[0] = _NSConcreteStackBlock;
            v196[1] = 3221225472;
            v196[2] = sub_1000EE5E8;
            v196[3] = &unk_100282938;
            v197 = v176;
            v198 = v91;
            [(PHPhotoLibrary *)v100 mad_performAnalysisDataStoreChanges:v196 error:0];
          }

          else
          {
            [(VCPDatabaseWriter *)self->_database setChangeToken:v176 forTaskID:3 andChangeTokenType:4 date:v91];
            [(VCPDatabaseWriter *)self->_database commit];
          }

          v175 = v176;
          v94 = 0;
        }

        goto LABEL_124;
      }

      photoLibrary = &_os_log_default;
      v65 = &_os_log_default;
      v66 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v66))
      {
        *buf = 138412546;
        v225 = v187;
        v226 = 1024;
        LODWORD(v227) = v64;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v66, "%@ Failed to query previous VUWGalleryChangeBookmark (code:%d)", buf, 0x12u);
      }
    }

    goto LABEL_70;
  }

LABEL_212:

  return v32;
}

- (int)_publishClusterAndPersonProcessingWithBatchContext:(id)context
{
  contextCopy = context;
  unprocessedAssets = [contextCopy unprocessedAssets];
  processingStatusMap = [contextCopy processingStatusMap];
  publishDetectionAndProcessPersonStatus = [(VCPFaceProcessingTask *)self _recoverAttemptsForAssets:unprocessedAssets withProcessingStatusMap:processingStatusMap];

  if (!publishDetectionAndProcessPersonStatus)
  {
    dispatch_group_wait(self->_publishDetectionAndProcessPersonGroup, 0xFFFFFFFFFFFFFFFFLL);
    if (self->_publishDetectionAndProcessPersonStatus)
    {
      processedAssets = [contextCopy processedAssets];
      processingStatusMap2 = [contextCopy processingStatusMap];
      publishDetectionAndProcessPersonStatus = [(VCPFaceProcessingTask *)self _recoverAttemptsForAssets:processedAssets withProcessingStatusMap:processingStatusMap2];

      if (!publishDetectionAndProcessPersonStatus)
      {
        publishDetectionAndProcessPersonStatus = self->_publishDetectionAndProcessPersonStatus;
      }
    }

    else
    {
      publishDetectionAndProcessPersonGroup = self->_publishDetectionAndProcessPersonGroup;
      publishDetectionAndProcessPersonQueue = self->_publishDetectionAndProcessPersonQueue;
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_1000EE928;
      v16 = &unk_100282BC8;
      v17 = contextCopy;
      selfCopy = self;
      dispatch_group_async(publishDetectionAndProcessPersonGroup, publishDetectionAndProcessPersonQueue, &v13);
      if (([objc_opt_class() _concurrentFaceStagings] & 1) == 0)
      {
        dispatch_group_wait(self->_publishDetectionAndProcessPersonGroup, 0xFFFFFFFFFFFFFFFFLL);
      }

      publishDetectionAndProcessPersonStatus = 0;
    }
  }

  return publishDetectionAndProcessPersonStatus;
}

- (int)processFaceCrops
{
  vcp_allowsCloudLibraryResourceDownload = [(PHPhotoLibrary *)self->_photoLibrary vcp_allowsCloudLibraryResourceDownload];
  selfCopy = self;
  newFaceCropsToBeGeneratedFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary newFaceCropsToBeGeneratedFetchOptions];
  v45 = [PHFace fetchFacesWithOptions:?];
  if (MediaAnalysisLogLevel() >= 6)
  {
    v3 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      *buf = 134217984;
      *&buf[4] = [v45 count];
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "%lu face(s) need to generate facecrops", buf, 0xCu);
    }
  }

  v41 = [PHAsset fetchAssetsGroupedByFaceUUIDForFaces:v45];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_1000EF974;
  v48[3] = &unk_100283000;
  v48[4] = selfCopy;
  v44 = objc_retainBlock(v48);
  v4 = 0;
  v36 = VCPLogToOSLogType[3];
  v37 = VCPLogToOSLogType[4];
  type = VCPLogToOSLogType[6];
  v5 = &_os_log_default;
  *&v6 = 138412546;
  v34 = v6;
  while (1)
  {
    if (v4 >= [v45 count])
    {
      *buf = 0;
      v31 = [(VCPFaceCropManager *)selfCopy->_faceCropManager processDirtyFaceCrops:buf withCancelBlock:v44 andExtendTimeoutBlock:&stru_100286288];
      v32 = +[VCPMADCoreAnalyticsManager sharedManager];
      [v32 accumulateInt64Value:*buf forField:@"NumberOfFacecropsAnalyzed" andEvent:@"com.apple.mediaanalysisd.FaceAnalysisRunSession"];

      goto LABEL_40;
    }

    v7 = v5;
    v8 = objc_autoreleasePoolPush();
    v9 = (v44[2])();
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      sub_1000EF910(v9);
      v43 = [v45 objectAtIndexedSubscript:v4];
      uuid = [v43 uuid];
      v12 = [v41 objectForKeyedSubscript:uuid];

      v13 = [VCPFaceUtils preferredResourcesForFaceProcessingWithAsset:v12];
      v14 = [VCPFaceUtils resourceForFaceProcessing:v13 allowStreaming:vcp_allowsCloudLibraryResourceDownload];
      if (([VCPFaceUtils isBestResourceForFaceProcessing:v14 fromResources:v13]& 1) != 0)
      {
        privateFileURL = [v14 privateFileURL];
        if (vcp_allowsCloudLibraryResourceDownload && (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v16 = objc_claimAutoreleasedReturnValue(), [privateFileURL path], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "fileExistsAtPath:", v17), v17, v16, (v18 & 1) == 0))
        {
          v47 = privateFileURL;
          [PHAssetResourceManager vcp_requestFileURLForAssetResource:v14 withTaskID:3 toResourceURL:&v47 cancel:v44];
          v19 = v47;
        }

        else
        {
          v19 = privateFileURL;
        }

        if (v19)
        {
          v40 = v19;
          v20 = VCPSignPostLog();
          v21 = os_signpost_id_generate(v20);

          v22 = VCPSignPostLog();
          v23 = v22;
          if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_BEGIN, v21, "VCPFaceProcessingGenerateFaceCrop", "", buf, 2u);
          }

          faceCropManager = selfCopy->_faceCropManager;
          v52 = v43;
          v25 = [NSArray arrayWithObjects:&v52 count:1];
          v46 = 0;
          LOBYTE(faceCropManager) = [(VCPFaceCropManager *)faceCropManager generateAndPersistFaceCropsForFaces:v25 withAsset:v12 resource:v14 resourceURL:v40 error:&v46];
          v26 = v46;

          if ((faceCropManager & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(v7, v36))
          {
            localIdentifier = [v12 localIdentifier];
            *buf = v34;
            *&buf[4] = localIdentifier;
            v50 = 2112;
            v51 = v26;
            _os_log_impl(&_mh_execute_header, v7, v36, "[FaceCropGeneration][%@] Failed to generate - %@", buf, 0x16u);
          }

          v28 = VCPSignPostLog();
          v29 = v28;
          if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_INTERVAL_END, v21, "VCPFaceProcessingGenerateFaceCrop", "", buf, 2u);
          }

          v10 = 0;
          v19 = v40;
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v7, v37))
          {
            localIdentifier2 = [v12 localIdentifier];
            *buf = 138412290;
            *&buf[4] = localIdentifier2;
            _os_log_impl(&_mh_execute_header, v7, v37, "[FaceCropGeneration][%@] No local or downloaded resource; skipping", buf, 0xCu);
          }

          v10 = 6;
        }
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(v7, type))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, type, "[FaceCropGeneration] No applicable resource; skipping", buf, 2u);
        }

        v10 = 6;
      }

      v5 = v7;
    }

    objc_autoreleasePoolPop(v8);
    if (v10 != 6)
    {
      if (v10)
      {
        break;
      }
    }

    ++v4;
  }

  v31 = -128;
LABEL_40:

  return v31;
}

@end