@interface VCPMADSceneAssetBatch
+ (BOOL)_allowConcurrentSceneProcessing;
+ (id)batchWithAnalysisDatabase:(id)database allowDownload:(BOOL)download cancelBlock:(id)block resources:(id)resources;
- (VCPMADSceneAssetBatch)initWithAnalysisDatabase:(id)database allowDownload:(BOOL)download cancelBlock:(id)block resources:(id)resources;
- (double)_downloadInactiveTimeInterval;
- (id)_extractAndSortBoundingBoxFromDetectedObjects:(id)objects;
- (id)_generateSceneClassificationsFromRequests:(id)requests safetyNResults:(id)results safetyGVResults:(id)vResults;
- (id)_processBoundingBoxFromDetectedObjects:(id)objects forSceneClassID:(id)d;
- (int)_collectResultsForAssetEntry:(id)entry fromRequests:(id)requests safetyNResults:(id)results safetyGVResults:(id)vResults safetyQRResults:(unint64_t)rResults;
- (int)_createRequests:(id *)requests forAssetEntry:(id)entry;
- (int)_performBlurAnalysisForAssetEntry:(id)entry withLumaPixelBuffer:(__CVBuffer *)buffer;
- (int)_performEmbeddingAnalysisForAssetEntry:(id)entry withColorPixelBuffer:(__CVBuffer *)buffer;
- (int)_performExposureAnalysisForAssetEntry:(id)entry withLumaPixelBuffer:(__CVBuffer *)buffer;
- (int)_performIVSAnalysisForAssetEntry:(id)entry pixelBuffer:(__CVBuffer *)buffer results:(id *)results safetyQRResults:(unint64_t *)rResults;
- (int)_performRotationAnalysisForAssetEntry:(id)entry withColorPixelBuffer:(__CVBuffer *)buffer;
- (int)_performSceneNetAnalysisForAssetEntry:(id)entry withImage:(id)image andRequests:(id)requests;
- (int)_performWallpaperAnalysisForAssetEntry:(id)entry withSceneprint:(id)sceneprint;
- (int)_prepareWithCurrentDate:(id)date;
- (int)_propagateAssetProcessingStatus;
- (int)_publishEmbeddingResultsWithPhotoLibrary:(id)library;
- (int)_publishPhotosResultsWithPhotoLibrary:(id)library;
- (int)_publishProcessingStatusForPhotoLibrary:(id)library;
- (int)_publishProcessingStatusToLegacyDatabase;
- (int)_removeDownloadRequestIDForAsset:(id)asset;
- (int)_requestDownloadThumbnailResource:(id)resource entry:(id)entry;
- (int)prepare;
- (int)process;
- (int)publish;
- (void)_addDownloadRequestID:(int)d asset:(id)asset;
- (void)_cancelRemainingDownloadsWithStatus:(int)status;
- (void)_insertBoundingBox:(id)box toSortedBoundingBoxes:(id)boxes;
- (void)_parseClassificationObservations:(id)observations withPrefix:(id)prefix toClassificationResults:(id)results;
- (void)_parsePhotosTaxonomyClassificationObservations:(id)observations toClassificationResults:(id)results andDetectorSceneClassIds:(id)ids isEntityNet:(BOOL)net;
- (void)_processAssetEntry:(id)entry resourceURL:(id)l completionHandler:(id)handler;
- (void)_reportCoreAnalyticsWithEntry:(id)entry;
- (void)_reportRunSessionAnalyticsWithPublishInterval:(double)interval;
- (void)addPhotosAsset:(id)asset withPreviousStatus:(unint64_t)status attempts:(unint64_t)attempts andAttemptDate:(id)date;
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

