@interface MADPhotosFaceAssetProcessingTask
+ (BOOL)_concurrentFaceAnalysis;
+ (id)taskWithAnalysisDatabase:(id)a3 gallery:(id)a4;
+ (unint64_t)_concurrentQueueCount;
- (MADPhotosFaceAssetProcessingTask)initWithAnalysisDatabase:(id)a3 gallery:(id)a4;
- (double)downloadInactiveTimeInterval;
- (id)assetLocalIdentifiers;
- (int)_prepare;
- (int)_process;
- (int)_propagateAssetProcessingStatus;
- (int)_publish;
- (int)_publishProcessingStatusForPhotoLibrary:(id)a3;
- (int)_publishProcessingStatusToLegacyDatabase;
- (int)removeDownloadRequestIDForAsset:(id)a3;
- (void)_asyncAnalysisWithAssetEntry:(id)a3 resource:(id)a4 resourceURL:(id)a5 isBestResource:(BOOL)a6;
- (void)_collectVNAnimalObservationResults:(id)a3;
- (void)_dispatchAssetEntries;
- (void)_publishEntry:(id)a3;
- (void)_reportCoreAnalyticsWithEntry:(id)a3;
- (void)_reportRunSessionAnalyticsWithPublishDuration:(double)a3;
- (void)addDownloadRequestID:(int)a3 forAsset:(id)a4;
- (void)addPhotosAsset:(id)a3 priority:(unint64_t)a4 previousStatus:(unint64_t)a5 attempts:(unint64_t)a6 lastAttemptDate:(id)a7;
- (void)cancelRemainingDownloadsWithStatus:(int)a3;
- (void)dealloc;
- (void)download;
- (void)process;
- (void)processDeletedAssets:(id)a3;
- (void)publish;
@end

@implementation MADPhotosFaceAssetProcessingTask

+ (BOOL)_concurrentFaceAnalysis
{
  if ((atomic_load_explicit(&qword_1002B8398, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1002B8398))
  {
    byte_1002B8390 = DeviceHasANE();
    __cxa_guard_release(&qword_1002B8398);
  }

  return byte_1002B8390;
}

+ (unint64_t)_concurrentQueueCount
{
  if ((atomic_load_explicit(&qword_1002B83A8, memory_order_acquire) & 1) == 0)
  {
    sub_1000DCB0C();
  }

  if (byte_1002B83A0)
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

- (MADPhotosFaceAssetProcessingTask)initWithAnalysisDatabase:(id)a3 gallery:(id)a4
{
  v7 = a3;
  v8 = a4;
  v28.receiver = self;
  v28.super_class = MADPhotosFaceAssetProcessingTask;
  v9 = [(MADProcessingTask *)&v28 init];
  v10 = v9;
  v11 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_analysisDatabase, a3);
    objc_storeStrong(&v10->_gallery, a4);
    v12 = +[NSMutableArray array];
    assetEntries = v11->_assetEntries;
    v11->_assetEntries = v12;

    v14 = dispatch_group_create();
    processGroup = v11->_processGroup;
    v11->_processGroup = v14;

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.mediaanalysisd.face.management", v16);
    managementQueue = v11->_managementQueue;
    v11->_managementQueue = v17;

    v11->_processingJobCount = 0;
    if ([objc_opt_class() _concurrentFaceAnalysis])
    {
      v19 = [objc_opt_class() _concurrentQueueCount];
    }

    else
    {
      v19 = 1;
    }

    v11->_processingQueuesCount = v19;
    v20 = dispatch_group_create();
    downloadGroup = v11->_downloadGroup;
    v11->_downloadGroup = v20;

    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_create("com.apple.mediaanalysisd.face.download", v22);
    downloadStateQueue = v11->_downloadStateQueue;
    v11->_downloadStateQueue = v23;

    v25 = +[NSMutableDictionary dictionary];
    downloadRequestIDs = v11->_downloadRequestIDs;
    v11->_downloadRequestIDs = v25;
  }

  return v11;
}

+ (id)taskWithAnalysisDatabase:(id)a3 gallery:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(objc_opt_class()) initWithAnalysisDatabase:v5 gallery:v6];

  return v7;
}

- (void)dealloc
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_assetEntries;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v9 = [v7 downloadURL];
        v10 = v9 == 0;

        if (!v10)
        {
          v11 = [v7 downloadURL];
          [PHAssetResourceManager vcp_flushResourceURL:v11];
        }

        objc_autoreleasePoolPop(v8);
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v12.receiver = self;
  v12.super_class = MADPhotosFaceAssetProcessingTask;
  [(MADPhotosFaceAssetProcessingTask *)&v12 dealloc];
}

- (id)assetLocalIdentifiers
{
  v3 = +[NSMutableSet set];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_assetEntries;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v10 = [v8 asset];
        v11 = [v10 localIdentifier];
        [v3 addObject:v11];

        objc_autoreleasePoolPop(v9);
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  return v3;
}

- (void)addPhotosAsset:(id)a3 priority:(unint64_t)a4 previousStatus:(unint64_t)a5 attempts:(unint64_t)a6 lastAttemptDate:(id)a7
{
  v12 = a3;
  v37.receiver = self;
  v37.super_class = MADPhotosFaceAssetProcessingTask;
  v29 = a5;
  v30 = a6;
  v31 = a7;
  [(MADPhotosAssetProcessingTask *)&v37 addPhotosAsset:v12 priority:a4 previousStatus:a5 attempts:a6 lastAttemptDate:?];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = self->_assetEntries;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v14)
  {
    v15 = *v34;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = [*(*(&v33 + 1) + 8 * i) asset];
        v18 = [v17 localIdentifier];
        v19 = [v12 localIdentifier];
        v20 = [v18 isEqualToString:v19];

        if (v20)
        {
          if (MediaAnalysisLogLevel() >= 4)
          {
            v24 = VCPLogToOSLogType[4];
            if (os_log_type_enabled(&_os_log_default, v24))
            {
              v25 = [v12 localIdentifier];
              *buf = 138412290;
              *&buf[4] = v25;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "[Face][%@] Batch already contains asset; ignoring", buf, 0xCu);
            }
          }

          goto LABEL_17;
        }
      }

      v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  *buf = 0;
  v32 = 0;
  if (+[MADManagedProcessingStatus isMACDReadEnabled])
  {
    v21 = [v12 photoLibrary];
    v22 = [v21 mad_fetchRequest];
    v23 = [v12 localIdentifier];
    [v22 fetchProcessingErrorCode:buf errorLine:&v32 taskID:3 localIdentifier:v23];
  }

  else
  {
    analysisDatabase = self->_analysisDatabase;
    v21 = [v12 localIdentifier];
    [(VCPDatabaseWriter *)analysisDatabase fetchProcessingErrorCode:buf errorLine:&v32 taskID:3 localIdentifier:v21];
  }

  assetEntries = self->_assetEntries;
  v28 = [MADFaceAssetEntry entryWithAsset:v12 previousStatus:v29 previousAttempts:v30 andLastAttemptDate:v31 previousErrorCode:*buf previousErrorLine:v32];
  [(NSMutableArray *)assetEntries addObject:v28];

LABEL_17:
}

