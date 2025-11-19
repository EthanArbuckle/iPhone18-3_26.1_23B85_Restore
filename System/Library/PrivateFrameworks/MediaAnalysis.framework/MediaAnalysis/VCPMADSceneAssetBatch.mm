@interface VCPMADSceneAssetBatch
+ (BOOL)_allowConcurrentSceneProcessing;
+ (id)batchWithAnalysisDatabase:(id)a3 allowDownload:(BOOL)a4 cancelBlock:(id)a5 resources:(id)a6;
- (VCPMADSceneAssetBatch)initWithAnalysisDatabase:(id)a3 allowDownload:(BOOL)a4 cancelBlock:(id)a5 resources:(id)a6;
- (double)_downloadInactiveTimeInterval;
- (id)_extractAndSortBoundingBoxFromDetectedObjects:(id)a3;
- (id)_generateSceneClassificationsFromRequests:(id)a3 safetyNResults:(id)a4 safetyGVResults:(id)a5;
- (id)_processBoundingBoxFromDetectedObjects:(id)a3 forSceneClassID:(id)a4;
- (int)_collectResultsForAssetEntry:(id)a3 fromRequests:(id)a4 safetyNResults:(id)a5 safetyGVResults:(id)a6 safetyQRResults:(unint64_t)a7;
- (int)_createRequests:(id *)a3 forAssetEntry:(id)a4;
- (int)_performBlurAnalysisForAssetEntry:(id)a3 withLumaPixelBuffer:(__CVBuffer *)a4;
- (int)_performEmbeddingAnalysisForAssetEntry:(id)a3 withColorPixelBuffer:(__CVBuffer *)a4;
- (int)_performExposureAnalysisForAssetEntry:(id)a3 withLumaPixelBuffer:(__CVBuffer *)a4;
- (int)_performIVSAnalysisForAssetEntry:(id)a3 pixelBuffer:(__CVBuffer *)a4 results:(id *)a5 safetyQRResults:(unint64_t *)a6;
- (int)_performRotationAnalysisForAssetEntry:(id)a3 withColorPixelBuffer:(__CVBuffer *)a4;
- (int)_performSceneNetAnalysisForAssetEntry:(id)a3 withImage:(id)a4 andRequests:(id)a5;
- (int)_performWallpaperAnalysisForAssetEntry:(id)a3 withSceneprint:(id)a4;
- (int)_prepareWithCurrentDate:(id)a3;
- (int)_propagateAssetProcessingStatus;
- (int)_publishEmbeddingResultsWithPhotoLibrary:(id)a3;
- (int)_publishPhotosResultsWithPhotoLibrary:(id)a3;
- (int)_publishProcessingStatusForPhotoLibrary:(id)a3;
- (int)_publishProcessingStatusToLegacyDatabase;
- (int)_removeDownloadRequestIDForAsset:(id)a3;
- (int)_requestDownloadThumbnailResource:(id)a3 entry:(id)a4;
- (int)prepare;
- (int)process;
- (int)publish;
- (void)_addDownloadRequestID:(int)a3 asset:(id)a4;
- (void)_cancelRemainingDownloadsWithStatus:(int)a3;
- (void)_insertBoundingBox:(id)a3 toSortedBoundingBoxes:(id)a4;
- (void)_parseClassificationObservations:(id)a3 withPrefix:(id)a4 toClassificationResults:(id)a5;
- (void)_parsePhotosTaxonomyClassificationObservations:(id)a3 toClassificationResults:(id)a4 andDetectorSceneClassIds:(id)a5 isEntityNet:(BOOL)a6;
- (void)_processAssetEntry:(id)a3 resourceURL:(id)a4 completionHandler:(id)a5;
- (void)_reportCoreAnalyticsWithEntry:(id)a3;
- (void)_reportRunSessionAnalyticsWithPublishInterval:(double)a3;
- (void)addPhotosAsset:(id)a3 withPreviousStatus:(unint64_t)a4 attempts:(unint64_t)a5 andAttemptDate:(id)a6;
@end

@implementation VCPMADSceneAssetBatch

+ (BOOL)_allowConcurrentSceneProcessing
{
  if ((atomic_load_explicit(&qword_1002B81A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1002B81A0))
  {
    byte_1002B8198 = DeviceHasANE();
    __cxa_guard_release(&qword_1002B81A0);
  }

  return byte_1002B8198;
}

- (VCPMADSceneAssetBatch)initWithAnalysisDatabase:(id)a3 allowDownload:(BOOL)a4 cancelBlock:(id)a5 resources:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v44.receiver = self;
  v44.super_class = VCPMADSceneAssetBatch;
  v14 = [(VCPMADSceneAssetBatch *)&v44 init];
  if (!v14)
  {
LABEL_15:
    v40 = v14;
    goto LABEL_20;
  }

  v15 = +[NSMutableArray array];
  assetEntries = v14->_assetEntries;
  v14->_assetEntries = v15;

  objc_storeStrong(&v14->_analysisDatabase, a3);
  v14->_allowDownload = a4;
  v17 = objc_retainBlock(v12);
  cancelBlock = v14->_cancelBlock;
  v14->_cancelBlock = v17;

  v19 = +[VCPMADProcessingJobManager sharedManager];
  v20 = [v19 inProcessAssetBudget];
  inProcessAssetBudget = v14->_inProcessAssetBudget;
  v14->_inProcessAssetBudget = v20;

  v14->_scenenetQueuesAllowed = 1;
  if ([objc_opt_class() _allowConcurrentSceneProcessing])
  {
    scenenetQueuesAllowed = [objc_opt_class() _concurrentSceneNetQueueCount];
    v14->_scenenetQueuesAllowed = scenenetQueuesAllowed;
  }

  else
  {
    scenenetQueuesAllowed = v14->_scenenetQueuesAllowed;
  }

  [v19 registerQueueGroupWithName:@"Scenenet" andNumberOfQueues:scenenetQueuesAllowed];
  v23 = dispatch_group_create();
  scenenetGroup = v14->_scenenetGroup;
  v14->_scenenetGroup = v23;

  v14->_blurExposureRotationQueuesAllowed = 1;
  if ([objc_opt_class() _allowConcurrentSceneProcessing])
  {
    blurExposureRotationQueuesAllowed = [objc_opt_class() _concurrentBlurExposureRotationQueueCount];
    v14->_blurExposureRotationQueuesAllowed = blurExposureRotationQueuesAllowed;
  }

  else
  {
    blurExposureRotationQueuesAllowed = v14->_blurExposureRotationQueuesAllowed;
  }

  [v19 registerQueueGroupWithName:@"BlurExposureRotation" andNumberOfQueues:blurExposureRotationQueuesAllowed];
  v26 = dispatch_group_create();
  blurExposureRotationGroup = v14->_blurExposureRotationGroup;
  v14->_blurExposureRotationGroup = v26;

  [v19 registerQueueGroupWithName:@"AssetProcessCompletion" andNumberOfQueues:1];
  v28 = dispatch_group_create();
  assetProcessCompletionGroup = v14->_assetProcessCompletionGroup;
  v14->_assetProcessCompletionGroup = v28;

  v30 = [v19 getJobScheduler];
  scheduler = v14->_scheduler;
  v14->_scheduler = v30;

  if (v14->_scheduler)
  {
    objc_storeStrong(&v14->_resources, a6);
    if (v14->_allowDownload)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v32 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v32))
        {
          *v43 = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "Initiating downloadable SceneAssetBatch ...", v43, 2u);
        }
      }

      v33 = dispatch_group_create();
      downloadGroup = v14->_downloadGroup;
      v14->_downloadGroup = v33;

      v35 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v36 = dispatch_queue_create("SceneAssetBatch.Download", v35);
      downloadStateQueue = v14->_downloadStateQueue;
      v14->_downloadStateQueue = v36;

      v38 = +[NSMutableDictionary dictionary];
      downloadRequestIDs = v14->_downloadRequestIDs;
      v14->_downloadRequestIDs = v38;
    }

    goto LABEL_15;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v41 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v41))
    {
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v41, "Failed to get job scheduler to dispatch analysis jobs onto global queues across batches", v43, 2u);
    }
  }

  v40 = 0;
LABEL_20:

  return v40;
}

+ (id)batchWithAnalysisDatabase:(id)a3 allowDownload:(BOOL)a4 cancelBlock:(id)a5 resources:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [[a1 alloc] initWithAnalysisDatabase:v10 allowDownload:v8 cancelBlock:v11 resources:v12];

  return v13;
}

- (void)addPhotosAsset:(id)a3 withPreviousStatus:(unint64_t)a4 attempts:(unint64_t)a5 andAttemptDate:(id)a6
{
  v27 = a4;
  v28 = a5;
  v8 = a3;
  v29 = a6;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = self->_assetEntries;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v10)
  {
    v11 = *v32;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [*(*(&v31 + 1) + 8 * i) asset];
        v14 = [v13 localIdentifier];
        v15 = [v8 localIdentifier];
        v16 = [v14 isEqualToString:v15];

        if (v16)
        {
          if (MediaAnalysisLogLevel() >= 4)
          {
            v22 = VCPLogToOSLogType[4];
            if (os_log_type_enabled(&_os_log_default, v22))
            {
              v23 = [v8 localIdentifier];
              *buf = 138412290;
              *&buf[4] = v23;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[Scene][%@] Batch already contains asset; ignoring", buf, 0xCu);
            }
          }

          goto LABEL_19;
        }
      }

      v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  *buf = 0;
  v30 = 0;
  if (!+[MADManagedProcessingStatus isMACDReadEnabled])
  {
    analysisDatabase = self->_analysisDatabase;
    v19 = [v8 localIdentifier];
    [(VCPDatabaseWriter *)analysisDatabase fetchProcessingErrorCode:buf errorLine:&v30 taskID:2 localIdentifier:v19];
    goto LABEL_17;
  }

  v17 = [v8 photoLibrary];
  v18 = [MADPhotosDataStoreClient needsDataStoreMigrationForPhotoLibrary:v17];

  if ((v18 & 1) == 0)
  {
    v19 = [v8 photoLibrary];
    v20 = [v19 mad_fetchRequest];
    v21 = [v8 localIdentifier];
    [v20 fetchProcessingErrorCode:buf errorLine:&v30 taskID:2 localIdentifier:v21];

LABEL_17:
  }

  assetEntries = self->_assetEntries;
  v26 = [VCPMADSceneAssetEntry entryWithAsset:v8 previousStatus:v27 previousAttempts:v28 andLastAttemptDate:v29 previousErrorCode:*buf previousErrorLine:v30, v27, v28];
  [(NSMutableArray *)assetEntries addObject:v26];

LABEL_19:
}

- (int)_prepareWithCurrentDate:(id)a3
{
  v23 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v21 = self;
  obj = self->_assetEntries;
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v20 = *v26;
    while (2)
    {
      v6 = 0;
      v7 = v3;
      v19 = v5;
      do
      {
        v22 = v7;
        if (*v26 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * v6);
        context = objc_autoreleasePoolPush();
        analysisDatabase = v21->_analysisDatabase;
        v10 = [v8 previousAttempts];
        v11 = [v8 asset];
        v12 = [v8 asset];
        v13 = [v12 mediaType];
        v14 = [v8 asset];
        v15 = -[VCPDatabaseWriter setAttempts:asset:taskID:status:lastAttemptDate:mediaType:mediaSubtypes:errorCode:errorLine:](analysisDatabase, "setAttempts:asset:taskID:status:lastAttemptDate:mediaType:mediaSubtypes:errorCode:errorLine:", v10 + 1, v11, 2, 1, v23, v13, [v14 mediaSubtypes], objc_msgSend(v8, "previousErrorCode"), objc_msgSend(v8, "previousErrorLine"));

        if (v15 == -108 || v15 == -36)
        {
          v3 = v15;
        }

        else
        {
          v3 = v15;
          if (v15 != -23)
          {
            v3 = v22;
          }
        }

        objc_autoreleasePoolPop(context);
        if (v15 == -108 || v15 == -36 || v15 == -23)
        {
          v16 = v3;
          goto LABEL_19;
        }

        v6 = v6 + 1;
        v7 = v3;
      }

      while (v19 != v6);
      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      v16 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_19:

  return v16;
}

- (void)_addDownloadRequestID:(int)a3 asset:(id)a4
{
  v6 = a4;
  downloadStateQueue = self->_downloadStateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002B080;
  block[3] = &unk_100283770;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_sync(downloadStateQueue, block);
}

- (int)_removeDownloadRequestIDForAsset:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  downloadStateQueue = self->_downloadStateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002B200;
  block[3] = &unk_100283798;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(downloadStateQueue, block);
  LODWORD(downloadStateQueue) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return downloadStateQueue;
}

- (double)_downloadInactiveTimeInterval
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  downloadStateQueue = self->_downloadStateQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002B3E8;
  v5[3] = &unk_100283178;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(downloadStateQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_cancelRemainingDownloadsWithStatus:(int)a3
{
  downloadStateQueue = self->_downloadStateQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002B4F0;
  v5[3] = &unk_1002837C0;
  v5[4] = self;
  v6 = a3;
  dispatch_sync(downloadStateQueue, v5);
  dispatch_group_wait(self->_downloadGroup, 0xFFFFFFFFFFFFFFFFLL);
}

- (int)_requestDownloadThumbnailResource:(id)a3 entry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 assetLocalIdentifier];
  v9 = [NSString stringWithFormat:@"[Scene][Download][%@]", v8];

  if (MediaAnalysisLogLevel() >= 6)
  {
    v10 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      *buf = 138412546;
      v30 = v9;
      v31 = 2112;
      v32 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "%@ Attempted resource %@", buf, 0x16u);
    }
  }

  v11 = objc_alloc_init(PHAssetResourceRequestOptions);
  [v11 setNetworkAccessAllowed:1];
  [v11 setDownloadPriority:0];
  [v11 setDownloadIntent:2];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10002BAB8;
  v27[3] = &unk_1002837E8;
  v12 = v9;
  v28 = v12;
  [v11 setProgressHandler:v27];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10002BB8C;
  v25[3] = &unk_100283810;
  v13 = v12;
  v26 = v13;
  v14 = objc_retainBlock(v25);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10002BC80;
  v22[3] = &unk_100283838;
  v22[4] = self;
  v15 = v7;
  v23 = v15;
  v16 = v13;
  v24 = v16;
  v17 = objc_retainBlock(v22);
  v18 = +[PHAssetResourceManager defaultManager];
  v19 = [v18 requestFileURLForAssetResource:v6 options:v11 urlReceivedHandler:v14 completionHandler:v17];

  if (!v19 && MediaAnalysisLogLevel() >= 3)
  {
    v20 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v20))
    {
      *buf = 138412290;
      v30 = v16;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "%@ Failed to issue request", buf, 0xCu);
    }
  }

  return v19;
}

- (int)prepare
{
  v51 = +[NSDate now];
  if (MediaAnalysisLogLevel() >= 6)
  {
    v2 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      v3 = [(NSMutableArray *)self->_assetEntries count];
      qos_class_self();
      v4 = VCPMAQoSDescription();
      *buf = 134218242;
      v65 = v3;
      v66 = 2112;
      v67 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[Scene] Preparing %lu assets (QoS: %@)", buf, 0x16u);
    }
  }

  if (+[MADManagedProcessingStatus isMACDPersistEnabled])
  {
    v5 = [(NSMutableArray *)self->_assetEntries firstObject];
    v6 = [v5 asset];
    v7 = [v6 photoLibrary];

    if ([MADPhotosDataStoreClient needsDataStoreMigrationForPhotoLibrary:v7])
    {
      if (!self->_allowBeforeMigration)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v28 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v28))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v28, "[Scene][MACD] Skipping processing due to migration incomplete", buf, 2u);
          }
        }

        v50 = -18;
        goto LABEL_40;
      }

      if (MediaAnalysisLogLevel() >= 7)
      {
        v8 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v8))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[Scene][MACD] Skipping processing status setting due to migration incomplete", buf, 2u);
        }
      }
    }

    else
    {
      v17 = VCPSignPostLog();
      v18 = os_signpost_id_generate(v17);

      v19 = VCPSignPostLog();
      v20 = v19;
      if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "VCPMADSceneAssetBatch_Prepare", "", buf, 2u);
      }

      v61[0] = _NSConcreteStackBlock;
      v61[1] = 3221225472;
      v61[2] = sub_10002C884;
      v61[3] = &unk_100282938;
      v61[4] = self;
      v62 = v51;
      v60 = 0;
      v21 = [v7 mad_performAnalysisDataStoreChanges:v61 error:&v60];
      v22 = v60;
      v23 = v22;
      if ((v21 & 1) == 0)
      {
        v14 = [v22 code];
        if (v14)
        {
          if (MediaAnalysisLogLevel() >= 3)
          {
            v24 = VCPLogToOSLogType[3];
            if (os_log_type_enabled(&_os_log_default, v24))
            {
              v25 = [(NSMutableArray *)self->_assetEntries count];
              *buf = 67109120;
              LODWORD(v65) = v25;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "[Scene][MACD] Failed to prepare %d assets", buf, 8u);
            }
          }

          goto LABEL_68;
        }
      }

      v26 = VCPSignPostLog();
      v27 = v26;
      if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_END, v18, "VCPMADSceneAssetBatch_Prepare", "", buf, 2u);
      }
    }

    v50 = 0;
