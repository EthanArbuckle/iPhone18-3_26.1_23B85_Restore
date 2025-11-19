@interface BWNRFProcessorController
+ (void)initialize;
- (BOOL)finishProcessingCurrentInputNow;
- (BWNRFProcessorController)initWithConfiguration:(id)a3;
- (CMAttachmentBearerRef)_newOutputSampleBufferWithSampleBuffer:(__CVBuffer *)a3 pixelBuffer:(CFTypeRef *)a4 formatDescriptionInOut:(uint64_t)a5 metadataToMerge:;
- (id)_prepareDescriptorsByProcessingTypeForResolutionFlavors:(id *)result;
- (id)adaptiveBracketingDigitalFlashTotalIntegrationTimesProviderForPortType:(id)a3;
- (id)adaptiveBracketingParametersForDigitalFlashMode:(int)a3 frameStatistics:(id)a4 stationary:(BOOL)a5 sphereOffsetEnabled:(BOOL)a6 detectedObjects:(id)a7;
- (id)externalMemoryDescriptorForResolutionFlavors:(id)a3;
- (id)processorGetInferenceResults:(id)a3;
- (int)enqueueInputForProcessing:(id)a3 delegate:(id)a4 processErrorRecoveryFrame:(BOOL)a5 processErrorRecoveryProxy:(BOOL)a6 processOriginalImage:(BOOL)a7 processToneMapping:(BOOL)a8 processInferenceInputImage:(BOOL)a9 clientBracketSequenceNumber:(int)a10 processSemanticRendering:(BOOL)a11 provideInferenceInputImageForProcessing:(BOOL)a12 processSmartStyleRenderingInput:(BOOL)a13 inferencesAvailable:(BOOL)a14;
- (int)progressiveLowLightFusionBatchSize;
- (uint64_t)_loadNRFProcessor;
- (uint64_t)_prepareProcessorForProcessingType:(id *)a1;
- (uint64_t)_setupNRFProcessor;
- (uint64_t)_updateStateIfNeeded;
- (unint64_t)_prepareProcessor;
- (unsigned)rawNightModeOutputPixelFormatByBufferType:(unint64_t)a3;
- (void)_generateGainMapMetadata:(uint64_t)a1;
- (void)_logCompletionStatus:(int)a3 processingType:(void *)a4 request:;
- (void)_processDeepFusion;
- (void)_processDigitalFlash;
- (void)_processLearnedFusion;
- (void)_processLearnedHRNR;
- (void)_processRawNightMode;
- (void)_processSingleImage;
- (void)_processUBFusion;
- (void)_propagateDemosaicedRawPixelBuffer:(void *)a3 demosaicedRawMetadata:(void *)target outputSampleBuffer:(int)a5 error:;
- (void)_releaseNRFProcessorResources;
- (void)_serviceNextRequest;
- (void)_singleImageProcessSampleBuffer:(int)a3 sampleBufferOut:(int)a4;
- (void)cancelProcessing;
- (void)dealloc;
- (void)input:(id)a3 addFrame:(opaqueCMSampleBuffer *)a4 isReferenceFrame:(BOOL)a5;
- (void)inputReceivedAllFrames:(id)a3;
- (void)inputReceivedProcessedRawErrorRecoveryFrame:(id)a3 proxy:(BOOL)a4;
- (void)processor:(id)a3 didSelectFusionMode:(int)a4;
- (void)processor:(id)a3 didSelectProgressiveFusionReferenceFrameIndex:(int)a4;
- (void)processor:(id)a3 outputReadyWithFrameType:(int)a4 outputPixelBuffer:(__CVBuffer *)a5 outputMetadata:(id)a6 error:(int)a7;
@end

@implementation BWNRFProcessorController

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWNRFProcessorController)initWithConfiguration:(id)a3
{
  v8.receiver = self;
  v8.super_class = BWNRFProcessorController;
  v4 = [(BWNRFProcessorController *)&v8 init];
  if (v4)
  {
    v4->_configuration = a3;
    v4->_requestQueue = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [[FigStateMachine alloc] initWithLabel:@"BWNRFProcessorController state machine" stateCount:[FigStateMachine indexForState:?], 1, v4];
    [(FigStateMachine *)v6 setPerformsAtomicStateTransitions:0];
    [(FigStateMachine *)v6 setLabel:@"Idle" forState:1];
    [(FigStateMachine *)v6 setLabel:@"Ready" forState:2];
    [(FigStateMachine *)v6 setLabel:@"WaitingForFrames" forState:4];
    [(FigStateMachine *)v6 setLabel:@"ProcessingSingleImage" forState:8];
    [(FigStateMachine *)v6 setLabel:@"ProcessingOriginalImage" forState:16];
    [(FigStateMachine *)v6 setLabel:@"ProcessingUBFusion" forState:32];
    [(FigStateMachine *)v6 setLabel:@"ProcessingUBLowLightFusion" forState:64];
    [(FigStateMachine *)v6 setLabel:@"ProcessingDeepFusion" forState:128];
    [(FigStateMachine *)v6 setLabel:@"ProcessingRawNightMode" forState:256];
    [(FigStateMachine *)v6 setLabel:@"ProcessingLearnedHRNR" forState:512];
    [(FigStateMachine *)v6 setLabel:@"ProcessingLearnedFusion" forState:1024];
    [(FigStateMachine *)v6 whenTransitioningToStates:1 callHandler:&__block_literal_global_58];
    [(FigStateMachine *)v6 whenTransitioningToStates:2 callHandler:&__block_literal_global_751];
    [(FigStateMachine *)v6 whenTransitioningToState:4 callHandler:&__block_literal_global_753];
    [(FigStateMachine *)v6 whenTransitioningToState:8 callHandler:&__block_literal_global_755];
    [(FigStateMachine *)v6 whenTransitioningToState:16 callHandler:&__block_literal_global_757];
    [(FigStateMachine *)v6 whenTransitioningToState:32 callHandler:&__block_literal_global_759];
    [(FigStateMachine *)v6 whenTransitioningToState:64 callHandler:&__block_literal_global_761];
    [(FigStateMachine *)v6 whenTransitioningToState:128 callHandler:&__block_literal_global_763];
    [(FigStateMachine *)v6 whenTransitioningToState:256 callHandler:&__block_literal_global_765];
    [(FigStateMachine *)v6 whenTransitioningToState:512 callHandler:&__block_literal_global_767];
    [(FigStateMachine *)v6 whenTransitioningToState:1024 callHandler:&__block_literal_global_769];
    v4->_stateMachine = v6;
    [a3 figThreadPriority];
    v4->_completionStatusQueue = FigDispatchQueueCreateWithPriority();
    v7 = objc_autoreleasePoolPush();
    if ([(BWNRFProcessorController *)v4 _loadNRFProcessor]|| [(BWNRFProcessorController *)v4 _setupNRFProcessor])
    {
      objc_autoreleasePoolPop(v7);

      return 0;
    }

    else
    {
      objc_autoreleasePoolPop(v7);
    }
  }

  return v4;
}

- (void)dealloc
{
  [(NRFProcessor *)self->_nrfProcessor finishProcessing];
  [(NRFProcessor *)self->_nrfProcessor setOutput:0];
  [(NRFProcessor *)self->_nrfProcessor resetState];
  [(BWNRFProcessorController *)&self->super.super.isa _releaseNRFProcessorResources];
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

  demosaicedRawFormatDescription = self->_demosaicedRawFormatDescription;
  if (demosaicedRawFormatDescription)
  {
    CFRelease(demosaicedRawFormatDescription);
  }

  linearOutputMIWBAppliedFormatDescription = self->_linearOutputMIWBAppliedFormatDescription;
  if (linearOutputMIWBAppliedFormatDescription)
  {
    CFRelease(linearOutputMIWBAppliedFormatDescription);
  }

  gainMapFormatDescription = self->_gainMapFormatDescription;
  if (gainMapFormatDescription)
  {
    CFRelease(gainMapFormatDescription);
  }

  v8.receiver = self;
  v8.super_class = BWNRFProcessorController;
  [(BWStillImageProcessorController *)&v8 dealloc];
}

- (uint64_t)_updateStateIfNeeded
{
  result = [*(a1 + 80) currentState];
  if (a2 != result)
  {
    return [*(a1 + 80) transitionToState:a2];
  }

  return result;
}

- (int)enqueueInputForProcessing:(id)a3 delegate:(id)a4 processErrorRecoveryFrame:(BOOL)a5 processErrorRecoveryProxy:(BOOL)a6 processOriginalImage:(BOOL)a7 processToneMapping:(BOOL)a8 processInferenceInputImage:(BOOL)a9 clientBracketSequenceNumber:(int)a10 processSemanticRendering:(BOOL)a11 provideInferenceInputImageForProcessing:(BOOL)a12 processSmartStyleRenderingInput:(BOOL)a13 inferencesAvailable:(BOOL)a14
{
  v15 = a7;
  v17 = a5;
  if (!-[NSSet containsObject:](self->_supportedPortTypes, "containsObject:", [a3 portType]))
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    [a3 portType];
    v30 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v30, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWNRFProcessorController.m", 1599, @"LastShownDate:BWNRFProcessorController.m:1599", @"LastShownBuild:BWNRFProcessorController.m:1599", 0);
    v31 = v30;
LABEL_17:
    free(v31);
    return -12780;
  }

  if (v17 && v15)
  {
    v28 = FigCaptureGetFrameworkRadarComponent();
    v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v32 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v28, v32, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWNRFProcessorController.m", 1600, @"LastShownDate:BWNRFProcessorController.m:1600", @"LastShownBuild:BWNRFProcessorController.m:1600", 0);
    v31 = v32;
    goto LABEL_17;
  }

  v21 = objc_alloc_init(self->_nrfUBFusionOutputClass);
  [v21 setCompletionStatus:objc_alloc_init(self->_nrfCompletionStatusClass)];
  if (([objc_msgSend(a3 "captureStreamSettings")] & 0x800000000) != 0)
  {
    v34 = objc_alloc_init(self->_nrfRawNightModeOutputFrameClass);
    [v34 setCompletionStatus:objc_alloc_init(self->_nrfCompletionStatusClass)];
  }

  else
  {
    v34 = 0;
  }

  v33 = v17;
  if ([objc_msgSend(a3 "captureStreamSettings")] == 12 || objc_msgSend(objc_msgSend(a3, "captureStreamSettings"), "captureType") == 13 && !-[BWStillImageProcessorControllerConfiguration deferredPhotoProcessorEnabled](self->_configuration, "deferredPhotoProcessorEnabled"))
  {
    v22 = a3;
    v23 = objc_alloc_init(self->_nrfDeepFusionOutputClass);
    [v23 setCompletionStatus:objc_alloc_init(self->_nrfCompletionStatusClass)];
  }

  else
  {
    v22 = a3;
    v23 = 0;
  }

  v24 = [[BWNRFProcessorRequest alloc] initWithConfiguration:v22 input:v21 output:v34 rawNightModeOutputFrame:v23 deepFusionOutput:v33 processErrorRecoveryFrame:a6 processErrorRecoveryProxy:v15 processOriginalImage:a8 processToneMapping:a9 processInferenceInputImage:a10 clientBracketSequenceNumber:a11 processSemanticRendering:a12 provideInferenceInputImageForProcessing:a14 inferencesAvailable:a13 processSmartStyleRenderingInput:a4 delegate:?];

  [(NSMutableArray *)self->_requestQueue addObject:v24];
  if ([(FigStateMachine *)self->_stateMachine currentState]== 1)
  {
    [(FigStateMachine *)self->_stateMachine transitionToState:2];
  }

  return 0;
}

- (void)cancelProcessing
{
  [(NSMutableArray *)self->_requestQueue removeAllObjects];
  [(BWNRFProcessorRequest *)self->_currentRequest setErr:4294950490];
  [(BWNRFProcessorController *)self _serviceNextRequest];
  [(NRFProcessor *)self->_nrfProcessor setOutput:0];
  [(NRFProcessor *)self->_nrfProcessor resetState];

  [(BWNRFProcessorController *)self _updateStateIfNeeded];
}

- (unsigned)rawNightModeOutputPixelFormatByBufferType:(unint64_t)a3
{
  if (a3 - 31 < 2)
  {
    return 1751527984;
  }

  if (a3 != 35 && a3 != 33)
  {
    return 0;
  }

  v5 = [(BWNRFProcessorControllerConfiguration *)self->_configuration outputFormat];

  return [(BWVideoFormat *)v5 pixelFormat];
}

- (void)processor:(id)a3 didSelectProgressiveFusionReferenceFrameIndex:(int)a4
{
  if (dword_1EB58E0E0)
  {
    v16 = 0;
    v15 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = [(BWStillImageCaptureStreamSettings *)[(BWStillImageProcessorControllerInput *)[(BWNRFProcessorRequest *)self->_currentRequest input:a3] captureStreamSettings] referenceFrameIndex];
  if ((a4 & 0x80000000) == 0 && v7 < 0 && ![(BWNRFProcessorInput *)[(BWNRFProcessorRequest *)self->_currentRequest input] referenceFrame])
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = [(BWNRFProcessorRequest *)self->_currentRequest input];
      if (v10)
      {
        v10 = v10->_frames;
      }

      if ([(BWNRFProcessorInput *)v10 count]<= v8)
      {
        break;
      }

      v11 = [(BWNRFProcessorRequest *)self->_currentRequest input];
      if (v11)
      {
        v11 = v11->_frames;
      }

      v12 = [(BWNRFProcessorInput *)v11 objectAtIndexedSubscript:v8];
      if ([(BWNRFProcessorRequest *)self->_currentRequest useFrameForMultiFrameProcessing:v12])
      {
        if (v9 == a4)
        {
          if (v12)
          {
            [BWNRFProcessorController processor:? didSelectProgressiveFusionReferenceFrameIndex:?];
          }

          return;
        }

        ++v9;
      }

      ++v8;
    }
  }
}

- (int)progressiveLowLightFusionBatchSize
{
  result = [(BWNRFProcessorControllerConfiguration *)self->_configuration lowLightFusionEnabled];
  if (result)
  {
    nrfProcessor = self->_nrfProcessor;

    return [(NRFProcessor *)nrfProcessor progressiveBatchSize];
  }

  return result;
}

