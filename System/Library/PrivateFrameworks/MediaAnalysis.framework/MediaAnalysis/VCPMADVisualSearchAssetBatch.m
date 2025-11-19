@interface VCPMADVisualSearchAssetBatch
+ (id)batchWithServicePool:(id)a3 visionSession:(id)a4 analysisDatabase:(id)a5 cancelBlock:(id)a6;
- (CGRect)_computeRegionOfInterest:(__CVBuffer *)a3 orientation:(unsigned int)a4;
- (VCPMADVisualSearchAssetBatch)initWithServicePool:(id)a3 visionSession:(id)a4 analysisDatabase:(id)a5 cancelBlock:(id)a6;
- (int)_calculateStickerScore:(__CVBuffer *)a3 orientation:(unsigned int)a4 regionOfInterest:(CGRect)a5 stickerScore:(float *)a6;
- (int)_propagateAssetProcessingStatus;
- (int)_publishProcessingStatusForPhotoLibrary:(id)a3;
- (int)_publishProcessingStatusToLegacyDatabase;
- (int)prepare;
- (int)process;
- (int)publish;
- (void)addPhotosAsset:(id)a3 withPreviousStatus:(unint64_t)a4 attempts:(unint64_t)a5 andAttemptDate:(id)a6;
@end

@implementation VCPMADVisualSearchAssetBatch

- (VCPMADVisualSearchAssetBatch)initWithServicePool:(id)a3 visionSession:(id)a4 analysisDatabase:(id)a5 cancelBlock:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v24.receiver = self;
  v24.super_class = VCPMADVisualSearchAssetBatch;
  v15 = [(VCPMADVisualSearchAssetBatch *)&v24 init];
  if (v15)
  {
    v16 = +[NSMutableArray array];
    assetEntries = v15->_assetEntries;
    v15->_assetEntries = v16;

    objc_storeStrong(&v15->_servicePool, a3);
    objc_storeStrong(&v15->_visionSession, a4);
    objc_storeStrong(&v15->_analysisDatabase, a5);
    v18 = objc_retainBlock(v14);
    cancelBlock = v15->_cancelBlock;
    v15->_cancelBlock = v18;

    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create("com.apple.mediaanalysis.StickerScore", v20);
    stickerQueue = v15->_stickerQueue;
    v15->_stickerQueue = v21;
  }

  return v15;
}

+ (id)batchWithServicePool:(id)a3 visionSession:(id)a4 analysisDatabase:(id)a5 cancelBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [[a1 alloc] initWithServicePool:v10 visionSession:v11 analysisDatabase:v12 cancelBlock:v13];

  return v14;
}

- (void)addPhotosAsset:(id)a3 withPreviousStatus:(unint64_t)a4 attempts:(unint64_t)a5 andAttemptDate:(id)a6
{
  v8 = a3;
  v29 = a6;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = self->_assetEntries;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v10)
  {
    v11 = *v31;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [*(*(&v30 + 1) + 8 * i) asset];
        v14 = [v13 localIdentifier];
        v15 = [v8 localIdentifier];
        v16 = [v14 isEqualToString:v15];

        if (v16)
        {
          if (MediaAnalysisLogLevel() >= 4)
          {
            v23 = VCPLogToOSLogType[4];
            if (os_log_type_enabled(&_os_log_default, v23))
            {
              v24 = [v8 localIdentifier];
              *buf = 138412290;
              v35 = v24;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "[VisualSearch][%@] Batch already contains asset; ignoring", buf, 0xCu);
            }
          }

          goto LABEL_20;
        }
      }

      v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v17 = [v8 vcp_needsVisualSearchProcessing];
  v18 = [v8 vcp_needsStickerGatingProcessing];
  v19 = 2;
  if (!v17)
  {
    v19 = 0;
  }

  if (v18)
  {
    v20 = v19 | 4;
  }

  else
  {
    v20 = v19;
  }

  if (v20)
  {
    assetEntries = self->_assetEntries;
    v22 = [VCPMADVisualSearchAssetEntry entryWithAsset:v8 previousStatus:a4 previousAttempts:a5 andLastAttemptDate:v29 analysisTypes:?];
    [(NSMutableArray *)assetEntries addObject:v22];
  }

  else if (MediaAnalysisLogLevel() >= 4)
  {
    v25 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v25))
    {
      v26 = [v8 localIdentifier];
      *buf = 138412290;
      v35 = v26;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "[VisualSearch][%@] Asset is with up-to-date results, ignoring", buf, 0xCu);
    }
  }

