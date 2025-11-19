@interface BWDeepFusionProcessorController
+ (void)initialize;
- (BWDeepFusionProcessorController)initWithConfiguration:(id)a3;
- (id)_serviceNextRequest;
- (id)externalMemoryDescriptor;
- (id)processorGetInferenceResults:(id)a3 inferenceInputBufferType:(int)a4;
- (int)enqueueInputForProcessing:(id)a3 delegate:(id)a4;
- (uint64_t)_addSemanticStylePropertiesIfAvailable;
- (uint64_t)_loadSetupAndPrepareDeepFusionProcessor;
- (uint64_t)_processOnlyApplyingSemanticStyle;
- (uint64_t)_propagateMetadataIfNeeded;
- (uint64_t)_propagateSmartStyleLinearInputBufferToOutputSampleBufferIfNeeded:(uint64_t)result;
- (uint64_t)_resetProcessor;
- (uint64_t)_setupProcessor;
- (uint64_t)_setupProcessorForOnlyApplyingSemanticStyle;
- (uint64_t)_updateStateIfNeeded;
- (void)_process;
- (void)_propagateDemosaicedRawPixelBufferToOutputSampleBufferIfNeeded:(uint64_t)a1;
- (void)_propagateGainMapToOutputSampleBufferIfNeeded:(uint64_t)a1;
- (void)addInferencesForInput:(id)a3;
- (void)beginProcessingCachedBuffersForInput:(id)a3;
- (void)cancelProcessing;
- (void)dealloc;
- (void)input:(id)a3 addInputBuffer:(id)a4;
- (void)processor:(id)a3 didSelectFusionMode:(int)a4;
- (void)processor:(id)a3 outputReadyWithBufferType:(int)a4 outputPixelBuffer:(__CVBuffer *)a5 outputMetadata:(id)a6 error:(int)a7;
@end

@implementation BWDeepFusionProcessorController

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWDeepFusionProcessorController)initWithConfiguration:(id)a3
{
  v11.receiver = self;
  v11.super_class = BWDeepFusionProcessorController;
  v4 = [(BWDeepFusionProcessorController *)&v11 init];
  if (v4)
  {
    if ([objc_msgSend(a3 "sensorConfigurationsByPortType")])
    {
      v6 = [a3 maxInputDimensions];
      if (v6 < 1 || v6 <= 0)
      {
        [BWDeepFusionProcessorController initWithConfiguration:];
      }

      else
      {
        v7 = [a3 maxOutputDimensions];
        if (v7 < 1 || v7 <= 0)
        {
          [BWDeepFusionProcessorController initWithConfiguration:];
        }

        else
        {
          v4->_configuration = a3;
          v4->_requestQueue = objc_alloc_init(MEMORY[0x1E695DF70]);
          v8 = [[FigStateMachine alloc] initWithLabel:@"BWDeepFusionProcessorController state machine" stateCount:[FigStateMachine indexForState:?], 1, v4];
          [(FigStateMachine *)v8 setPerformsAtomicStateTransitions:0];
          [(FigStateMachine *)v8 setLabel:@"Idle" forState:1];
          [(FigStateMachine *)v8 setLabel:@"Ready" forState:2];
          [(FigStateMachine *)v8 setLabel:@"Caching" forState:4];
          [(FigStateMachine *)v8 setLabel:@"Waiting" forState:8];
          [(FigStateMachine *)v8 setLabel:@"Processing" forState:16];
          [(FigStateMachine *)v8 whenTransitioningToStates:0xFFFFFFFFLL callHandler:&__block_literal_global_515];
          [(FigStateMachine *)v8 whenTransitioningToStates:1 callHandler:&__block_literal_global_518];
          [(FigStateMachine *)v8 whenTransitioningToStates:2 callHandler:&__block_literal_global_520];
          [(FigStateMachine *)v8 whenTransitioningToState:8 callHandler:&__block_literal_global_522];
          [(FigStateMachine *)v8 whenTransitioningToState:8 callHandler:&__block_literal_global_524];
          [(FigStateMachine *)v8 whenTransitioningToState:16 callHandler:&__block_literal_global_526];
          v4->_stateMachine = v8;
          v4->_processorVersion = -1;
          v9 = objc_autoreleasePoolPush();
          SetupAndPrepareDeepFusion = [(BWDeepFusionProcessorController *)v4 _loadSetupAndPrepareDeepFusionProcessor];
          objc_autoreleasePoolPop(v9);
          if (!SetupAndPrepareDeepFusion)
          {
            return v4;
          }
        }
      }
    }

    else
    {
      [BWDeepFusionProcessorController initWithConfiguration:];
    }

    return 0;
  }

  return v4;
}

- (void)dealloc
{
  [(BWDeepFusionProcessorController *)self _resetProcessor];

  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  quadraForEnhancedResolutionOutputFormatDescription = self->_quadraForEnhancedResolutionOutputFormatDescription;
  if (quadraForEnhancedResolutionOutputFormatDescription)
  {
    CFRelease(quadraForEnhancedResolutionOutputFormatDescription);
  }

  inferenceInputFormatDescription = self->_inferenceInputFormatDescription;
  if (inferenceInputFormatDescription)
  {
    CFRelease(inferenceInputFormatDescription);
  }

  demosaicedRawFormatDescription = self->_demosaicedRawFormatDescription;
  if (demosaicedRawFormatDescription)
  {
    CFRelease(demosaicedRawFormatDescription);
  }

  smartStyleStillLinearImageFormatDescription = self->_smartStyleStillLinearImageFormatDescription;
  if (smartStyleStillLinearImageFormatDescription)
  {
    CFRelease(smartStyleStillLinearImageFormatDescription);
  }

  inferenceAttachedMediaFormatDescription = self->_inferenceAttachedMediaFormatDescription;
  if (inferenceAttachedMediaFormatDescription)
  {
    CFRelease(inferenceAttachedMediaFormatDescription);
  }

  gainMapFormatDescription = self->_gainMapFormatDescription;
  if (gainMapFormatDescription)
  {
    CFRelease(gainMapFormatDescription);
  }

  v10.receiver = self;
  v10.super_class = BWDeepFusionProcessorController;
  [(BWStillImageProcessorController *)&v10 dealloc];
}

- (int)enqueueInputForProcessing:(id)a3 delegate:(id)a4
{
  if (-[NSSet containsObject:](self->_supportedPortTypes, "containsObject:", [a3 portType]))
  {
    [(BWDeepFusionProcessorController *)a3 enqueueInputForProcessing:a4 delegate:&self->super.super.isa, &v11];
    return v11;
  }

  else
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    [a3 portType];
    v10 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v10, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWDeepFusionProcessorController.m", 701, @"LastShownDate:BWDeepFusionProcessorController.m:701", @"LastShownBuild:BWDeepFusionProcessorController.m:701", 0);
    free(v10);
    return -12780;
  }
}

- (id)externalMemoryDescriptor
{
  v3 = [objc_alloc(MEMORY[0x1E69916C8]) initWithMaxInputDimensions:-[BWDeepFusionProcessorControllerConfiguration maxInputDimensions](self->_configuration inputPixelFormat:"maxInputDimensions") maxOutputDimensions:0 cmiResourceEnabled:-[BWDeepFusionProcessorControllerConfiguration maxOutputDimensions](self->_configuration processorSpecificOptions:"maxOutputDimensions"), -[BWDeepFusionProcessorControllerConfiguration cmiResourceEnabled](self->_configuration, "cmiResourceEnabled"), 0];
  deepFusionProcessor = self->_deepFusionProcessor;

  return [(IBPDeepFusionProcessor *)deepFusionProcessor externalMemoryDescriptorForConfiguration:v3];
}

