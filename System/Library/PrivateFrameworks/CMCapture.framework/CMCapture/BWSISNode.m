@interface BWSISNode
- (id)_initWithCameraTuningDictionary:(id)a3 sensorIDDictionary:(id)a4 sbpCreationFunction:(void *)a5 fusionScheme:(int)a6 allowExperimentalOverrides:(BOOL)a7;
- (uint64_t)_setupSampleBufferProcessor;
- (uint64_t)_unpackSISOptions;
- (uint64_t)prepareForCurrentConfigurationToBecomeLive;
- (void)_clearCaptureRequestState;
- (void)_sampleBufferProcessorOutputReady:(const void *)a3 sampleBuffer:;
- (void)dealloc;
- (void)didSelectFormat:(id)a3 forInput:(id)a4;
- (void)handleNodeError:(id)a3 forInput:(id)a4;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
@end

@implementation BWSISNode

- (void)dealloc
{
  sampleBufferProcessor = self->_sampleBufferProcessor;
  if (sampleBufferProcessor)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v4)
    {
      v4(sampleBufferProcessor, 0, 0);
    }

    FigBaseObject = FigSampleBufferProcessorGetFigBaseObject();
    if (FigBaseObject)
    {
      v6 = FigBaseObject;
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v7)
      {
        v7(v6);
      }
    }

    v8 = self->_sampleBufferProcessor;
    if (v8)
    {
      CFRelease(v8);
      self->_sampleBufferProcessor = 0;
    }
  }

  [(BWSISNode *)self _clearCaptureRequestState];

  v9.receiver = self;
  v9.super_class = BWSISNode;
  [(BWNode *)&v9 dealloc];
}

- (id)_initWithCameraTuningDictionary:(id)a3 sensorIDDictionary:(id)a4 sbpCreationFunction:(void *)a5 fusionScheme:(int)a6 allowExperimentalOverrides:(BOOL)a7
{
  if (a6 >= 2)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"StillImageStabilization node supports only SeparateFusionAndNoiseReduction and TemporalMultiBandNoiseReduction fusion schemes!" userInfo:0]);
  }

  v20.receiver = self;
  v20.super_class = BWSISNode;
  v11 = [(BWNode *)&v20 init];
  if (v11)
  {
    v11->_cameraTuningDictionary = a3;
    v11->_sensorIDDictionary = a4;
    v11->_fusionScheme = a6;
    v11->_allowExperimentalOverrides = 0;
    if ([(BWSISNode *)v11 _unpackSISOptions])
    {

      return 0;
    }

    else
    {
      v11->_createSampleBufferProcessorFunction = a5;
      v13 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v11];
      v14 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v14 setSupportedPixelFormats:&unk_1F2248D48];
      [(BWNodeInput *)v13 setFormatRequirements:v14];
      v15 = v11->_oisBracketCount + 1;
      sisBracketCount = v11->_sisBracketCount;
      if (v15 <= sisBracketCount + 1)
      {
        v17 = (sisBracketCount + 1);
      }

      else
      {
        v17 = v15;
      }

      [(BWNodeInput *)v13 setRetainedBufferCount:v17];

      [(BWNode *)v11 addInput:v13];
      v18 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v11];
      v19 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v19 setSupportedPixelFormats:&unk_1F2248D60];
      [(BWNodeOutput *)v18 setProvidesPixelBufferPool:0];
      [(BWNodeOutput *)v18 setFormatRequirements:v19];

      [(BWNode *)v11 addOutput:v18];
      v11->_lastFusionTypeUsed = 0;
    }
  }

  return v11;
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4
{
  v6 = objc_alloc_init(BWVideoFormatRequirements);
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a3, "pixelFormat")}];
  -[BWVideoFormatRequirements setSupportedPixelFormats:](v6, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1]);
  -[BWVideoFormatRequirements setWidth:](v6, "setWidth:", [a3 width]);
  -[BWVideoFormatRequirements setHeight:](v6, "setHeight:", [a3 height]);
  [(BWVideoFormatRequirements *)v6 setSupportedCacheModes:+[BWVideoFormatRequirements cacheModesForOptimizedHWAccess]];
  if ([a3 colorSpaceProperties])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a3, "colorSpaceProperties")}];
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  }

  else
  {
    v7 = 0;
  }

  [(BWVideoFormatRequirements *)v6 setSupportedColorSpaceProperties:v7];
  [(BWNodeOutput *)self->super._output setFormatRequirements:v6];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v10.receiver = self;
  v10.super_class = BWSISNode;
  [(BWNode *)&v10 prepareForCurrentConfigurationToBecomeLive];
  if (!self->_sampleBufferProcessor && [(BWSISNode *)self _setupSampleBufferProcessor])
  {
    [BWSISNode prepareForCurrentConfigurationToBecomeLive];
  }

  if (self->_allowAllocationsAtPrepareTime && self->_sampleBufferProcessor && ![(BWSISNode *)self livePhotoSupported])
  {
    if ([(BWSISNode *)self OISSupported])
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    self->_lastFusionTypeUsed = v3;
    v4 = [MEMORY[0x1E696AD98] numberWithInt:?];
    FigBaseObject = FigSampleBufferProcessorGetFigBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6)
    {
      v6(FigBaseObject, *off_1E798D3B0, v4);
    }

    v7 = [(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] pixelBufferAttributes];
    v8 = FigSampleBufferProcessorGetFigBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v9)
    {
      v9(v8, *off_1E798A9E8, v7);
    }
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  if (!a3 || !self->_sampleBufferProcessor)
  {
    return;
  }

  v6 = CMGetAttachment(a3, @"StillImageSettings", 0);
  if (!v6)
  {
    [BWSISNode renderSampleBuffer:forInput:];
    return;
  }

  if (!self->_currentCaptureSettings)
  {
    self->_currentCaptureSettings = v6;
  }

  v7 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  if (!v7)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v30 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v30, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWSISNode.m", 282, @"LastShownDate:BWSISNode.m:282", @"LastShownBuild:BWSISNode.m:282", 0);