LABEL_20:
}

- (CGRect)_computeRegionOfInterest:(__CVBuffer *)a3 orientation:(unsigned int)a4
{
  v5 = [VIImage imageWithPixelBuffer:a3 orientation:*&a4];
  v6 = [[VIRefineRegionRequest alloc] initWithImage:v5 regionOfInterest:1 imageType:0 preferredMetalDevice:{0.0, 0.0, 1.0, 1.0}];
  v7 = [(VCPObjectPool *)self->_servicePool getObject];
  v8 = [v7 object];
  v30 = 0;
  v9 = [v8 refineRegionsWithRequest:v6 error:&v30];
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
    v16 = [v9 refinedRegions];
    v17 = [v16 count] == 0;

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
      v18 = [v9 refinedRegions];
      v19 = [v18 firstObject];

      [v19 regionOfInterest];
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
          [v19 confidence];
          v22 = v21;
          v23 = [v9 refinedRegions];
          v24 = [v23 count];
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

- (int)_calculateStickerScore:(__CVBuffer *)a3 orientation:(unsigned int)a4 regionOfInterest:(CGRect)a5 stickerScore:(float *)a6
{
  *a6 = 0.0;
  v7 = [[VNImageRequestHandler alloc] initWithCVPixelBuffer:a3 orientation:*&a4 options:&__NSDictionary0__struct session:self->_visionSession];
  v8 = objc_alloc_init(VNGenerateInstanceMaskGatingRequest);
  if (DeviceHasANE())
  {
    v9 = +[VNProcessingDevice defaultANEDevice];
    [v8 setProcessingDevice:v9];
  }

  v26 = v8;
  v10 = [NSArray arrayWithObjects:&v26 count:1];
  v23 = 0;
  v11 = [v7 performRequests:v10 error:&v23];
  v12 = v23;

  if ((v11 & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v19 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v19))
      {
        v20 = [v12 description];
        *buf = 138412290;
        v25 = v20;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "[ImageStickerScore] Score generation failed (%@)", buf, 0xCu);
      }
    }

    goto LABEL_12;
  }

  v13 = [v8 results];
  v14 = [v13 count] == 0;

  if (v14)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v21 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v21))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "[ImageStickerScore] No observations produced for image", buf, 2u);
      }
    }

LABEL_12:
    v18 = -18;
    goto LABEL_13;
  }

  v15 = [v8 results];
  v16 = [v15 firstObject];
  [v16 confidence];
  *a6 = v17;

  v18 = 0;
LABEL_13:

  return v18;
}