- (id)processorGetInferenceResults:(id)a3 inferenceInputBufferType:(int)a4
{
  v6 = NSClassFromString(&cfstr_Deepfusioninfe.isa);
  if (a4 == 11)
  {
    v7 = 36;
  }

  else
  {
    v7 = 15;
  }

  v8 = [(BWDeepFusionProcessorControllerDelegate *)[(BWDeepFusionProcessorRequest *)self->_currentRequest delegate] processorController:self newInferencesForProcessorInput:[(BWDeepFusionProcessorRequest *)self->_currentRequest input] inferenceInputBufferType:v7];
  v9 = objc_alloc_init(v6);
  v10 = [v8 inferenceBufferForAttachedMediaKey:@"PersonSemanticsSkin"];
  if (v10)
  {
    [v9 setSkinMask:v10];
  }

  v11 = [v8 inferenceBufferForAttachedMediaKey:@"PersonSemanticsHair"];
  if (v11)
  {
    [v9 setHairMask:v11];
  }

  v12 = [v8 inferenceBufferForAttachedMediaKey:0x1F21AAD30];
  if (v12)
  {
    [v9 setSkyMask:v12];
  }

  if ([(BWDeepFusionProcessorControllerConfiguration *)self->_configuration semanticRenderingVersion]< 4)
  {
    v15 = [v8 inferenceBufferForAttachedMediaKey:0x1F219E750];
    if (v15)
    {
      [v9 setPersonMask:v15];
    }
  }

  else
  {
    v13 = [v8 inferenceBufferForAttachedMediaKey:0x1F21AABB0];
    if (v13)
    {
      v14 = v13;
      if ([(BWDeepFusionProcessorControllerConfiguration *)self->_configuration semanticRenderingVersion]>= 4)
      {
        [v9 setHighResPersonMask:v14];
      }
    }
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = BWInferenceLowResPersonInstanceMaskKeys();
  v18 = [v17 countByEnumeratingWithState:&v28 objects:v27 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v29;
    do
    {
      v21 = 0;
      do
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [v8 inferenceBufferForAttachedMediaKey:*(*(&v28 + 1) + 8 * v21)];
        if (v22)
        {
          [v16 addObject:v22];
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v28 objects:v27 count:16];
    }

    while (v19);
  }

  if ([v16 count])
  {
    [v9 setLowResPersonInstanceMasks:v16];
    [v9 setLowResPersonInstanceConfidences:{objc_msgSend(v8, "inferenceForAttachmentKey:", 0x1F219E990)}];
    [v9 setLowResPersonInstanceBoundingBoxes:{objc_msgSend(v8, "inferenceForAttachmentKey:", 0x1F219E9B0)}];
  }

  v23 = [v8 inferenceBufferForAttachedMediaKey:0x1F219E7F0];
  if (v23)
  {
    [v9 setLowResGlassesMask:v23];
  }

  [v9 setSmartCameraSceneType:{objc_msgSend(-[BWStillImageCaptureSettings metadata](-[BWStillImageProcessorControllerInput captureSettings](-[BWDeepFusionProcessorRequest input](self->_currentRequest, "input"), "captureSettings"), "metadata"), "semanticStyleSceneTypeAsSmartCameraSceneType")}];
  v24 = [v8 inferenceForAttachmentKey:0x1F219E6F0];
  if (v24)
  {
    [v9 setSkinToneClassificationsForFaces:v24];
  }

  v25 = [v8 inferenceForAttachmentKey:0x1F219E5F0];
  if (v25)
  {
    [v9 setFaceLandmarks:v25];
  }

  return v9;
}

- (void)processor:(id)a3 didSelectFusionMode:(int)a4
{
  if (a4 == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = a4 == 1;
  }

  v6 = [(BWDeepFusionProcessorRequest *)self->_currentRequest delegate];
  v7 = [(BWDeepFusionProcessorRequest *)self->_currentRequest input];

  [(BWDeepFusionProcessorControllerDelegate *)v6 processorController:self didSelectFusionMode:v5 processorInput:v7];
}

- (uint64_t)_loadSetupAndPrepareDeepFusionProcessor
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  if (*(a1 + 96))
  {
    return 0;
  }

  v27 = [MEMORY[0x1E695DF90] dictionary];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v32 = [MEMORY[0x1E695DF90] dictionary];
  v33 = v3;
  [OUTLINED_FUNCTION_8_6() setObject:? forKeyedSubscript:?];
  v31 = [MEMORY[0x1E695DFA8] set];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v4 = &OBJC_IVAR___BWFigVideoCaptureDevice__deviceMotionActivityDetector;
  obj = [OUTLINED_FUNCTION_7_77() sensorConfigurationsByPortType];
  v35 = [obj countByEnumeratingWithState:&v39 objects:v38 count:16];
  if (!v35)
  {
    v28 = 0;
LABEL_27:
    if (![v2 count])
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }

    [v27 setObject:v2 forKeyedSubscript:*off_1E798A9D0];
    v18 = &OBJC_IVAR___BWFigVideoCaptureDevice__deviceMotionActivityDetector;
    if ([v32 count])
    {
      [v27 setObject:v32 forKeyedSubscript:*off_1E798A970];
    }

    *(v1 + 72) = [objc_alloc(MEMORY[0x1E695DFD8]) initWithSet:v31];
    v19 = BWLoadProcessorBundle(v28, *(v1 + 88));
    if (!v19)
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      return 0;
    }

    v20 = v19;
    v21 = [v19 classNamed:@"DeepFusionOutput"];
    *(v1 + 104) = v21;
    if (!v21)
    {
      goto LABEL_44;
    }

    v22 = [objc_alloc(MEMORY[0x1E6991778]) initWithbundle:v20 andOptionalCommandQueue:{objc_msgSend(OUTLINED_FUNCTION_7_77(), "metalCommandQueue")}];
    *(v1 + 96) = [objc_alloc(objc_msgSend(v20 classNamed:{@"DeepFusionProcessor", "initWithContext:", v22}];

    if (!*(v1 + 96))
    {
      goto LABEL_44;
    }

    if ([OUTLINED_FUNCTION_7_77() quadraSupportEnabled])
    {
      [v27 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*off_1E798D1F8];
    }

    [v27 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", -[FigCaptureCameraParameters deviceGeneration](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters, "sharedInstance"), "deviceGeneration")), *off_1E798D1E0}];
    v23 = [*(v1 + 96) setupWithOptions:v27];
    if (v23)
    {
      v17 = v23;
      goto LABEL_41;
    }

    if ([OUTLINED_FUNCTION_7_77() delayPrepareAndCacheBuffers])
    {
      return 0;
    }

    v24 = objc_alloc_init([v20 classNamed:@"DeepFusionPrepareDescriptor"]);
    if (v24)
    {
      v25 = v24;
      [OUTLINED_FUNCTION_7_77() maxOutputDimensions];
      [OUTLINED_FUNCTION_4() setWidth:?];
      [v25 setHeight:{objc_msgSend(OUTLINED_FUNCTION_7_77(), "maxOutputDimensions") >> 32}];
      [v25 setCmiResourceEnabled:{objc_msgSend(OUTLINED_FUNCTION_7_77(), "cmiResourceEnabled")}];
      v17 = [*(v1 + 96) prepareToProcess:0 prepareDescriptor:v25];
      if (!v17)
      {
        return v17;
      }
    }

    else
    {
LABEL_44:
      v17 = 4294954510;
    }

LABEL_41:

    *(v1 + v18[610]) = 0;
    return v17;
  }

  v28 = 0;
  v5 = @"DeepFusionParameters";
  v34 = *v40;
  v30 = v1;
LABEL_5:
  v6 = 0;
  while (1)
  {
    if (*v40 != v34)
    {
      objc_enumerationMutation(obj);
    }

    v7 = [objc_msgSend(OUTLINED_FUNCTION_7_77() "sensorConfigurationsByPortType")];
    v8 = [objc_msgSend(v7 "sensorIDDictionary")];
    if (!v8)
    {
      goto LABEL_21;
    }

    v9 = v8;
    v10 = v2;
    v11 = v4;
    [v33 setObject:objc_msgSend(v7 forKeyedSubscript:{"sensorIDString"), objc_msgSend(v7, "portType")}];
    v12 = [MEMORY[0x1E695DF90] dictionary];
    v13 = v5;
    [v12 setObject:v9 forKeyedSubscript:v5];
    [objc_msgSend(v7 "sensorIDDictionary")];
    [OUTLINED_FUNCTION_37_0() setObject:? forKeyedSubscript:?];
    [objc_msgSend(v7 "sensorIDDictionary")];
    [OUTLINED_FUNCTION_37_0() setObject:? forKeyedSubscript:?];
    v14 = v11;
    v15 = [*(v1 + v11[605]) stillImageFusionScheme];
    if (v15 - 4 < 2)
    {
      *(v1 + 88) = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters nrfVersion];
      if (!*(v1 + 88))
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3();
        v17 = 4294954510;
        v18 = &OBJC_IVAR___BWFigVideoCaptureDevice__deviceMotionActivityDetector;
        v1 = v30;
        goto LABEL_41;
      }

      [objc_msgSend(objc_msgSend(v7 "sensorIDDictionary")];
      [OUTLINED_FUNCTION_37_0() setObject:? forKeyedSubscript:?];
      v28 = @"NRF";
      v2 = v10;
      goto LABEL_18;
    }

    if (v15 == 3)
    {
      v2 = v10;
      if ([objc_msgSend(v7 "sensorIDDictionary")])
      {
        [OUTLINED_FUNCTION_37_0() setObject:? forKeyedSubscript:?];
      }

      v28 = @"UB";
      goto LABEL_18;
    }

    v2 = v10;
    if (v15 < 3)
    {
      break;
    }

LABEL_18:
    v1 = v30;
    if ([objc_msgSend(v7 "sensorIDDictionary")])
    {
      [OUTLINED_FUNCTION_37_0() setObject:? forKeyedSubscript:?];
    }

    v36 = [v7 sensorIDString];
    v37 = v12;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    [v2 setObject:@"SoftISPTuning" forKeyedSubscript:{objc_msgSend(OUTLINED_FUNCTION_111(), "portType")}];
    [v7 cameraInfo];
    [v32 setObject:@"SoftISPTuning" forKeyedSubscript:{objc_msgSend(OUTLINED_FUNCTION_111(), "portType")}];
    [v31 addObject:{objc_msgSend(v7, "portType")}];
    v4 = v14;
    v5 = v13;
LABEL_21:
    if (v35 == ++v6)
    {
      v35 = [obj countByEnumeratingWithState:&v39 objects:v38 count:16];
      if (v35)
      {
        goto LABEL_5;
      }

      goto LABEL_27;
    }
  }

  v16 = FigSignalErrorAtGM();
  v17 = v16;
  v18 = &OBJC_IVAR___BWFigVideoCaptureDevice__deviceMotionActivityDetector;
  v1 = v30;
  if (v16)
  {
    goto LABEL_41;
  }

  return v17;
}