- (int)_prepare
{
  v46 = objc_alloc_init(VCPTimeMeasurement);
  [v46 start];
  if (MediaAnalysisLogLevel() >= 6)
  {
    v2 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      v3 = [(NSMutableArray *)self->_assetEntries count];
      qos_class_self();
      v4 = VCPMAQoSDescription();
      *buf = 67109378;
      v67 = v3;
      v68 = 2112;
      v69 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[Face] Preparing %d assets (QoS: %@)", buf, 0x12u);
    }
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v5 = self->_assetEntries;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v60 objects:v65 count:16];
  if (v6)
  {
    v7 = *v61;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v61 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v60 + 1) + 8 * i) asset];
        v10 = [v9 vcp_isPano];

        if (v10)
        {
          self->_processingQueuesCount = 1;
          goto LABEL_14;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v60 objects:v65 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v51 = +[NSDate now];
  if (+[MADManagedProcessingStatus isMACDPersistEnabled])
  {
    v11 = VCPSignPostLog();
    v12 = os_signpost_id_generate(v11);

    v13 = VCPSignPostLog();
    v14 = v13;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "MADPhotosFaceAssetProcessingTask_Prepare", "", buf, 2u);
    }

    v15 = [(NSMutableArray *)self->_assetEntries firstObject];
    v16 = [v15 asset];
    v17 = [v16 photoLibrary];

    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_1000D66BC;
    v58[3] = &unk_100282938;
    v58[4] = self;
    v59 = v51;
    v57 = 0;
    v18 = [v17 mad_performAnalysisDataStoreChanges:v58 error:&v57];
    v19 = v57;
    v20 = v19;
    if (v18)
    {
      v21 = VCPSignPostLog();
      v22 = v21;
      if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_END, v12, "MADPhotosFaceAssetProcessingTask_Prepare", "", buf, 2u);
      }
    }

    else
    {
      LODWORD(v12) = [v19 code];
      if (MediaAnalysisLogLevel() >= 3)
      {
        v37 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v37))
        {
          v38 = [(NSMutableArray *)self->_assetEntries count];
          *buf = 67109120;
          v67 = v38;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v37, "[Face][MACD] Failed to prepare %d assets", buf, 8u);
        }
      }
    }

    if (v18)
    {
LABEL_46:
      if (MediaAnalysisLogLevel() >= 6)
      {
        v39 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v39))
        {
          v40 = [(NSMutableArray *)self->_assetEntries count];
          *buf = 67109120;
          v67 = v40;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v39, "[Face][MACD] Prepared %d assets", buf, 8u);
        }
      }

      [v46 stop];
      obj = +[VCPMADCoreAnalyticsManager sharedManager];
      [v46 elapsedTimeSeconds];
      [(NSMutableArray *)obj accumulateDoubleValue:@"TotalPrepareTimeInSeconds" forField:@"com.apple.mediaanalysisd.FaceAnalysisRunSession" andEvent:?];
      LODWORD(v5) = 0;
LABEL_50:

      LODWORD(v12) = v5;
    }
  }

  else
  {
    v23 = VCPSignPostLog();
    spid = os_signpost_id_generate(v23);

    v24 = VCPSignPostLog();
    v25 = v24;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_BEGIN, spid, "MADPhotosFaceAssetProcessingTask_LegacyPrepare", "", buf, 2u);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = self->_assetEntries;
    v26 = [(NSMutableArray *)obj countByEnumeratingWithState:&v53 objects:v64 count:16];
    if (v26)
    {
      v49 = *v54;
LABEL_28:
      v27 = 0;
      v28 = v5;
      v47 = v26;
      while (1)
      {
        v50 = v28;
        if (*v54 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v53 + 1) + 8 * v27);
        analysisDatabase = self->_analysisDatabase;
        v31 = [v29 previousAttempts];
        v32 = [v29 asset];
        v33 = [v29 asset];
        v34 = [v33 mediaType];
        v35 = [v29 asset];
        v36 = -[VCPDatabaseWriter setAttempts:asset:taskID:status:lastAttemptDate:mediaType:mediaSubtypes:errorCode:errorLine:](analysisDatabase, "setAttempts:asset:taskID:status:lastAttemptDate:mediaType:mediaSubtypes:errorCode:errorLine:", v31 + 1, v32, 3, 1, v51, v34, [v35 mediaSubtypes], objc_msgSend(v29, "previousErrorCode"), objc_msgSend(v29, "previousErrorLine"));

        if (v36 == -108 || v36 == -36)
        {
          LODWORD(v5) = v36;
        }

        else
        {
          LODWORD(v5) = v36;
          if (v36 != -23)
          {
            LODWORD(v5) = v50;
          }
        }

        if (v36 == -108 || v36 == -36 || v36 == -23)
        {
          goto LABEL_50;
        }

        v27 = v27 + 1;
        v28 = v5;
        if (v47 == v27)
        {
          v26 = [(NSMutableArray *)obj countByEnumeratingWithState:&v53 objects:v64 count:16];
          if (v26)
          {
            goto LABEL_28;
          }

          break;
        }
      }
    }

    v42 = [(VCPDatabaseWriter *)self->_analysisDatabase commit];
    if (v42 == -108 || v42 == -36)
    {
      LODWORD(v12) = v42;
    }

    else
    {
      LODWORD(v12) = v42;
      if (v42 != -23)
      {
        LODWORD(v12) = v5;
      }
    }

    if (v42 != -108 && v42 != -36 && v42 != -23)
    {
      v43 = VCPSignPostLog();
      v44 = v43;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, OS_SIGNPOST_INTERVAL_END, spid, "MADPhotosFaceAssetProcessingTask_LegacyPrepare", "", buf, 2u);
      }

      goto LABEL_46;
    }
  }

  return v12;
}

- (void)addDownloadRequestID:(int)a3 forAsset:(id)a4
{
  v6 = a4;
  downloadStateQueue = self->_downloadStateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D6A50;
  block[3] = &unk_100283770;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_sync(downloadStateQueue, block);
}

- (int)removeDownloadRequestIDForAsset:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  downloadStateQueue = self->_downloadStateQueue;
  v14 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D6BE8;
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

