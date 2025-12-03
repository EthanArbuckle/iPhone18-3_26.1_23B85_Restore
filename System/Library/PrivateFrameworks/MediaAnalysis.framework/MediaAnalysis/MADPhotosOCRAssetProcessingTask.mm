@interface MADPhotosOCRAssetProcessingTask
+ (id)taskWithAnalysisDatabase:(id)database;
- (MADPhotosOCRAssetProcessingTask)initWithAnalysisDatabase:(id)database;
- (double)downloadInactiveTimeInterval;
- (id)acceptableResourcesForAsset:(id)asset withResources:(id)resources;
- (id)assetLocalIdentifiers;
- (id)localResourceForAsset:(id)asset withAcceptableResources:(id)resources;
- (id)remoteResourceForAsset:(id)asset withAcceptableResources:(id)resources;
- (int)_prepare;
- (int)_process;
- (int)_propagateAssetProcessingStatus;
- (int)_publish;
- (int)_publishProcessingStatusForPhotoLibrary:(id)library;
- (int)_publishProcessingStatusToLegacyDatabase;
- (int)removeDownloadRequestIDForAsset:(id)asset;
- (void)_reportRunSessionAnalyticsWithPublishDuration:(double)duration;
- (void)addDownloadRequestID:(int)d forAsset:(id)asset;
- (void)addPhotosAsset:(id)asset priority:(unint64_t)priority previousStatus:(unint64_t)status attempts:(unint64_t)attempts lastAttemptDate:(id)date;
- (void)cancelRemainingDownloadsWithStatus:(int)status;
- (void)dealloc;
- (void)download;
- (void)process;
- (void)processAssetEntry:(id)entry resource:(id)resource resourceURL:(id)l;
- (void)publish;
@end

@implementation MADPhotosOCRAssetProcessingTask

- (MADPhotosOCRAssetProcessingTask)initWithAnalysisDatabase:(id)database
{
  databaseCopy = database;
  v20.receiver = self;
  v20.super_class = MADPhotosOCRAssetProcessingTask;
  v6 = [(MADProcessingTask *)&v20 init];
  if (v6)
  {
    v7 = +[NSMutableArray array];
    assetEntries = v6->_assetEntries;
    v6->_assetEntries = v7;

    objc_storeStrong(&v6->_analysisDatabase, database);
    v6->_shouldSkipPhotosPersist = 0;
    v9 = dispatch_group_create();
    downloadGroup = v6->_downloadGroup;
    v6->_downloadGroup = v9;

    v11 = dispatch_queue_create("com.apple.mediaanalysisd.ocr.download", 0);
    downloadStateQueue = v6->_downloadStateQueue;
    v6->_downloadStateQueue = v11;

    v13 = +[NSMutableDictionary dictionary];
    downloadRequestIDs = v6->_downloadRequestIDs;
    v6->_downloadRequestIDs = v13;

    v15 = dispatch_group_create();
    computeGroup = v6->_computeGroup;
    v6->_computeGroup = v15;

    v17 = dispatch_queue_create("com.apple.mediaanalysisd.ocr.compute", 0);
    computeQueue = v6->_computeQueue;
    v6->_computeQueue = v17;
  }

  return v6;
}

+ (id)taskWithAnalysisDatabase:(id)database
{
  databaseCopy = database;
  v5 = [[self alloc] initWithAnalysisDatabase:databaseCopy];

  return v5;
}

- (void)dealloc
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_assetEntries;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        downloadURL = [v7 downloadURL];
        v9 = downloadURL == 0;

        if (!v9)
        {
          downloadURL2 = [v7 downloadURL];
          [PHAssetResourceManager vcp_flushResourceURL:downloadURL2];
        }
      }

      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v11.receiver = self;
  v11.super_class = MADPhotosOCRAssetProcessingTask;
  [(MADPhotosOCRAssetProcessingTask *)&v11 dealloc];
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
        asset = [v8 asset];
        localIdentifier = [asset localIdentifier];
        [v3 addObject:localIdentifier];

        objc_autoreleasePoolPop(v9);
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  return v3;
}

- (void)addPhotosAsset:(id)asset priority:(unint64_t)priority previousStatus:(unint64_t)status attempts:(unint64_t)attempts lastAttemptDate:(id)date
{
  assetCopy = asset;
  v32.receiver = self;
  v32.super_class = MADPhotosOCRAssetProcessingTask;
  statusCopy = status;
  attemptsCopy = attempts;
  dateCopy = date;
  [(MADPhotosAssetProcessingTask *)&v32 addPhotosAsset:assetCopy priority:priority previousStatus:status attempts:attempts lastAttemptDate:?];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v24 = 56;
  v13 = self->_assetEntries;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v14)
  {
    v15 = *v29;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v13);
        }

        asset = [*(*(&v28 + 1) + 8 * i) asset];
        localIdentifier = [asset localIdentifier];
        localIdentifier2 = [assetCopy localIdentifier];
        v20 = [localIdentifier isEqualToString:localIdentifier2];

        if (v20)
        {
          if (MediaAnalysisLogLevel() >= 4)
          {
            v22 = VCPLogToOSLogType[4];
            if (os_log_type_enabled(&_os_log_default, v22))
            {
              localIdentifier3 = [assetCopy localIdentifier];
              *buf = 138412290;
              v34 = localIdentifier3;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[OCR][%@] Batch already contains asset; ignoring", buf, 0xCu);
            }
          }

          goto LABEL_13;
        }
      }

      v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v28 objects:v35 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v21 = *(&self->super.super.super.super.super.isa + v24);
  v13 = [MADOCRAssetEntry entryWithAsset:assetCopy previousStatus:statusCopy previousAttempts:attemptsCopy andLastAttemptDate:dateCopy];
  [v21 addObject:v13];
LABEL_13:
}

- (void)addDownloadRequestID:(int)d forAsset:(id)asset
{
  assetCopy = asset;
  downloadStateQueue = self->_downloadStateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100091340;
  block[3] = &unk_100283770;
  block[4] = self;
  v10 = assetCopy;
  dCopy = d;
  v8 = assetCopy;
  dispatch_sync(downloadStateQueue, block);
}

