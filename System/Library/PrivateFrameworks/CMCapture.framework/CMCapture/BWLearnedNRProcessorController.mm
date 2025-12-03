@interface BWLearnedNRProcessorController
+ (void)initialize;
- (BWLearnedNRProcessorController)initWithConfiguration:(id)configuration;
- (id)inputInferenceVideoFormatForAttachedMediaKey:(id)key;
- (int)enqueueInputForProcessing:(id)processing delegate:(id)delegate;
- (int)prepareWithPixelBufferPoolProvider:(id)provider;
- (uint64_t)_addInferenceType:(uint64_t)type outputVideoRequirements:;
- (uint64_t)_attachedMediaKeyForOutputFormat:(uint64_t)result;
- (uint64_t)_configureInference;
- (uint64_t)_inputFormat;
- (uint64_t)_landscapeCropInputFormat;
- (uint64_t)_portraitCropInputFormat;
- (uint64_t)_primaryInputFormat;
- (uint64_t)_process;
- (uint64_t)_quadraInputFormat;
- (uint64_t)_quadraUltraHighResolutionInputFormat;
- (uint64_t)_quadraZoomBasedInputFormat;
- (uint64_t)_serviceNextRequest;
- (uint64_t)_squareCropInputFormat;
- (uint64_t)_updateStateIfNeeded;
- (void)cancelProcessing;
- (void)dealloc;
- (void)input:(id)input setInputFrame:(opaqueCMSampleBuffer *)frame;
@end

