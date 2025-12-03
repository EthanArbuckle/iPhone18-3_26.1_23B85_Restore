@interface VCPMADOCRAssetBatch
+ (id)batchWithAnalysisDatabase:(id)database allowDownload:(BOOL)download cancelBlock:(id)block;
- (VCPMADOCRAssetBatch)initWithAnalysisDatabase:(id)database allowDownload:(BOOL)download cancelBlock:(id)block;
- (double)downloadInactiveTimeInterval;
- (id)acceptableResourcesForAsset:(id)asset withResources:(id)resources;
- (id)localResourceForAsset:(id)asset withAcceptableResources:(id)resources;
- (id)remoteResourceForAsset:(id)asset withAcceptableResources:(id)resources;
- (int)_propagateAssetProcessingStatus;
- (int)_publishProcessingStatusForPhotoLibrary:(id)library;
- (int)_publishProcessingStatusToLegacyDatabase;
- (int)prepare;
- (int)process;
- (int)publish;
- (int)removeDownloadRequestIDForAsset:(id)asset;
- (void)addDownloadRequestID:(int)d forAsset:(id)asset;
- (void)addPhotosAsset:(id)asset withPreviousStatus:(unint64_t)status attempts:(unint64_t)attempts andAttemptDate:(id)date;
- (void)cancelRemainingDownloadsWithStatus:(int)status;
- (void)processAssetEntry:(id)entry resource:(id)resource resourceURL:(id)l;
@end

@implementation VCPMADOCRAssetBatch