- (int)removeDownloadRequestIDForAsset:(id)asset
{
  assetCopy = asset;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  downloadStateQueue = self->_downloadStateQueue;
  v14 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000914D8;
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

- (double)downloadInactiveTimeInterval
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  downloadStateQueue = self->_downloadStateQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000916E0;
  v5[3] = &unk_100283178;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(downloadStateQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)cancelRemainingDownloadsWithStatus:(int)status
{
  downloadStateQueue = self->_downloadStateQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100091800;
  v5[3] = &unk_1002837C0;
  v5[4] = self;
  statusCopy = status;
  dispatch_sync(downloadStateQueue, v5);
  dispatch_group_wait(self->_downloadGroup, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)download
{
  v63 = objc_alloc_init(VCPTimeMeasurement);
  [v63 start];
  v3 = +[MADStateHandler sharedStateHandler];
  [v3 addBreadcrumb:{@"[OCR] Downloading %d assets", -[NSMutableArray count](self->_assetEntries, "count")}];

  v4 = VCPSignPostLog();
  v5 = os_signpost_id_generate(v4);

  v6 = VCPSignPostLog();
  v7 = v6;
  spid = v5;
  v62 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "MADPhotosOCRAssetProcessingTask_Download", "", buf, 2u);
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v8 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v8))
    {
      v9 = [(NSMutableArray *)self->_assetEntries count];
      qos_class_self();
      v10 = VCPMAQoSDescription();
      *buf = 67109378;
      *v82 = v9;
      *&v82[4] = 2112;
      *&v82[6] = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[OCR][Download] Downloading %d assets (QoS: %@)", buf, 0x12u);
    }
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = self->_assetEntries;
  v11 = [(NSMutableArray *)obj countByEnumeratingWithState:&v75 objects:v80 count:16];
  if (v11)
  {
    v12 = *v76;
    v13 = VCPLogToOSLogType[6];
    type = VCPLogToOSLogType[4];
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v76 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v75 + 1) + 8 * i);
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v13))
        {
          asset = [v15 asset];
          localIdentifier = [asset localIdentifier];
          *buf = 138412290;
          *v82 = localIdentifier;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[OCR][Download][%@] Finding download resource", buf, 0xCu);
        }

        asset2 = [v15 asset];
        v19 = [PHAssetResource vcp_allAcceptableResourcesForAsset:asset2];

        [v15 setAcceptableResources:v19];
        asset3 = [v15 asset];
        v21 = [(MADPhotosOCRAssetProcessingTask *)self acceptableResourcesForAsset:asset3 withResources:v19];

        v22 = v21;
        asset4 = [v15 asset];
        v24 = [(MADPhotosOCRAssetProcessingTask *)self remoteResourceForAsset:asset4 withAcceptableResources:v21];
        [v15 setDownloadResource:v24];

        downloadResource = [v15 downloadResource];
        LODWORD(v24) = downloadResource == 0;

        if (v24)
        {
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, type))
          {
            asset5 = [v15 asset];
            localIdentifier2 = [asset5 localIdentifier];
            *buf = 138412290;
            *v82 = localIdentifier2;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[OCR][Download][%@] Failed to find download resource", buf, 0xCu);
          }

          [v15 setStatus:4294943494];
        }
      }

      v11 = [(NSMutableArray *)obj countByEnumeratingWithState:&v75 objects:v80 count:16];
    }

    while (v11);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v67 = self->_assetEntries;
  v28 = [(NSMutableArray *)v67 countByEnumeratingWithState:&v71 objects:v79 count:16];
  if (v28)
  {
    obja = 0;
    v29 = *v72;
    typea = VCPLogToOSLogType[5];
    v64 = VCPLogToOSLogType[4];
    while (1)
    {
      for (j = 0; j != v28; j = j + 1)
      {
        if (*v72 != v29)
        {
          objc_enumerationMutation(v67);
        }

        v31 = *(*(&v71 + 1) + 8 * j);
        v32 = +[VCPWatchdog sharedWatchdog];
        [v32 pet];

        acceptableResources = [v31 acceptableResources];
        mad_computeSyncResource = [acceptableResources mad_computeSyncResource];

        if (mad_computeSyncResource)
        {
          asset6 = [v31 asset];
          cancelBlock = [(MADProcessingTask *)self cancelBlock];
          [v31 setIsAnalysisCompleteFromComputeSync:{objc_msgSend(mad_computeSyncResource, "mad_isAnalysisCompleteFromComputeSyncForAsset:taskID:allowDownload:cancel:", asset6, 10, 1, cancelBlock)}];

          if ([v31 isAnalysisCompleteFromComputeSync])
          {
            if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, typea))
            {
              asset7 = [v31 asset];
              localIdentifier3 = [asset7 localIdentifier];
              *buf = 138412290;
              *v82 = localIdentifier3;
              _os_log_impl(&_mh_execute_header, &_os_log_default, typea, "[OCR][Download][%@] Analysis complete with compute sync, skipping media resource download", buf, 0xCu);
            }

            goto LABEL_42;
          }

          if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, typea))
          {
            asset8 = [v31 asset];
            localIdentifier4 = [asset8 localIdentifier];
            *buf = 138412290;
            *v82 = localIdentifier4;
            _os_log_impl(&_mh_execute_header, &_os_log_default, typea, "[OCR][Download][%@] Analysis remains incomplete with compute sync, falling back to media resource download", buf, 0xCu);
          }
        }

        downloadResource2 = [v31 downloadResource];
        v42 = downloadResource2 == 0;

        if (!v42)
        {
          dispatch_group_enter(self->_downloadGroup);
          downloadResource3 = [v31 downloadResource];
          v70[0] = _NSConcreteStackBlock;
          v70[1] = 3221225472;
          v70[2] = sub_10009264C;
          v70[3] = &unk_1002851A8;
          v70[4] = self;
          v70[5] = v31;
          v44 = [PHAssetResourceManager vcp_requestFileURLForAssetResource:downloadResource3 taskID:10 completionHandler:v70];

          if (v44)
          {
            asset9 = [v31 asset];
            [(MADPhotosOCRAssetProcessingTask *)self addDownloadRequestID:v44 forAsset:asset9];

            ++obja;
          }

          else
          {
            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v64))
            {
              asset10 = [v31 asset];
              localIdentifier5 = [asset10 localIdentifier];
              *buf = 138412290;
              *v82 = localIdentifier5;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v64, "[OCR][Download][%@] Failed to initialize resource download", buf, 0xCu);
            }

            [v31 setStatus:4294943494];
            dispatch_group_leave(self->_downloadGroup);
          }
        }

LABEL_42:
      }

      v28 = [(NSMutableArray *)v67 countByEnumeratingWithState:&v71 objects:v79 count:16];
      if (!v28)
      {
        goto LABEL_46;
      }
    }
  }

  obja = 0;
