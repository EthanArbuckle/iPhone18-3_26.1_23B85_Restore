@interface VCPMADOCRAssetBatch
+ (id)batchWithAnalysisDatabase:(id)a3 allowDownload:(BOOL)a4 cancelBlock:(id)a5;
- (VCPMADOCRAssetBatch)initWithAnalysisDatabase:(id)a3 allowDownload:(BOOL)a4 cancelBlock:(id)a5;
- (double)downloadInactiveTimeInterval;
- (id)acceptableResourcesForAsset:(id)a3 withResources:(id)a4;
- (id)localResourceForAsset:(id)a3 withAcceptableResources:(id)a4;
- (id)remoteResourceForAsset:(id)a3 withAcceptableResources:(id)a4;
- (int)_propagateAssetProcessingStatus;
- (int)_publishProcessingStatusForPhotoLibrary:(id)a3;
- (int)_publishProcessingStatusToLegacyDatabase;
- (int)prepare;
- (int)process;
- (int)publish;
- (int)removeDownloadRequestIDForAsset:(id)a3;
- (void)addDownloadRequestID:(int)a3 forAsset:(id)a4;
- (void)addPhotosAsset:(id)a3 withPreviousStatus:(unint64_t)a4 attempts:(unint64_t)a5 andAttemptDate:(id)a6;
- (void)cancelRemainingDownloadsWithStatus:(int)a3;
- (void)processAssetEntry:(id)a3 resource:(id)a4 resourceURL:(id)a5;
@end

@implementation VCPMADOCRAssetBatch

- (VCPMADOCRAssetBatch)initWithAnalysisDatabase:(id)a3 allowDownload:(BOOL)a4 cancelBlock:(id)a5
{
  v9 = a3;
  v10 = a5;
  v27.receiver = self;
  v27.super_class = VCPMADOCRAssetBatch;
  v11 = [(VCPMADOCRAssetBatch *)&v27 init];
  if (v11)
  {
    v12 = +[NSMutableArray array];
    assetEntries = v11->_assetEntries;
    v11->_assetEntries = v12;

    objc_storeStrong(&v11->_analysisDatabase, a3);
    v11->_allowDownload = a4;
    v14 = objc_retainBlock(v10);
    cancelBlock = v11->_cancelBlock;
    v11->_cancelBlock = v14;

    v16 = dispatch_group_create();
    downloadGroup = v11->_downloadGroup;
    v11->_downloadGroup = v16;

    v18 = dispatch_queue_create("com.apple.mediaanalysisd.ocr.download", 0);
    downloadStateQueue = v11->_downloadStateQueue;
    v11->_downloadStateQueue = v18;

    v20 = +[NSMutableDictionary dictionary];
    downloadRequestIDs = v11->_downloadRequestIDs;
    v11->_downloadRequestIDs = v20;

    v22 = dispatch_group_create();
    computeGroup = v11->_computeGroup;
    v11->_computeGroup = v22;

    v24 = dispatch_queue_create("com.apple.mediaanalysisd.ocr.compute", 0);
    computeQueue = v11->_computeQueue;
    v11->_computeQueue = v24;
  }

  return v11;
}

+ (id)batchWithAnalysisDatabase:(id)a3 allowDownload:(BOOL)a4 cancelBlock:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [[a1 alloc] initWithAnalysisDatabase:v8 allowDownload:v6 cancelBlock:v9];

  return v10;
}

- (void)addPhotosAsset:(id)a3 withPreviousStatus:(unint64_t)a4 attempts:(unint64_t)a5 andAttemptDate:(id)a6
{
  v8 = a3;
  v22 = a6;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = self->_assetEntries;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v10)
  {
    v11 = *v24;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [*(*(&v23 + 1) + 8 * i) asset];
        v14 = [v13 localIdentifier];
        v15 = [v8 localIdentifier];
        v16 = [v14 isEqualToString:v15];

        if (v16)
        {
          if (MediaAnalysisLogLevel() >= 4)
          {
            v18 = VCPLogToOSLogType[4];
            if (os_log_type_enabled(&_os_log_default, v18))
            {
              v19 = [v8 localIdentifier];
              *buf = 138412290;
              v28 = v19;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "[OCR][%@] Batch already contains asset; ignoring", buf, 0xCu);
            }
          }

          goto LABEL_13;
        }
      }

      v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  assetEntries = self->_assetEntries;
  v9 = [VCPMADOCRAssetEntry entryWithAsset:v8 previousStatus:a4 previousAttempts:a5 andLastAttemptDate:v22];
  [(NSMutableArray *)assetEntries addObject:v9];
