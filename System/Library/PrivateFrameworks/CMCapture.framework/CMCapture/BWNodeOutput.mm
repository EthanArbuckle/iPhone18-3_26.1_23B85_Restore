@interface BWNodeOutput
- (BWNodeConnection)connection;
- (BWNodeOutput)initWithMediaType:(unsigned int)type node:(id)node;
- (NSString)description;
- (_BYTE)_makeConfiguredFormatLiveForAttachedMediaKey:(_BYTE *)result;
- (_BYTE)_markEndOfLiveOutputForAttachedMediaKey:(_BYTE *)result;
- (_BYTE)_markEndOfLiveOutputForConfigurationForAttachedMediaKey:(_BYTE *)result;
- (id)_mediaConfigurationForBufferCountOfPossiblyUnspecifiedAttachedMediaKey:(id)key;
- (id)_mediaConfigurationForPossiblyUnspecifiedAttachedMediaKey:(id)key;
- (id)_mediaPropertiesForPossiblyUnspecifiedAttachedMediaKey:(id)key;
- (id)_poolName;
- (id)_prepareForConfiguredFormatToBecomeLiveForAttachedMediaKey:(id *)result;
- (id)attachedMediaKeyDrivenByInputAttachedMediaKey:(id)key inputIndex:(unint64_t)index;
- (id)mediaConfigurationForAttachedMediaKey:(id)key;
- (id)mediaPropertiesForAttachedMediaKey:(id)key;
- (id)osStatePropertyList;
- (int)_passthroughModeForAttachedMediaKey:(id)key;
- (int)_passthroughModeForUnspecifiedAttachedMedia;
- (uint64_t)prepareForConfiguredFormatToBecomeLive;
- (void)_clearAllMediaProperties;
- (void)_setMediaProperties:(id)properties forAttachedMediaKey:(id)key;
- (void)addPoolPreallocationCompletionHandler:(id)handler;
- (void)dealloc;
- (void)emitDroppedSample:(id)sample;
- (void)emitNodeError:(id)error;
- (void)emitSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)emitStillImagePrewarmMessageWithSettings:(id)settings resourceConfig:(id)config;
- (void)emitStillImageReferenceFrameBracketedCaptureSequenceNumberMessageWithSequenceNumber:(int)number;
- (void)makeConfiguredFormatLive;
- (void)markEndOfLiveOutputForConfigurationID:(id)d;
- (void)prepareForConfiguredFormatToBecomeLive;
- (void)setConsumer:(id)consumer;
- (void)setMediaConfiguration:(id)configuration forAttachedMediaKey:(id)key;
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
  [(BWNodeOutput *)self _prepareForConfiguredFormatToBecomeLiveForAttachedMediaKey:?];
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  resolvedAttachedMediaKeys = [self resolvedAttachedMediaKeys];
  result = [resolvedAttachedMediaKeys countByEnumeratingWithState:a2 objects:a3 count:16];
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
          objc_enumerationMutation(resolvedAttachedMediaKeys);
        }

        [(BWNodeOutput *)self _prepareForConfiguredFormatToBecomeLiveForAttachedMediaKey:?];
      }

      while (v8 != v10);
      result = [resolvedAttachedMediaKeys countByEnumeratingWithState:a2 objects:a3 count:16];
      v8 = result;
    }

    while (result);
  }

  *(self + 232) = *(self + 48);
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
      name = [v1[4] name];
    }

    else
    {
      v3 = objc_opt_class();
      name = NSStringFromClass(v3);
    }

    v4 = [(NSString *)name mutableCopy];
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
  resolvedAttachedMediaKeys = [(BWNodeOutput *)self resolvedAttachedMediaKeys];
  v5 = [(NSArray *)resolvedAttachedMediaKeys countByEnumeratingWithState:&v17 objects:v16 count:16];
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
          objc_enumerationMutation(resolvedAttachedMediaKeys);
        }

        [(BWNodeOutput *)self _makeConfiguredFormatLiveForAttachedMediaKey:?];
      }

      while (v6 != v8);
      v6 = [(NSArray *)resolvedAttachedMediaKeys countByEnumeratingWithState:&v17 objects:v16 count:16];
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
  renderDelegate = [(BWNode *)self->_node renderDelegate];
  if (renderDelegate)
  {
    [(BWNodeRenderDelegate *)renderDelegate node:self->_node format:[(BWNodeOutputMediaProperties *)self->_primaryMediaProperties liveFormat] didBecomeLiveForOutput:self];
  }

  liveConfigurationID = self->_liveConfigurationID;
  if (v3)
  {
    liveFormat = 0;
  }

  else
  {
    liveFormat = [(BWNodeOutputMediaProperties *)self->_primaryMediaProperties liveFormat];
  }

  v14 = [BWNodeConfigurationLiveMessage newMessageWithConfigurationID:liveConfigurationID updatedFormat:liveFormat];
  ++self->_numberOfConfigurationDidBecomeLiveMessagesReceived;
  consumer = self->_consumer;
  if (consumer)
  {
    [(BWNodeOutputConsumer *)consumer consumeMessage:v14 fromOutput:self];
  }
}

