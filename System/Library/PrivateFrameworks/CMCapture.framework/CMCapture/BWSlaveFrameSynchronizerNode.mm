@interface BWSlaveFrameSynchronizerNode
- (BWSlaveFrameSynchronizerNode)initWithDepthEnabled:(BOOL)enabled numberOfInputs:(int)inputs syncSlaveForMasterPortTypes:(id)types separateDepthComponentsEnabled:(BOOL)componentsEnabled preLTMThumbnailEnabled:(BOOL)thumbnailEnabled postColorProcessingThumbnailEnabled:(BOOL)processingThumbnailEnabled weightSegmentMapEnabled:(BOOL)mapEnabled numberOfSecondaryFramesToSkip:(int)self0;
- (BWSlaveFrameSynchronizerNode)initWithDepthEnabled:(BOOL)enabled numberOfInputs:(int)inputs syncSlaveForMasterPortTypes:(id)types separateDepthComponentsEnabled:(BOOL)componentsEnabled preLTMThumbnailEnabledInputs:(id)enabledInputs postColorProcessingThumbnailEnabledInputs:(id)thumbnailEnabledInputs weightSegmentMapEnabledInputs:(id)mapEnabledInputs differentInputFormatsSupported:(BOOL)self0 bufferSize:(int)self1 numberOfSlaveFramesToSkip:(int)self2 startEmittingMasterFramesBeforeSlaveStreamStarts:(BOOL)self3;
- (uint64_t)_setupAttachedMediaConfigurationForInput:(uint64_t)input attachedMediaKey:;
- (uint64_t)_setupAttachedMediaConfigurationForOutput:(uint64_t)output attachedMediaKey:(uint64_t)key inputIndexesDrivingAttachedMediaOutput:;
- (unint64_t)_printState;
- (void)_emitDroppedFrame:(uint64_t)frame captureID:inputIndex:;
- (void)_emitDroppedFrames:(uint64_t)frames captureID:(CMTime *)d inputIndex:(int)index;
- (void)_purgeAllBuffers;
- (void)_purgeAllPurgeableBuffers;
- (void)_tryToEmitBuffersWithSynchronizationEnabled:(uint64_t)enabled;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key;
- (void)handleDroppedSample:(id)sample forInput:(id)input;
- (void)handleNodeError:(id)error forInput:(id)input;
- (void)handleStillImageReferenceFrameBracketedCaptureSequenceNumber:(int)number forInput:(id)input;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWSlaveFrameSynchronizerNode

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  inputs = [(BWNode *)self inputs];
  v4 = [(NSArray *)inputs countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(inputs);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (v8 != self->super._input)
        {
          [(BWFormat *)[(BWNodeInput *)v8 format] isEqual:[(BWNodeInput *)self->super._input format]];
        }
      }

      v5 = [(NSArray *)inputs countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v5);
  }

  self->_slaveStreamHasStarted = 0;
  self->_numSlaveFramesReceived = 0;
  v9.receiver = self;
  v9.super_class = BWSlaveFrameSynchronizerNode;
  [(BWNode *)&v9 prepareForCurrentConfigurationToBecomeLive];
}

