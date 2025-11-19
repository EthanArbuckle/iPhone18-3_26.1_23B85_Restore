@interface BWUBProcessorController
+ (void)initialize;
- (BOOL)finishProcessingCurrentInputNow;
- (BWUBProcessorController)initWithConfiguration:(id)a3;
- (CMAttachmentBearerRef)_newOutputSampleBufferWithSampleBuffer:(__CVBuffer *)a3 pixelBuffer:(CFTypeRef *)a4 formatDescriptionInOut:(uint64_t)a5 metadataToMerge:;
- (id)adaptiveBracketingDigitalFlashTotalIntegrationTimesProviderForPortType:(id)a3;
- (id)adaptiveBracketingParametersForDigitalFlashMode:(int)a3 frameStatistics:(id)a4 stationary:(BOOL)a5 sphereOffsetEnabled:(BOOL)a6 detectedObjects:(id)a7;
- (id)processorGetInferenceResults:(id)a3;
- (int)enqueueInputForProcessing:(id)a3 delegate:(id)a4 processErrorRecoveryFrame:(BOOL)a5 processOriginalImage:(BOOL)a6 clientBracketSequenceNumber:(int)a7 processSemanticRendering:(BOOL)a8 provideInferenceInputImageForProcessing:(BOOL)a9 inferencesAvailable:(BOOL)a10;
- (int)progressiveLowLightFusionBatchSize;
- (uint64_t)_loadSetupAndPrepareUBProcessor;
- (uint64_t)_processUBOriginalImage;
- (uint64_t)_setupProcessorForProcessingType:(uint64_t)a1;
- (uint64_t)_singleImageProcessSampleBuffer:(CMAttachmentBearerRef *)a3 sampleBufferOut:;
- (uint64_t)_updateStateIfNeeded;
- (unint64_t)_setupProcessor;
- (void)_processDeepFusion;
- (void)_processSingleImage;
- (void)_processUBFusion;
- (void)_serviceNextRequest;
- (void)cancelProcessing;
- (void)dealloc;
- (void)input:(id)a3 addFrame:(opaqueCMSampleBuffer *)a4 isReferenceFrame:(BOOL)a5;
- (void)inputReceivedAllFrames:(id)a3;
- (void)processor:(id)a3 didSelectFusionMode:(int)a4;
- (void)processor:(id)a3 outputReadyWithFrameType:(int)a4 outputPixelBuffer:(__CVBuffer *)a5 outputMetadata:(id)a6 error:(int)a7;
@end

@implementation BWUBProcessorController

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWUBProcessorController)initWithConfiguration:(id)a3
{
  v7.receiver = self;
  v7.super_class = BWUBProcessorController;
  v4 = [(BWUBProcessorController *)&v7 init];
  if (v4)
  {
    v4->_configuration = a3;
    v4->_requestQueue = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [[FigStateMachine alloc] initWithLabel:@"BWUBProcessorController state machine" stateCount:8 initialState:1 owner:v4];
    [(FigStateMachine *)v6 setPerformsAtomicStateTransitions:0];
    [(FigStateMachine *)v6 setLabel:@"Idle" forState:1];
    [(FigStateMachine *)v6 setLabel:@"Ready" forState:2];
    [(FigStateMachine *)v6 setLabel:@"WaitingForFrames" forState:4];
    [(FigStateMachine *)v6 setLabel:@"ProcessingSingleImage" forState:8];
    [(FigStateMachine *)v6 setLabel:@"ProcessingUBOriginalImage" forState:16];
    [(FigStateMachine *)v6 setLabel:@"ProcessingUBFusion" forState:32];
    [(FigStateMachine *)v6 setLabel:@"ProcessingUBLowLightFusion" forState:64];
    [(FigStateMachine *)v6 setLabel:@"ProcessingUBDeepFusion" forState:128];
    [(FigStateMachine *)v6 whenTransitioningToStates:1 callHandler:&__block_literal_global_57];
    [(FigStateMachine *)v6 whenTransitioningToStates:2 callHandler:&__block_literal_global_605];
    [(FigStateMachine *)v6 whenTransitioningToState:4 callHandler:&__block_literal_global_607];
    [(FigStateMachine *)v6 whenTransitioningToState:8 callHandler:&__block_literal_global_609];
    [(FigStateMachine *)v6 whenTransitioningToState:16 callHandler:&__block_literal_global_611];
    [(FigStateMachine *)v6 whenTransitioningToState:32 callHandler:&__block_literal_global_613];
    [(FigStateMachine *)v6 whenTransitioningToState:64 callHandler:&__block_literal_global_615];
    [(FigStateMachine *)v6 whenTransitioningToState:128 callHandler:&__block_literal_global_617];
    v4->_stateMachine = v6;
    if ([(BWUBProcessorController *)v4 _loadSetupAndPrepareUBProcessor])
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  [(UBProcessor *)self->_ubProcessor finishProcessing];
  [(UBProcessor *)self->_ubProcessor setOutput:0];
  [(UBProcessor *)self->_ubProcessor resetState];

  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  inferenceInputFormatDescription = self->_inferenceInputFormatDescription;
  if (inferenceInputFormatDescription)
  {
    CFRelease(inferenceInputFormatDescription);
  }

  v5.receiver = self;
  v5.super_class = BWUBProcessorController;
  [(BWStillImageProcessorController *)&v5 dealloc];
}

- (uint64_t)_updateStateIfNeeded
{
  result = [*(a1 + 80) currentState];
  if (a2 != result)
  {
    v5 = *(a1 + 80);

    return [v5 transitionToState:a2];
  }

  return result;
}

- (int)enqueueInputForProcessing:(id)a3 delegate:(id)a4 processErrorRecoveryFrame:(BOOL)a5 processOriginalImage:(BOOL)a6 clientBracketSequenceNumber:(int)a7 processSemanticRendering:(BOOL)a8 provideInferenceInputImageForProcessing:(BOOL)a9 inferencesAvailable:(BOOL)a10
{
  v12 = a6;
  v13 = a5;
  if (!-[NSSet containsObject:](self->_supportedPortTypes, "containsObject:", [a3 portType]))
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    [a3 portType];
    v27 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v27, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWUBProcessorController.m", 1151, @"LastShownDate:BWUBProcessorController.m:1151", @"LastShownBuild:BWUBProcessorController.m:1151", 0);
    v28 = v27;
LABEL_15:
    free(v28);
    return -12780;
  }

  if (v13 && v12)
  {
    v23 = FigCaptureGetFrameworkRadarComponent();
    v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v29 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v23, v29, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWUBProcessorController.m", 1152, @"LastShownDate:BWUBProcessorController.m:1152", @"LastShownBuild:BWUBProcessorController.m:1152", 0);
LABEL_14:
    v28 = v29;
    goto LABEL_15;
  }

  if (a7)
  {
    v25 = FigCaptureGetFrameworkRadarComponent();
    v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v29 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v25, v29, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWUBProcessorController.m", 1153, @"LastShownDate:BWUBProcessorController.m:1153", @"LastShownBuild:BWUBProcessorController.m:1153", 0);
    goto LABEL_14;
  }

  v17 = objc_alloc_init(self->_ubFusionOutputClass);
  if ([objc_msgSend(a3 "captureStreamSettings")] == 12)
  {
    v18 = objc_alloc_init(self->_ubDeepFusionOutputClass);
  }

  else
  {
    v18 = 0;
  }

  v19 = [[BWUBProcessorRequest alloc] initWithInput:a3 output:v17 deepFusionOutput:v18 processErrorRecoveryFrame:v13 processOriginalImage:v12 processSemanticRendering:a8 provideInferenceInputImageForProcessing:a9 inferencesAvailable:a10 delegate:a4];

  [(NSMutableArray *)self->_requestQueue addObject:v19];
  if ([(FigStateMachine *)self->_stateMachine currentState]== 1)
  {
    [(FigStateMachine *)self->_stateMachine transitionToState:2];
  }

  return 0;
}

