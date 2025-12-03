@interface VCPMADVisualSearchAssetProcessingTask
- (BOOL)shouldProcessAsset:(id)asset;
- (VCPMADVisualSearchAssetProcessingTask)initWithLocalIdentifiers:(id)identifiers fromPhotoLibraryWithURL:(id)l cancelBlock:(id)block progressHandler:(id)handler completionHandler:(id)completionHandler;
- (id)batchWithAnalysisDatabase:(id)database allowDownload:(BOOL)download cancelBlock:(id)block;
- (void)dealloc;
@end

@implementation VCPMADVisualSearchAssetProcessingTask

- (VCPMADVisualSearchAssetProcessingTask)initWithLocalIdentifiers:(id)identifiers fromPhotoLibraryWithURL:(id)l cancelBlock:(id)block progressHandler:(id)handler completionHandler:(id)completionHandler
{
  v13.receiver = self;
  v13.super_class = VCPMADVisualSearchAssetProcessingTask;
  v7 = [(VCPMADPhotoAssetProcessingTask *)&v13 initWithLocalIdentifiers:identifiers fromPhotoLibraryWithURL:l cancelBlock:block progressHandler:handler completionHandler:completionHandler];
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

- (BOOL)shouldProcessAsset:(id)asset
{
  assetCopy = asset;
  if ([assetCopy vcp_needsVisualSearchProcessing])
  {
    vcp_needsStickerGatingProcessing = 1;
  }

  else
  {
    vcp_needsStickerGatingProcessing = [assetCopy vcp_needsStickerGatingProcessing];
  }

  return vcp_needsStickerGatingProcessing;
}

- (id)batchWithAnalysisDatabase:(id)database allowDownload:(BOOL)download cancelBlock:(id)block
{
  v5 = [VCPMADVisualSearchAssetBatch batchWithServicePool:*(&self->super._progressHandler + 4) visionSession:*(&self->_servicePool + 4) analysisDatabase:database cancelBlock:block];
  [v5 setAllowBeforeMigration:{objc_msgSend(objc_opt_class(), "allowBeforeMigration")}];

  return v5;
}

@end