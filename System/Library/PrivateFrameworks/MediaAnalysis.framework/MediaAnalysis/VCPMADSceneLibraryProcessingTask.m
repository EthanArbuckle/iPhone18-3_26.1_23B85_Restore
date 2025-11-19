@interface VCPMADSceneLibraryProcessingTask
+ (id)taskWithPhotoLibraries:(id)a3 cancelBlock:(id)a4 progressHandler:(id)a5 andCompletionHandler:(id)a6;
- (BOOL)run:(id *)a3;
- (VCPMADSceneLibraryProcessingTask)initWithPhotoLibraries:(id)a3 cancelBlock:(id)a4 progressHandler:(id)a5 andCompletionHandler:(id)a6;
- (id)batchWithAnalysisDatabase:(id)a3 allowDownload:(BOOL)a4 cancelBlock:(id)a5;
- (int)_dataMigrationIfNeededForPhotoLibrary:(id)a3 withAnalysisDatabase:(id)a4 andProgress:(id)a5;
- (int)_dataMigrationWithAssets:(id)a3;
- (int)processAllAssetsInPhotoLibrary:(id)a3 withAnalysisDatabase:(id)a4 andProgress:(id)a5;
- (void)dealloc;
@end

@implementation VCPMADSceneLibraryProcessingTask

- (VCPMADSceneLibraryProcessingTask)initWithPhotoLibraries:(id)a3 cancelBlock:(id)a4 progressHandler:(id)a5 andCompletionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = VCPMADSceneLibraryProcessingTask;
  v14 = [(VCPMADPhotosLibraryProcessingTask *)&v21 initWithPhotoLibraries:v10 cancelBlock:v11 progressHandler:v12 andCompletionHandler:v13];
  if (v14 && (+[VCPPreAnalysisRequests asyncCacheRequestIdealDimension](VCPPreAnalysisRequests, "asyncCacheRequestIdealDimension"), +[VCPPreAnalysisRequests asyncLoadSharedPhotoFormatsObjects], v15 = objc_alloc_init(MADSceneResources), v16 = *(v14 + 44), *(v14 + 44) = v15, v16, !*(v14 + 44)))
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v18 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v18))
      {
        v19 = objc_opt_class();
        *buf = 138412290;
        v23 = v19;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "[%@] Failed to create MADSceneResources", buf, 0xCu);
      }
    }

    v17 = 0;
  }

  else
  {
    v17 = v14;
  }

  return v17;
}

+ (id)taskWithPhotoLibraries:(id)a3 cancelBlock:(id)a4 progressHandler:(id)a5 andCompletionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [objc_alloc(objc_opt_class()) initWithPhotoLibraries:v9 cancelBlock:v10 progressHandler:v11 andCompletionHandler:v12];

  return v13;
}

- (void)dealloc
{
  v3 = +[VNSession globalSession];
  [v3 releaseCachedResources];

  MediaAnalysisPurgeResources();
  v4.receiver = self;
  v4.super_class = VCPMADSceneLibraryProcessingTask;
  [(VCPMADSceneLibraryProcessingTask *)&v4 dealloc];
}

- (id)batchWithAnalysisDatabase:(id)a3 allowDownload:(BOOL)a4 cancelBlock:(id)a5
{
  v5 = [VCPMADSceneAssetBatch batchWithAnalysisDatabase:a3 allowDownload:a4 cancelBlock:a5 resources:*(&self->super._progressHandler + 4)];

  return v5;
}

