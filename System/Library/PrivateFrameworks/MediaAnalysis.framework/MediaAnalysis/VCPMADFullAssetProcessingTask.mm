@interface VCPMADFullAssetProcessingTask
+ (id)taskWithPhotoLibrary:(id)a3 localIdentifiers:(id)a4;
- (BOOL)shouldSkipAnalysisForAsset:(id)a3 withResources:(id)a4 logPrefix:(id)a5;
- (VCPMADFullAssetProcessingTask)initWithPhotoLibrary:(id)a3 localIdentifiers:(id)a4;
- (int)mainInternal;
- (int)processAsset:(id)a3;
- (int)processAssetsWithProgressReporter:(id)a3;
- (int)processPendingBatch;
- (void)resetPendingBatch;
@end

@implementation VCPMADFullAssetProcessingTask

- (VCPMADFullAssetProcessingTask)initWithPhotoLibrary:(id)a3 localIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VCPTask *)self initWithPhotoLibrary:v6];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_5;
  }

  objc_storeStrong(&v8->_localIdentifiers, a4);
  v10 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v6];
  database = v9->_database;
  v9->_database = v10;

  if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
  {
    v12 = [MADVectorDatabaseChangeManager sharedManagerForPhotoLibrary:v6];
    embeddingChangeManager = v9->_embeddingChangeManager;
    v9->_embeddingChangeManager = v12;

    if (!v9->_embeddingChangeManager)
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_13;
      }

      v17 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v17))
      {
        goto LABEL_13;
      }

      *buf = 0;
      v18 = "Failed to create MADVectorDatabaseChangeManager";
      v19 = buf;
      goto LABEL_12;
    }
  }

  v14 = [VCPPhotosAssetChangeManager managerForPhotoLibrary:v6];
  changeManager = v9->_changeManager;
  v9->_changeManager = v14;

  if (!v9->_changeManager)
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_13;
    }

    v17 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v17))
    {
      goto LABEL_13;
    }

    v21 = 0;
    v18 = "Failed to create VCPPhotosAssetChangeManager";
    v19 = &v21;
LABEL_12:
    _os_log_impl(&_mh_execute_header, &_os_log_default, v17, v18, v19, 2u);
LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

LABEL_5:
  v16 = v9;
LABEL_14:

  return v16;
}

+ (id)taskWithPhotoLibrary:(id)a3 localIdentifiers:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(objc_opt_class()) initWithPhotoLibrary:v5 localIdentifiers:v6];

  return v7;
}

- (void)resetPendingBatch
{
  v5 = [(VCPTask *)self photoLibrary];
  v3 = [VCPBatchAnalysisTask taskWithPhotoLibrary:?];
  pendingBatch = self->_pendingBatch;
  self->_pendingBatch = v3;

  [(VCPBatchAnalysisTask *)self->_pendingBatch setPhotosChangeManager:self->_changeManager];
  [(VCPBatchAnalysisTask *)self->_pendingBatch setEmbeddingChangeManager:self->_embeddingChangeManager];
  v6 = [(VCPTask *)self cancel];
  [(VCPTask *)self->_pendingBatch setCancel:?];
}

- (int)processPendingBatch
{
  [(VCPBatchAnalysisTask *)self->_pendingBatch start];
  v3 = [(VCPTask *)self->_pendingBatch error];
  if (!v3)
  {
    [(VCPMADFullAssetProcessingTask *)self resetPendingBatch];
  }

  return v3;
}

