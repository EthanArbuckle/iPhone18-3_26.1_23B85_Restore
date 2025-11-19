@interface MADVectorDatabaseUtilities
+ (BOOL)_shouldPerformImageEmbeddingDeepSyncWithPhotoLibrary:(id)a3 threshold:(double)a4 imageVSKAssetCount:(unint64_t *)a5;
+ (BOOL)_shouldPerformVideoEmbeddingDeepSyncWithPhotoLibrary:(id)a3 threshold:(double)a4 videoVSKAssetCount:(unint64_t *)a5;
+ (id)_assetsWithoutValidVideoEmbeddingVersionInPhotoLibrary:(id)a3 withinProcessedAssetsInVDB:(id)a4;
+ (id)_createVideoVSKAssetWithLocalIdentifier:(id)a3 analysisHeader:(id)a4 analysisResults:(id)a5;
+ (int)_deepSyncImageEmbeddingsWithPhotoLibrary:(id)a3 imageVSKAssetCount:(unint64_t)a4 cancelBlock:(id)a5;
+ (int)_deepSyncVideoEmbeddingsWithPhotoLibrary:(id)a3 videoVSKAssetCount:(unint64_t)a4 cancelBlock:(id)a5;
+ (int)_handleAssetsMissingVideoEmbedding:(id)a3 photoLibrary:(id)a4 cancelBlock:(id)a5;
+ (int)_resetVersionForAssetsMissingImageEmbedding:(id)a3 photoLibrary:(id)a4;
+ (int)syncWithPhotoLibrary:(id)a3 ignoreExpiration:(BOOL)a4 threshold:(double)a5 cancelBlock:(id)a6;
@end

@implementation MADVectorDatabaseUtilities

+ (BOOL)_shouldPerformImageEmbeddingDeepSyncWithPhotoLibrary:(id)a3 threshold:(double)a4 imageVSKAssetCount:(unint64_t *)a5
{
  v7 = a3;
  v8 = [PHMediaProcessingAlgorithmVersionProvider mad_sharedImageEmbeddingVersionProviderWithPhotoLibrary:v7];
  v9 = mach_absolute_time();
  v10 = VCPSignPostLog();
  v11 = os_signpost_id_generate(v10);

  v12 = VCPSignPostLog();
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "MADVSKDBUtil_ImageDeepSync_PhotosAssetCount", "", buf, 2u);
  }

  v36 = 0;
  v14 = [v7 countOfProcessedAssetsForMediaProcessingTaskID:17 priority:0 algorithmVersion:v8 sceneConfidenceThreshold:&v36 error:0.0];
  v15 = v36;
  v16 = VCPSignPostLog();
  v17 = v16;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, v11, "MADVSKDBUtil_ImageDeepSync_PhotosAssetCount", "", buf, 2u);
  }

  if (v9)
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

  if (v15)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v18 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v18))
      {
        *buf = 138412546;
        v38 = @"[VSKDBUtil][DeepSyncEligibility|ImageEmbedding]";
        v39 = 2112;
        v40 = v15;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "%@ Failed to fetch asset count with processed imageEmbeddingVersion: %@", buf, 0x16u);
      }
    }

    v19 = 0;
  }

  else
  {
    v34 = [MADVectorDatabaseManager sharedDatabaseWithPhotoLibrary:v7];
    v20 = mach_absolute_time();
    v21 = VCPSignPostLog();
    v22 = os_signpost_id_generate(v21);

    v23 = VCPSignPostLog();
    v24 = v23;
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "MADVSKDBUtil_ImageDeepSync_VSKAssetCount", "", buf, 2u);
    }

    v35 = 0;
    v25 = [v34 assetCountForEmbeddingType:1 error:&v35];
    v15 = v35;
    v26 = VCPSignPostLog();
    v27 = v26;
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_END, v22, "MADVSKDBUtil_ImageDeepSync_VSKAssetCount", "", buf, 2u);
    }

    if (v20)
    {
      mach_absolute_time();
      VCPPerformance_LogMeasurement();
    }

    if (v15)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v28 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v28))
        {
          *buf = 138412546;
          v38 = @"[VSKDBUtil][DeepSyncEligibility|ImageEmbedding]";
          v39 = 2112;
          v40 = v15;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v28, "%@ Failed to fetch image asset count in vectorDB: %@", buf, 0x16u);
        }
      }

      v19 = 0;
    }

    else
    {
      if (a5)
      {
        *a5 = v25;
      }

      v29 = 0.0;
      if (v25 | v14)
      {
        v30 = v25 - v14;
        if (v30 < 0.0)
        {
          v30 = -v30;
        }

        if (v25 <= v14)
        {
          v31 = v14;
        }

        else
        {
          v31 = v25;
        }

        v29 = v30 / v31;
      }

      if (MediaAnalysisLogLevel() >= 5)
      {
        v32 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v32))
        {
          *buf = 138413314;
          v38 = @"[VSKDBUtil][DeepSyncEligibility|ImageEmbedding]";
          v39 = 2048;
          v40 = v25;
          v41 = 2048;
          v42 = v14;
          v43 = 2048;
          v44 = v29 * 100.0;
          v45 = 2048;
          v46 = a4 * 100.0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "%@ vdb-assets: %ld, photos-assets: %ld -> difference: %.2f%% (threshold: %.2f%%)", buf, 0x34u);
        }
      }

      v19 = v29 > a4;
    }
  }

  return v19;
}

+ (int)_resetVersionForAssetsMissingImageEmbedding:(id)a3 photoLibrary:(id)a4
{
  v42 = a3;
  v40 = a4;
  v41 = [MADVectorDatabaseManager sharedDatabaseWithPhotoLibrary:?];
  if (v41)
  {
    v5 = [v42 count];
    v52 = 0;
    v39 = [v41 fetchAssetsWithLocalIdentifiers:v42 embeddingType:1 error:&v52];
    v38 = v52;
    if (v38)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v6 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v6))
        {
          *buf = 138412802;
          v56 = @"[VSKDBUtil][DeepSync|ImageEmbedding]";
          v57 = 2048;
          v58 = v5;
          v59 = 2112;
          v60 = v38;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "%@ Failed to fetch %lu processed assets from VSKDB: %@", buf, 0x20u);
        }
      }

      v7 = -18;
    }

    else
    {
      v9 = [v39 count];
      if (MediaAnalysisLogLevel() >= 6)
      {
        v10 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v10))
        {
          *buf = 138412802;
          v56 = @"[VSKDBUtil][DeepSync|ImageEmbedding]";
          v57 = 2048;
          v58 = v9;
          v59 = 2048;
          v60 = v5;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "%@ Fetched %lu corresponding assets from VSKDB out of %lu processed assets from Photos", buf, 0x20u);
        }
      }

      if (v9 == v5)
      {
        v7 = 0;
      }

      else
      {
        v11 = +[NSMutableSet set];
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v12 = v39;
        v13 = [v12 countByEnumeratingWithState:&v48 objects:v54 count:16];
        if (v13)
        {
          v14 = *v49;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v49 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = [*(*(&v48 + 1) + 8 * i) mad_photosLocalIdentifier];
              [v11 addObject:v16];
            }

            v13 = [v12 countByEnumeratingWithState:&v48 objects:v54 count:16];
          }

          while (v13);
        }

        v17 = +[NSMutableArray array];
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v18 = v42;
        v19 = [v18 countByEnumeratingWithState:&v44 objects:v53 count:16];
        if (v19)
        {
          v20 = *v45;
          v21 = VCPLogToOSLogType[6];
          do
          {
            for (j = 0; j != v19; j = j + 1)
            {
              if (*v45 != v20)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v44 + 1) + 8 * j);
              if (([v11 containsObject:v23] & 1) == 0)
              {
                if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v21))
                {
                  *buf = 138412546;
                  v56 = @"[VSKDBUtil][DeepSync|ImageEmbedding]";
                  v57 = 2112;
                  v58 = v23;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "%@[%@] Asset not exist in VSKDB, imageEmbeddingVersion should be reset", buf, 0x16u);
                }

                [v17 addObject:v23];
              }
            }

            v19 = [v18 countByEnumeratingWithState:&v44 objects:v53 count:16];
          }

          while (v19);
        }

        if ([v17 count])
        {
          if (MediaAnalysisLogLevel() >= 5)
          {
            v24 = VCPLogToOSLogType[5];
            if (os_log_type_enabled(&_os_log_default, v24))
            {
              v25 = [v17 count];
              *buf = 138412802;
              v56 = @"[VSKDBUtil][DeepSync|ImageEmbedding]";
              v57 = 2048;
              v58 = v25;
              v59 = 2112;
              v60 = v17;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "%@ Resetting imageEmbeddingVersion for %lu assets: %@", buf, 0x20u);
            }
          }

          v26 = mach_absolute_time();
          v27 = VCPSignPostLog();
          v28 = os_signpost_id_generate(v27);

          v29 = VCPSignPostLog();
          v30 = v29;
          if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_INTERVAL_BEGIN, v28, "MADVSKDBUtil_ImageDeepSync_ResetVersion", "", buf, 2u);
          }

          v43 = 0;
          v31 = [v40 resetStateForMediaProcessingTaskID:17 assetIdentifiers:v17 resetOptions:1024 error:&v43];
          v32 = v43;
          v33 = VCPSignPostLog();
          v34 = v33;
          if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, OS_SIGNPOST_INTERVAL_END, v28, "MADVSKDBUtil_ImageDeepSync_ResetVersion", "", buf, 2u);
          }

          if (v26)
          {
            mach_absolute_time();
            VCPPerformance_LogMeasurement();
          }

          if (v31)
          {
            v7 = 0;
          }

          else
          {
            if (MediaAnalysisLogLevel() >= 3)
            {
              v35 = VCPLogToOSLogType[3];
              if (os_log_type_enabled(&_os_log_default, v35))
              {
                v36 = [v17 count];
                *buf = 138412802;
                v56 = @"[VSKDBUtil][DeepSync|ImageEmbedding]";
                v57 = 2048;
                v58 = v36;
                v59 = 2112;
                v60 = v32;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v35, "%@ Failed to reset imageEmbeddingVersion for %lu assets: %@", buf, 0x20u);
              }
            }

            v7 = -18;
          }
        }

        else
        {
          v7 = 0;
        }
      }
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v8 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        *buf = 138412290;
        v56 = @"[VSKDBUtil][DeepSync|ImageEmbedding]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "%@ Failed to retrieve MADVectorDatabase", buf, 0xCu);
      }
    }

    v7 = -18;
  }

  return v7;
}