LABEL_46:

  if (MediaAnalysisLogLevel() >= 6)
  {
    v48 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v48))
    {
      *buf = 67109120;
      *v82 = obja;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v48, "[OCR][Download] Waiting for %d downloads to complete", buf, 8u);
    }
  }

  while (1)
  {
    downloadGroup = self->_downloadGroup;
    v50 = dispatch_time(0, 500000000);
    if (!dispatch_group_wait(downloadGroup, v50))
    {
      break;
    }

    cancelBlock2 = [(MADProcessingTask *)self cancelBlock];
    if (cancelBlock2)
    {
      cancelBlock3 = [(MADProcessingTask *)self cancelBlock];
      v53 = cancelBlock3[2]();

      if (v53)
      {
        if (MediaAnalysisLogLevel() >= 5)
        {
          v56 = VCPLogToOSLogType[5];
          if (os_log_type_enabled(&_os_log_default, v56))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v56, "[OCR][Download] Processing cancelled; cancelling downloads", buf, 2u);
          }
        }

        [(MADPhotosOCRAssetProcessingTask *)self cancelRemainingDownloadsWithStatus:4294967168];
        break;
      }
    }

    [(MADPhotosOCRAssetProcessingTask *)self downloadInactiveTimeInterval];
    if (v54 > 60.0)
    {
      if (MediaAnalysisLogLevel() >= 5)
      {
        v55 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v55))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v55, "[OCR][Download] Download inactivity timeout; cancelling downloads", buf, 2u);
        }
      }

      [(MADPhotosOCRAssetProcessingTask *)self cancelRemainingDownloadsWithStatus:4294943494];
      break;
    }
  }

  v57 = VCPSignPostLog();
  v58 = v57;
  if (v62 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v57))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v58, OS_SIGNPOST_INTERVAL_END, spid, "MADPhotosOCRAssetProcessingTask_Download", "", buf, 2u);
  }

  v59 = +[MADStateHandler sharedStateHandler];
  [v59 addBreadcrumb:{@"[OCR] Finished downloading %d assets", -[NSMutableArray count](self->_assetEntries, "count")}];

  [v63 stop];
  v60 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v63 elapsedTimeSeconds];
  [v60 accumulateDoubleValue:@"TotalDownloadTimeInSeconds" forField:@"com.apple.mediaanalysisd.OCRAnalysisRunSession" andEvent:?];
}

- (int)_prepare
{
  v41 = objc_alloc_init(VCPTimeMeasurement);
  [v41 start];
  if (MediaAnalysisLogLevel() >= 6)
  {
    v4 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = [(NSMutableArray *)self->_assetEntries count];
      qos_class_self();
      v6 = VCPMAQoSDescription();
      *buf = 67109378;
      v52 = v5;
      v53 = 2112;
      v54 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[OCR][Prepare] Preparing %d assets (QoS: %@)", buf, 0x12u);
    }
  }

  v42 = +[NSDate now];
  if (+[MADManagedProcessingStatus isMACDPersistEnabled])
  {
    v7 = VCPSignPostLog();
    v8 = os_signpost_id_generate(v7);

    v9 = VCPSignPostLog();
    v10 = v9;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "MADPhotosOCRAssetProcessingTask_Prepare", "", buf, 2u);
    }

    firstObject = [(NSMutableArray *)self->_assetEntries firstObject];
    asset = [firstObject asset];
    photoLibrary = [asset photoLibrary];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_100092FBC;
    v48[3] = &unk_100282938;
    v48[4] = self;
    v49 = v42;
    v47 = 0;
    v13 = [photoLibrary mad_performAnalysisDataStoreChanges:v48 error:&v47];
    v14 = v47;

    if (v13)
    {
      v15 = VCPSignPostLog();
      v16 = v15;
      if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, v8, "MADPhotosOCRAssetProcessingTask_Prepare", "", buf, 2u);
      }
    }

    else
    {
      LODWORD(firstObject) = [v14 code];
      if (MediaAnalysisLogLevel() >= 3)
      {
        v32 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v32))
        {
          v33 = [(NSMutableArray *)self->_assetEntries count];
          *buf = 67109120;
          v52 = v33;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "[OCR][Prepare][MACD] Failed to prepare %d assets", buf, 8u);
        }
      }
    }

    if (v13)
    {
LABEL_40:
      [v41 stop];
      v20 = +[VCPMADCoreAnalyticsManager sharedManager];
      [v41 elapsedTimeSeconds];
      [(NSMutableArray *)v20 accumulateDoubleValue:@"TotalPrepareTimeInSeconds" forField:@"com.apple.mediaanalysisd.OCRAnalysisRunSession" andEvent:?];
      LODWORD(firstObject) = 0;
LABEL_41:
    }
  }

  else
  {
    v17 = VCPSignPostLog();
    spid = os_signpost_id_generate(v17);

    v18 = VCPSignPostLog();
    v19 = v18;
    v39 = spid - 1;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_BEGIN, spid, "MADPhotosOCRAssetProcessingTask_LegacyPrepare", "", buf, 2u);
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v20 = self->_assetEntries;
    v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v43 objects:v50 count:16];
    if (v21)
    {
      v22 = *v44;
LABEL_18:
      v23 = 0;
      v24 = firstObject;
      while (1)
      {
        if (*v44 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v43 + 1) + 8 * v23);
        analysisDatabase = self->_analysisDatabase;
        previousAttempts = [v25 previousAttempts];
        asset2 = [v25 asset];
        v29 = [(VCPDatabaseWriter *)analysisDatabase setAttempts:previousAttempts + 1 asset:asset2 taskID:10 status:1 lastAttemptDate:v42];

        if (v29 == -108)
        {
          firstObject = v29;
        }

        else
        {
          v30 = v29 == -36 || v29 == -23;
          firstObject = v29;
          if (!v30)
          {
            firstObject = v24;
          }
        }

        if (v29 == -108)
        {
          goto LABEL_41;
        }

        if (v29 == -36 || v29 == -23)
        {
          goto LABEL_41;
        }

        v23 = v23 + 1;
        v24 = firstObject;
        if (v21 == v23)
        {
          v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v43 objects:v50 count:16];
          if (v21)
          {
            goto LABEL_18;
          }

          break;
        }
      }
    }

    commit = [(VCPDatabaseWriter *)self->_analysisDatabase commit];
    if (commit == -23)
    {
      v36 = -23;
    }

    else
    {
      v36 = firstObject;
    }

    if (commit == -36)
    {
      v36 = -36;
    }

    if (commit == -108)
    {
      LODWORD(firstObject) = -108;
    }

    else
    {
      LODWORD(firstObject) = v36;
    }

    if (commit != -108 && commit != -36 && commit != -23)
    {
      v37 = VCPSignPostLog();
      v38 = v37;
      if (v39 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_INTERVAL_END, spid, "MADPhotosOCRAssetProcessingTask_LegacyPrepare", "", buf, 2u);
      }

      goto LABEL_40;
    }
  }

  return firstObject;
}