LABEL_40:
    free(v30);
    return;
  }

  v8 = v7;
  v9 = [objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798B1B8), "intValue"}];
  v10 = [objc_msgSend(v8 objectForKeyedSubscript:{*off_1E798B558), "BOOLValue"}];
  v11 = [objc_msgSend(CMGetAttachment(a3 @"BWStillImageCaptureSettings"];
  if (!v11)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    v28 = FigCaptureGetFrameworkRadarComponent();
    v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v30 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v28, v30, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWSISNode.m", 296, @"LastShownDate:BWSISNode.m:296", @"LastShownBuild:BWSISNode.m:296", 0);
    goto LABEL_40;
  }

  v12 = v11;
  v13 = [v11 providePreBracketedEV0];
  v14 = [v12 bracketFrameCount];
  v15 = [CMGetAttachment(a3 @"StillImageCaptureType"];
  if (v15 == 4)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  if (v15 == 5)
  {
    v13 &= !self->_alwaysRequestsPreBracketedEV0;
  }

  if ((self->_lastFusionTypeUsed & ~v16) != 0)
  {
    [BWSISNode renderSampleBuffer:self forInput:?];
  }

  self->_lastFusionTypeUsed = v16;
  if (!self->_numberFramesReceived)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithInt:v16];
    FigBaseObject = FigSampleBufferProcessorGetFigBaseObject();
    v23 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v23)
    {
      v23(FigBaseObject, *off_1E798D3B0, v21);
    }
  }

  if (v10)
  {
    if (v13 & 1 | !self->_alwaysRequestsPreBracketedEV0)
    {
      self->_preBracketedFrameReceived = 1;
      sampleBufferProcessor = self->_sampleBufferProcessor;
      v18 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (!v18 || v18(sampleBufferProcessor, a3))
      {
        [BWSISNode renderSampleBuffer:forInput:];
      }
    }

    return;
  }

  if (v9 < 1 || v9 > v14)
  {
    return;
  }

  v19 = self->_numberFramesReceived + 1;
  self->_numberFramesReceived = v19;
  if (v9 == v14)
  {
    v20 = (v13 & 1) == 0 || self->_preBracketedFrameReceived;
    if (v19 != v9 || !v20)
    {
      [BWSISNode renderSampleBuffer:forInput:];
LABEL_42:

      [(BWSISNode *)self _clearCaptureRequestState];
      return;
    }

    CMSetAttachment(a3, *off_1E798A3A0, *MEMORY[0x1E695E4D0], 0);
  }

  v24 = self->_sampleBufferProcessor;
  v25 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v25 || v25(v24, a3))
  {
    [BWSISNode renderSampleBuffer:forInput:];
  }

  if (v9 == v14)
  {
    goto LABEL_42;
  }
}