- (uint64_t)_loadNRFProcessor
{
  if (a1 && !*(a1 + 88))
  {
    if ([objc_msgSend(OUTLINED_FUNCTION_42_9() "sensorConfigurationsByPortType")] && objc_msgSend(OUTLINED_FUNCTION_42_9(), "inputFormat") && objc_msgSend(OUTLINED_FUNCTION_42_9(), "outputFormat"))
    {
      v2 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters nrfVersion];
      if (v2)
      {
        v3 = v2;
        *(a1 + 96) = [MEMORY[0x1E696AEC0] stringWithFormat:@"NRFProcessorV%d", v2];
        *(a1 + 72) = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:{objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_42_9(), "sensorConfigurationsByPortType"), "allKeys")}];
        v4 = BWLoadProcessorBundle(@"NRF", v3);
        if (v4)
        {
          v5 = v4;
          v6 = [v4 classNamed:@"NRFUBFusionOutput"];
          *(a1 + 104) = v6;
          if (v6)
          {
            if (![OUTLINED_FUNCTION_42_9() rawNightModeEnabled] || (v7 = objc_msgSend(v5, "classNamed:", @"NRFRawNightModeOutputFrame"), (*(a1 + 136) = v7) != 0))
            {
              v8 = [v5 classNamed:@"NRFDeepFusionOutput"];
              *(a1 + 144) = v8;
              if (v8)
              {
                v9 = [v5 classNamed:@"NRFCompletionStatus"];
                *(a1 + 152) = v9;
                if (v9)
                {
                  v10 = [v5 classNamed:@"NRFProgressiveBracketingStatistics"];
                  *(a1 + 112) = v10;
                  if (v10)
                  {
                    v11 = [v5 classNamed:@"NRFProgressiveBracketingParameters"];
                    *(a1 + 120) = v11;
                    if (v11)
                    {
                      v12 = objc_alloc([v5 classNamed:*(a1 + 96)]);
                      [OUTLINED_FUNCTION_42_9() metalCommandQueue];
                      v13 = [OUTLINED_FUNCTION_4() initWithCommandQueue:?];
                      *(a1 + 88) = v13;
                      if (v13)
                      {
                        return 0;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v14 = 4294954510;
    }

    else
    {
      v14 = 4294954516;
    }

    [(BWNRFProcessorController *)a1 _releaseNRFProcessorResources];
    return v14;
  }

  return 0;
}

- (uint64_t)_setupNRFProcessor
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = BWAllStillImageResolutionFlavors();
  v18 = [(BWNRFProcessorController *)v1 _prepareDescriptorsByProcessingTypeForResolutionFlavors:v2];
  v19 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [MEMORY[0x1E695DF90] dictionary];
  [v6 setObject:-[FigCaptureCameraParameters commonNRFParameters](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters forKeyedSubscript:{"sharedInstance"), "commonNRFParameters"), @"NRFParameters"}];
  [v3 setObject:v6 forKeyedSubscript:@"Common"];
  v23 = v3;
  [v3 setObject:v4 forKeyedSubscript:@"DefaultSensorIDs"];
  v22 = [MEMORY[0x1E695DF90] dictionary];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [*(v1 + 64) sensorConfigurationsByPortType];
  v7 = [obj countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v21 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        v10 = v5;
        if (*v28 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = v1;
        v13 = [objc_msgSend(*(v1 + 64) "sensorConfigurationsByPortType")];
        [v4 setObject:objc_msgSend(v13 forKeyedSubscript:{"sensorIDString"), v11}];
        v14 = [MEMORY[0x1E695DF90] dictionary];
        [objc_msgSend(v13 "sensorIDDictionary")];
        [OUTLINED_FUNCTION_15() setObject:? forKeyedSubscript:?];
        [objc_msgSend(v13 "sensorIDDictionary")];
        [OUTLINED_FUNCTION_15() setObject:? forKeyedSubscript:?];
        [objc_msgSend(v13 "sensorIDDictionary")];
        [OUTLINED_FUNCTION_15() setObject:? forKeyedSubscript:?];
        [objc_msgSend(v13 "sensorIDDictionary")];
        [OUTLINED_FUNCTION_15() setObject:? forKeyedSubscript:?];
        [objc_msgSend(v13 "sensorIDDictionary")];
        [OUTLINED_FUNCTION_15() setObject:? forKeyedSubscript:?];
        [objc_msgSend(v13 "sensorIDDictionary")];
        [OUTLINED_FUNCTION_15() setObject:? forKeyedSubscript:?];
        v24 = [v13 sensorIDString];
        v25 = v14;
        [v23 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v25, &v24, 1), v11}];
        v5 = v10;
        [v10 setObject:objc_msgSend(v13 forKeyedSubscript:{"cameraInfo"), v11}];
        v15 = v13;
        v1 = v12;
        [v22 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v15 forKeyedSubscript:{"sensorIDDictionary"), "objectForKeyedSubscript:", @"UBCaptureParameters", "objectForKeyedSubscript:", @"AdaptiveBracketingParameters", v11}];
      }

      v8 = [obj countByEnumeratingWithState:&v27 objects:v26 count:16];
    }

    while (v8);
  }

  if (![v23 count])
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
  }

  [v19 setObject:v23 forKeyedSubscript:*off_1E798A9D0];
  if ([v5 count])
  {
    [v19 setObject:v5 forKeyedSubscript:*off_1E798A970];
  }

  *(v1 + 128) = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v22];
  [v19 setObject:v18 forKeyedSubscript:*off_1E798D1F0];
  if ([*(v1 + 64) depthDataDeliveryEnabled])
  {
    [v19 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*off_1E798D1D8];
  }

  if ([*(v1 + 64) quadraSupportEnabled])
  {
    [v19 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*off_1E798D1F8];
  }

  [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters deviceGeneration];
  [v19 setObject:objc_msgSend(OUTLINED_FUNCTION_17() forKeyedSubscript:{"numberWithInt:"), *off_1E798D1E0}];
  v16 = [*(v1 + 88) setupWithOptions:v19];
  if (v16)
  {
    [(BWNRFProcessorController *)v1 _releaseNRFProcessorResources];
  }

  return v16;
}

- (void)_releaseNRFProcessorResources
{
  if (a1)
  {

    a1[11] = 0;
    a1[12] = 0;

    a1[9] = 0;
    a1[16] = 0;

    a1[19] = 0;
    a1[13] = 0;

    a1[18] = 0;
    a1[14] = 0;

    a1[15] = 0;
    a1[17] = 0;
  }
}

- (void)input:(id)a3 addFrame:(opaqueCMSampleBuffer *)a4 isReferenceFrame:(BOOL)a5
{
  v5 = a5;
  if ([(BWNRFProcessorRequest *)self->_currentRequest input]== a3)
  {
    if (![(BWStillImageProcessingSettings *)[(BWStillImageProcessorControllerInput *)[(BWNRFProcessorRequest *)self->_currentRequest input] processingSettings] optimizedProcessingForZoomFOVEnabled]|| [(NRFProcessor *)self->_nrfProcessor output]|| (v7 = [(BWNRFProcessorRequest *)self->_currentRequest processingType], [(BWNRFProcessorRequest *)self->_currentRequest setErr:[(BWNRFProcessorController *)&self->super.super.isa _prepareProcessorForProcessingType:v7]], ![(BWNRFProcessorRequest *)self->_currentRequest err]))
    {
      if (objc_opt_respondsToSelector())
      {
        OUTLINED_FUNCTION_46_1();
        [v8 processorController:? willAddSampleBuffer:? processorInput:?];
      }

      v9 = OUTLINED_FUNCTION_75_2();
      nrfp_addFrame_0(v9, v10, v11, v12, v5);
      if ([(BWNRFProcessorRequest *)self->_currentRequest err])
      {
        v13 = [(BWNRFProcessorInput *)[(BWNRFProcessorRequest *)self->_currentRequest input] adaptiveBracketingParameters];
        [(BWUBNRFAdaptiveBracketingParameters *)v13 stopAdaptiveBracketing];
      }
    }
  }

  [(BWNRFProcessorController *)self _updateStateIfNeeded];
}

- (uint64_t)_prepareProcessorForProcessingType:(id *)a1
{
  if (!a1)
  {
    return 0;
  }

  v4 = a1;
  v5 = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
  v6 = [a1[27] input];
  v95 = [v6 resolutionFlavor];
  v99 = v6;
  if (dword_1EB58E0E0)
  {
    v103 = 0;
    v102 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_30();
    if (v2)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", a2];
      BWPhotoEncoderStringFromEncodingScheme(v95);
      v5 = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
      [objc_msgSend(objc_msgSend(v4[27] "input")];
      OUTLINED_FUNCTION_49_5();
      OUTLINED_FUNCTION_11_0();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_56_0();
  }

  v8 = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
  [OUTLINED_FUNCTION_21_15() setOutput:0];
  [OUTLINED_FUNCTION_21_15() resetState];
  v98 = [v6 captureSettings];
  v9 = [v98 captureType];
  v10 = [objc_msgSend(objc_msgSend(*(v4 + v5[831]) "input")];
  v11 = v9 - 10;
  v12 = v5[831];
  v13 = *(v4 + v12);
  v100 = v10;
  if (a2 || v11 > 3)
  {
    if (!v13)
    {
      v18 = 0;
      goto LABEL_17;
    }
  }

  else if (!v13 || (v13[48] & 1) == 0 && (v13[49] & 1) == 0 && (v13[50] & 1) == 0)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    LODWORD(v97) = 0;
    LODWORD(v93) = 1;
    v17 = (v10 >> 7) & 1;
    LODWORD(v91) = 1;
    v18 = 1;
    goto LABEL_25;
  }

  if (v13[48])
  {
    v18 = 1;
  }

  else
  {
    v18 = v13[49];
  }

LABEL_17:
  v14 = 0;
  v16 = a2 == 5;
  LODWORD(v93) = (a2 < 8) & (0xC1u >> a2);
  v17 = (v10 & 0x80) >> 7;
  v19 = (v10 & 0x80) != 0 || a2 == 7;
  v15 = v18 ^ 1;
  if (v19 && ((v18 ^ 1) & 1) != 0)
  {
    LODWORD(v91) = 0;
    LODWORD(v97) = [v98 learnedNRStereoPhotoFrameFlag] != 0;
    v12 = 216;
    v14 = 1;
    v15 = 1;
  }

  else
  {
    LODWORD(v91) = 0;
    LODWORD(v97) = 0;
  }

LABEL_25:
  v20 = [*(v4 + v12) processSemanticRendering];
  if (v20 && v9 == 10)
  {
    v15 = v4;
    v4 = v17;
    v17 = v9;
    LODWORD(v9) = v18;
    LOBYTE(v18) = v11;
    v11 = a2;
    a2 = v16;
    LODWORD(v16) = v14;
    v14 = v98;
    v21 = [v98 sceneFlags];
    v22 = [v98 sceneFlags];
    if ((v21 & 8) != 0 || (v22 & 4) != 0)
    {
      v8 = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
      OUTLINED_FUNCTION_31_10();
    }

    else
    {
      v8 = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
      OUTLINED_FUNCTION_31_10();
    }
  }

  [OUTLINED_FUNCTION_21_15() setSrlEnabled:?];
  OUTLINED_FUNCTION_21_15();
  v23 = objc_opt_respondsToSelector();
  v24 = v4[27];
  LODWORD(v94) = v16;
  if (v23)
  {
    if (v24)
    {
      v25 = *(v24 + 51);
    }

    else
    {
      v25 = 0;
    }

    [*(v4 + v8[825]) setSkipDenoising:v25 & 1];
    v24 = v4[27];
    if (!v24)
    {
      goto LABEL_43;
    }

    if (*(v24 + 51) == 1 && a2 && a2 != 6)
    {
      return 4294954516;
    }
  }

  else if (!v24)
  {
    goto LABEL_43;
  }

  if (*(v24 + 52))
  {
    if (v16)
    {
      cf = 0;
      goto LABEL_45;
    }

    goto LABEL_82;
  }

LABEL_43:
  if (v16 | [v24 provideInferenceInputImageForProcessing] ^ 1)
  {
    cf = 0;
    goto LABEL_45;
  }

  v24 = v4[27];
  if (!v24)
  {
    v38 = 0;
    goto LABEL_83;
  }

LABEL_82:
  v38 = *(v24 + 64);
LABEL_83:
  v39 = [v38 processorController:v4 newOutputPixelBufferForProcessorInput:v99 type:-[BWNRFProcessorRequest inferenceInputType](v24)];
  if (!v39)
  {
    return 4294954510;
  }

  cf = v39;
LABEL_45:
  [v4[27] setGainMapEnabled:0];
  [OUTLINED_FUNCTION_14_18() gainMapMainImageDownscalingFactor];
  v29 = v27 == 0.0 || a2 == 4;
  if ((v29 | v97))
  {
    goto LABEL_92;
  }

  v30 = [OUTLINED_FUNCTION_14_18() deferredPhotoProcessorEnabled];
  if (a2 == 10 && (v30 & 1) != 0)
  {
    goto LABEL_92;
  }

  v31 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters gainMapVersion]>> 16;
  if (v31 == 2)
  {
    v34 = [objc_msgSend(objc_msgSend(v4[27] "input")] < 2 || v9 != 1;
    if ((v17 | v34))
    {
      if (v9 == 2 && (v100 & 8) != 0)
      {
        v35 = v4[27];
        if (!v35)
        {
          v36 = 0;
          goto LABEL_71;
        }

        if ((v35[52] & 1) == 0)
        {
          v36 = v35[51];
LABEL_71:
          v32 = 1;
          if ((v36 & 1) != 0 || (v100 & 0x10000) == 0)
          {
            goto LABEL_91;
          }
        }
      }
    }

    else if ([objc_msgSend(OUTLINED_FUNCTION_14_18() "inputFormat")])
    {
      v32 = 1;
LABEL_91:
      [v4[27] setGainMapEnabled:v32 & 1];
      goto LABEL_92;
    }

    v32 = v17 | (v11 < 4);
    goto LABEL_91;
  }

  if (v31 == 1)
  {
    if ([OUTLINED_FUNCTION_14_18() depthDataDeliveryEnabled])
    {
      if ((v100 & 0x800) != 0)
      {
        v32 = v14 | v93 ^ 1;
      }

      else
      {
        v32 = 0;
      }

      goto LABEL_91;
    }

    if ((v93 & 1) == 0)
    {
      if (a2 == 3)
      {
        v32 = 1;
      }

      else
      {
        v32 = ((v100 & 0x100000) != 0) & v15;
      }

      if (v9 == 11)
      {
        v32 = 1;
      }

      goto LABEL_91;
    }

    if (v14)
    {
      v37 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters nrfVersion];
      if (!v37)
      {
        goto LABEL_104;
      }

      v32 = v37 > 2;
      goto LABEL_91;
    }
  }

LABEL_92:
  v92 = ((v100 & 0x100000) != 0) & v15;
  if ([objc_msgSend(v99 "processingSettings")])
  {
    if (v18)
    {
      v40 = [v99 errorRecoveryFrame];
    }

    else
    {
      v40 = [v99 referenceFrame];
      if (!v40)
      {
        if (v99)
        {
          v41 = v99[7];
        }

        else
        {
          v41 = 0;
        }

        v40 = [v41 firstObject];
      }
    }

    v42 = BWPixelBufferDimensionsFromSampleBuffer(v40);
    v43 = HIDWORD(v42);
    if (v42 < 1 || SHIDWORD(v42) <= 0)
    {
      goto LABEL_104;
    }
  }

  else if ([objc_msgSend(v99 "processingSettings")])
  {
    v48 = [objc_msgSend(v99 "captureSettings")];
    v49 = +[FigCaptureCameraParameters sharedInstance];
    if (v48)
    {
      v50 = [(FigCaptureCameraParameters *)v49 softISPCropDimensionsForOptimizedLearnedFusionForSuperwide];
    }

    else
    {
      v50 = [(FigCaptureCameraParameters *)v49 nrfProcessingDimensionsForOptimizedLearnedFusionForSuperwide];
    }

    v43 = HIDWORD(v50);
    v42 = v50;
  }

  else
  {
    v43 = 0;
    v42 = 0;
  }

  v45 = 0x1E696A000;
  v101 = [MEMORY[0x1E696AD98] numberWithInt:v95];
  v51 = -[BWNRFProcessorController _prepareDescriptorsByProcessingTypeForResolutionFlavors:](v4, [MEMORY[0x1E695DEC8] arrayWithObjects:&v101 count:1]);
  v46 = 0;
  if (a2 > 0xB)
  {
    OUTLINED_FUNCTION_57_6();
    v67 = v98;
    goto LABEL_204;
  }

  v52 = v51;
  if (((1 << a2) & 0x6E7) != 0)
  {
    [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
    v97 = [OUTLINED_FUNCTION_37_0() objectForKeyedSubscript:?];
    if (v97)
    {
      OUTLINED_FUNCTION_74_2();
      if (v53 == v54 && v43 >= 1)
      {
        [v97 setWidth:v42];
        [v97 setHeight:v43];
      }

      v56 = [OUTLINED_FUNCTION_27_10() output];
      v57 = OUTLINED_FUNCTION_27_10();
      if (v57 && (*(v57 + 52) & 1) != 0)
      {
        v58 = 0;
LABEL_131:
        [v56 setPixelBuffer:v58];
        [v56 setMetadata:{objc_msgSend(MEMORY[0x1E695DF90], "dictionary")}];
        if (v94)
        {
          [v56 setInferenceInputPixelBuffer:0];
          v59 = 1;
        }

        else
        {
          [v56 setInferenceInputPixelBuffer:cf];
          if ([OUTLINED_FUNCTION_27_10() inferencesAvailable])
          {
            v59 = [OUTLINED_FUNCTION_27_10() provideInferenceInputImageForProcessing] ^ 1;
          }

          else
          {
            v59 = 0;
          }
        }

        [v56 setProvidesInferencesWithoutInferenceInputPixelBuffer:v59];
        if (![objc_msgSend(v99 "processingSettings")] || (OUTLINED_FUNCTION_73_1(), v63) && ((*(v63 + 52) & 1) != 0 || (*(v63 + 51) & 1) != 0))
        {
          v45 = 0;
        }

        else
        {
          OUTLINED_FUNCTION_58_9();
          v45 = [v74 processorController:? newOutputPixelBufferForProcessorInput:? type:? dimensions:?];
          if (v45)
          {
            [v56 setLinearOutputPixelBuffer:v45];
            [v56 setLinearOutputMetadata:{objc_msgSend(MEMORY[0x1E695DF90], "dictionary")}];
          }

          else
          {
            [OUTLINED_FUNCTION_27_10() setDemosaicedRawErr:4294954510];
          }
        }

        if ([OUTLINED_FUNCTION_27_10() processSmartStyleRenderingInput])
        {
          OUTLINED_FUNCTION_73_1();
          OUTLINED_FUNCTION_58_9();
          v46 = [v64 processorController:? newOutputPixelBufferForProcessorInput:? type:?];
          if (!v46)
          {
            v17 = 0;
            v80 = 0;
            v81 = 0;
            v26 = 4294954510;
            if (!v58)
            {
              goto LABEL_235;
            }

            goto LABEL_234;
          }

          [v56 setLinearOutputMIWBAppliedPixelBuffer:v46];
          [v56 setLinearOutputMIWBAppliedMetadata:{objc_msgSend(MEMORY[0x1E695DF90], "dictionary")}];
        }

        else
        {
          v46 = 0;
        }

        v94 = v56;
        if ([OUTLINED_FUNCTION_45_9() gainMapEnabled])
        {
          v65 = v4[27];
          if (v65)
          {
            v66 = v65[8];
          }

          else
          {
            v66 = 0;
          }

          v17 = [v66 processorController:v4 newOutputPixelBufferForProcessorInput:v99 type:19];
          v67 = v98;
          if (v17 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [MEMORY[0x1E695DF90] dictionary];
            [OUTLINED_FUNCTION_37_0() setGainMapOutputMetadata:?];
          }
        }

        else
        {
          v17 = 0;
          v67 = v98;
        }

        [v94 setGainMapOutputPixelBuffer:v17];
        if (a2 == 5 || a2 == 2)
        {
          -[BWNRFProcessorInput adaptiveBracketingParameters]([v4[27] input]);
          [OUTLINED_FUNCTION_21_15() setProgressiveBracketingParameters:?];
        }

        if (([v67 sceneFlags] & 0x100) != 0)
        {
          [v67 captureType];
        }

        [OUTLINED_FUNCTION_21_15() setDoRedFaceFix:?];
        v91 = v58;
        if ([v4[8] greenGhostMitigationVersion] >= 1)
        {
          [objc_msgSend(v99 "processingSettings")];
        }

        [OUTLINED_FUNCTION_21_15() setEnableGreenGhostMitigation:?];
        [OUTLINED_FUNCTION_21_15() enableGreenGhostMitigation];
        v90 = 0;
        goto LABEL_203;
      }

      if (v91)
      {
        [(BWNRFProcessorRequest *)v57 fusionErrorRecoveryImageType];
      }

      else
      {
        [(BWNRFProcessorRequest *)v57 imageType];
      }

      OUTLINED_FUNCTION_58_9();
      v58 = [v85 processorController:? newOutputPixelBufferForProcessorInput:? type:? dimensions:?];
      if (v58)
      {
        goto LABEL_131;
      }

      goto LABEL_247;
    }
  }

  else if (((1 << a2) & 0x808) != 0)
  {
    [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
    v97 = [OUTLINED_FUNCTION_37_0() objectForKeyedSubscript:?];
    if (v97)
    {
      if (v42 >= 1 && v43 >= 1)
      {
        [v97 setWidth:v42];
        [v97 setHeight:v43];
      }

      v61 = [OUTLINED_FUNCTION_45_9() deepFusionOutput];
      if ([v98 deliverDeferredPhotoProxyImage] && objc_msgSend(objc_msgSend(v99, "processingSettings"), "provideDemosaicedRaw"))
      {
        [MEMORY[0x1E695DF90] dictionary];
        [OUTLINED_FUNCTION_7() setLinearOutputMetadata:?];
      }

      [v61 setInferenceInputPixelBuffer:cf];
      if ([OUTLINED_FUNCTION_45_9() inferencesAvailable])
      {
        v62 = [OUTLINED_FUNCTION_45_9() provideInferenceInputImageForProcessing] ^ 1;
      }

      else
      {
        v62 = 0;
      }

      v67 = v98;
      [v61 setProvidesInferencesWithoutInferenceInputPixelBuffer:v62];
      v94 = v61;
      if (objc_opt_respondsToSelector())
      {
        if ((v100 & 0x200000000) != 0)
        {
          v73 = 2;
        }

        else if ((v100 & 0x100000000) != 0)
        {
          v73 = 4;
        }

        else if ((v100 & 0x10) != 0)
        {
          v73 = 3;
        }

        else
        {
          v73 = 1;
        }

        [v4[11] setDeepFusionProcessingMode:v73];
      }

      v46 = 0;
      v17 = 0;
      v45 = 0;
      v90 = 0;
      v91 = 0;
LABEL_203:
      v93 = 0;
LABEL_204:
      [objc_msgSend(v4[27] "input")];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [(BWNRFProcessorRequest *)v4[27] imageType]!= 38)
      {
        v82 = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_45_9() "input")];
        if (v82 && (v83 = v82, [OUTLINED_FUNCTION_45_9() inferencesAvailable]))
        {
          v84 = [[BWStillImageSemanticStyle alloc] initWithSemanticStyle:v83];
        }

        else
        {
          v84 = 0;
        }

        v67 = v98;
        [v4[11] setSemanticStyleProperties:v84];
      }

      if ((a2 & 0xFFFFFFFE) != 0xA && v92 && (v100 & 0x1800) != 0x800)
      {
        [v99 fusionMode];
      }

      [OUTLINED_FUNCTION_21_15() setFusionMode:?];
      [OUTLINED_FUNCTION_21_15() setReferenceFrameHasEVMinus:v92];
      OUTLINED_FUNCTION_21_15();
      if (objc_opt_respondsToSelector())
      {
        [OUTLINED_FUNCTION_21_15() setLearnedNREnabled:?];
      }

      OUTLINED_FUNCTION_21_15();
      if (objc_opt_respondsToSelector())
      {
        if (v14)
        {
          [v67 deliverDeferredPhotoProxyImage];
        }

        [OUTLINED_FUNCTION_21_15() setStfAllowed:?];
      }

      [OUTLINED_FUNCTION_21_15() setOutput:v94];
      if (v97)
      {
        [v97 setIsQuadra:{(objc_msgSend(objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_27_10(), "input"), "captureStreamSettings"), "captureFlags") >> 4) & 1}];
        [v4[8] sensorConfigurationsByPortType];
        [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_27_10() "input")];
        [objc_msgSend(OUTLINED_FUNCTION_7() "objectForKeyedSubscript:"sensorIDString"")];
        [OUTLINED_FUNCTION_15() setSensorID:?];
        v76 = [OUTLINED_FUNCTION_55_6() prepareToProcess:a2 prepareDescriptor:v97];
        if (v76)
        {
          v26 = v76;
          v103 = 0;
          v102 = OS_LOG_TYPE_DEFAULT;
          v86 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v87 = v103;
          if (os_log_type_enabled(v86, v102))
          {
            v88 = v87;
          }

          else
          {
            v88 = v87 & 0xFFFFFFFE;
          }

          if (v88)
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", a2];
            v89 = [v4[11] fusionMode];
            [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v89];
            BWPhotoEncoderStringFromEncodingScheme(v95);
            OUTLINED_FUNCTION_34_10();
            OUTLINED_FUNCTION_49_5();
            OUTLINED_FUNCTION_11_0();
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        else
        {
          v77 = a2 == 4 || a2 == 2;
          if (v77 && ([objc_msgSend(v99 "captureStreamSettings")] & 0x80000000) != 0)
          {
            if ((v100 & 0x2000) != 0)
            {
              [objc_msgSend(v99 "captureStreamSettings")];
            }

            [OUTLINED_FUNCTION_55_6() setReferenceFrameCandidatesCount:?];
            [OUTLINED_FUNCTION_55_6() referenceFrameCandidatesCount];
            [OUTLINED_FUNCTION_55_6() setMaximumNumberOfReferenceFrameCandidatesToHoldForProcessing:?];
          }

          [OUTLINED_FUNCTION_55_6() setDelegate:v4];
          if (dword_1EB58E0E0)
          {
            v103 = 0;
            v102 = OS_LOG_TYPE_DEFAULT;
            v78 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v78, v102);
            OUTLINED_FUNCTION_30();
            [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", a2];
            v79 = [v4[11] fusionMode];
            [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v79];
            BWPhotoEncoderStringFromEncodingScheme(v95);
            OUTLINED_FUNCTION_34_10();
            OUTLINED_FUNCTION_49_5();
            OUTLINED_FUNCTION_11_0();
            _os_log_send_and_compose_impl();
            v80 = v90;
            v58 = v91;
            v81 = v93;
            OUTLINED_FUNCTION_2_4();
            OUTLINED_FUNCTION_56_0();
            v26 = 0;
            if (v91)
            {
              goto LABEL_234;
            }

LABEL_235:
            if (!v81)
            {
              goto LABEL_237;
            }

            goto LABEL_236;
          }

          v26 = 0;
        }
      }

      else
      {
        v26 = 4294954516;
      }

      v80 = v90;
      v58 = v91;
      v81 = v93;
      if (!v91)
      {
        goto LABEL_235;
      }