LABEL_13:
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
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[OCR] Preparing %d assets (QoS: %@)", buf, 0x12u);
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
            _os_log_impl(&_mh_execute_header, &_os_log_default, v36, "[OCR][MACD] Skipping processing due to migration incomplete", buf, 2u);
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
          _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[OCR][MACD] Skipping processing status setting due to migration incomplete", buf, 2u);
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
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_BEGIN, v2, "VCPMADOCRAssetBatch_Prepare", "", buf, 2u);
      }

      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_10013064C;
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
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_INTERVAL_END, v2, "VCPMADOCRAssetBatch_Prepare", "", buf, 2u);
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
            _os_log_impl(&_mh_execute_header, &_os_log_default, v37, "[OCR][MACD] Failed to prepare %d assets: %@", buf, 0x12u);
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPMADOCRAssetBatch_LegacyPrepare", "", buf, 2u);
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
      v23 = [(VCPDatabaseWriter *)analysisDatabase setAttempts:v21 + 1 asset:v22 taskID:10 status:1 lastAttemptDate:v7];

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
      _os_signpost_emit_with_name_impl(&_mh_execute_header, &v10->super.super, OS_SIGNPOST_INTERVAL_END, spid, "VCPMADOCRAssetBatch_LegacyPrepare", "", buf, 2u);
    }

    goto LABEL_53;
  }

LABEL_55:

  return v35;
}

- (id)acceptableResourcesForAsset:(id)a3 withResources:(id)a4
{
  v5 = a3;
  v26 = a4;
  if ([v5 hasAdjustments])
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v7 = [v5 photoLibrary];
    v6 = [v7 vcp_isSyndicationLibrary] ^ 1;
  }

  v27 = +[NSMutableArray array];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = v26;
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
            v15 = [v13 vcp_uniformTypeIdentifier];
            v16 = [VCPImageManager canDecodeAcceleratedUniformTypeIdentifier:v15];

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
    v18 = [v9 vcp_uniformTypeIdentifier];
    v19 = [v18 conformsToType:UTTypePNG];

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
        v21 = [v5 localIdentifier];
        *buf = 138412290;
        v33 = v21;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "[OCR][%@] No viable resources; allowing thumbnail", buf, 0xCu);
      }
    }

    v22 = [v8 vcp_thumbnailResource];
    if (v22)
    {
      [v27 addObject:v22];
    }

    else if (MediaAnalysisLogLevel() >= 4)
    {
      v23 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v23))
      {
        v24 = [v5 localIdentifier];
        *buf = 138412290;
        v33 = v24;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "[OCR][%@] Asset has no thumbnail resource", buf, 0xCu);
      }
    }
  }

  return v27;
}

- (id)localResourceForAsset:(id)a3 withAcceptableResources:(id)a4
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = a4;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 isLocallyAvailable])
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (id)remoteResourceForAsset:(id)a3 withAcceptableResources:(id)a4
{
  v5 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 analysisType] == 1)
        {
          v13 = v10;

          goto LABEL_14;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
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
      v12 = [v5 localIdentifier];
      *buf = 138412290;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[OCR][%@] No medium image derivative available; allowing other high-res resources", buf, 0xCu);
    }
  }

  v13 = [v6 firstObject];
LABEL_14:

  return v13;
}