@implementation BWLearnedNRProcessorController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWLearnedNRProcessorController)initWithConfiguration:(id)configuration
{
  v9.receiver = self;
  v9.super_class = BWLearnedNRProcessorController;
  v4 = [(BWLearnedNRProcessorController *)&v9 init];
  if (v4)
  {
    if ([objc_msgSend(configuration "sensorConfigurationsByPortType")])
    {
      v4->_configuration = configuration;
      v6 = [[FigStateMachine alloc] initWithLabel:@"BWLearnedNRController state machine" stateCount:4 initialState:1 owner:v4];
      [(FigStateMachine *)v6 setPerformsAtomicStateTransitions:0];
      [(FigStateMachine *)v6 setLabel:@"Idle" forState:1];
      [(FigStateMachine *)v6 setLabel:@"Ready" forState:2];
      [(FigStateMachine *)v6 setLabel:@"Waiting" forState:4];
      [(FigStateMachine *)v6 setLabel:@"Processing" forState:8];
      [(FigStateMachine *)v6 whenTransitioningToStates:1 callHandler:&__block_literal_global_113];
      [(FigStateMachine *)v6 whenTransitioningToStates:2 callHandler:&__block_literal_global_244];
      [(FigStateMachine *)v6 whenTransitioningToState:4 callHandler:&__block_literal_global_246];
      [(FigStateMachine *)v6 whenTransitioningToState:8 callHandler:&__block_literal_global_248];
      v4->_stateMachine = v6;
      v4->_requestQueue = objc_alloc_init(MEMORY[0x1E695DF70]);
      v4->_inferenceConfigurationByInferenceType = objc_alloc_init(MEMORY[0x1E695DF90]);
      v7 = objc_autoreleasePoolPush();
      _configureInference = [(BWLearnedNRProcessorController *)v4 _configureInference];
      objc_autoreleasePoolPop(v7);
      if (!_configureInference)
      {
        return v4;
      }
    }

    else
    {
      [BWLearnedNRProcessorController initWithConfiguration:];
    }

    return 0;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWLearnedNRProcessorController;
  [(BWStillImageProcessorController *)&v3 dealloc];
}

- (void)cancelProcessing
{
  [(NSMutableArray *)self->_requestQueue removeAllObjects];
  [(BWLearnedNRRequest *)self->_currentRequest setErr:4294950490];

  [(BWLearnedNRProcessorController *)self _serviceNextRequest];
}

- (id)inputInferenceVideoFormatForAttachedMediaKey:(id)key
{
  if (![key isEqualToString:@"PrimaryFormat"])
  {
    return 0;
  }

  [(BWLearnedNRProcessorController *)self inputInferenceVideoFormatForAttachedMediaKey:?];
  return v5;
}

- (uint64_t)_configureInference
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  *(result + 96) = 0;
  v3 = [BWInferenceEngine alloc];
  [OUTLINED_FUNCTION_12_44() inferenceScheduler];
  result = -[BWInferenceEngine initWithScheduler:priority:shareIntermediateBuffer:](v3, "initWithScheduler:priority:shareIntermediateBuffer:", v1, [OUTLINED_FUNCTION_11_47() figThreadPriority], 1);
  *(v2 + 104) = result;
  if (!result)
  {
    return result;
  }

  _inputFormat = [(BWLearnedNRProcessorController *)v2 _inputFormat];
  _quadraInputFormat = [(BWLearnedNRProcessorController *)v2 _quadraInputFormat];
  _quadraZoomBasedInputFormat = [(BWLearnedNRProcessorController *)v2 _quadraZoomBasedInputFormat];
  _landscapeCropInputFormat = [(BWLearnedNRProcessorController *)v2 _landscapeCropInputFormat];
  _portraitCropInputFormat = [(BWLearnedNRProcessorController *)v2 _portraitCropInputFormat];
  _squareCropInputFormat = [(BWLearnedNRProcessorController *)v2 _squareCropInputFormat];
  _quadraUltraHighResolutionInputFormat = [(BWLearnedNRProcessorController *)v2 _quadraUltraHighResolutionInputFormat];
  [OUTLINED_FUNCTION_12_44() outputFormat];
  v6 = OUTLINED_FUNCTION_10_29();
  [BWLearnedNRProcessorController _attachedMediaKeyForOutputFormat:v6];
  outputFormat = [OUTLINED_FUNCTION_11_47() outputFormat];
  v8 = lnrpc_inferenceVideoRequirementForVideoFormat(v1, outputFormat);
  [OUTLINED_FUNCTION_12_44() zoomBasedOutputFormat];
  v9 = OUTLINED_FUNCTION_10_29();
  [BWLearnedNRProcessorController _attachedMediaKeyForOutputFormat:v9];
  zoomBasedOutputFormat = [OUTLINED_FUNCTION_11_47() zoomBasedOutputFormat];
  v31 = lnrpc_inferenceVideoRequirementForVideoFormat(v1, zoomBasedOutputFormat);
  [OUTLINED_FUNCTION_12_44() landscapeCropOutputFormat];
  v11 = OUTLINED_FUNCTION_10_29();
  [BWLearnedNRProcessorController _attachedMediaKeyForOutputFormat:v11];
  landscapeCropOutputFormat = [OUTLINED_FUNCTION_11_47() landscapeCropOutputFormat];
  lnrpc_inferenceVideoRequirementForVideoFormat(v1, landscapeCropOutputFormat);
  [OUTLINED_FUNCTION_11_47() portraitCropOutputFormat];
  v13 = OUTLINED_FUNCTION_10_29();
  v14 = [BWLearnedNRProcessorController _attachedMediaKeyForOutputFormat:v13];
  portraitCropOutputFormat = [OUTLINED_FUNCTION_12_44() portraitCropOutputFormat];
  v16 = lnrpc_inferenceVideoRequirementForVideoFormat(v14, portraitCropOutputFormat);
  [OUTLINED_FUNCTION_12_44() squareCropOutputFormat];
  v17 = OUTLINED_FUNCTION_10_29();
  v18 = [BWLearnedNRProcessorController _attachedMediaKeyForOutputFormat:v17];
  squareCropOutputFormat = [OUTLINED_FUNCTION_12_44() squareCropOutputFormat];
  v20 = lnrpc_inferenceVideoRequirementForVideoFormat(v18, squareCropOutputFormat);
  [OUTLINED_FUNCTION_12_44() ultraHighResolutionOutputFormat];
  v21 = OUTLINED_FUNCTION_10_29();
  v22 = [BWLearnedNRProcessorController _attachedMediaKeyForOutputFormat:v21];
  ultraHighResolutionOutputFormat = [OUTLINED_FUNCTION_12_44() ultraHighResolutionOutputFormat];
  v24 = lnrpc_inferenceVideoRequirementForVideoFormat(v22, ultraHighResolutionOutputFormat);
  if (_inputFormat || _landscapeCropInputFormat || _portraitCropInputFormat || _squareCropInputFormat)
  {
    array = [MEMORY[0x1E695DF70] array];
    v26 = array;
    if (_inputFormat)
    {
      if (!v8)
      {
        goto LABEL_36;
      }

      [array addObject:v8];
    }

    if (_landscapeCropInputFormat)
    {
      if (!v1)
      {
        goto LABEL_36;
      }

      [v26 addObject:v1];
    }

    if (_portraitCropInputFormat)
    {
      if (!v16)
      {
        goto LABEL_36;
      }

      [v26 addObject:v16];
    }

    if (_squareCropInputFormat)
    {
      if (!v20)
      {
        goto LABEL_36;
      }

      [v26 addObject:v20];
    }

    result = [(BWLearnedNRProcessorController *)v2 _addInferenceType:v26 outputVideoRequirements:?];
    if (result)
    {
      return result;
    }
  }

  if (_quadraInputFormat || _quadraZoomBasedInputFormat || _quadraUltraHighResolutionInputFormat)
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v28 = array2;
    if (_quadraInputFormat)
    {
      if (!v8)
      {
        goto LABEL_36;
      }

      [array2 addObject:v8];
    }

    if (_quadraZoomBasedInputFormat)
    {
      if (!v31)
      {
        goto LABEL_36;
      }

      [v28 addObject:?];
    }

    if (!_quadraUltraHighResolutionInputFormat)
    {
      goto LABEL_32;
    }

    if (v24)
    {
      [v28 addObject:v24];
LABEL_32:
      result = [(BWLearnedNRProcessorController *)v2 _addInferenceType:v28 outputVideoRequirements:?];
      if (result)
      {
        return result;
      }

      goto LABEL_33;
    }

LABEL_36:
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    return 4294935585;
  }