LABEL_234:
      CFRelease(v58);
      goto LABEL_235;
    }
  }

  else
  {
    OUTLINED_FUNCTION_57_6();
    v67 = v98;
    if (a2 != 4)
    {
      goto LABEL_204;
    }

    v97 = [v52 objectForKeyedSubscript:&unk_1F2244038];
    if (v97)
    {
      OUTLINED_FUNCTION_74_2();
      if (v53 == v54 && v43 >= 1)
      {
        [v97 setWidth:v42];
        [v97 setHeight:v43];
      }

      v70 = [OUTLINED_FUNCTION_27_10() rawNightModeOutputFrame];
      OUTLINED_FUNCTION_73_1();
      OUTLINED_FUNCTION_58_9();
      v93 = [v71 processorController:? newOutputPixelBufferForProcessorInput:? type:? dimensions:?];
      if (v93)
      {
        OUTLINED_FUNCTION_73_1();
        OUTLINED_FUNCTION_58_9();
        v45 = [v72 processorController:? newOutputPixelBufferForProcessorInput:? type:? dimensions:?];
        if (!v45)
        {
          v46 = 0;
          v17 = 0;
          v80 = 0;
          v26 = 4294954510;
          v81 = v93;
LABEL_236:
          CFRelease(v81);
LABEL_237:
          if (v80)
          {
            CFRelease(v80);
          }

          goto LABEL_105;
        }

        [v70 setPixelBuffer:v93];
        v90 = v45;
        [v70 setNoiseMapPixelBuffer:v45];
        [v70 setInferenceInputPixelBuffer:cf];
        [MEMORY[0x1E695DF90] dictionary];
        [OUTLINED_FUNCTION_15() setMetadata:?];
        if ([v4[8] greenGhostMitigationVersion] >= 1)
        {
          [objc_msgSend(v99 "processingSettings")];
        }

        v67 = v98;
        [OUTLINED_FUNCTION_21_15() setEnableGreenGhostMitigation:?];
        [OUTLINED_FUNCTION_21_15() enableGreenGhostMitigation];
        v75 = [OUTLINED_FUNCTION_27_10() input];
        [(BWNRFProcessorInput *)v75 adaptiveBracketingParameters];
        v94 = v70;
        [OUTLINED_FUNCTION_21_15() setProgressiveBracketingParameters:?];
        v46 = 0;
        v17 = 0;
        v45 = 0;
        v91 = 0;
        goto LABEL_204;
      }

LABEL_247:
      v45 = 0;
      v17 = 0;
      v46 = 0;
      v26 = 4294954510;
      goto LABEL_105;
    }
  }

LABEL_104:
  v45 = 0;
  v17 = 0;
  v46 = 0;
  v26 = 4294954516;
LABEL_105:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  return v26;
}

- (void)inputReceivedProcessedRawErrorRecoveryFrame:(id)a3 proxy:(BOOL)a4
{
  v4 = a4;
  if ([(BWNRFProcessorRequest *)self->_currentRequest input]== a3)
  {
    currentRequest = self->_currentRequest;
    if (currentRequest)
    {
      v7 = currentRequest->_processErrorRecoveryFrame && !v4;
      if (v7 || (currentRequest->_processErrorRecoveryProxy ? (v8 = !v4) : (v8 = 1), !v8))
      {

        [(BWNRFProcessorController *)self _updateStateIfNeeded];
      }
    }
  }
}

- (void)inputReceivedAllFrames:(id)a3
{
  if ([(BWNRFProcessorRequest *)self->_currentRequest input]== a3)
  {

    [(BWNRFProcessorController *)self _updateStateIfNeeded];
  }
}

