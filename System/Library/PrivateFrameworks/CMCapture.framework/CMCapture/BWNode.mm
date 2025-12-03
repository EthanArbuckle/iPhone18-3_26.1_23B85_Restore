@interface BWNode
- (BOOL)allInputsHaveReachedState:(int)state;
- (BOOL)hasNonLiveConfigurationChanges;
- (BOOL)input:(id)input hasReachedState:(int)state;
- (BWNode)init;
- (NSString)briefName;
- (NSString)description;
- (id)osStatePropertyListWithVerbose:(BOOL)verbose;
- (void)_handleMessage:(id)message fromInput:(id)input;
- (void)addInput:(id)input;
- (void)addOutput:(id)output;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)didReachEndOfDataForInput:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key;
- (void)didSelectFormat:(id)format forOutput:(id)output forAttachedMediaKey:(id)key;
- (void)handleDroppedSample:(id)sample forInput:(id)input;
- (void)handleNodeError:(id)error forInput:(id)input;
- (void)handleStillImagePrewarmWithSettings:(id)settings resourceConfig:(id)config forInput:(id)input;
- (void)handleStillImageReferenceFrameBracketedCaptureSequenceNumber:(int)number forInput:(id)input;
- (void)notifyWhenEndOfConfigurationIsHandledUsingQueue:(id)queue block:(id)block;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)removeInput:(id)input;
- (void)removeOutput:(id)output;
- (void)setRequestedConfigurationID:(int64_t)d;
- (void)suspendResources;
- (void)waitUntilEndOfConfigurationHandled;
@end

@implementation BWNode

- (BWNode)init
{
  v5.receiver = self;
  v5.super_class = BWNode;
  v2 = [(BWNode *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_deferredPreparePriority = 2;
    if (![(BWNode *)v2 name])
    {
      -[BWNode setName:](v3, "setName:", [objc_opt_class() description]);
    }

    v3->_currentConfigurationGroup = dispatch_group_create();
  }

  return v3;
}

- (NSString)description
{
  name = self->_name;
  if (name)
  {
    name = [MEMORY[0x1E696AEC0] stringWithFormat:@" '%@'", name];
  }

  else
  {
    name = &stru_1F216A3D0;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p>%@", objc_opt_class(), self, name];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  self->_preparedConfigurationID = [(BWNode *)self requestedConfigurationID];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  outputs = [(BWNode *)self outputs];
  v4 = [(NSArray *)outputs countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(outputs);
        }

        [*(*(&v9 + 1) + 8 * v7++) prepareForConfiguredFormatToBecomeLive];
      }

      while (v5 != v7);
      v5 = [(NSArray *)outputs countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v5);
  }
}

- (void)dealloc
{
  [(NSMutableArray *)self->_inputs makeObjectsPerformSelector:sel_invalidate];

  [(NSMutableArray *)self->_outputs makeObjectsPerformSelector:sel_invalidate];
  v3.receiver = self;
  v3.super_class = BWNode;
  [(BWNode *)&v3 dealloc];
}

