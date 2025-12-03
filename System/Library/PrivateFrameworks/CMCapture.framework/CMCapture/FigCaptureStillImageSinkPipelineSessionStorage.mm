@interface FigCaptureStillImageSinkPipelineSessionStorage
- (FigCaptureCameraSourcePipeline)primaryCameraSourcePipeline;
- (FigCaptureStillImageSinkPipelineSessionStorage)initWithStillImageSinkPipelines:(id)pipelines cameraSourcePipelines:(id)sourcePipelines previewSinkNode:(id)node pixelConverter:(id)converter colorInfo:(id)info stillImagesAreOptimizedForOfflineVideoStabilization:(BOOL)stabilization videoStabilizationOverscanCropMultiplier:(float)multiplier preparedBracket:(id)self0 stillImageConnectionConfigurations:(id)self1;
- (FigVideoCaptureConnectionConfiguration)primaryStillImageConnectionConfiguration;
- (id)cameraSourcePipelineForStillImageSinkPipeline:(id)pipeline;
- (id)stillImageConnectionConfigurationForStillImageSinkPipeline:(id)pipeline;
- (id)stillImageSinkPipelineWithStillImageCoordinator:(id)coordinator;
- (void)dealloc;
- (void)setCurrentUserInitiatedRequestPTS:(id *)s;
@end

@implementation FigCaptureStillImageSinkPipelineSessionStorage

- (FigCaptureCameraSourcePipeline)primaryCameraSourcePipeline
{
  firstObject = [(NSArray *)self->_cameraSourcePipelines firstObject];

  return firstObject;
}

- (FigCaptureStillImageSinkPipelineSessionStorage)initWithStillImageSinkPipelines:(id)pipelines cameraSourcePipelines:(id)sourcePipelines previewSinkNode:(id)node pixelConverter:(id)converter colorInfo:(id)info stillImagesAreOptimizedForOfflineVideoStabilization:(BOOL)stabilization videoStabilizationOverscanCropMultiplier:(float)multiplier preparedBracket:(id)self0 stillImageConnectionConfigurations:(id)self1
{
  v21.receiver = self;
  v21.super_class = FigCaptureStillImageSinkPipelineSessionStorage;
  v18 = [(FigCaptureStillImageSinkPipelineSessionStorage *)&v21 init];
  if (v18)
  {
    pipelinesCopy = pipelines;
    v18->_stillImageSinkPipelines = pipelinesCopy;
    v18->_primaryStillImageSinkPipeline = [(NSArray *)pipelinesCopy firstObject];
    v18->_cameraSourcePipelines = sourcePipelines;
    v18->_previewSinkNode = node;
    v18->_pixelConverter = converter;
    v18->_colorInfo = info;
    v18->_stillImagesAreOptimizedForOfflineVideoStabilization = stabilization;
    v18->_videoStabilizationOverscanCropMultiplier = multiplier;
    v18->_preparedBracket = bracket;
    v18->_stillImageConnectionConfigurations = configurations;
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
  firstObject = [(NSArray *)self->_stillImageConnectionConfigurations firstObject];

  return firstObject;
}

- (id)stillImageSinkPipelineWithStillImageCoordinator:(id)coordinator
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
    if ([v9 stillImageCoordinatorNode] == coordinator)
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

- (id)cameraSourcePipelineForStillImageSinkPipeline:(id)pipeline
{
  v4 = [(NSArray *)self->_stillImageSinkPipelines indexOfObject:pipeline];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = v4;
  cameraSourcePipelines = self->_cameraSourcePipelines;

  return [(NSArray *)cameraSourcePipelines objectAtIndexedSubscript:v6];
}

- (id)stillImageConnectionConfigurationForStillImageSinkPipeline:(id)pipeline
{
  v4 = [(NSArray *)self->_stillImageSinkPipelines indexOfObject:pipeline];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = v4;
  stillImageConnectionConfigurations = self->_stillImageConnectionConfigurations;

  return [(NSArray *)stillImageConnectionConfigurations objectAtIndexedSubscript:v6];
}

- (void)setCurrentUserInitiatedRequestPTS:(id *)s
{
  v3 = *&s->var0;
  self->_currentUserInitiatedRequestPTS.epoch = s->var3;
  *&self->_currentUserInitiatedRequestPTS.value = v3;
}

@end