@interface BWDeepZoomProcessorController
+ (void)initialize;
- (BWDeepZoomProcessorController)initWithConfiguration:(id)a3;
- (int)enqueueInputForProcessing:(id)a3 delegate:(id)a4;
- (int)prepareWithPixelBufferPoolProvider:(id)a3;
- (uint64_t)_loadSetupAndPrepareDeepZoomProcessor;
- (uint64_t)_process;
- (uint64_t)_serviceNextRequest;
- (uint64_t)_updateStateIfNeeded;
- (void)cancelProcessing;
- (void)dealloc;
- (void)inputSampleBufferReceived:(id)a3;
@end

@implementation BWDeepZoomProcessorController

+ (void)initialize
{
  if (objc_opt_class() == a1 && dzpc_initializeTrace_sInitializeTraceOnceToken != -1)
  {
    +[BWDeepZoomProcessorControllerConfiguration doDeepZoomStandardOrLiteForType:sensorConfiguration:dimensions:metadata:stillImageSettings:intermediateZoomSrcRectOut:intermediateZoomDstRectOut:];
  }
}

- (BWDeepZoomProcessorController)initWithConfiguration:(id)a3
{
  if (!a3 || ![a3 metalCommandQueue] || !objc_msgSend(a3, "inputFormat") || !objc_msgSend(a3, "outputFormat") || objc_msgSend(a3, "version") < 1 || objc_msgSend(a3, "type") != 2 && objc_msgSend(a3, "type") != 1 && objc_msgSend(a3, "type") != 3 || (v10.receiver = self, v10.super_class = BWDeepZoomProcessorController, (self = -[BWDeepZoomProcessorController init](&v10, sel_init)) != 0) && ((self->_configuration = a3, v5 = objc_alloc_init(MEMORY[0x1E695DF70]), (self->_requestQueue = v5) == 0) || (v6 = -[FigStateMachine initWithLabel:stateCount:initialState:owner:]([FigStateMachine alloc], "initWithLabel:stateCount:initialState:owner:", @"BWDeepZoomProcessorController state machine", 4, 1, self), -[FigStateMachine setPerformsAtomicStateTransitions:](v6, "setPerformsAtomicStateTransitions:", 0), -[FigStateMachine setLabel:forState:](v6, "setLabel:forState:", @"Idle", 1), -[FigStateMachine setLabel:forState:](v6, "setLabel:forState:", @"Ready", 2), -[FigStateMachine setLabel:forState:](v6, "setLabel:forState:", @"Waiting", 4), -[FigStateMachine setLabel:forState:](v6, "setLabel:forState:", @"Processing", 8), -[FigStateMachine whenTransitioningToStates:callHandler:](v6, "whenTransitioningToStates:callHandler:", 1, &__block_literal_global_304), -[FigStateMachine whenTransitioningToStates:callHandler:](v6, "whenTransitioningToStates:callHandler:", 2, &__block_literal_global_306), -[FigStateMachine whenTransitioningToState:callHandler:](v6, "whenTransitioningToState:callHandler:", 4, &__block_literal_global_308), -[FigStateMachine whenTransitioningToState:callHandler:](v6, "whenTransitioningToState:callHandler:", 8, &__block_literal_global_310), (self->_stateMachine = v6) == 0) || (self->_inferenceConfigurationByInferenceType = objc_alloc_init(MEMORY[0x1E695DF90]), v7 = objc_autoreleasePoolPush(), SetupAndPrepareDeepZoom = -[BWDeepZoomProcessorController _loadSetupAndPrepareDeepZoomProcessor](self), objc_autoreleasePoolPop(v7), SetupAndPrepareDeepZoom)))
  {

    return 0;
  }

  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWDeepZoomProcessorController;
  [(BWStillImageProcessorController *)&v3 dealloc];
}

- (void)cancelProcessing
{
  [(NSMutableArray *)self->_requestQueue removeAllObjects];
  [(BWDeepZoomProcessorRequest *)self->_currentRequest setErr:4294950490];

  [(BWDeepZoomProcessorController *)self _serviceNextRequest];
}

- (void)inputSampleBufferReceived:(id)a3
{
  [(BWDeepZoomProcessorRequest *)self->_currentRequest input];

  [(BWDeepZoomProcessorController *)self _updateStateIfNeeded];
}