- (void)_purgeAllPurgeableBuffers
{
  if (result)
  {
    v1 = result;
    if ([objc_msgSend(result "inputs")])
    {
      v2 = 0;
      v3 = *off_1E798B708;
      v4 = -1;
      v5 = off_1E798B710;
      v6 = *off_1E798B710;
      do
      {
        Head = CMSimpleQueueGetHead(*(v1[17] + 8 * v2));
        if (Head)
        {
          v8 = Head;
          v9 = OUTLINED_FUNCTION_71_0(Head);
          v10 = [objc_msgSend(v9 objectForKeyedSubscript:{v3), "intValue"}];
          if (v10 > v4)
          {
            v11 = v10;
            [objc_msgSend(v9 objectForKeyedSubscript:{v6), "BOOLValue"}];
            CMSampleBufferGetPresentationTimeStamp(&v26, v8);
            v4 = v11;
          }
        }

        ++v2;
      }

      while ([objc_msgSend(v1 "inputs")] > v2);
    }

    else
    {
      v5 = off_1E798B710;
      v4 = -1;
    }

    result = [objc_msgSend(v1 "inputs")];
    if (result)
    {
      v12 = 0;
      v13 = 0;
      v14 = *off_1E798A3C8;
      v15 = *off_1E798B708;
      v24 = *v5;
      do
      {
        v16 = *(v1[17] + 8 * v12);
        v17 = CMSimpleQueueGetHead(v16);
        if (v17)
        {
          v18 = v17;
          v19 = CMGetAttachment(v17, v14, 0);
          v20 = [objc_msgSend(v19 objectForKeyedSubscript:{v15), "intValue"}];
          if (v20 < v4)
          {
            v21 = v20;
            while (1)
            {
              [objc_msgSend(v19 objectForKeyedSubscript:{v24), "BOOLValue"}];
              memset(&v26, 0, sizeof(v26));
              CMSampleBufferGetPresentationTimeStamp(&v26, v18);
              v22 = CMSimpleQueueDequeue(v16);
              v25 = v26;
              [BWSlaveFrameSynchronizerNode _emitDroppedFrames:v1 captureID:&v25 inputIndex:v21];
              if (v22)
              {
                CFRelease(v22);
              }

              v23 = CMSimpleQueueGetHead(v16);
              if (!v23)
              {
                break;
              }

              v18 = v23;
              v19 = CMGetAttachment(v23, v14, 0);
              v21 = [objc_msgSend(v19 objectForKeyedSubscript:{v15), "intValue"}];
              v13 = 1;
              if (v21 >= v4)
              {
                goto LABEL_19;
              }
            }

            v13 = 1;
          }
        }

LABEL_19:
        ++v12;
        result = [objc_msgSend(v1 "inputs")];
      }

      while (result > v12);
      if (v13)
      {
        return [(BWSlaveFrameSynchronizerNode *)v1 _printState];
      }
    }
  }

  return result;
}

- (BWSlaveFrameSynchronizerNode)initWithDepthEnabled:(BOOL)enabled numberOfInputs:(int)inputs syncSlaveForMasterPortTypes:(id)types separateDepthComponentsEnabled:(BOOL)componentsEnabled preLTMThumbnailEnabled:(BOOL)thumbnailEnabled postColorProcessingThumbnailEnabled:(BOOL)processingThumbnailEnabled weightSegmentMapEnabled:(BOOL)mapEnabled numberOfSecondaryFramesToSkip:(int)self0
{
  processingThumbnailEnabledCopy = processingThumbnailEnabled;
  componentsEnabledCopy = componentsEnabled;
  v13 = *&inputs;
  enabledCopy = enabled;
  v16 = 0x1E695D000uLL;
  if (thumbnailEnabled)
  {
    array = [MEMORY[0x1E695DF70] array];
    if (v13 >= 1)
    {
      v18 = 0;
      do
      {
        [array addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v18)}];
        v18 = (v18 + 1);
      }

      while (v13 != v18);
      v16 = 0x1E695D000uLL;
    }
  }

  else
  {
    array = 0;
  }

  if (processingThumbnailEnabledCopy)
  {
    array2 = [MEMORY[0x1E695DF70] array];
    if (v13 >= 1)
    {
      v20 = 0;
      do
      {
        [array2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v20)}];
        v20 = (v20 + 1);
      }

      while (v13 != v20);
      v16 = 0x1E695D000;
    }
  }

  else
  {
    array2 = 0;
  }

  if (mapEnabled)
  {
    array3 = [*(v16 + 3952) array];
    if (v13 >= 1)
    {
      v22 = 0;
      do
      {
        [array3 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v22)}];
        v22 = (v22 + 1);
      }

      while (v13 != v22);
    }
  }

  else
  {
    array3 = 0;
  }

  BYTE4(v25) = 1;
  HIDWORD(v24) = 1;
  LODWORD(v25) = skip;
  LOBYTE(v24) = 0;
  return [BWSlaveFrameSynchronizerNode initWithDepthEnabled:"initWithDepthEnabled:numberOfInputs:syncSlaveForMasterPortTypes:separateDepthComponentsEnabled:preLTMThumbnailEnabledInputs:postColorProcessingThumbnailEnabledInputs:weightSegmentMapEnabledInputs:differentInputFormatsSupported:bufferSize:numberOfSlaveFramesToSkip:startEmittingMasterFramesBeforeSlaveStreamStarts:" numberOfInputs:enabledCopy syncSlaveForMasterPortTypes:v13 separateDepthComponentsEnabled:types preLTMThumbnailEnabledInputs:componentsEnabledCopy postColorProcessingThumbnailEnabledInputs:array weightSegmentMapEnabledInputs:array2 differentInputFormatsSupported:array3 bufferSize:v24 numberOfSlaveFramesToSkip:v25 startEmittingMasterFramesBeforeSlaveStreamStarts:?];
}