- (void)cancelProcessing
{
  [(NSMutableArray *)self->_requestQueue removeAllObjects];
  [(BWUBProcessorRequest *)self->_currentRequest setErr:4294950490];
  [(BWUBProcessorController *)self _serviceNextRequest];
  [(UBProcessor *)self->_ubProcessor setOutput:0];
  [(UBProcessor *)self->_ubProcessor resetState];

  [(BWUBProcessorController *)self _updateStateIfNeeded];
}

- (int)progressiveLowLightFusionBatchSize
{
  result = [(BWUBProcessorControllerConfiguration *)self->_configuration lowLightFusionEnabled];
  if (result)
  {
    ubProcessor = self->_ubProcessor;

    return [(UBProcessor *)ubProcessor progressiveBatchSize];
  }

  return result;
}

- (uint64_t)_loadSetupAndPrepareUBProcessor
{
  if (!a1 || *(a1 + 88))
  {
    return 0;
  }

  if (![objc_msgSend(OUTLINED_FUNCTION_11_25() "sensorConfigurationsByPortType")] || !objc_msgSend(OUTLINED_FUNCTION_11_25(), "inputFormat") || !objc_msgSend(OUTLINED_FUNCTION_11_25(), "outputFormat"))
  {
    OUTLINED_FUNCTION_0();
LABEL_44:
    FigDebugAssert3();
    return 0;
  }

  v25 = [MEMORY[0x1E695DF90] dictionary];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v28 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  [v2 setObject:v3 forKeyedSubscript:@"DefaultSensorIDs"];
  v27 = [MEMORY[0x1E695DFA8] set];
  v29 = [MEMORY[0x1E695DF90] dictionary];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [OUTLINED_FUNCTION_11_25() sensorConfigurationsByPortType];
  v5 = [obj countByEnumeratingWithState:&v34 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v35;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [objc_msgSend(*(a1 + 64) "sensorConfigurationsByPortType")];
        [v9 sensorIDString];
        [v4 setObject:a1 forKeyedSubscript:{objc_msgSend(OUTLINED_FUNCTION_29_6(), "portType")}];
        [MEMORY[0x1E695DF90] dictionary];
        v10 = [objc_msgSend(OUTLINED_FUNCTION_29_6() "sensorIDDictionary")];
        if (v10)
        {
          [a1 setObject:v10 forKeyedSubscript:@"UBParameters"];
        }

        v11 = [objc_msgSend(v9 "sensorIDDictionary")];
        if (v11)
        {
          [a1 setObject:v11 forKeyedSubscript:@"ChromaticDefringing"];
        }

        v31 = [v9 sensorIDString];
        v32 = a1;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        [v2 setObject:a1 forKeyedSubscript:{objc_msgSend(OUTLINED_FUNCTION_29_6(), "portType")}];
        [v9 cameraInfo];
        [v28 setObject:a1 forKeyedSubscript:{objc_msgSend(OUTLINED_FUNCTION_29_6(), "portType")}];
        [v27 addObject:{objc_msgSend(v9, "portType")}];
        [objc_msgSend(objc_msgSend(v9 "sensorIDDictionary")];
        [v29 setObject:a1 forKeyedSubscript:{objc_msgSend(OUTLINED_FUNCTION_29_6(), "portType")}];
      }

      v6 = [obj countByEnumeratingWithState:&v34 objects:v33 count:16];
    }

    while (v6);
  }

  if (![v2 count])
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
  }

  [v25 setObject:v2 forKeyedSubscript:*off_1E798A9D0];
  if ([v28 count])
  {
    [v25 setObject:v28 forKeyedSubscript:*off_1E798A970];
  }

  *(a1 + 72) = [objc_alloc(MEMORY[0x1E695DFD8]) initWithSet:v27];
  *(a1 + 128) = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v29];
  v12 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/VideoProcessors/UB.bundle"];
  if (!v12)
  {
    OUTLINED_FUNCTION_0();
    goto LABEL_44;
  }

  v13 = v12;
  v30 = 0;
  if (![v12 loadAndReturnError:&v30])
  {
    goto LABEL_41;
  }

  v14 = [v13 classNamed:@"UBFusionOutput"];
  *(a1 + 104) = v14;
  if (!v14)
  {
    goto LABEL_41;
  }

  v15 = [v13 classNamed:@"UBDeepFusionOutput"];
  *(a1 + 136) = v15;
  if (!v15)
  {
    goto LABEL_41;
  }

  v16 = [v13 classNamed:@"UBProgressiveBracketingStatistics"];
  *(a1 + 112) = v16;
  if (!v16)
  {
    goto LABEL_41;
  }

  v17 = [v13 classNamed:@"UBProgressiveBracketingParameters"];
  *(a1 + 120) = v17;
  if (!v17)
  {
    goto LABEL_41;
  }

  v18 = objc_alloc([v13 classNamed:@"UBProcessor"]);
  [OUTLINED_FUNCTION_11_25() metalCommandQueue];
  v19 = [OUTLINED_FUNCTION_17() initWithCommandQueue:?];
  *(a1 + 88) = v19;
  if (!v19)
  {
    goto LABEL_41;
  }

  v20 = objc_alloc_init([v13 classNamed:@"UBPrepareDescriptor"]);
  *(a1 + 96) = v20;
  if (!v20)
  {
    goto LABEL_41;
  }

  [objc_msgSend(OUTLINED_FUNCTION_11_25() "inputFormat")];
  [OUTLINED_FUNCTION_41_8() setWidth:?];
  [objc_msgSend(OUTLINED_FUNCTION_11_25() "inputFormat")];
  [OUTLINED_FUNCTION_41_8() setHeight:?];
  [objc_msgSend(OUTLINED_FUNCTION_11_25() "inputFormat")];
  [OUTLINED_FUNCTION_41_8() setPixelFormat:?];
  [OUTLINED_FUNCTION_11_25() alwaysAllowModifyingInputBuffers];
  [OUTLINED_FUNCTION_41_8() setAllowModifyingInputBuffers:?];
  v21 = [MEMORY[0x1E695DF90] dictionary];
  [v21 setObject:*(a1 + 96) forKeyedSubscript:&unk_1F2243FD8];
  if ([OUTLINED_FUNCTION_11_25() unifiedBracketingFusionSupportEnabled])
  {
    [v21 setObject:*(a1 + 96) forKeyedSubscript:&unk_1F2243FF0];
  }

  if ([OUTLINED_FUNCTION_11_25() lowLightFusionEnabled])
  {
    [v21 setObject:*(a1 + 96) forKeyedSubscript:&unk_1F2244008];
  }

  if ([OUTLINED_FUNCTION_11_25() deepFusionEnabled])
  {
    v22 = objc_alloc_init([v13 classNamed:@"UBPrepareDescriptor"]);
    *(a1 + 144) = v22;
    if (v22)
    {
      [objc_msgSend(OUTLINED_FUNCTION_11_25() "inputFormat")];
      [OUTLINED_FUNCTION_39_8() setWidth:?];
      [objc_msgSend(OUTLINED_FUNCTION_11_25() "inputFormat")];
      [OUTLINED_FUNCTION_39_8() setHeight:?];
      [objc_msgSend(OUTLINED_FUNCTION_11_25() "inputFormat")];
      [OUTLINED_FUNCTION_39_8() setPixelFormat:?];
      [OUTLINED_FUNCTION_11_25() alwaysAllowModifyingInputBuffers];
      [OUTLINED_FUNCTION_39_8() setAllowModifyingInputBuffers:?];
      [v21 setObject:*(a1 + 144) forKeyedSubscript:&unk_1F2244020];
      goto LABEL_36;
    }

LABEL_41:
    v23 = 4294954510;
LABEL_39:

    *(a1 + 88) = 0;
    *(a1 + 96) = 0;

    *(a1 + 144) = 0;
    return v23;
  }