- (id)acceptableResourcesForAsset:(id)asset withResources:(id)resources
{
  assetCopy = asset;
  resourcesCopy = resources;
  if ([assetCopy hasAdjustments])
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    photoLibrary = [assetCopy photoLibrary];
    v6 = [photoLibrary vcp_isSyndicationLibrary] ^ 1;
  }

  v27 = +[NSMutableArray array];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = resourcesCopy;
  v9 = 0;
  v10 = [v8 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v10)
  {
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        if ([v13 type] == 1)
        {
          v14 = v13;

          v9 = v14;
        }

        if ([v13 vcp_isPhoto])
        {
          if ([v13 type] != 13 && objc_msgSend(v13, "type") != 8)
          {
            vcp_uniformTypeIdentifier = [v13 vcp_uniformTypeIdentifier];
            v16 = [VCPImageManager canDecodeAcceleratedUniformTypeIdentifier:vcp_uniformTypeIdentifier];

            if ((v16 & 1) != 0 && ([v13 type] != 1) | v6 & 1 && (objc_msgSend(v13, "analysisType") == 2 || objc_msgSend(v13, "analysisType") == 1))
            {
              [v27 addObject:v13];
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v10);
  }

  v17 = +[PHAssetResource vcp_descendingSizeComparator];
  [v27 sortUsingComparator:v17];

  if (((v9 != 0) & v6) == 1)
  {
    vcp_uniformTypeIdentifier2 = [v9 vcp_uniformTypeIdentifier];
    v19 = [vcp_uniformTypeIdentifier2 conformsToType:UTTypePNG];

    if (v19)
    {
      [v27 addObject:v9];
    }
  }

  if (![v27 count])
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v20 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v20))
      {
        localIdentifier = [assetCopy localIdentifier];
        *buf = 138412290;
        v33 = localIdentifier;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "[OCR][%@] No viable resources; allowing thumbnail", buf, 0xCu);
      }
    }

    vcp_thumbnailResource = [v8 vcp_thumbnailResource];
    if (vcp_thumbnailResource)
    {
      [v27 addObject:vcp_thumbnailResource];
    }

    else if (MediaAnalysisLogLevel() >= 4)
    {
      v23 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v23))
      {
        localIdentifier2 = [assetCopy localIdentifier];
        *buf = 138412290;
        v33 = localIdentifier2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "[OCR][%@] Asset has no thumbnail resource", buf, 0xCu);
      }
    }
  }

  return v27;
}

- (id)localResourceForAsset:(id)asset withAcceptableResources:(id)resources
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  resourcesCopy = resources;
  v5 = [resourcesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(resourcesCopy);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 isLocallyAvailable])
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [resourcesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (id)remoteResourceForAsset:(id)asset withAcceptableResources:(id)resources
{
  assetCopy = asset;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  resourcesCopy = resources;
  v7 = [resourcesCopy countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(resourcesCopy);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 analysisType] == 1)
        {
          firstObject = v10;

          goto LABEL_14;
        }
      }

      v7 = [resourcesCopy countByEnumeratingWithState:&v15 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v11 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v11))
    {
      localIdentifier = [assetCopy localIdentifier];
      *buf = 138412290;
      v20 = localIdentifier;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[OCR][Download][%@] No medium image derivative available; allowing other high-res resources", buf, 0xCu);
    }
  }

  firstObject = [resourcesCopy firstObject];
LABEL_14:

  return firstObject;
}

