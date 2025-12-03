@interface VCPCNNPoolingBlock
+ (id)poolingBlockWithPoolX:(int)x poolY:(int)y chunk:(int)chunk;
- (VCPCNNPoolingBlock)initWithParameters:(int)parameters poolY:(int)y chunk:(int)chunk;
- (int)constructBlock:(id)block context:(id)context;
@end

@implementation VCPCNNPoolingBlock

+ (id)poolingBlockWithPoolX:(int)x poolY:(int)y chunk:(int)chunk
{
  v5 = *&chunk;
  v6 = *&y;
  v7 = *&x;
  if (!+[VCPCNNMetalContext supportGPU])
  {
    +[VCPCNNMetalContext supportVectorForward];
  }

  v8 = [objc_alloc(objc_opt_class()) initWithParameters:v7 poolY:v6 chunk:v5];

  return v8;
}

- (VCPCNNPoolingBlock)initWithParameters:(int)parameters poolY:(int)y chunk:(int)chunk
{
  selfCopy = 0;
  if (parameters >= 2 && y >= 2)
  {
    v11.receiver = self;
    v11.super_class = VCPCNNPoolingBlock;
    v9 = [(VCPCNNPoolingBlock *)&v11 init];
    if (v9)
    {
      *(&v9->super._executedOnGPU + 3) = parameters;
      v9->_px = y;
      v9->_py = chunk;
      v9->super._executedOnGPU = 0;
    }

    self = v9;
    selfCopy = self;
  }

  return selfCopy;
}

- (int)constructBlock:(id)block context:(id)context
{
  blockCopy = block;
  contextCopy = context;
  objc_storeStrong(&self->super._context, context);
  v8 = objc_storeWeak(&self->super._inputSize, blockCopy);
  v9 = [blockCopy objectAtIndexedSubscript:0];
  intValue = [v9 intValue];

  WeakRetained = objc_loadWeakRetained(&self->super._inputSize);
  v12 = [WeakRetained objectAtIndexedSubscript:1];
  intValue2 = [v12 intValue];

  v14 = objc_loadWeakRetained(&self->super._inputSize);
  v15 = [v14 objectAtIndexedSubscript:2];
  intValue3 = [v15 intValue];

  v17 = [VCPCNNData cnnDataWithGPUContext:contextCopy];
  output = self->super._output;
  self->super._output = v17;

  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  outputSize = self->super._outputSize;
  self->super._outputSize = v19;

  if (self->super._output && (v21 = self->super._outputSize) != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithInt:intValue];
    [(NSMutableArray *)v21 addObject:v22];

    v23 = self->super._outputSize;
    v24 = [MEMORY[0x1E696AD98] numberWithInt:(intValue2 / self->_px)];
    [(NSMutableArray *)v23 addObject:v24];

    v25 = self->super._outputSize;
    v26 = [MEMORY[0x1E696AD98] numberWithInt:(intValue3 / *(&self->super._executedOnGPU + 3))];
    [(NSMutableArray *)v25 addObject:v26];

    [(VCPCNNData *)self->super._output setSize:self->super._outputSize];
    v27 = [(VCPCNNData *)self->super._output allocBuffers:self->super._generateOutput];
  }

  else
  {
    v27 = -108;
  }

  return v27;
}

@end