LABEL_40:

LABEL_41:
    if (self->_allowDownload)
    {
      context = objc_autoreleasePoolPush();
      if (MediaAnalysisLogLevel() >= 7)
      {
        v29 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v29))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v29, "[Scene] Checking to download thumbnails ...", buf, 2u);
        }
      }

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v30 = self->_assetEntries;
      v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v56 objects:v63 count:16];
      if (v31)
      {
        v32 = *v57;
        v33 = VCPLogToOSLogType[7];
        do
        {
          for (i = 0; i != v31; i = i + 1)
          {
            if (*v57 != v32)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v56 + 1) + 8 * i);
            if ([v35 previousStatus] == 2)
            {
              v36 = [v35 asset];
              v37 = [PHAssetResource vcp_allAcceptableResourcesForAsset:v36];

              v38 = [v37 vcp_thumbnailResource];
              v39 = v38;
              if (v38)
              {
                if (([v38 vcp_isLocallyAvailable] & 1) == 0)
                {
                  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v33))
                  {
                    v40 = [v35 asset];
                    v41 = [v40 localIdentifier];
                    *buf = 138412290;
                    v65 = v41;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, v33, "[Scene][%@] Issuing thumbnail download ...", buf, 0xCu);
                  }

                  dispatch_group_enter(self->_downloadGroup);
                  v42 = qos_class_self();
                  v43 = dispatch_get_global_queue(v42, 0);
                  block[0] = _NSConcreteStackBlock;
                  block[1] = 3221225472;
                  block[2] = sub_10002CB40;
                  block[3] = &unk_1002832A0;
                  block[4] = self;
                  v54 = v39;
                  v55 = v35;
                  dispatch_async(v43, block);
                }
              }

              else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v33))
              {
                v44 = [v35 asset];
                v45 = [v44 localIdentifier];
                *buf = 138412290;
                v65 = v45;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v33, "[Scene][%@] No thumbnail resource; skipping download", buf, 0xCu);
              }
            }
          }

          v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v56 objects:v63 count:16];
        }

        while (v31);
      }

      objc_autoreleasePoolPop(context);
    }

    if (MediaAnalysisLogLevel() >= 6)
    {
      v46 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v46))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v46, "[Scene] Preparing assets done", buf, 2u);
      }
    }

    v7 = +[VCPMADCoreAnalyticsManager sharedManager];
    [v51 timeIntervalSinceNow];
    [v7 accumulateDoubleValue:@"TotalPrepareTimeInSeconds" forField:@"com.apple.mediaanalysisd.SceneAnalysisRunSession" andEvent:-v47];
    v14 = v50;
LABEL_68:

    goto LABEL_69;
  }

  v9 = VCPSignPostLog();
  v10 = os_signpost_id_generate(v9);

  v11 = VCPSignPostLog();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "VCPMADSceneAssetBatch_LegacyPrepare", "", buf, 2u);
  }

  v50 = [(VCPMADSceneAssetBatch *)self _prepareWithCurrentDate:v51];
  v13 = [(VCPDatabaseWriter *)self->_analysisDatabase commit];
  v14 = v13;
  if (v13 != -108 && v13 != -36 && v13 != -23)
  {
    v15 = VCPSignPostLog();
    v16 = v15;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, v10, "VCPMADSceneAssetBatch_LegacyPrepare", "", buf, 2u);
    }

    if (v14 != -36 && v14 != -23)
    {
      goto LABEL_41;
    }
  }

LABEL_69:

  return v14;
}

- (int)_createRequests:(id *)a3 forAssetEntry:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(VCPPreAnalysisRequests);
  v7 = +[VNClassifyImageAestheticsRequest vcp_sceneRequest];
  [v6 setAestheticsRequest:v7];

  v8 = +[VNSceneClassificationRequest vcp_sceneRequest];
  [v6 setClassificationRequest:v8];

  v9 = +[VNCreateSceneprintRequest vcp_sceneRequest];
  [v6 setSceneprintRequest:v9];

  v10 = +[VNGenerateAttentionBasedSaliencyImageRequest vcp_sceneRequest];
  [v6 setSaliencyRequest:v10];

  if (+[VCPPreAnalysisRequests includeSO])
  {
    v11 = +[VNGenerateObjectnessBasedSaliencyImageRequest vcp_sceneRequest];
    [v6 setSaliencyObjectnessRequest:v11];
  }

  if (+[VCPPreAnalysisRequests includeJunk])
  {
    v12 = +[VNClassifyJunkImageRequest vcp_sceneRequest];
    [v6 setJunkImageRequest:v12];
  }

  if (+[VCPPreAnalysisRequests includeDO])
  {
    v13 = +[VNRecognizeObjectsRequest vcp_sceneRequest];
    [v6 setObjectRequest:v13];
  }

  if (+[VCPPreAnalysisRequests includeLM])
  {
    v14 = +[VNClassifyPotentialLandmarkRequest vcp_sceneRequest];
    [v6 setLandmarkRequest:v14];
  }

  if (+[VCPPreAnalysisRequests includeNSFW])
  {
    v15 = +[VNVYvzEtX1JlUdu8xx5qhDI vcp_sceneRequest];
    [v6 setNsfwRequest:v15];
  }

  if (+[VCPPreAnalysisRequests includeSE])
  {
    v16 = +[VN6Mb1ME89lyW3HpahkEygIG vcp_sceneRequest];
    [v6 setTabooRequest:v16];
  }

  if (+[VCPPreAnalysisRequests includeSDG])
  {
    v17 = +[VN5kJNH3eYuyaLxNpZr5Z7zi vcp_sceneRequest];
    [v6 setSemanticRequest:v17];
  }

  if (+[VCPPreAnalysisRequests includeWP])
  {
    v18 = +[VNCreateSceneprintRequest vcp_sceneRequestForWallpaper];
    [v6 setSceneprintRawRequest:v18];
  }

  if (+[VCPPreAnalysisRequests includeMeme])
  {
    v19 = +[VNClassifyMemeImageRequest vcp_sceneRequest];
    [v6 setMemeRequest:v19];
  }

  if (+[VCPPreAnalysisRequests includeDocument])
  {
    v20 = +[VNRecognizeDocumentElementsRequest vcp_sceneRequest];
    [v6 setDocumentRequest:v20];
  }

  if (+[VCPPreAnalysisRequests includePA])
  {
    v21 = +[VN1JC7R3k4455fKQz0dY1VhQ vcp_sceneRequest];
    [v6 setAdjustmentsRequest:v21];
  }

  if (+[VCPPreAnalysisRequests includeCN])
  {
    v22 = +[VNClassifyCityNatureImageRequest vcp_sceneRequest];
    [v6 setCityNatureRequest:v22];
  }

  if (+[VCPPreAnalysisRequests includeDMF])
  {
    v23 = [v5 asset];
    v24 = [v23 mediaType];

    if (v24 != 2)
    {
      v25 = +[VNCreateImageFingerprintsRequest vcp_sceneRequest];
      [v6 setImagefingerprintsRequest:v25];
    }
  }

  if (+[VNRequest mad_includeEntityNet])
  {
    v26 = +[VNClassifyImageRequest vcp_sceneRequest];
    [v6 setClassifyImageRequest:v26];
  }

  v27 = v6;
  *a3 = v6;

  return 0;
}

- (int)_performWallpaperAnalysisForAssetEntry:(id)a3 withSceneprint:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = VCPSignPostLog();
    v8 = os_signpost_id_generate(v7);

    v9 = VCPSignPostLog();
    v10 = v9;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "VCPWallpaperAnalysis", "", buf, 2u);
    }

    v11 = objc_alloc_init(VCPWallpaperAnalyzer);
    v31 = 0;
    v12 = [v11 analyzeWithSceneprint:v6 results:&v31 cancel:&stru_100283858];
    v13 = v31;
    v14 = VCPSignPostLog();
    v15 = v14;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, v8, "VCPWallpaperAnalysis", "", buf, 2u);
    }

    if (v12)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v16 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v16))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "Failed to run VCPWallpaperAnalyzer::analyzeWithSceneprint:results:cancel:", buf, 2u);
        }
      }
    }

    else
    {
      v19 = MediaAnalysisWPResultsKey;
      v20 = [v13 objectForKeyedSubscript:MediaAnalysisWPResultsKey];
      v21 = [v20 count] == 1;

      if (v21)
      {
        v22 = [v13 objectForKeyedSubscript:v19];
        v23 = [v22 objectAtIndexedSubscript:0];

        if (v23)
        {
          v24 = [v23 objectForKeyedSubscript:MediaAnalysisResultWPAttributeKey];
          v25 = v24;
          if (v24)
          {
            [v24 floatValue];
            v27 = v26;
            v28 = [v5 results];
            LODWORD(v29) = v27;
            [v28 setWallpaperScore:v29];

            v12 = 0;
          }

          else
          {
            v12 = -18;
          }
        }

        else
        {
          v12 = -18;
        }
      }

      else
      {
        v12 = -18;
      }
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v17 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v17))
      {
        *buf = 134217984;
        v33 = 0x3FE0000000000000;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "No sceneprint data for WP analysis; using default value %f", buf, 0xCu);
      }
    }

    v13 = [v5 results];
    LODWORD(v18) = 0.5;
    [v13 setWallpaperScore:v18];
    v12 = 0;
  }

  return v12;
}

- (id)_processBoundingBoxFromDetectedObjects:(id)a3 forSceneClassID:(id)a4
{
  v5 = a3;
  v59 = a4;
  v60 = v5;
  if (![v5 count])
  {
    if (MediaAnalysisLogLevel() < 4)
    {
      goto LABEL_23;
    }

    v20 = VCPLogToOSLogType[4];
    if (!os_log_type_enabled(&_os_log_default, v20))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v21 = "[DO] detectedObjects count is 0; skip detectedObjects";
    v22 = v20;
    v23 = 2;
    goto LABEL_22;
  }

  if ([v5 count] == 1)
  {
    v6 = [v5 firstObject];
    v7 = [v6 objectForKeyedSubscript:VCPConfidenceKey];
    [v7 floatValue];
    v9 = v8;

    v10 = [v5 firstObject];
    v11 = [v10 objectForKeyedSubscript:@"size"];
    [v11 floatValue];
    v13 = v12;

    v80[0] = v59;
    v14 = VCPBoundingBoxKey;
    v79[0] = @"classID";
    v79[1] = VCPBoundingBoxKey;
    v15 = [v5 firstObject];
    v16 = [v15 objectForKeyedSubscript:v14];
    v80[1] = v16;
    v79[2] = @"score";
    *&v17 = v9 * v13;
    v18 = [NSNumber numberWithFloat:v17];
    v80[2] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v80 forKeys:v79 count:3];

    goto LABEL_47;
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v24 = v5;
  v25 = [v24 countByEnumeratingWithState:&v65 objects:v78 count:16];
  if (v25)
  {
    v26 = *v66;
    v27 = VCPConfidenceKey;
    v28 = -1.0;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v66 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v30 = [*(*(&v65 + 1) + 8 * i) objectForKeyedSubscript:v27];
        [v30 floatValue];
        v32 = v31;

        if (v32 > v28)
        {
          v28 = v32;
        }
      }

      v25 = [v24 countByEnumeratingWithState:&v65 objects:v78 count:16];
    }

    while (v25);
  }

  else
  {
    v28 = -1.0;
  }

  v33 = v28;
  if (v28 < 0.01)
  {
    if (MediaAnalysisLogLevel() < 4)
    {
      goto LABEL_23;
    }

    v34 = VCPLogToOSLogType[4];
    if (!os_log_type_enabled(&_os_log_default, v34))
    {
      goto LABEL_23;
    }

    *buf = 134217984;
    v72 = v28;
    v21 = "[DO] invalid confidenceMax: %f; skip detectedObjects";
    v22 = v34;
    v23 = 12;
LABEL_22:
    _os_log_impl(&_mh_execute_header, &_os_log_default, v22, v21, buf, v23);
LABEL_23:
    v19 = 0;
    goto LABEL_47;
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v35 = v24;
  v36 = [v35 countByEnumeratingWithState:&v61 objects:v77 count:16];
  v37 = v28 * 0.8;
  v38 = 0;
  if (v36)
  {
    v39 = *v62;
    v40 = VCPConfidenceKey;
    v41 = VCPBoundingBoxKey;
    v42 = -1.0;
    v43 = -1.0;
    do
    {
      for (j = 0; j != v36; j = j + 1)
      {
        if (*v62 != v39)
        {
          objc_enumerationMutation(v35);
        }

        v45 = *(*(&v61 + 1) + 8 * j);
        v46 = [v45 objectForKeyedSubscript:v40];
        [v46 floatValue];
        v48 = v47;

        v49 = [v45 objectForKeyedSubscript:@"size"];
        [v49 floatValue];
        v51 = v50;

        if (v48 >= v37 && v51 > v42)
        {
          v53 = [v45 objectForKeyedSubscript:v41];

          v42 = v51;
          v43 = v48;
          v38 = v53;
        }
      }

      v36 = [v35 countByEnumeratingWithState:&v61 objects:v77 count:16];
    }

    while (v36);
  }

  else
  {
    v42 = -1.0;
    v43 = -1.0;
  }

  if (v42 == -1.0 || v43 == -1.0 || !v38)
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v56 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v56))
      {
        v57 = [v35 description];
        *buf = 134218498;
        v72 = v33;
        v73 = 2048;
        v74 = v37;
        v75 = 2112;
        v76 = v57;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v56, "[DO] Failed to choose the best bounding box c_max: %f, c_threshold (0.8x): %f from %@", buf, 0x20u);
      }
    }

    v19 = 0;
  }

  else
  {
    v69[0] = @"classID";
    v69[1] = VCPBoundingBoxKey;
    v70[0] = v59;
    v70[1] = v38;
    v69[2] = @"score";
    *&v54 = v42 * v43;
    v55 = [NSNumber numberWithFloat:v54];
    v70[2] = v55;
    v19 = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:3];
  }

LABEL_47:

  return v19;
}

- (void)_insertBoundingBox:(id)a3 toSortedBoundingBoxes:(id)a4
{
  v14 = a3;
  v5 = a4;
  if (v14 && v5)
  {
    v6 = [v14 objectForKeyedSubscript:@"score"];
    [v6 floatValue];
    v8 = v7;

    for (i = 0; i < [v5 count]; ++i)
    {
      v10 = [v5 objectAtIndexedSubscript:i];
      v11 = [v10 objectForKeyedSubscript:@"score"];
      [v11 floatValue];
      v13 = v12;

      if (v13 < v8)
      {
        break;
      }
    }

    [v5 insertObject:v14 atIndex:i];
  }
}

- (id)_extractAndSortBoundingBoxFromDetectedObjects:(id)a3
{
  v4 = a3;
  +[NSMutableDictionary dictionary];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002DD8C;
  v5 = v12[3] = &unk_100283880;
  v13 = v5;
  [v4 enumerateObjectsUsingBlock:v12];
  +[NSMutableArray array];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002E154;
  v10[3] = &unk_1002838A8;
  v6 = v10[4] = self;
  v11 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v10];
  v7 = v11;
  v8 = v6;

  return v6;
}

- (void)_parseClassificationObservations:(id)a3 withPrefix:(id)a4 toClassificationResults:(id)a5
{
  v7 = a3;
  v8 = a4;
  v24 = a5;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v10)
  {
    v11 = *v26;
    v23 = VCPConfidenceKey;
    type = VCPLogToOSLogType[4];
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = [v13 identifier];
        [v13 confidence];
        if (v15 >= 0.01)
        {
          if (v8 && ([v14 hasPrefix:v8] & 1) == 0)
          {
            v16 = [NSString stringWithFormat:@"%@%@", v8, v14];

            v14 = v16;
          }

          v17 = VCPSpecialLabelToExtendedSceneClassificationID();
          if (v17)
          {
            v31 = v23;
            [v13 confidence];
            v18 = [NSNumber numberWithFloat:?];
            v32 = v18;
            v19 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
            v20 = [v17 stringValue];
            [v24 setObject:v19 forKeyedSubscript:v20];
          }

          else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, type))
          {
            v21 = [v13 identifier];
            *buf = 138412290;
            v30 = v21;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "Unsupported observation label %@", buf, 0xCu);
          }
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v10);
  }
}

