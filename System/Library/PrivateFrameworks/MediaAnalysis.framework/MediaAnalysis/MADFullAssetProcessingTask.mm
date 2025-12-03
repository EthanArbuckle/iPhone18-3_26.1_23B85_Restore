@interface MADFullAssetProcessingTask
- (MADFullAssetProcessingTask)initWithLocalIdentifiers:(id)identifiers fromPhotoLibraryWithURL:(id)l cancelBlock:(id)block progressHandler:(id)handler completionHandler:(id)completionHandler;
- (id)batchWithAnalysisDatabase:(id)database allowDownload:(BOOL)download cancelBlock:(id)block;
- (void)dealloc;
@end

@implementation MADFullAssetProcessingTask

- (MADFullAssetProcessingTask)initWithLocalIdentifiers:(id)identifiers fromPhotoLibraryWithURL:(id)l cancelBlock:(id)block progressHandler:(id)handler completionHandler:(id)completionHandler
{
  lCopy = l;
  v18.receiver = self;
  v18.super_class = MADFullAssetProcessingTask;
  v13 = [(VCPMADPhotoAssetProcessingTask *)&v18 initWithLocalIdentifiers:identifiers fromPhotoLibraryWithURL:lCopy cancelBlock:block progressHandler:handler completionHandler:completionHandler];
  if (v13)
  {
    v14 = +[VCPPhotoLibraryManager sharedManager];
    v15 = [v14 photoLibraryWithURL:lCopy];
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

- (id)batchWithAnalysisDatabase:(id)database allowDownload:(BOOL)download cancelBlock:(id)block
{
  blockCopy = block;
  databaseCopy = database;
  v9 = [[MADFullAssetBatch alloc] initWithPhotoLibrary:*(&self->super._progressHandler + 4) database:databaseCopy cancelBlock:blockCopy];

  return v9;
}

@end