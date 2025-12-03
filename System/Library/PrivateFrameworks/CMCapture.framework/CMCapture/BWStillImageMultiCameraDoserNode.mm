@interface BWStillImageMultiCameraDoserNode
- (BWStillImageMultiCameraDoserNode)initWithPortTypes:(id)types;
- (id)_outputForNodeInputIndex:(id *)result;
- (uint64_t)_clearCaptureRequestState;
- (uint64_t)_emitStashedObjectsIfReady;
- (unint64_t)_configureCaptureRequestStateWithRequestedStillImageCaptureSettings:(void *)settings resolvedStillImageCaptureSettings:;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input;
- (void)handleNodeError:(id)error forInput:(id)input;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWStillImageMultiCameraDoserNode

- (BWStillImageMultiCameraDoserNode)initWithPortTypes:(id)types
{
  v13.receiver = self;
  v13.super_class = BWStillImageMultiCameraDoserNode;
  v4 = [(BWNode *)&v13 init];
  if (v4)
  {
    v4->_portTypes = [types copy];
    v4->_currentSettingsID = -1;
    v4->_inputIndicesForWhichDosingIsPerformed = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4->_stashedObjectsByInputIndex = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([types count])
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [(NSMutableArray *)v4->_stashedObjectsByInputIndex addObject:v7];

        v8 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v4 index:v5];
        v9 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWNodeInput *)v8 setFormatRequirements:v9];

        [(BWNodeInput *)v8 setPassthroughMode:1];
        [(BWNodeInput *)v8 setRetainedBufferCount:1];
        [(BWNode *)v4 addInput:v8];

        v10 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v4];
        v11 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWNodeOutput *)v10 setFormatRequirements:v11];
        [(BWNodeOutput *)v10 setPassthroughMode:1];
        [(BWNodeOutput *)v10 setIndexOfInputWhichDrivesThisOutput:v6];

        [(BWNode *)v4 addOutput:v10];
        v5 = (v6 + 1);
        v6 = v5;
      }

      while ([types count] > v5);
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStillImageMultiCameraDoserNode;
  [(BWNode *)&v3 dealloc];
}

- (void)didSelectFormat:(id)format forInput:(id)input
{
  v5 = -[BWStillImageMultiCameraDoserNode _outputForNodeInputIndex:](&self->super.super.isa, [input index]);

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
  v7 = CMGetAttachment(buffer, @"StillImageSettings", 0);
  if ([v7 settingsID] != self->_currentSettingsID)
  {
    v8 = CMGetAttachment(buffer, @"BWStillImageCaptureSettings", 0);
    [(BWStillImageMultiCameraDoserNode *)self _configureCaptureRequestStateWithRequestedStillImageCaptureSettings:v7 resolvedStillImageCaptureSettings:v8];
  }

  if (-[NSMutableArray containsObject:](self->_inputIndicesForWhichDosingIsPerformed, "containsObject:", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(input, "index")}]))
  {
    [-[NSMutableArray objectAtIndexedSubscript:](self->_stashedObjectsByInputIndex objectAtIndexedSubscript:{objc_msgSend(input, "index")), "addObject:", buffer}];

    [(BWStillImageMultiCameraDoserNode *)self _emitStashedObjectsIfReady:v9];
  }

  else
  {
    [(BWStillImageMultiCameraDoserNode *)input renderSampleBuffer:buffer forInput:?];
  }
}

- (void)handleNodeError:(id)error forInput:(id)input
{
  if ([objc_msgSend(objc_msgSend(error "stillImageSettings")] != self->_currentSettingsID)
  {
    [BWStillImageMultiCameraDoserNode handleNodeError:error forInput:self];
  }

  if (-[NSMutableArray containsObject:](self->_inputIndicesForWhichDosingIsPerformed, "containsObject:", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(input, "index")}]))
  {
    [(BWStillImageMultiCameraDoserNode *)self handleNodeError:input forInput:error];
  }

  else
  {
    [(BWStillImageMultiCameraDoserNode *)input handleNodeError:error forInput:?];
  }
}

- (id)_outputForNodeInputIndex:(id *)result
{
  if (result)
  {
    v3 = result;
    outputs = [result outputs];
    v5 = [v3 outputIndexForPortType:{objc_msgSend(v3[16], "objectAtIndexedSubscript:", a2)}];

    return [outputs objectAtIndexedSubscript:v5];
  }

  return result;
}

- (unint64_t)_configureCaptureRequestStateWithRequestedStillImageCaptureSettings:(void *)settings resolvedStillImageCaptureSettings:
{
  if (result)
  {
    v5 = result;
    [(BWStillImageMultiCameraDoserNode *)result _clearCaptureRequestState];
    *(v5 + 136) = [a2 settingsID];
    if ([objc_msgSend(settings "captureStreamSettings")] >= 2)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      captureStreamSettings = [settings captureStreamSettings];
      v7 = [captureStreamSettings countByEnumeratingWithState:&v23 objects:v22 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v24;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v24 != v9)
            {
              objc_enumerationMutation(captureStreamSettings);
            }

            v11 = *(*(&v23 + 1) + 8 * i);
            hasValidFrames = [v11 hasValidFrames];
            if (hasValidFrames)
            {
              portType = [v11 portType];
              if (!portType)
              {
                return [(BWStillImageMultiCameraDoserNode *)v5 _clearCaptureRequestState];
              }

              v21 = [*(v5 + 128) indexOfObject:portType];
              if (v21 == 0x7FFFFFFFFFFFFFFFLL)
              {
                return [(BWStillImageMultiCameraDoserNode *)v5 _clearCaptureRequestState];
              }

              hasValidFrames = [*(v5 + 144) addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v21)}];
            }
          }

          v8 = OUTLINED_FUNCTION_1_3(hasValidFrames, v13, v14, v15, v16, v17, v18, v19, v22[0], v22[1], v22[2], v22[3], v22[4], v22[5], v22[6], v22[7], v22[8], v22[9], v22[10], v22[11], v22[12], v22[13], v22[14], v22[15], v23);
          if (v8)
          {
            continue;
          }

          break;
        }
      }
    }

    result = [*(v5 + 144) count];
    if (result <= 1)
    {
      return [*(v5 + 144) removeAllObjects];
    }
  }

  return result;
}