- (int)prepare
{
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
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[VisualSearch] Preparing %d assets (QoS: %@)", buf, 0x12u);
    }
  }

  v7 = +[NSDate now];
  if (+[MADManagedProcessingStatus isMACDPersistEnabled])
  {
    v8 = [(NSMutableArray *)self->_assetEntries firstObject];
    v9 = [v8 asset];
    v10 = [v9 photoLibrary];

    if ([MADPhotosDataStoreClient needsDataStoreMigrationForPhotoLibrary:v10])
    {
      if (!self->_allowBeforeMigration)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v36 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v36))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v36, "[VisualSearch][MACD] Skipping processing due to migration incomplete", buf, 2u);
          }
        }

        LODWORD(v2) = -18;
        goto LABEL_54;
      }

      if (MediaAnalysisLogLevel() >= 7)
      {
        v11 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v11))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[VisualSearch][MACD] Skipping processing status setting due to migration incomplete", buf, 2u);
        }
      }
    }

    else
    {
      v26 = VCPSignPostLog();
      v2 = os_signpost_id_generate(v26);

      v27 = VCPSignPostLog();
      v28 = v27;
      if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_BEGIN, v2, "VCPMADVisualSearchAssetBatch_Prepare", "", buf, 2u);
      }

      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_1001267C8;
      v48[3] = &unk_100282938;
      v48[4] = self;
      v49 = v7;
      v47 = 0;
      v29 = [(NSMutableArray *)v10 mad_performAnalysisDataStoreChanges:v48 error:&v47];
      v30 = v47;
      v31 = v30;
      if (v29)
      {
        v32 = VCPSignPostLog();
        v33 = v32;
        if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_INTERVAL_END, v2, "VCPMADVisualSearchAssetBatch_Prepare", "", buf, 2u);
        }
      }

      else
      {
        LODWORD(v2) = [v30 code];
        if (MediaAnalysisLogLevel() >= 3)
        {
          v37 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v37))
          {
            v38 = [(NSMutableArray *)self->_assetEntries count];
            *buf = 67109378;
            v52 = v38;
            v53 = 2112;
            v54 = v31;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v37, "[VisualSearch][MACD] Failed to prepare %d assets: %@", buf, 0x12u);
          }
        }
      }

      if ((v29 & 1) == 0)
      {
        goto LABEL_54;
      }
    }

LABEL_53:
    LODWORD(v2) = 0;
LABEL_54:

    v35 = v2;
    goto LABEL_55;
  }

  v12 = VCPSignPostLog();
  spid = os_signpost_id_generate(v12);

  v13 = VCPSignPostLog();
  v14 = v13;
  v41 = spid - 1;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPMADVisualSearchAssetBatch_LegacyPrepare", "", buf, 2u);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = self->_assetEntries;
  v15 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v15)
  {
    v16 = *v44;
LABEL_15:
    v17 = 0;
    v18 = v2;
    while (1)
    {
      if (*v44 != v16)
      {
        objc_enumerationMutation(v10);
      }

      v19 = *(*(&v43 + 1) + 8 * v17);
      analysisDatabase = self->_analysisDatabase;
      v21 = [v19 previousAttempts];
      v22 = [v19 asset];
      v23 = [(VCPDatabaseWriter *)analysisDatabase setAttempts:v21 + 1 asset:v22 taskID:12 status:1 lastAttemptDate:v7];

      if (v23 == -108)
      {
        v2 = v23;
      }

      else
      {
        v24 = v23 == -36 || v23 == -23;
        v2 = v23;
        if (!v24)
        {
          v2 = v18;
        }
      }

      if (v23 == -108)
      {
        goto LABEL_54;
      }

      if (v23 == -36 || v23 == -23)
      {
        goto LABEL_54;
      }

      v17 = v17 + 1;
      v18 = v2;
      if (v15 == v17)
      {
        v15 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v43 objects:v50 count:16];
        if (v15)
        {
          goto LABEL_15;
        }

        break;
      }
    }
  }

  v34 = [(VCPDatabaseWriter *)self->_analysisDatabase commit];
  if (v34 == -108 || v34 == -36)
  {
    v35 = v34;
  }

  else
  {
    v35 = v34;
    if (v34 != -23)
    {
      v35 = v2;
    }
  }

  if (v34 != -108 && v34 != -36 && v34 != -23)
  {
    v40 = VCPSignPostLog();
    v10 = v40;
    if (v41 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, &v10->super.super, OS_SIGNPOST_INTERVAL_END, spid, "VCPMADVisualSearchAssetBatch_LegacyPrepare", "", buf, 2u);
    }

    goto LABEL_53;
  }

LABEL_55:

  return v35;
}