- (void)_parsePhotosTaxonomyClassificationObservations:(id)a3 toClassificationResults:(id)a4 andDetectorSceneClassIds:(id)a5 isEntityNet:(BOOL)a6
{
  v39 = a6;
  v8 = a3;
  v38 = a4;
  v40 = a5;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v10)
  {
    v11 = *v44;
    v37 = VCPConfidenceKey;
    type = VCPLogToOSLogType[7];
    v36 = VCPLogToOSLogType[3];
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v44 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v43 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        [v13 confidence];
        if (v15 >= 0.01)
        {
          v16 = +[PFSceneTaxonomy vcp_sharedTaxonomy];
          v17 = [v13 identifier];
          v18 = [v16 nodeForName:v17];

          if (v18)
          {
            [v18 highPrecisionThreshold];
            v20 = v19;
            [v18 highRecallThreshold];
            v22 = v21;
            [v18 searchThreshold];
            v24 = v23;
            [v13 confidence];
            if (v22 >= v20)
            {
              v26 = v20;
            }

            else
            {
              v26 = v22;
            }

            if (v24 < v26)
            {
              v26 = v24;
            }

            v27 = v25;
            if (v26 < 0.01)
            {
              v26 = 0.01;
            }

            if (v26 <= v27)
            {
              v28 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v18 extendedSceneClassId]);
              v29 = [v28 stringValue];

              v49 = v37;
              [v13 confidence];
              v30 = [NSNumber numberWithFloat:?];
              v50 = v30;
              v31 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
              [v38 setObject:v31 forKeyedSubscript:v29];

              if (v40)
              {
                v32 = [v18 detectors];
                v41[0] = _NSConcreteStackBlock;
                v41[1] = 3221225472;
                v41[2] = sub_10002EA00;
                v41[3] = &unk_1002838D0;
                v42 = v40;
                [v32 enumerateObjectsUsingBlock:v41];
              }
            }
          }

          else if (v39)
          {
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
            {
              v33 = [v13 identifier];
              *buf = 138412290;
              v48 = v33;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "Unsupported EntityNet label in PFSceneTaxonomyNode: %@", buf, 0xCu);
            }
          }

          else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v36))
          {
            v34 = [v13 identifier];
            *buf = 138412290;
            v48 = v34;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v36, "Unsupported SceneNet label in PFSceneTaxonomyNode: %@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v14);
      }

      v10 = [v9 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v10);
  }
}

- (id)_generateSceneClassificationsFromRequests:(id)a3 safetyNResults:(id)a4 safetyGVResults:(id)a5
{
  v8 = a3;
  v45 = a4;
  v9 = a5;
  v10 = +[NSMutableDictionary dictionary];
  v11 = +[VCPPreAnalysisRequests includeDO];
  v12 = +[NSMutableSet set];
  v13 = [v8 classificationRequest];
  v14 = [v13 results];
  if (v11)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  [(VCPMADSceneAssetBatch *)self _parsePhotosTaxonomyClassificationObservations:v14 toClassificationResults:v10 andDetectorSceneClassIds:v15 isEntityNet:0, v45];

  if (v11)
  {
    v16 = [v8 objectRequest];
    v17 = [v16 results];

    v18 = [(VCPMADSceneAssetBatch *)self _extractAndSortBoundingBoxFromDetectedObjects:v17];
    v57[0] = 0;
    v57[1] = v57;
    v57[2] = 0x2020000000;
    v57[3] = 0;
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_10002F1D8;
    v53[3] = &unk_1002838F8;
    v54 = v12;
    v55 = v10;
    v56 = v57;
    [v18 enumerateObjectsUsingBlock:v53];

    _Block_object_dispose(v57, 8);
  }

  v19 = [v8 classifyImageRequest];
  v20 = [v19 results];
  [(VCPMADSceneAssetBatch *)self _parsePhotosTaxonomyClassificationObservations:v20 toClassificationResults:v10 andDetectorSceneClassIds:0 isEntityNet:1];

  v21 = [v8 junkImageRequest];
  v22 = [v21 results];
  [(VCPMADSceneAssetBatch *)self _parseClassificationObservations:v22 withPrefix:0 toClassificationResults:v10];

  v23 = [v8 landmarkRequest];
  v24 = [v23 results];
  [(VCPMADSceneAssetBatch *)self _parseClassificationObservations:v24 withPrefix:0 toClassificationResults:v10];

  v25 = [v8 nsfwRequest];
  v26 = [v25 results];
  [(VCPMADSceneAssetBatch *)self _parseClassificationObservations:v26 withPrefix:0 toClassificationResults:v10];

  v27 = [v8 tabooRequest];
  v28 = [v27 results];
  [(VCPMADSceneAssetBatch *)self _parseClassificationObservations:v28 withPrefix:0 toClassificationResults:v10];

  v29 = [v8 semanticRequest];
  v30 = [v29 results];
  [(VCPMADSceneAssetBatch *)self _parseClassificationObservations:v30 withPrefix:0 toClassificationResults:v10];

  v31 = [v8 memeRequest];
  v32 = [v31 results];
  [(VCPMADSceneAssetBatch *)self _parseClassificationObservations:v32 withPrefix:@"meme_" toClassificationResults:v10];

  v33 = [v8 cityNatureRequest];
  v34 = [v33 results];
  [(VCPMADSceneAssetBatch *)self _parseClassificationObservations:v34 withPrefix:0 toClassificationResults:v10];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v35 = [v8 documentRequest];
  v36 = [v35 results];

  v37 = [v36 countByEnumeratingWithState:&v49 objects:v58 count:16];
  if (v37)
  {
    v38 = *v50;
    do
    {
      for (i = 0; i != v37; i = i + 1)
      {
        if (*v50 != v38)
        {
          objc_enumerationMutation(v36);
        }

        v40 = [*(*(&v49 + 1) + 8 * i) labels];
        [(VCPMADSceneAssetBatch *)self _parseClassificationObservations:v40 withPrefix:0 toClassificationResults:v10];
      }

      v37 = [v36 countByEnumeratingWithState:&v49 objects:v58 count:16];
    }

    while (v37);
  }

  if (v46)
  {
    v41 = [v46 mad_sceneClassifications:@"SafetyTypeN"];
    [v10 addEntriesFromDictionary:v41];
  }

  if (v9)
  {
    v42 = [v9 mad_sceneClassifications:@"SafetyTypeGV"];
    [v10 addEntriesFromDictionary:v42];
  }

  +[NSMutableSet set];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10002F3DC;
  v43 = v47[3] = &unk_100283920;
  v48 = v43;
  [v10 enumerateKeysAndObjectsUsingBlock:v47];

  return v43;
}

- (int)_collectResultsForAssetEntry:(id)a3 fromRequests:(id)a4 safetyNResults:(id)a5 safetyGVResults:(id)a6 safetyQRResults:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v290 = a5;
  v289 = a6;
  v14 = [v12 asset];
  v15 = [v14 vcp_abnormalImageDimensionForSceneNet];

  if ((v15 & 1) == 0)
  {
    v16 = [(VCPMADSceneAssetBatch *)self _generateSceneClassificationsFromRequests:v13 safetyNResults:v290 safetyGVResults:v289];
    v17 = [v12 results];
    [v17 setSceneClassifications:v16];

    if (!v290 && !v289 && !a7 || ([v12 asset], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "mad_isShared"), v18, !v19))
    {
LABEL_37:
      v56 = [v12 results];
      v57 = [v56 sceneClassifications];
      v34 = [v57 allObjects];

      v58 = [v12 asset];
      v59 = [v58 location];
      [v59 coordinate];
      v61 = v60;

      v62 = [v12 asset];
      v63 = [v62 location];
      [v63 coordinate];
      v65 = v64;

      v35 = +[PFSceneGeography vcp_sharedSceneGeography];
      v66 = +[PFSceneTaxonomy vcp_sharedTaxonomy];
      [PNAssetCurationUtilities assetIconicScoreForSceneClassifications:v34 assetLatitude:v35 assetLongitude:v66 sceneGeography:v61 sceneTaxonomy:v65];
      v68 = v67;
      if (MediaAnalysisLogLevel() >= 7)
      {
        v69 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v69))
        {
          v70 = [v12 asset];
          v71 = [v70 localIdentifier];
          *buf = 138412546;
          v303 = v71;
          v304 = 2048;
          v305 = v68;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v69, "[%@] Accepting iconicScore: %.3f", buf, 0x16u);
        }
      }

      v72 = [v12 results];
      *&v73 = v68;
      [v72 setIconicScore:v73];

      goto LABEL_41;
    }

    if (v290)
    {
      v20 = [v290 mad_sensitivityAnalysis:1];
      v21 = [SCMLImageAnalysisResult mad_mergeSensitiveAnalysisResults:0 withSensitiveAnalysisResults:v20];
    }

    else
    {
      v21 = 0;
    }

    if (v289)
    {
      v36 = [v289 mad_sensitivityAnalysis:2];
    }

    else
    {
      if (!_os_feature_enabled_impl() || (+[MADUserSafetyQRCodeDetector enabled]& 1) == 0)
      {
        goto LABEL_24;
      }

      v312[0] = SCMLImageGoreSensitivity;
      v312[1] = SCMLImageGoreSensitivityScore;
      v313[0] = &__kCFBooleanFalse;
      v313[1] = &off_1002966F8;
      v312[2] = SCMLImageViolenceSensitivity;
      v312[3] = SCMLImageViolenceSensitivityScore;
      v313[2] = &__kCFBooleanFalse;
      v313[3] = &off_1002966F8;
      v312[4] = SCMLImageSensitivity;
      v312[5] = SCMLImageSensitivityScore;
      v313[4] = &__kCFBooleanFalse;
      v313[5] = &off_1002966F8;
      v36 = [NSDictionary dictionaryWithObjects:v313 forKeys:v312 count:6];
    }

    v37 = v36;
    v38 = [SCMLImageAnalysisResult mad_mergeSensitiveAnalysisResults:v21 withSensitiveAnalysisResults:v36];

    v21 = v38;
LABEL_24:
    if (a7)
    {
      v310[0] = SCMLImageExplicitSensitivity;
      v310[1] = SCMLImageExplicitSensitivity;
      v311[0] = &__kCFBooleanTrue;
      v311[1] = &off_100296708;
      v310[2] = SCMLImageSensitivity;
      v310[3] = SCMLImageSensitivityScore;
      v311[2] = &__kCFBooleanTrue;
      v311[3] = &off_100296708;
      v39 = [NSDictionary dictionaryWithObjects:v311 forKeys:v310 count:4];
      v40 = [SCMLImageAnalysisResult mad_mergeSensitiveAnalysisResults:v21 withSensitiveAnalysisResults:v39];

      v21 = v40;
    }

    if ((a7 & 2) != 0)
    {
      v308[0] = SCMLImageGoreSensitivity;
      v308[1] = SCMLImageGoreSensitivityScore;
      v309[0] = &__kCFBooleanTrue;
      v309[1] = &off_100296708;
      v308[2] = SCMLImageViolenceSensitivity;
      v308[3] = SCMLImageViolenceSensitivityScore;
      v309[2] = &__kCFBooleanTrue;
      v309[3] = &off_100296708;
      v308[4] = SCMLImageSensitivity;
      v308[5] = SCMLImageSensitivityScore;
      v309[4] = &__kCFBooleanTrue;
      v309[5] = &off_100296708;
      v41 = [NSDictionary dictionaryWithObjects:v309 forKeys:v308 count:6];
      v42 = [SCMLImageAnalysisResult mad_mergeSensitiveAnalysisResults:v21 withSensitiveAnalysisResults:v41];

      v21 = v42;
    }

    v299 = 0;
    v43 = [objc_alloc(sub_100031648()) initWithPixelBufferClassificationDictionary:v21 error:&v299];
    v44 = v299;
    if (v43)
    {
      v45 = [v43 compactAnalysis];
      v46 = [v12 results];
      [v46 setCompactSCSensitivityAnalysisIVS:v45];

      v47 = [v12 results];
      LODWORD(v45) = [v47 compactSCSensitivityAnalysisIVS] == 0;

      if (v45)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v48 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v48))
          {
            v49 = objc_opt_class();
            v50 = [v12 asset];
            v51 = [v50 localIdentifier];
            *buf = 138412546;
            v303 = v49;
            v304 = 2112;
            v305 = *&v51;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v48, "[%@][%@] compactSCSensitivityAnalysisIVS is 0", buf, 0x16u);
          }
        }
      }
    }

    else if (MediaAnalysisLogLevel() >= 3)
    {
      v52 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v52))
      {
        v53 = objc_opt_class();
        v54 = [v12 asset];
        v55 = [v54 localIdentifier];
        *buf = 138412802;
        v303 = v53;
        v304 = 2112;
        v305 = *&v55;
        v306 = 2112;
        v307 = v44;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v52, "[%@][%@] Failed to instantiate SCSensitivityAnalysis (%@)", buf, 0x20u);
      }
    }

    goto LABEL_37;
  }

  v22 = [v12 asset];
  v23 = [v22 mad_isShared];

  if (v23)
  {
    v24 = [sub_100031648() presumedSensitiveAnalysis];
    v25 = [v24 compactAnalysis];
    v26 = [v12 results];
    [v26 setCompactSCSensitivityAnalysisIVS:v25];

    if (MediaAnalysisLogLevel() >= 7)
    {
      v27 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v27))
      {
        v28 = objc_opt_class();
        v29 = [v12 asset];
        v30 = [v29 localIdentifier];
        *buf = 138412802;
        v303 = v28;
        v304 = 2112;
        v305 = *&v30;
        v306 = 2048;
        v307 = [v24 compactAnalysis];
        _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "[%@][%@] Setting compactSCSensitivityAnalysisIVS to %llu for tiny shared asset", buf, 0x20u);
      }
    }
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v31 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v31))
    {
      v32 = [v12 asset];
      v33 = [v32 localIdentifier];
      *buf = 138412290;
      v303 = v33;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v31, "[%@] Ignoring SceneNet result for tiny asset", buf, 0xCu);
    }
  }

  v34 = +[NSSet set];
  v35 = [v12 results];
  [v35 setSceneClassifications:v34];
