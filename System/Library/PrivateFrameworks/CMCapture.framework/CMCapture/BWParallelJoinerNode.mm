@interface BWParallelJoinerNode
- (BWParallelJoinerNode)initWithNumberOfInputs:(int)inputs mediaType:(unsigned int)type;
- (void)dealloc;
- (void)handleNodeError:(id)error forInput:(id)input;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWParallelJoinerNode

- (BWParallelJoinerNode)initWithNumberOfInputs:(int)inputs mediaType:(unsigned int)type
{
  v8.receiver = self;
  v8.super_class = BWParallelJoinerNode;
  v5 = [(BWFunnelNode *)&v8 initWithNumberOfInputs:*&inputs mediaType:*&type];
  v6 = v5;
  if (v5)
  {
    v5->_inputsCount = inputs;
    v5->_receivedBuffers = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6->_sentErrorCountForID = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWParallelJoinerNode;
  [(BWFunnelNode *)&v3 dealloc];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if (buffer)
  {
    v6 = CMGetAttachment(buffer, @"ParallelSplitterInputBuffer", 0);
    v7 = v6;
    if (v6)
    {
      CFRetain(v6);
    }

    CMRemoveAttachment(buffer, @"ParallelSplitterInputBuffer");
    v8 = [MEMORY[0x1E696B098] valueWithPointer:v7];
    v9 = [(NSMutableDictionary *)self->_receivedBuffers objectForKeyedSubscript:v8];
    if (!v9)
    {
      v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:self->_inputsCount];
      [(NSMutableDictionary *)self->_receivedBuffers setObject:v9 forKeyedSubscript:v8];
    }

    [v9 addObject:buffer];
    if ([v9 count] == self->_inputsCount)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v10 = [v9 countByEnumeratingWithState:&v17 objects:v16 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v18;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v17 + 1) + 8 * i);
            if (v14 != v7)
            {
              CMPropagateAttachments(v14, v7);
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v17 objects:v16 count:16];
        }

        while (v11);
      }

      [(NSMutableDictionary *)self->_receivedBuffers removeObjectForKey:v8];
      [(BWNodeOutput *)self->super.super._output emitSampleBuffer:v7];
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
    output = self->super.super._output;

    [(BWNodeOutput *)output emitSampleBuffer:?];
  }
}

- (void)handleNodeError:(id)error forInput:(id)input
{
  v6 = -[NSMutableDictionary objectForKeyedSubscript:](self->_sentErrorCountForID, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(error, "hash")}]);
  if (v6)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v6, "intValue") + 1}];
  }

  else
  {
    [(BWNodeOutput *)self->super.super._output emitNodeError:error];
    v7 = &unk_1F2246C78;
  }

  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_sentErrorCountForID, "setObject:forKeyedSubscript:", v7, [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(error, "hash")}]);
  if ([v7 intValue] == self->_inputsCount)
  {
    sentErrorCountForID = self->_sentErrorCountForID;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(error, "hash")}];

    [(NSMutableDictionary *)sentErrorCountForID removeObjectForKey:v9];
  }
}

@end