- (void)handleNodeError:(id)a3 forInput:(id)a4
{
  currentCaptureSettings = self->_currentCaptureSettings;
  if (currentCaptureSettings && currentCaptureSettings == [objc_msgSend(a3 stillImageSettings])
  {
    [BWSISNode handleNodeError:? forInput:?];
  }

  output = self->super._output;

  [(BWNodeOutput *)output emitNodeError:a3, a4];
}

- (void)_clearCaptureRequestState
{
  if (a1)
  {

    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
    *(a1 + 252) = 0;
  }
}

- (uint64_t)_unpackSISOptions
{
  if (result)
  {
    v1 = result;
    if (*(result + 152))
    {
      *(result + 216) = 4;
      *(result + 184) = 0;
      v2 = [*(result + 152) objectForKeyedSubscript:@"StillImageStabilization"];
      if (!v2)
      {
        goto LABEL_21;
      }

      v3 = v2;
      v4 = [v2 objectForKeyedSubscript:*off_1E798BC50];
      if (!v4)
      {
        goto LABEL_21;
      }

      v5 = *(v1 + 208);
      *(v1 + 208) = v4;
      CFRetain(v4);
      if (v5)
      {
        CFRelease(v5);
      }

      v6 = [v3 objectForKeyedSubscript:@"MaxGain"];
      if (!v6)
      {
        goto LABEL_21;
      }

      v7 = [v6 intValue];
      v8 = [v3 objectForKeyedSubscript:*off_1E798D388];
      if (!v8)
      {
        goto LABEL_21;
      }

      *(v1 + 184) = [v8 intValue];
      v9 = [*(v1 + 152) objectForKeyedSubscript:*off_1E798D390];
      *(v1 + 160) = v9;
      if (!*(v1 + 176) && !v9)
      {
        goto LABEL_21;
      }

      *(v1 + 168) = [*(v1 + 152) objectForKeyedSubscript:*off_1E798D380];
      *(v1 + 192) = vcvts_n_f32_s32(v7, 8uLL);
      *(v1 + 188) = 67;
      if (*(v1 + 200))
      {
        goto LABEL_16;
      }

      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (*(v1 + 216) >= 1)
      {
        v11 = 0;
        do
        {
          [v10 addObject:&unk_1F224A880];
          ++v11;
        }

        while (v11 < *(v1 + 216));
      }

      *(v1 + 200) = v10;
      if (v10)
      {
LABEL_16:
        v12 = *(v1 + 224);
        if (!v12)
        {
          v12 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{&unk_1F2244EA8, &unk_1F2244EC0, 0}];
          *(v1 + 224) = v12;
        }

        v13 = [v12 count];
        result = 0;
        *(v1 + 232) = v13;
      }

      else
      {
LABEL_21:
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_0_2();
        FigDebugAssert3();
        OUTLINED_FUNCTION_2();

        return FigSignalErrorAtGM();
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_11();
      FigDebugAssert3();
      return 4294954516;
    }
  }

  return result;
}

- (uint64_t)_setupSampleBufferProcessor
{
  if (!a1)
  {
    return 0;
  }

  v15 = 0;
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = v2;
  if (!*(a1 + 144))
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    fig_log_get_emitter();
    v13 = FigSignalErrorAtGM();
    goto LABEL_21;
  }

  v4 = *(a1 + 176);
  if (v4 == 1)
  {
    [v2 setObject:? forKeyedSubscript:?];
    [v3 setObject:&unk_1F2244ED8 forKeyedSubscript:*off_1E798D398];
    v7 = *off_1E798D3A0;
    v6 = &unk_1F2244EF0;
  }

  else
  {
    if (v4)
    {
      goto LABEL_10;
    }

    [v2 setObject:&unk_1F2244ED8 forKeyedSubscript:*off_1E798D398];
    [v3 setObject:&unk_1F2244EF0 forKeyedSubscript:*off_1E798D3A0];
    [v3 setObject:*(a1 + 160) forKeyedSubscript:*off_1E798D390];
    v5 = *(a1 + 168);
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:*off_1E798D380];
    }

    v6 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 184)];
    v7 = *off_1E798D388;
  }

  [v3 setObject:v6 forKeyedSubscript:v7];