LABEL_41:

  v74 = [v13 aestheticsRequest];
  v75 = [v74 results];
  v76 = [v75 count] == 1;

  if (!v76)
  {
    v178 = -18;
    goto LABEL_56;
  }

  v77 = [v13 aestheticsRequest];
  v78 = [v77 results];
  v79 = [v78 firstObject];

  [v79 aestheticScore];
  v81 = v80;
  v82 = [v12 results];
  LODWORD(v83) = v81;
  [v82 setOverallAestheticScore:v83];

  [v79 wellFramedSubjectScore];
  v85 = v84;
  v86 = [v12 results];
  LODWORD(v87) = v85;
  [v86 setWellFramedSubjectScore:v87];

  [v79 wellChosenBackgroundScore];
  v89 = v88;
  v90 = [v12 results];
  LODWORD(v91) = v89;
  [v90 setWellChosenSubjectScore:v91];

  [v79 tastefullyBlurredScore];
  v93 = v92;
  v94 = [v12 results];
  LODWORD(v95) = v93;
  [v94 setTastefullyBlurredScore:v95];

  [v79 sharplyFocusedSubjectScore];
  v97 = v96;
  v98 = [v12 results];
  LODWORD(v99) = v97;
  [v98 setSharplyFocusedSubjectScore:v99];

  [v79 wellTimedShotScore];
  v101 = v100;
  v102 = [v12 results];
  LODWORD(v103) = v101;
  [v102 setWellTimedShotScore:v103];

  [v79 pleasantLightingScore];
  v105 = v104;
  v106 = [v12 results];
  LODWORD(v107) = v105;
  [v106 setPleasantLightingScore:v107];

  [v79 pleasantReflectionsScore];
  v109 = v108;
  v110 = [v12 results];
  LODWORD(v111) = v109;
  [v110 setPleasantReflectionsScore:v111];

  [v79 harmoniousColorScore];
  v113 = v112;
  v114 = [v12 results];
  LODWORD(v115) = v113;
  [v114 setHarmoniousColorScore:v115];

  [v79 livelyColorScore];
  v117 = v116;
  v118 = [v12 results];
  LODWORD(v119) = v117;
  [v118 setLivelyColorScore:v119];

  [v79 pleasantSymmetryScore];
  v121 = v120;
  v122 = [v12 results];
  LODWORD(v123) = v121;
  [v122 setPleasantSymmetryScore:v123];

  [v79 pleasantPatternScore];
  v125 = v124;
  v126 = [v12 results];
  LODWORD(v127) = v125;
  [v126 setPleasantPatternScore:v127];

  [v79 immersivenessScore];
  v129 = v128;
  v130 = [v12 results];
  LODWORD(v131) = v129;
  [v130 setImmersivenessScore:v131];

  [v79 pleasantPerspectiveScore];
  v133 = v132;
  v134 = [v12 results];
  LODWORD(v135) = v133;
  [v134 setPleasantPerspectiveScore:v135];

  [v79 pleasantPostProcessingScore];
  v137 = v136;
  v138 = [v12 results];
  LODWORD(v139) = v137;
  [v138 setPleasantPostProcessingScore:v139];

  [v79 noiseScore];
  v141 = v140;
  v142 = [v12 results];
  LODWORD(v143) = v141;
  [v142 setNoiseScore:v143];

  [v79 failureScore];
  v145 = v144;
  v146 = [v12 results];
  LODWORD(v147) = v145;
  [v146 setFailureScore:v147];

  [v79 pleasantCompositionScore];
  v149 = v148;
  v150 = [v12 results];
  LODWORD(v151) = v149;
  [v150 setPleasantCompositionScore:v151];

  [v79 interestingSubjectScore];
  v153 = v152;
  v154 = [v12 results];
  LODWORD(v155) = v153;
  [v154 setInterestingSubjectScore:v155];

  [v79 intrusiveObjectPresenceScore];
  v157 = v156;
  v158 = [v12 results];
  LODWORD(v159) = v157;
  [v158 setIntrusiveObjectPresenceScore:v159];

  [v79 pleasantCameraTiltScore];
  v161 = v160;
  v162 = [v12 results];
  LODWORD(v163) = v161;
  [v162 setPleasantCameraTiltScore:v163];

  [v79 lowKeyLightingScore];
  v165 = v164;
  v166 = [v12 results];
  LODWORD(v167) = v165;
  [v166 setLowLight:v167];

  v168 = [v13 saliencyRequest];
  v169 = [v168 results];
  v170 = [v169 count] == 1;

  if (!v170)
  {
    goto LABEL_53;
  }

  v171 = [v13 saliencyRequest];
  v172 = [v171 results];
  v173 = [v172 firstObject];
  [v173 boundingBox];
  x = v314.origin.x;
  y = v314.origin.y;
  width = v314.size.width;
  height = v314.size.height;
  if (CGRectGetMinX(v314) < 0.0 || (v315.origin.x = x, v315.origin.y = y, v315.size.width = width, v315.size.height = height, CGRectGetMinX(v315) > 1.0) || (v316.origin.x = x, v316.origin.y = y, v316.size.width = width, v316.size.height = height, CGRectGetMinY(v316) < 0.0) || (v317.origin.x = x, v317.origin.y = y, v317.size.width = width, v317.size.height = height, CGRectGetMinY(v317) > 1.0) || (v318.origin.x = x, v318.origin.y = y, v318.size.width = width, v318.size.height = height, CGRectGetMaxX(v318) < 0.0) || (v319.origin.x = x, v319.origin.y = y, v319.size.width = width, v319.size.height = height, CGRectGetMaxX(v319) > 1.0) || (v320.origin.x = x, v320.origin.y = y, v320.size.width = width, v320.size.height = height, CGRectGetMaxY(v320) < 0.0))
  {

    goto LABEL_51;
  }

  v322.origin.x = x;
  v322.origin.y = y;
  v322.size.width = width;
  v322.size.height = height;
  v186 = CGRectGetMaxY(v322) > 1.0;

  if (v186)
  {
LABEL_51:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      v180 = [v12 asset];
      v181 = [v180 localIdentifier];
      v182 = [v13 saliencyRequest];
      v183 = [v182 results];
      v184 = [v183 firstObject];
      [v184 boundingBox];
      v185 = NSStringFromRect(v321);
      *buf = 138412546;
      v303 = v181;
      v304 = 2112;
      v305 = *&v185;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "[%@] Unnormalized saliencyRequest bounding box %@; skip", buf, 0x16u);
    }

    goto LABEL_53;
  }

  v187 = [v13 saliencyRequest];
  v188 = [v187 results];
  v189 = [v188 firstObject];
  [v189 boundingBox];
  v191 = v190;
  v193 = v192;
  v195 = v194;
  v197 = v196;
  v198 = [v12 results];
  [v198 setPreferredCropRect:{v191, v193, v195, v197}];

  v199 = [v13 saliencyRequest];
  v200 = [v199 results];
  v201 = [v200 firstObject];
  [v201 narrowedBoundingBox];
  v202 = v323.origin.x;
  v203 = v323.origin.y;
  v204 = v323.size.width;
  v205 = v323.size.height;
  if (CGRectGetMinX(v323) < 0.0 || (v324.origin.x = v202, v324.origin.y = v203, v324.size.width = v204, v324.size.height = v205, CGRectGetMinX(v324) > 1.0) || (v325.origin.x = v202, v325.origin.y = v203, v325.size.width = v204, v325.size.height = v205, CGRectGetMinY(v325) < 0.0) || (v326.origin.x = v202, v326.origin.y = v203, v326.size.width = v204, v326.size.height = v205, CGRectGetMinY(v326) > 1.0) || (v327.origin.x = v202, v327.origin.y = v203, v327.size.width = v204, v327.size.height = v205, CGRectGetMaxX(v327) < 0.0) || (v328.origin.x = v202, v328.origin.y = v203, v328.size.width = v204, v328.size.height = v205, CGRectGetMaxX(v328) > 1.0) || (v329.origin.x = v202, v329.origin.y = v203, v329.size.width = v204, v329.size.height = v205, CGRectGetMaxY(v329) < 0.0))
  {

    goto LABEL_66;
  }

  v331.origin.x = v202;
  v331.origin.y = v203;
  v331.size.width = v204;
  v331.size.height = v205;
  v212 = CGRectGetMaxY(v331) > 1.0;

  if (v212)
  {
LABEL_66:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      v206 = [v12 asset];
      v207 = [v206 localIdentifier];
      v208 = [v13 saliencyRequest];
      v209 = [v208 results];
      v210 = [v209 firstObject];
      [v210 narrowedBoundingBox];
      v211 = NSStringFromRect(v330);
      *buf = 138412546;
      v303 = v207;
      v304 = 2112;
      v305 = *&v211;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "[%@] Unnormalized saliencyRequest narrowed bounding box %@; skip", buf, 0x16u);
    }

    goto LABEL_53;
  }

  v213 = [v13 saliencyRequest];
  v214 = [v213 results];
  v215 = [v214 firstObject];
  [v215 narrowedBoundingBox];
  v217 = v216;
  v219 = v218;
  v221 = v220;
  v223 = v222;
  v224 = [v12 results];
  [v224 setAcceptableCropRect:{v217, v219, v221, v223}];

  if (+[VCPPreAnalysisRequests includeSO])
  {
    v225 = [v13 saliencyObjectnessRequest];
    v226 = [v225 results];
    v227 = [v226 count] == 1;

    if (!v227)
    {
      goto LABEL_53;
    }

    v228 = [v13 saliencyObjectnessRequest];
    v229 = [v228 results];
    v230 = [v229 firstObject];
    v283 = [v230 salientObjects];

    v231 = +[NSMutableArray array];
    v297 = 0u;
    v298 = 0u;
    v295 = 0u;
    v296 = 0u;
    v232 = v283;
    v233 = [v232 countByEnumeratingWithState:&v295 objects:v301 count:16];
    if (v233)
    {
      v286 = *v296;
LABEL_73:
      v234 = 0;
      while (1)
      {
        if (*v296 != v286)
        {
          objc_enumerationMutation(v232);
        }

        v235 = *(*(&v295 + 1) + 8 * v234);
        if ([v231 count] > 2)
        {
          break;
        }

        [v235 boundingBox];
        v236 = v332.origin.x;
        v237 = v332.origin.y;
        v238 = v332.size.width;
        v239 = v332.size.height;
        if (CGRectGetMinX(v332) < 0.0 || (v333.origin.x = v236, v333.origin.y = v237, v333.size.width = v238, v333.size.height = v239, CGRectGetMinX(v333) > 1.0) || (v334.origin.x = v236, v334.origin.y = v237, v334.size.width = v238, v334.size.height = v239, CGRectGetMinY(v334) < 0.0) || (v335.origin.x = v236, v335.origin.y = v237, v335.size.width = v238, v335.size.height = v239, CGRectGetMinY(v335) > 1.0) || (v336.origin.x = v236, v336.origin.y = v237, v336.size.width = v238, v336.size.height = v239, CGRectGetMaxX(v336) < 0.0) || (v337.origin.x = v236, v337.origin.y = v237, v337.size.width = v238, v337.size.height = v239, CGRectGetMaxX(v337) > 1.0) || (v338.origin.x = v236, v338.origin.y = v237, v338.size.width = v238, v338.size.height = v239, CGRectGetMaxY(v338) < 0.0) || (v339.origin.x = v236, v339.origin.y = v237, v339.size.width = v238, v339.size.height = v239, CGRectGetMaxY(v339) > 1.0))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
          {
            v279 = [v12 asset];
            v280 = [v279 localIdentifier];
            [v235 boundingBox];
            v281 = NSStringFromRect(v340);
            *buf = 138412546;
            v303 = v280;
            v304 = 2112;
            v305 = *&v281;
            _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "[%@] Unnormalized salientObject bounding box %@; skip", buf, 0x16u);
          }

          goto LABEL_53;
        }

        [v235 boundingBox];
        v240 = [NSValue valueWithRect:?];
        [v231 addObject:v240];

        if (v233 == ++v234)
        {
          v233 = [v232 countByEnumeratingWithState:&v295 objects:v301 count:16];
          if (v233)
          {
            goto LABEL_73;
          }

          break;
        }
      }
    }

    v241 = [v12 results];
    [v241 setObjectSaliencyRects:v231];
  }

  v242 = [v13 sceneprintRequest];
  v243 = [v242 results];
  v244 = [v243 count] == 1;

  if (v244)
  {
    v245 = [v13 sceneprintRequest];
    v246 = [v245 results];
    v247 = [v246 firstObject];
    v248 = [v247 sceneprints];
    v249 = [v248 firstObject];

    if ([v249 elementType] == 1 && objc_msgSend(v249, "elementCount") == 768)
    {
      v250 = [v249 descriptorData];
      v251 = [v250 length] == 3072;

      if (v251)
      {
        v252 = [NSKeyedArchiver archivedDataWithRootObject:v249 requiringSecureCoding:1 error:0];
        v253 = [v12 results];
        [v253 setSceneprintData:v252];

        if (!+[VCPPreAnalysisRequests includePA])
        {
LABEL_102:
          v266 = [v13 imagefingerprintsRequest];
          v268 = (v15 & 1) == 0 && v266 != 0;

          if (v268)
          {
            v269 = [v13 imagefingerprintsRequest];
            v270 = [v269 results];

            if ([v270 count])
            {
              v271 = [v270 firstObject];
              v272 = [v271 fingerprintHashes];

              if (v272 && [v272 count] == 2)
              {
                v273 = [v272 objectAtIndexedSubscript:0];
                v274 = [v273 hashData];

                if ([v274 length] == 24)
                {
                  v275 = [v272 objectAtIndexedSubscript:1];
                  v276 = [v275 hashData];

                  if ([v276 length] == 24)
                  {
                    v285 = [NSMutableData dataWithBytes:&unk_10024CB74 length:1];
                    [v285 appendData:v276];
                    v288 = v285;

                    v277 = [v12 results];
                    [v277 setDuplicateMatchingFeature:v274];

                    v278 = [v12 results];
                    [v278 setDuplicateMatchingAlternateFeature:v288];

                    v178 = 0;
                    v276 = v288;
                  }

                  else
                  {
                    v178 = -18;
                  }
                }

                else
                {
                  v178 = -18;
                }
              }

              else
              {
                v178 = -18;
              }
            }

            else
            {
              v178 = -18;
            }
          }

          else
          {
            v178 = 0;
          }

          goto LABEL_116;
        }

        v254 = [v13 adjustmentsRequest];
        v255 = [v254 results];
        v256 = [v255 count] == 0;

        if (!v256)
        {
          v257 = [v13 adjustmentsRequest];
          v258 = [v257 results];
          v287 = [v258 objectAtIndexedSubscript:0];

          v284 = +[NSMutableDictionary dictionary];
          v293 = 0u;
          v294 = 0u;
          v291 = 0u;
          v292 = 0u;
          obj = [v287 adjustmentKeys];
          v259 = [obj countByEnumeratingWithState:&v291 objects:v300 count:16];
          if (v259)
          {
            v260 = *v292;
            do
            {
              for (i = 0; i != v259; i = i + 1)
              {
                if (*v292 != v260)
                {
                  objc_enumerationMutation(obj);
                }

                v262 = *(*(&v291 + 1) + 8 * i);
                v263 = [v287 adjustmentValuesForKey:v262];
                [v284 setObject:v263 forKeyedSubscript:v262];
              }

              v259 = [obj countByEnumeratingWithState:&v291 objects:v300 count:16];
            }

            while (v259);
          }

          v264 = PHAssetMediaAnalysisDataWithColorNormalizationDictionaryAndRevision();
          v265 = [v12 results];
          [v265 setColorNormalizationData:v264];

          goto LABEL_102;
        }
      }
    }

    v178 = -18;
LABEL_116:

    goto LABEL_54;
  }

LABEL_53:
  v178 = -18;
LABEL_54:

LABEL_56:
  return v178;
}

- (int)_performIVSAnalysisForAssetEntry:(id)a3 pixelBuffer:(__CVBuffer *)a4 results:(id *)a5 safetyQRResults:(unint64_t *)a6
{
  v10 = a3;
  v11 = [v10 asset];
  v12 = [v11 vcp_abnormalImageDimensionForSceneNet];

  if (v12)
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v21 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v21))
      {
        v22 = objc_opt_class();
        v23 = [v10 asset];
        v24 = [v23 localIdentifier];
        *buf = 138412546;
        v52 = v22;
        v53 = 2112;
        v54 = v24;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "[%@][%@] Tiny image, skipping performing IVS Analysis .", buf, 0x16u);
      }
    }

    v25 = 0;
  }

  else
  {
    v13 = [v10 asset];
    if ([v13 mad_isShared])
    {
      v14 = +[MADUserSafetyQRCodeDetector enabled];

      if (v14)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = objc_alloc_init(MADUserSafetyQRCodeDetector);
        [v16 processPixelBuffer:a4 orientation:1 signpostPayload:&stru_1002890F8];
        v17 = [v16 sensitivity];
        if (v17)
        {
          v18 = _os_feature_enabled_impl();
          v19 = [v17 unsignedIntegerValue];
          v20 = 3;
          if (!v18)
          {
            v20 = 1;
          }

          *a6 = v19 & v20;
        }

        else if (MediaAnalysisLogLevel() >= 4)
        {
          v26 = VCPLogToOSLogType[4];
          if (os_log_type_enabled(&_os_log_default, v26))
          {
            v49 = objc_opt_class();
            v27 = [v10 asset];
            v28 = [v27 localIdentifier];
            *buf = 138412546;
            v52 = v49;
            v53 = 2112;
            v54 = v28;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v26, "[%@][%@] processing failed.", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v15);
      }
    }

    else
    {
    }

    v29 = [(MADSceneResources *)self->_resources safetyTypeNPool];
    v30 = [v29 getObject];

    v31 = [v30 object];
    LODWORD(v29) = v31 == 0;

    if (v29)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v44 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v44))
        {
          v45 = objc_opt_class();
          *buf = 138412290;
          v52 = v45;
          v46 = v45;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v44, "%@ unavailable for IVS", buf, 0xCu);
        }
      }

      v38 = 0;
      v25 = -18;
    }

    else
    {
      v32 = VCPSignPostLog();
      v33 = os_signpost_id_generate(v32);

      v34 = VCPSignPostLog();
      v35 = v34;
      if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, OS_SIGNPOST_INTERVAL_BEGIN, v33, "SCMLHandler_analyzePixelBufferN", "", buf, 2u);
      }

      v36 = [v30 object];
      v50 = 0;
      v37 = [v36 analyzePixelBuffer:a4 error:&v50];
      v38 = v50;

      v39 = VCPSignPostLog();
      v40 = v39;
      if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v40, OS_SIGNPOST_INTERVAL_END, v33, "SCMLHandler_analyzePixelBufferN", "", buf, 2u);
      }

      if (v38)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v41 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v41))
          {
            v42 = objc_opt_class();
            *buf = 138412546;
            v52 = v42;
            v53 = 2112;
            v54 = v38;
            v43 = v42;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v41, "Failed to run %@::analyzePixelBuffer:error: %@", buf, 0x16u);
          }
        }

        v25 = -18;
      }

      else if (a5)
      {
        v47 = v37;
        v25 = 0;
        *a5 = v37;
      }

      else
      {
        v25 = 0;
      }
    }
  }

  return v25;
}

