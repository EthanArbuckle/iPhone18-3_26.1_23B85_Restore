@interface BWFanOutNode
- (BWFanOutNode)initWithFanOutCount:(int)count mediaType:(unsigned int)type;
- (id)addExtendedOutput;
- (void)activateExtendedOutput:(id)output;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key;
- (void)handleDroppedSample:(id)sample forInput:(id)input;
- (void)handleNodeError:(id)error forInput:(id)input;
- (void)removeExtendedOutput:(id)output;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
- (void)setAllowedAttachedMediaKeys:(id)keys forOutputIndex:(int)index;
- (void)setDisallowedAttachedMediaKeys:(id)keys forOutputIndex:(int)index;
- (void)setDiscardsAttachedMedia:(BOOL)media forOutputIndex:(int)index;
@end

@implementation BWFanOutNode

- (BWFanOutNode)initWithFanOutCount:(int)count mediaType:(unsigned int)type
{
  if (count < 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Negative fan count" userInfo:0]);
  }

  v4 = *&type;
  v15.receiver = self;
  v15.super_class = BWFanOutNode;
  v6 = [(BWNode *)&v15 init];
  v7 = v6;
  if (v6)
  {
    [(BWNode *)v6 setSupportsLiveReconfiguration:1];
    v8 = [[BWNodeInput alloc] initWithMediaType:v4 node:v7];
    if (v4 == 1986618469)
    {
      v9 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWNodeInput *)v8 setFormatRequirements:v9];
    }

    [(BWNodeInput *)v8 setPassthroughMode:1];
    [(BWNode *)v7 addInput:v8];

    countCopy = count;
    v7->_outputsCArray = malloc_type_malloc(8 * count, 0x80040B8603338uLL);
    v7->_outputsDiscardsAttachedMedia = malloc_type_malloc(count, 0x100004077774924uLL);
    v7->_outputsAllowedAttachedMediaKeys = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:count];
    v7->_outputsCount = count;
    if (count)
    {
      v11 = 0;
      do
      {
        v12 = [[BWNodeOutput alloc] initWithMediaType:v4 node:v7];
        if (v4 == 1986618469)
        {
          v13 = objc_alloc_init(BWVideoFormatRequirements);
          [(BWNodeOutput *)v12 setFormatRequirements:v13];
        }

        [(BWNodeOutput *)v12 setPassthroughMode:1];
        [(BWNodeOutput *)v12 setIndexOfInputWhichDrivesThisOutput:0];
        [(BWNode *)v7 addOutput:v12];

        v7->_outputsCArray[v11] = v12;
        v7->_outputsDiscardsAttachedMedia[v11++] = 0;
      }

      while (countCopy != v11);
    }

    v7->_extendedOutputsLock._os_unfair_lock_opaque = 0;
    [(BWNode *)v7 setSupportsLiveReconfiguration:1];
  }

  return v7;
}

- (void)dealloc
{
  free(self->_outputsCArray);
  free(self->_outputsDiscardsAttachedMedia);

  v3.receiver = self;
  v3.super_class = BWFanOutNode;
  [(BWNode *)&v3 dealloc];
}

- (void)setDiscardsAttachedMedia:(BOOL)media forOutputIndex:(int)index
{
  mediaCopy = media;
  v7 = [(NSArray *)[(BWNode *)self outputs] objectAtIndexedSubscript:index];
  v8 = v7;
  if (mediaCopy && ![v7 unspecifiedAttachedMediaConfiguration])
  {
    [v8 setUnspecifiedAttachedMediaConfiguration:objc_alloc_init(BWNodeOutputMediaConfiguration)];
  }

  self->_outputsDiscardsAttachedMedia[index] = mediaCopy;
  unspecifiedAttachedMediaConfiguration = [v8 unspecifiedAttachedMediaConfiguration];

  [unspecifiedAttachedMediaConfiguration setPassthroughMode:!mediaCopy];
}

- (id)addExtendedOutput
{
  v3 = [[BWNodeOutput alloc] initWithMediaType:[(BWNodeInput *)[(BWNode *)self input] mediaType] node:self];
  [(BWNodeOutput *)v3 setPassthroughMode:1];
  [(BWNodeOutput *)v3 setFormat:[(BWNodeInput *)[(BWNode *)self input] format]];
  [(BWNodeOutput *)v3 setRequestedConfigurationID:[(BWNode *)self requestedConfigurationID]];
  [(BWNode *)self addOutput:v3];

  return v3;
}

- (void)activateExtendedOutput:(id)output
{
  if (![output liveFormat])
  {
    [output makeConfiguredFormatLive];
  }

  os_unfair_lock_lock(&self->_extendedOutputsLock);
  extendedOutputs = self->_extendedOutputs;
  if (!extendedOutputs)
  {
    extendedOutputs = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->_extendedOutputs = extendedOutputs;
  }

  if (([(NSMutableArray *)extendedOutputs containsObject:output]& 1) == 0)
  {
    [(NSMutableArray *)self->_extendedOutputs addObject:output];
  }

  os_unfair_lock_unlock(&self->_extendedOutputsLock);
}

