@interface MADPhotosVisualSearchAssetProcessingTask
+ (id)taskWithServicePool:(id)pool visionSession:(id)session analysisDatabase:(id)database;
- (CGRect)_computeRegionOfInterest:(__CVBuffer *)interest orientation:(unsigned int)orientation;
- (MADPhotosVisualSearchAssetProcessingTask)initWithServicePool:(id)pool visionSession:(id)session analysisDatabase:(id)database;
- (id)assetLocalIdentifiers;
- (int)_calculateStickerScore:(__CVBuffer *)score orientation:(unsigned int)orientation regionOfInterest:(CGRect)interest stickerScore:(float *)stickerScore;
- (int)_prepare;
- (int)_process;
- (int)_propagateAssetProcessingStatus;
- (int)_publish;
- (int)_publishProcessingStatusForPhotoLibrary:(id)library;
- (int)_publishProcessingStatusToLegacyDatabase;
- (void)_reportRunSessionAnalyticsWithPublishDuration:(double)duration;
- (void)addPhotosAsset:(id)asset priority:(unint64_t)priority previousStatus:(unint64_t)status attempts:(unint64_t)attempts lastAttemptDate:(id)date;
- (void)process;
- (void)publish;
@end

@implementation MADPhotosVisualSearchAssetProcessingTask

- (MADPhotosVisualSearchAssetProcessingTask)initWithServicePool:(id)pool visionSession:(id)session analysisDatabase:(id)database
{
  poolCopy = pool;
  sessionCopy = session;
  databaseCopy = database;
  v19.receiver = self;
  v19.super_class = MADPhotosVisualSearchAssetProcessingTask;
  v12 = [(MADProcessingTask *)&v19 init];
  if (v12)
  {
    v13 = +[NSMutableArray array];
    assetEntries = v12->_assetEntries;
    v12->_assetEntries = v13;

    objc_storeStrong(&v12->_servicePool, pool);
    objc_storeStrong(&v12->_visionSession, session);
    objc_storeStrong(&v12->_analysisDatabase, database);
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.mediaanalysis.StickerScore", v15);
    stickerQueue = v12->_stickerQueue;
    v12->_stickerQueue = v16;
  }

  return v12;
}

+ (id)taskWithServicePool:(id)pool visionSession:(id)session analysisDatabase:(id)database
{
  poolCopy = pool;
  sessionCopy = session;
  databaseCopy = database;
  v11 = [[self alloc] initWithServicePool:poolCopy visionSession:sessionCopy analysisDatabase:databaseCopy];

  return v11;
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
  v39.receiver = self;
  v39.super_class = MADPhotosVisualSearchAssetProcessingTask;
  statusCopy = status;
  attemptsCopy = attempts;
  dateCopy = date;
  [(MADPhotosAssetProcessingTask *)&v39 addPhotosAsset:assetCopy priority:priority previousStatus:status attempts:attempts lastAttemptDate:?];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v31 = 56;
  v13 = self->_assetEntries;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v14)
  {
    v15 = *v36;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v13);
        }

        asset = [*(*(&v35 + 1) + 8 * i) asset];
        localIdentifier = [asset localIdentifier];
        localIdentifier2 = [assetCopy localIdentifier];
        v20 = [localIdentifier isEqualToString:localIdentifier2];

        if (v20)
        {
          if (MediaAnalysisLogLevel() >= 4)
          {
            v27 = VCPLogToOSLogType[4];
            if (os_log_type_enabled(&_os_log_default, v27))
            {
              localIdentifier3 = [assetCopy localIdentifier];
              *buf = 138412290;
              v41 = localIdentifier3;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "[VisualSearch][%@] Batch already contains asset; ignoring", buf, 0xCu);
            }
          }

          goto LABEL_20;
        }
      }

      v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v35 objects:v42 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  vcp_needsVisualSearchProcessing = [assetCopy vcp_needsVisualSearchProcessing];
  vcp_needsStickerGatingProcessing = [assetCopy vcp_needsStickerGatingProcessing];
  v23 = 2;
  if (!vcp_needsVisualSearchProcessing)
  {
    v23 = 0;
  }

  if (vcp_needsStickerGatingProcessing)
  {
    v24 = v23 | 4;
  }

  else
  {
    v24 = v23;
  }

  if (v24)
  {
    v25 = *(&self->super.super.super.super.super.isa + v31);
    v26 = [MADVisualSearchAssetEntry entryWithAsset:assetCopy previousStatus:statusCopy previousAttempts:attemptsCopy andLastAttemptDate:dateCopy analysisTypes:?];
    [v25 addObject:v26];
  }

  else if (MediaAnalysisLogLevel() >= 4)
  {
    v29 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v29))
    {
      localIdentifier4 = [assetCopy localIdentifier];
      *buf = 138412290;
      v41 = localIdentifier4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v29, "[VisualSearch][%@] Asset is with up-to-date results, ignoring", buf, 0xCu);
    }
  }

