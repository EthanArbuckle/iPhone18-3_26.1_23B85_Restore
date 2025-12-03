@interface BWDeferredProcessingSourceNode
- (BOOL)start:(id *)start;
- (BOOL)stop:(id *)stop;
- (BWDeferredProcessingSourceNode)initWithPortTypes:(id)types attributes:(id)attributes colorSpaceProperties:(int)properties;
- (id)portTypeForOutput:(id)output;
- (void)dealloc;
- (void)processBuffer:(opaqueCMSampleBuffer *)buffer;
@end

@implementation BWDeferredProcessingSourceNode

- (BWDeferredProcessingSourceNode)initWithPortTypes:(id)types attributes:(id)attributes colorSpaceProperties:(int)properties
{
  v5 = *&properties;
  v24.receiver = self;
  v24.super_class = BWDeferredProcessingSourceNode;
  v7 = [(BWNode *)&v24 init];
  if (v7)
  {
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7->_emitSamplesDispatchQueue = dispatch_queue_create("com.apple.coremedia.capture.deferredprocessorsourcenode.emit-samples-queue", v8);
    v7->_outputsByPortType = objc_alloc_init(MEMORY[0x1E695DF90]);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [types countByEnumeratingWithState:&v20 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        v12 = 0;
        do
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(types);
          }

          v13 = *(*(&v20 + 1) + 8 * v12);
          v14 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v7];
          [(NSMutableDictionary *)v7->_outputsByPortType setObject:v14 forKeyedSubscript:v13];
          v15 = [[BWVideoFormatRequirements alloc] initWithPixelBufferAttributes:attributes];
          v18 = [MEMORY[0x1E696AD98] numberWithInt:v5];
          -[BWVideoFormatRequirements setSupportedColorSpaceProperties:](v15, "setSupportedColorSpaceProperties:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1]);
          [(BWNodeOutput *)v14 setFormatRequirements:v15];
          [(BWNodeOutput *)v14 setProvidesPixelBufferPool:0];
          [(BWNode *)v7 addOutput:v14];

          ++v12;
        }

        while (v10 != v12);
        v10 = [types countByEnumeratingWithState:&v20 objects:v19 count:16];
      }

      while (v10);
    }
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWDeferredProcessingSourceNode;
  [(BWNode *)&v3 dealloc];
}

- (id)portTypeForOutput:(id)output
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  outputsByPortType = self->_outputsByPortType;
  v6 = [(NSMutableDictionary *)outputsByPortType countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v14;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v14 != v8)
    {
      objc_enumerationMutation(outputsByPortType);
    }

    v10 = *(*(&v13 + 1) + 8 * v9);
    if ([(NSMutableDictionary *)self->_outputsByPortType objectForKeyedSubscript:v10]== output)
    {
      return v10;
    }

    if (v7 == ++v9)
    {
      v7 = [(NSMutableDictionary *)outputsByPortType countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (BOOL)start:(id *)start
{
  emitSamplesDispatchQueue = self->_emitSamplesDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__BWDeferredProcessingSourceNode_start___block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_sync(emitSamplesDispatchQueue, block);
  return 1;
}

_BYTE *__40__BWDeferredProcessingSourceNode_start___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[144] & 1) == 0)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [result outputs];
    result = [v3 countByEnumeratingWithState:&v8 objects:v7 count:16];
    if (result)
    {
      v4 = result;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v6++) makeConfiguredFormatLive];
        }

        while (v4 != v6);
        result = [v3 countByEnumeratingWithState:&v8 objects:v7 count:16];
        v4 = result;
      }

      while (result);
    }

    *(*(a1 + 32) + 144) = 1;
  }

  return result;
}

- (BOOL)stop:(id *)stop
{
  emitSamplesDispatchQueue = self->_emitSamplesDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__BWDeferredProcessingSourceNode_stop___block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_sync(emitSamplesDispatchQueue, block);
  return 1;
}

uint64_t __39__BWDeferredProcessingSourceNode_stop___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 144) == 1)
  {
    *(v1 + 144) = 0;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v2 = [*(result + 32) outputs];
    result = [v2 countByEnumeratingWithState:&v7 objects:v6 count:16];
    if (result)
    {
      v3 = result;
      v4 = *v8;
      do
      {
        v5 = 0;
        do
        {
          if (*v8 != v4)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v7 + 1) + 8 * v5++) markEndOfLiveOutput];
        }

        while (v3 != v5);
        result = [v2 countByEnumeratingWithState:&v7 objects:v6 count:16];
        v3 = result;
      }

      while (result);
    }
  }

  return result;
}

- (void)processBuffer:(opaqueCMSampleBuffer *)buffer
{
  v5 = -[BWDeferredProcessingSourceNode outputForPortType:](self, "outputForPortType:", [CMGetAttachment(buffer *off_1E798A3C8]);
  emitSamplesDispatchQueue = self->_emitSamplesDispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__BWDeferredProcessingSourceNode_processBuffer___block_invoke;
  block[3] = &unk_1E798FE50;
  block[4] = self;
  block[5] = v5;
  block[6] = buffer;
  dispatch_sync(emitSamplesDispatchQueue, block);
}

uint64_t __48__BWDeferredProcessingSourceNode_processBuffer___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 144) == 1)
  {
    return [*(result + 40) emitSampleBuffer:*(result + 48)];
  }

  return result;
}

@end