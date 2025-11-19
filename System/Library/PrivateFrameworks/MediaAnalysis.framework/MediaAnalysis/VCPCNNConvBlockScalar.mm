@interface VCPCNNConvBlockScalar
- (int)forward;
- (int)readFromDisk:(__sFILE *)a3 quantFactor:(signed __int16)a4;
@end

@implementation VCPCNNConvBlockScalar

- (int)readFromDisk:(__sFILE *)a3 quantFactor:(signed __int16)a4
{
  v4 = a4;
  result = [VCPCNNData readFromDisk:"readFromDisk:quantFactor:" quantFactor:?];
  if (!result)
  {
    bias = self->super._bias;

    return [(VCPCNNData *)bias readFromDisk:a3 quantFactor:v4];
  }

  return result;
}

- (int)forward
{
  WeakRetained = objc_loadWeakRetained(&self->super.super._inputSize);
  v4 = [WeakRetained objectAtIndexedSubscript:1];
  v32 = [v4 intValue];

  v5 = objc_loadWeakRetained(&self->super.super._inputSize);
  v6 = [v5 objectAtIndexedSubscript:2];
  v37 = [v6 intValue];

  v7 = [(NSMutableArray *)self->super.super._outputSize objectAtIndexedSubscript:1];
  v31 = [v7 intValue];

  v8 = [(NSMutableArray *)self->super.super._outputSize objectAtIndexedSubscript:2];
  v36 = [v8 intValue];

  v9 = objc_loadWeakRetained(&self->super.super._inputSize);
  v10 = [v9 objectAtIndexedSubscript:0];
  v41 = [v10 intValue];

  v11 = [(NSMutableArray *)self->super.super._outputSize objectAtIndexedSubscript:0];
  v12 = [v11 intValue];

  if (v12 >= 1)
  {
    v35 = 0;
    v38 = 0;
    v13 = *(&self->super.super._executedOnGPU + 3);
    v14 = v13;
    do
    {
      if (v14 <= v32)
      {
        v34 = 0;
        v33 = 0;
        do
        {
          if (v14 <= v37)
          {
            v16 = 0;
            v40 = v34;
            v13 = v14;
            do
            {
              v39 = v16;
              v17 = 0.0;
              v18 = 0.0;
              if (v41 >= 1)
              {
                v19 = 0;
                v20 = v40;
                v21 = v35;
                v22 = v13;
                do
                {
                  v43 = v19;
                  v42 = v20;
                  if (v22 < 1)
                  {
                    v28 = v22;
                  }

                  else
                  {
                    v23 = 0;
                    do
                    {
                      if (v22 >= 1)
                      {
                        v24 = 0;
                        do
                        {
                          v25 = objc_loadWeakRetained(&self->super.super._input);
                          v26 = *([v25 data] + 4 * (v20 + v24));

                          v27 = [(VCPCNNData *)self->super._filter data];
                          v13 = *(&self->super.super._executedOnGPU + 3);
                          v18 = v18 + (v26 * v27[v13 * (v23 + v21 * v13) + v24++]);
                        }

                        while (v24 < v13);
                      }

                      ++v23;
                      LODWORD(v20) = v20 + v37;
                      LODWORD(v22) = v13;
                      v28 = v13;
                    }

                    while (v23 < v13);
                  }

                  v19 = v43 + 1;
                  ++v21;
                  v20 = v42 + (v32 * v37);
                  v22 = v28;
                }

                while (v43 + 1 != v41);
              }

              if ((v18 + [(VCPCNNData *)self->super._bias data][4 * v38]) > 0.0)
              {
                v17 = v18 + [(VCPCNNData *)self->super._bias data][4 * v38];
              }

              [(VCPCNNData *)self->super.super._output data][4 * (self->super._padSize + v39 + (v33 + v31 * v38 + self->super._padSize) * v36)] = v17;
              v13 = *(&self->super.super._executedOnGPU + 3);
              ++v40;
              v16 = v39 + 1;
            }

            while (v39 < v37 - v13);
          }

          v34 += v37;
          v14 = v13;
          v15 = v13;
        }

        while (v33++ < v32 - v13);
      }

      else
      {
        v15 = v14;
      }

      v35 += v41;
      v14 = v15;
      ++v38;
    }

    while (v38 != v12);
  }

  return 0;
}

@end