- (BOOL)shouldSkipAnalysisForAsset:(id)a3 withResources:(id)a4 logPrefix:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!self->_networkAvailable)
  {
    if (MediaAnalysisLogLevel() < 7)
    {
      goto LABEL_21;
    }

    v11 = VCPLogToOSLogType[7];
    if (!os_log_type_enabled(&_os_log_default, v11))
    {
      goto LABEL_21;
    }

    v19 = 138412290;
    v20 = v10;
    v12 = "%@ Network unavailable; skipping";
    goto LABEL_11;
  }

  if ([v8 vcp_isLivePhoto] && (objc_msgSend(v9, "vcp_hasLocalPhoto:", objc_msgSend(v8, "hasAdjustments")) & 1) == 0)
  {
    if (MediaAnalysisLogLevel() < 7)
    {
      goto LABEL_21;
    }

    v11 = VCPLogToOSLogType[7];
    if (!os_log_type_enabled(&_os_log_default, v11))
    {
      goto LABEL_21;
    }

    v19 = 138412290;
    v20 = v10;
    v12 = "%@ Live Photo has no local image; skipping";
    goto LABEL_11;
  }

  if (![v8 vcp_isVideoSlowmo])
  {
    v13 = [v9 vcp_smallMovieDerivativeResource];
    if (v13)
    {
      if ([v8 isVideo])
      {
        v14 = [v13 fileSize];
        if (v14 > +[VCPDownloadManager maxSizeBytes])
        {
          if (MediaAnalysisLogLevel() < 7)
          {
            goto LABEL_27;
          }

          v15 = VCPLogToOSLogType[7];
          if (!os_log_type_enabled(&_os_log_default, v15))
          {
            goto LABEL_27;
          }

          v19 = 138412290;
          v20 = v10;
          v16 = "%@ File size exceeds streaming threshold; skipping";
LABEL_26:
          _os_log_impl(&_mh_execute_header, &_os_log_default, v15, v16, &v19, 0xCu);
LABEL_27:
          v17 = 1;
LABEL_34:

          goto LABEL_22;
        }

        if (!v14 && [v8 vcp_isLongMovie])
        {
          if (MediaAnalysisLogLevel() < 7)
          {
            goto LABEL_27;
          }

          v15 = VCPLogToOSLogType[7];
          if (!os_log_type_enabled(&_os_log_default, v15))
          {
            goto LABEL_27;
          }

          v19 = 138412290;
          v20 = v10;
          v16 = "%@ Duration exceeds streaming threshold; skipping";
          goto LABEL_26;
        }
      }

      v17 = 0;
      goto LABEL_34;
    }

    if (MediaAnalysisLogLevel() < 4)
    {
      goto LABEL_27;
    }

    v15 = VCPLogToOSLogType[4];
    if (!os_log_type_enabled(&_os_log_default, v15))
    {
      goto LABEL_27;
    }

    v19 = 138412290;
    v20 = v10;
    v16 = "%@ Asset has no small video derivative; skipping";
    goto LABEL_26;
  }

  if (MediaAnalysisLogLevel() < 7)
  {
    goto LABEL_21;
  }

  v11 = VCPLogToOSLogType[7];
  if (!os_log_type_enabled(&_os_log_default, v11))
  {
    goto LABEL_21;
  }

  v19 = 138412290;
  v20 = v10;
  v12 = "%@ Slowmo not supported for streaming analysis; skipping";
LABEL_11:
  _os_log_impl(&_mh_execute_header, &_os_log_default, v11, v12, &v19, 0xCu);
LABEL_21:
  v17 = 1;
LABEL_22:

  return v17;
}