- (uint64_t)_emitStashedObjectsIfReady
{
  if (result)
  {
    v8 = result;
    v9 = *(result + 144);
    result = OUTLINED_FUNCTION_1_44(result, a2, a3, a4, a5, a6, a7, a8, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v99, v101, v103, v105, v107, v109, v111);
    if (!result)
    {
      goto LABEL_10;
    }

    v17 = result;
    v18 = MEMORY[0];
    LOBYTE(v19) = 1;
    do
    {
      v20 = 0;
      do
      {
        if (MEMORY[0] != v18)
        {
          objc_enumerationMutation(v9);
        }

        v21 = [objc_msgSend(*(v8 + 152) objectAtIndexedSubscript:{objc_msgSend(*(8 * v20), "intValue")), "count"}];
        v19 = (v21 != 0) & v19;
        ++v20;
      }

      while (v17 != v20);
      result = OUTLINED_FUNCTION_1_44(v21, v22, v23, v24, v25, v26, v27, v28, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v100, v102, v104, v106, v108, v110, v112);
      v17 = result;
    }

    while (result);
    if (v19)
    {
LABEL_10:
      v29 = *(v8 + 144);
      result = OUTLINED_FUNCTION_1_3(result, v10, v11, v12, v13, v14, v15, v16, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, 0);
      if (result)
      {
        v30 = result;
        v31 = MEMORY[0];
        do
        {
          v32 = 0;
          do
          {
            if (MEMORY[0] != v31)
            {
              objc_enumerationMutation(v29);
            }

            intValue = [*(8 * v32) intValue];
            v34 = [*(v8 + 152) objectAtIndexedSubscript:intValue];
            firstObject = [v34 firstObject];
            [v34 removeObjectAtIndex:0];
            v36 = [objc_msgSend(v8 "outputs")];
            v37 = CFGetTypeID(firstObject);
            if (CMSampleBufferGetTypeID() == v37)
            {
              [v36 emitSampleBuffer:firstObject];
            }

            else
            {
              [v36 emitNodeError:firstObject];
            }

            ++v32;
          }

          while (v30 != v32);
          result = OUTLINED_FUNCTION_1_3(v38, v39, v40, v41, v42, v43, v44, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96);
          v30 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

- (uint64_t)_clearCaptureRequestState
{
  if (result)
  {
    v1 = result;
    [*(result + 144) removeAllObjects];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    obj = *(v1 + 152);
    result = [obj countByEnumeratingWithState:&v11 objects:v10 count:16];
    if (result)
    {
      v2 = result;
      v3 = *v12;
      do
      {
        v4 = 0;
        do
        {
          if (*v12 != v3)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v11 + 1) + 8 * v4);
          if ([v5 count])
          {
            FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v8 = _os_log_send_and_compose_impl();
            FigCapturePleaseFileRadar(FrameworkRadarComponent, v8, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageMultiCameraDoserNode.m", 248, @"LastShownDate:BWStillImageMultiCameraDoserNode.m:248", @"LastShownBuild:BWStillImageMultiCameraDoserNode.m:248", 0);
            free(v8);
          }

          [v5 removeAllObjects];
          ++v4;
        }

        while (v2 != v4);
        result = [obj countByEnumeratingWithState:&v11 objects:v10 count:16];
        v2 = result;
      }

      while (result);
    }
  }

  return result;
}

- (uint64_t)renderSampleBuffer:(uint64_t)a3 forInput:.cold.1(void *a1, id *a2, uint64_t a3)
{
  v4 = -[BWStillImageMultiCameraDoserNode _outputForNodeInputIndex:](a2, [a1 index]);

  return [v4 emitSampleBuffer:a3];
}

- (unint64_t)handleNodeError:(void *)a1 forInput:(unint64_t)a2 .cold.1(void *a1, unint64_t a2)
{
  v4 = [objc_msgSend(a1 "stillImageSettings")];
  v5 = [objc_msgSend(a1 "stillImageSettings")];

  return [(BWStillImageMultiCameraDoserNode *)a2 _configureCaptureRequestStateWithRequestedStillImageCaptureSettings:v4 resolvedStillImageCaptureSettings:v5];
}

- (uint64_t)handleNodeError:(uint64_t)a3 forInput:.cold.2(void *a1, id *a2, uint64_t a3)
{
  v4 = -[BWStillImageMultiCameraDoserNode _outputForNodeInputIndex:](a2, [a1 index]);

  return [v4 emitNodeError:a3];
}

- (uint64_t)handleNodeError:(uint64_t)a3 forInput:.cold.3(uint64_t a1, void *a2, uint64_t a3)
{
  [objc_msgSend(*(a1 + 152) objectAtIndexedSubscript:{objc_msgSend(a2, "index")), "addObject:", a3}];

  return [(BWStillImageMultiCameraDoserNode *)a1 _emitStashedObjectsIfReady:v4];
}

@end