- (int)_dataMigrationWithAssets:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() name];
  v6 = [NSString stringWithFormat:@"[%@][Embedding][Migration]", v5];

  v29.receiver = self;
  v29.super_class = VCPMADSceneLibraryProcessingTask;
  v7 = [(VCPMADSceneLibraryProcessingTask *)&v29 cancelBlock];
  if (v7 && (v28.receiver = self, v28.super_class = VCPMADSceneLibraryProcessingTask, [(VCPMADSceneLibraryProcessingTask *)&v28 cancelBlock], v8 = objc_claimAutoreleasedReturnValue(), v9 = v8[2](), v8, v7, v9))
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v10 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        *buf = 138412290;
        v31 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "%@ Processing cancelled", buf, 0xCu);
      }
    }

    v11 = -128;
  }

  else
  {
    v12 = +[VCPWatchdog sharedWatchdog];
    [v12 pet];

    v13 = VCPSignPostLog();
    v14 = os_signpost_id_generate(v13);

    v15 = VCPSignPostLog();
    v16 = v15;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "VCPMADPhotosLibraryProcessingTask_Migration_ProcessingBatch", "", buf, 2u);
    }

    v17 = [v4 firstObject];
    v18 = [v17 photoLibrary];

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10011E10C;
    v26[3] = &unk_100283210;
    v27 = v4;
    v25 = 0;
    v19 = [v18 performChangesAndWait:v26 error:&v25];
    v20 = v25;
    if (v19)
    {
      v21 = VCPSignPostLog();
      v22 = v21;
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_END, v14, "VCPMADPhotosLibraryProcessingTask_Migration_ProcessingBatch", "", buf, 2u);
      }

      v11 = 0;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v23 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v23))
        {
          *buf = 138412546;
          v31 = v6;
          v32 = 2112;
          v33 = v20;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "%@ Failed to migrate Image embedding - %@", buf, 0x16u);
        }
      }

      v11 = -18;
    }
  }

  return v11;
}

- (int)_dataMigrationIfNeededForPhotoLibrary:(id)a3 withAnalysisDatabase:(id)a4 andProgress:(id)a5
{
  v68 = a3;
  v66 = a4;
  v64 = a5;
  v8 = [objc_opt_class() name];
  v67 = [NSString stringWithFormat:@"[%@][Embedding][Migration]", v8];

  if (!+[MADManagedKeyValueStore isMACDReadEnabled])
  {
    v62 = VCPKeyValueSceneImageEmbeddingMigrationTimestamp;
    v10 = [v66 valueForKey:?];
    if (!v10)
    {
      goto LABEL_3;
    }

LABEL_10:
    v16 = [NSDate dateWithTimeIntervalSinceReferenceDate:v10];
    if (MediaAnalysisLogLevel() >= 6)
    {
      v17 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v17))
      {
        v18 = +[VCPLogManager dateFormatterDateTime];
        v19 = [v18 stringFromDate:v16];
        *buf = 138412546;
        v78 = v67;
        v79 = 2112;
        v80 = v19;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "%@ Image embedding to Scene Processing migrated (%@)", buf, 0x16u);
      }
    }

    LODWORD(v15) = 0;
    goto LABEL_68;
  }

  v9 = [v68 mad_fetchRequest];
  v62 = VCPKeyValueSceneImageEmbeddingMigrationTimestamp;
  v10 = [v9 dataStoreValueForKey:?];

  if (v10)
  {
    goto LABEL_10;
  }