- (void)processAssetEntry:(id)entry resource:(id)resource resourceURL:(id)l
{
  entryCopy = entry;
  resourceCopy = resource;
  lCopy = l;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v11 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v11))
    {
      asset = [entryCopy asset];
      localIdentifier = [asset localIdentifier];
      *buf = 138412290;
      v109 = localIdentifier;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[OCR][Process][%@] Processing asset", buf, 0xCu);
    }
  }

  v14 = +[VCPWatchdog sharedWatchdog];
  [v14 pet];

  cancelBlock = [(MADProcessingTask *)self cancelBlock];
  if (cancelBlock)
  {
    cancelBlock2 = [(MADProcessingTask *)self cancelBlock];
    v17 = cancelBlock2[2]();

    if (v17)
    {
      if (MediaAnalysisLogLevel() >= 5)
      {
        v18 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v18))
        {
          asset2 = [entryCopy asset];
          localIdentifier2 = [asset2 localIdentifier];
          *buf = 138412290;
          v109 = localIdentifier2;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "[OCR][Process][%@] Processing canceled; skipping asset", buf, 0xCu);
        }
      }

      [entryCopy setStatus:4294967168];
      goto LABEL_91;
    }
  }

  if (![entryCopy isAnalysisCompleteFromComputeSync])
  {
    v24 = VCPSignPostLog();
    v25 = os_signpost_id_generate(v24);

    v26 = VCPSignPostLog();
    v27 = v26;
    if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_BEGIN, v25, "VNImageRequestHandler_init", "", buf, 2u);
    }

    v103 = [[VNImageRequestHandler alloc] initWithURL:lCopy options:&__NSDictionary0__struct];
    v28 = VCPSignPostLog();
    v29 = v28;
    if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_INTERVAL_END, v25, "VNImageRequestHandler_init", "", buf, 2u);
    }

    v30 = +[NSMutableArray array];
    v104 = +[VNRecognizeDocumentsRequest mad_defaultRequest];
    [v30 addObject:?];
    if (VCPPhotosMRCCachingEnabled())
    {
      v31 = +[VNDetectBarcodesRequest mad_defaultRequest];
      if (!v31)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v60 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v60))
          {
            asset3 = [entryCopy asset];
            localIdentifier3 = [asset3 localIdentifier];
            v63 = [0 description];
            *buf = 138412546;
            v109 = localIdentifier3;
            v110 = 2112;
            v111 = v63;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v60, "[OCR][Process][%@] Failed to configure VNDetectBarcodesRequest (%@)", buf, 0x16u);
          }
        }

        [entryCopy setStatus:4294967278];
        v31 = 0;
        v39 = 0;
        goto LABEL_90;
      }

      [v30 addObject:v31];
    }

    else
    {
      v31 = 0;
    }

    asset4 = [entryCopy asset];
    v33 = [asset4 vcp_ocrMajorDimensionForResource:resourceCopy];

    if (v33)
    {
      [v104 setMaximumProcessingDimensionOnTheLongSide:v33];
      [v31 setMaximumProcessingDimensionOnTheLongSide:v33];
    }

    v34 = VCPSignPostLog();
    v35 = os_signpost_id_generate(v34);

    v36 = VCPSignPostLog();
    v37 = v36;
    if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, OS_SIGNPOST_INTERVAL_BEGIN, v35, "VNImageRequestHandler_performRequests", "", buf, 2u);
    }

    v107 = 0;
    v38 = [v103 performRequests:v30 error:&v107];
    v39 = v107;
    v40 = VCPSignPostLog();
    v41 = v40;
    if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v41, OS_SIGNPOST_INTERVAL_END, v35, "VNImageRequestHandler_performRequests", "", buf, 2u);
    }

    if ((v38 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v57 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v57))
        {
          asset5 = [entryCopy asset];
          localIdentifier4 = [asset5 localIdentifier];
          *buf = 138412546;
          v109 = localIdentifier4;
          v110 = 2112;
          v111 = v39;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v57, "[OCR][Process][%@] Processing failed (%@)", buf, 0x16u);
        }
      }

      [entryCopy setStatus:4294967278];
      goto LABEL_90;
    }

    results = [v104 results];
    firstObject = [results firstObject];

    if (!firstObject)
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v64 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v64))
        {
          asset6 = [entryCopy asset];
          localIdentifier5 = [asset6 localIdentifier];
          *buf = 138412290;
          v109 = localIdentifier5;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v64, "[OCR][Process][%@] Processing produced no results", buf, 0xCu);
        }
      }

      [entryCopy setStatus:4294967278];
      goto LABEL_89;
    }

    [entryCopy setVersion:VCPPhotosOCRProcessingVersion];
    getTranscript = [firstObject getTranscript];
    v101 = [getTranscript length];

    if (v101)
    {
      v44 = VCPSignPostLog();
      v45 = os_signpost_id_generate(v44);

      v46 = VCPSignPostLog();
      v47 = v46;
      if (v45 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v47, OS_SIGNPOST_INTERVAL_BEGIN, v45, "VNDocumentObservation_archive", "", buf, 2u);
      }

      v106 = v39;
      v48 = [NSKeyedArchiver archivedDataWithRootObject:firstObject requiringSecureCoding:1 error:&v106];
      v49 = v106;

      v39 = v49;
      [entryCopy setOcrData:v48];

      v50 = VCPSignPostLog();
      v51 = v50;
      if (v45 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v51, OS_SIGNPOST_INTERVAL_END, v45, "VNDocumentObservation_archive", "", buf, 2u);
      }

      ocrData = [entryCopy ocrData];
      v53 = ocrData == 0;

      if (v53)
      {
        if (MediaAnalysisLogLevel() >= 6)
        {
          v54 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v54))
          {
            asset7 = [entryCopy asset];
            localIdentifier6 = [asset7 localIdentifier];
            *buf = 138412290;
            v109 = localIdentifier6;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v54, "[OCR][Process][%@] Failed to archive OCR results", buf, 0xCu);
          }
        }

        [entryCopy setStatus:4294967278];
LABEL_89:

LABEL_90:
        goto LABEL_91;
      }
    }

    else if (MediaAnalysisLogLevel() >= 6)
    {
      v67 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v67))
      {
        asset8 = [entryCopy asset];
        localIdentifier7 = [asset8 localIdentifier];
        *buf = 138412290;
        v109 = localIdentifier7;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v67, "[OCR][Process][%@] No text recognized; skipping archive/persistence", buf, 0xCu);
      }
    }

    if (VCPPhotosMRCCachingEnabled())
    {
      results2 = [v31 results];
      v71 = [results2 count] == 0;

      if (!v71)
      {
        v72 = VCPSignPostLog();
        spid = os_signpost_id_generate(v72);

        v73 = VCPSignPostLog();
        v74 = v73;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v73))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v74, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VNBarcodeObservation_archive", "", buf, 2u);
        }

        results3 = [v31 results];
        v105 = v39;
        v76 = [NSKeyedArchiver archivedDataWithRootObject:results3 requiringSecureCoding:1 error:&v105];
        v77 = v105;

        v39 = v77;
        [entryCopy setMrcData:v76];

        v78 = VCPSignPostLog();
        v79 = v78;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v78))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v79, OS_SIGNPOST_INTERVAL_END, spid, "VNBarcodeObservation_archive", "", buf, 2u);
        }

        mrcData = [entryCopy mrcData];
        v81 = mrcData == 0;

        if (v81)
        {
          if (MediaAnalysisLogLevel() >= 6)
          {
            v97 = VCPLogToOSLogType[6];
            if (os_log_type_enabled(&_os_log_default, v97))
            {
              asset9 = [entryCopy asset];
              localIdentifier8 = [asset9 localIdentifier];
              *buf = 138412290;
              v109 = localIdentifier8;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v97, "[OCR][Process][%@] Failed to archive MRC results", buf, 0xCu);
            }
          }

          [entryCopy setStatus:{4294967278, spid}];
          goto LABEL_89;
        }

        v82 = 1;
        goto LABEL_75;
      }

      if (MediaAnalysisLogLevel() >= 6)
      {
        v83 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v83))
        {
          asset10 = [entryCopy asset];
          localIdentifier9 = [asset10 localIdentifier];
          *buf = 138412290;
          v109 = localIdentifier9;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v83, "[OCR][Process][%@] No MRC detected; skipping archive/persistence", buf, 0xCu);
        }
      }
    }

    v82 = 0;
