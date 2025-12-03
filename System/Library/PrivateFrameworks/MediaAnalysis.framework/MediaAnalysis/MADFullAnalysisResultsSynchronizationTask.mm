@interface MADFullAnalysisResultsSynchronizationTask
+ (id)taskWithPhotoLibrary:(id)library;
- (MADFullAnalysisResultsSynchronizationTask)initWithPhotoLibrary:(id)library;
- (int)mainInternal;
- (int)synchronizePhotosDatabaseForProcessedAssets;
- (int)synchronizePhotosDatabaseForProcessedAssetsWithImageOnly:(BOOL)only;
- (unint64_t)versionResetOptionsForTaskID:(unint64_t)d;
- (void)resetAnalysisVersionForMediaProcessingTaskID:(unint64_t)d assetIdentifiers:(id)identifiers;
@end

@implementation MADFullAnalysisResultsSynchronizationTask

- (MADFullAnalysisResultsSynchronizationTask)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v15.receiver = self;
  v15.super_class = MADFullAnalysisResultsSynchronizationTask;
  v5 = [(VCPTask *)&v15 initWithPhotoLibrary:libraryCopy];
  v6 = v5;
  if (v5)
  {
    v5->_status = 0;
    v7 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:libraryCopy];
    analysisDatabase = v6->_analysisDatabase;
    v6->_analysisDatabase = v7;

    v9 = dispatch_group_create();
    dispatchGroup = v6->_dispatchGroup;
    v6->_dispatchGroup = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.mediaanalysisd.FullAnalysisSyncTask", v11);
    dispatchQueue = v6->_dispatchQueue;
    v6->_dispatchQueue = v12;
  }

  return v6;
}

+ (id)taskWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v4 = [objc_alloc(objc_opt_class()) initWithPhotoLibrary:libraryCopy];

  return v4;
}

- (unint64_t)versionResetOptionsForTaskID:(unint64_t)d
{
  if (d == 17)
  {
    return 4097;
  }

  dCopy = d;
  if (d == 1)
  {
    return 10241;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v5 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v6[0] = 67109120;
      v6[1] = dCopy;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "Unexpected taskID (%d), using PHMediaProcessingResetOption_Version option only", v6, 8u);
    }
  }

  return 1;
}

- (void)resetAnalysisVersionForMediaProcessingTaskID:(unint64_t)d assetIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (MediaAnalysisLogLevel() >= 7)
  {
    v7 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      v8 = objc_opt_class();
      *buf = 138412546;
      v30 = v8;
      v31 = 2048;
      dCopy = [identifiersCopy count];
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[%@] Resetting analysis version for %lu assets", buf, 0x16u);
    }
  }

  if (!self->_status)
  {
    cancel = [(VCPTask *)self cancel];
    if (cancel && ([(VCPTask *)self cancel], v10 = objc_claimAutoreleasedReturnValue(), v11 = v10[2](), v10, cancel, v11))
    {
      self->_status = -128;
    }

    else
    {
      v27 = mach_absolute_time();
      v12 = VCPSignPostLog();
      v13 = os_signpost_id_generate(v12);

      v14 = VCPSignPostLog();
      v15 = v14;
      if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "MADFullAnalysisResultsSynchronizationTask_ResetAnalysisVersion", "", buf, 2u);
      }

      v16 = +[VCPWatchdog sharedWatchdog];
      [v16 pet];

      v17 = +[MADStateHandler sharedStateHandler];
      [v17 addBreadcrumb:{@"[%@] Resetting MediaAnalysis version for %lu assets in Photos DB", objc_opt_class(), objc_msgSend(identifiersCopy, "count")}];

      photoLibrary = [(VCPTask *)self photoLibrary];
      v28 = 0;
      v19 = [photoLibrary resetStateForMediaProcessingTaskID:d assetIdentifiers:identifiersCopy resetOptions:-[MADFullAnalysisResultsSynchronizationTask versionResetOptionsForTaskID:](self error:{"versionResetOptionsForTaskID:", d), &v28}];
      v20 = v28;

      v21 = +[MADStateHandler sharedStateHandler];
      [v21 addBreadcrumb:{@"[%@] Finished resetting MediaAnalysis version for %lu assets in Photos DB", objc_opt_class(), objc_msgSend(identifiersCopy, "count")}];

      if ((v19 & 1) == 0)
      {
        self->_status = -18;
        if (MediaAnalysisLogLevel() >= 3)
        {
          v22 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v22))
          {
            v23 = objc_opt_class();
            *buf = 138412802;
            v30 = v23;
            v31 = 2048;
            dCopy = d;
            v33 = 2112;
            v34 = v20;
            v24 = v23;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[%@] Failed to reset analysis version for assets with PHMediaProcessingTaskID %lu, error: %@", buf, 0x20u);
          }
        }
      }

      v25 = VCPSignPostLog();
      v26 = v25;
      if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_INTERVAL_END, v13, "MADFullAnalysisResultsSynchronizationTask_ResetAnalysisVersion", "", buf, 2u);
      }

      if (v27)
      {
        mach_absolute_time();
        VCPPerformance_LogMeasurement();
      }
    }
  }
}

