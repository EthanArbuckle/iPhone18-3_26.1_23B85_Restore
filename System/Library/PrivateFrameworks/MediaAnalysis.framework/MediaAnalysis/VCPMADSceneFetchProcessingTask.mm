@interface VCPMADSceneFetchProcessingTask
- (BOOL)run:(id *)run;
- (VCPMADSceneFetchProcessingTask)initWithFetchBlock:(id)block photoLibraryWithURL:(id)l cancelBlock:(id)cancelBlock progressHandler:(id)handler completionHandler:(id)completionHandler;
- (id)batchWithAnalysisDatabase:(id)database allowDownload:(BOOL)download cancelBlock:(id)block;
- (void)dealloc;
@end

@implementation VCPMADSceneFetchProcessingTask

- (VCPMADSceneFetchProcessingTask)initWithFetchBlock:(id)block photoLibraryWithURL:(id)l cancelBlock:(id)cancelBlock progressHandler:(id)handler completionHandler:(id)completionHandler
{
  blockCopy = block;
  lCopy = l;
  cancelBlockCopy = cancelBlock;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v25.receiver = self;
  v25.super_class = VCPMADSceneFetchProcessingTask;
  v17 = [(VCPMADPhotosFetchProcessingTask *)&v25 initWithFetchBlock:blockCopy photoLibraryWithURL:lCopy cancelBlock:cancelBlockCopy progressHandler:handlerCopy completionHandler:completionHandlerCopy];
  if (v17 && (+[VCPPreAnalysisRequests asyncCacheRequestIdealDimension](VCPPreAnalysisRequests, "asyncCacheRequestIdealDimension"), +[VCPPreAnalysisRequests asyncLoadSharedPhotoFormatsObjects], v18 = objc_alloc_init(MADSceneResources), v19 = *(v17 + 52), *(v17 + 52) = v18, v19, !*(v17 + 52)))
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v21 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v21))
      {
        v22 = objc_opt_class();
        *buf = 138412290;
        v27 = v22;
        v23 = v22;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "[%@] Failed to create MADSceneResources", buf, 0xCu);
      }
    }

    v20 = 0;
  }

  else
  {
    v20 = v17;
  }

  return v20;
}

- (void)dealloc
{
  v3 = +[VNSession globalSession];
  [v3 releaseCachedResources];

  MediaAnalysisPurgeResources();
  v4.receiver = self;
  v4.super_class = VCPMADSceneFetchProcessingTask;
  [(VCPMADSceneFetchProcessingTask *)&v4 dealloc];
}

- (id)batchWithAnalysisDatabase:(id)database allowDownload:(BOOL)download cancelBlock:(id)block
{
  v5 = [VCPMADSceneAssetBatch batchWithAnalysisDatabase:database allowDownload:download cancelBlock:block resources:*(&self->super._progressHandler + 4)];

  return v5;
}

- (BOOL)run:(id *)run
{
  if ((+[PFSceneTaxonomy mad_isExpectedTaxonomy]& 1) != 0)
  {
    v11.receiver = self;
    v11.super_class = VCPMADSceneFetchProcessingTask;
    return [(VCPMADPhotosFetchProcessingTask *)&v11 run:run];
  }

  else
  {
    v12 = NSLocalizedDescriptionKey;
    v6 = [NSString stringWithFormat:@"[%@] MAD tracked taxonomy identifier is not the latest in Photos skip scene processing", objc_opt_class()];;
    v13 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v8 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v7];
    v9 = *run;
    *run = v8;

    completionHandler = [(VCPMADSceneFetchProcessingTask *)self completionHandler];
    (completionHandler)[2](completionHandler, 0, *run);

    return 0;
  }
}

@end