- (BWNodeOutput)initWithMediaType:(unsigned int)type node:(id)node
{
  v12.receiver = self;
  v12.super_class = BWNodeOutput;
  v6 = [(BWNodeOutput *)&v12 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 7) = type;
    v6[25] = type == 1986618469;
    v6[26] = type == 1885564004;
    *(v6 + 4) = node;
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

- (void)setConsumer:(id)consumer
{
  if (self->_consumer != consumer)
  {
    self->_consumer = consumer;
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

- (void)setMediaConfiguration:(id)configuration forAttachedMediaKey:(id)key
{
  if (!key)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = @"Cannot set media configuration for nil attachedMediaKey";
    goto LABEL_14;
  }

  if ([key isEqualToString:@"PrimaryFormat"])
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = @"Cannot set media configuration for BWAttachedMediaKey_PrimaryFormat";
LABEL_14:
    objc_exception_throw([v9 exceptionWithName:v10 reason:v11 userInfo:0]);
  }

  attachedMediaConfigurations = self->_attachedMediaConfigurations;
  if (configuration)
  {
    if (!attachedMediaConfigurations)
    {
      self->_attachedMediaConfigurations = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [configuration _setAssociatedAttachedMediaKey:key];
    v8 = self->_attachedMediaConfigurations;

    [(NSMutableDictionary *)v8 setObject:configuration forKeyedSubscript:key];
  }

  else
  {

    [(NSMutableDictionary *)attachedMediaConfigurations removeObjectForKey:key];
  }
}

- (id)mediaConfigurationForAttachedMediaKey:(id)key
{
  if (!key)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot set media configuration for nil attachedMediaKey" userInfo:0]);
  }

  if ([key isEqualToString:@"PrimaryFormat"])
  {
    return self->_primaryMediaConfiguration;
  }

  attachedMediaConfigurations = self->_attachedMediaConfigurations;

  return [(NSMutableDictionary *)attachedMediaConfigurations objectForKeyedSubscript:key];
}

- (id)mediaPropertiesForAttachedMediaKey:(id)key
{
  if (!key)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot set media configuration for nil attachedMediaKey" userInfo:0]);
  }

  if ([key isEqualToString:@"PrimaryFormat"])
  {
    return self->_primaryMediaProperties;
  }

  attachedMediaProperties = self->_attachedMediaProperties;

  return [(NSMutableDictionary *)attachedMediaProperties objectForKeyedSubscript:key];
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

- (void)emitSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  value = *MEMORY[0x1E6960C70];
  flags = *(MEMORY[0x1E6960C70] + 12);
  timescale = *(MEMORY[0x1E6960C70] + 8);
  epoch = *(MEMORY[0x1E6960C70] + 16);
  if (buffer)
  {
    if (self->_discardsSampleData)
    {
      goto LABEL_11;
    }

    if (self->_dropsSampleBuffersWithUnexpectedPTS)
    {
      CMSampleBufferGetPresentationTimeStamp(&time1, buffer);
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

    v7 = CMGetAttachment(buffer, *off_1E798A420, 0);
    if (v7)
    {
      CMTimeMakeFromDictionary(&time1, v7);
    }

    else
    {
      CMSampleBufferGetPresentationTimeStamp(&time1, buffer);
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
    v10 = [BWNodeSampleBufferMessage newMessageWithSampleBuffer:buffer];
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

- (void)emitNodeError:(id)error
{
  v4 = [BWNodeErrorMessage newMessageWithNodeError:error];
  consumer = self->_consumer;
  if (consumer)
  {
    v6 = v4;
    consumer = [(BWNodeOutputConsumer *)consumer consumeMessage:v4 fromOutput:self];
    v4 = v6;
  }

  MEMORY[0x1EEE66BB8](consumer, v4);
}

- (void)emitDroppedSample:(id)sample
{
  if (self->_discardsSampleData)
  {
    if (self->_sourceEmitSemaphore && ([objc_msgSend(sample "backPressureSemaphoresToIgnore")] & 1) == 0)
    {
      sourceEmitSemaphore = self->_sourceEmitSemaphore;

      dispatch_semaphore_signal(sourceEmitSemaphore);
    }
  }

  else
  {
    ++self->_numberOfDataDroppedMessagesReceived;
    v4 = [BWNodeDroppedSampleMessage newMessageWithDroppedSample:sample];
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

- (void)emitStillImageReferenceFrameBracketedCaptureSequenceNumberMessageWithSequenceNumber:(int)number
{
  v4 = [BWNodeStillImageReferenceFrameBracketedCaptureSequenceNumberMessage newMessageWithStillImageReferenceFrameBracketedCaptureSequenceNumber:*&number];
  consumer = self->_consumer;
  if (consumer)
  {
    v6 = v4;
    consumer = [(BWNodeOutputConsumer *)consumer consumeMessage:v4 fromOutput:self];
    v4 = v6;
  }

  MEMORY[0x1EEE66BB8](consumer, v4);
}

- (void)emitStillImagePrewarmMessageWithSettings:(id)settings resourceConfig:(id)config
{
  v5 = [BWNodeStillImagePrewarmMessage newMessageWithStillImageSettings:settings resourceConfig:config];
  consumer = self->_consumer;
  if (consumer)
  {
    v7 = v5;
    consumer = [(BWNodeOutputConsumer *)consumer consumeMessage:v5 fromOutput:self];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](consumer, v5);
}

- (void)markEndOfLiveOutputForConfigurationID:(id)d
{
  if (d)
  {
    [(BWNodeOutput *)self _markEndOfLiveOutputForConfigurationForAttachedMediaKey:?];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    resolvedAttachedMediaKeys = [(BWNodeOutput *)self resolvedAttachedMediaKeys];
    v12 = [(NSArray *)resolvedAttachedMediaKeys countByEnumeratingWithState:&v24 objects:v23 count:16];
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
            objc_enumerationMutation(resolvedAttachedMediaKeys);
          }

          [(BWNodeOutput *)self _markEndOfLiveOutputForConfigurationForAttachedMediaKey:?];
        }

        while (v13 != v15);
        v13 = [(NSArray *)resolvedAttachedMediaKeys countByEnumeratingWithState:&v24 objects:v23 count:16];
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
    resolvedAttachedMediaKeys2 = [(BWNodeOutput *)self resolvedAttachedMediaKeys];
    v5 = [(NSArray *)resolvedAttachedMediaKeys2 countByEnumeratingWithState:&v19 objects:v18 count:16];
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
            objc_enumerationMutation(resolvedAttachedMediaKeys2);
          }

          [(BWNodeOutput *)self _markEndOfLiveOutputForAttachedMediaKey:?];
        }

        while (v6 != v8);
        v6 = [(NSArray *)resolvedAttachedMediaKeys2 countByEnumeratingWithState:&v19 objects:v18 count:16];
      }

      while (v6);
    }

    renderDelegate = [(BWNode *)self->_node renderDelegate];
    if (renderDelegate)
    {
      [(BWNodeRenderDelegate *)renderDelegate node:self->_node format:0 didBecomeLiveForOutput:self];
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
  allValues = [(NSMutableDictionary *)self->_attachedMediaProperties allValues];
  v6 = [allValues countByEnumeratingWithState:&v12 objects:v11 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [objc_msgSend(v10 "livePixelBufferPool")];
        [objc_msgSend(v10 "liveDataBufferPool")];
      }

      v7 = [allValues countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v7);
  }
}

- (void)addPoolPreallocationCompletionHandler:(id)handler
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
      v7[5] = handler;
      dispatch_async(global_queue, v7);
    }

    else
    {
      v6 = [handler copy];
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

- (void)_setMediaProperties:(id)properties forAttachedMediaKey:(id)key
{
  if (!key)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = @"Cannot set media properties for nil attachedMediaKey";
    goto LABEL_14;
  }

  if ([key isEqualToString:@"PrimaryFormat"])
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = @"Cannot set media properties for primary media";
    goto LABEL_14;
  }

  if (!properties)
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
    if ([(NSMutableDictionary *)attachedMediaProperties objectForKeyedSubscript:key])
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

  [properties _setOwningNodeOutput:self associatedAttachedMediaKey:key];
  v11 = self->_attachedMediaProperties;

  [(NSMutableDictionary *)v11 setObject:properties forKeyedSubscript:key];
}

