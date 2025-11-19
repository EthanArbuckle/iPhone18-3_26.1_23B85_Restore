@interface VCPPhotosMaintenanceProcessingTask
+ (id)taskWithPhotoLibraries:(id)a3 andProgressHandler:(id)a4 andCompletionHandler:(id)a5 andCancelBlock:(id)a6;
- (BOOL)isCancelled;
- (VCPPhotosMaintenanceProcessingTask)initWithPhotoLibraries:(id)a3 andProgressHandler:(id)a4 andCompletionHandler:(id)a5 andCancelBlock:(id)a6;
- (int)_performComputeSyncBackfillForPhotoLibrary:(id)a3;
- (int)_performVideoEmbeddingVersionBackfillForPhotoLibrary:(id)a3;
- (int)_pruneProcessingStatusForPhotoLibrary:(id)a3;
- (int)_removeImageEmbeddingFromMADBForPhotoLibrary:(id)a3;
- (int)performForceClusterIfNeededWithPhotoLibrary:(id)a3;
- (int)run;
- (void)_persistBackfillForAssets:(id)a3 photoLibrary:(id)a4;
- (void)_persistVideoEmbeddingBackfillForAssets:(id)a3 photoLibrary:(id)a4;
- (void)dealloc;
@end

@implementation VCPPhotosMaintenanceProcessingTask

- (VCPPhotosMaintenanceProcessingTask)initWithPhotoLibraries:(id)a3 andProgressHandler:(id)a4 andCompletionHandler:(id)a5 andCancelBlock:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v26.receiver = self;
  v26.super_class = VCPPhotosMaintenanceProcessingTask;
  v15 = [(VCPPhotosMaintenanceProcessingTask *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_photoLibraries, a3);
    v17 = objc_retainBlock(v12);
    progressHandler = v16->_progressHandler;
    v16->_progressHandler = v17;

    if (v13)
    {
      v19 = v13;
    }

    else
    {
      v19 = &stru_1002877A0;
    }

    v20 = objc_retainBlock(v19);
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v20;

    if (v14)
    {
      v22 = v14;
    }

    else
    {
      v22 = &stru_1002877C0;
    }

    v23 = objc_retainBlock(v22);
    cancelBlock = v16->_cancelBlock;
    v16->_cancelBlock = v23;
  }

  return v16;
}

+ (id)taskWithPhotoLibraries:(id)a3 andProgressHandler:(id)a4 andCompletionHandler:(id)a5 andCancelBlock:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [objc_alloc(objc_opt_class()) initWithPhotoLibraries:v9 andProgressHandler:v10 andCompletionHandler:v11 andCancelBlock:v12];

  return v13;
}

- (void)dealloc
{
  v3 = atomic_load(&self->_started);
  if ((v3 & 1) == 0)
  {
    (*(self->_completionHandler + 2))();
  }

  v4.receiver = self;
  v4.super_class = VCPPhotosMaintenanceProcessingTask;
  [(VCPPhotosMaintenanceProcessingTask *)&v4 dealloc];
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

- (void)_persistBackfillForAssets:(id)a3 photoLibrary:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v7 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      *buf = 134217984;
      v16 = [v5 count];
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[ComputeSync|Backfill] Persisting %lu assets", buf, 0xCu);
    }
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10016C638;
  v13[3] = &unk_100283210;
  v8 = v5;
  v14 = v8;
  v12 = 0;
  [v6 performChangesAndWait:v13 error:&v12];
  v9 = v12;
  if (v9)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v10 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        v11 = [v8 count];
        *buf = 134218242;
        v16 = v11;
        v17 = 2112;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[ComputeSync|Backfill] Failed to persist stages/payload for %lu results to Photos (%@)", buf, 0x16u);
      }
    }
  }
}

