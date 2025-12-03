@interface VCPMediaTypeAnalysisTask
+ (id)taskWithPhotoLibrary:(id)library mediaType:(int64_t)type;
- (BOOL)_canDoFullAnalysis:(id)analysis;
- (VCPMediaTypeAnalysisTask)initWithPhotoLibrary:(id)library mediaType:(int64_t)type;
- (int)_processFetchedAssets:(id)assets withProgressReport:(id)report embeddingChangeManager:(id)manager andChangeManager:(id)changeManager;
- (int)mainInternal;
@end

@implementation VCPMediaTypeAnalysisTask

- (VCPMediaTypeAnalysisTask)initWithPhotoLibrary:(id)library mediaType:(int64_t)type
{
  v6.receiver = self;
  v6.super_class = VCPMediaTypeAnalysisTask;
  result = [(VCPBackgroundAnalysisTask *)&v6 initWithPhotoLibrary:library];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

+ (id)taskWithPhotoLibrary:(id)library mediaType:(int64_t)type
{
  libraryCopy = library;
  v6 = [objc_alloc(objc_opt_class()) initWithPhotoLibrary:libraryCopy mediaType:type];

  return v6;
}

- (BOOL)_canDoFullAnalysis:(id)analysis
{
  analysisCopy = analysis;
  v4 = [PHAssetResource vcp_allAcceptableResourcesForAsset:analysisCopy];
  vcp_fullAnalysisTypes = [analysisCopy vcp_fullAnalysisTypes];
  LOBYTE(vcp_fullAnalysisTypes) = vcp_fullAnalysisTypes == [analysisCopy vcp_fullAnalysisTypesForResources:v4];

  return vcp_fullAnalysisTypes;
}

- (int)_processFetchedAssets:(id)assets withProgressReport:(id)report embeddingChangeManager:(id)manager andChangeManager:(id)changeManager
{
  assetsCopy = assets;
  reportCopy = report;
  managerCopy = manager;
  changeManagerCopy = changeManager;
  if ([(VCPTask *)self isCancelled])
  {
    LODWORD(report) = -128;
    goto LABEL_95;
  }

  if (([objc_opt_class() streamingAllowed] & 1) == 0)
  {
    if (MediaAnalysisLogLevel() < 7)
    {
      goto LABEL_19;
    }

    v12 = VCPLogToOSLogType[7];
    if (!os_log_type_enabled(&_os_log_default, v12))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v13 = "Streaming not allowed; skipping assets that require streaming";
    goto LABEL_18;
  }

  photoLibrary = [(VCPTask *)self photoLibrary];
  if ([photoLibrary vcp_isCPLEnabled])
  {
    photoLibrary2 = [(VCPTask *)self photoLibrary];
    report = [photoLibrary2 vcp_isCPLDownloadComplete];

    if ((report & 1) == 0)
    {
      if (MediaAnalysisLogLevel() < 6)
      {
        goto LABEL_19;
      }

      v12 = VCPLogToOSLogType[6];
      if (!os_log_type_enabled(&_os_log_default, v12))
      {
        goto LABEL_19;
      }

      *buf = 0;
      v13 = "Initial iCPL download is incomplete; skipping assets that require streaming";
LABEL_18:
      _os_log_impl(&_mh_execute_header, &_os_log_default, v12, v13, buf, 2u);
LABEL_19:
      v69 = 0;
      goto LABEL_20;
    }
  }

  else
  {
  }

  v14 = +[VCPInternetReachability sharedInstance];
  hasWifiOrEthernetConnection = [v14 hasWifiOrEthernetConnection];

  if ((hasWifiOrEthernetConnection & 1) == 0)
  {
    if (MediaAnalysisLogLevel() < 6)
    {
      goto LABEL_19;
    }

    v12 = VCPLogToOSLogType[6];
    if (!os_log_type_enabled(&_os_log_default, v12))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v13 = "Wifi/Ethernet connection unavailable; skipping assets that require streaming";
    goto LABEL_18;
  }

  v69 = 1;
LABEL_20:
  photoLibrary3 = [(VCPTask *)self photoLibrary];
  v79 = [VCPBatchAnalysisTask taskWithPhotoLibrary:photoLibrary3];

  cancel = [(VCPTask *)self cancel];
  [v79 setCancel:cancel];

  [v79 setEmbeddingChangeManager:managerCopy];
  [v79 setPhotosChangeManager:changeManagerCopy];
  [v79 setProgressReporter:reportCopy];
  [v79 setAllowStreaming:1];
  photoLibrary4 = [(VCPTask *)self photoLibrary];
  v75 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:photoLibrary4];

  v19 = 0;
  type = VCPLogToOSLogType[6];
  v67 = VCPLogToOSLogType[7];
  v66 = VCPLogToOSLogType[4];
  v68 = VCPLogToOSLogType[5];
  while (v19 < [assetsCopy count])
  {
    v20 = objc_autoreleasePoolPush();
    if (![(VCPTask *)self isCancelled])
    {
      v22 = +[VCPWatchdog sharedWatchdog];
      [v22 pet];

      v23 = [assetsCopy objectAtIndexedSubscript:v19];
      if ([v23 vcp_isLongMovie])
      {
        if (_os_feature_enabled_impl())
        {
          v24 = 254;
        }

        else
        {
          v24 = 1;
        }
      }

      else
      {
        v24 = 1;
      }

      v85 = 0;
      v84 = 0;
      if (+[MADManagedProcessingStatus isMACDReadEnabled])
      {
        photoLibrary5 = [(VCPTask *)self photoLibrary];
        mad_fetchRequest = [photoLibrary5 mad_fetchRequest];
        v83 = 0;
        localIdentifier = [v23 localIdentifier];
        reportCopy2 = [mad_fetchRequest fetchProcessingStatus:&v85 attempts:&v84 lastAttemptDate:0 nextAttemptDate:&v83 localIdentifier:localIdentifier taskID:v24];
        v29 = v83;

        if (!reportCopy2)
        {
LABEL_31:
          if (v85)
          {
            v30 = +[NSDate now];
            v31 = [v29 compare:v30] == 1;

            if (v31)
            {
              if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
              {
                localIdentifier2 = [v23 localIdentifier];
                v32 = VCPProcessingStatusDescription();
                v33 = v84;
                v34 = +[VCPLogManager dateFormatter];
                v35 = [v34 stringFromDate:v29];
                *buf = 138413058;
                v87 = localIdentifier2;
                v88 = 2112;
                v89 = v32;
                v90 = 1024;
                LODWORD(v91[0]) = v33;
                WORD2(v91[0]) = 2112;
                *(v91 + 6) = v35;
                _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@] Analysis deferred (%@|%d); revisit date: %@", buf, 0x26u);
              }

              v21 = 12;
LABEL_85:
              reportCopy2 = report;
LABEL_86:

              report = reportCopy2;
              goto LABEL_87;
            }
          }

          v78 = [PHAssetResource vcp_allAcceptableResourcesForAsset:v23];
          photoLibrary6 = [(VCPTask *)self photoLibrary];
          if (![photoLibrary6 vcp_isCPLEnabled])
          {
            goto LABEL_64;
          }

          v38 = [(VCPMediaTypeAnalysisTask *)self _canDoFullAnalysis:v23];

          if (v38)
          {
LABEL_65:
            v81 = 0;
            v44 = [(VCPBackgroundAnalysisTask *)self missingAnalysisForAsset:v23 existingAnalysis:&v81 resources:v78 forLocalResourcesOnly:1];
            if (v44)
            {
              v45 = VCPSignPostLog();
              v46 = os_signpost_id_generate(v45);

              v47 = VCPSignPostLog();
              v48 = v47;
              if (v46 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v48, OS_SIGNPOST_INTERVAL_BEGIN, v46, "VCPMediaTypeAnalysisTask_UnpackComputeSync", "", buf, 2u);
              }

              mad_computeSyncResource = [v78 mad_computeSyncResource];
              cancel2 = [(VCPTask *)self cancel];
              v72 = [mad_computeSyncResource mad_existingAnalysisFromComputeSyncForAsset:v23 allowDownload:0 cancel:cancel2];

              v50 = VCPSignPostLog();
              v51 = v50;
              if (v46 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v51, OS_SIGNPOST_INTERVAL_END, v46, "VCPMediaTypeAnalysisTask_UnpackComputeSync", "", buf, 2u);
              }

              fullAnalysisResults = [v72 fullAnalysisResults];
              v53 = fullAnalysisResults == 0;

              if (!v53)
              {
                fullAnalysisResults2 = [v72 fullAnalysisResults];
                v55 = v81;
                v81 = fullAnalysisResults2;

                v44 = [(VCPBackgroundAnalysisTask *)self missingAnalysisForAsset:v23 withExistingComputeSyncAnalysis:&v81 resources:v78 forLocalResourcesOnly:1];
                if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v68))
                {
                  localIdentifier3 = [v23 localIdentifier];
                  [v81 vcp_types];
                  v57 = MediaAnalysisTypeShortDescription();
                  v58 = MediaAnalysisTypeShortDescription();
                  *buf = 138412802;
                  v87 = localIdentifier3;
                  v88 = 2112;
                  v89 = v57;
                  v90 = 2112;
                  v91[0] = v58;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v68, "[%@] Reusing analysis results from compute sync (existing: %@, missing: %@)", buf, 0x20u);
                }
              }

              [v79 addAnalysis:v44 withExistingAnalysis:v81 forAsset:v23];
              [v79 cost];
              if (v59 >= 100.0)
              {
                [v79 start];
                error = [v79 error];
                if (error)
                {
                  v21 = 1;
                  report = error;
                }

                else
                {
                  photoLibrary7 = [(VCPTask *)self photoLibrary];
                  v62 = [VCPBatchAnalysisTask taskWithPhotoLibrary:photoLibrary7];

                  cancel3 = [(VCPTask *)self cancel];
                  [v62 setCancel:cancel3];

                  [v62 setPhotosChangeManager:changeManagerCopy];
                  [v62 setEmbeddingChangeManager:managerCopy];
                  [v62 setProgressReporter:reportCopy];
                  v21 = 0;
                  v79 = v62;
                }
              }

              else
              {
                v21 = 0;
              }
            }

            else
            {
              [reportCopy increaseProcessedJobCountByOne];
              v21 = 12;
            }
          }

          else
          {
            if (v69)
            {
              photoLibrary6 = [v78 vcp_smallMovieDerivativeResource];
              if (photoLibrary6)
              {
                if ([v23 isVideo])
                {
                  fileSize = [photoLibrary6 fileSize];
                  if (fileSize > +[VCPDownloadManager maxSizeBytes])
                  {
                    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v67))
                    {
                      localIdentifier4 = [v23 localIdentifier];
                      *buf = 138412290;
                      v87 = localIdentifier4;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, v67, "[%@] File size exceeds streaming threshold; skipping", buf, 0xCu);
                    }

                    goto LABEL_62;
                  }

                  if (!fileSize && [v23 vcp_isLongMovie])
                  {
                    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v67))
                    {
                      localIdentifier5 = [v23 localIdentifier];
                      *buf = 138412290;
                      v87 = localIdentifier5;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, v67, "[%@] Duration exceeds streaming threshold; skipping", buf, 0xCu);
                    }

                    goto LABEL_62;
                  }

                  if ([v23 vcp_isVideoSlowmo])
                  {
                    goto LABEL_62;
                  }
                }

