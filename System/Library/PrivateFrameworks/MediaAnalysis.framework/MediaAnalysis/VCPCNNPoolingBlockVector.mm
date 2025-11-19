@interface VCPCNNPoolingBlockVector
- (int)forward;
@end

@implementation VCPCNNPoolingBlockVector

- (int)forward
{
  if (self->super._py != 4 || *(&self->super.super._executedOnGPU + 3) != 2 || self->super._px != 2)
  {
    return -50;
  }

  WeakRetained = objc_loadWeakRetained(&self->super.super._inputSize);
  v4 = [WeakRetained objectAtIndexedSubscript:0];
  v5 = [v4 intValue];

  v6 = objc_loadWeakRetained(&self->super.super._inputSize);
  v7 = [v6 objectAtIndexedSubscript:1];
  v8 = [v7 intValue];

  v9 = objc_loadWeakRetained(&self->super.super._inputSize);
  v10 = [v9 objectAtIndexedSubscript:2];
  v11 = [v10 intValue];

  px = self->super._px;
  v13 = *(&self->super.super._executedOnGPU + 3);
  v14 = objc_loadWeakRetained(&self->super.super._input);
  v15 = [v14 data];

  v16 = [(VCPCNNData *)self->super.super._output data];
  LODWORD(py) = self->super._py;
  if (v5 / py >= 1)
  {
    v18 = 0;
    v19 = v8 / px;
    v20 = v11 * v8 * py;
    v21 = py * v11;
    do
    {
      if (v19 >= 1)
      {
        v22 = 0;
        v23 = v15;
        do
        {
          v24 = v11 / v13;
          v25 = v23;
          if (v11 / v13 >= 1)
          {
            do
            {
              *v16 = vmaxq_f32(vmaxq_f32(*v25, *(v25 + 4 * v21)), vmaxq_f32(v25[1], *(v25 + 4 * v21 + 16)));
              py = self->super._py;
              v25 = (v25 + 8 * py);
              v16 += py;
              --v24;
            }

            while (v24);
          }

          v23 = (v23 + 8 * v21);
          ++v22;
        }

        while (v22 != v19);
      }

      v15 += 4 * v20;
      ++v18;
    }

    while (v18 < v5 / py);
  }

  return 0;
}

@end