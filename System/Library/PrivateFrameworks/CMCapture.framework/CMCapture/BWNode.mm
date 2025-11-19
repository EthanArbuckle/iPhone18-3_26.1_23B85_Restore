@interface BWNode
- (BOOL)allInputsHaveReachedState:(int)a3;
- (BOOL)hasNonLiveConfigurationChanges;
- (BOOL)input:(id)a3 hasReachedState:(int)a4;
- (BWNode)init;
- (NSString)briefName;
- (NSString)description;
- (id)osStatePropertyListWithVerbose:(BOOL)a3;
- (void)_handleMessage:(id)a3 fromInput:(id)a4;
- (void)addInput:(id)a3;
- (void)addOutput:(id)a3;
- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4;
- (void)didReachEndOfDataForInput:(id)a3;
- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5;
- (void)didSelectFormat:(id)a3 forOutput:(id)a4 forAttachedMediaKey:(id)a5;
- (void)handleDroppedSample:(id)a3 forInput:(id)a4;
- (void)handleNodeError:(id)a3 forInput:(id)a4;
- (void)handleStillImagePrewarmWithSettings:(id)a3 resourceConfig:(id)a4 forInput:(id)a5;
- (void)handleStillImageReferenceFrameBracketedCaptureSequenceNumber:(int)a3 forInput:(id)a4;
- (void)notifyWhenEndOfConfigurationIsHandledUsingQueue:(id)a3 block:(id)a4;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)removeInput:(id)a3;
- (void)removeOutput:(id)a3;
- (void)setRequestedConfigurationID:(int64_t)a3;
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
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@" '%@'", name];
  }

  else
  {
    v4 = &stru_1F216A3D0;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p>%@", objc_opt_class(), self, v4];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  self->_preparedConfigurationID = [(BWNode *)self requestedConfigurationID];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(BWNode *)self outputs];
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) prepareForConfiguredFormatToBecomeLive];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
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

- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5
{
  if ([a5 isEqualToString:@"PrimaryFormat"])
  {

    [(BWNode *)self didSelectFormat:a3 forInput:a4];
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
          v15 = [v14 attachedMediaKeyDrivenByInputAttachedMediaKey:a5 inputIndex:{objc_msgSend(a4, "index")}];
          if (v15)
          {
            v16 = v15;
            v17 = [v14 mediaPropertiesForAttachedMediaKey:v15];
            if (!v17)
            {
              v17 = objc_alloc_init(BWNodeOutputMediaProperties);
              [v14 _setMediaProperties:v17 forAttachedMediaKey:v16];
            }

            [(BWNodeOutputMediaProperties *)v17 setResolvedFormat:a3];
          }
        }

        v11 = [(NSMutableArray *)outputs countByEnumeratingWithState:&v19 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (void)didSelectFormat:(id)a3 forOutput:(id)a4 forAttachedMediaKey:(id)a5
{
  if ([a5 isEqualToString:@"PrimaryFormat"])
  {

    [(BWNode *)self didSelectFormat:a3 forOutput:a4];
  }
}

- (BOOL)hasNonLiveConfigurationChanges
{
  v3 = [(BWNodeInput *)[(BWNode *)self input] liveFormat];
  v4 = [(BWNodeOutput *)[(BWNode *)self output] liveFormat];
  v5 = [(BWNodeInput *)[(BWNode *)self input] format];
  v6 = [(BWNodeOutput *)[(BWNode *)self output] format];
  if (v3 && ![(BWFormat *)v3 isEqual:v5])
  {
    return 1;
  }

  if (v4)
  {
    return [(BWFormat *)v4 isEqual:v6]^ 1;
  }

  return 0;
}

- (void)setRequestedConfigurationID:(int64_t)a3
{
  self->_requestedConfigurationID = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [(BWNode *)self inputs];
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v21 + 1) + 8 * v9++) setRequestedConfigurationID:a3];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v20 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [(BWNode *)self outputs];
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v15 count:16];
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
          objc_enumerationMutation(v10);
        }

        [*(*(&v16 + 1) + 8 * v14++) setRequestedConfigurationID:a3];
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v12);
  }
}

- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5
{
  if (self->_input)
  {
    [(BWNode *)self requestedConfigurationID:a3];
    if ([(BWNode *)self preparedConfigurationID]!= a3)
    {
      self->_preparedConfigurationID = a3;
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

- (void)notifyWhenEndOfConfigurationIsHandledUsingQueue:(id)a3 block:(id)a4
{
  v7 = mach_absolute_time();
  currentConfigurationGroup = self->_currentConfigurationGroup;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__BWNode_notifyWhenEndOfConfigurationIsHandledUsingQueue_block___block_invoke;
  v9[3] = &unk_1E79903B8;
  v9[4] = a4;
  v9[5] = v7;
  dispatch_group_notify(currentConfigurationGroup, a3, v9);
}

uint64_t __64__BWNode_notifyWhenEndOfConfigurationIsHandledUsingQueue_block___block_invoke(uint64_t a1)
{
  mach_absolute_time();
  FigHostTimeToNanoseconds();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4
{
  if (a3)
  {
    if (!self->_input)
    {
      return;
    }

    v7 = [a3 longLongValue];
    if (v7 != [(BWNode *)self liveConfigurationID])
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

    [(BWNodeOutput *)output markEndOfLiveOutputForConfigurationID:a3];
    return;
  }

  [(BWNode *)self didReachEndOfDataForInput:a4];
}

- (void)didReachEndOfDataForInput:(id)a3
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

- (void)handleNodeError:(id)a3 forInput:(id)a4
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

    [(BWNodeOutput *)output emitNodeError:a3, a4];
  }
}

- (void)handleDroppedSample:(id)a3 forInput:(id)a4
{
  if (self->_input && self->_singleInput && (!self->_output || self->_singleOutput))
  {
    [(BWNodeOutput *)self->_output emitDroppedSample:a3, a4];
  }
}

- (void)handleStillImageReferenceFrameBracketedCaptureSequenceNumber:(int)a3 forInput:(id)a4
{
  if (self->_input && self->_singleInput && (!self->_output || self->_singleOutput))
  {
    [(BWNodeOutput *)self->_output emitStillImageReferenceFrameBracketedCaptureSequenceNumberMessageWithSequenceNumber:*&a3, a4];
  }
}

- (void)handleStillImagePrewarmWithSettings:(id)a3 resourceConfig:(id)a4 forInput:(id)a5
{
  if ([(NSMutableArray *)self->_inputs containsObject:a5])
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

          [*(*(&v14 + 1) + 8 * v12++) emitStillImagePrewarmMessageWithSettings:a3 resourceConfig:a4];
        }

        while (v10 != v12);
        v10 = [(NSMutableArray *)outputs countByEnumeratingWithState:&v14 objects:v13 count:16];
      }

      while (v10);
    }
  }
}

- (void)addInput:(id)a3
{
  if (a3)
  {
    inputs = self->_inputs;
    if (!inputs)
    {
      inputs = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
      self->_inputs = inputs;
    }

    [(NSMutableArray *)inputs addObject:a3];
    self->_singleInput = [(NSMutableArray *)self->_inputs count]== 1;
    if (!self->_input)
    {
      self->_input = a3;
    }
  }
}

- (void)removeInput:(id)a3
{
  if (a3)
  {
    [(NSMutableArray *)self->_inputs removeObject:?];
    if (self->_input == a3)
    {
      self->_input = [(NSMutableArray *)self->_inputs firstObject];
    }
  }
}

- (void)addOutput:(id)a3
{
  if (a3)
  {
    outputs = self->_outputs;
    if (!outputs)
    {
      outputs = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
      self->_outputs = outputs;
    }

    [(NSMutableArray *)outputs addObject:a3];
    self->_singleOutput = [(NSMutableArray *)self->_outputs count]== 1;
    if (!self->_output)
    {
      self->_output = a3;
    }
  }
}

- (void)removeOutput:(id)a3
{
  if (a3)
  {
    [(NSMutableArray *)self->_outputs removeObject:?];
    if (self->_output == a3)
    {
      self->_output = [(NSMutableArray *)self->_outputs firstObject];
    }
  }
}

- (BOOL)input:(id)a3 hasReachedState:(int)a4
{
  v5 = [a3 liveFormat];
  v6 = v5 == 0;
  if (a4)
  {
    v6 = 0;
  }

  if (a4 == 1)
  {
    return v5 != 0;
  }

  else
  {
    return v6;
  }
}

- (BOOL)allInputsHaveReachedState:(int)a3
{
  if ([(BWNode *)self supportsConcurrentLiveInputCallbacks])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"allInputsHaveReachedState: isn't supported for for concurrent live input callbacks" userInfo:0]);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(BWNode *)self inputs];
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v11 count:16];
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
          objc_enumerationMutation(v5);
        }

        if ((a3 != 1) == ([*(*(&v12 + 1) + 8 * v9) liveFormat] != 0))
        {
          return 0;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

- (void)_handleMessage:(id)a3 fromInput:(id)a4
{
  v7 = *(a3 + 2);
  v8 = *(a3 + 3);
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
          v11 = [a3 configurationID];
          -[BWNode didReachEndOfDataForConfigurationID:input:](self, "didReachEndOfDataForConfigurationID:input:", [MEMORY[0x1E696AD98] numberWithLongLong:v11], a4);
          dispatch_group_leave(v10);
        }

        goto LABEL_30;
      }

      if (v8 != 6)
      {
LABEL_10:
        -[BWNode handleStillImagePrewarmWithSettings:resourceConfig:forInput:](self, "handleStillImagePrewarmWithSettings:resourceConfig:forInput:", [a3 stillImageSettings], objc_msgSend(a3, "resourceConfig"), a4);
        goto LABEL_30;
      }