+ (int)_deepSyncImageEmbeddingsWithPhotoLibrary:(id)a3 imageVSKAssetCount:(unint64_t)a4 cancelBlock:(id)a5
{
  v99 = a3;
  v108 = a5;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v6 = &_os_log_default;
    v7 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      *buf = 138412290;
      v128 = @"[VSKDBUtil][DeepSync|ImageEmbedding]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "%@ Starting ...", buf, 0xCu);
    }
  }

  v101 = [MADVectorDatabaseManager sharedDatabaseWithPhotoLibrary:v99];
  if (!v101)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v50 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v50))
      {
        *buf = 138412290;
        v128 = @"[VSKDBUtil][DeepSync|ImageEmbedding]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, v50, "%@ Failed to retrieve MADVectorDatabase", buf, 0xCu);
      }
    }

    v9 = -18;
    goto LABEL_87;
  }

  if (!v108 || !v108[2]())
  {
    v10 = +[VCPWatchdog sharedWatchdog];
    [v10 pet];

    if (MediaAnalysisLogLevel() >= 6)
    {
      v11 = &_os_log_default;
      v12 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v12))
      {
        *buf = 138412290;
        v128 = @"[VSKDBUtil][DeepSync|ImageEmbedding]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "%@ Stage 1 - starting VSKLoop", buf, 0xCu);
      }
    }

    v93 = mach_absolute_time();
    v13 = VCPSignPostLog();
    spid = os_signpost_id_generate(v13);

    v14 = VCPSignPostLog();
    v15 = v14;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, spid, "MADVSKDBUtil_ImageDeepSync_VSKLoop", "", buf, 2u);
    }

    v97 = [PHAsset vcp_fetchOptionsForLibrary:v99 forTaskID:1];
    if (a4)
    {
      v17 = 0;
      v109 = 0;
      type = VCPLogToOSLogType[3];
      v95 = VCPLogToOSLogType[6];
      v111 = MediaAnalysisEmbeddingForwardCompatibleVersion;
      v18 = VCPLogToOSLogType[4];
      v92 = VCPLogToOSLogType[5];
      *&v16 = 138412290;
      v91 = v16;
      while (1)
      {
        context = objc_autoreleasePoolPush();
        if (v108 && v108[2]())
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = v91;
            v128 = @"[VSKDBUtil][DeepSync|ImageEmbedding]";
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Cancelled during VSKLoop", buf, 0xCu);
          }

          v19 = 0;
          v102 = -128;
        }

        else
        {
          v20 = +[VCPWatchdog sharedWatchdog];
          [v20 pet];

          v21 = +[NSMutableArray array];
          v126 = v17;
          v103 = [v101 fetchAssetsWithEmbeddingType:1 limit:1000 offset:v109 error:&v126];
          v106 = v126;

          if (v106)
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
            {
              *buf = 138412546;
              v128 = @"[VSKDBUtil][DeepSync|ImageEmbedding]";
              v129 = 2112;
              v130 = v106;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Failed to fetch processed assets from VSKDB: %@", buf, 0x16u);
            }

            v19 = 0;
            v102 = -18;
          }

          else
          {
            v22 = [v103 count];
            if (MediaAnalysisLogLevel() >= 6)
            {
              v23 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, v95))
              {
                *buf = 138412546;
                v128 = @"[VSKDBUtil][DeepSync|ImageEmbedding]";
                v129 = 2048;
                v130 = v22;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v95, "%@ Fetched %lu image embedding assets from VSKDB", buf, 0x16u);
              }
            }

            v124 = 0u;
            v125 = 0u;
            v122 = 0u;
            v123 = 0u;
            v24 = v103;
            v25 = [v24 countByEnumeratingWithState:&v122 objects:v134 count:16];
            if (v25)
            {
              v26 = *v123;
              do
              {
                for (i = 0; i != v25; i = i + 1)
                {
                  if (*v123 != v26)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v28 = [*(*(&v122 + 1) + 8 * i) mad_photosLocalIdentifier];
                  [v21 addObject:v28];
                }

                v25 = [v24 countByEnumeratingWithState:&v122 objects:v134 count:16];
              }

              while (v25);
            }

            v113 = [PHAsset fetchAssetsWithLocalIdentifiers:v21 options:v97];
            v29 = [v113 count];
            if (MediaAnalysisLogLevel() >= 6)
            {
              v30 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, v95))
              {
                *buf = 138412802;
                v128 = @"[VSKDBUtil][DeepSync|ImageEmbedding]";
                v129 = 2048;
                v130 = v29;
                v131 = 2048;
                v132[0] = v22;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v95, "%@ Fetched %lu corresponding assets from Photos out of %lu processed assets from VSKDB", buf, 0x20u);
              }
            }

            v31 = +[NSMutableSet set];
            if (v29)
            {
              for (j = 0; j != v29; ++j)
              {
                v33 = objc_autoreleasePoolPush();
                v34 = [v113 objectAtIndexedSubscript:j];
                v35 = [v34 mediaAnalysisProperties];
                v36 = v111 > [v35 imageEmbeddingVersion];

                if (!v36)
                {
                  v37 = [v34 localIdentifier];
                  [v31 addObject:v37];
                }

                objc_autoreleasePoolPop(v33);
              }
            }

            v38 = +[NSMutableArray array];
            v120 = 0u;
            v121 = 0u;
            v118 = 0u;
            v119 = 0u;
            v39 = v21;
            v40 = [v39 countByEnumeratingWithState:&v118 objects:v133 count:16];
            if (v40)
            {
              v41 = *v119;
              do
              {
                for (k = 0; k != v40; k = k + 1)
                {
                  if (*v119 != v41)
                  {
                    objc_enumerationMutation(v39);
                  }

                  v43 = *(*(&v118 + 1) + 8 * k);
                  if (([v31 containsObject:v43] & 1) == 0)
                  {
                    if (MediaAnalysisLogLevel() >= 4)
                    {
                      v44 = &_os_log_default;
                      if (os_log_type_enabled(&_os_log_default, v18))
                      {
                        *buf = 138412546;
                        v128 = @"[VSKDBUtil][DeepSync|ImageEmbedding]";
                        v129 = 2112;
                        v130 = v43;
                        _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "%@[%@] Asset not exist or has incompatible imageEmbeddingVersion in Photos, should be removed from VSKDB", buf, 0x16u);
                      }
                    }

                    [v38 addObject:v43];
                  }
                }

                v40 = [v39 countByEnumeratingWithState:&v118 objects:v133 count:16];
              }

              while (v40);
            }

            if ([v38 count])
            {
              if (MediaAnalysisLogLevel() >= 5)
              {
                v45 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, v92))
                {
                  v46 = [v38 count];
                  *buf = 138412802;
                  v128 = @"[VSKDBUtil][DeepSync|ImageEmbedding]";
                  v129 = 2048;
                  v130 = v46;
                  v131 = 2112;
                  v132[0] = v38;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v92, "%@ Deleting %lu assets from VSKDB ... %@", buf, 0x20u);
                }
              }

              v117 = 0;
              v47 = [v101 removeEmbeddingsWithLocalIdentifiers:v38 embeddingType:1 error:&v117];
              v48 = v117;
              v19 = v47 == 0;
              if (v47)
              {
                if (MediaAnalysisLogLevel() >= 3)
                {
                  v49 = &_os_log_default;
                  if (os_log_type_enabled(&_os_log_default, type))
                  {
                    *buf = 138412546;
                    v128 = @"[VSKDBUtil][DeepSync|ImageEmbedding]";
                    v129 = 2112;
                    v130 = v48;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Failed to remove embeddings from VSKDB: %@", buf, 0x16u);
                  }
                }

                v102 = v47;
              }
            }

            else
            {
              v19 = 1;
            }
          }

          v17 = v106;
        }

        objc_autoreleasePoolPop(context);
        if (!v19)
        {
          goto LABEL_162;
        }

        v109 += 1000;
        if (v109 >= a4)
        {
          goto LABEL_89;
        }
      }
    }

    v17 = 0;