- (int)_performSceneNetAnalysisForAssetEntry:(id)a3 withImage:(id)a4 andRequests:(id)a5
{
  v7 = a3;
  v100 = a4;
  v91 = v7;
  v92 = a5;
  v120 = 0;
  v8 = [v7 asset];
  v9 = [v8 vcp_abnormalImageDimensionForSceneNet];

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [VNImageRequestHandler alloc];
    v12 = [v100 sourcePixelBuffer];
    v13 = [(MADSceneResources *)self->_resources session];
    v14 = [v11 initWithCVPixelBuffer:v12 options:&__NSDictionary0__struct session:v13];

    v15 = VCPSignPostLog();
    v16 = os_signpost_id_generate(v15);

    v17 = VCPSignPostLog();
    v18 = v17;
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "VNImageRequestHandler_PerformRequests", "", buf, 2u);
    }

    v19 = [v92 gatherAvailableRequests];
    v119 = 0;
    v20 = [v14 performRequests:v19 error:&v119];
    v21 = v119;

    v22 = VCPSignPostLog();
    v23 = v22;
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_END, v16, "VNImageRequestHandler_PerformRequests", "", buf, 2u);
    }

    if (v20)
    {
      if (+[VCPPreAnalysisRequests includeIVS])
      {
        v24 = objc_autoreleasePoolPush();
        v118 = 0;
        v98 = -[VCPMADSceneAssetBatch _performIVSAnalysisForAssetEntry:pixelBuffer:results:safetyQRResults:](self, "_performIVSAnalysisForAssetEntry:pixelBuffer:results:safetyQRResults:", v91, [v100 sourcePixelBuffer], &v118, &v120);
        v25 = v118;
        objc_autoreleasePoolPop(v24);
        if (v98)
        {
          v26 = 0;
          goto LABEL_53;
        }
      }

      else
      {
        v25 = 0;
      }

      v98 = 0;
      v26 = 1;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v52 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v52))
        {
          *buf = 138412290;
          *v122 = v21;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v52, "Failed to run VNImageRequestHandler::performRequests: %@", buf, 0xCu);
        }
      }

      v26 = 0;
      v25 = 0;
      v98 = -18;
    }

LABEL_53:

    objc_autoreleasePoolPop(v10);
    if ((v26 & 1) == 0)
    {
      goto LABEL_95;
    }

LABEL_68:
    if (+[VCPPreAnalysisRequests includeWP])
    {
      v58 = objc_autoreleasePoolPush();
      v59 = [v92 sceneprintRequest];
      v60 = [v59 results];

      v61 = [v60 firstObject];
      v62 = [v61 sceneprints];
      v63 = [v62 firstObject];

      v64 = [(VCPMADSceneAssetBatch *)self _performWallpaperAnalysisForAssetEntry:v91 withSceneprint:v63];
      objc_autoreleasePoolPop(v58);
      if (v64)
      {
        v98 = v64;
        goto LABEL_95;
      }
    }

    if (_os_feature_enabled_impl())
    {
      v65 = [v92 sceneprintRequest];
      v66 = [v65 results];

      v67 = [v66 firstObject];
      v68 = [v67 sceneprints];
      v69 = [v68 firstObject];

      if (v69)
      {
        v70 = [(MADSceneResources *)self->_resources safetyTypeGVPool];
        v71 = [v70 getObject];

        v72 = [v71 object];
        v73 = v72 == 0;

        if (!v73)
        {
          v74 = VCPSignPostLog();
          v75 = os_signpost_id_generate(v74);

          v76 = VCPSignPostLog();
          v77 = v76;
          if (v75 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v76))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v77, OS_SIGNPOST_INTERVAL_BEGIN, v75, "SCMLHandler_analyzePixelBufferGV", "", buf, 2u);
          }

          v78 = [v71 object];
          v79 = [v69 descriptorData];
          v101 = 0;
          v80 = [v78 analyzePixelBuffer:0 scenePrint:v79 error:&v101];
          v81 = v101;

          v82 = VCPSignPostLog();
          v83 = v82;
          if (v75 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v82))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v83, OS_SIGNPOST_INTERVAL_END, v75, "SCMLHandler_analyzePixelBufferGV", "", buf, 2u);
          }

          if (v81)
          {
            if (MediaAnalysisLogLevel() >= 3)
            {
              v84 = VCPLogToOSLogType[3];
              if (os_log_type_enabled(&_os_log_default, v84))
              {
                v85 = [v81 description];
                *buf = 138412290;
                *v122 = v85;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v84, "Safety (type GV) failed (%@)", buf, 0xCu);
              }
            }

            v98 = -18;
          }

          if (v81)
          {
            goto LABEL_94;
          }

          goto LABEL_88;
        }

        if (MediaAnalysisLogLevel() >= 3)
        {
          v86 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v86))
          {
            v87 = objc_opt_class();
            *buf = 138412290;
            *v122 = v87;
            v88 = v87;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v86, "%@ unavailable for safety (type GV)", buf, 0xCu);
          }
        }
      }

      v80 = 0;
      v98 = -18;
      goto LABEL_94;
    }

    v80 = 0;
LABEL_88:
    v98 = [(VCPMADSceneAssetBatch *)self _collectResultsForAssetEntry:v91 fromRequests:v92 safetyNResults:v25 safetyGVResults:v80 safetyQRResults:v120];
LABEL_94:

    goto LABEL_95;
  }

  cf = 0;
  [v92 mapAvailableRequestsToResolution];
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v95 = v114 = 0u;
  v27 = [v95 allKeys];
  obj = v27;
  v28 = [v27 countByEnumeratingWithState:&v113 objects:v123 count:16];
  v30 = 0;
  if (v28)
  {
    v97 = *v114;
    v31 = VCPLogToOSLogType[3];
    *&v29 = 138412290;
    v90 = v29;
    while (2)
    {
      v32 = 0;
      v96 = v28;
      do
      {
        if (*v114 != v97)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v113 + 1) + 8 * v32);
        context = objc_autoreleasePoolPush();
        if ([VCPPreAnalysisRequests isDimensionUnknown:v33])
        {
          Width = CVPixelBufferGetWidth([v100 sourcePixelBuffer]);
          Height = CVPixelBufferGetHeight([v100 sourcePixelBuffer]);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100032C60;
          block[3] = &unk_100283948;
          v109 = v95;
          v110 = v33;
          v111 = Width;
          v112 = Height;
          if (qword_1002B81A8 != -1)
          {
            dispatch_once(&qword_1002B81A8, block);
          }
        }

        else
        {
          [v33 sizeValue];
          Width = v36;
          Height = v37;
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        v38 = [v100 pixelBuffer:&cf width:Width height:{Height, v90}];
        if (v38)
        {
          v39 = 0;
          v98 = v38;
        }

        else
        {
          v40 = [VNImageRequestHandler alloc];
          v41 = cf;
          v42 = [(MADSceneResources *)self->_resources session];
          v43 = [v40 initWithCVPixelBuffer:v41 options:&__NSDictionary0__struct session:v42];

          v44 = [v95 objectForKeyedSubscript:v33];
          if ([v44 count] == 1)
          {
            v104[0] = _NSConcreteStackBlock;
            v104[1] = 3221225472;
            v104[2] = sub_100032D58;
            v104[3] = &unk_1002836E8;
            v105 = v44;
            v106 = Width;
            v107 = Height;
            if (qword_1002B81B0 != -1)
            {
              dispatch_once(&qword_1002B81B0, v104);
            }
          }

          v45 = VCPSignPostLog();
          v46 = os_signpost_id_generate(v45);

          v47 = VCPSignPostLog();
          v48 = v47;
          if (v46 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
          {
            *buf = 67109376;
            *v122 = Width;
            *&v122[4] = 1024;
            *&v122[6] = Height;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v48, OS_SIGNPOST_INTERVAL_BEGIN, v46, "VNImageRequestHandler_PerformRequests", "%dx%d", buf, 0xEu);
          }

          v103 = v30;
          v39 = [v43 performRequests:v44 error:&v103];
          v49 = v103;

          v50 = VCPSignPostLog();
          v51 = v50;
          if (v46 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
          {
            *buf = 67109376;
            *v122 = Width;
            *&v122[4] = 1024;
            *&v122[6] = Height;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v51, OS_SIGNPOST_INTERVAL_END, v46, "VNImageRequestHandler_PerformRequests", "%dx%d", buf, 0xEu);
          }

          if ((v39 & 1) == 0)
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v31))
            {
              *buf = v90;
              *v122 = v49;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v31, "Failed to run VNImageRequestHandler::performRequests: %@", buf, 0xCu);
            }

            v98 = -18;
          }

          v30 = v49;
        }

        objc_autoreleasePoolPop(context);
        if (!v39)
        {

          v53 = 0;
          v25 = 0;
          v54 = v95;
          goto LABEL_67;
        }

        v32 = v32 + 1;
      }

      while (v96 != v32);
      v27 = obj;
      v28 = [obj countByEnumeratingWithState:&v113 objects:v123 count:16];
      if (v28)
      {
        continue;
      }

      break;
    }
  }

  v54 = v95;
  if (!+[VCPPreAnalysisRequests includeIVS])
  {
    v25 = 0;
LABEL_65:
    v53 = 1;
    goto LABEL_67;
  }

  v55 = objc_autoreleasePoolPush();
  v54 = v95;
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  v56 = [v100 pixelBuffer:&cf width:299 height:299];
  if (v56)
  {
    v57 = 0;
    v25 = 0;
  }

  else
  {
    v102 = 0;
    v56 = [(VCPMADSceneAssetBatch *)self _performIVSAnalysisForAssetEntry:v91 pixelBuffer:cf results:&v102 safetyQRResults:&v120];
    v25 = v102;
    v57 = v56 == 0;
    if (!v56)
    {
      v56 = v98;
    }
  }

  objc_autoreleasePoolPop(v55);
  if (v57)
  {
    v98 = v56;
    goto LABEL_65;
  }

  v53 = 0;
  v98 = v56;
LABEL_67:

  sub_100002CBC(&cf);
  if (v53)
  {
    goto LABEL_68;
  }

LABEL_95:

  return v98;
}

- (int)_performBlurAnalysisForAssetEntry:(id)a3 withLumaPixelBuffer:(__CVBuffer *)a4
{
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    v8 = VCPSignPostLog();
    v9 = os_signpost_id_generate(v8);

    v10 = VCPSignPostLog();
    v11 = v10;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      LOWORD(buf.data) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "VCPSceneAnalyzerImageBlurAnalysis", "", &buf, 2u);
    }

    v12 = +[VCPPreAnalysisRequests sharpnessRevision];
    v13 = [VCPImageBlurAnalyzer alloc];
    v14 = [v7 asset];
    v62 = [v13 initWithFaceResults:0 sdof:objc_msgSend(v14 revision:{"vcp_isSdofPhoto"), v12}];

    v15 = [v7 asset];
    LOBYTE(v12) = [v15 vcp_abnormalImageDimensionForSceneNet] == 0;

    if (v12)
    {
      v63 = 0;
      v22 = [v62 analyzePixelBuffer:a4 flags:0 results:&v63 cancel:&stru_100283988];
      v23 = v63;
      v24 = v23;
      if (!v22)
      {
        v25 = [v23 objectForKeyedSubscript:MediaAnalysisBlurResultsKey];
        v26 = [v25 objectAtIndexedSubscript:0];
        v27 = [v26 objectForKeyedSubscript:MediaAnalysisResultAttributesKey];

        v28 = [v27 objectForKeyedSubscript:MediaAnalysisResultSharpnessAttributeKey];
        [v28 floatValue];
        v30 = v29;

        v31 = [v7 results];
        v32 = v31;
        LODWORD(v33) = 1.0;
        if (v30 < 1.0)
        {
          *&v33 = v30;
        }

        if (v30 <= 0.0)
        {
          *&v33 = 0.0;
        }

        [v31 setBlurrinessScore:v33];

LABEL_40:
        v37 = VCPSignPostLog();
        v38 = v37;
        if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
        {
          LOWORD(buf.data) = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_INTERVAL_END, v9, "VCPSceneAnalyzerImageBlurAnalysis", "", &buf, 2u);
        }

        v22 = 0;
      }
    }

    else
    {
      Width = CVPixelBufferGetWidth(a4);
      Height = CVPixelBufferGetHeight(a4);
      v18 = Height;
      if (Width <= Height)
      {
        v19 = Height / Width;
      }

      else
      {
        v19 = Width / Height;
      }

      v72 = 0;
      v34 = [(MADSceneResources *)self->_resources monochromeBufferCreator];
      v22 = [v34 createPixelBuffer:&v72];

      if (!v22)
      {
        v70 = a4;
        v71 = 1;
        v22 = CVPixelBufferLockBaseAddress(a4, 1uLL);
        LODWORD(v69) = v22;
        if (!v22 || os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR) && (LODWORD(buf.data) = 134218240, *(&buf.data + 4) = v70, WORD2(buf.height) = 1024, *(&buf.height + 6) = v22, _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", &buf, 0x12u), (v22 = v69) == 0))
        {
          LODWORD(v66) = 0;
          pixelBuffer = v72;
          unlockFlags = 0;
          if (v72)
          {
            v22 = CVPixelBufferLockBaseAddress(v72, 0);
            LODWORD(v66) = v22;
            if (v22)
            {
              if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR) || (LODWORD(buf.data) = 134218240, *(&buf.data + 4) = pixelBuffer, WORD2(buf.height) = 1024, *(&buf.height + 6) = v22, _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", &buf, 0x12u), (v22 = v66) != 0))
              {
                v24 = 0;
LABEL_25:
                v35 = 0;
                goto LABEL_29;
              }
            }

            BaseAddress = CVPixelBufferGetBaseAddress(a4);
            BytesPerRow = CVPixelBufferGetBytesPerRow(a4);
            if (v19)
            {
              v41 = 0;
              v61 = 0;
              v42 = BytesPerRow;
              if (Width > v18)
              {
                v42 = 1;
              }

              v59 = kVCPMAPreAnalysisScaledSize;
              v55 = v42 * kVCPMAPreAnalysisScaledSize;
              v58 = MediaAnalysisBlurResultsKey;
              v57 = MediaAnalysisResultAttributesKey;
              v56 = MediaAnalysisResultSharpnessAttributeKey;
              v43 = 0.0;
              while (1)
              {
                buf.data = BaseAddress;
                buf.height = v59;
                buf.width = v59;
                buf.rowBytes = BytesPerRow;
                dest.data = CVPixelBufferGetBaseAddress(v72);
                dest.height = CVPixelBufferGetHeight(v72);
                dest.width = CVPixelBufferGetWidth(v72);
                dest.rowBytes = CVPixelBufferGetBytesPerRow(v72);
                v22 = vImageScale_Planar8(&buf, &dest, 0, 0);
                if (v22)
                {
                  break;
                }

                v64 = v41;
                v22 = [v62 analyzePixelBuffer:v72 flags:0 results:&v64 cancel:&stru_100283968];
                v24 = v64;

                if (v22)
                {
                  goto LABEL_25;
                }

                v44 = [v24 objectForKeyedSubscript:v58];
                v45 = [v44 objectAtIndexedSubscript:0];
                v46 = [v45 objectForKeyedSubscript:v57];

                v47 = [v46 objectForKeyedSubscript:v56];
                v48 = v47;
                if (v47)
                {
                  [v47 floatValue];
                  v43 = v43 + v49;
                  ++v61;
                }

                BaseAddress += v55;
                v41 = v24;
                if (!--v19)
                {
                  v50 = v61;
                  goto LABEL_58;
                }
              }

              v24 = v41;
              goto LABEL_25;
            }

            v24 = 0;
            v43 = 0.0;
            v50 = 0.0;
LABEL_58:
            v22 = sub_1000337A8(&v66);
            if (v22)
            {
              goto LABEL_25;
            }

            v22 = sub_1000337A8(&v69);
            if (v22)
            {
              goto LABEL_25;
            }

            v51 = [v7 results];
            v52 = v51;
            v53 = 1.0;
            if ((v43 / v50) < 1.0)
            {
              v53 = v43 / v50;
            }

            v54 = 0.0;
            if ((v43 / v50) > 0.0)
            {
              *&v54 = v53;
            }

            [v51 setBlurrinessScore:v54];

            v22 = 0;
            v35 = 1;
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_10003B104();
            }

            v24 = 0;
            v35 = 0;
            v22 = -50;
            LODWORD(v66) = -50;
          }

LABEL_29:
          if (pixelBuffer && !v66 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10003B148();
          }

          if (v70)
          {
            if (!v69)
            {
              v36 = CVPixelBufferUnlockBaseAddress(v70, v71);
              if (v36)
              {
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(buf.data) = 134218240;
                  *(&buf.data + 4) = v70;
                  WORD2(buf.height) = 1024;
                  *(&buf.height + 6) = v36;
                  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to unlock CVPixelBuffer (%p, %d)", &buf, 0x12u);
                }
              }
            }
          }

          sub_100002CBC(&v72);
          if ((v35 & 1) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_40;
        }
      }

      sub_100002CBC(&v72);
      v24 = 0;
    }

LABEL_44:

    goto LABEL_45;
  }

  v20 = [v6 results];
  LODWORD(v21) = 0.5;
  [v20 setBlurrinessScore:v21];

  v22 = 0;
LABEL_45:

  return v22;
}

