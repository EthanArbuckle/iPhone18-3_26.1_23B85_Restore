@interface BWUBNRFProcessorController
+ (void)initialize;
- (BOOL)finishProcessingCurrentInputNow;
- (BWUBNRFProcessorController)initWithConfiguration:(id)a3;
- (CMAttachmentBearerRef)_newOutputSampleBufferWithSampleBuffer:(__CVBuffer *)a3 pixelBuffer:(CFTypeRef *)a4 formatDescriptionInOut:(uint64_t)a5 metadataToMerge:;
- (id)adaptiveBracketingDigitalFlashTotalIntegrationTimesProviderForPortType:(id)a3;
- (id)adaptiveBracketingParametersForDigitalFlashMode:(int)a3 frameStatistics:(id)a4 stationary:(BOOL)a5 sphereOffsetEnabled:(BOOL)a6 detectedObjects:(id)a7;
- (id)externalMemoryDescriptorForResolutionFlavors:(id)a3;
- (id)processorGetInferenceResults:(id)a3;
- (int)enqueueInputForProcessing:(id)a3 delegate:(id)a4 processErrorRecoveryFrame:(BOOL)a5 processOriginalImage:(BOOL)a6 clientBracketSequenceNumber:(int)a7 processSemanticRendering:(BOOL)a8 provideInferenceInputImageForProcessing:(BOOL)a9 inferencesAvailable:(BOOL)a10;
- (int)progressiveLowLightFusionBatchSize;
- (uint64_t)_loadNRFProcessor;
- (uint64_t)_setupNRFProcessorWithprepareDescriptorsByProcessingType:(uint64_t)a1;
- (uint64_t)_setupProcessorForProcessingType:(uint64_t)a1;
- (uint64_t)_updateStateIfNeeded;
- (unint64_t)_setupProcessor;
- (void)_generateGainMapMetadata:(uint64_t)a1;
- (void)_logCompletionStatus:(int)a3 processingType:(void *)a4 request:;
- (void)_prepareDescriptorsByProcessingTypeForResolutionFlavors:(void *)result;
- (void)_processDeepFusion;
- (void)_processUBFusion;
- (void)_propagateDemosaicedRawPixelBuffer:(void *)a3 demosaicedRawMetadata:(opaqueCMSampleBuffer *)a4 outputSampleBuffer:(int)a5 error:;
- (void)_releaseNRFProcessorResources;
- (void)_serviceNextRequest;
- (void)_singleImageProcessSampleBuffer:(int)a3 sampleBufferOut:(int)a4;
- (void)cancelProcessing;
- (void)dealloc;
- (void)input:(id)a3 addFrame:(opaqueCMSampleBuffer *)a4 isReferenceFrame:(BOOL)a5;
- (void)inputReceivedAllFrames:(id)a3;
- (void)processor:(id)a3 didSelectFusionMode:(int)a4;
- (void)processor:(id)a3 didSelectProgressiveFusionReferenceFrameIndex:(int)a4;
- (void)processor:(id)a3 outputReadyWithFrameType:(int)a4 outputPixelBuffer:(__CVBuffer *)a5 outputMetadata:(id)a6 error:(int)a7;
@end

@implementation BWUBNRFProcessorController

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWUBNRFProcessorController)initWithConfiguration:(id)a3
{
  v9.receiver = self;
  v9.super_class = BWUBNRFProcessorController;
  v4 = [(BWUBNRFProcessorController *)&v9 init];
  if (v4)
  {
    v4->_configuration = a3;
    v4->_requestQueue = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [[FigStateMachine alloc] initWithLabel:@"BWUBNRFProcessorController state machine" stateCount:[FigStateMachine indexForState:?], 1, v4];
    [(FigStateMachine *)v6 setPerformsAtomicStateTransitions:0];
    [(FigStateMachine *)v6 setLabel:@"Idle" forState:1];
    [(FigStateMachine *)v6 setLabel:@"Ready" forState:2];
    [(FigStateMachine *)v6 setLabel:@"WaitingForFrames" forState:4];
    [(FigStateMachine *)v6 setLabel:@"ProcessingSingleImage" forState:8];
    [(FigStateMachine *)v6 setLabel:@"ProcessingOriginalImage" forState:16];
    [(FigStateMachine *)v6 setLabel:@"ProcessingUBFusion" forState:32];
    [(FigStateMachine *)v6 setLabel:@"ProcessingUBLowLightFusion" forState:64];
    [(FigStateMachine *)v6 setLabel:@"ProcessingDeepFusion" forState:128];
    [(FigStateMachine *)v6 whenTransitioningToStates:1 callHandler:&__block_literal_global_10];
    [(FigStateMachine *)v6 whenTransitioningToStates:2 callHandler:&__block_literal_global_684];
    [(FigStateMachine *)v6 whenTransitioningToState:4 callHandler:&__block_literal_global_686];
    [(FigStateMachine *)v6 whenTransitioningToState:8 callHandler:&__block_literal_global_688];
    [(FigStateMachine *)v6 whenTransitioningToState:16 callHandler:&__block_literal_global_690];
    [(FigStateMachine *)v6 whenTransitioningToState:32 callHandler:&__block_literal_global_692];
    [(FigStateMachine *)v6 whenTransitioningToState:64 callHandler:&__block_literal_global_694];
    [(FigStateMachine *)v6 whenTransitioningToState:128 callHandler:&__block_literal_global_696];
    v4->_stateMachine = v6;
    [a3 figThreadPriority];
    v4->_completionStatusQueue = FigDispatchQueueCreateWithPriority();
    v7 = objc_autoreleasePoolPush();
    if ([(BWUBNRFProcessorController *)v4 _loadNRFProcessor]|| (BWAllStillImageResolutionFlavors(), v8 = [BWUBNRFProcessorController _prepareDescriptorsByProcessingTypeForResolutionFlavors:v4], [(BWUBNRFProcessorController *)v4 _setupNRFProcessorWithprepareDescriptorsByProcessingType:v8]))
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
  [(BWUBNRFProcessorController *)&self->super.super.isa _releaseNRFProcessorResources];
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

  gainMapFormatDescription = self->_gainMapFormatDescription;
  if (gainMapFormatDescription)
  {
    CFRelease(gainMapFormatDescription);
  }

  v7.receiver = self;
  v7.super_class = BWUBNRFProcessorController;
  [(BWStillImageProcessorController *)&v7 dealloc];
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
    v26 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v26, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWUBNRFProcessorController.m", 1353, @"LastShownDate:BWUBNRFProcessorController.m:1353", @"LastShownBuild:BWUBNRFProcessorController.m:1353", 0);
    v27 = v26;
LABEL_12:
    free(v27);
    return -12780;
  }

  if (v13 && v12)
  {
    v24 = FigCaptureGetFrameworkRadarComponent();
    v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v28 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v24, v28, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWUBNRFProcessorController.m", 1354, @"LastShownDate:BWUBNRFProcessorController.m:1354", @"LastShownBuild:BWUBNRFProcessorController.m:1354", 0);
    v27 = v28;
    goto LABEL_12;
  }

  v29 = a8;
  v17 = objc_alloc_init(self->_nrfUBFusionOutputClass);
  [v17 setCompletionStatus:objc_alloc_init(self->_nrfCompletionStatusClass)];
  v18 = a3;
  if ([objc_msgSend(a3 "captureStreamSettings")] == 12)
  {
    v19 = objc_alloc_init(self->_nrfDeepFusionOutputClass);
    [v19 setCompletionStatus:objc_alloc_init(self->_nrfCompletionStatusClass)];
  }

  else
  {
    v19 = 0;
  }

  v20 = [[BWUBNRFProcessorRequest alloc] initWithInput:v18 output:v17 deepFusionOutput:v19 processErrorRecoveryFrame:v13 processOriginalImage:v12 clientBracketSequenceNumber:a7 processSemanticRendering:v29 provideInferenceInputImageForProcessing:a9 inferencesAvailable:a10 delegate:a4];

  [(NSMutableArray *)self->_requestQueue addObject:v20];
  if ([(FigStateMachine *)self->_stateMachine currentState]== 1)
  {
    [(FigStateMachine *)self->_stateMachine transitionToState:2];
  }

  return 0;
}

- (void)cancelProcessing
{
  [(NSMutableArray *)self->_requestQueue removeAllObjects];
  [(BWUBNRFProcessorRequest *)self->_currentRequest setErr:4294950490];
  [(BWUBNRFProcessorController *)self _serviceNextRequest];
  [(NRFProcessor *)self->_nrfProcessor setOutput:0];
  [(NRFProcessor *)self->_nrfProcessor resetState];

  [(BWUBNRFProcessorController *)self _updateStateIfNeeded];
}

