@interface VCPCNNPoolingBlock
+ (id)poolingBlockWithPoolX:(int)a3 poolY:(int)a4 chunk:(int)a5;
- (VCPCNNPoolingBlock)initWithParameters:(int)a3 poolY:(int)a4 chunk:(int)a5;
- (int)constructBlock:(id)a3 context:(id)a4;
@end

@implementation VCPCNNPoolingBlock

+ (id)poolingBlockWithPoolX:(int)a3 poolY:(int)a4 chunk:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v7 = *&a3;
  if (!+[VCPCNNMetalContext supportGPU])
  {
    +[VCPCNNMetalContext supportVectorForward];
  }

  v8 = [objc_alloc(objc_opt_class()) initWithParameters:v7 poolY:v6 chunk:v5];

  return v8;
}

- (VCPCNNPoolingBlock)initWithParameters:(int)a3 poolY:(int)a4 chunk:(int)a5
{
  v5 = 0;
  if (a3 >= 2 && a4 >= 2)
  {
    v11.receiver = self;
    v11.super_class = VCPCNNPoolingBlock;
    v9 = [(VCPCNNPoolingBlock *)&v11 init];
    if (v9)
    {
      *(&v9->super._executedOnGPU + 3) = a3;
      v9->_px = a4;
      v9->_py = a5;
      v9->super._executedOnGPU = 0;
    }

    self = v9;
    v5 = self;
  }

  return v5;
}

- (int)constructBlock:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_storeStrong(&self->super._context, a4);
  v8 = objc_storeWeak(&self->super._inputSize, v6);
  v9 = [v6 objectAtIndexedSubscript:0];
  v10 = [v9 intValue];

  WeakRetained = objc_loadWeakRetained(&self->super._inputSize);
  v12 = [WeakRetained objectAtIndexedSubscript:1];
  v13 = [v12 intValue];

  v14 = objc_loadWeakRetained(&self->super._inputSize);
  v15 = [v14 objectAtIndexedSubscript:2];
  v16 = [v15 intValue];

  v17 = [VCPCNNData cnnDataWithGPUContext:v7];
  output = self->super._output;
  self->super._output = v17;

  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  outputSize = self->super._outputSize;
  self->super._outputSize = v19;

  if (self->super._output && (v21 = self->super._outputSize) != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithInt:v10];
    [(NSMutableArray *)v21 addObject:v22];

    v23 = self->super._outputSize;
    v24 = [MEMORY[0x1E696AD98] numberWithInt:(v13 / self->_px)];
    [(NSMutableArray *)v23 addObject:v24];

    v25 = self->super._outputSize;
    v26 = [MEMORY[0x1E696AD98] numberWithInt:(v16 / *(&self->super._executedOnGPU + 3))];
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