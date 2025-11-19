@interface VCPMADSceneFetchProcessingTask
- (BOOL)run:(id *)a3;
- (VCPMADSceneFetchProcessingTask)initWithFetchBlock:(id)a3 photoLibraryWithURL:(id)a4 cancelBlock:(id)a5 progressHandler:(id)a6 completionHandler:(id)a7;
- (id)batchWithAnalysisDatabase:(id)a3 allowDownload:(BOOL)a4 cancelBlock:(id)a5;
- (void)dealloc;
@end

@implementation VCPMADSceneFetchProcessingTask

- (VCPMADSceneFetchProcessingTask)initWithFetchBlock:(id)a3 photoLibraryWithURL:(id)a4 cancelBlock:(id)a5 progressHandler:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v25.receiver = self;
  v25.super_class = VCPMADSceneFetchProcessingTask;
  v17 = [(VCPMADPhotosFetchProcessingTask *)&v25 initWithFetchBlock:v12 photoLibraryWithURL:v13 cancelBlock:v14 progressHandler:v15 completionHandler:v16];
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

- (id)batchWithAnalysisDatabase:(id)a3 allowDownload:(BOOL)a4 cancelBlock:(id)a5
{
  v5 = [VCPMADSceneAssetBatch batchWithAnalysisDatabase:a3 allowDownload:a4 cancelBlock:a5 resources:*(&self->super._progressHandler + 4)];

  return v5;
}

- (BOOL)run:(id *)a3
{
  if ((+[PFSceneTaxonomy mad_isExpectedTaxonomy]& 1) != 0)
  {
    v11.receiver = self;
    v11.super_class = VCPMADSceneFetchProcessingTask;
    return [(VCPMADPhotosFetchProcessingTask *)&v11 run:a3];
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

    v10 = [(VCPMADSceneFetchProcessingTask *)self completionHandler];
    (v10)[2](v10, 0, *a3);

    return 0;
  }
}

@end