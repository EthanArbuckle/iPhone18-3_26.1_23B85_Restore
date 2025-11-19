@interface BWStillImageFrameCoordinatorNode
+ (void)initialize;
- (BWStillImageFrameCoordinatorNode)initWithNodeConfiguration:(id)a3 inputPortTypes:(id)a4 sensorRawInputPortTypes:(id)a5;
- (id)_handleSampleBuffer:(void *)a3 forInput:;
- (id)_handleZeroShutterLagSampleBuffer:(void *)a3 forInput:;
- (uint64_t)_addMetadataVersionToMutableMetadata:(uint64_t)result;
- (uint64_t)_isCaptureComplete;
- (uint64_t)_resetStillImageCaptureState;
- (uint64_t)_setupStillImageCaptureStateWithStillImageSettings:(uint64_t)a1;
- (void)_cacheOrUpdateMetadataForOptimizedProcessingForZoomFOVWithMetadata:(uint64_t)a1 inputDimensions:(void *)a2 settingsID:;
- (void)_deliverQueuedMessages;
- (void)_handleMessage:(id)a3 fromInput:(id)a4;
- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4;
- (void)didSelectFormat:(id)a3 forInput:(id)a4;
- (void)handleDroppedSample:(id)a3 forInput:(id)a4;
- (void)handleNodeError:(id)a3 forInput:(id)a4;
- (void)handleStillImagePrewarmWithSettings:(id)a3 resourceConfig:(id)a4 forInput:(id)a5;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
@end

@implementation BWStillImageFrameCoordinatorNode

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWStillImageFrameCoordinatorNode)initWithNodeConfiguration:(id)a3 inputPortTypes:(id)a4 sensorRawInputPortTypes:(id)a5
{
  v48.receiver = self;
  v48.super_class = BWStillImageFrameCoordinatorNode;
  v7 = [(BWNode *)&v48 init];
  v8 = v7;
  if (v7)
  {
    [(BWNode *)v7 setSupportsLiveReconfiguration:1];
    v8->_nodeConfiguration = a3;
    v8->_holdMessagesUntilAllInputsAreLive = 1;
    v8->_queuedMessages = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8->_inputsForQueuedMessages = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = [MEMORY[0x1E695DF90] dictionary];
    v36 = [MEMORY[0x1E695DF90] dictionary];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v10 = [a4 countByEnumeratingWithState:&v44 objects:v43 count:16];
    if (v10)
    {
      v11 = v10;
      LODWORD(v12) = 0;
      v13 = *v45;
      obj = a4;
      do
      {
        v14 = 0;
        v12 = v12;
        do
        {
          if (*v45 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v44 + 1) + 8 * v14);
          v16 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v8 index:v12];
          v17 = objc_alloc_init(BWVideoFormatRequirements);
          [(BWNodeInput *)v16 setFormatRequirements:v17];

          [(BWNodeInput *)v16 setPassthroughMode:1];
          [(BWNodeInput *)v16 setName:BWPortTypeToDisplayString(v15, v18)];
          [(BWNode *)v8 addInput:v16];
          [v9 setObject:v16 forKeyedSubscript:v15];
          ++v12;
          v19 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v8];
          v20 = objc_alloc_init(BWVideoFormatRequirements);
          [(BWNodeOutput *)v19 setFormatRequirements:v20];

          [(BWNodeOutput *)v19 setPassthroughMode:1];
          [(BWNodeOutput *)v19 setIndexOfInputWhichDrivesThisOutput:[(BWNodeInput *)v16 index]];
          [(BWNodeOutput *)v19 setName:BWPortTypeToDisplayString(v15, v21)];
          [(BWNode *)v8 addOutput:v19];
          [v36 setObject:v19 forKeyedSubscript:v15];

          ++v14;
        }

        while (v11 != v14);
        v11 = [obj countByEnumeratingWithState:&v44 objects:v43 count:16];
      }

      while (v11);
    }

    else
    {
      LODWORD(v12) = 0;
    }

    v8->_portTypeToInput = [v9 copy];
    v8->_portTypeToOutput = [v36 copy];
    v33 = [MEMORY[0x1E695DF90] dictionary];
    obja = [MEMORY[0x1E695DF90] dictionary];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v37 = [a5 countByEnumeratingWithState:&v39 objects:v38 count:16];
    if (v37)
    {
      v32 = *v40;
      do
      {
        v22 = 0;
        v12 = v12;
        do
        {
          if (*v40 != v32)
          {
            objc_enumerationMutation(a5);
          }

          v23 = *(*(&v39 + 1) + 8 * v22);
          v24 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v8 index:v12];
          v25 = objc_alloc_init(BWVideoFormatRequirements);
          [(BWNodeInput *)v24 setFormatRequirements:v25];

          [(BWNodeInput *)v24 setPassthroughMode:1];
          -[BWNodeInput setName:](v24, "setName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", BWPortTypeToDisplayString(v23, v26), @"SensorRaw"]);
          [(BWNode *)v8 addInput:v24];
          [v33 setObject:v24 forKeyedSubscript:v23];
          ++v12;
          v27 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v8];
          v28 = objc_alloc_init(BWVideoFormatRequirements);
          [(BWNodeOutput *)v27 setFormatRequirements:v28];

          [(BWNodeOutput *)v27 setPassthroughMode:1];
          [(BWNodeOutput *)v27 setIndexOfInputWhichDrivesThisOutput:[(BWNodeInput *)v24 index]];
          -[BWNodeInput setName:](v24, "setName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", BWPortTypeToDisplayString(v23, v29), @"SensorRaw"]);
          [(BWNode *)v8 addOutput:v27];
          [obja setObject:v27 forKeyedSubscript:v23];

          ++v22;
        }

        while (v37 != v22);
        v37 = [a5 countByEnumeratingWithState:&v39 objects:v38 count:16];
      }

      while (v37);
    }

    v8->_portTypeToSensorRawInput = [v33 copy];
    v8->_portTypeToSensorRawOutput = [obja copy];
    if ([(BWStillImageNodeConfiguration *)v8->_nodeConfiguration optimizedProcessingForZoomFOVSupported])
    {
      v8->_lockedFinalCropRectForOptimizedProcessingForZoomFOVByPortType = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8->_lockedNormalizedMinimumValidBufferRectForGDCForOptimizedProcessingForZoomFOVByPortType = objc_alloc_init(MEMORY[0x1E695DF90]);
    }
  }

  return v8;
}