- (int)process
{
  v3 = [objc_opt_class() concurrentAssetCount];
  dsema = dispatch_semaphore_create(v3);
  v81 = dispatch_group_create();
  group = dispatch_group_create();
  v78 = [(VCPObjectPool *)self->_servicePool getObject];
  v4 = VCPSignPostLog();
  v5 = os_signpost_id_generate(v4);

  v6 = VCPSignPostLog();
  v7 = v6;
  spid = v5;
  v77 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "VCPMADVisualSearchAssetEntry_Process", "", buf, 2u);
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
      LOWORD(v121) = 2112;
      *(&v121 + 2) = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[VisualSearch] Processing %d assets (QoS: %@)", buf, 0x12u);
    }
  }

  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v111 = 0;
  v104 = 0;
  v105 = &v104;
  v106 = 0x2020000000;
  v107 = 0;
  *buf = 0;
  *&v121 = buf;
  *(&v121 + 1) = 0x3032000000;
  v122 = sub_100127A44;
  v123 = sub_100127A54;
  v124 = objc_alloc_init(NSMutableDictionary);
  v11 = +[NSDate now];
  [v11 timeIntervalSince1970];

  v12 = 0;
  v83 = 0;
  type = VCPLogToOSLogType[5];
  v84 = VCPLogToOSLogType[4];
  v85 = VCPLogToOSLogType[6];
  v72 = VIQueryContextImageTypeKey;
  v73 = VIQueryContextLocationKey;
  while (v12 < [(NSMutableArray *)self->_assetEntries count])
  {
    v13 = objc_autoreleasePoolPush();
    v14 = +[VCPWatchdog sharedWatchdog];
    [v14 pet];

    cancelBlock = self->_cancelBlock;
    if (!cancelBlock || !cancelBlock[2]())
    {
      v17 = [(NSMutableArray *)self->_assetEntries objectAtIndexedSubscript:v12];
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v85))
      {
        v18 = [v17 asset];
        v19 = [v18 localIdentifier];
        *v112 = 138412290;
        v113 = v19;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v85, "[VisualSearch][%@] Processing asset", v112, 0xCu);
      }

      v20 = [v17 asset];
      v21 = [v20 adjustmentVersion];
      v22 = v21 == 0;

      if (!v22)
      {
        v23 = [v17 asset];
        v86 = [PHAssetResource vcp_allAcceptableResourcesForAsset:v23];

        v24 = [v86 vcp_thumbnailResource];
        v25 = v24;
        if (v24)
        {
          if ([v24 isLocallyAvailable])
          {
            v26 = VCPSignPostLog();
            v27 = os_signpost_id_generate(v26);

            v28 = VCPSignPostLog();
            v29 = v28;
            if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
            {
              *v112 = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_INTERVAL_BEGIN, v27, "VCPMADVisualSearchAssetBatch_Decode", "", v112, 2u);
            }

            v103 = 0;
            v30 = +[VCPImageManager sharedImageManager];
            v31 = [v25 privateFileURL];
            cf = [v30 pixelBufferWithFormat:875704438 fromImageURL:v31 flushCache:0 orientation:&v103];

            v32 = VCPSignPostLog();
            v33 = v32;
            if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
            {
              *v112 = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_INTERVAL_END, v27, "VCPMADVisualSearchAssetBatch_Decode", "", v112, 2u);
            }

            if (cf)
            {
              if (([v17 analysisTypes] & 4) != 0)
              {
                stickerQueue = self->_stickerQueue;
                block[0] = _NSConcreteStackBlock;
                block[1] = 3321888768;
                block[2] = sub_100127A5C;
                block[3] = &unk_100286DE0;
                v98 = v17;
                v99 = self;
                v100 = cf;
                if (cf)
                {
                  CFRetain(cf);
                }

                v101 = v103;
                dispatch_group_async(group, stickerQueue, block);
                sub_100002CBC(&v100);
              }

              if (([v17 analysisTypes] & 2) != 0)
              {
                if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v85))
                {
                  v35 = [v17 asset];
                  v36 = [v35 localIdentifier];
                  v37 = [v25 type];
                  v38 = [v25 pixelWidth];
                  v39 = [v25 pixelHeight];
                  *v112 = 138413058;
                  v113 = v36;
                  v114 = 2048;
                  v115 = v37;
                  v116 = 1024;
                  v117 = v38;
                  v118 = 1024;
                  v119 = v39;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v85, "[VisualSearch][%@] Processing resource type %ld (%dx%d)", v112, 0x22u);
                }

                v40 = [v17 asset];
                v41 = [VCPMADServiceImageAsset assetWithPhotosAsset:v40 clientBundleID:0 clientTeamID:0];

                v76 = [v41 vcp_annotationWithTypes:7];
                v42 = +[NSMutableDictionary dictionary];
                v43 = [v41 location];
                v44 = v43 == 0;

                if (!v44)
                {
                  v45 = [v41 location];
                  [v42 setObject:v45 forKeyedSubscript:v73];
                }

                if ([v41 isScreenshot])
                {
                  [v42 setObject:&off_100294B60 forKeyedSubscript:v72];
                }

                v96 = 0;
                v75 = [VIQueryContext contextWithDictionary:v42 error:&v96];
                v71 = v96;
                if (v71)
                {
                  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v84))
                  {
                    v46 = [v17 asset];
                    v47 = [v46 localIdentifier];
                    *v112 = 138412290;
                    v113 = v47;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, v84, "[VisualSearch][%@] Failed to create query context", v112, 0xCu);
                  }

                  [v17 setVisualSearchStatus:4294967278];
                }

                else
                {
                  v70 = [VIVisualQuery queryWithPixelBuffer:cf orientation:1 normalizedRegionOfInterest:v76 annotation:v75 queryContext:0.0, 0.0, 1.0, 1.0];
                  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
                  v56 = VCPSignPostLog();
                  v57 = os_signpost_id_generate(v56);

                  v58 = VCPSignPostLog();
                  v59 = v58;
                  if (v57 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
                  {
                    *v112 = 0;
                    _os_signpost_emit_with_name_impl(&_mh_execute_header, v59, OS_SIGNPOST_INTERVAL_BEGIN, v57, "VIService_VisualSearchGating", "", v112, 2u);
                  }

                  dispatch_group_enter(v81);
                  v60 = [v78 object];
                  v87[0] = _NSConcreteStackBlock;
                  v87[1] = 3221225472;
                  v87[2] = sub_100127D40;
                  v87[3] = &unk_100286E18;
                  v94 = v57;
                  v95 = 0;
                  v88 = v17;
                  v91 = &v108;
                  v92 = buf;
                  v93 = &v104;
                  v89 = dsema;
                  v90 = v81;
                  v61 = [v60 parseWithVisualQuery:v70 cachedResults:0 completion:v87];
                }
              }
            }

            else
            {
              if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v84))
              {
                v54 = [v17 asset];
                v55 = [v54 localIdentifier];
                *v112 = 138412290;
                v113 = v55;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v84, "[VisualSearch][%@] Failed to decode thumbnail", v112, 0xCu);
              }

              [v17 setStatus:4294943494];
            }

            sub_100002CBC(&cf);
