@interface MADPhotosTelemetryProcessingTask
+ (id)taskWithPhotoLibraries:(id)a3 andProgressHandler:(id)a4 andCompletionHandler:(id)a5 andCancelBlock:(id)a6;
+ (void)updateProgressForPhotoLibrary:(id)a3 cancelBlock:(id)a4;
- (BOOL)isCancelled;
- (MADPhotosTelemetryProcessingTask)initWithPhotoLibraries:(id)a3 andProgressHandler:(id)a4 andCompletionHandler:(id)a5 andCancelBlock:(id)a6;
- (int)_collectAndReportAnalysisProgress;
- (int)_run;
- (int)run;
- (void)dealloc;
- (void)resetBackoff;
@end

@implementation MADPhotosTelemetryProcessingTask

- (MADPhotosTelemetryProcessingTask)initWithPhotoLibraries:(id)a3 andProgressHandler:(id)a4 andCompletionHandler:(id)a5 andCancelBlock:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v26.receiver = self;
  v26.super_class = MADPhotosTelemetryProcessingTask;
  v15 = [(MADPhotosTelemetryProcessingTask *)&v26 init];
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
      v19 = &stru_100284260;
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
      v22 = &stru_100284280;
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
  v4.super_class = MADPhotosTelemetryProcessingTask;
  [(MADPhotosTelemetryProcessingTask *)&v4 dealloc];
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

- (void)resetBackoff
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = self->_photoLibraries;
  v2 = [(NSArray *)obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v2)
  {
    v3 = *v15;
    v12 = VCPKeyValueLastPerLibraryBiomeReportStartTimestamp;
    v4 = VCPKeyValueLastPerLibraryBiomeReportEndTimestamp;
    v5 = VCPKeyValueLastPerAssetBiomeReportStartTimestamp;
    v6 = VCPKeyValueLastPerAssetBiomeReportEndTimestamp;
    v7 = VCPKeyValueLastPerAssetBiomeReportBucket;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        if (+[MADManagedKeyValueStore isMACDPersistEnabled])
        {
          [v9 mad_performAnalysisDataStoreChanges:&stru_1002842A0 error:0];
        }

        else
        {
          v11 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v9];
          [v11 removeKey:v12];
          [v11 removeKey:v4];
          [v11 removeKey:v5];
          [v11 removeKey:v6];
          [v11 removeKey:v7];
          [v11 commit];
        }

        objc_autoreleasePoolPop(v10);
        v8 = v8 + 1;
      }

      while (v2 != v8);
      v2 = [(NSArray *)obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v2);
  }
}

+ (void)updateProgressForPhotoLibrary:(id)a3 cancelBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v5];
  if ([v5 isSystemPhotoLibrary])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [&off_100296098 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = *v20;
      type = VCPLogToOSLogType[5];
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(&off_100296098);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        if (v6 && v6[2](v6))
        {
          if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "Progress update canceled", buf, 2u);
          }

          v13 = 0;
        }

        else
        {
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_1000584E0;
          v16[3] = &unk_1002842C8;
          v17 = v6;
          v14 = objc_retainBlock(v16);
          +[MADProgressManager updateProgressForTask:photoLibrary:reuseCachedValue:cancelOrExtendTimeoutBlock:](MADProgressManager, "updateProgressForTask:photoLibrary:reuseCachedValue:cancelOrExtendTimeoutBlock:", [v11 intValue], v5, 1, v14);

          v13 = 1;
        }

        objc_autoreleasePoolPop(v12);
        if (!v13)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [&off_100296098 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    if (+[VCPDatabaseWriter isLegacyPersistEnabled])
    {
      [v7 commit];
    }
  }
}