LABEL_20:
}

- (int)_prepare
{
  v42 = objc_alloc_init(VCPTimeMeasurement);
  [v42 start];
  if (MediaAnalysisLogLevel() >= 6)
  {
    v4 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = [(NSMutableArray *)self->_assetEntries count];
      qos_class_self();
      v6 = VCPMAQoSDescription();
      *buf = 67109378;
      v53 = v5;
      v54 = 2112;
      v55 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[VisualSearch] Preparing %d assets (QoS: %@)", buf, 0x12u);
    }
  }

  v43 = +[NSDate now];
  if (+[MADManagedProcessingStatus isMACDPersistEnabled])
  {
    firstObject = [(NSMutableArray *)self->_assetEntries firstObject];
    asset = [firstObject asset];
    photoLibrary = [asset photoLibrary];

    v10 = VCPSignPostLog();
    v2 = os_signpost_id_generate(v10);

    v11 = VCPSignPostLog();
    v12 = v11;
    if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v2, "MADPhotosVisualSearchAssetProcessingTask_Prepare", "", buf, 2u);
    }

    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_1001360A0;
    v49[3] = &unk_100282938;
    v49[4] = self;
    v50 = v43;
    v48 = 0;
    v13 = [photoLibrary mad_performAnalysisDataStoreChanges:v49 error:&v48];
    v14 = v48;
    v15 = v14;
    if (v13)
    {
      v16 = VCPSignPostLog();
      v17 = v16;
      if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, v2, "MADPhotosVisualSearchAssetProcessingTask_Prepare", "", buf, 2u);
      }
    }

    else
    {
      LODWORD(v2) = [v14 code];
      if (MediaAnalysisLogLevel() >= 3)
      {
        v33 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v33))
        {
          v34 = [(NSMutableArray *)self->_assetEntries count];
          *buf = 67109120;
          v53 = v34;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v33, "[VisualSearch][MACD] Failed to prepare %d assets", buf, 8u);
        }
      }
    }

    if (v13)
    {
LABEL_40:
      [v42 stop];
      v21 = +[VCPMADCoreAnalyticsManager sharedManager];
      [v42 elapsedTimeSeconds];
      [(NSMutableArray *)v21 accumulateDoubleValue:@"TotalPrepareTimeInSeconds" forField:@"com.apple.mediaanalysisd.VisualSearchAnalysisRunSession" andEvent:?];
      LODWORD(v2) = 0;
LABEL_41:
    }
  }

  else
  {
    v18 = VCPSignPostLog();
    spid = os_signpost_id_generate(v18);

    v19 = VCPSignPostLog();
    v20 = v19;
    v40 = spid - 1;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_BEGIN, spid, "MADPhotosVisualSearchAssetProcessingTask_LegacyPrepare", "", buf, 2u);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v21 = self->_assetEntries;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v44 objects:v51 count:16];
    if (v22)
    {
      v23 = *v45;
LABEL_18:
      v24 = 0;
      v25 = v2;
      while (1)
      {
        if (*v45 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v44 + 1) + 8 * v24);
        analysisDatabase = self->_analysisDatabase;
        previousAttempts = [v26 previousAttempts];
        asset2 = [v26 asset];
        v30 = [(VCPDatabaseWriter *)analysisDatabase setAttempts:previousAttempts + 1 asset:asset2 taskID:12 status:1 lastAttemptDate:v43];

        if (v30 == -108)
        {
          v2 = v30;
        }

        else
        {
          v31 = v30 == -36 || v30 == -23;
          v2 = v30;
          if (!v31)
          {
            v2 = v25;
          }
        }

        if (v30 == -108)
        {
          goto LABEL_41;
        }

        if (v30 == -36 || v30 == -23)
        {
          goto LABEL_41;
        }

        v24 = v24 + 1;
        v25 = v2;
        if (v22 == v24)
        {
          v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v44 objects:v51 count:16];
          if (v22)
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
      v37 = -23;
    }

    else
    {
      v37 = v2;
    }

    if (commit == -36)
    {
      v37 = -36;
    }

    if (commit == -108)
    {
      LODWORD(v2) = -108;
    }

    else
    {
      LODWORD(v2) = v37;
    }

    if (commit != -108 && commit != -36 && commit != -23)
    {
      v38 = VCPSignPostLog();
      v39 = v38;
      if (v40 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_INTERVAL_END, spid, "MADPhotosVisualSearchAssetProcessingTask_LegacyPrepare", "", buf, 2u);
      }

      goto LABEL_40;
    }
  }

  return v2;
}