LABEL_26:
      -[BWNode handleStillImageReferenceFrameBracketedCaptureSequenceNumber:forInput:](self, "handleStillImageReferenceFrameBracketedCaptureSequenceNumber:forInput:", [a3 referenceFrameBracketedCaptureSequenceNumber], a4);
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
      [(BWNodeRenderDelegate *)self->_renderDelegate node:self format:0 didBecomeLiveForInput:a4 configurationID:[(BWNode *)self liveConfigurationID]];
      [(BWNode *)self didReachEndOfDataForConfigurationID:0 input:a4];
      dispatch_group_leave(v12);

      goto LABEL_30;
    }

LABEL_24:
    v13 = [a4 liveFormat];
    v14 = [a3 configurationID];
    [(BWNodeRenderDelegate *)self->_renderDelegate node:self format:v13 didBecomeLiveForInput:a4 configurationID:v14];
    v15 = [a3 updatedFormat];
    dispatch_group_enter(self->_currentConfigurationGroup);
    self->_liveConfigurationID = v14;
    [(BWNode *)self configurationWithID:v14 updatedFormat:v15 didBecomeLiveForInput:a4];
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
    -[BWNode handleNodeError:forInput:](self, "handleNodeError:forInput:", [a3 nodeError], a4);
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
    v16 = [a3 sampleBuffer];
    [(BWNodeRenderDelegate *)self->_renderDelegate node:self willRenderSampleBuffer:v16 forInput:a4];
    [(BWNode *)self renderSampleBuffer:v16 forInput:a4];
  }

  else if (v8 == 2)
  {
    -[BWNode handleDroppedSample:forInput:](self, "handleDroppedSample:forInput:", [a3 droppedSample], a4);
  }

LABEL_30:

  objc_autoreleasePoolPop(v9);
}

- (id)osStatePropertyListWithVerbose:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  [v5 setObject:self->_subgraphName forKeyedSubscript:@"subgraphName"];
  [v5 setObject:-[BWNode description](self forKeyedSubscript:{"description"), @"description"}];
  if (v3)
  {
    [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_supportsConcurrentLiveInputCallbacks), @"supportsCurrentLiveInputCallbacks"}];
    [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_supportsLiveReconfiguration), @"supportsLiveReconfiguration"}];
    [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_singleInput), @"singleInput"}];
    [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_singleOutput), @"singleOutput"}];
    if (self->_singleInput)
    {
      v6 = [-[NSMutableArray objectAtIndexedSubscript:](self->_inputs objectAtIndexedSubscript:{0), "osStatePropertyList"}];
      v7 = @"nodeInput";
      v8 = v5;
    }

    else
    {
      v9 = [MEMORY[0x1E695DF70] array];
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

            [v9 addObject:{objc_msgSend(*(*(&v31 + 1) + 8 * i), "osStatePropertyList")}];
          }

          v12 = [(NSMutableArray *)inputs countByEnumeratingWithState:&v31 objects:v30 count:16];
        }

        while (v12);
      }

      v7 = @"nodeInputs";
      v8 = v5;
      v6 = v9;
    }

    [v8 setObject:v6 forKeyedSubscript:v7];
    if (self->_singleOutput)
    {
      v15 = [-[NSMutableArray objectAtIndexedSubscript:](self->_outputs objectAtIndexedSubscript:{0), "osStatePropertyList"}];
      v16 = @"nodeOutput";
      v17 = v5;
    }

    else
    {
      v18 = [MEMORY[0x1E695DF70] array];
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

            [v18 addObject:{objc_msgSend(*(*(&v26 + 1) + 8 * j), "osStatePropertyList")}];
          }

          v21 = [(NSMutableArray *)outputs countByEnumeratingWithState:&v26 objects:v25 count:16];
        }

        while (v21);
      }

      v16 = @"nodeOutputs";
      v17 = v5;
      v15 = v18;
    }

    [v17 setObject:v15 forKeyedSubscript:v16];
    [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_deferredPreparePriority), @"deferredPreparePriority"}];
    [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", -[BWNode requestedConfigurationID](self, "requestedConfigurationID")), @"requestedConfigurationID"}];
    [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", -[BWNode preparedConfigurationID](self, "preparedConfigurationID")), @"preparedConfigurationID"}];
    [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", -[BWNode liveConfigurationID](self, "liveConfigurationID")), @"liveConfigurationID"}];
  }

  return v5;
}

@end