- (VCPMADOCRAssetBatch)initWithAnalysisDatabase:(id)database allowDownload:(BOOL)download cancelBlock:(id)block
{
  databaseCopy = database;
  blockCopy = block;
  v27.receiver = self;
  v27.super_class = VCPMADOCRAssetBatch;
  v11 = [(VCPMADOCRAssetBatch *)&v27 init];
  if (v11)
  {
    v12 = +[NSMutableArray array];
    assetEntries = v11->_assetEntries;
    v11->_assetEntries = v12;

    objc_storeStrong(&v11->_analysisDatabase, database);
    v11->_allowDownload = download;
    v14 = objc_retainBlock(blockCopy);
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

+ (id)batchWithAnalysisDatabase:(id)database allowDownload:(BOOL)download cancelBlock:(id)block
{
  downloadCopy = download;
  databaseCopy = database;
  blockCopy = block;
  v10 = [[self alloc] initWithAnalysisDatabase:databaseCopy allowDownload:downloadCopy cancelBlock:blockCopy];

  return v10;
}

- (void)addPhotosAsset:(id)asset withPreviousStatus:(unint64_t)status attempts:(unint64_t)attempts andAttemptDate:(id)date
{
  assetCopy = asset;
  dateCopy = date;
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

        asset = [*(*(&v23 + 1) + 8 * i) asset];
        localIdentifier = [asset localIdentifier];
        localIdentifier2 = [assetCopy localIdentifier];
        v16 = [localIdentifier isEqualToString:localIdentifier2];

        if (v16)
        {
          if (MediaAnalysisLogLevel() >= 4)
          {
            v18 = VCPLogToOSLogType[4];
            if (os_log_type_enabled(&_os_log_default, v18))
            {
              localIdentifier3 = [assetCopy localIdentifier];
              *buf = 138412290;
              v28 = localIdentifier3;
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
  v9 = [VCPMADOCRAssetEntry entryWithAsset:assetCopy previousStatus:status previousAttempts:attempts andLastAttemptDate:dateCopy];
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
    firstObject = [(NSMutableArray *)self->_assetEntries firstObject];
    asset = [firstObject asset];
    photoLibrary = [asset photoLibrary];

    if ([MADPhotosDataStoreClient needsDataStoreMigrationForPhotoLibrary:photoLibrary])
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
      v29 = [(NSMutableArray *)photoLibrary mad_performAnalysisDataStoreChanges:v48 error:&v47];
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
  photoLibrary = self->_assetEntries;
  v15 = [(NSMutableArray *)photoLibrary countByEnumeratingWithState:&v43 objects:v50 count:16];
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
        objc_enumerationMutation(photoLibrary);
      }

      v19 = *(*(&v43 + 1) + 8 * v17);
      analysisDatabase = self->_analysisDatabase;
      previousAttempts = [v19 previousAttempts];
      asset2 = [v19 asset];
      v23 = [(VCPDatabaseWriter *)analysisDatabase setAttempts:previousAttempts + 1 asset:asset2 taskID:10 status:1 lastAttemptDate:v7];

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
        v15 = [(NSMutableArray *)photoLibrary countByEnumeratingWithState:&v43 objects:v50 count:16];
        if (v15)
        {
          goto LABEL_15;
        }

        break;
      }
    }
  }

  commit = [(VCPDatabaseWriter *)self->_analysisDatabase commit];
  if (commit == -108 || commit == -36)
  {
    v35 = commit;
  }

  else
  {
    v35 = commit;
    if (commit != -23)
    {
      v35 = v2;
    }
  }

  if (commit != -108 && commit != -36 && commit != -23)
  {
    v40 = VCPSignPostLog();
    photoLibrary = v40;
    if (v41 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, &photoLibrary->super.super, OS_SIGNPOST_INTERVAL_END, spid, "VCPMADOCRAssetBatch_LegacyPrepare", "", buf, 2u);
    }

    goto LABEL_53;
  }

LABEL_55:

  return v35;
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
      _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[OCR][%@] No medium image derivative available; allowing other high-res resources", buf, 0xCu);
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
      v95 = localIdentifier;
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
        asset2 = [entryCopy asset];
        localIdentifier2 = [asset2 localIdentifier];
        *buf = 138412290;
        v95 = localIdentifier2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[OCR][%@] Processing canceled; skipping asset", buf, 0xCu);
      }
    }

    [entryCopy setStatus:4294967168];
    goto LABEL_79;
  }

  if (![entryCopy isAnalysisCompleteFromComputeSync])
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

    v89 = [[VNImageRequestHandler alloc] initWithURL:lCopy options:&__NSDictionary0__struct];
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
            asset3 = [entryCopy asset];
            localIdentifier3 = [asset3 localIdentifier];
            v62 = [0 description];
            *buf = 138412546;
            v95 = localIdentifier3;
            v96 = 2112;
            v97 = v62;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v59, "[OCR][%@] Failed to configure VNDetectBarcodesRequest (%@)", buf, 0x16u);
          }
        }

        [entryCopy setStatus:4294967278];
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

    asset4 = [entryCopy asset];
    v31 = [asset4 vcp_ocrMajorDimensionForResource:resourceCopy];

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
          asset5 = [entryCopy asset];
          localIdentifier4 = [asset5 localIdentifier];
          *buf = 138412546;
          v95 = localIdentifier4;
          v96 = 2112;
          v97 = v37;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v56, "[OCR][%@] Processing failed (%@)", buf, 0x16u);
        }
      }

      [entryCopy setStatus:4294967278];
      goto LABEL_78;
    }

    results = [v90 results];
    firstObject = [results firstObject];

    if (!firstObject)
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v63 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v63))
        {
          asset6 = [entryCopy asset];
          localIdentifier5 = [asset6 localIdentifier];
          *buf = 138412290;
          v95 = localIdentifier5;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v63, "[OCR][%@] Processing produced no results", buf, 0xCu);
        }
      }

      [entryCopy setStatus:4294967278];
      goto LABEL_77;
    }

    [entryCopy setVersion:VCPPhotosOCRProcessingVersion];
    getTranscript = [firstObject getTranscript];
    v42 = [getTranscript length] == 0;

    if (v42)
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v66 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v66))
        {
          asset7 = [entryCopy asset];
          localIdentifier6 = [asset7 localIdentifier];
          *buf = 138412290;
          v95 = localIdentifier6;
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
      v47 = [NSKeyedArchiver archivedDataWithRootObject:firstObject requiringSecureCoding:1 error:&v92];
      v48 = v92;

      v37 = v48;
      [entryCopy setOcrData:v47];

      v49 = VCPSignPostLog();
      v50 = v49;
      if (v44 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v50, OS_SIGNPOST_INTERVAL_END, v44, "VNDocumentObservation_archive", "", buf, 2u);
      }

      ocrData = [entryCopy ocrData];
      v52 = ocrData == 0;

      if (v52)
      {
        if (MediaAnalysisLogLevel() >= 6)
        {
          v53 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v53))
          {
            asset8 = [entryCopy asset];
            localIdentifier7 = [asset8 localIdentifier];
            *buf = 138412290;
            v95 = localIdentifier7;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v53, "[OCR][%@] Failed to archive OCR results", buf, 0xCu);
          }
        }

        [entryCopy setStatus:4294967278];
