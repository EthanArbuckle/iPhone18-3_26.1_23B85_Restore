@interface MADFullAssetProcessingTask
- (MADFullAssetProcessingTask)initWithLocalIdentifiers:(id)a3 fromPhotoLibraryWithURL:(id)a4 cancelBlock:(id)a5 progressHandler:(id)a6 completionHandler:(id)a7;
- (id)batchWithAnalysisDatabase:(id)a3 allowDownload:(BOOL)a4 cancelBlock:(id)a5;
- (void)dealloc;
@end

@implementation MADFullAssetProcessingTask

- (MADFullAssetProcessingTask)initWithLocalIdentifiers:(id)a3 fromPhotoLibraryWithURL:(id)a4 cancelBlock:(id)a5 progressHandler:(id)a6 completionHandler:(id)a7
{
  v12 = a4;
  v18.receiver = self;
  v18.super_class = MADFullAssetProcessingTask;
  v13 = [(VCPMADPhotoAssetProcessingTask *)&v18 initWithLocalIdentifiers:a3 fromPhotoLibraryWithURL:v12 cancelBlock:a5 progressHandler:a6 completionHandler:a7];
  if (v13)
  {
    v14 = +[VCPPhotoLibraryManager sharedManager];
    v15 = [v14 photoLibraryWithURL:v12];
    v16 = *(v13 + 52);
    *(v13 + 52) = v15;
  }

  return v13;
}

- (void)dealloc
{
  v3 = +[VNSession globalSession];
  [v3 releaseCachedResources];

  MediaAnalysisPurgeResources();
  v4.receiver = self;
  v4.super_class = MADFullAssetProcessingTask;
  [(MADFullAssetProcessingTask *)&v4 dealloc];
}

- (id)batchWithAnalysisDatabase:(id)a3 allowDownload:(BOOL)a4 cancelBlock:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [[MADFullAssetBatch alloc] initWithPhotoLibrary:*(&self->super._progressHandler + 4) database:v8 cancelBlock:v7];

  return v9;
}

@end