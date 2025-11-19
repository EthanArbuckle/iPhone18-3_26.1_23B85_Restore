@interface BWNodeOutput
- (BWNodeConnection)connection;
- (BWNodeOutput)initWithMediaType:(unsigned int)a3 node:(id)a4;
- (NSString)description;
- (_BYTE)_makeConfiguredFormatLiveForAttachedMediaKey:(_BYTE *)result;
- (_BYTE)_markEndOfLiveOutputForAttachedMediaKey:(_BYTE *)result;
- (_BYTE)_markEndOfLiveOutputForConfigurationForAttachedMediaKey:(_BYTE *)result;
- (id)_mediaConfigurationForBufferCountOfPossiblyUnspecifiedAttachedMediaKey:(id)a3;
- (id)_mediaConfigurationForPossiblyUnspecifiedAttachedMediaKey:(id)a3;
- (id)_mediaPropertiesForPossiblyUnspecifiedAttachedMediaKey:(id)a3;
- (id)_poolName;
- (id)_prepareForConfiguredFormatToBecomeLiveForAttachedMediaKey:(id *)result;
- (id)attachedMediaKeyDrivenByInputAttachedMediaKey:(id)a3 inputIndex:(unint64_t)a4;
- (id)mediaConfigurationForAttachedMediaKey:(id)a3;
- (id)mediaPropertiesForAttachedMediaKey:(id)a3;
- (id)osStatePropertyList;
- (int)_passthroughModeForAttachedMediaKey:(id)a3;
- (int)_passthroughModeForUnspecifiedAttachedMedia;
- (uint64_t)prepareForConfiguredFormatToBecomeLive;
- (void)_clearAllMediaProperties;
- (void)_setMediaProperties:(id)a3 forAttachedMediaKey:(id)a4;
- (void)addPoolPreallocationCompletionHandler:(id)a3;
- (void)dealloc;
- (void)emitDroppedSample:(id)a3;
- (void)emitNodeError:(id)a3;
- (void)emitSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)emitStillImagePrewarmMessageWithSettings:(id)a3 resourceConfig:(id)a4;
- (void)emitStillImageReferenceFrameBracketedCaptureSequenceNumberMessageWithSequenceNumber:(int)a3;
- (void)makeConfiguredFormatLive;
- (void)markEndOfLiveOutputForConfigurationID:(id)a3;
- (void)prepareForConfiguredFormatToBecomeLive;
- (void)setConsumer:(id)a3;
- (void)setMediaConfiguration:(id)a3 forAttachedMediaKey:(id)a4;
- (void)suspendResources;
@end

@implementation BWNodeOutput

- (BWNodeConnection)connection
{
  if (self->_consumerIsANodeConnection)
  {
    return self->_consumer;
  }

  else
  {
    return 0;
  }
}

- (int)_passthroughModeForUnspecifiedAttachedMedia
{
  unspecifiedAttachedMediaConfiguration = self->_unspecifiedAttachedMediaConfiguration;
  if (unspecifiedAttachedMediaConfiguration)
  {
    return [(BWNodeOutputMediaConfiguration *)unspecifiedAttachedMediaConfiguration passthroughMode];
  }

  else
  {
    return 1;
  }
}

- (uint64_t)prepareForConfiguredFormatToBecomeLive
{
  [(BWNodeOutput *)a1 _prepareForConfiguredFormatToBecomeLiveForAttachedMediaKey:?];
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v6 = [a1 resolvedAttachedMediaKeys];
  result = [v6 countByEnumeratingWithState:a2 objects:a3 count:16];
  if (result)
  {
    v8 = result;
    v9 = **(a2 + 16);
    do
    {
      v10 = 0;
      do
      {
        if (**(a2 + 16) != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(BWNodeOutput *)a1 _prepareForConfiguredFormatToBecomeLiveForAttachedMediaKey:?];
      }

      while (v8 != v10);
      result = [v6 countByEnumeratingWithState:a2 objects:a3 count:16];
      v8 = result;
    }

    while (result);
  }

  *(a1 + 232) = *(a1 + 48);
  return result;
}

- (void)prepareForConfiguredFormatToBecomeLive
{
  if (self->_mediaTypeIsVideo || self->_mediaTypeIsPointCloud)
  {
    v5[8] = v2;
    v5[9] = v3;
    [(BWNodeOutput *)self prepareForConfiguredFormatToBecomeLive];
  }
}

