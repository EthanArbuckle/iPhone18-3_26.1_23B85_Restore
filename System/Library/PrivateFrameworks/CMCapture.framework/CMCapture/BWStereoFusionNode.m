@interface BWStereoFusionNode
- (id)_initWithTelephotoSensorIDDictionary:(id)a3 cameraInfoByPortType:(id)a4 sbpCreationFunction:(void *)a5 treatSoftErrorsAsHardErrors:(BOOL)a6;
- (uint64_t)_processSampleBufferInSampleBufferProcessor:(void *)a3 metadataDictionary:;
- (uint64_t)_processSequenceInSampleBufferProcessor;
- (uint64_t)_receivedExpectedNumberOfFramesOrErrors;
- (uint64_t)_sampleBufferProcessorOutputReady:(const void *)a3 sampleBuffer:;
- (uint64_t)_setExpectedInputFramesWithResolvedCaptureSettings:(uint64_t)result;
- (uint64_t)_setPropertyOnSampleBufferProcessorWithKey:(uint64_t)a3 value:;
- (uint64_t)_setupSampleBufferProcessor;
- (uint64_t)sbpOptionsDictionary;
- (void)_clearCaptureRequestState;
- (void)_endSequence;
- (void)_handleError:(uint64_t)a3 forSampleBuffer:(uint64_t)a4 input:(uint64_t)a5 metadata:;
- (void)_setZoomRectangleOnSampleBufferProcessorIfNecessaryBasedOnMetadata:(uint64_t)a1 captureType:(void *)a2;
- (void)_setZoomRectangleOnSampleBufferProcessorWithRectangle:(double)a3;
- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)a3;
- (void)didSelectFormat:(id)a3 forInput:(id)a4;
- (void)handleNodeError:(id)a3 forInput:(id)a4;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
@end

@implementation BWStereoFusionNode

- (id)_initWithTelephotoSensorIDDictionary:(id)a3 cameraInfoByPortType:(id)a4 sbpCreationFunction:(void *)a5 treatSoftErrorsAsHardErrors:(BOOL)a6
{
  v16.receiver = self;
  v16.super_class = BWStereoFusionNode;
  v9 = [(BWNode *)&v16 init:a3];
  v10 = v9;
  if (v9)
  {
    v9->_createSampleBufferProcessorFunction = a5;
    v9->_telephotoSensorIDDictionary = a3;
    v10->_cameraInfoByPortType = [a4 copy];
    v10->_wideInput = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v10 index:0];
    v11 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v11 setSupportedPixelFormats:&unk_1F2248AF0];
    [(BWNodeInput *)v10->_wideInput setFormatRequirements:v11];

    [(BWNodeInput *)v10->_wideInput setPassthroughMode:0];
    [(BWNodeInput *)v10->_wideInput setRetainedBufferCount:1];
    [(BWNodeInput *)v10->_wideInput setName:@"Wide"];
    [(BWNode *)v10 addInput:v10->_wideInput];

    v10->_telephotoInput = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v10 index:1];
    v12 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v12 setSupportedPixelFormats:&unk_1F2248B08];
    [(BWNodeInput *)v10->_telephotoInput setFormatRequirements:v12];

    [(BWNodeInput *)v10->_telephotoInput setPassthroughMode:0];
    [(BWNodeInput *)v10->_telephotoInput setRetainedBufferCount:1];
    [(BWNodeInput *)v10->_telephotoInput setName:@"Telephoto"];
    [(BWNode *)v10 addInput:v10->_telephotoInput];

    v10->_defaultOutput = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v10];
    v13 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v13 setSupportedPixelFormats:&unk_1F2248B20];
    [(BWNodeOutput *)v10->_defaultOutput setFormatRequirements:v13];

    [(BWNodeOutput *)v10->_defaultOutput setProvidesPixelBufferPool:0];
    [(BWNodeOutput *)v10->_defaultOutput setPassthroughMode:0];
    [(BWNodeOutput *)v10->_defaultOutput setName:@"Default"];
    [(BWNode *)v10 addOutput:v10->_defaultOutput];

    v10->_stereoHDROutput = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v10];
    v14 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v14 setSupportedPixelFormats:&unk_1F2248B38];
    [(BWNodeOutput *)v10->_stereoHDROutput setFormatRequirements:v14];

    [(BWNodeOutput *)v10->_stereoHDROutput setProvidesPixelBufferPool:0];
    [(BWNodeOutput *)v10->_stereoHDROutput setPassthroughMode:0];
    [(BWNodeOutput *)v10->_stereoHDROutput setName:@"HDR"];
    [(BWNode *)v10 addOutput:v10->_stereoHDROutput];
  }

  return v10;
}