- (double)downloadInactiveTimeInterval
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  downloadStateQueue = self->_downloadStateQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000D6DF0;
  v5[3] = &unk_100283178;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(downloadStateQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)cancelRemainingDownloadsWithStatus:(int)a3
{
  downloadStateQueue = self->_downloadStateQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000D6F10;
  v5[3] = &unk_1002837C0;
  v5[4] = self;
  v6 = a3;
  dispatch_sync(downloadStateQueue, v5);
  dispatch_group_wait(self->_downloadGroup, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)download
{
  v57 = objc_alloc_init(VCPTimeMeasurement);
  [v57 start];
  v2 = VCPSignPostLog();
  v3 = os_signpost_id_generate(v2);

  v4 = VCPSignPostLog();
  v5 = v4;
  spid = v3;
  v56 = v3 - 1;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "MADPhotosFaceAssetProcessingTask_Download", "", buf, 2u);
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v6 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      v7 = [(NSMutableArray *)self->_assetEntries count];
      qos_class_self();
      v8 = VCPMAQoSDescription();
      *buf = 67109378;
      *v77 = v7;
      *&v77[4] = 2112;
      *&v77[6] = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[Face][Download] Downloading %d assets (QoS: %@)", buf, 0x12u);
    }
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = self->_assetEntries;
  v9 = [(NSMutableArray *)obj countByEnumeratingWithState:&v70 objects:v75 count:16];
  if (v9)
  {
    v10 = *v71;
    v11 = VCPLogToOSLogType[6];
    type = VCPLogToOSLogType[4];
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v71 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v70 + 1) + 8 * i);
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v11))
        {
          v14 = [v13 asset];
          v15 = [v14 localIdentifier];
          *buf = 138412290;
          *v77 = v15;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[Face][Download][%@] Finding download resource", buf, 0xCu);
        }

        v16 = [v13 asset];
        v17 = [VCPFaceUtils preferredResourcesForFaceProcessingWithAsset:v16];

        v18 = [VCPFaceUtils resourceForFaceProcessing:v17 allowStreaming:1];
        [v13 setDownloadResource:v18];

        v19 = [v13 downloadResource];
        LODWORD(v18) = v19 == 0;

        if (v18)
        {
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, type))
          {
            v20 = [v13 asset];
            v21 = [v20 localIdentifier];
            *buf = 138412290;
            *v77 = v21;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[Face][Download][%@] Failed to find download resource", buf, 0xCu);
          }

          [v13 setStatus:4294943494];
        }
      }

      v9 = [(NSMutableArray *)obj countByEnumeratingWithState:&v70 objects:v75 count:16];
    }

    while (v9);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v61 = self->_assetEntries;
  v22 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v66 objects:v74 count:16];
  if (v22)
  {
    obja = 0;
    v23 = *v67;
    typea = VCPLogToOSLogType[5];
    v58 = VCPLogToOSLogType[4];
    while (1)
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v67 != v23)
        {
          objc_enumerationMutation(v61);
        }

        v25 = *(*(&v66 + 1) + 8 * j);
        v26 = +[VCPWatchdog sharedWatchdog];
        [v26 pet];

        v27 = [v25 asset];
        v28 = [PHAssetResource vcp_allResourcesForAsset:v27];
        v29 = [v28 mad_computeSyncResource];

        if (v29)
        {
          v30 = [v25 asset];
          v31 = [(MADProcessingTask *)self cancelBlock];
          [v25 setIsAnalysisCompleteFromComputeSync:{objc_msgSend(v29, "mad_isAnalysisCompleteFromComputeSyncForAsset:taskID:allowDownload:cancel:", v30, 3, 1, v31)}];

          if ([v25 isAnalysisCompleteFromComputeSync])
          {
            if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, typea))
            {
              v32 = [v25 asset];
              v33 = [v32 localIdentifier];
              *buf = 138412290;
              *v77 = v33;
              _os_log_impl(&_mh_execute_header, &_os_log_default, typea, "[Face][Download][%@] Analysis complete with compute sync, skipping media resource download", buf, 0xCu);
            }

            goto LABEL_42;
          }

          if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, typea))
          {
            v34 = [v25 asset];
            v35 = [v34 localIdentifier];
            *buf = 138412290;
            *v77 = v35;
            _os_log_impl(&_mh_execute_header, &_os_log_default, typea, "[Face][Download][%@] Analysis remains incomplete with compute sync, falling back to media resource download", buf, 0xCu);
          }
        }

        v36 = [v25 downloadResource];
        v37 = v36 == 0;

        if (!v37)
        {
          dispatch_group_enter(self->_downloadGroup);
          v38 = [v25 downloadResource];
          v65[0] = _NSConcreteStackBlock;
          v65[1] = 3221225472;
          v65[2] = sub_1000D7CAC;
          v65[3] = &unk_1002851A8;
          v65[4] = self;
          v65[5] = v25;
          v39 = [PHAssetResourceManager vcp_requestFileURLForAssetResource:v38 taskID:3 completionHandler:v65];

          if (v39)
          {
            v40 = [v25 asset];
            [(MADPhotosFaceAssetProcessingTask *)self addDownloadRequestID:v39 forAsset:v40];

            ++obja;
          }

          else
          {
            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v58))
            {
              v41 = [v25 asset];
              v42 = [v41 localIdentifier];
              *buf = 138412290;
              *v77 = v42;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v58, "[Face][Download][%@] Failed to initialize resource download", buf, 0xCu);
            }

            [v25 setStatus:4294943494];
            dispatch_group_leave(self->_downloadGroup);
          }
        }

LABEL_42:
      }

      v22 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v66 objects:v74 count:16];
      if (!v22)
      {
        goto LABEL_46;
      }
    }
  }

  obja = 0;
LABEL_46:

  if (MediaAnalysisLogLevel() >= 6)
  {
    v43 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v43))
    {
      *buf = 67109120;
      *v77 = obja;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v43, "[Face][Download] Waiting for %d downloads to complete", buf, 8u);
    }
  }

  while (1)
  {
    downloadGroup = self->_downloadGroup;
    v45 = dispatch_time(0, 500000000);
    if (!dispatch_group_wait(downloadGroup, v45))
    {
      break;
    }

    v46 = [(MADProcessingTask *)self cancelBlock];
    if (v46)
    {
      v47 = [(MADProcessingTask *)self cancelBlock];
      v48 = v47[2]();

      if (v48)
      {
        if (MediaAnalysisLogLevel() >= 5)
        {
          v51 = VCPLogToOSLogType[5];
          if (os_log_type_enabled(&_os_log_default, v51))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v51, "[Face][Download] Processing cancelled; cancelling downloads", buf, 2u);
          }
        }

        [(MADPhotosFaceAssetProcessingTask *)self cancelRemainingDownloadsWithStatus:4294967168, spid];
        break;
      }
    }

    [(MADPhotosFaceAssetProcessingTask *)self downloadInactiveTimeInterval];
    if (v49 > 60.0)
    {
      if (MediaAnalysisLogLevel() >= 5)
      {
        v50 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v50))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v50, "[Face][Download] Download inactivity timeout; cancelling downloads", buf, 2u);
        }
      }

      [(MADPhotosFaceAssetProcessingTask *)self cancelRemainingDownloadsWithStatus:4294943494];
      break;
    }
  }

  v52 = VCPSignPostLog();
  v53 = v52;
  if (v56 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v53, OS_SIGNPOST_INTERVAL_END, spid, "MADPhotosFaceAssetProcessingTask_Download", "", buf, 2u);
  }

  [v57 stop];
  v54 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v57 elapsedTimeSeconds];
  [v54 accumulateDoubleValue:@"TotalDownloadTimeInSeconds" forField:@"com.apple.mediaanalysisd.FaceAnalysisRunSession" andEvent:?];
}

- (void)_collectVNAnimalObservationResults:(id)a3
{
  v8 = a3;
  v3 = +[VCPMADCoreAnalyticsManager sharedManager];
  v4 = [v8 objectForKeyedSubscript:MediaAnalysisResultNumberOfPetsGeneratedKey];
  [v3 accumulateInt64Value:objc_msgSend(v4 forField:"longValue") andEvent:{@"NumberOfPetsGenerated", @"com.apple.mediaanalysisd.FaceAnalysisRunSession"}];

  v5 = [v8 objectForKeyedSubscript:MediaAnalysisResultNumberOfPetsGeneratedWithHeadOnlyKey];
  [v3 accumulateInt64Value:objc_msgSend(v5 forField:"longValue") andEvent:{@"NumberOfPetsGeneratedWithHeadOnly", @"com.apple.mediaanalysisd.FaceAnalysisRunSession"}];

  v6 = [v8 objectForKeyedSubscript:MediaAnalysisResultNumberOfPetsGeneratedWithBodyOnlyKey];
  [v3 accumulateInt64Value:objc_msgSend(v6 forField:"longValue") andEvent:{@"NumberOfPetsGeneratedWithBodyOnly", @"com.apple.mediaanalysisd.FaceAnalysisRunSession"}];

  v7 = [v8 objectForKeyedSubscript:MediaAnalysisResultNumberOfPetsGeneratedWithHeadAndBodyKey];
  [v3 accumulateInt64Value:objc_msgSend(v7 forField:"longValue") andEvent:{@"NumberOfPetsGeneratedWithHeadAndBody", @"com.apple.mediaanalysisd.FaceAnalysisRunSession"}];
}