LABEL_64:

                goto LABEL_65;
              }

              if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v66))
              {
                localIdentifier6 = [v23 localIdentifier];
                *buf = 138412290;
                v87 = localIdentifier6;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v66, "[%@] Asset has no small video derivative; skipping", buf, 0xCu);
              }

LABEL_62:
              [reportCopy increaseProcessedJobCountByOne];
            }

            else
            {
              if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v67))
              {
                localIdentifier7 = [v23 localIdentifier];
                *buf = 138412290;
                v87 = localIdentifier7;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v67, "[%@] Asset requiring streaming skipped", buf, 0xCu);
              }

              [reportCopy increaseProcessedJobCountByOne];
            }

            v21 = 12;
          }

          goto LABEL_85;
        }
      }

      else
      {
        v82 = 0;
        localIdentifier8 = [v23 localIdentifier];
        reportCopy2 = [v75 queryProcessingStatus:&v85 attempts:&v84 lastAttemptDate:0 andNextAttemptDate:&v82 forLocalIdentifier:localIdentifier8 andTaskID:v24];
        v29 = v82;

        if (!reportCopy2)
        {
          goto LABEL_31;
        }
      }

      v21 = 1;
      goto LABEL_86;
    }

    report = 4294967168;
    v21 = 1;
LABEL_87:
    objc_autoreleasePoolPop(v20);
    if (v21 && v21 != 12)
    {
      goto LABEL_94;
    }

    ++v19;
  }

  [v79 cost];
  if (v64 == 0.0 || ([v79 start], LODWORD(report) = objc_msgSend(v79, "error"), !report))
  {
    LODWORD(report) = 0;
  }