LABEL_33:
  v29 = *(v2 + 104);
  _primaryInputFormat = [(BWLearnedNRProcessorController *)v2 _primaryInputFormat];

  return [v29 prepareForInputVideoFormat:_primaryInputFormat attachedMediaKey:@"PrimaryFormat"];
}

- (uint64_t)_attachedMediaKeyForOutputFormat:(uint64_t)result
{
  if (result)
  {
    if (OUTLINED_FUNCTION_19_31([*(result + 64) ultraHighResolutionOutputFormat]))
    {
      return 0x1F219EDB0;
    }

    else
    {
      zoomBasedOutputFormat = [OUTLINED_FUNCTION_20_25() zoomBasedOutputFormat];
      if (OUTLINED_FUNCTION_19_31(zoomBasedOutputFormat))
      {
        return 0x1F219ED30;
      }

      else
      {
        landscapeCropOutputFormat = [OUTLINED_FUNCTION_20_25() landscapeCropOutputFormat];
        if (OUTLINED_FUNCTION_19_31(landscapeCropOutputFormat))
        {
          return 0x1F219ED50;
        }

        else
        {
          portraitCropOutputFormat = [OUTLINED_FUNCTION_20_25() portraitCropOutputFormat];
          if (OUTLINED_FUNCTION_19_31(portraitCropOutputFormat))
          {
            return 0x1F219ED70;
          }

          else
          {
            squareCropOutputFormat = [OUTLINED_FUNCTION_20_25() squareCropOutputFormat];
            if (OUTLINED_FUNCTION_19_31(squareCropOutputFormat))
            {
              return 0x1F219ED90;
            }

            else
            {
              return 0x1F219ED10;
            }
          }
        }
      }
    }
  }

  return result;
}