LABEL_36:
  [v25 setObject:v21 forKeyedSubscript:*off_1E798D420];
  if ([OUTLINED_FUNCTION_11_25() depthDataDeliveryEnabled])
  {
    [v25 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*off_1E798D418];
  }

  v23 = [*(a1 + 88) setupWithOptions:v25];
  if (v23)
  {
    goto LABEL_39;
  }

  return v23;
}

- (void)input:(id)a3 addFrame:(opaqueCMSampleBuffer *)a4 isReferenceFrame:(BOOL)a5
{
  v5 = a5;
  if ([(BWUBProcessorRequest *)self->_currentRequest input]== a3)
  {
    ubp_addFrame(self, &self->_currentRequest->super.isa, self->_ubProcessor, a4, v5);
    [(BWUBProcessorInput *)[(BWUBProcessorRequest *)self->_currentRequest input] updateAdaptiveBracketingFrameParametersIfNeededUsingFrame:a4 err:[(BWUBProcessorRequest *)self->_currentRequest err]];
  }

  [(BWUBProcessorController *)self _updateStateIfNeeded];
}

- (void)inputReceivedAllFrames:(id)a3
{
  if ([(BWUBProcessorRequest *)self->_currentRequest input]== a3)
  {

    [(BWUBProcessorController *)self _updateStateIfNeeded];
  }
}