- (void)didSelectFormat:(id)format forInput:(id)input
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(BWNode *)self outputs:format];
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) setFormat:format];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v7);
  }
}

- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key
{
  if ([key isEqualToString:@"PrimaryFormat"])
  {

    [(BWFanOutNode *)self didSelectFormat:format forInput:input];
  }

  else
  {
    outputs = [(BWNode *)self outputs];
    if ([(NSArray *)outputs count])
    {
      v10 = 0;
      do
      {
        v11 = [(NSArray *)outputs objectAtIndexedSubscript:v10];
        v12 = [v11 attachedMediaKeyDrivenByInputAttachedMediaKey:key inputIndex:{objc_msgSend(input, "index")}];
        if (v12)
        {
          v13 = v12;
          if ((![-[NSMutableDictionary objectForKeyedSubscript:](self->_outputsAllowedAttachedMediaKeys objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v10)), "count"}] || objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_outputsAllowedAttachedMediaKeys, "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v10)), "containsObject:", key)) && (objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_outputsDisallowedAttachedMediaKeys, "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v10)), "containsObject:", key) & 1) == 0)
          {
            v14 = [v11 mediaPropertiesForAttachedMediaKey:v13];
            if (!v14)
            {
              v14 = objc_alloc_init(BWNodeOutputMediaProperties);
              [v11 _setMediaProperties:v14 forAttachedMediaKey:v13];
            }

            [(BWNodeOutputMediaProperties *)v14 setResolvedFormat:format];
          }
        }

        ++v10;
      }

      while (v10 < [(NSArray *)outputs count]);
    }
  }
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  if (self->_outputsCount >= 1)
  {
    v6 = 0;
    do
    {
      [self->_outputsCArray[v6++] makeConfiguredFormatLive];
    }

    while (v6 < self->_outputsCount);
  }

  os_unfair_lock_lock(&self->_extendedOutputsLock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  extendedOutputs = self->_extendedOutputs;
  v8 = [(NSMutableArray *)extendedOutputs countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(extendedOutputs);
        }

        [*(*(&v13 + 1) + 8 * i) makeConfiguredFormatLive];
      }

      v9 = [(NSMutableArray *)extendedOutputs countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_extendedOutputsLock);
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  if (self->_outputsCount >= 1)
  {
    v6 = 0;
    do
    {
      [self->_outputsCArray[v6++] markEndOfLiveOutputForConfigurationID:{d, input}];
    }

    while (v6 < self->_outputsCount);
  }

  os_unfair_lock_lock(&self->_extendedOutputsLock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  extendedOutputs = self->_extendedOutputs;
  v8 = [(NSMutableArray *)extendedOutputs countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(extendedOutputs);
        }

        [*(*(&v13 + 1) + 8 * i) markEndOfLiveOutputForConfigurationID:d];
      }

      v9 = [(NSMutableArray *)extendedOutputs countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_extendedOutputsLock);
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  os_unfair_lock_lock(&self->_extendedOutputsLock);
  if (self->_outputsCount >= 1)
  {
    v6 = 0;
    do
    {
      if (([self->_outputsCArray[v6] discardsSampleData] & 1) == 0)
      {
        sampleBufferOut[0] = 0;
        if (buffer)
        {
          if (v6 < self->_outputsCount - 1 || [(NSMutableArray *)self->_extendedOutputs count])
          {
            BWCMSampleBufferCreateCopyIncludingMetadata(buffer, sampleBufferOut);
          }

          else
          {
            sampleBufferOut[0] = CFRetain(buffer);
          }

          if (self->_outputsDiscardsAttachedMedia[v6])
          {
            BWSampleBufferRemoveAllAttachedMedia(sampleBufferOut[0]);
          }

          else if (-[NSMutableDictionary objectForKeyedSubscript:](self->_outputsAllowedAttachedMediaKeys, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInt:v6]))
          {
            BWSampleBufferFilterWithAllowedAttachedMedia(sampleBufferOut[0], -[NSMutableDictionary objectForKeyedSubscript:](self->_outputsAllowedAttachedMediaKeys, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInt:v6]));
          }

          else if (-[NSMutableDictionary objectForKeyedSubscript:](self->_outputsDisallowedAttachedMediaKeys, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInt:v6]))
          {
            BWSampleBufferFilterWithDisallowedAttachedMedia(sampleBufferOut[0], -[NSMutableDictionary objectForKeyedSubscript:](self->_outputsDisallowedAttachedMediaKeys, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInt:v6]));
          }

          if (sampleBufferOut[0])
          {
            [self->_outputsCArray[v6] emitSampleBuffer:?];
            if (sampleBufferOut[0])
            {
              CFRelease(sampleBufferOut[0]);
            }
          }
        }
      }

      ++v6;
    }

    while (v6 < self->_outputsCount);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  extendedOutputs = self->_extendedOutputs;
  v8 = [(NSMutableArray *)extendedOutputs countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(extendedOutputs);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (([v12 discardsSampleData] & 1) == 0)
        {
          sampleBufferOut[0] = 0;
          if (buffer)
          {
            if (v12 == [(NSMutableArray *)self->_extendedOutputs lastObject])
            {
              sampleBufferOut[0] = buffer;
              CFRetain(buffer);
            }

            else
            {
              BWCMSampleBufferCreateCopyIncludingMetadata(buffer, sampleBufferOut);
            }

            if (sampleBufferOut[0])
            {
              [v12 emitSampleBuffer:?];
              if (sampleBufferOut[0])
              {
                CFRelease(sampleBufferOut[0]);
              }
            }
          }
        }
      }

      v9 = [(NSMutableArray *)extendedOutputs countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_extendedOutputsLock);
}