- (int)_performExposureAnalysisForAssetEntry:(id)a3 withLumaPixelBuffer:(__CVBuffer *)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    v7 = VCPSignPostLog();
    v8 = os_signpost_id_generate(v7);

    v9 = VCPSignPostLog();
    v10 = v9;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "VCPSceneAnalyzerExposureAnalysis", "", buf, 2u);
    }

    v11 = objc_alloc_init(VCPImageExposurePreAnalyzer);
    v28 = 0;
    v12 = [v11 analyzePixelBuffer:a4 flags:0 results:&v28 cancel:&stru_1002839A8];
    v13 = v28;
    if (!v12)
    {
      v14 = VCPSignPostLog();
      v15 = v14;
      if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
      {
        *v27 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, v8, "VCPSceneAnalyzerExposureAnalysis", "", v27, 2u);
      }

      v16 = [v13 objectForKeyedSubscript:MediaAnalysisExposureResultsKey];
      v17 = [v16 objectAtIndexedSubscript:0];
      v18 = [v17 objectForKeyedSubscript:MediaAnalysisResultQualityKey];
      [v18 floatValue];
      v20 = v19;

      v21 = [v6 results];
      v22 = v21;
      LODWORD(v23) = 1.0;
      if (v20 < 1.0)
      {
        *&v23 = v20;
      }

      if (v20 <= 0.0)
      {
        *&v23 = 0.0;
      }

      [v21 setExposureScore:v23];
    }
  }

  else
  {
    v24 = [v5 results];
    LODWORD(v25) = 0.5;
    [v24 setExposureScore:v25];

    v12 = 0;
  }

  return v12;
}

- (int)_performRotationAnalysisForAssetEntry:(id)a3 withColorPixelBuffer:(__CVBuffer *)a4
{
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    v8 = VCPSignPostLog();
    v9 = os_signpost_id_generate(v8);

    v10 = VCPSignPostLog();
    v11 = v10;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      LOWORD(buf.data) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "VCPSceneAnalyzerRotationAnalysisScaling", "", &buf, 2u);
    }

    cf = 0;
    v12 = [(MADSceneResources *)self->_resources rotationBufferCreator];
    v13 = [v12 createPixelBuffer:&cf];

    if (!v13)
    {
      pixelBuffer = a4;
      unlockFlags = 1;
      v13 = CVPixelBufferLockBaseAddress(a4, 1uLL);
      LODWORD(v50) = v13;
      if (!v13 || os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR) && (LODWORD(buf.data) = 134218240, *(&buf.data + 4) = pixelBuffer, WORD2(buf.height) = 1024, *(&buf.height + 6) = v13, _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", &buf, 0x12u), (v13 = v50) == 0))
      {
        buf.data = CVPixelBufferGetBaseAddress(a4);
        buf.height = CVPixelBufferGetHeight(a4);
        buf.width = CVPixelBufferGetWidth(a4);
        buf.rowBytes = CVPixelBufferGetBytesPerRow(a4);
        LODWORD(v47) = 0;
        v48 = cf;
        v49 = 0;
        if (cf)
        {
          v13 = CVPixelBufferLockBaseAddress(cf, 0);
          LODWORD(v47) = v13;
          if (!v13 || os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR) && (LODWORD(v54.data) = 134218240, *(&v54.data + 4) = v48, WORD2(v54.height) = 1024, *(&v54.height + 6) = v13, _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", &v54, 0x12u), (v13 = v47) == 0))
          {
            v54.data = CVPixelBufferGetBaseAddress(cf);
            v54.height = CVPixelBufferGetHeight(cf);
            v54.width = CVPixelBufferGetWidth(cf);
            v54.rowBytes = CVPixelBufferGetBytesPerRow(cf);
            v13 = vImageScale_ARGB8888(&buf, &v54, 0, 0x20u);
            if (!v13)
            {
              v13 = sub_1000337A8(&v47);
              if (!v13)
              {
                v13 = sub_1000337A8(&v50);
                if (!v13)
                {
                  v17 = VCPSignPostLog();
                  v18 = v17;
                  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
                  {
                    *v46 = 0;
                    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, v9, "VCPSceneAnalyzerRotationAnalysisScaling", "", v46, 2u);
                  }

                  v19 = VCPSignPostLog();
                  spid = os_signpost_id_generate(v19);

                  v20 = VCPSignPostLog();
                  v21 = v20;
                  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
                  {
                    *v46 = 0;
                    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPSceneAnalyzerRotationAnalysisInference", "", v46, 2u);
                  }

                  v22 = [(MADSceneResources *)self->_resources rotationModel];
                  v23 = cf;
                  v24 = [v22 inputFeatureName];
                  v25 = [VCPMAMLFeatureProvider featureProviderWithCVPixelBuffer:v23 andFeatureName:v24];

                  v26 = [v22 model];
                  v45 = 0;
                  v27 = [v26 predictionFromFeatures:v25 error:&v45];
                  v43 = v45;

                  v28 = [v22 outputFeatureName];
                  v29 = [v27 featureValueForName:v28];

                  v30 = [v29 multiArrayValue];
                  if ([v30 count] == 4)
                  {
                    v31 = 0;
                    v32 = 0;
                    v33 = 0.0;
                    do
                    {
                      v34 = [v30 objectAtIndexedSubscript:v31];
                      [v34 floatValue];
                      v36 = v35;

                      if (v36 > v33)
                      {
                        v33 = v36;
                        v32 = v31;
                      }

                      ++v31;
                    }

                    while (v31 != 4);
                    v37 = [v7 results];
                    [v37 setProbableRotationDirection:(v32 + 1)];

                    v38 = [v7 results];
                    *&v39 = v33;
                    [v38 setProbableRotationDirectionConfidence:v39];

                    v40 = VCPSignPostLog();
                    v41 = v40;
                    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
                    {
                      *v46 = 0;
                      _os_signpost_emit_with_name_impl(&_mh_execute_header, v41, OS_SIGNPOST_INTERVAL_END, spid, "VCPSceneAnalyzerRotationAnalysisInference", "", v46, 2u);
                    }

                    v13 = 0;
                  }

                  else
                  {
                    if (MediaAnalysisLogLevel() >= 3)
                    {
                      v42 = VCPLogToOSLogType[3];
                      if (os_log_type_enabled(&_os_log_default, v42))
                      {
                        *v46 = 0;
                        _os_log_impl(&_mh_execute_header, &_os_log_default, v42, "[ProbableRotation] invalid coreML results", v46, 2u);
                      }
                    }

                    v13 = -18;
                  }
                }
              }
            }

            if (v48 && !v47 && CVPixelBufferUnlockBaseAddress(v48, v49) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_10003B148();
            }
          }
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10003B104();
          }

          v13 = -50;
        }

        if (pixelBuffer && !v50 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10003B148();
        }
      }
    }

    sub_100002CBC(&cf);
  }

  else
  {
    v14 = [v6 results];
    [v14 setProbableRotationDirection:1];

    v15 = [v7 results];
    [v15 setProbableRotationDirectionConfidence:0.0];

    v13 = 0;
  }

  return v13;
}

- (int)_performEmbeddingAnalysisForAssetEntry:(id)a3 withColorPixelBuffer:(__CVBuffer *)a4
{
  v6 = a3;
  v7 = [v6 asset];
  v8 = [v7 localIdentifier];
  v9 = [NSString stringWithFormat:@"[Scene][Embedding][%@]", v8];

  v10 = VCPSignPostLog();
  v11 = os_signpost_id_generate(v10);

  v12 = VCPSignPostLog();
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(buf.data) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "VCPSceneAnalyzerEmbeddingAnalysisScaling", "", &buf, 2u);
  }

  cf = 0;
  v14 = [(MADSceneResources *)self->_resources embeddingBufferCreator];
  v15 = [v14 createPixelBuffer:&cf];

  if (!v15)
  {
    LODWORD(v50) = 0;
    pixelBuffer = a4;
    unlockFlags = 1;
    if (!a4)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10003B104();
      }

      v15 = -50;
      goto LABEL_5;
    }

    v15 = CVPixelBufferLockBaseAddress(a4, 1uLL);
    LODWORD(v50) = v15;
    if (v15)
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }

      LODWORD(buf.data) = 134218240;
      *(&buf.data + 4) = pixelBuffer;
      WORD2(buf.height) = 1024;
      *(&buf.height + 6) = v15;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", &buf, 0x12u);
      v15 = v50;
      if (v50)
      {
        goto LABEL_5;
      }
    }

    buf.data = CVPixelBufferGetBaseAddress(a4);
    buf.height = CVPixelBufferGetHeight(a4);
    buf.width = CVPixelBufferGetWidth(a4);
    buf.rowBytes = CVPixelBufferGetBytesPerRow(a4);
    LODWORD(v47) = 0;
    v48 = cf;
    v49 = 0;
    if (!cf)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10003B104();
      }

      v15 = -50;
      goto LABEL_37;
    }

    v15 = CVPixelBufferLockBaseAddress(cf, 0);
    LODWORD(v47) = v15;
    if (v15)
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR) || (LODWORD(v60.data) = 134218240, *(&v60.data + 4) = v48, WORD2(v60.height) = 1024, *(&v60.height + 6) = v15, _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", &v60, 0x12u), (v15 = v47) != 0))
      {
LABEL_37:
        if (pixelBuffer && !v50 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10003B148();
        }

        goto LABEL_5;
      }
    }

    v60.data = CVPixelBufferGetBaseAddress(cf);
    v60.height = CVPixelBufferGetHeight(cf);
    v60.width = CVPixelBufferGetWidth(cf);
    v60.rowBytes = CVPixelBufferGetBytesPerRow(cf);
    v15 = vImageScale_ARGB8888(&buf, &v60, 0, 0x20u);
    if (v15 || (v15 = sub_1000337A8(&v47)) != 0 || (v15 = sub_1000337A8(&v50)) != 0)
    {
LABEL_59:
      if (v48 && !v47 && CVPixelBufferUnlockBaseAddress(v48, v49) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10003B148();
      }

      goto LABEL_37;
    }

    v17 = VCPSignPostLog();
    v18 = v17;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *v54 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, v11, "VCPSceneAnalyzerEmbeddingAnalysisScaling", "", v54, 2u);
    }

    v19 = VCPSignPostLog();
    v20 = os_signpost_id_generate(v19);

    v21 = VCPSignPostLog();
    v22 = v21;
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *v54 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "VCPSceneAnalyzerEmbeddingAnalysisInference", "", v54, 2u);
    }

    v23 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", +[VCPVideoTransformerBackbone revision]);
    v24 = [VCPSharedImageBackboneAnalyzer sharedAnalyzerWithRevision:v23];

    v46 = 0;
    v15 = [v24 analyzePixelBuffer:cf flags:0 results:&v46 cancel:&stru_1002839C8];
    v25 = v46;
    if (v15)
    {
LABEL_58:

      goto LABEL_59;
    }

    v26 = VCPSignPostLog();
    v27 = v26;
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *v54 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_END, v20, "VCPSceneAnalyzerEmbeddingAnalysisInference", "", v54, 2u);
    }

    v28 = [v25 objectForKeyedSubscript:MediaAnalysisImageEmbeddingResultsKey];
    if (![v28 count])
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v39 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v39))
        {
          *v54 = 138412290;
          v55 = v9;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v39, "%@ Empty embedding results", v54, 0xCu);
        }
      }

      v15 = -18;
      goto LABEL_57;
    }

    v29 = [v28 firstObject];
    v30 = [v29 objectForKeyedSubscript:MediaAnalysisResultAttributesKey];
    v44 = [v30 objectForKeyedSubscript:MediaAnalysisResultEmbeddingAttributeKey];

    if (!v44)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v40 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v40))
        {
          *v54 = 138412290;
          v55 = v9;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v40, "%@ Empty embedding data", v54, 0xCu);
        }
      }

      v15 = -18;
      goto LABEL_56;
    }

    v31 = [v6 asset];
    v32 = [v31 localIdentifier];
    v58 = MediaAnalysisResultsKey;
    v59 = v25;
    v33 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v45 = 0;
    v34 = [VSKAsset mad_imageAssetWithLocalIdentifier:v32 mediaAnalysisResults:v33 error:&v45];
    v43 = v45;
    v35 = [v6 results];
    [v35 setImageEmbeddingResults:v34];

    v36 = [v6 results];
    v37 = [v36 imageEmbeddingResults];
    LODWORD(v35) = v37 == 0;

    if (v35)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v41 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v41))
        {
          *v54 = 138412546;
          v55 = v9;
          v56 = 2112;
          v42 = v43;
          v57 = v43;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v41, "%@ Failed to generate VSKAsset: %@", v54, 0x16u);
          v15 = -18;
LABEL_55:

LABEL_56:
LABEL_57:

          goto LABEL_58;
        }
      }

      v15 = -18;
    }

    else
    {
      v38 = [v6 results];
      [v38 setImageEmbeddingVersion:75];

      v15 = 0;
    }

    v42 = v43;
    goto LABEL_55;
  }

LABEL_5:
  sub_100002CBC(&cf);

  return v15;
}

- (void)_processAssetEntry:(id)a3 resourceURL:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v56 = a4;
  v9 = a5;
  v10 = [v8 asset];
  v11 = [v10 localIdentifier];
  v57 = [NSString stringWithFormat:@"[Scene][%@]", v11];

  if (([v8 needsSceneProcessing] & 1) == 0 && (objc_msgSend(v8, "needsEmbeddingProcessing") & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v28 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v28))
      {
        *buf = 138412290;
        *&buf[4] = v57;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v28, "%@ Analysis meets requirement; skipping", buf, 0xCu);
      }
    }

    goto LABEL_28;
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v12 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v12))
    {
      v13 = [v8 asset];
      v14 = [v13 vcp_typeDescription];
      v15 = [v8 needsSceneProcessing];
      v16 = [v8 needsEmbeddingProcessing];
      v17 = @"NO";
      *buf = 138413058;
      *&buf[4] = v57;
      if (v15)
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      *&buf[12] = 2112;
      *&buf[14] = v14;
      if (v16)
      {
        v17 = @"YES";
      }

      *&buf[22] = 2112;
      v81 = v18;
      LOWORD(v82) = 2112;
      *(&v82 + 2) = v17;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "%@ Analyzing %@ (Scene:%@, Embedding:%@)", buf, 0x2Au);
    }
  }

  v19 = +[VCPWatchdog sharedWatchdog];
  [v19 pet];

  cancelBlock = self->_cancelBlock;
  if (cancelBlock && cancelBlock[2]())
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v21 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v21))
      {
        *buf = 138412290;
        *&buf[4] = v57;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "%@ Processing canceled; skipping asset", buf, 0xCu);
      }
    }

    [v8 setStatus:4294967168];
LABEL_28:
    v9[2](v9);
    goto LABEL_55;
  }

  dispatch_semaphore_wait(self->_inProcessAssetBudget, 0xFFFFFFFFFFFFFFFFLL);
  v22 = VCPSignPostLog();
  v23 = os_signpost_id_generate(v22);

  v24 = VCPSignPostLog();
  v25 = v24;
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "VCPMADSceneAssetEntryProcess_CreateVNRequests", "", buf, 2u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v81 = sub_100035834;
  *&v82 = sub_100035844;
  *(&v82 + 1) = 0;
  v75 = 0;
  v26 = [(VCPMADSceneAssetBatch *)self _createRequests:&v75 forAssetEntry:v8];
  objc_storeStrong(&v82 + 1, v75);
  if (v26)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v27 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v27))
      {
        *v76 = 138412290;
        v77 = v57;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "%@ Failed to create VNRequests", v76, 0xCu);
      }
    }

    dispatch_semaphore_signal(self->_inProcessAssetBudget);
    v9[2](v9);
  }

  else
  {
    v29 = VCPSignPostLog();
    v30 = v29;
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      *v76 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_INTERVAL_END, v23, "VCPMADSceneAssetEntryProcess_CreateVNRequests", "", v76, 2u);
    }

    v31 = VCPSignPostLog();
    v32 = os_signpost_id_generate(v31);

    v33 = VCPSignPostLog();
    v34 = v33;
    if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
    {
      *v76 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, OS_SIGNPOST_INTERVAL_BEGIN, v32, "VCPMADSceneAssetEntryProcess_Decode", "", v76, 2u);
    }

    v35 = [*(*&buf[8] + 40) mapAvailableRequestsToResolution];
    v55 = [v35 allKeys];

    cf = 0;
    v74 = 0;
    v36 = [(MADSceneResources *)self->_resources imageLoader];
    v37 = [v8 asset];
    v38 = [v37 vcp_abnormalImageDimensionForSceneNet];
    if ([v8 needsSceneProcessing])
    {
      v39 = v55;
    }

    else
    {
      v39 = &__NSArray0__struct;
    }

    v72 = 0;
    v40 = [v36 loadImageURL:v56 abnormalDimension:v38 withNonPanoPreWarmSizes:v39 toColorPixelBuffer:&cf lumaPixelBuffer:&v74 andImage:&v72];
    v41 = v72;
    [v8 setStatus:v40];

    v42 = VCPSignPostLog();
    v43 = v42;
    if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
    {
      *v76 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, OS_SIGNPOST_INTERVAL_END, v32, "VCPMADSceneAssetEntryProcess_Decode", "", v76, 2u);
    }

    if ([v8 status])
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v44 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v44))
        {
          *v76 = 138412546;
          v77 = v57;
          v78 = 2112;
          v79 = v56;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v44, "%@ Failed to load resourceURL: %@", v76, 0x16u);
        }
      }

      [v8 setErrorCode:100];
      [v8 setErrorLine:1592];
      dispatch_semaphore_signal(self->_inProcessAssetBudget);
      v9[2](v9);
    }

    else
    {
      scheduler = self->_scheduler;
      scenenetGroup = self->_scenenetGroup;
      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3221225472;
      v65[2] = sub_10003584C;
      v65[3] = &unk_100283A18;
      v47 = v8;
      v66 = v47;
      v48 = v57;
      v67 = v48;
      v68 = self;
      v69 = v41;
      v71 = buf;
      v49 = v9;
      v70 = v49;
      scheduler[2](scheduler, @"Scenenet", scenenetGroup, v65);
      if (v74)
      {
        v50 = CFRetain(v74);
      }

      else
      {
        v50 = 0;
      }

      if (cf)
      {
        v51 = CFRetain(cf);
        v52 = v48;
      }

      else
      {
        v52 = v48;
        v51 = 0;
      }

      v53 = self->_scheduler;
      blurExposureRotationGroup = self->_blurExposureRotationGroup;
      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_100035C00;
      v58[3] = &unk_100283A40;
      v59 = v52;
      v60 = v47;
      v61 = self;
      v63 = v50;
      v64 = v51;
      v62 = v49;
      v53[2](v53, @"BlurExposureRotation", blurExposureRotationGroup, v58);
    }

    sub_100002CBC(&cf);
    sub_100002CBC(&v74);
  }

  _Block_object_dispose(buf, 8);