LABEL_89:
    v51 = VCPSignPostLog();
    v52 = v51;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v52, OS_SIGNPOST_INTERVAL_END, spid, "MADVSKDBUtil_ImageDeepSync_VSKLoop", "", buf, 2u);
    }

    if (v93)
    {
      mach_absolute_time();
      VCPPerformance_LogMeasurement();
    }

    if (v108 && v108[2]())
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v53 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v53))
        {
          *buf = 138412290;
          v128 = @"[VSKDBUtil][DeepSync|ImageEmbedding]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, v53, "%@ Cancelled before PhotosLoop", buf, 0xCu);
        }
      }

      v102 = -128;
      goto LABEL_162;
    }

    v54 = +[VCPWatchdog sharedWatchdog];
    [v54 pet];

    if (MediaAnalysisLogLevel() >= 6)
    {
      v55 = &_os_log_default;
      v56 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v56))
      {
        *buf = 138412290;
        v128 = @"[VSKDBUtil][DeepSync|ImageEmbedding]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, v56, "%@ Stage 2 - starting PhotosLoop", buf, 0xCu);
      }
    }

    v104 = mach_absolute_time();
    v57 = VCPSignPostLog();
    v110 = os_signpost_id_generate(v57);

    v58 = VCPSignPostLog();
    v59 = v58;
    if (v110 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v59, OS_SIGNPOST_INTERVAL_BEGIN, v110, "MADVSKDBUtil_ImageDeepSync_PhotosLoop", "", buf, 2u);
    }

    v112 = [PHMediaProcessingAlgorithmVersionProvider mad_sharedImageEmbeddingVersionProviderWithPhotoLibrary:v99];
    v60 = mach_absolute_time();
    v61 = VCPSignPostLog();
    v62 = os_signpost_id_generate(v61);

    v63 = VCPSignPostLog();
    v64 = v63;
    if (v62 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v63))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v64, OS_SIGNPOST_INTERVAL_BEGIN, v62, "MADVSKDBUtil_ImageDeepSync_PhotosLoop_FetchProcessedAssets", "", buf, 2u);
    }

    v116 = 0;
    v65 = [v99 fetchProcessedAssetsForMediaProcessingTaskID:17 priority:0 algorithmVersion:v112 sceneConfidenceThreshold:&v116 error:0.0];
    v114 = v116;
    v66 = VCPSignPostLog();
    v67 = v66;
    if (v62 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v66))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v67, OS_SIGNPOST_INTERVAL_END, v62, "MADVSKDBUtil_ImageDeepSync_PhotosLoop_FetchProcessedAssets", "", buf, 2u);
    }

    if (v60)
    {
      mach_absolute_time();
      VCPPerformance_LogMeasurement();
    }

    if (v114)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v68 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v68))
        {
          *buf = 138412546;
          v128 = @"[VSKDBUtil][DeepSync|ImageEmbedding]";
          v129 = 2112;
          v130 = v114;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v68, "%@ Failed to fetch processed assets from Photos: %@", buf, 0x16u);
        }
      }

      v102 = -18;
LABEL_161:

LABEL_162:
      goto LABEL_163;
    }

    v69 = [v65 count];
    if (MediaAnalysisLogLevel() >= 6)
    {
      v70 = &_os_log_default;
      v71 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v71))
      {
        *buf = 138412546;
        v128 = @"[VSKDBUtil][DeepSync|ImageEmbedding]";
        v129 = 2048;
        v130 = v69;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v71, "%@ Fetched %lu assets with up-to-date imageEmbeddingVersion from Photos", buf, 0x16u);
      }
    }

    v115 = +[NSMutableArray array];
    if (!v69)
    {
LABEL_150:
      v86 = VCPSignPostLog();
      v87 = v86;
      if (v110 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v86))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v87, OS_SIGNPOST_INTERVAL_END, v110, "MADVSKDBUtil_ImageDeepSync_PhotosLoop", "", buf, 2u);
      }

      if (v104)
      {
        mach_absolute_time();
        VCPPerformance_LogMeasurement();
      }

      if (MediaAnalysisLogLevel() >= 6)
      {
        v88 = &_os_log_default;
        v89 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v89))
        {
          *buf = 138412290;
          v128 = @"[VSKDBUtil][DeepSync|ImageEmbedding]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, v89, "%@ Finished", buf, 0xCu);
        }
      }

      v102 = 0;
LABEL_160:

      goto LABEL_161;
    }

    v72 = 0;
    v73 = MediaAnalysisEmbeddingForwardCompatibleVersion;
    v96 = VCPLogToOSLogType[3];
    v107 = VCPLogToOSLogType[7];
    while (1)
    {
      v74 = objc_autoreleasePoolPush();
      v75 = [v65 objectAtIndexedSubscript:v72];
      v76 = [v75 mediaAnalysisProperties];
      v77 = [v76 imageEmbeddingVersion];

      if (v73 > v77)
      {
        break;
      }

      v81 = [v65 objectAtIndexedSubscript:v72];
      v82 = [v81 localIdentifier];
      [v115 addObject:v82];

      if ([v115 count] <= 0x3E7 && v69 - 1 != v72)
      {
        goto LABEL_144;
      }

      if (v108 && v108[2]())
      {
        if (MediaAnalysisLogLevel() < 3)
        {
          v102 = -128;
          v80 = 1;
          goto LABEL_145;
        }

        v83 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, v96))
        {
          *buf = 138412290;
          v128 = @"[VSKDBUtil][DeepSync|ImageEmbedding]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, v96, "%@ Cancelled during PhotosLoop", buf, 0xCu);
        }

        v102 = -128;
        v80 = 1;
LABEL_131:

        goto LABEL_145;
      }

      v84 = +[VCPWatchdog sharedWatchdog];
      [v84 pet];

      v85 = [objc_opt_class() _resetVersionForAssetsMissingImageEmbedding:v115 photoLibrary:v99];
      if (!v85)
      {
        [v115 removeAllObjects];
LABEL_144:
        v80 = 0;
        goto LABEL_145;
      }

      v80 = 1;
      v102 = v85;
LABEL_145:

      objc_autoreleasePoolPop(v74);
      if (v80 != 62 && v80)
      {
        goto LABEL_160;
      }

      if (v69 == ++v72)
      {
        goto LABEL_150;
      }
    }

    if (MediaAnalysisLogLevel() < 7)
    {
      v80 = 62;
      goto LABEL_145;
    }

    v78 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, v107))
    {
      v79 = [v75 localIdentifier];
      *buf = 138413058;
      v128 = @"[VSKDBUtil][DeepSync|ImageEmbedding]";
      v129 = 2112;
      v130 = v79;
      v131 = 1024;
      LODWORD(v132[0]) = v77;
      WORD2(v132[0]) = 1024;
      *(v132 + 6) = v73;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v107, "%@[%@] Asset imageEmbeddingVersion %d < forward compatible version (%d)", buf, 0x22u);
    }

    v80 = 62;
    goto LABEL_131;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v8 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v8))
    {
      *buf = 138412290;
      v128 = @"[VSKDBUtil][DeepSync|ImageEmbedding]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "%@ Cancelled before VSKLoop", buf, 0xCu);
    }
  }

  v9 = -128;
LABEL_87:
  v102 = v9;
LABEL_163:

  return v102;
}