- (void)processAssetEntry:(id)a3 resource:(id)a4 resourceURL:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v11 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v11))
    {
      v12 = [v8 asset];
      v13 = [v12 localIdentifier];
      *buf = 138412290;
      v95 = v13;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[OCR][%@] Processing asset", buf, 0xCu);
    }
  }

  v14 = +[VCPWatchdog sharedWatchdog];
  [v14 pet];

  cancelBlock = self->_cancelBlock;
  if (cancelBlock && cancelBlock[2]())
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v16 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v16))
      {
        v17 = [v8 asset];
        v18 = [v17 localIdentifier];
        *buf = 138412290;
        v95 = v18;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[OCR][%@] Processing canceled; skipping asset", buf, 0xCu);
      }
    }

    [v8 setStatus:4294967168];
    goto LABEL_79;
  }

  if (![v8 isAnalysisCompleteFromComputeSync])
  {
    v22 = VCPSignPostLog();
    v23 = os_signpost_id_generate(v22);

    v24 = VCPSignPostLog();
    v25 = v24;
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "VNImageRequestHandler_init", "", buf, 2u);
    }

    v89 = [[VNImageRequestHandler alloc] initWithURL:v10 options:&__NSDictionary0__struct];
    v26 = VCPSignPostLog();
    v27 = v26;
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_END, v23, "VNImageRequestHandler_init", "", buf, 2u);
    }

    v28 = +[NSMutableArray array];
    v90 = +[VNRecognizeDocumentsRequest mad_defaultRequest];
    [v28 addObject:?];
    if (VCPPhotosMRCCachingEnabled())
    {
      v29 = +[VNDetectBarcodesRequest mad_defaultRequest];
      if (!v29)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v59 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v59))
          {
            v60 = [v8 asset];
            v61 = [v60 localIdentifier];
            v62 = [0 description];
            *buf = 138412546;
            v95 = v61;
            v96 = 2112;
            v97 = v62;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v59, "[OCR][%@] Failed to configure VNDetectBarcodesRequest (%@)", buf, 0x16u);
          }
        }

        [v8 setStatus:4294967278];
        v29 = 0;
        v37 = 0;
        goto LABEL_78;
      }

      [v28 addObject:v29];
    }

    else
    {
      v29 = 0;
    }

    v30 = [v8 asset];
    v31 = [v30 vcp_ocrMajorDimensionForResource:v9];

    if (v31)
    {
      [v90 setMaximumProcessingDimensionOnTheLongSide:v31];
      [v29 setMaximumProcessingDimensionOnTheLongSide:v31];
    }

    v32 = VCPSignPostLog();
    v33 = os_signpost_id_generate(v32);

    v34 = VCPSignPostLog();
    v35 = v34;
    if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, OS_SIGNPOST_INTERVAL_BEGIN, v33, "VNImageRequestHandler_performRequests", "", buf, 2u);
    }

    v93 = 0;
    v36 = [v89 performRequests:v28 error:&v93];
    v37 = v93;
    v38 = VCPSignPostLog();
    v39 = v38;
    if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_INTERVAL_END, v33, "VNImageRequestHandler_performRequests", "", buf, 2u);
    }

    if ((v36 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v56 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v56))
        {
          v57 = [v8 asset];
          v58 = [v57 localIdentifier];
          *buf = 138412546;
          v95 = v58;
          v96 = 2112;
          v97 = v37;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v56, "[OCR][%@] Processing failed (%@)", buf, 0x16u);
        }
      }

      [v8 setStatus:4294967278];
      goto LABEL_78;
    }

    v40 = [v90 results];
    v88 = [v40 firstObject];

    if (!v88)
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v63 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v63))
        {
          v64 = [v8 asset];
          v65 = [v64 localIdentifier];
          *buf = 138412290;
          v95 = v65;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v63, "[OCR][%@] Processing produced no results", buf, 0xCu);
        }
      }

      [v8 setStatus:4294967278];
      goto LABEL_77;
    }

    [v8 setVersion:VCPPhotosOCRProcessingVersion];
    v41 = [v88 getTranscript];
    v42 = [v41 length] == 0;

    if (v42)
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v66 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v66))
        {
          v67 = [v8 asset];
          v68 = [v67 localIdentifier];
          *buf = 138412290;
          v95 = v68;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v66, "[OCR][%@] No text recognized; skipping archive/persistence", buf, 0xCu);
        }
      }
    }

    else
    {
      v43 = VCPSignPostLog();
      v44 = os_signpost_id_generate(v43);

      v45 = VCPSignPostLog();
      v46 = v45;
      if (v44 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, OS_SIGNPOST_INTERVAL_BEGIN, v44, "VNDocumentObservation_archive", "", buf, 2u);
      }

      v92 = v37;
      v47 = [NSKeyedArchiver archivedDataWithRootObject:v88 requiringSecureCoding:1 error:&v92];
      v48 = v92;

      v37 = v48;
      [v8 setOcrData:v47];

      v49 = VCPSignPostLog();
      v50 = v49;
      if (v44 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v50, OS_SIGNPOST_INTERVAL_END, v44, "VNDocumentObservation_archive", "", buf, 2u);
      }

      v51 = [v8 ocrData];
      v52 = v51 == 0;

      if (v52)
      {
        if (MediaAnalysisLogLevel() >= 6)
        {
          v53 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v53))
          {
            v54 = [v8 asset];
            v55 = [v54 localIdentifier];
            *buf = 138412290;
            v95 = v55;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v53, "[OCR][%@] Failed to archive OCR results", buf, 0xCu);
          }
        }

        [v8 setStatus:4294967278];