LABEL_55:
}

- (int)process
{
  v2 = VCPSignPostLog();
  spid = os_signpost_id_generate(v2);

  v3 = VCPSignPostLog();
  v4 = v3;
  if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPMADSceneAssetBatch_Process", "", buf, 2u);
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v6 = [(NSMutableArray *)self->_assetEntries count];
      qos_class_self();
      v7 = VCPMAQoSDescription();
      *buf = 134218242;
      v115 = v6;
      v116 = 2112;
      *v117 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[Scene] Processing %lu assets (QoS: %@)", buf, 0x16u);
    }
  }

  v8 = +[VCPWatchdog sharedWatchdog];
  [v8 pet];

  if ([(NSMutableDictionary *)self->_downloadRequestIDs count])
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v9 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v9))
      {
        v10 = [(NSMutableDictionary *)self->_downloadRequestIDs count];
        *buf = 67109120;
        LODWORD(v115) = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[Scene] Waiting for %d downloads to complete", buf, 8u);
      }
    }

    v11 = self;
    while (1)
    {
      downloadGroup = v11->_downloadGroup;
      v13 = dispatch_time(0, 500000000);
      if (!dispatch_group_wait(downloadGroup, v13))
      {
        goto LABEL_28;
      }

      cancelBlock = v11->_cancelBlock;
      if (cancelBlock)
      {
        v11 = self;
        if (cancelBlock[2]())
        {
          break;
        }
      }

      [(VCPMADSceneAssetBatch *)v11 _downloadInactiveTimeInterval];
      v11 = self;
      if (v15 > 60.0)
      {
        if (MediaAnalysisLogLevel() >= 5)
        {
          v16 = VCPLogToOSLogType[5];
          v17 = self;
          if (os_log_type_enabled(&_os_log_default, v16))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[Scene] Download inactivity timeout; cancelling downloads", buf, 2u);
          }

          v18 = 4294943494;
          goto LABEL_27;
        }

        v18 = 4294943494;
LABEL_26:
        v17 = self;
LABEL_27:
        [(VCPMADSceneAssetBatch *)v17 _cancelRemainingDownloadsWithStatus:v18];
        goto LABEL_28;
      }
    }

    if (MediaAnalysisLogLevel() >= 5)
    {
      v19 = VCPLogToOSLogType[5];
      v17 = self;
      if (os_log_type_enabled(&_os_log_default, v19))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "[Scene] Processing cancelled; cancelling downloads", buf, 2u);
      }

      v18 = 4294967168;
      goto LABEL_27;
    }

    v18 = 4294967168;
    goto LABEL_26;
  }

LABEL_28:
  v96 = +[NSDate now];
  v104 = 0;
  type = VCPLogToOSLogType[4];
  v91 = VCPLogToOSLogType[3];
  v92 = VCPLogToOSLogType[5];
  v93 = VCPLogToOSLogType[7];
  v94 = MediaAnalysisEmbeddingForwardCompatibleVersion;
  v20 = self;
  while (v104 < [(NSMutableArray *)v20->_assetEntries count])
  {
    context = objc_autoreleasePoolPush();
    v105 = [(NSMutableArray *)self->_assetEntries objectAtIndexedSubscript:v104];
    v21 = [v105 asset];
    v22 = [v21 localIdentifier];
    v102 = [NSString stringWithFormat:@"[Scene][%@]", v22];

    v23 = [v105 asset];
    v24 = [v23 adjustmentVersion];
    v25 = v24 == 0;

    if (!v25)
    {
      v26 = VCPSignPostLog();
      v27 = os_signpost_id_generate(v26);

      v28 = VCPSignPostLog();
      v29 = v28;
      if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_INTERVAL_BEGIN, v27, "VCPMADSceneAssetEntry_QueryResource", "", buf, 2u);
      }

      v30 = [v105 asset];
      v101 = [PHAssetResource vcp_allAcceptableResourcesForAsset:v30];

      v99 = [v101 vcp_thumbnailResource];
      v31 = VCPSignPostLog();
      v32 = v31;
      if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_INTERVAL_END, v27, "VCPMADSceneAssetEntry_QueryResource", "", buf, 2u);
      }

      v33 = v99;
      if ([v99 vcp_isLocallyAvailable])
      {
        if ([v99 vcp_hasExtremeAbnormalDimensionForScene])
        {
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, type))
          {
            v34 = [v99 pixelWidth];
            v35 = [v99 pixelHeight];
            *buf = 138412802;
            v115 = v102;
            v116 = 1024;
            *v117 = v34;
            *&v117[4] = 1024;
            *&v117[6] = v35;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Asset has extreme abnormal dimension %dx%d; skipping", buf, 0x18u);
          }

          v36 = 4294967278;
          goto LABEL_84;
        }

        if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
        {
          v38 = objc_autoreleasePoolPush();
          if ([v105 needsEmbeddingProcessing])
          {
            v39 = VCPSignPostLog();
            v40 = os_signpost_id_generate(v39);

            v41 = VCPSignPostLog();
            v42 = v41;
            if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v42, OS_SIGNPOST_INTERVAL_BEGIN, v40, "VCPMADSceneAssetBatch_UnpackComputeSync", "", buf, 2u);
            }

            v43 = [v101 mad_computeSyncResource];
            v44 = [v105 asset];
            v45 = [v43 mad_existingAnalysisFromComputeSyncForAsset:v44 allowDownload:0 cancel:self->_cancelBlock];

            v46 = VCPSignPostLog();
            v47 = v46;
            if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v47, OS_SIGNPOST_INTERVAL_END, v40, "VCPMADSceneAssetBatch_UnpackComputeSync", "", buf, 2u);
            }

            v48 = [v45 imageEmbeddingVSKAsset];
            if (v48)
            {
              v49 = v94 > [v45 imageEmbeddingVersion];

              if (!v49)
              {
                v50 = [v45 imageEmbeddingVSKAsset];
                v51 = [v105 results];
                [v51 setImageEmbeddingResults:v50];

                v52 = [v45 imageEmbeddingVersion];
                v53 = [v105 results];
                [v53 setImageEmbeddingVersion:v52];

                if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v92))
                {
                  v54 = [v105 results];
                  v55 = [v54 imageEmbeddingVersion];
                  *buf = 138412546;
                  v115 = v102;
                  v116 = 1024;
                  *v117 = v55;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v92, "%@ Reusing image embedding results (v%d) from compute sync", buf, 0x12u);
                }
              }
            }

            v56 = [v105 results];
            v57 = [v56 imageEmbeddingVersion] == 74;

            if (v57)
            {
              if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v93))
              {
                v58 = [v105 results];
                v59 = [v58 imageEmbeddingVersion];
                *buf = 138412802;
                v115 = v102;
                v116 = 1024;
                *v117 = v59;
                *&v117[4] = 1024;
                *&v117[6] = 75;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v93, "%@ Bumping image embedding v%d->v%d to avoid reprocessing", buf, 0x18u);
              }

              v60 = [v105 results];
              [v60 setImageEmbeddingVersion:75];
            }

            v61 = [v105 results];
            v62 = [v61 imageEmbeddingResults];
            v63 = [v62 mad_embeddingVersion] == 8;

            if (v63)
            {
              v64 = [v105 results];
              v65 = [v64 imageEmbeddingResults];
              v66 = [v65 mad_updateAssetWithEmbeddingVersion:9];
              v67 = [v105 results];
              [v67 setImageEmbeddingResults:v66];
            }
          }

          else
          {
            v74 = [v105 asset];
            v43 = [VSKAsset mad_fetchImageEmbeddingForPhotosAsset:v74];

            if (v43)
            {
              v75 = [v105 results];
              [v75 setImageEmbeddingResults:v43];

              v76 = [v105 asset];
              v77 = [v76 mediaAnalysisProperties];
              v78 = [v77 imageEmbeddingVersion];
              v79 = [v105 results];
              [v79 setImageEmbeddingVersion:v78];
            }

            else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v91))
            {
              *buf = 138412290;
              v115 = v102;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v91, "%@ Failed to fetch image embedding results from vectorDB for processed asset", buf, 0xCu);
            }
          }

          objc_autoreleasePoolPop(v38);
        }

        v80 = objc_autoreleasePoolPush();
        v81 = VCPSignPostLog();
        v82 = os_signpost_id_generate(v81);

        v83 = VCPSignPostLog();
        v84 = v83;
        if (v82 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v83))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v84, OS_SIGNPOST_INTERVAL_BEGIN, v82, "VCPMADSceneAssetEntry_ProcessAsset", "", buf, 2u);
        }

        v85 = [v99 privateFileURL];
        v109[0] = _NSConcreteStackBlock;
        v109[1] = 3221225472;
        v109[2] = sub_100037648;
        v109[3] = &unk_100283A60;
        v109[4] = v82;
        v109[5] = 0;
        [(VCPMADSceneAssetBatch *)self _processAssetEntry:v105 resourceURL:v85 completionHandler:v109];

        v33 = v99;
        objc_autoreleasePoolPop(v80);
      }

      else
      {
        if (v99)
        {
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, type))
          {
            v37 = [v99 isLocallyAvailable];
            *buf = 138412802;
            v115 = v102;
            v116 = 2112;
            *v117 = &stru_1002890F8;
            *&v117[8] = 1024;
            v118 = v37;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ %@Thumbnail PHAssetResource not locally available (Local: %d)", buf, 0x1Cu);
          }

          v36 = 4294943494;
        }

        else
        {
          v68 = +[NSMutableArray array];
          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          v69 = v101;
          v70 = [v69 countByEnumeratingWithState:&v110 objects:v119 count:16];
          if (v70)
          {
            v71 = *v111;
            do
            {
              for (i = 0; i != v70; i = i + 1)
              {
                if (*v111 != v71)
                {
                  objc_enumerationMutation(v69);
                }

                v73 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Type: %3d  Resolution: %5dx%-5d  Local: %d", [*(*(&v110 + 1) + 8 * i) type], objc_msgSend(*(*(&v110 + 1) + 8 * i), "pixelWidth"), objc_msgSend(*(*(&v110 + 1) + 8 * i), "pixelHeight"), objc_msgSend(*(*(&v110 + 1) + 8 * i), "isLocallyAvailable"));
                [v68 addObject:v73];
              }

              v70 = [v69 countByEnumeratingWithState:&v110 objects:v119 count:16];
            }

            while (v70);
          }

          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412546;
            v115 = v102;
            v116 = 2112;
            *v117 = v68;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Asset has no thumbnail PHAssetResource; resources: %@", buf, 0x16u);
          }

          v36 = 4294943494;
          v33 = v99;
        }

LABEL_84:
        [v105 setStatus:v36];
      }

      goto LABEL_96;
    }

    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, type))
    {
      *buf = 138412290;
      v115 = v102;
      _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Asset has no adjustment version; skipping", buf, 0xCu);
    }

    [v105 setStatus:4294943493];
LABEL_96:

    objc_autoreleasePoolPop(context);
    v20 = self;
    ++v104;
  }

  objc_initWeak(buf, v20);
  v106[0] = _NSConcreteStackBlock;
  v106[1] = 3221225472;
  v106[2] = sub_1000376F8;
  v106[3] = &unk_100283A88;
  objc_copyWeak(v108, buf);
  v97 = v96;
  v107 = v97;
  v108[1] = spid;
  v108[2] = 0;
  v86 = objc_retainBlock(v106);
  waitForProcessToComplete = self->_waitForProcessToComplete;
  self->_waitForProcessToComplete = v86;

  v88 = self->_cancelBlock;
  if (v88 && (v88[2]() & 1) != 0)
  {
    v89 = -128;
  }

  else
  {
    v89 = 0;
  }

  objc_destroyWeak(v108);
  objc_destroyWeak(buf);

  return v89;
}

- (int)_publishEmbeddingResultsWithPhotoLibrary:(id)a3
{
  v34 = [MADVectorDatabaseChangeManager sharedManagerForPhotoLibrary:a3];
  if (v34)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = self->_assetEntries;
    v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v42 objects:v51 count:16];
    if (v3)
    {
      v4 = *v43;
      type = VCPLogToOSLogType[3];
      v35 = VCPLogToOSLogType[4];
      do
      {
        v5 = 0;
        do
        {
          if (*v43 != v4)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v42 + 1) + 8 * v5);
          v7 = objc_autoreleasePoolPush();
          v8 = [v6 asset];
          v9 = [v8 localIdentifier];
          v10 = [NSString stringWithFormat:@"[Scene][Embedding][%@]", v9];

          if ([v6 status] || objc_msgSend(v6, "imageEmbeddingStatus"))
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
            {
              v11 = [v6 status];
              *buf = 138412546;
              v48 = v10;
              v49 = 1024;
              v50 = v11;
              v12 = type;
              v13 = "%@ Analysis failed (%d); skipping";
              v14 = 18;
LABEL_12:
              _os_log_impl(&_mh_execute_header, &_os_log_default, v12, v13, buf, v14);
            }
          }

          else if ([v6 needsEmbeddingProcessing])
          {
            v15 = [v6 results];
            v16 = [v15 imageEmbeddingResults];
            v17 = v16 == 0;

            if (v17)
            {
              if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
              {
                *buf = 138412290;
                v48 = v10;
                _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Failed to generate embedding results; skipping", buf, 0xCu);
              }

              [v6 setImageEmbeddingStatus:4294967278];
            }

            else
            {
              v18 = [v6 results];
              v19 = [v18 imageEmbeddingResults];
              v20 = [v6 results];
              v21 = +[MADVSKEmbeddingResults resultsWithImageEmbedding:imageEmbeddingVersion:videoEmbeddingAsset:videoEmbeddingVersion:](MADVSKEmbeddingResults, "resultsWithImageEmbedding:imageEmbeddingVersion:videoEmbeddingAsset:videoEmbeddingVersion:", v19, [v20 imageEmbeddingVersion], 0, 0);

              [v34 addPendingEmbeddingResults:v21];
            }
          }

          else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v35))
          {
            *buf = 138412290;
            v48 = v10;
            v12 = v35;
            v13 = "%@ needsEmbeddingProcessing is NO; skipping";
            v14 = 12;
            goto LABEL_12;
          }

          objc_autoreleasePoolPop(v7);
          v5 = v5 + 1;
        }

        while (v3 != v5);
        v22 = [(NSMutableArray *)obj countByEnumeratingWithState:&v42 objects:v51 count:16];
        v3 = v22;
      }

      while (v22);
    }

    v23 = [v34 publishPendingChanges];
    if (v23)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v24 = self->_assetEntries;
      v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v25)
      {
        v26 = *v39;
        do
        {
          for (i = 0; i != v25; i = i + 1)
          {
            if (*v39 != v26)
            {
              objc_enumerationMutation(v24);
            }

            v28 = *(*(&v38 + 1) + 8 * i);
            v29 = objc_autoreleasePoolPush();
            if (![v28 imageEmbeddingStatus])
            {
              [v28 setImageEmbeddingStatus:4294967278];
            }

            objc_autoreleasePoolPop(v29);
          }

          v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v38 objects:v46 count:16];
        }

        while (v25);
      }

      if (MediaAnalysisLogLevel() >= 3)
      {
        v30 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v30))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v30, "[Scene] Failed to update vectorDB; skip updating Photos embedding version", buf, 2u);
        }
      }
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v31 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v31))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v31, "[Scene] Failed to create MADVectorDatabaseChangeManager", buf, 2u);
      }
    }

    v23 = -18;
  }

  return v23;
}

