@interface MADFullAssetBatch
- (MADFullAssetBatch)initWithPhotoLibrary:(id)a3 database:(id)a4 cancelBlock:(id)a5;
- (int)prepare;
- (int)process;
- (int)publish;
- (unint64_t)count;
- (void)addPhotosAsset:(id)a3 withPreviousStatus:(unint64_t)a4 attempts:(unint64_t)a5 andAttemptDate:(id)a6;
@end

@implementation MADFullAssetBatch

- (MADFullAssetBatch)initWithPhotoLibrary:(id)a3 database:(id)a4 cancelBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = MADFullAssetBatch;
  v11 = [(MADFullAssetBatch *)&v22 init];
  if (v11)
  {
    LOBYTE(v19) = 0;
    v12 = [MADPhotosFullAssetProcessingTask taskWithAnalysisDatabase:v9 photoLibrary:v8 progressReporter:0 mediaType:1 mediaSubtype:0 imageOnlyAnalysis:1 downloadAllowed:v19];
    imageTask = v11->_imageTask;
    v11->_imageTask = v12;

    LOBYTE(v20) = 1;
    v14 = [MADPhotosFullAssetProcessingTask taskWithAnalysisDatabase:v9 photoLibrary:v8 progressReporter:0 mediaType:1 mediaSubtype:8 imageOnlyAnalysis:0 downloadAllowed:v20];
    livePhotoTask = v11->_livePhotoTask;
    v11->_livePhotoTask = v14;

    LOBYTE(v21) = 1;
    v16 = [MADPhotosFullAssetProcessingTask taskWithAnalysisDatabase:v9 photoLibrary:v8 progressReporter:0 mediaType:2 mediaSubtype:0 imageOnlyAnalysis:0 downloadAllowed:v21];
    videoTask = v11->_videoTask;
    v11->_videoTask = v16;

    [(MADProcessingTask *)v11->_imageTask setCancelBlock:v10];
    [(MADProcessingTask *)v11->_livePhotoTask setCancelBlock:v10];
    [(MADProcessingTask *)v11->_videoTask setCancelBlock:v10];
  }

  return v11;
}

- (unint64_t)count
{
  v3 = [(MADPhotosFullAssetProcessingTask *)self->_imageTask count];
  v4 = [(MADPhotosFullAssetProcessingTask *)self->_livePhotoTask count]+ v3;
  return [(MADPhotosFullAssetProcessingTask *)self->_videoTask count]+ v4;
}

- (void)addPhotosAsset:(id)a3 withPreviousStatus:(unint64_t)a4 attempts:(unint64_t)a5 andAttemptDate:(id)a6
{
  v10 = a3;
  v11 = a6;
  if ([v10 mediaType] == 1)
  {
    v12 = [v10 vcp_isLivePhoto];
    v13 = 8;
    if (v12)
    {
      v13 = 16;
    }

    goto LABEL_7;
  }

  if ([v10 mediaType] == 2)
  {
    v13 = 24;
LABEL_7:
    v14 = *(&self->super.isa + v13);
    [v14 addPhotosAsset:v10 priority:0 previousStatus:a4 attempts:a5 lastAttemptDate:v11];

    goto LABEL_8;
  }

  if (MediaAnalysisLogLevel() >= 4)
  {
    v15 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v15))
    {
      v16[0] = 67109120;
      v16[1] = [v10 mediaType];
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