LABEL_10:
  v8 = *(a1 + 128);
  if (!v8)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_8();
    FigDebugAssert3();
    v13 = 0;
    goto LABEL_21;
  }

  if (*(a1 + 176))
  {
    v9 = @"TMBNR";
  }

  else
  {
    v9 = @"SIS";
  }

  v10 = v8(*MEMORY[0x1E695E480], v9, v3, &v15);
  if (v10)
  {
    v13 = v10;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_8();
    goto LABEL_20;
  }

  v11 = v15;
  *(a1 + 136) = v15;
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v12)
  {
    v13 = 4294954514;
LABEL_19:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_8();
LABEL_20:
    FigDebugAssert3();
    goto LABEL_21;
  }

  v13 = v12(v11, sisn_processorOutputReadyCallback, a1);
  if (v13)
  {
    goto LABEL_19;
  }

LABEL_21:

  return v13;
}

- (void)_sampleBufferProcessorOutputReady:(const void *)a3 sampleBuffer:
{
  if (!a1)
  {
    return;
  }

  v4 = a2;
  value = 0;
  cf = 0;
  if (a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_8();
    FigDebugAssert3();
    goto LABEL_19;
  }

  if (!*(a1 + 176) && [*(a1 + 240) noiseReductionEnabled])
  {
    v6 = *MEMORY[0x1E695E480];
    FigBaseObject = FigSampleBufferProcessorGetFigBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v9 = *off_1E798D3A8;
      v8(FigBaseObject, *off_1E798D3A8, v6, &value);
      if (value)
      {
        CMSetAttachment(a3, v9, value, 0);
      }
    }

    v10 = FigSampleBufferProcessorGetFigBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v4 = v11(v10, *off_1E798D3B8, v6, &cf);
      if (cf)
      {
        CMSetAttachment(a3, @"NoiseReductionAlternateMetadata", cf, 0);
      }

      if (!v4)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v4 = 4294954514;
    }

LABEL_19:
    v12 = CMGetAttachment(a3, @"StillSettings", 0);
    v13 = [BWNodeError newError:v4 sourceNode:a1 stillImageSettings:v12 metadata:CMGetAttachment(a3, *off_1E798A3C8, 0)];
    [*(a1 + 16) emitNodeError:v13];

    goto LABEL_13;
  }

LABEL_12:
  [*(a1 + 16) emitSampleBuffer:a3];
LABEL_13:
  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

- (uint64_t)prepareForCurrentConfigurationToBecomeLive
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:(CFTypeRef *)a1 forInput:(uint64_t)a2 .cold.1(CFTypeRef *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v5)
    {
      v5(v3, 0, 0);
    }

    FigBaseObject = FigSampleBufferProcessorGetFigBaseObject();
    if (FigBaseObject)
    {
      v7 = FigBaseObject;
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v8)
      {
        v8(v7);
      }
    }

    if (*a1)
    {
      CFRelease(*a1);
      *a1 = 0;
    }
  }

  return [(BWSISNode *)a2 _setupSampleBufferProcessor];
}

- (uint64_t)renderSampleBuffer:forInput:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)handleNodeError:(uint64_t)a1 forInput:.cold.1(uint64_t a1)
{
  [(BWSISNode *)a1 _clearCaptureRequestState];
  result = *(a1 + 136);
  if (result)
  {
    FigBaseObject = FigSampleBufferProcessorGetFigBaseObject();
    VTable = CMBaseObjectGetVTable();
    v5 = *(VTable + 8);
    result = VTable + 8;
    v6 = *(v5 + 56);
    if (v6)
    {
      v7 = *off_1E798D3C0;
      v8 = *MEMORY[0x1E695E4D0];

      return v6(FigBaseObject, v7, v8);
    }
  }

  return result;
}

@end