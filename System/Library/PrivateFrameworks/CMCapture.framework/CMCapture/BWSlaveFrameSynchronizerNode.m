@interface BWSlaveFrameSynchronizerNode
- (BWSlaveFrameSynchronizerNode)initWithDepthEnabled:(BOOL)a3 numberOfInputs:(int)a4 syncSlaveForMasterPortTypes:(id)a5 separateDepthComponentsEnabled:(BOOL)a6 preLTMThumbnailEnabled:(BOOL)a7 postColorProcessingThumbnailEnabled:(BOOL)a8 weightSegmentMapEnabled:(BOOL)a9 numberOfSecondaryFramesToSkip:(int)a10;
- (BWSlaveFrameSynchronizerNode)initWithDepthEnabled:(BOOL)a3 numberOfInputs:(int)a4 syncSlaveForMasterPortTypes:(id)a5 separateDepthComponentsEnabled:(BOOL)a6 preLTMThumbnailEnabledInputs:(id)a7 postColorProcessingThumbnailEnabledInputs:(id)a8 weightSegmentMapEnabledInputs:(id)a9 differentInputFormatsSupported:(BOOL)a10 bufferSize:(int)a11 numberOfSlaveFramesToSkip:(int)a12 startEmittingMasterFramesBeforeSlaveStreamStarts:(BOOL)a13;
- (uint64_t)_setupAttachedMediaConfigurationForInput:(uint64_t)a3 attachedMediaKey:;
- (uint64_t)_setupAttachedMediaConfigurationForOutput:(uint64_t)a3 attachedMediaKey:(uint64_t)a4 inputIndexesDrivingAttachedMediaOutput:;
- (unint64_t)_printState;
- (void)_emitDroppedFrame:(uint64_t)a1 captureID:inputIndex:;
- (void)_emitDroppedFrames:(uint64_t)a1 captureID:(CMTime *)a2 inputIndex:(int)a3;
- (void)_purgeAllBuffers;
- (void)_purgeAllPurgeableBuffers;
- (void)_tryToEmitBuffersWithSynchronizationEnabled:(uint64_t)a1;
- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)a3;
- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5;
- (void)handleDroppedSample:(id)a3 forInput:(id)a4;
- (void)handleNodeError:(id)a3 forInput:(id)a4;
- (void)handleStillImageReferenceFrameBracketedCaptureSequenceNumber:(int)a3 forInput:(id)a4;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
@end

@implementation BWSlaveFrameSynchronizerNode

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(BWNode *)self inputs];
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v10 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (v8 != self->super._input)
        {
          [(BWFormat *)[(BWNodeInput *)v8 format] isEqual:[(BWNodeInput *)self->super._input format]];
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v10 count:16];
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

- (BWSlaveFrameSynchronizerNode)initWithDepthEnabled:(BOOL)a3 numberOfInputs:(int)a4 syncSlaveForMasterPortTypes:(id)a5 separateDepthComponentsEnabled:(BOOL)a6 preLTMThumbnailEnabled:(BOOL)a7 postColorProcessingThumbnailEnabled:(BOOL)a8 weightSegmentMapEnabled:(BOOL)a9 numberOfSecondaryFramesToSkip:(int)a10
{
  v10 = a8;
  v11 = a6;
  v13 = *&a4;
  v14 = a3;
  v16 = 0x1E695D000uLL;
  if (a7)
  {
    v17 = [MEMORY[0x1E695DF70] array];
    if (v13 >= 1)
    {
      v18 = 0;
      do
      {
        [v17 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v18)}];
        v18 = (v18 + 1);
      }

      while (v13 != v18);
      v16 = 0x1E695D000uLL;
    }
  }

  else
  {
    v17 = 0;
  }

  if (v10)
  {
    v19 = [MEMORY[0x1E695DF70] array];
    if (v13 >= 1)
    {
      v20 = 0;
      do
      {
        [v19 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v20)}];
        v20 = (v20 + 1);
      }

      while (v13 != v20);
      v16 = 0x1E695D000;
    }
  }

  else
  {
    v19 = 0;
  }

  if (a9)
  {
    v21 = [*(v16 + 3952) array];
    if (v13 >= 1)
    {
      v22 = 0;
      do
      {
        [v21 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v22)}];
        v22 = (v22 + 1);
      }

      while (v13 != v22);
    }
  }

  else
  {
    v21 = 0;
  }

  BYTE4(v25) = 1;
  HIDWORD(v24) = 1;
  LODWORD(v25) = a10;
  LOBYTE(v24) = 0;
  return [BWSlaveFrameSynchronizerNode initWithDepthEnabled:"initWithDepthEnabled:numberOfInputs:syncSlaveForMasterPortTypes:separateDepthComponentsEnabled:preLTMThumbnailEnabledInputs:postColorProcessingThumbnailEnabledInputs:weightSegmentMapEnabledInputs:differentInputFormatsSupported:bufferSize:numberOfSlaveFramesToSkip:startEmittingMasterFramesBeforeSlaveStreamStarts:" numberOfInputs:v14 syncSlaveForMasterPortTypes:v13 separateDepthComponentsEnabled:a5 preLTMThumbnailEnabledInputs:v11 postColorProcessingThumbnailEnabledInputs:v17 weightSegmentMapEnabledInputs:v19 differentInputFormatsSupported:v21 bufferSize:v24 numberOfSlaveFramesToSkip:v25 startEmittingMasterFramesBeforeSlaveStreamStarts:?];
}

