@interface VCPCNNConvBlockScalar
- (int)forward;
- (int)readFromDisk:(__sFILE *)disk quantFactor:(signed __int16)factor;
@end

@implementation VCPCNNConvBlockScalar

- (int)readFromDisk:(__sFILE *)disk quantFactor:(signed __int16)factor
{
  factorCopy = factor;
  result = [VCPCNNData readFromDisk:"readFromDisk:quantFactor:" quantFactor:?];
  if (!result)
  {
    bias = self->super._bias;

    return [(VCPCNNData *)bias readFromDisk:disk quantFactor:factorCopy];
  }

  return result;
}

- (int)forward
{
  WeakRetained = objc_loadWeakRetained(&self->super.super._inputSize);
  v4 = [WeakRetained objectAtIndexedSubscript:1];
  intValue = [v4 intValue];

  v5 = objc_loadWeakRetained(&self->super.super._inputSize);
  v6 = [v5 objectAtIndexedSubscript:2];
  intValue2 = [v6 intValue];

  v7 = [(NSMutableArray *)self->super.super._outputSize objectAtIndexedSubscript:1];
  intValue3 = [v7 intValue];

  v8 = [(NSMutableArray *)self->super.super._outputSize objectAtIndexedSubscript:2];
  intValue4 = [v8 intValue];

  v9 = objc_loadWeakRetained(&self->super.super._inputSize);
  v10 = [v9 objectAtIndexedSubscript:0];
  intValue5 = [v10 intValue];

  v11 = [(NSMutableArray *)self->super.super._outputSize objectAtIndexedSubscript:0];
  intValue6 = [v11 intValue];

  if (intValue6 >= 1)
  {
    v35 = 0;
    v38 = 0;
    v13 = *(&self->super.super._executedOnGPU + 3);
    v14 = v13;
    do
    {
      if (v14 <= intValue)
      {
        v34 = 0;
        v33 = 0;
        do
        {
          if (v14 <= intValue2)
          {
            v16 = 0;
            v40 = v34;
            v13 = v14;
            do
            {
              v39 = v16;
              v17 = 0.0;
              v18 = 0.0;
              if (intValue5 >= 1)
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

                          data = [(VCPCNNData *)self->super._filter data];
                          v13 = *(&self->super.super._executedOnGPU + 3);
                          v18 = v18 + (v26 * data[v13 * (v23 + v21 * v13) + v24++]);
                        }

                        while (v24 < v13);
                      }

                      ++v23;
                      LODWORD(v20) = v20 + intValue2;
                      LODWORD(v22) = v13;
                      v28 = v13;
                    }

                    while (v23 < v13);
                  }

                  v19 = v43 + 1;
                  ++v21;
                  v20 = v42 + (intValue * intValue2);
                  v22 = v28;
                }

                while (v43 + 1 != intValue5);
              }

              if ((v18 + [(VCPCNNData *)self->super._bias data][4 * v38]) > 0.0)
              {
                v17 = v18 + [(VCPCNNData *)self->super._bias data][4 * v38];
              }

              [(VCPCNNData *)self->super.super._output data][4 * (self->super._padSize + v39 + (v33 + intValue3 * v38 + self->super._padSize) * intValue4)] = v17;
              v13 = *(&self->super.super._executedOnGPU + 3);
              ++v40;
              v16 = v39 + 1;
            }

            while (v39 < intValue2 - v13);
          }

          v34 += intValue2;
          v14 = v13;
          v15 = v13;
        }

        while (v33++ < intValue - v13);
      }

      else
      {
        v15 = v14;
      }

      v35 += intValue5;
      v14 = v15;
      ++v38;
    }

    while (v38 != intValue6);
  }

  return 0;
}

@end