LABEL_75:
    downloadURL = [entryCopy downloadURL];
    v87 = downloadURL == 0;

    if (!v87)
    {
      downloadURL2 = [entryCopy downloadURL];
      [PHAssetResourceManager vcp_flushResourceURL:downloadURL2];

      [entryCopy setDownloadURL:0];
    }

    asset11 = [entryCopy asset];
    vcp_passedOCRGating = [asset11 vcp_passedOCRGating];

    v91 = +[VCPMADCoreAnalyticsManager sharedManager];
    bOOLValue = [vcp_passedOCRGating BOOLValue];
    if (v101)
    {
      v93 = 1;
    }

    else
    {
      v93 = v82;
    }

    v94 = v93 == 0;
    if (v93)
    {
      v95 = VCPAnalyticsFieldNumberOfAssetsPassGateWithText;
    }

    else
    {
      v95 = VCPAnalyticsFieldNumberOfAssetsPassGateWithoutText;
    }

    v96 = VCPAnalyticsFieldNumberOfAssetsNotPassGateWithText;
    if (v94)
    {
      v96 = VCPAnalyticsFieldNumberOfAssetsNotPassGateWithoutText;
    }

    if (!bOOLValue)
    {
      v95 = v96;
    }

    [v91 accumulateInt64Value:1 forField:*v95 andEvent:@"com.apple.mediaanalysisd.OCRAnalysisRunSession"];

    goto LABEL_89;
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v21 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v21))
    {
      asset12 = [entryCopy asset];
      localIdentifier10 = [asset12 localIdentifier];
      *buf = 138412290;
      v109 = localIdentifier10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "[OCR][Process][%@] Analysis already complete from compute sync ingestion; skipping", buf, 0xCu);
    }
  }

LABEL_91:
}

- (int)_process
{
  v51 = objc_alloc_init(VCPTimeMeasurement);
  [v51 start];
  v3 = VCPSignPostLog();
  v4 = os_signpost_id_generate(v3);

  v5 = VCPSignPostLog();
  v6 = v5;
  v48 = v4 - 1;
  spid = v4;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MADPhotosOCRAssetProcessingTask_Process", "", buf, 2u);
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
      LODWORD(v61[0]) = v8;
      WORD2(v61[0]) = 2112;
      *(v61 + 6) = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[OCR][Process] Processing %d assets (QoS: %@)", buf, 0x12u);
    }
  }

  v10 = +[VCPWatchdog sharedWatchdog];
  [v10 pet];

  v11 = 0;
  v12 = [(NSMutableArray *)self->_assetEntries count]!= 0;
  type = VCPLogToOSLogType[6];
  v55 = v12;
  v53 = VCPLogToOSLogType[4];
  v52 = VCPPhotosOCRProcessingFromGatingVersion;
  while (v11 < [(NSMutableArray *)self->_assetEntries count])
  {
    v13 = objc_autoreleasePoolPush();
    v14 = [(NSMutableArray *)self->_assetEntries objectAtIndexedSubscript:v11];
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
    {
      asset = [v14 asset];
      localIdentifier = [asset localIdentifier];
      *buf = 138412290;
      v61[0] = localIdentifier;
      _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[OCR][Process][%@] Staging asset", buf, 0xCu);
    }

    if ([v14 status])
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v53))
      {
        asset2 = [v14 asset];
        localIdentifier2 = [asset2 localIdentifier];
        *buf = 138412290;
        v61[0] = localIdentifier2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v53, "[OCR][Process][%@] Asset has failure status; skipping", buf, 0xCu);
      }
    }

    else
    {
      asset3 = [v14 asset];
      adjustmentVersion = [asset3 adjustmentVersion];
      v21 = adjustmentVersion == 0;

      if (v21)
      {
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v53))
        {
          asset4 = [v14 asset];
          localIdentifier3 = [asset4 localIdentifier];
          *buf = 138412290;
          v61[0] = localIdentifier3;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v53, "[OCR][Process][%@] Asset has no adjustment version; skipping", buf, 0xCu);
        }

        [v14 setStatus:4294943493];
      }

      else
      {
        downloadResource = [v14 downloadResource];
        downloadURL = [v14 downloadURL];
        if (downloadURL)
        {
          v24 = +[VCPMADCoreAnalyticsManager sharedManager];
          [v24 accumulateInt64Value:1 forField:@"NumbeOfResourceDownloads" andEvent:@"com.apple.mediaanalysisd.OCRAnalysisRunSession"];
          v25 = downloadResource;
        }

        else
        {
          asset5 = [v14 asset];
          v29 = [PHAssetResource vcp_allAcceptableResourcesForAsset:asset5];

          asset6 = [v14 asset];
          v24 = [(MADPhotosOCRAssetProcessingTask *)self acceptableResourcesForAsset:asset6 withResources:v29];

          asset7 = [v14 asset];
          v25 = [(MADPhotosOCRAssetProcessingTask *)self localResourceForAsset:asset7 withAcceptableResources:v24];

          if (v25)
          {
            downloadURL = [v25 privateFileURL];
          }

          else
          {
            downloadURL = 0;
          }
        }

        asset8 = [v14 asset];
        characterRecognitionProperties = [asset8 characterRecognitionProperties];
        algorithmVersion = [characterRecognitionProperties algorithmVersion];

        v55 &= algorithmVersion == v52;
        if (downloadURL)
        {
          v35 = [v14 version] == v52;
          computeGroup = self->_computeGroup;
          computeQueue = self->_computeQueue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000953CC;
          block[3] = &unk_1002851D0;
          block[4] = self;
          v57 = v14;
          v58 = v25;
          v59 = downloadURL;
          dispatch_group_async(computeGroup, computeQueue, block);

          v55 &= v35;
        }

        else
        {
          asset9 = [v14 asset];
          vcp_passedOCRGating = [asset9 vcp_passedOCRGating];

          if ([vcp_passedOCRGating BOOLValue])
          {
            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v53))
            {
              asset10 = [v14 asset];
              localIdentifier4 = [asset10 localIdentifier];
              *buf = 138412290;
              v61[0] = localIdentifier4;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v53, "[OCR][Process][%@] No acceptable resource available", buf, 0xCu);
            }

            [v14 setStatus:4294943494];
          }

          else
          {
            [v14 setVersion:v52];
            v42 = +[VCPMADCoreAnalyticsManager sharedManager];
            [v42 accumulateInt64Value:1 forField:@"NumberOfAssetsGated" andEvent:@"com.apple.mediaanalysisd.OCRAnalysisRunSession"];
          }
        }
      }
    }

    objc_autoreleasePoolPop(v13);
    ++v11;
  }

  self->_shouldSkipPhotosPersist = v55 & 1;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[OCR][Process] Waiting for compute to complete", buf, 2u);
  }

  dispatch_group_wait(self->_computeGroup, 0xFFFFFFFFFFFFFFFFLL);
  v43 = VCPSignPostLog();
  v44 = v43;
  if (v49 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, OS_SIGNPOST_INTERVAL_END, spid, "MADPhotosOCRAssetProcessingTask_Process", "", buf, 2u);
  }

  [v51 stop];
  v45 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v51 elapsedTimeSeconds];
  [v45 accumulateDoubleValue:@"TimeAnalyzingInSeconds" forField:@"com.apple.mediaanalysisd.OCRAnalysisRunSession" andEvent:?];

  v46 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v51 elapsedTimeSeconds];
  [v46 accumulateDoubleValue:@"TotalProcessTimeInSeconds" forField:@"com.apple.mediaanalysisd.OCRAnalysisRunSession" andEvent:?];

  return 0;
}