- (int)_publishPhotosResultsWithPhotoLibrary:(id)a3
{
  v4 = a3;
  v5 = +[MADStateHandler sharedStateHandler];
  [v5 addBreadcrumb:{@"[Scene] Persisting %d assets to Photos", -[NSMutableArray count](self->_assetEntries, "count")}];

  v6 = +[VCPWatchdog sharedWatchdog];
  [v6 pet];

  v7 = +[MADStateHandler sharedStateHandler];
  [v7 enterKnownTimeoutRisk:1];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100038164;
  v29[3] = &unk_100283210;
  v29[4] = self;
  v8 = objc_retainBlock(v29);
  cancelBlock = self->_cancelBlock;
  v28 = 0;
  v10 = [v4 mad_performChangesAndWait:v8 activity:2 cancelBlock:cancelBlock extendTimeoutBlock:&stru_100283AA8 error:&v28];
  v11 = v28;
  v12 = +[MADStateHandler sharedStateHandler];
  [v12 exitKnownTimeoutRisk];

  v13 = +[MADStateHandler sharedStateHandler];
  [v13 addBreadcrumb:{@"[Scene] Finished persisting %d assets to Photos", -[NSMutableArray count](self->_assetEntries, "count")}];

  if (v10)
  {
    v14 = 0;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v15 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v15))
      {
        *buf = 138412290;
        v32 = v11;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[Scene] Failed to persist Scene results to Photos (%@)", buf, 0xCu);
      }
    }

    if ([v11 code] == -128)
    {
      v16 = 4294967168;
    }

    else
    {
      v16 = 4294967278;
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v17 = self->_assetEntries;
    v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v18)
    {
      v19 = *v25;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v24 + 1) + 8 * i);
          v22 = objc_autoreleasePoolPush();
          if (![v21 status])
          {
            [v21 setStatus:v16];
          }

          objc_autoreleasePoolPop(v22);
        }

        v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v18);
    }

    v14 = [v11 code];
  }

  return v14;
}

- (int)_propagateAssetProcessingStatus
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_assetEntries;
  v3 = 0;
  v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v11 + 1) + 8 * v6);
      v8 = objc_autoreleasePoolPush();
      v9 = [v7 status];
      if (v9 == -128)
      {
        v3 = -128;
      }

      else if ([v7 status] == -23808)
      {
        v3 = -23808;
      }

      objc_autoreleasePoolPop(v8);
      if (v9 == -128)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v3;
}

- (int)_publishProcessingStatusToLegacyDatabase
{
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = self->_assetEntries;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (!v3)
  {
    goto LABEL_57;
  }

  v37 = *v43;
  type = VCPLogToOSLogType[7];
  do
  {
    v4 = 0;
    v39 = v2;
    v36 = v3;
    do
    {
      if (*v43 != v37)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v42 + 1) + 8 * v4);
      context = objc_autoreleasePoolPush();
      v6 = [v5 asset];
      v7 = [v6 localIdentifier];
      v41 = [NSString stringWithFormat:@"[Scene][%@][Legacy]", v7];

      if (![v5 status])
      {
        if ([v5 sceneStatus])
        {
          v8 = [v5 sceneStatus];
        }

        else
        {
          v8 = [v5 imageEmbeddingStatus];
        }

        [v5 setStatus:v8];
      }

      if (![v5 status])
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v47 = v41;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis completed, removing processing status", buf, 0xCu);
        }

LABEL_40:
        analysisDatabase = self->_analysisDatabase;
        v28 = [v5 asset];
        v29 = [v28 localIdentifier];
        v30 = [(VCPDatabaseWriter *)analysisDatabase removeProcessingStatusForLocalIdentifier:v29 andTaskID:2];

        if (v30 == -108 || v30 == -36)
        {
          v2 = v30;
        }

        else
        {
          v2 = v30;
          if (v30 != -23)
          {
            v2 = v39;
          }
        }

        v26 = 0;
        if (v30 != -108 && v30 != -36 && v30 != -23)
        {
          goto LABEL_53;
        }

        goto LABEL_54;
      }

      if ([v5 status] == -128)
      {
        if ([v5 previousAttempts])
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v47 = v41;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis cancelled, recovering processing status", buf, 0xCu);
          }

          v9 = self->_analysisDatabase;
          v10 = [v5 previousAttempts];
          v33 = [v5 asset];
          v11 = [v5 previousStatus];
          v32 = [v5 lastAttemptDate];
          v12 = [v5 asset];
          v13 = [v12 mediaType];
          v14 = [v5 asset];
          v15 = -[VCPDatabaseWriter setAttempts:asset:taskID:status:lastAttemptDate:mediaType:mediaSubtypes:errorCode:errorLine:](v9, "setAttempts:asset:taskID:status:lastAttemptDate:mediaType:mediaSubtypes:errorCode:errorLine:", v10, v33, 2, v11, v32, v13, [v14 mediaSubtypes], objc_msgSend(v5, "previousErrorCode"), objc_msgSend(v5, "previousErrorLine"));

          if (v15 == -108 || v15 == -36)
          {
            v2 = v15;
          }

          else
          {
            v2 = v15;
            if (v15 != -23)
            {
              v2 = v39;
            }
          }

          v26 = 0;
          if (v15 != -108 && v15 != -36 && v15 != -23)
          {
            goto LABEL_53;
          }

          goto LABEL_54;
        }

        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v47 = v41;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis cancelled, removing processing status", buf, 0xCu);
        }

        goto LABEL_40;
      }

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
      {
        *buf = 138412290;
        v47 = v41;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis failed, updating processing status", buf, 0xCu);
      }

      [v5 status];
      v16 = MADProcessingStatusForOSStatus();
      v17 = [v5 asset];
      v18 = [v5 currentAttemptDate];
      v19 = [v17 mad_nextAttemptDateForStatus:v16 currentAttemptDate:v18 attemptCount:{objc_msgSend(v5, "previousAttempts") + 1}];

      v20 = self->_analysisDatabase;
      v21 = [v5 errorCode];
      v22 = [v5 errorLine];
      v23 = [v5 asset];
      v24 = [v23 localIdentifier];
      v25 = [(VCPDatabaseWriter *)v20 updateProcessingStatus:v16 andNextAttemptDate:v19 andErrorCode:v21 andErrorLine:v22 forLocalIdentifier:v24 andTaskID:2];

      if (v25 == -108 || v25 == -36)
      {
        v2 = v25;
      }

      else
      {
        v2 = v25;
        if (v25 != -23)
        {
          v2 = v39;
        }
      }

      v26 = 0;
      if (v25 != -108 && v25 != -36 && v25 != -23)
      {
LABEL_53:
        v26 = 1;
      }

LABEL_54:

      objc_autoreleasePoolPop(context);
      if (!v26)
      {
        goto LABEL_58;
      }

      v4 = v4 + 1;
      v39 = v2;
    }

    while (v36 != v4);
    v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  }

  while (v3);
LABEL_57:
  v2 = 0;
LABEL_58:

  return v2;
}

- (int)_publishProcessingStatusForPhotoLibrary:(id)a3
{
  v8 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100039968;
  v9[3] = &unk_100283AD0;
  v9[4] = self;
  v3 = [a3 mad_performAnalysisDataStoreChanges:v9 error:&v8];
  v4 = v8;
  v5 = v4;
  if (v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v4 code];
  }

  return v6;
}

- (void)_reportRunSessionAnalyticsWithPublishInterval:(double)a3
{
  v17 = +[VCPMADCoreAnalyticsManager sharedManager];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = self->_assetEntries;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v5)
  {
    v22 = 0;
    v23 = 0;
    v6 = 0;
    v7 = *v25;
    type = VCPLogToOSLogType[5];
    v21 = VCPAnalysisStickyFailureAttemptsThreshold;
    v19 = VCPAnalysisMaximumABCReportFailureAttempts;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        if ([v9 status])
        {
          if ([v9 status] != -128)
          {
            v11 = @"NumberOfAssetsSoftFailure";
            if ([v9 status] == -23802)
            {
              v12 = @"NumberOfAssetsNoResource";

              ++v22;
              v11 = v12;
            }

            else
            {
              ++v23;
            }

            if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
            {
              v13 = [v9 asset];
              v14 = [v13 localIdentifier];
              *buf = 138412546;
              v29 = v14;
              v30 = 2112;
              v31 = v11;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[Scene][%@] Asset failed processing. Failure: %@", buf, 0x16u);
            }

            if ([v9 previousAttempts] >= v21 && objc_msgSend(v9, "previousAttempts") <= v19)
            {
              v15 = +[VCPAutoBugCapture sharedCapturer];
              v16 = [v9 asset];
              [v15 captureProcessingFailure:v11 taskID:2 asset:v16 previousAttempts:{objc_msgSend(v9, "previousAttempts")}];
            }
          }
        }

        else
        {
          ++v6;
        }

        objc_autoreleasePoolPop(v10);
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v5);
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v6 = 0;
  }

  [v17 accumulateInt64Value:v6 forField:@"NumberOfAssetsAnalyzed" andEvent:@"com.apple.mediaanalysisd.SceneAnalysisRunSession"];
  [v17 accumulateInt64Value:v23 forField:@"NumberOfAssetsSoftFailure" andEvent:@"com.apple.mediaanalysisd.SceneAnalysisRunSession"];
  [v17 accumulateInt64Value:v22 forField:@"NumberOfAssetsNoResource" andEvent:@"com.apple.mediaanalysisd.SceneAnalysisRunSession"];
  [v17 accumulateDoubleValue:@"TimeAnalyzingInSeconds" forField:@"com.apple.mediaanalysisd.SceneAnalysisRunSession" andEvent:self->_processDuration];
  [v17 accumulateDoubleValue:@"TotalProcessTimeInSeconds" forField:@"com.apple.mediaanalysisd.SceneAnalysisRunSession" andEvent:self->_processDuration];
  [v17 accumulateDoubleValue:@"TotalPublishTimeInSeconds" forField:@"com.apple.mediaanalysisd.SceneAnalysisRunSession" andEvent:a3];
}

- (int)publish
{
  (*(self->_waitForProcessToComplete + 2))();
  v3 = VCPTaskIDDescription();
  v4 = [objc_opt_class() _allowConcurrentSceneProcessing];
  v5 = @"Serial";
  if (v4)
  {
    v5 = @"Concurrent";
  }

  v6 = [NSString stringWithFormat:@"%@-%@-Analyze", v3, v5];

  VCPCoreAnalyticsQoSReportSpeed(v6, self->_processDuration * 1000.0 / [(NSMutableArray *)self->_assetEntries count]);
  if (MediaAnalysisLogLevel() >= 6)
  {
    v7 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      v8 = [(NSMutableArray *)self->_assetEntries count];
      qos_class_self();
      v9 = VCPMAQoSDescription();
      *buf = 134218242;
      v44 = v8;
      v45 = 2112;
      v46 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[Scene] Persisting %lu assets (QoS: %@) ...", buf, 0x16u);
    }
  }

  if ([(NSMutableArray *)self->_assetEntries count])
  {
    v10 = [(NSMutableArray *)self->_assetEntries firstObject];
    v11 = [v10 asset];
    v12 = [v11 photoLibrary];

    v13 = [MADPhotosDataStoreClient needsDataStoreMigrationForPhotoLibrary:v12];
    v14 = v13;
    if (v13 && !self->_allowBeforeMigration)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v41 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v41))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v41, "[Scene] Skipping persisting due to migration incomplete", buf, 2u);
        }
      }

      v20 = -18;
    }

    else
    {
      v15 = VCPSignPostLog();
      v16 = os_signpost_id_generate(v15);

      v17 = VCPSignPostLog();
      v18 = v17;
      if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "VCPMADSceneAssetBatch_Publish", "", buf, 2u);
      }

      v19 = +[NSDate now];
      v20 = [(VCPMADSceneAssetBatch *)self _propagateAssetProcessingStatus];
      if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
      {
        v21 = [(VCPMADSceneAssetBatch *)self _publishEmbeddingResultsWithPhotoLibrary:v12];
        if (!v20 && v21 != 0)
        {
          v20 = v21;
        }
      }

      v23 = [(VCPMADSceneAssetBatch *)self _publishPhotosResultsWithPhotoLibrary:v12];
      if (v20)
      {
        v24 = 1;
      }

      else
      {
        v24 = v23 == 0;
      }

      if (!v24)
      {
        v20 = v23;
      }

      if (v14)
      {
        if (MediaAnalysisLogLevel() >= 7)
        {
          v25 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v25))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "[Scene] Skipping processing status updating due to migration incomplete", buf, 2u);
          }
        }
      }

      else
      {
        if (+[MADManagedProcessingStatus isMACDPersistEnabled])
        {
          v26 = [(VCPMADSceneAssetBatch *)self _publishProcessingStatusForPhotoLibrary:v12];
          if (!v20 && v26 != 0)
          {
            v20 = v26;
          }
        }

        if (+[VCPDatabaseWriter isLegacyPersistEnabled])
        {
          v28 = [(VCPMADSceneAssetBatch *)self _publishProcessingStatusToLegacyDatabase];
          v29 = [(VCPDatabaseWriter *)self->_analysisDatabase commit];
          if (v20)
          {
            v30 = 1;
          }

          else
          {
            v30 = v28 == 0;
          }

          if (v30)
          {
            v31 = v20;
          }

          else
          {
            v31 = v28;
          }

          if (v31)
          {
            v32 = 1;
          }

          else
          {
            v32 = v29 == 0;
          }

          if (v32)
          {
            v20 = v31;
          }

          else
          {
            v20 = v29;
          }
        }
      }

      [v19 timeIntervalSinceNow];
      [(VCPMADSceneAssetBatch *)self _reportRunSessionAnalyticsWithPublishInterval:-v33];
      v34 = VCPSignPostLog();
      v35 = v34;
      if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, OS_SIGNPOST_INTERVAL_END, v16, "VCPMADSceneAssetBatch_Publish", "", buf, 2u);
      }

      if (MediaAnalysisLogLevel() >= 7)
      {
        v36 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v36))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v36, "[Scene] Finished persisting", buf, 2u);
        }
      }

      if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
      {
        if (MediaAnalysisLogLevel() >= 7)
        {
          v37 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v37))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v37, "[Scene] Build VSKDB as needed", buf, 2u);
          }
        }

        v38 = [MADVectorDatabaseManager sharedDatabaseWithPhotoLibrary:v12];
        v39 = [v38 rebuildWithForce:0 cancelBlock:self->_cancelBlock extendTimeoutBlock:&stru_100283AF0 totalEmbeddingCount:0];
        if (v39)
        {
          if (MediaAnalysisLogLevel() >= 3)
          {
            v40 = VCPLogToOSLogType[3];
            if (os_log_type_enabled(&_os_log_default, v40))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v40, "[Scene] Failed to build VSKDB", buf, 2u);
            }
          }

          v20 = v39;
        }
      }
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)_reportCoreAnalyticsWithEntry:(id)a3
{
  v3 = a3;
  if (MediaAnalysisLogLevel() >= 7)
  {
    v4 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = [v3 asset];
      v6 = [v5 localIdentifier];
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[Scene] Prepare to report CoreAnalytics for asset %@ ... ", buf, 0xCu);
    }
  }

  v7 = +[NSMutableDictionary dictionary];
  [v7 setObject:@"Scene" forKeyedSubscript:@"Activity"];
  v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 status] == 0);
  [v7 setObject:v8 forKeyedSubscript:@"AnalyzeSuccess"];

  v9 = [v3 asset];
  v10 = [v9 vcp_typeDescription];
  [v7 setObject:v10 forKeyedSubscript:@"AssetType"];

  if ([v3 status] == -23802)
  {
    v11 = @"-NoResource";
LABEL_10:
    [v7 setObject:v11 forKeyedSubscript:@"AnalysisStatusExtension"];
    goto LABEL_11;
  }

  if ([v3 status] == -23808)
  {
    v11 = @"-DownloadThrottled";
    goto LABEL_10;
  }

  if ([v3 status] == -128)
  {
    v11 = @"-Canceled";
    goto LABEL_10;
  }

  if ([v3 status])
  {
    v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"-SoftFailure-%d", [v3 status]);
    [v7 setObject:v15 forKeyedSubscript:@"AnalysisStatusExtension"];
  }

LABEL_11:
  if ([v3 errorCode] >= 2 && objc_msgSend(v3, "errorCode") <= 0x9F)
  {
    [v3 errorCode];
    v12 = MADErrorStringFromCode();
    [v7 setObject:v12 forKeyedSubscript:VCPAnalyticsFieldMADErrorCode];

    v13 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 errorLine]);
    [v7 setObject:v13 forKeyedSubscript:VCPAnalyticsFieldMADErrorLine];
  }

  v14 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v14 sendEvent:@"com.apple.mediaanalysisd.AnalysisPerAssetInfo" withAnalytics:v7];
}

@end