- (uint64_t)_addInferenceType:(uint64_t)type outputVideoRequirements:
{
  if (!self)
  {
    return 0;
  }

  v5 = -[BWLearnedNRInferenceConfiguration initWithMetalCommandQueue:sensorConfigurationsByPortType:inferenceType:outputVideoRequirements:]([BWLearnedNRInferenceConfiguration alloc], "initWithMetalCommandQueue:sensorConfigurationsByPortType:inferenceType:outputVideoRequirements:", [self[8] metalCommandQueue], objc_msgSend(self[8], "sensorConfigurationsByPortType"), a2, type);
  v6 = [self[13] addInferenceOfType:a2 version:BWInferenceVersionMakeMajor(1) & 0xFFFFFFFFFFFFLL configuration:v5];
  if (v6)
  {
    FigDebugAssert3();
  }

  else
  {
    [self[14] setObject:v5 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a2)}];
  }

  return v6;
}

- (uint64_t)_inputFormat
{
  if (result)
  {
    [*(result + 64) inputFormatsByResolutionFlavor];
    OUTLINED_FUNCTION_0_106();

    return lnrpc_formatFromInputFormatsByResolutionFlavor(v1, v2, v3, v4, v5, v6, v7, 0);
  }

  return result;
}

- (uint64_t)_quadraInputFormat
{
  if (result)
  {
    [*(result + 64) inputFormatsByResolutionFlavor];
    OUTLINED_FUNCTION_0_106();

    return lnrpc_formatFromInputFormatsByResolutionFlavor(v1, v2, v3, v4, v5, v6, v7, 1);
  }

  return result;
}

- (uint64_t)_quadraZoomBasedInputFormat
{
  if (result)
  {
    [*(result + 64) inputFormatsByResolutionFlavor];
    OUTLINED_FUNCTION_4_83();

    return lnrpc_formatFromInputFormatsByResolutionFlavor(v1, v2, v3, v4, v5, v6, v7, 1);
  }

  return result;
}

- (uint64_t)_landscapeCropInputFormat
{
  if (result)
  {
    [*(result + 64) inputFormatsByResolutionFlavor];
    OUTLINED_FUNCTION_10_49();
    OUTLINED_FUNCTION_72();

    return lnrpc_formatFromInputFormatsByResolutionFlavor(v1, v2, v3, v4, v5, v6, v7, 0);
  }

  return result;
}

- (uint64_t)_portraitCropInputFormat
{
  if (result)
  {
    [*(result + 64) inputFormatsByResolutionFlavor];
    OUTLINED_FUNCTION_5_76();
    OUTLINED_FUNCTION_7_66();

    return lnrpc_formatFromInputFormatsByResolutionFlavor(v1, v2, v3, v4, v5, v6, v7, v8);
  }

  return result;
}

- (uint64_t)_squareCropInputFormat
{
  if (result)
  {
    [*(result + 64) inputFormatsByResolutionFlavor];
    OUTLINED_FUNCTION_3_93();
    OUTLINED_FUNCTION_14_38();

    return lnrpc_formatFromInputFormatsByResolutionFlavor(v1, v2, v3, v4, v5, v6, v7, v8);
  }

  return result;
}

- (uint64_t)_quadraUltraHighResolutionInputFormat
{
  if (result)
  {
    [*(result + 64) inputFormatsByResolutionFlavor];
    OUTLINED_FUNCTION_1_114();

    return lnrpc_formatFromInputFormatsByResolutionFlavor(v1, v2, v3, v4, v5, v6, 1, 1);
  }

  return result;
}