- (BOOL)finishProcessingCurrentInputNow
{
  OUTLINED_FUNCTION_59_0();
  v4 = *(v3 + 216);
  if (-[BWNRFProcessorInput adaptiveBracketingParameters]([v4 input]))
  {
    -[BWNRFProcessorInput stopAdaptiveBracketingNow]([v4 input]);
    if ([v4 err])
    {
      [v4 deliveredAdaptiveBracketingErrorRecoveryFrame];
    }

    if (dword_1EB58E0E0)
    {
      v6 = OUTLINED_FUNCTION_40_8();
      OUTLINED_FUNCTION_19_3(v6);
      OUTLINED_FUNCTION_4_0();
      if (v2)
      {
        v7 = MEMORY[0x1E696AEC0];
        [v4 err];
        [v4 deliveredAdaptiveBracketingErrorRecoveryFrame];
        [v7 stringWithFormat:@"'%@'. Success:%d (err=%d, deliveredErrorRecoveryFrame:%d)"];
        [objc_msgSend(objc_msgSend(v4 "input")];
        OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_0_51();
        OUTLINED_FUNCTION_5_1();
      }

      OUTLINED_FUNCTION_1_63();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  OUTLINED_FUNCTION_58_0();
  return result;
}

- (void)_serviceNextRequest
{
  if (result)
  {
    v1 = result;
    v2 = result[27];
    if (v2)
    {
      v2 = v2[8];
    }

    v3 = v2;
    v4 = [v1[27] input];
    [v1[27] err];

    v1[27] = 0;
    OUTLINED_FUNCTION_46_1();
    [v5 processorController:? didFinishProcessingInput:? err:?];

    result = [v1[26] firstObject];
    v1[27] = result;
    if (result)
    {
      [OUTLINED_FUNCTION_34_0(208) removeObjectAtIndex:?];
      v6 = [v1[27] input];

      return [v6 setDelegate:v1];
    }
  }

  return result;
}

- (id)_prepareDescriptorsByProcessingTypeForResolutionFlavors:(id *)result
{
  if (result)
  {
    v3 = result;
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v106 = [a2 containsObject:&unk_1F2244098];
    if (v106)
    {
      v5 = [objc_msgSend(OUTLINED_FUNCTION_14_18() "inputFormat")];
      v6 = [objc_msgSend(OUTLINED_FUNCTION_14_18() "inputFormat")] << 32;
      v7 = v5;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    if ([a2 containsObject:&unk_1F22440B0])
    {
      if ([objc_msgSend(objc_msgSend(v3[27] "input")])
      {
        v8 = [objc_msgSend(objc_msgSend(v3[27] "input")];
        v9 = +[FigCaptureCameraParameters sharedInstance];
        if (v8)
        {
          v10 = [(FigCaptureCameraParameters *)v9 softISPCropDimensionsForOptimizedLearnedFusionForSuperwide];
        }

        else
        {
          v10 = [(FigCaptureCameraParameters *)v9 nrfProcessingDimensionsForOptimizedLearnedFusionForSuperwide];
        }
      }

      else
      {
        v11 = [objc_msgSend(OUTLINED_FUNCTION_14_18() "dimensionsByResolutionFlavor")];
        v10 = FigCaptureDimensionsFromDictionaryRepresentation(v11);
      }

      v113 = v10;
    }

    else
    {
      v113 = 0;
    }

    v12 = [a2 containsObject:&unk_1F22440C8];
    if (v12)
    {
      v13 = [objc_msgSend(OUTLINED_FUNCTION_14_18() "dimensionsByResolutionFlavor")];
      v115 = FigCaptureDimensionsFromDictionaryRepresentation(v13);
    }

    else
    {
      v115 = 0;
    }

    v14 = [a2 containsObject:&unk_1F22440E0];
    if (v14)
    {
      v15 = [objc_msgSend(OUTLINED_FUNCTION_14_18() "dimensionsByResolutionFlavor")];
      FigCaptureDimensionsFromDictionaryRepresentation(v15);
    }

    v16 = [a2 containsObject:&unk_1F22440F8];
    if (v16)
    {
      v17 = [objc_msgSend(OUTLINED_FUNCTION_14_18() "dimensionsByResolutionFlavor")];
      FigCaptureDimensionsFromDictionaryRepresentation(v17);
    }

    v111 = v4;
    if ([a2 containsObject:&unk_1F2244110])
    {
      v18 = [objc_msgSend(OUTLINED_FUNCTION_14_18() "dimensionsByResolutionFlavor")];
      v19 = FigCaptureDimensionsFromDictionaryRepresentation(v18);
      v20 = v19 & 0xFFFFFFFF00000000;
      v21 = v19;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    if ([a2 containsObject:&unk_1F2244068])
    {
      v22 = [objc_msgSend(OUTLINED_FUNCTION_14_18() "dimensionsByResolutionFlavor")];
      v23 = FigCaptureDimensionsFromDictionaryRepresentation(v22);
      v112 = v23 & 0xFFFFFFFF00000000;
      v114 = v23;
    }

    else
    {
      v112 = 0;
      v114 = 0;
    }

    v117 = [MEMORY[0x1E695DF70] array];
    v116 = [MEMORY[0x1E695DF70] array];
    v24 = v7 | v6;
    if (v7 >= 1 && SHIDWORD(v6) >= 1)
    {
      v26 = FigCaptureDictionaryRepresentationForDimensions(v7 | v6);
      OUTLINED_FUNCTION_64_5(v26);
      v27 = FigCaptureDictionaryRepresentationForDimensions(v7 | v6);
      OUTLINED_FUNCTION_90_2(v27);
    }

    v28 = v113 < 1 || SHIDWORD(v113) < 1;
    v29 = v28;
    v110 = v29;
    if (!v28 && v24 != v113)
    {
      v30 = FigCaptureDictionaryRepresentationForDimensions(v113);
      OUTLINED_FUNCTION_64_5(v30);
      v31 = FigCaptureDictionaryRepresentationForDimensions(v113);
      OUTLINED_FUNCTION_90_2(v31);
    }

    v109 = v12 | v14 | v16;
    if (v109 == 1)
    {
      OUTLINED_FUNCTION_7_35();
      OUTLINED_FUNCTION_7_35();
      v40 = v37 != v38 || v24 == v34;
      if (v36 <= v33)
      {
        v41 = v33;
      }

      else
      {
        v41 = v36;
      }

      if (v35 <= v32)
      {
        v35 = v32;
      }

      if (v40)
      {
        v32 = v32;
      }

      else
      {
        v32 = v35;
      }

      if (v40)
      {
        v33 = v33;
      }

      else
      {
        v33 = v41;
      }

      v42 = v33 | (v32 << 32);
      v43 = FigCaptureDictionaryRepresentationForDimensions(v42);
      OUTLINED_FUNCTION_64_5(v43);
      v44 = FigCaptureDictionaryRepresentationForDimensions(v42);
      OUTLINED_FUNCTION_90_2(v44);
    }

    v45 = v21 | v20;
    v47 = v21 < 1 || SHIDWORD(v20) < 1 || v24 == v45;
    v48 = v47;
    v108 = v48;
    if (!v47)
    {
      v49 = FigCaptureDictionaryRepresentationForDimensions(v21 | v20);
      OUTLINED_FUNCTION_64_5(v49);
      v50 = FigCaptureDictionaryRepresentationForDimensions(v21 | v20);
      OUTLINED_FUNCTION_90_2(v50);
    }

    v51 = v114 < 1 || SHIDWORD(v112) < 1;
    v52 = v51;
    v107 = v52;
    if (!v51)
    {
      v53 = FigCaptureDictionaryRepresentationForDimensions(v114 | v112);
      OUTLINED_FUNCTION_64_5(v53);
    }

    v54 = NSClassFromString(&cfstr_Nrfpreparedesc.isa);
    v55 = objc_alloc_init(v54);
    v56 = FigCaptureLargestDimensionsFromDimensionsArray(v117);
    v57 = HIDWORD(v56);
    [v55 setWidth:{v56, v115}];
    [v55 setHeight:v57];
    v58 = off_1E7989000;
    [+[BWMemoryPool sharedMemoryPool](BWMemoryPool poolIdentifier];
    [OUTLINED_FUNCTION_17() setMemoryPoolId:?];
    [objc_msgSend(OUTLINED_FUNCTION_14_18() "inputFormat")];
    [OUTLINED_FUNCTION_17() setPixelFormat:?];
    [OUTLINED_FUNCTION_14_18() alwaysAllowModifyingInputBuffers];
    [OUTLINED_FUNCTION_17() setAllowModifyingInputBuffers:?];
    OUTLINED_FUNCTION_61_4();
    if ([OUTLINED_FUNCTION_14_18() swfrEnabled])
    {
      OUTLINED_FUNCTION_61_4();
    }

    if ([OUTLINED_FUNCTION_14_18() rawNightModeEnabled])
    {
      OUTLINED_FUNCTION_61_4();
    }

    if ([OUTLINED_FUNCTION_14_18() learnedNRMode] && objc_msgSend(OUTLINED_FUNCTION_14_18(), "learnedNRInputFormat"))
    {
      v59 = [objc_msgSend(OUTLINED_FUNCTION_14_18() "learnedNRInputFormat")];
      v60 = [objc_msgSend(OUTLINED_FUNCTION_14_18() "learnedNRInputFormat")];
      v61 = [MEMORY[0x1E695DF70] array];
      if (v59 >= 1 && v60 >= 1)
      {
        FigCaptureDictionaryRepresentationForDimensions(v59 & 0x7FFFFFFF | (v60 << 32));
        [OUTLINED_FUNCTION_17() addObject:?];
      }

      if ((v110 & 1) == 0)
      {
        FigCaptureDictionaryRepresentationForDimensions(v113);
        [OUTLINED_FUNCTION_17() addObject:?];
      }

      v63 = [OUTLINED_FUNCTION_14_18() learnedNRMode];
      v64 = v107;
      if ((v63 & 4) == 0)
      {
        v64 = 1;
      }

      if ((v64 & 1) == 0)
      {
        FigCaptureDictionaryRepresentationForDimensions(v114 | v112);
        [OUTLINED_FUNCTION_17() addObject:?];
      }

      if (v109)
      {
        OUTLINED_FUNCTION_48_9();
        OUTLINED_FUNCTION_7_35();
        OUTLINED_FUNCTION_7_35();
        v71 = v37 != v38 || v24 == v67;
        if (v69 <= v66)
        {
          v72 = v66;
        }

        else
        {
          v72 = v69;
        }

        if (v68 <= v65)
        {
          v68 = v65;
        }

        if (v71)
        {
          v65 = v65;
        }

        else
        {
          v65 = v68;
        }

        if (v71)
        {
          v66 = v66;
        }

        else
        {
          v66 = v72;
        }

        FigCaptureDictionaryRepresentationForDimensions(v66 | (v65 << 32));
        [OUTLINED_FUNCTION_17() addObject:?];
      }

      if ((v108 & 1) == 0)
      {
        FigCaptureDictionaryRepresentationForDimensions(v45);
        [OUTLINED_FUNCTION_17() addObject:?];
      }

      v73 = objc_alloc_init(v54);
      v74 = FigCaptureLargestDimensionsFromDimensionsArray(v61);
      [v73 setWidth:v74];
      [v73 setHeight:HIDWORD(v74)];
      [objc_msgSend(OUTLINED_FUNCTION_14_18() "learnedNRInputFormat")];
      [OUTLINED_FUNCTION_36() setPixelFormat:?];
      [OUTLINED_FUNCTION_14_18() alwaysAllowModifyingInputBuffers];
      [OUTLINED_FUNCTION_36() setAllowModifyingInputBuffers:?];
      [v111 setObject:v73 forKeyedSubscript:&unk_1F2244170];
      v58 = off_1E7989000;
      if (([OUTLINED_FUNCTION_14_18() learnedNRMode] & 0x10) != 0)
      {
        v75 = objc_alloc_init(v54);
        [v75 setWidth:v74];
        [v75 setHeight:HIDWORD(v74)];
        [objc_msgSend(OUTLINED_FUNCTION_14_18() "learnedNRInputFormat")];
        [OUTLINED_FUNCTION_36() setPixelFormat:?];
        [OUTLINED_FUNCTION_14_18() alwaysAllowModifyingInputBuffers];
        [OUTLINED_FUNCTION_36() setAllowModifyingInputBuffers:?];
        v76 = v75;
        v58 = off_1E7989000;
        [v111 setObject:v76 forKeyedSubscript:&unk_1F2244188];
      }
    }

    if (([OUTLINED_FUNCTION_14_18() unifiedBracketingFusionEnabled] & 1) != 0 || objc_msgSend(OUTLINED_FUNCTION_14_18(), "lowLightFusionEnabled"))
    {
      v77 = objc_alloc_init(v54);
      v78 = FigCaptureLargestDimensionsFromDimensionsArray(v116);
      v79 = HIDWORD(v78);
      [v77 setWidth:v78];
      [v77 setHeight:v79];
      [objc_msgSend(OUTLINED_FUNCTION_14_18() "inputFormat")];
      [OUTLINED_FUNCTION_17() setPixelFormat:?];
      [OUTLINED_FUNCTION_14_18() alwaysAllowModifyingInputBuffers];
      [OUTLINED_FUNCTION_17() setAllowModifyingInputBuffers:?];
      [-[__objc2_class sharedMemoryPool](v58[33] "sharedMemoryPool")];
      [OUTLINED_FUNCTION_17() setMemoryPoolId:?];
      if ([OUTLINED_FUNCTION_14_18() unifiedBracketingFusionEnabled])
      {
        OUTLINED_FUNCTION_61_4();
      }

      if ([OUTLINED_FUNCTION_14_18() lowLightFusionEnabled])
      {
        OUTLINED_FUNCTION_61_4();
      }
    }

    if ([OUTLINED_FUNCTION_14_18() rawNightModeEnabled])
    {
      v80 = v54;
      if (v106)
      {
        v81 = [objc_msgSend(OUTLINED_FUNCTION_14_18() "rawNightModeInputFormat")];
        v82 = [objc_msgSend(OUTLINED_FUNCTION_14_18() "rawNightModeInputFormat")] << 32;
        v83 = v81;
      }

      else
      {
        v83 = 0;
        v82 = 0;
      }

      [MEMORY[0x1E695DF70] array];
      v84 = [MEMORY[0x1E695DF70] array];
      if (v83 >= 1 && SHIDWORD(v82) >= 1)
      {
        FigCaptureDictionaryRepresentationForDimensions(v82 | v83);
        [OUTLINED_FUNCTION_37_0() addObject:?];
        FigCaptureDictionaryRepresentationForDimensions(v82 | v83);
        [OUTLINED_FUNCTION_17() addObject:?];
      }

      if ((v110 & 1) == 0)
      {
        FigCaptureDictionaryRepresentationForDimensions(v113);
        [OUTLINED_FUNCTION_37_0() addObject:?];
        FigCaptureDictionaryRepresentationForDimensions(v113);
        [OUTLINED_FUNCTION_17() addObject:?];
      }

      if (v109)
      {
        OUTLINED_FUNCTION_48_9();
        OUTLINED_FUNCTION_7_35();
        OUTLINED_FUNCTION_7_35();
        v92 = v37 != v38 || v24 == v88;
        if (v90 <= v86)
        {
          v93 = v86;
        }

        else
        {
          v93 = v90;
        }

        if (v89 <= v87)
        {
          v89 = v87;
        }

        if (v92)
        {
          v86 = v86;
        }

        else
        {
          v86 = v93;
        }

        if (v92)
        {
          v87 = v87;
        }

        else
        {
          v87 = v89;
        }

        v94 = v86 | (v87 << 32);
        v95 = FigCaptureDictionaryRepresentationForDimensions(v94);
        OUTLINED_FUNCTION_64_5(v95);
        FigCaptureDictionaryRepresentationForDimensions(v94);
        [OUTLINED_FUNCTION_17() addObject:?];
      }

      if ((v108 & 1) == 0)
      {
        FigCaptureDictionaryRepresentationForDimensions(v45);
        [OUTLINED_FUNCTION_37_0() addObject:?];
        FigCaptureDictionaryRepresentationForDimensions(v45);
        [OUTLINED_FUNCTION_17() addObject:?];
      }

      v54 = v80;
      if ((v107 & 1) == 0)
      {
        FigCaptureDictionaryRepresentationForDimensions(v114 | v112);
        [OUTLINED_FUNCTION_37_0() addObject:?];
      }

      v96 = objc_alloc_init(v80);
      v97 = FigCaptureLargestDimensionsFromDimensionsArray(v84);
      v98 = HIDWORD(v97);
      [v96 setWidth:v97];
      [v96 setHeight:v98];
      [objc_msgSend(OUTLINED_FUNCTION_14_18() "rawNightModeInputFormat")];
      [OUTLINED_FUNCTION_8() setPixelFormat:?];
      [OUTLINED_FUNCTION_14_18() alwaysAllowModifyingInputBuffers];
      [OUTLINED_FUNCTION_8() setAllowModifyingInputBuffers:?];
      [v111 setObject:v96 forKeyedSubscript:&unk_1F2244038];
    }

    if ([OUTLINED_FUNCTION_14_18() deepFusionEnabled] && ((v99 = objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_14_18(), "deepFusionInputFormat"), "pixelFormat"), (FigCapturePixelFormatIs420(v99) & 1) != 0) || (objc_msgSend(OUTLINED_FUNCTION_14_18(), "deferredCaptureSupportEnabled") & 1) != 0) || objc_msgSend(OUTLINED_FUNCTION_14_18(), "learnedFusionEnabled") && objc_msgSend(OUTLINED_FUNCTION_14_18(), "deferredCaptureSupportEnabled"))
    {
      v100 = objc_alloc_init(v54);
      v101 = FigCaptureLargestDimensionsFromDimensionsArray(v116);
      v102 = HIDWORD(v101);
      [v100 setWidth:v101];
      [v100 setHeight:v102];
      [objc_msgSend(OUTLINED_FUNCTION_14_18() "deepFusionInputFormat")];
      [OUTLINED_FUNCTION_17() setPixelFormat:?];
      [OUTLINED_FUNCTION_14_18() alwaysAllowModifyingInputBuffers];
      [OUTLINED_FUNCTION_17() setAllowModifyingInputBuffers:?];
      [OUTLINED_FUNCTION_14_18() cmiResourceEnabled];
      [OUTLINED_FUNCTION_17() setCmiResourceEnabled:?];
      if ([OUTLINED_FUNCTION_14_18() deepFusionEnabled])
      {
        OUTLINED_FUNCTION_61_4();
      }

      if ([OUTLINED_FUNCTION_14_18() learnedFusionEnabled] && objc_msgSend(OUTLINED_FUNCTION_14_18(), "deferredCaptureSupportEnabled"))
      {
        OUTLINED_FUNCTION_61_4();
      }
    }

    if ([OUTLINED_FUNCTION_14_18() learnedFusionEnabled] && (objc_msgSend(OUTLINED_FUNCTION_14_18(), "deferredCaptureSupportEnabled") & 1) == 0)
    {
      v103 = FigCaptureLargestDimensionsFromDimensionsArray(v116);
      v104 = objc_alloc_init(v54);
      [v104 setWidth:v103];
      [v104 setHeight:HIDWORD(v103)];
      [objc_msgSend(OUTLINED_FUNCTION_14_18() "learnedFusionInputFormat")];
      [OUTLINED_FUNCTION_7() setPixelFormat:?];
      [OUTLINED_FUNCTION_14_18() alwaysAllowModifyingInputBuffers];
      [OUTLINED_FUNCTION_7() setAllowModifyingInputBuffers:?];
      [OUTLINED_FUNCTION_14_18() cmiResourceEnabled];
      [OUTLINED_FUNCTION_7() setCmiResourceEnabled:?];
      [v111 setObject:v104 forKeyedSubscript:&unk_1F2244200];
    }

    v105 = [v111 copy];

    return v105;
  }

  return result;
}

- (unint64_t)_prepareProcessor
{
  if (result)
  {
    v1 = result;
    if (![objc_msgSend(objc_msgSend(*(result + 216) "input")])
    {
      goto LABEL_10;
    }

    v2 = [*(v1 + 216) input];
    if (v2)
    {
      v2 = v2[7];
    }

    result = [v2 count];
    if (result || (v3 = *(v1 + 216)) != 0 && ((*(v3 + 48) & 1) != 0 || *(v3 + 49) == 1))
    {
LABEL_10:
      v4 = [(BWNRFProcessorRequest *)*(v1 + 216) processingType];
      v5 = [(BWNRFProcessorController *)v1 _prepareProcessorForProcessingType:v4];
      if (v5)
      {
        [*(v1 + 216) setErr:v5];
        [OUTLINED_FUNCTION_34_0(88) setOutput:?];
        v14 = *(v1 + 88);

        return [v14 resetState];
      }

      else
      {
        for (i = 0; ; ++i)
        {
          v7 = [*(v1 + 216) input];
          if (v7)
          {
            v7 = v7[7];
          }

          result = [v7 count];
          if (result <= i)
          {
            break;
          }

          v8 = [*(v1 + 216) input];
          if (v8)
          {
            v8 = v8[7];
          }

          BWStillImageCaptureFrameFlagsForSampleBuffer([v8 objectAtIndexedSubscript:i]);
          v9 = OUTLINED_FUNCTION_75_2();
          nrfp_addFrame_0(v9, v10, v11, v12, v13);
        }
      }
    }
  }

  return result;
}

- (void)_processSingleImage
{
  if (!a1)
  {
    return;
  }

  v58 = 0;
  v3 = OUTLINED_FUNCTION_29_7(a1);
  if (!v3)
  {
    goto LABEL_6;
  }

  if (*(v3 + 48) != 1)
  {
    if (*(v3 + 56) >= 1)
    {
      v4 = [(BWNRFProcessorRequest *)v3 clientBracketFrame];
      goto LABEL_9;
    }

LABEL_6:
    v5 = [v3 input];
    if (v5)
    {
      v5 = v5[7];
    }

    v4 = [v5 firstObject];
    goto LABEL_9;
  }

  v4 = [objc_msgSend(v3 "input")];
LABEL_9:
  v6 = v4;
  v7 = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_13_21() "input")];
  v8 = *(a1 + *(v1 + 3324));
  if ((!v8 || (*(v8 + 48) & 1) == 0) && (v7 & 0x20000000000) != 0 && (v9 = CMGetAttachment(v6, *off_1E798A3C8, 0), [objc_msgSend(v9 objectForKeyedSubscript:{*off_1E798B5E8), "BOOLValue"}]) && (v10 = *off_1E798B528, v11 = objc_msgSend(v9, "objectForKeyedSubscript:", *off_1E798B528), objc_msgSend(objc_msgSend(v9, "objectForKeyedSubscript:", *off_1E798B2A8), "doubleValue"), v13 = v12, FigCaptureMetadataUtilitiesHasFlicker(objc_msgSend(v9, "objectForKeyedSubscript:", v10), v13)))
  {
    [OUTLINED_FUNCTION_13_21() setErr:4294893857];
    [objc_msgSend(objc_msgSend(objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798B960), "firstObject"), "objectForKeyedSubscript:", *off_1E798B958), "doubleValue"}];
    if (dword_1EB58E0E0)
    {
      OUTLINED_FUNCTION_58_3();
      v14 = OUTLINED_FUNCTION_54_0();
      if (os_log_type_enabled(v14, BYTE3(v57)))
      {
        v15 = HIDWORD(v57);
      }

      else
      {
        v15 = HIDWORD(v57) & 0xFFFFFFFE;
      }

      if (v15)
      {
        OUTLINED_FUNCTION_2_1();
        OUTLINED_FUNCTION_5_0();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_70();
    [(BWNRFProcessorController *)v16 _singleImageProcessSampleBuffer:v17 sampleBufferOut:v18, v19, v20, v21, v22, v23, v34, v35, v36, v37, v38, SHIDWORD(v38), v39, v40, v41, v42, SBYTE2(v42), SHIBYTE(v42), v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, 0, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70];
    [OUTLINED_FUNCTION_13_21() setErr:?];
    [OUTLINED_FUNCTION_13_21() err];
  }

  v24 = [OUTLINED_FUNCTION_13_21() err];
  v25 = *(a1 + *(v1 + 3324));
  if (v24 && (!v25 || (v25[48] & 1) == 0) && (v7 & 0x20000000000) != 0)
  {
    [objc_msgSend(v25 "output")];
    OUTLINED_FUNCTION_41(MEMORY[0x1E695DF20], v30, v31, v32);
    v33 = OUTLINED_FUNCTION_3_30();
    [BWNRFProcessorController _handleErrorRecoveryWithFailureMetadata:v33];
  }

  else if (!v25 || (v25[52] & 1) == 0)
  {
    [(BWNRFProcessorRequest *)v25 imageType];
    [OUTLINED_FUNCTION_13_21() input];
    [OUTLINED_FUNCTION_13_21() err];
    [OUTLINED_FUNCTION_9_5() processorController:? didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
    v26 = *(a1 + *(v1 + 3324));
    if (v26)
    {
      if (*(v26 + 48) == 1 && (v7 & 4) != 0)
      {
        v27 = CMGetAttachment(v58, *off_1E798A3C8, 0);
        if ([v27 objectForKeyedSubscript:@"UBDeepFusionFusionFailure"])
        {
          [objc_msgSend(v27 objectForKeyedSubscript:{@"UBDeepFusionFusionFailure", "intValue"}];
          v28 = OUTLINED_FUNCTION_13_21();
        }

        else
        {
          v28 = OUTLINED_FUNCTION_13_21();
          v29 = 4294950489;
        }

        [v28 setErr:v29];
      }
    }
  }

  if (v58)
  {
    CFRelease(v58);
  }
}

- (void)_singleImageProcessSampleBuffer:(int)a3 sampleBufferOut:(int)a4
{
  OUTLINED_FUNCTION_59_0();
  a47 = v49;
  a48 = v53;
  if (v50)
  {
    v54 = v51;
    if (v51)
    {
      v55 = v52;
      v56 = v50;
      if (dword_1EB58E0E0)
      {
        HIDWORD(a36) = 0;
        BYTE3(a36) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE3(a36));
        OUTLINED_FUNCTION_30();
        if (v48)
        {
          v58 = BWStillImageSampleBufferToDisplayString(v54);
          [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_15_16() "input")];
          a13 = 136315651;
          OUTLINED_FUNCTION_20();
          *(&a15 + 6) = v58;
          OUTLINED_FUNCTION_0_51();
          OUTLINED_FUNCTION_11_0();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_56_0();
      }

      ImageBuffer = CMSampleBufferGetImageBuffer(v54);
      v60 = CVBufferCopyAttachment(ImageBuffer, *off_1E798A0B8, 0);
      v61 = *(v56 + 88);
      if (v60)
      {
        v62 = [v61 addInputResource:v60];
        v63 = OUTLINED_FUNCTION_39_9();
        CVBufferRemoveAttachment(v63, v64);

        if (v62)
        {
          goto LABEL_43;
        }
      }

      else if ([v61 addFrame:v54])
      {
        goto LABEL_43;
      }

      if (![*(v56 + 88) process])
      {
        v65 = [objc_msgSend(*(v56 + 88) "output")];
        v66 = OUTLINED_FUNCTION_15_16();
        v67 = [(BWNRFProcessorRequest *)v66 processingType];
        [(BWNRFProcessorController *)v56 _logCompletionStatus:v65 processingType:v67 request:*(v56 + 216)];
        v68 = OUTLINED_FUNCTION_15_16();
        if (!v68 || (v68[52] & 1) == 0)
        {
          if (([objc_msgSend(objc_msgSend(v68 "input")] & 0x60000000000) != 0)
          {
            if ((BWStillImageCaptureFrameFlagsForSampleBuffer(v54) & 4) != 0)
            {
              v69 = 2;
            }

            else
            {
              v69 = 1;
            }

            v70 = OUTLINED_FUNCTION_15_16();
            if (v70)
            {
              v71 = v70[8];
            }

            else
            {
              v71 = 0;
            }

            [v71 processorController:v56 didSelectFusionMode:v69 processorInput:{objc_msgSend(v70, "input")}];
          }

          target = 0;
          v72 = [objc_msgSend(OUTLINED_FUNCTION_15_16() "output")];
          if (!BWCMSampleBufferCreateCopyWithNewPixelBuffer(v54, v72, (v56 + 168), &target))
          {
            if (![objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_15_16() "output")])
            {
              [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_15_16() "output")];
            }

            v73 = *off_1E798A3C8;
            v74 = [CMGetAttachment(target *off_1E798A3C8];
            [objc_msgSend(OUTLINED_FUNCTION_15_16() "output")];
            [OUTLINED_FUNCTION_7() addEntriesFromDictionary:?];
            CMSetAttachment(target, v73, v74, 1u);

            v75 = OUTLINED_FUNCTION_15_16();
            if ([(BWNRFProcessorRequest *)v75 imageType]== 29)
            {
              BWStillImageSetProcessingFlagsForSampleBuffer(target, 4096);
              [OUTLINED_FUNCTION_15_16() setDeliveredDeferredProxyImage:1];
            }

            else
            {
              v82 = OUTLINED_FUNCTION_15_16();
              if ([(BWNRFProcessorRequest *)v82 imageType]== 38)
              {
                v83 = target;
                v84 = BWStillImageProcessingFlagsForSampleBuffer(target);
                BWStillImageSetProcessingFlagsForSampleBuffer(v83, v84 | 0x100000);
              }
            }

            v76 = OUTLINED_FUNCTION_15_16();
            if (v76 && v76[48] == 1)
            {
              BWStillImageSetProcessingFlagsForSampleBuffer(target, 1024);
              if (!target || ![objc_msgSend(objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_15_16() "input")] && (!objc_msgSend(objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_15_16(), "input"), "captureSettings"), "deliverDeferredPhotoProxyImage") || (objc_msgSend(objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_15_16(), "input"), "captureSettings"), "captureFlags") & 0x100000) == 0))
              {
                goto LABEL_35;
              }

              v77 = target;
              v78 = 0x8000000;
            }

            else
            {
              if (([objc_msgSend(objc_msgSend(v76 "input")] & 0x80) == 0)
              {
                goto LABEL_35;
              }

              CMSetAttachment(target, @"SDOFCustomRendered", &unk_1F2244050, 1u);
              if (([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_15_16() "input")] & 0x260000000000) == 0)
              {
                goto LABEL_35;
              }

              v77 = target;
              v78 = 2;
            }

            BWStillImageSetProcessingFlagsForSampleBuffer(v77, v78);
LABEL_35:
            if ([objc_msgSend(OUTLINED_FUNCTION_15_16() "output")])
            {
              [objc_msgSend(OUTLINED_FUNCTION_15_16() "output")];
              [objc_msgSend(OUTLINED_FUNCTION_15_16() "output")];
              [OUTLINED_FUNCTION_15_16() input];
              OUTLINED_FUNCTION_52_0();
              v85 = OUTLINED_FUNCTION_53_1();
              OUTLINED_FUNCTION_64_1(v85, v86, v87);
              [(BWNRFProcessorController *)v56 _generateGainMapMetadata:?];
              v88 = target;
              v89 = [objc_msgSend(OUTLINED_FUNCTION_15_16() "output")];
              OUTLINED_FUNCTION_66_2(v88, 0x1F217BF50, v89, (v56 + 200));
            }

            if ([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_15_16() "input")])
            {
              v90 = [objc_msgSend(OUTLINED_FUNCTION_15_16() "output")];
              v91 = [objc_msgSend(OUTLINED_FUNCTION_15_16() "output")];
              v92 = target;
              v93 = [OUTLINED_FUNCTION_15_16() demosaicedRawErr];
              [(BWNRFProcessorController *)v56 _propagateDemosaicedRawPixelBuffer:v90 demosaicedRawMetadata:v91 outputSampleBuffer:v92 error:v93];
            }

            if ([OUTLINED_FUNCTION_15_16() processSmartStyleRenderingInput])
            {
              v79 = target;
              v80 = [objc_msgSend(OUTLINED_FUNCTION_15_16() "output")];
              v81 = [objc_msgSend(OUTLINED_FUNCTION_15_16() "output")];
              OUTLINED_FUNCTION_67_3(v79, 0x1F21AAF50, v80, (v56 + 192), v81);
            }

            if (v55)
            {
              *v55 = target;
            }
          }
        }
      }
    }
  }

LABEL_43:
  OUTLINED_FUNCTION_58_0();
}

- (void)_processLearnedHRNR
{
  if (a1)
  {
    v37 = 0;
    [OUTLINED_FUNCTION_29_7(a1) output];
    OUTLINED_FUNCTION_80_1();
    if (v5)
    {
      v6 = OUTLINED_FUNCTION_52_8();
      OUTLINED_FUNCTION_65_4(v6);
      OUTLINED_FUNCTION_4_0();
      if (v2)
      {
        [objc_msgSend(OUTLINED_FUNCTION_44_8() "settings")];
        OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_0_51();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_1_63();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if ([OUTLINED_FUNCTION_13_21() err])
    {
      v7 = [v1 metadata];
      if (!v7)
      {
        v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      [OUTLINED_FUNCTION_13_21() err];
      [v7 setObject:objc_msgSend(OUTLINED_FUNCTION_8() forKeyedSubscript:{"numberWithInt:"), @"LearnedHRNRAddFrameFailure"}];
    }

    else
    {
      [*(a1 + 88) process];
      [OUTLINED_FUNCTION_13_21() setErr:?];
      v7 = [v1 metadata];
      if (![OUTLINED_FUNCTION_13_21() err])
      {
        v8 = [v1 completionStatus];
        v9 = OUTLINED_FUNCTION_13_21();
        [(BWNRFProcessorRequest *)v9 processingType];
        v10 = OUTLINED_FUNCTION_46_8();
        [(BWNRFProcessorController *)v10 _logCompletionStatus:v8 processingType:v11 request:v12];
        v13 = [objc_msgSend(OUTLINED_FUNCTION_13_21() "input")];
        BWCMSampleBufferCreateCopyWithNewPixelBuffer(v13, [v1 pixelBuffer], (a1 + 168), &v37);
        [OUTLINED_FUNCTION_13_21() setErr:?];
        if (![OUTLINED_FUNCTION_13_21() err])
        {
          v14 = CMGetAttachment(v37, *off_1E798A3C8, 0);
          [v14 addEntriesFromDictionary:v7];
          if (![v14 objectForKeyedSubscript:@"UB"])
          {
            [v14 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionary"), @"UB"}];
          }

          CMSetAttachment(v37, @"SDOFCustomRendered", &unk_1F2244050, 1u);
          if ([objc_msgSend(OUTLINED_FUNCTION_13_21() "output")])
          {
            LODWORD(v2) = [objc_msgSend(OUTLINED_FUNCTION_13_21() "output")];
            OUTLINED_FUNCTION_91_3();
            v15 = OUTLINED_FUNCTION_17_16();
            BWSampleBufferSetAttachedMediaFromPixelBuffer(v15, v16, v17, v18, v19, v20, 1);
          }

          if ([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_13_21() "input")])
          {
            [objc_msgSend(OUTLINED_FUNCTION_13_21() "output")];
            [objc_msgSend(OUTLINED_FUNCTION_13_21() "output")];
            v2 = v37;
            [OUTLINED_FUNCTION_13_21() demosaicedRawErr];
            v21 = OUTLINED_FUNCTION_51_0();
            [(BWNRFProcessorController *)v21 _propagateDemosaicedRawPixelBuffer:v22 demosaicedRawMetadata:v23 outputSampleBuffer:v2 error:v24];
          }

          if ([OUTLINED_FUNCTION_13_21() processSmartStyleRenderingInput])
          {
            LODWORD(v2) = [objc_msgSend(OUTLINED_FUNCTION_13_21() "output")];
            [objc_msgSend(OUTLINED_FUNCTION_13_21() "output")];
            v25 = OUTLINED_FUNCTION_17_16();
            BWSampleBufferSetAttachedMediaFromPixelBuffer(v25, v26, v27, v28, v29, v30, 0);
          }

          BWStillImageSetProcessingFlagsForSampleBuffer(v37, 2);
          if (*(v3 + 224))
          {
            v31 = OUTLINED_FUNCTION_52_8();
            OUTLINED_FUNCTION_65_4(v31);
            OUTLINED_FUNCTION_4_0();
            if (v2)
            {
              [objc_msgSend(OUTLINED_FUNCTION_44_8() "settings")];
              OUTLINED_FUNCTION_20();
              OUTLINED_FUNCTION_0_51();
              OUTLINED_FUNCTION_5_1();
            }

            OUTLINED_FUNCTION_1_63();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v32 = OUTLINED_FUNCTION_13_21();
          [(BWNRFProcessorRequest *)v32 imageType];
          [OUTLINED_FUNCTION_13_21() input];
          [OUTLINED_FUNCTION_13_21() err];
          [OUTLINED_FUNCTION_9_5() processorController:? didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
        }
      }
    }

    if ([OUTLINED_FUNCTION_13_21() err])
    {
      OUTLINED_FUNCTION_41(MEMORY[0x1E695DF20], v33, v34, v35);
      v36 = OUTLINED_FUNCTION_3_30();
      [BWNRFProcessorController _handleErrorRecoveryWithFailureMetadata:v36];
    }

    if (v37)
    {
      CFRelease(v37);
    }
  }
}

- (void)_logCompletionStatus:(int)a3 processingType:(void *)a4 request:
{
  if (a1)
  {
    if (a2)
    {
      v7 = [[BWNRFProcessorCompletionStatus alloc] initWithCompletionStatus:a2];
      v8 = [objc_msgSend(objc_msgSend(a4 "input")];
      v9 = [a4 description];
      v10 = *(a1 + 160);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __72__BWNRFProcessorController__logCompletionStatus_processingType_request___block_invoke;
      v11[3] = &unk_1E7990030;
      v12 = a3;
      v11[4] = v7;
      v11[5] = v9;
      v11[6] = v8;
      dispatch_async(v10, v11);
    }
  }
}

- (void)_generateGainMapMetadata:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v3 = *(a1 + 216);
  if (!a2)
  {
    [v3 output];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(OUTLINED_FUNCTION_72_2() "output")])
    {
      v4 = [OUTLINED_FUNCTION_72_2() output];
      goto LABEL_9;
    }

LABEL_10:
    v5 = [MEMORY[0x1E695DF90] dictionary];
    goto LABEL_11;
  }

  [v3 deepFusionOutput];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ![objc_msgSend(OUTLINED_FUNCTION_72_2() "deepFusionOutput")])
  {
    goto LABEL_10;
  }

  v4 = [OUTLINED_FUNCTION_72_2() deepFusionOutput];
LABEL_9:
  v5 = [v4 gainMapOutputMetadata];
LABEL_11:
  v6 = v5;
  [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters gainMapVersion];
  [v6 setObject:objc_msgSend(OUTLINED_FUNCTION_8() forKeyedSubscript:{"numberWithInt:"), *off_1E798A688}];
  v7 = MEMORY[0x1E696AD98];
  [*(a1 + 64) gainMapMainImageDownscalingFactor];
  [v6 setObject:objc_msgSend(v7 forKeyedSubscript:{"numberWithFloat:"), *off_1E798A788}];
  return v6;
}

- (void)_propagateDemosaicedRawPixelBuffer:(void *)a3 demosaicedRawMetadata:(void *)target outputSampleBuffer:(int)a5 error:
{
  if (a1)
  {
    v6 = 0;
    targeta = 0;
    if (!a2 || a5)
    {
      goto LABEL_15;
    }

    v10 = *off_1E798A3C8;
    v11 = CMGetAttachment(target, *off_1E798A3C8, 0);
    v6 = [v11 mutableCopy];
    if ([a3 count])
    {
      [v6 addEntriesFromDictionary:a3];
    }

    if (BWCMSampleBufferCreateCopyWithNewPixelBuffer(target, a2, (a1 + 184), &targeta))
    {
      goto LABEL_15;
    }

    BWStillImageSetProcessingFlagsForSampleBuffer(targeta, 0x10000);
    v12 = CMGetAttachment(targeta, @"RawDNGDictionary", 0);
    if (v12)
    {
      v13 = v12;
      Width = CVPixelBufferGetWidth(a2);
      Height = CVPixelBufferGetHeight(a2);
      v16 = BWCreateDNGDictionaryWithUpdatedToneCurvesIfNeeded(v13, Width | (Height << 32), v6);
      if (!v16)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v17 = [v11 objectForKeyedSubscript:*off_1E798B540];
      v18 = [objc_msgSend(*(a1 + 64) "rawColorCalibrationsByPortType")];
      if (!v18)
      {
        goto LABEL_15;
      }

      v19 = v18;
      v20 = [objc_msgSend(objc_msgSend(*(a1 + 64) "sensorConfigurationsByPortType")];
      if (!v20)
      {
        goto LABEL_15;
      }

      v21 = v20;
      PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
      v23 = [objc_msgSend(objc_msgSend(*(a1 + 216) "input")];
      v24 = v23 / [objc_msgSend(objc_msgSend(*(a1 + 216) "input")];
      v25 = CVPixelBufferGetWidth(a2);
      v26 = CVPixelBufferGetHeight(a2);
      v16 = BWCreateDemosaicedRawDNGDictionary(v25 | (v26 << 32), PixelFormatType, v6, v19, v21, v24);
      if (!v16)
      {
        goto LABEL_15;
      }
    }

    v27 = v16;
    CMSetAttachment(targeta, @"RawDNGDictionary", v16, 1u);

LABEL_14:
    [v6 setObject:&unk_1F224A830 forKeyedSubscript:*off_1E798A788];
    CMSetAttachment(targeta, v10, v6, 1u);
    BWSampleBufferSetAttachedMedia(target, 0x1F21AAE10, targeta);
LABEL_15:

    if (targeta)
    {
      CFRelease(targeta);
    }
  }
}

- (void)_processUBFusion
{
  if (!a1)
  {
    return;
  }

  v118 = 0;
  v4 = [*(a1 + 216) output];
  if (dword_1EB58E0E0)
  {
    v5 = OUTLINED_FUNCTION_25_9();
    OUTLINED_FUNCTION_63_5(v5);
    OUTLINED_FUNCTION_4_0();
    if (v1)
    {
      [objc_msgSend(OUTLINED_FUNCTION_62_4() "settings")];
      LODWORD(v116.value) = 136315651;
      *(&v116.value + 4) = "[BWNRFProcessorController _processUBFusion]";
      LOWORD(v116.flags) = 2113;
      *(&v116.flags + 2) = v2;
      OUTLINED_FUNCTION_38_9();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_1_63();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([OUTLINED_FUNCTION_12_27() err])
  {
    v6 = [v4 metadata];
    if (!v6)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [OUTLINED_FUNCTION_12_27() err];
    [v6 setObject:objc_msgSend(OUTLINED_FUNCTION_8() forKeyedSubscript:{"numberWithInt:"), @"UBAddFrameFailure"}];
    goto LABEL_57;
  }

  [*(a1 + 88) process];
  [OUTLINED_FUNCTION_12_27() setErr:?];
  v6 = [v4 metadata];
  if (![OUTLINED_FUNCTION_12_27() err])
  {
    v7 = [v4 completionStatus];
    v8 = OUTLINED_FUNCTION_12_27();
    [(BWNRFProcessorRequest *)v8 processingType];
    v9 = OUTLINED_FUNCTION_46_8();
    [(BWNRFProcessorController *)v9 _logCompletionStatus:v7 processingType:v10 request:v11];
    v12 = [objc_msgSend(OUTLINED_FUNCTION_12_27() "input")];
    BWCMSampleBufferCreateCopyWithNewPixelBuffer(v12, [v4 pixelBuffer], (a1 + 168), &v118);
    [OUTLINED_FUNCTION_12_27() setErr:?];
    if (![OUTLINED_FUNCTION_12_27() err])
    {
      v85 = v6;
      if (([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_12_27() "input")] & 0x800) == 0)
      {
LABEL_27:
        if ([objc_msgSend(OUTLINED_FUNCTION_12_27() "output")])
        {
          v40 = OUTLINED_FUNCTION_91_3();
          [objc_msgSend(OUTLINED_FUNCTION_12_27() "output")];
          v41 = OUTLINED_FUNCTION_39_9();
          BWSampleBufferSetAttachedMediaFromPixelBuffer(v41, v42, v43, v44, v40, 0, 1);
        }

        v6 = v85;
        if ([v4 fusionMode] == 2 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v45 = [objc_msgSend(OUTLINED_FUNCTION_12_27() "input")];
          memset(&v117, 0, sizeof(v117));
          CMSampleBufferGetPresentationTimeStamp(&v117, v45);
          v46 = [MEMORY[0x1E695DF70] array];
          for (i = 0; i != 3; ++i)
          {
            for (j = 0; j != 3; ++j)
            {
              v49 = MEMORY[0x1E696AD98];
              [v4 refFrameTransform];
              OUTLINED_FUNCTION_49_0(v50, v51);
              v88 = *&v52;
              v90 = v53;
              LODWORD(v93) = v54;
              v92 = v55;
              LODWORD(v52) = *((&v88 + 2 * i) & 0xFFFFFFFFFFFFFFF3 | (4 * (j & 3)));
              [v49 numberWithFloat:v52];
              [OUTLINED_FUNCTION_7() addObject:?];
            }
          }

          v56 = OUTLINED_FUNCTION_12_27();
          if (v56)
          {
            v57 = v56[8];
          }

          else
          {
            v57 = 0;
          }

          v6 = v85;
          v58 = [v56 input];
          v116 = v117;
          [v57 processorController:a1 didSelectNewReferenceFrameWithPTS:&v116 transform:v46 processorInput:v58];
        }

        CMSetAttachment(v118, @"HasUnreliableBracketingMetadata", MEMORY[0x1E695E118], 1u);
        v59 = CMGetAttachment(v118, *off_1E798A3C8, 0);
        if ([OUTLINED_FUNCTION_12_27() processSmartStyleRenderingInput])
        {
          v60 = [objc_msgSend(OUTLINED_FUNCTION_12_27() "output")];
          [objc_msgSend(OUTLINED_FUNCTION_12_27() "output")];
          v61 = OUTLINED_FUNCTION_39_9();
          OUTLINED_FUNCTION_67_3(v61, v62, v60, v63, v64);
        }

        [v59 addEntriesFromDictionary:v6];
        LODWORD(v65) = MEMORY[0x1E696AD98];
        [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(v4, "fusionMode")), *off_1E798A670}];
        if (([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_12_27() "input")] & 0x100000) != 0)
        {
          BWStillImageSetProcessingFlagsForSampleBuffer(v118, 2);
          if (([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_12_27() "input")] & 1) != 0 || objc_msgSend(objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_12_27(), "input"), "settings"), "HDRMode") == 1)
          {
            if ([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_12_27() "input")])
            {
              v66 = 3;
            }

            else
            {
              v66 = 2;
            }

            [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithShort:", v66), *off_1E798B370}];
          }
        }

        if ([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_12_27() "input")] == 11)
        {
          [OUTLINED_FUNCTION_12_27() numberOfFramesAddedForMultiFrameProcessing];
          [OUTLINED_FUNCTION_12_27() totalExposureTimesOfFramesAddedForMultiFrameProcessing];
          [OUTLINED_FUNCTION_12_27() minExposureTimesOfFramesAddedForMultiFrameProcessing];
          [OUTLINED_FUNCTION_12_27() maxExposureTimesOfFramesAddedForMultiFrameProcessing];
          v68 = OUTLINED_FUNCTION_87_1(v67);
          [v59 addEntriesFromDictionary:v68];

          v69 = [objc_msgSend(OUTLINED_FUNCTION_12_27() "input")];
          OUTLINED_FUNCTION_26_10(v69);
          LODWORD(v65) = MEMORY[0x1E696AD98];
          v70 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_12_27(), "input"), "ispMotionHighPassFilterConvergenceFlags")}];
          OUTLINED_FUNCTION_26_10(v70);
        }

        else
        {
          [v59 setObject:&unk_1F2244068 forKeyedSubscript:@"CompositeImage"];
        }

        if ([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_12_27() "input")])
        {
          [objc_msgSend(OUTLINED_FUNCTION_12_27() "output")];
          [objc_msgSend(OUTLINED_FUNCTION_12_27() "output")];
          v65 = v118;
          [OUTLINED_FUNCTION_12_27() demosaicedRawErr];
          v71 = OUTLINED_FUNCTION_51_0();
          [(BWNRFProcessorController *)v71 _propagateDemosaicedRawPixelBuffer:v72 demosaicedRawMetadata:v73 outputSampleBuffer:v65 error:v74];
        }

        if (dword_1EB58E0E0)
        {
          v75 = OUTLINED_FUNCTION_25_9();
          OUTLINED_FUNCTION_63_5(v75);
          OUTLINED_FUNCTION_4_0();
          if (v65)
          {
            [objc_msgSend(OUTLINED_FUNCTION_62_4() "settings")];
            LODWORD(v116.value) = 136315651;
            *(&v116.value + 4) = "[BWNRFProcessorController _processUBFusion]";
            LOWORD(v116.flags) = 2113;
            *(&v116.flags + 2) = 0x1E696A000uLL;
            OUTLINED_FUNCTION_38_9();
            OUTLINED_FUNCTION_5_1();
          }

          OUTLINED_FUNCTION_1_63();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v76 = OUTLINED_FUNCTION_12_27();
        [(BWNRFProcessorRequest *)v76 imageType];
        [OUTLINED_FUNCTION_12_27() input];
        [OUTLINED_FUNCTION_12_27() err];
        [OUTLINED_FUNCTION_9_5() processorController:? didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
        goto LABEL_57;
      }

      v13 = [v4 fusionMode];
      if (v13 == 1)
      {
        if (!BWSampleBufferGetAttachedMedia(v118, 0x1F21AAAF0))
        {
          v114 = 0x1F21AAAF0;
          v14 = MEMORY[0x1E695DEC8];
          v15 = &v114;
          v16 = 1;
          goto LABEL_18;
        }
      }

      else if (v13 == 2)
      {
        v115[0] = @"Depth";
        v115[1] = 0x1F21AABD0;
        v115[2] = 0x1F21AAB10;
        v115[3] = 0x1F21AAB50;
        v14 = MEMORY[0x1E695DEC8];
        v15 = v115;
        v16 = 4;
LABEL_18:
        v17 = [v14 arrayWithObjects:v15 count:v16];
        goto LABEL_20;
      }

      v17 = 0;
LABEL_20:
      v18 = [objc_msgSend(OUTLINED_FUNCTION_12_27() "input")];
      v110 = 0u;
      v111 = 0u;
      v112 = 0u;
      v113 = 0u;
      v26 = OUTLINED_FUNCTION_62_0(v18, v19, v20, v21, v22, v23, v24, v25, v79, v81, v83, v6, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, 0);
      if (v26)
      {
        v27 = v26;
        v28 = *v111;
        do
        {
          for (k = 0; k != v27; ++k)
          {
            if (*v111 != v28)
            {
              objc_enumerationMutation(v17);
            }

            v30 = *(*(&v110 + 1) + 8 * k);
            AttachedMedia = BWSampleBufferGetAttachedMedia(v18, v30);
            BWSampleBufferSetAttachedMedia(v118, v30, AttachedMedia);
          }

          v27 = OUTLINED_FUNCTION_62_0(v32, v33, v34, v35, v36, v37, v38, v39, v80, v82, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110);
        }

        while (v27);
      }

      goto LABEL_27;
    }
  }

