@interface MADPhotosFullClusterProcessingTask
+ (id)taskWithPhotoLibrary:(id)a3;
- (MADPhotosFullClusterProcessingTask)initWithPhotoLibrary:(id)a3;
- (int64_t)databaseValueForKey:(id)a3;
- (unint64_t)queryMediaAnalysisImagePriority1ProgressPercentage;
- (void)cacheMediaAnalysisImagePriority1Progress;
- (void)process;
- (void)signalPhotosFeatureAvailabilityChangesWithVUWGallery:(id)a3;
@end

@implementation MADPhotosFullClusterProcessingTask

- (MADPhotosFullClusterProcessingTask)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MADPhotosFullClusterProcessingTask;
  v6 = [(MADProcessingTask *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, a3);
    v8 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v7->_photoLibrary];
    database = v7->_database;
    v7->_database = v8;
  }

  return v7;
}

+ (id)taskWithPhotoLibrary:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithPhotoLibrary:v4];

  return v5;
}

- (unint64_t)queryMediaAnalysisImagePriority1ProgressPercentage
{
  v3 = VCPSignPostPersistentLog();
  v4 = os_signpost_id_generate(v3);

  v5 = VCPSignPostPersistentLog();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MADPhotosFullClusterProcessingTask_QueryProgress", " enableTelemetry=YES ", buf, 2u);
  }

  v22 = -1;
  v23 = 0;
  photoLibrary = self->_photoLibrary;
  v21 = 0;
  v8 = [(PHPhotoLibrary *)photoLibrary mad_calculateProgressPercentage:&v23 totalAssetCount:&v22 progressPercentageWithFailure:0 taskID:1 phTaskID:17 priority:1 failedAssetCount:0 error:&v21];
  v9 = v21;
  if (v8)
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v10 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        *buf = 67109120;
        LODWORD(v25) = v23;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[FullCluster] Full analysis image priority 1 progress: %u", buf, 8u);
      }
    }

    if (+[MADManagedKeyValueStore isMACDPersistEnabled])
    {
      v11 = self->_photoLibrary;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1001B8E3C;
      v20[3] = &unk_100285E20;
      v20[4] = v23;
      v20[5] = v22;
      [(PHPhotoLibrary *)v11 mad_performAnalysisDataStoreChanges:v20 error:0];
    }

    else
    {
      [(VCPDatabaseWriter *)self->_database setValue:v23 forKey:VCPKeyValueMediaAnalysisImagePriority1ProgressPercentage];
      [(VCPDatabaseWriter *)self->_database setValue:v22 forKey:VCPKeyValueMediaAnalysisImagePriority1TotalAssetCount];
      [(VCPDatabaseWriter *)self->_database commit];
    }

    v14 = VCPSignPostPersistentLog();
    v15 = v14;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      qos_class_self();
      v16 = VCPMAQoSDescription();
      v17 = v16;
      v18 = [v16 UTF8String];
      *buf = 136446722;
      v25 = v18;
      v26 = 2050;
      v27 = v22;
      v28 = 2050;
      v29 = v23;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, v4, "MADPhotosFullClusterProcessingTask_QueryProgress", "QoS=%{public, signpost.telemetry:string1}s TotalAssetCount=%{public, signpost.telemetry:number1}lld ProgressPercentage=%{public, signpost.telemetry:number2}lld  enableTelemetry=YES ", buf, 0x20u);
    }

    v13 = v23;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v12 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v12))
      {
        *buf = 138412290;
        v25 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "[FullCluster] Failed to query full analysis image priority 1 progress: %@", buf, 0xCu);
      }
    }

    v13 = 0;
  }

  return v13;
}

- (int64_t)databaseValueForKey:(id)a3
{
  v4 = a3;
  if (+[MADManagedKeyValueStore isMACDReadEnabled])
  {
    v5 = [(PHPhotoLibrary *)self->_photoLibrary mad_fetchRequest];
    v6 = [v5 dataStoreValueForKey:v4];
  }

  else
  {
    v6 = [(VCPDatabaseWriter *)self->_database valueForKey:v4];
  }

  return v6;
}