+ (BOOL)_shouldPerformVideoEmbeddingDeepSyncWithPhotoLibrary:(id)a3 threshold:(double)a4 videoVSKAssetCount:(unint64_t *)a5
{
  v7 = a3;
  v8 = [PHMediaProcessingAlgorithmVersionProvider mad_sharedVideoEmbeddingVersionProviderWithPhotoLibrary:v7];
  v9 = mach_absolute_time();
  v10 = VCPSignPostLog();
  v11 = os_signpost_id_generate(v10);

  v12 = VCPSignPostLog();
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "MADVSKDBUtil_VideoDeepSync_PhotosAssetCount", "", buf, 2u);
  }

  v61 = 0;
  v14 = [v7 countOfProcessedAssetsForMediaProcessingTaskID:1 priority:0 algorithmVersion:v8 sceneConfidenceThreshold:&v61 error:0.0];
  v15 = v61;
  v16 = VCPSignPostLog();
  v17 = v16;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, v11, "MADVSKDBUtil_VideoDeepSync_PhotosAssetCount", "", buf, 2u);
  }

  if (v9)
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

  if (!v15)
  {
    v59 = [MADVectorDatabaseManager sharedDatabaseWithPhotoLibrary:v7];
    if (v59)
    {
      v20 = mach_absolute_time();
      v21 = VCPSignPostLog();
      v22 = os_signpost_id_generate(v21);

      v23 = VCPSignPostLog();
      v24 = v23;
      if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "MADVSKDBUtil_VideoDeepSync_VSKAssetCount", "", buf, 2u);
      }

      v60 = 0;
      v25 = [v59 assetCountForEmbeddingType:2 error:&v60];
      v15 = v60;
      v26 = VCPSignPostLog();
      v27 = v26;
      if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_END, v22, "MADVSKDBUtil_VideoDeepSync_VSKAssetCount", "", buf, 2u);
      }

      if (v20)
      {
        mach_absolute_time();
        VCPPerformance_LogMeasurement();
      }

      if (v15)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v28 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v28))
          {
            *buf = 138412546;
            v63 = @"[VSKDBUtil][DeepSyncEligibility|VideoEmbedding]";
            v64 = 2112;
            v65 = v15;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v28, "%@ Failed to fetch video asset count in vectorDB: %@", buf, 0x16u);
          }
        }

        v19 = 0;
        goto LABEL_44;
      }

      v31 = 0.0;
      if (v25 | v14)
      {
        v32 = v25 - v14;
        if (v32 < 0.0)
        {
          v32 = -v32;
        }

        if (v25 <= v14)
        {
          v33 = v14;
        }

        else
        {
          v33 = v25;
        }

        v31 = v32 / v33;
      }

      if (MediaAnalysisLogLevel() >= 5)
      {
        v34 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v34))
        {
          *buf = 138413314;
          v63 = @"[VSKDBUtil][DeepSyncEligibility|VideoEmbedding]";
          v64 = 2048;
          v65 = v25;
          v66 = 2048;
          v67 = v14;
          v68 = 2048;
          v69 = v31 * 100.0;
          v70 = 2048;
          v71 = a4 * 100.0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v34, "%@ vdb-assets: %ld, photos-assets: %ld -> difference: %.2f%% (threshold: %.2f%%)", buf, 0x34u);
        }
      }

      if (v31 > a4)
      {
LABEL_43:
        v15 = 0;
        v19 = 1;
LABEL_44:

        goto LABEL_45;
      }

      if (+[MADManagedPhotosAsset isMACDReadEnabled])
      {
        v36 = mach_absolute_time();
        v37 = VCPSignPostLog();
        v38 = os_signpost_id_generate(v37);

        v39 = VCPSignPostLog();
        v40 = v39;
        if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v40, OS_SIGNPOST_INTERVAL_BEGIN, v38, "MADVSKDBUtil_VideoDeepSync_MAAssetCount_CoreData", "", buf, 2u);
        }

        v41 = [v7 mad_fetchRequest];
        v42 = [NSSet setWithObject:&off_100294BA8];
        v43 = [v41 fetchAnalysesWithLocalIdentifiers:0 predicate:0 resultTypes:v42];

        v44 = [v43 count];
        v45 = VCPSignPostLog();
        v46 = v45;
        if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, OS_SIGNPOST_INTERVAL_END, v38, "MADVSKDBUtil_VideoDeepSync_MAAssetCount_CoreData", "", buf, 2u);
        }

        if (!v36)
        {
          goto LABEL_64;
        }

        goto LABEL_63;
      }

      v43 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v7];
      if (v43)
      {
        v47 = mach_absolute_time();
        v48 = VCPSignPostLog();
        v49 = os_signpost_id_generate(v48);

        v50 = VCPSignPostLog();
        v51 = v50;
        if (v49 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v51, OS_SIGNPOST_INTERVAL_BEGIN, v49, "MADVSKDBUtil_VideoDeepSync_MAAssetCount", "", buf, 2u);
        }

        v44 = [v43 countOfAssetsWithMediaAnalysisResultsType:82];
        v52 = VCPSignPostLog();
        v53 = v52;
        if (v49 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v53, OS_SIGNPOST_INTERVAL_END, v49, "MADVSKDBUtil_VideoDeepSync_MAAssetCount", "", buf, 2u);
        }

        if (!v47)
        {
          goto LABEL_64;
        }

LABEL_63:
        mach_absolute_time();
        VCPPerformance_LogMeasurement();
LABEL_64:

        if (a5)
        {
          *a5 = v25;
        }

        v54 = 0.0;
        if (v25 | v44)
        {
          v55 = v25 - v44;
          if (v55 < 0.0)
          {
            v55 = -v55;
          }

          if (v25 <= v44)
          {
            v56 = v44;
          }

          else
          {
            v56 = v25;
          }

          v54 = v55 / v56;
        }

        if (MediaAnalysisLogLevel() >= 5)
        {
          v57 = VCPLogToOSLogType[5];
          if (os_log_type_enabled(&_os_log_default, v57))
          {
            *buf = 138413314;
            v63 = @"[VSKDBUtil][DeepSyncEligibility|VideoEmbedding]";
            v64 = 2048;
            v65 = v25;
            v66 = 2048;
            v67 = v44;
            v68 = 2048;
            v69 = v54 * 100.0;
            v70 = 2048;
            v71 = a4 * 100.0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v57, "%@ vdb-assets: %ld, madb-assets: %ld -> difference: %.2f%% (threshold: %.2f%%)", buf, 0x34u);
          }
        }

        v15 = 0;
        v19 = v54 > a4 && v25 > v44;
        goto LABEL_44;
      }

      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_43;
      }

      v29 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v29))
      {
        goto LABEL_43;
      }

      *buf = 138412290;
      v63 = @"[VSKDBUtil][DeepSyncEligibility|VideoEmbedding]";
      v30 = "%@ Failed to retrieve VCPDatabaseWriter";
    }

    else
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_43;
      }

      v29 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v29))
      {
        goto LABEL_43;
      }

      *buf = 138412290;
      v63 = @"[VSKDBUtil][DeepSyncEligibility|VideoEmbedding]";
      v30 = "%@ Failed to retrieve MADVectorDatabase";
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v29, v30, buf, 0xCu);
    goto LABEL_43;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v18 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v18))
    {
      *buf = 138412546;
      v63 = @"[VSKDBUtil][DeepSyncEligibility|VideoEmbedding]";
      v64 = 2112;
      v65 = v15;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "%@ Failed to fetch asset count with processed videoEmbeddingVersion: %@", buf, 0x16u);
    }
  }

  v19 = 0;
LABEL_45:

  return v19;
}

+ (id)_createVideoVSKAssetWithLocalIdentifier:(id)a3 analysisHeader:(id)a4 analysisResults:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v9)
  {
    if (MediaAnalysisLogLevel() < 6)
    {
      goto LABEL_10;
    }

    v16 = VCPLogToOSLogType[6];
    if (!os_log_type_enabled(&_os_log_default, v16))
    {
      goto LABEL_10;
    }

    *buf = 138412546;
    v23 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
    v24 = 2112;
    v25 = v7;
    v13 = "%@[%@] Asset has no analysis results in MA DB";
    v14 = v16;
    v15 = 22;
    goto LABEL_9;
  }

  v10 = [v8 vcp_version];
  v11 = MediaAnalysisEmbeddingForwardCompatibleVersion;
  if (v10 < MediaAnalysisEmbeddingForwardCompatibleVersion)
  {
    if (MediaAnalysisLogLevel() < 6)
    {
      goto LABEL_10;
    }

    v12 = VCPLogToOSLogType[6];
    if (!os_log_type_enabled(&_os_log_default, v12))
    {
      goto LABEL_10;
    }

    *buf = 138413058;
    v23 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
    v24 = 2112;
    v25 = v7;
    v26 = 1024;
    LODWORD(v27[0]) = [v8 vcp_version];
    WORD2(v27[0]) = 1024;
    *(v27 + 6) = v11;
    v13 = "%@[%@] Asset analysis version %d < forward compatible version (%d)";
    v14 = v12;
    v15 = 34;
LABEL_9:
    _os_log_impl(&_mh_execute_header, &_os_log_default, v14, v13, buf, v15);
LABEL_10:
    v17 = 0;
    goto LABEL_16;
  }

  v21 = 0;
  v17 = [VSKAsset mad_videoAssetWithLocalIdentifier:v7 mediaAnalysisResults:v9 error:&v21];
  v18 = v21;
  if (!v17 && MediaAnalysisLogLevel() >= 6)
  {
    v19 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v19))
    {
      *buf = 138412802;
      v23 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
      v24 = 2112;
      v25 = v7;
      v26 = 2112;
      v27[0] = v18;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "%@[%@] Failed to create VSKAsset: %@", buf, 0x20u);
    }
  }

LABEL_16:

  return v17;
}