- (BWSlaveFrameSynchronizerNode)initWithDepthEnabled:(BOOL)a3 numberOfInputs:(int)a4 syncSlaveForMasterPortTypes:(id)a5 separateDepthComponentsEnabled:(BOOL)a6 preLTMThumbnailEnabledInputs:(id)a7 postColorProcessingThumbnailEnabledInputs:(id)a8 weightSegmentMapEnabledInputs:(id)a9 differentInputFormatsSupported:(BOOL)a10 bufferSize:(int)a11 numberOfSlaveFramesToSkip:(int)a12 startEmittingMasterFramesBeforeSlaveStreamStarts:(BOOL)a13
{
  v36 = a6;
  v38 = a3;
  v39.receiver = self;
  v39.super_class = BWSlaveFrameSynchronizerNode;
  v17 = [(BWNode *)&v39 init];
  v18 = v17;
  if (v17)
  {
    v35 = a5;
    [(BWNode *)v17 setSupportsConcurrentLiveInputCallbacks:1];
    v18->_numBufferedFrames = a11;
    v18->_differentInputFormatsSupported = a10;
    v32 = FigCapturePlatformIdentifier();
    v37 = [MEMORY[0x1E695DF70] array];
    v33 = [MEMORY[0x1E695DF70] array];
    if (a4 >= 1)
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
          if (v38)
          {
            v23 = @"Depth";
            if (v36)
            {
              [(BWSlaveFrameSynchronizerNode *)v18 _setupAttachedMediaConfigurationForInput:v21 attachedMediaKey:@"DepthData_DX"];
              v23 = @"DepthData_DY";
            }

            [(BWSlaveFrameSynchronizerNode *)v18 _setupAttachedMediaConfigurationForInput:v21 attachedMediaKey:v23];
            [v33 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v19)}];
          }
        }

        if ([a7 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v19)}])
        {
          [(BWSlaveFrameSynchronizerNode *)v18 _setupAttachedMediaConfigurationForInput:v21 attachedMediaKey:v34];
        }

        if ([a8 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v19)}])
        {
          [(BWSlaveFrameSynchronizerNode *)v18 _setupAttachedMediaConfigurationForInput:v21 attachedMediaKey:0x1F21AB1D0];
        }

        if ([a9 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v19)}])
        {
          [(BWSlaveFrameSynchronizerNode *)v18 _setupAttachedMediaConfigurationForInput:v21 attachedMediaKey:0x1F21AB1F0];
        }

        [(BWNode *)v18 addInput:v21];

        if (v19 || !v18->_differentInputFormatsSupported)
        {
          [v37 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v19)}];
        }

        ++v19;
      }

      while (a4 != v19);
    }

    v24 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v18];
    [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v24 primaryMediaConfiguration] setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v24 primaryMediaConfiguration] setPassthroughMode:1];
    [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v24 primaryMediaConfiguration] setIndexesOfInputsWhichDrivesThisOutput:v37];
    v25 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    [(BWNodeOutputMediaConfiguration *)v25 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeOutputMediaConfiguration *)v25 setPassthroughMode:1];
    [(BWNodeOutputMediaConfiguration *)v25 setIndexesOfInputsWhichDrivesThisOutput:v37];
    [(BWNodeOutputMediaConfiguration *)v25 setAttachedMediaKeyOfInputWhichDrivesThisOutput:@"PrimaryFormat"];
    [(BWNodeOutput *)v24 setMediaConfiguration:v25 forAttachedMediaKey:@"SynchronizedSlaveFrame"];
    if (v38)
    {
      if (v36)
      {
        v29 = v33;
        [(BWSlaveFrameSynchronizerNode *)v18 _setupAttachedMediaConfigurationForOutput:v24 attachedMediaKey:@"DepthData_DX" inputIndexesDrivingAttachedMediaOutput:v33];
        v30 = BWAttachedMediaKey_DepthData_DY;
      }

      else
      {
        v30 = BWAttachedMediaKey_Depth;
        v29 = v33;
      }

      [(BWSlaveFrameSynchronizerNode *)v18 _setupAttachedMediaConfigurationForOutput:v24 attachedMediaKey:*v30 inputIndexesDrivingAttachedMediaOutput:v29];
    }

    if ([a7 count])
    {
      v31 = BWAttachedMediaKey_LTMThumbnail;
      if (v32 <= 11)
      {
        v31 = BWAttachedMediaKey_PreLTMThumbnail;
      }

      [(BWSlaveFrameSynchronizerNode *)v18 _setupAttachedMediaConfigurationForOutput:v24 attachedMediaKey:*v31 inputIndexesDrivingAttachedMediaOutput:a7];
    }

    if ([a8 count])
    {
      [(BWSlaveFrameSynchronizerNode *)v18 _setupAttachedMediaConfigurationForOutput:v24 attachedMediaKey:0x1F21AB1D0 inputIndexesDrivingAttachedMediaOutput:a8];
    }

    if ([a9 count])
    {
      [(BWSlaveFrameSynchronizerNode *)v18 _setupAttachedMediaConfigurationForOutput:v24 attachedMediaKey:0x1F21AB1F0 inputIndexesDrivingAttachedMediaOutput:a9];
    }

    [(BWNode *)v18 addOutput:v24];

    v18->_bufferServicingLock._os_unfair_lock_opaque = 0;
    v18->_inputSampleBufferQueues = malloc_type_calloc(a4, 8uLL, 0x2004093837F09uLL);
    if (a4 >= 1)
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

      while (a4 != v26);
    }

    v18->_startEmittingMasterFramesBeforeSlaveStreamStarts = a13;
    v18->_numSlaveFramesToSkip = a12;
    v18->_droppedFramePTSs = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18->_mostRecentMasterInputIndex = -1;
    v18->_syncSlaveForMasterPortTypes = [v35 copy];
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

- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5
{
  v9 = [(BWNode *)self output];
  v21 = self;
  if (![a5 isEqualToString:@"PrimaryFormat"])
  {
    v27 = -[BWNodeOutput attachedMediaKeyDrivenByInputAttachedMediaKey:inputIndex:](v9, "attachedMediaKeyDrivenByInputAttachedMediaKey:inputIndex:", a5, [a4 index]);
    v10 = MEMORY[0x1E695DEC8];
    v11 = &v27;
LABEL_6:
    v12 = 1;
    goto LABEL_8;
  }

  if (self->_differentInputFormatsSupported)
  {
    if ([a4 index] == 1)
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
        v19 = [(BWNodeOutput *)v9 mediaPropertiesForAttachedMediaKey:v18];
        if (!v19)
        {
          if ([v18 isEqualToString:@"PrimaryFormat"])
          {
            v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ output %@ has no media properties for the primary format (provided media key is %@)", v21, v9, a5];
            objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v20 userInfo:0]);
          }

          v19 = objc_alloc_init(BWNodeOutputMediaProperties);
          [(BWNodeOutput *)v9 _setMediaProperties:v19 forAttachedMediaKey:v18];
        }

        [(BWNodeOutputMediaProperties *)v19 setResolvedFormat:a3];
      }

      v15 = [v13 countByEnumeratingWithState:&v23 objects:v22 count:16];
    }

    while (v15);
  }
}

- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  if (![(BWNodeOutput *)self->super._output liveFormat])
  {
    [(BWNodeOutput *)self->super._output makeConfiguredFormatLive];
  }

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)didReachEndOfDataForInput:(id)a3
{
  p_numEODMessagesReceived = &self->_numEODMessagesReceived;
  v5 = atomic_fetch_add_explicit(&self->_numEODMessagesReceived, 1u, memory_order_relaxed) + 1;
  if ([(NSArray *)[(BWNode *)self inputs] count]== v5)
  {
    [(BWSlaveFrameSynchronizerNode *)self didReachEndOfDataForInput:?];
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  if (BWSampleBufferIsMarkerBuffer(a3))
  {
    [(BWNodeOutput *)self->super._output emitSampleBuffer:a3];
    goto LABEL_3;
  }

  inputSampleBufferQueues = self->_inputSampleBufferQueues;
  queue = inputSampleBufferQueues[[a4 index]];
  v8 = *off_1E798A3C8;
  v9 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  v10 = *off_1E798B708;
  [objc_msgSend(v9 objectForKeyedSubscript:{*off_1E798B708), "intValue"}];
  v11 = *off_1E798B710;
  if ([objc_msgSend(v9 objectForKeyedSubscript:{*off_1E798B710), "BOOLValue"}])
  {
    v12 = [a4 index];
    mostRecentMasterInputIndex = self->_mostRecentMasterInputIndex;
    self->_mostRecentMasterInputIndex = v12;
    isSlaveFrameProcessingEnabledForMaster = sfsn_isSlaveFrameProcessingEnabledForMaster(v9);
    p_slaveStreamHasStarted = &self->_slaveStreamHasStarted;
    if (self->_slaveStreamHasStarted)
    {
      goto LABEL_16;
    }

    v16 = mostRecentMasterInputIndex == -1 || mostRecentMasterInputIndex == v12;
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
    CMSampleBufferGetPresentationTimeStamp(&v25, a3);
    [(BWSlaveFrameSynchronizerNode *)self _printState];
    [a4 index];
    v24 = v26;
    [BWSlaveFrameSynchronizerNode _emitDroppedFrames:&v24 captureID:v20 inputIndex:?];
    if (v18)
    {
      CFRelease(v18);
    }
  }

  if (a3)
  {
    v21 = CFRetain(a3);
  }

  else
  {
    v21 = 0;
  }

  v22 = CMSimpleQueueEnqueue(queue, v21);
  if (v22)
  {
    [(BWSlaveFrameSynchronizerNode *)v22 renderSampleBuffer:a3 forInput:?];
  }

  else
  {
    [BWSlaveFrameSynchronizerNode renderSampleBuffer:? forInput:?];
  }

LABEL_3:
  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)handleNodeError:(id)a3 forInput:(id)a4
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  [(BWNodeOutput *)self->super._output emitNodeError:a3];

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)handleDroppedSample:(id)a3 forInput:(id)a4
{
  [a4 index];
  memset(&v11[1], 0, sizeof(CMTime));
  if (a3)
  {
    [a3 pts];
  }

  os_unfair_lock_lock(&self->_bufferServicingLock);
  mostRecentMasterInputIndex = self->_mostRecentMasterInputIndex;
  if ([a4 index] == mostRecentMasterInputIndex)
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

- (void)handleStillImageReferenceFrameBracketedCaptureSequenceNumber:(int)a3 forInput:(id)a4
{
  v4 = *&a3;
  os_unfair_lock_lock(&self->_bufferServicingLock);
  [(BWNodeOutput *)self->super._output emitStillImageReferenceFrameBracketedCaptureSequenceNumberMessageWithSequenceNumber:v4];

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (uint64_t)_setupAttachedMediaConfigurationForInput:(uint64_t)a3 attachedMediaKey:
{
  if (result)
  {
    v5 = objc_alloc_init(BWNodeInputMediaConfiguration);
    [(BWNodeInputMediaConfiguration *)v5 setPassthroughMode:1];

    return [a2 setMediaConfiguration:v5 forAttachedMediaKey:a3];
  }

  return result;
}

- (uint64_t)_setupAttachedMediaConfigurationForOutput:(uint64_t)a3 attachedMediaKey:(uint64_t)a4 inputIndexesDrivingAttachedMediaOutput:
{
  if (result)
  {
    v7 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    [(BWNodeOutputMediaConfiguration *)v7 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeOutputMediaConfiguration *)v7 setPassthroughMode:1];
    [(BWNodeOutputMediaConfiguration *)v7 setIndexesOfInputsWhichDrivesThisOutput:a4];
    [(BWNodeOutputMediaConfiguration *)v7 setAttachedMediaKeyOfInputWhichDrivesThisOutput:a3];

    return [a2 setMediaConfiguration:v7 forAttachedMediaKey:a3];
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

- (void)_tryToEmitBuffersWithSynchronizationEnabled:(uint64_t)a1
{
  if (a1 && [objc_msgSend(a1 "inputs")])
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

    while ([objc_msgSend(a1 "inputs")] > v4);
    v14 = v6;
    if (v6 != -1)
    {
      if (v42)
      {
        OUTLINED_FUNCTION_0_69();
        v16 = *(v15 + 8 * v6);
        v17 = CMSimpleQueueGetHead(v16);
        v18 = v17;
        if ((*(a1 + 148) & 1) == 0 && *(a1 + 160) == 1)
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
          v22 = *(a1 + 184);
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
          v22 = *(a1 + 184);
          if (!v22)
          {
            goto LABEL_33;
          }
        }

        if ([v22 containsObject:v42] && sfsn_isSlaveFrameProcessingEnabledForMaster(v40) && (a2 & 1) != 0)
        {
LABEL_24:
          if (![objc_msgSend(a1 "inputs")])
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

            if ([objc_msgSend(a1 "inputs")] <= ++v23)
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
          if (!v36 || (++*(a1 + 152), *(a1 + 152) > *(a1 + 156)) || *(a1 + 184))
          {
            BWSampleBufferSetAttachedMedia(v28, @"SynchronizedSlaveFrame", v36);
            v29 = 1;
          }

          else
          {
            if (*(a1 + 160) != 1)
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
        [BWSlaveFrameSynchronizerNode _emitDroppedFrames:a1 captureID:&v44 inputIndex:-1];
        [*(a1 + 16) emitSampleBuffer:v28];
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
    v2 = [MEMORY[0x1E696AD60] string];
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
        [v2 appendFormat:@" [%d] = {", v3];
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

          [v2 appendFormat:@" %d/%d head:%d(%s) ", Count, v8, v11, v12];
        }

        [v2 appendFormat:@"}"];
        ++v3;
        result = [objc_msgSend(v1 "inputs")];
      }

      while (result > v3);
    }
  }

  return result;
}

- (void)_emitDroppedFrames:(uint64_t)a1 captureID:(CMTime *)a2 inputIndex:(int)a3
{
  if (a1)
  {
    while ([*(a1 + 168) count])
    {
      v6 = [*(a1 + 168) objectAtIndexedSubscript:0];
      memset(&v26, 0, sizeof(v26));
      v7 = CMTimeMakeFromDictionary(&v26, v6);
      OUTLINED_FUNCTION_16_4(v7, v8, v9, v10, v11, v12, v13, v14, v22.value, *&v22.timescale, v22.epoch, v23, time1.value, *&time1.timescale, time1.epoch, v25, *&v26.value);
      v22 = *a2;
      v15 = CMTimeCompare(&time1, &v22);
      if (v15 >= 1)
      {
        break;
      }

      OUTLINED_FUNCTION_16_4(v15, v16, v17, *(a1 + 176), v18, v19, v20, v21, v22.value, *&v22.timescale, v22.epoch, v23, time1.value, *&time1.timescale, time1.epoch, v25, *&v26.value);
      [BWSlaveFrameSynchronizerNode _emitDroppedFrame:a1 captureID:? inputIndex:?];
      [*(a1 + 168) removeObject:v6];
    }

    if (a3 != -1)
    {
      v26 = *a2;
      [BWSlaveFrameSynchronizerNode _emitDroppedFrame:a1 captureID:? inputIndex:?];
    }
  }
}

- (void)_emitDroppedFrame:(uint64_t)a1 captureID:inputIndex:
{
  if (a1)
  {
    if (*MEMORY[0x1E695FF58] == 1)
    {
      OUTLINED_FUNCTION_2_10();
      CMTimeGetSeconds(&v5);
      kdebug_trace();
    }

    *&v2 = OUTLINED_FUNCTION_2_10().n128_u64[0];
    v4 = [v3 newDroppedSampleWithReason:v2 pts:?];
    [*(a1 + 16) emitDroppedSample:v4];
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