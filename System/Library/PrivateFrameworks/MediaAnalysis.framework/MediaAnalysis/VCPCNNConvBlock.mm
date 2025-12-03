@interface VCPCNNConvBlock
+ (Class)convBlockClass:(int)class;
+ (id)convBlockWithFilterSize:(int)size filterNum:(int)num chunk:(int)chunk reLU:(BOOL)u padding:(BOOL)padding;
+ (id)convBlockWithFilterSize:(int)size filterNum:(int)num chunk:(int)chunk reLU:(BOOL)u padding:(BOOL)padding groups:(int)groups stride:(int)stride batchNorm:(BOOL)self0;
- (VCPCNNConvBlock)initWithParameters:(int)parameters filterNum:(int)num chunk:(int)chunk reLU:(BOOL)u padding:(BOOL)padding groups:(int)groups stride:(int)stride batchNorm:(BOOL)self0;
- (int)constructBlock:(id)block context:(id)context;
@end

@implementation VCPCNNConvBlock

+ (Class)convBlockClass:(int)class
{
  if (!+[VCPCNNMetalContext supportGPU])
  {
    +[VCPCNNMetalContext supportVectorForward];
  }

  v3 = objc_opt_class();

  return v3;
}

+ (id)convBlockWithFilterSize:(int)size filterNum:(int)num chunk:(int)chunk reLU:(BOOL)u padding:(BOOL)padding
{
  paddingCopy = padding;
  uCopy = u;
  v9 = *&chunk;
  v10 = *&num;
  v11 = *&size;
  v12 = [VCPCNNConvBlock convBlockClass:*&chunk];
  if (v12)
  {
    BYTE4(v14) = 0;
    LODWORD(v14) = 1;
    v12 = [[v12 alloc] initWithParameters:v11 filterNum:v10 chunk:v9 reLU:uCopy padding:paddingCopy groups:1 stride:v14 batchNorm:?];
  }

  return v12;
}

+ (id)convBlockWithFilterSize:(int)size filterNum:(int)num chunk:(int)chunk reLU:(BOOL)u padding:(BOOL)padding groups:(int)groups stride:(int)stride batchNorm:(BOOL)self0
{
  v10 = *&groups;
  paddingCopy = padding;
  uCopy = u;
  v13 = *&chunk;
  v14 = *&num;
  v15 = *&size;
  v16 = [VCPCNNConvBlock convBlockClass:*&chunk];
  if (v16)
  {
    BYTE4(v18) = norm;
    LODWORD(v18) = stride;
    v16 = [[v16 alloc] initWithParameters:v15 filterNum:v14 chunk:v13 reLU:uCopy padding:paddingCopy groups:v10 stride:v18 batchNorm:?];
  }

  return v16;
}

- (VCPCNNConvBlock)initWithParameters:(int)parameters filterNum:(int)num chunk:(int)chunk reLU:(BOOL)u padding:(BOOL)padding groups:(int)groups stride:(int)stride batchNorm:(BOOL)self0
{
  paddingCopy = padding;
  v19.receiver = self;
  v19.super_class = VCPCNNConvBlock;
  result = [(VCPCNNConvBlock *)&v19 init];
  if (result)
  {
    strideCopy = stride;
    *(&result->super._executedOnGPU + 3) = parameters;
    result->_filterSize = num;
    result->_chunk = chunk;
    result->_reLU = u;
    result->_padding = paddingCopy;
    result->_padSize = 0;
    if (paddingCopy)
    {
      result->_padSize = (*(&result->super._executedOnGPU + 3) - 1) / 2;
    }

    if (groups <= 1)
    {
      groupsCopy = 1;
    }

    else
    {
      groupsCopy = groups;
    }

    result->_groups = groupsCopy;
    if (stride <= 1)
    {
      strideCopy = 1;
    }

    result->_stride = strideCopy;
    result->_batchNorm = norm;
    result->super._executedOnGPU = 0;
  }

  return result;
}

