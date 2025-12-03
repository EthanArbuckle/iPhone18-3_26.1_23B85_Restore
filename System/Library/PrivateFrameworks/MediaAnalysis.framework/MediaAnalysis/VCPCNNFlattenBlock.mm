@interface VCPCNNFlattenBlock
- (VCPCNNFlattenBlock)initWithParameters:(int)parameters;
- (int)constructBlock:(id)block context:(id)context;
- (int)forward;
@end

@implementation VCPCNNFlattenBlock

- (VCPCNNFlattenBlock)initWithParameters:(int)parameters
{
  v8.receiver = self;
  v8.super_class = VCPCNNFlattenBlock;
  v4 = [(VCPCNNFlattenBlock *)&v8 init];
  v5 = v4;
  if (v4)
  {
    *(&v4->super._executedOnGPU + 3) = parameters;
    v6 = v4;
  }

  return v5;
}

- (int)forward
{
  if (*(&self->super._executedOnGPU + 3) == 1)
  {
    data = [(VCPCNNData *)self->super._output data];
    WeakRetained = objc_loadWeakRetained(&self->super._input);
    data2 = [WeakRetained data];
    v6 = [(NSMutableArray *)self->super._outputSize objectAtIndexedSubscript:0];
    memcpy(data, data2, 4 * [v6 intValue]);
  }

  else
  {
    v7 = objc_loadWeakRetained(&self->super._inputSize);
    v8 = [v7 objectAtIndexedSubscript:0];
    intValue = [v8 intValue];

    v9 = objc_loadWeakRetained(&self->super._inputSize);
    v10 = [v9 objectAtIndexedSubscript:1];
    intValue2 = [v10 intValue];

    v11 = objc_loadWeakRetained(&self->super._inputSize);
    v12 = [v11 objectAtIndexedSubscript:2];
    intValue3 = [v12 intValue];

    v13 = objc_loadWeakRetained(&self->super._input);
    data3 = [v13 data];

    v15 = *(&self->super._executedOnGPU + 3);
    if (intValue / v15 >= 1)
    {
      v16 = 0;
      do
      {
        if (intValue2 >= 1)
        {
          v17 = 0;
          do
          {
            v26 = v17;
            if (intValue3 >= 1)
            {
              v18 = 0;
              v19 = v17 * intValue3;
              do
              {
                if (v15 >= 1)
                {
                  for (i = 0; i < v15; ++i)
                  {
                    v21 = *data3++;
                    *([(VCPCNNData *)self->super._output data]+ 4 * intValue3 * intValue2 * (i + v16 * v15) + 4 * v19 + 4 * v18) = v21;
                    v15 = *(&self->super._executedOnGPU + 3);
                  }
                }

                ++v18;
              }

              while (v18 != intValue3);
            }

            v17 = v26 + 1;
          }

          while (v26 + 1 != intValue2);
        }

        ++v16;
      }

      while (v16 < intValue / v15);
    }
  }

  return 0;
}

- (int)constructBlock:(id)block context:(id)context
{
  blockCopy = block;
  v6 = +[VCPCNNData cnnData];
  output = self->super._output;
  self->super._output = v6;

  if (self->super._output && (v8 = objc_alloc_init(MEMORY[0x1E695DF70]), v9 = self->super._outputSize, self->super._outputSize = v8, v9, self->super._outputSize))
  {
    v10 = objc_storeWeak(&self->super._inputSize, blockCopy);
    outputSize = self->super._outputSize;
    v12 = MEMORY[0x1E696AD98];
    v13 = v10;
    v23 = [blockCopy objectAtIndexedSubscript:0];
    intValue = [v23 intValue];
    WeakRetained = objc_loadWeakRetained(&self->super._inputSize);
    v21 = [WeakRetained objectAtIndexedSubscript:1];
    intValue2 = [v21 intValue];
    v16 = objc_loadWeakRetained(&self->super._inputSize);
    v17 = [v16 objectAtIndexedSubscript:2];
    v18 = [v12 numberWithInt:{intValue2 * intValue * objc_msgSend(v17, "intValue")}];
    [(NSMutableArray *)outputSize addObject:v18];

    [(VCPCNNData *)self->super._output setSize:self->super._outputSize];
    v19 = [(VCPCNNData *)self->super._output allocBuffers:self->super._generateOutput];
  }

  else
  {
    v19 = -108;
  }

  return v19;
}

@end