LABEL_57:
  if ([OUTLINED_FUNCTION_12_27() err])
  {
    if (v6)
    {
      v77 = v6;
    }

    else
    {
      v77 = MEMORY[0x1E695E0F8];
    }

    v86 = @"UBFusionFailure";
    v87 = v77;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
    v78 = OUTLINED_FUNCTION_3_30();
    [BWNRFProcessorController _handleErrorRecoveryWithFailureMetadata:v78];
  }

  if (v118)
  {
    CFRelease(v118);
  }
}

- (void)_processDigitalFlash
{
  if (a1)
  {
    if (([objc_msgSend(objc_msgSend(*(a1 + 216) "input")] & 0x800000000) != 0)
    {

      [(BWNRFProcessorController *)a1 _processRawNightMode];
    }

    else
    {

      [(BWNRFProcessorController *)a1 _processUBFusion];
    }
  }
}

- (void)_processRawNightMode
{
  if (a1)
  {
    v51 = 0;
    v52 = 0;
    v5 = [*(a1 + 216) rawNightModeOutputFrame];
    [OUTLINED_FUNCTION_12_27() output];
    OUTLINED_FUNCTION_80_1();
    if (v6)
    {
      v7 = OUTLINED_FUNCTION_25_9();
      os_log_type_enabled(v7, v50);
      OUTLINED_FUNCTION_30();
      if (v2)
      {
        [objc_msgSend(objc_msgSend(*(a1 + 216) "input")];
        OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_0_51();
        OUTLINED_FUNCTION_11_0();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_56_0();
    }

    if ([OUTLINED_FUNCTION_12_27() err])
    {
      v8 = [objc_msgSend(v5 "metadata")];
      if (!v8)
      {
        v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      [OUTLINED_FUNCTION_12_27() err];
      [v8 setObject:objc_msgSend(OUTLINED_FUNCTION_8() forKeyedSubscript:{"numberWithInt:"), @"RawNightModeAddFrameFailure"}];
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      [*(a1 + 88) process];
      [OUTLINED_FUNCTION_12_27() setErr:?];
      objc_autoreleasePoolPop(v9);
      v8 = [objc_msgSend(v5 "metadata")];
      if (![OUTLINED_FUNCTION_12_27() err])
      {
        [(BWNRFProcessorController *)a1 _prepareProcessorForProcessingType:?];
        [OUTLINED_FUNCTION_12_27() setErr:?];
        if (![OUTLINED_FUNCTION_12_27() err])
        {
          v10 = [v5 completionStatus];
          v11 = OUTLINED_FUNCTION_12_27();
          [(BWNRFProcessorRequest *)v11 processingType];
          v12 = OUTLINED_FUNCTION_46_8();
          [(BWNRFProcessorController *)v12 _logCompletionStatus:v10 processingType:v13 request:v14];
          v15 = [objc_msgSend(OUTLINED_FUNCTION_12_27() "input")];
          BWCMSampleBufferCreateDeepCopyWithNewPixelBuffer(v15, [v5 pixelBuffer], 0, (a1 + 168), &v52);
          [OUTLINED_FUNCTION_12_27() setErr:?];
          if (![OUTLINED_FUNCTION_12_27() err])
          {
            [v5 noiseMapPixelBuffer];
            v16 = OUTLINED_FUNCTION_39_9();
            CMSetAttachment(v16, v17, v18, 1u);
            v19 = CMGetAttachment(v52, *off_1E798A3C8, 0);
            [v19 addEntriesFromDictionary:v8];
            [*(a1 + 88) addFrame:v52];
            v20 = objc_autoreleasePoolPush();
            [*(a1 + 88) process];
            [OUTLINED_FUNCTION_12_27() setErr:?];
            objc_autoreleasePoolPop(v20);
            if (![OUTLINED_FUNCTION_12_27() err])
            {
              [v1 completionStatus];
              v21 = OUTLINED_FUNCTION_46_8();
              [(BWNRFProcessorController *)v21 _logCompletionStatus:v22 processingType:5 request:v23];
              v24 = [objc_msgSend(OUTLINED_FUNCTION_12_27() "input")];
              BWCMSampleBufferCreateCopyWithNewPixelBuffer(v24, [v1 pixelBuffer], (a1 + 168), &v51);
              [OUTLINED_FUNCTION_12_27() setErr:?];
              if (![OUTLINED_FUNCTION_12_27() err])
              {
                if ([objc_msgSend(OUTLINED_FUNCTION_12_27() "output")])
                {
                  OUTLINED_FUNCTION_91_3();
                  [objc_msgSend(OUTLINED_FUNCTION_12_27() "output")];
                  v25 = OUTLINED_FUNCTION_39_9();
                  OUTLINED_FUNCTION_66_2(v25, v26, v27, v28);
                }

                CMSetAttachment(v51, @"HasUnreliableBracketingMetadata", MEMORY[0x1E695E118], 1u);
                [objc_msgSend(OUTLINED_FUNCTION_12_27() "output")];
                [OUTLINED_FUNCTION_7() addEntriesFromDictionary:?];
                [OUTLINED_FUNCTION_12_27() numberOfFramesAddedForMultiFrameProcessing];
                [OUTLINED_FUNCTION_12_27() totalExposureTimesOfFramesAddedForMultiFrameProcessing];
                [OUTLINED_FUNCTION_12_27() minExposureTimesOfFramesAddedForMultiFrameProcessing];
                [OUTLINED_FUNCTION_12_27() maxExposureTimesOfFramesAddedForMultiFrameProcessing];
                v30 = OUTLINED_FUNCTION_87_1(v29);
                [v19 addEntriesFromDictionary:v30];

                v31 = [objc_msgSend(OUTLINED_FUNCTION_12_27() "input")];
                OUTLINED_FUNCTION_26_10(v31);
                LODWORD(v32) = MEMORY[0x1E696AD98];
                v33 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_12_27(), "input"), "ispMotionHighPassFilterConvergenceFlags")}];
                OUTLINED_FUNCTION_26_10(v33);
                if ([OUTLINED_FUNCTION_12_27() processSmartStyleRenderingInput])
                {
                  LODWORD(v32) = [objc_msgSend(OUTLINED_FUNCTION_12_27() "output")];
                  [objc_msgSend(OUTLINED_FUNCTION_12_27() "output")];
                  v34 = OUTLINED_FUNCTION_17_16();
                  BWSampleBufferSetAttachedMediaFromPixelBuffer(v34, v35, v36, v37, v38, v39, 0);
                }

                if ([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_12_27() "input")])
                {
                  [objc_msgSend(OUTLINED_FUNCTION_12_27() "output")];
                  [objc_msgSend(OUTLINED_FUNCTION_12_27() "output")];
                  v32 = v51;
                  [OUTLINED_FUNCTION_12_27() demosaicedRawErr];
                  v40 = OUTLINED_FUNCTION_51_0();
                  [(BWNRFProcessorController *)v40 _propagateDemosaicedRawPixelBuffer:v41 demosaicedRawMetadata:v42 outputSampleBuffer:v32 error:v43];
                }

                if (*(v3 + 224))
                {
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  OUTLINED_FUNCTION_63_5(os_log_and_send_and_compose_flags_and_os_log_type);
                  OUTLINED_FUNCTION_4_0();
                  if (v32)
                  {
                    [objc_msgSend(OUTLINED_FUNCTION_62_4() "settings")];
                    OUTLINED_FUNCTION_20();
                    OUTLINED_FUNCTION_0_51();
                    OUTLINED_FUNCTION_5_1();
                  }

                  OUTLINED_FUNCTION_1_63();
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                v45 = OUTLINED_FUNCTION_12_27();
                [(BWNRFProcessorRequest *)v45 imageType];
                [OUTLINED_FUNCTION_12_27() input];
                [OUTLINED_FUNCTION_12_27() err];
                [OUTLINED_FUNCTION_9_5() processorController:? didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
              }
            }
          }
        }
      }
    }

    if ([OUTLINED_FUNCTION_12_27() err])
    {
      OUTLINED_FUNCTION_41(MEMORY[0x1E695DF20], v46, v47, v48);
      v49 = OUTLINED_FUNCTION_3_30();
      [BWNRFProcessorController _handleErrorRecoveryWithFailureMetadata:v49];
    }

    if (v51)
    {
      CFRelease(v51);
    }

    if (v52)
    {
      CFRelease(v52);
    }
  }
}

- (void)_processDeepFusion
{
  if (a1)
  {
    OUTLINED_FUNCTION_59_0();
    v4 = v3;
    v5 = [OUTLINED_FUNCTION_29_7(v3) input];
    if (dword_1EB58E0E0)
    {
      v6 = OUTLINED_FUNCTION_40_8();
      OUTLINED_FUNCTION_19_3(v6);
      OUTLINED_FUNCTION_4_0();
      if (v1)
      {
        [objc_msgSend(v5 "settings")];
        OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_0_51();
        OUTLINED_FUNCTION_5_1();
      }

      OUTLINED_FUNCTION_1_63();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (![OUTLINED_FUNCTION_13_21() err])
    {
      v7 = *(v4 + *(v2 + 3324));
      if (!v7 || v7[49] != 1 || (v13 = *(v4 + 88), [objc_msgSend(v7 "input")], v14 = OUTLINED_FUNCTION_70(), nrfp_addFrame_0(v14, v15, v13, v16, 1), !objc_msgSend(OUTLINED_FUNCTION_13_21(), "err")))
      {
        [*(v4 + 88) process];
        [OUTLINED_FUNCTION_13_21() setErr:?];
        if (![OUTLINED_FUNCTION_13_21() err])
        {
          [objc_msgSend(*(v4 + 88) "output")];
          v8 = OUTLINED_FUNCTION_13_21();
          [(BWNRFProcessorRequest *)v8 processingType];
          v9 = OUTLINED_FUNCTION_70();
          [(BWNRFProcessorController *)v9 _logCompletionStatus:v10 processingType:v11 request:v12];
          if ([*(v4 + 64) deepFusionWaitForProcessingToFinish])
          {
            [*(v4 + 88) finishProcessing];
          }
        }
      }
    }

    if ([OUTLINED_FUNCTION_13_21() err] && objc_msgSend(objc_msgSend(v5, "captureSettings"), "deliverDeferredPhotoProxyImage") && (objc_msgSend(OUTLINED_FUNCTION_13_21(), "deliveredDeferredProxyImage") & 1) == 0)
    {
      [objc_msgSend(objc_msgSend(v5 "captureSettings")];
      [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(OUTLINED_FUNCTION_13_21(), "err")}];
      OUTLINED_FUNCTION_41(MEMORY[0x1E695DF20], v17, v18, v19);
      v20 = OUTLINED_FUNCTION_3_30();
      [BWNRFProcessorController _handleErrorRecoveryWithFailureMetadata:v20];
    }

    OUTLINED_FUNCTION_58_0();
  }
}

- (void)_processLearnedFusion
{
  if (a1)
  {
    OUTLINED_FUNCTION_59_0();
    a45 = v47;
    a46 = v48;
    v50 = v49;
    a33 = 0;
    v51 = [*(v49 + 216) input];
    if (dword_1EB58E0E0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_65_4(os_log_and_send_and_compose_flags_and_os_log_type);
      OUTLINED_FUNCTION_4_0();
      if (v46)
      {
        [objc_msgSend(v51 "settings")];
        OUTLINED_FUNCTION_6_39();
        OUTLINED_FUNCTION_5_1();
      }

      OUTLINED_FUNCTION_1_63();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [*(v50 + 88) process];
    [OUTLINED_FUNCTION_19_14() setErr:?];
    if (![OUTLINED_FUNCTION_19_14() err])
    {
      v53 = [v51 referenceFrame];
      if (v53)
      {
        v54 = v53;
        v55 = [objc_msgSend(OUTLINED_FUNCTION_19_14() "output")];
        BWCMSampleBufferCreateCopyWithNewPixelBuffer(v54, v55, (v50 + 168), &a33);
        [OUTLINED_FUNCTION_19_14() setErr:?];
        if (![OUTLINED_FUNCTION_19_14() err])
        {
          CMSetAttachments(a33, [v51 referenceFrameAttachments], 1u);
          CMSetAttachment(a33, @"HasUnreliableBracketingMetadata", MEMORY[0x1E695E118], 1u);
          v56 = *off_1E798A3C8;
          v57 = CMGetAttachment(a33, *off_1E798A3C8, 0);
          v58 = CMGetAttachment([v51 referenceFrame], v56, 0);
          FigCaptureMetadataUtilitiesCopyZoomRelatedMetadata(v58, v57);
          [objc_msgSend(OUTLINED_FUNCTION_19_14() "output")];
          [OUTLINED_FUNCTION_7() addEntriesFromDictionary:?];
          [v57 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_19_14(), "output"), "fusionMode")), *off_1E798A670}];
          if ([objc_msgSend(OUTLINED_FUNCTION_19_14() "output")])
          {
            v59 = OUTLINED_FUNCTION_91_3();
            v60 = a33;
            v61 = [objc_msgSend(OUTLINED_FUNCTION_19_14() "output")];
            BWSampleBufferSetAttachedMediaFromPixelBuffer(v60, 0x1F217BF50, v61, (v50 + 200), v59, 0, 1);
          }

          if ([OUTLINED_FUNCTION_19_14() processSmartStyleRenderingInput])
          {
            BWCopyLTMMetadata(v58, v57);
            v62 = [objc_msgSend(OUTLINED_FUNCTION_19_14() "output")];
            [objc_msgSend(OUTLINED_FUNCTION_19_14() "output")];
            v63 = OUTLINED_FUNCTION_39_9();
            OUTLINED_FUNCTION_67_3(v63, v64, v62, v65, v66);
          }

          v67 = BWPixelBufferDimensionsFromSampleBuffer(v54);
          v68 = [objc_msgSend(OUTLINED_FUNCTION_19_14() "output")];
          Width = CVPixelBufferGetWidth(v68);
          v70 = [objc_msgSend(OUTLINED_FUNCTION_19_14() "output")];
          v71 = Width | (CVPixelBufferGetHeight(v70) << 32);
          if (v67 != v71)
          {
            FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(v57, v67, v71, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
          }

          if ([objc_msgSend(v51 "processingSettings")])
          {
            [objc_msgSend(OUTLINED_FUNCTION_19_14() "output")];
            [objc_msgSend(OUTLINED_FUNCTION_19_14() "output")];
            v72 = a33;
            [OUTLINED_FUNCTION_19_14() demosaicedRawErr];
            v73 = OUTLINED_FUNCTION_51_0();
            [(BWNRFProcessorController *)v73 _propagateDemosaicedRawPixelBuffer:v74 demosaicedRawMetadata:v75 outputSampleBuffer:v72 error:v76];
          }

          if ([objc_msgSend(objc_msgSend(v51 "captureSettings")])
          {
            BWStillImageSetProcessingFlagsForSampleBuffer(a33, 0x8000000);
          }

          if (([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_19_14() "input")] & 0x100000) != 0)
          {
            BWStillImageSetProcessingFlagsForSampleBuffer(a33, 2);
          }

          v77 = [objc_msgSend(*(v50 + 88) "output")];
          v78 = OUTLINED_FUNCTION_19_14();
          [(BWNRFProcessorRequest *)v78 processingType];
          v79 = OUTLINED_FUNCTION_46_8();
          [(BWNRFProcessorController *)v79 _logCompletionStatus:v77 processingType:v80 request:v81];
        }
      }
    }

    v82 = OUTLINED_FUNCTION_19_14();
    [(BWNRFProcessorRequest *)v82 imageType];
    [OUTLINED_FUNCTION_19_14() input];
    [OUTLINED_FUNCTION_19_14() err];
    OUTLINED_FUNCTION_46_1();
    [v83 processorController:? didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
    if (a33)
    {
      CFRelease(a33);
    }

    OUTLINED_FUNCTION_58_0();
  }
}

- (id)externalMemoryDescriptorForResolutionFlavors:(id)a3
{
  v4 = [(BWNRFProcessorController *)&self->super.super.isa _prepareDescriptorsByProcessingTypeForResolutionFlavors:a3];
  if ([(BWNRFProcessorControllerConfiguration *)self->_configuration learnedNRMode])
  {
    v5 = [(BWNRFProcessorControllerConfiguration *)self->_configuration learnedNRInputFormat]== 0;
  }

  else
  {
    v5 = 0;
  }

  v9[1] = [MEMORY[0x1E696AD98] numberWithBool:{v5, *off_1E798D1F0, *off_1E798D1E8, v4}];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:2];
  return -[NRFProcessor externalMemoryDescriptorForConfiguration:](self->_nrfProcessor, "externalMemoryDescriptorForConfiguration:", [objc_alloc(MEMORY[0x1E69916C8]) initWithMaxInputDimensions:0 inputPixelFormat:0 maxOutputDimensions:0 cmiResourceEnabled:0 processorSpecificOptions:v6]);
}