- (NSString)briefName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key
{
  if ([key isEqualToString:@"PrimaryFormat"])
  {

    [(BWNode *)self didSelectFormat:format forInput:input];
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    outputs = self->_outputs;
    v10 = [(NSMutableArray *)outputs countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(outputs);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          v15 = [v14 attachedMediaKeyDrivenByInputAttachedMediaKey:key inputIndex:{objc_msgSend(input, "index")}];
          if (v15)
          {
            v16 = v15;
            v17 = [v14 mediaPropertiesForAttachedMediaKey:v15];
            if (!v17)
            {
              v17 = objc_alloc_init(BWNodeOutputMediaProperties);
              [v14 _setMediaProperties:v17 forAttachedMediaKey:v16];
            }

            [(BWNodeOutputMediaProperties *)v17 setResolvedFormat:format];
          }
        }

        v11 = [(NSMutableArray *)outputs countByEnumeratingWithState:&v19 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (void)didSelectFormat:(id)format forOutput:(id)output forAttachedMediaKey:(id)key
{
  if ([key isEqualToString:@"PrimaryFormat"])
  {

    [(BWNode *)self didSelectFormat:format forOutput:output];
  }
}

- (BOOL)hasNonLiveConfigurationChanges
{
  liveFormat = [(BWNodeInput *)[(BWNode *)self input] liveFormat];
  liveFormat2 = [(BWNodeOutput *)[(BWNode *)self output] liveFormat];
  format = [(BWNodeInput *)[(BWNode *)self input] format];
  format2 = [(BWNodeOutput *)[(BWNode *)self output] format];
  if (liveFormat && ![(BWFormat *)liveFormat isEqual:format])
  {
    return 1;
  }

  if (liveFormat2)
  {
    return [(BWFormat *)liveFormat2 isEqual:format2]^ 1;
  }

  return 0;
}

- (void)setRequestedConfigurationID:(int64_t)d
{
  self->_requestedConfigurationID = d;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  inputs = [(BWNode *)self inputs];
  v6 = [(NSArray *)inputs countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(inputs);
        }

        [*(*(&v21 + 1) + 8 * v9++) setRequestedConfigurationID:d];
      }

      while (v7 != v9);
      v7 = [(NSArray *)inputs countByEnumeratingWithState:&v21 objects:v20 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  outputs = [(BWNode *)self outputs];
  v11 = [(NSArray *)outputs countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(outputs);
        }

        [*(*(&v16 + 1) + 8 * v14++) setRequestedConfigurationID:d];
      }

      while (v12 != v14);
      v12 = [(NSArray *)outputs countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v12);
  }
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  if (self->_input)
  {
    [(BWNode *)self requestedConfigurationID:d];
    if ([(BWNode *)self preparedConfigurationID]!= d)
    {
      self->_preparedConfigurationID = d;
    }

    if (!self->_singleInput || (output = self->_output) != 0 && !self->_singleOutput)
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = NSStringFromSelector(a2);
      v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(v9 userInfo:{"stringWithFormat:", @"%@ BWNode base class implementation only works for single input single output nodes, please implement %@ in %@", self, v10, objc_opt_class()), 0}];
      objc_exception_throw(v11);
    }

    [(BWNodeOutput *)output makeConfiguredFormatLive];
  }
}

- (void)suspendResources
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  outputs = self->_outputs;
  v3 = [(NSMutableArray *)outputs countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(outputs);
        }

        [*(*(&v8 + 1) + 8 * i) suspendResources];
      }

      v4 = [(NSMutableArray *)outputs countByEnumeratingWithState:&v8 objects:v7 count:16];
    }

    while (v4);
  }
}

- (void)waitUntilEndOfConfigurationHandled
{
  mach_absolute_time();
  currentConfigurationGroup = self->_currentConfigurationGroup;
  v4 = dispatch_time(0, 10000000000);
  dispatch_group_wait(currentConfigurationGroup, v4);
  mach_absolute_time();

  FigHostTimeToNanoseconds();
}

- (void)notifyWhenEndOfConfigurationIsHandledUsingQueue:(id)queue block:(id)block
{
  v7 = mach_absolute_time();
  currentConfigurationGroup = self->_currentConfigurationGroup;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__BWNode_notifyWhenEndOfConfigurationIsHandledUsingQueue_block___block_invoke;
  v9[3] = &unk_1E79903B8;
  v9[4] = block;
  v9[5] = v7;
  dispatch_group_notify(currentConfigurationGroup, queue, v9);
}

