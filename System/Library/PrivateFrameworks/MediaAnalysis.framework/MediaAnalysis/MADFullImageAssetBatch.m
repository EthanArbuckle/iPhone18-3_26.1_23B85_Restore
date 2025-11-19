@interface MADFullImageAssetBatch
- (MADFullImageAssetBatch)initWithPhotoLibrary:(id)a3 database:(id)a4 cancelBlock:(id)a5;
- (int)prepare;
- (int)process;
- (int)publish;
@end

@implementation MADFullImageAssetBatch

- (MADFullImageAssetBatch)initWithPhotoLibrary:(id)a3 database:(id)a4 cancelBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = MADFullImageAssetBatch;
  v11 = [(MADFullImageAssetBatch *)&v16 init];
  if (v11)
  {
    LOBYTE(v15) = 0;
    v12 = [MADPhotosFullAssetProcessingTask taskWithAnalysisDatabase:v9 photoLibrary:v8 progressReporter:0 mediaType:1 mediaSubtype:0 imageOnlyAnalysis:1 downloadAllowed:v15];
    task = v11->_task;
    v11->_task = v12;

    [(MADProcessingTask *)v11->_task setCancelBlock:v10];
  }

  return v11;
}

- (int)prepare
{
  [(MADPhotosFullAssetProcessingTask *)self->_task prepare];
  task = self->_task;

  return [(MADPhotosFullAssetProcessingTask *)task status];
}

- (int)process
{
  [(MADPhotosFullAssetProcessingTask *)self->_task process];
  task = self->_task;

  return [(MADPhotosFullAssetProcessingTask *)task status];
}

- (int)publish
{
  [(MADPhotosFullAssetProcessingTask *)self->_task publish];
  task = self->_task;

  return [(MADPhotosFullAssetProcessingTask *)task status];
}

@end