- (int)processAsset:(id)a3
{
  v4 = a3;
  v5 = [v4 localIdentifier];
  v6 = [NSString stringWithFormat:@"[VCPMADFullAssetProcessingTask][%@]", v5];

  if (MediaAnalysisLogLevel() >= 7)
  {
    v7 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      v8 = [v4 vcp_typeDescription];
      *buf = 138412546;
      v49 = v6;
      v50 = 2112;
      v51 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "%@ Evaluating %@ asset", buf, 0x16u);
    }
  }

  if ([v4 vcp_eligibleForFullAnalysis] && !-[VCPBatchAnalysisTask containsAsset:](self->_pendingBatch, "containsAsset:", v4))
  {
    if (+[MADManagedPhotosAsset isMACDReadEnabled])
    {
      v10 = [(VCPTask *)self photoLibrary];
      v11 = [v10 mad_fetchRequest];

      v12 = [v4 localIdentifier];
      v13 = [v11 fetchAnalysisWithLocalIdentifier:v12 predicate:0];
    }

    else
    {
      database = self->_database;
      v11 = [v4 localIdentifier];
      v47 = 0;
      [(VCPDatabaseWriter *)database analysisForAsset:v11 analysis:&v47];
      v13 = v47;
    }

    v15 = MediaAnalysisStripOutdatedAnalysis();

    v43 = [v4 vcp_fullAnalysisTypes] & 0xFFFFFFFFDFEFFFFFLL;
    v16 = v43 & ~[v15 vcp_types];
    if (!v16)
    {
      v9 = 0;
LABEL_45:

      goto LABEL_46;
    }

    if (MediaAnalysisLogLevel() >= 7)
    {
      v17 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v17))
      {
        [v15 vcp_types];
        v18 = MediaAnalysisTypeDescription();
        *buf = 138412546;
        v49 = v6;
        v50 = 2112;
        v51 = v18;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "%@ existing analyses from MA DB %@", buf, 0x16u);
      }
    }

    if (MediaAnalysisLogLevel() >= 7)
    {
      v19 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v19))
      {
        v20 = MediaAnalysisTypeDescription();
        *buf = 138412546;
        v49 = v6;
        v50 = 2112;
        v51 = v20;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "%@ missing analyses from MA DB %@", buf, 0x16u);
      }
    }

    v21 = [PHAssetResource vcp_allAcceptableResourcesForAsset:v4];
    v22 = [v4 vcp_fullAnalysisTypesForResources:v21];
    v41 = v22 & v16;
    v42 = v22;
    if ((v22 & v16) == v16)
    {
      v23 = v22 & ~[v15 vcp_types] & 0x100000 | v16;
    }

    else
    {
      v23 = v16;
      if ([(VCPMADFullAssetProcessingTask *)self shouldSkipAnalysisForAsset:v4 withResources:v21 logPrefix:v6])
      {
        v9 = 0;
LABEL_44:

        goto LABEL_45;
      }
    }

    v45 = v21;
    v24 = VCPSignPostLog();
    v25 = os_signpost_id_generate(v24);

    v26 = VCPSignPostLog();
    v27 = v26;
    if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_BEGIN, v25, "VCPMADFullAssetProcessingTask_UnpackComputeSync", "", buf, 2u);
    }

    v44 = [v45 mad_computeSyncResource];
    v28 = [(VCPTask *)self cancel];
    v46 = [v44 mad_existingAnalysisFromComputeSyncForAsset:v4 allowDownload:0 cancel:v28];

    v29 = VCPSignPostLog();
    v30 = v29;
    if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_INTERVAL_END, v25, "VCPMADFullAssetProcessingTask_UnpackComputeSync", "", buf, 2u);
    }

    v31 = [v46 fullAnalysisResults];
    v32 = v31 == 0;

    if (!v32)
    {
      v33 = [v46 fullAnalysisResults];
      v34 = MediaAnalysisStripOutdatedAnalysis();

      v23 = v43 & ~[v34 vcp_types];
      if (MediaAnalysisLogLevel() >= 5)
      {
        v35 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v35))
        {
          [v34 vcp_types];
          v36 = MediaAnalysisTypeShortDescription();
          v37 = MediaAnalysisTypeShortDescription();
          *buf = 138412802;
          v49 = v6;
          v50 = 2112;
          v51 = v36;
          v52 = 2112;
          v53 = v37;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v35, "%@ Reusing analysis results from compute sync (existing: %@, missing: %@)", buf, 0x20u);
        }
      }

      if ((v23 & ~v42) != 0)
      {
        if ([(VCPMADFullAssetProcessingTask *)self shouldSkipAnalysisForAsset:v4 withResources:v45 logPrefix:v6])
        {
          v9 = 0;
          v15 = v34;
LABEL_43:

          v21 = v45;
          goto LABEL_44;
        }
      }

      else
      {
        v23 |= v42 & ~[v34 vcp_types] & 0x100000;
      }

      v15 = v34;
    }

    if (MediaAnalysisLogLevel() >= 7)
    {
      v38 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v38))
      {
        *buf = 138412290;
        v49 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v38, "%@ Queuing asset for analysis", buf, 0xCu);
      }
    }

    [(VCPBatchAnalysisTask *)self->_pendingBatch addAnalysis:v23 withExistingAnalysis:v15 forAsset:v4 allowStreaming:v41 != v16];
    [(VCPBatchAnalysisTask *)self->_pendingBatch cost];
    if (v39 < 100.0 || (v9 = [(VCPMADFullAssetProcessingTask *)self processPendingBatch]) == 0)
    {
      v9 = 0;
    }

    goto LABEL_43;
  }

  v9 = 0;
LABEL_46:

  return v9;
}