- (void)_asyncAnalysisWithAssetEntry:(id)a3 resource:(id)a4 resourceURL:(id)a5 isBestResource:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v68 = a4;
  v11 = a5;
  v12 = [(MADProcessingTask *)self cancelBlock];
  if (v12)
  {
    v13 = [(MADProcessingTask *)self cancelBlock];
    v14 = v13[2]();

    if (v14)
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v15 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v15))
        {
          v16 = [v10 asset];
          v17 = [v16 localIdentifier];
          *buf = 138412290;
          v71 = v17;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[Face][%@] Cancelled", buf, 0xCu);
        }
      }

      v18 = 4294967168;
LABEL_31:
      [v10 setStatus:v18];
      goto LABEL_52;
    }
  }

  v19 = [v10 asset];
  v20 = [v19 adjustmentVersion];

  if (!v20)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v46 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v46))
      {
        v47 = [v10 asset];
        v48 = [v47 localIdentifier];
        *buf = 138412290;
        v71 = v48;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v46, "[Face][%@] Null asset adjustmentVersion", buf, 0xCu);
      }
    }

    v18 = 4294943493;
    goto LABEL_31;
  }

  v21 = +[VCPWatchdog sharedWatchdog];
  [v21 pet];

  if (MediaAnalysisLogLevel() >= 6)
  {
    v22 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v22))
    {
      v23 = [v10 asset];
      v24 = [v23 localIdentifier];
      v25 = [v10 asset];
      v26 = [v25 vcp_typeDescription];
      *buf = 138413058;
      v71 = v24;
      v72 = 2112;
      *v73 = v26;
      *&v73[8] = 2048;
      v74 = [v68 type];
      v75 = 2112;
      v76 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[Face][%@] Analyzing %@ using resource (%lu) %@", buf, 0x2Au);
    }
  }

  v27 = VCPSignPostLog();
  spid = os_signpost_id_generate(v27);

  v28 = VCPSignPostLog();
  v29 = v28;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPFaceProcessingAnalyzeAsset", "", buf, 2u);
  }

  faceAnalyzer = self->_faceAnalyzer;
  v31 = [v10 asset];
  v69 = 0;
  v32 = [(VCPFaceAnalyzer *)faceAnalyzer analyzeAsset:v31 withResource:v68 resourceURL:v11 isBestResource:v6 quickMode:0 results:&v69];
  v33 = v69;

  if (v32 || !v33)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v49 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v49))
      {
        v50 = [v10 asset];
        v51 = [v50 localIdentifier];
        *buf = 138412546;
        v71 = v51;
        v72 = 1024;
        *v73 = v32;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v49, "[Face][%@] Failed to analyze asset (%d)", buf, 0x12u);
      }
    }

    [v10 setStatus:4294943494];
    [v10 setErrorCode:{-[VCPFaceAnalyzer errorCode](self->_faceAnalyzer, "errorCode")}];
    [v10 setErrorLine:{-[VCPFaceAnalyzer errorLine](self->_faceAnalyzer, "errorLine")}];
  }

  else
  {
    v34 = [v33 objectForKeyedSubscript:VCPAnalysisResultWarningImageTooSmallKey];
    v35 = [v34 BOOLValue];

    if (!v35 || v6)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v52 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v52))
        {
          v53 = [v10 asset];
          v54 = [v53 localIdentifier];
          *buf = 138412290;
          v71 = v54;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v52, "[Face][%@] Analysis success", buf, 0xCu);
        }
      }

      [v10 setResults:v33];
      v55 = MediaAnalysisVNAnimalObservationResultsKey;
      v56 = [v33 objectForKeyedSubscript:MediaAnalysisVNAnimalObservationResultsKey];
      v57 = v56 == 0;

      if (!v57)
      {
        if (MediaAnalysisLogLevel() >= 7)
        {
          v58 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v58))
          {
            v59 = [v10 asset];
            v60 = [v59 localIdentifier];
            *buf = 138412290;
            v71 = v60;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v58, "[Face][%@] Collecting VN animal observation results...", buf, 0xCu);
          }
        }

        v61 = [v33 objectForKeyedSubscript:v55];
        [(MADPhotosFaceAssetProcessingTask *)self _collectVNAnimalObservationResults:v61];
      }
    }

    else
    {
      if (_os_feature_enabled_impl())
      {
        if (MediaAnalysisLogLevel() >= 6)
        {
          v36 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v36))
          {
            v37 = [v10 asset];
            v38 = [v37 localIdentifier];
            *buf = 138412802;
            v71 = v38;
            v72 = 1024;
            *v73 = 1;
            *&v73[4] = 1024;
            *&v73[6] = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v36, "[Face][%@] Result needs improvement (ResourceTooSmall: %d; BestResource: %d)", buf, 0x18u);
          }
        }

        [v10 setResults:v33];
        v39 = MediaAnalysisVNAnimalObservationResultsKey;
        v40 = [v33 objectForKeyedSubscript:MediaAnalysisVNAnimalObservationResultsKey];
        v41 = v40 == 0;

        if (!v41)
        {
          if (MediaAnalysisLogLevel() >= 7)
          {
            v42 = VCPLogToOSLogType[7];
            if (os_log_type_enabled(&_os_log_default, v42))
            {
              v43 = [v10 asset];
              v44 = [v43 localIdentifier];
              *buf = 138412290;
              v71 = v44;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v42, "[Face][%@] Collecting VN animal observation results...", buf, 0xCu);
            }
          }

          v45 = [v33 objectForKeyedSubscript:v39];
          [(MADPhotosFaceAssetProcessingTask *)self _collectVNAnimalObservationResults:v45];
        }
      }

      else if (MediaAnalysisLogLevel() >= 6)
      {
        v62 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v62))
        {
          v63 = [v10 asset];
          v64 = [v63 localIdentifier];
          *buf = 138412802;
          v71 = v64;
          v72 = 1024;
          *v73 = 1;
          *&v73[4] = 1024;
          *&v73[6] = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v62, "[Face][%@] Results disqualified (ResourceTooSmall: %d; BestResource: %d)", buf, 0x18u);
        }
      }

      [v10 setStatus:4294943494];
    }
  }

  v65 = VCPSignPostLog();
  v66 = v65;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v65))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v66, OS_SIGNPOST_INTERVAL_END, spid, "VCPFaceProcessingAnalyzeAsset", "", buf, 2u);
  }

LABEL_52:
}