- (uint64_t)_resetProcessor
{
  if (result)
  {
    [*(result + 96) setOutput:0];
    OUTLINED_FUNCTION_15_39();
    if (objc_opt_respondsToSelector())
    {
      [OUTLINED_FUNCTION_15_39() setDelegate:0];
    }

    v1 = OUTLINED_FUNCTION_15_39();

    return [v1 resetState];
  }

  return result;
}

- (void)input:(id)a3 addInputBuffer:(id)a4
{
  if ([(BWDeepFusionProcessorRequest *)self->_currentRequest input]== a3 && ![(BWDeepFusionProcessorRequest *)self->_currentRequest cacheBuffers]&& ![(BWDeepFusionProcessorInput *)[(BWDeepFusionProcessorRequest *)self->_currentRequest input] onlyApplyingSemanticStyle])
  {
    [(BWDeepFusionProcessorRequest *)self->_currentRequest delegate];
    if (objc_opt_respondsToSelector())
    {
      v8 = [(BWDeepFusionProcessorRequest *)self->_currentRequest delegate];
      [a4 buffer];
      -[BWDeepFusionProcessorControllerDelegate processorController:willAddBuffer:metadata:bufferType:processorInput:](v8, "processorController:willAddBuffer:metadata:bufferType:processorInput:", self, v4, [OUTLINED_FUNCTION_352() metadata], objc_msgSend(a4, "type"), a3);
    }

    dfp_addBuffer(self->_deepFusionProcessor, self->_currentRequest, a4);
  }

  [(BWDeepFusionProcessorController *)self _updateStateIfNeeded];
}

- (uint64_t)_updateStateIfNeeded
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = *(result + 176);
  v3 = [*(result + 80) currentState];
  if (v2)
  {
    if (v3 == 2 || v3 == 4)
    {
      if ([v2 cacheBuffers])
      {
        v4 = 4;
      }

      else
      {
        v4 = 8;
      }
    }

    else if (v3 == 8)
    {
      if (![(BWDeepFusionProcessorRequest *)v2 receivedAllBuffers])
      {
        goto LABEL_26;
      }

      v6 = [objc_msgSend(v2 "input")];
      v7 = v2[1];
      if (v6)
      {
        v4 = 8;
        if (v7)
        {
          if (*(v7 + 88))
          {
            v4 = 16;
          }

          else
          {
            v4 = 8;
          }
        }

        goto LABEL_11;
      }

      if (v7 && (*(v7 + 88) & 1) != 0 || [objc_msgSend(v2 "input")])
      {
        v4 = 16;
      }

      else
      {
LABEL_26:
        v4 = 8;
      }
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 1;
  }

LABEL_11:
  result = [*(v1 + 80) currentState];
  if (v4 != result)
  {
    v5 = *(v1 + 80);

    return [v5 transitionToState:v4];
  }

  return result;
}

- (void)addInferencesForInput:(id)a3
{
  if (-[BWDeepFusionProcessorRequest input](self->_currentRequest, "input") == a3 && !-[BWDeepFusionProcessorRequest cacheBuffers](self->_currentRequest, "cacheBuffers") && ([a3 processInferenceInputImage] & 1) == 0)
  {
    [(IBPDeepFusionProcessor *)self->_deepFusionProcessor addInferenceResults:OUTLINED_FUNCTION_26_23() inferenceInputType:10];
  }

  [(BWDeepFusionProcessorController *)self _updateStateIfNeeded];
}

- (void)beginProcessingCachedBuffersForInput:(id)a3
{
  if ([(BWDeepFusionProcessorRequest *)self->_currentRequest input]== a3)
  {
    [(BWDeepFusionProcessorRequest *)self->_currentRequest setCacheBuffers:0];
  }

  if ([(FigStateMachine *)self->_stateMachine currentState]!= 16)
  {

    [(BWDeepFusionProcessorController *)self _updateStateIfNeeded];
  }
}

- (void)cancelProcessing
{
  [(NSMutableArray *)self->_requestQueue removeAllObjects];
  [(BWDeepFusionProcessorRequest *)self->_currentRequest setErr:4294950490];
  [(BWDeepFusionProcessorController *)&self->super.super.isa _serviceNextRequest];
  [(BWDeepFusionProcessorController *)self _resetProcessor];

  [(BWDeepFusionProcessorController *)self _updateStateIfNeeded];
}

- (id)_serviceNextRequest
{
  if (result)
  {
    v1 = result;
    v2 = [result[22] delegate];
    v3 = [v1[22] input];
    v4 = [v1[22] err];

    v1[22] = 0;
    [v2 processorController:v1 didFinishProcessingInput:v3 err:v4];

    result = [v1[21] firstObject];
    v1[22] = result;
    if (result)
    {
      [v1[21] removeObjectAtIndex:0];
      v5 = [v1[22] input];

      return [v5 setDelegate:v1];
    }
  }

  return result;
}