+ (int)_handleAssetsMissingVideoEmbedding:(id)a3 photoLibrary:(id)a4 cancelBlock:(id)a5
{
  v82 = a3;
  v7 = a4;
  v83 = a5;
  v78 = v7;
  v81 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v7];
  if (v81)
  {
    v77 = [MADVectorDatabaseManager sharedDatabaseWithPhotoLibrary:v7];
    if (!v77)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v12 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v12))
        {
          *buf = 138412290;
          v100 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "%@ Failed to retrieve MADVectorDatabase", buf, 0xCu);
        }
      }

      v11 = -18;
      goto LABEL_89;
    }

    v8 = [v82 count];
    if (+[MADManagedPhotosAsset isMACDReadEnabled])
    {
      v9 = [v7 mad_fetchRequest];
      v79 = [v9 fetchAnalysesWithLocalIdentifiers:v82 predicate:0];
    }

    else
    {
      v79 = +[NSMutableDictionary dictionary];
      [v81 queryHeadersForAssets:v82 analyses:?];
    }

    v13 = [v79 count];
    if (MediaAnalysisLogLevel() >= 6)
    {
      v14 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v14))
      {
        *buf = 138412802;
        v100 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
        v101 = 2048;
        v102 = v13;
        v103 = 2048;
        v104 = v8;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "%@ Fetched %lu corresponding asset records from MA DB out of %lu processed assets from Photos", buf, 0x20u);
      }
    }

    if (+[MADManagedPhotosAsset isMACDReadEnabled])
    {
      v15 = [v7 mad_fetchRequest];
      v80 = [v15 fetchAnalysesWithLocalIdentifiers:v82 predicate:0];
    }

    else
    {
      v96 = 0;
      v11 = [v81 queryAnalysisResultsForAssets:v82 results:&v96];
      v80 = v96;
      if (v11)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v16 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v16))
          {
            *buf = 138412546;
            v100 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
            v101 = 2048;
            v102 = v8;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "%@ Failed to fetch results for %lu processed assets from MA DB", buf, 0x16u);
          }
        }

        goto LABEL_88;
      }
    }

    v17 = [v80 count];
    if (MediaAnalysisLogLevel() >= 6)
    {
      v18 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v18))
      {
        *buf = 138412802;
        v100 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
        v101 = 2048;
        v102 = v17;
        v103 = 2048;
        v104 = v8;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "%@ Fetched %lu corresponding result records from MA DB out of %lu processed assets from Photos", buf, 0x20u);
      }
    }

    if (v83 && v83[2]())
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v19 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v19))
        {
          *buf = 138412290;
          v100 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "%@ Cancelled during handle missing video embeddings", buf, 0xCu);
        }
      }

      v11 = -128;
      goto LABEL_88;
    }

    v20 = +[VCPWatchdog sharedWatchdog];
    [v20 pet];

    v95 = 0;
    v73 = [v77 fetchAssetsWithLocalIdentifiers:v82 embeddingType:2 error:&v95];
    v71 = v95;
    if (v71)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v21 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v21))
        {
          v22 = [v82 count];
          *buf = 138412802;
          v100 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
          v101 = 2048;
          v102 = v22;
          v103 = 2112;
          v104 = v71;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "%@ Failed to fetch %lu processed assets from VSKDB: %@", buf, 0x20u);
        }
      }

      v11 = -18;
      goto LABEL_87;
    }

    v23 = [v73 count];
    if (MediaAnalysisLogLevel() >= 6)
    {
      v24 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v24))
      {
        *buf = 138412802;
        v100 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
        v101 = 2048;
        v102 = v23;
        v103 = 2048;
        v104 = v8;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "%@ Fetched %lu corresponding video embedding assets from VSKDB out of %lu processed assets from Photos", buf, 0x20u);
      }
    }

    v25 = +[NSMutableSet set];
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v26 = v73;
    v27 = [v26 countByEnumeratingWithState:&v91 objects:v98 count:16];
    if (v27)
    {
      v28 = *v92;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v92 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v30 = [*(*(&v91 + 1) + 8 * i) mad_photosLocalIdentifier];
          [v25 addObject:v30];
        }

        v27 = [v26 countByEnumeratingWithState:&v91 objects:v98 count:16];
      }

      while (v27);
    }

    v74 = +[NSMutableArray array];
    v70 = +[NSMutableArray array];
    v72 = +[NSMutableArray array];
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v31 = v82;
    obj = v31;
    v32 = [v31 countByEnumeratingWithState:&v87 objects:v97 count:16];
    if (v32)
    {
      v11 = 0;
      v34 = *v88;
      type = VCPLogToOSLogType[3];
      v75 = VCPLogToOSLogType[4];
      *&v33 = 138412290;
      v68 = v33;
      while (2)
      {
        for (j = 0; j != v32; j = j + 1)
        {
          if (*v88 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v36 = *(*(&v87 + 1) + 8 * j);
          v37 = objc_autoreleasePoolPush();
          if (v83 && v83[2]())
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
            {
              *buf = v68;
              v100 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Cancelled during handle missing video embeddings in processedAssetsInPhotos", buf, 0xCu);
            }

            v38 = 0;
            v11 = -128;
          }

          else
          {
            v39 = +[VCPWatchdog sharedWatchdog];
            [v39 pet];

            v40 = objc_opt_class();
            v41 = [v79 objectForKeyedSubscript:v36];
            v42 = [v80 objectForKeyedSubscript:v36];
            v43 = [v40 _createVideoVSKAssetWithLocalIdentifier:v36 analysisHeader:v41 analysisResults:v42];

            v44 = [v25 containsObject:v36];
            v45 = v44;
            if (v43)
            {
              if ((v44 & 1) == 0)
              {
                if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v75))
                {
                  *buf = 138412546;
                  v100 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
                  v101 = 2112;
                  v102 = v36;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v75, "%@[%@] Asset has valid video embeddings in MA DB but not in VSKDB, should be sync'd from MA DB to VSKDB", buf, 0x16u);
                }

                [v72 addObject:v43];
              }
            }

            else
            {
              if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v75))
              {
                *buf = 138412546;
                v100 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
                v101 = 2112;
                v102 = v36;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v75, "%@[%@] Asset has no valid video embeddings in MA DB, videoEmbeddingVersion should be reset", buf, 0x16u);
              }

              [v74 addObject:v36];
              if (v45)
              {
                if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v75))
                {
                  *buf = 138412546;
                  v100 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
                  v101 = 2112;
                  v102 = v36;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v75, "%@[%@] Asset in VSKDB but has no valid video embeddings in MA DB, should be removed from VSKDB", buf, 0x16u);
                }

                [v70 addObject:v36];
              }
            }

            v38 = 1;
          }

          objc_autoreleasePoolPop(v37);
          if (!v38)
          {
            v50 = obj;
            goto LABEL_85;
          }
        }

        v31 = obj;
        v32 = [obj countByEnumeratingWithState:&v87 objects:v97 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }
    }

    v46 = v74;
    if ([v72 count])
    {
      if (MediaAnalysisLogLevel() >= 5)
      {
        v47 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v47))
        {
          v48 = [v72 count];
          *buf = 138412546;
          v100 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
          v101 = 2048;
          v102 = v48;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v47, "%@ Adding %lu assets to VSKDB ...", buf, 0x16u);
        }
      }

      v86 = 0;
      v11 = [v77 insertOrReplaceAssetsEmbeddings:v72 error:{&v86, v68}];
      v49 = v86;
      v50 = v49;
      if (v11)
      {
        if (MediaAnalysisLogLevel() < 3)
        {
          goto LABEL_85;
        }

        v51 = VCPLogToOSLogType[3];
        if (!os_log_type_enabled(&_os_log_default, v51))
        {
          goto LABEL_85;
        }

        *buf = 138412546;
        v100 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
        v101 = 2112;
        v102 = v50;
        v52 = "%@ Failed to add embeddings from VSKDB: %@";
        goto LABEL_114;
      }

      v46 = v74;
    }

    if ([v46 count])
    {
      if (MediaAnalysisLogLevel() >= 5)
      {
        v54 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v54))
        {
          v55 = [v46 count];
          *buf = 138412802;
          v100 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
          v101 = 2048;
          v102 = v55;
          v103 = 2112;
          v104 = v46;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v54, "%@ Resetting videoEmbeddingVersion for %lu assets: %@", buf, 0x20u);
        }
      }

      v56 = mach_absolute_time();
      v57 = VCPSignPostLog();
      v58 = os_signpost_id_generate(v57);

      v59 = VCPSignPostLog();
      v60 = v59;
      if (v58 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v60, OS_SIGNPOST_INTERVAL_BEGIN, v58, "MADVSKDBUtil_VideoDeepSync_ResetVersion", "", buf, 2u);
      }

      v85 = 0;
      v61 = [v78 resetStateForMediaProcessingTaskID:1 assetIdentifiers:v74 resetOptions:2048 error:&v85];
      v50 = v85;
      v62 = VCPSignPostLog();
      v63 = v62;
      if (v58 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v62))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v63, OS_SIGNPOST_INTERVAL_END, v58, "MADVSKDBUtil_VideoDeepSync_ResetVersion", "", buf, 2u);
      }

      if (v56)
      {
        mach_absolute_time();
        VCPPerformance_LogMeasurement();
      }

      if ((v61 & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v66 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v66))
          {
            v67 = [v74 count];
            *buf = 138412802;
            v100 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
            v101 = 2048;
            v102 = v67;
            v103 = 2112;
            v104 = v50;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v66, "%@ Failed to reset imageEmbeddingVersion for %lu assets: %@", buf, 0x20u);
          }
        }

        v11 = -18;
        goto LABEL_85;
      }
    }

    if (![v70 count])
    {
      v11 = 0;
      goto LABEL_86;
    }

    if (MediaAnalysisLogLevel() >= 5)
    {
      v64 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v64))
      {
        v65 = [v70 count];
        *buf = 138412802;
        v100 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
        v101 = 2048;
        v102 = v65;
        v103 = 2112;
        v104 = v70;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v64, "%@ Deleting %lu assets from VSKDB ... %@", buf, 0x20u);
      }
    }

    v84 = 0;
    v11 = [v77 removeEmbeddingsWithLocalIdentifiers:v70 embeddingType:2 error:&v84];
    v50 = v84;
    if (!v11 || MediaAnalysisLogLevel() < 3 || (v51 = VCPLogToOSLogType[3], !os_log_type_enabled(&_os_log_default, v51)))
    {
LABEL_85:

LABEL_86:
LABEL_87:

LABEL_88:
LABEL_89:

      goto LABEL_90;
    }

    *buf = 138412546;
    v100 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
    v101 = 2112;
    v102 = v50;
    v52 = "%@ Failed to remove embeddings from VSKDB: %@";