- (void)process
{
  if (!self->_status)
  {
    self->_status = [(MADPhotosOCRAssetProcessingTask *)self _process];
  }
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

- (int)_publishProcessingStatusForPhotoLibrary:(id)library
{
  v8 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10009564C;
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

- (int)_publishProcessingStatusToLegacyDatabase
{
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = self->_assetEntries;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (!v3)
  {
    goto LABEL_51;
  }

  v36 = *v39;
  type = VCPLogToOSLogType[7];
  do
  {
    v4 = 0;
    v5 = v2;
    v35 = v3;
    do
    {
      if (*v39 != v36)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v38 + 1) + 8 * v4);
      v7 = objc_autoreleasePoolPush();
      asset = [v6 asset];
      localIdentifier = [asset localIdentifier];
      v10 = [NSString stringWithFormat:@"[OCR][%@][Legacy]", localIdentifier];

      if (![v6 status])
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v43 = v10;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis completed, removing processing status", buf, 0xCu);
        }

        analysisDatabase = self->_analysisDatabase;
        asset2 = [v6 asset];
        localIdentifier2 = [asset2 localIdentifier];
        v20 = [(VCPDatabaseWriter *)analysisDatabase removeProcessingStatusForLocalIdentifier:localIdentifier2 andTaskID:10];

LABEL_33:
        if (v20 == -108 || v20 == -36)
        {
          v2 = v20;
        }

        else
        {
          v2 = v20;
          if (v20 != -23)
          {
            v2 = v5;
          }
        }

LABEL_38:
        v31 = 0;
        if (v20 != -108 && v20 != -36 && v20 != -23)
        {
          goto LABEL_41;
        }

        goto LABEL_42;
      }

      if ([v6 status] != -128)
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v43 = v10;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis failed, updating processing status", buf, 0xCu);
        }

        [v6 status];
        v21 = MADProcessingStatusForOSStatus();
        asset3 = [v6 asset];
        currentAttemptDate = [v6 currentAttemptDate];
        v24 = [asset3 mad_nextAttemptDateForStatus:v21 currentAttemptDate:currentAttemptDate attemptCount:{objc_msgSend(v6, "previousAttempts") + 1}];

        v25 = self->_analysisDatabase;
        asset4 = [v6 asset];
        localIdentifier3 = [asset4 localIdentifier];
        v20 = [(VCPDatabaseWriter *)v25 updateProcessingStatus:v21 andNextAttemptDate:v24 forLocalIdentifier:localIdentifier3 andTaskID:10];

        if (v20 == -108 || v20 == -36)
        {
          v2 = v20;
        }

        else
        {
          v2 = v20;
          if (v20 != -23)
          {
            v2 = v5;
          }
        }

        goto LABEL_38;
      }

      if (![v6 previousAttempts])
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v43 = v10;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis cancelled, removing processing status", buf, 0xCu);
        }

        v28 = self->_analysisDatabase;
        asset5 = [v6 asset];
        localIdentifier4 = [asset5 localIdentifier];
        v20 = [(VCPDatabaseWriter *)v28 removeProcessingStatusForLocalIdentifier:localIdentifier4 andTaskID:10];

        goto LABEL_33;
      }

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
      {
        *buf = 138412290;
        v43 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis cancelled, recovering processing status", buf, 0xCu);
      }

      v11 = self->_analysisDatabase;
      previousAttempts = [v6 previousAttempts];
      asset6 = [v6 asset];
      previousStatus = [v6 previousStatus];
      lastAttemptDate = [v6 lastAttemptDate];
      v16 = [(VCPDatabaseWriter *)v11 setAttempts:previousAttempts asset:asset6 taskID:10 status:previousStatus lastAttemptDate:lastAttemptDate];

      if (v16 == -108 || v16 == -36)
      {
        v2 = v16;
      }

      else
      {
        v2 = v16;
        if (v16 != -23)
        {
          v2 = v5;
        }
      }

      v31 = 0;
      if (v16 != -108 && v16 != -36 && v16 != -23)
      {
LABEL_41:
        v31 = 1;
      }

LABEL_42:

      objc_autoreleasePoolPop(v7);
      if (!v31)
      {
        goto LABEL_52;
      }

      v4 = v4 + 1;
      v5 = v2;
    }

    while (v35 != v4);
    v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  }

  while (v3);
LABEL_51:
  LODWORD(v2) = 0;
LABEL_52:

  return v2;
}

- (void)_reportRunSessionAnalyticsWithPublishDuration:(double)duration
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
          if ([v10 status] == -128)
          {
            goto LABEL_20;
          }

          v12 = @"NumberOfAssetsSoftFailure";
          status = [v10 status];
          v14 = @"NumberOfAssetsNoResource";
          if (status == -23802 || (v15 = [v10 status], v14 = @"NumberOfAssetsDownloadThrottled", v15 == -23808))
          {
            v16 = v14;

            v12 = v16;
          }

          [v5 accumulateInt64Value:1 forField:v12 andEvent:{@"com.apple.mediaanalysisd.OCRAnalysisRunSession", v22}];
          [v5 accumulateInt64Value:1 forField:@"NumberOfAssetsIntoBlacklist" andEvent:@"com.apple.mediaanalysisd.OCRAnalysisRunSession"];
          if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
          {
            asset = [v10 asset];
            localIdentifier = [asset localIdentifier];
            *buf = v22;
            v32 = localIdentifier;
            v33 = 2112;
            v34 = v12;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[OCR][%@] Asset failed processing. Failure: %@", buf, 0x16u);
          }

          if ([v10 previousAttempts] >= v25 && objc_msgSend(v10, "previousAttempts") <= v23 && objc_msgSend(v10, "status") != -23802)
          {
            v19 = +[VCPAutoBugCapture sharedCapturer];
            asset2 = [v10 asset];
            [v19 captureProcessingFailure:v12 taskID:10 asset:asset2 previousAttempts:{objc_msgSend(v10, "previousAttempts")}];
          }
        }

        else
        {
          v12 = +[VCPMADCoreAnalyticsManager sharedManager];
          [(__CFString *)v12 accumulateInt64Value:1 forField:@"NumberOfAssetsAnalyzed" andEvent:@"com.apple.mediaanalysisd.OCRAnalysisRunSession"];
        }

