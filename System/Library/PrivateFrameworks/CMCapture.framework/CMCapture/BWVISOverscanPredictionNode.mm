@interface BWVISOverscanPredictionNode
- (BWVISOverscanPredictionNode)initWithCameraInfoByPortType:(id)type visInputAspectRatio:(float)ratio delegate:(id)delegate;
- (uint64_t)prepareForCurrentConfigurationToBecomeLive;
- (void)dealloc;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWVISOverscanPredictionNode

- (BWVISOverscanPredictionNode)initWithCameraInfoByPortType:(id)type visInputAspectRatio:(float)ratio delegate:(id)delegate
{
  v13.receiver = self;
  v13.super_class = BWVISOverscanPredictionNode;
  v8 = [(BWNode *)&v13 init];
  v9 = v8;
  if (type)
  {
    if (v8)
    {
      v10 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v8];
      [(BWNodeInput *)v10 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
      [(BWNodeInput *)v10 setPassthroughMode:1];
      [(BWNode *)v9 addInput:v10];
      v11 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v9];
      [(BWNodeOutput *)v11 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
      [(BWNodeOutput *)v11 setPassthroughMode:1];
      [(BWNode *)v9 addOutput:v11];
      v9->_visInputAspectRatio = ratio;
      v9->_delegate = delegate;
      v9->_cameraInfoByPortType = type;
    }
  }

  else
  {
    [BWVISOverscanPredictionNode initWithCameraInfoByPortType:v8 visInputAspectRatio:? delegate:?];
    return 0;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWVISOverscanPredictionNode;
  [(BWNode *)&v3 dealloc];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v22.receiver = self;
  v22.super_class = BWVISOverscanPredictionNode;
  [(BWNode *)&v22 prepareForCurrentConfigurationToBecomeLive];
  visOverscanPredictor = self->_visOverscanPredictor;
  if (visOverscanPredictor)
  {
  }

  v4 = [(NSDictionary *)[(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] pixelBufferAttributes] mutableCopy];
  if (v4)
  {
    v5 = v4;
    v6 = *MEMORY[0x1E6966208];
    v7 = [objc_msgSend(v4 objectForKeyedSubscript:{*MEMORY[0x1E6966208]), "intValue"}];
    v8 = *MEMORY[0x1E69660B8];
    v9 = [objc_msgSend(v5 objectForKeyedSubscript:{*MEMORY[0x1E69660B8]), "intValue"}];
    visInputAspectRatio = self->_visInputAspectRatio;
    if (visInputAspectRatio != 0.0)
    {
      if (visInputAspectRatio > 1.0)
      {
        v11 = (v7 / visInputAspectRatio);
      }

      else
      {
        v11 = (visInputAspectRatio * v9);
      }

      if (visInputAspectRatio <= 1.0)
      {
        v7 = (visInputAspectRatio * v9);
      }

      else
      {
        v6 = v8;
        v9 = (v7 / visInputAspectRatio);
      }

      [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v11), v6}];
    }

    if (v7 <= v9)
    {
      __asm { FMOV            V1.2S, #-1.0 }

      *&_D1 = v7 * 0.025;
    }

    else
    {
      __asm { FMOV            V1.2S, #-1.0 }

      *(&_D1 + 1) = v9 * 0.025;
    }

    v20 = _D1;
    v17 = [GVSOverscanPredictor alloc];
    cameraInfoByPortType = self->_cameraInfoByPortType;
    v21[0] = 1045220557;
    v21[1] = v20;
    v21[2] = 1065353216;
    v19 = [(GVSOverscanPredictor *)v17 initWithConfig:v21 cameraInfoByPortType:cameraInfoByPortType visInputPixelBufferAttributes:v5];
    self->_visOverscanPredictor = v19;
    if (!v19)
    {
      [BWVISOverscanPredictionNode prepareForCurrentConfigurationToBecomeLive];
    }
  }

  else
  {
    [BWVISOverscanPredictionNode prepareForCurrentConfigurationToBecomeLive];
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if (buffer)
  {
    v6 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
    if (v6)
    {
      v7 = v6;
      ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
      Width = CVPixelBufferGetWidth(ImageBuffer);
      v10 = CMSampleBufferGetImageBuffer(buffer);
      rect.origin.x = 0.0;
      rect.origin.y = 0.0;
      rect.size.width = Width;
      rect.size.height = CVPixelBufferGetHeight(v10);
      v11 = *off_1E798B7A0;
      if ([v7 objectForKeyedSubscript:*off_1E798B7A0])
      {
        CGRectMakeWithDictionaryRepresentation([v7 objectForKeyedSubscript:v11], &rect);
      }

      CGRectMakeWithDictionaryRepresentation([v7 objectForKeyedSubscript:{*off_1E798A5C8, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}], &v16);
      FigCaptureMetadataUtilitiesDenormalizeCropRect(v16.origin.x, v16.origin.y, v16.size.width, v16.size.height);
      v16.origin.x = v12;
      v16.origin.y = v13;
      v16.size.width = v14;
      v16.size.height = v15;
      [(BWVISOverscanPredictionDelegate *)self->_delegate visOverscanPredictor:self allowsReducedOverscan:[(GVSOverscanPredictor *)self->_visOverscanPredictor predictOverscanFitsFromMetadata:v7 finalCropRect:*&v12 boundingRect:*&v13, *&v14, *&v15]];
    }

    else
    {
      [BWVISOverscanPredictionNode renderSampleBuffer:forInput:];
    }
  }

  else
  {
    [BWVISOverscanPredictionNode renderSampleBuffer:forInput:];
  }

  [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
}

- (void)initWithCameraInfoByPortType:(void *)a1 visInputAspectRatio:delegate:.cold.1(void *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  FigDebugAssert3();
}

- (uint64_t)prepareForCurrentConfigurationToBecomeLive
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end