- (int)synchronizePhotosDatabaseForProcessedAssetsWithImageOnly:(BOOL)only
{
  onlyCopy = only;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v4 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      *buf = 138412546;
      v85 = objc_opt_class();
      v86 = 1024;
      LODWORD(v87) = onlyCopy;
      v5 = v85;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[%@] Start synchronizing photos database for processed assets, imageOnly %d", buf, 0x12u);
    }
  }

  v71 = mach_absolute_time();
  v6 = VCPSignPostLog();
  spid = os_signpost_id_generate(v6);

  v7 = VCPSignPostLog();
  v8 = v7;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, spid, "MADFullAnalysisResultsSynchronizationTask_SynchronizePhotosDatabase", "", buf, 2u);
  }

  context = objc_autoreleasePoolPush();
  v9 = 17;
  if (!onlyCopy)
  {
    v9 = 1;
  }

  v74 = v9;
  photoLibrary = [(VCPTask *)self photoLibrary];
  v72 = [PHMediaProcessingAlgorithmVersionProvider mad_sharedVersionProviderWithPhotoLibrary:photoLibrary];

  [PHAsset mad_sceneConfidenceThresholdForTask:1];
  v12 = v11;
  v13 = +[VCPWatchdog sharedWatchdog];
  [v13 pet];

  cancel = [(VCPTask *)self cancel];
  if (cancel)
  {
    cancel2 = [(VCPTask *)self cancel];
    v16 = cancel2[2]();

    if (v16)
    {
      status = -128;
      goto LABEL_64;
    }
  }

  v17 = mach_absolute_time();
  v18 = VCPSignPostLog();
  v19 = os_signpost_id_generate(v18);

  v20 = VCPSignPostLog();
  v21 = v20;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "MADFullAnalysisResultsSynchronizationTask_FetchProcessedAssets", "", buf, 2u);
  }

  v22 = +[MADStateHandler sharedStateHandler];
  [v22 addBreadcrumb:{@"[%@] Fetching processed assets from Photos DB", objc_opt_class()}];

  photoLibrary2 = [(VCPTask *)self photoLibrary];
  v83 = 0;
  LODWORD(v24) = v12;
  v25 = [photoLibrary2 fetchProcessedAssetsForMediaProcessingTaskID:v74 priority:0 algorithmVersion:v72 sceneConfidenceThreshold:&v83 error:v24];
  v69 = v83;

  v26 = +[MADStateHandler sharedStateHandler];
  [v26 addBreadcrumb:{@"[%@] Fetched %lu processed assets from Photos DB", objc_opt_class(), objc_msgSend(v25, "count")}];

  v27 = VCPSignPostLog();
  v28 = v27;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_END, v19, "MADFullAnalysisResultsSynchronizationTask_FetchProcessedAssets", "", buf, 2u);
  }

  if (v17)
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

  if (v69)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v29 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v29))
      {
        v30 = objc_opt_class();
        *buf = 138412546;
        v85 = v30;
        v86 = 2112;
        v87 = v69;
        v31 = v30;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v29, "[%@] Failed to fetch processed assets from Photo Library, error %@", buf, 0x16u);
      }
    }

    status = -18;
    goto LABEL_63;
  }

  if (+[MADManagedPhotosAsset isMACDReadEnabled])
  {
    photoLibrary3 = [(VCPTask *)self photoLibrary];
    mad_fetchRequest = [photoLibrary3 mad_fetchRequest];
  }

  else
  {
    mad_fetchRequest = 0;
  }

  v33 = 0;
  v34 = 0;
  status = 0;
  type = VCPLogToOSLogType[3];
  while (v33 < [v25 count])
  {
    v35 = objc_autoreleasePoolPush();
    v36 = +[VCPWatchdog sharedWatchdog];
    [v36 pet];

    cancel3 = [(VCPTask *)self cancel];
    if (!cancel3 || ([(VCPTask *)self cancel], v38 = objc_claimAutoreleasedReturnValue(), v39 = v38[2](), v38, cancel3, (v39 & 1) == 0))
    {
      v41 = [v25 objectAtIndexedSubscript:v33];
      mediaAnalysisProperties = [v41 mediaAnalysisProperties];

      if (mediaAnalysisProperties && ([v25 objectAtIndexedSubscript:v33], v43 = objc_claimAutoreleasedReturnValue(), v44 = +[PHPhotoLibrary additionalCheckForProcessingNeededForAsset:taskID:priority:](PHPhotoLibrary, "additionalCheckForProcessingNeededForAsset:taskID:priority:", v43, v74, 0), v43, (v44 & 1) != 0))
      {
        if (!v34)
        {
          v34 = objc_alloc_init(NSMutableArray);
        }

        if (onlyCopy)
        {
          mediaAnalysisImageVersion = [mediaAnalysisProperties mediaAnalysisImageVersion];
        }

        else
        {
          mediaAnalysisImageVersion = [mediaAnalysisProperties mediaAnalysisVersion];
        }

        v46 = [v25 objectAtIndexedSubscript:v33];
        localIdentifier = [v46 localIdentifier];

        if (+[MADManagedPhotosAsset isMACDReadEnabled])
        {
          v48 = [mad_fetchRequest fetchAnalysisWithLocalIdentifier:localIdentifier predicate:0];
          vcp_version = [v48 vcp_version];
          goto LABEL_49;
        }

        analysisDatabase = self->_analysisDatabase;
        v82 = 0;
        v51 = [(VCPDatabaseWriter *)analysisDatabase queryAssetWithLocalIdentifier:localIdentifier forMediaAnalysisVersion:&v82];
        v52 = v82;
        v48 = v52;
        if (v51)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
          {
            v53 = objc_opt_class();
            *buf = 138412546;
            v85 = v53;
            v86 = 2112;
            v87 = localIdentifier;
            v54 = v53;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@][%@] Failed to query mediaanalysis version", buf, 0x16u);
          }

          v40 = 6;
        }

        else
        {
          vcp_version = [v52 intValue];
LABEL_49:
          v55 = vcp_version;

          if (mediaAnalysisImageVersion > v55)
          {
            [v34 addObject:localIdentifier];
          }

          if ([v34 count] < 0x64)
          {
            v40 = 0;
          }

          else
          {
            dispatchGroup = self->_dispatchGroup;
            dispatchQueue = self->_dispatchQueue;
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1000A4948;
            block[3] = &unk_100285450;
            v80 = v34;
            v81 = v74;
            block[4] = self;
            dispatch_group_async(dispatchGroup, dispatchQueue, block);

            v40 = 0;
            v34 = 0;
          }

          v51 = status;
        }

        status = v51;
      }

      else
      {
        v40 = 15;
      }

      goto LABEL_57;
    }

    status = -128;
    v40 = 6;