- (id)_poolName
{
  if (result)
  {
    v1 = result;
    if ([result[4] name])
    {
      v2 = [v1[4] name];
    }

    else
    {
      v3 = objc_opt_class();
      v2 = NSStringFromClass(v3);
    }

    v4 = [(NSString *)v2 mutableCopy];
    v5 = v4;
    if (v4 && v1[1])
    {
      [v4 appendFormat:@" output: %@", v1[1]];
    }

    return v5;
  }

  return result;
}

- (void)makeConfiguredFormatLive
{
  v3 = [(BWFormat *)[(BWNodeOutputMediaProperties *)self->_primaryMediaProperties resolvedFormat] isEqual:[(BWNodeOutputMediaProperties *)self->_primaryMediaProperties liveFormat]];
  [(BWNodeOutput *)self _makeConfiguredFormatLiveForAttachedMediaKey:?];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(BWNodeOutput *)self resolvedAttachedMediaKeys];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(BWNodeOutput *)self _makeConfiguredFormatLiveForAttachedMediaKey:?];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v6);
  }

  preparedConfigurationID = self->_preparedConfigurationID;
  requestedConfigurationID = self->_requestedConfigurationID;
  if (preparedConfigurationID != requestedConfigurationID)
  {
    self->_preparedConfigurationID = requestedConfigurationID;
    preparedConfigurationID = requestedConfigurationID;
  }

  self->_liveConfigurationID = preparedConfigurationID;
  v11 = [(BWNode *)self->_node renderDelegate];
  if (v11)
  {
    [(BWNodeRenderDelegate *)v11 node:self->_node format:[(BWNodeOutputMediaProperties *)self->_primaryMediaProperties liveFormat] didBecomeLiveForOutput:self];
  }

  liveConfigurationID = self->_liveConfigurationID;
  if (v3)
  {
    v13 = 0;
  }

  else
  {
    v13 = [(BWNodeOutputMediaProperties *)self->_primaryMediaProperties liveFormat];
  }

  v14 = [BWNodeConfigurationLiveMessage newMessageWithConfigurationID:liveConfigurationID updatedFormat:v13];
  ++self->_numberOfConfigurationDidBecomeLiveMessagesReceived;
  consumer = self->_consumer;
  if (consumer)
  {
    [(BWNodeOutputConsumer *)consumer consumeMessage:v14 fromOutput:self];
  }
}

- (BWNodeOutput)initWithMediaType:(unsigned int)a3 node:(id)a4
{
  v12.receiver = self;
  v12.super_class = BWNodeOutput;
  v6 = [(BWNodeOutput *)&v12 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 7) = a3;
    v6[25] = a3 == 1986618469;
    v6[26] = a3 == 1885564004;
    *(v6 + 4) = a4;
    v8 = MEMORY[0x1E6960C70];
    *(v6 + 116) = *MEMORY[0x1E6960C70];
    *(v6 + 132) = *(v8 + 16);
    *(v6 + 19) = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7->_poolPreallocationMutex = FigSimpleMutexCreate();
    v9 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    v7->_primaryMediaConfiguration = v9;
    [(BWNodeOutputMediaConfiguration *)v9 _setAssociatedAttachedMediaKey:@"PrimaryFormat"];
    [(BWNodeOutputMediaConfiguration *)v7->_primaryMediaConfiguration setProvidesPixelBufferPool:v7->_mediaTypeIsVideo];
    [(BWNodeOutputMediaConfiguration *)v7->_primaryMediaConfiguration setProvidesDataBufferPool:v7->_mediaTypeIsPointCloud];
    v10 = objc_alloc_init(BWNodeOutputMediaProperties);
    [(BWNodeOutputMediaProperties *)v10 _setOwningNodeOutput:v7 associatedAttachedMediaKey:@"PrimaryFormat"];
    v7->_primaryMediaProperties = v10;
  }

  return v7;
}

- (void)dealloc
{
  FigSimpleMutexDestroy();

  [(BWNodeOutput *)self _clearAllMediaProperties];
  v3.receiver = self;
  v3.super_class = BWNodeOutput;
  [(BWNodeOutput *)&v3 dealloc];
}

- (void)setConsumer:(id)a3
{
  if (self->_consumer != a3)
  {
    self->_consumer = a3;
    objc_opt_class();
    self->_consumerIsANodeConnection = objc_opt_isKindOfClass() & 1;
  }
}

- (NSString)description
{
  v3 = [(NSArray *)[[(BWNodeOutput *)self node] outputs] indexOfObject:self];
  if (self->_name)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@'  ", self->_name];
  }

  else
  {
    v4 = &stru_1F216A3D0;
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  return [v5 stringWithFormat:@"<%@: %p> %@('%@', idx: %u, owner: %@)", v6, self, v4, BWStringForOSType(), v3, -[BWNodeOutput node](self, "node")];
}