- (int)_performComputeSyncBackfillForPhotoLibrary:(id)a3
{
  v4 = a3;
  if (+[PHAsset mad_isComputeSyncDisabled])
  {
    if (MediaAnalysisLogLevel() < 5)
    {
      goto LABEL_21;
    }

    v5 = VCPLogToOSLogType[5];
    if (!os_log_type_enabled(&_os_log_default, v5))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v6 = "[ComputeSync|Backfill] Compute sync is disabled; skipping";
LABEL_5:
    _os_log_impl(&_mh_execute_header, &_os_log_default, v5, v6, buf, 2u);
LABEL_21:
    v12 = 0;
    goto LABEL_22;
  }

  if (+[MADManagedKeyValueStore isMACDReadEnabled])
  {
    if ([MADPhotosDataStoreClient needsDataStoreMigrationForPhotoLibrary:v4])
    {
      if (MediaAnalysisLogLevel() < 4)
      {
        goto LABEL_21;
      }

      v5 = VCPLogToOSLogType[4];
      if (!os_log_type_enabled(&_os_log_default, v5))
      {
        goto LABEL_21;
      }

      *buf = 0;
      v6 = "[ComputeSync|Backfill][MACD] Database migration incomplete; skipping backfill";
      goto LABEL_5;
    }

    v7 = [v4 mad_fetchRequest];
    v8 = [v7 dataStoreValueForKey:@"LastComputeSyncBackfillTimestamp"];
  }

  else
  {
    if (![VCPDatabaseManager existsDatabaseForPhotoLibrary:v4])
    {
      if (MediaAnalysisLogLevel() < 4)
      {
        goto LABEL_21;
      }

      v5 = VCPLogToOSLogType[4];
      if (!os_log_type_enabled(&_os_log_default, v5))
      {
        goto LABEL_21;
      }

      *buf = 0;
      v6 = "[ComputeSync|Backfill] MAD database does not exist; skipping backfill";
      goto LABEL_5;
    }

    v7 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v4];
    v8 = [v7 valueForKey:@"LastComputeSyncBackfillTimestamp"];
  }

  v9 = v8;

  if (v9)
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v10 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        v11 = [NSDate dateWithTimeIntervalSinceReferenceDate:v9];
        *buf = 138412290;
        v47 = v11;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[ComputeSync|Backfill] Last backfilled on %@; skipping", buf, 0xCu);
      }
    }

    goto LABEL_21;
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v14 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v14))
    {
      v15 = [v4 photoLibraryURL];
      v16 = [v15 path];
      *buf = 138412290;
      v47 = v16;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[ComputeSync|Backfill] Attempting backfill for Photo Library %@", buf, 0xCu);
    }
  }

  v43 = [PHAsset vcp_fetchOptionsForLibrary:v4 forTaskID:1];
  v17 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:1];
  v50 = v17;
  v18 = [NSArray arrayWithObjects:&v50 count:1];
  [v43 setSortDescriptors:v18];

  v19 = [PHAsset fetchAssetsWithOptions:v43];
  v20 = +[NSMutableDictionary dictionary];
  v21 = 0;
  v44 = 0;
  v22 = VCPLogToOSLogType[7];
  *&v23 = 138412290;
  v42 = v23;
  while (v21 < [v19 count])
  {
    v24 = objc_autoreleasePoolPush();
    if (![(VCPPhotosMaintenanceProcessingTask *)self isCancelled])
    {
      v26 = +[VCPWatchdog sharedWatchdog];
      [v26 pet];

      v27 = [v19 objectAtIndexedSubscript:v21];
      v28 = [v27 mediaAnalysisProperties];
      v29 = [v28 localAnalysisStage] == 0;

      if (!v29)
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v22))
        {
          v30 = [v27 localIdentifier];
          v31 = [v27 mediaAnalysisProperties];
          v32 = [v31 localAnalysisStage];
          *buf = 138412546;
          v47 = v30;
          v48 = 1024;
          v49 = v32;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[ComputeSync|Backfill][%@] Compute sync stage already set as %d; skipping backfill", buf, 0x12u);
        }

        goto LABEL_40;
      }

      v33 = [v27 mad_analysisStageAfterCompletingAnalysis:0];
      if (v33)
      {
        v34 = [NSNumber numberWithShort:v33];
        [v20 setObject:v34 forKeyedSubscript:v27];

        if ([v20 count] < 0x64)
        {
          v25 = 0;
        }

        else
        {
          [(VCPPhotosMaintenanceProcessingTask *)self _persistBackfillForAssets:v20 photoLibrary:v4];
          v35 = [v20 count];
          [v20 removeAllObjects];
          v25 = 0;
          v44 = &v44[v35];
        }
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v22))
        {
          v36 = [v27 localIdentifier];
          *buf = v42;
          v47 = v36;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[ComputeSync|Backfill][%@] Compute sync stage should be None; skipping backfill", buf, 0xCu);
        }

LABEL_40:
        v25 = 14;
      }

      goto LABEL_42;
    }

    v25 = 1;
LABEL_42:
    objc_autoreleasePoolPop(v24);
    if (v25 != 14 && v25)
    {
      v12 = -128;
      goto LABEL_56;
    }

    ++v21;
  }

  if ([v20 count])
  {
    [(VCPPhotosMaintenanceProcessingTask *)self _persistBackfillForAssets:v20 photoLibrary:v4];
    v44 = &v44[[v20 count]];
  }

  v37 = +[NSDate now];
  [v37 timeIntervalSinceReferenceDate];
  v39 = v38;

  if (+[MADManagedKeyValueStore isMACDPersistEnabled])
  {
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10016D22C;
    v45[3] = &unk_100282F90;
    v45[4] = v39;
    [v4 mad_performAnalysisDataStoreChanges:v45 error:0];
  }

  else
  {
    v40 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v4];
    [v40 setValue:v39 forKey:@"LastComputeSyncBackfillTimestamp"];
    [v40 commit];
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v41 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v41))
    {
      *buf = 134217984;
      v47 = v44;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v41, "[ComputeSync|Backfill] Completed backfill for total %lu assets", buf, 0xCu);
    }
  }

  v12 = 0;
LABEL_56:

LABEL_22:
  return v12;
}

- (void)_persistVideoEmbeddingBackfillForAssets:(id)a3 photoLibrary:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v7 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      *buf = 134217984;
      *v16 = [v5 count];
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[VideoEmbedding|Backfill] Persisting %lu assets", buf, 0xCu);
    }
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10016D474;
  v13[3] = &unk_100283210;
  v8 = v5;
  v14 = v8;
  v12 = 0;
  [v6 performChangesAndWait:v13 error:&v12];
  v9 = v12;
  if (v9)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v10 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        v11 = [v8 count];
        *buf = 67109634;
        *v16 = 75;
        *&v16[4] = 2048;
        *&v16[6] = v11;
        v17 = 2112;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[VideoEmbedding|Backfill] Failed to persist video embedding version (v%d) for %lu results to Photos (%@)", buf, 0x1Cu);
      }
    }
  }
}

