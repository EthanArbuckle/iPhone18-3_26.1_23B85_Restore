@interface BWStillImageTimeMachineFrameCoordinatorNode
- (BWStillImageTimeMachineFrameCoordinatorNode)initWithPortTypes:(id)types;
- (id)_handleSampleBuffer:(id *)result;
- (uint64_t)_isCaptureComplete;
- (uint64_t)_setupStillImageCaptureStateWithResolvedStillImageCaptureSettings:(uint64_t)result;
- (void)_resetStillImageCaptureState;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input;
- (void)handleDroppedSample:(id)sample forInput:(id)input;
- (void)handleNodeError:(id)error forInput:(id)input;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWStillImageTimeMachineFrameCoordinatorNode

- (BWStillImageTimeMachineFrameCoordinatorNode)initWithPortTypes:(id)types
{
  v14.receiver = self;
  v14.super_class = BWStillImageTimeMachineFrameCoordinatorNode;
  v4 = [(BWNode *)&v14 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([types count])
    {
      v7 = 0;
      do
      {
        v8 = [types objectAtIndexedSubscript:v7];
        v9 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v4 index:v7];
        v10 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWNodeInput *)v9 setFormatRequirements:v10];

        [(BWNodeInput *)v9 setPassthroughMode:1];
        [(BWNode *)v4 addInput:v9];
        [v5 setObject:v9 forKeyedSubscript:v8];

        v11 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v4];
        v12 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWNodeOutput *)v11 setFormatRequirements:v12];
        [(BWNodeOutput *)v11 setPassthroughMode:1];
        [(BWNodeOutput *)v11 setIndexOfInputWhichDrivesThisOutput:v7];

        [(BWNode *)v4 addOutput:v11];
        [v6 setObject:v11 forKeyedSubscript:v8];

        ++v7;
      }

      while ([types count] > v7);
    }

    v4->_portTypeToInput = [v5 copy];

    v4->_portTypeToOutput = [v6 copy];
  }

  return v4;
}

- (void)dealloc
{
  [(BWStillImageTimeMachineFrameCoordinatorNode *)self _resetStillImageCaptureState];

  v3.receiver = self;
  v3.super_class = BWStillImageTimeMachineFrameCoordinatorNode;
  [(BWNode *)&v3 dealloc];
}

- (void)didSelectFormat:(id)format forInput:(id)input
{
  v5 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self, "outputs"), "objectAtIndexedSubscript:", [input index]);

  [v5 setFormat:format];
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  if ([(BWNode *)self allInputsHaveReachedState:1, format, input])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    outputs = [(BWNode *)self outputs];
    v7 = [(NSArray *)outputs countByEnumeratingWithState:&v12 objects:v11 count:16];
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
            objc_enumerationMutation(outputs);
          }

          [*(*(&v12 + 1) + 8 * v10++) makeConfiguredFormatLive];
        }

        while (v8 != v10);
        v8 = [(NSArray *)outputs countByEnumeratingWithState:&v12 objects:v11 count:16];
      }

      while (v8);
    }
  }
}

- (void)didReachEndOfDataForInput:(id)input
{
  if ([(BWNode *)self allInputsHaveReachedState:0])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    outputs = [(BWNode *)self outputs];
    v5 = [(NSArray *)outputs countByEnumeratingWithState:&v10 objects:v9 count:16];
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
            objc_enumerationMutation(outputs);
          }

          [*(*(&v10 + 1) + 8 * v8++) markEndOfLiveOutput];
        }

        while (v6 != v8);
        v6 = [(NSArray *)outputs countByEnumeratingWithState:&v10 objects:v9 count:16];
      }

      while (v6);
    }
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if (!buffer)
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v15 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v15, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageTimeMachineFrameCoordinatorNode.m", 224, @"LastShownDate:BWStillImageTimeMachineFrameCoordinatorNode.m:224", @"LastShownBuild:BWStillImageTimeMachineFrameCoordinatorNode.m:224", 0);
    free(v15);
    goto LABEL_9;
  }

  v6 = CMGetAttachment(buffer, @"BWStillImageCaptureSettings", 0);
  if (!v6)
  {
    v13 = FigCaptureGetFrameworkRadarComponent();
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v16 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v13, v16, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageTimeMachineFrameCoordinatorNode.m", 227, @"LastShownDate:BWStillImageTimeMachineFrameCoordinatorNode.m:227", @"LastShownBuild:BWStillImageTimeMachineFrameCoordinatorNode.m:227", 0);
    free(v16);
    v17 = 4294954516;
LABEL_18:
    v18 = CMGetAttachment(buffer, @"StillSettings", 0);
    v19 = [BWNodeError newError:v17 sourceNode:self stillImageSettings:v18 metadata:CMGetAttachment(buffer, *off_1E798A3C8, 0)];
    [(BWNodeOutput *)self->super._output emitNodeError:v19];

    goto LABEL_9;
  }

  v7 = v6;
  if (self->_currentResolvedStillImageCaptureSettings)
  {
    settingsID = [v6 settingsID];
    if (settingsID != [(BWStillImageCaptureSettings *)self->_currentResolvedStillImageCaptureSettings settingsID])
    {
      [(BWStillImageTimeMachineFrameCoordinatorNode *)self _resetStillImageCaptureState];
    }

    currentResolvedStillImageCaptureSettings = self->_currentResolvedStillImageCaptureSettings;
    if (currentResolvedStillImageCaptureSettings)
    {
      goto LABEL_7;
    }
  }

  v10 = [(BWStillImageTimeMachineFrameCoordinatorNode *)self _setupStillImageCaptureStateWithResolvedStillImageCaptureSettings:v7];
  if (v10)
  {
    v17 = v10;
    [BWStillImageTimeMachineFrameCoordinatorNode renderSampleBuffer:forInput:];
    goto LABEL_18;
  }

  currentResolvedStillImageCaptureSettings = self->_currentResolvedStillImageCaptureSettings;