- (BWSlaveFrameSynchronizerNode)initWithDepthEnabled:(BOOL)enabled numberOfInputs:(int)inputs syncSlaveForMasterPortTypes:(id)types separateDepthComponentsEnabled:(BOOL)componentsEnabled preLTMThumbnailEnabledInputs:(id)enabledInputs postColorProcessingThumbnailEnabledInputs:(id)thumbnailEnabledInputs weightSegmentMapEnabledInputs:(id)mapEnabledInputs differentInputFormatsSupported:(BOOL)self0 bufferSize:(int)self1 numberOfSlaveFramesToSkip:(int)self2 startEmittingMasterFramesBeforeSlaveStreamStarts:(BOOL)self3
{
  componentsEnabledCopy = componentsEnabled;
  enabledCopy = enabled;
  v39.receiver = self;
  v39.super_class = BWSlaveFrameSynchronizerNode;
  v17 = [(BWNode *)&v39 init];
  v18 = v17;
  if (v17)
  {
    typesCopy = types;
    [(BWNode *)v17 setSupportsConcurrentLiveInputCallbacks:1];
    v18->_numBufferedFrames = size;
    v18->_differentInputFormatsSupported = supported;
    v32 = FigCapturePlatformIdentifier();
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    if (inputs >= 1)
    {
      v19 = 0;
      if (v32 <= 11)
      {
        v20 = BWAttachedMediaKey_PreLTMThumbnail;
      }

      else
      {
        v20 = BWAttachedMediaKey_LTMThumbnail;
      }

      v34 = *v20;
      do
      {
        v21 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v18 index:v19];
        [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v21 primaryMediaConfiguration] setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
        [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v21 primaryMediaConfiguration] setPassthroughMode:1];
        [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v21 primaryMediaConfiguration] setDelayedBufferCount:v18->_numBufferedFrames];
        if (v19)
        {
          v22 = objc_alloc_init(BWNodeInputMediaConfiguration);
          [(BWNodeInputMediaConfiguration *)v22 setPassthroughMode:0];
          [(BWNodeInput *)v21 setUnspecifiedAttachedMediaConfiguration:v22];
          if (enabledCopy)
          {
            v23 = @"Depth";
            if (componentsEnabledCopy)
            {
              [(BWSlaveFrameSynchronizerNode *)v18 _setupAttachedMediaConfigurationForInput:v21 attachedMediaKey:@"DepthData_DX"];
              v23 = @"DepthData_DY";
            }

            [(BWSlaveFrameSynchronizerNode *)v18 _setupAttachedMediaConfigurationForInput:v21 attachedMediaKey:v23];
            [array2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v19)}];
          }
        }

        if ([enabledInputs containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v19)}])
        {
          [(BWSlaveFrameSynchronizerNode *)v18 _setupAttachedMediaConfigurationForInput:v21 attachedMediaKey:v34];
        }

        if ([thumbnailEnabledInputs containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v19)}])
        {
          [(BWSlaveFrameSynchronizerNode *)v18 _setupAttachedMediaConfigurationForInput:v21 attachedMediaKey:0x1F21AB1D0];
        }

        if ([mapEnabledInputs containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v19)}])
        {
          [(BWSlaveFrameSynchronizerNode *)v18 _setupAttachedMediaConfigurationForInput:v21 attachedMediaKey:0x1F21AB1F0];
        }

        [(BWNode *)v18 addInput:v21];

        if (v19 || !v18->_differentInputFormatsSupported)
        {
          [array addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v19)}];
        }

        ++v19;
      }

      while (inputs != v19);
    }

    v24 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v18];
    [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v24 primaryMediaConfiguration] setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v24 primaryMediaConfiguration] setPassthroughMode:1];
    [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v24 primaryMediaConfiguration] setIndexesOfInputsWhichDrivesThisOutput:array];
    v25 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    [(BWNodeOutputMediaConfiguration *)v25 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeOutputMediaConfiguration *)v25 setPassthroughMode:1];
    [(BWNodeOutputMediaConfiguration *)v25 setIndexesOfInputsWhichDrivesThisOutput:array];
    [(BWNodeOutputMediaConfiguration *)v25 setAttachedMediaKeyOfInputWhichDrivesThisOutput:@"PrimaryFormat"];
    [(BWNodeOutput *)v24 setMediaConfiguration:v25 forAttachedMediaKey:@"SynchronizedSlaveFrame"];
    if (enabledCopy)
    {
      if (componentsEnabledCopy)
      {
        v29 = array2;
        [(BWSlaveFrameSynchronizerNode *)v18 _setupAttachedMediaConfigurationForOutput:v24 attachedMediaKey:@"DepthData_DX" inputIndexesDrivingAttachedMediaOutput:array2];
        v30 = BWAttachedMediaKey_DepthData_DY;
      }

      else
      {
        v30 = BWAttachedMediaKey_Depth;
        v29 = array2;
      }

      [(BWSlaveFrameSynchronizerNode *)v18 _setupAttachedMediaConfigurationForOutput:v24 attachedMediaKey:*v30 inputIndexesDrivingAttachedMediaOutput:v29];
    }

    if ([enabledInputs count])
    {
      v31 = BWAttachedMediaKey_LTMThumbnail;
      if (v32 <= 11)
      {
        v31 = BWAttachedMediaKey_PreLTMThumbnail;
      }

      [(BWSlaveFrameSynchronizerNode *)v18 _setupAttachedMediaConfigurationForOutput:v24 attachedMediaKey:*v31 inputIndexesDrivingAttachedMediaOutput:enabledInputs];
    }

    if ([thumbnailEnabledInputs count])
    {
      [(BWSlaveFrameSynchronizerNode *)v18 _setupAttachedMediaConfigurationForOutput:v24 attachedMediaKey:0x1F21AB1D0 inputIndexesDrivingAttachedMediaOutput:thumbnailEnabledInputs];
    }

    if ([mapEnabledInputs count])
    {
      [(BWSlaveFrameSynchronizerNode *)v18 _setupAttachedMediaConfigurationForOutput:v24 attachedMediaKey:0x1F21AB1F0 inputIndexesDrivingAttachedMediaOutput:mapEnabledInputs];
    }

    [(BWNode *)v18 addOutput:v24];

    v18->_bufferServicingLock._os_unfair_lock_opaque = 0;
    v18->_inputSampleBufferQueues = malloc_type_calloc(inputs, 8uLL, 0x2004093837F09uLL);
    if (inputs >= 1)
    {
      v26 = 0;
      v27 = *MEMORY[0x1E695E480];
      do
      {
        if (CMSimpleQueueCreate(v27, v18->_numBufferedFrames, &v18->_inputSampleBufferQueues[v26]))
        {
          fig_log_get_emitter();
          FigSignalErrorAtGM();
        }

        ++v26;
      }

      while (inputs != v26);
    }

    v18->_startEmittingMasterFramesBeforeSlaveStreamStarts = starts;
    v18->_numSlaveFramesToSkip = skip;
    v18->_droppedFramePTSs = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18->_mostRecentMasterInputIndex = -1;
    v18->_syncSlaveForMasterPortTypes = [typesCopy copy];
  }

  return v18;
}