- (void)processor:(id)a3 didSelectProgressiveFusionReferenceFrameIndex:(int)a4
{
  if (dword_1EB58DE60)
  {
    v16 = 0;
    v15 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = [(BWStillImageCaptureStreamSettings *)[(BWStillImageProcessorControllerInput *)[(BWUBNRFProcessorRequest *)self->_currentRequest input:a3] captureStreamSettings] referenceFrameIndex];
  if ((a4 & 0x80000000) == 0 && v7 < 0 && ![(BWUBNRFProcessorInput *)[(BWUBNRFProcessorRequest *)self->_currentRequest input] referenceFrame])
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = [(BWUBNRFProcessorRequest *)self->_currentRequest input];
      if (v10)
      {
        v10 = v10->_frames;
      }

      if ([(BWUBNRFProcessorInput *)v10 count]<= v8)
      {
        break;
      }

      v11 = [(BWUBNRFProcessorRequest *)self->_currentRequest input];
      if (v11)
      {
        v11 = v11->_frames;
      }

      v12 = [(BWUBNRFProcessorInput *)v11 objectAtIndexedSubscript:v8];
      if ([(BWUBNRFProcessorRequest *)self->_currentRequest useFrameForMultiFrameProcessing:v12])
      {
        if (v9 == a4)
        {
          if (v12)
          {
            [BWUBNRFProcessorController processor:? didSelectProgressiveFusionReferenceFrameIndex:?];
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
  result = [(BWUBNRFProcessorControllerConfiguration *)self->_configuration lowLightFusionEnabled];
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
    if ([objc_msgSend(OUTLINED_FUNCTION_18_5() "sensorConfigurationsByPortType")] && objc_msgSend(OUTLINED_FUNCTION_18_5(), "inputFormat") && objc_msgSend(OUTLINED_FUNCTION_18_5(), "outputFormat"))
    {
      v2 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters nrfVersion];
      if (v2)
      {
        v3 = v2;
        *(a1 + 96) = [MEMORY[0x1E696AEC0] stringWithFormat:@"NRFProcessorV%d", v2];
        v4 = objc_alloc(MEMORY[0x1E695DFD8]);
        [objc_msgSend(OUTLINED_FUNCTION_18_5() "sensorConfigurationsByPortType")];
        *(a1 + 72) = [OUTLINED_FUNCTION_8() initWithArray:?];
        v5 = BWLoadProcessorBundle(@"NRF", v3);
        if (v5)
        {
          v6 = v5;
          v7 = [v5 classNamed:@"NRFUBFusionOutput"];
          *(a1 + 120) = v7;
          if (v7)
          {
            v8 = [v6 classNamed:@"NRFDeepFusionOutput"];
            *(a1 + 152) = v8;
            if (v8)
            {
              v9 = [v6 classNamed:@"NRFCompletionStatus"];
              *(a1 + 168) = v9;
              if (v9)
              {
                v10 = [v6 classNamed:@"NRFProgressiveBracketingStatistics"];
                *(a1 + 128) = v10;
                if (v10)
                {
                  v11 = [v6 classNamed:@"NRFProgressiveBracketingParameters"];
                  *(a1 + 136) = v11;
                  if (v11)
                  {
                    v12 = objc_alloc([v6 classNamed:*(a1 + 96)]);
                    [OUTLINED_FUNCTION_18_5() metalCommandQueue];
                    v13 = [OUTLINED_FUNCTION_8() initWithCommandQueue:?];
                    *(a1 + 88) = v13;
                    if (v13)
                    {
                      v14 = objc_alloc_init([v6 classNamed:@"NRFPrepareDescriptor"]);
                      *(a1 + 104) = v14;
                      if (v14)
                      {
                        if (([OUTLINED_FUNCTION_18_5() unifiedBracketingFusionSupportEnabled] & 1) == 0 && !objc_msgSend(OUTLINED_FUNCTION_18_5(), "lowLightFusionEnabled") || (v15 = objc_alloc_init(objc_msgSend(v6, "classNamed:", @"NRFPrepareDescriptor")), (*(a1 + 112) = v15) != 0))
                        {
                          if (![OUTLINED_FUNCTION_18_5() deepFusionEnabled])
                          {
                            return 0;
                          }

                          v16 = [objc_msgSend(OUTLINED_FUNCTION_18_5() "deepFusionInputFormat")];
                          if ((FigCapturePixelFormatIs420(v16) & 1) == 0 && ![OUTLINED_FUNCTION_18_5() deferredCaptureSupportEnabled])
                          {
                            return 0;
                          }

                          v17 = objc_alloc_init([v6 classNamed:@"NRFPrepareDescriptor"]);
                          *(a1 + 160) = v17;
                          if (v17)
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
        }
      }

      v18 = 4294954510;
    }

    else
    {
      v18 = 4294954516;
    }

    [(BWUBNRFProcessorController *)a1 _releaseNRFProcessorResources];
    return v18;
  }

  return 0;
}

- (void)_prepareDescriptorsByProcessingTypeForResolutionFlavors:(void *)result
{
  if (result)
  {
    v1 = result;
    v2 = [MEMORY[0x1E695DF90] dictionary];
    v3 = [objc_msgSend(OUTLINED_FUNCTION_13_8() "inputFormat")];
    v4 = [objc_msgSend(OUTLINED_FUNCTION_13_8() "inputFormat")];
    [OUTLINED_FUNCTION_35_0() setWidth:v3];
    [OUTLINED_FUNCTION_35_0() setHeight:v4];
    [+[BWMemoryPool sharedMemoryPool](BWMemoryPool poolIdentifier];
    [OUTLINED_FUNCTION_35_0() setMemoryPoolId:?];
    [objc_msgSend(OUTLINED_FUNCTION_13_8() "inputFormat")];
    [OUTLINED_FUNCTION_35_0() setPixelFormat:?];
    [OUTLINED_FUNCTION_13_8() alwaysAllowModifyingInputBuffers];
    [OUTLINED_FUNCTION_35_0() setAllowModifyingInputBuffers:?];
    [v2 setObject:v1[13] forKeyedSubscript:&unk_1F22427D8];
    if (([OUTLINED_FUNCTION_13_8() unifiedBracketingFusionSupportEnabled] & 1) != 0 || objc_msgSend(OUTLINED_FUNCTION_13_8(), "lowLightFusionEnabled"))
    {
      [OUTLINED_FUNCTION_32_0() setWidth:v3];
      [OUTLINED_FUNCTION_32_0() setHeight:v4];
      [objc_msgSend(OUTLINED_FUNCTION_13_8() "inputFormat")];
      [OUTLINED_FUNCTION_32_0() setPixelFormat:?];
      [OUTLINED_FUNCTION_13_8() alwaysAllowModifyingInputBuffers];
      [OUTLINED_FUNCTION_32_0() setAllowModifyingInputBuffers:?];
      [+[BWMemoryPool sharedMemoryPool](BWMemoryPool poolIdentifier];
      [OUTLINED_FUNCTION_32_0() setMemoryPoolId:?];
      if ([OUTLINED_FUNCTION_13_8() unifiedBracketingFusionSupportEnabled])
      {
        [v2 setObject:v1[14] forKeyedSubscript:&unk_1F22427F0];
      }

      if ([OUTLINED_FUNCTION_13_8() lowLightFusionEnabled])
      {
        [v2 setObject:v1[14] forKeyedSubscript:&unk_1F2242808];
      }
    }

    if (([OUTLINED_FUNCTION_13_8() deepFusionEnabled] & 1) != 0 || objc_msgSend(OUTLINED_FUNCTION_13_8(), "deferredCaptureSupportEnabled"))
    {
      [OUTLINED_FUNCTION_43_1() setWidth:v3];
      [OUTLINED_FUNCTION_43_1() setHeight:v4];
      [objc_msgSend(OUTLINED_FUNCTION_13_8() "deepFusionInputFormat")];
      [OUTLINED_FUNCTION_43_1() setPixelFormat:?];
      [OUTLINED_FUNCTION_13_8() alwaysAllowModifyingInputBuffers];
      [OUTLINED_FUNCTION_43_1() setAllowModifyingInputBuffers:?];
      [v2 setObject:v1[20] forKeyedSubscript:&unk_1F2242820];
    }

    v5 = [v2 copy];

    return v5;
  }

  return result;
}

- (uint64_t)_setupNRFProcessorWithprepareDescriptorsByProcessingType:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v16 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [MEMORY[0x1E695DF90] dictionary];
  [v6 setObject:-[FigCaptureCameraParameters commonNRFParameters](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters forKeyedSubscript:{"sharedInstance"), "commonNRFParameters"), @"NRFParameters"}];
  [v3 setObject:v6 forKeyedSubscript:@"Common"];
  v20 = v4;
  [v3 setObject:v4 forKeyedSubscript:@"DefaultSensorIDs"];
  v21 = [MEMORY[0x1E695DF90] dictionary];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [*(a1 + 64) sensorConfigurationsByPortType];
  v7 = [obj countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v19 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        v10 = v5;
        if (*v26 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [objc_msgSend(*(a1 + 64) "sensorConfigurationsByPortType")];
        [v20 setObject:objc_msgSend(v12 forKeyedSubscript:{"sensorIDString"), v11}];
        v13 = [MEMORY[0x1E695DF90] dictionary];
        [objc_msgSend(v12 "sensorIDDictionary")];
        [OUTLINED_FUNCTION_36() setObject:? forKeyedSubscript:?];
        [objc_msgSend(v12 "sensorIDDictionary")];
        [OUTLINED_FUNCTION_36() setObject:? forKeyedSubscript:?];
        [objc_msgSend(v12 "sensorIDDictionary")];
        [OUTLINED_FUNCTION_36() setObject:? forKeyedSubscript:?];
        [objc_msgSend(v12 "sensorIDDictionary")];
        [OUTLINED_FUNCTION_36() setObject:? forKeyedSubscript:?];
        [objc_msgSend(v12 "sensorIDDictionary")];
        [OUTLINED_FUNCTION_36() setObject:? forKeyedSubscript:?];
        v22 = [v12 sensorIDString];
        v23 = v13;
        [v3 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v23, &v22, 1), v11}];
        v5 = v10;
        [v10 setObject:objc_msgSend(v12 forKeyedSubscript:{"cameraInfo"), v11}];
        [v21 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v12 forKeyedSubscript:{"sensorIDDictionary"), "objectForKeyedSubscript:", @"UBCaptureParameters", "objectForKeyedSubscript:", @"AdaptiveBracketingParameters", v11}];
      }

      v8 = [obj countByEnumeratingWithState:&v25 objects:v24 count:16];
    }

    while (v8);
  }

  if (![v3 count])
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
  }

  [v16 setObject:v3 forKeyedSubscript:*off_1E798A9D0];
  if ([v5 count])
  {
    [v16 setObject:v5 forKeyedSubscript:*off_1E798A970];
  }

  *(a1 + 144) = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v21];
  [v16 setObject:a2 forKeyedSubscript:*off_1E798D1F0];
  if ([*(a1 + 64) depthDataDeliveryEnabled])
  {
    [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*off_1E798D1D8];
  }

  [v16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", -[FigCaptureCameraParameters deviceGeneration](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters, "sharedInstance"), "deviceGeneration")), *off_1E798D1E0}];
  v14 = [*(a1 + 88) setupWithOptions:v16];
  if (v14)
  {
    [(BWUBNRFProcessorController *)a1 _releaseNRFProcessorResources];
  }

  return v14;
}

- (void)_releaseNRFProcessorResources
{
  if (a1)
  {

    a1[11] = 0;
    a1[12] = 0;

    a1[9] = 0;
    a1[18] = 0;

    a1[13] = 0;
    a1[14] = 0;

    a1[20] = 0;
    a1[21] = 0;

    a1[15] = 0;
    a1[19] = 0;

    a1[16] = 0;
    a1[17] = 0;
  }
}

- (void)input:(id)a3 addFrame:(opaqueCMSampleBuffer *)a4 isReferenceFrame:(BOOL)a5
{
  v5 = a5;
  if ([(BWUBNRFProcessorRequest *)self->_currentRequest input]== a3)
  {
    if (objc_opt_respondsToSelector())
    {
      OUTLINED_FUNCTION_46_1();
      [v8 processorController:? willAddSampleBuffer:? processorInput:?];
    }

    nrfp_addFrame(self, self->_currentRequest, self->_nrfProcessor, a4, v5);
    if ([(BWUBNRFProcessorRequest *)self->_currentRequest err])
    {
      v9 = [(BWUBNRFProcessorInput *)[(BWUBNRFProcessorRequest *)self->_currentRequest input] adaptiveBracketingParameters];
      [(BWUBNRFAdaptiveBracketingParameters *)v9 stopAdaptiveBracketing];
    }
  }

  [(BWUBNRFProcessorController *)self _updateStateIfNeeded];
}

- (void)inputReceivedAllFrames:(id)a3
{
  if ([(BWUBNRFProcessorRequest *)self->_currentRequest input]== a3)
  {

    [(BWUBNRFProcessorController *)self _updateStateIfNeeded];
  }
}

- (BOOL)finishProcessingCurrentInputNow
{
  OUTLINED_FUNCTION_59_0();
  v4 = *(v3 + 224);
  if (-[BWUBNRFProcessorInput adaptiveBracketingParameters]([v4 input]))
  {
    -[BWUBNRFProcessorInput stopAdaptiveBracketingNow]([v4 input]);
    if ([v4 err])
    {
      [v4 deliveredAdaptiveBracketingErrorRecoveryFrame];
    }

    if (dword_1EB58DE60)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_4_0();
      if (v2)
      {
        v7 = MEMORY[0x1E696AEC0];
        [v4 err];
        [v4 deliveredAdaptiveBracketingErrorRecoveryFrame];
        [v7 stringWithFormat:@"'%@'. Success:%d (err=%d, deliveredErrorRecoveryFrame:%d)"];
        [objc_msgSend(objc_msgSend(v4 "input")];
        OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_1_7();
        OUTLINED_FUNCTION_5_1();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_39_0();
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
    v2 = result[28];
    if (v2)
    {
      v2 = v2[6];
    }

    v3 = v2;
    v4 = [v1[28] input];
    [v1[28] err];

    v1[28] = 0;
    OUTLINED_FUNCTION_46_1();
    [v5 processorController:? didFinishProcessingInput:? err:?];

    result = [v1[27] firstObject];
    v1[28] = result;
    if (result)
    {
      [OUTLINED_FUNCTION_34_0(216) removeObjectAtIndex:?];
      v6 = [v1[28] input];

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

  if (dword_1EB58DE60)
  {
    v5 = OUTLINED_FUNCTION_3_13();
    if (os_log_type_enabled(v5, v55))
    {
      v6 = v56;
    }

    else
    {
      v6 = v56 & 0xFFFFFFFE;
    }

    if (v6)
    {
      v47 = 136315907;
      v48 = "[BWUBNRFProcessorController _setupProcessorForProcessingType:]";
      v49 = 2113;
      v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", a2];
      v51 = 2113;
      v52 = v2;
      v53 = 2048;
      v54 = [objc_msgSend(OUTLINED_FUNCTION_40_1() "settings")];
      LODWORD(v40) = 42;
      v39 = &v47;
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [OUTLINED_FUNCTION_10_8() setOutput:0];
  [OUTLINED_FUNCTION_10_8() resetState];
  v44 = [OUTLINED_FUNCTION_8_15() input];
  v7 = [v44 captureSettings];
  v8 = [v7 captureType];
  v9 = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_8_15() "input")];
  v10 = OUTLINED_FUNCTION_8_15();
  if (a2 || (v8 - 10) > 2)
  {
    if (!v10)
    {
      v12 = 0;
      v11 = 1;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v10 && ((v10[32] & 1) != 0 || (v10[33] & 1) != 0))
  {
LABEL_16:
    v12 = 0;
    v11 = v10[32] ^ 1;
    goto LABEL_17;
  }

  v11 = 0;
  v12 = 1;
LABEL_17:
  v13 = [v10 processSemanticRendering];
  v45 = a2;
  if (v13 && v8 == 10)
  {
    [v7 sceneFlags];
    [OUTLINED_FUNCTION_25_0() sceneFlags];
  }

  [OUTLINED_FUNCTION_10_8() setSrlEnabled:?];
  if ([OUTLINED_FUNCTION_8_15() provideInferenceInputImageForProcessing])
  {
    OUTLINED_FUNCTION_45_3();
    v15 = [v14 processorController:? newOutputPixelBufferForProcessorInput:? type:?];
    if (!v15)
    {
      return 4294954510;
    }
  }

  else
  {
    v15 = 0;
  }

  v46 = v15;
  v42 = ((v9 & 0x100000) != 0) & v11;
  v43 = ((v9 & 0x80) != 0) & v11;
  [OUTLINED_FUNCTION_8_15() setGainMapEnabled:0];
  [*(a1 + 64) gainMapMainImageDownscalingFactor];
  if (v17 == 0.0)
  {
LABEL_43:
    if (a2 == 3)
    {
      v21 = *(a1 + 160);
      v22 = [OUTLINED_FUNCTION_8_15() deepFusionOutput];
      if ([v7 deliverDeferredPhotoProxyImage] && objc_msgSend(objc_msgSend(v44, "processingSettings"), "provideDemosaicedRaw"))
      {
        [MEMORY[0x1E695DF90] dictionary];
        [OUTLINED_FUNCTION_47() setLinearOutputMetadata:?];
      }

      [v22 setInferenceInputPixelBuffer:v46];
      if ([OUTLINED_FUNCTION_8_15() inferencesAvailable])
      {
        v23 = [OUTLINED_FUNCTION_8_15() provideInferenceInputImageForProcessing] ^ 1;
      }

      else
      {
        v23 = 0;
      }

      [v22 setProvidesInferencesWithoutInferenceInputPixelBuffer:v23];
      OUTLINED_FUNCTION_10_8();
      if (objc_opt_respondsToSelector())
      {
        [OUTLINED_FUNCTION_10_8() setDeepFusionProcessingMode:0];
      }

      v24 = 0;
      v25 = 0;
      cf = 0;
LABEL_53:
      [objc_msgSend(OUTLINED_FUNCTION_8_15() "input")];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_8_15() "input")];
        if (v26)
        {
          v27 = v26;
          if ([OUTLINED_FUNCTION_8_15() inferencesAvailable])
          {
            v28 = [[BWStillImageSemanticStyle alloc] initWithSemanticStyle:v27];
          }
        }

        [OUTLINED_FUNCTION_10_8() setSemanticStyleProperties:?];
      }

      if (v42 && (v9 & 0x1800) != 0x800)
      {
        [v44 fusionMode];
      }

      [OUTLINED_FUNCTION_10_8() setFusionMode:?];
      [OUTLINED_FUNCTION_10_8() setReferenceFrameHasEVMinus:v42];
      OUTLINED_FUNCTION_10_8();
      if (objc_opt_respondsToSelector())
      {
        [OUTLINED_FUNCTION_10_8() setLearnedNREnabled:v43];
      }

      OUTLINED_FUNCTION_10_8();
      if (objc_opt_respondsToSelector())
      {
        if (v43)
        {
          [v7 deliverDeferredPhotoProxyImage];
        }

        [OUTLINED_FUNCTION_10_8() setStfAllowed:?];
      }

      [OUTLINED_FUNCTION_10_8() setOutput:v22];
      if (v21)
      {
        [*(a1 + 64) sensorConfigurationsByPortType];
        [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_8_15() "input")];
        [v21 setSensorID:{objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_8(), "objectForKeyedSubscript:"), "sensorIDString")}];
        v16 = [OUTLINED_FUNCTION_10_8() prepareToProcess:v45 prepareDescriptor:v21];
        if (!v16)
        {
          [OUTLINED_FUNCTION_10_8() setDelegate:a1];
        }
      }

      else
      {
        v16 = 4294954516;
      }

      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_74;
    }

    goto LABEL_84;
  }

  v18 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters gainMapVersion]>> 16;
  if (v18 == 2)
  {
    v19 = v8 == 12 || (v8 & 0xFFFFFFFE) == 10 || (v9 & 0x80) != 0;
LABEL_42:
    [*(a1 + 224) setGainMapEnabled:v19 & 1];
    goto LABEL_43;
  }

  if (v18 != 1)
  {
    goto LABEL_43;
  }

  if ([*(a1 + 64) depthDataDeliveryEnabled])
  {
    v19 = (a2 != 0) | ((v9 & 0x80) != 0) & v11;
    if ((v9 & 0x800) == 0)
    {
      v19 = 0;
    }

    goto LABEL_42;
  }

  if (a2)
  {
    v19 = ((v9 & 0x100000) != 0) & v11;
    if (a2 == 3)
    {
      v19 = 1;
    }

    if (v8 == 11)
    {
      v19 = 1;
    }

    goto LABEL_42;
  }

  if ((((v9 & 0x80) != 0) & v11) != 0)
  {
    if (![+[FigCaptureCameraParameters nrfVersion] sharedInstance]
    {
      v25 = 0;
      v24 = 0;
      v16 = 4294954516;
      goto LABEL_74;
    }

    [OUTLINED_FUNCTION_8_15() setGainMapEnabled:?];
  }

LABEL_84:
  v30 = [objc_msgSend(v44 "processingSettings")];
  v31 = &OBJC_IVAR___BWUBNRFProcessorController__prepareDescriptor;
  if ((a2 - 1) < 2)
  {
    v31 = &OBJC_IVAR___BWUBNRFProcessorController__ubPrepareDescriptor;
  }

  v21 = *(a1 + *v31);
  v22 = [OUTLINED_FUNCTION_8_15() output];
  v32 = OUTLINED_FUNCTION_8_15();
  if (!v32)
  {
    if (v12)
    {
      goto LABEL_88;
    }

LABEL_94:
    [(BWUBNRFProcessorRequest *)v32 imageType];
    goto LABEL_95;
  }

  if (!v12)
  {
    goto LABEL_94;
  }

LABEL_88:
  [(BWUBNRFProcessorRequest *)v32 fusionErrorRecoveryImageType];
LABEL_95:
  OUTLINED_FUNCTION_45_3();
  v34 = [v33 processorController:? newOutputPixelBufferForProcessorInput:? type:?];
  if (v34)
  {
    cf = v34;
    [v22 setPixelBuffer:v34];
    [MEMORY[0x1E695DF90] dictionary];
    [OUTLINED_FUNCTION_47() setMetadata:?];
    [v22 setInferenceInputPixelBuffer:v46];
    if ([OUTLINED_FUNCTION_8_15() inferencesAvailable])
    {
      v35 = [OUTLINED_FUNCTION_8_15() provideInferenceInputImageForProcessing] ^ 1;
    }

    else
    {
      v35 = 0;
    }

    [v22 setProvidesInferencesWithoutInferenceInputPixelBuffer:v35];
    if (v30)
    {
      OUTLINED_FUNCTION_45_3();
      v25 = [v36 processorController:? newOutputPixelBufferForProcessorInput:? type:?];
      if (v25)
      {
        [v22 setLinearOutputPixelBuffer:v25];
        [MEMORY[0x1E695DF90] dictionary];
        [OUTLINED_FUNCTION_47() setLinearOutputMetadata:?];
      }

      else
      {
        [OUTLINED_FUNCTION_8_15() setDemosaicedRawErr:4294954510];
      }
    }

    else
    {
      v25 = 0;
    }

    if ([OUTLINED_FUNCTION_8_15() gainMapEnabled])
    {
      OUTLINED_FUNCTION_45_3();
      v24 = [v37 processorController:? newOutputPixelBufferForProcessorInput:? type:?];
      if (v24 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [MEMORY[0x1E695DF90] dictionary];
        [OUTLINED_FUNCTION_47() setGainMapOutputMetadata:?];
      }
    }

    else
    {
      v24 = 0;
    }

    [v22 setGainMapOutputPixelBuffer:v24];
    if (v45 == 2)
    {
      v38 = [OUTLINED_FUNCTION_8_15() input];
      [(BWUBNRFProcessorInput *)v38 adaptiveBracketingParameters];
      [OUTLINED_FUNCTION_10_8() setProgressiveBracketingParameters:?];
    }

    if (([v7 sceneFlags] & 0x100) != 0)
    {
      [v7 captureType];
    }

    [OUTLINED_FUNCTION_10_8() setDoRedFaceFix:?];
    if ([*(a1 + 64) greenGhostMitigationVersion] >= 1)
    {
      [objc_msgSend(v44 "processingSettings")];
    }

    [OUTLINED_FUNCTION_10_8() setEnableGreenGhostMitigation:?];
    [OUTLINED_FUNCTION_10_8() enableGreenGhostMitigation];
    goto LABEL_53;
  }

  v25 = 0;
  v24 = 0;
  v16 = 4294954510;
LABEL_74:
  if (v46)
  {
    CFRelease(v46);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  return v16;
}

- (unint64_t)_setupProcessor
{
  if (result)
  {
    v1 = result;
    v2 = [(BWUBNRFProcessorRequest *)*(result + 224) processingType];
    v3 = [(BWUBNRFProcessorController *)v1 _setupProcessorForProcessingType:v2];
    if (v3)
    {
      [*(v1 + 224) setErr:v3];
      [OUTLINED_FUNCTION_34_0(88) setOutput:?];
      v9 = *(v1 + 88);

      return [v9 resetState];
    }

    else
    {
      for (i = 0; ; ++i)
      {
        v5 = [*(v1 + 224) input];
        if (v5)
        {
          v5 = v5[7];
        }

        result = [v5 count];
        if (result <= i)
        {
          break;
        }

        v6 = [*(v1 + 224) input];
        if (v6)
        {
          v6 = v6[7];
        }

        v7 = [v6 objectAtIndexedSubscript:i];
        v8 = BWStillImageCaptureFrameFlagsForSampleBuffer(v7);
        nrfp_addFrame(v1, *(v1 + 224), *(v1 + 88), v7, (v8 >> 4) & 1);
      }
    }
  }

  return result;
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
      if (dword_1EB58DE60)
      {
        v57 = OUTLINED_FUNCTION_28_1();
        OUTLINED_FUNCTION_60_2(v57);
        OUTLINED_FUNCTION_30();
        if (v48)
        {
          v58 = BWStillImageSampleBufferToDisplayString(v54);
          [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_11_8() "input")];
          a13 = 136315651;
          OUTLINED_FUNCTION_20();
          *(&a15 + 6) = v58;
          OUTLINED_FUNCTION_1_7();
          OUTLINED_FUNCTION_13();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      ImageBuffer = CMSampleBufferGetImageBuffer(v54);
      v60 = *off_1E798A0B8;
      OUTLINED_FUNCTION_42_1();
      v64 = CVBufferCopyAttachment(v61, v62, v63);
      v65 = *(v56 + 88);
      v66 = v64 ? [v65 addInputResource:v64] : objc_msgSend(v65, "addFrame:", v54);
      v67 = v66;

      CVBufferRemoveAttachment(ImageBuffer, v60);
      if (!v67 && ![*(v56 + 88) process])
      {
        -[BWUBNRFProcessorController _logCompletionStatus:processingType:request:](v56, [objc_msgSend(*(v56 + 88) "output")], 0, *(v56 + 224));
        target = 0;
        v68 = [objc_msgSend(OUTLINED_FUNCTION_11_8() "output")];
        if (!BWCMSampleBufferCreateCopyWithNewPixelBuffer(v54, v68, (v56 + 184), &target))
        {
          if (![objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_11_8() "output")])
          {
            [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_11_8() "output")];
          }

          v69 = *off_1E798A3C8;
          OUTLINED_FUNCTION_21_2();
          v73 = [CMGetAttachment(v70 v71];
          [objc_msgSend(OUTLINED_FUNCTION_11_8() "output")];
          [OUTLINED_FUNCTION_7() addEntriesFromDictionary:?];
          CMSetAttachment(target, v69, v73, 1u);

          v74 = OUTLINED_FUNCTION_11_8();
          if ([(BWUBNRFProcessorRequest *)v74 imageType]== 29)
          {
            OUTLINED_FUNCTION_21_2();
            [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(CMGetAttachment(v75, v76, v77), "unsignedIntValue") | 0x1000}];
            v78 = OUTLINED_FUNCTION_7();
            CMSetAttachment(v78, @"StillImageProcessingFlags", v79, 1u);
            [OUTLINED_FUNCTION_11_8() setDeliveredDeferredProxyImage:1];
          }

          if ([objc_msgSend(OUTLINED_FUNCTION_11_8() "output")])
          {
            [objc_msgSend(OUTLINED_FUNCTION_11_8() "output")];
            [objc_msgSend(OUTLINED_FUNCTION_11_8() "output")];
            [OUTLINED_FUNCTION_11_8() input];
            OUTLINED_FUNCTION_52_0();
            v80 = OUTLINED_FUNCTION_53_1();
            OUTLINED_FUNCTION_64_1(v80, v81, v82);
            v83 = [(BWUBNRFProcessorController *)v56 _generateGainMapMetadata:?];
            v84 = target;
            v85 = [objc_msgSend(OUTLINED_FUNCTION_11_8() "output")];
            BWSampleBufferSetAttachedMediaFromPixelBuffer(v84, 0x1F217BF50, v85, (v56 + 208), v83, 0, 1);
          }

          if ([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_11_8() "input")])
          {
            v86 = [objc_msgSend(OUTLINED_FUNCTION_11_8() "output")];
            v87 = [objc_msgSend(OUTLINED_FUNCTION_11_8() "output")];
            v88 = target;
            v89 = [OUTLINED_FUNCTION_11_8() demosaicedRawErr];
            [(BWUBNRFProcessorController *)v56 _propagateDemosaicedRawPixelBuffer:v86 demosaicedRawMetadata:v87 outputSampleBuffer:v88 error:v89];
            if (!v55)
            {
              goto LABEL_23;
            }

            goto LABEL_21;
          }

          if (v55)
          {
LABEL_21:
            *v55 = target;
          }
        }
      }
    }
  }

LABEL_23:
  OUTLINED_FUNCTION_58_0();
}

- (void)_processUBFusion
{
  if (!a1)
  {
    return;
  }

  v121 = 0;
  v3 = [*(a1 + 224) output];
  if (dword_1EB58DE60)
  {
    v4 = OUTLINED_FUNCTION_31_2();
    os_log_type_enabled(v4, v120);
    OUTLINED_FUNCTION_4_0();
    if (v1)
    {
      [objc_msgSend(objc_msgSend(*(a1 + 224) "input")];
      OUTLINED_FUNCTION_15_5();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_39_0();
  }

  if ([OUTLINED_FUNCTION_7_14() err])
  {
    v5 = [v3 metadata];
    if (!v5)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(OUTLINED_FUNCTION_7_14(), "err")), @"UBAddFrameFailure"}];
    goto LABEL_55;
  }

  [*(a1 + 88) process];
  [OUTLINED_FUNCTION_7_14() setErr:?];
  v5 = [v3 metadata];
  if (![OUTLINED_FUNCTION_7_14() err])
  {
    v6 = [v3 completionStatus];
    v7 = OUTLINED_FUNCTION_7_14();
    [(BWUBNRFProcessorRequest *)v7 processingType];
    v8 = OUTLINED_FUNCTION_44_2();
    [(BWUBNRFProcessorController *)v8 _logCompletionStatus:v6 processingType:v9 request:v10];
    [objc_msgSend(OUTLINED_FUNCTION_7_14() "input")];
    v11 = [OUTLINED_FUNCTION_25_0() pixelBuffer];
    BWCMSampleBufferCreateCopyWithNewPixelBuffer(v6, v11, (a1 + 184), &v121);
    [OUTLINED_FUNCTION_7_14() setErr:?];
    if (![OUTLINED_FUNCTION_7_14() err])
    {
      v87 = v5;
      if (([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_7_14() "input")] & 0x800) == 0)
      {
LABEL_27:
        if ([objc_msgSend(OUTLINED_FUNCTION_7_14() "output")])
        {
          v39 = [(BWUBNRFProcessorController *)a1 _generateGainMapMetadata:?];
          v40 = v121;
          v41 = [objc_msgSend(OUTLINED_FUNCTION_7_14() "output")];
          BWSampleBufferSetAttachedMediaFromPixelBuffer(v40, 0x1F217BF50, v41, (a1 + 208), v39, 0, 1);
        }

        v5 = v87;
        if ([v3 fusionMode] == 2)
        {
          OUTLINED_FUNCTION_55_0();
          if (objc_opt_respondsToSelector())
          {
            v42 = [objc_msgSend(OUTLINED_FUNCTION_7_14() "input")];
            memset(&v119, 0, sizeof(v119));
            CMSampleBufferGetPresentationTimeStamp(&v119, v42);
            v43 = [MEMORY[0x1E695DF70] array];
            for (i = 0; i != 3; ++i)
            {
              for (j = 0; j != 3; ++j)
              {
                v46 = MEMORY[0x1E696AD98];
                [v3 refFrameTransform];
                OUTLINED_FUNCTION_49_0(v47, v48);
                v90 = *&v49;
                v92 = v50;
                LODWORD(v95) = v51;
                v94 = v52;
                LODWORD(v49) = *((&v90 + 2 * i) & 0xFFFFFFFFFFFFFFF3 | (4 * (j & 3)));
                [v46 numberWithFloat:v49];
                [OUTLINED_FUNCTION_7() addObject:?];
              }
            }

            v53 = OUTLINED_FUNCTION_7_14();
            if (v53)
            {
              v54 = v53[6];
            }

            else
            {
              v54 = 0;
            }

            v5 = v87;
            v55 = [v53 input];
            v118 = v119;
            [v54 processorController:a1 didSelectNewReferenceFrameWithPTS:&v118 transform:v43 processorInput:v55];
          }
        }

        CMSetAttachment(v121, @"HasUnreliableBracketingMetadata", MEMORY[0x1E695E118], 1u);
        v56 = CMGetAttachment(v121, *off_1E798A3C8, 0);
        [v56 addEntriesFromDictionary:v5];
        LODWORD(v57) = MEMORY[0x1E696AD98];
        [v56 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(v3, "fusionMode")), *off_1E798A670}];
        if (([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_7_14() "input")] & 0x100000) != 0)
        {
          OUTLINED_FUNCTION_21_2();
          v61 = [CMGetAttachment(v58 v59];
          LODWORD(v57) = v121;
          CMSetAttachment(v121, @"StillImageProcessingFlags", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v61 | 2u], 1u);
          if (([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_7_14() "input")] & 1) != 0 || objc_msgSend(objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_7_14(), "input"), "settings"), "HDRMode") == 1)
          {
            if ([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_7_14() "input")])
            {
              v62 = 3;
            }

            else
            {
              v62 = 2;
            }

            [v56 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithShort:", v62), *off_1E798B370}];
          }
        }

        if ([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_7_14() "input")] == 11)
        {
          v63 = [OUTLINED_FUNCTION_7_14() numberOfFramesAddedForMultiFrameProcessing];
          [OUTLINED_FUNCTION_7_14() totalExposureTimesOfFramesAddedForMultiFrameProcessing];
          v65 = v64;
          [OUTLINED_FUNCTION_7_14() minExposureTimesOfFramesAddedForMultiFrameProcessing];
          v67 = v66;
          [OUTLINED_FUNCTION_7_14() maxExposureTimesOfFramesAddedForMultiFrameProcessing];
          ExifCompositeImageMetadata = FigCaptureMetadataUtilitiesCreateExifCompositeImageMetadata(v63, v65, v67, v68);
          [v56 addEntriesFromDictionary:ExifCompositeImageMetadata];

          [objc_msgSend(OUTLINED_FUNCTION_7_14() "input")];
          v70 = OUTLINED_FUNCTION_8();
          CMSetAttachment(v70, @"OisRecenteringLoggingData", v71, 1u);
          LODWORD(v57) = MEMORY[0x1E696AD98];
          [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_7_14(), "input"), "ispMotionHighPassFilterConvergenceFlags")}];
          v72 = OUTLINED_FUNCTION_8();
          CMSetAttachment(v72, @"ISPMotionHighPassFilterConvergenceFlags", v73, 1u);
        }

        else
        {
          [v56 setObject:&unk_1F22427A8 forKeyedSubscript:@"CompositeImage"];
        }

        if ([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_7_14() "input")])
        {
          [objc_msgSend(OUTLINED_FUNCTION_7_14() "output")];
          [objc_msgSend(OUTLINED_FUNCTION_7_14() "output")];
          v57 = v121;
          [OUTLINED_FUNCTION_7_14() demosaicedRawErr];
          v74 = OUTLINED_FUNCTION_51_0();
          [(BWUBNRFProcessorController *)v74 _propagateDemosaicedRawPixelBuffer:v75 demosaicedRawMetadata:v76 outputSampleBuffer:v57 error:v77];
        }

        if (dword_1EB58DE60)
        {
          v78 = OUTLINED_FUNCTION_31_2();
          os_log_type_enabled(v78, v120);
          OUTLINED_FUNCTION_4_0();
          if (v57)
          {
            [objc_msgSend(objc_msgSend(*(a1 + 224) "input")];
            OUTLINED_FUNCTION_15_5();
            OUTLINED_FUNCTION_5_1();
          }

          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_39_0();
        }

        v79 = OUTLINED_FUNCTION_7_14();
        [(BWUBNRFProcessorRequest *)v79 imageType];
        [OUTLINED_FUNCTION_7_14() input];
        [OUTLINED_FUNCTION_7_14() err];
        [OUTLINED_FUNCTION_9_5() processorController:? didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
        goto LABEL_55;
      }

      v12 = [v3 fusionMode];
      if (v12 == 1)
      {
        if (!BWSampleBufferGetAttachedMedia(v121, 0x1F21AAAF0))
        {
          v116 = 0x1F21AAAF0;
          v13 = MEMORY[0x1E695DEC8];
          v14 = &v116;
          v15 = 1;
          goto LABEL_18;
        }
      }

      else if (v12 == 2)
      {
        v117[0] = @"Depth";
        v117[1] = 0x1F21AABD0;
        v117[2] = 0x1F21AAB10;
        v117[3] = 0x1F21AAB50;
        v13 = MEMORY[0x1E695DEC8];
        v14 = v117;
        v15 = 4;
LABEL_18:
        v16 = [v13 arrayWithObjects:v14 count:v15];
        goto LABEL_20;
      }

      v16 = 0;
LABEL_20:
      v17 = [objc_msgSend(OUTLINED_FUNCTION_7_14() "input")];
      v112 = 0u;
      v113 = 0u;
      v114 = 0u;
      v115 = 0u;
      v25 = OUTLINED_FUNCTION_62_0(v17, v18, v19, v20, v21, v22, v23, v24, v81, v83, v85, v5, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, 0);
      if (v25)
      {
        v26 = v25;
        v27 = *v113;
        do
        {
          for (k = 0; k != v26; ++k)
          {
            if (*v113 != v27)
            {
              objc_enumerationMutation(v16);
            }

            v29 = *(*(&v112 + 1) + 8 * k);
            AttachedMedia = BWSampleBufferGetAttachedMedia(v17, v29);
            BWSampleBufferSetAttachedMedia(v121, v29, AttachedMedia);
          }

          v26 = OUTLINED_FUNCTION_62_0(v31, v32, v33, v34, v35, v36, v37, v38, v82, v84, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112);
        }

        while (v26);
      }

      goto LABEL_27;
    }
  }