LABEL_77:

LABEL_78:
        goto LABEL_79;
      }
    }

    if (VCPPhotosMRCCachingEnabled())
    {
      v69 = [v29 results];
      v70 = [v69 count] == 0;

      if (v70)
      {
        if (MediaAnalysisLogLevel() >= 6)
        {
          v84 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v84))
          {
            v85 = [v8 asset];
            v86 = [v85 localIdentifier];
            *buf = 138412290;
            v95 = v86;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v84, "[OCR][%@] No MRC detected; skipping archive/persistence", buf, 0xCu);
          }
        }
      }

      else
      {
        v71 = VCPSignPostLog();
        spid = os_signpost_id_generate(v71);

        v72 = VCPSignPostLog();
        v73 = v72;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v72))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v73, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VNBarcodeObservation_archive", "", buf, 2u);
        }

        v74 = [v29 results];
        v91 = v37;
        v75 = [NSKeyedArchiver archivedDataWithRootObject:v74 requiringSecureCoding:1 error:&v91];
        v76 = v91;

        v37 = v76;
        [v8 setMrcData:v75];

        v77 = VCPSignPostLog();
        v78 = v77;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v77))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v78, OS_SIGNPOST_INTERVAL_END, spid, "VNBarcodeObservation_archive", "", buf, 2u);
        }

        v79 = [v8 mrcData];
        v80 = v79 == 0;

        if (v80)
        {
          if (MediaAnalysisLogLevel() >= 6)
          {
            v81 = VCPLogToOSLogType[6];
            if (os_log_type_enabled(&_os_log_default, v81))
            {
              v82 = [v8 asset];
              v83 = [v82 localIdentifier];
              *buf = 138412290;
              v95 = v83;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v81, "[OCR][%@] Failed to archive MRC results", buf, 0xCu);
            }
          }

          [v8 setStatus:4294967278];
        }
      }
    }

    goto LABEL_77;
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v19 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v19))
    {
      v20 = [v8 asset];
      v21 = [v20 localIdentifier];
      *buf = 138412290;
      v95 = v21;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "[OCR][Process][%@] Analysis already complete from compute sync ingestion; skipping", buf, 0xCu);
    }
  }

LABEL_79:
}

- (void)addDownloadRequestID:(int)a3 forAsset:(id)a4
{
  v6 = a4;
  downloadStateQueue = self->_downloadStateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100131F4C;
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
  v14 = 0;
  downloadStateQueue = self->_downloadStateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001320CC;
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
  v5[2] = sub_1001322B4;
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
  v5[2] = sub_1001323BC;
  v5[3] = &unk_1002837C0;
  v5[4] = self;
  v6 = a3;
  dispatch_sync(downloadStateQueue, v5);
  dispatch_group_wait(self->_downloadGroup, 0xFFFFFFFFFFFFFFFFLL);
}