- (void)dealloc
{
  [(BWStereoFusionNode *)self _clearCaptureRequestState];
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

  v9.receiver = self;
  v9.super_class = BWStereoFusionNode;
  [(BWNode *)&v9 dealloc];
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4
{
  v6 = objc_alloc_init(BWVideoFormatRequirements);
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a3, "pixelFormat")}];
  -[BWVideoFormatRequirements setSupportedPixelFormats:](v6, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1]);
  -[BWVideoFormatRequirements setWidth:](v6, "setWidth:", [a3 width]);
  -[BWVideoFormatRequirements setHeight:](v6, "setHeight:", [a3 height]);
  [(BWVideoFormatRequirements *)v6 setSupportedCacheModes:+[BWVideoFormatRequirements cacheModesForOptimizedHWAccess]];
  if ([a3 colorSpaceProperties])
  {
    v18 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a3, "colorSpaceProperties")}];
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  }

  else
  {
    v7 = 0;
  }

  [(BWVideoFormatRequirements *)v6 setSupportedColorSpaceProperties:v7];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(BWNode *)self outputs];
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v12++) setFormatRequirements:v6];
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v10);
  }
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v14.receiver = self;
  v14.super_class = BWStereoFusionNode;
  [(BWNode *)&v14 prepareForCurrentConfigurationToBecomeLive];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(BWNode *)self inputs];
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (v8 != self->super._input)
        {
          [(BWFormat *)[(BWNodeInput *)v8 format] isEqual:[(BWNodeInput *)self->super._input format]];
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v5);
  }

  if (!self->_sampleBufferProcessor)
  {
    if ([(BWStereoFusionNode *)self _setupSampleBufferProcessor])
    {
      [BWStereoFusionNode prepareForCurrentConfigurationToBecomeLive];
    }
  }
}

- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5
{
  if ([(BWNode *)self allInputsHaveReachedState:1, a4, a5])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(BWNode *)self outputs];
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v11 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v12 + 1) + 8 * v10++) makeConfiguredFormatLive];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v11 count:16];
      }

      while (v8);
    }
  }
}

- (void)didReachEndOfDataForInput:(id)a3
{
  if ([(BWNode *)self allInputsHaveReachedState:0])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [(BWNode *)self outputs];
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v9 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v10 + 1) + 8 * v8++) markEndOfLiveOutput];
        }

        while (v6 != v8);
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v9 count:16];
      }

      while (v6);
    }
  }
}

- (void)handleNodeError:(id)a3 forInput:(id)a4
{
  if (self->_wideInput == a4)
  {
    v6 = 224;
  }

  else
  {
    v6 = 232;
  }

  v7 = (&self->super.super.isa + v6);
  v8 = *(&self->super.super.isa + v6);
  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *v7 = v8;
  }

  [v8 addObject:a3];
  if ((self->_currentStillImageSettings || ([(BWStereoFusionNode *)a3 handleNodeError:self forInput:?]& 1) != 0) && [(BWStereoFusionNode *)self _receivedExpectedNumberOfFramesOrErrors])
  {

    [(BWStereoFusionNode *)self _endSequence];
  }
}

- (void)_clearCaptureRequestState
{
  if (a1)
  {

    *(a1 + 160) = 0;
    *(a1 + 200) = 0;
    *(a1 + 201) = 0;
    *(a1 + 202) = 0;
    *(a1 + 203) = 0;
    *(a1 + 204) = 0;

    *(a1 + 208) = 0;
    *(a1 + 216) = 0;

    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
  }
}