- (void)setMediaConfiguration:(id)a3 forAttachedMediaKey:(id)a4
{
  if (!a4)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = @"Cannot set media configuration for nil attachedMediaKey";
    goto LABEL_14;
  }

  if ([a4 isEqualToString:@"PrimaryFormat"])
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = @"Cannot set media configuration for BWAttachedMediaKey_PrimaryFormat";
LABEL_14:
    objc_exception_throw([v9 exceptionWithName:v10 reason:v11 userInfo:0]);
  }

  attachedMediaConfigurations = self->_attachedMediaConfigurations;
  if (a3)
  {
    if (!attachedMediaConfigurations)
    {
      self->_attachedMediaConfigurations = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [a3 _setAssociatedAttachedMediaKey:a4];
    v8 = self->_attachedMediaConfigurations;

    [(NSMutableDictionary *)v8 setObject:a3 forKeyedSubscript:a4];
  }

  else
  {

    [(NSMutableDictionary *)attachedMediaConfigurations removeObjectForKey:a4];
  }
}

- (id)mediaConfigurationForAttachedMediaKey:(id)a3
{
  if (!a3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot set media configuration for nil attachedMediaKey" userInfo:0]);
  }

  if ([a3 isEqualToString:@"PrimaryFormat"])
  {
    return self->_primaryMediaConfiguration;
  }

  attachedMediaConfigurations = self->_attachedMediaConfigurations;

  return [(NSMutableDictionary *)attachedMediaConfigurations objectForKeyedSubscript:a3];
}

- (id)mediaPropertiesForAttachedMediaKey:(id)a3
{
  if (!a3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot set media configuration for nil attachedMediaKey" userInfo:0]);
  }

  if ([a3 isEqualToString:@"PrimaryFormat"])
  {
    return self->_primaryMediaProperties;
  }

  attachedMediaProperties = self->_attachedMediaProperties;

  return [(NSMutableDictionary *)attachedMediaProperties objectForKeyedSubscript:a3];
}

void __75__BWNodeOutput__prepareForConfiguredFormatToBecomeLiveForAttachedMediaKey___block_invoke(uint64_t a1)
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__BWNodeOutput__prepareForConfiguredFormatToBecomeLiveForAttachedMediaKey___block_invoke_2;
  block[3] = &unk_1E798F870;
  block[4] = *(a1 + 32);
  dispatch_async(global_queue, block);
}

uint64_t __75__BWNodeOutput__prepareForConfiguredFormatToBecomeLiveForAttachedMediaKey___block_invoke_2(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 32);
  if ((*(v2 + 162) & 1) == 0)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = *(v2 + 152);
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          (*(*(*(&v10 + 1) + 8 * i) + 16))();
        }

        v5 = [v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
      }

      while (v5);
    }
  }

  *(*(a1 + 32) + 161) = 1;
  [*(*(a1 + 32) + 152) removeAllObjects];
  return FigSimpleMutexUnlock();
}

