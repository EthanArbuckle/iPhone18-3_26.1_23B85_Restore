@interface BWStillImageDualPhotoFacePropagatorNode
- (BWStillImageDualPhotoFacePropagatorNode)initWithBaseZoomFactors:(id)a3;
- (uint64_t)_emitBuffersAndErrorsToOutputs;
- (void)_clearCaptureRequestState;
- (void)_processWiderAndNarrowerFOVInput;
- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)a3;
- (void)didSelectFormat:(id)a3 forInput:(id)a4;
- (void)handleNodeError:(id)a3 forInput:(id)a4;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
@end

@implementation BWStillImageDualPhotoFacePropagatorNode

- (BWStillImageDualPhotoFacePropagatorNode)initWithBaseZoomFactors:(id)a3
{
  v15.receiver = self;
  v15.super_class = BWStillImageDualPhotoFacePropagatorNode;
  v4 = [(BWNode *)&v15 init];
  v5 = v4;
  if (v4)
  {
    v4->_currentSettingsID = -1;
    v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:a3];
    v7 = 0;
    v5->_baseZoomFactors = v6;
    v8 = 1;
    do
    {
      v9 = v8;
      v10 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v5 index:v7];
      v11 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWNodeInput *)v10 setFormatRequirements:v11];

      [(BWNodeInput *)v10 setPassthroughMode:1];
      [(BWNodeInput *)v10 setRetainedBufferCount:1];
      [(BWNode *)v5 addInput:v10];

      v12 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v5];
      v13 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWNodeOutput *)v12 setFormatRequirements:v13];
      [(BWNodeOutput *)v12 setPassthroughMode:1];
      [(BWNodeOutput *)v12 setIndexOfInputWhichDrivesThisOutput:v7];

      [(BWNode *)v5 addOutput:v12];
      v8 = 0;
      v7 = 1;
    }

    while ((v9 & 1) != 0);
    v5->_widerFOVInput = [(NSArray *)[(BWNode *)v5 inputs] objectAtIndexedSubscript:0];
    v5->_narrowerFOVInput = [(NSArray *)[(BWNode *)v5 inputs] objectAtIndexedSubscript:1];
    v5->_widerFOVOutput = [(NSArray *)[(BWNode *)v5 outputs] objectAtIndexedSubscript:0];
    v5->_narrowerFOVOutput = [(NSArray *)[(BWNode *)v5 outputs] objectAtIndexedSubscript:1];
  }

  return v5;
}

- (void)dealloc
{
  [(BWStillImageDualPhotoFacePropagatorNode *)self _clearCaptureRequestState];

  self->_baseZoomFactors = 0;
  v3.receiver = self;
  v3.super_class = BWStillImageDualPhotoFacePropagatorNode;
  [(BWNode *)&v3 dealloc];
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4
{
  v5 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self, "outputs"), "objectAtIndexedSubscript:", [a4 index]);

  [v5 setFormat:a3];
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

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  v7 = CMGetAttachment(a3, @"StillSettings", 0);
  if ([v7 settingsID] != self->_currentSettingsID)
  {
    [(BWStillImageDualPhotoFacePropagatorNode *)self _clearCaptureRequestState];
    self->_currentSettingsID = [v7 settingsID];
  }

  if ([objc_msgSend(objc_msgSend(v7 "requestedSettings")] < 2)
  {
    goto LABEL_12;
  }

  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [CMGetAttachment(a3 @"BWStillImageCaptureSettings"];
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = v9;
  v11 = 0;
  v12 = *v24;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v24 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v11 += [*(*(&v23 + 1) + 8 * i) hasValidFrames] & 1;
    }

    v10 = [v8 countByEnumeratingWithState:&v23 objects:v22 count:16];
  }

  while (v10);
  if (v11 <= 1)
  {
LABEL_12:
    [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self "outputs")];
    return;
  }

  if (self->_widerFOVInput == a4)
  {
    v14 = 144;
    if (self->_widerFOVBuffer)
    {
      FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v19 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(FrameworkRadarComponent, v19, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageDualPhotoFacePropagatorNode.m", 186, @"LastShownDate:BWStillImageDualPhotoFacePropagatorNode.m:186", @"LastShownBuild:BWStillImageDualPhotoFacePropagatorNode.m:186", 0);
      free(v19);
      [(BWNodeOutput *)self->_widerFOVOutput emitSampleBuffer:self->_widerFOVBuffer];
      CFRelease(self->_widerFOVBuffer);
    }

    if (!a3)
    {
LABEL_20:
      v20 = 0;
LABEL_23:
      *(&self->super.super.isa + v14) = v20;
      goto LABEL_24;
    }

LABEL_22:
    v20 = CFRetain(a3);
    goto LABEL_23;
  }

  if (self->_narrowerFOVInput == a4)
  {
    v14 = 152;
    if (self->_narrowerFOVBuffer)
    {
      v17 = FigCaptureGetFrameworkRadarComponent();
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v21 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(v17, v21, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageDualPhotoFacePropagatorNode.m", 194, @"LastShownDate:BWStillImageDualPhotoFacePropagatorNode.m:194", @"LastShownBuild:BWStillImageDualPhotoFacePropagatorNode.m:194", 0);
      free(v21);
      [(BWNodeOutput *)self->_narrowerFOVOutput emitSampleBuffer:self->_narrowerFOVBuffer];
      CFRelease(self->_narrowerFOVBuffer);
    }

    if (!a3)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

LABEL_24:
  [(BWStillImageDualPhotoFacePropagatorNode *)self _processWiderAndNarrowerFOVInput];
}

- (void)_clearCaptureRequestState
{
  if (a1)
  {
    v2 = *(a1 + 144);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 144) = 0;
    }

    v3 = *(a1 + 152);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 152) = 0;
    }

    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
  }
}