- (void)dealloc
{
  [(BWStillImageFrameCoordinatorNode *)self _resetStillImageCaptureState];

  v3.receiver = self;
  v3.super_class = BWStillImageFrameCoordinatorNode;
  [(BWNode *)&v3 dealloc];
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4
{
  v5 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self, "outputs"), "objectAtIndexedSubscript:", [a4 index]);

  [v5 setFormat:a3];
}

- (void)_handleMessage:(id)a3 fromInput:(id)a4
{
  if (!self->_holdMessagesUntilAllInputsAreLive)
  {
    goto LABEL_7;
  }

  if ([(BWNode *)self allInputsHaveReachedState:1])
  {
    [(BWStillImageFrameCoordinatorNode *)self _deliverQueuedMessages];
LABEL_7:
    v8.receiver = self;
    v8.super_class = BWStillImageFrameCoordinatorNode;
    [(BWNode *)&v8 _handleMessage:a3 fromInput:a4];
    return;
  }

  [(NSMutableArray *)self->_queuedMessages addObject:a3];
  inputsForQueuedMessages = self->_inputsForQueuedMessages;

  [(NSMutableArray *)inputsForQueuedMessages addObject:a4];
}

- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5
{
  if (dword_1EB58DFE0)
  {
    v34 = 0;
    v33 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([(BWNode *)self allInputsHaveReachedState:1, a4, a5, v18, v20])
  {
    if (dword_1EB58DFE0)
    {
      v34 = 0;
      v33 = OS_LOG_TYPE_DEFAULT;
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v9 = v34;
      if (os_log_type_enabled(v8, v33))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v11 = [(NSArray *)[(BWNode *)self outputs] count];
        v27 = 136315650;
        v28 = "[BWStillImageFrameCoordinatorNode configurationWithID:updatedFormat:didBecomeLiveForInput:]";
        v29 = 1026;
        v30 = v11;
        v31 = 2050;
        v32 = a3;
        LODWORD(v21) = 28;
        v19 = &v27;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = [(BWNode *)self outputs:v19];
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          if (![v17 liveFormat])
          {
            [v17 makeConfiguredFormatLive];
          }
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v23 objects:v22 count:16];
      }

      while (v14);
    }
  }
}

- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4
{
  if (dword_1EB58DFE0)
  {
    v32 = 0;
    v31 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([(BWNode *)self allInputsHaveReachedState:0, a4, v16, v18])
  {
    if (dword_1EB58DFE0)
    {
      v32 = 0;
      v31 = OS_LOG_TYPE_DEFAULT;
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v8 = v32;
      if (os_log_type_enabled(v7, v31))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v10 = [(NSArray *)[(BWNode *)self outputs] count];
        v25 = 136315650;
        v26 = "[BWStillImageFrameCoordinatorNode didReachEndOfDataForConfigurationID:input:]";
        v27 = 1026;
        v28 = v10;
        v29 = 2114;
        v30 = a3;
        LODWORD(v19) = 28;
        v17 = &v25;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = [(BWNode *)self outputs:v17];
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v21 objects:v20 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v21 + 1) + 8 * i) markEndOfLiveOutputForConfigurationID:a3];
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v21 objects:v20 count:16];
      }

      while (v13);
    }
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  if (!a3)
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v20 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v20, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageFrameCoordinatorNode.m", 462, @"LastShownDate:BWStillImageFrameCoordinatorNode.m:462", @"LastShownBuild:BWStillImageFrameCoordinatorNode.m:462", 0);
LABEL_26:
    free(v20);
    goto LABEL_18;
  }

  v7 = BWPixelBufferDimensionsFromSampleBuffer(a3);
  if (v7 < 1 || v7 <= 0)
  {
    v14 = FigCaptureGetFrameworkRadarComponent();
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v20 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v14, v20, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageFrameCoordinatorNode.m", 465, @"LastShownDate:BWStillImageFrameCoordinatorNode.m:465", @"LastShownBuild:BWStillImageFrameCoordinatorNode.m:465", 0);
    goto LABEL_26;
  }

  v8 = CMGetAttachment(a3, @"StillSettings", 0);
  if (!v8)
  {
    v16 = FigCaptureGetFrameworkRadarComponent();
    v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v21 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v16, v21, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageFrameCoordinatorNode.m", 468, @"LastShownDate:BWStillImageFrameCoordinatorNode.m:468", @"LastShownBuild:BWStillImageFrameCoordinatorNode.m:468", 0);
LABEL_27:
    free(v21);
    v22 = [BWNodeError newError:4294954516 sourceNode:self stillImageSettings:v8 metadata:0];
    [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self "outputs")];

    goto LABEL_18;
  }

  v9 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  if (!v9)
  {
    v18 = FigCaptureGetFrameworkRadarComponent();
    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v21 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v18, v21, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageFrameCoordinatorNode.m", 471, @"LastShownDate:BWStillImageFrameCoordinatorNode.m:471", @"LastShownBuild:BWStillImageFrameCoordinatorNode.m:471", 0);
    goto LABEL_27;
  }

  v10 = v9;
  if (!self->_currentStillImageSettings)
  {
    goto LABEL_10;
  }

  v11 = [v8 settingsID];
  if (v11 != [(BWStillImageSettings *)self->_currentStillImageSettings settingsID])
  {
    [(BWStillImageFrameCoordinatorNode *)self _resetStillImageCaptureState];
  }

  if (!self->_currentStillImageSettings)
  {
LABEL_10:
    [(BWStillImageFrameCoordinatorNode *)self _setupStillImageCaptureStateWithStillImageSettings:v8];
  }

  if ([objc_msgSend(v8 "processingSettings")])
  {
    [v8 settingsID];
    [BWStillImageFrameCoordinatorNode _cacheOrUpdateMetadataForOptimizedProcessingForZoomFOVWithMetadata:v10 inputDimensions:? settingsID:?];
  }

  if (([(BWStillImageCaptureSettings *)[(BWStillImageSettings *)self->_currentStillImageSettings captureSettings] captureFlags]& 0x2000) != 0)
  {
    [(BWStillImageFrameCoordinatorNode *)&self->super.super.isa _handleZeroShutterLagSampleBuffer:a3 forInput:a4];
  }

  else
  {
    [(BWStillImageFrameCoordinatorNode *)&self->super.super.isa _handleSampleBuffer:a3 forInput:a4];
  }

  if (([objc_msgSend(v8 "captureSettings")] & 4) == 0)
  {
    CMRemoveAttachment(a3, *off_1E798A448);
    CMRemoveAttachment(a3, *off_1E798A468);
  }