LABEL_77:

LABEL_78:
        goto LABEL_79;
      }
    }

    if (VCPPhotosMRCCachingEnabled())
    {
      results2 = [v29 results];
      v70 = [results2 count] == 0;

      if (v70)
      {
        if (MediaAnalysisLogLevel() >= 6)
        {
          v84 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v84))
          {
            asset9 = [entryCopy asset];
            localIdentifier8 = [asset9 localIdentifier];
            *buf = 138412290;
            v95 = localIdentifier8;
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

        results3 = [v29 results];
        v91 = v37;
        v75 = [NSKeyedArchiver archivedDataWithRootObject:results3 requiringSecureCoding:1 error:&v91];
        v76 = v91;

        v37 = v76;
        [entryCopy setMrcData:v75];

        v77 = VCPSignPostLog();
        v78 = v77;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v77))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v78, OS_SIGNPOST_INTERVAL_END, spid, "VNBarcodeObservation_archive", "", buf, 2u);
        }

        mrcData = [entryCopy mrcData];
        v80 = mrcData == 0;

        if (v80)
        {
          if (MediaAnalysisLogLevel() >= 6)
          {
            v81 = VCPLogToOSLogType[6];
            if (os_log_type_enabled(&_os_log_default, v81))
            {
              asset10 = [entryCopy asset];
              localIdentifier9 = [asset10 localIdentifier];
              *buf = 138412290;
              v95 = localIdentifier9;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v81, "[OCR][%@] Failed to archive MRC results", buf, 0xCu);
            }
          }

          [entryCopy setStatus:4294967278];
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
      asset11 = [entryCopy asset];
      localIdentifier10 = [asset11 localIdentifier];
      *buf = 138412290;
      v95 = localIdentifier10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "[OCR][Process][%@] Analysis already complete from compute sync ingestion; skipping", buf, 0xCu);
    }
  }

LABEL_79:
}