- (void)processor:(id)a3 outputReadyWithFrameType:(int)a4 outputPixelBuffer:(__CVBuffer *)a5 outputMetadata:(id)a6 error:(int)a7
{
  if (a7)
  {
LABEL_27:
    OUTLINED_FUNCTION_57_0();
    return;
  }

  if (a4 == 2)
  {
    v10 = [(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)[(BWNRFProcessorRequest *)self->_currentRequest input] captureSettings] captureType];
    if (a5 || v10 != 13)
    {
      v11 = [(BWNRFProcessorRequest *)self->_currentRequest deepFusionOutput];
      if ([(NRFDeepFusionOutput *)v11 refFrameTransformIsValid]& 1) != 0 && (objc_opt_respondsToSelector())
      {
        v12 = [(BWNRFProcessorInput *)[(BWNRFProcessorRequest *)self->_currentRequest input] evMinusReferenceFrame];
        memset(&v62, 0, sizeof(v62));
        CMSampleBufferGetPresentationTimeStamp(&v62, v12);
        v13 = [MEMORY[0x1E695DF70] array];
        for (i = 0; i != 3; ++i)
        {
          for (j = 0; j != 3; ++j)
          {
            v16 = MEMORY[0x1E696AD98];
            [(NRFDeepFusionOutput *)v11 refFrameTransform];
            OUTLINED_FUNCTION_49_0(v17, v18);
            *v60 = v19;
            v60[2] = v20;
            v61 = v21;
            v60[4] = v22;
            LODWORD(v19) = *(&v60[2 * i] & 0xFFFFFFFFFFFFFFF3 | (4 * (j & 3)));
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

        v25 = [(BWNRFProcessorRequest *)currentRequest input];
        v59 = v62;
        [(BWNRFProcessorControllerDelegate *)delegate processorController:self didSelectNewReferenceFrameWithPTS:&v59 transform:v13 processorInput:v25];
      }

      if ([(NRFDeepFusionOutput *)[(BWNRFProcessorRequest *)self->_currentRequest deepFusionOutput] gainMapOutputPixelBuffer])
      {
        [(BWNRFProcessorRequest *)self->_currentRequest deepFusionOutput];
        if ((objc_opt_respondsToSelector() & 1) != 0 && [(NRFDeepFusionOutput *)[(BWNRFProcessorRequest *)self->_currentRequest deepFusionOutput] gainMapOutputMetadata])
        {
          v26 = [(NRFDeepFusionOutput *)[(BWNRFProcessorRequest *)self->_currentRequest deepFusionOutput] gainMapOutputMetadata];
        }

        else
        {
          v26 = [MEMORY[0x1E695DF90] dictionary];
        }

        [v26 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", -[FigCaptureCameraParameters gainMapVersion](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters, "sharedInstance"), "gainMapVersion")), *off_1E798A688}];
        v28 = self->_currentRequest;
        if (v28)
        {
          v29 = v28->_delegate;
        }

        else
        {
          v29 = 0;
        }

        [(BWNRFProcessorRequest *)v28 input];
        OUTLINED_FUNCTION_52_0();
        OUTLINED_FUNCTION_64_1(v29, v30, self);
      }

      v27 = self->_currentRequest;
LABEL_25:
      [(BWNRFProcessorRequest *)v27 input];
      OUTLINED_FUNCTION_52_0();
      OUTLINED_FUNCTION_46_1();
LABEL_26:
      [v31 processorController:? didFinishProcessingBuffer:? metadata:? type:? captureFrameFlags:? processorInput:? err:?];
    }

    goto LABEL_27;
  }

  if (!a5)
  {
    goto LABEL_27;
  }

  v27 = self->_currentRequest;
  switch(a4)
  {
    case 1:
      [(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)[(BWNRFProcessorRequest *)v27 input] captureSettings] captureType];
      [(NRFDeepFusionOutput *)[(BWNRFProcessorRequest *)self->_currentRequest deepFusionOutput] fusionMode];
      [a6 setObject:objc_msgSend(OUTLINED_FUNCTION_7() forKeyedSubscript:{"numberWithUnsignedInt:"), *off_1E798A670}];
      v47 = self->_currentRequest;
      if (v47 && v47->_processErrorRecoveryProxy)
      {
        v48 = [(BWNRFProcessorInput *)[(BWNRFProcessorRequest *)v47 input] errorRecoveryFrame];
      }

      else
      {
        v48 = [(BWNRFProcessorInput *)[(BWNRFProcessorRequest *)v47 input] referenceFrame];
      }

      v37 = OUTLINED_FUNCTION_84_2(v48, 168);
      v49 = self->_currentRequest;
      if (v49 && v49->_processErrorRecoveryProxy && ([(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)[(BWNRFProcessorRequest *)v49 input] captureSettings] captureFlags]& 0x100000) != 0)
      {
        BWStillImageSetProcessingFlagsForSampleBuffer(v37, 0x8000000);
      }

      if (![(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)[(BWNRFProcessorRequest *)self->_currentRequest input] captureSettings] deliverDeferredPhotoProxyImage])
      {
        goto LABEL_55;
      }

      BWStillImageSetProcessingFlagsForSampleBuffer(v37, 4096);
      [(BWNRFProcessorRequest *)self->_currentRequest setDeliveredDeferredProxyImage:1];
      if ([(BWStillImageProcessingSettings *)[(BWStillImageProcessorControllerInput *)[(BWNRFProcessorRequest *)self->_currentRequest input] processingSettings] provideDemosaicedRaw])
      {
        [(NRFDeepFusionOutput *)[(BWNRFProcessorRequest *)self->_currentRequest deepFusionOutput] linearOutputPixelBuffer];
        [(NRFDeepFusionOutput *)[(BWNRFProcessorRequest *)self->_currentRequest deepFusionOutput] linearOutputMetadata];
        [(BWNRFProcessorRequest *)self->_currentRequest demosaicedRawErr];
        v52 = OUTLINED_FUNCTION_51_0();
        [(BWNRFProcessorController *)v52 _propagateDemosaicedRawPixelBuffer:v53 demosaicedRawMetadata:v54 outputSampleBuffer:v37 error:v55];
      }

      if ([(NRFDeepFusionOutput *)[(BWNRFProcessorRequest *)self->_currentRequest deepFusionOutput] gainMapOutputPixelBuffer])
      {
        [(BWNRFProcessorController *)self _generateGainMapMetadata:?];
        OUTLINED_FUNCTION_66_2(v37, 0x1F217BF50, [(NRFDeepFusionOutput *)[(BWNRFProcessorRequest *)self->_currentRequest deepFusionOutput] gainMapOutputPixelBuffer], &self->_gainMapFormatDescription);
      }

      if ([(BWNRFProcessorRequest *)self->_currentRequest processSmartStyleRenderingInput])
      {
        OUTLINED_FUNCTION_67_3(v37, 0x1F21AAF50, [(NRFDeepFusionOutput *)[(BWNRFProcessorRequest *)self->_currentRequest deepFusionOutput] linearOutputMIWBAppliedPixelBuffer], &self->_demosaicedRawFormatDescription, [(NRFDeepFusionOutput *)[(BWNRFProcessorRequest *)self->_currentRequest deepFusionOutput] linearOutputMIWBAppliedMetadata]);
      }

      v56 = self->_currentRequest;
      if (v56)
      {
        v57 = v56->_delegate;
      }

      else
      {
        v57 = 0;
      }

      v58 = [(BWNRFProcessorRequest *)v56 imageType];
      v41 = [(BWNRFProcessorRequest *)self->_currentRequest input];
      v42 = v57;
      v43 = self;
      v44 = v37;
      v45 = v58;
      v46 = 0;
      break;
    case 3:
    case 4:
    case 5:
    case 6:
      goto LABEL_25;
    case 7:
      v34 = [(BWNRFProcessorRequest *)v27 inferenceInputType];
      v35 = self->_currentRequest;
      if (v35 && (v35->_processErrorRecoveryFrame || v35->_processErrorRecoveryProxy))
      {
        goto LABEL_38;
      }

      v36 = [(BWNRFProcessorInput *)[(BWNRFProcessorRequest *)v35 input] referenceFrame];
      if (!v36)
      {
        v35 = self->_currentRequest;
LABEL_38:
        v36 = [(BWNRFProcessorInput *)[(BWNRFProcessorRequest *)v35 input] errorRecoveryFrame];
      }

      v37 = OUTLINED_FUNCTION_84_2(v36, 176);
      if (v37)
      {
        v38 = 0;
      }

      else
      {
        v38 = 4294954516;
      }

      v39 = self->_currentRequest;
      if (v39)
      {
        v40 = v39->_delegate;
      }

      else
      {
        v40 = 0;
      }

      v41 = [(BWNRFProcessorRequest *)v39 input];
      v42 = v40;
      v43 = self;
      v44 = v37;
      v45 = v34;
      v46 = v38;
      break;
    case 8:
      if ([(BWNRFProcessorRequest *)v27 demosaicedRawErr])
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_57_0();

      [v32 setDemosaicedRawErr:?];
      return;
    case 9:
      [(BWNRFProcessorRequest *)v27 input];
      OUTLINED_FUNCTION_52_0();
      OUTLINED_FUNCTION_46_1();
      goto LABEL_26;
    default:
      goto LABEL_27;
  }

  [(BWNRFProcessorControllerDelegate *)v42 processorController:v43 didFinishProcessingSampleBuffer:v44 type:v45 processorInput:v41 err:v46];