- (void)handleNodeError:(id)error forInput:(id)input
{
  if (self->_outputsCount >= 1)
  {
    v6 = 0;
    do
    {
      [self->_outputsCArray[v6++] emitNodeError:{error, input}];
    }

    while (v6 < self->_outputsCount);
  }

  os_unfair_lock_lock(&self->_extendedOutputsLock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  extendedOutputs = self->_extendedOutputs;
  v8 = [(NSMutableArray *)extendedOutputs countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(extendedOutputs);
        }

        [*(*(&v13 + 1) + 8 * i) emitNodeError:error];
      }

      v9 = [(NSMutableArray *)extendedOutputs countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_extendedOutputsLock);
}

- (void)handleDroppedSample:(id)sample forInput:(id)input
{
  if (self->_outputsCount >= 1)
  {
    v6 = 0;
    do
    {
      [self->_outputsCArray[v6++] emitDroppedSample:{sample, input}];
    }

    while (v6 < self->_outputsCount);
  }

  os_unfair_lock_lock(&self->_extendedOutputsLock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  extendedOutputs = self->_extendedOutputs;
  v8 = [(NSMutableArray *)extendedOutputs countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(extendedOutputs);
        }

        [*(*(&v13 + 1) + 8 * i) emitDroppedSample:sample];
      }

      v9 = [(NSMutableArray *)extendedOutputs countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_extendedOutputsLock);
}

- (void)setAllowedAttachedMediaKeys:(id)keys forOutputIndex:(int)index
{
  v4 = *&index;
  if ([keys count])
  {
    v7 = [(NSArray *)[(BWNode *)self outputs] objectAtIndexedSubscript:v4];
    v15 = OUTLINED_FUNCTION_2_0(v7, v8, v9, v10, v11, v12, v13, v14, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, 0);
    if (v15)
    {
      v16 = v15;
      v17 = MEMORY[0];
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (MEMORY[0] != v17)
          {
            objc_enumerationMutation(keys);
          }

          v19 = *(8 * i);
          v20 = objc_alloc_init(BWNodeOutputMediaConfiguration);
          [(BWNodeOutputMediaConfiguration *)v20 setPassthroughMode:1];
          v21 = [v7 setMediaConfiguration:v20 forAttachedMediaKey:v19];
        }

        v16 = OUTLINED_FUNCTION_2_0(v21, v22, v23, v24, v25, v26, v27, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v61);
      }

      while (v16);
    }

    if (![v7 unspecifiedAttachedMediaConfiguration])
    {
      [v7 setUnspecifiedAttachedMediaConfiguration:objc_alloc_init(BWNodeOutputMediaConfiguration)];
    }

    [objc_msgSend(v7 "unspecifiedAttachedMediaConfiguration")];
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_outputsAllowedAttachedMediaKeys, "setObject:forKeyedSubscript:", keys, [MEMORY[0x1E696AD98] numberWithInt:v4]);
  }
}

- (void)setDisallowedAttachedMediaKeys:(id)keys forOutputIndex:(int)index
{
  v4 = *&index;
  if ([keys count])
  {
    outputsDisallowedAttachedMediaKeys = self->_outputsDisallowedAttachedMediaKeys;
    if (!outputsDisallowedAttachedMediaKeys)
    {
      outputsDisallowedAttachedMediaKeys = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_outputsDisallowedAttachedMediaKeys = outputsDisallowedAttachedMediaKeys;
    }

    v8 = [MEMORY[0x1E696AD98] numberWithInt:v4];

    [(NSMutableDictionary *)outputsDisallowedAttachedMediaKeys setObject:keys forKeyedSubscript:v8];
  }
}

- (void)removeExtendedOutput:(id)output
{
  if ([(NSArray *)[(BWNode *)self outputs] containsObject:output])
  {
    [(BWNode *)self removeOutput:output];
    os_unfair_lock_lock(&self->_extendedOutputsLock);
    [(NSMutableArray *)self->_extendedOutputs removeObject:output];
    if (![(NSMutableArray *)self->_extendedOutputs count])
    {

      self->_extendedOutputs = 0;
    }

    os_unfair_lock_unlock(&self->_extendedOutputsLock);
    if ([output liveFormat])
    {

      [output markEndOfLiveOutput];
    }
  }
}

@end