- (int)constructBlock:(id)block context:(id)context
{
  blockCopy = block;
  contextCopy = context;
  objc_storeStrong(&self->super._context, context);
  v8 = [VCPCNNData cnnDataWithGPUContext:contextCopy];
  output = self->super._output;
  self->super._output = v8;

  v10 = +[VCPCNNData cnnData];
  filter = self->_filter;
  self->_filter = v10;

  v12 = +[VCPCNNData cnnData];
  bias = self->_bias;
  self->_bias = v12;

  if (self->super._output && self->_filter && self->_bias && (objc_storeWeak(&self->super._inputSize, blockCopy), v14 = objc_alloc_init(MEMORY[0x1E695DF70]), v15 = self->super._outputSize, self->super._outputSize = v14, v15, (v16 = self->super._outputSize) != 0))
  {
    v17 = [MEMORY[0x1E696AD98] numberWithInt:self->_filterSize];
    v47 = blockCopy;
    [(NSMutableArray *)v16 addObject:v17];

    LODWORD(v17) = self->_padding;
    outputSize = self->super._outputSize;
    v19 = MEMORY[0x1E696AD98];
    WeakRetained = objc_loadWeakRetained(&self->super._inputSize);
    v20 = [WeakRetained objectAtIndexedSubscript:1];
    if (v17)
    {
      v21 = [v19 numberWithInt:{(objc_msgSend(v20, "intValue") / self->_stride)}];
      [(NSMutableArray *)outputSize addObject:v21];

      v22 = self->super._outputSize;
      v23 = MEMORY[0x1E696AD98];
      v46 = objc_loadWeakRetained(&self->super._inputSize);
      v24 = [v46 objectAtIndexedSubscript:2];
      [v23 numberWithInt:{(objc_msgSend(v24, "intValue") / self->_stride)}];
    }

    else
    {
      v28 = [v19 numberWithInt:{((objc_msgSend(v20, "intValue") - *(&self->super._executedOnGPU + 3) + 1) / self->_stride)}];
      [(NSMutableArray *)outputSize addObject:v28];

      v22 = self->super._outputSize;
      v29 = MEMORY[0x1E696AD98];
      v46 = objc_loadWeakRetained(&self->super._inputSize);
      v24 = [v46 objectAtIndexedSubscript:2];
      [v29 numberWithInt:{((objc_msgSend(v24, "intValue") - *(&self->super._executedOnGPU + 3) + 1) / self->_stride)}];
    }
    v25 = ;
    [(NSMutableArray *)v22 addObject:v25];

    blockCopy = v47;
    [(VCPCNNData *)self->super._output setSize:self->super._outputSize];
    v26 = [(VCPCNNData *)self->super._output allocBuffers:self->super._generateOutput];
    if (!v26)
    {
      v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(VCPCNNData *)self->_filter setSize:v30];

      v31 = [(VCPCNNData *)self->_filter size];
      v32 = [MEMORY[0x1E696AD98] numberWithInt:self->_filterSize];
      [v31 addObject:v32];

      v33 = [(VCPCNNData *)self->_filter size];
      v34 = MEMORY[0x1E696AD98];
      v35 = objc_loadWeakRetained(&self->super._inputSize);
      v36 = [v35 objectAtIndexedSubscript:0];
      v37 = [v34 numberWithInt:{(objc_msgSend(v36, "intValue") / self->_groups)}];
      [v33 addObject:v37];

      blockCopy = v47;
      v38 = [(VCPCNNData *)self->_filter size];
      v39 = [MEMORY[0x1E696AD98] numberWithInt:*(&self->super._executedOnGPU + 3)];
      [v38 addObject:v39];

      v40 = [(VCPCNNData *)self->_filter size];
      v41 = [MEMORY[0x1E696AD98] numberWithInt:*(&self->super._executedOnGPU + 3)];
      [v40 addObject:v41];

      v26 = [(VCPCNNData *)self->_filter allocBuffers:0];
      if (!v26)
      {
        v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [(VCPCNNData *)self->_bias setSize:v42];

        v43 = [(VCPCNNData *)self->_bias size];
        v44 = [MEMORY[0x1E696AD98] numberWithInt:self->_filterSize];
        [v43 addObject:v44];

        v26 = [(VCPCNNData *)self->_bias allocBuffers:0];
      }
    }
  }

  else
  {
    v26 = -108;
  }

  return v26;
}

@end