- (BOOL)finishProcessingCurrentInputNow
{
  v2 = self->_currentRequest;
  if ([(BWUBProcessorInput *)[(BWUBProcessorRequest *)v2 input] adaptiveBracketingParameters])
  {
    [(BWUBProcessorInput *)[(BWUBProcessorRequest *)v2 input] stopAdaptiveBracketingNow];
    v5 = [(BWUBProcessorRequest *)v2 err];
    v3 = v5 == 0;
    if (dword_1EB58DE40)
    {
      v6 = v5;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_40_7();
      if (v9)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@'. Success:%d (err=%d)", v2, v6 == 0, -[BWUBProcessorRequest err](v2, "err")];
        [(FigCaptureStillImageSettings *)[(BWStillImageProcessorControllerInput *)[(BWUBProcessorRequest *)v2 input] settings] settingsID];
        OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_1_7();
        OUTLINED_FUNCTION_4_4();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_56_0();
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_serviceNextRequest
{
  if (result)
  {
    v1 = result;
    v2 = result[22];
    v3 = v2 ? v2[5] : 0;
    v4 = [v2 input];
    v5 = [v1[22] err];

    v1[22] = 0;
    [v3 processorController:v1 didFinishProcessingInput:v4 err:v5];

    result = [v1[21] firstObject];
    v1[22] = result;
    if (result)
    {
      [v1[21] removeObjectAtIndex:0];
      v6 = [v1[22] input];

      return [v6 setDelegate:v1];
    }
  }

  return result;
}

- (uint64_t)_setupProcessorForProcessingType:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v3 = a2;
  if (dword_1EB58DE40)
  {
    v76 = 0;
    v75 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_4_0();
    if (v2)
    {
      v7 = *(a1 + 176);
      v67 = 136315907;
      v68 = "[BWUBProcessorController _setupProcessorForProcessingType:]";
      v69 = 2113;
      v70 = &stru_1F216A3D0;
      v71 = 2113;
      v72 = v7;
      v73 = 2048;
      v74 = [objc_msgSend(objc_msgSend(v7 "input")];
      LODWORD(v59) = 42;
      v58 = &v67;
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_39_0();
    v3 = a2;
  }

  v8 = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_15_15() "input")];
  [OUTLINED_FUNCTION_45_8() setOutput:0];
  [OUTLINED_FUNCTION_45_8() resetState];
  v9 = [OUTLINED_FUNCTION_15_15() input];
  v10 = OUTLINED_FUNCTION_15_15();
  if (v10)
  {
    v12 = 0;
    if (v3 && (v10[34] & 1) != 0)
    {
      v13 = [objc_msgSend(v10 "input")];
      if (v8 == 10)
      {
        v14 = v13;
        v15 = [v13 sceneFlags];
        v16 = v3;
        v17 = [v14 sceneFlags];
        v18 = [v14 captureFlags] & 0x100000;
        v19 = [v14 captureFlags];
        v20 = v17 & 4;
        v3 = v16;
        v21 = (v19 >> 22) & 1;
        if (v18)
        {
          LODWORD(v21) = 1;
        }

        if (v20)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        if ((v15 & 8) != 0)
        {
          v23 = 1;
        }

        else
        {
          v23 = v22;
        }
      }

      else
      {
        v23 = 1;
      }

      [*(a1 + 88) setSrlEnabled:{v23, v58, v59}];
      v24 = [OUTLINED_FUNCTION_15_15() provideInferenceInputImageForProcessing];
      v11 = 176;
      if (v24)
      {
        OUTLINED_FUNCTION_19_13();
        v26 = [v25 processorController:? newOutputPixelBufferForProcessorInput:? type:?];
        if (!v26)
        {
          OUTLINED_FUNCTION_0();
          FigDebugAssert3();
          return 4294954510;
        }

        v12 = v26;
        v11 = 176;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v27 = [objc_msgSend(objc_msgSend(*(a1 + v11) input];
  v66 = v12;
  v63 = v3;
  if (v3 != 3)
  {
    v50 = 0;
    v51 = OUTLINED_FUNCTION_15_15();
    if (!v3 && (v8 - 10) <= 2)
    {
      if (v51)
      {
        if (v51[32])
        {
          v50 = 0;
        }

        else
        {
          v50 = v51[33] ^ 1;
        }
      }

      else
      {
        v50 = 1;
      }
    }

    cfa = v27;
    v46 = *(a1 + 96);
    v52 = [v51 output];
    v53 = OUTLINED_FUNCTION_15_15();
    if (v53)
    {
      if (v50)
      {
LABEL_70:
        [(BWUBProcessorRequest *)v53 fusionErrorRecoveryImageType];
        goto LABEL_85;
      }
    }

    else if (v50)
    {
      goto LABEL_70;
    }

    [(BWUBProcessorRequest *)v53 imageType];
LABEL_85:
    OUTLINED_FUNCTION_19_13();
    v55 = [v54 processorController:? newOutputPixelBufferForProcessorInput:? type:?];
    if (v55)
    {
      v45 = v55;
      [v52 setPixelBuffer:v55];
      [MEMORY[0x1E695DF90] dictionary];
      [OUTLINED_FUNCTION_7() setMetadata:?];
      [v52 setInferenceInputPixelBuffer:v12];
      v56 = [v9 fusionMode];
      if (v3 - 1 <= 1)
      {
        if (([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_15_15() "input")] & 0x800) != 0)
        {
          if (([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_15_15() "input")] & 0x1000) != 0)
          {
            v56 = v56;
          }

          else
          {
            v56 = 1;
          }
        }

        if (v3 == 2)
        {
          v57 = [OUTLINED_FUNCTION_15_15() input];
          [(BWUBProcessorInput *)v57 adaptiveBracketingParameters];
          [OUTLINED_FUNCTION_45_8() setProgressiveBracketingParameters:?];
        }
      }

      [OUTLINED_FUNCTION_45_8() setFusionMode:v56];
      if (([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_15_15() "input")] & 0x100) != 0)
      {
        [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_15_15() "input")];
      }

      [OUTLINED_FUNCTION_23_10() setDoRedFaceFix:?];
      [OUTLINED_FUNCTION_23_10() setReferenceFrameHasEVMinus:(cfa >> 20) & 1];
      [OUTLINED_FUNCTION_15_15() output];
      cf = 0;
      v36 = 0;
      v62 = 0;
      v43 = 0;
      v44 = 0;
      v47 = 0;
      goto LABEL_42;
    }

    goto LABEL_77;
  }

  v28 = *(a1 + 144);
  v29 = [OUTLINED_FUNCTION_15_15() deepFusionOutput];
  if (![objc_msgSend(v9 "captureSettings")])
  {
    cf = 0;
    goto LABEL_30;
  }

  if (([objc_opt_class() lazilyAllocatesDeepFusionOutputBuffers] & 1) == 0)
  {
    OUTLINED_FUNCTION_19_13();
    v30 = [v31 processorController:? newOutputPixelBufferForProcessorInput:? type:?];
    if (v30)
    {
      goto LABEL_29;
    }

LABEL_77:
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    v48 = 4294954510;
    if (!v12)
    {
      return v48;
    }

    goto LABEL_60;
  }

  v30 = 0;
LABEL_29:
  cf = v30;
  [v29 setProxyPixelBuffer:v30];
  [v29 setProxyMetadata:{objc_msgSend(MEMORY[0x1E695DF90], "dictionary")}];
LABEL_30:
  v61 = v28;
  if (([objc_opt_class() lazilyAllocatesDeepFusionOutputBuffers] & 1) == 0)
  {
    OUTLINED_FUNCTION_19_13();
    v60 = [v37 processorController:? newOutputPixelBufferForProcessorInput:? type:?];
    if (!v60)
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      v36 = 0;
      v35 = 0;
      v34 = 0;
      v33 = 0;
      v47 = 0;
      v48 = 4294954510;
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_19_13();
    v35 = [v38 processorController:? newOutputPixelBufferForProcessorInput:? type:?];
    if (v35)
    {
      OUTLINED_FUNCTION_19_13();
      v34 = [v39 processorController:? newOutputPixelBufferForProcessorInput:? type:?];
      if (v34)
      {
        OUTLINED_FUNCTION_19_13();
        v33 = [v40 processorController:? newOutputPixelBufferForProcessorInput:? type:?];
        if (v33)
        {
          if (([objc_msgSend(objc_msgSend(*(a1 + 176) "input")] & 0x400000) == 0)
          {
            v32 = 0;
LABEL_40:
            v36 = v60;
            goto LABEL_41;
          }

          OUTLINED_FUNCTION_19_13();
          v42 = [v41 processorController:? newOutputPixelBufferForProcessorInput:? type:?];
          if (v42)
          {
            v32 = v42;
            goto LABEL_40;
          }
        }

        OUTLINED_FUNCTION_0();
        FigDebugAssert3();
LABEL_80:
        v47 = 0;
        v48 = 4294954510;
        v36 = v60;
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      v34 = 0;
    }

    v33 = 0;
    goto LABEL_80;
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
LABEL_41:
  [v29 setReferencePixelBuffer:v36];
  v62 = v35;
  [v29 setReferenceNoisePixelBuffer:v35];
  [v29 setReferenceMetadata:{objc_msgSend(MEMORY[0x1E695DF90], "dictionary")}];
  v43 = v34;
  [v29 setLongPixelBuffer:v34];
  v44 = v33;
  [v29 setLongNoisePixelBuffer:v33];
  [v29 setLongMetadata:{objc_msgSend(MEMORY[0x1E695DF90], "dictionary")}];
  [v29 setRealLongNoisePixelBuffer:v32];
  [v29 setInferenceInputPixelBuffer:v66];
  [OUTLINED_FUNCTION_23_10() setReferenceFrameHasEVMinus:(v27 >> 20) & 1];
  [*(a1 + 176) deepFusionOutput];
  v45 = 0;
  v46 = v61;
  v47 = v32;
LABEL_42:
  [OUTLINED_FUNCTION_23_10() setOutput:?];
  v48 = [OUTLINED_FUNCTION_23_10() prepareToProcess:v63 prepareDescriptor:v46];
  if (!v48)
  {
    [OUTLINED_FUNCTION_23_10() setDelegate:a1];
  }

  if (v45)
  {
    CFRelease(v45);
  }

  v34 = v43;
  v35 = v62;
  v33 = v44;
LABEL_47:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  v12 = v66;
  if (v34)
  {
    CFRelease(v34);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (v66)
  {
LABEL_60:
    CFRelease(v12);
  }

  return v48;
}

- (unint64_t)_setupProcessor
{
  if (result)
  {
    v1 = result;
    v2 = [(BWUBNRFProcessorRequest *)*(result + 176) processingType];
    if ([(BWUBProcessorController *)v1 _setupProcessorForProcessingType:v2])
    {
      [OUTLINED_FUNCTION_44_7() setErr:?];
      [*(v1 + 88) setOutput:0];
      v8 = *(v1 + 88);

      return [v8 resetState];
    }

    else
    {
      for (i = 0; ; ++i)
      {
        v4 = [OUTLINED_FUNCTION_44_7() input];
        if (v4)
        {
          v4 = OUTLINED_FUNCTION_42_8(v4);
        }

        result = [v4 count];
        if (result <= i)
        {
          break;
        }

        v5 = [OUTLINED_FUNCTION_44_7() input];
        if (v5)
        {
          v5 = OUTLINED_FUNCTION_42_8(v5);
        }

        v6 = [v5 objectAtIndexedSubscript:i];
        v7 = i == [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_44_7() "input")];
        ubp_addFrame(v1, *(v1 + 176), *(v1 + 88), v6, v7);
      }
    }
  }

  return result;
}

- (void)_processSingleImage
{
  if (a1)
  {
    v2 = *(a1 + 176);
    if (v2 && v2[32] == 1)
    {
      v3 = [objc_msgSend(v2 "input")];
    }

    else
    {
      v4 = [v2 input];
      if (v4)
      {
        v4 = v4[7];
      }

      v3 = [v4 firstObject];
    }

    cf = 0;
    [(BWUBProcessorController *)a1 _singleImageProcessSampleBuffer:v3 sampleBufferOut:&cf];
    if (cf)
    {
      v5 = *(a1 + 176);
      if (v5)
      {
        if (*(v5 + 32) == 1)
        {
          [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(OUTLINED_FUNCTION_50_8(cf), "unsignedIntValue") | 0x400}];
          v6 = OUTLINED_FUNCTION_7();
          CMSetAttachment(v6, @"StillImageProcessingFlags", v7, 1u);
        }
      }
    }

    [(BWUBProcessorRequest *)*(a1 + 176) imageType];
    [OUTLINED_FUNCTION_43_8() input];
    v8 = OUTLINED_FUNCTION_14_17();
    OUTLINED_FUNCTION_35_10(v8, v9, v10, v11, v12, v13);
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

- (uint64_t)_singleImageProcessSampleBuffer:(CMAttachmentBearerRef *)a3 sampleBufferOut:
{
  if (result)
  {
    if (a2)
    {
      v5 = result;
      if (dword_1EB58DE40)
      {
        v17 = 0;
        v16 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_40_7();
        if (v8)
        {
          v9 = v7;
        }

        else
        {
          v9 = 0;
        }

        if (v9)
        {
          v10 = BWStillImageSampleBufferToDisplayString(a2);
          [objc_msgSend(objc_msgSend(*(v5 + 176) "input")];
          v14 = 136315651;
          OUTLINED_FUNCTION_20();
          v15 = v10;
          OUTLINED_FUNCTION_1_7();
          OUTLINED_FUNCTION_13();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_56_0();
      }

      result = [*(v5 + 88) addFrame:a2];
      if (!result)
      {
        result = [*(v5 + 88) process];
        if (!result)
        {
          target = 0;
          result = BWCMSampleBufferCreateCopyWithNewPixelBuffer(a2, [objc_msgSend(*(v5 + 176) "output")], (v5 + 152), &target);
          if (!result)
          {
            v11 = *off_1E798A3C8;
            v12 = [OUTLINED_FUNCTION_50_8(target) mutableCopy];
            [objc_msgSend(*(v5 + 176) "output")];
            [OUTLINED_FUNCTION_7() addEntriesFromDictionary:?];
            CMSetAttachment(target, v11, v12, 1u);

            result = 0;
            if (a3)
            {
              *a3 = target;
            }
          }
        }
      }
    }

    else
    {
      return 4294954516;
    }
  }

  return result;
}

- (void)_processUBFusion
{
  if (!a1)
  {
    return;
  }

  v3 = [*(a1 + 176) err];
  sampleBufferOut[0] = 0;
  v4 = [OUTLINED_FUNCTION_10_26() output];
  v5 = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_10_26() "input")];
  if (dword_1EB58DE40)
  {
    OUTLINED_FUNCTION_10_19();
    v6 = OUTLINED_FUNCTION_22_11();
    os_log_type_enabled(v6, v143);
    OUTLINED_FUNCTION_37_1();
    if (v1)
    {
      [objc_msgSend(OUTLINED_FUNCTION_31_9() "settings")];
      OUTLINED_FUNCTION_36_11();
      OUTLINED_FUNCTION_18_15("[BWUBProcessorController _processUBFusion]");
      *(v7 + 14) = v144;
      OUTLINED_FUNCTION_2_58();
      OUTLINED_FUNCTION_4_4();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  i = kBWNodeSampleBufferAttachmentKey_StillImageProcessingFlags;
  v9 = &unk_1E799C000;
  if (v3)
  {
    v10 = [v4 metadata];
    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v10 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v3), @"UBAddFrameFailure"}];
    goto LABEL_53;
  }

  v3 = [*(a1 + 88) process];
  v10 = [v4 metadata];
  if (!v3)
  {
    v11 = [objc_msgSend(OUTLINED_FUNCTION_10_26() "input")];
    CopyWithNewPixelBuffer = BWCMSampleBufferCreateCopyWithNewPixelBuffer(v11, [v4 pixelBuffer], (a1 + 152), sampleBufferOut);
    if (!CopyWithNewPixelBuffer)
    {
      v101 = v10;
      HIDWORD(v98) = v5;
      if (([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_10_26() "input")] & 0x800) == 0)
      {
LABEL_27:
        v5 = HIDWORD(v98);
        v10 = v101;
        if ([v4 fusionMode] == 2 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v39 = [objc_msgSend(OUTLINED_FUNCTION_10_26() "input")];
          memset(&v142, 0, sizeof(v142));
          CMSampleBufferGetPresentationTimeStamp(&v142, v39);
          v40 = [MEMORY[0x1E695DF70] array];
          for (i = 0; i != 3; ++i)
          {
            for (j = 0; j != 3; ++j)
            {
              v42 = MEMORY[0x1E696AD98];
              [v4 refFrameTransform];
              LODWORD(v114) = v43;
              LODWORD(v116) = v44;
              v113 = *&v45;
              v115 = v46;
              LODWORD(v118) = v47;
              v117 = v48;
              LODWORD(v45) = *((&v113 + 2 * i) & 0xFFFFFFFFFFFFFFF3 | (4 * (j & 3)));
              [v40 addObject:{objc_msgSend(v42, "numberWithFloat:", v45)}];
            }
          }

          v49 = OUTLINED_FUNCTION_10_26();
          if (v49)
          {
            v50 = v49[5];
          }

          else
          {
            v50 = 0;
          }

          v5 = HIDWORD(v98);
          v10 = v101;
          v51 = [v49 input];
          v141 = v142;
          [v50 processorController:a1 didSelectNewReferenceFrameWithPTS:&v141 transform:v40 processorInput:v51];
        }

        CMSetAttachment(sampleBufferOut[0], @"HasUnreliableBracketingMetadata", MEMORY[0x1E695E118], 1u);
        v52 = CMGetAttachment(sampleBufferOut[0], *off_1E798A3C8, 0);
        [v52 addEntriesFromDictionary:v10];
        [v52 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(v4, "fusionMode")), *off_1E798A670}];
        if (([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_10_26() "input")] & 0x100000) != 0)
        {
          v53 = [CMGetAttachment(sampleBufferOut[0] @"StillImageProcessingFlags"];
          LODWORD(i) = sampleBufferOut[0];
          CMSetAttachment(sampleBufferOut[0], @"StillImageProcessingFlags", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v53 | 2u], 1u);
          if (([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_10_26() "input")] & 1) != 0 || objc_msgSend(objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_10_26(), "input"), "settings"), "HDRMode") == 1)
          {
            if ([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_10_26() "input")])
            {
              v54 = 3;
            }

            else
            {
              v54 = 2;
            }

            [v52 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithShort:", v54), *off_1E798B370}];
          }
        }

        if (v5 == 11)
        {
          [v52 setObject:&unk_1F2243F78 forKeyedSubscript:@"CompositeImage"];
          v111 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(OUTLINED_FUNCTION_10_26(), "numberOfFramesAddedForMultiFrameProcessing")}];
          v112 = &unk_1F2243F90;
          i = 0x1E695D000uLL;
          [v52 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", &v111, 2), @"SourceImageNumberOfCompositeImage"}];
          [OUTLINED_FUNCTION_10_26() totalExposureTimesOfFramesAddedForMultiFrameProcessing];
          v56 = v55;
          [OUTLINED_FUNCTION_10_26() maxExposureTimesOfFramesAddedForMultiFrameProcessing];
          v58 = v57;
          [OUTLINED_FUNCTION_10_26() minExposureTimesOfFramesAddedForMultiFrameProcessing];
          v60 = v59;
          v103 = &unk_1F224A820;
          LODWORD(v61) = v56;
          v104 = [MEMORY[0x1E696AD98] numberWithFloat:v61];
          v105 = &unk_1F224A820;
          LODWORD(v62) = v58;
          v106 = [MEMORY[0x1E696AD98] numberWithFloat:v62];
          v107 = &unk_1F224A820;
          LODWORD(v63) = v60;
          v108 = [MEMORY[0x1E696AD98] numberWithFloat:v63];
          v109 = &unk_1F224A820;
          v110 = &unk_1F2243F90;
          [v52 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", &v103, 8), @"SourceExposureTimesOfCompositeImage"}];
          v64 = sampleBufferOut[0];
          v9 = &unk_1E799C000;
          v65 = [objc_msgSend(OUTLINED_FUNCTION_10_26() "input")];
          CMSetAttachment(v64, @"OisRecenteringLoggingData", v65, 1u);
        }

        else
        {
          [v52 setObject:&unk_1F2243FA8 forKeyedSubscript:@"CompositeImage"];
          v9 = &unk_1E799C000;
        }

        if (dword_1EB58DE40)
        {
          OUTLINED_FUNCTION_10_19();
          v66 = OUTLINED_FUNCTION_22_11();
          v67 = v144;
          os_log_type_enabled(v66, v143);
          OUTLINED_FUNCTION_37_1();
          if (i)
          {
            [objc_msgSend(OUTLINED_FUNCTION_31_9() "settings")];
            OUTLINED_FUNCTION_36_11();
            OUTLINED_FUNCTION_18_15("[BWUBProcessorController _processUBFusion]");
            *(v68 + 14) = v67;
            OUTLINED_FUNCTION_2_58();
            OUTLINED_FUNCTION_13();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_2_4();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v10 = v101;
        }

        v69 = OUTLINED_FUNCTION_10_26();
        if (v69)
        {
          v70 = *(v69 + 40);
        }

        else
        {
          v70 = 0;
        }

        v71 = sampleBufferOut[0];
        v72 = [(BWUBProcessorRequest *)v69 imageType];
        [v70 processorController:a1 didFinishProcessingSampleBuffer:v71 type:v72 processorInput:objc_msgSend(OUTLINED_FUNCTION_10_26() err:{"input"), 0}];
        v3 = 0;
        goto LABEL_53;
      }

      v13 = [v4 fusionMode];
      if (v13 == 1)
      {
        if (!BWSampleBufferGetAttachedMedia(sampleBufferOut[0], 0x1F21AAAF0))
        {
          v139 = 0x1F21AAAF0;
          v14 = MEMORY[0x1E695DEC8];
          v15 = &v139;
          v16 = 1;
          goto LABEL_18;
        }
      }

      else if (v13 == 2)
      {
        v140[0] = @"Depth";
        v140[1] = 0x1F21AABD0;
        v140[2] = 0x1F21AAB10;
        v140[3] = 0x1F21AAB50;
        v14 = MEMORY[0x1E695DEC8];
        v15 = v140;
        v16 = 4;
LABEL_18:
        v17 = [v14 arrayWithObjects:v15 count:v16];
        goto LABEL_20;
      }

      v17 = 0;
LABEL_20:
      v18 = [objc_msgSend(OUTLINED_FUNCTION_10_26() "input")];
      v135 = 0u;
      v136 = 0u;
      v137 = 0u;
      v138 = 0u;
      v26 = OUTLINED_FUNCTION_47_8(v18, v19, v20, v21, v22, v23, v24, v25, v92, v94, v96, v98, v99, v10, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, 0);
      if (v26)
      {
        i = v26;
        v27 = *v136;
        do
        {
          for (k = 0; k != i; ++k)
          {
            if (*v136 != v27)
            {
              objc_enumerationMutation(v17);
            }

            v29 = *(*(&v135 + 1) + 8 * k);
            AttachedMedia = BWSampleBufferGetAttachedMedia(v18, v29);
            BWSampleBufferSetAttachedMedia(sampleBufferOut[0], v29, AttachedMedia);
          }

          i = OUTLINED_FUNCTION_47_8(v31, v32, v33, v34, v35, v36, v37, v38, v93, v95, v97, v98, v100, v101, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135);
        }

        while (i);
      }

      goto LABEL_27;
    }

    v3 = CopyWithNewPixelBuffer;
  }

LABEL_53:
  if (![OUTLINED_FUNCTION_10_26() err])
  {
    [OUTLINED_FUNCTION_10_26() setErr:v3];
  }

  v73 = sampleBufferOut[0];
  if (sampleBufferOut[0])
  {
    goto LABEL_56;
  }

  [v4 setPixelBuffer:0];
  v74 = [objc_msgSend(OUTLINED_FUNCTION_10_26() "input")];
  if (([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_10_26() "input")] & 1) == 0 && v74)
  {
    if ([(BWUBProcessorController *)a1 _setupProcessorForProcessingType:?]|| [(BWUBProcessorController *)a1 _singleImageProcessSampleBuffer:v74 sampleBufferOut:sampleBufferOut])
    {
      OUTLINED_FUNCTION_1_5();
      FigDebugAssert3();
    }

    else if (dword_1EB58DE40)
    {
      v102 = v10;
      OUTLINED_FUNCTION_10_19();
      v75 = OUTLINED_FUNCTION_22_11();
      v76 = v144;
      os_log_type_enabled(v75, v143);
      OUTLINED_FUNCTION_37_1();
      if (kBWNodeSampleBufferAttachmentKey_StillImageProcessingFlags)
      {
        [objc_msgSend(OUTLINED_FUNCTION_31_9() "settings")];
        OUTLINED_FUNCTION_36_11();
        OUTLINED_FUNCTION_18_15("[BWUBProcessorController _processUBFusion]");
        *(v77 + 14) = v76;
        OUTLINED_FUNCTION_2_58();
        OUTLINED_FUNCTION_4_4();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v10 = v102;
      v9 = &unk_1E799C000;
    }

    v78 = sampleBufferOut[0];
    if (sampleBufferOut[0])
    {
      goto LABEL_78;
    }

    ImageBuffer = CMSampleBufferGetImageBuffer(v74);
    PixelFormatType = CVPixelBufferGetPixelFormatType(ImageBuffer);
    if (PixelFormatType == [objc_msgSend(*(a1 + 64) "outputFormat")] && !BWCMSampleBufferCreateCopyIncludingMetadata(v74, sampleBufferOut) && dword_1EB58DE40)
    {
      OUTLINED_FUNCTION_10_19();
      v81 = OUTLINED_FUNCTION_22_11();
      v82 = v144;
      if (os_log_type_enabled(v81, v143))
      {
        v83 = v82;
      }

      else
      {
        v83 = v82 & 0xFFFFFFFE;
      }

      if (v83)
      {
        v84 = *(a1 + 176);
        [objc_msgSend(objc_msgSend(v84 "input")];
        OUTLINED_FUNCTION_36_11();
        OUTLINED_FUNCTION_18_15("[BWUBProcessorController _processUBFusion]");
        *(v85 + 14) = v84;
        OUTLINED_FUNCTION_2_58();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v9 = &unk_1E799C000;
    }

    v78 = sampleBufferOut[0];
    if (sampleBufferOut[0])
    {
LABEL_78:
      v86 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(CMGetAttachment(v78, @"StillImageProcessingFlags", 0), "unsignedIntValue") | 0x400}];
      OUTLINED_FUNCTION_46_7(v86);
      [CMGetAttachment(sampleBufferOut[0] *off_1E798A3C8];
      if (v5 == 11)
      {
        v87 = sampleBufferOut[0];
        v88 = *(v9 + 409);
        v89 = [objc_msgSend(OUTLINED_FUNCTION_10_26() "input")];
        CMSetAttachment(v87, v88, v89, 1u);
      }
    }
  }

  v90 = OUTLINED_FUNCTION_10_26();
  [(BWUBProcessorRequest *)v90 fusionErrorRecoveryImageType];
  [OUTLINED_FUNCTION_10_26() input];
  OUTLINED_FUNCTION_20_11();
  [v91 processorController:? didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
  v73 = sampleBufferOut[0];
  if (sampleBufferOut[0])
  {
LABEL_56:
    CFRelease(v73);
  }
}

- (uint64_t)_processUBOriginalImage
{
  if (result)
  {
    v1 = result;
    target = 0;
    v2 = -[BWUBProcessorController _singleImageProcessSampleBuffer:sampleBufferOut:](result, [objc_msgSend(*(result + 176) "input")], &target);
    if (target)
    {
      v3 = CMGetAttachment(target, *off_1E798A3C8, 0);
      v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(CMGetAttachment(target, @"StillImageProcessingFlags", 0), "unsignedIntValue") | 1}];
      OUTLINED_FUNCTION_46_7(v4);
      [v3 setObject:&unk_1F2243FC0 forKeyedSubscript:*off_1E798B370];
      if (!v2)
      {
        [v3 addEntriesFromDictionary:{objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_43_8(), "output"), "metadata")}];
      }
    }

    v5 = OUTLINED_FUNCTION_43_8();
    [(BWUBProcessorRequest *)v5 imageType];
    [OUTLINED_FUNCTION_43_8() input];
    v6 = OUTLINED_FUNCTION_14_17();
    OUTLINED_FUNCTION_35_10(v6, v7, v8, v9, v10, v11);
    if (target)
    {
      CFRelease(target);
    }

    return [(BWUBProcessorController *)v1 _updateStateIfNeeded];
  }

  return result;
}

