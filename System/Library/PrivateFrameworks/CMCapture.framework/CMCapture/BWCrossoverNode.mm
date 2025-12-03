@interface BWCrossoverNode
- (BWCrossoverNode)initWithMediaType:(unsigned int)type numberOfInputs:(unsigned int)inputs;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)didReachEndOfDataForInput:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key;
- (void)handleDroppedSample:(id)sample forInput:(id)input;
- (void)handleNodeError:(id)error forInput:(id)input;
- (void)handleStillImageReferenceFrameBracketedCaptureSequenceNumber:(int)number forInput:(id)input;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWCrossoverNode

- (BWCrossoverNode)initWithMediaType:(unsigned int)type numberOfInputs:(unsigned int)inputs
{
  v5 = *&type;
  v16.receiver = self;
  v16.super_class = BWCrossoverNode;
  v6 = [(BWNode *)&v16 init];
  v7 = v6;
  if (v6)
  {
    [(BWNode *)v6 setSupportsConcurrentLiveInputCallbacks:1];
    array = [MEMORY[0x1E695DF70] array];
    if (inputs)
    {
      v9 = 0;
      inputsCopy = inputs;
      do
      {
        v11 = [[BWNodeInput alloc] initWithMediaType:v5 node:v7 index:v9];
        v12 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v11 primaryMediaConfiguration] setFormatRequirements:v12];

        [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v11 primaryMediaConfiguration] setPassthroughMode:1];
        [(BWNode *)v7 addInput:v11];

        [array addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v9++)}];
      }

      while (inputsCopy != v9);
    }

    v13 = [[BWNodeOutput alloc] initWithMediaType:v5 node:v7];
    v14 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v13 primaryMediaConfiguration] setFormatRequirements:v14];

    [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v13 primaryMediaConfiguration] setPassthroughMode:1];
    [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v13 primaryMediaConfiguration] setIndexesOfInputsWhichDrivesThisOutput:array];
    [(BWNode *)v7 addOutput:v13];

    v7->_numEODMessagesReceived = 0;
  }

  return v7;
}

- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key
{
  v7 = [(BWNode *)self output:format];
  v8 = [(BWNodeOutput *)v7 mediaPropertiesForAttachedMediaKey:key];
  if (!v8)
  {
    v8 = objc_alloc_init(BWNodeOutputMediaProperties);
    [(BWNodeOutput *)v7 _setMediaProperties:v8 forAttachedMediaKey:key];
  }

  [(BWNodeOutputMediaProperties *)v8 setResolvedFormat:format];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  BWUtilitiesWarnIfInputFormatsMismatch([(BWNode *)self inputs], self->super._input);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(BWNode *)self inputs];
  v12 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v12)
  {
    v11 = *v21;
    do
    {
      v3 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v20 + 1) + 8 * v3);
        if (v4 != self->super._input)
        {
          v17 = 0u;
          v18 = 0u;
          v15 = 0u;
          v16 = 0u;
          resolvedAttachedMediaKeys = [(BWNodeInput *)v4 resolvedAttachedMediaKeys];
          v6 = [(NSArray *)resolvedAttachedMediaKeys countByEnumeratingWithState:&v15 objects:v14 count:16];
          if (v6)
          {
            v7 = v6;
            v8 = *v16;
            do
            {
              v9 = 0;
              do
              {
                if (*v16 != v8)
                {
                  objc_enumerationMutation(resolvedAttachedMediaKeys);
                }

                [objc_msgSend(-[BWNodeInput mediaPropertiesForAttachedMediaKey:](v4 mediaPropertiesForAttachedMediaKey:{*(*(&v15 + 1) + 8 * v9)), "resolvedFormat"), "isEqual:", objc_msgSend(-[BWNodeInput mediaPropertiesForAttachedMediaKey:](self->super._input, "mediaPropertiesForAttachedMediaKey:", *(*(&v15 + 1) + 8 * v9)), "resolvedFormat")}];
                ++v9;
              }

              while (v7 != v9);
              v7 = [(NSArray *)resolvedAttachedMediaKeys countByEnumeratingWithState:&v15 objects:v14 count:16];
            }

            while (v7);
          }
        }

        ++v3;
      }

      while (v3 != v12);
      v12 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v19 count:16];
    }

    while (v12);
  }

  v13.receiver = self;
  v13.super_class = BWCrossoverNode;
  [(BWNode *)&v13 prepareForCurrentConfigurationToBecomeLive];
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  os_unfair_lock_lock(&self->_numEODMessagesReceived);
  if (![(BWNodeOutput *)self->super._output liveFormat])
  {
    [(BWNodeOutput *)self->super._output makeConfiguredFormatLive];
  }

  os_unfair_lock_unlock(&self->_numEODMessagesReceived);
}

- (void)didReachEndOfDataForInput:(id)input
{
  v4 = atomic_fetch_add_explicit((&self->super._requiresEndOfDataForConfigurationChanges + 3), 1u, memory_order_relaxed) + 1;
  if ([(NSArray *)[(BWNode *)self inputs] count]== v4)
  {
    os_unfair_lock_lock(&self->_numEODMessagesReceived);
    [(BWNodeOutput *)self->super._output markEndOfLiveOutput];
    os_unfair_lock_unlock(&self->_numEODMessagesReceived);
    *(&self->super._requiresEndOfDataForConfigurationChanges + 3) = 0;
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if ([objc_msgSend(CMGetAttachment(buffer *off_1E798A3C8])
  {
    if (buffer)
    {
      CFRetain(buffer);
    }

    os_unfair_lock_lock(&self->_numEODMessagesReceived);
    [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
    if (buffer)
    {
      CFRelease(buffer);
    }

    os_unfair_lock_unlock(&self->_numEODMessagesReceived);
  }
}

- (void)handleNodeError:(id)error forInput:(id)input
{
  os_unfair_lock_lock(&self->_numEODMessagesReceived);
  [(BWNodeOutput *)self->super._output emitNodeError:error];

  os_unfair_lock_unlock(&self->_numEODMessagesReceived);
}

- (void)handleDroppedSample:(id)sample forInput:(id)input
{
  os_unfair_lock_lock(&self->_numEODMessagesReceived);
  [(BWNodeOutput *)self->super._output emitDroppedSample:sample];

  os_unfair_lock_unlock(&self->_numEODMessagesReceived);
}

- (void)handleStillImageReferenceFrameBracketedCaptureSequenceNumber:(int)number forInput:(id)input
{
  v4 = *&number;
  os_unfair_lock_lock(&self->_numEODMessagesReceived);
  [(BWNodeOutput *)self->super._output emitStillImageReferenceFrameBracketedCaptureSequenceNumberMessageWithSequenceNumber:v4];

  os_unfair_lock_unlock(&self->_numEODMessagesReceived);
}

@end