@interface BWFunnelNode
- (BWFunnelNode)initWithNumberOfInputs:(int)a3 mediaType:(unsigned int)a4 holdMessages:(BOOL)a5;
- (id)addExtendedInput;
- (void)_deliverQueuedMessages;
- (void)_handleMessage:(id)a3 fromInput:(id)a4;
- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4;
- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5;
- (void)prepareForCurrentConfigurationToBecomeLive;
@end

@implementation BWFunnelNode

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

  v9.receiver = self;
  v9.super_class = BWFunnelNode;
  [(BWNode *)&v9 prepareForCurrentConfigurationToBecomeLive];
}

- (BWFunnelNode)initWithNumberOfInputs:(int)a3 mediaType:(unsigned int)a4 holdMessages:(BOOL)a5
{
  if (a3 <= 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Non-positive fan in count" userInfo:0]);
  }

  v5 = a5;
  v6 = *&a4;
  v7 = a3;
  v15.receiver = self;
  v15.super_class = BWFunnelNode;
  v8 = [(BWNode *)&v15 init];
  v9 = v8;
  if (v8)
  {
    [(BWNode *)v8 setSupportsConcurrentLiveInputCallbacks:0];
    v9->_holdMessagesUntilAllInputsAreLive = v5;
    if (v5)
    {
      v9->_queuedMessages = objc_alloc_init(MEMORY[0x1E695DF70]);
      v9->_inputsForQueuedMessages = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    do
    {
      v10 = [[BWNodeInput alloc] initWithMediaType:v6 node:v9];
      if (v6 == 1986618469)
      {
        v11 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWNodeInput *)v10 setFormatRequirements:v11];
      }

      [(BWNodeInput *)v10 setPassthroughMode:1];
      [(BWNode *)v9 addInput:v10];

      --v7;
    }

    while (v7);
    v12 = [[BWNodeOutput alloc] initWithMediaType:v6 node:v9];
    if (v6 == 1986618469)
    {
      v13 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWNodeOutput *)v12 setFormatRequirements:v13];
    }

    v9->_stateLock._os_unfair_lock_opaque = 0;
    [(BWNodeOutput *)v12 setPassthroughMode:1];
    [(BWNode *)v9 addOutput:v12];

    [(BWNode *)v9 setSupportsLiveReconfiguration:1];
    [(BWNode *)v9 setSupportsPrepareWhileRunning:1];
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWFunnelNode;
  [(BWNode *)&v3 dealloc];
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5
{
  v8 = [(BWNodeOutput *)self->super._output mediaPropertiesForAttachedMediaKey:a5, a4];
  if (!v8)
  {
    v8 = objc_alloc_init(BWNodeOutputMediaProperties);
    [(BWNodeOutput *)self->super._output _setMediaProperties:v8 forAttachedMediaKey:a5];
  }

  [(BWNodeOutputMediaProperties *)v8 setResolvedFormat:a3];
}

- (id)addExtendedInput
{
  v3 = [[BWNodeInput alloc] initWithMediaType:[(BWNodeInput *)[(BWNode *)self input] mediaType] node:self];
  [(BWNodeInput *)v3 setPassthroughMode:1];
  [(BWNodeInput *)v3 setRequestedConfigurationID:[(BWNode *)self requestedConfigurationID]];
  [(BWNode *)self addInput:v3];
  return v3;
}

- (void)_handleMessage:(id)a3 fromInput:(id)a4
{
  if (!self->_holdMessagesUntilAllInputsAreLive)
  {
    goto LABEL_7;
  }

  if ([(BWNode *)self allInputsHaveReachedState:1])
  {
    [(BWFunnelNode *)self _deliverQueuedMessages];
LABEL_7:
    v8.receiver = self;
    v8.super_class = BWFunnelNode;
    [(BWNode *)&v8 _handleMessage:a3 fromInput:a4];
    return;
  }

  [(NSMutableArray *)self->_queuedMessages addObject:a3];
  inputsForQueuedMessages = self->_inputsForQueuedMessages;

  [(NSMutableArray *)inputsForQueuedMessages addObject:a4];
}

- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5
{
  if ([(BWNode *)self allInputsHaveReachedState:1, a4, a5])
  {
    if (![(BWNodeOutput *)self->super._output liveFormat])
    {
      [(BWNodeOutput *)self->super._output makeConfiguredFormatLive];
      self->_running = 1;
    }
  }
}

- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4
{
  os_unfair_lock_lock(&self->_stateLock);
  if ([(BWNode *)self allInputsHaveReachedState:0]&& self->_running)
  {
    self->_running = 0;
    os_unfair_lock_unlock(&self->_stateLock);
    output = self->super._output;

    [(BWNodeOutput *)output markEndOfLiveOutputForConfigurationID:a3];
  }

  else
  {

    os_unfair_lock_unlock(&self->_stateLock);
  }
}

- (void)_deliverQueuedMessages
{
  if (a1)
  {
    if ([*(a1 + 136) count])
    {
      v2 = 0;
      do
      {
        v3 = [*(a1 + 136) objectAtIndexedSubscript:v2];
        v4 = [*(a1 + 144) objectAtIndexedSubscript:v2];
        v5.receiver = a1;
        v5.super_class = BWFunnelNode;
        objc_msgSendSuper2(&v5, sel__handleMessage_fromInput_, v3, v4);
        ++v2;
      }

      while (v2 < [*(a1 + 136) count]);
    }

    [*(a1 + 136) removeAllObjects];

    *(a1 + 136) = 0;
    [*(a1 + 144) removeAllObjects];

    *(a1 + 144) = 0;
    *(a1 + 128) = 0;
  }
}

@end