- (uint64_t)_setupSampleBufferProcessor
{
  if (!a1)
  {
    return 0;
  }

  v9 = 0;
  v2 = [(BWStereoFusionNode *)a1 sbpOptionsDictionary];
  if (!v2 || (v3 = *(a1 + 128)) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_33();
    FigDebugAssert3();
    return 0;
  }

  v4 = v3(*MEMORY[0x1E695E480], @"StereoFusion", v2, &v9);
  if (v4)
  {
    v7 = v4;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_33();
    FigDebugAssert3();
  }

  else
  {
    v5 = v9;
    *(a1 + 136) = v9;
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v6)
    {
      return v6(v5, sfn_processorOutputReadyCallback, a1);
    }

    else
    {
      return 4294954514;
    }
  }

  return v7;
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  if (!a3)
  {
    FigCaptureGetFrameworkRadarComponent();
    v19 = OUTLINED_FUNCTION_2_67();
    if (OUTLINED_FUNCTION_15_1(v19))
    {
      v20 = v5;
    }

    else
    {
      v20 = v5 & 0xFFFFFFFE;
    }

    if (v20)
    {
      OUTLINED_FUNCTION_5_6();
      OUTLINED_FUNCTION_6_45();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7_0();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    OUTLINED_FUNCTION_5_53();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_7_43();
    OUTLINED_FUNCTION_8_34();
    v34 = 308;
    goto LABEL_47;
  }

  v10 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  if (!v10)
  {
    FigCaptureGetFrameworkRadarComponent();
    v21 = OUTLINED_FUNCTION_2_67();
    if (OUTLINED_FUNCTION_15_1(v21))
    {
      v22 = v5;
    }

    else
    {
      v22 = v5 & 0xFFFFFFFE;
    }

    if (v22)
    {
      OUTLINED_FUNCTION_5_6();
      OUTLINED_FUNCTION_6_45();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7_0();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    OUTLINED_FUNCTION_5_53();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_7_43();
    OUTLINED_FUNCTION_8_34();
    v34 = 311;
LABEL_47:
    FigCapturePleaseFileRadar(v27, v28, v29, v30, v31, v34, v32, v33, v50);
    v11 = 0;
LABEL_52:
    free(v4);
    [(BWStereoFusionNode *)self _handleError:v49 forSampleBuffer:a4 input:v11 metadata:?];
    goto LABEL_20;
  }

  v11 = v10;
  v12 = [objc_msgSend(v10 objectForKeyedSubscript:{*off_1E798B710), "BOOLValue"}];
  if (!self->_sampleBufferProcessor)
  {
    FigCaptureGetFrameworkRadarComponent();
    v23 = OUTLINED_FUNCTION_2_67();
    if (OUTLINED_FUNCTION_8_4(v23))
    {
      v24 = v6;
    }

    else
    {
      v24 = v6 & 0xFFFFFFFE;
    }

    if (v24)
    {
      OUTLINED_FUNCTION_5_6();
      OUTLINED_FUNCTION_6_45();
      _os_log_send_and_compose_impl();
    }

    v4 = v50;
    OUTLINED_FUNCTION_7_0();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    OUTLINED_FUNCTION_5_53();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_7_43();
    OUTLINED_FUNCTION_8_34();
    FigCapturePleaseFileRadar(v35, v36, v37, v38, v39, 315, v40, v41, v50);
    goto LABEL_52;
  }

  v13 = v12;
  v14 = CMGetAttachment(a3, @"StillSettings", 0);
  if (!v14)
  {
    FigCaptureGetFrameworkRadarComponent();
    v25 = OUTLINED_FUNCTION_2_67();
    if (OUTLINED_FUNCTION_8_4(v25))
    {
      v26 = v6;
    }

    else
    {
      v26 = v6 & 0xFFFFFFFE;
    }

    if (v26)
    {
      OUTLINED_FUNCTION_5_6();
      OUTLINED_FUNCTION_6_45();
      _os_log_send_and_compose_impl();
    }

    v4 = v50;
    OUTLINED_FUNCTION_7_0();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    OUTLINED_FUNCTION_5_53();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_7_43();
    OUTLINED_FUNCTION_8_34();
    FigCapturePleaseFileRadar(v42, v43, v44, v45, v46, 318, v47, v48, v50);
    goto LABEL_52;
  }

  v15 = v14;
  if (!self->_currentStillImageSettings)
  {
    goto LABEL_9;
  }

  v16 = [v14 settingsID];
  if (v16 != [(BWStillImageSettings *)self->_currentStillImageSettings settingsID])
  {
    [(BWStereoFusionNode *)self _setPropertyOnSampleBufferProcessorWithKey:*MEMORY[0x1E695E4D0] value:?];
    [(BWStereoFusionNode *)self _clearCaptureRequestState];
  }

  if (!self->_currentStillImageSettings)
  {
LABEL_9:
    v17 = v15;
    self->_currentStillImageSettings = v17;
    [(BWStereoFusionNode *)self _setExpectedInputFramesWithResolvedCaptureSettings:?];
  }

  if (((self->_masterInput == 0) & v13) == 1)
  {
    self->_masterInput = a4;
  }

  if (self->_wideInput == a4)
  {
    p_receivedWideFrame = &self->_receivedWideFrame;
    if (self->_receivedWideFrame)
    {
      goto LABEL_20;
    }
  }

  else
  {
    p_receivedWideFrame = &self->_receivedTelephotoFrame;
    if (self->_receivedTelephotoFrame)
    {
      goto LABEL_20;
    }
  }

  *p_receivedWideFrame = 1;
  if (self->_performSBPProcessing)
  {
    [(BWStereoFusionNode *)self _processSampleBufferInSampleBufferProcessor:a3 metadataDictionary:v11];
  }

  else if ([objc_msgSend(v15 "requestedSettings")])
  {
    [(BWNodeOutput *)self->super._output emitSampleBuffer:a3];
  }

LABEL_20:
  if ([(BWStereoFusionNode *)self _receivedExpectedNumberOfFramesOrErrors])
  {
    [(BWStereoFusionNode *)self _endSequence];
  }
}

- (uint64_t)_setPropertyOnSampleBufferProcessorWithKey:(uint64_t)a3 value:
{
  if (result)
  {
    FigBaseObject = FigSampleBufferProcessorGetFigBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6)
    {

      return v6(FigBaseObject, a2, a3);
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

- (uint64_t)_setExpectedInputFramesWithResolvedCaptureSettings:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = [a2 captureStreamSettingsForPortType:*off_1E798A0C0];
    v5 = [a2 captureStreamSettingsForPortType:*off_1E798A0D8];
    v3[200] = v4 != 0;
    v3[202] = v5 != 0;
    result = [a2 captureFlags];
    v3[204] = (result & 0x400) != 0;
  }

  return result;
}

- (uint64_t)_processSampleBufferInSampleBufferProcessor:(void *)a3 metadataDictionary:
{
  if (result)
  {
    v5 = result;
    [objc_msgSend(*(result + 160) "captureSettings")];
    [BWStereoFusionNode _setZoomRectangleOnSampleBufferProcessorIfNecessaryBasedOnMetadata:v5 captureType:a3];
    v6 = *(v5 + 136);
    VTable = CMBaseObjectGetVTable();
    v8 = *(VTable + 16);
    result = VTable + 16;
    v9 = *(v8 + 16);
    if (v9)
    {

      return v9(v6, a2);
    }
  }

  return result;
}

- (void)_handleError:(uint64_t)a3 forSampleBuffer:(uint64_t)a4 input:(uint64_t)a5 metadata:
{
  if (a1)
  {
    v7 = [BWNodeError newError:a2 sourceNode:a1 stillImageSettings:*(a1 + 160) metadata:a5];
    v10 = v7;
    if (*(a1 + 168) == a4)
    {
      v8 = &OBJC_IVAR___BWStereoFusionNode__nodeErrorsForWide;
    }

    else
    {
      v8 = &OBJC_IVAR___BWStereoFusionNode__nodeErrorsForTelephoto;
    }

    v9 = *(a1 + *v8);
    if (!v9)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      *(a1 + *v8) = v9;
      v7 = v10;
    }

    [v9 addObject:v7];
  }
}