- (uint64_t)_setupProcessor
{
  if (!result)
  {
    return result;
  }

  v3 = OUTLINED_FUNCTION_35_20(result);
  v4 = objc_alloc_init(*(v1 + 104));
  if (!v4)
  {
    goto LABEL_80;
  }

  v5 = v4;
  v6 = [OUTLINED_FUNCTION_1_126() output];
  [OUTLINED_FUNCTION_1_126() setOutput:v5];

  if ([objc_msgSend(v3 "processingSettings")])
  {
    if (![*(v1 + 64) delayPrepareAndCacheBuffers])
    {
      goto LABEL_80;
    }

    v7 = [objc_msgSend(objc_msgSend(v3 "inputBuffers")];
    Width = CVPixelBufferGetWidth(v7);
    Height = CVPixelBufferGetHeight(v7);
    v10 = Width < 1 || Height < 1;
    v11 = Height;
    if (v10)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v11 = 0;
    Width = 0;
  }

  [OUTLINED_FUNCTION_1_126() delegate];
  OUTLINED_FUNCTION_14_41();
  v13 = [v12 processorController:? newOutputPixelBufferForProcessorInput:? type:? dimensions:?];
  if (v13)
  {
    v14 = v13;
    [objc_msgSend(OUTLINED_FUNCTION_1_126() "output")];
    CFRelease(v14);
    [objc_msgSend(OUTLINED_FUNCTION_1_126() "output")];
    if ([objc_msgSend(v3 "processingSettings")])
    {
      [OUTLINED_FUNCTION_1_126() delegate];
      OUTLINED_FUNCTION_14_41();
      v16 = [v15 processorController:? newOutputPixelBufferForProcessorInput:? type:? dimensions:?];
      v17 = OUTLINED_FUNCTION_1_126();
      if (v16)
      {
        [v17 output];
        v18 = objc_opt_respondsToSelector();
        v19 = *(v1 + v2[619]);
        if (v18)
        {
          [objc_msgSend(v19 "output")];
          [objc_msgSend(OUTLINED_FUNCTION_1_126() "output")];
        }

        else
        {
          [v19 setDemosaicedRawErr:4294954516];
        }

        CFRelease(v16);
      }

      else
      {
        [v17 setDemosaicedRawErr:4294954510];
      }
    }

    if ([objc_msgSend(OUTLINED_FUNCTION_1_126() "input")])
    {
      [OUTLINED_FUNCTION_1_126() delegate];
      OUTLINED_FUNCTION_14_41();
      v21 = [v20 processorController:? newOutputPixelBufferForProcessorInput:? type:?];
      if (!v21)
      {
        goto LABEL_80;
      }

      v22 = v21;
      [objc_msgSend(OUTLINED_FUNCTION_1_126() "output")];
      [objc_msgSend(OUTLINED_FUNCTION_1_126() "output")];
      CFRelease(v22);
    }

    v23 = v6;
    v24 = [objc_msgSend(v3 "captureStreamSettings")];
    v25 = v24;
    if ((v24 & 0x10) != 0)
    {
      v26 = 3;
    }

    else
    {
      v26 = 1;
    }

    if ((v24 & 0x200000000) != 0)
    {
      v27 = 2;
    }

    else
    {
      v27 = v26;
    }

    v28 = (v24 & 4) != 0 && (v24 & 0x200000000) != 0;
    if ((v24 & 4) != 0)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0;
    }

    if ([v3 processInferenceInputImage])
    {
      [OUTLINED_FUNCTION_1_126() delegate];
      OUTLINED_FUNCTION_14_41();
      if (![v30 processorController:? newOutputPixelBufferForProcessorInput:? type:?])
      {
        goto LABEL_80;
      }

      [OUTLINED_FUNCTION_13_42() setInferenceInputPixelBuffer:v2];
      CVPixelBufferRelease(v2);
    }

    if ((v28 & [v3 processQuadraForEnhancedResolutionInferenceInputImage]) == 1)
    {
      [OUTLINED_FUNCTION_1_126() output];
      if (objc_opt_respondsToSelector())
      {
        [OUTLINED_FUNCTION_1_126() delegate];
        OUTLINED_FUNCTION_14_41();
        if (![v31 processorController:? newOutputPixelBufferForProcessorInput:? type:?])
        {
          goto LABEL_80;
        }

        [OUTLINED_FUNCTION_13_42() setQuadraForEnhancedResInferenceInputPixelBuffer:v2];
        CVPixelBufferRelease(v2);
        v3 = v52;
      }
    }

    if (v28)
    {
      [OUTLINED_FUNCTION_1_126() output];
      if (objc_opt_respondsToSelector())
      {
        [OUTLINED_FUNCTION_1_126() delegate];
        OUTLINED_FUNCTION_14_41();
        if (![v32 processorController:? newOutputPixelBufferForProcessorInput:? type:?])
        {
          goto LABEL_80;
        }

        [OUTLINED_FUNCTION_13_42() setQuadraForEnhancedResOutputPixelBuffer:v2];
        CFRelease(v2);
        [MEMORY[0x1E695DF90] dictionary];
        [OUTLINED_FUNCTION_13_42() setQuadraForEnhancedResOutputMetadata:v2];
        v3 = v52;
      }
    }

    [*(v1 + 96) setProcessingMode:v29];
    OUTLINED_FUNCTION_5_86();
    if (objc_opt_respondsToSelector())
    {
      if ((v25 & 0x100000) != 0 && (v25 & 0x1800) != 0x800)
      {
        [v3 fusionMode];
      }

      [OUTLINED_FUNCTION_5_86() setFusionMode:?];
    }

    [v3 settings];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_79;
    }

    v33 = [objc_msgSend(v3 "settings")];
    v34 = !v28;
    if (!v33)
    {
      v34 = 1;
    }

    if ((v34 & 1) != 0 || [objc_msgSend(v3 "captureSettings")])
    {
LABEL_79:
      [(BWDeepFusionProcessorController *)v1 _addSemanticStylePropertiesIfAvailable];
    }

    [OUTLINED_FUNCTION_1_126() output];
    [OUTLINED_FUNCTION_5_86() setOutput:?];
    OUTLINED_FUNCTION_5_86();
    if (objc_opt_respondsToSelector())
    {
      [OUTLINED_FUNCTION_5_86() setDelegate:v1];
    }

    v35 = objc_alloc_init(NSClassFromString(&cfstr_Deepfusionprep.isa));
    v36 = [*(v1 + 64) maxOutputDimensions];
    if (!Width || !v11)
    {
      if ([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_1_126() "input")])
      {
        v37 = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_1_126() "input")];
        v38 = BWAspectRatioValueFromAspectRatio(v37);
        v39 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(v36, v38);
        v11 = HIDWORD(v39);
        Width = v39;
      }

      else
      {
        v11 = HIDWORD(v36);
        Width = v36;
      }
    }

    [v35 setWidth:Width];
    [v35 setHeight:v11];
    [v35 setCmiResourceEnabled:{objc_msgSend(*(v1 + 64), "cmiResourceEnabled")}];
    if (v23 || ![OUTLINED_FUNCTION_5_86() prepareToProcess:0 prepareDescriptor:v35])
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      obj = [v3 inputBuffers];
      v40 = [obj countByEnumeratingWithState:&v55 objects:v54 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v56;
        do
        {
          for (i = 0; i != v41; ++i)
          {
            if (*v56 != v42)
            {
              objc_enumerationMutation(obj);
            }

            v44 = *(*(&v55 + 1) + 8 * i);
            [OUTLINED_FUNCTION_1_126() delegate];
            if (objc_opt_respondsToSelector())
            {
              v45 = [OUTLINED_FUNCTION_1_126() delegate];
              v46 = v2;
              v47 = [v44 buffer];
              v48 = [v44 metadata];
              v49 = [v44 type];
              v50 = v47;
              v2 = v46;
              [v45 processorController:v1 willAddBuffer:v50 metadata:v48 bufferType:v49 processorInput:v52];
            }

            v51 = OUTLINED_FUNCTION_5_86();
            dfp_addBuffer(v51, *(v1 + v2[619]), v44);
          }

          v41 = [obj countByEnumeratingWithState:&v55 objects:v54 count:16];
        }

        while (v41);
      }

      result = [v52 processInferenceInputImage];
      if ((result & 1) == 0 && v52 && v52[88] == 1)
      {
        OUTLINED_FUNCTION_26_23();
        return [OUTLINED_FUNCTION_5_86() addInferenceResults:? inferenceInputType:?];
      }

      return result;
    }
  }