- (void)_processDeepFusion
{
  if (!a1)
  {
    return;
  }

  v3 = [a1[22] err];
  sampleBufferOut[0] = 0;
  if (dword_1EB58DE40)
  {
    v4 = OUTLINED_FUNCTION_16_18();
    LODWORD(v1) = v44;
    os_log_type_enabled(v4, v44);
    OUTLINED_FUNCTION_40_7();
    if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = v45;
    }

    if (v7)
    {
      v8 = a1[22];
      [objc_msgSend(objc_msgSend(v8 "input")];
      v42 = 136315651;
      OUTLINED_FUNCTION_27_9();
      v43 = v8;
      OUTLINED_FUNCTION_8_29();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_56_0();
  }

  if (!v3)
  {
    if (![objc_opt_class() lazilyAllocatesDeepFusionOutputBuffers])
    {
      goto LABEL_21;
    }

    v9 = [OUTLINED_FUNCTION_17_15() input];
    v10 = [OUTLINED_FUNCTION_17_15() deepFusionOutput];
    if (![v10 longPixelBuffer])
    {
      OUTLINED_FUNCTION_20_11();
      v12 = [v11 processorController:? newOutputPixelBufferForProcessorInput:? type:?];
      if (!v12)
      {
        goto LABEL_53;
      }

      v1 = v12;
      [v10 setLongPixelBuffer:v12];
      CFRelease(v1);
    }

    if (![v10 longNoisePixelBuffer])
    {
      OUTLINED_FUNCTION_20_11();
      v14 = [v13 processorController:? newOutputPixelBufferForProcessorInput:? type:?];
      if (!v14)
      {
        goto LABEL_53;
      }

      v1 = v14;
      [v10 setLongNoisePixelBuffer:v14];
      CFRelease(v1);
    }

    if ([v10 realLongNoisePixelBuffer] || (objc_msgSend(objc_msgSend(v9, "captureSettings"), "captureFlags") & 0x400000) == 0)
    {
LABEL_21:
      v18 = [a1[11] process];
      if (v18)
      {
        v3 = v18;
      }

      else
      {
        if ([a1[8] deepFusionWaitForProcessingToFinish])
        {
          [a1[11] finishProcessing];
        }

        v3 = 0;
      }

      goto LABEL_25;
    }

    OUTLINED_FUNCTION_20_11();
    v16 = [v15 processorController:? newOutputPixelBufferForProcessorInput:? type:?];
    if (v16)
    {
      v17 = v16;
      [v10 setRealLongNoisePixelBuffer:v16];
      CFRelease(v17);
      goto LABEL_21;
    }

LABEL_53:
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    v3 = 4294954510;
  }

LABEL_25:
  if (![OUTLINED_FUNCTION_17_15() err])
  {
    [OUTLINED_FUNCTION_17_15() setErr:v3];
  }

  if (v3 && [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_17_15() "input")] && (objc_msgSend(OUTLINED_FUNCTION_17_15(), "deliveredDeferredProxyImage") & 1) == 0)
  {
    [objc_msgSend(OUTLINED_FUNCTION_17_15() "deepFusionOutput")];
    v19 = [objc_msgSend(OUTLINED_FUNCTION_17_15() "input")];
    if (!v19)
    {
LABEL_50:
      v32 = OUTLINED_FUNCTION_17_15();
      [(BWUBProcessorRequest *)v32 fusionErrorRecoveryImageType];
      [OUTLINED_FUNCTION_17_15() input];
      v33 = OUTLINED_FUNCTION_14_17();
      OUTLINED_FUNCTION_35_10(v33, v34, v35, v36, v37, v38);
      if (sampleBufferOut[0])
      {
        CFRelease(sampleBufferOut[0]);
      }

      return;
    }

    v20 = v19;
    if ([(BWUBProcessorController *)a1 _setupProcessorForProcessingType:?])
    {
      OUTLINED_FUNCTION_6_38();
    }

    else
    {
      if (![(BWUBProcessorController *)a1 _singleImageProcessSampleBuffer:v20 sampleBufferOut:sampleBufferOut])
      {
        if (dword_1EB58DE40)
        {
          LODWORD(v1) = v44;
          v39 = OUTLINED_FUNCTION_16_18();
          os_log_type_enabled(v39, v44);
          OUTLINED_FUNCTION_40_7();
          if (v6)
          {
            v22 = v21;
          }

          else
          {
            v22 = v45;
          }

          if (v22)
          {
            v23 = a1[22];
            [objc_msgSend(objc_msgSend(v23 "input")];
            v42 = 136315651;
            OUTLINED_FUNCTION_27_9();
            v43 = v23;
            OUTLINED_FUNCTION_8_29();
            OUTLINED_FUNCTION_13();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_56_0();
        }

        goto LABEL_41;
      }

      OUTLINED_FUNCTION_6_38();
    }

    FigDebugAssert3();
LABEL_41:
    v24 = sampleBufferOut[0];
    if (sampleBufferOut[0])
    {
      goto LABEL_49;
    }

    ImageBuffer = CMSampleBufferGetImageBuffer(v20);
    PixelFormatType = CVPixelBufferGetPixelFormatType(ImageBuffer);
    if (PixelFormatType == [objc_msgSend(a1[8] "outputFormat")] && !BWCMSampleBufferCreateCopyIncludingMetadata(v20, sampleBufferOut) && dword_1EB58DE40)
    {
      v27 = OUTLINED_FUNCTION_16_18();
      os_log_type_enabled(v27, v44);
      OUTLINED_FUNCTION_4_0();
      if (v1)
      {
        v28 = a1[22];
        [objc_msgSend(objc_msgSend(v28 "input")];
        v42 = 136315651;
        OUTLINED_FUNCTION_27_9();
        v43 = v28;
        OUTLINED_FUNCTION_8_29();
        OUTLINED_FUNCTION_4_4();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_39_0();
    }

    v24 = sampleBufferOut[0];
    if (sampleBufferOut[0])
    {
LABEL_49:
      [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(OUTLINED_FUNCTION_50_8(v24), "unsignedIntValue") | 0x400}];
      v29 = OUTLINED_FUNCTION_7();
      CMSetAttachment(v29, @"StillImageProcessingFlags", v30, 1u);
      v31 = CMGetAttachment(sampleBufferOut[0], *off_1E798A3C8, 0);
      v40 = @"UBDeepFusionFusionFailure";
      v41 = [MEMORY[0x1E696AD98] numberWithInt:v3];
      [v31 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v41, &v40, 1), @"UB"}];
    }

    goto LABEL_50;
  }
}

- (void)processor:(id)a3 outputReadyWithFrameType:(int)a4 outputPixelBuffer:(__CVBuffer *)a5 outputMetadata:(id)a6 error:(int)a7
{
  if (a5 && !a7)
  {
    v10 = 9;
    switch(a4)
    {
      case 2:
        v28 = OUTLINED_FUNCTION_48_8([(BWUBProcessorInput *)[(BWUBProcessorRequest *)self->_currentRequest input] referenceFrame], 152);
        if (![(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)[(BWUBProcessorRequest *)self->_currentRequest input] captureSettings] deliverDeferredPhotoProxyImage])
        {
          goto LABEL_25;
        }

        v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(OUTLINED_FUNCTION_50_8(v28), "unsignedIntValue") | 0x1000}];
        CMSetAttachment(v28, @"StillImageProcessingFlags", v29, 1u);
        [(BWUBProcessorRequest *)self->_currentRequest setDeliveredDeferredProxyImage:1];
        [(BWUBProcessorRequest *)self->_currentRequest input];
        v30 = OUTLINED_FUNCTION_14_17();
        goto LABEL_24;
      case 3:
        v11 = [(BWUBProcessorRequest *)self->_currentRequest deepFusionOutput];
        if ([(UBDeepFusionOutput *)v11 refFrameTransformIsValid]&& (objc_opt_respondsToSelector() & 1) != 0)
        {
          v12 = [(BWUBProcessorInput *)[(BWUBProcessorRequest *)self->_currentRequest input] evMinusReferenceFrame];
          memset(&v39, 0, sizeof(v39));
          CMSampleBufferGetPresentationTimeStamp(&v39, v12);
          v13 = [MEMORY[0x1E695DF70] array];
          for (i = 0; i != 3; ++i)
          {
            for (j = 0; j != 3; ++j)
            {
              v16 = MEMORY[0x1E696AD98];
              [(UBDeepFusionOutput *)v11 refFrameTransform];
              v34 = v17;
              v36 = v18;
              v33 = v19;
              v35 = v20;
              v38 = v21;
              v37 = v22;
              LODWORD(v19) = *((&v33 + 2 * i) & 0xFFFFFFFFFFFFFFF3 | (4 * (j & 3)));
              [v13 addObject:{objc_msgSend(v16, "numberWithFloat:", v19)}];
            }
          }

          currentRequest = self->_currentRequest;
          if (currentRequest)
          {
            delegate = currentRequest->_delegate;
          }

          else
          {
            delegate = 0;
          }

          v25 = [(BWUBProcessorRequest *)currentRequest input];
          v32 = v39;
          [(BWUBProcessorControllerDelegate *)delegate processorController:self didSelectNewReferenceFrameWithPTS:&v32 transform:v13 processorInput:v25];
        }

        v10 = 8;
        goto LABEL_17;
      case 4:
        goto LABEL_17;
      case 5:
        v10 = 10;
        goto LABEL_17;
      case 6:
        v10 = 11;
        goto LABEL_17;
      case 7:
        v10 = 12;
LABEL_17:
        v26 = self->_currentRequest;
        if (v26)
        {
          v27 = v26->_delegate;
        }

        else
        {
          v27 = 0;
        }

        LODWORD(v31) = 0;
        [(BWUBProcessorControllerDelegate *)v27 processorController:self didFinishProcessingBuffer:a5 metadata:a6 type:v10 captureFrameFlags:0 processorInput:[(BWUBProcessorRequest *)v26 input] err:v31];
        break;
      case 8:
        v28 = OUTLINED_FUNCTION_48_8([(BWUBProcessorInput *)[(BWUBProcessorRequest *)self->_currentRequest input] referenceFrame], 160);
        [(BWUBProcessorRequest *)self->_currentRequest input];
        v30 = OUTLINED_FUNCTION_14_17();
LABEL_24:
        [v30 processorController:? didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
LABEL_25:
        if (v28)
        {

          CFRelease(v28);
        }

        break;
      default:
        return;
    }
  }
}

