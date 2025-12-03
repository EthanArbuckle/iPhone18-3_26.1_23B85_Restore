@interface BWNoiseReducerNode
- (BWNoiseReducerNode)initWithCameraTuningDictionary:(id)dictionary sensorIDDictionary:(id)dDictionary;
- (BWVideoFormatRequirements)_outputRequirementsForInputFormat:(uint64_t)format;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWNoiseReducerNode

- (BWNoiseReducerNode)initWithCameraTuningDictionary:(id)dictionary sensorIDDictionary:(id)dDictionary
{
  v15.receiver = self;
  v15.super_class = BWNoiseReducerNode;
  v6 = [(BWNode *)&v15 init];
  if (v6)
  {
    v8 = [dDictionary objectForKeyedSubscript:@"ChromaNoiseReduction"];
    v9 = objc_alloc(MEMORY[0x1E695DF90]);
    v10 = [v9 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", 1), @"Synchronization", 0}];
    v11 = v10;
    if (v8)
    {
      [(NSDictionary *)v10 setObject:v8 forKeyedSubscript:@"ChromaNoiseReductionTuningParameters"];
    }

    v6->_noiseReductionOptions = v11;
    v6->_cameraTuningOptions = dictionary;
    v6->_contextSynchronization = 3;
    *&v6->_threaded = 1;
    v6->_gpuPriority = 0;
    v6->_useInPlaceAlgorithm = !noiseReductionRequiresOutputSampleBuffer(dictionary);
    v12 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v6];
    v13 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v13 setSupportedPixelFormats:&unk_1F2248B80];
    [(BWNodeInput *)v12 setFormatRequirements:v13];
    [(BWNodeInput *)v12 setPassthroughMode:v6->_useInPlaceAlgorithm];

    [(BWNode *)v6 addInput:v12];
    v14 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v6];
    [(BWNodeOutput *)v14 setFormatRequirements:[(BWNoiseReducerNode *)v6 _outputRequirementsForInputFormat:?]];
    [(BWNodeOutput *)v14 setPassthroughMode:v6->_useInPlaceAlgorithm];
    [(BWNode *)v6 addOutput:v14];
  }

  return v6;
}

- (void)dealloc
{
  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  noiseReductionReleaseBuffers(self->_context);
  noiseReductionContextDestroy(self->_context);
  v4.receiver = self;
  v4.super_class = BWNoiseReducerNode;
  [(BWNode *)&v4 dealloc];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v3.receiver = self;
  v3.super_class = BWNoiseReducerNode;
  [(BWNode *)&v3 prepareForCurrentConfigurationToBecomeLive];
  self->_context = noiseReductionContextCreateWithOptions(self->_contextSynchronization, self->_gpuPriority, self->_cameraTuningOptions);
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  if (format)
  {
    outputFormatDescription = self->_outputFormatDescription;
    if (outputFormatDescription)
    {
      CFRelease(outputFormatDescription);
      self->_outputFormatDescription = 0;
    }
  }

  v10.receiver = self;
  v10.super_class = BWNoiseReducerNode;
  [(BWNode *)&v10 configurationWithID:d updatedFormat:format didBecomeLiveForInput:input];
}