- (VCPMADSceneAssetBatch)initWithAnalysisDatabase:(id)database allowDownload:(BOOL)download cancelBlock:(id)block resources:(id)resources
{
  databaseCopy = database;
  blockCopy = block;
  resourcesCopy = resources;
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

  objc_storeStrong(&v14->_analysisDatabase, database);
  v14->_allowDownload = download;
  v17 = objc_retainBlock(blockCopy);
  cancelBlock = v14->_cancelBlock;
  v14->_cancelBlock = v17;

  v19 = +[VCPMADProcessingJobManager sharedManager];
  inProcessAssetBudget = [v19 inProcessAssetBudget];
  inProcessAssetBudget = v14->_inProcessAssetBudget;
  v14->_inProcessAssetBudget = inProcessAssetBudget;

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

  getJobScheduler = [v19 getJobScheduler];
  scheduler = v14->_scheduler;
  v14->_scheduler = getJobScheduler;

  if (v14->_scheduler)
  {
    objc_storeStrong(&v14->_resources, resources);
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

+ (id)batchWithAnalysisDatabase:(id)database allowDownload:(BOOL)download cancelBlock:(id)block resources:(id)resources
{
  downloadCopy = download;
  databaseCopy = database;
  blockCopy = block;
  resourcesCopy = resources;
  v13 = [[self alloc] initWithAnalysisDatabase:databaseCopy allowDownload:downloadCopy cancelBlock:blockCopy resources:resourcesCopy];

  return v13;
}

- (void)addPhotosAsset:(id)asset withPreviousStatus:(unint64_t)status attempts:(unint64_t)attempts andAttemptDate:(id)date
{
  statusCopy = status;
  attemptsCopy = attempts;
  assetCopy = asset;
  dateCopy = date;
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

        asset = [*(*(&v31 + 1) + 8 * i) asset];
        localIdentifier = [asset localIdentifier];
        localIdentifier2 = [assetCopy localIdentifier];
        v16 = [localIdentifier isEqualToString:localIdentifier2];

        if (v16)
        {
          if (MediaAnalysisLogLevel() >= 4)
          {
            v22 = VCPLogToOSLogType[4];
            if (os_log_type_enabled(&_os_log_default, v22))
            {
              localIdentifier3 = [assetCopy localIdentifier];
              *buf = 138412290;
              *&buf[4] = localIdentifier3;
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
    localIdentifier4 = [assetCopy localIdentifier];
    [(VCPDatabaseWriter *)analysisDatabase fetchProcessingErrorCode:buf errorLine:&v30 taskID:2 localIdentifier:localIdentifier4];
    goto LABEL_17;
  }

  photoLibrary = [assetCopy photoLibrary];
  v18 = [MADPhotosDataStoreClient needsDataStoreMigrationForPhotoLibrary:photoLibrary];

  if ((v18 & 1) == 0)
  {
    localIdentifier4 = [assetCopy photoLibrary];
    mad_fetchRequest = [localIdentifier4 mad_fetchRequest];
    localIdentifier5 = [assetCopy localIdentifier];
    [mad_fetchRequest fetchProcessingErrorCode:buf errorLine:&v30 taskID:2 localIdentifier:localIdentifier5];

LABEL_17:
  }

  assetEntries = self->_assetEntries;
  attemptsCopy = [VCPMADSceneAssetEntry entryWithAsset:assetCopy previousStatus:statusCopy previousAttempts:attemptsCopy andLastAttemptDate:dateCopy previousErrorCode:*buf previousErrorLine:v30, statusCopy, attemptsCopy];
  [(NSMutableArray *)assetEntries addObject:attemptsCopy];

LABEL_19:
}

- (int)_prepareWithCurrentDate:(id)date
{
  dateCopy = date;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  selfCopy = self;
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
        analysisDatabase = selfCopy->_analysisDatabase;
        previousAttempts = [v8 previousAttempts];
        asset = [v8 asset];
        asset2 = [v8 asset];
        mediaType = [asset2 mediaType];
        asset3 = [v8 asset];
        v15 = -[VCPDatabaseWriter setAttempts:asset:taskID:status:lastAttemptDate:mediaType:mediaSubtypes:errorCode:errorLine:](analysisDatabase, "setAttempts:asset:taskID:status:lastAttemptDate:mediaType:mediaSubtypes:errorCode:errorLine:", previousAttempts + 1, asset, 2, 1, dateCopy, mediaType, [asset3 mediaSubtypes], objc_msgSend(v8, "previousErrorCode"), objc_msgSend(v8, "previousErrorLine"));

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

- (void)_addDownloadRequestID:(int)d asset:(id)asset
{
  assetCopy = asset;
  downloadStateQueue = self->_downloadStateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002B080;
  block[3] = &unk_100283770;
  block[4] = self;
  v10 = assetCopy;
  dCopy = d;
  v8 = assetCopy;
  dispatch_sync(downloadStateQueue, block);
}

- (int)_removeDownloadRequestIDForAsset:(id)asset
{
  assetCopy = asset;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  downloadStateQueue = self->_downloadStateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002B200;
  block[3] = &unk_100283798;
  v9 = assetCopy;
  v10 = &v11;
  block[4] = self;
  v6 = assetCopy;
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

- (void)_cancelRemainingDownloadsWithStatus:(int)status
{
  downloadStateQueue = self->_downloadStateQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002B4F0;
  v5[3] = &unk_1002837C0;
  v5[4] = self;
  statusCopy = status;
  dispatch_sync(downloadStateQueue, v5);
  dispatch_group_wait(self->_downloadGroup, 0xFFFFFFFFFFFFFFFFLL);
}

- (int)_requestDownloadThumbnailResource:(id)resource entry:(id)entry
{
  resourceCopy = resource;
  entryCopy = entry;
  assetLocalIdentifier = [resourceCopy assetLocalIdentifier];
  v9 = [NSString stringWithFormat:@"[Scene][Download][%@]", assetLocalIdentifier];

  if (MediaAnalysisLogLevel() >= 6)
  {
    v10 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      *buf = 138412546;
      v30 = v9;
      v31 = 2112;
      v32 = resourceCopy;
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
  v15 = entryCopy;
  v23 = v15;
  v16 = v13;
  v24 = v16;
  v17 = objc_retainBlock(v22);
  v18 = +[PHAssetResourceManager defaultManager];
  v19 = [v18 requestFileURLForAssetResource:resourceCopy options:v11 urlReceivedHandler:v14 completionHandler:v17];

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
    firstObject = [(NSMutableArray *)self->_assetEntries firstObject];
    asset = [firstObject asset];
    photoLibrary = [asset photoLibrary];

    if ([MADPhotosDataStoreClient needsDataStoreMigrationForPhotoLibrary:photoLibrary])
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
      v21 = [photoLibrary mad_performAnalysisDataStoreChanges:v61 error:&v60];
      v22 = v60;
      v23 = v22;
      if ((v21 & 1) == 0)
      {
        code = [v22 code];
        if (code)
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
              asset2 = [v35 asset];
              v37 = [PHAssetResource vcp_allAcceptableResourcesForAsset:asset2];

              vcp_thumbnailResource = [v37 vcp_thumbnailResource];
              v39 = vcp_thumbnailResource;
              if (vcp_thumbnailResource)
              {
                if (([vcp_thumbnailResource vcp_isLocallyAvailable] & 1) == 0)
                {
                  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v33))
                  {
                    asset3 = [v35 asset];
                    localIdentifier = [asset3 localIdentifier];
                    *buf = 138412290;
                    v65 = localIdentifier;
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
                asset4 = [v35 asset];
                localIdentifier2 = [asset4 localIdentifier];
                *buf = 138412290;
                v65 = localIdentifier2;
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

    photoLibrary = +[VCPMADCoreAnalyticsManager sharedManager];
    [v51 timeIntervalSinceNow];
    [photoLibrary accumulateDoubleValue:@"TotalPrepareTimeInSeconds" forField:@"com.apple.mediaanalysisd.SceneAnalysisRunSession" andEvent:-v47];
    code = v50;
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
  commit = [(VCPDatabaseWriter *)self->_analysisDatabase commit];
  code = commit;
  if (commit != -108 && commit != -36 && commit != -23)
  {
    v15 = VCPSignPostLog();
    v16 = v15;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, v10, "VCPMADSceneAssetBatch_LegacyPrepare", "", buf, 2u);
    }

    if (code != -36 && code != -23)
    {
      goto LABEL_41;
    }
  }

LABEL_69:

  return code;
}

- (int)_createRequests:(id *)requests forAssetEntry:(id)entry
{
  entryCopy = entry;
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
    asset = [entryCopy asset];
    mediaType = [asset mediaType];

    if (mediaType != 2)
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
  *requests = v6;

  return 0;
}

- (int)_performWallpaperAnalysisForAssetEntry:(id)entry withSceneprint:(id)sceneprint
{
  entryCopy = entry;
  sceneprintCopy = sceneprint;
  if (sceneprintCopy)
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
    v12 = [v11 analyzeWithSceneprint:sceneprintCopy results:&v31 cancel:&stru_100283858];
    results2 = v31;
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
      v20 = [results2 objectForKeyedSubscript:MediaAnalysisWPResultsKey];
      v21 = [v20 count] == 1;

      if (v21)
      {
        v22 = [results2 objectForKeyedSubscript:v19];
        v23 = [v22 objectAtIndexedSubscript:0];

        if (v23)
        {
          v24 = [v23 objectForKeyedSubscript:MediaAnalysisResultWPAttributeKey];
          v25 = v24;
          if (v24)
          {
            [v24 floatValue];
            v27 = v26;
            results = [entryCopy results];
            LODWORD(v29) = v27;
            [results setWallpaperScore:v29];

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

    results2 = [entryCopy results];
    LODWORD(v18) = 0.5;
    [results2 setWallpaperScore:v18];
    v12 = 0;
  }

  return v12;
}

- (id)_processBoundingBoxFromDetectedObjects:(id)objects forSceneClassID:(id)d
{
  objectsCopy = objects;
  dCopy = d;
  v60 = objectsCopy;
  if (![objectsCopy count])
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

  if ([objectsCopy count] == 1)
  {
    firstObject = [objectsCopy firstObject];
    v7 = [firstObject objectForKeyedSubscript:VCPConfidenceKey];
    [v7 floatValue];
    v9 = v8;

    firstObject2 = [objectsCopy firstObject];
    v11 = [firstObject2 objectForKeyedSubscript:@"size"];
    [v11 floatValue];
    v13 = v12;

    v80[0] = dCopy;
    v14 = VCPBoundingBoxKey;
    v79[0] = @"classID";
    v79[1] = VCPBoundingBoxKey;
    firstObject3 = [objectsCopy firstObject];
    v16 = [firstObject3 objectForKeyedSubscript:v14];
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
  v24 = objectsCopy;
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
    v70[0] = dCopy;
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

- (void)_insertBoundingBox:(id)box toSortedBoundingBoxes:(id)boxes
{
  boxCopy = box;
  boxesCopy = boxes;
  if (boxCopy && boxesCopy)
  {
    v6 = [boxCopy objectForKeyedSubscript:@"score"];
    [v6 floatValue];
    v8 = v7;

    for (i = 0; i < [boxesCopy count]; ++i)
    {
      v10 = [boxesCopy objectAtIndexedSubscript:i];
      v11 = [v10 objectForKeyedSubscript:@"score"];
      [v11 floatValue];
      v13 = v12;

      if (v13 < v8)
      {
        break;
      }
    }

    [boxesCopy insertObject:boxCopy atIndex:i];
  }
}

- (id)_extractAndSortBoundingBoxFromDetectedObjects:(id)objects
{
  objectsCopy = objects;
  +[NSMutableDictionary dictionary];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002DD8C;
  v5 = v12[3] = &unk_100283880;
  v13 = v5;
  [objectsCopy enumerateObjectsUsingBlock:v12];
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

- (void)_parseClassificationObservations:(id)observations withPrefix:(id)prefix toClassificationResults:(id)results
{
  observationsCopy = observations;
  prefixCopy = prefix;
  resultsCopy = results;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = observationsCopy;
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
        identifier = [v13 identifier];
        [v13 confidence];
        if (v15 >= 0.01)
        {
          if (prefixCopy && ([identifier hasPrefix:prefixCopy] & 1) == 0)
          {
            v16 = [NSString stringWithFormat:@"%@%@", prefixCopy, identifier];

            identifier = v16;
          }

          v17 = VCPSpecialLabelToExtendedSceneClassificationID();
          if (v17)
          {
            v31 = v23;
            [v13 confidence];
            v18 = [NSNumber numberWithFloat:?];
            v32 = v18;
            v19 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
            stringValue = [v17 stringValue];
            [resultsCopy setObject:v19 forKeyedSubscript:stringValue];
          }

          else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, type))
          {
            identifier2 = [v13 identifier];
            *buf = 138412290;
            v30 = identifier2;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "Unsupported observation label %@", buf, 0xCu);
          }
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v10);
  }
}

- (void)_parsePhotosTaxonomyClassificationObservations:(id)observations toClassificationResults:(id)results andDetectorSceneClassIds:(id)ids isEntityNet:(BOOL)net
{
  netCopy = net;
  observationsCopy = observations;
  resultsCopy = results;
  idsCopy = ids;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v9 = observationsCopy;
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
          identifier = [v13 identifier];
          v18 = [v16 nodeForName:identifier];

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
              stringValue = [v28 stringValue];

              v49 = v37;
              [v13 confidence];
              v30 = [NSNumber numberWithFloat:?];
              v50 = v30;
              v31 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
              [resultsCopy setObject:v31 forKeyedSubscript:stringValue];

              if (idsCopy)
              {
                detectors = [v18 detectors];
                v41[0] = _NSConcreteStackBlock;
                v41[1] = 3221225472;
                v41[2] = sub_10002EA00;
                v41[3] = &unk_1002838D0;
                v42 = idsCopy;
                [detectors enumerateObjectsUsingBlock:v41];
              }
            }
          }

          else if (netCopy)
          {
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
            {
              identifier2 = [v13 identifier];
              *buf = 138412290;
              v48 = identifier2;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "Unsupported EntityNet label in PFSceneTaxonomyNode: %@", buf, 0xCu);
            }
          }

          else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v36))
          {
            identifier3 = [v13 identifier];
            *buf = 138412290;
            v48 = identifier3;
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

- (id)_generateSceneClassificationsFromRequests:(id)requests safetyNResults:(id)results safetyGVResults:(id)vResults
{
  requestsCopy = requests;
  resultsCopy = results;
  vResultsCopy = vResults;
  v10 = +[NSMutableDictionary dictionary];
  v11 = +[VCPPreAnalysisRequests includeDO];
  v12 = +[NSMutableSet set];
  classificationRequest = [requestsCopy classificationRequest];
  results = [classificationRequest results];
  if (v11)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  [(VCPMADSceneAssetBatch *)self _parsePhotosTaxonomyClassificationObservations:results toClassificationResults:v10 andDetectorSceneClassIds:v15 isEntityNet:0, resultsCopy];

  if (v11)
  {
    objectRequest = [requestsCopy objectRequest];
    results2 = [objectRequest results];

    v18 = [(VCPMADSceneAssetBatch *)self _extractAndSortBoundingBoxFromDetectedObjects:results2];
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

  classifyImageRequest = [requestsCopy classifyImageRequest];
  results3 = [classifyImageRequest results];
  [(VCPMADSceneAssetBatch *)self _parsePhotosTaxonomyClassificationObservations:results3 toClassificationResults:v10 andDetectorSceneClassIds:0 isEntityNet:1];

  junkImageRequest = [requestsCopy junkImageRequest];
  results4 = [junkImageRequest results];
  [(VCPMADSceneAssetBatch *)self _parseClassificationObservations:results4 withPrefix:0 toClassificationResults:v10];

  landmarkRequest = [requestsCopy landmarkRequest];
  results5 = [landmarkRequest results];
  [(VCPMADSceneAssetBatch *)self _parseClassificationObservations:results5 withPrefix:0 toClassificationResults:v10];

  nsfwRequest = [requestsCopy nsfwRequest];
  results6 = [nsfwRequest results];
  [(VCPMADSceneAssetBatch *)self _parseClassificationObservations:results6 withPrefix:0 toClassificationResults:v10];

  tabooRequest = [requestsCopy tabooRequest];
  results7 = [tabooRequest results];
  [(VCPMADSceneAssetBatch *)self _parseClassificationObservations:results7 withPrefix:0 toClassificationResults:v10];

  semanticRequest = [requestsCopy semanticRequest];
  results8 = [semanticRequest results];
  [(VCPMADSceneAssetBatch *)self _parseClassificationObservations:results8 withPrefix:0 toClassificationResults:v10];

  memeRequest = [requestsCopy memeRequest];
  results9 = [memeRequest results];
  [(VCPMADSceneAssetBatch *)self _parseClassificationObservations:results9 withPrefix:@"meme_" toClassificationResults:v10];

  cityNatureRequest = [requestsCopy cityNatureRequest];
  results10 = [cityNatureRequest results];
  [(VCPMADSceneAssetBatch *)self _parseClassificationObservations:results10 withPrefix:0 toClassificationResults:v10];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  documentRequest = [requestsCopy documentRequest];
  results11 = [documentRequest results];

  v37 = [results11 countByEnumeratingWithState:&v49 objects:v58 count:16];
  if (v37)
  {
    v38 = *v50;
    do
    {
      for (i = 0; i != v37; i = i + 1)
      {
        if (*v50 != v38)
        {
          objc_enumerationMutation(results11);
        }

        labels = [*(*(&v49 + 1) + 8 * i) labels];
        [(VCPMADSceneAssetBatch *)self _parseClassificationObservations:labels withPrefix:0 toClassificationResults:v10];
      }

      v37 = [results11 countByEnumeratingWithState:&v49 objects:v58 count:16];
    }

    while (v37);
  }

  if (v46)
  {
    v41 = [v46 mad_sceneClassifications:@"SafetyTypeN"];
    [v10 addEntriesFromDictionary:v41];
  }

  if (vResultsCopy)
  {
    v42 = [vResultsCopy mad_sceneClassifications:@"SafetyTypeGV"];
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

- (int)_collectResultsForAssetEntry:(id)entry fromRequests:(id)requests safetyNResults:(id)results safetyGVResults:(id)vResults safetyQRResults:(unint64_t)rResults
{
  entryCopy = entry;
  requestsCopy = requests;
  resultsCopy = results;
  vResultsCopy = vResults;
  asset = [entryCopy asset];
  vcp_abnormalImageDimensionForSceneNet = [asset vcp_abnormalImageDimensionForSceneNet];

  if ((vcp_abnormalImageDimensionForSceneNet & 1) == 0)
  {
    v16 = [(VCPMADSceneAssetBatch *)self _generateSceneClassificationsFromRequests:requestsCopy safetyNResults:resultsCopy safetyGVResults:vResultsCopy];
    results = [entryCopy results];
    [results setSceneClassifications:v16];

    if (!resultsCopy && !vResultsCopy && !rResults || ([entryCopy asset], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "mad_isShared"), v18, !v19))
    {
LABEL_37:
      results2 = [entryCopy results];
      sceneClassifications = [results2 sceneClassifications];
      allObjects = [sceneClassifications allObjects];

      asset2 = [entryCopy asset];
      location = [asset2 location];
      [location coordinate];
      v61 = v60;

      asset3 = [entryCopy asset];
      location2 = [asset3 location];
      [location2 coordinate];
      v65 = v64;

      results7 = +[PFSceneGeography vcp_sharedSceneGeography];
      v66 = +[PFSceneTaxonomy vcp_sharedTaxonomy];
      [PNAssetCurationUtilities assetIconicScoreForSceneClassifications:allObjects assetLatitude:results7 assetLongitude:v66 sceneGeography:v61 sceneTaxonomy:v65];
      v68 = v67;
      if (MediaAnalysisLogLevel() >= 7)
      {
        v69 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v69))
        {
          asset4 = [entryCopy asset];
          localIdentifier = [asset4 localIdentifier];
          *buf = 138412546;
          v303 = localIdentifier;
          v304 = 2048;
          v305 = v68;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v69, "[%@] Accepting iconicScore: %.3f", buf, 0x16u);
        }
      }

      results3 = [entryCopy results];
      *&v73 = v68;
      [results3 setIconicScore:v73];

      goto LABEL_41;
    }

    if (resultsCopy)
    {
      v20 = [resultsCopy mad_sensitivityAnalysis:1];
      v21 = [SCMLImageAnalysisResult mad_mergeSensitiveAnalysisResults:0 withSensitiveAnalysisResults:v20];
    }

    else
    {
      v21 = 0;
    }

    if (vResultsCopy)
    {
      v36 = [vResultsCopy mad_sensitivityAnalysis:2];
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
    if (rResults)
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

    if ((rResults & 2) != 0)
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
      compactAnalysis = [v43 compactAnalysis];
      results4 = [entryCopy results];
      [results4 setCompactSCSensitivityAnalysisIVS:compactAnalysis];

      results5 = [entryCopy results];
      LODWORD(compactAnalysis) = [results5 compactSCSensitivityAnalysisIVS] == 0;

      if (compactAnalysis)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v48 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v48))
          {
            v49 = objc_opt_class();
            asset5 = [entryCopy asset];
            localIdentifier2 = [asset5 localIdentifier];
            *buf = 138412546;
            v303 = v49;
            v304 = 2112;
            v305 = *&localIdentifier2;
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
        asset6 = [entryCopy asset];
        localIdentifier3 = [asset6 localIdentifier];
        *buf = 138412802;
        v303 = v53;
        v304 = 2112;
        v305 = *&localIdentifier3;
        v306 = 2112;
        compactAnalysis3 = v44;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v52, "[%@][%@] Failed to instantiate SCSensitivityAnalysis (%@)", buf, 0x20u);
      }
    }

    goto LABEL_37;
  }

  asset7 = [entryCopy asset];
  mad_isShared = [asset7 mad_isShared];

  if (mad_isShared)
  {
    presumedSensitiveAnalysis = [sub_100031648() presumedSensitiveAnalysis];
    compactAnalysis2 = [presumedSensitiveAnalysis compactAnalysis];
    results6 = [entryCopy results];
    [results6 setCompactSCSensitivityAnalysisIVS:compactAnalysis2];

    if (MediaAnalysisLogLevel() >= 7)
    {
      v27 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v27))
      {
        v28 = objc_opt_class();
        asset8 = [entryCopy asset];
        localIdentifier4 = [asset8 localIdentifier];
        *buf = 138412802;
        v303 = v28;
        v304 = 2112;
        v305 = *&localIdentifier4;
        v306 = 2048;
        compactAnalysis3 = [presumedSensitiveAnalysis compactAnalysis];
        _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "[%@][%@] Setting compactSCSensitivityAnalysisIVS to %llu for tiny shared asset", buf, 0x20u);
      }
    }
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v31 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v31))
    {
      asset9 = [entryCopy asset];
      localIdentifier5 = [asset9 localIdentifier];
      *buf = 138412290;
      v303 = localIdentifier5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v31, "[%@] Ignoring SceneNet result for tiny asset", buf, 0xCu);
    }
  }

  allObjects = +[NSSet set];
  results7 = [entryCopy results];
  [results7 setSceneClassifications:allObjects];