- (int)_performVideoEmbeddingVersionBackfillForPhotoLibrary:(id)a3
{
  v4 = a3;
  if ((+[VCPVideoCNNAnalyzer isMUBackboneEnabled]& 1) == 0)
  {
    if (MediaAnalysisLogLevel() < 7)
    {
      goto LABEL_21;
    }

    v5 = VCPLogToOSLogType[7];
    if (!os_log_type_enabled(&_os_log_default, v5))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v6 = "[VideoEmbedding|Backfill] Embedding generation disabled; skipping";
    goto LABEL_10;
  }

  if (+[MADManagedKeyValueStore isMACDReadEnabled])
  {
    if ([MADPhotosDataStoreClient needsDataStoreMigrationForPhotoLibrary:v4])
    {
      if (MediaAnalysisLogLevel() < 4)
      {
        goto LABEL_21;
      }

      v5 = VCPLogToOSLogType[4];
      if (!os_log_type_enabled(&_os_log_default, v5))
      {
        goto LABEL_21;
      }

      *buf = 0;
      v6 = "[VideoEmbedding|Backfill][MACD] Database migration incomplete; skipping backfill";
LABEL_10:
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, v6, buf, 2u);
LABEL_21:
      v12 = 0;
      goto LABEL_22;
    }

    v7 = [v4 mad_fetchRequest];
    v8 = [v7 dataStoreValueForKey:@"LastVideoEmbeddingVersionBackfillTimestamp"];
  }

  else
  {
    if (![VCPDatabaseManager existsDatabaseForPhotoLibrary:v4])
    {
      if (MediaAnalysisLogLevel() < 4)
      {
        goto LABEL_21;
      }

      v5 = VCPLogToOSLogType[4];
      if (!os_log_type_enabled(&_os_log_default, v5))
      {
        goto LABEL_21;
      }

      *buf = 0;
      v6 = "[VideoEmbedding|Backfill] MAD database does not exist; skipping backfill";
      goto LABEL_10;
    }

    v7 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v4];
    v8 = [v7 valueForKey:@"LastVideoEmbeddingVersionBackfillTimestamp"];
  }

  v9 = v8;

  if (v9)
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v10 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        v11 = [NSDate dateWithTimeIntervalSinceReferenceDate:v9];
        *buf = 138412290;
        v40 = v11;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[VideoEmbedding|Backfill] Last backfilled on %@; skipping", buf, 0xCu);
      }
    }

    goto LABEL_21;
  }

  v36 = [PHMediaProcessingAlgorithmVersionProvider mad_sharedVideoEmbeddingVersionProviderWithPhotoLibrary:v4];
  [PHAsset mad_sceneConfidenceThresholdForTask:1];
  v38 = 0;
  v14 = [v4 fetchAssetsForMediaProcessingTaskID:1 priority:0 algorithmVersion:v36 sceneConfidenceThreshold:&v38 error:?];
  *&type[4] = v38;
  if (*&type[4])
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v15 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v15))
      {
        *buf = 138412290;
        v40 = *&type[4];
        _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[VideoEmbedding|Backfill] Failed to fetch assets: %@", buf, 0xCu);
      }
    }

    v12 = -18;
  }

  else
  {
    v16 = +[NSMutableArray array];
    v17 = 0;
    v35 = 0;
    v18 = MediaAnalysisVersion;
    *type = VCPLogToOSLogType[7];
    *&v19 = 138412290;
    v33 = v19;
    while (v17 < [v14 count])
    {
      v20 = objc_autoreleasePoolPush();
      if ([(VCPPhotosMaintenanceProcessingTask *)self isCancelled])
      {
        v21 = 1;
      }

      else
      {
        v22 = +[VCPWatchdog sharedWatchdog];
        [v22 pet];

        v23 = [v14 objectAtIndexedSubscript:v17];
        v24 = [v23 mediaAnalysisProperties];
        v25 = [v24 mediaAnalysisVersion] < v18;

        if (v25)
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type[0]))
          {
            v26 = [v23 localIdentifier];
            *buf = v33;
            v40 = v26;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type[0], "[VideoEmbedding|Backfill][%@] Asset has not been processed yet; skipping backfill", buf, 0xCu);
          }

          v21 = 14;
        }

        else
        {
          [v16 addObject:v23];
          if ([v16 count] < 0x64)
          {
            v21 = 0;
          }

          else
          {
            [(VCPPhotosMaintenanceProcessingTask *)self _persistVideoEmbeddingBackfillForAssets:v16 photoLibrary:v4];
            v27 = [v16 count];
            [v16 removeAllObjects];
            v21 = 0;
            v35 = &v35[v27];
          }
        }
      }

      objc_autoreleasePoolPop(v20);
      if (v21 != 14 && v21)
      {
        v12 = -128;
        goto LABEL_54;
      }

      ++v17;
    }

    if ([v16 count])
    {
      [(VCPPhotosMaintenanceProcessingTask *)self _persistVideoEmbeddingBackfillForAssets:v16 photoLibrary:v4];
      v35 = &v35[[v16 count]];
    }

    v28 = +[NSDate now];
    [v28 timeIntervalSinceReferenceDate];
    v30 = v29;

    if (+[MADManagedKeyValueStore isMACDPersistEnabled])
    {
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10016DDB8;
      v37[3] = &unk_100282F90;
      v37[4] = v30;
      [v4 mad_performAnalysisDataStoreChanges:v37 error:0];
    }

    else
    {
      v31 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v4];
      [v31 setValue:v30 forKey:@"LastVideoEmbeddingVersionBackfillTimestamp"];
      [v31 commit];
    }

    if (MediaAnalysisLogLevel() >= 5)
    {
      v32 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v32))
      {
        *buf = 134217984;
        v40 = v35;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "[VideoEmbedding|Backfill] Completed backfill for total %lu assets", buf, 0xCu);
      }
    }

    v12 = 0;