uint64_t __64__BWNode_notifyWhenEndOfConfigurationIsHandledUsingQueue_block___block_invoke(uint64_t a1)
{
  mach_absolute_time();
  FigHostTimeToNanoseconds();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  if (d)
  {
    if (!self->_input)
    {
      return;
    }

    longLongValue = [d longLongValue];
    if (longLongValue != [(BWNode *)self liveConfigurationID])
    {
      return;
    }

    goto LABEL_7;
  }

  if ([(BWNode *)self supportsLiveReconfiguration])
  {
    if (!self->_input)
    {
      return;
    }

LABEL_7:
    if (!self->_singleInput || (output = self->_output) != 0 && !self->_singleOutput)
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = NSStringFromSelector(a2);
      v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(v10 userInfo:{"stringWithFormat:", @"%@ BWNode base class implementation only works for single input single output nodes, please implement %@ in %@", self, v11, objc_opt_class()), 0}];
      objc_exception_throw(v12);
    }

    [(BWNodeOutput *)output markEndOfLiveOutputForConfigurationID:d];
    return;
  }

  [(BWNode *)self didReachEndOfDataForInput:input];
}

- (void)didReachEndOfDataForInput:(id)input
{
  if (self->_input)
  {
    if (!self->_singleInput || self->_output && !self->_singleOutput)
    {
      v5 = MEMORY[0x1E696AEC0];
      v7 = NSStringFromSelector(a2);
      v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(v5 userInfo:{"stringWithFormat:", @"%@ BWNode base class implementation only works for single input single output nodes, please implement %@ in %@", self, v7, objc_opt_class()), 0}];
      objc_exception_throw(v8);
    }

    output = self->_output;

    [(BWNodeOutput *)output markEndOfLiveOutputForConfigurationID:0];
  }
}

- (void)handleNodeError:(id)error forInput:(id)input
{
  if (self->_input)
  {
    if (!self->_singleInput || self->_output && !self->_singleOutput)
    {
      v6 = MEMORY[0x1E696AEC0];
      v8 = NSStringFromSelector(a2);
      v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(v6 userInfo:{"stringWithFormat:", @"%@ BWNode base class implementation only works for single input single output nodes, please implement %@ in %@", self, v8, objc_opt_class()), 0}];
      objc_exception_throw(v9);
    }

    output = self->_output;

    [(BWNodeOutput *)output emitNodeError:error, input];
  }
}

- (void)handleDroppedSample:(id)sample forInput:(id)input
{
  if (self->_input && self->_singleInput && (!self->_output || self->_singleOutput))
  {
    [(BWNodeOutput *)self->_output emitDroppedSample:sample, input];
  }
}

- (void)handleStillImageReferenceFrameBracketedCaptureSequenceNumber:(int)number forInput:(id)input
{
  if (self->_input && self->_singleInput && (!self->_output || self->_singleOutput))
  {
    [(BWNodeOutput *)self->_output emitStillImageReferenceFrameBracketedCaptureSequenceNumberMessageWithSequenceNumber:*&number, input];
  }
}

- (void)handleStillImagePrewarmWithSettings:(id)settings resourceConfig:(id)config forInput:(id)input
{
  if ([(NSMutableArray *)self->_inputs containsObject:input])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    outputs = self->_outputs;
    v9 = [(NSMutableArray *)outputs countByEnumeratingWithState:&v14 objects:v13 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(outputs);
          }

          [*(*(&v14 + 1) + 8 * v12++) emitStillImagePrewarmMessageWithSettings:settings resourceConfig:config];
        }

        while (v10 != v12);
        v10 = [(NSMutableArray *)outputs countByEnumeratingWithState:&v14 objects:v13 count:16];
      }

      while (v10);
    }
  }
}

- (void)addInput:(id)input
{
  if (input)
  {
    inputs = self->_inputs;
    if (!inputs)
    {
      inputs = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
      self->_inputs = inputs;
    }

    [(NSMutableArray *)inputs addObject:input];
    self->_singleInput = [(NSMutableArray *)self->_inputs count]== 1;
    if (!self->_input)
    {
      self->_input = input;
    }
  }
}

- (void)removeInput:(id)input
{
  if (input)
  {
    [(NSMutableArray *)self->_inputs removeObject:?];
    if (self->_input == input)
    {
      self->_input = [(NSMutableArray *)self->_inputs firstObject];
    }
  }
}