LABEL_41:

  aestheticsRequest = [requestsCopy aestheticsRequest];
  results8 = [aestheticsRequest results];
  v76 = [results8 count] == 1;

  if (!v76)
  {
    v178 = -18;
    goto LABEL_56;
  }

  aestheticsRequest2 = [requestsCopy aestheticsRequest];
  results9 = [aestheticsRequest2 results];
  firstObject = [results9 firstObject];

  [firstObject aestheticScore];
  v81 = v80;
  results10 = [entryCopy results];
  LODWORD(v83) = v81;
  [results10 setOverallAestheticScore:v83];

  [firstObject wellFramedSubjectScore];
  v85 = v84;
  results11 = [entryCopy results];
  LODWORD(v87) = v85;
  [results11 setWellFramedSubjectScore:v87];

  [firstObject wellChosenBackgroundScore];
  v89 = v88;
  results12 = [entryCopy results];
  LODWORD(v91) = v89;
  [results12 setWellChosenSubjectScore:v91];

  [firstObject tastefullyBlurredScore];
  v93 = v92;
  results13 = [entryCopy results];
  LODWORD(v95) = v93;
  [results13 setTastefullyBlurredScore:v95];

  [firstObject sharplyFocusedSubjectScore];
  v97 = v96;
  results14 = [entryCopy results];
  LODWORD(v99) = v97;
  [results14 setSharplyFocusedSubjectScore:v99];

  [firstObject wellTimedShotScore];
  v101 = v100;
  results15 = [entryCopy results];
  LODWORD(v103) = v101;
  [results15 setWellTimedShotScore:v103];

  [firstObject pleasantLightingScore];
  v105 = v104;
  results16 = [entryCopy results];
  LODWORD(v107) = v105;
  [results16 setPleasantLightingScore:v107];

  [firstObject pleasantReflectionsScore];
  v109 = v108;
  results17 = [entryCopy results];
  LODWORD(v111) = v109;
  [results17 setPleasantReflectionsScore:v111];

  [firstObject harmoniousColorScore];
  v113 = v112;
  results18 = [entryCopy results];
  LODWORD(v115) = v113;
  [results18 setHarmoniousColorScore:v115];

  [firstObject livelyColorScore];
  v117 = v116;
  results19 = [entryCopy results];
  LODWORD(v119) = v117;
  [results19 setLivelyColorScore:v119];

  [firstObject pleasantSymmetryScore];
  v121 = v120;
  results20 = [entryCopy results];
  LODWORD(v123) = v121;
  [results20 setPleasantSymmetryScore:v123];

  [firstObject pleasantPatternScore];
  v125 = v124;
  results21 = [entryCopy results];
  LODWORD(v127) = v125;
  [results21 setPleasantPatternScore:v127];

  [firstObject immersivenessScore];
  v129 = v128;
  results22 = [entryCopy results];
  LODWORD(v131) = v129;
  [results22 setImmersivenessScore:v131];

  [firstObject pleasantPerspectiveScore];
  v133 = v132;
  results23 = [entryCopy results];
  LODWORD(v135) = v133;
  [results23 setPleasantPerspectiveScore:v135];

  [firstObject pleasantPostProcessingScore];
  v137 = v136;
  results24 = [entryCopy results];
  LODWORD(v139) = v137;
  [results24 setPleasantPostProcessingScore:v139];

  [firstObject noiseScore];
  v141 = v140;
  results25 = [entryCopy results];
  LODWORD(v143) = v141;
  [results25 setNoiseScore:v143];

  [firstObject failureScore];
  v145 = v144;
  results26 = [entryCopy results];
  LODWORD(v147) = v145;
  [results26 setFailureScore:v147];

  [firstObject pleasantCompositionScore];
  v149 = v148;
  results27 = [entryCopy results];
  LODWORD(v151) = v149;
  [results27 setPleasantCompositionScore:v151];

  [firstObject interestingSubjectScore];
  v153 = v152;
  results28 = [entryCopy results];
  LODWORD(v155) = v153;
  [results28 setInterestingSubjectScore:v155];

  [firstObject intrusiveObjectPresenceScore];
  v157 = v156;
  results29 = [entryCopy results];
  LODWORD(v159) = v157;
  [results29 setIntrusiveObjectPresenceScore:v159];

  [firstObject pleasantCameraTiltScore];
  v161 = v160;
  results30 = [entryCopy results];
  LODWORD(v163) = v161;
  [results30 setPleasantCameraTiltScore:v163];

  [firstObject lowKeyLightingScore];
  v165 = v164;
  results31 = [entryCopy results];
  LODWORD(v167) = v165;
  [results31 setLowLight:v167];

  saliencyRequest = [requestsCopy saliencyRequest];
  results32 = [saliencyRequest results];
  v170 = [results32 count] == 1;

  if (!v170)
  {
    goto LABEL_53;
  }

  saliencyRequest2 = [requestsCopy saliencyRequest];
  results33 = [saliencyRequest2 results];
  firstObject2 = [results33 firstObject];
  [firstObject2 boundingBox];
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
      asset10 = [entryCopy asset];
      localIdentifier6 = [asset10 localIdentifier];
      saliencyRequest3 = [requestsCopy saliencyRequest];
      results34 = [saliencyRequest3 results];
      firstObject3 = [results34 firstObject];
      [firstObject3 boundingBox];
      v185 = NSStringFromRect(v321);
      *buf = 138412546;
      v303 = localIdentifier6;
      v304 = 2112;
      v305 = *&v185;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "[%@] Unnormalized saliencyRequest bounding box %@; skip", buf, 0x16u);
    }

    goto LABEL_53;
  }

  saliencyRequest4 = [requestsCopy saliencyRequest];
  results35 = [saliencyRequest4 results];
  firstObject4 = [results35 firstObject];
  [firstObject4 boundingBox];
  v191 = v190;
  v193 = v192;
  v195 = v194;
  v197 = v196;
  results36 = [entryCopy results];
  [results36 setPreferredCropRect:{v191, v193, v195, v197}];

  saliencyRequest5 = [requestsCopy saliencyRequest];
  results37 = [saliencyRequest5 results];
  firstObject5 = [results37 firstObject];
  [firstObject5 narrowedBoundingBox];
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
      asset11 = [entryCopy asset];
      localIdentifier7 = [asset11 localIdentifier];
      saliencyRequest6 = [requestsCopy saliencyRequest];
      results38 = [saliencyRequest6 results];
      firstObject6 = [results38 firstObject];
      [firstObject6 narrowedBoundingBox];
      v211 = NSStringFromRect(v330);
      *buf = 138412546;
      v303 = localIdentifier7;
      v304 = 2112;
      v305 = *&v211;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "[%@] Unnormalized saliencyRequest narrowed bounding box %@; skip", buf, 0x16u);
    }

    goto LABEL_53;
  }

  saliencyRequest7 = [requestsCopy saliencyRequest];
  results39 = [saliencyRequest7 results];
  firstObject7 = [results39 firstObject];
  [firstObject7 narrowedBoundingBox];
  v217 = v216;
  v219 = v218;
  v221 = v220;
  v223 = v222;
  results40 = [entryCopy results];
  [results40 setAcceptableCropRect:{v217, v219, v221, v223}];

  if (+[VCPPreAnalysisRequests includeSO])
  {
    saliencyObjectnessRequest = [requestsCopy saliencyObjectnessRequest];
    results41 = [saliencyObjectnessRequest results];
    v227 = [results41 count] == 1;

    if (!v227)
    {
      goto LABEL_53;
    }

    saliencyObjectnessRequest2 = [requestsCopy saliencyObjectnessRequest];
    results42 = [saliencyObjectnessRequest2 results];
    firstObject8 = [results42 firstObject];
    salientObjects = [firstObject8 salientObjects];

    v231 = +[NSMutableArray array];
    v297 = 0u;
    v298 = 0u;
    v295 = 0u;
    v296 = 0u;
    v232 = salientObjects;
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
            asset12 = [entryCopy asset];
            localIdentifier8 = [asset12 localIdentifier];
            [v235 boundingBox];
            v281 = NSStringFromRect(v340);
            *buf = 138412546;
            v303 = localIdentifier8;
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

    results43 = [entryCopy results];
    [results43 setObjectSaliencyRects:v231];
  }

  sceneprintRequest = [requestsCopy sceneprintRequest];
  results44 = [sceneprintRequest results];
  v244 = [results44 count] == 1;

  if (v244)
  {
    sceneprintRequest2 = [requestsCopy sceneprintRequest];
    results45 = [sceneprintRequest2 results];
    firstObject9 = [results45 firstObject];
    sceneprints = [firstObject9 sceneprints];
    firstObject10 = [sceneprints firstObject];

    if ([firstObject10 elementType] == 1 && objc_msgSend(firstObject10, "elementCount") == 768)
    {
      descriptorData = [firstObject10 descriptorData];
      v251 = [descriptorData length] == 3072;

      if (v251)
      {
        v252 = [NSKeyedArchiver archivedDataWithRootObject:firstObject10 requiringSecureCoding:1 error:0];
        results46 = [entryCopy results];
        [results46 setSceneprintData:v252];

        if (!+[VCPPreAnalysisRequests includePA])
        {
LABEL_102:
          imagefingerprintsRequest = [requestsCopy imagefingerprintsRequest];
          v268 = (vcp_abnormalImageDimensionForSceneNet & 1) == 0 && imagefingerprintsRequest != 0;

          if (v268)
          {
            imagefingerprintsRequest2 = [requestsCopy imagefingerprintsRequest];
            results47 = [imagefingerprintsRequest2 results];

            if ([results47 count])
            {
              firstObject11 = [results47 firstObject];
              fingerprintHashes = [firstObject11 fingerprintHashes];

              if (fingerprintHashes && [fingerprintHashes count] == 2)
              {
                v273 = [fingerprintHashes objectAtIndexedSubscript:0];
                hashData = [v273 hashData];

                if ([hashData length] == 24)
                {
                  v275 = [fingerprintHashes objectAtIndexedSubscript:1];
                  hashData2 = [v275 hashData];

                  if ([hashData2 length] == 24)
                  {
                    v285 = [NSMutableData dataWithBytes:&unk_10024CB74 length:1];
                    [v285 appendData:hashData2];
                    v288 = v285;

                    results48 = [entryCopy results];
                    [results48 setDuplicateMatchingFeature:hashData];

                    results49 = [entryCopy results];
                    [results49 setDuplicateMatchingAlternateFeature:v288];

                    v178 = 0;
                    hashData2 = v288;
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

        adjustmentsRequest = [requestsCopy adjustmentsRequest];
        results50 = [adjustmentsRequest results];
        v256 = [results50 count] == 0;

        if (!v256)
        {
          adjustmentsRequest2 = [requestsCopy adjustmentsRequest];
          results51 = [adjustmentsRequest2 results];
          v287 = [results51 objectAtIndexedSubscript:0];

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
          results52 = [entryCopy results];
          [results52 setColorNormalizationData:v264];

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

- (int)_performIVSAnalysisForAssetEntry:(id)entry pixelBuffer:(__CVBuffer *)buffer results:(id *)results safetyQRResults:(unint64_t *)rResults
{
  entryCopy = entry;
  asset = [entryCopy asset];
  vcp_abnormalImageDimensionForSceneNet = [asset vcp_abnormalImageDimensionForSceneNet];

  if (vcp_abnormalImageDimensionForSceneNet)
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v21 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v21))
      {
        v22 = objc_opt_class();
        asset2 = [entryCopy asset];
        localIdentifier = [asset2 localIdentifier];
        *buf = 138412546;
        v52 = v22;
        v53 = 2112;
        v54 = localIdentifier;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "[%@][%@] Tiny image, skipping performing IVS Analysis .", buf, 0x16u);
      }
    }

    v25 = 0;
  }

  else
  {
    asset3 = [entryCopy asset];
    if ([asset3 mad_isShared])
    {
      v14 = +[MADUserSafetyQRCodeDetector enabled];

      if (v14)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = objc_alloc_init(MADUserSafetyQRCodeDetector);
        [v16 processPixelBuffer:buffer orientation:1 signpostPayload:&stru_1002890F8];
        sensitivity = [v16 sensitivity];
        if (sensitivity)
        {
          v18 = _os_feature_enabled_impl();
          unsignedIntegerValue = [sensitivity unsignedIntegerValue];
          v20 = 3;
          if (!v18)
          {
            v20 = 1;
          }

          *rResults = unsignedIntegerValue & v20;
        }

        else if (MediaAnalysisLogLevel() >= 4)
        {
          v26 = VCPLogToOSLogType[4];
          if (os_log_type_enabled(&_os_log_default, v26))
          {
            v49 = objc_opt_class();
            asset4 = [entryCopy asset];
            localIdentifier2 = [asset4 localIdentifier];
            *buf = 138412546;
            v52 = v49;
            v53 = 2112;
            v54 = localIdentifier2;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v26, "[%@][%@] processing failed.", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v15);
      }
    }

    else
    {
    }

    safetyTypeNPool = [(MADSceneResources *)self->_resources safetyTypeNPool];
    getObject = [safetyTypeNPool getObject];

    object = [getObject object];
    LODWORD(safetyTypeNPool) = object == 0;

    if (safetyTypeNPool)
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

      object2 = [getObject object];
      v50 = 0;
      v37 = [object2 analyzePixelBuffer:buffer error:&v50];
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

      else if (results)
      {
        v47 = v37;
        v25 = 0;
        *results = v37;
      }

      else
      {
        v25 = 0;
      }
    }
  }

  return v25;
}

- (int)_performSceneNetAnalysisForAssetEntry:(id)entry withImage:(id)image andRequests:(id)requests
{
  entryCopy = entry;
  imageCopy = image;
  v91 = entryCopy;
  requestsCopy = requests;
  v120 = 0;
  asset = [entryCopy asset];
  vcp_abnormalImageDimensionForSceneNet = [asset vcp_abnormalImageDimensionForSceneNet];

  if (vcp_abnormalImageDimensionForSceneNet)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [VNImageRequestHandler alloc];
    sourcePixelBuffer = [imageCopy sourcePixelBuffer];
    session = [(MADSceneResources *)self->_resources session];
    v14 = [v11 initWithCVPixelBuffer:sourcePixelBuffer options:&__NSDictionary0__struct session:session];

    v15 = VCPSignPostLog();
    v16 = os_signpost_id_generate(v15);

    v17 = VCPSignPostLog();
    v18 = v17;
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "VNImageRequestHandler_PerformRequests", "", buf, 2u);
    }

    gatherAvailableRequests = [requestsCopy gatherAvailableRequests];
    v119 = 0;
    v20 = [v14 performRequests:gatherAvailableRequests error:&v119];
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
        v98 = -[VCPMADSceneAssetBatch _performIVSAnalysisForAssetEntry:pixelBuffer:results:safetyQRResults:](self, "_performIVSAnalysisForAssetEntry:pixelBuffer:results:safetyQRResults:", v91, [imageCopy sourcePixelBuffer], &v118, &v120);
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
      sceneprintRequest = [requestsCopy sceneprintRequest];
      results = [sceneprintRequest results];

      firstObject = [results firstObject];
      sceneprints = [firstObject sceneprints];
      firstObject2 = [sceneprints firstObject];

      v64 = [(VCPMADSceneAssetBatch *)self _performWallpaperAnalysisForAssetEntry:v91 withSceneprint:firstObject2];
      objc_autoreleasePoolPop(v58);
      if (v64)
      {
        v98 = v64;
        goto LABEL_95;
      }
    }

    if (_os_feature_enabled_impl())
    {
      sceneprintRequest2 = [requestsCopy sceneprintRequest];
      results2 = [sceneprintRequest2 results];

      firstObject3 = [results2 firstObject];
      sceneprints2 = [firstObject3 sceneprints];
      firstObject4 = [sceneprints2 firstObject];

      if (firstObject4)
      {
        safetyTypeGVPool = [(MADSceneResources *)self->_resources safetyTypeGVPool];
        getObject = [safetyTypeGVPool getObject];

        object = [getObject object];
        v73 = object == 0;

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

          object2 = [getObject object];
          descriptorData = [firstObject4 descriptorData];
          v101 = 0;
          v80 = [object2 analyzePixelBuffer:0 scenePrint:descriptorData error:&v101];
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
    v98 = [(VCPMADSceneAssetBatch *)self _collectResultsForAssetEntry:v91 fromRequests:requestsCopy safetyNResults:v25 safetyGVResults:v80 safetyQRResults:v120];
LABEL_94:

    goto LABEL_95;
  }

  cf = 0;
  [requestsCopy mapAvailableRequestsToResolution];
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v95 = v114 = 0u;
  allKeys = [v95 allKeys];
  obj = allKeys;
  v28 = [allKeys countByEnumeratingWithState:&v113 objects:v123 count:16];
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
          Width = CVPixelBufferGetWidth([imageCopy sourcePixelBuffer]);
          Height = CVPixelBufferGetHeight([imageCopy sourcePixelBuffer]);
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

        v38 = [imageCopy pixelBuffer:&cf width:Width height:{Height, v90}];
        if (v38)
        {
          v39 = 0;
          v98 = v38;
        }

        else
        {
          v40 = [VNImageRequestHandler alloc];
          v41 = cf;
          session2 = [(MADSceneResources *)self->_resources session];
          v43 = [v40 initWithCVPixelBuffer:v41 options:&__NSDictionary0__struct session:session2];

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
      allKeys = obj;
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

  v56 = [imageCopy pixelBuffer:&cf width:299 height:299];
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

- (int)_performBlurAnalysisForAssetEntry:(id)entry withLumaPixelBuffer:(__CVBuffer *)buffer
{
  entryCopy = entry;
  v7 = entryCopy;
  if (buffer)
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
    asset = [v7 asset];
    v62 = [v13 initWithFaceResults:0 sdof:objc_msgSend(asset revision:{"vcp_isSdofPhoto"), v12}];

    asset2 = [v7 asset];
    LOBYTE(v12) = [asset2 vcp_abnormalImageDimensionForSceneNet] == 0;

    if (v12)
    {
      v63 = 0;
      v22 = [v62 analyzePixelBuffer:buffer flags:0 results:&v63 cancel:&stru_100283988];
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

        results = [v7 results];
        v32 = results;
        LODWORD(v33) = 1.0;
        if (v30 < 1.0)
        {
          *&v33 = v30;
        }

        if (v30 <= 0.0)
        {
          *&v33 = 0.0;
        }

        [results setBlurrinessScore:v33];

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
      Width = CVPixelBufferGetWidth(buffer);
      Height = CVPixelBufferGetHeight(buffer);
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
      monochromeBufferCreator = [(MADSceneResources *)self->_resources monochromeBufferCreator];
      v22 = [monochromeBufferCreator createPixelBuffer:&v72];

      if (!v22)
      {
        bufferCopy = buffer;
        v71 = 1;
        v22 = CVPixelBufferLockBaseAddress(buffer, 1uLL);
        LODWORD(v69) = v22;
        if (!v22 || os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR) && (LODWORD(buf.data) = 134218240, *(&buf.data + 4) = bufferCopy, WORD2(buf.height) = 1024, *(&buf.height + 6) = v22, _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", &buf, 0x12u), (v22 = v69) == 0))
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

            BaseAddress = CVPixelBufferGetBaseAddress(buffer);
            BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
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

            results2 = [v7 results];
            v52 = results2;
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

            [results2 setBlurrinessScore:v54];

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

          if (bufferCopy)
          {
            if (!v69)
            {
              v36 = CVPixelBufferUnlockBaseAddress(bufferCopy, v71);
              if (v36)
              {
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(buf.data) = 134218240;
                  *(&buf.data + 4) = bufferCopy;
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

  results3 = [entryCopy results];
  LODWORD(v21) = 0.5;
  [results3 setBlurrinessScore:v21];

  v22 = 0;
LABEL_45:

  return v22;
}

- (int)_performExposureAnalysisForAssetEntry:(id)entry withLumaPixelBuffer:(__CVBuffer *)buffer
{
  entryCopy = entry;
  v6 = entryCopy;
  if (buffer)
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
    v12 = [v11 analyzePixelBuffer:buffer flags:0 results:&v28 cancel:&stru_1002839A8];
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

      results = [v6 results];
      v22 = results;
      LODWORD(v23) = 1.0;
      if (v20 < 1.0)
      {
        *&v23 = v20;
      }

      if (v20 <= 0.0)
      {
        *&v23 = 0.0;
      }

      [results setExposureScore:v23];
    }
  }

  else
  {
    results2 = [entryCopy results];
    LODWORD(v25) = 0.5;
    [results2 setExposureScore:v25];

    v12 = 0;
  }

  return v12;
}

- (int)_performRotationAnalysisForAssetEntry:(id)entry withColorPixelBuffer:(__CVBuffer *)buffer
{
  entryCopy = entry;
  v7 = entryCopy;
  if (buffer)
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
    rotationBufferCreator = [(MADSceneResources *)self->_resources rotationBufferCreator];
    v13 = [rotationBufferCreator createPixelBuffer:&cf];

    if (!v13)
    {
      pixelBuffer = buffer;
      unlockFlags = 1;
      v13 = CVPixelBufferLockBaseAddress(buffer, 1uLL);
      LODWORD(v50) = v13;
      if (!v13 || os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR) && (LODWORD(buf.data) = 134218240, *(&buf.data + 4) = pixelBuffer, WORD2(buf.height) = 1024, *(&buf.height + 6) = v13, _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", &buf, 0x12u), (v13 = v50) == 0))
      {
        buf.data = CVPixelBufferGetBaseAddress(buffer);
        buf.height = CVPixelBufferGetHeight(buffer);
        buf.width = CVPixelBufferGetWidth(buffer);
        buf.rowBytes = CVPixelBufferGetBytesPerRow(buffer);
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

                  rotationModel = [(MADSceneResources *)self->_resources rotationModel];
                  v23 = cf;
                  inputFeatureName = [rotationModel inputFeatureName];
                  v25 = [VCPMAMLFeatureProvider featureProviderWithCVPixelBuffer:v23 andFeatureName:inputFeatureName];

                  model = [rotationModel model];
                  v45 = 0;
                  v27 = [model predictionFromFeatures:v25 error:&v45];
                  v43 = v45;

                  outputFeatureName = [rotationModel outputFeatureName];
                  v29 = [v27 featureValueForName:outputFeatureName];

                  multiArrayValue = [v29 multiArrayValue];
                  if ([multiArrayValue count] == 4)
                  {
                    v31 = 0;
                    v32 = 0;
                    v33 = 0.0;
                    do
                    {
                      v34 = [multiArrayValue objectAtIndexedSubscript:v31];
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
                    results = [v7 results];
                    [results setProbableRotationDirection:(v32 + 1)];

                    results2 = [v7 results];
                    *&v39 = v33;
                    [results2 setProbableRotationDirectionConfidence:v39];

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
    results3 = [entryCopy results];
    [results3 setProbableRotationDirection:1];

    results4 = [v7 results];
    [results4 setProbableRotationDirectionConfidence:0.0];

    v13 = 0;
  }

  return v13;
}

- (int)_performEmbeddingAnalysisForAssetEntry:(id)entry withColorPixelBuffer:(__CVBuffer *)buffer
{
  entryCopy = entry;
  asset = [entryCopy asset];
  localIdentifier = [asset localIdentifier];
  v9 = [NSString stringWithFormat:@"[Scene][Embedding][%@]", localIdentifier];

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
  embeddingBufferCreator = [(MADSceneResources *)self->_resources embeddingBufferCreator];
  v15 = [embeddingBufferCreator createPixelBuffer:&cf];

  if (!v15)
  {
    LODWORD(v50) = 0;
    pixelBuffer = buffer;
    unlockFlags = 1;
    if (!buffer)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10003B104();
      }

      v15 = -50;
      goto LABEL_5;
    }

    v15 = CVPixelBufferLockBaseAddress(buffer, 1uLL);
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

    buf.data = CVPixelBufferGetBaseAddress(buffer);
    buf.height = CVPixelBufferGetHeight(buffer);
    buf.width = CVPixelBufferGetWidth(buffer);
    buf.rowBytes = CVPixelBufferGetBytesPerRow(buffer);
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

    firstObject = [v28 firstObject];
    v30 = [firstObject objectForKeyedSubscript:MediaAnalysisResultAttributesKey];
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

    asset2 = [entryCopy asset];
    localIdentifier2 = [asset2 localIdentifier];
    v58 = MediaAnalysisResultsKey;
    v59 = v25;
    v33 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v45 = 0;
    v34 = [VSKAsset mad_imageAssetWithLocalIdentifier:localIdentifier2 mediaAnalysisResults:v33 error:&v45];
    v43 = v45;
    results = [entryCopy results];
    [results setImageEmbeddingResults:v34];

    results2 = [entryCopy results];
    imageEmbeddingResults = [results2 imageEmbeddingResults];
    LODWORD(results) = imageEmbeddingResults == 0;

    if (results)
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
      results3 = [entryCopy results];
      [results3 setImageEmbeddingVersion:75];

      v15 = 0;
    }

    v42 = v43;
    goto LABEL_55;
  }

LABEL_5:
  sub_100002CBC(&cf);

  return v15;
}

- (void)_processAssetEntry:(id)entry resourceURL:(id)l completionHandler:(id)handler
{
  entryCopy = entry;
  lCopy = l;
  handlerCopy = handler;
  asset = [entryCopy asset];
  localIdentifier = [asset localIdentifier];
  v57 = [NSString stringWithFormat:@"[Scene][%@]", localIdentifier];

  if (([entryCopy needsSceneProcessing] & 1) == 0 && (objc_msgSend(entryCopy, "needsEmbeddingProcessing") & 1) == 0)
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
      asset2 = [entryCopy asset];
      vcp_typeDescription = [asset2 vcp_typeDescription];
      needsSceneProcessing = [entryCopy needsSceneProcessing];
      needsEmbeddingProcessing = [entryCopy needsEmbeddingProcessing];
      v17 = @"NO";
      *buf = 138413058;
      *&buf[4] = v57;
      if (needsSceneProcessing)
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      *&buf[12] = 2112;
      *&buf[14] = vcp_typeDescription;
      if (needsEmbeddingProcessing)
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

    [entryCopy setStatus:4294967168];
LABEL_28:
    handlerCopy[2](handlerCopy);
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
  v26 = [(VCPMADSceneAssetBatch *)self _createRequests:&v75 forAssetEntry:entryCopy];
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
    handlerCopy[2](handlerCopy);
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

    mapAvailableRequestsToResolution = [*(*&buf[8] + 40) mapAvailableRequestsToResolution];
    allKeys = [mapAvailableRequestsToResolution allKeys];

    cf = 0;
    v74 = 0;
    imageLoader = [(MADSceneResources *)self->_resources imageLoader];
    asset3 = [entryCopy asset];
    vcp_abnormalImageDimensionForSceneNet = [asset3 vcp_abnormalImageDimensionForSceneNet];
    if ([entryCopy needsSceneProcessing])
    {
      v39 = allKeys;
    }

    else
    {
      v39 = &__NSArray0__struct;
    }

    v72 = 0;
    v40 = [imageLoader loadImageURL:lCopy abnormalDimension:vcp_abnormalImageDimensionForSceneNet withNonPanoPreWarmSizes:v39 toColorPixelBuffer:&cf lumaPixelBuffer:&v74 andImage:&v72];
    v41 = v72;
    [entryCopy setStatus:v40];

    v42 = VCPSignPostLog();
    v43 = v42;
    if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
    {
      *v76 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, OS_SIGNPOST_INTERVAL_END, v32, "VCPMADSceneAssetEntryProcess_Decode", "", v76, 2u);
    }

    if ([entryCopy status])
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v44 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v44))
        {
          *v76 = 138412546;
          v77 = v57;
          v78 = 2112;
          v79 = lCopy;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v44, "%@ Failed to load resourceURL: %@", v76, 0x16u);
        }
      }

      [entryCopy setErrorCode:100];
      [entryCopy setErrorLine:1592];
      dispatch_semaphore_signal(self->_inProcessAssetBudget);
      handlerCopy[2](handlerCopy);
    }

    else
    {
      scheduler = self->_scheduler;
      scenenetGroup = self->_scenenetGroup;
      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3221225472;
      v65[2] = sub_10003584C;
      v65[3] = &unk_100283A18;
      v47 = entryCopy;
      v66 = v47;
      v48 = v57;
      v67 = v48;
      selfCopy = self;
      v69 = v41;
      v71 = buf;
      v49 = handlerCopy;
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
      selfCopy2 = self;
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

    selfCopy3 = self;
    while (1)
    {
      downloadGroup = selfCopy3->_downloadGroup;
      v13 = dispatch_time(0, 500000000);
      if (!dispatch_group_wait(downloadGroup, v13))
      {
        goto LABEL_28;
      }

      cancelBlock = selfCopy3->_cancelBlock;
      if (cancelBlock)
      {
        selfCopy3 = self;
        if (cancelBlock[2]())
        {
          break;
        }
      }

      [(VCPMADSceneAssetBatch *)selfCopy3 _downloadInactiveTimeInterval];
      selfCopy3 = self;
      if (v15 > 60.0)
      {
        if (MediaAnalysisLogLevel() >= 5)
        {
          v16 = VCPLogToOSLogType[5];
          selfCopy6 = self;
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
        selfCopy6 = self;
LABEL_27:
        [(VCPMADSceneAssetBatch *)selfCopy6 _cancelRemainingDownloadsWithStatus:v18];
        goto LABEL_28;
      }
    }

    if (MediaAnalysisLogLevel() >= 5)
    {
      v19 = VCPLogToOSLogType[5];
      selfCopy6 = self;
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
  selfCopy8 = self;
  while (v104 < [(NSMutableArray *)selfCopy8->_assetEntries count])
  {
    context = objc_autoreleasePoolPush();
    v105 = [(NSMutableArray *)self->_assetEntries objectAtIndexedSubscript:v104];
    asset = [v105 asset];
    localIdentifier = [asset localIdentifier];
    v102 = [NSString stringWithFormat:@"[Scene][%@]", localIdentifier];

    asset2 = [v105 asset];
    adjustmentVersion = [asset2 adjustmentVersion];
    v25 = adjustmentVersion == 0;

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

      asset3 = [v105 asset];
      v101 = [PHAssetResource vcp_allAcceptableResourcesForAsset:asset3];

      vcp_thumbnailResource = [v101 vcp_thumbnailResource];
      v31 = VCPSignPostLog();
      v32 = v31;
      if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_INTERVAL_END, v27, "VCPMADSceneAssetEntry_QueryResource", "", buf, 2u);
      }

      v33 = vcp_thumbnailResource;
      if ([vcp_thumbnailResource vcp_isLocallyAvailable])
      {
        if ([vcp_thumbnailResource vcp_hasExtremeAbnormalDimensionForScene])
        {
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, type))
          {
            pixelWidth = [vcp_thumbnailResource pixelWidth];
            pixelHeight = [vcp_thumbnailResource pixelHeight];
            *buf = 138412802;
            v115 = v102;
            v116 = 1024;
            *v117 = pixelWidth;
            *&v117[4] = 1024;
            *&v117[6] = pixelHeight;
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

            mad_computeSyncResource = [v101 mad_computeSyncResource];
            asset4 = [v105 asset];
            v45 = [mad_computeSyncResource mad_existingAnalysisFromComputeSyncForAsset:asset4 allowDownload:0 cancel:self->_cancelBlock];

            v46 = VCPSignPostLog();
            v47 = v46;
            if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v47, OS_SIGNPOST_INTERVAL_END, v40, "VCPMADSceneAssetBatch_UnpackComputeSync", "", buf, 2u);
            }

            imageEmbeddingVSKAsset = [v45 imageEmbeddingVSKAsset];
            if (imageEmbeddingVSKAsset)
            {
              v49 = v94 > [v45 imageEmbeddingVersion];

              if (!v49)
              {
                imageEmbeddingVSKAsset2 = [v45 imageEmbeddingVSKAsset];
                results = [v105 results];
                [results setImageEmbeddingResults:imageEmbeddingVSKAsset2];

                imageEmbeddingVersion = [v45 imageEmbeddingVersion];
                results2 = [v105 results];
                [results2 setImageEmbeddingVersion:imageEmbeddingVersion];

                if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v92))
                {
                  results3 = [v105 results];
                  imageEmbeddingVersion2 = [results3 imageEmbeddingVersion];
                  *buf = 138412546;
                  v115 = v102;
                  v116 = 1024;
                  *v117 = imageEmbeddingVersion2;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v92, "%@ Reusing image embedding results (v%d) from compute sync", buf, 0x12u);
                }
              }
            }

            results4 = [v105 results];
            v57 = [results4 imageEmbeddingVersion] == 74;

            if (v57)
            {
              if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v93))
              {
                results5 = [v105 results];
                imageEmbeddingVersion3 = [results5 imageEmbeddingVersion];
                *buf = 138412802;
                v115 = v102;
                v116 = 1024;
                *v117 = imageEmbeddingVersion3;
                *&v117[4] = 1024;
                *&v117[6] = 75;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v93, "%@ Bumping image embedding v%d->v%d to avoid reprocessing", buf, 0x18u);
              }

              results6 = [v105 results];
              [results6 setImageEmbeddingVersion:75];
            }

            results7 = [v105 results];
            imageEmbeddingResults = [results7 imageEmbeddingResults];
            v63 = [imageEmbeddingResults mad_embeddingVersion] == 8;

            if (v63)
            {
              results8 = [v105 results];
              imageEmbeddingResults2 = [results8 imageEmbeddingResults];
              v66 = [imageEmbeddingResults2 mad_updateAssetWithEmbeddingVersion:9];
              results9 = [v105 results];
              [results9 setImageEmbeddingResults:v66];
            }
          }

          else
          {
            asset5 = [v105 asset];
            mad_computeSyncResource = [VSKAsset mad_fetchImageEmbeddingForPhotosAsset:asset5];

            if (mad_computeSyncResource)
            {
              results10 = [v105 results];
              [results10 setImageEmbeddingResults:mad_computeSyncResource];

              asset6 = [v105 asset];
              mediaAnalysisProperties = [asset6 mediaAnalysisProperties];
              imageEmbeddingVersion4 = [mediaAnalysisProperties imageEmbeddingVersion];
              results11 = [v105 results];
              [results11 setImageEmbeddingVersion:imageEmbeddingVersion4];
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

        privateFileURL = [vcp_thumbnailResource privateFileURL];
        v109[0] = _NSConcreteStackBlock;
        v109[1] = 3221225472;
        v109[2] = sub_100037648;
        v109[3] = &unk_100283A60;
        v109[4] = v82;
        v109[5] = 0;
        [(VCPMADSceneAssetBatch *)self _processAssetEntry:v105 resourceURL:privateFileURL completionHandler:v109];

        v33 = vcp_thumbnailResource;
        objc_autoreleasePoolPop(v80);
      }

      else
      {
        if (vcp_thumbnailResource)
        {
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, type))
          {
            isLocallyAvailable = [vcp_thumbnailResource isLocallyAvailable];
            *buf = 138412802;
            v115 = v102;
            v116 = 2112;
            *v117 = &stru_1002890F8;
            *&v117[8] = 1024;
            v118 = isLocallyAvailable;
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
          v33 = vcp_thumbnailResource;
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
    selfCopy8 = self;
    ++v104;
  }

  objc_initWeak(buf, selfCopy8);
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

- (int)_publishEmbeddingResultsWithPhotoLibrary:(id)library
{
  v34 = [MADVectorDatabaseChangeManager sharedManagerForPhotoLibrary:library];
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
          asset = [v6 asset];
          localIdentifier = [asset localIdentifier];
          v10 = [NSString stringWithFormat:@"[Scene][Embedding][%@]", localIdentifier];

          if ([v6 status] || objc_msgSend(v6, "imageEmbeddingStatus"))
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
            {
              status = [v6 status];
              *buf = 138412546;
              v48 = v10;
              v49 = 1024;
              v50 = status;
              v12 = type;
              v13 = "%@ Analysis failed (%d); skipping";
              v14 = 18;
LABEL_12:
              _os_log_impl(&_mh_execute_header, &_os_log_default, v12, v13, buf, v14);
            }
          }

          else if ([v6 needsEmbeddingProcessing])
          {
            results = [v6 results];
            imageEmbeddingResults = [results imageEmbeddingResults];
            v17 = imageEmbeddingResults == 0;

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
              results2 = [v6 results];
              imageEmbeddingResults2 = [results2 imageEmbeddingResults];
              results3 = [v6 results];
              v21 = +[MADVSKEmbeddingResults resultsWithImageEmbedding:imageEmbeddingVersion:videoEmbeddingAsset:videoEmbeddingVersion:](MADVSKEmbeddingResults, "resultsWithImageEmbedding:imageEmbeddingVersion:videoEmbeddingAsset:videoEmbeddingVersion:", imageEmbeddingResults2, [results3 imageEmbeddingVersion], 0, 0);

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

    publishPendingChanges = [v34 publishPendingChanges];
    if (publishPendingChanges)
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

    publishPendingChanges = -18;
  }

  return publishPendingChanges;
}