LABEL_54:
  }

LABEL_22:
  return v12;
}

- (int)performForceClusterIfNeededWithPhotoLibrary:(id)a3
{
  v4 = a3;
  if (![(VCPPhotosMaintenanceProcessingTask *)self isCancelled])
  {
    v6 = [MADPhotosFullClusterProcessingTask taskWithPhotoLibrary:v4];
    [v6 setRequiresProgressQuery:1];
    [v6 setFullModeClusterOnly:1];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10016DF80;
    v11[3] = &unk_100283000;
    v11[4] = self;
    [v6 setCancelBlock:v11];
    if (v6)
    {
      [v6 process];
      if (MediaAnalysisLogLevel() < 5)
      {
        goto LABEL_11;
      }

      v7 = VCPLogToOSLogType[5];
      if (!os_log_type_enabled(&_os_log_default, v7))
      {
        goto LABEL_11;
      }

      *v10 = 0;
      v8 = "[FullCluster] Full-mode clustering with progress query completed";
    }

    else
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_11;
      }

      v7 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v7))
      {
        goto LABEL_11;
      }

      *v10 = 0;
      v8 = "[FullCluster] Failed to create MADPhotosFullClusterProcessingTask";
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v7, v8, v10, 2u);
LABEL_11:

    v5 = 0;
    goto LABEL_12;
  }

  v5 = -128;
LABEL_12:

  return v5;
}

- (int)_pruneProcessingStatusForPhotoLibrary:(id)a3
{
  v4 = a3;
  if ([(VCPPhotosMaintenanceProcessingTask *)self isCancelled])
  {
    v5 = -128;
    goto LABEL_26;
  }

  if (+[MADManagedProcessingStatus isMACDPersistEnabled])
  {
    if ([MADPhotosDataStoreClient needsDataStoreMigrationForPhotoLibrary:v4])
    {
      if (MediaAnalysisLogLevel() < 4)
      {
        goto LABEL_25;
      }

      v6 = VCPLogToOSLogType[4];
      if (!os_log_type_enabled(&_os_log_default, v6))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v7 = "[ProcessingStatusPruning][MACD] Database migration incomplete; skipping";
LABEL_24:
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, v7, buf, 2u);
LABEL_25:
      v5 = 0;
      goto LABEL_26;
    }

    if (MediaAnalysisLogLevel() >= 7)
    {
      v10 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        *buf = 67109632;
        v19 = 1;
        v20 = 1024;
        v21 = 0;
        v22 = 1024;
        v23 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[ProcessingStatusPruning][MACD] Removing processing status for taskID %d, mediaType %d, mediaSubtypes %d", buf, 0x14u);
      }
    }

    v17 = 0;
    v11 = [v4 mad_performAnalysisDataStoreChanges:&stru_1002877E0 error:&v17];
    v12 = v17;
    v13 = v12;
    if (v11)
    {

      goto LABEL_18;
    }

    v5 = [v12 code];
    if (MediaAnalysisLogLevel() >= 3)
    {
      v15 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v15))
      {
        *buf = 67109890;
        v19 = 1;
        v20 = 1024;
        v21 = 0;
        v22 = 1024;
        v23 = 0;
        v24 = 2112;
        v25 = v13;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[ProcessingStatusPruning][MACD] Failed to remove processing status for taskID %d, mediaType %d, mediaSubtypes %d: %@", buf, 0x1Eu);
      }
    }
  }

  else
  {
    if (![VCPDatabaseManager existsDatabaseForPhotoLibrary:v4])
    {
      if (MediaAnalysisLogLevel() < 4)
      {
        goto LABEL_25;
      }

      v6 = VCPLogToOSLogType[4];
      if (!os_log_type_enabled(&_os_log_default, v6))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v7 = "[ProcessingStatusPruning] MAD database does not exist; skipping";
      goto LABEL_24;
    }

    v8 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v4];
    v9 = [v8 removeProcessingStatusForTaskID:1 mediaType:0 mediaSubtypes:0];
    v5 = v9;
    if (v9 == -108 || v9 == -36 || v9 == -23)
    {

      goto LABEL_26;
    }

    v16 = [v8 commit];
    v5 = v16;
    if (v16 != -108 && v16 != -36 && v16 != -23)
    {

LABEL_18:
      if (MediaAnalysisLogLevel() < 5)
      {
        goto LABEL_25;
      }

      v6 = VCPLogToOSLogType[5];
      if (!os_log_type_enabled(&_os_log_default, v6))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v7 = "[ProcessingStatusPruning] Completed pruning";
      goto LABEL_24;
    }

    if (v5 != -108 && v5 != -36 && v5 != -23)
    {
      goto LABEL_18;
    }
  }

