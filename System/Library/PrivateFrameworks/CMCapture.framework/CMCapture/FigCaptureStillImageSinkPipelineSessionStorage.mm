@interface FigCaptureStillImageSinkPipelineSessionStorage
- (FigCaptureCameraSourcePipeline)primaryCameraSourcePipeline;
- (FigCaptureStillImageSinkPipelineSessionStorage)initWithStillImageSinkPipelines:(id)a3 cameraSourcePipelines:(id)a4 previewSinkNode:(id)a5 pixelConverter:(id)a6 colorInfo:(id)a7 stillImagesAreOptimizedForOfflineVideoStabilization:(BOOL)a8 videoStabilizationOverscanCropMultiplier:(float)a9 preparedBracket:(id)a10 stillImageConnectionConfigurations:(id)a11;
- (FigVideoCaptureConnectionConfiguration)primaryStillImageConnectionConfiguration;
- (id)cameraSourcePipelineForStillImageSinkPipeline:(id)a3;
- (id)stillImageConnectionConfigurationForStillImageSinkPipeline:(id)a3;
- (id)stillImageSinkPipelineWithStillImageCoordinator:(id)a3;
- (void)dealloc;
- (void)setCurrentUserInitiatedRequestPTS:(id *)a3;
@end

@implementation FigCaptureStillImageSinkPipelineSessionStorage

- (FigCaptureCameraSourcePipeline)primaryCameraSourcePipeline
{
  v2 = [(NSArray *)self->_cameraSourcePipelines firstObject];

  return v2;
}

- (FigCaptureStillImageSinkPipelineSessionStorage)initWithStillImageSinkPipelines:(id)a3 cameraSourcePipelines:(id)a4 previewSinkNode:(id)a5 pixelConverter:(id)a6 colorInfo:(id)a7 stillImagesAreOptimizedForOfflineVideoStabilization:(BOOL)a8 videoStabilizationOverscanCropMultiplier:(float)a9 preparedBracket:(id)a10 stillImageConnectionConfigurations:(id)a11
{
  v21.receiver = self;
  v21.super_class = FigCaptureStillImageSinkPipelineSessionStorage;
  v18 = [(FigCaptureStillImageSinkPipelineSessionStorage *)&v21 init];
  if (v18)
  {
    v19 = a3;
    v18->_stillImageSinkPipelines = v19;
    v18->_primaryStillImageSinkPipeline = [(NSArray *)v19 firstObject];
    v18->_cameraSourcePipelines = a4;
    v18->_previewSinkNode = a5;
    v18->_pixelConverter = a6;
    v18->_colorInfo = a7;
    v18->_stillImagesAreOptimizedForOfflineVideoStabilization = a8;
    v18->_videoStabilizationOverscanCropMultiplier = a9;
    v18->_preparedBracket = a10;
    v18->_stillImageConnectionConfigurations = a11;
  }

  return v18;
}

- (void)dealloc
{
  stillImageFormatDescription = self->_stillImageFormatDescription;
  if (stillImageFormatDescription)
  {
    CFRelease(stillImageFormatDescription);
  }

  previewFormatDescription = self->_previewFormatDescription;
  if (previewFormatDescription)
  {
    CFRelease(previewFormatDescription);
  }

  rawFormatDescription = self->_rawFormatDescription;
  if (rawFormatDescription)
  {
    CFRelease(rawFormatDescription);
  }

  v6.receiver = self;
  v6.super_class = FigCaptureStillImageSinkPipelineSessionStorage;
  [(FigCaptureStillImageSinkPipelineSessionStorage *)&v6 dealloc];
}

- (FigVideoCaptureConnectionConfiguration)primaryStillImageConnectionConfiguration
{
  v2 = [(NSArray *)self->_stillImageConnectionConfigurations firstObject];

  return v2;
}

- (id)stillImageSinkPipelineWithStillImageCoordinator:(id)a3
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  stillImageSinkPipelines = self->_stillImageSinkPipelines;
  v5 = [(NSArray *)stillImageSinkPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(stillImageSinkPipelines);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    if ([v9 stillImageCoordinatorNode] == a3)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSArray *)stillImageSinkPipelines countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)cameraSourcePipelineForStillImageSinkPipeline:(id)a3
{
  v4 = [(NSArray *)self->_stillImageSinkPipelines indexOfObject:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = v4;
  cameraSourcePipelines = self->_cameraSourcePipelines;

  return [(NSArray *)cameraSourcePipelines objectAtIndexedSubscript:v6];
}

- (id)stillImageConnectionConfigurationForStillImageSinkPipeline:(id)a3
{
  v4 = [(NSArray *)self->_stillImageSinkPipelines indexOfObject:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = v4;
  stillImageConnectionConfigurations = self->_stillImageConnectionConfigurations;

  return [(NSArray *)stillImageConnectionConfigurations objectAtIndexedSubscript:v6];
}

- (void)setCurrentUserInitiatedRequestPTS:(id *)a3
{
  v3 = *&a3->var0;
  self->_currentUserInitiatedRequestPTS.epoch = a3->var3;
  *&self->_currentUserInitiatedRequestPTS.value = v3;
}

@end