- (void)cacheMediaAnalysisImagePriority1Progress
{
  v3 = [(MADPhotosFullClusterProcessingTask *)self queryMediaAnalysisImagePriority1ProgressPercentage];
  v4 = +[NSDate now];
  [v4 timeIntervalSinceReferenceDate];
  v6 = v5;

  v7 = VCPKeyValueMediaAnalysisImagePriority1MCEnableTimestamp;
  v8 = [(MADPhotosFullClusterProcessingTask *)self databaseValueForKey:VCPKeyValueMediaAnalysisImagePriority1MCEnableTimestamp];
  v9 = VCPKeyValueMediaAnalysisImagePriority1CompleteTimestamp;
  v10 = [(MADPhotosFullClusterProcessingTask *)self databaseValueForKey:VCPKeyValueMediaAnalysisImagePriority1CompleteTimestamp];
  if (+[MADManagedKeyValueStore isMACDPersistEnabled])
  {
    photoLibrary = self->_photoLibrary;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001B915C;
    v15[3] = &unk_100288978;
    v15[4] = v3;
    v15[5] = v10;
    v15[6] = v6;
    v15[7] = v8;
    [(PHPhotoLibrary *)photoLibrary mad_performAnalysisDataStoreChanges:v15 error:0];
    return;
  }

  if (v3 < VCPAnalysisComplete90Percentage)
  {
    if (v3 < 0x4B)
    {
      [(VCPDatabaseWriter *)self->_database removeKey:v9];
      database = self->_database;
      v13 = v7;
    }

    else
    {
      if (!v8)
      {
        [(VCPDatabaseWriter *)self->_database setValue:v6 forKey:v7];
      }

      database = self->_database;
      v13 = v9;
    }

    [(VCPDatabaseWriter *)database removeKey:v13];
    goto LABEL_15;
  }

  if (v10)
  {
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    [(VCPDatabaseWriter *)self->_database setValue:v6 forKey:v9];
    if (!v8)
    {
LABEL_14:
      [(VCPDatabaseWriter *)self->_database setValue:v6 forKey:v7];
    }
  }

LABEL_15:
  v14 = self->_database;

  [(VCPDatabaseWriter *)v14 commit];
}

- (void)signalPhotosFeatureAvailabilityChangesWithVUWGallery:(id)a3
{
  v4 = a3;
  v5 = [PLFeatureAvailabilitySignalledChanges alloc];
  v6 = [v5 initWithSourceIdentifier:MediaAnalysisDaemonDomain];
  v7 = [NSDate dateWithTimeIntervalSinceReferenceDate:[(MADPhotosFullClusterProcessingTask *)self databaseValueForKey:VCPKeyValueMediaAnalysisImagePriority1LastFullModeClusterTimestamp]];
  [v6 setLastFullVUIndexClusterDate:v7];
  v8 = VCPSignPostLog();
  v9 = os_signpost_id_generate(v8);

  v10 = VCPSignPostLog();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "VUWGallery_assetCountForType_Scene", "", buf, 2u);
  }

  v12 = [v4 assetCountForType:0];
  v13 = VCPSignPostLog();
  v14 = v13;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, v9, "VUWGallery_assetCountForType_Scene", "", buf, 2u);
  }

  v15 = [NSNumber numberWithLongLong:v12];
  [v6 setCountOfAssetsIndexedInVUClustering:v15];

  if (self->_requiresProgressQuery)
  {
    v16 = [(MADPhotosFullClusterProcessingTask *)self databaseValueForKey:VCPKeyValueMediaAnalysisImagePriority1TotalAssetCount];
    v17 = fmax(fmin(v12 / v16, 1.0), 0.0);
    v18 = [NSNumber numberWithDouble:v17];
    [v6 setFractionOfCuratedAssetsIndexedInVUClustering:v18];

    if (MediaAnalysisLogLevel() >= 6)
    {
      v19 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v19))
      {
        *buf = 134218496;
        v40 = v16;
        v41 = 2048;
        v42 = v12;
        v43 = 2048;
        v44 = v17;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "[FullCluster] curatedAssetCount=%lld, vuClusteredAssetCount=%lld, fractionOfCuratedAssetsIndexedInVUClustering=%f", buf, 0x20u);
      }
    }
  }

  else
  {
    [v6 setFractionOfCuratedAssetsIndexedInVUClustering:0];
  }

  v20 = VCPSignPostLog();
  v21 = os_signpost_id_generate(v20);

  v22 = VCPSignPostLog();
  v23 = v22;
  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_BEGIN, v21, "PhotoLibraryClient_SignalAvailabilityWithChanges", "", buf, 2u);
  }

  v24 = [(PHPhotoLibrary *)self->_photoLibrary assetsdClient];
  v25 = [v24 libraryInternalClient];
  v38 = 0;
  v26 = [v25 signalAvailabilityWithChanges:v6 error:&v38];
  v27 = v38;

  v28 = VCPSignPostLog();
  v29 = v28;
  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_INTERVAL_END, v21, "PhotoLibraryClient_SignalAvailabilityWithChanges", "", buf, 2u);
  }

  if (v26)
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v30 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v30))
      {
        v31 = [v6 lastFullVUIndexClusterDate];
        v32 = [v6 countOfAssetsIndexedInVUClustering];
        v33 = [v6 fractionOfCuratedAssetsIndexedInVUClustering];
        *buf = 138412802;
        v40 = v31;
        v41 = 2112;
        v42 = v32;
        v43 = 2112;
        v44 = *&v33;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v30, "[FullCluster] Signalled Photos availability state change (lastFullVUIndexClusterDate=%@, countOfAssetsIndexedInVUClustering=%@, fractionOfCuratedAssetsIndexedInVUClustering=%@)", buf, 0x20u);
      }
    }
  }

  else if (MediaAnalysisLogLevel() >= 3)
  {
    v34 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v34))
    {
      v35 = [v6 lastFullVUIndexClusterDate];
      v36 = [v6 countOfAssetsIndexedInVUClustering];
      v37 = [v6 fractionOfCuratedAssetsIndexedInVUClustering];
      *buf = 138412802;
      v40 = v35;
      v41 = 2112;
      v42 = v36;
      v43 = 2112;
      v44 = *&v37;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v34, "[FullCluster] Failed to signal Photos availability state change (lastFullVUIndexClusterDate=%@, countOfAssetsIndexedInVUClustering=%@, fractionOfCuratedAssetsIndexedInVUClustering=%@)", buf, 0x20u);
    }
  }
}