- (void)_processWiderAndNarrowerFOVInput
{
  if (!a1)
  {
    return;
  }

  v2 = a1[18];
  if (!v2)
  {
    if (!a1[20])
    {
      return;
    }

    if (a1[19])
    {
      goto LABEL_9;
    }

LABEL_7:
    if (!a1[21])
    {
      return;
    }

    goto LABEL_9;
  }

  v3 = a1[19];
  if (!v3)
  {
    goto LABEL_7;
  }

  BWProcessWiderAndNarrowerFOVBuffersForFacePropagation(v2, v3, a1[17]);
LABEL_9:
  [(BWStillImageDualPhotoFacePropagatorNode *)a1 _emitBuffersAndErrorsToOutputs];

  [(BWStillImageDualPhotoFacePropagatorNode *)a1 _clearCaptureRequestState];
}

- (void)handleNodeError:(id)a3 forInput:(id)a4
{
  v8 = [a3 stillImageSettings];
  if ([v8 settingsID] != self->_currentSettingsID)
  {
    [(BWStillImageDualPhotoFacePropagatorNode *)self _clearCaptureRequestState];
    self->_currentSettingsID = [v8 settingsID];
  }

  if ([objc_msgSend(objc_msgSend(v8 "requestedSettings")])
  {
    if (self->_widerFOVInput == a4)
    {
      v9 = 160;
      if (self->_widerFOVError)
      {
        FigCaptureGetFrameworkRadarComponent();
        v10 = OUTLINED_FUNCTION_1_75();
        if (OUTLINED_FUNCTION_7_41(v10))
        {
          v11 = v4;
        }

        else
        {
          v11 = v4 & 0xFFFFFFFE;
        }

        if (v11)
        {
          OUTLINED_FUNCTION_5_6();
          OUTLINED_FUNCTION_4_52();
        }

        OUTLINED_FUNCTION_0_63();
        OUTLINED_FUNCTION_5_51();
        v14 = OUTLINED_FUNCTION_6_0();
        v15 = OUTLINED_FUNCTION_4_5();
        FigCapturePleaseFileRadar(v15, v16, v17, v18, v19, 221, v20, v21, 0);
        free(v14);
        v22 = 192;
LABEL_23:
        [*(&self->super.super.isa + v22) emitNodeError:*(&self->super.super.isa + v9)];
      }
    }

    else
    {
      if (self->_narrowerFOVInput != a4)
      {
        goto LABEL_25;
      }

      v9 = 168;
      if (self->_narrowerFOVError)
      {
        FigCaptureGetFrameworkRadarComponent();
        v12 = OUTLINED_FUNCTION_1_75();
        if (OUTLINED_FUNCTION_7_41(v12))
        {
          v13 = v4;
        }

        else
        {
          v13 = v4 & 0xFFFFFFFE;
        }

        if (v13)
        {
          OUTLINED_FUNCTION_5_6();
          OUTLINED_FUNCTION_4_52();
        }

        OUTLINED_FUNCTION_0_63();
        OUTLINED_FUNCTION_5_51();
        v23 = OUTLINED_FUNCTION_6_0();
        v24 = OUTLINED_FUNCTION_4_5();
        FigCapturePleaseFileRadar(v24, v25, v26, v27, v28, 229, v29, v30, 0);
        free(v23);
        v22 = 200;
        goto LABEL_23;
      }
    }

    *(&self->super.super.isa + v9) = a3;
    goto LABEL_25;
  }

  [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self "outputs")];
LABEL_25:
  [(BWStillImageDualPhotoFacePropagatorNode *)self _processWiderAndNarrowerFOVInput];
}

- (uint64_t)_emitBuffersAndErrorsToOutputs
{
  if (result)
  {
    v1 = result;
    if (*(result + 144))
    {
      result = [*(result + 192) emitSampleBuffer:?];
    }

    if (*(v1 + 160))
    {
      result = [*(v1 + 192) emitNodeError:?];
    }

    if (*(v1 + 152))
    {
      result = [*(v1 + 200) emitSampleBuffer:?];
    }

    if (*(v1 + 168))
    {
      v2 = *(v1 + 200);

      return [v2 emitNodeError:?];
    }
  }

  return result;
}

@end