LABEL_80:
  [OUTLINED_FUNCTION_1_126() setErr:?];

  return [(BWDeepFusionProcessorController *)v1 _resetProcessor];
}

- (uint64_t)_addSemanticStylePropertiesIfAvailable
{
  if (result)
  {
    v1 = result;
    [objc_msgSend(*(result + 176) "input")];
    objc_opt_class();
    OUTLINED_FUNCTION_10_29();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      v2 = [objc_msgSend(objc_msgSend(*(v1 + 176) "input")];
      if (v2)
      {
        v3 = [[BWStillImageSemanticStyle alloc] initWithSemanticStyle:v2];
      }

      else
      {
        v3 = 0;
      }

      v4 = *(v1 + 96);

      return [v4 setSemanticStyleProperties:v3];
    }
  }

  return result;
}

- (uint64_t)_setupProcessorForOnlyApplyingSemanticStyle
{
  if (result)
  {
    v2 = result;
    v3 = [OUTLINED_FUNCTION_19_34(result) input];
    if (v3 && *(v3 + 88) == 1)
    {
      if (!OUTLINED_FUNCTION_26_23())
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_1_4();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        [*(v2 + *(v1 + 2476)) setErr:4294954516];
        return [(BWDeepFusionProcessorController *)v2 _resetProcessor];
      }

      [OUTLINED_FUNCTION_15_39() addInferenceResults:? inferenceInputType:?];
    }

    [(BWDeepFusionProcessorController *)v2 _addSemanticStylePropertiesIfAvailable];
    OUTLINED_FUNCTION_15_39();
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v4 = OUTLINED_FUNCTION_15_39();

      return [v4 setDelegate:v2];
    }
  }

  return result;
}

- (void)_process
{
  if (!a1)
  {
    return;
  }

  v2 = OUTLINED_FUNCTION_35_20(a1);
  v69 = 0;
  if ([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_1_126() "input")] == 13)
  {
    v3 = 52;
  }

  else
  {
    v3 = 13;
  }

  if ([OUTLINED_FUNCTION_1_126() err])
  {
    v14 = 0;
    goto LABEL_70;
  }

  [OUTLINED_FUNCTION_1_126() output];
  v4 = objc_opt_respondsToSelector();
  v5 = 0;
  v57 = v4;
  if ([objc_msgSend(v2 "captureStreamSettings")] & 0x200000000) != 0 && (v4)
  {
    [objc_msgSend(v2 "inputBuffers")];
    OUTLINED_FUNCTION_79();
    if (v6)
    {
      LODWORD(target) = 0;
      v68 = 0;
      OUTLINED_FUNCTION_20_29();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_10_53(os_log_and_send_and_compose_flags_and_os_log_type);
      OUTLINED_FUNCTION_1_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v5 = 0;
    }

    else
    {
      v8 = [objc_msgSend(objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_31_21() "inputBuffers")];
      v9 = [OUTLINED_FUNCTION_352() buffer];
      Width = CVPixelBufferGetWidth(v9);
      v5 = Width | (CVPixelBufferGetHeight(v9) << 32);
    }
  }

  if (([objc_msgSend(v2 "captureStreamSettings")] & 4) != 0)
  {
    BWSampleBufferAttachmentsGetAttachedMedia([v2 evZeroReferenceFrameAttachments], 0x1F217BF50);
    if ([objc_msgSend(OUTLINED_FUNCTION_31_21() "captureSettings")])
    {
      if (([v2 processInferenceInputImage] & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (&kBWNodeSampleBufferAttachmentKey_TotalZoomFactor)
    {
      goto LABEL_12;
    }

    v12 = [objc_msgSend(OUTLINED_FUNCTION_1_126() "delegate")];
    if (v12)
    {
      v13 = v12;
      [objc_msgSend(OUTLINED_FUNCTION_1_126() "output")];
      CVPixelBufferRelease(v13);
      [OUTLINED_FUNCTION_1_126() output];
      if (objc_opt_respondsToSelector())
      {
        [objc_msgSend(OUTLINED_FUNCTION_1_126() "output")];
      }
    }
  }

LABEL_12:
  v55 = v5;
  [(BWDeepFusionProcessorController *)v1 _propagateMetadataIfNeeded];
  if (*(v1 + 88) >= 3)
  {
    [v2 releaseInputPixelBuffers];
  }

  [*(v1 + 96) process];
  [OUTLINED_FUNCTION_1_126() setErr:?];
  if (dword_1EB58DF00)
  {
    LODWORD(target) = 0;
    v68 = 0;
    OUTLINED_FUNCTION_20_29();
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    OUTLINED_FUNCTION_10_53(v11);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v14 = [objc_msgSend(OUTLINED_FUNCTION_1_126() "output")];
  if ([OUTLINED_FUNCTION_1_126() err])
  {
    goto LABEL_70;
  }

  [*(v1 + 96) finishProcessing];
  [OUTLINED_FUNCTION_1_126() setErr:?];
  if ([OUTLINED_FUNCTION_1_126() err])
  {
    goto LABEL_70;
  }

  v15 = [objc_msgSend(OUTLINED_FUNCTION_1_126() "output")];
  if (v2)
  {
    [v2 evZeroReferenceFramePTS];
  }

  else
  {
    memset(v67, 0, 24);
  }

  BWSampleBufferCreateFromPixelBuffer(v15, v67, (v1 + 112), &v69);
  [OUTLINED_FUNCTION_1_126() setErr:?];
  if ([OUTLINED_FUNCTION_1_126() err])
  {
    goto LABEL_70;
  }

  [v2 evZeroReferenceFrameAttachments];
  v16 = OUTLINED_FUNCTION_10_29();
  CMSetAttachments(v16, v17, 1u);
  CMSetAttachment(v69, @"HasUnreliableBracketingMetadata", MEMORY[0x1E695E118], 1u);
  v18 = *off_1E798A3C8;
  v19 = CMGetAttachment(v69, *off_1E798A3C8, 0);
  [v19 addEntriesFromDictionary:v14];
  v20 = [objc_msgSend(OUTLINED_FUNCTION_1_126() "output")];
  if (v20 == 2)
  {
    v21 = 2;
  }

  else
  {
    v21 = v20 == 1;
  }

  [v19 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v21), *off_1E798A670}];
  FigCaptureMetadataUtilitiesCopyZoomRelatedMetadata(v14, v19);
  AttachedMedia = BWSampleBufferGetAttachedMedia(v69, 0x1F217BF50);
  if (AttachedMedia)
  {
    v23 = CMGetAttachment(AttachedMedia, v18, 0);
    if (v23)
    {
      FigCaptureMetadataUtilitiesCopyZoomRelatedMetadata(v14, v23);
    }
  }

  [v19 setObject:&unk_1F2246CD8 forKeyedSubscript:@"CompositeImage"];
  [(BWDeepFusionProcessorController *)v1 _propagateGainMapToOutputSampleBufferIfNeeded:v69];
  [(BWDeepFusionProcessorController *)v1 _propagateDemosaicedRawPixelBufferToOutputSampleBufferIfNeeded:v69];
  [(BWDeepFusionProcessorController *)v1 _propagateSmartStyleLinearInputBufferToOutputSampleBufferIfNeeded:v69];
  if ([*(v1 + 64) stillImageFusionScheme] <= 4)
  {
    v53 = v18;
    v54 = v3;
    v56 = v14;
    v24 = [OUTLINED_FUNCTION_1_126() delegate];
    v25 = [v24 processorController:v1 newInferencesForProcessorInput:{objc_msgSend(OUTLINED_FUNCTION_1_126(), "input")}];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v26 = [objc_msgSend(OUTLINED_FUNCTION_1_126() "input")];
    v27 = [v26 countByEnumeratingWithState:&v63 objects:v62 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v64;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v64 != v29)
          {
            objc_enumerationMutation(v26);
          }

          BWPropagateInferenceAttachedMedia(v25, *(*(&v63 + 1) + 8 * i), (v1 + 152), v69);
        }

        v28 = [v26 countByEnumeratingWithState:&v63 objects:v62 count:16];
      }

      while (v28);
    }

    v31 = [v25 inferenceForAttachmentKey:0x1F219E990];
    v32 = [v25 inferenceForAttachmentKey:0x1F219E9B0];
    if (v31)
    {
      v33 = v32;
      if (v32)
      {
        v34 = [CMGetAttachment(v69 @"Inferences"];
        if (!v34)
        {
          v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
        }

        if (![v34 objectForKeyedSubscript:&unk_1F2246CF0])
        {
          v60[0] = 0x1F219E990;
          v60[1] = 0x1F219E9B0;
          v61[0] = v31;
          v61[1] = v33;
          v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:2];
          v36 = [BWInferenceResult alloc];
          CMSampleBufferGetPresentationTimeStamp(v67, v69);
          [v34 setObject:-[BWInferenceResult initWithInferenceType:inferences:atTimestamp:](v36 forKeyedSubscript:{"initWithInferenceType:inferences:atTimestamp:", 104, v35, v67), &unk_1F2246CF0}];
          CMSetAttachment(v69, @"Inferences", v34, 1u);
        }
      }
    }

    v18 = v53;
    v3 = v54;
    v14 = v56;
  }

  if (((([objc_msgSend(v2 "captureStreamSettings")] & 0x200000000) != 0) & v57) != 1)
  {
    goto LABEL_67;
  }

  if (![objc_msgSend(OUTLINED_FUNCTION_1_126() "output")])
  {
    LODWORD(target) = 0;
    v68 = 0;
    OUTLINED_FUNCTION_20_29();
    v47 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (OUTLINED_FUNCTION_10_53(v47))
    {
      v48 = v18;
    }

    else
    {
      v48 = v18 & 0xFFFFFFFE;
    }

    if (v48)
    {
      LODWORD(v58.value) = 136315138;
      *(&v58.value + 4) = "[BWDeepFusionProcessorController _process]";
      OUTLINED_FUNCTION_3_89();
      OUTLINED_FUNCTION_8_0();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_1_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_67;
  }

  target = 0;
  memset(&v58, 0, sizeof(v58));
  CMTimeMakeFromDictionary(&v58, [v19 objectForKeyedSubscript:*off_1E798A420]);
  v37 = [objc_msgSend(OUTLINED_FUNCTION_1_126() "output")];
  v67[0] = v58;
  BWSampleBufferCreateFromPixelBuffer(v37, v67, (v1 + 120), &target);
  [OUTLINED_FUNCTION_1_126() setErr:?];
  if (![OUTLINED_FUNCTION_1_126() err])
  {
    v38 = *off_1E798A940;
    if (![0 objectForKeyedSubscript:*off_1E798A940])
    {
      [0 setObject:objc_msgSend(MEMORY[0x1E695DF90] forKeyedSubscript:{"dictionary"), v38}];
    }

    [objc_msgSend(OUTLINED_FUNCTION_1_126() "output")];
    [OUTLINED_FUNCTION_4() addEntriesFromDictionary:?];
    CMSetAttachment(target, v18, 0, 1u);
    v39 = [objc_msgSend(OUTLINED_FUNCTION_1_126() "output")];
    CVPixelBufferGetWidth(v39);
    v40 = OUTLINED_FUNCTION_352();
    v41 = v18 | (CVPixelBufferGetHeight(v40) << 32);
    v42 = MEMORY[0x1E695F050];
    v43 = *(MEMORY[0x1E695F050] + 16);
    *&v67[0].value = *MEMORY[0x1E695F050];
    *&v67[0].epoch = v43;
    if (FigCFDictionaryGetCGRectIfPresent())
    {
      v67[0].value = FigCaptureUpdateRectSizeAndMaintainCenter(*&v67[0].value, *&v67[0].timescale, *&v67[0].epoch, *&v67[1].value, v18);
      *&v67[0].timescale = v44;
      v67[0].epoch = v45;
      v67[1].value = v46;
      FigCFDictionarySetCGRect();
    }

    FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(0, v55, v41, *&v67[0].value, *&v67[0].timescale, *&v67[0].epoch, *&v67[1].value, *v42, v42[1], v42[2], v42[3]);
    BWSampleBufferSetAttachedMedia(v69, 0x1F219EC90, target);
    if (target)
    {
      CFRelease(target);
    }

LABEL_67:
    if ([objc_msgSend(v2 "captureSettings")])
    {
      v49 = [CMGetAttachment(v69 @"StillImageProcessingFlags"];
      CMSetAttachment(v69, @"StillImageProcessingFlags", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v49 | 0x40000u], 1u);
    }

    v50 = [OUTLINED_FUNCTION_1_126() delegate];
    v51 = v69;
    v52 = [OUTLINED_FUNCTION_1_126() input];
    [v50 processorController:v1 didFinishProcessingSampleBuffer:v51 type:v3 processorInput:v52 err:{objc_msgSend(OUTLINED_FUNCTION_1_126(), "err")}];
  }

LABEL_70:
  if ([OUTLINED_FUNCTION_1_126() err])
  {
    if ([OUTLINED_FUNCTION_1_126() err] == -2)
    {
      [OUTLINED_FUNCTION_1_126() setErr:4294950469];
    }

    [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_1_126() "input")];
    [OUTLINED_FUNCTION_1_126() delegate];
    [OUTLINED_FUNCTION_1_126() input];
    [OUTLINED_FUNCTION_1_126() err];
    [OUTLINED_FUNCTION_17_36() processorController:? didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
  }

  if (v69)
  {
    CFRelease(v69);
  }
}

