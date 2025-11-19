@interface VCPMADPECLibraryProcessingTask
+ (id)taskWithPhotoLibraries:(id)a3 cancelBlock:(id)a4 progressHandler:(id)a5 andCompletionHandler:(id)a6;
- (VCPMADPECLibraryProcessingTask)initWithPhotoLibraries:(id)a3 cancelBlock:(id)a4 progressHandler:(id)a5 andCompletionHandler:(id)a6;
- (id)batchWithAnalysisDatabase:(id)a3 allowDownload:(BOOL)a4 cancelBlock:(id)a5;
- (int)processAllAssetsInPhotoLibrary:(id)a3 withAnalysisDatabase:(id)a4 andProgress:(id)a5;
- (void)dealloc;
@end

@implementation VCPMADPECLibraryProcessingTask

- (VCPMADPECLibraryProcessingTask)initWithPhotoLibraries:(id)a3 cancelBlock:(id)a4 progressHandler:(id)a5 andCompletionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = VCPMADPECLibraryProcessingTask;
  v14 = [(VCPMADPhotosLibraryProcessingTask *)&v18 initWithPhotoLibraries:v10 cancelBlock:v11 progressHandler:v12 andCompletionHandler:v13];
  if (v14)
  {
    v15 = [VCPObjectPool objectPoolWithAllocator:&stru_100285338];
    v16 = *(v14 + 44);
    *(v14 + 44) = v15;
  }

  return v14;
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

  v4.receiver = self;
  v4.super_class = VCPMADPECLibraryProcessingTask;
  [(VCPMADPECLibraryProcessingTask *)&v4 dealloc];
}

- (id)batchWithAnalysisDatabase:(id)a3 allowDownload:(BOOL)a4 cancelBlock:(id)a5
{
  v5 = [VCPMADPECAssetBatch batchWithServicePool:*(&self->super._progressHandler + 4) analysisDatabase:a3 cancelBlock:a5];

  return v5;
}

- (int)processAllAssetsInPhotoLibrary:(id)a3 withAnalysisDatabase:(id)a4 andProgress:(id)a5
{
  v56 = a3;
  v50 = a4;
  v51 = a5;
  if (MediaAnalysisLogLevel() >= 5)
  {
    v8 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v8))
    {
      v9 = [objc_opt_class() name];
      *buf = 138412290;
      v62 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[%@] Evaluating all assets in Photo Library -- PEC", buf, 0xCu);
    }
  }

  v54 = [PHMediaProcessingAlgorithmVersionProvider mad_sharedVersionProviderWithPhotoLibrary:v56];
  +[PHAsset mad_sceneConfidenceThresholdForTask:](PHAsset, "mad_sceneConfidenceThresholdForTask:", [objc_opt_class() taskID]);
  v11 = v10;
  v52 = [(VCPMADPhotosLibraryProcessingTask *)self assetPriorities];
  v12 = 0;
  v53 = VCPLogToOSLogType[3];
  type = VCPLogToOSLogType[5];
  v47 = VCPLogToOSLogType[6];
  while (v12 < [v52 count])
  {
    context = objc_autoreleasePoolPush();
    v58 = v12 + 1;
    if ([v52 count] >= 2 && MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
    {
      v13 = [objc_opt_class() name];
      *buf = 138412546;
      v62 = v13;
      v63 = 2048;
      v64 = (v12 + 1);
      _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@] Evaluating P%lu assets", buf, 0x16u);
    }

    v14 = [v52 objectAtIndexedSubscript:v12];
    v15 = [v14 unsignedIntegerValue];

    v60 = 0;
    LODWORD(v16) = v11;
    v55 = [v56 countOfUnprocessedAssetsForMediaProcessingTaskID:16 priority:v15 algorithmVersion:v54 sceneConfidenceThreshold:&v60 error:v16];
    v17 = v60;
    v18 = v17;
    v49 = v17;
    if (v17)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v53))
      {
        v19 = [objc_opt_class() name];
        *buf = 138412546;
        v62 = v19;
        v63 = 2112;
        v64 = v49;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v53, "[%@] Failed to count PEC assets: %@", buf, 0x16u);
      }

      v20 = 0;
      v57 = -18;
    }

    else
    {
      v21 = 0;
      do
      {
        v20 = (v21 >= v55) | v18;
        if ((v21 >= v55) | v18 & 1)
        {
          break;
        }

        v22 = objc_autoreleasePoolPush();
        v23 = +[MADStateHandler sharedStateHandler];
        v24 = [objc_opt_class() name];
        [v23 addBreadcrumb:{@"[%@] Fetching Priority%lu assets", v24, v58}];

        v25 = VCPSignPostLog();
        v26 = os_signpost_id_generate(v25);

        v27 = VCPSignPostLog();
        v28 = v27;
        if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_BEGIN, v26, "VCPMADPhotosLibraryProcessingPECTask_FetchAssets", "", buf, 2u);
        }

        v29 = [objc_opt_class() taskID];
        v59 = 0;
        LODWORD(v30) = v11;
        v31 = [v56 fetchUnprocessedAssetsForMediaProcessingTaskID:v29 priority:v15 algorithmVersion:v54 sceneConfidenceThreshold:&v59 error:v30];
        v32 = v59;
        v33 = VCPSignPostLog();
        v34 = v33;
        if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, OS_SIGNPOST_INTERVAL_END, v26, "VCPMADPhotosLibraryProcessingPECTask_FetchAssets", "", buf, 2u);
        }

        if (v32)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v53))
          {
            v35 = [objc_opt_class() name];
            *buf = 138412546;
            v62 = v35;
            v63 = 2112;
            v64 = v32;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v53, "[%@] Failed to fetch PEC assets: %@", buf, 0x16u);
          }

          v18 = 0;
          v36 = 0;
          v37 = -18;
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v47))
          {
            v38 = [objc_opt_class() name];
            v39 = [v31 count];
            *buf = 138412546;
            v62 = v38;
            v63 = 1024;
            LODWORD(v64) = v39;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v47, "[%@] Fetched %d PEC assets", buf, 0x12u);
          }

          v40 = +[MADStateHandler sharedStateHandler];
          v41 = [objc_opt_class() name];
          [v40 addBreadcrumb:{@"[%@] Fetched %d Priority%lu assets", v41, objc_msgSend(v31, "count"), v58}];

          v42 = [v31 count];
          v43 = [v31 count];
          v44 = [(VCPMADPhotosProcessingTask *)self processAssetsInFetchResult:v31 initialScan:1 analysisDatabase:v50 allowDownload:0 progress:v51];
          v21 += v42;
          v18 = v43 == 0;
          v36 = v44 == 0;
          v37 = v57;
          if (v44)
          {
            v37 = v44;
          }
        }

        v57 = v37;

        objc_autoreleasePoolPop(v22);
      }

      while (v36);
    }

    objc_autoreleasePoolPop(context);
    v12 = v58;
    if ((v20 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  v57 = [(VCPMADPhotosProcessingTask *)self waitForPublishing];
  if (!v57)
  {
    MediaAnalysisDaemonReleaseSharedDataStores(v56);
    v57 = 0;
  }

LABEL_38:

  return v57;
}

@end