- (int)_publishPhotosResultsWithPhotoLibrary:(id)library
{
  libraryCopy = library;
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
  v10 = [libraryCopy mad_performChangesAndWait:v8 activity:2 cancelBlock:cancelBlock extendTimeoutBlock:&stru_100283AA8 error:&v28];
  v11 = v28;
  v12 = +[MADStateHandler sharedStateHandler];
  [v12 exitKnownTimeoutRisk];

  v13 = +[MADStateHandler sharedStateHandler];
  [v13 addBreadcrumb:{@"[Scene] Finished persisting %d assets to Photos", -[NSMutableArray count](self->_assetEntries, "count")}];

  if (v10)
  {
    code = 0;
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

    code = [v11 code];
  }

  return code;
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
      status = [v7 status];
      if (status == -128)
      {
        v3 = -128;
      }

      else if ([v7 status] == -23808)
      {
        v3 = -23808;
      }

      objc_autoreleasePoolPop(v8);
      if (status == -128)
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
      asset = [v5 asset];
      localIdentifier = [asset localIdentifier];
      v41 = [NSString stringWithFormat:@"[Scene][%@][Legacy]", localIdentifier];

      if (![v5 status])
      {
        if ([v5 sceneStatus])
        {
          sceneStatus = [v5 sceneStatus];
        }

        else
        {
          sceneStatus = [v5 imageEmbeddingStatus];
        }

        [v5 setStatus:sceneStatus];
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
        asset2 = [v5 asset];
        localIdentifier2 = [asset2 localIdentifier];
        v30 = [(VCPDatabaseWriter *)analysisDatabase removeProcessingStatusForLocalIdentifier:localIdentifier2 andTaskID:2];

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
          previousAttempts = [v5 previousAttempts];
          asset3 = [v5 asset];
          previousStatus = [v5 previousStatus];
          lastAttemptDate = [v5 lastAttemptDate];
          asset4 = [v5 asset];
          mediaType = [asset4 mediaType];
          asset5 = [v5 asset];
          v15 = -[VCPDatabaseWriter setAttempts:asset:taskID:status:lastAttemptDate:mediaType:mediaSubtypes:errorCode:errorLine:](v9, "setAttempts:asset:taskID:status:lastAttemptDate:mediaType:mediaSubtypes:errorCode:errorLine:", previousAttempts, asset3, 2, previousStatus, lastAttemptDate, mediaType, [asset5 mediaSubtypes], objc_msgSend(v5, "previousErrorCode"), objc_msgSend(v5, "previousErrorLine"));

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
      asset6 = [v5 asset];
      currentAttemptDate = [v5 currentAttemptDate];
      v19 = [asset6 mad_nextAttemptDateForStatus:v16 currentAttemptDate:currentAttemptDate attemptCount:{objc_msgSend(v5, "previousAttempts") + 1}];

      v20 = self->_analysisDatabase;
      errorCode = [v5 errorCode];
      errorLine = [v5 errorLine];
      asset7 = [v5 asset];
      localIdentifier3 = [asset7 localIdentifier];
      v25 = [(VCPDatabaseWriter *)v20 updateProcessingStatus:v16 andNextAttemptDate:v19 andErrorCode:errorCode andErrorLine:errorLine forLocalIdentifier:localIdentifier3 andTaskID:2];

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

- (int)_publishProcessingStatusForPhotoLibrary:(id)library
{
  v8 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100039968;
  v9[3] = &unk_100283AD0;
  v9[4] = self;
  v3 = [library mad_performAnalysisDataStoreChanges:v9 error:&v8];
  v4 = v8;
  v5 = v4;
  if (v3)
  {
    code = 0;
  }

  else
  {
    code = [v4 code];
  }

  return code;
}

- (void)_reportRunSessionAnalyticsWithPublishInterval:(double)interval
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
              asset = [v9 asset];
              localIdentifier = [asset localIdentifier];
              *buf = 138412546;
              v29 = localIdentifier;
              v30 = 2112;
              v31 = v11;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[Scene][%@] Asset failed processing. Failure: %@", buf, 0x16u);
            }

            if ([v9 previousAttempts] >= v21 && objc_msgSend(v9, "previousAttempts") <= v19)
            {
              v15 = +[VCPAutoBugCapture sharedCapturer];
              asset2 = [v9 asset];
              [v15 captureProcessingFailure:v11 taskID:2 asset:asset2 previousAttempts:{objc_msgSend(v9, "previousAttempts")}];
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
  [v17 accumulateDoubleValue:@"TotalPublishTimeInSeconds" forField:@"com.apple.mediaanalysisd.SceneAnalysisRunSession" andEvent:interval];
}

- (int)publish
{
  (*(self->_waitForProcessToComplete + 2))();
  v3 = VCPTaskIDDescription();
  _allowConcurrentSceneProcessing = [objc_opt_class() _allowConcurrentSceneProcessing];
  v5 = @"Serial";
  if (_allowConcurrentSceneProcessing)
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
    firstObject = [(NSMutableArray *)self->_assetEntries firstObject];
    asset = [firstObject asset];
    photoLibrary = [asset photoLibrary];

    v13 = [MADPhotosDataStoreClient needsDataStoreMigrationForPhotoLibrary:photoLibrary];
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

      _propagateAssetProcessingStatus = -18;
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
      _propagateAssetProcessingStatus = [(VCPMADSceneAssetBatch *)self _propagateAssetProcessingStatus];
      if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
      {
        v21 = [(VCPMADSceneAssetBatch *)self _publishEmbeddingResultsWithPhotoLibrary:photoLibrary];
        if (!_propagateAssetProcessingStatus && v21 != 0)
        {
          _propagateAssetProcessingStatus = v21;
        }
      }

      v23 = [(VCPMADSceneAssetBatch *)self _publishPhotosResultsWithPhotoLibrary:photoLibrary];
      if (_propagateAssetProcessingStatus)
      {
        v24 = 1;
      }

      else
      {
        v24 = v23 == 0;
      }

      if (!v24)
      {
        _propagateAssetProcessingStatus = v23;
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
          v26 = [(VCPMADSceneAssetBatch *)self _publishProcessingStatusForPhotoLibrary:photoLibrary];
          if (!_propagateAssetProcessingStatus && v26 != 0)
          {
            _propagateAssetProcessingStatus = v26;
          }
        }

        if (+[VCPDatabaseWriter isLegacyPersistEnabled])
        {
          _publishProcessingStatusToLegacyDatabase = [(VCPMADSceneAssetBatch *)self _publishProcessingStatusToLegacyDatabase];
          commit = [(VCPDatabaseWriter *)self->_analysisDatabase commit];
          if (_propagateAssetProcessingStatus)
          {
            v30 = 1;
          }

          else
          {
            v30 = _publishProcessingStatusToLegacyDatabase == 0;
          }

          if (v30)
          {
            v31 = _propagateAssetProcessingStatus;
          }

          else
          {
            v31 = _publishProcessingStatusToLegacyDatabase;
          }

          if (v31)
          {
            v32 = 1;
          }

          else
          {
            v32 = commit == 0;
          }

          if (v32)
          {
            _propagateAssetProcessingStatus = v31;
          }

          else
          {
            _propagateAssetProcessingStatus = commit;
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

        v38 = [MADVectorDatabaseManager sharedDatabaseWithPhotoLibrary:photoLibrary];
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

          _propagateAssetProcessingStatus = v39;
        }
      }
    }
  }

  else
  {
    _propagateAssetProcessingStatus = 0;
  }

  return _propagateAssetProcessingStatus;
}