- (uint64_t)_primaryInputFormat
{
  if (result)
  {
    v1 = result;
    [*(result + 64) inputFormatsByResolutionFlavor];
    OUTLINED_FUNCTION_0_106();
    result = lnrpc_formatFromInputFormatsByResolutionFlavor(v2, v3, v4, v5, v6, v7, v8, 0);
    if (!result)
    {
      [*(v1 + 64) inputFormatsByResolutionFlavor];
      OUTLINED_FUNCTION_1_114();

      return lnrpc_formatFromInputFormatsByResolutionFlavor(v9, v10, v11, v12, v13, v14, 1, 1);
    }
  }

  return result;
}

- (int)prepareWithPixelBufferPoolProvider:(id)provider
{
  result = [(BWInferenceEngine *)self->_inferenceEngine prepareForInferenceWithFormatProvider:self pixelBufferPoolProvider:provider];
  if (!result)
  {
    self->_inferenceEnginePrepared = 1;
  }

  return result;
}

- (int)enqueueInputForProcessing:(id)processing delegate:(id)delegate
{
  if (![(BWInferenceEngine *)self->_inferenceEngine isConfiguredForInference]|| !self->_inferenceEnginePrepared)
  {
    return -12780;
  }

  v7 = [[BWLearnedNRRequest alloc] initWithInput:processing delegate:delegate];
  [(NSMutableArray *)self->_requestQueue addObject:v7];

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
    delegate = [*(result + 88) delegate];
    input = [*(v1 + 88) input];
    v4 = [*(v1 + 88) err];

    *(v1 + 88) = 0;
    [delegate processorController:v1 didFinishProcessingInput:input err:v4];

    firstObject = [*(v1 + 80) firstObject];
    *(v1 + 88) = firstObject;
    if (firstObject)
    {
      [*(v1 + 80) removeObjectAtIndex:0];
      [objc_msgSend(*(v1 + 88) "input")];
    }

    return [(BWLearnedNRProcessorController *)v1 _updateStateIfNeeded];
  }

  return result;
}