LABEL_55:
  if ([OUTLINED_FUNCTION_7_14() err])
  {
    if (v5)
    {
      v80 = v5;
    }

    else
    {
      v80 = MEMORY[0x1E695E0F8];
    }

    v88 = @"UBFusionFailure";
    v89 = v80;
    -[BWUBNRFProcessorController _handleFusionErrorRecoveryWithFailureMetadata:](a1, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1]);
  }

  if (v121)
  {
    CFRelease(v121);
  }
}

- (void)_logCompletionStatus:(int)a3 processingType:(void *)a4 request:
{
  if (a1)
  {
    if (a2)
    {
      [[BWUBNRFProcessorCompletionStatus alloc] initWithCompletionStatus:a2];
      v8 = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_25_0() "input")];
      v9 = [a4 description];
      v10 = *(a1 + 176);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __74__BWUBNRFProcessorController__logCompletionStatus_processingType_request___block_invoke;
      v11[3] = &unk_1E7990030;
      v12 = a3;
      v11[4] = a2;
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

  v3 = *(a1 + 224);
  if (!a2)
  {
    [v3 output];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(OUTLINED_FUNCTION_41_1() "output")])
    {
      v4 = [OUTLINED_FUNCTION_41_1() output];
      goto LABEL_9;
    }

LABEL_10:
    v5 = [MEMORY[0x1E695DF90] dictionary];
    goto LABEL_11;
  }

  [v3 deepFusionOutput];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ![objc_msgSend(OUTLINED_FUNCTION_41_1() "deepFusionOutput")])
  {
    goto LABEL_10;
  }

  v4 = [OUTLINED_FUNCTION_41_1() deepFusionOutput];