- (void)emitSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  value = *MEMORY[0x1E6960C70];
  flags = *(MEMORY[0x1E6960C70] + 12);
  timescale = *(MEMORY[0x1E6960C70] + 8);
  epoch = *(MEMORY[0x1E6960C70] + 16);
  if (a3)
  {
    if (self->_discardsSampleData)
    {
      goto LABEL_11;
    }

    if (self->_dropsSampleBuffersWithUnexpectedPTS)
    {
      CMSampleBufferGetPresentationTimeStamp(&time1, a3);
      value = time1.value;
      flags = time1.flags;
      timescale = time1.timescale;
      epoch = time1.epoch;
      CMTimeMake(&rhs, 1, 600);
      v12 = *(&self->_numberOfDataDroppedMessagesReceived + 1);
      CMTimeAdd(&time1, &v12, &rhs);
      v15 = time1.value;
      v16 = time1.timescale;
      if (time1.flags)
      {
        rhs.epoch = epoch;
        time1.value = v15;
        time1.timescale = v16;
        rhs.value = value;
        rhs.timescale = timescale;
        rhs.flags = flags;
        if ((CMTimeCompare(&time1, &rhs) & 0x80000000) == 0)
        {
          goto LABEL_11;
        }
      }

      *(&self->_numberOfDataDroppedMessagesReceived + 1) = value;
      HIDWORD(self->_lastValidPTS.value) = timescale;
      self->_lastValidPTS.timescale = flags;
      *&self->_lastValidPTS.flags = epoch;
    }

    if (self->_maxSampleDataOutputRate <= 0.0)
    {
      goto LABEL_17;
    }

    v7 = CMGetAttachment(a3, *off_1E798A420, 0);
    if (v7)
    {
      CMTimeMakeFromDictionary(&time1, v7);
    }

    else
    {
      CMSampleBufferGetPresentationTimeStamp(&time1, a3);
    }

    value = time1.value;
    flags = time1.flags;
    timescale = time1.timescale;
    epoch = time1.epoch;
    if ((self->_lastEmittedPTS.timescale & 1) == 0)
    {
      goto LABEL_17;
    }

    if ((time1.flags & 1) == 0)
    {
      goto LABEL_17;
    }

    rhs.value = value;
    rhs.timescale = timescale;
    rhs.flags = time1.flags;
    rhs.epoch = time1.epoch;
    v12 = *(&self->_lastValidPTS.epoch + 4);
    CMTimeSubtract(&time1, &rhs, &v12);
    v9 = 0.95 / CMTimeGetSeconds(&time1);
    if (self->_maxSampleDataOutputRate >= v9)
    {
      goto LABEL_17;
    }
  }

  else if (!self->_discardsSampleData)
  {
LABEL_17:
    v10 = [BWNodeSampleBufferMessage newMessageWithSampleBuffer:a3];
    consumer = self->_consumer;
    if (consumer)
    {
      ++self->_numberOfBuffersEmitted;
      [(BWNodeOutputConsumer *)consumer consumeMessage:v10 fromOutput:self];
    }

    else
    {
      ++self->_numberOfBuffersDropped;
    }

    *(&self->_lastValidPTS.epoch + 4) = value;
    HIDWORD(self->_lastEmittedPTS.value) = timescale;
    self->_lastEmittedPTS.timescale = flags;
    *&self->_lastEmittedPTS.flags = epoch;
    return;
  }

LABEL_11:
  sourceEmitSemaphore = self->_sourceEmitSemaphore;
  if (sourceEmitSemaphore)
  {
    dispatch_semaphore_signal(sourceEmitSemaphore);
  }
}

- (void)emitNodeError:(id)a3
{
  v4 = [BWNodeErrorMessage newMessageWithNodeError:a3];
  consumer = self->_consumer;
  if (consumer)
  {
    v6 = v4;
    consumer = [(BWNodeOutputConsumer *)consumer consumeMessage:v4 fromOutput:self];
    v4 = v6;
  }

  MEMORY[0x1EEE66BB8](consumer, v4);
}

- (void)emitDroppedSample:(id)a3
{
  if (self->_discardsSampleData)
  {
    if (self->_sourceEmitSemaphore && ([objc_msgSend(a3 "backPressureSemaphoresToIgnore")] & 1) == 0)
    {
      sourceEmitSemaphore = self->_sourceEmitSemaphore;

      dispatch_semaphore_signal(sourceEmitSemaphore);
    }
  }

  else
  {
    ++self->_numberOfDataDroppedMessagesReceived;
    v4 = [BWNodeDroppedSampleMessage newMessageWithDroppedSample:a3];
    consumer = self->_consumer;
    if (consumer)
    {
      v7 = v4;
      consumer = [(BWNodeOutputConsumer *)consumer consumeMessage:v4 fromOutput:self];
      v4 = v7;
    }

    MEMORY[0x1EEE66BB8](consumer, v4);
  }
}

- (void)emitStillImageReferenceFrameBracketedCaptureSequenceNumberMessageWithSequenceNumber:(int)a3
{
  v4 = [BWNodeStillImageReferenceFrameBracketedCaptureSequenceNumberMessage newMessageWithStillImageReferenceFrameBracketedCaptureSequenceNumber:*&a3];
  consumer = self->_consumer;
  if (consumer)
  {
    v6 = v4;
    consumer = [(BWNodeOutputConsumer *)consumer consumeMessage:v4 fromOutput:self];
    v4 = v6;
  }

  MEMORY[0x1EEE66BB8](consumer, v4);
}

- (void)emitStillImagePrewarmMessageWithSettings:(id)a3 resourceConfig:(id)a4
{
  v5 = [BWNodeStillImagePrewarmMessage newMessageWithStillImageSettings:a3 resourceConfig:a4];
  consumer = self->_consumer;
  if (consumer)
  {
    v7 = v5;
    consumer = [(BWNodeOutputConsumer *)consumer consumeMessage:v5 fromOutput:self];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](consumer, v5);
}