- (int)_passthroughModeForAttachedMediaKey:(id)key
{
  if (!key)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot get passthrough mode for nil attachedMediaKey" userInfo:0]);
  }

  if ([key isEqualToString:@"PrimaryFormat"])
  {
    primaryMediaConfiguration = self->_primaryMediaConfiguration;
LABEL_5:

    return [(BWNodeOutputMediaConfiguration *)primaryMediaConfiguration passthroughMode];
  }

  primaryMediaConfiguration = [(NSMutableDictionary *)self->_attachedMediaConfigurations objectForKeyedSubscript:key];
  if (primaryMediaConfiguration)
  {
    goto LABEL_5;
  }

  return [(BWNodeOutput *)self _passthroughModeForUnspecifiedAttachedMedia];
}

- (id)_mediaConfigurationForPossiblyUnspecifiedAttachedMediaKey:(id)key
{
  if ([key isEqualToString:@"PrimaryFormat"])
  {
    return self->_primaryMediaConfiguration;
  }

  result = [(BWNodeOutput *)self mediaConfigurationForAttachedMediaKey:key];
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

- (id)_mediaConfigurationForBufferCountOfPossiblyUnspecifiedAttachedMediaKey:(id)key
{
  result = [(BWNodeOutput *)self mediaConfigurationForAttachedMediaKey:key];
  if (!result)
  {
    return self->_primaryMediaConfiguration;
  }

  return result;
}

- (id)_mediaPropertiesForPossiblyUnspecifiedAttachedMediaKey:(id)key
{
  result = [(BWNodeOutput *)self mediaPropertiesForAttachedMediaKey:key];
  if (!result)
  {
    return self->_primaryMediaProperties;
  }

  return result;
}

- (id)attachedMediaKeyDrivenByInputAttachedMediaKey:(id)key inputIndex:(unint64_t)index
{
  if ([-[BWNodeOutput _mediaConfigurationForPossiblyUnspecifiedAttachedMediaKey:](self "_mediaConfigurationForPossiblyUnspecifiedAttachedMediaKey:{"isDrivenByInputWithIndex:", index}")])
  {
    v7 = @"PrimaryFormat";
    if ([key isEqualToString:@"PrimaryFormat"])
    {
      if (![(BWNodeOutputMediaConfiguration *)self->_primaryMediaConfiguration performsAttachedMediaRemapping])
      {
        return v7;
      }
    }

    else if (-[NSArray containsObject:](-[BWNodeOutput specifiedAttachedMediaKeys](self, "specifiedAttachedMediaKeys"), "containsObject:", key) && ![-[BWNodeOutput mediaConfigurationForAttachedMediaKey:](self mediaConfigurationForAttachedMediaKey:{key), "performsAttachedMediaRemapping"}])
    {
      return key;
    }
  }

  if (![(BWNodeOutputMediaConfiguration *)self->_primaryMediaConfiguration isDrivenByInputWithIndex:index])
  {
    goto LABEL_11;
  }

  v7 = @"PrimaryFormat";
  performsAttachedMediaRemapping = [(BWNodeOutputMediaConfiguration *)self->_primaryMediaConfiguration performsAttachedMediaRemapping];
  attachedMediaKeyOfInputWhichDrivesThisOutput = @"PrimaryFormat";
  if (performsAttachedMediaRemapping)
  {
    attachedMediaKeyOfInputWhichDrivesThisOutput = [(BWNodeOutputMediaConfiguration *)self->_primaryMediaConfiguration attachedMediaKeyOfInputWhichDrivesThisOutput];
  }

  if (([key isEqualToString:attachedMediaKeyOfInputWhichDrivesThisOutput] & 1) == 0)
  {
LABEL_11:
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    specifiedAttachedMediaKeys = [(BWNodeOutput *)self specifiedAttachedMediaKeys];
    v11 = [(NSArray *)specifiedAttachedMediaKeys countByEnumeratingWithState:&v20 objects:v19 count:16];
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
          objc_enumerationMutation(specifiedAttachedMediaKeys);
        }

        v7 = *(*(&v20 + 1) + 8 * v14);
        v15 = [(BWNodeOutput *)self mediaConfigurationForAttachedMediaKey:v7];
        if ([v15 isDrivenByInputWithIndex:index])
        {
          performsAttachedMediaRemapping2 = [v15 performsAttachedMediaRemapping];
          attachedMediaKeyOfInputWhichDrivesThisOutput2 = v7;
          if (performsAttachedMediaRemapping2)
          {
            attachedMediaKeyOfInputWhichDrivesThisOutput2 = [v15 attachedMediaKeyOfInputWhichDrivesThisOutput];
          }

          if ([key isEqualToString:attachedMediaKeyOfInputWhichDrivesThisOutput2])
          {
            break;
          }
        }

        if (v12 == ++v14)
        {
          v12 = [(NSArray *)specifiedAttachedMediaKeys countByEnumeratingWithState:&v20 objects:v19 count:16];
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
      if (([key isEqualToString:@"PrimaryFormat"] & 1) != 0 || -[NSArray containsObject:](-[BWNodeOutput specifiedAttachedMediaKeys](self, "specifiedAttachedMediaKeys"), "containsObject:", key) || !-[BWNodeOutputMediaConfiguration isDrivenByInputWithIndex:](self->_primaryMediaConfiguration, "isDrivenByInputWithIndex:", index))
      {
        return 0;
      }

      else if ([(BWNodeOutput *)self _passthroughModeForUnspecifiedAttachedMedia])
      {
        return key;
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_consumerIsANodeConnection), @"consumerIsNodeConnection"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_mediaTypeIsVideo), @"mediaTypeIsVideo"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_mediaTypeIsPointCloud), @"mediaTypeIsPointCloud"}];
  [dictionary setObject:BWStringForOSType() forKeyedSubscript:@"mediaType"];
  [dictionary setObject:-[BWFormat description](-[BWNodeOutput liveFormat](self forKeyedSubscript:{"liveFormat"), "description"), @"liveFormat"}];
  [dictionary setObject:-[BWNode osStatePropertyListWithVerbose:](-[BWNodeInput node](-[BWNodeConnection input](-[BWNodeOutput connection](self forKeyedSubscript:{"connection"), "input"), "node"), "osStatePropertyListWithVerbose:", 0), @"node"}];
  return dictionary;
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
          resolvedRetainedBufferCount = [v5 resolvedRetainedBufferCount];
          if (resolvedRetainedBufferCount <= [v4 owningNodeRetainedBufferCount])
          {
            owningNodeRetainedBufferCount = [v4 owningNodeRetainedBufferCount];
          }

          else
          {
            owningNodeRetainedBufferCount = [v5 resolvedRetainedBufferCount];
          }

          [v5 setPreparedPixelBufferPoolSize:{owningNodeRetainedBufferCount + objc_msgSend(v4, "owningNodeIndefinitelyHeldBufferCount") + 1}];
          v8 = [BWPixelBufferPool alloc];
          resolvedVideoFormat = [v5 resolvedVideoFormat];
          preparedPixelBufferPoolSize = [v5 preparedPixelBufferPoolSize];
          v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", -[BWNodeOutput _poolName](v3), a2];
          v12 = v3[26];
          pixelBufferPoolProvidesBackPressure = [v4 pixelBufferPoolProvidesBackPressure];
          LOBYTE(v15) = [v4 pixelBufferPoolReportSlowBackPressureAllocations];
          v14 = [(BWPixelBufferPool *)v8 initWithVideoFormat:resolvedVideoFormat capacity:preparedPixelBufferPoolSize name:v11 clientProvidesPool:0 memoryPool:v12 providesBackPressure:pixelBufferPoolProvidesBackPressure reportSlowBackPressureAllocations:v15];
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
        preparedPixelBufferPoolSize = [v5 preparedPixelBufferPoolSize];
      }

      else
      {
        resolvedRetainedBufferCount = [v5 resolvedRetainedBufferCount];
        if (resolvedRetainedBufferCount <= [v4 owningNodeRetainedBufferCount])
        {
          owningNodeRetainedBufferCount = [v4 owningNodeRetainedBufferCount];
        }

        else
        {
          owningNodeRetainedBufferCount = [v5 resolvedRetainedBufferCount];
        }

        preparedPixelBufferPoolSize = (owningNodeRetainedBufferCount + 1);
      }

      [v5 setLivePixelBufferPoolSize:preparedPixelBufferPoolSize];
      v12 = OUTLINED_FUNCTION_0_60();

      return [v12 setPreparedPixelBufferPoolSize:?];
    }

    else if (v3[26] == 1)
    {
      [v5 _makePreparedDataBufferPoolLiveLocked];
      if ([v5 preparedDataBufferPoolSize])
      {
        preparedDataBufferPoolSize = [v5 preparedDataBufferPoolSize];
      }

      else
      {
        resolvedRetainedBufferCount2 = [v5 resolvedRetainedBufferCount];
        if (resolvedRetainedBufferCount2 <= [v4 owningNodeRetainedBufferCount])
        {
          owningNodeRetainedBufferCount2 = [v4 owningNodeRetainedBufferCount];
        }

        else
        {
          owningNodeRetainedBufferCount2 = [v5 resolvedRetainedBufferCount];
        }

        preparedDataBufferPoolSize = (owningNodeRetainedBufferCount2 + 1);
      }

      [v5 setLiveDataBufferPoolSize:preparedDataBufferPoolSize];
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