- (int)process
{
  v3 = VCPSignPostLog();
  spid = os_signpost_id_generate(v3);

  v4 = VCPSignPostLog();
  v5 = v4;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPMADOCRAssetEntry_Process", "", buf, 2u);
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
      LODWORD(v69[0]) = v7;
      WORD2(v69[0]) = 2112;
      *(v69 + 6) = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[OCR] Processing %d assets (QoS: %@)", buf, 0x12u);
    }
  }

  v9 = +[VCPWatchdog sharedWatchdog];
  [v9 pet];

  if (![(NSMutableArray *)self->_assetEntries count])
  {
    goto LABEL_67;
  }

  v59 = 0;
  v10 = 0;
  type = VCPLogToOSLogType[6];
  v57 = VCPLogToOSLogType[5];
  v58 = VCPPhotosOCRProcessingFromGatingVersion;
  v61 = VCPLogToOSLogType[4];
  do
  {
    v11 = objc_autoreleasePoolPush();
    v12 = +[VCPWatchdog sharedWatchdog];
    [v12 pet];

    v13 = [(NSMutableArray *)self->_assetEntries objectAtIndexedSubscript:v10];
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
    {
      v14 = [v13 asset];
      v15 = [v14 localIdentifier];
      *buf = 138412290;
      v69[0] = v15;
      _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[OCR][%@] Staging asset", buf, 0xCu);
    }

    v16 = [v13 asset];
    v17 = [v16 adjustmentVersion];
    v18 = v17 == 0;

    if (!v18)
    {
      v19 = [v13 asset];
      v20 = [PHAssetResource vcp_allAcceptableResourcesForAsset:v19];

      v21 = [v13 asset];
      v22 = [(VCPMADOCRAssetBatch *)self acceptableResourcesForAsset:v21 withResources:v20];

      v23 = [v13 asset];
      v24 = [(VCPMADOCRAssetBatch *)self localResourceForAsset:v23 withAcceptableResources:v22];

      if (v24)
      {
        computeGroup = self->_computeGroup;
        computeQueue = self->_computeQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001331D0;
        block[3] = &unk_1002832A0;
        block[4] = self;
        v66 = v13;
        v67 = v24;
        v27 = v24;
        dispatch_group_async(computeGroup, computeQueue, block);

LABEL_15:
LABEL_41:

        goto LABEL_42;
      }

      if (self->_allowDownload)
      {
        v30 = [v13 asset];
        v27 = [v30 vcp_passedOCRGating];

        if ([v27 BOOLValue])
        {
          v31 = [v20 mad_computeSyncResource];
          if (v31)
          {
            v32 = [v13 asset];
            [v13 setIsAnalysisCompleteFromComputeSync:{objc_msgSend(v31, "mad_isAnalysisCompleteFromComputeSyncForAsset:taskID:allowDownload:cancel:", v32, 10, 1, self->_cancelBlock)}];

            if ([v13 isAnalysisCompleteFromComputeSync])
            {
              if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v57))
              {
                v33 = [v13 asset];
                v34 = [v33 localIdentifier];
                *buf = 138412290;
                v69[0] = v34;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v57, "[OCR][%@] Analysis complete with compute sync, skipping media resource download and processing", buf, 0xCu);
              }

LABEL_49:

              goto LABEL_15;
            }

            if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v57))
            {
              v35 = [v13 asset];
              v36 = [v35 localIdentifier];
              *buf = 138412290;
              v69[0] = v36;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v57, "[OCR][%@] Analysis remains incomplete with compute sync, falling back to media resource download", buf, 0xCu);
            }
          }

          v37 = [v13 asset];
          v38 = [(VCPMADOCRAssetBatch *)self remoteResourceForAsset:v37 withAcceptableResources:v22];

          if (v38)
          {
            dispatch_group_enter(self->_downloadGroup);
            v39 = v13;
            v63 = v39;
            v64 = v38;
            v40 = [PHAssetResourceManager vcp_requestFileURLForAssetResource:"vcp_requestFileURLForAssetResource:taskID:completionHandler:" taskID:? completionHandler:?];
            if (v40)
            {
              v41 = [v39 asset];
              [(VCPMADOCRAssetBatch *)self addDownloadRequestID:v40 forAsset:v41];

              ++v59;
            }

            else
            {
              if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v61))
              {
                v44 = [v39 asset];
                v45 = [v44 localIdentifier];
                *buf = 138412290;
                v69[0] = v45;
                v56 = v45;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v61, "[OCR][%@] Failed to initialize resource download", buf, 0xCu);
              }

              [v39 setStatus:4294943494];
              dispatch_group_leave(self->_downloadGroup);
            }

            goto LABEL_49;
          }
        }

        else if (v27)
        {
          [v13 setVersion:v58];
          goto LABEL_15;
        }
      }

      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v61))
      {
        v42 = [v13 asset];
        v43 = [v42 localIdentifier];
        *buf = 138412290;
        v69[0] = v43;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v61, "[OCR][%@] No acceptable resource available", buf, 0xCu);
      }

      [v13 setStatus:4294943494];
      goto LABEL_41;
    }

    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v61))
    {
      v28 = [v13 asset];
      v29 = [v28 localIdentifier];
      *buf = 138412290;
      v69[0] = v29;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v61, "[OCR][%@] Asset has no adjustment version", buf, 0xCu);
    }

    [v13 setStatus:4294943493];