LABEL_26:

  return v5;
}

- (int)_removeImageEmbeddingFromMADBForPhotoLibrary:(id)a3
{
  v4 = a3;
  if (![(VCPPhotosMaintenanceProcessingTask *)self isCancelled])
  {
    v6 = [v4 vcp_description];
    v7 = [NSString stringWithFormat:@"[VCPPhotosMaintenanceProcessingTask][RemoveImageEmbedding][%@]", v6];

    if (+[MADManagedPhotosAsset isMACDPersistEnabled])
    {
      if ([MADPhotosDataStoreClient needsDataStoreMigrationForPhotoLibrary:v4])
      {
        if (MediaAnalysisLogLevel() < 4)
        {
          goto LABEL_27;
        }

        v8 = VCPLogToOSLogType[4];
        if (!os_log_type_enabled(&_os_log_default, v8))
        {
          goto LABEL_27;
        }

        *buf = 138412290;
        v23 = v7;
        v9 = "%@[MACD] Database migration incomplete; skipping";
        goto LABEL_26;
      }

      if (MediaAnalysisLogLevel() >= 6)
      {
        v10 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v10))
        {
          *buf = 138412290;
          v23 = v7;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "%@[MACD] Removing image embeddings from CoreData", buf, 0xCu);
        }
      }

      v21 = 0;
      v11 = [v4 mad_performAnalysisDataStoreChanges:&stru_100287800 error:&v21];
      v12 = v21;
      v13 = v12;
      if ((v11 & 1) == 0)
      {
        v5 = [v12 code];

        goto LABEL_28;
      }

      if (MediaAnalysisLogLevel() >= 5)
      {
        v14 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v14))
        {
          *buf = 138412290;
          v23 = v7;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "%@[MACD] Completed removing image embedding", buf, 0xCu);
        }
      }
    }

    if (!+[VCPDatabaseWriter isLegacyPersistEnabled])
    {
      goto LABEL_27;
    }

    if ([VCPDatabaseManager existsDatabaseForPhotoLibrary:v4])
    {
      v15 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v4];
      v16 = [v15 deleteAnalysisResultsWithType:73];
      v17 = v16;
      if (v16 == -108 || v16 == -36 || v16 == -23)
      {
        v5 = v16;
      }

      else
      {
        v19 = [v15 commit];
        if (v19 == -108 || v19 == -36)
        {
          v5 = v19;
        }

        else
        {
          v5 = v19;
          if (v19 != -23)
          {
            v5 = v17;
          }
        }

        if (v19 != -108 && v19 != -36 && v19 != -23)
        {
          if (MediaAnalysisLogLevel() >= 5)
          {
            v20 = VCPLogToOSLogType[5];
            if (os_log_type_enabled(&_os_log_default, v20))
            {
              *buf = 138412290;
              v23 = v7;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "%@ Completed removing image embedding", buf, 0xCu);
            }
          }

          goto LABEL_27;
        }
      }

LABEL_28:
      goto LABEL_29;
    }

    if (MediaAnalysisLogLevel() < 4 || (v8 = VCPLogToOSLogType[4], !os_log_type_enabled(&_os_log_default, v8)))
    {
LABEL_27:
      v5 = 0;
      goto LABEL_28;
    }

    *buf = 138412290;
    v23 = v7;
    v9 = "%@ MAD database does not exist; skipping";
LABEL_26:
    _os_log_impl(&_mh_execute_header, &_os_log_default, v8, v9, buf, 0xCu);
    goto LABEL_27;
  }

  v5 = -128;
LABEL_29:

  return v5;
}

