@interface VCPMADVisualSearchFetchProcessingTask
- (BOOL)shouldProcessAsset:(id)a3;
- (VCPMADVisualSearchFetchProcessingTask)initWithFetchBlock:(id)a3 photoLibraryWithURL:(id)a4 cancelBlock:(id)a5 progressHandler:(id)a6 completionHandler:(id)a7;
- (void)dealloc;
@end

@implementation VCPMADVisualSearchFetchProcessingTask

- (VCPMADVisualSearchFetchProcessingTask)initWithFetchBlock:(id)a3 photoLibraryWithURL:(id)a4 cancelBlock:(id)a5 progressHandler:(id)a6 completionHandler:(id)a7
{
  v13.receiver = self;
  v13.super_class = VCPMADVisualSearchFetchProcessingTask;
  v7 = [(VCPMADPhotosFetchProcessingTask *)&v13 initWithFetchBlock:a3 photoLibraryWithURL:a4 cancelBlock:a5 progressHandler:a6 completionHandler:a7];
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

@end