- (int)_collectAndReportAnalysisProgress
{
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = self->_photoLibraries;
  PerAssetBucketDataToBiome = 0;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v56 objects:v62 count:16];
  if (v5)
  {
    v6 = *v57;
    type = VCPLogToOSLogType[6];
    v47 = VCPLogToOSLogType[4];
    v46 = VCPLogToOSLogType[5];
    v45 = VCPLogToOSLogType[3];
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v57 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v56 + 1) + 8 * v7);
      v9 = objc_autoreleasePoolPush();
      if ([(MADPhotosTelemetryProcessingTask *)self isCancelled])
      {
LABEL_7:
        v2 = -128;
        v10 = 1;
        goto LABEL_36;
      }

      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
      {
        v11 = [v8 photoLibraryURL];
        v12 = [v11 path];
        *buf = 138412290;
        *v61 = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "Reporting analysis progress for PHPhotoLibrary (%@) ... ", buf, 0xCu);
      }

      if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
      {
        if ([MADPhotosDataStoreClient needsDataStoreMigrationForPhotoLibrary:v8])
        {
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v47))
          {
            *buf = 0;
            v13 = v47;
            v14 = "[MACD] MAD database migration incomplete, skip progress reporting and data collection";
            goto LABEL_34;
          }

          goto LABEL_35;
        }
      }

      else if (![VCPDatabaseManager existsDatabaseForPhotoLibrary:v8])
      {
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v47))
        {
          *buf = 0;
          v13 = v47;
          v14 = "MAD database does not exist, skip progress reporting and data collection";
LABEL_34:
          _os_log_impl(&_mh_execute_header, &_os_log_default, v13, v14, buf, 2u);
        }

LABEL_35:
        v10 = 3;
        goto LABEL_36;
      }

      v15 = objc_opt_class();
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_100059070;
      v55[3] = &unk_100283000;
      v55[4] = self;
      [v15 updateProgressForPhotoLibrary:v8 cancelBlock:v55];
      if ([(MADPhotosTelemetryProcessingTask *)self isCancelled])
      {
        goto LABEL_7;
      }

      if ([v8 isSystemPhotoLibrary])
      {
        v54[0] = _NSConcreteStackBlock;
        v54[1] = 3221225472;
        v54[2] = sub_1000590CC;
        v54[3] = &unk_100283000;
        v54[4] = self;
        PerAssetBucketDataToBiome = VCPCoreAnalyticsReportEventBackgroundDailyReport(v54, v8);
        if (PerAssetBucketDataToBiome)
        {
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v47))
          {
            v16 = [v8 photoLibraryURL];
            v17 = [v16 path];
            *buf = 67109378;
            *v61 = PerAssetBucketDataToBiome;
            *&v61[4] = 2112;
            *&v61[6] = v17;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v47, "Error(%d) during daily reporting for lib %@", buf, 0x12u);
          }

          v10 = 2;
          goto LABEL_36;
        }
      }

      if ([(MADPhotosTelemetryProcessingTask *)self isCancelled])
      {
        goto LABEL_7;
      }

      v18 = [VCPDataCollectionTask taskWithPhotoLibrary:v8];
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_100059128;
      v53[3] = &unk_100283000;
      v53[4] = self;
      [v18 setCancel:v53];
      [v18 start];
      if ([v18 error] == -128)
      {
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
        {
          v19 = [v8 photoLibraryURL];
          v20 = [v19 path];
          *buf = 138412290;
          *v61 = v20;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "Cancelled progress report for %@", buf, 0xCu);
        }

        PerAssetBucketDataToBiome = -128;
        v10 = 2;
        goto LABEL_66;
      }

      if ([v18 error])
      {
        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v46))
        {
          v43 = [v18 error];
          v21 = [v8 photoLibraryURL];
          v22 = [v21 path];
          *buf = 67109378;
          *v61 = v43;
          *&v61[4] = 2112;
          *&v61[6] = v22;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v46, "Error(%d) during progress report for %@", buf, 0x12u);
        }

        PerAssetBucketDataToBiome = -18;
      }

      if (![(MADPhotosTelemetryProcessingTask *)self isCancelled])
      {
        if (([v8 vcp_isSyndicationLibrary] & 1) == 0)
        {
          v44 = [v8 vcp_visionCacheStorageDirectoryURL];
          v23 = [VUWGallery alloc];
          v52 = 0;
          v24 = [v23 initWithClient:0 path:v44 error:&v52];
          v41 = v52;
          v42 = v24;
          if (v24)
          {
            context = objc_autoreleasePoolPush();
            if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
            {
              *buf = 138412290;
              *v61 = v8;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "Reporting gallery metrics for library %@", buf, 0xCu);
            }

            v40 = mach_absolute_time();
            v25 = VCPSignPostLog();
            spid = os_signpost_id_generate(v25);

            v26 = VCPSignPostLog();
            v27 = v26;
            if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              log = v26;
              v28 = os_signpost_enabled(v26);
              v27 = log;
              if (v28)
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, log, OS_SIGNPOST_INTERVAL_BEGIN, spid, "MADReportVUGalleryMetric", "", buf, 2u);
                v27 = log;
              }
            }

            [v42 reportMetrics];
            v29 = VCPSignPostLog();
            v30 = v29;
            if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v31 = v29;
              v32 = os_signpost_enabled(v29);
              v30 = v31;
              if (v32)
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, OS_SIGNPOST_INTERVAL_END, spid, "MADReportVUGalleryMetric", "", buf, 2u);
                v30 = v31;
              }
            }

            if (v40)
            {
              mach_absolute_time();
              VCPPerformance_LogMeasurement();
            }

            objc_autoreleasePoolPop(context);
          }

          else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v45))
          {
            *buf = 138412290;
            *v61 = v41;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v45, "Failed to load Gallery - %@", buf, 0xCu);
          }
        }

        MediaAnalysisDaemonReleaseSharedDataStores(v8);
        if (![(MADPhotosTelemetryProcessingTask *)self isCancelled])
        {
          break;
        }
      }

      v2 = -128;
      v10 = 1;