LABEL_42:

    objc_autoreleasePoolPop(v11);
    ++v10;
  }

  while (v10 < [(NSMutableArray *)self->_assetEntries count]);
  if (v59)
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
    {
      *buf = 67109120;
      LODWORD(v69[0]) = v59;
      _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[OCR] Waiting for %d downloads to complete", buf, 8u);
    }

    while (1)
    {
      downloadGroup = self->_downloadGroup;
      v47 = dispatch_time(0, 250000000);
      if (!dispatch_group_wait(downloadGroup, v47))
      {
        goto LABEL_67;
      }

      cancelBlock = self->_cancelBlock;
      if (cancelBlock)
      {
        if (cancelBlock[2]())
        {
          break;
        }
      }

      [(VCPMADOCRAssetBatch *)self downloadInactiveTimeInterval];
      if (v49 > 60.0)
      {
        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v57))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v57, "[OCR] Download inactivity timeout; cancelling downloads", buf, 2u);
        }

        v50 = 4294943494;
LABEL_66:
        [(VCPMADOCRAssetBatch *)self cancelRemainingDownloadsWithStatus:v50];
        goto LABEL_67;
      }
    }

    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v57))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v57, "[OCR] Processing cancelled; cancelling downloads", buf, 2u);
    }

    v50 = 4294967168;
    goto LABEL_66;
  }

