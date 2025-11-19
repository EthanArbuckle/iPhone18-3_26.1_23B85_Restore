@interface BWFanOutNode
- (BWFanOutNode)initWithFanOutCount:(int)a3 mediaType:(unsigned int)a4;
- (id)addExtendedOutput;
- (void)activateExtendedOutput:(id)a3;
- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4;
- (void)didSelectFormat:(id)a3 forInput:(id)a4;
- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5;
- (void)handleDroppedSample:(id)a3 forInput:(id)a4;
- (void)handleNodeError:(id)a3 forInput:(id)a4;
- (void)removeExtendedOutput:(id)a3;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
- (void)setAllowedAttachedMediaKeys:(id)a3 forOutputIndex:(int)a4;
- (void)setDisallowedAttachedMediaKeys:(id)a3 forOutputIndex:(int)a4;
- (void)setDiscardsAttachedMedia:(BOOL)a3 forOutputIndex:(int)a4;
@end

@implementation BWFanOutNode

- (BWFanOutNode)initWithFanOutCount:(int)a3 mediaType:(unsigned int)a4
{
  if (a3 < 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Negative fan count" userInfo:0]);
  }

  v4 = *&a4;
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

    v10 = a3;
    v7->_outputsCArray = malloc_type_malloc(8 * a3, 0x80040B8603338uLL);
    v7->_outputsDiscardsAttachedMedia = malloc_type_malloc(a3, 0x100004077774924uLL);
    v7->_outputsAllowedAttachedMediaKeys = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:a3];
    v7->_outputsCount = a3;
    if (a3)
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

      while (v10 != v11);
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

- (void)setDiscardsAttachedMedia:(BOOL)a3 forOutputIndex:(int)a4
{
  v5 = a3;
  v7 = [(NSArray *)[(BWNode *)self outputs] objectAtIndexedSubscript:a4];
  v8 = v7;
  if (v5 && ![v7 unspecifiedAttachedMediaConfiguration])
  {
    [v8 setUnspecifiedAttachedMediaConfiguration:objc_alloc_init(BWNodeOutputMediaConfiguration)];
  }

  self->_outputsDiscardsAttachedMedia[a4] = v5;
  v9 = [v8 unspecifiedAttachedMediaConfiguration];

  [v9 setPassthroughMode:!v5];
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

- (void)activateExtendedOutput:(id)a3
{
  if (![a3 liveFormat])
  {
    [a3 makeConfiguredFormatLive];
  }

  os_unfair_lock_lock(&self->_extendedOutputsLock);
  extendedOutputs = self->_extendedOutputs;
  if (!extendedOutputs)
  {
    extendedOutputs = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    self->_extendedOutputs = extendedOutputs;
  }

  if (([(NSMutableArray *)extendedOutputs containsObject:a3]& 1) == 0)
  {
    [(NSMutableArray *)self->_extendedOutputs addObject:a3];
  }

  os_unfair_lock_unlock(&self->_extendedOutputsLock);
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(BWNode *)self outputs:a3];
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

        [*(*(&v11 + 1) + 8 * v9++) setFormat:a3];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v7);
  }
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5
{
  if ([a5 isEqualToString:@"PrimaryFormat"])
  {

    [(BWFanOutNode *)self didSelectFormat:a3 forInput:a4];
  }

  else
  {
    v9 = [(BWNode *)self outputs];
    if ([(NSArray *)v9 count])
    {
      v10 = 0;
      do
      {
        v11 = [(NSArray *)v9 objectAtIndexedSubscript:v10];
        v12 = [v11 attachedMediaKeyDrivenByInputAttachedMediaKey:a5 inputIndex:{objc_msgSend(a4, "index")}];
        if (v12)
        {
          v13 = v12;
          if ((![-[NSMutableDictionary objectForKeyedSubscript:](self->_outputsAllowedAttachedMediaKeys objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v10)), "count"}] || objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_outputsAllowedAttachedMediaKeys, "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v10)), "containsObject:", a5)) && (objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_outputsDisallowedAttachedMediaKeys, "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v10)), "containsObject:", a5) & 1) == 0)
          {
            v14 = [v11 mediaPropertiesForAttachedMediaKey:v13];
            if (!v14)
            {
              v14 = objc_alloc_init(BWNodeOutputMediaProperties);
              [v11 _setMediaProperties:v14 forAttachedMediaKey:v13];
            }

            [(BWNodeOutputMediaProperties *)v14 setResolvedFormat:a3];
          }
        }

        ++v10;
      }

      while (v10 < [(NSArray *)v9 count]);
    }
  }
}

- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5
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

- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4
{
  if (self->_outputsCount >= 1)
  {
    v6 = 0;
    do
    {
      [self->_outputsCArray[v6++] markEndOfLiveOutputForConfigurationID:{a3, a4}];
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

        [*(*(&v13 + 1) + 8 * i) markEndOfLiveOutputForConfigurationID:a3];
      }

      v9 = [(NSMutableArray *)extendedOutputs countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_extendedOutputsLock);
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
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
        if (a3)
        {
          if (v6 < self->_outputsCount - 1 || [(NSMutableArray *)self->_extendedOutputs count])
          {
            BWCMSampleBufferCreateCopyIncludingMetadata(a3, sampleBufferOut);
          }

          else
          {
            sampleBufferOut[0] = CFRetain(a3);
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
          if (a3)
          {
            if (v12 == [(NSMutableArray *)self->_extendedOutputs lastObject])
            {
              sampleBufferOut[0] = a3;
              CFRetain(a3);
            }

            else
            {
              BWCMSampleBufferCreateCopyIncludingMetadata(a3, sampleBufferOut);
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

- (void)handleNodeError:(id)a3 forInput:(id)a4
{
  if (self->_outputsCount >= 1)
  {
    v6 = 0;
    do
    {
      [self->_outputsCArray[v6++] emitNodeError:{a3, a4}];
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

        [*(*(&v13 + 1) + 8 * i) emitNodeError:a3];
      }

      v9 = [(NSMutableArray *)extendedOutputs countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_extendedOutputsLock);
}

- (void)handleDroppedSample:(id)a3 forInput:(id)a4
{
  if (self->_outputsCount >= 1)
  {
    v6 = 0;
    do
    {
      [self->_outputsCArray[v6++] emitDroppedSample:{a3, a4}];
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

        [*(*(&v13 + 1) + 8 * i) emitDroppedSample:a3];
      }

      v9 = [(NSMutableArray *)extendedOutputs countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_extendedOutputsLock);
}

- (void)setAllowedAttachedMediaKeys:(id)a3 forOutputIndex:(int)a4
{
  v4 = *&a4;
  if ([a3 count])
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
            objc_enumerationMutation(a3);
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
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_outputsAllowedAttachedMediaKeys, "setObject:forKeyedSubscript:", a3, [MEMORY[0x1E696AD98] numberWithInt:v4]);
  }
}

- (void)setDisallowedAttachedMediaKeys:(id)a3 forOutputIndex:(int)a4
{
  v4 = *&a4;
  if ([a3 count])
  {
    outputsDisallowedAttachedMediaKeys = self->_outputsDisallowedAttachedMediaKeys;
    if (!outputsDisallowedAttachedMediaKeys)
    {
      outputsDisallowedAttachedMediaKeys = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_outputsDisallowedAttachedMediaKeys = outputsDisallowedAttachedMediaKeys;
    }

    v8 = [MEMORY[0x1E696AD98] numberWithInt:v4];

    [(NSMutableDictionary *)outputsDisallowedAttachedMediaKeys setObject:a3 forKeyedSubscript:v8];
  }
}

- (void)removeExtendedOutput:(id)a3
{
  if ([(NSArray *)[(BWNode *)self outputs] containsObject:a3])
  {
    [(BWNode *)self removeOutput:a3];
    os_unfair_lock_lock(&self->_extendedOutputsLock);
    [(NSMutableArray *)self->_extendedOutputs removeObject:a3];
    if (![(NSMutableArray *)self->_extendedOutputs count])
    {

      self->_extendedOutputs = 0;
    }

    os_unfair_lock_unlock(&self->_extendedOutputsLock);
    if ([a3 liveFormat])
    {

      [a3 markEndOfLiveOutput];
    }
  }
}

@end