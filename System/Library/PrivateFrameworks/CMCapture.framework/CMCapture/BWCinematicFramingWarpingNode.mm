@interface BWCinematicFramingWarpingNode
+ (void)initialize;
- (uint64_t)_initVirtualCameraProcessorWithOutputDimensions:(uint64_t)result;
- (void)dealloc;
- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key;
- (void)initWithFramingStatesProvider:(uint64_t)provider outputDimensions:(int)dimensions maxLossyCompressionLevel:;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWCinematicFramingWarpingNode

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (void)dealloc
{
  [(VCProcessor *)self->_vcProcessor purgeResources];

  v3.receiver = self;
  v3.super_class = BWCinematicFramingWarpingNode;
  [(BWNode *)&v3 dealloc];
}

- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key
{
  if ([key isEqualToString:@"PrimaryFormat"])
  {
    v9 = objc_alloc_init(BWVideoFormatRequirements);
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(format, "pixelFormat")}];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v9, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1]);
    [(BWVideoFormatRequirements *)v9 setWidth:self->_outputDimensions.width];
    [(BWVideoFormatRequirements *)v9 setHeight:self->_outputDimensions.height];
    [(BWNodeOutput *)self->super._output setFormatRequirements:v9];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = BWCinematicFramingWarpingNode;
    [(BWNode *)&v10 didSelectFormat:format forInput:input forAttachedMediaKey:key];
  }
}

- (void)initWithFramingStatesProvider:(uint64_t)provider outputDimensions:(int)dimensions maxLossyCompressionLevel:
{
  if (!self)
  {
    return 0;
  }

  v15.receiver = self;
  v15.super_class = BWCinematicFramingWarpingNode;
  v7 = objc_msgSendSuper2(&v15, sel_init);
  if (v7)
  {
    if (dword_1EB58E7C0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_1_104();
    }

    v7[16] = a2;
    v7[18] = provider;
    v10 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v7];
    if (FigCapturePlatformIdentifier() < 8)
    {
      v11 = &unk_1F2249240;
    }

    else
    {
      v11 = FigCapturePixelFormatsByAddingCompressedVariants(&unk_1F2249240, dimensions);
    }

    v12 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v12 setSupportedPixelFormats:v11];
    [(BWNodeInput *)v10 setFormatRequirements:v12];
    [(BWNodeInput *)v10 setPassthroughMode:0];
    [v7 addInput:v10];
    v13 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v7];
    v14 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v14 setSupportedPixelFormats:v11];
    [(BWNodeOutput *)v13 setFormatRequirements:v14];
    [(BWNodeOutput *)v13 setPassthroughMode:0];
    [(BWNodeOutput *)v13 setProvidesPixelBufferPool:1];
    [v7 addOutput:v13];

    [(BWCinematicFramingWarpingNode *)v7 _initVirtualCameraProcessorWithOutputDimensions:?];
  }

  return v7;
}

- (uint64_t)_initVirtualCameraProcessorWithOutputDimensions:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = objc_alloc_init(MEMORY[0x1E6994588]);
    *(v3 + 136) = v4;
    [v4 setOutputDimensions:a2];
    if ([*(v3 + 136) setup] || objc_msgSend(*(v3 + 136), "prewarm") || (result = objc_msgSend(*(v3 + 136), "prepareToProcess:", 1), result))
    {
      OUTLINED_FUNCTION_1_5();
      return FigDebugAssert3();
    }
  }

  return result;
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  v34 = 0;
  v35 = 0;
  v7 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  Value = CFDictionaryGetValue(v7, *off_1E798A420);
  memset(&v33, 0, sizeof(v33));
  CMTimeMakeFromDictionary(&v33, Value);
  if (dword_1EB58E7C0)
  {
    v32 = 0;
    v31 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_1_104();
  }

  framingStatesProvider = self->_framingStatesProvider;
  v30 = v33;
  v11 = [(BWCinematicFramingStatesProvider *)framingStatesProvider copyCameraStatesForPTS:&v30, v26, v28];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_20;
  }

  v13 = *(v11 + 1);
  if (!v13 || (v14 = *(v11 + 2)) == 0)
  {
    v29 = v4;
    LODWORD(v27) = 0;
    FigDebugAssert3();
    goto LABEL_20;
  }

  v15 = v11[3];
  v16 = v11[4];
  v17 = v11[5];
  v18 = v11[6];
  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  if (!ImageBuffer)
  {
LABEL_20:
    newPixelBuffer = 0;
    goto LABEL_14;
  }

  v20 = ImageBuffer;
  v21 = *off_1E798B7A0;
  v22 = [(__CFDictionary *)v7 objectForKeyedSubscript:*off_1E798B7A0];
  if (v22)
  {
    CVBufferSetAttachment(v20, v21, v22, kCVAttachmentMode_ShouldPropagate);
  }

  newPixelBuffer = [(BWPixelBufferPool *)[(BWNodeOutputMediaProperties *)[(BWNodeOutput *)[(BWNode *)self output] primaryMediaProperties] livePixelBufferPool] newPixelBuffer];
  if (newPixelBuffer)
  {
    [(VCProcessor *)self->_vcProcessor setInputPixelBuffer:v20];
    [(VCProcessor *)self->_vcProcessor setInputCamera:v13];
    [(VCProcessor *)self->_vcProcessor setOutputPixelBuffer:newPixelBuffer];
    [(VCProcessor *)self->_vcProcessor setOutputCamera:v14];
    [(VCProcessor *)self->_vcProcessor setOutputROI:v15, v16, v17, v18];
    if ([(VCProcessor *)self->_vcProcessor process]|| [(VCProcessor *)self->_vcProcessor finishProcessing])
    {
      OUTLINED_FUNCTION_1_5();
      FigDebugAssert3();
    }

    else
    {
      BWCMSampleBufferCreateCopyWithNewPixelBuffer(buffer, newPixelBuffer, &v34, &v35);
      if (v35)
      {
        v24 = CMSampleBufferGetImageBuffer(buffer);
        CVBufferPropagateAttachments(v24, newPixelBuffer);
        FigCaptureCinematicFramingUpdateSampleBufferMetadata(self->_vcProcessor, v35, 0);
      }
    }
  }

LABEL_14:
  v25 = [(BWNode *)self output:v27];
  [(BWNodeOutput *)v25 emitSampleBuffer:v35];

  if (newPixelBuffer)
  {
    CFRelease(newPixelBuffer);
  }

  if (v35)
  {
    CFRelease(v35);
  }
}

@end