LABEL_114:
    _os_log_impl(&_mh_execute_header, &_os_log_default, v51, v52, buf, 0x16u);
    goto LABEL_85;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v10 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      *buf = 138412290;
      v100 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "%@ Failed to retrieve VCPDatabaseWriter", buf, 0xCu);
    }
  }

  v11 = -18;
LABEL_90:

  return v11;
}

+ (id)_assetsWithoutValidVideoEmbeddingVersionInPhotoLibrary:(id)a3 withinProcessedAssetsInVDB:(id)a4
{
  v5 = a3;
  v6 = a4;
  v25 = v5;
  v27 = v6;
  v26 = [PHAsset vcp_fetchOptionsForLibrary:v5 forTaskID:1];
  v28 = [PHAsset fetchAssetsWithLocalIdentifiers:v6 options:v26];
  v7 = [v28 count];
  if (MediaAnalysisLogLevel() >= 6)
  {
    v8 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v8))
    {
      *buf = 138412802;
      v35 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
      v36 = 2048;
      v37 = v7;
      v38 = 2048;
      v39 = [v6 count];
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "%@ Fetched %lu corresponding assets from Photos out of %lu assets from VSKDB", buf, 0x20u);
    }
  }

  v9 = +[NSMutableSet set];
  v10 = 0;
  v11 = MediaAnalysisEmbeddingForwardCompatibleVersion;
  while (v10 < [v28 count])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = [v28 objectAtIndexedSubscript:v10];
    v14 = [v13 mediaAnalysisProperties];
    v15 = v11 > [v14 videoEmbeddingVersion];

    if (!v15)
    {
      v16 = [v13 localIdentifier];
      [v9 addObject:v16];
    }

    objc_autoreleasePoolPop(v12);
    ++v10;
  }

  v17 = +[NSMutableArray array];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = v27;
  v19 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v19)
  {
    v20 = *v30;
    v21 = VCPLogToOSLogType[4];
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v29 + 1) + 8 * i);
        if (([v9 containsObject:v23] & 1) == 0)
        {
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v21))
          {
            *buf = 138412546;
            v35 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
            v36 = 2112;
            v37 = v23;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "%@[%@] Asset not exist or has incompatible videoEmbeddingVersion in Photos, should be removed from VSKDB", buf, 0x16u);
          }

          [v17 addObject:v23];
        }
      }

      v19 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v19);
  }

  return v17;
}

+ (int)_deepSyncVideoEmbeddingsWithPhotoLibrary:(id)a3 videoVSKAssetCount:(unint64_t)a4 cancelBlock:(id)a5
{
  v99 = a3;
  v100 = a5;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v6 = &_os_log_default;
    v7 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      *buf = 138412290;
      v110 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "%@ Starting ...", buf, 0xCu);
    }
  }

  v97 = [MADVectorDatabaseManager sharedDatabaseWithPhotoLibrary:v99];
  if (v97)
  {
    v93 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v99];
    if (!v93)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v25 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v25))
        {
          *buf = 138412290;
          v110 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "%@ Failed to retrieve VCPDatabaseWriter", buf, 0xCu);
        }
      }

      v9 = -18;
      goto LABEL_41;
    }

    if (v100 && v100[2]())
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v8 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v8))
        {
          *buf = 138412290;
          v110 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "%@ Cancelled before PhotosLoop", buf, 0xCu);
        }
      }

      v9 = -128;
LABEL_41:
      v98 = v9;
LABEL_142:

      goto LABEL_143;
    }

    v11 = +[VCPWatchdog sharedWatchdog];
    [v11 pet];

    if (MediaAnalysisLogLevel() >= 6)
    {
      v12 = &_os_log_default;
      v13 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v13))
      {
        *buf = 138412290;
        v110 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "%@ Stage 1 - starting PhotosLoop", buf, 0xCu);
      }
    }

    v86 = mach_absolute_time();
    v14 = VCPSignPostLog();
    spid = os_signpost_id_generate(v14);

    v15 = VCPSignPostLog();
    v16 = v15;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, spid, "MADVSKDBUtil_VideoDeepSync_PhotosLoop", "", buf, 2u);
    }

    v87 = [PHMediaProcessingAlgorithmVersionProvider mad_sharedVideoEmbeddingVersionProviderWithPhotoLibrary:v99];
    v17 = mach_absolute_time();
    v18 = VCPSignPostLog();
    v19 = os_signpost_id_generate(v18);

    v20 = VCPSignPostLog();
    v21 = v20;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "MADVSKDBUtil_VideoDeepSync_PhotosLoop_FetchProcessedAssets", "", buf, 2u);
    }

    v107 = 0;
    v95 = [v99 fetchProcessedAssetsForMediaProcessingTaskID:1 priority:0 algorithmVersion:v87 sceneConfidenceThreshold:&v107 error:0.0];
    v90 = v107;
    v22 = VCPSignPostLog();
    v23 = v22;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_END, v19, "MADVSKDBUtil_VideoDeepSync_PhotosLoop_FetchProcessedAssets", "", buf, 2u);
    }

    if (v17)
    {
      mach_absolute_time();
      VCPPerformance_LogMeasurement();
    }

    if (v90)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v24 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v24))
        {
          *buf = 138412546;
          v110 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
          v111 = 2112;
          v112 = v90;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "%@ Failed to fetch processed assets from Photos: %@", buf, 0x16u);
        }
      }

      v98 = -18;