- (void)process
{
  if ((+[VCPVideoCNNAnalyzer isMUBackboneEnabled]& 1) != 0)
  {
    if ([(PHPhotoLibrary *)self->_photoLibrary vcp_isSyndicationLibrary])
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v3 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v3))
        {
          *buf = 0;
          v4 = "[FullCluster] Skip vector database rebuild and gallery update for syndication library";
LABEL_9:
          _os_log_impl(&_mh_execute_header, &_os_log_default, v3, v4, buf, 2u);
          return;
        }
      }

      return;
    }

    v5 = [(MADProcessingTask *)self cancelBlock];
    if (v5)
    {
      v6 = [(MADProcessingTask *)self cancelBlock];
      v7 = v6[2]();

      if (v7)
      {
        if (MediaAnalysisLogLevel() >= 4)
        {
          v3 = VCPLogToOSLogType[4];
          if (os_log_type_enabled(&_os_log_default, v3))
          {
            *buf = 0;
            v4 = "[FullCluster] Task cancelled, skip VSK rebuild and VU clustering";
            goto LABEL_9;
          }
        }

        return;
      }
    }

    v8 = +[VCPWatchdog sharedWatchdog];
    [v8 pet];

    if (MediaAnalysisLogLevel() >= 6)
    {
      v9 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v9))
      {
        requiresProgressQuery = self->_requiresProgressQuery;
        fullModeClusterOnly = self->_fullModeClusterOnly;
        *buf = 67109376;
        *v83 = requiresProgressQuery;
        *&v83[4] = 1024;
        *&v83[6] = fullModeClusterOnly;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[FullCluster] Requesting clustering (requiresProgressQuery: %d, fullModeClusterOnly: %d)...", buf, 0xEu);
      }
    }

    v12 = VCPSignPostLog();
    v13 = os_signpost_id_generate(v12);

    v14 = VCPSignPostLog();
    v15 = v14;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "MADPhotosFullClusterProcessingTask_Process", "", buf, 2u);
    }

    v77 = +[NSDate now];
    if (self->_requiresProgressQuery)
    {
      [(MADPhotosFullClusterProcessingTask *)self cacheMediaAnalysisImagePriority1Progress];
    }

    v16 = [(MADPhotosFullClusterProcessingTask *)self databaseValueForKey:VCPKeyValueMediaAnalysisImagePriority1MCEnableTimestamp];
    v17 = VCPKeyValueMediaAnalysisImagePriority1LastFullModeClusterTimestamp;
    v18 = [(MADPhotosFullClusterProcessingTask *)self databaseValueForKey:VCPKeyValueMediaAnalysisImagePriority1LastFullModeClusterTimestamp];
    v19 = +[NSDate now];
    [v19 timeIntervalSinceReferenceDate];
    v21 = v20;

    if (v16 && MADFullModeClusterInterval <= (v21 - v18))
    {
      v26 = 0;
      v27 = 0;
      v25 = 1;
    }

    else
    {
      if (self->_fullModeClusterOnly)
      {
        if (MediaAnalysisLogLevel() >= 5)
        {
          v22 = VCPLogToOSLogType[5];
          if (os_log_type_enabled(&_os_log_default, v22))
          {
            v23 = [NSDate dateWithTimeIntervalSinceReferenceDate:v16];
            v24 = [NSDate dateWithTimeIntervalSinceReferenceDate:v18];
            *buf = 138412546;
            *v83 = v23;
            *&v83[8] = 2112;
            v84 = v24;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[FullCluster] Conditions not met for full-mode clustering (MC enable timestamp: %@, last full-mode clustering timestamp: %@), skip VSK rebuild and VU clustering", buf, 0x16u);
          }
        }

LABEL_86:

        return;
      }

      v25 = 0;
      v26 = 1;
      v27 = 1;
    }

    v28 = +[VCPMADCoreAnalyticsManager sharedManager];
    v74 = v26;
    v29 = VCPAnalyticsFieldNumberOfSceneClusteringFastStartEvents;
    if (v25)
    {
      v29 = VCPAnalyticsFieldNumberOfSceneClusteringFullStartEvents;
    }

    v76 = v28;
    [v28 accumulateInt64Value:1 forField:*v29 andEvent:?];
    if (MediaAnalysisLogLevel() >= 5)
    {
      v30 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v30))
      {
        *buf = 67109120;
        *v83 = v25;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v30, "[FullCluster] Rebuilding VSK (force: %d)...", buf, 8u);
      }
    }

    v31 = [MADVectorDatabaseManager sharedDatabaseWithPhotoLibrary:self->_photoLibrary];
    v32 = v31;
    if (v31)
    {
      v33 = [v31 databaseDirectoryURL];
      v34 = v33 == 0;

      if (v34)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v62 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v62))
          {
            v63 = [(PHPhotoLibrary *)self->_photoLibrary photoLibraryURL];
            *buf = 138412290;
            *v83 = v63;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v62, "[FullCluster] Failed to obtain vector database directory for library %@", buf, 0xCu);
          }
        }
      }

      else
      {
        v81 = -1;
        v35 = [(MADProcessingTask *)self cancelBlock];
        v36 = [v32 rebuildWithForce:v25 cancelBlock:v35 extendTimeoutBlock:&stru_100288998 totalEmbeddingCount:&v81] == 0;

        if (!v36 && MediaAnalysisLogLevel() >= 4)
        {
          v37 = VCPLogToOSLogType[4];
          if (os_log_type_enabled(&_os_log_default, v37))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v37, "[FullCluster] (not disrupting) Failed to build vector database", buf, 2u);
          }
        }

        v38 = [(MADProcessingTask *)self cancelBlock];
        if (v38 && ([(MADProcessingTask *)self cancelBlock], v39 = objc_claimAutoreleasedReturnValue(), v40 = v39[2](), v39, v38, v40))
        {
          if (MediaAnalysisLogLevel() >= 4)
          {
            v41 = VCPLogToOSLogType[4];
            if (os_log_type_enabled(&_os_log_default, v41))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v41, "[FullCluster] Task cancelled, skip VU clustering", buf, 2u);
            }
          }
        }

        else
        {
          v73 = [MADVUWGalleryManager sharedGalleryForPhotoLibrary:self->_photoLibrary];
          if (v73)
          {
            if (MediaAnalysisLogLevel() >= 5)
            {
              v44 = VCPLogToOSLogType[5];
              if (os_log_type_enabled(&_os_log_default, v44))
              {
                *buf = 67109120;
                *v83 = v27;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v44, "[FullCluster] Updating VU gallery under mode %d...", buf, 8u);
              }
            }

            v45 = VCPSignPostPersistentLog();
            v46 = os_signpost_id_generate(v45);

            v47 = VCPSignPostPersistentLog();
            v48 = v47;
            if (v46 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v48, OS_SIGNPOST_INTERVAL_BEGIN, v46, "VUWGallery_EmbeddingClustering", " enableTelemetry=YES ", buf, 2u);
            }

            v80[0] = _NSConcreteStackBlock;
            v80[1] = 3221225472;
            v80[2] = sub_1001BA6D0;
            v80[3] = &unk_1002876B8;
            v80[4] = self;
            v71 = objc_retainBlock(v80);
            v49 = [v32 databaseDirectoryURL];
            v79 = 0;
            v50 = [v73 updateForType:0 withVectorStore:v49 mode:v74 progressHandler:v71 error:&v79];
            v72 = v79;

            if (v50)
            {
              v51 = [v73 assetCountForType:0];
              v52 = VCPSignPostPersistentLog();
              v53 = v52;
              if (v46 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
              {
                v54 = "Yes";
                if (v25)
                {
                  v54 = "No";
                }

                v75 = v54;
                qos_class_self();
                v55 = VCPMAQoSDescription();
                v56 = v55;
                v57 = [v55 UTF8String];
                *buf = 136446978;
                *v83 = v75;
                *&v83[8] = 2082;
                v84 = v57;
                v85 = 2050;
                v86 = v51;
                v87 = 2050;
                v88 = v81;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v53, OS_SIGNPOST_INTERVAL_END, v46, "VUWGallery_EmbeddingClustering", "IsFast=%{public, signpost.telemetry:string1}s QoS=%{public, signpost.telemetry:string2}s VUAssetCountWithClusteredEmbeddings=%{public, signpost.telemetry:number1}lld TotalEmbeddingCount=%{public, signpost.telemetry:number2}lld  enableTelemetry=YES ", buf, 0x2Au);
              }

              if (v25)
              {
                v58 = +[NSDate now];
                [v58 timeIntervalSinceReferenceDate];
                v60 = v59;

                if (+[MADManagedKeyValueStore isMACDPersistEnabled])
                {
                  photoLibrary = self->_photoLibrary;
                  v78[0] = _NSConcreteStackBlock;
                  v78[1] = 3221225472;
                  v78[2] = sub_1001BA850;
                  v78[3] = &unk_100282F90;
                  v78[4] = v60;
                  [(PHPhotoLibrary *)photoLibrary mad_performAnalysisDataStoreChanges:v78 error:0];
                }

                else
                {
                  [(VCPDatabaseWriter *)self->_database setValue:v60 forKey:v17];
                  [(VCPDatabaseWriter *)self->_database commit];
                }

                [(MADPhotosFullClusterProcessingTask *)self signalPhotosFeatureAvailabilityChangesWithVUWGallery:v73];
              }

              [v76 accumulateInt64Value:objc_msgSend(v32 forField:"deltaStoreCount") andEvent:{@"NumberOfClusteredSceneEmbeddings", @"com.apple.mediaanalysisd.FullAnalysisRunSession"}];
              [v77 timeIntervalSinceNow];
              [v76 accumulateDoubleValue:@"SceneClusteringElapsedTimeInSeconds" forField:@"com.apple.mediaanalysisd.FullAnalysisRunSession" andEvent:-v67];
              v68 = VCPAnalyticsFieldNumberOfSceneClusteringFullEvents;
              if (!v25)
              {
                v68 = VCPAnalyticsFieldNumberOfSceneClusteringFastEvents;
              }

              [v76 accumulateInt64Value:1 forField:*v68 andEvent:@"com.apple.mediaanalysisd.FullAnalysisRunSession"];
              v69 = VCPSignPostLog();
              v70 = v69;
              if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v69))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v70, OS_SIGNPOST_INTERVAL_END, v13, "MADPhotosFullClusterProcessingTask_Process", "", buf, 2u);
              }
            }

            else if (MediaAnalysisLogLevel() >= 3)
            {
              v66 = VCPLogToOSLogType[3];
              if (os_log_type_enabled(&_os_log_default, v66))
              {
                *buf = 138412290;
                *v83 = v72;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v66, "[FullCluster] Failed to update gallery: %@", buf, 0xCu);
              }
            }
          }

          else if (MediaAnalysisLogLevel() >= 3)
          {
            v64 = VCPLogToOSLogType[3];
            if (os_log_type_enabled(&_os_log_default, v64))
            {
              v65 = [(PHPhotoLibrary *)self->_photoLibrary photoLibraryURL];
              *buf = 138412290;
              *v83 = v65;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v64, "[FullCluster] Failed to obtain VUWGallery for library %@", buf, 0xCu);
            }
          }
        }
      }
    }

    else if (MediaAnalysisLogLevel() >= 3)
    {
      v42 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v42))
      {
        v43 = [(PHPhotoLibrary *)self->_photoLibrary photoLibraryURL];
        *buf = 138412290;
        *v83 = v43;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v42, "[FullCluster] Failed to obtain vector database for library %@", buf, 0xCu);
      }
    }

    goto LABEL_86;
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v3 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      *buf = 0;
      v4 = "[FullCluster] Embedding generation disabled, skip vector database rebuild and VU gallery update";
      goto LABEL_9;
    }
  }
}

@end