- (CGRect)_computeRegionOfInterest:(__CVBuffer *)interest orientation:(unsigned int)orientation
{
  v5 = [VIImage imageWithPixelBuffer:interest orientation:*&orientation];
  v6 = [[VIRefineRegionRequest alloc] initWithImage:v5 regionOfInterest:1 imageType:0 preferredMetalDevice:{0.0, 0.0, 1.0, 1.0}];
  getObject = [(VCPObjectPool *)self->_servicePool getObject];
  object = [getObject object];
  v30 = 0;
  v9 = [object refineRegionsWithRequest:v6 error:&v30];
  v10 = v30;

  if (v10)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v11 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v11))
      {
        *buf = 138412290;
        v32 = *&v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[StickerScore] Failed to detect screenshot ROI (%@)", buf, 0xCu);
      }
    }

    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  else
  {
    refinedRegions = [v9 refinedRegions];
    v17 = [refinedRegions count] == 0;

    if (v17)
    {
      width = 1.0;
      x = 0.0;
      if (MediaAnalysisLogLevel() >= 5)
      {
        v25 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v25))
        {
          *buf = 138412290;
          v32 = 0.0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "[StickerScore] Screenshot has no ROI (%@)", buf, 0xCu);
        }
      }

      y = 0.0;
      height = 1.0;
    }

    else
    {
      refinedRegions2 = [v9 refinedRegions];
      firstObject = [refinedRegions2 firstObject];

      [firstObject regionOfInterest];
      v46.origin.x = 0.0;
      v46.origin.y = 0.0;
      v46.size.width = 1.0;
      v46.size.height = 1.0;
      v44 = CGRectIntersection(v43, v46);
      x = v44.origin.x;
      y = v44.origin.y;
      width = v44.size.width;
      height = v44.size.height;
      if (MediaAnalysisLogLevel() >= 6)
      {
        v20 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v20))
        {
          [firstObject confidence];
          v22 = v21;
          refinedRegions3 = [v9 refinedRegions];
          v24 = [refinedRegions3 count];
          *buf = 134219264;
          v32 = x;
          v33 = 2048;
          v34 = y;
          v35 = 2048;
          v36 = width;
          v37 = 2048;
          v38 = height;
          v39 = 2048;
          v40 = v22;
          v41 = 1024;
          v42 = v24;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "[StickerScore] Screenshot ROI: (%0.2f, %0.2f) %0.2fx%0.2f Confidence: %0.2f [1 of %d]", buf, 0x3Au);
        }
      }
    }
  }

  v26 = x;
  v27 = y;
  v28 = width;
  v29 = height;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (int)_calculateStickerScore:(__CVBuffer *)score orientation:(unsigned int)orientation regionOfInterest:(CGRect)interest stickerScore:(float *)stickerScore
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  *stickerScore = 0.0;
  v11 = [[VNImageRequestHandler alloc] initWithCVPixelBuffer:score orientation:*&orientation options:&__NSDictionary0__struct session:self->_visionSession];
  v12 = objc_alloc_init(VNGenerateInstanceMaskGatingRequest);
  if (DeviceHasANE())
  {
    v13 = +[VNProcessingDevice defaultANEDevice];
    [v12 setProcessingDevice:v13];
  }

  [v12 setRegionOfInterest:{x, y, width, height}];
  v30 = v12;
  v14 = [NSArray arrayWithObjects:&v30 count:1];
  v27 = 0;
  v15 = [v11 performRequests:v14 error:&v27];
  v16 = v27;

  if ((v15 & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v23 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v23))
      {
        v24 = [v16 description];
        *buf = 138412290;
        v29 = v24;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "[ImageStickerScore] Score generation failed (%@)", buf, 0xCu);
      }
    }

    goto LABEL_12;
  }

  results = [v12 results];
  v18 = [results count] == 0;

  if (v18)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v25 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v25))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "[ImageStickerScore] No observations produced for image", buf, 2u);
      }
    }