- (uint64_t)_loadSetupAndPrepareDeepZoomProcessor
{
  if (result)
  {
    v1 = result;
    if ([*(result + 64) inferenceScheduler])
    {
      if ([OUTLINED_FUNCTION_0_125() type] == 3)
      {
        v2 = [OUTLINED_FUNCTION_0_125() stereoPhotoOutputDimensions];
        v3 = v2 <= 0 || SHIDWORD(v2) <= 0;
        v4 = !v3;
        HIDWORD(v51) = v4;
      }

      else
      {
        HIDWORD(v51) = 0;
      }

      v5 = [OUTLINED_FUNCTION_0_125() mode] == 5 ? 159 : 160;
      v6 = [BWInferenceEngine alloc];
      v7 = [OUTLINED_FUNCTION_0_125() inferenceScheduler];
      v8 = -[BWInferenceEngine initWithScheduler:priority:shareIntermediateBuffer:](v6, "initWithScheduler:priority:shareIntermediateBuffer:", v7, [OUTLINED_FUNCTION_0_125() figThreadPriority], 1);
      *(v1 + 96) = v8;
      if (v8)
      {
        [OUTLINED_FUNCTION_0_125() stereoPhotoOutputDimensions];
        v9 = [(BWInferenceConfiguration *)[BWDeepZoomInferenceConfiguration alloc] initWithInferenceType:v5];
        if (v9)
        {
          v10 = v9;
          [OUTLINED_FUNCTION_0_125() metalCommandQueue];
          [OUTLINED_FUNCTION_8() setMetalCommandQueue:?];
          -[BWDeepZoomInferenceConfiguration setVersion:](v10, "setVersion:", [OUTLINED_FUNCTION_0_125() version]);
          [(BWTiledEspressoInferenceConfiguration *)v10 setForceSynchronousInference:0];
          [OUTLINED_FUNCTION_0_125() pipelineProcessingContext];
          [OUTLINED_FUNCTION_8() setPipelineProcessingContext:?];
          v99[0] = &unk_1F2247DE8;
          v99[1] = &unk_1F2247E00;
          v100[0] = &unk_1F2247E00;
          v100[1] = &unk_1F2247DE8;
          v99[2] = &unk_1F2247E18;
          v100[2] = &unk_1F2247E18;
          v53 = v10;
          v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v100 forKeys:v99 count:3];
          -[BWDeepZoomInferenceConfiguration setType:](v10, "setType:", [objc_msgSend(v49 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(OUTLINED_FUNCTION_0_125(), "type"))), "unsignedIntValue"}]);
          if ([(BWDeepZoomInferenceConfiguration *)v10 type])
          {
            LODWORD(v51) = v5;
            v97[0] = &unk_1F2247E30;
            v97[1] = &unk_1F2247E00;
            v98[0] = &unk_1F2247E30;
            v98[1] = &unk_1F2247E00;
            v97[2] = &unk_1F2247DE8;
            v97[3] = &unk_1F2247E18;
            v98[2] = &unk_1F2247DE8;
            v98[3] = &unk_1F2247E18;
            v97[4] = &unk_1F2247E48;
            v97[5] = &unk_1F2247E60;
            v98[4] = &unk_1F2247E48;
            v98[5] = &unk_1F2247E60;
            [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:v97 count:6];
            [OUTLINED_FUNCTION_0_125() mode];
            [OUTLINED_FUNCTION_37_0() numberWithInt:?];
            -[BWDeepZoomInferenceConfiguration setMode:](v10, "setMode:", [objc_msgSend(OUTLINED_FUNCTION_28() "objectForKeyedSubscript:"unsignedIntValue"")]);
            v11 = [MEMORY[0x1E695DF90] dictionary];
            v93 = 0u;
            v94 = 0u;
            v95 = 0u;
            v96 = 0u;
            v12 = [OUTLINED_FUNCTION_0_125() sensorConfigurationsByPortType];
            v13 = [v12 countByEnumeratingWithState:&v93 objects:v92 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v94;
              do
              {
                for (i = 0; i != v14; ++i)
                {
                  if (*v94 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  [objc_msgSend(objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_0_125() "sensorConfigurationsByPortType")];
                  [OUTLINED_FUNCTION_28() setObject:? forKeyedSubscript:?];
                }

                v14 = [v12 countByEnumeratingWithState:&v93 objects:v92 count:16];
              }

              while (v14);
            }

            [(BWInferenceConfiguration *)v53 setTuningParameters:v11];
            if ([OUTLINED_FUNCTION_0_125() mode] == 5)
            {
              [OUTLINED_FUNCTION_0_125() stereoPhotoOutputDimensions];
              [OUTLINED_FUNCTION_8() setStereoPhotoOutputDimensions:?];
            }

            if (![*(v1 + 96) addInferenceOfType:v5 version:BWInferenceVersionMakeMajor(1) & 0xFFFFFFFFFFFFLL configuration:v53])
            {
              v17 = *(v1 + 104);
              [(BWInferenceConfiguration *)v53 inferenceType];
              [v17 setObject:v53 forKeyedSubscript:{objc_msgSend(OUTLINED_FUNCTION_37_0(), "numberWithInt:")}];
              if (!HIDWORD(v51) || [OUTLINED_FUNCTION_0_125() mode] == 5)
              {
                goto LABEL_32;
              }

              v18 = [(BWInferenceConfiguration *)[BWDeepZoomInferenceConfiguration alloc] initWithInferenceType:159];
              -[BWTiledEspressoInferenceConfiguration setMetalCommandQueue:](v18, "setMetalCommandQueue:", [OUTLINED_FUNCTION_0_125() metalCommandQueue]);
              [OUTLINED_FUNCTION_0_125() version];
              [OUTLINED_FUNCTION_37_0() setVersion:?];
              [(BWTiledEspressoInferenceConfiguration *)v18 setForceSynchronousInference:0];
              [objc_msgSend(v49 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(OUTLINED_FUNCTION_0_125(), "type"))), "unsignedIntValue"}];
              [OUTLINED_FUNCTION_37_0() setType:?];
              [(BWDeepZoomInferenceConfiguration *)v18 setMode:5];
              [(BWInferenceConfiguration *)v18 setTuningParameters:v11];
              -[BWDeepZoomInferenceConfiguration setStereoPhotoOutputDimensions:](v18, "setStereoPhotoOutputDimensions:", [OUTLINED_FUNCTION_0_125() stereoPhotoOutputDimensions]);
              if (![*(v1 + 96) addInferenceOfType:159 version:BWInferenceVersionMakeMajor(1) & 0xFFFFFFFFFFFFLL configuration:v18])
              {
                [*(v1 + 104) setObject:v18 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", -[BWInferenceConfiguration inferenceType](v18, "inferenceType"))}];
LABEL_32:
                v19 = [MEMORY[0x1E695DF70] arrayWithArray:&unk_1F224A788];
                [v19 addObjectsFromArray:{FigCaptureSupportedCompressedPixelFormatsForSettings(4, 3, 0, 1, 0, 1, 1, 0)}];
                v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
                *(v1 + 112) = v20;
                if (v20)
                {
                  v21 = objc_alloc_init(BWVideoFormatRequirements);
                  [objc_msgSend(OUTLINED_FUNCTION_0_125() "inputFormat")];
                  [OUTLINED_FUNCTION_8() setWidth:?];
                  [objc_msgSend(OUTLINED_FUNCTION_0_125() "inputFormat")];
                  [OUTLINED_FUNCTION_8() setHeight:?];
                  [(BWVideoFormatRequirements *)v21 setSupportedPixelFormats:v19];
                  [(BWVideoFormatRequirements *)v21 setBytesPerRowAlignment:64];
                  v91 = v21;
                  [MEMORY[0x1E695DEC8] arrayWithObjects:&v91 count:1];
                  v22 = [OUTLINED_FUNCTION_7() formatByResolvingRequirements:?];

                  if (v22)
                  {
                    [OUTLINED_FUNCTION_8_67() setObject:v22 forKeyedSubscript:@"PrimaryFormat"];
                    v23 = objc_alloc_init(BWVideoFormatRequirements);
                    [objc_msgSend(OUTLINED_FUNCTION_0_125() "outputFormat")];
                    [OUTLINED_FUNCTION_7() setWidth:?];
                    [objc_msgSend(OUTLINED_FUNCTION_0_125() "outputFormat")];
                    [OUTLINED_FUNCTION_7() setHeight:?];
                    [(BWVideoFormatRequirements *)v23 setSupportedPixelFormats:v19];
                    [(BWVideoFormatRequirements *)v23 setBytesPerRowAlignment:64];
                    v90 = v23;
                    [MEMORY[0x1E695DEC8] arrayWithObjects:&v90 count:1];
                    v24 = [OUTLINED_FUNCTION_8() formatByResolvingRequirements:?];

                    if (v24)
                    {
                      if ([OUTLINED_FUNCTION_0_125() mode] != 5)
                      {
                        [OUTLINED_FUNCTION_8_67() setObject:v24 forKeyedSubscript:0x1F219ECB0];
                      }

                      v25 = [OUTLINED_FUNCTION_0_125() type];
                      if (v25 != 3)
                      {
                        goto LABEL_43;
                      }

                      v33 = +[BWVideoFormatRequirements formatRequirements];
                      [objc_msgSend(OUTLINED_FUNCTION_0_125() "outputFormat")];
                      [OUTLINED_FUNCTION_7() setWidth:?];
                      [objc_msgSend(OUTLINED_FUNCTION_0_125() "outputFormat")];
                      [OUTLINED_FUNCTION_7() setHeight:?];
                      [v33 setSupportedPixelFormats:v19];
                      [v33 setBytesPerRowAlignment:64];
                      v89 = v33;
                      [MEMORY[0x1E695DEC8] arrayWithObjects:&v89 count:1];
                      if ([OUTLINED_FUNCTION_28() formatByResolvingRequirements:?])
                      {
                        v25 = [OUTLINED_FUNCTION_8_67() setObject:? forKeyedSubscript:?];
                        if (!HIDWORD(v51))
                        {
LABEL_43:
                          v35 = *(v1 + 112);
                          result = OUTLINED_FUNCTION_5_4(v25, v26, v27, v28, v29, v30, v31, v32, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, 0);
                          if (!result)
                          {
                            return result;
                          }

                          v36 = result;
                          v37 = MEMORY[0];
LABEL_45:
                          v38 = 0;
                          while (1)
                          {
                            if (MEMORY[0] != v37)
                            {
                              objc_enumerationMutation(v35);
                            }

                            [OUTLINED_FUNCTION_8_67() objectForKeyedSubscript:*(8 * v38)];
                            v39 = [OUTLINED_FUNCTION_28() prepareForInputVideoFormat:? attachedMediaKey:?];
                            if (v39)
                            {
                              return 4294954516;
                            }

                            if (v36 == ++v38)
                            {
                              result = OUTLINED_FUNCTION_5_4(v39, v40, v41, v42, v43, v44, v45, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v87);
                              v36 = result;
                              if (result)
                              {
                                goto LABEL_45;
                              }

                              return result;
                            }
                          }
                        }

                        if ([OUTLINED_FUNCTION_0_125() mode] == 5 || (v34 = +[BWVideoFormatRequirements formatRequirements](BWVideoFormatRequirements, "formatRequirements"), objc_msgSend(v34, "setWidth:", objc_msgSend(OUTLINED_FUNCTION_0_125(), "stereoPhotoOutputDimensions")), objc_msgSend(v34, "setHeight:", objc_msgSend(OUTLINED_FUNCTION_0_125(), "stereoPhotoOutputDimensions") >> 32), objc_msgSend(v34, "setSupportedPixelFormats:", v19), objc_msgSend(v34, "setBytesPerRowAlignment:", 64), v88 = v34, (v24 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v88, 1))) != 0))
                        {
                          v25 = [OUTLINED_FUNCTION_8_67() setObject:v24 forKeyedSubscript:0x1F219ECD0];
                          goto LABEL_43;
                        }
                      }
                    }
                  }
                }

                return 4294954510;
              }
            }
          }
        }
      }
    }

    return 4294954516;
  }

  return result;
}