- (void)addOutput:(id)output
{
  if (output)
  {
    outputs = self->_outputs;
    if (!outputs)
    {
      outputs = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
      self->_outputs = outputs;
    }

    [(NSMutableArray *)outputs addObject:output];
    self->_singleOutput = [(NSMutableArray *)self->_outputs count]== 1;
    if (!self->_output)
    {
      self->_output = output;
    }
  }
}

- (void)removeOutput:(id)output
{
  if (output)
  {
    [(NSMutableArray *)self->_outputs removeObject:?];
    if (self->_output == output)
    {
      self->_output = [(NSMutableArray *)self->_outputs firstObject];
    }
  }
}

- (BOOL)input:(id)input hasReachedState:(int)state
{
  liveFormat = [input liveFormat];
  v6 = liveFormat == 0;
  if (state)
  {
    v6 = 0;
  }

  if (state == 1)
  {
    return liveFormat != 0;
  }

  else
  {
    return v6;
  }
}

- (BOOL)allInputsHaveReachedState:(int)state
{
  if ([(BWNode *)self supportsConcurrentLiveInputCallbacks])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"allInputsHaveReachedState: isn't supported for for concurrent live input callbacks" userInfo:0]);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  inputs = [(BWNode *)self inputs];
  v6 = [(NSArray *)inputs countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(inputs);
        }

        if ((state != 1) == ([*(*(&v12 + 1) + 8 * v9) liveFormat] != 0))
        {
          return 0;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)inputs countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