LABEL_94:

LABEL_95:
  return report;
}

- (int)mainInternal
{
  v79 = +[NSDate now];
  v3 = VCPSignPostLog();
  v4 = os_signpost_id_generate(v3);

  v5 = VCPSignPostLog();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "VCPMediaTypeAnalysisTask", "", buf, 2u);
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v7 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      if (self->_type == 1)
      {
        v8 = "photo";
      }

      else
      {
        v8 = "movie";
      }

      *buf = 136315138;
      v83 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[MediaType] Processing all %s assets...", buf, 0xCu);
    }
  }

  photoLibrary = [(VCPTask *)self photoLibrary];
  v10 = [photoLibrary vcp_assetCountWithMediaType:self->_type forTaskID:1];

  if (v10)
  {
    progressHandler = [(VCPTask *)self progressHandler];
    v12 = progressHandler == 0;

    if (v12)
    {
      v78 = 0;
    }

    else
    {
      progressHandler2 = [(VCPTask *)self progressHandler];
      v78 = [VCPProgressReporter reporterWithIntervalSeconds:10 andTotalJobCount:v10 andBlock:progressHandler2];
    }

    photoLibrary2 = [(VCPTask *)self photoLibrary];
    v16 = [VCPPhotosAssetChangeManager managerForPhotoLibrary:photoLibrary2];

    if (!v16)
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_25;
      }

      v19 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v19))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v20 = "[MediaType] Failed to retrieve VCPPhotosAssetChangeManager";
      goto LABEL_24;
    }

    if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
    {
      photoLibrary3 = [(VCPTask *)self photoLibrary];
      v18 = [MADVectorDatabaseChangeManager sharedManagerForPhotoLibrary:photoLibrary3];

      if (!v18)
      {
        if (MediaAnalysisLogLevel() < 3)
        {
          goto LABEL_25;
        }

        v19 = VCPLogToOSLogType[3];
        if (!os_log_type_enabled(&_os_log_default, v19))
        {
          goto LABEL_25;
        }

        *buf = 0;
        v20 = "[MediaType] Failed to retrieve MADVectorDatabaseChangeManager";
LABEL_24:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v19, v20, buf, 2u);
LABEL_25:
        publishPendingChanges = -18;
LABEL_89:

        goto LABEL_90;
      }
    }

    else
    {
      v18 = 0;
    }

    photoLibrary4 = [(VCPTask *)self photoLibrary];
    v22 = [PHAsset vcp_fetchOptionsForLibrary:photoLibrary4 forTaskID:1];

    v23 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:0];
    v81 = v23;
    v24 = [NSArray arrayWithObjects:&v81 count:1];
    [v22 setSortDescriptors:v24];

    type = self->_type;
    if (type == 2)
    {
      v45 = VCPSignPostLog();
      spid = os_signpost_id_generate(v45);

      v46 = VCPSignPostLog();
      v47 = v46;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v47, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPMediaTypeAnalysisTask_Movie", "", buf, 2u);
      }

      if (_os_feature_enabled_impl())
      {
        v31 = 0;
      }

      else
      {
        v57 = +[MADStateHandler sharedStateHandler];
        [v57 addBreadcrumb:@"[MediaType] Fetching short videos"];

        v58 = +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"duration <= %lu", +[PHAsset vcp_longMovieDurationThreshold]);
        [v22 setInternalPredicate:v58];

        v31 = [PHAsset fetchAssetsWithMediaType:self->_type options:v22];
        if (MediaAnalysisLogLevel() >= 6)
        {
          v59 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v59))
          {
            v60 = [v31 count];
            *buf = 134217984;
            v83 = v60;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v59, "Processing all %lu short movie assets...", buf, 0xCu);
          }
        }

        v61 = +[MADStateHandler sharedStateHandler];
        [v61 addBreadcrumb:{@"[MediaType] Fetched %lu short videos", objc_msgSend(v31, "count")}];

        v35 = [(VCPMediaTypeAnalysisTask *)self _processFetchedAssets:v31 withProgressReport:v78 embeddingChangeManager:v18 andChangeManager:v16];
        if (v35)
        {
          goto LABEL_70;
        }
      }

      v62 = +[MADStateHandler sharedStateHandler];
      [v62 addBreadcrumb:@"[MediaType] Fetching long videos"];

      v63 = +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"duration > %lu", +[PHAsset vcp_longMovieDurationThreshold]);
      [v22 setInternalPredicate:v63];

      v38 = [PHAsset fetchAssetsWithMediaType:self->_type options:v22];

      v64 = +[MADStateHandler sharedStateHandler];
      [v64 addBreadcrumb:{@"[MediaType] Fetched %lu long videos", objc_msgSend(v38, "count")}];

      if (MediaAnalysisLogLevel() >= 6)
      {
        v65 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v65))
        {
          v66 = [v38 count];
          *buf = 134217984;
          v83 = v66;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v65, "Processing all %lu long movie assets...", buf, 0xCu);
        }
      }

      v35 = [(VCPMediaTypeAnalysisTask *)self _processFetchedAssets:v38 withProgressReport:v78 embeddingChangeManager:v18 andChangeManager:v16];
      if (v35)
      {
        goto LABEL_69;
      }

      v67 = VCPSignPostLog();
      v43 = v67;
      if (spid - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v67))
      {
        goto LABEL_68;
      }

      *buf = 0;
      v44 = "VCPMediaTypeAnalysisTask_Movie";
    }

    else
    {
      if (type != 1)
      {
        v48 = VCPSignPostLog();
        v49 = os_signpost_id_generate(v48);

        v50 = VCPSignPostLog();
        v51 = v50;
        if (v49 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v51, OS_SIGNPOST_INTERVAL_BEGIN, v49, "VCPMediaTypeAnalysisTask_Other", "", buf, 2u);
        }

        v52 = +[MADStateHandler sharedStateHandler];
        [v52 addBreadcrumb:@"[MediaType] Fetching non image/videos"];

        v38 = [PHAsset fetchAssetsWithMediaType:self->_type options:v22];
        v53 = +[MADStateHandler sharedStateHandler];
        [v53 addBreadcrumb:{@"[MediaType] Fetched %lu non image/videos", objc_msgSend(v38, "count")}];

        v35 = [(VCPMediaTypeAnalysisTask *)self _processFetchedAssets:v38 withProgressReport:v78 embeddingChangeManager:v18 andChangeManager:v16];
        if (v35)
        {
          goto LABEL_69;
        }

        v54 = VCPSignPostLog();
        v43 = v54;
        if (v49 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v54))
        {
          goto LABEL_68;
        }

        *buf = 0;
        v44 = "VCPMediaTypeAnalysisTask_Other";
        v55 = v43;
        v56 = v49;
        goto LABEL_67;
      }

      v26 = VCPSignPostLog();
      spid = os_signpost_id_generate(v26);

      v27 = VCPSignPostLog();
      v28 = v27;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPMediaTypeAnalysisTask_Image", "", buf, 2u);
      }

      v29 = +[MADStateHandler sharedStateHandler];
      [v29 addBreadcrumb:@"[MediaType] Fetching face done images"];

      v30 = [NSPredicate predicateWithFormat:@"faceAdjustmentVersion != nil"];
      [v22 setInternalPredicate:v30];

      v31 = [PHAsset fetchAssetsWithMediaType:self->_type options:v22];
      v32 = +[MADStateHandler sharedStateHandler];
      [v32 addBreadcrumb:{@"[MediaType] Fetched %lu face done images", objc_msgSend(v31, "count")}];

      if (MediaAnalysisLogLevel() >= 6)
      {
        v33 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v33))
        {
          v34 = [v31 count];
          *buf = 134217984;
          v83 = v34;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v33, "Processing all %lu photo assets with face detection finished...", buf, 0xCu);
        }
      }

      v35 = [(VCPMediaTypeAnalysisTask *)self _processFetchedAssets:v31 withProgressReport:v78 embeddingChangeManager:v18 andChangeManager:v16];
      if (v35)
      {
        goto LABEL_70;
      }

      v36 = +[MADStateHandler sharedStateHandler];
      [v36 addBreadcrumb:@"[MediaType] Fetching face not done images"];

      v37 = [NSPredicate predicateWithFormat:@"faceAdjustmentVersion == nil"];
      [v22 setInternalPredicate:v37];

      v38 = [PHAsset fetchAssetsWithMediaType:self->_type options:v22];

      v39 = +[MADStateHandler sharedStateHandler];
      [v39 addBreadcrumb:{@"[MediaType] Fetched %lu face not done images", objc_msgSend(v38, "count")}];

      if (MediaAnalysisLogLevel() >= 6)
      {
        v40 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v40))
        {
          v41 = [v38 count];
          *buf = 134217984;
          v83 = v41;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v40, "Processing all %lu photo assets with face detection unfinished...", buf, 0xCu);
        }
      }

      v35 = [(VCPMediaTypeAnalysisTask *)self _processFetchedAssets:v38 withProgressReport:v78 embeddingChangeManager:v18 andChangeManager:v16];
      if (v35)
      {
LABEL_69:
        v31 = v38;
LABEL_70:

        if (!+[VCPDatabaseWriter isLegacyPersistEnabled](VCPDatabaseWriter, "isLegacyPersistEnabled") || (-[VCPTask photoLibrary](self, "photoLibrary"), v68 = objc_claimAutoreleasedReturnValue(), +[VCPDatabaseManager sharedDatabaseForPhotoLibrary:](VCPDatabaseManager, "sharedDatabaseForPhotoLibrary:", v68), v69 = objc_claimAutoreleasedReturnValue(), publishPendingChanges = [v69 commit], v69, v68, publishPendingChanges != -108) && publishPendingChanges != -36 && publishPendingChanges != -23)
        {
          publishPendingChanges = [v18 publishPendingChanges];
          if (publishPendingChanges)
          {
            if (MediaAnalysisLogLevel() >= 3)
            {
              v70 = VCPLogToOSLogType[3];
              if (os_log_type_enabled(&_os_log_default, v70))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v70, "[MediaType] Failed to publish vector database changes", buf, 2u);
              }
            }
          }

          else
          {
            v80[0] = _NSConcreteStackBlock;
            v80[1] = 3221225472;
            v80[2] = sub_100148FA8;
            v80[3] = &unk_100283000;
            v80[4] = self;
            if ([v16 publishPendingChangesWithCancelBlock:v80])
            {
              if (MediaAnalysisLogLevel() >= 4)
              {
                v71 = VCPLogToOSLogType[4];
                if (os_log_type_enabled(&_os_log_default, v71))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v71, "[MediaType] Failed to publish PHAssetPropertySetMediaAnalysis changes", buf, 2u);
                }
              }
            }

            v72 = VCPSignPostLog();
            v73 = v72;
            if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v72))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v73, OS_SIGNPOST_INTERVAL_END, v4, "VCPMediaTypeAnalysisTask", "", buf, 2u);
            }

            if (_os_feature_enabled_impl())
            {
              v74 = +[VCPMADCoreAnalyticsManager sharedManager];
              [v79 timeIntervalSinceNow];
              [v74 accumulateDoubleValue:@"LongVideoSeconds" forField:@"com.apple.mediaanalysisd.FullAnalysisRunSession" andEvent:-v75];
            }

            publishPendingChanges = v35;
          }
        }

        goto LABEL_89;
      }

      v42 = VCPSignPostLog();
      v43 = v42;
      if (spid - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v42))
      {
LABEL_68:

        v35 = 0;
        goto LABEL_69;
      }

      *buf = 0;
      v44 = "VCPMediaTypeAnalysisTask_Image";
    }

    v55 = v43;
    v56 = spid;
LABEL_67:
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v55, OS_SIGNPOST_INTERVAL_END, v56, v44, "", buf, 2u);
    goto LABEL_68;
  }

  publishPendingChanges = 0;
LABEL_90:

  return publishPendingChanges;
}

@end