LABEL_141:

      goto LABEL_142;
    }

    v26 = [v95 count];
    if (MediaAnalysisLogLevel() >= 6)
    {
      v27 = &_os_log_default;
      v28 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v28))
      {
        *buf = 138412546;
        v110 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
        v111 = 2048;
        v112 = v26;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v28, "%@ Fetched %lu assets with up-to-date videoEmbeddingVersion from Photos", buf, 0x16u);
      }
    }

    v94 = +[NSMutableArray array];
    if (!v26)
    {
LABEL_71:
      v43 = VCPSignPostLog();
      v44 = v43;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, OS_SIGNPOST_INTERVAL_END, spid, "MADVSKDBUtil_VideoDeepSync_PhotosLoop", "", buf, 2u);
      }

      if (v86)
      {
        mach_absolute_time();
        VCPPerformance_LogMeasurement();
      }

      if (v100 && v100[2]())
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v45 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v45))
          {
            *buf = 138412290;
            v110 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
            _os_log_impl(&_mh_execute_header, &_os_log_default, v45, "%@ Cancelled before VSKLoop", buf, 0xCu);
          }
        }

        v98 = -128;
      }

      else
      {
        v46 = +[VCPWatchdog sharedWatchdog];
        [v46 pet];

        if (MediaAnalysisLogLevel() >= 6)
        {
          v47 = &_os_log_default;
          v48 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v48))
          {
            *buf = 138412290;
            v110 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
            _os_log_impl(&_mh_execute_header, &_os_log_default, v48, "%@ Stage 2 - starting VSKLoop", buf, 0xCu);
          }
        }

        v82 = mach_absolute_time();
        v49 = VCPSignPostLog();
        v83 = os_signpost_id_generate(v49);

        v50 = VCPSignPostLog();
        v51 = v50;
        if (v83 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v51, OS_SIGNPOST_INTERVAL_BEGIN, v83, "MADVSKDBUtil_VideoDeepSync_VSKLoop", "", buf, 2u);
        }

        if (a4)
        {
          v53 = 0;
          v54 = VCPLogToOSLogType[3];
          typea = VCPLogToOSLogType[6];
          v55 = &_os_log_default;
          v81 = VCPLogToOSLogType[5];
          *&v52 = 138412802;
          v80 = v52;
          while (1)
          {
            v56 = v55;
            v57 = objc_autoreleasePoolPush();
            if (v100 && v100[2]())
            {
              if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(v55, v54))
              {
                *buf = 138412290;
                v110 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
                _os_log_impl(&_mh_execute_header, v55, v54, "%@ Cancelled during VSKLoop", buf, 0xCu);
              }

              v58 = 0;
              v98 = -128;
            }

            else
            {
              v59 = +[VCPWatchdog sharedWatchdog];
              [v59 pet];

              v60 = +[NSMutableArray array];
              v106 = 0;
              spida = [v97 fetchAssetsWithEmbeddingType:2 limit:1000 offset:v53 error:&v106];
              v89 = v106;
              if (v89)
              {
                if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(v56, v54))
                {
                  *buf = 138412546;
                  v110 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
                  v111 = 2112;
                  v112 = v89;
                  _os_log_impl(&_mh_execute_header, v56, v54, "%@ Failed to fetch processed assets from VSKDB: %@", buf, 0x16u);
                }

                v58 = 0;
                v98 = -18;
              }

              else
              {
                v61 = [spida count];
                if (MediaAnalysisLogLevel() >= 6)
                {
                  v62 = v56;
                  if (os_log_type_enabled(v56, typea))
                  {
                    *buf = 138412546;
                    v110 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
                    v111 = 2048;
                    v112 = v61;
                    _os_log_impl(&_mh_execute_header, v56, typea, "%@ Fetched %lu video embedding assets from VSKDB", buf, 0x16u);
                  }
                }

                v104 = 0u;
                v105 = 0u;
                v102 = 0u;
                v103 = 0u;
                v63 = spida;
                v64 = [v63 countByEnumeratingWithState:&v102 objects:v108 count:16];
                if (v64)
                {
                  v65 = *v103;
                  do
                  {
                    for (i = 0; i != v64; i = i + 1)
                    {
                      if (*v103 != v65)
                      {
                        objc_enumerationMutation(v63);
                      }

                      v67 = [*(*(&v102 + 1) + 8 * i) mad_photosLocalIdentifier];
                      [v60 addObject:v67];
                    }

                    v64 = [v63 countByEnumeratingWithState:&v102 objects:v108 count:16];
                  }

                  while (v64);
                }

                v68 = [objc_opt_class() _assetsWithoutValidVideoEmbeddingVersionInPhotoLibrary:v99 withinProcessedAssetsInVDB:v60];
                if ([v68 count])
                {
                  if (MediaAnalysisLogLevel() >= 5)
                  {
                    v69 = v56;
                    v70 = v56;
                    if (os_log_type_enabled(v56, v81))
                    {
                      v71 = [v68 count];
                      *buf = v80;
                      v110 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
                      v111 = 2048;
                      v112 = v71;
                      v113 = 2112;
                      v114[0] = v68;
                      v69 = v56;
                      _os_log_impl(&_mh_execute_header, v56, v81, "%@ Deleting %lu assets from VSKDB ... %@", buf, 0x20u);
                    }
                  }

                  v101 = 0;
                  v72 = [v97 removeEmbeddingsWithLocalIdentifiers:v68 embeddingType:2 error:&v101];
                  v73 = v101;
                  v58 = v72 == 0;
                  if (v72)
                  {
                    if (MediaAnalysisLogLevel() < 3)
                    {
                      v98 = v72;
                    }

                    else
                    {
                      v74 = v56;
                      if (os_log_type_enabled(v56, v54))
                      {
                        *buf = 138412546;
                        v110 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
                        v111 = 2112;
                        v112 = v73;
                        _os_log_impl(&_mh_execute_header, v56, v54, "%@ Failed to remove embeddings from VSKDB: %@", buf, 0x16u);
                      }

                      v98 = v72;
                    }
                  }
                }

                else
                {
                  v58 = 1;
                }
              }

              v55 = v56;
            }

            objc_autoreleasePoolPop(v57);
            if (!v58)
            {
              break;
            }

            v53 += 1000;
            if (v53 >= a4)
            {
              goto LABEL_130;
            }
          }
        }

        else
        {
LABEL_130:
          v75 = VCPSignPostLog();
          v76 = v75;
          if (v83 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v75))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v76, OS_SIGNPOST_INTERVAL_END, v83, "MADVSKDBUtil_VideoDeepSync_VSKLoop", "", buf, 2u);
          }

          if (v82)
          {
            mach_absolute_time();
            VCPPerformance_LogMeasurement();
          }

          if (MediaAnalysisLogLevel() >= 6)
          {
            v77 = &_os_log_default;
            v78 = VCPLogToOSLogType[6];
            if (os_log_type_enabled(&_os_log_default, v78))
            {
              *buf = 138412290;
              v110 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
              _os_log_impl(&_mh_execute_header, &_os_log_default, v78, "%@ Finished", buf, 0xCu);
            }
          }

          v98 = 0;
        }
      }

LABEL_140:

      goto LABEL_141;
    }

    v29 = 0;
    type = VCPLogToOSLogType[3];
    v30 = MediaAnalysisEmbeddingForwardCompatibleVersion;
    v88 = VCPLogToOSLogType[7];
    v31 = &_os_log_default;
    while (1)
    {
      v32 = v31;
      v33 = objc_autoreleasePoolPush();
      if (!v100 || !v100[2]())
      {
        break;
      }

      if (MediaAnalysisLogLevel() >= 3)
      {
        v34 = v31;
        if (os_log_type_enabled(v31, type))
        {
          *buf = 138412290;
          v110 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
          _os_log_impl(&_mh_execute_header, v31, type, "%@ Cancelled during PhotosLoop", buf, 0xCu);
        }

        v98 = -128;
        v35 = 1;
        goto LABEL_67;
      }

      v98 = -128;
      v35 = 1;
LABEL_68:
      objc_autoreleasePoolPop(v33);
      if (v35 != 28 && v35)
      {
        goto LABEL_140;
      }

      ++v29;
      if (!--v26)
      {
        goto LABEL_71;
      }
    }

    v36 = +[VCPWatchdog sharedWatchdog];
    [v36 pet];

    v31 = [v95 objectAtIndexedSubscript:v29];
    v37 = [v31 mediaAnalysisProperties];
    v38 = [v37 videoEmbeddingVersion];

    if (v30 > v38)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v39 = v32;
        if (os_log_type_enabled(v32, v88))
        {
          v40 = [v31 localIdentifier];
          *buf = 138413058;
          v110 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
          v111 = 2112;
          v112 = v40;
          v113 = 1024;
          LODWORD(v114[0]) = v38;
          WORD2(v114[0]) = 1024;
          *(v114 + 6) = v30;
          _os_log_impl(&_mh_execute_header, v32, v88, "%@[%@] Asset videoEmbeddingVersion %d < forward compatible version (%d)", buf, 0x22u);
        }
      }

      v35 = 28;
      goto LABEL_67;
    }

    v41 = [v31 localIdentifier];
    [v94 addObject:v41];

    if ([v94 count] > 0x3E7 || v26 == 1)
    {
      v42 = [objc_opt_class() _handleAssetsMissingVideoEmbedding:v94 photoLibrary:v99 cancelBlock:v100];
      if (v42)
      {
        v35 = 1;
        v98 = v42;
LABEL_67:

        v31 = v32;
        goto LABEL_68;
      }

      [v94 removeAllObjects];
    }

    v35 = 0;
    goto LABEL_67;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v10 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      *buf = 138412290;
      v110 = @"[VSKDBUtil][DeepSync|VideoEmbedding]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "%@ Failed to retrieve MADVectorDatabase", buf, 0xCu);
    }
  }

  v98 = -18;
LABEL_143:

  return v98;
}

+ (int)syncWithPhotoLibrary:(id)a3 ignoreExpiration:(BOOL)a4 threshold:(double)a5 cancelBlock:(id)a6
{
  v8 = a4;
  v9 = a3;
  v10 = a6;
  if ((+[VCPVideoCNNAnalyzer isMUBackboneEnabled]& 1) != 0)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v11 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v11))
      {
        *buf = 138412290;
        v68 = @"[VSKDBUtil][Sync]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "%@ Starting ...", buf, 0xCu);
      }
    }

    v12 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v9];
    if (!v12)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v17 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v17))
        {
          *buf = 138412290;
          v68 = @"[VSKDBUtil][Sync]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "%@ Failed to retrieve VCPDatabaseWriter", buf, 0xCu);
        }
      }

      v16 = -18;
      goto LABEL_121;
    }

    if (+[MADManagedKeyValueStore isMACDReadEnabled])
    {
      v13 = [v9 mad_fetchRequest];
      v14 = [v13 dataStoreValueForKey:@"VectorDatabaseDeepSyncTimestamp"];
    }

    else
    {
      v14 = [v12 valueForKey:@"VectorDatabaseDeepSyncTimestamp"];
    }

    if (v14)
    {
      [NSDate dateWithTimeIntervalSinceReferenceDate:v14];
    }

    else
    {
      +[NSDate distantPast];
    }
    v61 = ;
    [v61 timeIntervalSinceNow];
    v19 = v18 >= -2592000.0 || v8;
    if (v19)
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v20 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v20))
        {
          v21 = @"NO";
          *buf = 138412802;
          v68 = @"[VSKDBUtil][Sync]";
          v69 = 2112;
          v70 = v61;
          if (v8)
          {
            v21 = @"YES";
          }

          v71 = 2112;
          v72 = v21;
          v22 = "%@ Most recent deep-sync at %@ (ignore expiration: %@)";
          v23 = v20;
          v24 = 32;
          goto LABEL_32;
        }
      }
    }

    else if (MediaAnalysisLogLevel() >= 5)
    {
      v25 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v25))
      {
        *buf = 138412546;
        v68 = @"[VSKDBUtil][Sync]";
        v69 = 2112;
        v70 = v61;
        v22 = "%@ Best-By date expired (%@)";
        v23 = v25;
        v24 = 22;
LABEL_32:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v23, v22, buf, v24);
      }
    }

    if (v10 && v10[2](v10))
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_68;
      }

      v26 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v26))
      {
        goto LABEL_68;
      }

      *buf = 138412290;
      v68 = @"[VSKDBUtil][Sync]";
      v27 = "%@ Cancelled before image embedding deep sync";
