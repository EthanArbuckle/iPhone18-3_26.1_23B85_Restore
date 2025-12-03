@interface BWDepthRotatorNode
- (BWDepthRotatorNode)initWithRotationDegrees:(int)degrees separateDepthComponentsEnabled:(BOOL)enabled depthProvidedAsAttachedMedia:(BOOL)media;
- (uint64_t)_setupDepthMediaConfigurationForOutput:(uint64_t)output attachedMediaKey:;
- (uint64_t)_updateDepthOutputFormatRequirementsForInputFormat:(uint64_t)format pixelFormat:(uint64_t)pixelFormat attachedMediaKey:;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWDepthRotatorNode

- (BWDepthRotatorNode)initWithRotationDegrees:(int)degrees separateDepthComponentsEnabled:(BOOL)enabled depthProvidedAsAttachedMedia:(BOOL)media
{
  mediaCopy = media;
  v19.receiver = self;
  v19.super_class = BWDepthRotatorNode;
  v8 = [(BWNode *)&v19 init];
  v9 = v8;
  if (v8)
  {
    v8->_separateDepthComponentsEnabled = enabled;
    v8->_depthProvidedAsAttachedMedia = mediaCopy;
    v10 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v8];
    v11 = v10;
    if (mediaCopy)
    {
      [(BWNodeInput *)v10 setPassthroughMode:1];
      v12 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWNodeInput *)v11 setFormatRequirements:v12];
    }

    else
    {
      [(BWNodeInput *)v10 setPassthroughMode:0];
    }

    v13 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v13 setSupportedPixelFormats:&unk_1F2248970];
    if (mediaCopy)
    {
      v14 = objc_alloc_init(BWNodeInputMediaConfiguration);
      [(BWNodeInputMediaConfiguration *)v14 setFormatRequirements:v13];
      [(BWNodeInputMediaConfiguration *)v14 setPassthroughMode:0];
      [(BWNodeInput *)v11 setMediaConfiguration:v14 forAttachedMediaKey:@"Depth"];
    }

    else
    {
      [(BWNodeInput *)v11 setFormatRequirements:v13];
    }

    [(BWNode *)v9 addInput:v11];

    v15 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v9];
    v16 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWNodeOutput *)v15 setFormatRequirements:v16];

    [(BWNodeOutput *)v15 setPassthroughMode:mediaCopy];
    if (mediaCopy)
    {
      if (v9->_separateDepthComponentsEnabled)
      {
        v18 = BWAttachedMediaKey_DepthData_DX;
      }

      else
      {
        v18 = BWAttachedMediaKey_Depth;
      }

      [(BWDepthRotatorNode *)v9 _setupDepthMediaConfigurationForOutput:v15 attachedMediaKey:*v18];
    }

    if (v9->_separateDepthComponentsEnabled)
    {
      [(BWDepthRotatorNode *)v9 _setupDepthMediaConfigurationForOutput:v15 attachedMediaKey:@"DepthData_DY"];
    }

    [(BWNode *)v9 addOutput:v15];

    v9->_rotationDegrees = degrees;
  }

  return v9;
}

- (void)dealloc
{
  outputDepthFormatDescription = self->_outputDepthFormatDescription;
  if (outputDepthFormatDescription)
  {
    CFRelease(outputDepthFormatDescription);
  }

  outputDYFormatDescription = self->_outputDYFormatDescription;
  if (outputDYFormatDescription)
  {
    CFRelease(outputDYFormatDescription);
  }

  v5.receiver = self;
  v5.super_class = BWDepthRotatorNode;
  [(BWNode *)&v5 dealloc];
}

- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key
{
  if (self->_depthProvidedAsAttachedMedia)
  {
    if ([key isEqualToString:@"PrimaryFormat"])
    {
      output = self->super._output;

      [(BWNodeOutput *)output setFormat:format];
      return;
    }

    if (![key isEqualToString:@"Depth"])
    {
      v15.receiver = self;
      v15.super_class = BWDepthRotatorNode;
      [(BWNode *)&v15 didSelectFormat:format forInput:input forAttachedMediaKey:key];
      return;
    }

    if (!self->_separateDepthComponentsEnabled)
    {
      pixelFormat = [format pixelFormat];
      selfCopy2 = self;
      formatCopy2 = format;
      v11 = @"Depth";
      goto LABEL_11;
    }

    v10 = BWAttachedMediaKey_DepthData_DX;
  }

  else
  {
    if (!self->_separateDepthComponentsEnabled)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"At this point CTM excepts separate depth components enabled when source nodes depth output are enabled." userInfo:0]);
    }

    v10 = BWAttachedMediaKey_PrimaryFormat;
  }

  [(BWDepthRotatorNode *)self _updateDepthOutputFormatRequirementsForInputFormat:format pixelFormat:825306677 attachedMediaKey:*v10];
  v11 = @"DepthData_DY";
  selfCopy2 = self;
  formatCopy2 = format;
  pixelFormat = 1932996149;