- (void)dealloc
{
  [(BWSlaveFrameSynchronizerNode *)self _purgeAllBuffers];
  if ([(NSArray *)[(BWNode *)self inputs] count])
  {
    v3 = 0;
    do
    {
      FigSimpleQueueRelease();
      ++v3;
    }

    while ([(NSArray *)[(BWNode *)self inputs] count]> v3);
  }

  free(self->_inputSampleBufferQueues);

  v4.receiver = self;
  v4.super_class = BWSlaveFrameSynchronizerNode;
  [(BWNode *)&v4 dealloc];
}

- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key
{
  output = [(BWNode *)self output];
  selfCopy = self;
  if (![key isEqualToString:@"PrimaryFormat"])
  {
    v27 = -[BWNodeOutput attachedMediaKeyDrivenByInputAttachedMediaKey:inputIndex:](output, "attachedMediaKeyDrivenByInputAttachedMediaKey:inputIndex:", key, [input index]);
    v10 = MEMORY[0x1E695DEC8];
    v11 = &v27;
LABEL_6:
    v12 = 1;
    goto LABEL_8;
  }

  if (self->_differentInputFormatsSupported)
  {
    if ([input index] == 1)
    {
      v30 = @"PrimaryFormat";
      v10 = MEMORY[0x1E695DEC8];
      v11 = &v30;
    }

    else
    {
      v29 = @"SynchronizedSlaveFrame";
      v10 = MEMORY[0x1E695DEC8];
      v11 = &v29;
    }

    goto LABEL_6;
  }

  v28[0] = @"PrimaryFormat";
  v28[1] = @"SynchronizedSlaveFrame";
  v10 = MEMORY[0x1E695DEC8];
  v11 = v28;
  v12 = 2;
LABEL_8:
  v13 = [v10 arrayWithObjects:v11 count:v12];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        v19 = [(BWNodeOutput *)output mediaPropertiesForAttachedMediaKey:v18];
        if (!v19)
        {
          if ([v18 isEqualToString:@"PrimaryFormat"])
          {
            v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ output %@ has no media properties for the primary format (provided media key is %@)", selfCopy, output, key];
            objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v20 userInfo:0]);
          }

          v19 = objc_alloc_init(BWNodeOutputMediaProperties);
          [(BWNodeOutput *)output _setMediaProperties:v19 forAttachedMediaKey:v18];
        }

        [(BWNodeOutputMediaProperties *)v19 setResolvedFormat:format];
      }

      v15 = [v13 countByEnumeratingWithState:&v23 objects:v22 count:16];
    }

    while (v15);
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
  p_numEODMessagesReceived = &self->_numEODMessagesReceived;
  v5 = atomic_fetch_add_explicit(&self->_numEODMessagesReceived, 1u, memory_order_relaxed) + 1;
  if ([(NSArray *)[(BWNode *)self inputs] count]== v5)
  {
    [(BWSlaveFrameSynchronizerNode *)self didReachEndOfDataForInput:?];
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  if (BWSampleBufferIsMarkerBuffer(buffer))
  {
    [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
    goto LABEL_3;
  }

  inputSampleBufferQueues = self->_inputSampleBufferQueues;
  queue = inputSampleBufferQueues[[input index]];
  v8 = *off_1E798A3C8;
  v9 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  v10 = *off_1E798B708;
  [objc_msgSend(v9 objectForKeyedSubscript:{*off_1E798B708), "intValue"}];
  v11 = *off_1E798B710;
  if ([objc_msgSend(v9 objectForKeyedSubscript:{*off_1E798B710), "BOOLValue"}])
  {
    index = [input index];
    mostRecentMasterInputIndex = self->_mostRecentMasterInputIndex;
    self->_mostRecentMasterInputIndex = index;
    isSlaveFrameProcessingEnabledForMaster = sfsn_isSlaveFrameProcessingEnabledForMaster(v9);
    p_slaveStreamHasStarted = &self->_slaveStreamHasStarted;
    if (self->_slaveStreamHasStarted)
    {
      goto LABEL_16;
    }

    v16 = mostRecentMasterInputIndex == -1 || mostRecentMasterInputIndex == index;
    v17 = v16 ? 0 : isSlaveFrameProcessingEnabledForMaster;
    if (v17 != 1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    p_slaveStreamHasStarted = &self->_slaveStreamHasStarted;
    if (self->_slaveStreamHasStarted)
    {
      goto LABEL_16;
    }
  }

  *p_slaveStreamHasStarted = 1;
LABEL_16:
  if (CMSimpleQueueGetCount(queue) == self->_numBufferedFrames)
  {
    v18 = CMSimpleQueueDequeue(queue);
    v19 = CMGetAttachment(v18, v8, 0);
    v20 = [objc_msgSend(v19 objectForKeyedSubscript:{v10), "intValue"}];
    [objc_msgSend(v19 objectForKeyedSubscript:{v11), "BOOLValue"}];
    memset(&v26, 0, sizeof(v26));
    CMSampleBufferGetPresentationTimeStamp(&v26, v18);
    memset(&v25, 0, sizeof(v25));
    CMSampleBufferGetPresentationTimeStamp(&v25, buffer);
    [(BWSlaveFrameSynchronizerNode *)self _printState];
    [input index];
    v24 = v26;
    [BWSlaveFrameSynchronizerNode _emitDroppedFrames:&v24 captureID:v20 inputIndex:?];
    if (v18)
    {
      CFRelease(v18);
    }
  }

  if (buffer)
  {
    v21 = CFRetain(buffer);
  }

  else
  {
    v21 = 0;
  }

  v22 = CMSimpleQueueEnqueue(queue, v21);
  if (v22)
  {
    [(BWSlaveFrameSynchronizerNode *)v22 renderSampleBuffer:buffer forInput:?];
  }

  else
  {
    [BWSlaveFrameSynchronizerNode renderSampleBuffer:? forInput:?];
  }

LABEL_3:
  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)handleNodeError:(id)error forInput:(id)input
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  [(BWNodeOutput *)self->super._output emitNodeError:error];

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)handleDroppedSample:(id)sample forInput:(id)input
{
  [input index];
  memset(&v11[1], 0, sizeof(CMTime));
  if (sample)
  {
    [sample pts];
  }

  os_unfair_lock_lock(&self->_bufferServicingLock);
  mostRecentMasterInputIndex = self->_mostRecentMasterInputIndex;
  if ([input index] == mostRecentMasterInputIndex)
  {
    v8 = *MEMORY[0x1E695E480];
    v11[0] = v11[1];
    v9 = CMTimeCopyAsDictionary(v11, v8);
    if (v9)
    {
      v10 = v9;
      [(NSMutableArray *)self->_droppedFramePTSs addObject:v9];
      CFRelease(v10);
    }
  }

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)handleStillImageReferenceFrameBracketedCaptureSequenceNumber:(int)number forInput:(id)input
{
  v4 = *&number;
  os_unfair_lock_lock(&self->_bufferServicingLock);
  [(BWNodeOutput *)self->super._output emitStillImageReferenceFrameBracketedCaptureSequenceNumberMessageWithSequenceNumber:v4];

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (uint64_t)_setupAttachedMediaConfigurationForInput:(uint64_t)input attachedMediaKey:
{
  if (result)
  {
    v5 = objc_alloc_init(BWNodeInputMediaConfiguration);
    [(BWNodeInputMediaConfiguration *)v5 setPassthroughMode:1];

    return [a2 setMediaConfiguration:v5 forAttachedMediaKey:input];
  }

  return result;
}

- (uint64_t)_setupAttachedMediaConfigurationForOutput:(uint64_t)output attachedMediaKey:(uint64_t)key inputIndexesDrivingAttachedMediaOutput:
{
  if (result)
  {
    v7 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    [(BWNodeOutputMediaConfiguration *)v7 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeOutputMediaConfiguration *)v7 setPassthroughMode:1];
    [(BWNodeOutputMediaConfiguration *)v7 setIndexesOfInputsWhichDrivesThisOutput:key];
    [(BWNodeOutputMediaConfiguration *)v7 setAttachedMediaKeyOfInputWhichDrivesThisOutput:output];

    return [a2 setMediaConfiguration:v7 forAttachedMediaKey:output];
  }

  return result;
}

- (void)_purgeAllBuffers
{
  if (result)
  {
    v1 = result;
    result = [objc_msgSend(result "inputs")];
    if (result)
    {
      for (i = 0; i < result; ++i)
      {
        while (1)
        {
          v3 = CMSimpleQueueDequeue(*(v1[17] + 8 * i));
          if (!v3)
          {
            break;
          }

          CFRelease(v3);
        }

        result = [objc_msgSend(v1 "inputs")];
      }
    }
  }

  return result;
}

- (void)_tryToEmitBuffersWithSynchronizationEnabled:(uint64_t)enabled
{
  if (enabled && [objc_msgSend(enabled "inputs")])
  {
    v4 = 0;
    v41 = 0;
    v42 = 0;
    v40 = 0;
    v5 = *off_1E798B710;
    v43 = *off_1E798B708;
    v38 = *MEMORY[0x1E695E4D0];
    v39 = *off_1E798B540;
    v6 = -1;
    v7 = -1;
    do
    {
      OUTLINED_FUNCTION_0_69();
      Head = CMSimpleQueueGetHead(*(v8 + 8 * v4));
      if (Head)
      {
        v10 = Head;
        v11 = OUTLINED_FUNCTION_71_0(Head);
        if ([objc_msgSend(v11 objectForKeyedSubscript:{v5), "BOOLValue"}])
        {
          v12 = [objc_msgSend(v11 objectForKeyedSubscript:{v43), "intValue"}];
          if (v12 > v7)
          {
            v13 = v12;
            v41 = CMGetAttachment(v10, @"IsHarvestedStillFrame", 0) == v38;
            v42 = [v11 objectForKeyedSubscript:v39];
            v40 = v11;
            v7 = v13;
            v6 = v4;
          }
        }
      }

      ++v4;
    }

    while ([objc_msgSend(enabled "inputs")] > v4);
    v14 = v6;
    if (v6 != -1)
    {
      if (v42)
      {
        OUTLINED_FUNCTION_0_69();
        v16 = *(v15 + 8 * v6);
        v17 = CMSimpleQueueGetHead(v16);
        v18 = v17;
        if ((*(enabled + 148) & 1) == 0 && *(enabled + 160) == 1)
        {
          sfsn_setOverCaptureSlaveStreamStatusOnSampleBuffer(v17, 1);
        }

        if (v41)
        {
          sfsn_setOverCaptureSlaveStreamStatusOnSampleBuffer(v18, 4);
        }

        v19 = CMSimpleQueueGetHead(v16);
        v20 = [CMGetAttachment(v19 @"OverCaptureSlaveStreamStatus"];
        if (v20 > 4 || ((1 << v20) & 0x1A) == 0)
        {
          v22 = *(enabled + 184);
          if (!v22)
          {
            if (a2)
            {
              goto LABEL_24;
            }

            goto LABEL_33;
          }
        }

        else
        {
          v22 = *(enabled + 184);
          if (!v22)
          {
            goto LABEL_33;
          }
        }

        if ([v22 containsObject:v42] && sfsn_isSlaveFrameProcessingEnabledForMaster(v40) && (a2 & 1) != 0)
        {
LABEL_24:
          if (![objc_msgSend(enabled "inputs")])
          {
            return;
          }

          v23 = 0;
          while (1)
          {
            if (v6 != v23)
            {
              OUTLINED_FUNCTION_0_69();
              v25 = CMSimpleQueueGetHead(*(v24 + 8 * v23));
              if (v25)
              {
                if ([objc_msgSend(OUTLINED_FUNCTION_71_0(v25) objectForKeyedSubscript:{v43), "intValue"}] == v7)
                {
                  break;
                }
              }
            }

            if ([objc_msgSend(enabled "inputs")] <= ++v23)
            {
              return;
            }
          }

          OUTLINED_FUNCTION_0_69();
          if (v6 <= v23)
          {
            v34 = v23;
          }

          else
          {
            v34 = v6;
          }

          v27 = *(v33 + 8 * v34);
          if (v14 >= v23)
          {
            v35 = v23;
          }

          else
          {
            v35 = v14;
          }

          v30 = *(v33 + 8 * v35);
          v28 = CMSimpleQueueGetHead(v27);
          v36 = CMSimpleQueueGetHead(v30);
          v37 = v36;
          if (!v36 || (++*(enabled + 152), *(enabled + 152) > *(enabled + 156)) || *(enabled + 184))
          {
            BWSampleBufferSetAttachedMedia(v28, @"SynchronizedSlaveFrame", v36);
            v29 = 1;
          }

          else
          {
            if (*(enabled + 160) != 1)
            {
              return;
            }

            if ([objc_msgSend(OUTLINED_FUNCTION_71_0(v36) objectForKeyedSubscript:{v39), "isEqualToString:", *off_1E798A0C0}])
            {
              v28 = v37;
            }

            v29 = 1;
            sfsn_setOverCaptureSlaveStreamStatusOnSampleBuffer(v28, 1);
          }

          goto LABEL_34;
        }

LABEL_33:
        OUTLINED_FUNCTION_0_69();
        v27 = *(v26 + 8 * v6);
        v28 = CMSimpleQueueGetHead(*(v26 + 8 * v14));
        v29 = 0;
        v30 = 0;
LABEL_34:
        memset(&v45, 0, sizeof(v45));
        CMSampleBufferGetPresentationTimeStamp(&v45, v28);
        v44 = v45;
        [BWSlaveFrameSynchronizerNode _emitDroppedFrames:enabled captureID:&v44 inputIndex:-1];
        [*(enabled + 16) emitSampleBuffer:v28];
        v31 = CMSimpleQueueDequeue(v27);
        if (v31)
        {
          CFRelease(v31);
        }

        if (v29)
        {
          v32 = CMSimpleQueueDequeue(v30);
          if (v32)
          {
            CFRelease(v32);
          }
        }
      }
    }
  }
}

- (unint64_t)_printState
{
  if (result)
  {
    v1 = result;
    string = [MEMORY[0x1E696AD60] string];
    result = [objc_msgSend(v1 "inputs")];
    if (result)
    {
      v3 = 0;
      key = *off_1E798A3C8;
      v4 = *off_1E798B710;
      v5 = *off_1E798B708;
      do
      {
        Head = CMSimpleQueueGetHead(*(*(v1 + 136) + 8 * v3));
        Count = CMSimpleQueueGetCount(*(*(v1 + 136) + 8 * v3));
        v8 = *(v1 + 144);
        [string appendFormat:@" [%d] = {", v3];
        if (Head)
        {
          v9 = CMGetAttachment(Head, key, 0);
          v10 = [objc_msgSend(v9 objectForKeyedSubscript:{v4), "BOOLValue"}];
          v11 = [objc_msgSend(v9 objectForKeyedSubscript:{v5), "intValue"}];
          v12 = "s";
          if (v10)
          {
            v12 = "m";
          }

          [string appendFormat:@" %d/%d head:%d(%s) ", Count, v8, v11, v12];
        }

        [string appendFormat:@"}"];
        ++v3;
        result = [objc_msgSend(v1 "inputs")];
      }

      while (result > v3);
    }
  }

  return result;
}

- (void)_emitDroppedFrames:(uint64_t)frames captureID:(CMTime *)d inputIndex:(int)index
{
  if (frames)
  {
    while ([*(frames + 168) count])
    {
      v6 = [*(frames + 168) objectAtIndexedSubscript:0];
      memset(&v26, 0, sizeof(v26));
      v7 = CMTimeMakeFromDictionary(&v26, v6);
      OUTLINED_FUNCTION_16_4(v7, v8, v9, v10, v11, v12, v13, v14, v22.value, *&v22.timescale, v22.epoch, v23, time1.value, *&time1.timescale, time1.epoch, v25, *&v26.value);
      v22 = *d;
      v15 = CMTimeCompare(&time1, &v22);
      if (v15 >= 1)
      {
        break;
      }

      OUTLINED_FUNCTION_16_4(v15, v16, v17, *(frames + 176), v18, v19, v20, v21, v22.value, *&v22.timescale, v22.epoch, v23, time1.value, *&time1.timescale, time1.epoch, v25, *&v26.value);
      [BWSlaveFrameSynchronizerNode _emitDroppedFrame:frames captureID:? inputIndex:?];
      [*(frames + 168) removeObject:v6];
    }

    if (index != -1)
    {
      v26 = *d;
      [BWSlaveFrameSynchronizerNode _emitDroppedFrame:frames captureID:? inputIndex:?];
    }
  }
}

- (void)_emitDroppedFrame:(uint64_t)frame captureID:inputIndex:
{
  if (frame)
  {
    if (*MEMORY[0x1E695FF58] == 1)
    {
      OUTLINED_FUNCTION_2_10();
      CMTimeGetSeconds(&v5);
      kdebug_trace();
    }

    *&v2 = OUTLINED_FUNCTION_2_10().n128_u64[0];
    v4 = [v3 newDroppedSampleWithReason:v2 pts:?];
    [*(frame + 16) emitDroppedSample:v4];
  }
}

- (void)didReachEndOfDataForInput:(uint64_t)a1 .cold.1(uint64_t a1, _DWORD *a2)
{
  os_unfair_lock_lock((a1 + 132));
  if (*(a1 + 193) == 1)
  {
    [(BWSlaveFrameSynchronizerNode *)a1 _tryToEmitBuffersWithSynchronizationEnabled:?];
  }

  [(BWSlaveFrameSynchronizerNode *)a1 _purgeAllBuffers];
  [*(a1 + 16) markEndOfLiveOutput];
  os_unfair_lock_unlock((a1 + 132));
  *a2 = 0;
}

- (void)renderSampleBuffer:(const void *)a3 forInput:.cold.1(uint64_t a1, char a2, const void *a3)
{
  fig_log_get_emitter();
  FigDebugAssert3();
  if ((a2 & 1) == 0)
  {
    CFRelease(a3);
  }
}

@end