- (int)run
{
  atomic_store(1u, &self->_started);
  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, a2, 0.0);
  }

  v115 = +[VCPMADCoreAnalyticsManager sharedManager];
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v3 = self->_photoLibraries;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v152 objects:v164 count:16];
  if (v4)
  {
    v5 = *v153;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v153 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v152 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        LODWORD(v9) = [(VCPPhotosMaintenanceProcessingTask *)self _pruneProcessingStatusForPhotoLibrary:v7];
        if (!v9)
        {
          MediaAnalysisDaemonReleaseSharedDataStores(v7);
        }

        objc_autoreleasePoolPop(v8);
        if (v9)
        {
          v96 = 0;
          v114 = 0;
          goto LABEL_166;
        }
      }

      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v152 objects:v164 count:16];
    }

    while (v4);
  }

  v10 = +[NSDate now];
  [v115 accumulateInt64Value:1 forField:@"ComputeSyncStart" andEvent:?];
  v114 = v10;
  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v11 = self->_photoLibraries;
  v9 = 0;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v148 objects:v163 count:16];
  if (v12)
  {
    v13 = *v149;
    type = VCPLogToOSLogType[5];
    v14 = &_os_log_default;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v149 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v16 = v14;
        v17 = *(*(&v148 + 1) + 8 * j);
        v18 = objc_autoreleasePoolPush();
        if ([(VCPPhotosMaintenanceProcessingTask *)self isCancelled])
        {
          v9 = 4294967168;
          v19 = 6;
        }

        else
        {
          v20 = [v17 vcp_description];
          v21 = [NSString stringWithFormat:@"[VCPPhotosMaintenanceProcessingTask][CS][%@]", v20];

          if ([v17 isCloudPhotoLibraryEnabled] && (objc_msgSend(v17, "isSystemPhotoLibrary") & 1) != 0)
          {
            [(VCPPhotosMaintenanceProcessingTask *)self _performComputeSyncBackfillForPhotoLibrary:v17];
            MediaAnalysisDaemonReleaseSharedDataStores(v17);
            v19 = 0;
          }

          else
          {
            if (MediaAnalysisLogLevel() >= 5)
            {
              v22 = v16;
              if (os_log_type_enabled(v16, type))
              {
                *buf = 138412290;
                v162 = v21;
                _os_log_impl(&_mh_execute_header, v16, type, "%@ Compute sync not supported for Photo Library; skipping backfill", buf, 0xCu);
              }
            }

            v19 = 8;
          }

          v14 = v16;
        }

        objc_autoreleasePoolPop(v18);
        if ((v19 | 8) != 8)
        {

          v96 = 0;
          v99 = 0;
          v100 = v114;
          v97 = v114;
          if (v19 == 6)
          {
            goto LABEL_168;
          }

          goto LABEL_174;
        }
      }

      v12 = [(NSArray *)v11 countByEnumeratingWithState:&v148 objects:v163 count:16];
    }

    while (v12);
  }

  [v114 timeIntervalSinceNow];
  [v115 accumulateDoubleValue:@"ComputeSyncDuration" forField:@"com.apple.mediaanalysisd.MaintenanceRunSession" andEvent:-v23];
  v24 = +[NSDate now];
  [v115 accumulateInt64Value:1 forField:@"VSKSyncStart" andEvent:@"com.apple.mediaanalysisd.MaintenanceRunSession"];
  v108 = v24;
  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  obj = self->_photoLibraries;
  v25 = [(NSArray *)obj countByEnumeratingWithState:&v144 objects:v160 count:16];
  if (v25)
  {
    *typea = *v145;
    v111 = VCPLogToOSLogType[5];
    do
    {
      for (k = 0; k != v25; k = k + 1)
      {
        if (*v145 != *typea)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v144 + 1) + 8 * k);
        v28 = objc_autoreleasePoolPush();
        if ([(VCPPhotosMaintenanceProcessingTask *)self isCancelled])
        {
          v9 = 4294967168;
          v29 = 6;
        }

        else
        {
          v30 = [v27 vcp_description];
          v31 = [NSString stringWithFormat:@"[VCPPhotosMaintenanceProcessingTask][VSKVideo][%@]", v30];

          if ([v27 isReadyForAnalysis])
          {
            v32 = mach_absolute_time();
            v33 = VCPSignPostLog();
            v34 = os_signpost_id_generate(v33);

            v35 = VCPSignPostLog();
            v36 = v35;
            if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, OS_SIGNPOST_INTERVAL_BEGIN, v34, "MADMaintenance_VideoEmbeddingVersionBackfill", "", buf, 2u);
            }

            [(VCPPhotosMaintenanceProcessingTask *)self _performVideoEmbeddingVersionBackfillForPhotoLibrary:v27];
            v37 = VCPSignPostLog();
            v38 = v37;
            if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_INTERVAL_END, v34, "MADMaintenance_VideoEmbeddingVersionBackfill", "", buf, 2u);
            }

            if (v32)
            {
              mach_absolute_time();
              VCPPerformance_LogMeasurement();
            }

            MediaAnalysisDaemonReleaseSharedDataStores(v27);
            v29 = 0;
          }

          else
          {
            if (MediaAnalysisLogLevel() >= 5)
            {
              v39 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, v111))
              {
                *buf = 138412290;
                v162 = v31;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v111, "%@ Photo Library is not ready for analysis; Skipping ...", buf, 0xCu);
              }
            }

            v29 = 14;
          }
        }

        objc_autoreleasePoolPop(v28);
        if (v29 != 14 && v29)
        {

          goto LABEL_182;
        }
      }

      v25 = [(NSArray *)obj countByEnumeratingWithState:&v144 objects:v160 count:16];
    }

    while (v25);
  }

  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v112 = self->_photoLibraries;
  v40 = [(NSArray *)v112 countByEnumeratingWithState:&v140 objects:v159 count:16];
  if (v40)
  {
    obja = *v141;
    v109 = VCPLogToOSLogType[5];
    v107 = VCPLogToOSLogType[4];
    v41 = &_os_log_default;
    do
    {
      v42 = 0;
      *typeb = v40;
      do
      {
        if (*v141 != obja)
        {
          objc_enumerationMutation(v112);
        }

        v43 = v41;
        v44 = *(*(&v140 + 1) + 8 * v42);
        v45 = objc_autoreleasePoolPush();
        if ([(VCPPhotosMaintenanceProcessingTask *)self isCancelled])
        {
          v9 = 4294967168;
          v46 = 6;
        }

        else
        {
          v47 = [v44 vcp_description];
          v48 = [NSString stringWithFormat:@"[VCPPhotosMaintenanceProcessingTask][VSK][%@]", v47];

          if ([v44 isReadyForAnalysis])
          {
            v49 = mach_absolute_time();
            v50 = VCPSignPostLog();
            v51 = os_signpost_id_generate(v50);

            v52 = VCPSignPostLog();
            v53 = v52;
            if (v51 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v53, OS_SIGNPOST_INTERVAL_BEGIN, v51, "MADVectorDatabaseUtilities_Sync", "", buf, 2u);
            }

            v139[0] = _NSConcreteStackBlock;
            v139[1] = 3221225472;
            v139[2] = sub_10016FC60;
            v139[3] = &unk_100283000;
            v139[4] = self;
            if ([MADVectorDatabaseUtilities syncWithPhotoLibrary:v44 ignoreExpiration:0 threshold:v139 cancelBlock:0.1]&& MediaAnalysisLogLevel() >= 4)
            {
              v54 = v43;
              if (os_log_type_enabled(v43, v107))
              {
                *buf = 138412290;
                v162 = v48;
                _os_log_impl(&_mh_execute_header, v43, v107, "%@ Failed to sync VSK database (non-fatal); Skipping", buf, 0xCu);
              }
            }

            v55 = VCPSignPostLog();
            v56 = v55;
            if (v51 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v55))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v56, OS_SIGNPOST_INTERVAL_END, v51, "MADVectorDatabaseUtilities_Sync", "", buf, 2u);
            }

            if (v49)
            {
              mach_absolute_time();
              VCPPerformance_LogMeasurement();
            }

            MediaAnalysisDaemonReleaseSharedDataStores(v44);
            v46 = 0;
          }

          else
          {
            if (MediaAnalysisLogLevel() >= 5)
            {
              v57 = v43;
              if (os_log_type_enabled(v43, v109))
              {
                *buf = 138412290;
                v162 = v48;
                _os_log_impl(&_mh_execute_header, v43, v109, "%@ Photo Library is not ready for analysis; Skipping ...", buf, 0xCu);
              }
            }

            v46 = 22;
          }

          v41 = v43;
        }

        objc_autoreleasePoolPop(v45);
        if (v46 != 22 && v46)
        {

          v96 = v108;
          v97 = v114;
          goto LABEL_168;
        }

        ++v42;
      }

      while (*typeb != v42);
      v40 = [(NSArray *)v112 countByEnumeratingWithState:&v140 objects:v159 count:16];
    }

    while (v40);
  }

  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v113 = self->_photoLibraries;
  v58 = [(NSArray *)v113 countByEnumeratingWithState:&v135 objects:v158 count:16];
  if (v58)
  {
    objb = *v136;
    v106 = VCPLogToOSLogType[4];
    v110 = VCPLogToOSLogType[7];
    do
    {
      v59 = 0;
      *typec = v58;
      do
      {
        if (*v136 != objb)
        {
          objc_enumerationMutation(v113);
        }

        v60 = *(*(&v135 + 1) + 8 * v59);
        v61 = objc_autoreleasePoolPush();
        if ([(VCPPhotosMaintenanceProcessingTask *)self isCancelled])
        {
          v9 = 4294967168;
          v29 = 6;
          goto LABEL_125;
        }

        v62 = [v60 vcp_description];
        v63 = [NSString stringWithFormat:@"[VCPPhotosMaintenanceProcessingTask][Cluster][%@]", v62];

        if ([v60 vcp_isSyndicationLibrary])
        {
          if (MediaAnalysisLogLevel() >= 7)
          {
            v64 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, v110))
            {
              *buf = 138412290;
              v162 = v63;
              v65 = v110;
              v66 = "%@ Syndication library; Skipping ...";
              goto LABEL_121;
            }

            goto LABEL_122;
          }
        }

        else if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
        {
          if (![MADPhotosDataStoreClient needsDataStoreMigrationForPhotoLibrary:v60])
          {
            goto LABEL_109;
          }

          if (MediaAnalysisLogLevel() >= 4)
          {
            v67 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, v106))
            {
              *buf = 138412290;
              v162 = v63;
              v65 = v106;
              v66 = "%@[MACD] MADB migration incomplete; Skipping ...";
              goto LABEL_121;
            }

            goto LABEL_122;
          }
        }

        else
        {
          if ([VCPDatabaseManager existsDatabaseForPhotoLibrary:v60])
          {
LABEL_109:
            v68 = mach_absolute_time();
            v69 = VCPSignPostLog();
            v70 = os_signpost_id_generate(v69);

            v71 = VCPSignPostLog();
            v72 = v71;
            if (v70 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v71))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v72, OS_SIGNPOST_INTERVAL_BEGIN, v70, "MADMaintenance_FullCluster", "", buf, 2u);
            }

            [(VCPPhotosMaintenanceProcessingTask *)self performForceClusterIfNeededWithPhotoLibrary:v60];
            v73 = VCPSignPostLog();
            v74 = v73;
            if (v70 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v73))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v74, OS_SIGNPOST_INTERVAL_END, v70, "MADMaintenance_FullCluster", "", buf, 2u);
            }

            if (v68)
            {
              mach_absolute_time();
              VCPPerformance_LogMeasurement();
            }

            MediaAnalysisDaemonReleaseSharedDataStores(v60);
            v29 = 0;
            goto LABEL_124;
          }

          if (MediaAnalysisLogLevel() >= 4)
          {
            v75 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, v106))
            {
              *buf = 138412290;
              v162 = v63;
              v65 = v106;
              v66 = "%@ MADB does not exist; Skipping ...";
LABEL_121:
              _os_log_impl(&_mh_execute_header, &_os_log_default, v65, v66, buf, 0xCu);
            }