LABEL_57:
    objc_autoreleasePoolPop(v35);
    if (v40 != 15 && v40)
    {

      objc_autoreleasePoolPop(context);
      goto LABEL_65;
    }

    ++v33;
  }

  if ([v34 count])
  {
    v58 = self->_dispatchGroup;
    v59 = self->_dispatchQueue;
    v76[0] = _NSConcreteStackBlock;
    v76[1] = 3221225472;
    v76[2] = sub_1000A4958;
    v76[3] = &unk_100285450;
    v77 = v34;
    v78 = v74;
    v76[4] = self;
    dispatch_group_async(v58, v59, v76);

    v34 = 0;
  }

  v69 = v72;
  v72 = v34;
LABEL_63:

LABEL_64:
  objc_autoreleasePoolPop(context);
LABEL_65:
  dispatch_group_wait(self->_dispatchGroup, 0xFFFFFFFFFFFFFFFFLL);
  if (!status)
  {
    status = self->_status;
  }

  v60 = VCPSignPostLog();
  v61 = v60;
  if (spid - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v60))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v61, OS_SIGNPOST_INTERVAL_END, spid, "MADFullAnalysisResultsSynchronizationTask_SynchronizePhotosDatabase", "", buf, 2u);
  }

  if (v71)
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v62 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v62))
    {
      v63 = objc_opt_class();
      *buf = 138412290;
      v85 = v63;
      v64 = v63;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v62, "[%@] Finish synchronizing photos database for processed asstes", buf, 0xCu);
    }
  }

  return status;
}