- (void)_dispatchAssetEntries
{
  if ([(NSMutableArray *)self->_assetEntries count])
  {
    v3 = [(NSMutableArray *)self->_assetEntries firstObject];
    v4 = [v3 asset];
    v5 = [v4 photoLibrary];

    v36 = v5;
    v35 = [VCPPhotosFaceProcessingContext contextWithPhotoLibrary:v5];
    v6 = [[VCPFaceAnalyzer alloc] initWithContext:v35];
    faceAnalyzer = self->_faceAnalyzer;
    self->_faceAnalyzer = v6;

    v39 = [NSMutableArray arrayWithCapacity:self->_processingQueuesCount];
    if (self->_processingQueuesCount)
    {
      v8 = 0;
      do
      {
        v9 = [NSString stringWithFormat:@"com.apple.mediaanalysisd.face.processing.%lu", v8, v35];
        v10 = [v9 UTF8String];
        v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v12 = dispatch_queue_create(v10, v11);

        [v39 addObject:v12];
        ++v8;
      }

      while (v8 < self->_processingQueuesCount);
    }

    v13 = 0;
    type = VCPLogToOSLogType[4];
    v37 = VCPLogToOSLogType[6];
    v14 = v36;
    while (v13 < [(NSMutableArray *)self->_assetEntries count])
    {
      v15 = objc_autoreleasePoolPush();
      v16 = [(NSMutableArray *)self->_assetEntries objectAtIndexedSubscript:v13];
      if ([v16 status])
      {
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, type))
        {
          v17 = [v16 asset];
          v18 = [v17 localIdentifier];
          *buf = 138412290;
          v47 = v18;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[Face][Process][%@] Asset has failure status; skipping", buf, 0xCu);
        }
      }

      else if ([v16 isAnalysisCompleteFromComputeSync])
      {
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v37))
        {
          v19 = [v16 asset];
          v20 = [v19 localIdentifier];
          *buf = 138412290;
          v47 = v20;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v37, "[Face][Process][%@] Analysis already complete from compute sync ingestion; skipping", buf, 0xCu);
        }
      }

      else
      {
        v21 = [v16 downloadResource];
        if (!v21 || ([v16 downloadURL], v22 = objc_claimAutoreleasedReturnValue(), v23 = v22 == 0, v22, v21, v23))
        {
          v26 = [v16 asset];
          v27 = [VCPFaceUtils preferredResourcesForFaceProcessingWithAsset:v26];

          if ([v16 previousAttempts] || !_os_feature_enabled_impl())
          {
            v28 = [VCPFaceUtils resourceForFaceProcessing:v27 allowStreaming:0];
          }

          else
          {
            v28 = [v27 vcp_thumbnailResource];
          }

          v29 = v28;
          if (v28)
          {
            v30 = [VCPFaceUtils isBestResourceForFaceProcessing:v28 fromResources:v27];
            processGroup = self->_processGroup;
            v32 = [v39 objectAtIndexedSubscript:v13 % self->_processingQueuesCount];
            v40[0] = _NSConcreteStackBlock;
            v40[1] = 3221225472;
            v40[2] = sub_1000D9304;
            v40[3] = &unk_100285DE0;
            v40[4] = self;
            v41 = v16;
            v42 = v29;
            v43 = v30;
            dispatch_group_async(processGroup, v32, v40);

            v14 = v36;
          }

          else
          {
            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, type))
            {
              v33 = [v16 asset];
              v34 = [v33 localIdentifier];
              *buf = 138412290;
              v47 = v34;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[Face][Process][%@] No acceptable resource available", buf, 0xCu);
            }

            [v16 setStatus:4294943494];
          }
        }

        else
        {
          v24 = self->_processGroup;
          v25 = [v39 objectAtIndexedSubscript:v13 % self->_processingQueuesCount];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000D9230;
          block[3] = &unk_100282BC8;
          block[4] = self;
          v45 = v16;
          dispatch_group_async(v24, v25, block);
        }
      }

      objc_autoreleasePoolPop(v15);
      ++v13;
    }
  }
}

- (int)_process
{
  v3 = VCPSignPostLog();
  v4 = os_signpost_id_generate(v3);

  v5 = VCPSignPostLog();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MADPhotosFaceAssetProcessingTask_Process", "", buf, 2u);
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v7 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      v8 = [(NSMutableArray *)self->_assetEntries count];
      qos_class_self();
      v9 = VCPMAQoSDescription();
      *buf = 67109378;
      v24 = v8;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[Face][Process] Processing %d assets (QoS: %@)", buf, 0x12u);
    }
  }

  v10 = objc_alloc_init(VCPTimeMeasurement);
  [v10 start];
  [(MADPhotosFaceAssetProcessingTask *)self _dispatchAssetEntries];
  if (MediaAnalysisLogLevel() >= 7)
  {
    v11 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v11))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[Face] Waiting for detection to complete ...", buf, 2u);
    }
  }

  dispatch_group_wait(self->_processGroup, 0xFFFFFFFFFFFFFFFFLL);
  if (MediaAnalysisLogLevel() >= 7)
  {
    v12 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v12))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "[Face] Detection completed", buf, 2u);
    }
  }

  if ([(NSMutableArray *)self->_assetEntries count])
  {
    [v10 stop];
    if (self->_processingQueuesCount <= 1)
    {
      v13 = @"Serial";
    }

    else
    {
      v13 = @"Concurrent";
    }

    v14 = v13;
    v15 = VCPTaskIDDescription();
    v16 = [NSString stringWithFormat:@"%@-%@-Analyze", v15, v14];

    [v10 elapsedTimeSeconds];
    VCPCoreAnalyticsQoSReportSpeed(v16, v17 * 1000.0 / [(NSMutableArray *)self->_assetEntries count]);
    v18 = +[VCPMADCoreAnalyticsManager sharedManager];
    [v10 elapsedTimeSeconds];
    [v18 accumulateDoubleValue:@"FaceDetectionElapsedTimeInSeconds" forField:@"com.apple.mediaanalysisd.FaceAnalysisRunSession" andEvent:?];

    v19 = +[VCPMADCoreAnalyticsManager sharedManager];
    [v10 elapsedTimeSeconds];
    [v19 accumulateDoubleValue:@"TimeAnalyzingInSeconds" forField:@"com.apple.mediaanalysisd.FaceAnalysisRunSession" andEvent:?];
  }

  v20 = VCPSignPostLog();
  v21 = v20;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_END, v4, "MADPhotosFaceAssetProcessingTask_Process", "", buf, 2u);
  }

  return 0;
}

- (void)process
{
  if (!self->_status)
  {
    self->_status = [(MADPhotosFaceAssetProcessingTask *)self _process];
  }
}

