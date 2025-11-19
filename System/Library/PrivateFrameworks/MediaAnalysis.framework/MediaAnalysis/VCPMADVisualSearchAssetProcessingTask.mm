@interface VCPMADVisualSearchAssetProcessingTask
- (BOOL)shouldProcessAsset:(id)a3;
- (VCPMADVisualSearchAssetProcessingTask)initWithLocalIdentifiers:(id)a3 fromPhotoLibraryWithURL:(id)a4 cancelBlock:(id)a5 progressHandler:(id)a6 completionHandler:(id)a7;
- (id)batchWithAnalysisDatabase:(id)a3 allowDownload:(BOOL)a4 cancelBlock:(id)a5;
- (void)dealloc;
@end

@implementation VCPMADVisualSearchAssetProcessingTask

- (VCPMADVisualSearchAssetProcessingTask)initWithLocalIdentifiers:(id)a3 fromPhotoLibraryWithURL:(id)a4 cancelBlock:(id)a5 progressHandler:(id)a6 completionHandler:(id)a7
{
  v13.receiver = self;
  v13.super_class = VCPMADVisualSearchAssetProcessingTask;
  v7 = [(VCPMADPhotoAssetProcessingTask *)&v13 initWithLocalIdentifiers:a3 fromPhotoLibraryWithURL:a4 cancelBlock:a5 progressHandler:a6 completionHandler:a7];
  if (v7)
  {
    v8 = [VCPObjectPool objectPoolWithAllocator:&stru_100282DC8];
    v9 = *(v7 + 52);
    *(v7 + 52) = v8;

    v10 = objc_alloc_init(VNSession);
    v11 = *(v7 + 60);
    *(v7 + 60) = v10;
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[VNSession globalSession];
  [v3 releaseCachedResources];

  v4.receiver = self;
  v4.super_class = VCPMADVisualSearchAssetProcessingTask;
  [(VCPMADVisualSearchAssetProcessingTask *)&v4 dealloc];
}

- (BOOL)shouldProcessAsset:(id)a3
{
  v3 = a3;
  if ([v3 vcp_needsVisualSearchProcessing])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 vcp_needsStickerGatingProcessing];
  }

  return v4;
}

- (id)batchWithAnalysisDatabase:(id)a3 allowDownload:(BOOL)a4 cancelBlock:(id)a5
{
  v5 = [VCPMADVisualSearchAssetBatch batchWithServicePool:*(&self->super._progressHandler + 4) visionSession:*(&self->_servicePool + 4) analysisDatabase:a3 cancelBlock:a5];
  [v5 setAllowBeforeMigration:{objc_msgSend(objc_opt_class(), "allowBeforeMigration")}];

  return v5;
}

@end