- (void)_reportCoreAnalyticsWithEntry:(id)entry
{
  entryCopy = entry;
  if (MediaAnalysisLogLevel() >= 7)
  {
    v4 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      asset = [entryCopy asset];
      localIdentifier = [asset localIdentifier];
      *buf = 138412290;
      v17 = localIdentifier;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[Scene] Prepare to report CoreAnalytics for asset %@ ... ", buf, 0xCu);
    }
  }

  v7 = +[NSMutableDictionary dictionary];
  [v7 setObject:@"Scene" forKeyedSubscript:@"Activity"];
  v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [entryCopy status] == 0);
  [v7 setObject:v8 forKeyedSubscript:@"AnalyzeSuccess"];

  asset2 = [entryCopy asset];
  vcp_typeDescription = [asset2 vcp_typeDescription];
  [v7 setObject:vcp_typeDescription forKeyedSubscript:@"AssetType"];

  if ([entryCopy status] == -23802)
  {
    v11 = @"-NoResource";
LABEL_10:
    [v7 setObject:v11 forKeyedSubscript:@"AnalysisStatusExtension"];
    goto LABEL_11;
  }

  if ([entryCopy status] == -23808)
  {
    v11 = @"-DownloadThrottled";
    goto LABEL_10;
  }

  if ([entryCopy status] == -128)
  {
    v11 = @"-Canceled";
    goto LABEL_10;
  }

  if ([entryCopy status])
  {
    v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"-SoftFailure-%d", [entryCopy status]);
    [v7 setObject:v15 forKeyedSubscript:@"AnalysisStatusExtension"];
  }

LABEL_11:
  if ([entryCopy errorCode] >= 2 && objc_msgSend(entryCopy, "errorCode") <= 0x9F)
  {
    [entryCopy errorCode];
    v12 = MADErrorStringFromCode();
    [v7 setObject:v12 forKeyedSubscript:VCPAnalyticsFieldMADErrorCode];

    v13 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [entryCopy errorLine]);
    [v7 setObject:v13 forKeyedSubscript:VCPAnalyticsFieldMADErrorLine];
  }

  v14 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v14 sendEvent:@"com.apple.mediaanalysisd.AnalysisPerAssetInfo" withAnalytics:v7];
}

@end