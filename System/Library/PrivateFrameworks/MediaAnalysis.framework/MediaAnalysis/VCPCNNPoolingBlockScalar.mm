@interface VCPCNNPoolingBlockScalar
- (int)forward;
@end

@implementation VCPCNNPoolingBlockScalar

- (int)forward
{
  WeakRetained = objc_loadWeakRetained(&self->super.super._inputSize);
  v4 = [WeakRetained objectAtIndexedSubscript:0];
  v23 = [v4 intValue];

  v5 = objc_loadWeakRetained(&self->super.super._inputSize);
  v6 = [v5 objectAtIndexedSubscript:1];
  v22 = [v6 intValue];

  v7 = objc_loadWeakRetained(&self->super.super._inputSize);
  v8 = [v7 objectAtIndexedSubscript:2];
  v9 = [v8 intValue];

  if (v23 >= 1)
  {
    v26 = 0;
    v24 = 0;
    v25 = v22 / self->super._px;
    v27 = (v9 / *(&self->super.super._executedOnGPU + 3));
    do
    {
      if (v25 >= 1)
      {
        for (i = 0; i != v25; ++i)
        {
          if (v27 >= 1)
          {
            for (j = 0; j != v27; ++j)
            {
              px = self->super._px;
              v13 = -1.0e10;
              if (px >= 1)
              {
                v14 = 0;
                v15 = *(&self->super.super._executedOnGPU + 3);
                v16 = v26;
                v13 = -1.0e10;
                do
                {
                  if (v15 >= 1)
                  {
                    v28 = v14;
                    for (k = 0; k < v15; ++k)
                    {
                      v18 = objc_loadWeakRetained(&self->super.super._input);
                      v19 = [v18 data];
                      v20 = k + v9 * (v16 + i * self->super._px) + j * *(&self->super.super._executedOnGPU + 3);
                      if (v13 < *(v19 + 4 * v20))
                      {
                        v13 = *(v19 + 4 * v20);
                      }

                      v15 = *(&self->super.super._executedOnGPU + 3);
                    }

                    px = self->super._px;
                    v14 = v28;
                  }

                  ++v14;
                  ++v16;
                }

                while (v14 < px);
              }

              [(VCPCNNData *)self->super.super._output data][4 * ((i + v24 * v25) * v27 + j)] = v13;
            }
          }
        }
      }

      v26 += v22;
      ++v24;
    }

    while (v24 != v23);
  }

  return 0;
}

@end