- (int)prepareWithPixelBufferPoolProvider:(id)a3
{
  if (!a3)
  {
    return -12780;
  }

  result = [(BWInferenceEngine *)self->_inferenceEngine prepareForInferenceWithFormatProvider:self pixelBufferPoolProvider:a3];
  if (result)
  {
    return -12782;
  }

  return result;
}

- (int)enqueueInputForProcessing:(id)a3 delegate:(id)a4
{
  v5 = [[BWDeepZoomProcessorRequest alloc] initWithInput:a3 delegate:a4];
  [(NSMutableArray *)self->_requestQueue addObject:v5];

  if ([(FigStateMachine *)self->_stateMachine currentState]== 1)
  {
    [(FigStateMachine *)self->_stateMachine transitionToState:2];
  }

  return 0;
}

- (uint64_t)_serviceNextRequest
{
  if (result)
  {
    v1 = result;
    v2 = [*(result + 88) delegate];
    v3 = [*(v1 + 88) input];
    v4 = [*(v1 + 88) err];

    *(v1 + 88) = 0;
    [v2 processorController:v1 didFinishProcessingInput:v3 err:v4];

    v5 = [*(v1 + 80) firstObject];
    *(v1 + 88) = v5;
    if (v5)
    {
      [*(v1 + 80) removeObjectAtIndex:0];
      [objc_msgSend(*(v1 + 88) "input")];
    }

    return [(BWDeepZoomProcessorController *)v1 _updateStateIfNeeded];
  }

  return result;
}