LABEL_67:
      _os_log_impl(&_mh_execute_header, &_os_log_default, v26, v27, buf, 0xCu);
LABEL_68:
      v16 = -128;
LABEL_120:

LABEL_121:
      goto LABEL_122;
    }

    v28 = +[VCPWatchdog sharedWatchdog];
    [v28 pet];

    v66 = 0;
    if (v19 && ![objc_opt_class() _shouldPerformImageEmbeddingDeepSyncWithPhotoLibrary:v9 threshold:&v66 imageVSKAssetCount:a5])
    {
      v30 = 0;
      v29 = 0;
      if (!v10)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v29 = [objc_opt_class() _deepSyncImageEmbeddingsWithPhotoLibrary:v9 imageVSKAssetCount:v66 cancelBlock:v10];
      v30 = 1;
      if (!v10)
      {
        goto LABEL_47;
      }
    }

    if (v10[2](v10))
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_68;
      }

      v26 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v26))
      {
        goto LABEL_68;
      }

      *buf = 138412290;
      v68 = @"[VSKDBUtil][Sync]";
      v27 = "%@ Cancelled before video embedding deep sync";
      goto LABEL_67;
    }

LABEL_47:
    v31 = +[VCPWatchdog sharedWatchdog];
    [v31 pet];

    v65 = 0;
    if (v19 && ![objc_opt_class() _shouldPerformVideoEmbeddingDeepSyncWithPhotoLibrary:v9 threshold:&v65 videoVSKAssetCount:a5])
    {
      v33 = 0;
      v32 = 0;
    }

    else
    {
      v32 = [objc_opt_class() _deepSyncVideoEmbeddingsWithPhotoLibrary:v9 videoVSKAssetCount:v65 cancelBlock:v10];
      v33 = 1;
    }

    if (v29)
    {
      v34 = 0;
    }

    else
    {
      v34 = v30;
    }

    if (v32)
    {
      v35 = 0;
    }

    else
    {
      v35 = v33;
    }

    if ((v34 & 1) == 0 && !v35)
    {
      goto LABEL_59;
    }

    if (v10 && v10[2](v10))
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_68;
      }

      v26 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v26))
      {
        goto LABEL_68;
      }

      *buf = 138412290;
      v68 = @"[VSKDBUtil][Sync]";
      v27 = "%@ Cancelled before VSKDB rebuild";
      goto LABEL_67;
    }

    v36 = +[VCPWatchdog sharedWatchdog];
    [v36 pet];

    v59 = mach_absolute_time();
    v37 = VCPSignPostLog();
    spid = os_signpost_id_generate(v37);

    v38 = VCPSignPostLog();
    v39 = v38;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_INTERVAL_BEGIN, spid, "MADVSKDBUtil_DeepSync_VSKRebuild", "", buf, 2u);
    }

    v40 = [MADVectorDatabaseManager sharedDatabaseWithPhotoLibrary:v9];
    v41 = v40;
    if (v40)
    {
      v16 = [v40 rebuildWithForce:1 cancelBlock:v10 extendTimeoutBlock:&stru_100286FE0 totalEmbeddingCount:0];
      if (!v16)
      {
        v53 = VCPSignPostLog();
        v54 = v53;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v54, OS_SIGNPOST_INTERVAL_END, spid, "MADVSKDBUtil_DeepSync_VSKRebuild", "", buf, 2u);
        }

        if (v59)
        {
          mach_absolute_time();
          VCPPerformance_LogMeasurement();
        }

LABEL_59:
        if (v30)
        {
          if (v29 | v32)
          {
            goto LABEL_114;
          }
        }

        else
        {
          if (v29)
          {
            v43 = 0;
          }

          else
          {
            v43 = v33;
          }

          if (v43 != 1 || v32)
          {
LABEL_114:
            if (MediaAnalysisLogLevel() >= 6)
            {
              v57 = VCPLogToOSLogType[6];
              if (os_log_type_enabled(&_os_log_default, v57))
              {
                *buf = 138412290;
                v68 = @"[VSKDBUtil][Sync]";
                _os_log_impl(&_mh_execute_header, &_os_log_default, v57, "%@ Finished", buf, 0xCu);
              }
            }

            if (v29)
            {
              v16 = v29;
            }

            else
            {
              v16 = v32;
            }

            goto LABEL_120;
          }
        }

        v44 = +[NSDate now];
        if (MediaAnalysisLogLevel() >= 5)
        {
          v45 = VCPLogToOSLogType[5];
          if (os_log_type_enabled(&_os_log_default, v45))
          {
            *buf = 138412546;
            v68 = @"[VSKDBUtil][Sync]";
            v69 = 2112;
            v70 = v44;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v45, "%@ Updating latest deep sync date to %@", buf, 0x16u);
          }
        }

        if (+[MADManagedKeyValueStore isMACDPersistEnabled])
        {
          v63[0] = _NSConcreteStackBlock;
          v63[1] = 3221225472;
          v63[2] = sub_100140A9C;
          v63[3] = &unk_100283AD0;
          v64 = v44;
          v62 = 0;
          v46 = [v9 mad_performAnalysisDataStoreChanges:v63 error:&v62];
          v47 = v62;
          v48 = v47;
          if (v46)
          {

LABEL_113:
            goto LABEL_114;
          }

          v16 = [v47 code];
          if (MediaAnalysisLogLevel() >= 3)
          {
            v55 = VCPLogToOSLogType[3];
            if (os_log_type_enabled(&_os_log_default, v55))
            {
              *buf = 138412546;
              v68 = @"[VSKDBUtil][Sync]";
              v69 = 2112;
              v70 = v48;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v55, "%@[MACD] Failed to persist deep sync date: %@", buf, 0x16u);
            }
          }
        }

        else
        {
          [v44 timeIntervalSinceReferenceDate];
          v50 = [v12 setValue:v49 forKey:@"VectorDatabaseDeepSyncTimestamp"];
          v16 = [v12 commit];
          if (v16)
          {
            if (MediaAnalysisLogLevel() >= 3)
            {
              v51 = VCPLogToOSLogType[3];
              if (os_log_type_enabled(&_os_log_default, v51))
              {
                *buf = 138412290;
                v68 = @"[VSKDBUtil][Sync]";
                _os_log_impl(&_mh_execute_header, &_os_log_default, v51, "%@ Failed to persist deep sync date", buf, 0xCu);
              }
            }
          }

          else
          {
            if (!v50)
            {
              goto LABEL_113;
            }

            if (MediaAnalysisLogLevel() >= 3)
            {
              v56 = VCPLogToOSLogType[3];
              if (os_log_type_enabled(&_os_log_default, v56))
              {
                *buf = 138412290;
                v68 = @"[VSKDBUtil][Sync]";
                _os_log_impl(&_mh_execute_header, &_os_log_default, v56, "%@ Failed to persist deep sync date", buf, 0xCu);
              }
            }

            v16 = v50;
          }
        }

        goto LABEL_120;
      }

      if (MediaAnalysisLogLevel() >= 3)
      {
        v42 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v42))
        {
          *buf = 138412290;
          v68 = @"[VSKDBUtil][Sync]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, v42, "%@ Failed to build VSKDB", buf, 0xCu);
        }
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v52 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v52))
        {
          *buf = 138412290;
          v68 = @"[VSKDBUtil][Sync]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, v52, "%@ Failed to retrieve MADVectorDatabase", buf, 0xCu);
        }
      }

      v16 = -18;
    }

    goto LABEL_120;
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v15 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v15))
    {
      *buf = 138412290;
      v68 = @"[VSKDBUtil][Sync]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "%@ Embedding generation disabled, skip deep sync", buf, 0xCu);
    }
  }

  v16 = 0;
LABEL_122:

  return v16;
}

@end