LABEL_67:
  if (MediaAnalysisLogLevel() >= 6)
  {
    v51 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v51))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v51, "[OCR] Waiting for compute to complete", buf, 2u);
    }
  }

  dispatch_group_wait(self->_computeGroup, 0xFFFFFFFFFFFFFFFFLL);
  v52 = VCPSignPostLog();
  v53 = v52;
  if (spid - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v52))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v53, OS_SIGNPOST_INTERVAL_END, spid, "VCPMADOCRAssetEntry_Process", "", buf, 2u);
  }

  v54 = self->_cancelBlock;
  if (v54 && (v54[2]() & 1) != 0)
  {
    return -128;
  }

  else
  {
    return 0;
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
  v9[2] = sub_100133750;
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
      v8 = [v6 asset];
      v9 = [v8 localIdentifier];
      v10 = [NSString stringWithFormat:@"[OCR][%@][Legacy]", v9];

      if (![v6 status])
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v43 = v10;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis completed, removing processing status", buf, 0xCu);
        }

        analysisDatabase = self->_analysisDatabase;
        v18 = [v6 asset];
        v19 = [v18 localIdentifier];
        v20 = [(VCPDatabaseWriter *)analysisDatabase removeProcessingStatusForLocalIdentifier:v19 andTaskID:10];

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
        v22 = [v6 asset];
        v23 = [v6 currentAttemptDate];
        v24 = [v22 mad_nextAttemptDateForStatus:v21 currentAttemptDate:v23 attemptCount:{objc_msgSend(v6, "previousAttempts") + 1}];

        v25 = self->_analysisDatabase;
        v26 = [v6 asset];
        v27 = [v26 localIdentifier];
        v20 = [(VCPDatabaseWriter *)v25 updateProcessingStatus:v21 andNextAttemptDate:v24 forLocalIdentifier:v27 andTaskID:10];

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
        v29 = [v6 asset];
        v30 = [v29 localIdentifier];
        v20 = [(VCPDatabaseWriter *)v28 removeProcessingStatusForLocalIdentifier:v30 andTaskID:10];

        goto LABEL_33;
      }

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
      {
        *buf = 138412290;
        v43 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis cancelled, recovering processing status", buf, 0xCu);
      }

      v11 = self->_analysisDatabase;
      v12 = [v6 previousAttempts];
      v13 = [v6 asset];
      v14 = [v6 previousStatus];
      v15 = [v6 lastAttemptDate];
      v16 = [(VCPDatabaseWriter *)v11 setAttempts:v12 asset:v13 taskID:10 status:v14 lastAttemptDate:v15];

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
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[OCR] Persisting %d assets (QoS: %@)", buf, 0x12u);
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
        _os_log_impl(&_mh_execute_header, &_os_log_default, v40, "[OCR] Skipping persisting due to migration incomplete", buf, 2u);
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
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPMADOCRAssetBatch_Publish", "", buf, 2u);
    }

    v11 = [(VCPMADOCRAssetBatch *)self _propagateAssetProcessingStatus];
    v12 = +[MADStateHandler sharedStateHandler];
    [v12 addBreadcrumb:{@"[OCR] Persisting %d assets to Photos", -[NSMutableArray count](self->_assetEntries, "count")}];

    v13 = +[VCPWatchdog sharedWatchdog];
    [v13 pet];

    v14 = +[MADStateHandler sharedStateHandler];
    [v14 enterKnownTimeoutRisk:1];

    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_10013499C;
    v51[3] = &unk_100283210;
    v51[4] = self;
    v44 = objc_retainBlock(v51);
    cancelBlock = self->_cancelBlock;
    v50 = 0;
    v16 = [v45 mad_performChangesAndWait:v44 activity:10 cancelBlock:cancelBlock extendTimeoutBlock:&stru_100286FA0 error:&v50];
    v17 = v50;
    v18 = +[MADStateHandler sharedStateHandler];
    [v18 exitKnownTimeoutRisk];

    v19 = +[MADStateHandler sharedStateHandler];
    [v19 addBreadcrumb:{@"[OCR] Finished persisting %d assets to Photos", -[NSMutableArray count](self->_assetEntries, "count")}];

    if ((v16 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v20 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v20))
        {
          *buf = 138412290;
          *v54 = v17;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "[OCR] Failed to persist OCR results to Photos (%@)", buf, 0xCu);
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
          _os_log_impl(&_mh_execute_header, &_os_log_default, v30, "[OCR] Skipping processing status updating due to migration incomplete", buf, 2u);
        }
      }
    }

    else
    {
      if (+[MADManagedProcessingStatus isMACDPersistEnabled])
      {
        v31 = [(VCPMADOCRAssetBatch *)self _publishProcessingStatusForPhotoLibrary:v45];
        if (!v11 && v31 != 0)
        {
          v11 = v31;
        }
      }

      if (+[VCPDatabaseWriter isLegacyPersistEnabled])
      {
        v33 = [(VCPMADOCRAssetBatch *)self _publishProcessingStatusToLegacyDatabase];
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
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_INTERVAL_END, spid, "VCPMADOCRAssetBatch_Publish", "", buf, 2u);
    }
  }

  return v11;
}

@end