- (void)_publishEntry:(id)a3
{
  v77 = a3;
  v3 = [v77 asset];
  v4 = [v3 localIdentifier];
  v83 = [NSString stringWithFormat:@"[FacePersist][Unified][%@]", v4];

  if (_os_feature_enabled_impl())
  {
    v5 = [v77 results];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v77 || [v77 status] != 0 && !v6)
  {
    goto LABEL_106;
  }

  if ([v77 isAnalysisCompleteFromComputeSync])
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v7 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v7))
      {
        *buf = 138412290;
        v97 = v83;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "%@ Analysis already complete from compute sync ingestion; skip publishing", buf, 0xCu);
      }
    }

    goto LABEL_106;
  }

  v8 = [v77 asset];
  v9 = [v8 photoLibrary];
  v10 = [v9 librarySpecificFetchOptions];

  v88 = v10;
  [v10 setIncludeNonvisibleFaces:1];
  [v10 setIncludeTorsoAndFaceDetectionData:1];
  [v10 setIncludedDetectionTypes:&off_1002961D0];
  v103 = PHFacePropertySetIdentifier;
  v11 = [NSArray arrayWithObjects:&v103 count:1];
  [v10 setFetchPropertySets:v11];

  v12 = [v77 results];
  v13 = MediaAnalysisFaceResultsKey;
  v14 = [v12 objectForKeyedSubscript:MediaAnalysisFaceResultsKey];
  v76 = [v14 objectForKeyedSubscript:VCPFacesToDelete];

  v75 = [VCPFaceUtils phFacesFromVCPPhotosFaces:v76 withFetchOptions:v88];
  if ([v75 count])
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v15 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v15))
      {
        *buf = 138412546;
        v97 = v83;
        v98 = 2048;
        *v99 = [v75 count];
        _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "%@ Deleting %lu faces", buf, 0x16u);
      }
    }

    [PHFaceChangeRequest deleteFaces:v75];
  }

  v16 = [v77 asset];
  v85 = [PHAssetChangeRequest changeRequestForAsset:v16];

  v17 = [v77 results];
  v18 = [v17 objectForKeyedSubscript:v13];
  v74 = [v18 objectForKeyedSubscript:VCPFacesToPersist];

  if (MediaAnalysisLogLevel() >= 7)
  {
    v19 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v19))
    {
      v20 = [v74 count];
      *buf = 138412546;
      v97 = v83;
      v98 = 2048;
      *v99 = v20;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "%@ Inserting/updating %lu faces ... ", buf, 0x16u);
    }
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = v74;
  v21 = [obj countByEnumeratingWithState:&v91 objects:v102 count:16];
  if (!v21)
  {
    v81 = 0;
    v84 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 0;
    goto LABEL_83;
  }

  v81 = 0;
  v84 = 0;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v89 = *v92;
  type = VCPLogToOSLogType[7];
  v82 = VCPLogToOSLogType[3];
  do
  {
    v90 = v21;
    for (i = 0; i != v90; i = i + 1)
    {
      if (*v92 != v89)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v91 + 1) + 8 * i);
      if (_os_feature_enabled_impl() && [v23 algorithmVersion] == 14)
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          v24 = [v23 localIdentifier];
          *buf = 138412546;
          v97 = v83;
          v98 = 2112;
          *v99 = v24;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Marking asset contains FC face %@", buf, 0x16u);
        }

        v81 = 1;
      }

      v25 = [v23 localIdentifier];

      if (!v25)
      {
        v28 = 0;
        v27 = +[PHFaceChangeRequest creationRequestForFace];
        if (!v27)
        {
          goto LABEL_48;
        }

LABEL_34:
        [VCPFaceUtils assignPropertiesOfVCPPhotosFace:v23 toPHFaceChangeRequest:v27];
        v29 = [v23 detectionType];
        if (v29 == 1)
        {
          [v23 centerX];
          if (v30 == 0.0 && ([v23 centerY], v31 == 0.0) && (objc_msgSend(v23, "size"), v32 == 0.0))
          {
            [v23 bodyCenterX];
            if (v33 == 0.0 && ([v23 bodyCenterY], v34 == 0.0) && (objc_msgSend(v23, "bodyWidth"), v35 == 0.0))
            {
              [v23 bodyHeight];
              v36 = v52 != 0.0;
            }

            else
            {
              v36 = 1;
            }
          }

          else
          {
            v36 = 0;
          }

          [v23 centerX];
          if (v42 == 0.0 && ([v23 centerY], v43 == 0.0) && (objc_msgSend(v23, "size"), v44 == 0.0) || (objc_msgSend(v23, "bodyCenterX"), v45 != 0.0) || (objc_msgSend(v23, "bodyCenterY"), v46 != 0.0) || (objc_msgSend(v23, "bodyWidth"), v47 != 0.0))
          {
            v37 = 0;
            if (!v36)
            {
              v39 = @"face";
              v38 = 0;
              if (!v25)
              {
                goto LABEL_63;
              }

              goto LABEL_43;
            }
          }

          else
          {
            [v23 bodyHeight];
            v37 = v48 == 0.0;
            if (!v36)
            {
              v38 = 0;
              v39 = @"face";
              if (!v25)
              {
                goto LABEL_63;
              }

LABEL_43:
              v95 = v28;
              v40 = [NSArray arrayWithObjects:&v95 count:1];
              [v85 addFaces:v40];

              if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
              {
                v41 = [v28 localIdentifier];
                *buf = 138412802;
                v97 = v83;
                v98 = 2112;
                *v99 = v39;
                *&v99[8] = 2112;
                v100 = v41;
                _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Updating %@ %@", buf, 0x20u);
              }

              [v27 setVuObservationID:0];
LABEL_67:
              if (v29 == 1)
              {
                if (v37)
                {
                  ++v80;
                }

                else if (v38)
                {
                  ++v78;
                }

                else
                {
                  ++v79;
                }
              }

              else
              {
                ++v84;
              }

              goto LABEL_72;
            }
          }

          v38 = 1;
          v39 = @"torso";
          if (v25)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v37 = 0;
          v38 = 0;
          v39 = @"pet";
          if (v25)
          {
            goto LABEL_43;
          }
        }

LABEL_63:
        v49 = [v27 placeholderForCreatedFace];
        v101 = v49;
        v50 = [NSArray arrayWithObjects:&v101 count:1];
        [v85 addFaces:v50];

        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          v51 = [v49 localIdentifier];
          *buf = 138412802;
          v97 = v83;
          v98 = 2112;
          *v99 = v39;
          *&v99[8] = 2112;
          v100 = v51;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Adding %@ %@", buf, 0x20u);
        }

        goto LABEL_67;
      }

      v26 = [VCPFaceUtils phFaceFromVCPPhotosFace:v23 withFetchOptions:v88];
      if (v26)
      {
        v27 = [PHFaceChangeRequest changeRequestForFace:v26];
        v28 = v26;
        if (v27)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v28 = 0;
      }

LABEL_48:
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v82))
      {
        *buf = 138412290;
        v97 = v83;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v82, "%@ Failed to retrieve faceChangeRequest; skipping", buf, 0xCu);
      }

LABEL_72:
    }

    v21 = [obj countByEnumeratingWithState:&v91 objects:v102 count:16];
  }

  while (v21);
LABEL_83:

  v53 = [v77 asset];
  v54 = [v53 adjustmentVersion];
  [v85 setFaceAdjustmentVersion:v54];

  v55 = [v77 results];
  v56 = VCPAnalysisResultWarningImageTooSmallKey;
  v57 = [v55 objectForKeyedSubscript:VCPAnalysisResultWarningImageTooSmallKey];
  v58 = v57 == 0;

  if (v58)
  {
    if ((v81 & 1) == 0)
    {
      goto LABEL_89;
    }
  }

  else
  {
    v55 = [v77 results];
    v58 = [v55 objectForKeyedSubscript:v56];
    v59 = [v58 BOOLValue];

    if (MediaAnalysisLogLevel() >= 7)
    {
      v55 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, VCPLogToOSLogType[7]))
      {
        *buf = 138412290;
        v97 = v83;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v55, "%@ Marking resource is too small", buf, 0xCu);
      }
    }

    if ((v81 & 1) == 0 && (v59 & 1) == 0)
    {
LABEL_89:
      v55 = [v77 asset];
      v58 = [v55 photoLibrary];
      v60 = [v58 mad_faceProcessingInternalVersion];
      v61 = 1;
      goto LABEL_92;
    }
  }

  v61 = 0;
  v60 = 14;
