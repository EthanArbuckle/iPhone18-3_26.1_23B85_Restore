@interface MADFullAssetBatch
- (MADFullAssetBatch)initWithPhotoLibrary:(id)library database:(id)database cancelBlock:(id)block;
- (int)prepare;
- (int)process;
- (int)publish;
- (unint64_t)count;
- (void)addPhotosAsset:(id)asset withPreviousStatus:(unint64_t)status attempts:(unint64_t)attempts andAttemptDate:(id)date;
@end

@implementation MADFullAssetBatch

- (MADFullAssetBatch)initWithPhotoLibrary:(id)library database:(id)database cancelBlock:(id)block
{
  libraryCopy = library;
  databaseCopy = database;
  blockCopy = block;
  v22.receiver = self;
  v22.super_class = MADFullAssetBatch;
  v11 = [(MADFullAssetBatch *)&v22 init];
  if (v11)
  {
    LOBYTE(v19) = 0;
    v12 = [MADPhotosFullAssetProcessingTask taskWithAnalysisDatabase:databaseCopy photoLibrary:libraryCopy progressReporter:0 mediaType:1 mediaSubtype:0 imageOnlyAnalysis:1 downloadAllowed:v19];
    imageTask = v11->_imageTask;
    v11->_imageTask = v12;

    LOBYTE(v20) = 1;
    v14 = [MADPhotosFullAssetProcessingTask taskWithAnalysisDatabase:databaseCopy photoLibrary:libraryCopy progressReporter:0 mediaType:1 mediaSubtype:8 imageOnlyAnalysis:0 downloadAllowed:v20];
    livePhotoTask = v11->_livePhotoTask;
    v11->_livePhotoTask = v14;

    LOBYTE(v21) = 1;
    v16 = [MADPhotosFullAssetProcessingTask taskWithAnalysisDatabase:databaseCopy photoLibrary:libraryCopy progressReporter:0 mediaType:2 mediaSubtype:0 imageOnlyAnalysis:0 downloadAllowed:v21];
    videoTask = v11->_videoTask;
    v11->_videoTask = v16;

    [(MADProcessingTask *)v11->_imageTask setCancelBlock:blockCopy];
    [(MADProcessingTask *)v11->_livePhotoTask setCancelBlock:blockCopy];
    [(MADProcessingTask *)v11->_videoTask setCancelBlock:blockCopy];
  }

  return v11;
}

- (unint64_t)count
{
  v3 = [(MADPhotosFullAssetProcessingTask *)self->_imageTask count];
  v4 = [(MADPhotosFullAssetProcessingTask *)self->_livePhotoTask count]+ v3;
  return [(MADPhotosFullAssetProcessingTask *)self->_videoTask count]+ v4;
}

- (void)addPhotosAsset:(id)asset withPreviousStatus:(unint64_t)status attempts:(unint64_t)attempts andAttemptDate:(id)date
{
  assetCopy = asset;
  dateCopy = date;
  if ([assetCopy mediaType] == 1)
  {
    vcp_isLivePhoto = [assetCopy vcp_isLivePhoto];
    v13 = 8;
    if (vcp_isLivePhoto)
    {
      v13 = 16;
    }

    goto LABEL_7;
  }

  if ([assetCopy mediaType] == 2)
  {
    v13 = 24;
LABEL_7:
    v14 = *(&self->super.isa + v13);
    [v14 addPhotosAsset:assetCopy priority:0 previousStatus:status attempts:attempts lastAttemptDate:dateCopy];

    goto LABEL_8;
  }

  if (MediaAnalysisLogLevel() >= 4)
  {
    v15 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v15))
    {
      v16[0] = 67109120;
      v16[1] = [assetCopy mediaType];
      _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "Unsupported media type (%d)", v16, 8u);
    }
  }

LABEL_8:
}

- (int)prepare
{
  if (![(MADPhotosFullAssetProcessingTask *)self->_imageTask count]|| ([(MADPhotosFullAssetProcessingTask *)self->_imageTask prepare], (result = [(MADPhotosFullAssetProcessingTask *)self->_imageTask status]) == 0))
  {
    if (![(MADPhotosFullAssetProcessingTask *)self->_livePhotoTask count]|| ([(MADPhotosFullAssetProcessingTask *)self->_livePhotoTask prepare], (result = [(MADPhotosFullAssetProcessingTask *)self->_livePhotoTask status]) == 0))
    {
      if (![(MADPhotosFullAssetProcessingTask *)self->_videoTask count])
      {
        return 0;
      }

      [(MADPhotosFullAssetProcessingTask *)self->_videoTask prepare];
      result = [(MADPhotosFullAssetProcessingTask *)self->_videoTask status];
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

- (int)process
{
  if (![(MADPhotosFullAssetProcessingTask *)self->_imageTask count]|| ([(MADPhotosFullAssetProcessingTask *)self->_imageTask process], (result = [(MADPhotosFullAssetProcessingTask *)self->_imageTask status]) == 0))
  {
    if (![(MADPhotosFullAssetProcessingTask *)self->_livePhotoTask count]|| ([(MADPhotosFullAssetProcessingTask *)self->_livePhotoTask download], (result = [(MADPhotosFullAssetProcessingTask *)self->_livePhotoTask status]) == 0) && ([(MADPhotosFullAssetProcessingTask *)self->_livePhotoTask process], (result = [(MADPhotosFullAssetProcessingTask *)self->_livePhotoTask status]) == 0))
    {
      if (![(MADPhotosFullAssetProcessingTask *)self->_videoTask count])
      {
        return 0;
      }

      [(MADPhotosFullAssetProcessingTask *)self->_videoTask download];
      result = [(MADPhotosFullAssetProcessingTask *)self->_videoTask status];
      if (!result)
      {
        [(MADPhotosFullAssetProcessingTask *)self->_videoTask process];
        result = [(MADPhotosFullAssetProcessingTask *)self->_videoTask status];
        if (!result)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

- (int)publish
{
  if (![(MADPhotosFullAssetProcessingTask *)self->_imageTask count]|| ([(MADPhotosFullAssetProcessingTask *)self->_imageTask publish], (result = [(MADPhotosFullAssetProcessingTask *)self->_imageTask status]) == 0))
  {
    if (![(MADPhotosFullAssetProcessingTask *)self->_livePhotoTask count]|| ([(MADPhotosFullAssetProcessingTask *)self->_livePhotoTask download], [(MADPhotosFullAssetProcessingTask *)self->_livePhotoTask publish], (result = [(MADPhotosFullAssetProcessingTask *)self->_livePhotoTask status]) == 0))
    {
      if (![(MADPhotosFullAssetProcessingTask *)self->_videoTask count])
      {
        return 0;
      }

      [(MADPhotosFullAssetProcessingTask *)self->_videoTask download];
      [(MADPhotosFullAssetProcessingTask *)self->_videoTask publish];
      result = [(MADPhotosFullAssetProcessingTask *)self->_videoTask status];
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

@end