LABEL_9:
  v5 = [v4 gainMapOutputMetadata];
LABEL_11:
  v6 = v5;
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", -[FigCaptureCameraParameters gainMapVersion](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters, "sharedInstance"), "gainMapVersion")), *off_1E798A688}];
  v7 = MEMORY[0x1E696AD98];
  [*(a1 + 64) gainMapMainImageDownscalingFactor];
  [v6 setObject:objc_msgSend(v7 forKeyedSubscript:{"numberWithFloat:"), *off_1E798A788}];
  return v6;
}

- (void)_propagateDemosaicedRawPixelBuffer:(void *)a3 demosaicedRawMetadata:(opaqueCMSampleBuffer *)a4 outputSampleBuffer:(int)a5 error:
{
  if (a1)
  {
    v6 = 0;
    target = 0;
    if (!a2 || a5)
    {
      goto LABEL_15;
    }

    v10 = *off_1E798A3C8;
    OUTLINED_FUNCTION_21_2();
    v14 = CMGetAttachment(v11, v12, v13);
    v6 = [v14 mutableCopy];
    if ([a3 count])
    {
      [v6 addEntriesFromDictionary:a3];
    }

    if (BWCMSampleBufferCreateCopyWithNewPixelBuffer(a4, a2, (a1 + 200), &target))
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_42_1();
    v18 = [CMGetAttachment(v15 v16];
    CMSetAttachment(target, @"StillImageProcessingFlags", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v18 | 0x10000u], 1u);
    OUTLINED_FUNCTION_42_1();
    v22 = CMGetAttachment(v19, v20, v21);
    if (v22)
    {
      v23 = v22;
      Width = CVPixelBufferGetWidth(a2);
      Height = CVPixelBufferGetHeight(a2);
      v26 = BWCreateDNGDictionaryWithUpdatedToneCurvesIfNeeded(v23, Width | (Height << 32), v6);
      if (!v26)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v27 = [v14 objectForKeyedSubscript:*off_1E798B540];
      v28 = [objc_msgSend(*(a1 + 64) "rawColorCalibrationsByPortType")];
      if (!v28)
      {
        goto LABEL_15;
      }

      v29 = v28;
      v30 = [objc_msgSend(objc_msgSend(*(a1 + 64) "sensorConfigurationsByPortType")];
      if (!v30)
      {
        goto LABEL_15;
      }

      v31 = v30;
      PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
      v33 = [objc_msgSend(objc_msgSend(*(a1 + 224) "input")];
      v34 = v33 / [objc_msgSend(objc_msgSend(*(a1 + 224) "input")];
      v35 = CVPixelBufferGetWidth(a2);
      v36 = CVPixelBufferGetHeight(a2);
      v26 = BWCreateDemosaicedRawDNGDictionary(v35 | (v36 << 32), PixelFormatType, v6, v29, v31, v34);
      if (!v26)
      {
        goto LABEL_15;
      }
    }

    v37 = v26;
    CMSetAttachment(target, @"RawDNGDictionary", v26, 1u);

LABEL_14:
    [v6 setObject:&unk_1F224A7B0 forKeyedSubscript:*off_1E798A788];
    CMSetAttachment(target, v10, v6, 1u);
    BWSampleBufferSetAttachedMedia(a4, 0x1F21AAE10, target);
LABEL_15:

    if (target)
    {
      CFRelease(target);
    }
  }
}

- (void)_processDeepFusion
{
  if (!a1)
  {
    return;
  }

  OUTLINED_FUNCTION_59_0();
  a44 = v47;
  a45 = v48;
  v50 = v49;
  v51 = [*(v49 + 224) input];
  v52 = [OUTLINED_FUNCTION_7_14() deepFusionOutput];
  if (dword_1EB58DE60)
  {
    v53 = OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_60_2(v53);
    OUTLINED_FUNCTION_30();
    if (v46)
    {
      v54 = *(v50 + 224);
      [objc_msgSend(v51 "settings")];
      a13 = 136315651;
      OUTLINED_FUNCTION_20();
      *(&a14 + 6) = v54;
      OUTLINED_FUNCTION_1_7();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (![OUTLINED_FUNCTION_7_14() err])
  {
    if (![v52 syntheticLongPixelBuffer])
    {
      OUTLINED_FUNCTION_55_0();
      OUTLINED_FUNCTION_33_3();
      if (![v55 processorController:? newOutputPixelBufferForProcessorInput:? type:?])
      {
        goto LABEL_26;
      }

      [OUTLINED_FUNCTION_25_0() setSyntheticLongPixelBuffer:v45];
      CVPixelBufferRelease(v45);
      [MEMORY[0x1E695DF90] dictionary];
      [OUTLINED_FUNCTION_8() setSyntheticLongMetadata:?];
    }

    if ([v52 syntheticLongFusionMapPixelBuffer])
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_33_3();
    if ([v56 processorController:? newOutputPixelBufferForProcessorInput:? type:?])
    {
      [OUTLINED_FUNCTION_25_0() setSyntheticLongFusionMapPixelBuffer:v45];
      CVPixelBufferRelease(v45);
LABEL_13:
      if ([v52 longFusionMapPixelBuffer] || (objc_msgSend(objc_msgSend(v51, "captureSettings"), "captureFlags") & 0x400000) == 0)
      {
LABEL_17:
        [*(v50 + 88) process];
        [OUTLINED_FUNCTION_7_14() setErr:?];
        if (![OUTLINED_FUNCTION_7_14() err])
        {
          v58 = [objc_msgSend(*(v50 + 88) "output")];
          v59 = OUTLINED_FUNCTION_7_14();
          [(BWUBNRFProcessorRequest *)v59 processingType];
          v60 = OUTLINED_FUNCTION_44_2();
          [(BWUBNRFProcessorController *)v60 _logCompletionStatus:v58 processingType:v61 request:v62];
          if ([*(v50 + 64) deepFusionWaitForProcessingToFinish])
          {
            [*(v50 + 88) finishProcessing];
          }
        }

        goto LABEL_20;
      }

      OUTLINED_FUNCTION_55_0();
      OUTLINED_FUNCTION_33_3();
      if ([v57 processorController:? newOutputPixelBufferForProcessorInput:? type:?])
      {
        [OUTLINED_FUNCTION_25_0() setLongFusionMapPixelBuffer:v45];
        CVPixelBufferRelease(v45);
        goto LABEL_17;
      }
    }

LABEL_26:
    [OUTLINED_FUNCTION_7_14() setErr:4294954510];
  }

LABEL_20:
  if ([OUTLINED_FUNCTION_7_14() err] && objc_msgSend(objc_msgSend(v51, "captureSettings"), "deliverDeferredPhotoProxyImage") && (objc_msgSend(OUTLINED_FUNCTION_7_14(), "deliveredDeferredProxyImage") & 1) == 0)
  {
    a11 = @"UBDeepFusionFusionFailure";
    a12 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(OUTLINED_FUNCTION_7_14(), "err")}];
    -[BWUBNRFProcessorController _handleFusionErrorRecoveryWithFailureMetadata:](v50, [MEMORY[0x1E695DF20] dictionaryWithObjects:&a12 forKeys:&a11 count:1]);
  }

  OUTLINED_FUNCTION_58_0();
}

- (id)externalMemoryDescriptorForResolutionFlavors:(id)a3
{
  v4 = [BWUBNRFProcessorController _prepareDescriptorsByProcessingTypeForResolutionFlavors:?];
  v5 = [(BWUBNRFProcessorControllerConfiguration *)self->_configuration learnedNRMode];
  v9[1] = [MEMORY[0x1E696AD98] numberWithBool:{v5 & 1, *off_1E798D1F0, *off_1E798D1E8, v4}];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:2];
  return -[NRFProcessor externalMemoryDescriptorForConfiguration:](self->_nrfProcessor, "externalMemoryDescriptorForConfiguration:", [objc_alloc(MEMORY[0x1E69916C8]) initWithMaxInputDimensions:0 inputPixelFormat:0 maxOutputDimensions:0 cmiResourceEnabled:0 processorSpecificOptions:v6]);
}

- (void)processor:(id)a3 outputReadyWithFrameType:(int)a4 outputPixelBuffer:(__CVBuffer *)a5 outputMetadata:(id)a6 error:(int)a7
{
  if (!a5 || a7)
  {
LABEL_28:
    OUTLINED_FUNCTION_57_0();
  }

  else
  {
    currentRequest = self->_currentRequest;
    switch(a4)
    {
      case 1:
        [a6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", -[NRFDeepFusionOutput fusionMode](-[BWUBNRFProcessorRequest deepFusionOutput](currentRequest, "deepFusionOutput", a3), "fusionMode")), *off_1E798A670}];
        v32 = OUTLINED_FUNCTION_61([(BWUBNRFProcessorInput *)[(BWUBNRFProcessorRequest *)self->_currentRequest input] referenceFrame], 184);
        if (![(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)[(BWUBNRFProcessorRequest *)self->_currentRequest input] captureSettings] deliverDeferredPhotoProxyImage])
        {
          goto LABEL_42;
        }

        OUTLINED_FUNCTION_21_2();
        v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(CMGetAttachment(v33, v34, v35), "unsignedIntValue") | 0x1000}];
        OUTLINED_FUNCTION_23_0(v36);
        [(BWUBNRFProcessorRequest *)self->_currentRequest setDeliveredDeferredProxyImage:1];
        if ([(BWStillImageProcessingSettings *)[(BWStillImageProcessorControllerInput *)[(BWUBNRFProcessorRequest *)self->_currentRequest input] processingSettings] provideDemosaicedRaw])
        {
          [(NRFDeepFusionOutput *)[(BWUBNRFProcessorRequest *)self->_currentRequest deepFusionOutput] linearOutputPixelBuffer];
          [(NRFDeepFusionOutput *)[(BWUBNRFProcessorRequest *)self->_currentRequest deepFusionOutput] linearOutputMetadata];
          [(BWUBNRFProcessorRequest *)self->_currentRequest demosaicedRawErr];
          v37 = OUTLINED_FUNCTION_51_0();
          [(BWUBNRFProcessorController *)v37 _propagateDemosaicedRawPixelBuffer:v38 demosaicedRawMetadata:v39 outputSampleBuffer:v32 error:v40];
        }

        if ([(NRFDeepFusionOutput *)[(BWUBNRFProcessorRequest *)self->_currentRequest deepFusionOutput] gainMapOutputPixelBuffer])
        {
          v41 = [(BWUBNRFProcessorController *)self _generateGainMapMetadata:?];
          BWSampleBufferSetAttachedMediaFromPixelBuffer(v32, 0x1F217BF50, [(NRFDeepFusionOutput *)[(BWUBNRFProcessorRequest *)self->_currentRequest deepFusionOutput] gainMapOutputPixelBuffer], &self->_gainMapFormatDescription, v41, 0, 1);
        }

        [(BWUBNRFProcessorRequest *)self->_currentRequest imageType];
        [(BWUBNRFProcessorRequest *)self->_currentRequest input];
        OUTLINED_FUNCTION_33_3();
        goto LABEL_41;
      case 2:
        v9 = [(BWUBNRFProcessorRequest *)currentRequest deepFusionOutput];
        if ([(NRFDeepFusionOutput *)v9 refFrameTransformIsValid]&& (objc_opt_respondsToSelector() & 1) != 0)
        {
          v10 = [(BWUBNRFProcessorInput *)[(BWUBNRFProcessorRequest *)self->_currentRequest input] evMinusReferenceFrame];
          memset(&v50, 0, sizeof(v50));
          CMSampleBufferGetPresentationTimeStamp(&v50, v10);
          v11 = [MEMORY[0x1E695DF70] array];
          for (i = 0; i != 3; ++i)
          {
            for (j = 0; j != 3; ++j)
            {
              v14 = MEMORY[0x1E696AD98];
              [(NRFDeepFusionOutput *)v9 refFrameTransform];
              OUTLINED_FUNCTION_49_0(v15, v16);
              *v48 = v17;
              v48[2] = v18;
              v49 = v19;
              v48[4] = v20;
              LODWORD(v17) = *(&v48[2 * i] & 0xFFFFFFFFFFFFFFF3 | (4 * (j & 3)));
              [v11 addObject:{objc_msgSend(v14, "numberWithFloat:", v17)}];
            }
          }

          v21 = self->_currentRequest;
          if (v21)
          {
            delegate = v21->_delegate;
          }

          else
          {
            delegate = 0;
          }

          v23 = [(BWUBNRFProcessorRequest *)v21 input];
          v47 = v50;
          [(BWUBNRFProcessorControllerDelegate *)delegate processorController:self didSelectNewReferenceFrameWithPTS:&v47 transform:v11 processorInput:v23];
        }

        v24 = [(NRFDeepFusionOutput *)[(BWUBNRFProcessorRequest *)self->_currentRequest deepFusionOutput] gainMapOutputPixelBuffer];
        currentRequest = self->_currentRequest;
        if (v24)
        {
          [(BWUBNRFProcessorRequest *)currentRequest deepFusionOutput];
          if ((objc_opt_respondsToSelector() & 1) != 0 && [(NRFDeepFusionOutput *)[(BWUBNRFProcessorRequest *)self->_currentRequest deepFusionOutput] gainMapOutputMetadata])
          {
            v25 = [(NRFDeepFusionOutput *)[(BWUBNRFProcessorRequest *)self->_currentRequest deepFusionOutput] gainMapOutputMetadata];
          }

          else
          {
            v25 = [MEMORY[0x1E695DF90] dictionary];
          }

          [v25 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", -[FigCaptureCameraParameters gainMapVersion](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters, "sharedInstance"), "gainMapVersion")), *off_1E798A688}];
          v29 = self->_currentRequest;
          if (v29)
          {
            v30 = v29->_delegate;
          }

          else
          {
            v30 = 0;
          }

          [(BWUBNRFProcessorRequest *)v29 input];
          OUTLINED_FUNCTION_52_0();
          OUTLINED_FUNCTION_64_1(v30, v31, self);
          currentRequest = self->_currentRequest;
        }

        goto LABEL_26;
      case 3:
      case 4:
      case 5:
      case 6:
LABEL_26:
        [(BWUBNRFProcessorRequest *)currentRequest input];
        OUTLINED_FUNCTION_52_0();
        OUTLINED_FUNCTION_46_1();
        goto LABEL_27;
      case 7:
        if (currentRequest)
        {
          OUTLINED_FUNCTION_50_0();
          if (v43)
          {
            goto LABEL_39;
          }
        }

        v44 = [(BWUBNRFProcessorInput *)[(BWUBNRFProcessorRequest *)currentRequest input] referenceFrame];
        if (!v44)
        {
          currentRequest = self->_currentRequest;
LABEL_39:
          v44 = [(BWUBNRFProcessorInput *)[(BWUBNRFProcessorRequest *)currentRequest input] errorRecoveryFrame];
        }

        v32 = OUTLINED_FUNCTION_61(v44, 192);
        [(BWUBNRFProcessorRequest *)self->_currentRequest input];
        OUTLINED_FUNCTION_33_3();
LABEL_41:
        [v42 processorController:? didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
LABEL_42:
        if (!v32)
        {
          goto LABEL_28;
        }

        OUTLINED_FUNCTION_57_0();

        CFRelease(v45);
        break;
      case 8:
        if ([(BWUBNRFProcessorRequest *)currentRequest demosaicedRawErr])
        {
          goto LABEL_28;
        }

        OUTLINED_FUNCTION_57_0();

        [v26 setDemosaicedRawErr:?];
        return;
      case 9:
        [(BWUBNRFProcessorRequest *)currentRequest input];
        OUTLINED_FUNCTION_52_0();
        OUTLINED_FUNCTION_46_1();
LABEL_27:
        [v28 processorController:? didFinishProcessingBuffer:? metadata:? type:? captureFrameFlags:? processorInput:? err:?];
        goto LABEL_28;
      default:
        goto LABEL_28;
    }
  }
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
  [(BWUBNRFProcessorRequest *)self->_currentRequest input];
  v4 = OUTLINED_FUNCTION_53_1();

  [v4 processorController:? didSelectFusionMode:? processorInput:?];
}

- (id)processorGetInferenceResults:(id)a3
{
  v4 = objc_alloc_init(NSClassFromString(&cfstr_Nrfprocessorin.isa));
  if ([(BWUBNRFProcessorRequest *)self->_currentRequest inferencesAvailable])
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

    v7 = [(BWUBNRFProcessorRequest *)currentRequest input];
    if (self->_currentRequest)
    {
      v8 = 15;
    }

    else
    {
      v8 = 0;
    }

    v9 = [(BWUBNRFProcessorControllerDelegate *)delegate processorController:self newInferencesForProcessorInput:v7 inferenceInputBufferType:v8];
    if ([v9 inferenceBufferForAttachedMediaKey:@"PersonSemanticsSkin"])
    {
      [OUTLINED_FUNCTION_17() setSkinMask:?];
    }

    if ([v9 inferenceBufferForAttachedMediaKey:@"PersonSemanticsHair"])
    {
      [OUTLINED_FUNCTION_17() setHairMask:?];
    }

    if ([v9 inferenceBufferForAttachedMediaKey:0x1F21AAD30])
    {
      [OUTLINED_FUNCTION_17() setSkyMask:?];
    }

    if ([(BWUBNRFProcessorControllerConfiguration *)self->_configuration semanticRenderingVersion]< 4)
    {
      if ([v9 inferenceBufferForAttachedMediaKey:0x1F219E750])
      {
        [OUTLINED_FUNCTION_17() setPersonMask:?];
      }
    }

    else if ([v9 inferenceBufferForAttachedMediaKey:0x1F21AABB0])
    {
      [OUTLINED_FUNCTION_17() setHighResPersonMask:?];
    }

    v10 = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = BWInferenceLowResPersonInstanceMaskKeys();
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          if ([v9 inferenceBufferForAttachedMediaKey:*(*(&v19 + 1) + 8 * i)])
          {
            [OUTLINED_FUNCTION_7() addObject:?];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v18 count:16];
      }

      while (v13);
    }

    if ([v10 count])
    {
      [v4 setLowResPersonInstanceMasks:v10];
      [v9 inferenceForAttachmentKey:0x1F219E990];
      [OUTLINED_FUNCTION_17() setLowResPersonInstanceConfidences:?];
      [v9 inferenceForAttachmentKey:0x1F219E9B0];
      [OUTLINED_FUNCTION_17() setLowResPersonInstanceBoundingBoxes:?];
    }

    [-[BWStillImageCaptureSettings metadata](-[BWStillImageProcessorControllerInput captureSettings](-[BWUBNRFProcessorRequest input](self->_currentRequest "input")];
    [OUTLINED_FUNCTION_17() setSmartCameraSceneType:?];
    if ([v9 inferenceForAttachmentKey:0x1F219E6F0])
    {
      [OUTLINED_FUNCTION_17() setSkinToneClassificationsForFaces:?];
    }

    if ([v9 inferenceForAttachmentKey:0x1F219E5F0])
    {
      [OUTLINED_FUNCTION_17() setFaceLandmarks:?];
    }
  }

  else
  {
    v9 = 0;
  }

  v16 = v4;
  OUTLINED_FUNCTION_56();
  return result;
}

- (id)adaptiveBracketingParametersForDigitalFlashMode:(int)a3 frameStatistics:(id)a4 stationary:(BOOL)a5 sphereOffsetEnabled:(BOOL)a6 detectedObjects:(id)a7
{
  if (a3 && (v8 = a6, v9 = a5, [a4 portType], (v13 = objc_msgSend(OUTLINED_FUNCTION_37_0(), "objectForKeyedSubscript:")) != 0))
  {
    v14 = v13;
    NRFStatisticsFromFrameStatistics = nfrp_createNRFStatisticsFromFrameStatistics(self->_nrfProgressiveBracketingStatisticsClass, a4, v9, a7);
    v16 = -[BWUBNRFAdaptiveBracketingParameters initWithProgressiveBracketingParameters:progressiveBracketingStatisticsClass:]([BWUBNRFAdaptiveBracketingParameters alloc], [objc_alloc(self->_nrfProgressiveBracketingParametersClass) initWithOptions:v14 portType:objc_msgSend(a4 statistics:"portType") mode:NRFStatisticsFromFrameStatistics sphereOffsetEnabled:{a3 == 2, v8}], self->_nrfProgressiveBracketingStatisticsClass);
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
    v5 = -[BWUBNRFAdaptiveBracketingParameters initWithProgressiveBracketingParameters:progressiveBracketingStatisticsClass:]([BWUBNRFAdaptiveBracketingParameters alloc], [objc_alloc(self->_nrfProgressiveBracketingParametersClass) initWithOptions:v5 portType:a3 statistics:0 mode:0 sphereOffsetEnabled:0], self->_nrfProgressiveBracketingStatisticsClass);
  }

  return v5;
}

void __74__BWUBNRFProcessorController__logCompletionStatus_processingType_request___block_invoke(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  v6 = 0;
  [(BWUBNRFProcessorCompletionStatus *)*(a1 + 32) waitForCompletionWithDescriptionOut:?];
  if (dword_1EB58DE60)
  {
    v4 = OUTLINED_FUNCTION_3_13();
    os_log_type_enabled(v4, v5);
    OUTLINED_FUNCTION_30();
    if (v1)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", *(a1 + 56)];
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  objc_autoreleasePoolPop(v3);
}

- (uint64_t)processor:(id *)a1 didSelectProgressiveFusionReferenceFrameIndex:.cold.1(id *a1)
{
  -[BWUBNRFProcessorInput _setReferenceFrame:]([*a1 input]);
  [objc_msgSend(*a1 "input")];
  -[BWUBNRFProcessorInput _setErrorRecoveryFrame:]([*a1 input]);
  if (*a1 && [objc_msgSend(objc_msgSend(*(*a1 + 1) "captureStreamSettings")])
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