LABEL_7:
  if (([(BWStillImageCaptureSettings *)currentResolvedStillImageCaptureSettings captureFlags]& 0x2000) != 0)
  {
    [(BWStillImageTimeMachineFrameCoordinatorNode *)&self->super.super.isa _handleSampleBuffer:buffer];
  }

  else
  {
    [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
  }

LABEL_9:
  if (self->_currentResolvedStillImageCaptureSettings)
  {
    if ([(BWStillImageTimeMachineFrameCoordinatorNode *)self _isCaptureComplete])
    {
      [(BWStillImageTimeMachineFrameCoordinatorNode *)self _resetStillImageCaptureState];
    }
  }
}

- (void)handleNodeError:(id)error forInput:(id)input
{
  v5 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self, "outputs"), "objectAtIndexedSubscript:", [input index]);

  [v5 emitNodeError:error];
}

- (void)handleDroppedSample:(id)sample forInput:(id)input
{
  v5 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self, "outputs"), "objectAtIndexedSubscript:", [input index]);

  [v5 emitDroppedSample:sample];
}

- (void)_resetStillImageCaptureState
{
  if (self)
  {

    *(self + 144) = 0;
    *(self + 152) = 0;
  }
}

- (uint64_t)_setupStillImageCaptureStateWithResolvedStillImageCaptureSettings:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (([a2 captureFlags] & 0x2000) != 0)
    {
      if ([a2 captureType] == 5 || objc_msgSend(a2, "captureType") == 4 || objc_msgSend(a2, "captureType") == 1)
      {
        *(v3 + 152) = a2;

        *(v3 + 144) = objc_alloc_init(MEMORY[0x1E695DF90]);
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        captureStreamSettings = [*(v3 + 152) captureStreamSettings];
        result = [captureStreamSettings countByEnumeratingWithState:&v14 objects:v13 count:16];
        if (result)
        {
          v5 = result;
          v6 = *v15;
          do
          {
            v7 = 0;
            do
            {
              if (*v15 != v6)
              {
                objc_enumerationMutation(captureStreamSettings);
              }

              v8 = *(*(&v14 + 1) + 8 * v7);
              v9 = objc_alloc_init(BWStillImageCaptureStreamFrameCounts);
              v9->expectedTimeMachineFrames = [v8 expectedTimeMachineFrameCaptureCount];
              v9->expectedFrames = [v8 expectedFrameCaptureCount];
              [*(v3 + 144) setObject:v9 forKeyedSubscript:{objc_msgSend(v8, "portType")}];
              ++v7;
            }

            while (v5 != v7);
            result = [captureStreamSettings countByEnumeratingWithState:&v14 objects:v13 count:16];
            v5 = result;
          }

          while (result);
        }
      }

      else
      {
        FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        BWPhotoEncoderStringFromEncodingScheme([a2 captureType]);
        v12 = _os_log_send_and_compose_impl();
        FigCapturePleaseFileRadar(FrameworkRadarComponent, v12, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageTimeMachineFrameCoordinatorNode.m", 286, @"LastShownDate:BWStillImageTimeMachineFrameCoordinatorNode.m:286", @"LastShownBuild:BWStillImageTimeMachineFrameCoordinatorNode.m:286", 0);
        free(v12);
        return 4294954516;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)_handleSampleBuffer:(id *)result
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = CMGetAttachment(target, *off_1E798A3C8, 0);
  v5 = [v4 objectForKeyedSubscript:*off_1E798B540];
  v6 = [v3[18] objectForKeyedSubscript:v5];
  v7 = [v3[19] captureStreamSettingsForPortType:v5];
  if (v6)
  {
    if (v6[4] >= 1)
    {
      v8 = v7;
      ++v6[3];
      if (([objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798B558), "BOOLValue"}] & 1) == 0 && v6[4] >= 1)
      {
        v9 = *off_1E798B1B8;
        v10 = [v4 objectForKeyedSubscript:*off_1E798B1B8];
        if (v10)
        {
          v11 = v10;
          timeMachineFrameCount = [v8 timeMachineFrameCount];
          v13 = [v11 intValue] + timeMachineFrameCount;
LABEL_9:
          [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v13), v9}];
          goto LABEL_10;
        }

        v13 = (v6[5] + 1);
        v6[5] = v13;
        if ([v3[19] captureType] != 1)
        {
          goto LABEL_9;
        }
      }
    }
  }

LABEL_10:
  v14 = [v3[17] objectForKeyedSubscript:v5];

  return [v14 emitSampleBuffer:target];
}

- (uint64_t)_isCaptureComplete
{
  if (result)
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    allValues = [*(result + 144) allValues];
    v2 = [allValues countByEnumeratingWithState:&v7 objects:v6 count:16];
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
            objc_enumerationMutation(allValues);
          }

          if (*(*(*(&v7 + 1) + 8 * v5) + 12) != *(*(*(&v7 + 1) + 8 * v5) + 8))
          {
            return 0;
          }

          ++v5;
        }

        while (v3 != v5);
        v3 = [allValues countByEnumeratingWithState:&v7 objects:v6 count:16];
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

@end