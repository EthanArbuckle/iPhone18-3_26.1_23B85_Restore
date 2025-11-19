@interface BWVideoDefringingNode
- (BWVideoDefringingNode)initWithSensorIDString:(id)a3 portType:(id)a4 propagateSynchronizedSlaveFrame:(BOOL)a5 isSlomo:(BOOL)a6;
- (uint64_t)_loadAndConfigureVideoDefringingBundle;
- (uint64_t)_processorOptions;
- (uint64_t)prepareForCurrentConfigurationToBecomeLive;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)a3;
- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
@end

@implementation BWVideoDefringingNode

- (BWVideoDefringingNode)initWithSensorIDString:(id)a3 portType:(id)a4 propagateSynchronizedSlaveFrame:(BOOL)a5 isSlomo:(BOOL)a6
{
  v7 = a5;
  v18.receiver = self;
  v18.super_class = BWVideoDefringingNode;
  v10 = [(BWNode *)&v18 init];
  v11 = v10;
  if (v10)
  {
    v10->_isSlomo = a6;
    v10->_propagateSynchronizedSlaveFrame = v7;
    v12 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v10];
    v13 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v13 setSupportedPixelFormats:&unk_1F22488B0];
    [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v12 primaryMediaConfiguration] setFormatRequirements:v13];
    [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v12 primaryMediaConfiguration] setPassthroughMode:2];
    if (v7)
    {
      v14 = objc_alloc_init(BWNodeInputMediaConfiguration);
      [(BWNodeInputMediaConfiguration *)v14 setFormatRequirements:v13];
      [(BWNodeInputMediaConfiguration *)v14 setPassthroughMode:2];
      [(BWNodeInput *)v12 setMediaConfiguration:v14 forAttachedMediaKey:@"SynchronizedSlaveFrame"];
    }

    [(BWNode *)v11 addInput:v12];

    v15 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v11];
    [(BWNodeOutput *)v15 setFormatRequirements:v13];
    [(BWNodeOutput *)v15 setPassthroughMode:2];
    [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v15 primaryMediaConfiguration] setFormatRequirements:v13];
    [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v15 primaryMediaConfiguration] setPassthroughMode:2];
    [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v15 primaryMediaConfiguration] setProvidesPixelBufferPool:1];
    if (v7)
    {
      v16 = objc_alloc_init(BWNodeOutputMediaConfiguration);
      [(BWNodeOutputMediaConfiguration *)v16 setFormatRequirements:v13];
      [(BWNodeOutputMediaConfiguration *)v16 setPassthroughMode:2];
      [(BWNodeOutputMediaConfiguration *)v16 setProvidesPixelBufferPool:1];
      [(BWNodeOutput *)v15 setMediaConfiguration:v16 forAttachedMediaKey:@"SynchronizedSlaveFrame"];
    }

    [(BWNode *)v11 addOutput:v15];

    v11->_cameraToDefringe = a4;
    v11->_sensorIDString = a3;
    v11->_portType = a4;
    v11->_limitedGMErrorLogger = [[BWLimitedGMErrorLogger alloc] initWithName:@"BWVideoDefringingNode" maxLoggingCount:10];
  }

  return v11;
}

- (void)dealloc
{
  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  v4.receiver = self;
  v4.super_class = BWVideoDefringingNode;
  [(BWNode *)&v4 dealloc];
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5
{
  if (([a5 isEqualToString:@"PrimaryFormat"] & 1) != 0 || objc_msgSend(a5, "isEqualToString:", @"SynchronizedSlaveFrame"))
  {
    v9 = [(BWNodeOutput *)self->super._output mediaPropertiesForAttachedMediaKey:a5];
    if (!v9)
    {
      if ([a5 isEqualToString:@"PrimaryFormat"])
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ output %@ has no media properties for the primary format (provided media key is %@)", self, self->super._output, a5];
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v10 userInfo:0]);
      }

      v9 = objc_alloc_init(BWNodeOutputMediaProperties);
      [(BWNodeOutput *)self->super._output _setMediaProperties:v9 forAttachedMediaKey:a5];
    }

    [(BWNodeOutputMediaProperties *)v9 setResolvedFormat:a3];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = BWVideoDefringingNode;
    [(BWNode *)&v11 didSelectFormat:a3 forInput:a4 forAttachedMediaKey:a5];
  }
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v3.receiver = self;
  v3.super_class = BWVideoDefringingNode;
  [(BWNode *)&v3 prepareForCurrentConfigurationToBecomeLive];
  if ([(BWVideoDefringingNode *)self _loadAndConfigureVideoDefringingBundle])
  {
    [BWVideoDefringingNode prepareForCurrentConfigurationToBecomeLive];
  }
}