- (uint64_t)_updateStateIfNeeded
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 88);
    v3 = [*(result + 72) currentState];
    if (v2)
    {
      if (v3 == 2)
      {
        v4 = 4;
      }

      else if (v3 == 4)
      {
        v4 = [objc_msgSend(v2 "input")] ? 8 : 4;
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

    result = [*(v1 + 72) currentState];
    if (v4 != result)
    {
      v5 = *(v1 + 72);

      return [v5 transitionToState:v4];
    }
  }

  return result;
}

- (uint64_t)_process
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = [*(result + 88) input];
  v3 = [v2 settings];
  if ([OUTLINED_FUNCTION_1_137() err])
  {
    goto LABEL_55;
  }

  if (!v2)
  {
    v26 = OUTLINED_FUNCTION_1_137();
    v27 = 4294954514;
    goto LABEL_54;
  }

  if (!v3)
  {
    v4 = OUTLINED_FUNCTION_1_137();
    goto LABEL_57;
  }

  if (![v3 outputWidth] || !objc_msgSend(v3, "outputHeight"))
  {
    v26 = OUTLINED_FUNCTION_1_137();
    v27 = 4294935586;
LABEL_54:
    [v26 setErr:v27];
LABEL_55:
    v9 = 0;
    v3 = 0;
LABEL_58:
    v8 = 1;
    goto LABEL_38;
  }

  v3 = [v2 sampleBuffer];
  v4 = OUTLINED_FUNCTION_1_137();
  if (!v3)
  {
LABEL_57:
    [v4 setErr:4294954516];
    v9 = 0;
    goto LABEL_58;
  }

  v5 = [objc_msgSend(v4 "input")];
  v6 = [OUTLINED_FUNCTION_14_46() type];
  v7 = v1[8];
  if (v6 == 3)
  {
    if (!+[BWDeepZoomProcessorControllerConfiguration doDeepZoomTransferForSampleBuffer:sensorConfiguration:intermediateZoomSrcRectOut:](BWDeepZoomProcessorControllerConfiguration, "doDeepZoomTransferForSampleBuffer:sensorConfiguration:intermediateZoomSrcRectOut:", v3, [objc_msgSend(v7 "sensorConfigurationsByPortType")], 0))
    {
LABEL_10:
      if (dword_1EB58E220)
      {
        OUTLINED_FUNCTION_5_94();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_2_132();
        v8 = 1;
        OUTLINED_FUNCTION_11_59();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      else
      {
        v8 = 1;
      }

      v9 = v3;
      goto LABEL_38;
    }
  }

  else if (!+[BWDeepZoomProcessorControllerConfiguration doDeepZoomStandardOrLiteForSampleBuffer:type:sensorConfiguration:intermediateZoomSrcRectOut:intermediateZoomDstRectOut:](BWDeepZoomProcessorControllerConfiguration, "doDeepZoomStandardOrLiteForSampleBuffer:type:sensorConfiguration:intermediateZoomSrcRectOut:intermediateZoomDstRectOut:", v3, [v7 type], objc_msgSend(objc_msgSend(v1[8], "sensorConfigurationsByPortType"), "objectForKeyedSubscript:", v5), 0, 0))
  {
    goto LABEL_10;
  }

  v10 = [OUTLINED_FUNCTION_14_46() mode];
  if (![v1[14] objectForKeyedSubscript:0x1F219ECD0])
  {
    if (!v10)
    {
      +[BWDeepZoomProcessorControllerConfiguration deepZoomProcessingModeForType:sensorConfiguration:](BWDeepZoomProcessorControllerConfiguration, "deepZoomProcessingModeForType:sensorConfiguration:", [OUTLINED_FUNCTION_14_46() type], objc_msgSend(objc_msgSend(v1[8], "sensorConfigurationsByPortType"), "objectForKeyedSubscript:", v5));
    }

    v11 = 0;
    goto LABEL_21;
  }

  if ((BWStillImageProcessingFlagsForSampleBuffer(v3) & 0x100000) == 0)
  {
    v11 = [MEMORY[0x1E695DFA8] setWithObject:&unk_1F2247EF0];
LABEL_21:
    v13 = 160;
    goto LABEL_23;
  }

  v11 = [MEMORY[0x1E695DFA8] setWithObject:&unk_1F2247ED8];
  v13 = 159;
LABEL_23:
  v14 = *off_1E798A3C8;
  v15 = CMGetAttachment(v3, *off_1E798A3C8, 0);
  [v15 removeObjectForKey:*off_1E798A718];
  [v15 removeObjectForKey:*off_1E798A710];
  v16 = [v1[13] objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v13)}];
  if ([objc_msgSend(v16 "tuningParameters")])
  {
    [v1[12] performInferencesOnSampleBuffer:v3 attachingResultsToSampleBuffer:v3 skippingInferencesWithTypes:v11];
    [OUTLINED_FUNCTION_1_137() setErr:?];
    if ([OUTLINED_FUNCTION_1_137() err])
    {
      v9 = 0;
    }

    else
    {
      AttachedMedia = BWSampleBufferGetAttachedMedia(v3, [v16 outputAttachedMediaKey]);
      v9 = AttachedMedia;
      if (AttachedMedia)
      {
        CFRetain(AttachedMedia);
        if ([v1[8] type] == 3)
        {
          v18 = BWSampleBufferGetAttachedMedia(v3, 0x1F219EC90);
          if (!CMGetAttachment(v18, v14, 0) || !CMGetAttachment(v9, v14, 0))
          {
            v8 = 0;
            goto LABEL_38;
          }

          if (FigCFDictionaryGetCGRectIfPresent())
          {
            FigCFDictionarySetCGRect();
          }

          if (!dword_1EB58E220)
          {
            goto LABEL_37;
          }

          v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
        }

        else
        {
          if (!dword_1EB58E220)
          {
LABEL_37:
            v8 = 0;
            goto LABEL_38;
          }

          OUTLINED_FUNCTION_5_94();
          v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
        }

        OUTLINED_FUNCTION_2_132();
        OUTLINED_FUNCTION_11_59();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_37;
      }

      [OUTLINED_FUNCTION_1_137() setErr:4294954513];
    }

    v8 = 1;
    goto LABEL_38;
  }

  v8 = 1;
  v9 = v3;