LABEL_12:
    v22 = -18;
    goto LABEL_13;
  }

  results2 = [v12 results];
  firstObject = [results2 firstObject];
  [firstObject confidence];
  *stickerScore = v21;

  v22 = 0;
LABEL_13:

  return v22;
}

- (int)_process
{
  v88 = objc_alloc_init(VCPTimeMeasurement);
  [v88 start];
  concurrentAssetCount = [objc_opt_class() concurrentAssetCount];
  dsema = dispatch_semaphore_create(concurrentAssetCount);
  v86 = dispatch_group_create();
  group = dispatch_group_create();
  getObject = [(VCPObjectPool *)self->_servicePool getObject];
  v4 = VCPSignPostLog();
  v5 = os_signpost_id_generate(v4);

  v6 = VCPSignPostLog();
  v7 = v6;
  spid = v5;
  v82 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "MADPhotosVisualSearchAssetProcessingTask_Process", "", buf, 2u);
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
      *&buf[4] = v9;
      LOWORD(v126) = 2112;
      *(&v126 + 2) = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[VisualSearch] Processing %d assets (QoS: %@)", buf, 0x12u);
    }
  }

  v113 = 0;
  v114 = &v113;
  v115 = 0x2020000000;
  v116 = 0;
  v109 = 0;
  v110 = &v109;
  v111 = 0x2020000000;
  v112 = 0;
  *buf = 0;
  *&v126 = buf;
  *(&v126 + 1) = 0x3032000000;
  v127 = sub_100137B9C;
  v128 = sub_100137BAC;
  v129 = objc_alloc_init(NSMutableDictionary);
  v11 = +[NSDate now];
  [v11 timeIntervalSince1970];

  v12 = 0;
  v13 = &_os_log_default;
  type = VCPLogToOSLogType[5];
  v89 = VCPLogToOSLogType[4];
  v90 = VCPLogToOSLogType[6];
  v78 = VIQueryContextImageTypeKey;
  v79 = VIQueryContextLocationKey;
  while (v12 < [(NSMutableArray *)self->_assetEntries count])
  {
    v14 = v13;
    v15 = objc_autoreleasePoolPush();
    v16 = +[VCPWatchdog sharedWatchdog];
    [v16 pet];

    cancelBlock = [(MADProcessingTask *)self cancelBlock];
    if (!cancelBlock || ([(MADProcessingTask *)self cancelBlock], v18 = objc_claimAutoreleasedReturnValue(), v19 = v18[2](), v18, cancelBlock, !v19))
    {
      v21 = [(NSMutableArray *)self->_assetEntries objectAtIndexedSubscript:v12];
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(v14, v90))
      {
        asset = [v21 asset];
        localIdentifier = [asset localIdentifier];
        *v117 = 138412290;
        v118 = localIdentifier;
        _os_log_impl(&_mh_execute_header, v14, v90, "[VisualSearch][%@] Processing asset", v117, 0xCu);
      }

      asset2 = [v21 asset];
      adjustmentVersion = [asset2 adjustmentVersion];
      v26 = adjustmentVersion == 0;

      if (!v26)
      {
        asset3 = [v21 asset];
        v91 = [PHAssetResource vcp_allAcceptableResourcesForAsset:asset3];

        vcp_thumbnailResource = [v91 vcp_thumbnailResource];
        v29 = vcp_thumbnailResource;
        if (vcp_thumbnailResource)
        {
          if ([vcp_thumbnailResource isLocallyAvailable])
          {
            v30 = VCPSignPostLog();
            v31 = os_signpost_id_generate(v30);

            v32 = VCPSignPostLog();
            v33 = v32;
            if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
            {
              *v117 = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_INTERVAL_BEGIN, v31, "VCPMADVisualSearchAssetBatch_Decode", "", v117, 2u);
            }

            v108 = 0;
            v34 = +[VCPImageManager sharedImageManager];
            privateFileURL = [v29 privateFileURL];
            cf = [v34 pixelBufferWithFormat:875704438 fromImageURL:privateFileURL flushCache:0 orientation:&v108];

            v36 = VCPSignPostLog();
            v37 = v36;
            if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
            {
              *v117 = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, OS_SIGNPOST_INTERVAL_END, v31, "VCPMADVisualSearchAssetBatch_Decode", "", v117, 2u);
            }

            if (cf)
            {
              if (([v21 analysisTypes] & 4) != 0)
              {
                stickerQueue = self->_stickerQueue;
                block[0] = _NSConcreteStackBlock;
                block[1] = 3321888768;
                block[2] = sub_100137BB4;
                block[3] = &unk_100286DE0;
                v103 = v21;
                selfCopy = self;
                v105 = cf;
                if (cf)
                {
                  CFRetain(cf);
                }

                v106 = v108;
                dispatch_group_async(group, stickerQueue, block);
                sub_100002CBC(&v105);
              }

              if (([v21 analysisTypes] & 2) != 0)
              {
                if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(v14, v90))
                {
                  asset4 = [v21 asset];
                  localIdentifier2 = [asset4 localIdentifier];
                  type = [v29 type];
                  pixelWidth = [v29 pixelWidth];
                  pixelHeight = [v29 pixelHeight];
                  *v117 = 138413058;
                  v118 = localIdentifier2;
                  v119 = 2048;
                  v120 = type;
                  v121 = 1024;
                  v122 = pixelWidth;
                  v123 = 1024;
                  v124 = pixelHeight;
                  _os_log_impl(&_mh_execute_header, v14, v90, "[VisualSearch][%@] Processing resource type %ld (%dx%d)", v117, 0x22u);
                }

                asset5 = [v21 asset];
                v45 = [VCPMADServiceImageAsset assetWithPhotosAsset:asset5 clientBundleID:0 clientTeamID:0];

                v46 = +[NSMutableDictionary dictionary];
                location = [v45 location];
                LOBYTE(asset5) = location == 0;

                if ((asset5 & 1) == 0)
                {
                  location2 = [v45 location];
                  [v46 setObject:location2 forKeyedSubscript:v79];
                }

                if ([v45 isScreenshot])
                {
                  [v46 setObject:&off_100294B90 forKeyedSubscript:v78];
                }

                v101 = 0;
                v81 = [VIQueryContext contextWithDictionary:v46 error:&v101];
                v77 = v101;
                if (v77)
                {
                  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v14, v89))
                  {
                    asset6 = [v21 asset];
                    localIdentifier3 = [asset6 localIdentifier];
                    *v117 = 138412290;
                    v118 = localIdentifier3;
                    _os_log_impl(&_mh_execute_header, v14, v89, "[VisualSearch][%@] Failed to create query context", v117, 0xCu);
                  }

                  [v21 setVisualSearchStatus:4294967278];
                }

                else
                {
                  v75 = [v45 vcp_annotationWithTypes:7];
                  v76 = [VIVisualQuery queryWithPixelBuffer:cf orientation:1 normalizedRegionOfInterest:0.0 annotation:0.0 queryContext:1.0, 1.0];
                  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
                  v59 = VCPSignPostLog();
                  v60 = os_signpost_id_generate(v59);

                  v61 = VCPSignPostLog();
                  v62 = v61;
                  if (v60 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v61))
                  {
                    *v117 = 0;
                    _os_signpost_emit_with_name_impl(&_mh_execute_header, v62, OS_SIGNPOST_INTERVAL_BEGIN, v60, "VIService_VisualSearchGating", "", v117, 2u);
                  }

                  dispatch_group_enter(v86);
                  object = [getObject object];
                  v92[0] = _NSConcreteStackBlock;
                  v92[1] = 3221225472;
                  v92[2] = sub_100137E78;
                  v92[3] = &unk_100286E18;
                  v99 = v60;
                  v100 = 0;
                  v93 = v21;
                  v96 = &v113;
                  v97 = buf;
                  v98 = &v109;
                  v94 = dsema;
                  v95 = v86;
                  v64 = [object parseWithVisualQuery:v76 cachedResults:0 completion:v92];
                }
              }
            }

            else
            {
              if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v14, v89))
              {
                asset7 = [v21 asset];
                localIdentifier4 = [asset7 localIdentifier];
                *v117 = 138412290;
                v118 = localIdentifier4;
                _os_log_impl(&_mh_execute_header, v14, v89, "[VisualSearch][%@] Failed to decode thumbnail", v117, 0xCu);
              }

              [v21 setStatus:4294943494];
            }

            sub_100002CBC(&cf);
