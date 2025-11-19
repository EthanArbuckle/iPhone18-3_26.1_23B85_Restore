@interface VCPCNNConvBlock
+ (Class)convBlockClass:(int)a3;
+ (id)convBlockWithFilterSize:(int)a3 filterNum:(int)a4 chunk:(int)a5 reLU:(BOOL)a6 padding:(BOOL)a7;
+ (id)convBlockWithFilterSize:(int)a3 filterNum:(int)a4 chunk:(int)a5 reLU:(BOOL)a6 padding:(BOOL)a7 groups:(int)a8 stride:(int)a9 batchNorm:(BOOL)a10;
- (VCPCNNConvBlock)initWithParameters:(int)a3 filterNum:(int)a4 chunk:(int)a5 reLU:(BOOL)a6 padding:(BOOL)a7 groups:(int)a8 stride:(int)a9 batchNorm:(BOOL)a10;
- (int)constructBlock:(id)a3 context:(id)a4;
@end

@implementation VCPCNNConvBlock

+ (Class)convBlockClass:(int)a3
{
  if (!+[VCPCNNMetalContext supportGPU])
  {
    +[VCPCNNMetalContext supportVectorForward];
  }

  v3 = objc_opt_class();

  return v3;
}

+ (id)convBlockWithFilterSize:(int)a3 filterNum:(int)a4 chunk:(int)a5 reLU:(BOOL)a6 padding:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = *&a5;
  v10 = *&a4;
  v11 = *&a3;
  v12 = [VCPCNNConvBlock convBlockClass:*&a5];
  if (v12)
  {
    BYTE4(v14) = 0;
    LODWORD(v14) = 1;
    v12 = [[v12 alloc] initWithParameters:v11 filterNum:v10 chunk:v9 reLU:v8 padding:v7 groups:1 stride:v14 batchNorm:?];
  }

  return v12;
}

+ (id)convBlockWithFilterSize:(int)a3 filterNum:(int)a4 chunk:(int)a5 reLU:(BOOL)a6 padding:(BOOL)a7 groups:(int)a8 stride:(int)a9 batchNorm:(BOOL)a10
{
  v10 = *&a8;
  v11 = a7;
  v12 = a6;
  v13 = *&a5;
  v14 = *&a4;
  v15 = *&a3;
  v16 = [VCPCNNConvBlock convBlockClass:*&a5];
  if (v16)
  {
    BYTE4(v18) = a10;
    LODWORD(v18) = a9;
    v16 = [[v16 alloc] initWithParameters:v15 filterNum:v14 chunk:v13 reLU:v12 padding:v11 groups:v10 stride:v18 batchNorm:?];
  }

  return v16;
}

- (VCPCNNConvBlock)initWithParameters:(int)a3 filterNum:(int)a4 chunk:(int)a5 reLU:(BOOL)a6 padding:(BOOL)a7 groups:(int)a8 stride:(int)a9 batchNorm:(BOOL)a10
{
  v11 = a7;
  v19.receiver = self;
  v19.super_class = VCPCNNConvBlock;
  result = [(VCPCNNConvBlock *)&v19 init];
  if (result)
  {
    v17 = a9;
    *(&result->super._executedOnGPU + 3) = a3;
    result->_filterSize = a4;
    result->_chunk = a5;
    result->_reLU = a6;
    result->_padding = v11;
    result->_padSize = 0;
    if (v11)
    {
      result->_padSize = (*(&result->super._executedOnGPU + 3) - 1) / 2;
    }

    if (a8 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = a8;
    }

    result->_groups = v18;
    if (a9 <= 1)
    {
      v17 = 1;
    }

    result->_stride = v17;
    result->_batchNorm = a10;
    result->super._executedOnGPU = 0;
  }

  return result;
}

- (int)constructBlock:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_storeStrong(&self->super._context, a4);
  v8 = [VCPCNNData cnnDataWithGPUContext:v7];
  output = self->super._output;
  self->super._output = v8;

  v10 = +[VCPCNNData cnnData];
  filter = self->_filter;
  self->_filter = v10;

  v12 = +[VCPCNNData cnnData];
  bias = self->_bias;
  self->_bias = v12;

  if (self->super._output && self->_filter && self->_bias && (objc_storeWeak(&self->super._inputSize, v6), v14 = objc_alloc_init(MEMORY[0x1E695DF70]), v15 = self->super._outputSize, self->super._outputSize = v14, v15, (v16 = self->super._outputSize) != 0))
  {
    v17 = [MEMORY[0x1E696AD98] numberWithInt:self->_filterSize];
    v47 = v6;
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

    v6 = v47;
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

      v6 = v47;
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