LABEL_3:
  v76.receiver = self;
  v76.super_class = VCPMADSceneLibraryProcessingTask;
  v11 = [(VCPMADSceneLibraryProcessingTask *)&v76 cancelBlock];
  if (v11 && (v75.receiver = self, v75.super_class = VCPMADSceneLibraryProcessingTask, [(VCPMADSceneLibraryProcessingTask *)&v75 cancelBlock], v12 = objc_claimAutoreleasedReturnValue(), v13 = v12[2](), v12, v11, v13))
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v14 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v14))
      {
        *buf = 138412290;
        v78 = v67;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "%@ Processing cancelled", buf, 0xCu);
      }
    }

    LODWORD(v15) = -128;
  }

  else
  {
    v20 = +[VCPWatchdog sharedWatchdog];
    [v20 pet];

    v60 = [PHMediaProcessingAlgorithmVersionProvider mad_sharedImageEmbeddingVersionProviderWithPhotoLibrary:v68];
    v21 = VCPSignPostLog();
    v22 = os_signpost_id_generate(v21);

    v23 = VCPSignPostLog();
    v24 = v23;
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "VCPMADPhotosLibraryProcessingTask_Migration_FetchAssets", "", buf, 2u);
    }

    v25 = +[MADStateHandler sharedStateHandler];
    [v25 addBreadcrumb:{@"%@ Fetching for Scene Embedding migration", v67}];

    v74 = 0;
    v65 = [v68 fetchAssetsForMediaProcessingTaskID:objc_msgSend(objc_opt_class() priority:"taskID") algorithmVersion:0 sceneConfidenceThreshold:v60 error:{&v74, 0.0}];
    v61 = v74;
    v26 = VCPSignPostLog();
    v27 = v26;
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_END, v22, "VCPMADPhotosLibraryProcessingTask_Migration_FetchAssets", "", buf, 2u);
    }

    if (v61)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v28 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v28))
        {
          *buf = 138412546;
          v78 = v67;
          v79 = 2112;
          v80 = v61;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v28, "%@ Failed to fetch assets: %@", buf, 0x16u);
        }
      }

      LODWORD(v15) = -18;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v29 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v29))
        {
          v30 = [v65 count];
          *buf = 138412546;
          v78 = v67;
          v79 = 1024;
          LODWORD(v80) = v30;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v29, "%@ Fetched %d assets", buf, 0x12u);
        }
      }

      v31 = +[MADStateHandler sharedStateHandler];
      [v31 addBreadcrumb:{@"%@ Fetched for Scene Embedding migration with %d assets", v67, objc_msgSend(v65, "count")}];

      v73.receiver = self;
      v73.super_class = VCPMADSceneLibraryProcessingTask;
      v32 = [(VCPMADSceneLibraryProcessingTask *)&v73 cancelBlock];
      if (v32 && (v72.receiver = self, v72.super_class = VCPMADSceneLibraryProcessingTask, [(VCPMADSceneLibraryProcessingTask *)&v72 cancelBlock], v33 = objc_claimAutoreleasedReturnValue(), v34 = v33[2](), v33, v32, v34))
      {
        if (MediaAnalysisLogLevel() >= 5)
        {
          v35 = VCPLogToOSLogType[5];
          if (os_log_type_enabled(&_os_log_default, v35))
          {
            *buf = 138412290;
            v78 = v67;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v35, "%@ Processing cancelled", buf, 0xCu);
          }
        }

        LODWORD(v15) = -128;
      }

      else
      {
        v36 = +[VCPWatchdog sharedWatchdog];
        [v36 pet];

        v37 = VCPSignPostLog();
        spid = os_signpost_id_generate(v37);

        v38 = VCPSignPostLog();
        v15 = v38;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPMADPhotosLibraryProcessingTask_Migration_Processing", "", buf, 2u);
        }

        v63 = +[NSMutableArray array];
        [v64 setTotalUnitCount:{objc_msgSend(v65, "count")}];
        v39 = 0;
        type = VCPLogToOSLogType[5];
        v40 = MediaAnalysisChangedVersion70;
        while (v39 < [v65 count])
        {
          v41 = objc_autoreleasePoolPush();
          v71.receiver = self;
          v71.super_class = VCPMADSceneLibraryProcessingTask;
          v42 = [(VCPMADSceneLibraryProcessingTask *)&v71 cancelBlock];
          if (v42 && (v70.receiver = self, v70.super_class = VCPMADSceneLibraryProcessingTask, [(VCPMADSceneLibraryProcessingTask *)&v70 cancelBlock], v43 = objc_claimAutoreleasedReturnValue(), v44 = v43[2](), v43, v42, v44))
          {
            if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
            {
              *buf = 138412290;
              v78 = v67;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Processing cancelled", buf, 0xCu);
            }

            v45 = 0;
            LODWORD(v15) = -128;
          }

          else
          {
            v46 = +[VCPWatchdog sharedWatchdog];
            [v46 pet];

            v47 = [v65 objectAtIndexedSubscript:v39];
            v48 = [v47 mediaAnalysisProperties];
            v49 = v40 == [v48 mediaAnalysisImageVersion];

            if (!v49)
            {
              goto LABEL_51;
            }

            [v63 addObject:v47];
            if ([v63 count] < 0x64)
            {
              goto LABEL_51;
            }

            v50 = objc_autoreleasePoolPush();
            v51 = [(VCPMADSceneLibraryProcessingTask *)self _dataMigrationWithAssets:v63];
            if (!v51)
            {
              [v63 removeAllObjects];
              [v64 setCompletedUnitCount:{objc_msgSend(v63, "count") + objc_msgSend(v64, "completedUnitCount")}];
            }

            objc_autoreleasePoolPop(v50);
            if (v51)
            {
              v45 = 0;
              LODWORD(v15) = v51;
            }

            else
            {
LABEL_51:
              v45 = 1;
            }
          }

          objc_autoreleasePoolPop(v41);
          ++v39;
          if ((v45 & 1) == 0)
          {
            goto LABEL_66;
          }
        }

        if (![v63 count])
        {
          goto LABEL_59;
        }

        v52 = objc_autoreleasePoolPush();
        LODWORD(v15) = [(VCPMADSceneLibraryProcessingTask *)self _dataMigrationWithAssets:v63];
        if (!v15)
        {
          [v63 removeAllObjects];
          [v64 setCompletedUnitCount:{objc_msgSend(v63, "count") + objc_msgSend(v64, "completedUnitCount")}];
        }

        objc_autoreleasePoolPop(v52);
        if (!v15)
        {
LABEL_59:
          v53 = +[NSDate now];
          [v53 timeIntervalSinceReferenceDate];
          v55 = v54;

          if (+[MADManagedKeyValueStore isMACDPersistEnabled])
          {
            v69[0] = _NSConcreteStackBlock;
            v69[1] = 3221225472;
            v69[2] = sub_10011EE84;
            v69[3] = &unk_100282F90;
            v69[4] = v55;
            [v68 mad_performAnalysisDataStoreChanges:v69 error:0];
          }

          else
          {
            [v66 setValue:v55 forKey:v62];
            [v66 commit];
          }

          v56 = VCPSignPostLog();
          v15 = v56;
          if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v56))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, spid, "VCPMADPhotosLibraryProcessingTask_Migration_Processing", "", buf, 2u);
          }

          LODWORD(v15) = 0;
        }