LABEL_66:

LABEL_67:
            v20 = 0;
            v13 = v14;
            goto LABEL_68;
          }

          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v14, v89))
          {
            asset8 = [v21 asset];
            localIdentifier5 = [asset8 localIdentifier];
            *v117 = 138412290;
            v118 = localIdentifier5;
            _os_log_impl(&_mh_execute_header, v14, v89, "[VisualSearch][%@] Thumbnail resource not locally available", v117, 0xCu);
          }
        }

        else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v14, v89))
        {
          asset9 = [v21 asset];
          localIdentifier6 = [asset9 localIdentifier];
          *v117 = 138412290;
          v118 = localIdentifier6;
          _os_log_impl(&_mh_execute_header, v14, v89, "[VisualSearch][%@] No thumbnail resource", v117, 0xCu);
        }

        [v21 setStatus:4294943494];
        goto LABEL_66;
      }

      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v14, v89))
      {
        asset10 = [v21 asset];
        localIdentifier7 = [asset10 localIdentifier];
        *v117 = 138412290;
        v118 = localIdentifier7;
        _os_log_impl(&_mh_execute_header, v14, v89, "[VisualSearch][%@] Asset has no adjustment version", v117, 0xCu);
      }

      [v21 setStatus:4294943493];
      goto LABEL_67;
    }

    v13 = v14;
    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(v14, type))
    {
      *v117 = 0;
      _os_log_impl(&_mh_execute_header, v14, type, "[VisualSearch] Processing canceled", v117, 2u);
    }

    v20 = 1;
