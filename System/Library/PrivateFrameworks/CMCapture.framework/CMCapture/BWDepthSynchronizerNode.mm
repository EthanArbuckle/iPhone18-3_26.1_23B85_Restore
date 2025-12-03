@interface BWDepthSynchronizerNode
+ (void)initialize;
- (id)initForStreaming:(BOOL)streaming maxQueueDepth:(int)depth separateDepthComponentsEnabled:(BOOL)enabled;
- (uint64_t)_attachDepthDataToSampleBufferOrReportDepthMissing:(_BYTE *)missing isDepthMissing:;
- (uint64_t)_cleanupDepthBufferQueue;
- (uint64_t)_setupDepthMediaConfigurationForOutput:(uint64_t)output inputAttachedMediaKey:(uint64_t)key outputAttachedMediaKey:;
- (unint64_t)_isDepthExpectedForSampleBuffer:(uint64_t)buffer;
- (void)_tryToEmitBuffers;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key;
- (void)handleDroppedSample:(id)sample forInput:(id)input;
- (void)handleNodeError:(id)error forInput:(id)input;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWDepthSynchronizerNode

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (id)initForStreaming:(BOOL)streaming maxQueueDepth:(int)depth separateDepthComponentsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v27.receiver = self;
  v27.super_class = BWDepthSynchronizerNode;
  v8 = [(BWNode *)&v27 init];
  v9 = v8;
  if (v8)
  {
    v8->_streaming = streaming;
    v8->_separateDepthComponentsEnabled = enabledCopy;
    [(BWNode *)v8 setSupportsConcurrentLiveInputCallbacks:v8->_streaming];
    v11 = 0;
    v12 = 0;
    if (depth <= 2)
    {
      depthCopy = 2;
    }

    else
    {
      depthCopy = depth;
    }

    *(v9 + 152) = depthCopy;
    v14 = 1;
    do
    {
      v15 = v14;
      v16 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v9 index:v12];
      [(BWNodeInput *)v16 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
      [(BWNodeInput *)v16 setPassthroughMode:1];
      [(BWNodeInput *)v16 setRetainedBufferCount:*(v9 + 152) + *(v9 + 208)];
      if (v11)
      {
        v17 = objc_alloc_init(BWNodeInputMediaConfiguration);
        v18 = v17;
        if (enabledCopy)
        {
          [(BWNodeInputMediaConfiguration *)v17 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
          [(BWNodeInputMediaConfiguration *)v18 setPassthroughMode:1];
          [(BWNodeInput *)v16 setMediaConfiguration:v18 forAttachedMediaKey:@"DepthData_DY"];
        }

        else
        {
          [(BWNodeInputMediaConfiguration *)v17 setPassthroughMode:0];
          [(BWNodeInput *)v16 setUnspecifiedAttachedMediaConfiguration:v18];
          [(BWNodeInput *)v16 setRetainedBufferCount:1];
        }
      }

      [v9 addInput:v16];

      v14 = 0;
      v11 = 1;
      v12 = 1;
    }

    while ((v15 & 1) != 0);
    *(v9 + 192) = [objc_msgSend(v9 "inputs")];
    *(v9 + 200) = [objc_msgSend(v9 "inputs")];
    v19 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v9];
    [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v19 primaryMediaConfiguration] setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeOutput *)v19 setPassthroughMode:1];
    v20 = @"PrimaryFormat";
    if (*(v9 + 185))
    {
      [(BWDepthSynchronizerNode *)v9 _setupDepthMediaConfigurationForOutput:v19 inputAttachedMediaKey:@"PrimaryFormat" outputAttachedMediaKey:@"DepthData_DX"];
      v21 = v9;
      v22 = v19;
      v20 = @"DepthData_DY";
      v23 = @"DepthData_DY";
    }

    else
    {
      v23 = @"Depth";
      v21 = v9;
      v22 = v19;
    }

    [(BWDepthSynchronizerNode *)v21 _setupDepthMediaConfigurationForOutput:v22 inputAttachedMediaKey:v20 outputAttachedMediaKey:v23];
    [v9 addOutput:v19];

    *(v9 + 232) = 0;
    *(v9 + 136) = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(v9 + 144) = objc_alloc_init(MEMORY[0x1E695DF70]);
    v24 = MEMORY[0x1E6960C70];
    v25 = *MEMORY[0x1E6960C70];
    *(v9 + 260) = *MEMORY[0x1E6960C70];
    v26 = *(v24 + 16);
    *(v9 + 276) = v26;
    *(v9 + 236) = v25;
    *(v9 + 252) = v26;
    atomic_store(0, (v9 + 132));
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWDepthSynchronizerNode;
  [(BWNode *)&v3 dealloc];
}

- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  outputs = [(BWNode *)self outputs];
  v9 = [(NSArray *)outputs countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(outputs);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v13 attachedMediaKeyDrivenByInputAttachedMediaKey:key inputIndex:{objc_msgSend(input, "index")}];
        if (v14)
        {
          v15 = v14;
          if ([v13 passthroughMode])
          {
            v16 = [v13 mediaPropertiesForAttachedMediaKey:v15];
            if (!v16)
            {
              if ([v15 isEqualToString:@"PrimaryFormat"])
              {
                v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ output %@ has no media properties for the primary format (provided media key is %@)", self, v13, key];
                objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0]);
              }

              v16 = objc_alloc_init(BWNodeOutputMediaProperties);
              [v13 _setMediaProperties:v16 forAttachedMediaKey:v15];
            }

            [(BWNodeOutputMediaProperties *)v16 setResolvedFormat:format];
          }
        }
      }

      v10 = [(NSArray *)outputs countByEnumeratingWithState:&v20 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  if (![(BWNodeOutput *)self->super._output liveFormat])
  {
    [(BWNodeOutput *)self->super._output makeConfiguredFormatLive];
  }

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)didReachEndOfDataForInput:(id)input
{
  v5 = atomic_fetch_add_explicit(&self->_numEODMessagesReceived, 1u, memory_order_relaxed) + 1;
  if ([(NSArray *)[(BWNode *)self inputs] count]== v5)
  {
    os_unfair_lock_lock(&self->_bufferServicingLock);
    [(BWNodeOutput *)self->super._output markEndOfLiveOutput];
    os_unfair_lock_unlock(&self->_bufferServicingLock);
    self->_numEODMessagesReceived = 0;
  }

  else if (self->_flushOnDepthEOD && self->_depthInput == input)
  {
    atomic_store(1u, &self->_depthInputHasReceivedEOD);
    os_unfair_lock_lock(&self->_bufferServicingLock);
    [(BWDepthSynchronizerNode *)self _tryToEmitBuffers];

    os_unfair_lock_unlock(&self->_bufferServicingLock);
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  v7 = [objc_msgSend(CMGetAttachment(buffer *off_1E798A3C8];
  if (self->_imageInput == input)
  {
    v8 = &OBJC_IVAR___BWDepthSynchronizerNode__lastReceivedImageID;
  }

  else
  {
    v8 = &OBJC_IVAR___BWDepthSynchronizerNode__lastReceivedDepthID;
  }

  v9 = *(&self->super.super.isa + *v8);
  memset(&v23, 0, sizeof(v23));
  CMSampleBufferGetPresentationTimeStamp(&v23, buffer);
  if (self->_streaming)
  {
    LOBYTE(v10) = 0;
    v11 = 0;
  }

  else
  {
    v12 = [objc_msgSend(CMGetAttachment(buffer @"StillSettings"];
    v10 = (v12 & 0x2000) >> 13;
    if ((v12 & 0x2000) != 0)
    {
      v11 = 10;
    }

    else
    {
      v11 = 0;
    }
  }

  if ((v10 & 1) == 0 && (v7 < v9 ? (v13 = (v9 - 16777205) >= 0xFF000016) : (v13 = 0), v13))
  {
    v22 = 0;
    v21 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    if (self->_imageInput == input)
    {
      p_lastReceivedImageID = &self->_lastReceivedImageID;
      v15 = self->_lastReceivedImageID - v11;
      p_imageIDWrapAroundCounter = &self->_imageIDWrapAroundCounter;
      imageIDWrapAroundCounter = self->_imageIDWrapAroundCounter;
      v18 = &OBJC_IVAR___BWDepthSynchronizerNode__lastReceivedImagePTS;
      v19 = &OBJC_IVAR___BWDepthSynchronizerNode__imageBufferQueue;
    }

    else
    {
      p_lastReceivedImageID = &self->_lastReceivedDepthID;
      v15 = self->_lastReceivedDepthID - v11;
      p_imageIDWrapAroundCounter = &self->_depthIDWrapAroundCounter;
      imageIDWrapAroundCounter = self->_depthIDWrapAroundCounter;
      v18 = &OBJC_IVAR___BWDepthSynchronizerNode__lastReceivedDepthPTS;
      v19 = &OBJC_IVAR___BWDepthSynchronizerNode__depthBufferQueue;
    }

    if (v7 < v15)
    {
      *p_imageIDWrapAroundCounter = ++imageIDWrapAroundCounter;
    }

    CMSetAttachment(buffer, @"ExtendedCaptureID", [MEMORY[0x1E696AD98] numberWithInt:v7 | (imageIDWrapAroundCounter << 24)], 0);
    [*(&self->super.super.isa + *v19) addObject:buffer];
    *p_lastReceivedImageID = v7;
    *(&self->super.super.isa + *v18) = v23;
    [(BWDepthSynchronizerNode *)self _tryToEmitBuffers];
  }

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)handleNodeError:(id)error forInput:(id)input
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  if (self->_streaming)
  {
    goto LABEL_6;
  }

  if ([error errorCode] == -16800 || objc_msgSend(error, "errorCode") == -16802 || objc_msgSend(error, "errorCode") == -16806)
  {
    [(NSMutableArray *)self->_imageBufferQueue removeAllObjects];
    [(NSMutableArray *)self->_depthBufferQueue removeAllObjects];

    self->_errorForImageInput = 0;
    self->_errorForDepthInput = 0;
LABEL_6:
    [(BWNodeOutput *)self->super._output emitNodeError:error];
    goto LABEL_7;
  }

  [(BWDepthSynchronizerNode *)self handleNodeError:input forInput:error];
LABEL_7:

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)handleDroppedSample:(id)sample forInput:(id)input
{
  if (self->_imageInput == input)
  {
    os_unfair_lock_lock(&self->_bufferServicingLock);
    [(BWNodeOutput *)self->super._output emitDroppedSample:sample];

    os_unfair_lock_unlock(&self->_bufferServicingLock);
  }
}

BOOL __44__BWDepthSynchronizerNode__tryToEmitBuffers__block_invoke(uint64_t a1, CMAttachmentBearerRef target)
{
  v3 = CMGetAttachment(target, @"BWStillImageCaptureSettings", 0);
  v4 = [objc_msgSend(*(*(a1 + 32) + 216) "stillImageSettings")];
  if (v4 == [v3 settingsID])
  {
    return 1;
  }

  v6 = [objc_msgSend(*(*(a1 + 32) + 224) "stillImageSettings")];
  return v6 == [v3 settingsID];
}

- (uint64_t)_setupDepthMediaConfigurationForOutput:(uint64_t)output inputAttachedMediaKey:(uint64_t)key outputAttachedMediaKey:
{
  if (result)
  {
    v7 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    [(BWNodeOutputMediaConfiguration *)v7 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeOutputMediaConfiguration *)v7 setPassthroughMode:1];
    [(BWNodeOutputMediaConfiguration *)v7 setIndexOfInputWhichDrivesThisOutput:1];
    [(BWNodeOutputMediaConfiguration *)v7 setAttachedMediaKeyOfInputWhichDrivesThisOutput:output];

    return [a2 setMediaConfiguration:v7 forAttachedMediaKey:key];
  }

  return result;
}

- (void)_tryToEmitBuffers
{
  if (self)
  {
    v2 = 0;
    if ([*(self + 136) count])
    {
      v29 = *off_1E798B708;
      v30 = *off_1E798A3C8;
      v3 = @"ExtendedCaptureID";
      while (1)
      {
        v4 = [OUTLINED_FUNCTION_2_79() objectAtIndexedSubscript:0];
        v5 = [(BWDepthSynchronizerNode *)self _isDepthExpectedForSampleBuffer:v4];
        v6 = [OUTLINED_FUNCTION_2_79() count];
        v7 = *(self + 152);
        v32 = [CMGetAttachment(v4 v3];
        v8 = 0;
        v58[0] = 0;
        if (v5)
        {
          v8 = [(BWDepthSynchronizerNode *)self _attachDepthDataToSampleBufferOrReportDepthMissing:v4 isDepthMissing:v58];
        }

        v31 = v2;
        v10 = (*(self + 208) & 1) == 0 && *(self + 168) && (v9 = CMGetAttachment(v4, @"StillSettings", 0), ([objc_msgSend(v9 "captureSettings")] & 0x2000) != 0) && objc_msgSend(v9, "settingsID") <= *(self + 168);
        v11 = v3;
        if ((v6 > v7 || (v5 & 1) == 0) | v8 & 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v58[0] | v10;
        }

        if ((*(self + 208) & 1) == 0 && (v12 & (dword_1EB58E1E0 != 0)) == 1)
        {
          v57 = 0;
          v56 = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v14 = v57;
          v15 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v56);
          v16 = v14 & 0xFFFFFFFE;
          if (v15)
          {
            v16 = v14;
          }

          if (v16)
          {
            v17 = v6 > v7;
            name = [self name];
            v19 = BWStillImageCaptureIDForSampleBuffer(v4);
            v20 = [objc_msgSend(CMGetAttachment(v4 v30];
            v21 = *(self + 168);
            v34 = 136317699;
            v35 = "[BWDepthSynchronizerNode _tryToEmitBuffers]";
            v36 = 2113;
            v37 = name;
            v38 = 2050;
            v39 = v19;
            v40 = 1026;
            v41 = v32;
            v42 = 1026;
            v43 = v20;
            v44 = 1026;
            v45 = v17;
            v46 = 1026;
            v47 = v5;
            v48 = 1026;
            v49 = v8;
            v50 = 1026;
            v51 = v58[0];
            v52 = 1026;
            v53 = v10;
            v54 = 2050;
            v55 = v21;
            LODWORD(v28) = 84;
            v27 = &v34;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if ((v12 & 1) == 0)
        {
          break;
        }

        v3 = v11;
        CMRemoveAttachment(v4, v11);
        [*(self + 16) emitSampleBuffer:v4];
        *(self + 156) = v32;
        [OUTLINED_FUNCTION_2_79() removeObject:v4];
        v2 = 1;
        if (![OUTLINED_FUNCTION_2_79() count])
        {
          goto LABEL_26;
        }
      }

      v2 = v31;
    }

LABEL_26:
    v22 = *(self + 216);
    if (v22 && (([objc_msgSend(objc_msgSend(v22 "stillImageSettings")] & 0x800) == 0 || objc_msgSend(OUTLINED_FUNCTION_0_80(), "count") || *(self + 224)))
    {
      [*(self + 16) emitNodeError:{*(self + 216), v27, v28}];
      v23 = OUTLINED_FUNCTION_0_80();
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __44__BWDepthSynchronizerNode__tryToEmitBuffers__block_invoke;
      v33[3] = &unk_1E7999798;
      v33[4] = self;
      v24 = [v23 indexesOfObjectsPassingTest:v33];
      if ([v24 count])
      {
        [OUTLINED_FUNCTION_0_80() removeObjectsAtIndexes:v24];
      }

      [(BWDepthSynchronizerNode *)self _cleanupDepthBufferQueue];
    }

    else
    {
      [(BWDepthSynchronizerNode *)self _cleanupDepthBufferQueue];
      if ((v2 & 1) == 0)
      {
        return;
      }
    }

    v25 = *(self + 216);
    if (v25)
    {

      *(self + 216) = 0;
    }

    v26 = *(self + 224);
    if (v26)
    {

      *(self + 224) = 0;
    }
  }
}

- (unint64_t)_isDepthExpectedForSampleBuffer:(uint64_t)buffer
{
  if (!buffer)
  {
    return 0;
  }

  if ((*(buffer + 208) & 1) == 0)
  {
    return ([CMGetAttachment(target @"BWStillImageCaptureSettings"] >> 11) & 1;
  }

  v2 = [CMGetAttachment(target *off_1E798A3C8];
  v3 = [v2 count] != 0;
  v4 = [v2 objectForKeyedSubscript:*off_1E798A0E8];
  if (v4)
  {
    return [objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798B3F8), "intValue"}] == 2;
  }

  return v3;
}

- (uint64_t)_attachDepthDataToSampleBufferOrReportDepthMissing:(_BYTE *)missing isDepthMissing:
{
  if (!self)
  {
    return 0;
  }

  if ((*(self + 208) & 1) == 0 && *(self + 224))
  {
    goto LABEL_4;
  }

  v7 = [CMGetAttachment(target @"ExtendedCaptureID"];
  if (![OUTLINED_FUNCTION_1_89() count])
  {
LABEL_14:
    if (![OUTLINED_FUNCTION_1_89() count] && *(self + 209) == 1)
    {
      v12 = atomic_load((self + 132));
      if (v12)
      {
LABEL_4:
        v6 = 0;
        *missing = 1;
        return v6;
      }
    }

    return 0;
  }

  v8 = 0;
  while (1)
  {
    v9 = [OUTLINED_FUNCTION_1_89() objectAtIndexedSubscript:v8];
    v10 = [CMGetAttachment(v9 @"ExtendedCaptureID"];
    if (v7 < v10)
    {
      *missing = 1;
      goto LABEL_14;
    }

    if (v7 == v10)
    {
      break;
    }

    if ([OUTLINED_FUNCTION_1_89() count] <= ++v8)
    {
      goto LABEL_14;
    }
  }

  v11 = CMGetAttachment(v9, *off_1E798A3C8, 0);
  if (([objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798B6F8), "BOOLValue"}] & 1) != 0 || *(self + 184) == 1 && objc_msgSend(objc_msgSend(v11, "objectForKeyedSubscript:", *off_1E798B6F0), "BOOLValue"))
  {
    *missing = 1;
    [OUTLINED_FUNCTION_1_89() removeObject:v9];
    CMSetAttachment(target, *off_1E798D2A8, &unk_1F22452B0, 1u);
    goto LABEL_14;
  }

  memset(&v21, 0, sizeof(v21));
  CMSampleBufferGetPresentationTimeStamp(&v21, target);
  cf = 0;
  v19 = v21;
  v17 = *MEMORY[0x1E6960C70];
  v18 = *(MEMORY[0x1E6960C70] + 16);
  if (BWCMSampleBufferCreateCopyWithNewTimingIncludingMetadata(v9, &v19, &v17, &cf))
  {
    if (v9)
    {
      v14 = CFRetain(v9);
    }

    else
    {
      v14 = 0;
    }

    cf = v14;
  }

  else
  {
    v14 = cf;
  }

  CMRemoveAttachment(v14, @"ExtendedCaptureID");
  v15 = @"Depth";
  if (*(self + 185) == 1)
  {
    BWSampleBufferRemoveAttachedMedia(target, @"Depth");
    AttachedMedia = BWSampleBufferGetAttachedMedia(cf, @"DepthData_DY");
    BWSampleBufferSetAttachedMedia(target, @"DepthData_DY", AttachedMedia);
    BWSampleBufferRemoveAttachedMedia(cf, @"DepthData_DY");
    v15 = @"DepthData_DX";
  }

  BWSampleBufferSetAttachedMedia(target, v15, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  v6 = 1;
  CMSetAttachment(target, *off_1E798D2C0, MEMORY[0x1E695E118], 1u);
  [OUTLINED_FUNCTION_1_89() removeObject:v9];
  return v6;
}

- (uint64_t)_cleanupDepthBufferQueue
{
  if (result)
  {
    v1 = result;
    for (result = [*(result + 144) count]; result; result = objc_msgSend(OUTLINED_FUNCTION_0_80(), "count"))
    {
      v2 = [OUTLINED_FUNCTION_0_80() objectAtIndexedSubscript:0];
      result = [CMGetAttachment(v2 @"ExtendedCaptureID"];
      v3 = result;
      if (*(v1 + 208))
      {
        v4 = 0;
      }

      else
      {
        result = [objc_msgSend(CMGetAttachment(v2 @"StillSettings"];
        if ((result & 0x2000) != 0)
        {
          v4 = -10;
        }

        else
        {
          v4 = 0;
        }
      }

      if (v3 > *(v1 + 156) + v4)
      {
        break;
      }

      [OUTLINED_FUNCTION_0_80() removeObject:v2];
    }

    if ((*(v1 + 208) & 1) == 0 && *(v1 + 168))
    {
      v5 = OUTLINED_FUNCTION_0_80();
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __51__BWDepthSynchronizerNode__cleanupDepthBufferQueue__block_invoke;
      v7[3] = &unk_1E7999798;
      v7[4] = v1;
      v6 = [v5 indexesOfObjectsPassingTest:v7];
      result = [v6 count];
      if (result)
      {
        return [OUTLINED_FUNCTION_0_80() removeObjectsAtIndexes:v6];
      }
    }
  }

  return result;
}

- (void)handleNodeError:(void *)a3 forInput:.cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 192) == a2)
  {
    v5 = (a1 + 216);
    if (!*(a1 + 216))
    {
      goto LABEL_6;
    }

    [*(a1 + 16) emitNodeError:?];
  }

  else
  {
    *(a1 + 168) = [objc_msgSend(a3 "stillImageSettings")];
    v5 = (a1 + 224);
  }

LABEL_6:
  *v5 = a3;

  [(BWDepthSynchronizerNode *)a1 _tryToEmitBuffers];
}

@end