- (void)markEndOfLiveOutputForConfigurationID:(id)a3
{
  if (a3)
  {
    [(BWNodeOutput *)self _markEndOfLiveOutputForConfigurationForAttachedMediaKey:?];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = [(BWNodeOutput *)self resolvedAttachedMediaKeys];
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v24 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        v15 = 0;
        do
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(BWNodeOutput *)self _markEndOfLiveOutputForConfigurationForAttachedMediaKey:?];
        }

        while (v13 != v15);
        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v24 objects:v23 count:16];
      }

      while (v13);
    }

    ++self->_numberOfConfigurationEndOfDataReceived;
    v10 = [BWNodeConfigurationEndOfDataMessage newMessageWithConfigurationID:self->_liveConfigurationID];
  }

  else
  {
    FigSimpleMutexLock();
    self->_receivedEOD = 1;
    [(NSMutableArray *)self->_poolPreallocationCompletionHandlers removeAllObjects];
    FigSimpleMutexUnlock();
    [(BWNodeOutput *)self _markEndOfLiveOutputForAttachedMediaKey:?];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = [(BWNodeOutput *)self resolvedAttachedMediaKeys];
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        v8 = 0;
        do
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [(BWNodeOutput *)self _markEndOfLiveOutputForAttachedMediaKey:?];
        }

        while (v6 != v8);
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v19 objects:v18 count:16];
      }

      while (v6);
    }

    v9 = [(BWNode *)self->_node renderDelegate];
    if (v9)
    {
      [(BWNodeRenderDelegate *)v9 node:self->_node format:0 didBecomeLiveForOutput:self];
    }

    ++self->_numberOfEndOfDataMessagesReceived;
    v10 = +[BWNodeEndOfDataMessage newMessage];
  }

  v16 = v10;
  consumer = self->_consumer;
  if (consumer)
  {
    [(BWNodeOutputConsumer *)consumer consumeMessage:v16 fromOutput:self];
  }
}

- (void)suspendResources
{
  v3 = +[BWNodeSuspendResourcesMessage newMessage];
  consumer = self->_consumer;
  if (consumer)
  {
    [(BWNodeOutputConsumer *)consumer consumeMessage:v3 fromOutput:self];
  }

  [(BWPixelBufferPool *)[(BWNodeOutputMediaProperties *)self->_primaryMediaProperties livePixelBufferPool] flushToMinimumCapacity:0];
  [(BWDataBufferPool *)[(BWNodeOutputMediaProperties *)self->_primaryMediaProperties liveDataBufferPool] flushToMinimumCapacity:0];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSMutableDictionary *)self->_attachedMediaProperties allValues];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [objc_msgSend(v10 "livePixelBufferPool")];
        [objc_msgSend(v10 "liveDataBufferPool")];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v7);
  }
}

- (void)addPoolPreallocationCompletionHandler:(id)a3
{
  FigSimpleMutexLock();
  if (!self->_receivedEOD)
  {
    if (self->_poolPreallocationDone)
    {
      global_queue = dispatch_get_global_queue(0, 0);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __54__BWNodeOutput_addPoolPreallocationCompletionHandler___block_invoke;
      v7[3] = &unk_1E7990390;
      v7[4] = self;
      v7[5] = a3;
      dispatch_async(global_queue, v7);
    }

    else
    {
      v6 = [a3 copy];
      [(NSMutableArray *)self->_poolPreallocationCompletionHandlers addObject:v6];
    }
  }

  FigSimpleMutexUnlock();
}

uint64_t __54__BWNodeOutput_addPoolPreallocationCompletionHandler___block_invoke(uint64_t a1)
{
  FigSimpleMutexLock();
  if ((*(*(a1 + 32) + 162) & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
  }

  return FigSimpleMutexUnlock();
}

- (void)_clearAllMediaProperties
{
  self->_primaryMediaProperties = 0;

  self->_attachedMediaProperties = 0;
}

- (void)_setMediaProperties:(id)a3 forAttachedMediaKey:(id)a4
{
  if (!a4)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = @"Cannot set media properties for nil attachedMediaKey";
    goto LABEL_14;
  }

  if ([a4 isEqualToString:@"PrimaryFormat"])
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = @"Cannot set media properties for primary media";
    goto LABEL_14;
  }

  if (!a3)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = @"Cannot set media properties to nil -- call _clearAllMediaProperties to clear all media property state";
