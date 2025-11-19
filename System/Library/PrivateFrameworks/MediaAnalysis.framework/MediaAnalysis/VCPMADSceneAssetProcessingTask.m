@interface VCPMADSceneAssetProcessingTask
- (BOOL)run:(id *)a3;
- (VCPMADSceneAssetProcessingTask)initWithLocalIdentifiers:(id)a3 fromPhotoLibraryWithURL:(id)a4 cancelBlock:(id)a5 progressHandler:(id)a6 completionHandler:(id)a7;
- (id)batchWithAnalysisDatabase:(id)a3 allowDownload:(BOOL)a4 cancelBlock:(id)a5;
- (void)dealloc;
@end

@implementation VCPMADSceneAssetProcessingTask

- (VCPMADSceneAssetProcessingTask)initWithLocalIdentifiers:(id)a3 fromPhotoLibraryWithURL:(id)a4 cancelBlock:(id)a5 progressHandler:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v25.receiver = self;
  v25.super_class = VCPMADSceneAssetProcessingTask;
  v17 = [(VCPMADPhotoAssetProcessingTask *)&v25 initWithLocalIdentifiers:v12 fromPhotoLibraryWithURL:v13 cancelBlock:v14 progressHandler:v15 completionHandler:v16];
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
  v4.super_class = VCPMADSceneAssetProcessingTask;
  [(VCPMADSceneAssetProcessingTask *)&v4 dealloc];
}

- (id)batchWithAnalysisDatabase:(id)a3 allowDownload:(BOOL)a4 cancelBlock:(id)a5
{
  v5 = [VCPMADSceneAssetBatch batchWithAnalysisDatabase:a3 allowDownload:a4 cancelBlock:a5 resources:*(&self->super._progressHandler + 4)];
  [v5 setAllowBeforeMigration:{objc_msgSend(objc_opt_class(), "allowBeforeMigration")}];

  return v5;
}

- (BOOL)run:(id *)a3
{
  if ((+[PFSceneTaxonomy mad_isExpectedTaxonomy]& 1) != 0)
  {
    v11.receiver = self;
    v11.super_class = VCPMADSceneAssetProcessingTask;
    return [(VCPMADPhotoAssetProcessingTask *)&v11 run:a3];
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

    v10 = [(VCPMADSceneAssetProcessingTask *)self completionHandler];
    (v10)[2](v10, 0, *a3);

    return 0;
  }
}

@end