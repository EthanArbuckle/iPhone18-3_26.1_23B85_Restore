@interface BWFunnelNode
- (BWFunnelNode)initWithNumberOfInputs:(int)inputs mediaType:(unsigned int)type holdMessages:(BOOL)messages;
- (id)addExtendedInput;
- (void)_deliverQueuedMessages;
- (void)_handleMessage:(id)message fromInput:(id)input;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key;
- (void)prepareForCurrentConfigurationToBecomeLive;
@end

@implementation BWFunnelNode

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

  v9.receiver = self;
  v9.super_class = BWFunnelNode;
  [(BWNode *)&v9 prepareForCurrentConfigurationToBecomeLive];
}

- (BWFunnelNode)initWithNumberOfInputs:(int)inputs mediaType:(unsigned int)type holdMessages:(BOOL)messages
{
  if (inputs <= 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Non-positive fan in count" userInfo:0]);
  }

  messagesCopy = messages;
  v6 = *&type;
  inputsCopy = inputs;
  v15.receiver = self;
  v15.super_class = BWFunnelNode;
  v8 = [(BWNode *)&v15 init];
  v9 = v8;
  if (v8)
  {
    [(BWNode *)v8 setSupportsConcurrentLiveInputCallbacks:0];
    v9->_holdMessagesUntilAllInputsAreLive = messagesCopy;
    if (messagesCopy)
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

      --inputsCopy;
    }

    while (inputsCopy);
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

- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key
{
  input = [(BWNodeOutput *)self->super._output mediaPropertiesForAttachedMediaKey:key, input];
  if (!input)
  {
    input = objc_alloc_init(BWNodeOutputMediaProperties);
    [(BWNodeOutput *)self->super._output _setMediaProperties:input forAttachedMediaKey:key];
  }

  [(BWNodeOutputMediaProperties *)input setResolvedFormat:format];
}

- (id)addExtendedInput
{
  v3 = [[BWNodeInput alloc] initWithMediaType:[(BWNodeInput *)[(BWNode *)self input] mediaType] node:self];
  [(BWNodeInput *)v3 setPassthroughMode:1];
  [(BWNodeInput *)v3 setRequestedConfigurationID:[(BWNode *)self requestedConfigurationID]];
  [(BWNode *)self addInput:v3];
  return v3;
}

- (void)_handleMessage:(id)message fromInput:(id)input
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
    [(BWNode *)&v8 _handleMessage:message fromInput:input];
    return;
  }

  [(NSMutableArray *)self->_queuedMessages addObject:message];
  inputsForQueuedMessages = self->_inputsForQueuedMessages;

  [(NSMutableArray *)inputsForQueuedMessages addObject:input];
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  if ([(BWNode *)self allInputsHaveReachedState:1, format, input])
  {
    if (![(BWNodeOutput *)self->super._output liveFormat])
    {
      [(BWNodeOutput *)self->super._output makeConfiguredFormatLive];
      self->_running = 1;
    }
  }
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  os_unfair_lock_lock(&self->_stateLock);
  if ([(BWNode *)self allInputsHaveReachedState:0]&& self->_running)
  {
    self->_running = 0;
    os_unfair_lock_unlock(&self->_stateLock);
    output = self->super._output;

    [(BWNodeOutput *)output markEndOfLiveOutputForConfigurationID:d];
  }

  else
  {

    os_unfair_lock_unlock(&self->_stateLock);
  }
}

- (void)_deliverQueuedMessages
{
  if (self)
  {
    if ([*(self + 136) count])
    {
      v2 = 0;
      do
      {
        v3 = [*(self + 136) objectAtIndexedSubscript:v2];
        v4 = [*(self + 144) objectAtIndexedSubscript:v2];
        v5.receiver = self;
        v5.super_class = BWFunnelNode;
        objc_msgSendSuper2(&v5, sel__handleMessage_fromInput_, v3, v4);
        ++v2;
      }

      while (v2 < [*(self + 136) count]);
    }

    [*(self + 136) removeAllObjects];

    *(self + 136) = 0;
    [*(self + 144) removeAllObjects];

    *(self + 144) = 0;
    *(self + 128) = 0;
  }
}

@end