- (int)synchronizePhotosDatabaseForProcessedAssets
{
  v3 = VCPPhotosDatabaseSyncTimestampKeyForTask();
  if (+[MADManagedKeyValueStore isMACDReadEnabled])
  {
    photoLibrary = [(VCPTask *)self photoLibrary];
    mad_fetchRequest = [photoLibrary mad_fetchRequest];
    v6 = [mad_fetchRequest dataStoreValueForKey:v3];
  }

  else
  {
    v6 = [(VCPDatabaseWriter *)self->_analysisDatabase valueForKey:v3];
  }

  if (v6)
  {
    v7 = [NSDate dateWithTimeIntervalSinceReferenceDate:v6];
    if (MediaAnalysisLogLevel() >= 6)
    {
      v8 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        v9 = objc_opt_class();
        v10 = [v7 description];
        *buf = 138412546;
        v25 = v9;
        v26 = 2112;
        v27 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[%@] Last Photos database synchronization for processed assets conducted on %@", buf, 0x16u);
      }
    }

    goto LABEL_9;
  }

  v12 = +[NSDate now];
  [v12 timeIntervalSinceReferenceDate];
  v14 = v13;

  code = [(MADFullAnalysisResultsSynchronizationTask *)self synchronizePhotosDatabaseForProcessedAssetsWithImageOnly:1];
  if (!code)
  {
    code = [(MADFullAnalysisResultsSynchronizationTask *)self synchronizePhotosDatabaseForProcessedAssetsWithImageOnly:0];
    if (!code)
    {
      if (+[MADManagedKeyValueStore isMACDPersistEnabled])
      {
        photoLibrary2 = [(VCPTask *)self photoLibrary];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_1000A4D10;
        v21[3] = &unk_100285478;
        v23 = v14;
        v22 = v3;
        v20 = 0;
        v17 = [photoLibrary2 mad_performAnalysisDataStoreChanges:v21 error:&v20];
        v18 = v20;

        if (!v17)
        {
          code = [v18 code];

          goto LABEL_12;
        }

        goto LABEL_9;
      }

      code = [(VCPDatabaseWriter *)self->_analysisDatabase setValue:v14 forKey:v3];
      if (!code)
      {
        commit = [(VCPDatabaseWriter *)self->_analysisDatabase commit];
        if (commit == -108 || commit == -36)
        {
          code = commit;
        }

        else
        {
          code = commit;
          if (commit != -23)
          {
            code = 0;
          }
        }

        if (commit != -108 && commit != -23 && commit != -36)
        {
LABEL_9:
          code = 0;
        }
      }
    }
  }

LABEL_12:

  return code;
}

- (int)mainInternal
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v3 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      *v10 = 138412290;
      *&v10[4] = objc_opt_class();
      v4 = *&v10[4];
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[%@] Synchronizing MediaAnalysis database with Photos database...", v10, 0xCu);
    }
  }

  synchronizePhotosDatabaseForProcessedAssets = [(MADFullAnalysisResultsSynchronizationTask *)self synchronizePhotosDatabaseForProcessedAssets];
  if (!synchronizePhotosDatabaseForProcessedAssets && MediaAnalysisLogLevel() >= 6)
  {
    v6 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      v7 = objc_opt_class();
      *v10 = 138412290;
      *&v10[4] = v7;
      v8 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[%@] Finished synchronizing MediaAnalysis database with Photos database.", v10, 0xCu);
    }
  }

  return synchronizePhotosDatabaseForProcessedAssets;
}

@end