- (void)didReachEndOfDataForInput:(id)a3
{
  [(BWLimitedGMErrorLogger *)self->_limitedGMErrorLogger resetCurrentLoggingCounter];
  output = self->super._output;

  [(BWNodeOutput *)output markEndOfLiveOutput];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  cf = 0;
  target = 0;
  v21 = 0;
  v22 = 0;
  if (BWSampleBufferIsMarkerBuffer(a3))
  {
    [(BWNodeOutput *)self->super._output emitSampleBuffer:a3];
    limitedGMErrorLogger = self->_limitedGMErrorLogger;

    [(BWLimitedGMErrorLogger *)limitedGMErrorLogger resetCurrentLoggingCounter];
    return;
  }

  v7 = BWOverCaptureSampleBufferUnpackAndRetain(a3, 0, &target, &cf, 0, 0);
  if (v7)
  {
    CopyWithNewPixelBuffer = v7;
    [BWVideoDefringingNode renderSampleBuffer:forInput:];
    v12 = 0;
    v17 = 0;
    goto LABEL_25;
  }

  v8 = *off_1E798A3C8;
  v9 = CMGetAttachment(target, *off_1E798A3C8, 0);
  v10 = CMGetAttachment(cf, v8, 0);
  v11 = *off_1E798B540;
  if ([objc_msgSend(v9 objectForKeyedSubscript:{*off_1E798B540), "isEqualToString:", self->_cameraToDefringe}])
  {
    v12 = [objc_msgSend(-[BWNodeOutput mediaPropertiesForAttachedMediaKey:](self->super._output mediaPropertiesForAttachedMediaKey:{@"SynchronizedSlaveFrame", "livePixelBufferPool"), "newPixelBuffer"}];
    [(FigVideoDefringingProcessor *)self->_videoDefringingProcessor setInputSampleBuffer:target];
    [(FigVideoDefringingProcessor *)self->_videoDefringingProcessor setOutputPixelBuffer:v12];
    v13 = [(FigVideoDefringingProcessor *)self->_videoDefringingProcessor process];
    if (!v13 && self->_videoDefringingProcessor)
    {
      CopyWithNewPixelBuffer = BWCMSampleBufferCreateCopyWithNewPixelBuffer(target, v12, &self->_outputFormatDescription, &v22);
      ImageBuffer = CMSampleBufferGetImageBuffer(target);
      CVBufferPropagateAttachments(ImageBuffer, v12);
      goto LABEL_15;
    }

    [(BWLimitedGMErrorLogger *)self->_limitedGMErrorLogger logErrorNumber:v13 errorString:@"defringed Wide Failed"];
    v14 = CFRetain(target);
LABEL_11:
    CopyWithNewPixelBuffer = 0;
    v22 = v14;
    goto LABEL_15;
  }

  if (target)
  {
    v14 = CFRetain(target);
    v12 = 0;
    goto LABEL_11;
  }

  v12 = 0;
  CopyWithNewPixelBuffer = 0;
LABEL_15:
  if ([objc_msgSend(v10 objectForKeyedSubscript:{v11), "isEqualToString:", self->_cameraToDefringe}])
  {
    v17 = [(BWPixelBufferPool *)[(BWNodeOutput *)self->super._output livePixelBufferPool] newPixelBuffer];
    [(FigVideoDefringingProcessor *)self->_videoDefringingProcessor setInputSampleBuffer:cf];
    [(FigVideoDefringingProcessor *)self->_videoDefringingProcessor setOutputPixelBuffer:v17];
    v18 = [(FigVideoDefringingProcessor *)self->_videoDefringingProcessor process];
    if (v18 || !self->_videoDefringingProcessor)
    {
      [(BWLimitedGMErrorLogger *)self->_limitedGMErrorLogger logErrorNumber:v18 errorString:@"defringed Narrow Failed"];
      v21 = CFRetain(cf);
    }

    else
    {
      CopyWithNewPixelBuffer = BWCMSampleBufferCreateCopyWithNewPixelBuffer(cf, v17, &self->_outputFormatDescription, &v21);
      v19 = CMSampleBufferGetImageBuffer(cf);
      CVBufferPropagateAttachments(v19, v17);
    }
  }

  else
  {
    v17 = 0;
    if (cf)
    {
      v21 = CFRetain(cf);
    }
  }

  if (v22)
  {
    BWSampleBufferSetAttachedMedia(v21, @"SynchronizedSlaveFrame", v22);
  }

  if (!CopyWithNewPixelBuffer)
  {
    [(BWNodeOutput *)self->super._output emitSampleBuffer:v21];
    goto LABEL_27;
  }

LABEL_25:
  CMSampleBufferGetPresentationTimeStamp(&v20, a3);
  [(BWNodeOutput *)self->super._output emitDroppedSample:[BWDroppedSample newDroppedSampleWithReason:0x1F219C010 pts:&v20]];
  [(BWLimitedGMErrorLogger *)self->_limitedGMErrorLogger logErrorNumber:CopyWithNewPixelBuffer errorString:@"Error : Emitting dropped buffer"];
LABEL_27:
  if (target)
  {
    CFRelease(target);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v17)
  {
    CFRelease(v17);
  }
}

- (uint64_t)_loadAndConfigureVideoDefringingBundle
{
  v1 = a1;
  if (!a1)
  {
    return v1;
  }

  v14 = 0;
  v2 = [(BWVideoDefringingNode *)a1 _processorOptions];
  v3 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/VideoProcessors/VideoDefringing.bundle"];
  if (!v3)
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_2();
    FigDebugAssert3();
    OUTLINED_FUNCTION_2();
    return FigSignalErrorAtGM();
  }

  v4 = v3;
  if (![v3 loadAndReturnError:&v14])
  {
    return 4294954510;
  }

  v5 = [v4 classNamed:@"FigVideoDefringingProcessor"];
  if (!v5)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    FigDebugAssert3();
    return 0;
  }

  v6 = [[v5 alloc] initWithCommandQueue:0];
  *(v1 + 168) = v6;
  if (!v6)
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_2();
    FigDebugAssert3();
    OUTLINED_FUNCTION_2();
    return FigSignalErrorAtGM();
  }

  v7 = [OUTLINED_FUNCTION_2_61() width];
  v8 = [OUTLINED_FUNCTION_2_61() height];
  v9 = [OUTLINED_FUNCTION_2_61() width];
  v10 = [OUTLINED_FUNCTION_2_61() height];
  v11 = *(v1 + 168);
  v13[0] = v7;
  v13[1] = v8;
  v13[2] = v9;
  v13[3] = v10;
  [v11 setDefringeConfig:v13];
  [*(v1 + 168) setOptions:v2];
  v1 = [*(v1 + 168) prepareToProcess:*(v1 + 128) ^ 1u];
  if (v1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    FigDebugAssert3();
  }

  return v1;
}

- (uint64_t)_processorOptions
{
  if (result)
  {
    v1 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters chromaticDefringingParametersForPortType:"chromaticDefringingParametersForPortType:sensorIDString:" sensorIDString:*(result + 144), *(result + 136)];
    if (v1)
    {
      v2 = *off_1E798A9D0;
      v3 = v1;
      return [MEMORY[0x1E695DF20] dictionaryWithObjects:&v3 forKeys:&v2 count:1];
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_6();
      FigDebugAssert3();
      return 0;
    }
  }

  return result;
}

- (uint64_t)prepareForCurrentConfigurationToBecomeLive
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

@end