LABEL_14:
    objc_exception_throw([v8 exceptionWithName:v9 reason:v10 userInfo:0]);
  }

  attachedMediaProperties = self->_attachedMediaProperties;
  if (attachedMediaProperties)
  {
    if ([(NSMutableDictionary *)attachedMediaProperties objectForKeyedSubscript:a4])
    {
      v8 = MEMORY[0x1E695DF30];
      v9 = *MEMORY[0x1E695D940];
      v10 = @"Can only set media properties once -- call _clearAllMediaProperties to clear all media property state";
      goto LABEL_14;
    }
  }

  else
  {
    self->_attachedMediaProperties = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  [a3 _setOwningNodeOutput:self associatedAttachedMediaKey:a4];
  v11 = self->_attachedMediaProperties;

  [(NSMutableDictionary *)v11 setObject:a3 forKeyedSubscript:a4];
}

- (int)_passthroughModeForAttachedMediaKey:(id)a3
{
  if (!a3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot get passthrough mode for nil attachedMediaKey" userInfo:0]);
  }

  if ([a3 isEqualToString:@"PrimaryFormat"])
  {
    primaryMediaConfiguration = self->_primaryMediaConfiguration;
LABEL_5:

    return [(BWNodeOutputMediaConfiguration *)primaryMediaConfiguration passthroughMode];
  }

  primaryMediaConfiguration = [(NSMutableDictionary *)self->_attachedMediaConfigurations objectForKeyedSubscript:a3];
  if (primaryMediaConfiguration)
  {
    goto LABEL_5;
  }

  return [(BWNodeOutput *)self _passthroughModeForUnspecifiedAttachedMedia];
}

- (id)_mediaConfigurationForPossiblyUnspecifiedAttachedMediaKey:(id)a3
{
  if ([a3 isEqualToString:@"PrimaryFormat"])
  {
    return self->_primaryMediaConfiguration;
  }

  result = [(BWNodeOutput *)self mediaConfigurationForAttachedMediaKey:a3];
  if (!result)
  {
    result = self->_unspecifiedAttachedMediaConfiguration;
    if (!result)
    {
      return self->_primaryMediaConfiguration;
    }
  }

  return result;
}

- (id)_mediaConfigurationForBufferCountOfPossiblyUnspecifiedAttachedMediaKey:(id)a3
{
  result = [(BWNodeOutput *)self mediaConfigurationForAttachedMediaKey:a3];
  if (!result)
  {
    return self->_primaryMediaConfiguration;
  }

  return result;
}

- (id)_mediaPropertiesForPossiblyUnspecifiedAttachedMediaKey:(id)a3
{
  result = [(BWNodeOutput *)self mediaPropertiesForAttachedMediaKey:a3];
  if (!result)
  {
    return self->_primaryMediaProperties;
  }

  return result;
}

- (id)attachedMediaKeyDrivenByInputAttachedMediaKey:(id)a3 inputIndex:(unint64_t)a4
{
  if ([-[BWNodeOutput _mediaConfigurationForPossiblyUnspecifiedAttachedMediaKey:](self "_mediaConfigurationForPossiblyUnspecifiedAttachedMediaKey:{"isDrivenByInputWithIndex:", a4}")])
  {
    v7 = @"PrimaryFormat";
    if ([a3 isEqualToString:@"PrimaryFormat"])
    {
      if (![(BWNodeOutputMediaConfiguration *)self->_primaryMediaConfiguration performsAttachedMediaRemapping])
      {
        return v7;
      }
    }

    else if (-[NSArray containsObject:](-[BWNodeOutput specifiedAttachedMediaKeys](self, "specifiedAttachedMediaKeys"), "containsObject:", a3) && ![-[BWNodeOutput mediaConfigurationForAttachedMediaKey:](self mediaConfigurationForAttachedMediaKey:{a3), "performsAttachedMediaRemapping"}])
    {
      return a3;
    }
  }

  if (![(BWNodeOutputMediaConfiguration *)self->_primaryMediaConfiguration isDrivenByInputWithIndex:a4])
  {
    goto LABEL_11;
  }

  v7 = @"PrimaryFormat";
  v8 = [(BWNodeOutputMediaConfiguration *)self->_primaryMediaConfiguration performsAttachedMediaRemapping];
  v9 = @"PrimaryFormat";
  if (v8)
  {
    v9 = [(BWNodeOutputMediaConfiguration *)self->_primaryMediaConfiguration attachedMediaKeyOfInputWhichDrivesThisOutput];
  }

  if (([a3 isEqualToString:v9] & 1) == 0)
  {
LABEL_11:
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [(BWNodeOutput *)self specifiedAttachedMediaKeys];
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v20 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
LABEL_13:
      v14 = 0;
      while (1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v7 = *(*(&v20 + 1) + 8 * v14);
        v15 = [(BWNodeOutput *)self mediaConfigurationForAttachedMediaKey:v7];
        if ([v15 isDrivenByInputWithIndex:a4])
        {
          v16 = [v15 performsAttachedMediaRemapping];
          v17 = v7;
          if (v16)
          {
            v17 = [v15 attachedMediaKeyOfInputWhichDrivesThisOutput];
          }

          if ([a3 isEqualToString:v17])
          {
            break;
          }
        }

        if (v12 == ++v14)
        {
          v12 = [(NSArray *)v10 countByEnumeratingWithState:&v20 objects:v19 count:16];
          if (v12)
          {
            goto LABEL_13;
          }

          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      if (([a3 isEqualToString:@"PrimaryFormat"] & 1) != 0 || -[NSArray containsObject:](-[BWNodeOutput specifiedAttachedMediaKeys](self, "specifiedAttachedMediaKeys"), "containsObject:", a3) || !-[BWNodeOutputMediaConfiguration isDrivenByInputWithIndex:](self->_primaryMediaConfiguration, "isDrivenByInputWithIndex:", a4))
      {
        return 0;
      }

      else if ([(BWNodeOutput *)self _passthroughModeForUnspecifiedAttachedMedia])
      {
        return a3;
      }

      else
      {
        return 0;
      }
    }
  }

  return v7;
}

- (id)osStatePropertyList
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_consumerIsANodeConnection), @"consumerIsNodeConnection"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_mediaTypeIsVideo), @"mediaTypeIsVideo"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_mediaTypeIsPointCloud), @"mediaTypeIsPointCloud"}];
  [v3 setObject:BWStringForOSType() forKeyedSubscript:@"mediaType"];
  [v3 setObject:-[BWFormat description](-[BWNodeOutput liveFormat](self forKeyedSubscript:{"liveFormat"), "description"), @"liveFormat"}];
  [v3 setObject:-[BWNode osStatePropertyListWithVerbose:](-[BWNodeInput node](-[BWNodeConnection input](-[BWNodeOutput connection](self forKeyedSubscript:{"connection"), "input"), "node"), "osStatePropertyListWithVerbose:", 0), @"node"}];
  return v3;
}