- (void)didReachEndOfDataForInput:(id)input
{
  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
    self->_outputFormatDescription = 0;
  }

  noiseReductionReleaseBuffers(self->_context);
  noiseReductionContextDestroy(self->_context);
  self->_context = 0;
  v6.receiver = self;
  v6.super_class = BWNoiseReducerNode;
  [(BWNode *)&v6 didReachEndOfDataForInput:input];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  noiseReductionOptions = self->_noiseReductionOptions;
  v43 = 0;
  v7 = CMGetAttachment(buffer, @"StillSettings", 0);
  v8 = v7;
  if (!v7)
  {
    cf = noiseReductionOptions;
    [BWNoiseReducerNode renderSampleBuffer:forInput:];
    v25 = 0;
    v23 = 0;
    v42 = 0;
    v13 = 0;
    v26 = 0;
    v27 = 4294954516;
    goto LABEL_22;
  }

  if ([objc_msgSend(v7 "requestedSettings")])
  {
    v9 = noiseReductionOptions;
    v10 = *off_1E798A3C8;
    value = CMGetAttachment(buffer, *off_1E798A3C8, 0);
    v11 = value;
    v12 = CMGetAttachment(buffer, @"NoiseReductionAlternateMetadata", 0);
    v13 = v12;
    if (v12)
    {
      v14 = v12;
      CMSetAttachment(buffer, v10, v13, 1u);
    }

    v15 = *off_1E798D3A8;
    v16 = CMGetAttachment(buffer, *off_1E798D3A8, 0);
    v42 = v16 != 0;
    if (v16)
    {
      v17 = v16;
      v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:self->_noiseReductionOptions];
      v19 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:{-[NSDictionary objectForKeyedSubscript:](self->_noiseReductionOptions, "objectForKeyedSubscript:", @"ChromaNoiseReductionTuningParameters"}];
      v20 = v17;
      v21 = v18;
      [v20 floatValue];
      [v19 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:"), v15}];
      v22 = v18;
      v23 = v19;
      [v22 setObject:v19 forKeyedSubscript:@"ChromaNoiseReductionTuningParameters"];
    }

    else
    {
      v23 = 0;
      v21 = v9;
    }

    cf = v21;
    if (self->_useInPlaceAlgorithm)
    {
      v27 = noiseReductionWithTuningOptions(self->_context, buffer, self->_processLuma, self->_threaded, v21);
      v25 = 0;
      v43 = CFRetain(buffer);
      if (!v13)
      {
        goto LABEL_21;
      }

      goto LABEL_17;
    }

    ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
    newPixelBuffer = [(BWPixelBufferPool *)[(BWNodeOutput *)self->super._output livePixelBufferPool] newPixelBuffer];
    v25 = newPixelBuffer;
    if (!newPixelBuffer)
    {
      [BWNoiseReducerNode renderSampleBuffer:forInput:];
      v27 = 4294954510;
      goto LABEL_28;
    }

    CMSetAttachment(newPixelBuffer, @"InputPixelBufferForAsyncNR", ImageBuffer, 0);
    BWCMSampleBufferCreateCopyWithNewPixelBuffer(buffer, v25, &self->_outputFormatDescription, &v43);
    v30 = noiseReductionInOutWithTuningOptions(self->_context, buffer, v43, self->_processLuma, self->_threaded, v21);
    if (v30)
    {
      v31 = v30;
      [BWNoiseReducerNode renderSampleBuffer:forInput:];
      v27 = v31;
    }

    else
    {
      v27 = 0;
      if (v13)
      {
LABEL_17:
        v26 = value;
        CMSetAttachment(v43, v10, value, 1u);
        goto LABEL_22;
      }
    }

LABEL_21:
    v26 = value;
    goto LABEL_22;
  }

  cf = noiseReductionOptions;
  v24 = CFRetain(buffer);
  v25 = 0;
  v23 = 0;
  v42 = 0;
  v13 = 0;
  v26 = 0;
  v27 = 0;
  v43 = v24;
LABEL_22:
  if (!v43 || v27 == -12786 || v27 == -12783)
  {
    value = v26;
LABEL_28:
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v36 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v36, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWNoiseReducerNode.m", 267, @"LastShownDate:BWNoiseReducerNode.m:267", @"LastShownBuild:BWNoiseReducerNode.m:267", 0);
    free(v36);
    v26 = value;
    v37 = [BWNodeError newError:v27 sourceNode:self stillImageSettings:v8 metadata:value];
    [(BWNodeOutput *)self->super._output emitNodeError:v37];

    v38 = MEMORY[0x1E695FF58];
    if (!v42)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (v27)
  {
    v32 = FigCaptureGetFrameworkRadarComponent();
    v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v39 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v32, v39, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWNoiseReducerNode.m", 275, @"LastShownDate:BWNoiseReducerNode.m:275", @"LastShownBuild:BWNoiseReducerNode.m:275", 0);
    free(v39);
  }

  [(BWNodeOutput *)self->super._output emitSampleBuffer:?];
  v38 = MEMORY[0x1E695FF58];
  if (v42)
  {
LABEL_31:
    if (cf)
    {
      CFRelease(cf);
    }
  }

LABEL_33:
  if (v23)
  {
    CFRelease(v23);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  if (*v38 == 1)
  {
    kdebug_trace();
  }
}

- (BWVideoFormatRequirements)_outputRequirementsForInputFormat:(uint64_t)format
{
  if (!format)
  {
    return 0;
  }

  v3 = objc_alloc_init(BWVideoFormatRequirements);
  v4 = v3;
  if (a2)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a2, "pixelFormat")}];
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
    [OUTLINED_FUNCTION_17() setSupportedPixelFormats:?];
    [a2 width];
    [OUTLINED_FUNCTION_17() setWidth:?];
    [a2 height];
    [OUTLINED_FUNCTION_17() setHeight:?];
  }

  else
  {
    [(BWVideoFormatRequirements *)v3 setSupportedPixelFormats:&unk_1F2248B98];
  }

  +[BWVideoFormatRequirements cacheModesForOptimizedHWAccess];
  [OUTLINED_FUNCTION_17() setSupportedCacheModes:?];
  if ([a2 colorSpaceProperties])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a2, "colorSpaceProperties")}];
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  [(BWVideoFormatRequirements *)v4 setSupportedColorSpaceProperties:v5];
  return v4;
}

- (void)didSelectFormat:(id)format forInput:(id)input
{
  [(BWNodeOutput *)self->super._output setFormatRequirements:[(BWNoiseReducerNode *)self _outputRequirementsForInputFormat:format]];
  if (self->_useInPlaceAlgorithm)
  {
    output = self->super._output;

    [(BWNodeOutput *)output setFormat:format];
  }
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

@end