LABEL_122:
          }
        }

        v29 = 32;
LABEL_124:

LABEL_125:
        objc_autoreleasePoolPop(v61);
        if ((v29 | 0x20) != 0x20)
        {

LABEL_182:
          v99 = v108;
          v96 = v108;
          v100 = v114;
          v97 = v114;
          if (v29 == 6)
          {
            goto LABEL_168;
          }

          goto LABEL_174;
        }

        ++v59;
      }

      while (*typec != v59);
      v58 = [(NSArray *)v113 countByEnumeratingWithState:&v135 objects:v158 count:16];
    }

    while (v58);
  }

  [v108 timeIntervalSinceNow];
  [v115 accumulateDoubleValue:@"VSKSyncDuration" forField:@"com.apple.mediaanalysisd.MaintenanceRunSession" andEvent:-v76];
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v3 = self->_photoLibraries;
  v77 = [(NSArray *)v3 countByEnumeratingWithState:&v131 objects:v157 count:16];
  if (v77)
  {
    v78 = *v132;
    do
    {
      for (m = 0; m != v77; m = m + 1)
      {
        if (*v132 != v78)
        {
          objc_enumerationMutation(v3);
        }

        v80 = *(*(&v131 + 1) + 8 * m);
        v81 = objc_autoreleasePoolPush();
        v82 = [(VCPPhotosMaintenanceProcessingTask *)self _removeImageEmbeddingFromMADBForPhotoLibrary:v80];
        if (!v82)
        {
          MediaAnalysisDaemonReleaseSharedDataStores(v80);
        }

        objc_autoreleasePoolPop(v81);
        if (v82)
        {
          v96 = v108;
          LODWORD(v9) = v82;
          goto LABEL_166;
        }
      }

      v77 = [(NSArray *)v3 countByEnumeratingWithState:&v131 objects:v157 count:16];
    }

    while (v77);
  }

  if (!+[MADManagedPhotosAsset isMACDPersistEnabled])
  {
    v96 = v108;
    goto LABEL_167;
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v83 = &_os_log_default;
    v84 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v84))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v84, "[VCPPhotosMaintenanceProcessingTask][MACD] pruning history...", buf, 2u);
    }
  }

  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v3 = self->_photoLibraries;
  v85 = [(NSArray *)v3 countByEnumeratingWithState:&v127 objects:v156 count:16];
  if (!v85)
  {
    goto LABEL_164;
  }

  *typed = *v128;
  v86 = VCPLogToOSLogType[4];
  while (2)
  {
    for (n = 0; n != v85; n = n + 1)
    {
      if (*v128 != *typed)
      {
        objc_enumerationMutation(v3);
      }

      v88 = *(*(&v127 + 1) + 8 * n);
      v89 = objc_autoreleasePoolPush();
      if ([MADPhotosDataStoreClient needsDataStoreMigrationForPhotoLibrary:v88])
      {
        if (MediaAnalysisLogLevel() < 4)
        {
          v91 = 50;
          goto LABEL_160;
        }

        v90 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, v86))
        {
          *buf = 138412290;
          v162 = @"[VCPPhotosMaintenanceProcessingTask][PruneHistory][MACD]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, v86, "%@ Database migration incomplete; skipping", buf, 0xCu);
        }

        v91 = 50;
        v92 = &_os_log_default;
      }

      else
      {
        v125 = 0;
        v126[0] = _NSConcreteStackBlock;
        v126[1] = 3221225472;
        v126[2] = sub_10016FC68;
        v126[3] = &unk_100283AD0;
        v126[4] = self;
        v93 = [v88 mad_performAnalysisDataStoreChanges:v126 error:&v125];
        v94 = v125;
        v92 = v94;
        if ((v93 & 1) != 0 || (v95 = [v94 code], !v95))
        {
          MediaAnalysisDaemonReleaseSharedDataStores(v88);
          v91 = 0;
          v95 = v9;
        }

        else
        {
          v91 = 6;
        }

        v9 = v95;
      }

LABEL_160:
      objc_autoreleasePoolPop(v89);
      if (v91 != 50 && v91)
      {

        v96 = v108;
        v97 = v114;
        goto LABEL_168;
      }
    }

    v85 = [(NSArray *)v3 countByEnumeratingWithState:&v127 objects:v156 count:16];
    if (v85)
    {
      continue;
    }

    break;
  }

LABEL_164:
  v96 = v108;
LABEL_166:

LABEL_167:
  v97 = v114;
LABEL_168:
  if (v9 != -128 && v9 != 0)
  {
    v103 = MediaAnalysisLogLevel();
    if (v103 >= 3)
    {
      v104 = &_os_log_default;
      v105 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v105))
      {
        *buf = 67109120;
        LODWORD(v162) = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v105, "[VCPPhotosMaintenanceProcessingTask] Failed during processing (%d)", buf, 8u);
      }
    }
  }

  VCPPerformance_ReportSummary();
  (*(self->_completionHandler + 2))();
  v99 = v96;
  v100 = v97;
LABEL_174:
  v101 = v100;

  return v9;
}

@end