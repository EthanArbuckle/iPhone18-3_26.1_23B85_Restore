@interface VCPCNNFullConnectionBlockScalar
- (int)forward;
@end

@implementation VCPCNNFullConnectionBlockScalar

- (int)forward
{
  v3 = 0;
  v4 = 1;
  while (1)
  {
    WeakRetained = objc_loadWeakRetained(&self->super.super._inputSize);
    v6 = [WeakRetained count];

    if (v6 <= v3)
    {
      break;
    }

    v7 = objc_loadWeakRetained(&self->super.super._inputSize);
    v8 = [v7 objectAtIndexedSubscript:v3];
    v4 *= [v8 intValue];

    ++v3;
  }

  v9 = [(NSMutableArray *)self->super.super._outputSize objectAtIndexedSubscript:0];
  intValue = [v9 intValue];

  data = [(VCPCNNData *)self->super.super._output data];
  v12 = objc_loadWeakRetained(&self->super.super._input);
  data2 = [v12 data];

  if (intValue >= 1)
  {
    v14 = 0;
    weight = self->super._weight;
    bias = self->super._bias;
    neuronType = self->super._neuronType;
    do
    {
      data[v14] = 0.0;
      v18 = 0.0;
      if (v4 >= 1)
      {
        for (i = 0; i != v4; ++i)
        {
          v18 = v18 + (*(data2 + i * 4) * weight[i]);
          data[v14] = v18;
        }
      }

      v20 = bias[v14] + v18;
      v21 = fmaxf(v20, 0.0);
      if (neuronType == 1)
      {
        v20 = v21;
      }

      data[v14++] = v20;
      weight += v4;
    }

    while (v14 != intValue);
  }

  return 0;
}

@end