LABEL_66:

LABEL_36:
      objc_autoreleasePoolPop(v9);
      if (v10 != 3 && v10)
      {

        if (v10 != 2)
        {
          return v2;
        }

        return PerAssetBucketDataToBiome;
      }

      if (v5 == ++v7)
      {
        v35 = [(NSArray *)obj countByEnumeratingWithState:&v56 objects:v62 count:16];
        v5 = v35;
        if (v35)
        {
          goto LABEL_3;
        }

        goto LABEL_80;
      }
    }

    if (![v8 isSystemPhotoLibrary])
    {
      goto LABEL_78;
    }

    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100059130;
    v51[3] = &unk_100283000;
    v51[4] = self;
    PerAssetBucketDataToBiome = MADBMReportPerLibraryDataToBiome(v8, v51);
    if (PerAssetBucketDataToBiome)
    {
      if (MediaAnalysisLogLevel() < 4 || !os_log_type_enabled(&_os_log_default, v47))
      {
        goto LABEL_77;
      }

      *buf = 67109120;
      *v61 = PerAssetBucketDataToBiome;
      v33 = v47;
      v34 = "Biome per-library report failed with error %d";
    }

    else
    {
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_100059138;
      v50[3] = &unk_100283000;
      v50[4] = self;
      PerAssetBucketDataToBiome = MADBMReportNextPerAssetBucketDataToBiome(v8, v50);
      if (!PerAssetBucketDataToBiome)
      {
LABEL_78:
        v10 = 0;
        goto LABEL_66;
      }

      if (MediaAnalysisLogLevel() < 4 || !os_log_type_enabled(&_os_log_default, v47))
      {
        goto LABEL_77;
      }

      *buf = 67109120;
      *v61 = PerAssetBucketDataToBiome;
      v33 = v47;
      v34 = "Biome per-asset bucket report failed with error %d";
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v33, v34, buf, 8u);
LABEL_77:
    v10 = 1;
    v2 = PerAssetBucketDataToBiome;
    goto LABEL_66;
  }

LABEL_80:

  return PerAssetBucketDataToBiome;
}

- (int)_run
{
  v3 = +[NSDate now];
  v4 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v4 accumulateInt64Value:1 forField:@"ProgressCheckStart" andEvent:@"com.apple.mediaanalysisd.TelemetryRunSession"];
  v5 = [(MADPhotosTelemetryProcessingTask *)self _collectAndReportAnalysisProgress];
  if (!v5)
  {
    [v3 timeIntervalSinceNow];
    [v4 accumulateDoubleValue:@"ProgressCheckDuration" forField:@"com.apple.mediaanalysisd.TelemetryRunSession" andEvent:-v6];
  }

  return v5;
}

- (int)run
{
  atomic_store(1u, &self->_started);
  v3 = [(MADPhotosTelemetryProcessingTask *)self _run];
  v4 = v3;
  if (v3 != -128)
  {
    if (v3)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v5 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v5))
        {
          v7[0] = 67109120;
          v7[1] = v4;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[Photos][Telemetry][SPL] Failed during processing (%d)", v7, 8u);
        }
      }
    }
  }

  (*(self->_completionHandler + 2))();
  return v4;
}

@end