- (id)_prepareForConfiguredFormatToBecomeLiveForAttachedMediaKey:(id *)result
{
  if (result)
  {
    v3 = result;
    v4 = [result mediaConfigurationForAttachedMediaKey:a2];
    v5 = [v3 mediaPropertiesForAttachedMediaKey:a2];
    if ([v4 providesPixelBufferPool])
    {
      [v5 setPreparedPixelBufferPool:0];
    }

    if ([v4 providesDataBufferPool])
    {
      [v5 setPreparedDataBufferPool:0];
    }

    result = [v4 passthroughMode];
    if (!result)
    {
      result = [v4 providesPixelBufferPool];
      if (result)
      {
        result = [v5 resolvedVideoFormat];
        if (result)
        {
          v6 = [v5 resolvedRetainedBufferCount];
          if (v6 <= [v4 owningNodeRetainedBufferCount])
          {
            v7 = [v4 owningNodeRetainedBufferCount];
          }

          else
          {
            v7 = [v5 resolvedRetainedBufferCount];
          }

          [v5 setPreparedPixelBufferPoolSize:{v7 + objc_msgSend(v4, "owningNodeIndefinitelyHeldBufferCount") + 1}];
          v8 = [BWPixelBufferPool alloc];
          v9 = [v5 resolvedVideoFormat];
          v10 = [v5 preparedPixelBufferPoolSize];
          v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", -[BWNodeOutput _poolName](v3), a2];
          v12 = v3[26];
          v13 = [v4 pixelBufferPoolProvidesBackPressure];
          LOBYTE(v15) = [v4 pixelBufferPoolReportSlowBackPressureAllocations];
          v14 = [(BWPixelBufferPool *)v8 initWithVideoFormat:v9 capacity:v10 name:v11 clientProvidesPool:0 memoryPool:v12 providesBackPressure:v13 reportSlowBackPressureAllocations:v15];
          [v5 setPreparedPixelBufferPool:v14];
          result = [v4 owningNodeRetainedBufferCount];
          if (result <= 0)
          {
            result = [v4 owningNodeIndefinitelyHeldBufferCount];
          }

          if (v14)
          {
            if ((v3[20] & 1) != 0 || (result = [v3[19] count]) != 0)
            {
              CFAbsoluteTimeGetCurrent();
              v16[0] = MEMORY[0x1E69E9820];
              v16[1] = 3221225472;
              v16[2] = __75__BWNodeOutput__prepareForConfiguredFormatToBecomeLiveForAttachedMediaKey___block_invoke;
              v16[3] = &unk_1E7991270;
              v16[4] = v3;
              return [(BWPixelBufferPool *)v14 preallocateWithCompletionHandler:v16];
            }
          }
        }
      }
    }
  }

  return result;
}