- (uint64_t)_receivedExpectedNumberOfFramesOrErrors
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 160))
  {
    return 1;
  }

  v2 = *(a1 + 200) != 1 || (*(a1 + 201) & 1) != 0 || [*(a1 + 224) count] == 1;
  if (*(a1 + 202) == 1)
  {
    v3 = (*(a1 + 203) & 1) != 0 || [*(a1 + 232) count] == 1;
    return v2 & v3;
  }

  return v2;
}

- (void)_endSequence
{
  if (!a1)
  {
    return;
  }

  if ((*(a1 + 201) & 1) == 0 && (*(a1 + 203) & 1) == 0)
  {
    v2 = *(a1 + 216);
    if (!v2)
    {
      v3 = [*(a1 + 224) count];
      v4 = [*(a1 + 232) count];
      v5 = &OBJC_IVAR___BWStereoFusionNode__wideInput;
      if (v3 < v4)
      {
        v5 = &OBJC_IVAR___BWStereoFusionNode__telephotoInput;
      }

      v2 = *(a1 + *v5);
      *(a1 + 216) = v2;
    }

    if (v2 == *(a1 + 168) && [*(a1 + 224) count] == 1)
    {
      v6 = 224;
    }

    else
    {
      if (*(a1 + 216) != *(a1 + 176) || [*(a1 + 232) count] != 1)
      {
        v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v8 = [BWNodeError newError:4294954516 sourceNode:a1 stillImageSettings:*(a1 + 160) metadata:0];
        if (v8)
        {
          [v7 addObject:v8];
        }

        goto LABEL_18;
      }

      v6 = 232;
    }

    v7 = *(a1 + v6);
    *(a1 + v6) = 0;
LABEL_18:
    v9 = [objc_msgSend(*(a1 + 160) "captureSettings")];
    v17 = &OBJC_IVAR___BWStereoFusionNode__defaultOutput;
    if (v9 == 3)
    {
      v9 = [objc_msgSend(*(a1 + 160) "captureSettings")];
      if ((v9 & 0x400) != 0)
      {
        v17 = &OBJC_IVAR___BWStereoFusionNode__stereoHDROutput;
      }
    }

    v18 = *(a1 + *v17);
    v19 = OUTLINED_FUNCTION_1_3(v9, v10, v11, v12, v13, v14, v15, v16, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, 0);
    if (v19)
    {
      v20 = v19;
      v21 = MEMORY[0];
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (MEMORY[0] != v21)
          {
            objc_enumerationMutation(v7);
          }

          v23 = [v18 emitNodeError:*(8 * i)];
        }

        v20 = OUTLINED_FUNCTION_1_3(v23, v24, v25, v26, v27, v28, v29, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v63);
      }

      while (v20);
    }
  }

  if (*(a1 + 204) == 1 && ((*(a1 + 201) & 1) != 0 || *(a1 + 203) == 1))
  {
    [(BWStereoFusionNode *)a1 _processSequenceInSampleBufferProcessor];
  }

  [(BWStereoFusionNode *)a1 _clearCaptureRequestState];
}