LABEL_18:
  if (self->_currentStillImageSettings)
  {
    if ([(BWStillImageFrameCoordinatorNode *)self _isCaptureComplete])
    {
      [(BWStillImageFrameCoordinatorNode *)self _resetStillImageCaptureState];
    }
  }
}

- (void)handleStillImagePrewarmWithSettings:(id)a3 resourceConfig:(id)a4 forInput:(id)a5
{
  v7 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self, "outputs"), "objectAtIndexedSubscript:", [a5 index]);

  [v7 emitStillImagePrewarmMessageWithSettings:a3 resourceConfig:a4];
}

- (void)handleNodeError:(id)a3 forInput:(id)a4
{
  v5 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self, "outputs"), "objectAtIndexedSubscript:", [a4 index]);

  [v5 emitNodeError:a3];
}

- (void)handleDroppedSample:(id)a3 forInput:(id)a4
{
  v5 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self, "outputs"), "objectAtIndexedSubscript:", [a4 index]);

  [v5 emitDroppedSample:a3];
}

- (uint64_t)_resetStillImageCaptureState
{
  if (result)
  {
    v1 = result;

    *(v1 + 168) = 0;
    *(v1 + 176) = 0;
    [*(v1 + 184) removeAllObjects];
    v2 = *(v1 + 192);

    return [v2 removeAllObjects];
  }

  return result;
}

- (void)_deliverQueuedMessages
{
  if (a1)
  {
    if ([*(a1 + 208) count])
    {
      v2 = 0;
      do
      {
        v3 = [*(a1 + 208) objectAtIndexedSubscript:v2];
        v4 = [*(a1 + 216) objectAtIndexedSubscript:v2];
        v5.receiver = a1;
        v5.super_class = BWStillImageFrameCoordinatorNode;
        objc_msgSendSuper2(&v5, sel__handleMessage_fromInput_, v3, v4);
        ++v2;
      }

      while (v2 < [*(a1 + 208) count]);
    }

    [*(a1 + 208) removeAllObjects];

    *(a1 + 208) = 0;
    [*(a1 + 216) removeAllObjects];

    *(a1 + 216) = 0;
    *(a1 + 200) = 0;
  }
}

- (uint64_t)_setupStillImageCaptureStateWithStillImageSettings:(uint64_t)a1
{
  if (a1)
  {
    *(a1 + 176) = a2;

    *(a1 + 168) = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = [objc_msgSend(*(a1 + 176) "captureSettings")];
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        v7 = 0;
        do
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v13 + 1) + 8 * v7);
          v9 = objc_alloc_init(BWStillImageCaptureStreamFrameCounters);
          v9->expectedTimeMachineFrames = [v8 expectedTimeMachineFrameCaptureCount];
          if ([v8 adaptiveBracketingParameters])
          {
            v10 = 0x7FFFFFFF;
          }

          else
          {
            v10 = [v8 expectedFrameCaptureCount];
          }

          v9->expectedFrames = v10;
          [*(a1 + 168) setObject:v9 forKeyedSubscript:{objc_msgSend(v8, "portType")}];
          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v13 objects:v12 count:16];
      }

      while (v5);
    }
  }

  return 0;
}