LABEL_20:
        objc_autoreleasePoolPop(v11);
      }

      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v6);
  }

  v21 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v21 accumulateDoubleValue:@"TotalPublishTimeInSeconds" forField:@"com.apple.mediaanalysisd.OCRAnalysisRunSession" andEvent:duration];
}

- (int)_publish
{
  v3 = objc_alloc_init(VCPTimeMeasurement);
  [v3 start];
  v4 = VCPSignPostLog();
  v5 = os_signpost_id_generate(v4);

  v6 = VCPSignPostLog();
  v7 = v6;
  spid = v5;
  v45 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "MADPhotosOCRAssetProcessingTask_Publish", "", buf, 2u);
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v8 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v8))
    {
      v9 = [(NSMutableArray *)self->_assetEntries count];
      qos_class_self();
      v10 = VCPMAQoSDescription();
      *buf = 67109378;
      *v55 = v9;
      *&v55[4] = 2112;
      *&v55[6] = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[OCR][Publish] Persisting %d assets (QoS: %@)", buf, 0x12u);
    }
  }

  if ([(NSMutableArray *)self->_assetEntries count])
  {
    _propagateAssetProcessingStatus = [(MADPhotosOCRAssetProcessingTask *)self _propagateAssetProcessingStatus];
    firstObject = [(NSMutableArray *)self->_assetEntries firstObject];
    asset = [firstObject asset];
    photoLibrary = [asset photoLibrary];

    if (self->_shouldSkipPhotosPersist)
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v14 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v14))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[OCR][Publish] Skipped Photos persist since all assets were and still are gated", buf, 2u);
        }
      }
    }

    else
    {
      v15 = +[MADStateHandler sharedStateHandler];
      [v15 addBreadcrumb:{@"[OCR] Persisting %d assets to Photos", -[NSMutableArray count](self->_assetEntries, "count")}];

      v16 = +[VCPWatchdog sharedWatchdog];
      [v16 pet];

      v17 = +[MADStateHandler sharedStateHandler];
      [v17 enterKnownTimeoutRisk:1];

      v52[0] = _NSConcreteStackBlock;
      v52[1] = 3221225472;
      v52[2] = sub_100096D20;
      v52[3] = &unk_100283210;
      v52[4] = self;
      v42 = objc_retainBlock(v52);
      cancelBlock = [(MADProcessingTask *)self cancelBlock];
      v51 = 0;
      v19 = [photoLibrary mad_performChangesAndWait:v42 activity:10 cancelBlock:cancelBlock extendTimeoutBlock:&stru_1002851F0 error:&v51];
      v43 = v51;

      v20 = +[MADStateHandler sharedStateHandler];
      [v20 exitKnownTimeoutRisk];

      v21 = +[MADStateHandler sharedStateHandler];
      [v21 addBreadcrumb:{@"[OCR] Finished persisting %d assets to Photos", -[NSMutableArray count](self->_assetEntries, "count")}];

      if ((v19 & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v22 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v22))
          {
            *buf = 138412290;
            *v55 = v43;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[OCR][Publish] Failed to persist OCR results to Photos (%@)", buf, 0xCu);
          }
        }

        if ([v43 code] == -128)
        {
          v23 = 4294967168;
        }

        else
        {
          v23 = 4294967278;
        }

        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v24 = self->_assetEntries;
        v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v47 objects:v53 count:16];
        if (v25)
        {
          v26 = *v48;
          do
          {
            for (i = 0; i != v25; i = i + 1)
            {
              if (*v48 != v26)
              {
                objc_enumerationMutation(v24);
              }

              v28 = *(*(&v47 + 1) + 8 * i);
              v29 = objc_autoreleasePoolPush();
              if (![v28 status])
              {
                [v28 setStatus:v23];
              }

              objc_autoreleasePoolPop(v29);
            }

            v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v47 objects:v53 count:16];
          }

          while (v25);
        }

        code = [v43 code];
        if (_propagateAssetProcessingStatus)
        {
          v31 = 1;
        }

        else
        {
          v31 = code == 0;
        }

        if (!v31)
        {
          _propagateAssetProcessingStatus = code;
        }
      }
    }

    if (+[MADManagedProcessingStatus isMACDPersistEnabled])
    {
      v32 = [(MADPhotosOCRAssetProcessingTask *)self _publishProcessingStatusForPhotoLibrary:photoLibrary];
      if (!_propagateAssetProcessingStatus && v32 != 0)
      {
        _propagateAssetProcessingStatus = v32;
      }
    }

    if (+[VCPDatabaseWriter isLegacyPersistEnabled])
    {
      _publishProcessingStatusToLegacyDatabase = [(MADPhotosOCRAssetProcessingTask *)self _publishProcessingStatusToLegacyDatabase];
      commit = [(VCPDatabaseWriter *)self->_analysisDatabase commit];
      if (_propagateAssetProcessingStatus)
      {
        v36 = 1;
      }

      else
      {
        v36 = _publishProcessingStatusToLegacyDatabase == 0;
      }

      if (v36)
      {
        v37 = _propagateAssetProcessingStatus;
      }

      else
      {
        v37 = _publishProcessingStatusToLegacyDatabase;
      }

      if (v37)
      {
        v38 = 1;
      }

      else
      {
        v38 = commit == 0;
      }

      if (v38)
      {
        _propagateAssetProcessingStatus = v37;
      }

      else
      {
        _propagateAssetProcessingStatus = commit;
      }
    }

    v39 = VCPSignPostLog();
    v40 = v39;
    if (v45 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v40, OS_SIGNPOST_INTERVAL_END, spid, "MADPhotosOCRAssetProcessingTask_Publish", "", buf, 2u);
    }

    [v3 stop];
    [v3 elapsedTimeSeconds];
    [(MADPhotosOCRAssetProcessingTask *)self _reportRunSessionAnalyticsWithPublishDuration:?];
  }

  else
  {
    _propagateAssetProcessingStatus = 0;
  }

  return _propagateAssetProcessingStatus;
}

- (void)publish
{
  if (!self->_status)
  {
    self->_status = [(MADPhotosOCRAssetProcessingTask *)self _publish];
  }
}

@end