LABEL_11:

  [(BWDepthRotatorNode *)selfCopy2 _updateDepthOutputFormatRequirementsForInputFormat:formatCopy2 pixelFormat:pixelFormat attachedMediaKey:v11];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  bufferCopy = buffer;
  cf = 0;
  target = 0;
  ++self->_bufferSerialNumber;
  AttachedMedia = buffer;
  if (self->_depthProvidedAsAttachedMedia)
  {
    AttachedMedia = BWSampleBufferGetAttachedMedia(buffer, @"Depth");
  }

  if (!AttachedMedia)
  {
    v10 = 0;
    v24 = 0;
    goto LABEL_36;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
  if (!ImageBuffer)
  {
    [BWDepthRotatorNode renderSampleBuffer:forInput:];
    v10 = 0;
    goto LABEL_50;
  }

  v8 = ImageBuffer;
  if (self->_depthProvidedAsAttachedMedia)
  {
    if (self->_separateDepthComponentsEnabled)
    {
      v9 = BWAttachedMediaKey_DepthData_DX;
    }

    else
    {
      v9 = BWAttachedMediaKey_Depth;
    }
  }

  else
  {
    v9 = BWAttachedMediaKey_PrimaryFormat;
  }

  v10 = [objc_msgSend(-[BWNodeOutput mediaPropertiesForAttachedMediaKey:](self->super._output mediaPropertiesForAttachedMediaKey:{*v9), "livePixelBufferPool"), "newPixelBuffer"}];
  if (!v10)
  {
    goto LABEL_50;
  }

  rotationDegrees = self->_rotationDegrees;
  if (rotationDegrees <= 179)
  {
    if (rotationDegrees)
    {
      if (rotationDegrees != 90)
      {
        goto LABEL_49;
      }

      goto LABEL_18;
    }

LABEL_17:
    Width = CVPixelBufferGetWidth(v8);
    Height = CVPixelBufferGetHeight(v8);
    goto LABEL_19;
  }

  if (rotationDegrees != 270)
  {
    if (rotationDegrees != 180)
    {
LABEL_49:
      [BWDepthRotatorNode renderSampleBuffer:forInput:];
LABEL_50:
      v24 = 0;
LABEL_51:
      if (target)
      {
        CFRelease(target);
        target = 0;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      CMSampleBufferGetPresentationTimeStamp(&v34, bufferCopy);
      v32 = [BWDroppedSample newDroppedSampleWithReason:0x1F219C050 pts:&v34];
      [(BWNodeOutput *)self->super._output emitDroppedSample:v32];

      goto LABEL_56;
    }

    goto LABEL_17;
  }

LABEL_18:
  Width = CVPixelBufferGetHeight(v8);
  Height = CVPixelBufferGetWidth(v8);
LABEL_19:
  v14 = Height;
  v15 = CVPixelBufferGetWidth(v10);
  v16 = CVPixelBufferGetHeight(v10);
  if (Width != v15 || v14 != v16)
  {
    v24 = 0;
    if (![BWDepthRotatorNode renderSampleBuffer:forInput:])
    {
      goto LABEL_51;
    }

    goto LABEL_36;
  }

  v18 = FigCaptureConvertRotationAndMirroringToExifOrientation(self->_rotationDegrees, 0);
  FigDepthRotateBuffer(v8, v10, v18);
  if (BWCMSampleBufferCreateCopyWithNewPixelBuffer(AttachedMedia, v10, &self->_outputDepthFormatDescription, &target))
  {
    [BWDepthRotatorNode renderSampleBuffer:forInput:];
    goto LABEL_50;
  }

  v33 = bufferCopy;
  v19 = *off_1E798A328;
  CMRemoveAttachment(target, *off_1E798A328);
  v20 = CMGetAttachment(AttachedMedia, v19, 0);
  v21 = *off_1E798ABA8;
  v22 = [v20 objectForKeyedSubscript:*off_1E798ABA8];
  v23 = v22;
  if (self->_separateDepthComponentsEnabled && !v22)
  {
    [BWDepthRotatorNode renderSampleBuffer:forInput:];
    v24 = 0;
    goto LABEL_75;
  }

  if (!v22)
  {
    v24 = 0;
    bufferCopy = v33;
    goto LABEL_36;
  }

  v24 = [objc_msgSend(-[BWNodeOutput mediaPropertiesForAttachedMediaKey:](self->super._output mediaPropertiesForAttachedMediaKey:{@"DepthData_DY", "livePixelBufferPool"), "newPixelBuffer"}];
  if (!v24)
  {
LABEL_75:
    bufferCopy = v33;
    goto LABEL_51;
  }

  if (FigDepthRotateBuffer(v23, v24, v18))
  {
    [BWDepthRotatorNode renderSampleBuffer:forInput:];
    goto LABEL_75;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v26 = *off_1E798ABA0;
  if ([v20 objectForKeyedSubscript:*off_1E798ABA0])
  {
    [dictionary setObject:objc_msgSend(v20 forKeyedSubscript:{"objectForKeyedSubscript:", v26), v26}];
  }

  if (!self->_separateDepthComponentsEnabled)
  {
    [dictionary setObject:v24 forKeyedSubscript:v21];
    p_target = &target;
    bufferCopy = v33;
LABEL_34:
    CMSetAttachment(*p_target, v19, dictionary, 1u);
    goto LABEL_36;
  }

  bufferCopy = v33;
  if (BWCMSampleBufferCreateCopyWithNewPixelBuffer(AttachedMedia, v24, &self->_outputDYFormatDescription, &cf))
  {
    [BWDepthRotatorNode renderSampleBuffer:forInput:];
    goto LABEL_51;
  }

  p_target = &cf;
  if (![(BWDepthRotatorNode *)&cf renderSampleBuffer:v19 forInput:v21, dictionary])
  {
    goto LABEL_34;
  }

LABEL_36:
  if (!self->_depthProvidedAsAttachedMedia)
  {
    if (!target || (BWSampleBufferSetAttachedMedia(target, @"DepthData_DY", cf), (v30 = target) == 0))
    {
      v31 = 0;
      goto LABEL_59;
    }

    goto LABEL_45;
  }

  v28 = @"Depth";
  if (self->_separateDepthComponentsEnabled)
  {
    BWSampleBufferRemoveAttachedMedia(bufferCopy, @"Depth");
    BWSampleBufferSetAttachedMedia(bufferCopy, @"DepthData_DX", target);
    v28 = @"DepthData_DY";
    v29 = cf;
  }

  else
  {
    v29 = target;
  }

  BWSampleBufferSetAttachedMedia(bufferCopy, v28, v29);
  if (bufferCopy)
  {
    v30 = bufferCopy;
LABEL_45:
    v31 = CFRetain(v30);
    goto LABEL_57;
  }

LABEL_56:
  v31 = 0;
LABEL_57:
  if (target)
  {
    CFRelease(target);
  }

LABEL_59:
  if (v10)
  {
    CFRelease(v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v31)
  {
    [(BWNodeOutput *)self->super._output emitSampleBuffer:bufferCopy];
    CFRelease(v31);
  }
}

- (void)didReachEndOfDataForInput:(id)input
{
  v3.receiver = self;
  v3.super_class = BWDepthRotatorNode;
  [(BWNode *)&v3 didReachEndOfDataForInput:input];
}

- (uint64_t)_setupDepthMediaConfigurationForOutput:(uint64_t)output attachedMediaKey:
{
  if (result)
  {
    v5 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    [(BWNodeOutputMediaConfiguration *)v5 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeOutputMediaConfiguration *)v5 setPassthroughMode:0];
    [(BWNodeOutputMediaConfiguration *)v5 setProvidesPixelBufferPool:1];

    return [a2 setMediaConfiguration:v5 forAttachedMediaKey:output];
  }

  return result;
}

- (uint64_t)_updateDepthOutputFormatRequirementsForInputFormat:(uint64_t)format pixelFormat:(uint64_t)pixelFormat attachedMediaKey:
{
  if (result)
  {
    v6 = result;
    [objc_msgSend(*(result + 16) mediaConfigurationForAttachedMediaKey:{pixelFormat), "formatRequirements"}];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:format];
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
    [OUTLINED_FUNCTION_4() setSupportedPixelFormats:?];
    v7 = *(v6 + 156);
    if (v7 == 270 || v7 == 90)
    {
      [a2 height];
      [OUTLINED_FUNCTION_4() setWidth:?];
      [a2 width];
    }

    else
    {
      [a2 width];
      [OUTLINED_FUNCTION_4() setWidth:?];
      [a2 height];
    }

    return [OUTLINED_FUNCTION_4() setHeight:?];
  }

  return result;
}

- (uint64_t)renderSampleBuffer:forInput:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (BOOL)renderSampleBuffer:forInput:.cold.5()
{
  fig_log_get_emitter();
  FigDebugAssert3();
  fig_log_get_emitter();
  return FigSignalErrorAtGM() == 0;
}

- (uint64_t)renderSampleBuffer:forInput:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (BOOL)renderSampleBuffer:(const void *)a3 forInput:(void *)a4 .cold.8(CMAttachmentBearerRef *a1, const __CFString *a2, const void *a3, void *a4)
{
  CMRemoveAttachment(*a1, a2);
  CMSetAttachment(*a1, @"DepthPixelBufferType", a3, 1u);
  return [a4 count] == 0;
}

@end