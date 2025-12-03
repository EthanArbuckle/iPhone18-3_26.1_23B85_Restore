@interface VCPMADVisualSearchFetchProcessingTask
- (BOOL)shouldProcessAsset:(id)asset;
- (VCPMADVisualSearchFetchProcessingTask)initWithFetchBlock:(id)block photoLibraryWithURL:(id)l cancelBlock:(id)cancelBlock progressHandler:(id)handler completionHandler:(id)completionHandler;
- (void)dealloc;
@end

@implementation VCPMADVisualSearchFetchProcessingTask

- (VCPMADVisualSearchFetchProcessingTask)initWithFetchBlock:(id)block photoLibraryWithURL:(id)l cancelBlock:(id)cancelBlock progressHandler:(id)handler completionHandler:(id)completionHandler
{
  v13.receiver = self;
  v13.super_class = VCPMADVisualSearchFetchProcessingTask;
  v7 = [(VCPMADPhotosFetchProcessingTask *)&v13 initWithFetchBlock:block photoLibraryWithURL:l cancelBlock:cancelBlock progressHandler:handler completionHandler:completionHandler];
  if (v7)
  {
    v8 = [VCPObjectPool objectPoolWithAllocator:&stru_100286A30];
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
  v4.super_class = VCPMADVisualSearchFetchProcessingTask;
  [(VCPMADVisualSearchFetchProcessingTask *)&v4 dealloc];
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

@end