- (uint64_t)sbpOptionsDictionary
{
  if (result)
  {
    v1 = result;
    v2 = [*(result + 144) objectForKeyedSubscript:@"StereoFusionParameters"];
    if (v2)
    {
      v3 = *off_1E798D370;
      v4[0] = *off_1E798A9D0;
      v4[1] = v3;
      v5[0] = v2;
      v5[1] = &unk_1F2244980;
      v4[2] = *off_1E798A970;
      v5[2] = *(v1 + 152);
      return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_33();
      FigDebugAssert3();
      return 0;
    }
  }

  return result;
}

- (uint64_t)_processSequenceInSampleBufferProcessor
{
  if (result)
  {
    v1 = result;
    if (!*(result + 208))
    {
      [(BWStereoFusionNode *)result _setZoomRectangleOnSampleBufferProcessorWithRectangle:0.0, 1.0, 1.0];
    }

    v2 = *off_1E798D070;

    return [(BWStereoFusionNode *)v1 _setPropertyOnSampleBufferProcessorWithKey:v2 value:0];
  }

  return result;
}

- (void)_setZoomRectangleOnSampleBufferProcessorIfNecessaryBasedOnMetadata:(uint64_t)a1 captureType:(void *)a2
{
  if (a1 && [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B710), "BOOLValue"}])
  {
    if ([objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B540), "isEqualToString:", *off_1E798A0C0}])
    {
      v9.origin = *MEMORY[0x1E695F050];
      v9.size = *(MEMORY[0x1E695F050] + 16);
      width = 1.0;
      y = 0.0;
      if (FigCFDictionaryGetCGRectIfPresent())
      {
        IsNull = CGRectIsNull(v9);
        height = 1.0;
        x = 0.0;
        if (!IsNull)
        {
          y = v9.origin.y;
          x = v9.origin.x;
          height = v9.size.height;
          width = v9.size.width;
        }

        goto LABEL_10;
      }
    }

    else
    {
      width = 1.0;
      y = 0.0;
    }

    height = 1.0;
    x = 0.0;
LABEL_10:
    [(BWStereoFusionNode *)a1 _setZoomRectangleOnSampleBufferProcessorWithRectangle:y, width, height];
  }
}

- (void)_setZoomRectangleOnSampleBufferProcessorWithRectangle:(double)a3
{
  if (a1)
  {
    if (*(a1 + 208))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_33();
      FigDebugAssert3();
      return;
    }

    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*&a2);
    if ([(BWStereoFusionNode *)a1 _setPropertyOnSampleBufferProcessorWithKey:DictionaryRepresentation value:?])
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_33();
      FigDebugAssert3();
      if (!DictionaryRepresentation)
      {
        return;
      }
    }

    else
    {
      *(a1 + 208) = [(__CFDictionary *)DictionaryRepresentation copy];
      if (!DictionaryRepresentation)
      {
        return;
      }
    }

    CFRelease(DictionaryRepresentation);
  }
}