- (uint64_t)_updateStateIfNeeded
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 88);
    currentState = [*(result + 72) currentState];
    if (v2)
    {
      if (currentState == 2)
      {
        v4 = 4;
      }

      else if (currentState == 4)
      {
        v4 = [*(v2 + 8) inputFrame] ? 8 : 4;
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
  v2 = &OBJC_IVAR___BWAudioSourceNode__keepAudioSessionActiveOnStop;
  if ([*(result + 88) err])
  {
    OUTLINED_FUNCTION_9_56();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v210))
    {
      v168 = v211;
    }

    else
    {
      v168 = v211 & 0xFFFFFFFE;
    }

    if (v168)
    {
      [OUTLINED_FUNCTION_13_37() input];
      [OUTLINED_FUNCTION_13_37() err];
      OUTLINED_FUNCTION_76();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_15_37();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v130 = 0;
    goto LABEL_57;
  }

  v3 = [objc_msgSend(OUTLINED_FUNCTION_13_37() "input")];
  if (dword_1EB58E120)
  {
    OUTLINED_FUNCTION_9_56();
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (os_log_type_enabled(v4, v210))
    {
      v5 = v211;
    }

    else
    {
      v5 = v211 & 0xFFFFFFFE;
    }

    if (v5)
    {
      [objc_msgSend(objc_msgSend(v1[11] "input")];
      BWStillImageSampleBufferToDisplayString(v3);
      OUTLINED_FUNCTION_76();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_15_37();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(v3);
  if (!ImageBuffer)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    goto LABEL_46;
  }

  v7 = ImageBuffer;
  v8 = CMGetAttachment(v3, *off_1E798A3C8, 0);
  Width = CVPixelBufferGetWidth(v7);
  Height = CVPixelBufferGetHeight(v7);
  v11 = Width | (Height << 32);
  v12 = 1.0;
  if ([OUTLINED_FUNCTION_8_54() stillImageProcessingMode] == 1)
  {
    FinalCropRect = 0.0;
    v14 = 0.0;
    v15 = 1.0;
    v16 = 1.0;
  }

  else
  {
    FinalCropRect = FigCaptureMetadataUtilitiesGetFinalCropRect();
  }

  FigCaptureMetadataUtilitiesDenormalizeCropRect(FinalCropRect, v14, v15, v16);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  r2 = FigCaptureMetadataUtilitiesGetValidBufferRect();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = [objc_msgSend(OUTLINED_FUNCTION_8_54() "finalCropRectOverscanMultiplierByPortType")];
  if (v31)
  {
    [v31 floatValue];
    v12 = v32;
  }

  v33 = FigCaptureMetadataUtilitiesScaleRect(v18, v20, v22, v24, v12);
  v212.origin.x = (floorf(v33) + -2.0);
  *&v34 = v34;
  v212.origin.y = (floorf(*&v34) + -2.0);
  *&v35 = v35;
  v212.size.width = (ceilf(*&v35) + 4.0);
  *&v36 = v36;
  v212.size.height = (ceilf(*&v36) + 4.0);
  v215.origin.x = r2;
  v215.origin.y = v26;
  v215.size.width = v28;
  v215.size.height = v30;
  v213 = CGRectIntersection(v212, v215);
  x = v213.origin.x;
  y = v213.origin.y;
  v39 = v213.size.width;
  v40 = v213.size.height;
  if (!CGRectIsNull(v213))
  {
    v214.origin.x = x;
    v214.origin.y = y;
    v214.size.width = v39;
    v214.size.height = v40;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v214);
    CMSetAttachment(v3, @"LearnedNRRegionOfInterest", DictionaryRepresentation, 0);
    if (DictionaryRepresentation)
    {
      CFRelease(DictionaryRepresentation);
    }
  }

  if ([objc_msgSend(v8 objectForKeyedSubscript:{*off_1E798B588), "intValue"}] != 1)
  {
    [OUTLINED_FUNCTION_8_54() inputFormatsByResolutionFlavor];
    OUTLINED_FUNCTION_10_49();
    OUTLINED_FUNCTION_72();
    if (Width == [lnrpc_formatFromInputFormatsByResolutionFlavor(v50 v51] && (objc_msgSend(OUTLINED_FUNCTION_8_54(), "inputFormatsByResolutionFlavor"), OUTLINED_FUNCTION_10_49(), OUTLINED_FUNCTION_72(), objc_msgSend(lnrpc_formatFromInputFormatsByResolutionFlavor(v57, v58, v59, v60, v61, v62, v63, 0), "height") == Height))
    {
      [OUTLINED_FUNCTION_8_54() inputFormatsByResolutionFlavor];
      OUTLINED_FUNCTION_10_49();
    }

    else
    {
      [OUTLINED_FUNCTION_8_54() inputFormatsByResolutionFlavor];
      OUTLINED_FUNCTION_5_76();
      OUTLINED_FUNCTION_7_66();
      if (Width == [lnrpc_formatFromInputFormatsByResolutionFlavor(v64 v65] && (objc_msgSend(OUTLINED_FUNCTION_8_54(), "inputFormatsByResolutionFlavor"), OUTLINED_FUNCTION_5_76(), OUTLINED_FUNCTION_7_66(), objc_msgSend(lnrpc_formatFromInputFormatsByResolutionFlavor(v72, v73, v74, v75, v76, v77, v78, v79), "height") == Height))
      {
        [OUTLINED_FUNCTION_8_54() inputFormatsByResolutionFlavor];
        OUTLINED_FUNCTION_5_76();
      }

      else
      {
        [OUTLINED_FUNCTION_8_54() inputFormatsByResolutionFlavor];
        OUTLINED_FUNCTION_3_93();
        OUTLINED_FUNCTION_14_38();
        if (Width == [lnrpc_formatFromInputFormatsByResolutionFlavor(v80 v81] && (objc_msgSend(OUTLINED_FUNCTION_8_54(), "inputFormatsByResolutionFlavor"), OUTLINED_FUNCTION_3_93(), OUTLINED_FUNCTION_14_38(), objc_msgSend(lnrpc_formatFromInputFormatsByResolutionFlavor(v88, v89, v90, v91, v92, v93, v94, v95), "height") == Height))
        {
          [OUTLINED_FUNCTION_8_54() inputFormatsByResolutionFlavor];
          OUTLINED_FUNCTION_3_93();
        }

        else
        {
          [OUTLINED_FUNCTION_8_54() inputFormatsByResolutionFlavor];
        }
      }
    }

    OUTLINED_FUNCTION_14_38();
    v111 = lnrpc_formatFromInputFormatsByResolutionFlavor(v103, v104, v105, v106, v107, v108, v109, v110);
    v112 = 171;
    v113 = 170;
    goto LABEL_38;
  }

  v42 = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_13_37() "input")];
  [OUTLINED_FUNCTION_8_54() inputFormatsByResolutionFlavor];
  OUTLINED_FUNCTION_0_106();
  if ([lnrpc_formatFromInputFormatsByResolutionFlavor(v43 v44] >= Width)
  {
    [OUTLINED_FUNCTION_8_54() inputFormatsByResolutionFlavor];
    OUTLINED_FUNCTION_0_106();
    [lnrpc_formatFromInputFormatsByResolutionFlavor(v96 v97];
    if ((v42 & 0x100000000) != 0)
    {
LABEL_34:
      [OUTLINED_FUNCTION_8_54() inputFormatsByResolutionFlavor];
      OUTLINED_FUNCTION_1_114();
      v120 = 1;
      goto LABEL_37;
    }
  }

  else if ((v42 & 0x100000000) != 0)
  {
    goto LABEL_34;
  }

  [OUTLINED_FUNCTION_8_54() inputFormatsByResolutionFlavor];
  OUTLINED_FUNCTION_4_83();
LABEL_37:
  v111 = lnrpc_formatFromInputFormatsByResolutionFlavor(v114, v115, v116, v117, v118, v119, v120, 1);
  v112 = 170;
  v113 = 171;
LABEL_38:
  width = [v111 width];
  height = [v111 height];
  if (width != Width || height != Height)
  {
    v2 = &OBJC_IVAR___BWAudioSourceNode__keepAudioSessionActiveOnStop;
LABEL_77:
    [OUTLINED_FUNCTION_13_37() setErr:4294954516];
    v130 = 0;
    goto LABEL_57;
  }

  pixelFormat = [v111 pixelFormat];
  v2 = &OBJC_IVAR___BWAudioSourceNode__keepAudioSessionActiveOnStop;
  if (pixelFormat != CVPixelBufferGetPixelFormatType(v7))
  {
    goto LABEL_77;
  }

  if ([v1[13] performInferencesOnSampleBuffer:v3 attachingResultsToSampleBuffer:v3 skippingInferencesWithTypes:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithObject:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v112))}])
  {
    v128 = OUTLINED_FUNCTION_13_37();
    goto LABEL_47;
  }

  [objc_msgSend(v1[14] objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v113)), "outputAttachedMediaKeyForInputDimensions:", v11}];
  v125 = OUTLINED_FUNCTION_10_29();
  AttachedMedia = BWSampleBufferGetAttachedMedia(v125, v126);
  if (AttachedMedia)
  {
    v131 = CFRetain(AttachedMedia);
    if (v131)
    {
      v130 = v131;
      v132 = BWSampleBufferCopyDictionaryOfAttachedMedia(v3);
      v133 = [v132 mutableCopy];
      [v133 setObject:0 forKeyedSubscript:0x1F219ECF0];
      OUTLINED_FUNCTION_18_30();
      OUTLINED_FUNCTION_18_30();
      OUTLINED_FUNCTION_18_30();
      OUTLINED_FUNCTION_18_30();
      OUTLINED_FUNCTION_18_30();
      v134 = OUTLINED_FUNCTION_18_30();
      v142 = OUTLINED_FUNCTION_21_30(v134, v135, v136, v137, v138, v139, v140, v141, v169, v171, v173, *&r2, r2_8, r2_16, r2_24, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, 0);
      if (v142)
      {
        v143 = v142;
        v144 = MEMORY[0];
        do
        {
          for (i = 0; i != v143; ++i)
          {
            if (MEMORY[0] != v144)
            {
              objc_enumerationMutation(v133);
            }

            BWSampleBufferSetAttachedMedia(v130, *(8 * i), [v133 objectForKeyedSubscript:*(8 * i)]);
          }

          v143 = OUTLINED_FUNCTION_21_30(v146, v147, v148, v149, v150, v151, v152, v153, v170, v172, v174, r2a, r2_8a, r2_16a, r2_24a, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v209);
        }

        while (v143);
      }

      goto LABEL_57;
    }
  }