LABEL_68:
    objc_autoreleasePoolPop(v15);
    if (v20)
    {
      break;
    }

    ++v12;
  }

  v65 = VCPLogToOSLogType[7];
  while (v12 < [(NSMutableArray *)self->_assetEntries count])
  {
    v66 = objc_autoreleasePoolPush();
    v67 = [(NSMutableArray *)self->_assetEntries objectAtIndexedSubscript:v12];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v65))
    {
      asset11 = [v67 asset];
      localIdentifier8 = [asset11 localIdentifier];
      *v117 = 138412290;
      v118 = localIdentifier8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v65, "[VisualSearch][%@] Marking asset as canceled", v117, 0xCu);
    }

    [v67 setStatus:4294967168];

    objc_autoreleasePoolPop(v66);
    ++v12;
  }

  dispatch_group_wait(v86, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  MADBMSendDomainSpecificAssetCounts(v114[3], v110[3], *(v126 + 40));
  v70 = VCPSignPostLog();
  v71 = v70;
  if (v82 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v70))
  {
    *v117 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v71, OS_SIGNPOST_INTERVAL_END, spid, "MADPhotosVisualSearchAssetProcessingTask_Process", "", v117, 2u);
  }

  [v88 stop];
  v72 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v88 elapsedTimeSeconds];
  [v72 accumulateDoubleValue:@"TimeAnalyzingInSeconds" forField:@"com.apple.mediaanalysisd.VisualSearchAnalysisRunSession" andEvent:?];

  v73 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v88 elapsedTimeSeconds];
  [v73 accumulateDoubleValue:@"TotalProcessTimeInSeconds" forField:@"com.apple.mediaanalysisd.VisualSearchAnalysisRunSession" andEvent:?];

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v109, 8);
  _Block_object_dispose(&v113, 8);

  return 0;
}

