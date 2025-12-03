@interface VCPMADPECLibraryProcessingTask
+ (id)taskWithPhotoLibraries:(id)libraries cancelBlock:(id)block progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (VCPMADPECLibraryProcessingTask)initWithPhotoLibraries:(id)libraries cancelBlock:(id)block progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (id)batchWithAnalysisDatabase:(id)database allowDownload:(BOOL)download cancelBlock:(id)block;
- (int)processAllAssetsInPhotoLibrary:(id)library withAnalysisDatabase:(id)database andProgress:(id)progress;
- (void)dealloc;
@end

@implementation VCPMADPECLibraryProcessingTask

- (VCPMADPECLibraryProcessingTask)initWithPhotoLibraries:(id)libraries cancelBlock:(id)block progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  librariesCopy = libraries;
  blockCopy = block;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v18.receiver = self;
  v18.super_class = VCPMADPECLibraryProcessingTask;
  v14 = [(VCPMADPhotosLibraryProcessingTask *)&v18 initWithPhotoLibraries:librariesCopy cancelBlock:blockCopy progressHandler:handlerCopy andCompletionHandler:completionHandlerCopy];
  if (v14)
  {
    v15 = [VCPObjectPool objectPoolWithAllocator:&stru_100285338];
    v16 = *(v14 + 44);
    *(v14 + 44) = v15;
  }

  return v14;
}

+ (id)taskWithPhotoLibraries:(id)libraries cancelBlock:(id)block progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  librariesCopy = libraries;
  blockCopy = block;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v13 = [objc_alloc(objc_opt_class()) initWithPhotoLibraries:librariesCopy cancelBlock:blockCopy progressHandler:handlerCopy andCompletionHandler:completionHandlerCopy];

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

- (id)batchWithAnalysisDatabase:(id)database allowDownload:(BOOL)download cancelBlock:(id)block
{
  v5 = [VCPMADPECAssetBatch batchWithServicePool:*(&self->super._progressHandler + 4) analysisDatabase:database cancelBlock:block];

  return v5;
}

- (int)processAllAssetsInPhotoLibrary:(id)library withAnalysisDatabase:(id)database andProgress:(id)progress
{
  libraryCopy = library;
  databaseCopy = database;
  progressCopy = progress;
  if (MediaAnalysisLogLevel() >= 5)
  {
    v8 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v8))
    {
      name = [objc_opt_class() name];
      *buf = 138412290;
      v62 = name;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[%@] Evaluating all assets in Photo Library -- PEC", buf, 0xCu);
    }
  }

  v54 = [PHMediaProcessingAlgorithmVersionProvider mad_sharedVersionProviderWithPhotoLibrary:libraryCopy];
  +[PHAsset mad_sceneConfidenceThresholdForTask:](PHAsset, "mad_sceneConfidenceThresholdForTask:", [objc_opt_class() taskID]);
  v11 = v10;
  assetPriorities = [(VCPMADPhotosLibraryProcessingTask *)self assetPriorities];
  v12 = 0;
  v53 = VCPLogToOSLogType[3];
  type = VCPLogToOSLogType[5];
  v47 = VCPLogToOSLogType[6];
  while (v12 < [assetPriorities count])
  {
    context = objc_autoreleasePoolPush();
    v58 = v12 + 1;
    if ([assetPriorities count] >= 2 && MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
    {
      name2 = [objc_opt_class() name];
      *buf = 138412546;
      v62 = name2;
      v63 = 2048;
      v64 = (v12 + 1);
      _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@] Evaluating P%lu assets", buf, 0x16u);
    }

    v14 = [assetPriorities objectAtIndexedSubscript:v12];
    unsignedIntegerValue = [v14 unsignedIntegerValue];

    v60 = 0;
    LODWORD(v16) = v11;
    v55 = [libraryCopy countOfUnprocessedAssetsForMediaProcessingTaskID:16 priority:unsignedIntegerValue algorithmVersion:v54 sceneConfidenceThreshold:&v60 error:v16];
    v17 = v60;
    v18 = v17;
    v49 = v17;
    if (v17)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v53))
      {
        name3 = [objc_opt_class() name];
        *buf = 138412546;
        v62 = name3;
        v63 = 2112;
        v64 = v49;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v53, "[%@] Failed to count PEC assets: %@", buf, 0x16u);
      }

      v20 = 0;
      waitForPublishing = -18;
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
        name4 = [objc_opt_class() name];
        [v23 addBreadcrumb:{@"[%@] Fetching Priority%lu assets", name4, v58}];

        v25 = VCPSignPostLog();
        v26 = os_signpost_id_generate(v25);

        v27 = VCPSignPostLog();
        v28 = v27;
        if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_BEGIN, v26, "VCPMADPhotosLibraryProcessingPECTask_FetchAssets", "", buf, 2u);
        }

        taskID = [objc_opt_class() taskID];
        v59 = 0;
        LODWORD(v30) = v11;
        v31 = [libraryCopy fetchUnprocessedAssetsForMediaProcessingTaskID:taskID priority:unsignedIntegerValue algorithmVersion:v54 sceneConfidenceThreshold:&v59 error:v30];
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
            name5 = [objc_opt_class() name];
            *buf = 138412546;
            v62 = name5;
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
            name6 = [objc_opt_class() name];
            v39 = [v31 count];
            *buf = 138412546;
            v62 = name6;
            v63 = 1024;
            LODWORD(v64) = v39;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v47, "[%@] Fetched %d PEC assets", buf, 0x12u);
          }

          v40 = +[MADStateHandler sharedStateHandler];
          name7 = [objc_opt_class() name];
          [v40 addBreadcrumb:{@"[%@] Fetched %d Priority%lu assets", name7, objc_msgSend(v31, "count"), v58}];

          v42 = [v31 count];
          v43 = [v31 count];
          v44 = [(VCPMADPhotosProcessingTask *)self processAssetsInFetchResult:v31 initialScan:1 analysisDatabase:databaseCopy allowDownload:0 progress:progressCopy];
          v21 += v42;
          v18 = v43 == 0;
          v36 = v44 == 0;
          v37 = waitForPublishing;
          if (v44)
          {
            v37 = v44;
          }
        }

        waitForPublishing = v37;

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

  waitForPublishing = [(VCPMADPhotosProcessingTask *)self waitForPublishing];
  if (!waitForPublishing)
  {
    MediaAnalysisDaemonReleaseSharedDataStores(libraryCopy);
    waitForPublishing = 0;
  }

LABEL_38:

  return waitForPublishing;
}

@end