LABEL_66:
      }
    }
  }

LABEL_68:

  return v15;
}

- (int)processAllAssetsInPhotoLibrary:(id)a3 withAnalysisDatabase:(id)a4 andProgress:(id)a5
{
  v51 = a3;
  v50 = a4;
  v8 = a5;
  if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
  {
    v9 = 3;
  }

  else
  {
    v9 = 1;
  }

  [v8 setTotalUnitCount:v9];
  v10 = [v8 vcp_childWithPendingUnitCount:1];
  v55.receiver = self;
  v55.super_class = VCPMADSceneLibraryProcessingTask;
  v11 = [(VCPMADPhotosLibraryProcessingTask *)&v55 processAllAssetsInPhotoLibrary:v51 withAnalysisDatabase:v50 andProgress:v10];

  if (!v11)
  {
    if (!+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
    {
      v16 = 0;
LABEL_43:
      v11 = v16;
      goto LABEL_44;
    }

    context = objc_autoreleasePoolPush();
    v12 = [objc_opt_class() name];
    v49 = [NSString stringWithFormat:@"[%@][Embedding]", v12];

    if (MediaAnalysisLogLevel() >= 5)
    {
      v13 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v13))
      {
        *buf = 138412290;
        v57 = v49;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "%@ Evaluating all assets in Photo Library", buf, 0xCu);
      }
    }

    v14 = [v8 vcp_childWithPendingUnitCount:1];
    v11 = [(VCPMADSceneLibraryProcessingTask *)self _dataMigrationIfNeededForPhotoLibrary:v51 withAnalysisDatabase:v50 andProgress:v14];

    if (v11)
    {
      v15 = 0;
      v16 = 0;
    }

    else
    {
      v48 = [PHMediaProcessingAlgorithmVersionProvider mad_sharedImageEmbeddingVersionProviderWithPhotoLibrary:v51];
      v17 = [(VCPMADSceneLibraryProcessingTask *)self assetPriorities];
      v46 = [v8 vcp_childWithPendingUnitCount:{objc_msgSend(v17, "count")}];
      v16 = 0;
      v18 = 1;
      type = VCPLogToOSLogType[5];
      v43 = VCPLogToOSLogType[6];
      v44 = VCPLogToOSLogType[3];
      do
      {
        if (v18 - 1 >= [v17 count])
        {
          break;
        }

        v19 = objc_autoreleasePoolPush();
        v54.receiver = self;
        v54.super_class = VCPMADSceneLibraryProcessingTask;
        v20 = [(VCPMADSceneLibraryProcessingTask *)&v54 cancelBlock];
        if (v20 && (v53.receiver = self, v53.super_class = VCPMADSceneLibraryProcessingTask, [(VCPMADSceneLibraryProcessingTask *)&v53 cancelBlock], v21 = objc_claimAutoreleasedReturnValue(), v22 = v21[2](), v21, v20, v22))
        {
          if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v57 = v49;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Processing cancelled", buf, 0xCu);
          }

          v23 = 0;
          v16 = -128;
        }

        else
        {
          v24 = +[VCPWatchdog sharedWatchdog];
          [v24 pet];

          if ([v17 count] >= 2 && MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412546;
            v57 = v49;
            v58 = 2048;
            v59 = v18;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Evaluating P%lu assets", buf, 0x16u);
          }

          v25 = [v17 objectAtIndexedSubscript:v18 - 1];
          v26 = [v25 unsignedIntegerValue];

          +[PHAsset mad_sceneConfidenceThresholdForTask:](PHAsset, "mad_sceneConfidenceThresholdForTask:", [objc_opt_class() taskID]);
          v28 = v27;
          v29 = +[MADStateHandler sharedStateHandler];
          [v29 addBreadcrumb:{@"%@ Fetching Priority%lu assets (image embedding)", v49, v18}];

          v30 = VCPSignPostLog();
          v31 = os_signpost_id_generate(v30);

          v32 = VCPSignPostLog();
          v33 = v32;
          if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_INTERVAL_BEGIN, v31, "VCPMADPhotosLibraryProcessingTask_FetchAssets_ImageEmbedding", "", buf, 2u);
          }

          v34 = [objc_opt_class() taskID];
          v52 = 0;
          LODWORD(v35) = v28;
          v36 = [v51 fetchAssetsForMediaProcessingTaskID:v34 priority:v26 algorithmVersion:v48 sceneConfidenceThreshold:&v52 error:v35];
          v37 = v52;
          v38 = VCPSignPostLog();
          v39 = v38;
          if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_INTERVAL_END, v31, "VCPMADPhotosLibraryProcessingTask_FetchAssets_ImageEmbedding", "", buf, 2u);
          }

          if (v37)
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v44))
            {
              *buf = 138412546;
              v57 = v49;
              v58 = 2112;
              v59 = v37;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v44, "%@ Failed to fetch assets: %@", buf, 0x16u);
            }

            v23 = 0;
            v16 = -18;
          }

          else
          {
            if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v43))
            {
              v40 = [v36 count];
              *buf = 138412546;
              v57 = v49;
              v58 = 1024;
              LODWORD(v59) = v40;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v43, "%@ Fetched %d assets", buf, 0x12u);
            }

            v41 = +[MADStateHandler sharedStateHandler];
            [v41 addBreadcrumb:{@"%@ Fetched %d Priority%lu assets", v49, objc_msgSend(v36, "count"), v18}];

            v16 = [(VCPMADPhotosProcessingTask *)self processAssetsInFetchResult:v36 initialScan:1 analysisDatabase:v50 allowDownload:0 progress:v46];
            v23 = v16 == 0;
          }
        }

        objc_autoreleasePoolPop(v19);
        ++v18;
      }

      while (v23);
      v11 = [(VCPMADPhotosProcessingTask *)self waitForPublishing];
      v15 = v11 == 0;
    }

    objc_autoreleasePoolPop(context);
    if (v15)
    {
      goto LABEL_43;
    }
  }

LABEL_44:

  return v11;
}

- (BOOL)run:(id *)a3
{
  if ((+[PFSceneTaxonomy mad_isExpectedTaxonomy]& 1) != 0)
  {
    v11.receiver = self;
    v11.super_class = VCPMADSceneLibraryProcessingTask;
    return [(VCPMADPhotosLibraryProcessingTask *)&v11 run:a3];
  }

  else
  {
    v12 = NSLocalizedDescriptionKey;
    v6 = [NSString stringWithFormat:@"[%@] MAD tracked taxonomy identifier is not the latest in Photos skip scene processing", objc_opt_class()];;
    v13 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v8 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v7];
    v9 = *a3;
    *a3 = v8;

    v10 = [(VCPMADSceneLibraryProcessingTask *)self completionHandler];
    (v10)[2](v10, 0, *a3);

    return 0;
  }
}

@end