- (void)process
{
  if (!self->_status)
  {
    self->_status = [(MADPhotosVisualSearchAssetProcessingTask *)self _process];
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
  v9[2] = sub_100138784;
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
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = self->_assetEntries;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (!v3)
  {
    goto LABEL_55;
  }

  v34 = *v37;
  type = VCPLogToOSLogType[7];
  do
  {
    v4 = 0;
    v5 = v2;
    v33 = v3;
    do
    {
      if (*v37 != v34)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v36 + 1) + 8 * v4);
      v7 = objc_autoreleasePoolPush();
      asset = [v6 asset];
      localIdentifier = [asset localIdentifier];
      v10 = [NSString stringWithFormat:@"[VisualSearch][%@][Legacy]", localIdentifier];

      if (![v6 status])
      {
        if ([v6 visualSearchStatus])
        {
          visualSearchStatus = [v6 visualSearchStatus];
        }

        else
        {
          visualSearchStatus = [v6 stickerStatus];
        }

        [v6 setStatus:visualSearchStatus];
      }

      if (![v6 status])
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v41 = v10;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis completed, removing processing status", buf, 0xCu);
        }

LABEL_37:
        analysisDatabase = self->_analysisDatabase;
        asset2 = [v6 asset];
        localIdentifier2 = [asset2 localIdentifier];
        v25 = [(VCPDatabaseWriter *)analysisDatabase removeProcessingStatusForLocalIdentifier:localIdentifier2 andTaskID:12];

        if (v25 == -108 || v25 == -36)
        {
          v2 = v25;
        }

        else
        {
          v2 = v25;
          if (v25 != -23)
          {
            v2 = v5;
          }
        }

LABEL_42:
        v29 = 0;
        if (v25 != -108 && v25 != -36 && v25 != -23)
        {
          goto LABEL_45;
        }

        goto LABEL_46;
      }

      if ([v6 status] != -128)
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v41 = v10;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis failed, updating processing status", buf, 0xCu);
        }

        [v6 status];
        v18 = MADProcessingStatusForOSStatus();
        asset3 = [v6 asset];
        currentAttemptDate = [v6 currentAttemptDate];
        v21 = [asset3 mad_nextAttemptDateForStatus:v18 currentAttemptDate:currentAttemptDate attemptCount:{objc_msgSend(v6, "previousAttempts") + 1}];

        v22 = self->_analysisDatabase;
        asset4 = [v6 asset];
        localIdentifier3 = [asset4 localIdentifier];
        v25 = [(VCPDatabaseWriter *)v22 updateProcessingStatus:v18 andNextAttemptDate:v21 forLocalIdentifier:localIdentifier3 andTaskID:12];

        if (v25 == -108 || v25 == -36)
        {
          v2 = v25;
        }

        else
        {
          v2 = v25;
          if (v25 != -23)
          {
            v2 = v5;
          }
        }

        goto LABEL_42;
      }

      if (![v6 previousAttempts])
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v41 = v10;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis cancelled, removing processing status", buf, 0xCu);
        }

        goto LABEL_37;
      }

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
      {
        *buf = 138412290;
        v41 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis cancelled, recovering processing status", buf, 0xCu);
      }

      v12 = self->_analysisDatabase;
      previousAttempts = [v6 previousAttempts];
      asset5 = [v6 asset];
      previousStatus = [v6 previousStatus];
      lastAttemptDate = [v6 lastAttemptDate];
      v17 = [(VCPDatabaseWriter *)v12 setAttempts:previousAttempts asset:asset5 taskID:12 status:previousStatus lastAttemptDate:lastAttemptDate];

      if (v17 == -108 || v17 == -36)
      {
        v2 = v17;
      }

      else
      {
        v2 = v17;
        if (v17 != -23)
        {
          v2 = v5;
        }
      }

      v29 = 0;
      if (v17 != -108 && v17 != -36 && v17 != -23)
      {
LABEL_45:
        v29 = 1;
      }

LABEL_46:

      objc_autoreleasePoolPop(v7);
      if (!v29)
      {
        goto LABEL_56;
      }

      v4 = v4 + 1;
      v5 = v2;
    }

    while (v33 != v4);
    v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  }

  while (v3);
LABEL_55:
  LODWORD(v2) = 0;
LABEL_56:

  return v2;
}