- (uint64_t)_propagateMetadataIfNeeded
{
  if (result)
  {
    v2 = [*(result + 176) input];
    [objc_msgSend(v2 "inputBuffers")];
    v3 = [OUTLINED_FUNCTION_31_21() inputBuffers];
    if (v1 == 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [v3 indexOfObjectPassingTest:&__block_literal_global_320];
      if (result == 0x7FFFFFFFFFFFFFFFLL)
      {
        return result;
      }

      result = [objc_msgSend(objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_31_21() "inputBuffers")];
    }

    else
    {
      result = [objc_msgSend(v3 objectAtIndexedSubscript:{v1), "metadata"}];
    }

    v4 = result;
    if (result)
    {
      [objc_msgSend(OUTLINED_FUNCTION_3_103() "output")];
      v5 = OUTLINED_FUNCTION_10_29();
      FigCaptureMetadataUtilitiesCopyZoomRelatedMetadata(v5, v6);
      if ([objc_msgSend(OUTLINED_FUNCTION_3_103() "input")])
      {
        [objc_msgSend(OUTLINED_FUNCTION_3_103() "output")];
        v7 = OUTLINED_FUNCTION_10_29();
        BWCopyLTMMetadata(v7, v8);
      }

      v9 = *off_1E798A718;
      v10 = [OUTLINED_FUNCTION_8_6() objectForKeyedSubscript:?];
      [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_3_103() "output")];
      v11 = *off_1E798A710;
      v12 = [OUTLINED_FUNCTION_8_6() objectForKeyedSubscript:?];
      [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_3_103() "output")];
      v13 = *off_1E798A5F0;
      if ([OUTLINED_FUNCTION_8_6() objectForKey:?])
      {
        v14 = v4;
      }

      else
      {
        [objc_msgSend(v2 "inputBuffers")];
        OUTLINED_FUNCTION_79();
        if (v16)
        {
LABEL_15:
          if ([OUTLINED_FUNCTION_40() objectForKey:?])
          {
            [OUTLINED_FUNCTION_40() objectForKeyedSubscript:?];
            v17 = [objc_msgSend(OUTLINED_FUNCTION_3_103() "output")];
            OUTLINED_FUNCTION_27_20(v17, v18);
          }

          [OUTLINED_FUNCTION_40() objectForKeyedSubscript:?];
          v19 = [objc_msgSend(OUTLINED_FUNCTION_3_103() "output")];
          OUTLINED_FUNCTION_27_20(v19, v20);
          [OUTLINED_FUNCTION_40() objectForKeyedSubscript:?];
          v21 = [objc_msgSend(OUTLINED_FUNCTION_3_103() "output")];
          OUTLINED_FUNCTION_27_20(v21, v22);
          [OUTLINED_FUNCTION_40() objectForKeyedSubscript:?];
          v23 = [objc_msgSend(OUTLINED_FUNCTION_3_103() "output")];
          OUTLINED_FUNCTION_27_20(v23, v24);
          [OUTLINED_FUNCTION_40() objectForKeyedSubscript:?];
          v25 = [objc_msgSend(OUTLINED_FUNCTION_3_103() "output")];
          OUTLINED_FUNCTION_27_20(v25, v26);
          v27 = *off_1E798B308;
          v28 = [OUTLINED_FUNCTION_40() objectForKeyedSubscript:?];
          v29 = [objc_msgSend(OUTLINED_FUNCTION_3_103() "output")];

          return [v29 setObject:v28 forKeyedSubscript:v27];
        }

        v14 = [objc_msgSend(objc_msgSend(v2 "inputBuffers")];
      }

      [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_3_103() "output")];
      goto LABEL_15;
    }
  }

  return result;
}