LABEL_38:
  BWSampleBufferRemoveAttachedMedia(v3, 0x1F219ECB0);
  if ([OUTLINED_FUNCTION_14_46() type] == 3)
  {
    BWSampleBufferRemoveAttachedMedia(v3, 0x1F219ECD0);
    BWSampleBufferRemoveAttachedMedia(v3, 0x1F219EC90);
  }

  v21 = [OUTLINED_FUNCTION_1_137() err];
  if (v3 && v21)
  {
    if ([OUTLINED_FUNCTION_1_137() err] != -73198)
    {
      FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
      OUTLINED_FUNCTION_5_94();
      v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      [OUTLINED_FUNCTION_1_137() err];
      CMSampleBufferGetImageBuffer(v3);
      BWStringFromPixelBuffer();
      v23 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(FrameworkRadarComponent, v23, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWDeepZoomProcessorController.m", 1064, @"LastShownDate:BWDeepZoomProcessorController.m:1064", @"LastShownBuild:BWDeepZoomProcessorController.m:1064", 0);
      free(v23);
    }

    [OUTLINED_FUNCTION_1_137() setErr:0];
    v9 = v3;
  }

  v24 = [OUTLINED_FUNCTION_1_137() delegate];
  [v24 processorController:v1 didFinishProcessingSampleBuffer:v9 type:objc_msgSend(v2 processorInput:"bufferType") err:{v2, objc_msgSend(OUTLINED_FUNCTION_1_137(), "err")}];
  if (v9)
  {
    v25 = v8;
  }

  else
  {
    v25 = 1;
  }

  if ((v25 & 1) == 0)
  {
    CFRelease(v9);
  }

  return [(BWDeepZoomProcessorController *)v1 _updateStateIfNeeded];
}

@end