- (CMAttachmentBearerRef)_newOutputSampleBufferWithSampleBuffer:(__CVBuffer *)a3 pixelBuffer:(CFTypeRef *)a4 formatDescriptionInOut:(uint64_t)a5 metadataToMerge:
{
  if (result)
  {
    target = 0;
    if (BWCMSampleBufferCreateCopyWithNewPixelBuffer(a2, a3, a4, &target))
    {
      OUTLINED_FUNCTION_1_5();
      FigDebugAssert3();
    }

    else
    {
      v6 = *off_1E798A3C8;
      v7 = [CMGetAttachment(target *off_1E798A3C8];
      [v7 addEntriesFromDictionary:a5];
      CMSetAttachment(target, v6, v7, 1u);
    }

    return target;
  }

  return result;
}

- (void)processor:(id)a3 didSelectFusionMode:(int)a4
{
  v4 = *&a4;
  currentRequest = self->_currentRequest;
  if (currentRequest)
  {
    delegate = currentRequest->_delegate;
  }

  else
  {
    delegate = 0;
  }

  v8 = [(BWUBProcessorRequest *)currentRequest input];

  [(BWUBProcessorControllerDelegate *)delegate processorController:self didSelectFusionMode:v4 processorInput:v8];
}

- (id)processorGetInferenceResults:(id)a3
{
  v4 = objc_alloc_init(NSClassFromString(&cfstr_Ubprocessorinf.isa));
  if ([(BWUBProcessorRequest *)self->_currentRequest inferencesAvailable])
  {
    currentRequest = self->_currentRequest;
    if (currentRequest)
    {
      delegate = currentRequest->_delegate;
    }

    else
    {
      delegate = 0;
    }

    v7 = [(BWUBProcessorControllerDelegate *)delegate processorController:self newInferencesForProcessorInput:[(BWUBProcessorRequest *)currentRequest input]];
    if ([v7 inferenceBufferForAttachedMediaKey:@"PersonSemanticsSkin"])
    {
      [OUTLINED_FUNCTION_17() setSkinMask:?];
    }

    if ([v7 inferenceBufferForAttachedMediaKey:0x1F219E750])
    {
      [OUTLINED_FUNCTION_17() setPersonMask:?];
    }

    if ([v7 inferenceForAttachmentKey:0x1F219E5F0])
    {
      [OUTLINED_FUNCTION_17() setFaceLandmarks:?];
    }
  }

  else
  {
    v7 = 0;
  }

  return v4;
}

- (id)adaptiveBracketingParametersForDigitalFlashMode:(int)a3 frameStatistics:(id)a4 stationary:(BOOL)a5 sphereOffsetEnabled:(BOOL)a6 detectedObjects:(id)a7
{
  if (a3 && (v7 = a5, [a4 portType], (v11 = objc_msgSend(OUTLINED_FUNCTION_7(), "objectForKeyedSubscript:")) != 0))
  {
    v12 = v11;
    UBStatisticsFromFrameStatistics = udp_createUBStatisticsFromFrameStatistics(self->_ubProgressiveBracketingStatisticsClass, a4, v7);
    v14 = -[BWUBAdaptiveBracketingParameters initWithProgressiveBracketingParameters:progressiveBracketingStatisticsClass:]([BWUBAdaptiveBracketingParameters alloc], [objc_alloc(self->_ubProgressiveBracketingParametersClass) initWithOptions:v12 portType:objc_msgSend(a4 statistics:"portType") mode:{UBStatisticsFromFrameStatistics, a3 == 2}], self->_ubProgressiveBracketingStatisticsClass);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)adaptiveBracketingDigitalFlashTotalIntegrationTimesProviderForPortType:(id)a3
{
  v5 = [(NSDictionary *)self->_adaptiveBracketingCaptureParametersByPortType objectForKeyedSubscript:?];
  if (v5)
  {
    v5 = -[BWUBAdaptiveBracketingParameters initWithProgressiveBracketingParameters:progressiveBracketingStatisticsClass:]([BWUBAdaptiveBracketingParameters alloc], [objc_alloc(self->_ubProgressiveBracketingParametersClass) initWithOptions:v5 portType:a3 statistics:0 mode:0], self->_ubProgressiveBracketingStatisticsClass);
  }

  return v5;
}

@end