- (void)_propagateGainMapToOutputSampleBufferIfNeeded:(uint64_t)a1
{
  if (!a1)
  {
    return;
  }

  v5 = [OUTLINED_FUNCTION_19_34(a1) input];
  v6 = [*(a1 + *(v2 + 2476)) output];
  if ([v6 gainMapOutputPixelBuffer])
  {
    v7 = [v6 gainMapOutputPixelBuffer];
    if (objc_opt_respondsToSelector())
    {
      v8 = [v6 gainMapOutputMetadata];
      if (!v7)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  else
  {
    if (BWSampleBufferGetAttachedMedia(a2, 0x1F217BF50))
    {
      return;
    }

    [objc_msgSend(v5 "inputBuffers")];
    OUTLINED_FUNCTION_79();
    if (v10)
    {
      return;
    }

    v7 = [objc_msgSend(objc_msgSend(v5 "inputBuffers")];
  }

  v8 = 0;
  if (!v7)
  {
    return;
  }

LABEL_10:
  if (!v8)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
  }

  [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", -[FigCaptureCameraParameters gainMapVersion](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters, "sharedInstance"), "gainMapVersion")), *off_1E798A688}];
  v11 = MEMORY[0x1E696AD98];
  [*(a1 + 64) gainMapMainImageDownscalingFactor];
  [v8 setObject:objc_msgSend(v11 forKeyedSubscript:{"numberWithFloat:"), *off_1E798A788}];

  BWSampleBufferSetAttachedMediaFromPixelBuffer(a2, 0x1F217BF50, v7, (a1 + 160), v8, 0, 1);
}

- (void)_propagateDemosaicedRawPixelBufferToOutputSampleBufferIfNeeded:(uint64_t)a1
{
  if (a1)
  {
    target = 0;
    v4 = [objc_msgSend(*(a1 + 176) "output")];
    v5 = [objc_msgSend(OUTLINED_FUNCTION_23_26() "output")];
    if (![objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_23_26() "input")])
    {
      v6 = 0;
LABEL_16:

      if (target)
      {
        CFRelease(target);
      }

      return;
    }

    v6 = 0;
    if ([OUTLINED_FUNCTION_23_26() demosaicedRawErr] || !v4)
    {
      goto LABEL_16;
    }

    v7 = *off_1E798A3C8;
    v8 = CMGetAttachment(a2, *off_1E798A3C8, 0);
    v6 = [v8 mutableCopy];
    if ([v5 count])
    {
      [v6 addEntriesFromDictionary:v5];
    }

    if (BWCMSampleBufferCreateCopyWithNewPixelBuffer(a2, v4, (a1 + 136), &target))
    {
      goto LABEL_16;
    }

    v9 = [CMGetAttachment(target @"StillImageProcessingFlags"];
    CMSetAttachment(target, @"StillImageProcessingFlags", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v9 | 0x10000u], 1u);
    v10 = CMGetAttachment(target, @"RawDNGDictionary", 0);
    if (v10)
    {
      v11 = v10;
      CVPixelBufferGetWidth(v4);
      v12 = OUTLINED_FUNCTION_111();
      Height = CVPixelBufferGetHeight(v12);
      v14 = BWCreateDNGDictionaryWithUpdatedToneCurvesIfNeeded(v11, a1 | (Height << 32), v6);
      if (!v14)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v15 = [v8 objectForKeyedSubscript:*off_1E798B540];
      v16 = [objc_msgSend(*(a1 + 64) "rawColorCalibrationsByPortType")];
      if (!v16)
      {
        goto LABEL_16;
      }

      v17 = v16;
      v18 = [objc_msgSend(objc_msgSend(*(a1 + 64) "sensorConfigurationsByPortType")];
      if (!v18)
      {
        goto LABEL_16;
      }

      v19 = v18;
      PixelFormatType = CVPixelBufferGetPixelFormatType(v4);
      v21 = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_23_26() "input")];
      v22 = v21 / [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_23_26() "input")];
      CVPixelBufferGetWidth(v4);
      v23 = OUTLINED_FUNCTION_111();
      v24 = CVPixelBufferGetHeight(v23);
      v14 = BWCreateDemosaicedRawDNGDictionary(a1 | (v24 << 32), PixelFormatType, v6, v17, v19, v22);
      if (!v14)
      {
        goto LABEL_16;
      }
    }

    v25 = v14;
    CMSetAttachment(target, @"RawDNGDictionary", v14, 1u);

LABEL_15:
    [v6 setObject:&unk_1F224A980 forKeyedSubscript:*off_1E798A788];
    CMSetAttachment(target, v7, v6, 1u);
    BWSampleBufferSetAttachedMedia(a2, 0x1F21AAE10, target);
    goto LABEL_16;
  }
}

- (uint64_t)_propagateSmartStyleLinearInputBufferToOutputSampleBufferIfNeeded:(uint64_t)result
{
  if (result)
  {
    v4 = result;
    v5 = [OUTLINED_FUNCTION_19_34(result) output];
    result = [objc_msgSend(*(v4 + *(v2 + 2476)) "input")];
    if (result)
    {
      v6 = [v5 linearOutputMIWBAppliedPixelBuffer];
      v7 = [v5 linearOutputMIWBAppliedMetadata];

      return BWSampleBufferSetAttachedMediaFromPixelBuffer(a2, 0x1F21AAF50, v6, (v4 + 144), v7, 0, 0);
    }
  }

  return result;
}