- (int)processAssetsWithProgressReporter:(id)a3
{
  v4 = a3;
  v5 = off_100281000;
  v6 = [(VCPTask *)self photoLibrary];
  v7 = [PHAsset vcp_fetchOptionsForLibrary:v6 forTaskID:1];

  v8 = [PHAsset fetchAssetsWithLocalIdentifiers:self->_localIdentifiers options:v7];
  v9 = 0;
  while (v9 < [v8 count])
  {
    v10 = objc_autoreleasePoolPush();
    if ([(VCPTask *)self isCancelled])
    {
      v11 = 0;
      LODWORD(v5) = -128;
    }

    else
    {
      v12 = +[VCPWatchdog sharedWatchdog];
      [v12 pet];

      v13 = [v8 objectAtIndexedSubscript:v9];
      v14 = [(VCPMADFullAssetProcessingTask *)self processAsset:v13];

      if (v14)
      {
        v11 = 0;
        LODWORD(v5) = v14;
      }

      else
      {
        [v4 increaseProcessedJobCountByOne];
        v11 = 1;
      }
    }

    objc_autoreleasePoolPop(v10);
    ++v9;
    if ((v11 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  [(VCPBatchAnalysisTask *)self->_pendingBatch cost];
  if (v15 == 0.0 || (LODWORD(v5) = [(VCPMADFullAssetProcessingTask *)self processPendingBatch], !v5))
  {
    v5 = +[VNSession globalSession];
    [v5 releaseCachedResources];

    LODWORD(v5) = 0;
  }

LABEL_13:

  return v5;
}

- (int)mainInternal
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v3 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      v4 = [(NSArray *)self->_localIdentifiers count];
      *buf = 138412546;
      v33 = @"[VCPMADFullAssetProcessingTask]";
      v34 = 2048;
      v35 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "%@ Processing %lu assets for full analysis ...", buf, 0x16u);
    }
  }

  v5 = [(VCPTask *)self photoLibrary];
  v6 = [v5 isCloudPhotoLibraryEnabled];

  if (v6)
  {
    v7 = +[VCPInternetReachability sharedInstance];
    self->_networkAvailable = [v7 hasWifiOrEthernetConnection];

    if (self->_networkAvailable)
    {
      v8 = [(VCPTask *)self cancel];
      v9 = +[VCPDownloadManager sharedManager];
      [v9 setCancel:v8];
    }

    else if (MediaAnalysisLogLevel() >= 6)
    {
      v10 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        *buf = 138412290;
        v33 = @"[VCPMADFullAssetProcessingTask]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "%@ Wifi/Ethernet connection unavailable; disabling streaming analysis", buf, 0xCu);
      }
    }
  }

  [(VCPMADFullAssetProcessingTask *)self resetPendingBatch];
  v11 = [(VCPTask *)self progressHandler];
  v12 = v11 == 0;

  if (v12)
  {
    v16 = 0;
  }

  else
  {
    v13 = [(NSArray *)self->_localIdentifiers count];
    v14 = [(VCPTask *)self progressHandler];
    v15 = [VCPProgressReporter reporterWithIntervalSeconds:10 andTotalJobCount:v13 andBlock:v14];

    v16 = v15;
  }

  v17 = VCPSignPostLog();
  v18 = os_signpost_id_generate(v17);

  v19 = VCPSignPostLog();
  v20 = v19;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "VCPMADFullAssetProcessingTask_Process", "", buf, 2u);
  }

  v21 = [(VCPMADFullAssetProcessingTask *)self processAssetsWithProgressReporter:v16];
  if (!v21)
  {
    v22 = VCPSignPostLog();
    v23 = v22;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_END, v18, "VCPMADFullAssetProcessingTask_Process", "", buf, 2u);
    }
  }

  v24 = +[VCPDownloadManager sharedManager];
  [v24 flush];

  v25 = [(MADVectorDatabaseChangeManager *)self->_embeddingChangeManager publishPendingChanges];
  if (v25)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v26 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v26))
      {
        *buf = 138412290;
        v33 = @"[VCPMADFullAssetProcessingTask]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, v26, "%@ Failed to publish vector database changes", buf, 0xCu);
      }
    }
  }

  else
  {
    changeManager = self->_changeManager;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100115D08;
    v31[3] = &unk_100283000;
    v31[4] = self;
    if ([(VCPPhotosAssetChangeManager *)changeManager publishPendingChangesWithCancelBlock:v31])
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v28 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v28))
        {
          *buf = 138412290;
          v33 = @"[VCPMADFullAssetProcessingTask]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, v28, "%@ Failed to publish PHAssetPropertySetMediaAnalysis changes", buf, 0xCu);
        }
      }
    }

    if (!+[VCPDatabaseWriter isLegacyPersistEnabled])
    {
      goto LABEL_38;
    }

    v29 = [(VCPDatabaseWriter *)self->_database commit];
    if (v29 == -108 || v29 == -36)
    {
      v25 = v29;
    }

    else
    {
      v25 = v29;
      if (v29 != -23)
      {
        v25 = 0;
      }
    }

    if (v29 != -108 && v29 != -36 && v29 != -23)
    {
LABEL_38:
      v25 = v21;
    }
  }

  return v25;
}

@end