LABEL_92:
  [v85 setFaceAnalysisVersion:v60];
  if (v61)
  {
  }

  v62 = [v77 asset];
  if ([v62 mad_isEligibleForComputeSync])
  {
    v63 = [v85 faceAnalysisVersion];
    v64 = [v77 asset];
    v65 = [v64 photoLibrary];
    v66 = [v65 mad_faceProcessingInternalVersion] == v63;

    if (v66)
    {
      v67 = [v77 asset];
      v62 = [v67 mad_refetchAsset];

      if (!v62)
      {
        v62 = [v77 asset];
      }

      v68 = [v62 mad_analysisStageAfterCompletingAnalysis:3];
      [v85 setLocalAnalysisStage:v68];
      v69 = [MADComputeSyncPayloadResults payloadDataForAsset:v62 targetStage:v68 embeddingResults:0 fullAnalysisResults:0];
      if (v69)
      {
        [v85 setComputeSyncMediaAnalysisPayload:v69];
      }

      else if (MediaAnalysisLogLevel() >= 4)
      {
        v70 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v70))
        {
          v71 = [v62 mediaAnalysisProperties];
          v72 = [v71 localAnalysisStage];
          *buf = 138412802;
          v97 = v83;
          v98 = 1024;
          *v99 = v68;
          *&v99[4] = 1024;
          *&v99[6] = v72;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v70, "%@ No compute sync payload generated for target stage %d (current stage %d)", buf, 0x18u);
        }
      }

      goto LABEL_104;
    }
  }

  else
  {
LABEL_104:
  }

  v73 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v73 accumulateInt64Value:v80 forField:@"NumberOfFacesPersisted" andEvent:@"com.apple.mediaanalysisd.FaceAnalysisRunSession"];
  [v73 accumulateInt64Value:v78 forField:@"NumberOfTorsosPersisted" andEvent:@"com.apple.mediaanalysisd.FaceAnalysisRunSession"];
  [v73 accumulateInt64Value:v79 forField:@"NumberOfFaceTorsosPersisted" andEvent:@"com.apple.mediaanalysisd.FaceAnalysisRunSession"];
  [v73 accumulateInt64Value:v84 forField:@"NumberOfPetsPersisted" andEvent:@"com.apple.mediaanalysisd.FaceAnalysisRunSession"];

LABEL_106:
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

- (int)_publishProcessingStatusForPhotoLibrary:(id)a3
{
  v8 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000DAA70;
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

- (int)_publishProcessingStatusToLegacyDatabase
{
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = self->_assetEntries;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (!v3)
  {
    goto LABEL_52;
  }

  v36 = *v42;
  type = VCPLogToOSLogType[7];
  do
  {
    v4 = 0;
    v38 = v2;
    v35 = v3;
    do
    {
      if (*v42 != v36)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v41 + 1) + 8 * v4);
      context = objc_autoreleasePoolPush();
      v6 = [v5 asset];
      v7 = [v6 localIdentifier];
      v40 = [NSString stringWithFormat:@"[Face][%@][Legacy]", v7];

      if (![v5 status])
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v46 = v40;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis completed, removing processing status", buf, 0xCu);
        }

LABEL_35:
        analysisDatabase = self->_analysisDatabase;
        v27 = [v5 asset];
        v28 = [v27 localIdentifier];
        v29 = [(VCPDatabaseWriter *)analysisDatabase removeProcessingStatusForLocalIdentifier:v28 andTaskID:3];

        if (v29 == -108 || v29 == -36)
        {
          v2 = v29;
        }

        else
        {
          v2 = v29;
          if (v29 != -23)
          {
            v2 = v38;
          }
        }

        v25 = 0;
        if (v29 != -108 && v29 != -36 && v29 != -23)
        {
          goto LABEL_48;
        }

        goto LABEL_49;
      }

      if ([v5 status] == -128)
      {
        if ([v5 previousAttempts])
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v46 = v40;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis cancelled, recovering processing status", buf, 0xCu);
          }

          v8 = self->_analysisDatabase;
          v9 = [v5 previousAttempts];
          v32 = [v5 asset];
          v10 = [v5 previousStatus];
          v31 = [v5 lastAttemptDate];
          v11 = [v5 asset];
          v12 = [v11 mediaType];
          v13 = [v5 asset];
          v14 = -[VCPDatabaseWriter setAttempts:asset:taskID:status:lastAttemptDate:mediaType:mediaSubtypes:errorCode:errorLine:](v8, "setAttempts:asset:taskID:status:lastAttemptDate:mediaType:mediaSubtypes:errorCode:errorLine:", v9, v32, 3, v10, v31, v12, [v13 mediaSubtypes], objc_msgSend(v5, "previousErrorCode"), objc_msgSend(v5, "previousErrorLine"));

          if (v14 == -108 || v14 == -36)
          {
            v2 = v14;
          }

          else
          {
            v2 = v14;
            if (v14 != -23)
            {
              v2 = v38;
            }
          }

          v25 = 0;
          if (v14 != -108 && v14 != -36 && v14 != -23)
          {
            goto LABEL_48;
          }

          goto LABEL_49;
        }

        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v46 = v40;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis cancelled, removing processing status", buf, 0xCu);
        }

        goto LABEL_35;
      }

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
      {
        *buf = 138412290;
        v46 = v40;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis failed, updating processing status", buf, 0xCu);
      }

      [v5 status];
      v15 = MADProcessingStatusForOSStatus();
      v16 = [v5 asset];
      v17 = [v5 currentAttemptDate];
      v18 = [v16 mad_nextAttemptDateForStatus:v15 currentAttemptDate:v17 attemptCount:{objc_msgSend(v5, "previousAttempts") + 1}];

      v19 = self->_analysisDatabase;
      v20 = [v5 errorCode];
      v21 = [v5 errorLine];
      v22 = [v5 asset];
      v23 = [v22 localIdentifier];
      v24 = [(VCPDatabaseWriter *)v19 updateProcessingStatus:v15 andNextAttemptDate:v18 andErrorCode:v20 andErrorLine:v21 forLocalIdentifier:v23 andTaskID:3];

      if (v24 == -108 || v24 == -36)
      {
        v2 = v24;
      }

      else
      {
        v2 = v24;
        if (v24 != -23)
        {
          v2 = v38;
        }
      }

      v25 = 0;
      if (v24 != -108 && v24 != -36 && v24 != -23)
      {
LABEL_48:
        v25 = 1;
      }

LABEL_49:

      objc_autoreleasePoolPop(context);
      if (!v25)
      {
        goto LABEL_53;
      }

      v4 = v4 + 1;
      v38 = v2;
    }

    while (v35 != v4);
    v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v41 objects:v47 count:16];
  }

  while (v3);
LABEL_52:
  v2 = 0;
LABEL_53:

  return v2;
}