LABEL_66:

LABEL_67:
            v16 = 0;
            goto LABEL_68;
          }

          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v84))
          {
            v52 = [v17 asset];
            v53 = [v52 localIdentifier];
            *v112 = 138412290;
            v113 = v53;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v84, "[VisualSearch][%@] Thumbnail resource not locally available", v112, 0xCu);
          }
        }

        else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v84))
        {
          v50 = [v17 asset];
          v51 = [v50 localIdentifier];
          *v112 = 138412290;
          v113 = v51;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v84, "[VisualSearch][%@] No thumbnail resource", v112, 0xCu);
        }

        [v17 setStatus:4294943494];
        goto LABEL_66;
      }

      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v84))
      {
        v48 = [v17 asset];
        v49 = [v48 localIdentifier];
        *v112 = 138412290;
        v113 = v49;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v84, "[VisualSearch][%@] Asset has no adjustment version", v112, 0xCu);
      }

      [v17 setStatus:4294943493];
      goto LABEL_67;
    }

    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
    {
      *v112 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[VisualSearch] Processing canceled", v112, 2u);
    }

    v83 = -128;
    v16 = 1;
LABEL_68:
    objc_autoreleasePoolPop(v13);
    if (v16)
    {
      break;
    }

    ++v12;
  }

  v62 = VCPLogToOSLogType[7];
  while (v12 < [(NSMutableArray *)self->_assetEntries count])
  {
    v63 = objc_autoreleasePoolPush();
    v64 = [(NSMutableArray *)self->_assetEntries objectAtIndexedSubscript:v12];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v62))
    {
      v65 = [v64 asset];
      v66 = [v65 localIdentifier];
      *v112 = 138412290;
      v113 = v66;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v62, "[VisualSearch][%@] Marking asset as canceled", v112, 0xCu);
    }

    [v64 setStatus:4294967168];

    objc_autoreleasePoolPop(v63);
    ++v12;
  }

  dispatch_group_wait(v81, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  MADBMSendDomainSpecificAssetCounts(v109[3], v105[3], *(v121 + 40));
  v67 = VCPSignPostLog();
  v68 = v67;
  if (v77 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v67))
  {
    *v112 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v68, OS_SIGNPOST_INTERVAL_END, spid, "VCPMADVisualSearchAssetEntry_Process", "", v112, 2u);
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v104, 8);
  _Block_object_dispose(&v108, 8);

  return v83;
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
  v9[2] = sub_10012860C;
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
      v8 = [v6 asset];
      v9 = [v8 localIdentifier];
      v10 = [NSString stringWithFormat:@"[VisualSearch][%@][Legacy]", v9];

      if (![v6 status])
      {
        if ([v6 visualSearchStatus])
        {
          v11 = [v6 visualSearchStatus];
        }

        else
        {
          v11 = [v6 stickerStatus];
        }

        [v6 setStatus:v11];
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
        v27 = [v6 asset];
        v28 = [v27 localIdentifier];
        v25 = [(VCPDatabaseWriter *)analysisDatabase removeProcessingStatusForLocalIdentifier:v28 andTaskID:12];

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
        v19 = [v6 asset];
        v20 = [v6 currentAttemptDate];
        v21 = [v19 mad_nextAttemptDateForStatus:v18 currentAttemptDate:v20 attemptCount:{objc_msgSend(v6, "previousAttempts") + 1}];

        v22 = self->_analysisDatabase;
        v23 = [v6 asset];
        v24 = [v23 localIdentifier];
        v25 = [(VCPDatabaseWriter *)v22 updateProcessingStatus:v18 andNextAttemptDate:v21 forLocalIdentifier:v24 andTaskID:12];

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
      v13 = [v6 previousAttempts];
      v14 = [v6 asset];
      v15 = [v6 previousStatus];
      v16 = [v6 lastAttemptDate];
      v17 = [(VCPDatabaseWriter *)v12 setAttempts:v13 asset:v14 taskID:12 status:v15 lastAttemptDate:v16];

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

- (int)publish
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v3 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      v4 = [(NSMutableArray *)self->_assetEntries count];
      qos_class_self();
      v5 = VCPMAQoSDescription();
      *buf = 67109378;
      *v54 = v4;
      *&v54[4] = 2112;
      *&v54[6] = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[VisualSearch] Persisting %d assets (QoS: %@)", buf, 0x12u);
    }
  }

  if (![(NSMutableArray *)self->_assetEntries count])
  {
    return 0;
  }

  v6 = [(NSMutableArray *)self->_assetEntries firstObject];
  v7 = [v6 asset];
  v45 = [v7 photoLibrary];

  v42 = [MADPhotosDataStoreClient needsDataStoreMigrationForPhotoLibrary:v45];
  if (v42 && !self->_allowBeforeMigration)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v40 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v40))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v40, "[VisualSearch] Skipping persisting due to migration incomplete", buf, 2u);
      }
    }

    v11 = -18;
  }

  else
  {
    v8 = VCPSignPostLog();
    spid = os_signpost_id_generate(v8);

    v9 = VCPSignPostLog();
    v10 = v9;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPMADVisualSearchAssetBatch_Publish", "", buf, 2u);
    }

    v11 = [(VCPMADVisualSearchAssetBatch *)self _propagateAssetProcessingStatus];
    v12 = +[MADStateHandler sharedStateHandler];
    [v12 addBreadcrumb:{@"[VisualSearch] Persisting %d assets to Photos", -[NSMutableArray count](self->_assetEntries, "count")}];

    v13 = +[VCPWatchdog sharedWatchdog];
    [v13 pet];

    v14 = +[MADStateHandler sharedStateHandler];
    [v14 enterKnownTimeoutRisk:1];

    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_1001298C8;
    v51[3] = &unk_100283210;
    v51[4] = self;
    v44 = objc_retainBlock(v51);
    cancelBlock = self->_cancelBlock;
    v50 = 0;
    v16 = [v45 mad_performChangesAndWait:v44 activity:12 cancelBlock:cancelBlock extendTimeoutBlock:&stru_100286E38 error:&v50];
    v17 = v50;
    v18 = +[MADStateHandler sharedStateHandler];
    [v18 exitKnownTimeoutRisk];

    v19 = +[MADStateHandler sharedStateHandler];
    [v19 addBreadcrumb:{@"[VisualSearch] Finished persisting %d assets to Photos", -[NSMutableArray count](self->_assetEntries, "count")}];

    if ((v16 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v20 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v20))
        {
          *buf = 138412290;
          *v54 = v17;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "[VisualSearch] Failed to persist results to Photos (%@)", buf, 0xCu);
        }
      }

      if ([v17 code] == -128)
      {
        v21 = 4294967168;
      }

      else
      {
        v21 = 4294967278;
      }

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v22 = self->_assetEntries;
      v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v23)
      {
        v24 = *v47;
        do
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v47 != v24)
            {
              objc_enumerationMutation(v22);
            }

            v26 = *(*(&v46 + 1) + 8 * i);
            v27 = objc_autoreleasePoolPush();
            if (![v26 status])
            {
              [v26 setStatus:v21];
            }

            objc_autoreleasePoolPop(v27);
          }

          v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v46 objects:v52 count:16];
        }

        while (v23);
      }

      v28 = [v17 code];
      if (v11)
      {
        v29 = 1;
      }

      else
      {
        v29 = v28 == 0;
      }

      if (!v29)
      {
        v11 = v28;
      }
    }

    if (v42)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v30 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v30))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v30, "[VisualSearch] Skipping processing status updating due to migration incomplete", buf, 2u);
        }
      }
    }

    else
    {
      if (+[MADManagedProcessingStatus isMACDPersistEnabled])
      {
        v31 = [(VCPMADVisualSearchAssetBatch *)self _publishProcessingStatusForPhotoLibrary:v45];
        if (!v11 && v31 != 0)
        {
          v11 = v31;
        }
      }

      if (+[VCPDatabaseWriter isLegacyPersistEnabled])
      {
        v33 = [(VCPMADVisualSearchAssetBatch *)self _publishProcessingStatusToLegacyDatabase];
        v34 = [(VCPDatabaseWriter *)self->_analysisDatabase commit];
        if (v11)
        {
          v35 = 1;
        }

        else
        {
          v35 = v33 == 0;
        }

        if (v35)
        {
          v36 = v11;
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
          v11 = v36;
        }

        else
        {
          v11 = v34;
        }
      }
    }

    v38 = VCPSignPostLog();
    v39 = v38;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_INTERVAL_END, spid, "VCPMADVisualSearchAssetBatch_Publish", "", buf, 2u);
    }
  }

  return v11;
}

@end