- (void)_cacheOrUpdateMetadataForOptimizedProcessingForZoomFOVWithMetadata:(uint64_t)a1 inputDimensions:(void *)a2 settingsID:
{
  if (!a1)
  {
    return;
  }

  v8 = [a2 objectForKeyedSubscript:*off_1E798B540];
  v9 = [*(a1 + 184) objectForKeyedSubscript:v8];
  v10 = [*(a1 + 192) objectForKeyedSubscript:v8];
  v11 = v10;
  if (v9)
  {
    [a2 setObject:v9 forKeyedSubscript:*off_1E798A5C8];
    FigCaptureMetadataUtilitiesGetValidBufferRect();
    OUTLINED_FUNCTION_8_32();
    FinalCropRect = FigCaptureMetadataUtilitiesGetFinalCropRect();
    FigCaptureDenormalizeCropRect(FinalCropRect, v13, v14, v15);
    OUTLINED_FUNCTION_26_2();
    v83.origin.x = OUTLINED_FUNCTION_3();
    v88.origin.x = v2;
    v88.origin.y = v3;
    v88.size.width = v4;
    v88.size.height = v5;
    if (!CGRectContainsRect(v83, v88))
    {
      OUTLINED_FUNCTION_3_55();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v81))
      {
        v17 = v82;
      }

      else
      {
        v17 = v82 & 0xFFFFFFFE;
      }

      if (v17)
      {
        v18 = OUTLINED_FUNCTION_3_0();
        BWStringFromCGRect(v18, v19, v20, v21);
        v22 = OUTLINED_FUNCTION_3();
        BWStringFromCGRect(v22, v23, v24, v25);
        OUTLINED_FUNCTION_23_8();
        OUTLINED_FUNCTION_2_62();
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v40 = OUTLINED_FUNCTION_3_0();
      v44 = BWStringFromCGRect(v40, v41, v42, v43);
      v45 = OUTLINED_FUNCTION_3();
      BWStringFromCGRect(v45, v46, v47, v48);
      LODWORD(rect.origin.x) = 138543874;
      *(&rect.origin.x + 4) = v44;
      OUTLINED_FUNCTION_5_48();
      v49 = OUTLINED_FUNCTION_6_0();
      FigCapturePleaseFileRadar(7, v49, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageFrameCoordinatorNode.m", 581, @"LastShownDate:BWStillImageFrameCoordinatorNode.m:581", @"LastShownBuild:BWStillImageFrameCoordinatorNode.m:581", 0);
      free(v49);
    }

    if (v11)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v10)
    {
LABEL_18:
      v50 = *(MEMORY[0x1E695F050] + 16);
      rect.origin = *MEMORY[0x1E695F050];
      rect.size = v50;
      CGRectMakeWithDictionaryRepresentation(v11, &rect);
      FigCaptureDenormalizeCropRect(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
      v52 = round(v51);
      v54 = round(v53);
      v56 = round(v55);
      v58 = round(v57);
      v84.origin.x = OUTLINED_FUNCTION_3();
      [a2 setObject:CGRectCreateDictionaryRepresentation(v84) forKeyedSubscript:*off_1E798A7A0];
      FigCaptureMetadataUtilitiesGetValidBufferRect();
      OUTLINED_FUNCTION_26_2();
      v89.origin.x = v52;
      v89.origin.y = v54;
      v89.size.width = v56;
      v89.size.height = v58;
      if (!CGRectContainsRect(v85, v89))
      {
        OUTLINED_FUNCTION_3_55();
        v59 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v60 = v82;
        if (os_log_type_enabled(v59, v81))
        {
          v61 = v60;
        }

        else
        {
          v61 = v60 & 0xFFFFFFFE;
        }

        if (v61)
        {
          v62 = OUTLINED_FUNCTION_3();
          BWStringFromCGRect(v62, v63, v64, v65);
          v66 = OUTLINED_FUNCTION_3_0();
          BWStringFromCGRect(v66, v67, v68, v69);
          OUTLINED_FUNCTION_23_8();
          OUTLINED_FUNCTION_2_62();
          OUTLINED_FUNCTION_7_38();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v70 = OUTLINED_FUNCTION_3();
        v74 = BWStringFromCGRect(v70, v71, v72, v73);
        v75 = OUTLINED_FUNCTION_3_0();
        BWStringFromCGRect(v75, v76, v77, v78);
        LODWORD(rect.origin.x) = 138543874;
        *(&rect.origin.x + 4) = v74;
        OUTLINED_FUNCTION_5_48();
        v79 = OUTLINED_FUNCTION_6_0();
        FigCapturePleaseFileRadar(7, v79, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageFrameCoordinatorNode.m", 600, @"LastShownDate:BWStillImageFrameCoordinatorNode.m:600", @"LastShownBuild:BWStillImageFrameCoordinatorNode.m:600", 0);
        free(v79);
      }

      return;
    }

    FigCaptureMetadataUtilitiesGetFinalCropRect();
    OUTLINED_FUNCTION_8_32();
    MinimumValidBufferRectForGDC = FigCaptureMetadataUtilitiesGetMinimumValidBufferRectForGDC();
    FigCaptureNormalizeCropRect(MinimumValidBufferRectForGDC, v27, v28, v29);
    OUTLINED_FUNCTION_26_2();
    if (dword_1EB58DFE0)
    {
      OUTLINED_FUNCTION_3_55();
      v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      if (os_log_type_enabled(v30, v81))
      {
        v31 = v82;
      }

      else
      {
        v31 = v82 & 0xFFFFFFFE;
      }

      if (v31)
      {
        v32 = OUTLINED_FUNCTION_3();
        BWStringFromCGRect(v32, v33, v34, v35);
        v36 = OUTLINED_FUNCTION_3_0();
        BWStringFromCGRect(v36, v37, v38, v39);
        OUTLINED_FUNCTION_23_8();
        OUTLINED_FUNCTION_2_62();
        OUTLINED_FUNCTION_7_38();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v86.origin.x = OUTLINED_FUNCTION_3();
    [*(a1 + 184) setObject:CGRectCreateDictionaryRepresentation(v86) forKeyedSubscript:v8];
    v87.origin.x = OUTLINED_FUNCTION_3_0();
    [*(a1 + 192) setObject:CGRectCreateDictionaryRepresentation(v87) forKeyedSubscript:v8];
  }
}

- (id)_handleZeroShutterLagSampleBuffer:(void *)a3 forInput:
{
  if (result)
  {
    v5 = result;
    v6 = CMGetAttachment(target, *off_1E798A3C8, 0);
    v7 = [v6 objectForKeyedSubscript:*off_1E798B540];
    v8 = [v5[21] objectForKeyedSubscript:v7];
    v9 = [objc_msgSend(v5[22] "captureSettings")];
    if (!v8)
    {
      goto LABEL_9;
    }

    if (v8[4] < 1)
    {
      goto LABEL_9;
    }

    v10 = v9;
    ++v8[3];
    [(BWStillImageFrameCoordinatorNode *)v5 _addMetadataVersionToMutableMetadata:v6];
    if (v8[4] < 1)
    {
      goto LABEL_9;
    }

    v11 = [objc_msgSend(v6 objectForKeyedSubscript:{*off_1E798B558), "BOOLValue"}];
    v12 = [v6 objectForKeyedSubscript:*off_1E798B1B8];
    result = [v10 isFrameCapturedForProcessing:target];
    v13 = result;
    if ((v11 & 1) == 0 && !v12)
    {
      [v5[19] objectForKeyedSubscript:v7];
      result = [v10 captureFlags];
      ++v8[5];
    }

    if (v13)
    {
LABEL_9:
      v14 = [objc_msgSend(v5 "outputs")];

      return [v14 emitSampleBuffer:target];
    }
  }

  return result;
}

- (id)_handleSampleBuffer:(void *)a3 forInput:
{
  if (result)
  {
    v5 = result;
    v6 = CMGetAttachment(target, *off_1E798A3C8, 0);
    v7 = [v6 objectForKeyedSubscript:*off_1E798B540];
    v8 = [v5[21] objectForKeyedSubscript:v7];
    v9 = [objc_msgSend(v5[22] "captureSettings")];
    [(BWStillImageFrameCoordinatorNode *)v5 _addMetadataVersionToMutableMetadata:v6];
    if (!v8)
    {
      goto LABEL_6;
    }

    v10 = [v9 isFrameCapturedForProcessing:target];
    ++*(v8 + 12);
    result = BWIsLastAdaptiveBracketingFrame(target);
    if (result)
    {
      *(v8 + 8) = *(v8 + 12);
    }

    if (v10)
    {
LABEL_6:
      v11 = [objc_msgSend(v5 "outputs")];

      return [v11 emitSampleBuffer:target];
    }
  }

  return result;
}

- (uint64_t)_isCaptureComplete
{
  if (result)
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v1 = [*(result + 168) allValues];
    v2 = [v1 countByEnumeratingWithState:&v7 objects:v6 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v8;
      while (2)
      {
        v5 = 0;
        do
        {
          if (*v8 != v4)
          {
            objc_enumerationMutation(v1);
          }

          if (*(*(*(&v7 + 1) + 8 * v5) + 12) != *(*(*(&v7 + 1) + 8 * v5) + 8))
          {
            return 0;
          }

          ++v5;
        }

        while (v3 != v5);
        v3 = [v1 countByEnumeratingWithState:&v7 objects:v6 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

    return 1;
  }

  return result;
}

- (uint64_t)_addMetadataVersionToMutableMetadata:(uint64_t)result
{
  if (result)
  {
    v3 = [*(result + 128) stillImageProcessingMode];
    if (v3 >= 2)
    {
      if (v3 == 2)
      {
        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Reprocessing%@", @"CameraCaptureStillImageMetadataVersion"];
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = @"CameraCaptureStillImageMetadataVersion";
    }

    return [a2 setObject:&unk_1F22443B0 forKeyedSubscript:v4];
  }

  return result;
}

@end