LABEL_55:
  if (!v37)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_57_0();

  CFRelease(v50);
}

- (CMAttachmentBearerRef)_newOutputSampleBufferWithSampleBuffer:(__CVBuffer *)a3 pixelBuffer:(CFTypeRef *)a4 formatDescriptionInOut:(uint64_t)a5 metadataToMerge:
{
  if (result)
  {
    target = 0;
    if (a2 && a3)
    {
      if (BWCMSampleBufferCreateCopyWithNewPixelBuffer(a2, a3, a4, &target))
      {
        FigDebugAssert3();
      }

      else
      {
        v6 = *off_1E798A3C8;
        v7 = [CMGetAttachment(target *off_1E798A3C8];
        [v7 addEntriesFromDictionary:a5];
        CMSetAttachment(target, v6, v7, 1u);
      }
    }

    return target;
  }

  return result;
}

- (void)processor:(id)a3 didSelectFusionMode:(int)a4
{
  [(BWNRFProcessorRequest *)self->_currentRequest input];
  v4 = OUTLINED_FUNCTION_53_1();

  [v4 processorController:? didSelectFusionMode:? processorInput:?];
}

- (id)processorGetInferenceResults:(id)a3
{
  v4 = objc_alloc_init(NSClassFromString(&cfstr_Nrfprocessorin.isa));
  if ([(BWNRFProcessorRequest *)self->_currentRequest inferencesAvailable])
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

    v7 = [(BWNRFProcessorControllerDelegate *)delegate processorController:self newInferencesForProcessorInput:[(BWNRFProcessorRequest *)currentRequest input] inferenceInputBufferType:[(BWNRFProcessorRequest *)self->_currentRequest inferenceInputType]];
    if ([v7 inferenceBufferForAttachedMediaKey:@"PersonSemanticsSkin"])
    {
      [OUTLINED_FUNCTION_17() setSkinMask:?];
    }

    if ([v7 inferenceBufferForAttachedMediaKey:@"PersonSemanticsHair"])
    {
      [OUTLINED_FUNCTION_17() setHairMask:?];
    }

    if ([v7 inferenceBufferForAttachedMediaKey:0x1F21AAD30])
    {
      [OUTLINED_FUNCTION_17() setSkyMask:?];
    }

    if ([(BWNRFProcessorControllerConfiguration *)self->_configuration semanticRenderingVersion]< 4)
    {
      if ([v7 inferenceBufferForAttachedMediaKey:0x1F219E750])
      {
        [OUTLINED_FUNCTION_17() setPersonMask:?];
      }
    }

    else if ([v7 inferenceBufferForAttachedMediaKey:0x1F21AABB0])
    {
      [OUTLINED_FUNCTION_17() setHighResPersonMask:?];
    }

    if (-[BWNRFProcessorControllerConfiguration semanticRenderingVersion](self->_configuration, "semanticRenderingVersion") >= 5 && [v7 inferenceBufferForAttachedMediaKey:0x1F219E7F0])
    {
      [OUTLINED_FUNCTION_17() setLowResGlassesMask:?];
    }

    v8 = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = BWInferenceLowResPersonInstanceMaskKeys();
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v16 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if ([v7 inferenceBufferForAttachedMediaKey:*(*(&v17 + 1) + 8 * v13)])
          {
            [OUTLINED_FUNCTION_7() addObject:?];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v16 count:16];
      }

      while (v11);
    }

    if ([v8 count])
    {
      [v4 setLowResPersonInstanceMasks:v8];
      [v7 inferenceForAttachmentKey:0x1F219E990];
      [OUTLINED_FUNCTION_17() setLowResPersonInstanceConfidences:?];
      [v7 inferenceForAttachmentKey:0x1F219E9B0];
      [OUTLINED_FUNCTION_17() setLowResPersonInstanceBoundingBoxes:?];
    }

    [-[BWStillImageCaptureSettings metadata](-[BWStillImageProcessorControllerInput captureSettings](-[BWNRFProcessorRequest input](self->_currentRequest "input")];
    [OUTLINED_FUNCTION_17() setSmartCameraSceneType:?];
    if ([v7 inferenceForAttachmentKey:0x1F219E6F0])
    {
      [OUTLINED_FUNCTION_17() setSkinToneClassificationsForFaces:?];
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

  v14 = v4;
  OUTLINED_FUNCTION_56();
  return result;
}

- (id)adaptiveBracketingParametersForDigitalFlashMode:(int)a3 frameStatistics:(id)a4 stationary:(BOOL)a5 sphereOffsetEnabled:(BOOL)a6 detectedObjects:(id)a7
{
  if (a3 && (v8 = a6, v9 = a5, [a4 portType], (v13 = objc_msgSend(OUTLINED_FUNCTION_37_0(), "objectForKeyedSubscript:")) != 0))
  {
    v14 = v13;
    NRFStatisticsFromFrameStatistics = nfrp_createNRFStatisticsFromFrameStatistics(self->_nrfProgressiveBracketingStatisticsClass, a4, v9, a7);
    v16 = -[BWNRFAdaptiveBracketingParameters initWithProgressiveBracketingParameters:progressiveBracketingStatisticsClass:]([BWNRFAdaptiveBracketingParameters alloc], [objc_alloc(self->_nrfProgressiveBracketingParametersClass) initWithOptions:v14 portType:objc_msgSend(a4 statistics:"portType") mode:NRFStatisticsFromFrameStatistics sphereOffsetEnabled:{a3 == 2, v8}], self->_nrfProgressiveBracketingStatisticsClass);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)adaptiveBracketingDigitalFlashTotalIntegrationTimesProviderForPortType:(id)a3
{
  v5 = [(NSDictionary *)self->_adaptiveBracketingCaptureParametersByPortType objectForKeyedSubscript:?];
  if (v5)
  {
    v5 = -[BWNRFAdaptiveBracketingParameters initWithProgressiveBracketingParameters:progressiveBracketingStatisticsClass:]([BWNRFAdaptiveBracketingParameters alloc], [objc_alloc(self->_nrfProgressiveBracketingParametersClass) initWithOptions:v5 portType:a3 statistics:0 mode:0 sphereOffsetEnabled:0], self->_nrfProgressiveBracketingStatisticsClass);
  }

  return v5;
}

void __72__BWNRFProcessorController__logCompletionStatus_processingType_request___block_invoke(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  v6 = 0;
  [(BWUBNRFProcessorCompletionStatus *)*(a1 + 32) waitForCompletionWithDescriptionOut:?];
  if (dword_1EB58E0E0)
  {
    v4 = OUTLINED_FUNCTION_22_12();
    os_log_type_enabled(v4, v5);
    OUTLINED_FUNCTION_30();
    if (v1)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", *(a1 + 56)];
      OUTLINED_FUNCTION_5_0();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_56_0();
  }

  objc_autoreleasePoolPop(v3);
}

- (uint64_t)processor:(id *)a1 didSelectProgressiveFusionReferenceFrameIndex:.cold.1(id *a1)
{
  -[BWNRFProcessorInput _setReferenceFrame:]([*a1 input]);
  if ([(BWNRFProcessorRequest *)*a1 keepFramesUntilReferenceFrameSelected])
  {
    [objc_msgSend(*a1 "input")];
  }

  result = objc_opt_respondsToSelector();
  if (result)
  {
    [*a1 input];
    return [OUTLINED_FUNCTION_53_1() processorController:? didSelectLowLightReferenceFrame:? processorInput:?];
  }

  return result;
}

@end