- (uint64_t)_sampleBufferProcessorOutputReady:(const void *)a3 sampleBuffer:
{
  if (result)
  {
    v6 = result;
    v7 = &OBJC_IVAR___BWStereoFusionNode__defaultOutput;
    if ([objc_msgSend(*(result + 160) "captureSettings")] == 3)
    {
      v8 = [objc_msgSend(*(v6 + 160) "captureSettings")];
      v9 = (v8 & 0x400) >> 10;
      if ((v8 & 0x400) != 0)
      {
        v7 = &OBJC_IVAR___BWStereoFusionNode__stereoHDROutput;
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }

    v10 = *(v6 + *v7);
    if (a3)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2;
    }

    v12 = CMGetAttachment(a3, *off_1E798A3C8, 0);
    v13 = v12;
    if (v12 && ([objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798B710), "BOOLValue"}] & 1) == 0)
    {
      if ((v9 & 1) != 0 && ![objc_msgSend(v13 objectForKeyedSubscript:{*off_1E798B558), "BOOLValue"}])
      {
        CMSetAttachment(a3, @"StereoFusionFailed", *MEMORY[0x1E695E4D0], 0);
      }

      else
      {
        [objc_msgSend(v13 objectForKeyedSubscript:{*off_1E798B540), "isEqualToString:", *off_1E798A0C0}];
      }
    }

    v14 = *(v6 + 208);
    *(v6 + 208) = 0;
    if (v11)
    {
      fig_log_get_emitter();
      LODWORD(v33) = v11;
      FigDebugAssert3();

      v32 = [BWNodeError newError:v11 sourceNode:v6 stillImageSettings:*(v6 + 160) metadata:v13, v33, v3];
      [v10 emitNodeError:v32];
    }

    else
    {
      v15 = MEMORY[0x1E695F050];
      v16 = *(MEMORY[0x1E695F050] + 16);
      rect.origin = *MEMORY[0x1E695F050];
      rect.size = v16;
      if (CGRectMakeWithDictionaryRepresentation(v14, &rect))
      {
        v36.origin.x = 0.0;
        v36.origin.y = 0.0;
        v36.size.width = 1.0;
        v36.size.height = 1.0;
        if (!CGRectEqualToRect(rect, v36))
        {
          v17 = [objc_msgSend(*(v6 + 160) "requestedSettings")];
          v34 = v17;
          v18 = [objc_msgSend(*(v6 + 160) "requestedSettings")];
          v19 = v17 / v18;
          v20 = [OUTLINED_FUNCTION_12_32() width];
          v21 = [OUTLINED_FUNCTION_12_32() height];
          FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(v20, v21, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, v19);
          v23 = v22;
          v25 = v24;
          v27 = v26;
          v29 = v28;
          LODWORD(v20) = [OUTLINED_FUNCTION_12_32() width];
          v30 = [OUTLINED_FUNCTION_12_32() height];
          FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(v13, v20 | (v30 << 32), v34 | (v18 << 32), v23, v25, v27, v29, *v15, v15[1], v15[2], v15[3]);
          FigCaptureMetadataUtilitiesPreventFurtherCropping(v13, v31);
        }
      }

      CMRemoveAttachment(a3, *off_1E798A448);
      CMSetAttachment(a3, @"HasUnreliableBracketingMetadata", MEMORY[0x1E695E118], 1u);

      [v10 emitSampleBuffer:a3];
    }

    return [+[BWAggdDataReporter sharedInstance](BWAggdDataReporter reportStereoFusionSampleBufferProcessorProcessingStatus:"reportStereoFusionSampleBufferProcessorProcessingStatus:", a2];
  }

  return result;
}

- (uint64_t)handleNodeError:(uint64_t)a3 forInput:.cold.1(void *a1, void *a2, uint64_t a3)
{
  v6 = [a1 stillImageSettings];
  *a2 = v6;
  -[BWStereoFusionNode _setExpectedInputFramesWithResolvedCaptureSettings:](a3, [v6 captureSettings]);
  if (*a2)
  {
    return 1;
  }

  [*(a3 + 184) emitNodeError:a1];
  [*(a3 + 192) emitNodeError:a1];
  return 0;
}

@end