- (void)_handleMessage:(id)message fromInput:(id)input
{
  v7 = *(message + 2);
  v8 = *(message + 3);
  v9 = objc_autoreleasePoolPush();
  if (v7 == 1)
  {
    if (v8 > 5)
    {
      if (v8 > 7)
      {
LABEL_11:
        if (v8 == 8)
        {
          [(BWNode *)self suspendResources];
        }

        else if (v8 == 9)
        {
          v10 = self->_currentConfigurationGroup;
          configurationID = [message configurationID];
          -[BWNode didReachEndOfDataForConfigurationID:input:](self, "didReachEndOfDataForConfigurationID:input:", [MEMORY[0x1E696AD98] numberWithLongLong:configurationID], input);
          dispatch_group_leave(v10);
        }

        goto LABEL_30;
      }

      if (v8 != 6)
      {
LABEL_10:
        -[BWNode handleStillImagePrewarmWithSettings:resourceConfig:forInput:](self, "handleStillImagePrewarmWithSettings:resourceConfig:forInput:", [message stillImageSettings], objc_msgSend(message, "resourceConfig"), input);
        goto LABEL_30;
      }

LABEL_26:
      -[BWNode handleStillImageReferenceFrameBracketedCaptureSequenceNumber:forInput:](self, "handleStillImageReferenceFrameBracketedCaptureSequenceNumber:forInput:", [message referenceFrameBracketedCaptureSequenceNumber], input);
      goto LABEL_30;
    }

    if (v8 != 3)
    {
      if (v8 != 4)
      {
        if (v8 != 5)
        {
          goto LABEL_30;
        }

        goto LABEL_27;
      }

LABEL_23:
      v12 = self->_currentConfigurationGroup;
      [(BWNodeRenderDelegate *)self->_renderDelegate node:self format:0 didBecomeLiveForInput:input configurationID:[(BWNode *)self liveConfigurationID]];
      [(BWNode *)self didReachEndOfDataForConfigurationID:0 input:input];
      dispatch_group_leave(v12);

      goto LABEL_30;
    }

LABEL_24:
    liveFormat = [input liveFormat];
    configurationID2 = [message configurationID];
    [(BWNodeRenderDelegate *)self->_renderDelegate node:self format:liveFormat didBecomeLiveForInput:input configurationID:configurationID2];
    updatedFormat = [message updatedFormat];
    dispatch_group_enter(self->_currentConfigurationGroup);
    self->_liveConfigurationID = configurationID2;
    [(BWNode *)self configurationWithID:configurationID2 updatedFormat:updatedFormat didBecomeLiveForInput:input];
    goto LABEL_30;
  }

  if (v7 != 2)
  {
    goto LABEL_30;
  }

  if (v8 > 4)
  {
    if (v8 > 6)
    {
      if (v8 == 7)
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    if (v8 != 5)
    {
      goto LABEL_26;
    }

LABEL_27:
    -[BWNode handleNodeError:forInput:](self, "handleNodeError:forInput:", [message nodeError], input);
    goto LABEL_30;
  }

  if (v8 > 2)
  {
    if (v8 != 3)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if (v8 == 1)
  {
    sampleBuffer = [message sampleBuffer];
    [(BWNodeRenderDelegate *)self->_renderDelegate node:self willRenderSampleBuffer:sampleBuffer forInput:input];
    [(BWNode *)self renderSampleBuffer:sampleBuffer forInput:input];
  }

  else if (v8 == 2)
  {
    -[BWNode handleDroppedSample:forInput:](self, "handleDroppedSample:forInput:", [message droppedSample], input);
  }

LABEL_30:

  objc_autoreleasePoolPop(v9);
}

- (id)osStatePropertyListWithVerbose:(BOOL)verbose
{
  verboseCopy = verbose;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_subgraphName forKeyedSubscript:@"subgraphName"];
  [dictionary setObject:-[BWNode description](self forKeyedSubscript:{"description"), @"description"}];
  if (verboseCopy)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_supportsConcurrentLiveInputCallbacks), @"supportsCurrentLiveInputCallbacks"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_supportsLiveReconfiguration), @"supportsLiveReconfiguration"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_singleInput), @"singleInput"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_singleOutput), @"singleOutput"}];
    if (self->_singleInput)
    {
      v6 = [-[NSMutableArray objectAtIndexedSubscript:](self->_inputs objectAtIndexedSubscript:{0), "osStatePropertyList"}];
      v7 = @"nodeInput";
      v8 = dictionary;
    }

    else
    {
      array = [MEMORY[0x1E695DF70] array];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      inputs = self->_inputs;
      v11 = [(NSMutableArray *)inputs countByEnumeratingWithState:&v31 objects:v30 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v32;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v32 != v13)
            {
              objc_enumerationMutation(inputs);
            }

            [array addObject:{objc_msgSend(*(*(&v31 + 1) + 8 * i), "osStatePropertyList")}];
          }

          v12 = [(NSMutableArray *)inputs countByEnumeratingWithState:&v31 objects:v30 count:16];
        }

        while (v12);
      }

      v7 = @"nodeInputs";
      v8 = dictionary;
      v6 = array;
    }

    [v8 setObject:v6 forKeyedSubscript:v7];
    if (self->_singleOutput)
    {
      v15 = [-[NSMutableArray objectAtIndexedSubscript:](self->_outputs objectAtIndexedSubscript:{0), "osStatePropertyList"}];
      v16 = @"nodeOutput";
      v17 = dictionary;
    }

    else
    {
      array2 = [MEMORY[0x1E695DF70] array];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      outputs = self->_outputs;
      v20 = [(NSMutableArray *)outputs countByEnumeratingWithState:&v26 objects:v25 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v27;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v27 != v22)
            {
              objc_enumerationMutation(outputs);
            }

            [array2 addObject:{objc_msgSend(*(*(&v26 + 1) + 8 * j), "osStatePropertyList")}];
          }

          v21 = [(NSMutableArray *)outputs countByEnumeratingWithState:&v26 objects:v25 count:16];
        }

        while (v21);
      }

      v16 = @"nodeOutputs";
      v17 = dictionary;
      v15 = array2;
    }

    [v17 setObject:v15 forKeyedSubscript:v16];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_deferredPreparePriority), @"deferredPreparePriority"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", -[BWNode requestedConfigurationID](self, "requestedConfigurationID")), @"requestedConfigurationID"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", -[BWNode preparedConfigurationID](self, "preparedConfigurationID")), @"preparedConfigurationID"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", -[BWNode liveConfigurationID](self, "liveConfigurationID")), @"liveConfigurationID"}];
  }

  return dictionary;
}

@end