- (_BYTE)_makeConfiguredFormatLiveForAttachedMediaKey:(_BYTE *)result
{
  if (result)
  {
    v3 = result;
    v4 = [result mediaConfigurationForAttachedMediaKey:a2];
    v5 = [v3 mediaPropertiesForAttachedMediaKey:a2];
    result = [v5 setLiveFormat:objc_msgSend(v5, "resolvedFormat")];
    if (v3[25] == 1)
    {
      [v5 _makePreparedPixelBufferPoolLiveLocked];
      if ([v5 preparedPixelBufferPoolSize])
      {
        v6 = [v5 preparedPixelBufferPoolSize];
      }

      else
      {
        v8 = [v5 resolvedRetainedBufferCount];
        if (v8 <= [v4 owningNodeRetainedBufferCount])
        {
          v9 = [v4 owningNodeRetainedBufferCount];
        }

        else
        {
          v9 = [v5 resolvedRetainedBufferCount];
        }

        v6 = (v9 + 1);
      }

      [v5 setLivePixelBufferPoolSize:v6];
      v12 = OUTLINED_FUNCTION_0_60();

      return [v12 setPreparedPixelBufferPoolSize:?];
    }

    else if (v3[26] == 1)
    {
      [v5 _makePreparedDataBufferPoolLiveLocked];
      if ([v5 preparedDataBufferPoolSize])
      {
        v7 = [v5 preparedDataBufferPoolSize];
      }

      else
      {
        v10 = [v5 resolvedRetainedBufferCount];
        if (v10 <= [v4 owningNodeRetainedBufferCount])
        {
          v11 = [v4 owningNodeRetainedBufferCount];
        }

        else
        {
          v11 = [v5 resolvedRetainedBufferCount];
        }

        v7 = (v11 + 1);
      }

      [v5 setLiveDataBufferPoolSize:v7];
      v13 = OUTLINED_FUNCTION_0_60();

      return [v13 setPreparedDataBufferPoolSize:?];
    }
  }

  return result;
}

- (_BYTE)_markEndOfLiveOutputForConfigurationForAttachedMediaKey:(_BYTE *)result
{
  if (result)
  {
    v2 = result;
    v3 = [result mediaPropertiesForAttachedMediaKey:a2];
    result = [v3 setLiveFormat:0];
    if (v2[25] == 1)
    {
      if ([objc_msgSend(v3 "resolvedVideoFormat")])
      {
        [v3 setPreparedPixelBufferPool:{objc_msgSend(v3, "livePixelBufferPool")}];
      }

      [OUTLINED_FUNCTION_4_3() setLivePixelBufferPool:?];
      v4 = OUTLINED_FUNCTION_0_60();

      return [v4 setLivePixelBufferPoolSize:?];
    }

    else if (v2[26] == 1)
    {
      if ([objc_msgSend(v3 "resolvedPointCloudFormat")])
      {
        [v3 setPreparedDataBufferPool:{objc_msgSend(v3, "liveDataBufferPool")}];
      }

      [OUTLINED_FUNCTION_4_3() setLiveDataBufferPool:?];
      v5 = OUTLINED_FUNCTION_0_60();

      return [v5 setLiveDataBufferPoolSize:?];
    }
  }

  return result;
}

- (_BYTE)_markEndOfLiveOutputForAttachedMediaKey:(_BYTE *)result
{
  if (result)
  {
    v2 = result;
    result = [objc_msgSend(result mediaPropertiesForAttachedMediaKey:{a2), "setLiveFormat:", 0}];
    if (v2[25] == 1)
    {
      [OUTLINED_FUNCTION_4_3() setLivePixelBufferPool:?];
      [OUTLINED_FUNCTION_0_60() setLivePixelBufferPoolSize:?];
      [OUTLINED_FUNCTION_4_3() setPreparedPixelBufferPool:?];
      v3 = OUTLINED_FUNCTION_0_60();

      return [v3 setPreparedPixelBufferPoolSize:?];
    }

    else if (v2[26] == 1)
    {
      [OUTLINED_FUNCTION_4_3() setLiveDataBufferPool:?];
      [OUTLINED_FUNCTION_0_60() setLiveDataBufferPoolSize:?];
      [OUTLINED_FUNCTION_4_3() setPreparedDataBufferPool:?];
      v4 = OUTLINED_FUNCTION_0_60();

      return [v4 setPreparedDataBufferPoolSize:?];
    }
  }

  return result;
}

@end