- (uint64_t)_processOnlyApplyingSemanticStyle
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  v25 = 0;
  if (![*(result + 96) semanticStyleProperties])
  {
    v3 = 0;
    goto LABEL_28;
  }

  v3 = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_1_126() "input")];
  [OUTLINED_FUNCTION_1_126() delegate];
  [OUTLINED_FUNCTION_1_126() input];
  [v3 type];
  v4 = [OUTLINED_FUNCTION_352() buffer];
  CVPixelBufferGetWidth(v4);
  CVPixelBufferGetHeight(v4);
  v5 = [OUTLINED_FUNCTION_17_36() processorController:? newOutputPixelBufferForProcessorInput:? type:? dimensions:?];
  if (!v5)
  {
    [OUTLINED_FUNCTION_1_126() setErr:4294954510];
    goto LABEL_28;
  }

  v6 = v5;
  v7 = *(v2 + 96);
  [v3 buffer];
  [v7 applySemanticStylesWithOutputBuffer:v6 inputBuffer:v1 inputMetadata:{objc_msgSend(OUTLINED_FUNCTION_352(), "metadata")}];
  [OUTLINED_FUNCTION_1_126() setErr:?];
  if (![OUTLINED_FUNCTION_1_126() err])
  {
    goto LABEL_20;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(v6);
  if (PixelFormatType == CVPixelBufferGetPixelFormatType([v3 buffer]))
  {
    v9 = OUTLINED_FUNCTION_16_42();
    if (OUTLINED_FUNCTION_14_24(v9))
    {
      v10 = v4;
    }

    else
    {
      v10 = v4 & 0xFFFFFFFE;
    }

    if (v10)
    {
      [OUTLINED_FUNCTION_1_126() err];
      OUTLINED_FUNCTION_6_79();
      OUTLINED_FUNCTION_21_33();
    }

    OUTLINED_FUNCTION_1_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    CFRelease(v6);
    v13 = [v3 buffer];
    if (v13)
    {
      v6 = CFRetain(v13);
    }

    else
    {
      v6 = 0;
    }

LABEL_20:
    v14 = [OUTLINED_FUNCTION_1_126() input];
    if (v14)
    {
      [v14 evZeroReferenceFramePTS];
    }

    else
    {
      memset(v24, 0, 24);
    }

    BWSampleBufferCreateFromPixelBuffer(v6, v24, (v2 + 112), &v25);
    [OUTLINED_FUNCTION_1_126() setErr:?];
    v15 = *(v2 + 176);
    if (v25)
    {
      if ([objc_msgSend(v15 "input")])
      {
        v16 = v25;
        v17 = [objc_msgSend(OUTLINED_FUNCTION_1_126() "input")];
        CMSetAttachments(v16, v17, 1u);
      }

      v18 = [OUTLINED_FUNCTION_1_126() delegate];
      v19 = v25;
      v20 = [OUTLINED_FUNCTION_1_126() input];
      [v18 processorController:v2 didFinishProcessingSampleBuffer:v19 type:13 processorInput:v20 err:{objc_msgSend(OUTLINED_FUNCTION_1_126(), "err")}];
      if (!v6)
      {
        goto LABEL_28;
      }
    }

    else
    {
      [v15 setErr:4294954510];
      if (!v6)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_27;
  }

  v11 = OUTLINED_FUNCTION_16_42();
  if (OUTLINED_FUNCTION_14_24(v11))
  {
    v12 = v4;
  }

  else
  {
    v12 = v4 & 0xFFFFFFFE;
  }

  if (v12)
  {
    [OUTLINED_FUNCTION_1_126() err];
    OUTLINED_FUNCTION_6_79();
    OUTLINED_FUNCTION_21_33();
  }

  OUTLINED_FUNCTION_1_4();
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_27:
  CFRelease(v6);
LABEL_28:
  if (v25)
  {
    CFRelease(v25);
  }

  result = [OUTLINED_FUNCTION_1_126() err];
  if (result)
  {
    v21 = [OUTLINED_FUNCTION_1_126() delegate];
    v22 = [v3 type];
    v23 = [OUTLINED_FUNCTION_1_126() input];
    return [v21 processorController:v2 didFinishProcessingSampleBuffer:0 type:v22 processorInput:v23 err:{objc_msgSend(OUTLINED_FUNCTION_1_126(), "err")}];
  }

  return result;
}

- (void)processor:(id)a3 outputReadyWithBufferType:(int)a4 outputPixelBuffer:(__CVBuffer *)a5 outputMetadata:(id)a6 error:(int)a7
{
  if ((a4 & 0xFFFFFFFE) != 0xA)
  {
    return;
  }

  v37 = v7;
  v38 = v8;
  v11 = a5;
  v36 = 0;
  v14 = [(BWDeepFusionProcessorRequest *)self->_currentRequest input];
  if (a4 == 10)
  {
    v15 = [(BWDeepFusionProcessorInput *)v14 evZeroReferenceFrameAttachments];
    memset(&v34, 0, sizeof(v34));
    v16 = [(BWDeepFusionProcessorRequest *)self->_currentRequest input];
    if (v16)
    {
      [(BWDeepFusionProcessorInput *)v16 evZeroReferenceFramePTS];
      if (a7)
      {
        return;
      }
    }

    else
    {
      memset(&v34, 0, sizeof(v34));
      if (a7)
      {
        return;
      }
    }

    if (v15 && (v34.flags & 1) != 0 && !OUTLINED_FUNCTION_9_64(128, v31, v32, v33, *&v34.value, v34.epoch))
    {
      CMSetAttachments(v36, v15, 1u);
      v25 = *off_1E798A3C8;
      v26 = [CMGetAttachment(v36 *off_1E798A3C8];
      [v26 addEntriesFromDictionary:a6];
      CMSetAttachment(v36, v25, v26, 1u);

LABEL_16:
      [(BWDeepFusionProcessorRequest *)self->_currentRequest delegate];
      [(BWDeepFusionProcessorRequest *)self->_currentRequest input];
      [OUTLINED_FUNCTION_17_36() processorController:? didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
      if (v36)
      {
        CFRelease(v36);
      }

      return;
    }

    return;
  }

  [(NSArray *)[(BWDeepFusionProcessorInput *)v14 inputBuffers] indexOfObjectPassingTest:&__block_literal_global_331];
  OUTLINED_FUNCTION_79();
  if (v18)
  {
    v27 = OUTLINED_FUNCTION_11_52();
    if (OUTLINED_FUNCTION_157(v27))
    {
      v28 = v11;
    }

    else
    {
      v28 = v11 & 0xFFFFFFFE;
    }

    if (!v28)
    {
      goto LABEL_29;
    }

LABEL_28:
    v35 = 136315138;
    OUTLINED_FUNCTION_25_21("[BWDeepFusionProcessorController processor:outputReadyWithBufferType:outputPixelBuffer:outputMetadata:error:]");
    _os_log_send_and_compose_impl();
LABEL_29:
    OUTLINED_FUNCTION_1_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return;
  }

  v19 = [(NSArray *)[(BWDeepFusionProcessorInput *)[(BWDeepFusionProcessorRequest *)self->_currentRequest input] inputBuffers] objectAtIndexedSubscript:v17];
  if (![v19 metadata])
  {
    v29 = OUTLINED_FUNCTION_11_52();
    if (OUTLINED_FUNCTION_157(v29))
    {
      v30 = v11;
    }

    else
    {
      v30 = v11 & 0xFFFFFFFE;
    }

    if (!v30)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  memset(&v34, 0, sizeof(v34));
  CMTimeMakeFromDictionary(&v34, [objc_msgSend(v19 "metadata")]);
  if ((v34.flags & 1) != 0 && !OUTLINED_FUNCTION_9_64(128, v31, v32, v33, *&v34.value, v34.epoch))
  {
    v20 = [objc_msgSend(v19 "metadata")];
    [v20 addEntriesFromDictionary:a6];
    CMSetAttachment(v36, *off_1E798A3C8, v20, 1u);

    [(BWStillImageProcessorControllerInput *)[(BWDeepFusionProcessorRequest *)self->_currentRequest input] stillImageSettings];
    v21 = OUTLINED_FUNCTION_4();
    CMSetAttachment(v21, @"StillSettings", v22, 1u);
    [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v19, "captureFrameFlags")}];
    v23 = OUTLINED_FUNCTION_4();
    CMSetAttachment(v23, @"StillImageCaptureFrameFlags", v24, 1u);
    goto LABEL_16;
  }
}

- (uint64_t)enqueueInputForProcessing:(id *)a3 delegate:(_DWORD *)a4 .cold.1(void *a1, void *a2, id *a3, _DWORD *a4)
{
  v7 = [[BWDeepFusionProcessorRequest alloc] initWithInput:a1 delegate:a2];
  if ([a3[8] delayPrepareAndCacheBuffers])
  {
    v8 = [a1 onlyApplyingSemanticStyle] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  [v7 setCacheBuffers:v8];
  [a3[21] addObject:v7];

  result = [a3[10] currentState];
  if (result == 1)
  {
    result = [a3[10] transitionToState:2];
  }

  *a4 = 0;
  return result;
}

@end