- (void)_reportRunSessionAnalyticsWithPublishDuration:(double)a3
{
  v5 = +[VCPMADCoreAnalyticsManager sharedManager];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_assetEntries;
  v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v6)
  {
    v8 = *v28;
    type = VCPLogToOSLogType[5];
    v25 = VCPAnalysisStickyFailureAttemptsThreshold;
    v23 = VCPAnalysisMaximumABCReportFailureAttempts;
    *&v7 = 138412546;
    v22 = v7;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        if ([v10 status])
        {
          if ([v10 status] != -128)
          {
            v12 = @"NumberOfAssetsSoftFailure";
            v13 = [v10 status];
            v14 = @"NumberOfAssetsNoResource";
            if (v13 == -23802 || (v15 = [v10 status], v14 = @"NumberOfAssetsDownloadThrottled", v15 == -23808))
            {
              v16 = v14;

              v12 = v16;
            }

            [v5 accumulateInt64Value:1 forField:v12 andEvent:{@"com.apple.mediaanalysisd.FaceAnalysisRunSession", v22}];
            if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
            {
              v17 = [v10 asset];
              v18 = [v17 localIdentifier];
              *buf = v22;
              v32 = v18;
              v33 = 2112;
              v34 = v12;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[Face][%@] Asset failed processing. Failure: %@", buf, 0x16u);
            }

            if ([v10 previousAttempts] >= v25 && objc_msgSend(v10, "previousAttempts") <= v23 && objc_msgSend(v10, "status") != -23802)
            {
              v19 = +[VCPAutoBugCapture sharedCapturer];
              v20 = [v10 asset];
              [v19 captureProcessingFailure:v12 taskID:3 asset:v20 previousAttempts:{objc_msgSend(v10, "previousAttempts")}];
            }
          }
        }

        else
        {
          [v5 accumulateInt64Value:1 forField:@"NumberOfAssetsAnalyzed" andEvent:@"com.apple.mediaanalysisd.FaceAnalysisRunSession"];
        }

        objc_autoreleasePoolPop(v11);
      }

      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v6);
  }

  v21 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v21 accumulateDoubleValue:@"TotalPublishTimeInSeconds" forField:@"com.apple.mediaanalysisd.FaceAnalysisRunSession" andEvent:a3];
}

- (int)_publish
{
  v45 = objc_alloc_init(VCPTimeMeasurement);
  [v45 start];
  v3 = VCPSignPostLog();
  v4 = os_signpost_id_generate(v3);

  v5 = VCPSignPostLog();
  v6 = v5;
  spid = v4;
  v42 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MADPhotosFaceAssetProcessingTask_Publish", "", buf, 2u);
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v7 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      v8 = [(NSMutableArray *)self->_assetEntries count];
      qos_class_self();
      v9 = VCPMAQoSDescription();
      *buf = 67109378;
      *v54 = v8;
      *&v54[4] = 2112;
      *&v54[6] = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[Face] Persisting %d assets (QoS: %@)", buf, 0x12u);
    }
  }

  if ([(NSMutableArray *)self->_assetEntries count])
  {
    v10 = [(MADPhotosFaceAssetProcessingTask *)self _propagateAssetProcessingStatus];
    v11 = +[MADStateHandler sharedStateHandler];
    [v11 addBreadcrumb:{@"[Face] Persisting %d assets to Photos", -[NSMutableArray count](self->_assetEntries, "count")}];

    v12 = +[VCPWatchdog sharedWatchdog];
    [v12 pet];

    v13 = +[MADStateHandler sharedStateHandler];
    [v13 enterKnownTimeoutRisk:1];

    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_1000DC214;
    v51[3] = &unk_100283210;
    v51[4] = self;
    v43 = objc_retainBlock(v51);
    v14 = [(NSMutableArray *)self->_assetEntries firstObject];
    v15 = [v14 asset];
    v44 = [v15 photoLibrary];

    v16 = [(MADProcessingTask *)self cancelBlock];
    v50 = 0;
    v17 = [v44 mad_performChangesAndWait:v43 activity:3 cancelBlock:v16 extendTimeoutBlock:&stru_100285E00 error:&v50];
    v18 = v50;

    v19 = +[MADStateHandler sharedStateHandler];
    [v19 exitKnownTimeoutRisk];

    v20 = +[MADStateHandler sharedStateHandler];
    [v20 addBreadcrumb:{@"[Face] Finished persisting %d assets to Photos", -[NSMutableArray count](self->_assetEntries, "count")}];

    if ((v17 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v21 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v21))
        {
          *buf = 138412290;
          *v54 = v18;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "[Face] Failed to persist Face results to Photos (%@)", buf, 0xCu);
        }
      }

      if ([v18 code] == -128)
      {
        v22 = 4294967168;
      }

      else
      {
        v22 = 4294967278;
      }

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v23 = self->_assetEntries;
      v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v24)
      {
        v25 = *v47;
        do
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v47 != v25)
            {
              objc_enumerationMutation(v23);
            }

            v27 = *(*(&v46 + 1) + 8 * i);
            v28 = objc_autoreleasePoolPush();
            if (![v27 status])
            {
              [v27 setStatus:v22];
            }

            objc_autoreleasePoolPop(v28);
          }

          v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v46 objects:v52 count:16];
        }

        while (v24);
      }

      v29 = [v18 code];
      if (v10)
      {
        v30 = 1;
      }

      else
      {
        v30 = v29 == 0;
      }

      if (!v30)
      {
        v10 = v29;
      }
    }

    if (+[MADManagedProcessingStatus isMACDPersistEnabled])
    {
      v31 = [(MADPhotosFaceAssetProcessingTask *)self _publishProcessingStatusForPhotoLibrary:v44];
      if (!v10 && v31 != 0)
      {
        v10 = v31;
      }
    }

    if (+[VCPDatabaseWriter isLegacyPersistEnabled])
    {
      v33 = [(MADPhotosFaceAssetProcessingTask *)self _publishProcessingStatusToLegacyDatabase];
      v34 = [(VCPDatabaseWriter *)self->_analysisDatabase commit];
      if (v10)
      {
        v35 = 1;
      }

      else
      {
        v35 = v33 == 0;
      }

      if (v35)
      {
        v36 = v10;
      }

      else
      {
        v36 = v33;
      }

      if (v36)
      {
        v37 = 1;
      }

      else
      {
        v37 = v34 == 0;
      }

      if (v37)
      {
        v10 = v36;
      }

      else
      {
        v10 = v34;
      }
    }

    v38 = VCPSignPostLog();
    v39 = v38;
    if (v42 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_INTERVAL_END, spid, "MADPhotosFaceAssetProcessingTask_Publish", "", buf, 2u);
    }

    [v45 stop];
    [v45 elapsedTimeSeconds];
    [(MADPhotosFaceAssetProcessingTask *)self _reportRunSessionAnalyticsWithPublishDuration:?];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)publish
{
  if (!self->_status)
  {
    self->_status = [(MADPhotosFaceAssetProcessingTask *)self _publish];
  }
}

- (void)processDeletedAssets:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000DC5B4;
    v12[3] = &unk_100283000;
    v12[4] = self;
    v5 = objc_retainBlock(v12);
    v6 = +[MADVUUtilities sharedInstance];
    gallery = self->_gallery;
    v11 = 0;
    v8 = [v6 removeObservationsWithAssetLocalIdentifiers:v4 gallery:gallery cancelOrExtendTimeoutBlock:v5 error:&v11];
    v9 = v11;

    if ((v8 & 1) == 0 && MediaAnalysisLogLevel() >= 3)
    {
      v10 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        *buf = 138412290;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[Face] Failed to remove faces from Gallery - %@", buf, 0xCu);
      }
    }
  }
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
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[Face] Prepare to report CoreAnalytics for asset %@ ... ", buf, 0xCu);
    }
  }

  v7 = +[NSMutableDictionary dictionary];
  [v7 setObject:@"Face" forKeyedSubscript:@"Activity"];
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