- (void)addDownloadRequestID:(int)d forAsset:(id)asset
{
  assetCopy = asset;
  downloadStateQueue = self->_downloadStateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100131F4C;
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
  v14 = 0;
  downloadStateQueue = self->_downloadStateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001320CC;
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
  v5[2] = sub_1001322B4;
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
  v5[2] = sub_1001323BC;
  v5[3] = &unk_1002837C0;
  v5[4] = self;
  statusCopy = status;
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
      asset = [v13 asset];
      localIdentifier = [asset localIdentifier];
      *buf = 138412290;
      v69[0] = localIdentifier;
      _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[OCR][%@] Staging asset", buf, 0xCu);
    }

    asset2 = [v13 asset];
    adjustmentVersion = [asset2 adjustmentVersion];
    v18 = adjustmentVersion == 0;

    if (!v18)
    {
      asset3 = [v13 asset];
      v20 = [PHAssetResource vcp_allAcceptableResourcesForAsset:asset3];

      asset4 = [v13 asset];
      v22 = [(VCPMADOCRAssetBatch *)self acceptableResourcesForAsset:asset4 withResources:v20];

      asset5 = [v13 asset];
      v24 = [(VCPMADOCRAssetBatch *)self localResourceForAsset:asset5 withAcceptableResources:v22];

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
        vcp_passedOCRGating = v24;
        dispatch_group_async(computeGroup, computeQueue, block);

LABEL_15:
LABEL_41:

        goto LABEL_42;
      }

      if (self->_allowDownload)
      {
        asset6 = [v13 asset];
        vcp_passedOCRGating = [asset6 vcp_passedOCRGating];

        if ([vcp_passedOCRGating BOOLValue])
        {
          mad_computeSyncResource = [v20 mad_computeSyncResource];
          if (mad_computeSyncResource)
          {
            asset7 = [v13 asset];
            [v13 setIsAnalysisCompleteFromComputeSync:{objc_msgSend(mad_computeSyncResource, "mad_isAnalysisCompleteFromComputeSyncForAsset:taskID:allowDownload:cancel:", asset7, 10, 1, self->_cancelBlock)}];

            if ([v13 isAnalysisCompleteFromComputeSync])
            {
              if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v57))
              {
                asset8 = [v13 asset];
                localIdentifier2 = [asset8 localIdentifier];
                *buf = 138412290;
                v69[0] = localIdentifier2;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v57, "[OCR][%@] Analysis complete with compute sync, skipping media resource download and processing", buf, 0xCu);
              }

LABEL_49:

              goto LABEL_15;
            }

            if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v57))
            {
              asset9 = [v13 asset];
              localIdentifier3 = [asset9 localIdentifier];
              *buf = 138412290;
              v69[0] = localIdentifier3;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v57, "[OCR][%@] Analysis remains incomplete with compute sync, falling back to media resource download", buf, 0xCu);
            }
          }

          asset10 = [v13 asset];
          v38 = [(VCPMADOCRAssetBatch *)self remoteResourceForAsset:asset10 withAcceptableResources:v22];

          if (v38)
          {
            dispatch_group_enter(self->_downloadGroup);
            v39 = v13;
            v63 = v39;
            v64 = v38;
            v40 = [PHAssetResourceManager vcp_requestFileURLForAssetResource:"vcp_requestFileURLForAssetResource:taskID:completionHandler:" taskID:? completionHandler:?];
            if (v40)
            {
              asset11 = [v39 asset];
              [(VCPMADOCRAssetBatch *)self addDownloadRequestID:v40 forAsset:asset11];

              ++v59;
            }

            else
            {
              if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v61))
              {
                asset12 = [v39 asset];
                localIdentifier4 = [asset12 localIdentifier];
                *buf = 138412290;
                v69[0] = localIdentifier4;
                v56 = localIdentifier4;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v61, "[OCR][%@] Failed to initialize resource download", buf, 0xCu);
              }

              [v39 setStatus:4294943494];
              dispatch_group_leave(self->_downloadGroup);
            }

            goto LABEL_49;
          }
        }

        else if (vcp_passedOCRGating)
        {
          [v13 setVersion:v58];
          goto LABEL_15;
        }
      }

      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v61))
      {
        asset13 = [v13 asset];
        localIdentifier5 = [asset13 localIdentifier];
        *buf = 138412290;
        v69[0] = localIdentifier5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v61, "[OCR][%@] No acceptable resource available", buf, 0xCu);
      }

      [v13 setStatus:4294943494];
      goto LABEL_41;
    }

    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v61))
    {
      asset14 = [v13 asset];
      localIdentifier6 = [asset14 localIdentifier];
      *buf = 138412290;
      v69[0] = localIdentifier6;
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
  v9[2] = sub_100133750;
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

  firstObject = [(NSMutableArray *)self->_assetEntries firstObject];
  asset = [firstObject asset];
  photoLibrary = [asset photoLibrary];

  v42 = [MADPhotosDataStoreClient needsDataStoreMigrationForPhotoLibrary:photoLibrary];
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

    _propagateAssetProcessingStatus = -18;
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

    _propagateAssetProcessingStatus = [(VCPMADOCRAssetBatch *)self _propagateAssetProcessingStatus];
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
    v16 = [photoLibrary mad_performChangesAndWait:v44 activity:10 cancelBlock:cancelBlock extendTimeoutBlock:&stru_100286FA0 error:&v50];
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

      code = [v17 code];
      if (_propagateAssetProcessingStatus)
      {
        v29 = 1;
      }

      else
      {
        v29 = code == 0;
      }

      if (!v29)
      {
        _propagateAssetProcessingStatus = code;
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
        v31 = [(VCPMADOCRAssetBatch *)self _publishProcessingStatusForPhotoLibrary:photoLibrary];
        if (!_propagateAssetProcessingStatus && v31 != 0)
        {
          _propagateAssetProcessingStatus = v31;
        }
      }

      if (+[VCPDatabaseWriter isLegacyPersistEnabled])
      {
        _publishProcessingStatusToLegacyDatabase = [(VCPMADOCRAssetBatch *)self _publishProcessingStatusToLegacyDatabase];
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
    }

    v38 = VCPSignPostLog();
    v39 = v38;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_INTERVAL_END, spid, "VCPMADOCRAssetBatch_Publish", "", buf, 2u);
    }
  }

  return _propagateAssetProcessingStatus;
}

@end