LABEL_46:
  v128 = OUTLINED_FUNCTION_13_37();
  v129 = 4294954510;
LABEL_47:
  [v128 setErr:v129];
  v130 = 0;
LABEL_57:
  if (dword_1EB58E120)
  {
    OUTLINED_FUNCTION_9_56();
    v154 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (os_log_type_enabled(v154, v210))
    {
      v155 = v211;
    }

    else
    {
      v155 = v211 & 0xFFFFFFFE;
    }

    if (v155)
    {
      [*(v1 + v2[221]) err];
      [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_13_37() "input")];
      OUTLINED_FUNCTION_76();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_15_37();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v156 = [OUTLINED_FUNCTION_13_37() err];
  delegate = [OUTLINED_FUNCTION_13_37() delegate];
  input = [OUTLINED_FUNCTION_13_37() input];
  v159 = input;
  if (v156)
  {
    inputFrame = [input inputFrame];
    input2 = [OUTLINED_FUNCTION_13_37() input];
    v160 = [OUTLINED_FUNCTION_13_37() err];
    v161 = delegate;
    v162 = v1;
    v163 = inputFrame;
    v164 = input2;
  }

  else
  {
    v160 = [OUTLINED_FUNCTION_13_37() err];
    v161 = delegate;
    v162 = v1;
    v163 = v130;
    v164 = v159;
  }

  [v161 processorController:v162 didFinishProcessingSampleBuffer:v163 type:1 processorInput:v164 err:v160];
  if (v130)
  {
    CFRelease(v130);
  }

  return [(BWLearnedNRProcessorController *)v1 _updateStateIfNeeded];
}

- (void)input:(id)input setInputFrame:(opaqueCMSampleBuffer *)frame
{
  [(BWLearnedNRRequest *)self->_currentRequest input:input];

  [(BWLearnedNRProcessorController *)self _updateStateIfNeeded];
}

- (BWInferenceVideoFormat)inputInferenceVideoFormatForAttachedMediaKey:(uint64_t)a1 .cold.1(uint64_t a1, BWInferenceVideoFormat **a2)
{
  WORD2(v4) = 0;
  LODWORD(v4) = 0;
  result = [BWInferenceVideoFormat initWithUnderlyingFormat:"initWithUnderlyingFormat:isDeviceOriented:videoContentMode:includesInvalidContent:cropDescriptor:histogramRequest:rotationDegrees:applyHorizontalFlip:isLandscapeOriented:" isDeviceOriented:[(BWLearnedNRProcessorController *)a1 _primaryInputFormat] videoContentMode:0 includesInvalidContent:0 cropDescriptor:0 histogramRequest:0 rotationDegrees:0 applyHorizontalFlip:v4 isLandscapeOriented:?];
  *a2 = result;
  return result;
}

@end