- (void)_reportRunSessionAnalyticsWithPublishDuration:(double)duration
{
  v5 = +[VCPMADCoreAnalyticsManager sharedManager];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_assetEntries;
  v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v6)
  {
    v8 = *v24;
    type = VCPLogToOSLogType[5];
    v21 = VCPAnalysisStickyFailureAttemptsThreshold;
    v19 = VCPAnalysisMaximumABCReportFailureAttempts;
    *&v7 = 138412546;
    v18 = v7;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        if ([v10 status])
        {
          if ([v10 status] != -128)
          {
            v12 = @"NumberOfAssetsSoftFailure";
            if ([v10 status] == -23802)
            {
              v13 = @"NumberOfAssetsNoResource";

              v12 = v13;
            }

            [v5 accumulateInt64Value:1 forField:v12 andEvent:{@"com.apple.mediaanalysisd.VisualSearchAnalysisRunSession", v18}];
            if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
            {
              asset = [v10 asset];
              localIdentifier = [asset localIdentifier];
              *buf = v18;
              v28 = localIdentifier;
              v29 = 2112;
              v30 = v12;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[VisualSearch][%@] Asset failed processing. Failure: %@", buf, 0x16u);
            }

            if ([v10 previousAttempts] >= v21 && objc_msgSend(v10, "previousAttempts") <= v19)
            {
              v16 = +[VCPAutoBugCapture sharedCapturer];
              asset2 = [v10 asset];
              [v16 captureProcessingFailure:v12 taskID:12 asset:asset2 previousAttempts:{objc_msgSend(v10, "previousAttempts")}];
            }
          }
        }

        else
        {
          [v5 accumulateInt64Value:1 forField:@"NumberOfAssetsAnalyzed" andEvent:@"com.apple.mediaanalysisd.VisualSearchAnalysisRunSession"];
        }

        objc_autoreleasePoolPop(v11);
      }

      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v6);
  }

  [v5 accumulateDoubleValue:@"TotalPublishTimeInSeconds" forField:@"com.apple.mediaanalysisd.VisualSearchAnalysisRunSession" andEvent:duration];
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MADPhotosVisualSearchAssetProcessingTask_Publish", "", buf, 2u);
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
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[VisualSearch] Persisting %d assets (QoS: %@)", buf, 0x12u);
    }
  }

  if ([(NSMutableArray *)self->_assetEntries count])
  {
    _propagateAssetProcessingStatus = [(MADPhotosVisualSearchAssetProcessingTask *)self _propagateAssetProcessingStatus];
    v11 = +[MADStateHandler sharedStateHandler];
    [v11 addBreadcrumb:{@"[VisualSearch] Persisting %d assets to Photos", -[NSMutableArray count](self->_assetEntries, "count")}];

    v12 = +[VCPWatchdog sharedWatchdog];
    [v12 pet];

    v13 = +[MADStateHandler sharedStateHandler];
    [v13 enterKnownTimeoutRisk:1];

    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100139DB0;
    v51[3] = &unk_100283210;
    v51[4] = self;
    v43 = objc_retainBlock(v51);
    firstObject = [(NSMutableArray *)self->_assetEntries firstObject];
    asset = [firstObject asset];
    photoLibrary = [asset photoLibrary];

    cancelBlock = [(MADProcessingTask *)self cancelBlock];
    v50 = 0;
    v17 = [photoLibrary mad_performChangesAndWait:v43 activity:12 cancelBlock:cancelBlock extendTimeoutBlock:&stru_100286FC0 error:&v50];
    v18 = v50;

    v19 = +[MADStateHandler sharedStateHandler];
    [v19 exitKnownTimeoutRisk];

    v20 = +[MADStateHandler sharedStateHandler];
    [v20 addBreadcrumb:{@"[VisualSearch] Finished persisting %d assets to Photos", -[NSMutableArray count](self->_assetEntries, "count")}];

    if ((v17 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v21 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v21))
        {
          *buf = 138412290;
          *v54 = v18;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "[VisualSearch] Failed to persist results to Photos (%@)", buf, 0xCu);
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

      code = [v18 code];
      if (_propagateAssetProcessingStatus)
      {
        v30 = 1;
      }

      else
      {
        v30 = code == 0;
      }

      if (!v30)
      {
        _propagateAssetProcessingStatus = code;
      }
    }

    if (+[MADManagedProcessingStatus isMACDPersistEnabled])
    {
      v31 = [(MADPhotosVisualSearchAssetProcessingTask *)self _publishProcessingStatusForPhotoLibrary:photoLibrary];
      if (!_propagateAssetProcessingStatus && v31 != 0)
      {
        _propagateAssetProcessingStatus = v31;
      }
    }

    if (+[VCPDatabaseWriter isLegacyPersistEnabled])
    {
      _publishProcessingStatusToLegacyDatabase = [(MADPhotosVisualSearchAssetProcessingTask *)self _publishProcessingStatusToLegacyDatabase];
      commit = [(VCPDatabaseWriter *)self->_analysisDatabase commit];
      if (_propagateAssetProcessingStatus)
      {
        v35 = 1;
      }

      else
      {
        v35 = _publishProcessingStatusToLegacyDatabase == 0;
      }

      if (v35)
      {
        v36 = _propagateAssetProcessingStatus;
      }

      else
      {
        v36 = _publishProcessingStatusToLegacyDatabase;
      }

      if (v36)
      {
        v37 = 1;
      }

      else
      {
        v37 = commit == 0;
      }

      if (v37)
      {
        _propagateAssetProcessingStatus = v36;
      }

      else
      {
        _propagateAssetProcessingStatus = commit;
      }
    }

    v38 = VCPSignPostLog();
    v39 = v38;
    if (v42 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_INTERVAL_END, spid, "MADPhotosVisualSearchAssetProcessingTask_Publish", "", buf, 2u);
    }

    [v45 stop];
    [v45 elapsedTimeSeconds];
    [(MADPhotosVisualSearchAssetProcessingTask *)self _reportRunSessionAnalyticsWithPublishDuration:?];
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
    self->_status = [(MADPhotosVisualSearchAssetProcessingTask *)self _publish];
  }
}

@end