@interface VCPCNNPoolingBlockGPU
- (int)forward;
@end

@implementation VCPCNNPoolingBlockGPU

- (int)forward
{
  if (!*&self->super._chunk)
  {
    WeakRetained = objc_loadWeakRetained(&self->super.super._inputSize);
    v4 = [WeakRetained objectAtIndexedSubscript:1];
    v5 = [v4 intValue];

    v6 = objc_loadWeakRetained(&self->super.super._inputSize);
    v7 = [v6 objectAtIndexedSubscript:2];
    LODWORD(WeakRetained) = [v7 intValue];

    v8 = objc_alloc(MEMORY[0x1E69749C0]);
    v9 = [(VCPCNNMetalContext *)self->super.super._context device];
    v10 = [v8 initWithDevice:v9 kernelWidth:*(&self->super.super._executedOnGPU + 3) kernelHeight:self->super._px strideInPixelsX:*(&self->super.super._executedOnGPU + 3) strideInPixelsY:self->super._px];
    v11 = *&self->super._chunk;
    *&self->super._chunk = v10;

    v12 = WeakRetained / *(&self->super.super._executedOnGPU + 3);
    v13 = *&self->super._chunk;
    v14 = v5 / self->super._px;
    v27 = vdupq_n_s64(1uLL);
    v28 = 0;
    [v13 setOffset:&v27];
    v15 = *&self->super._chunk;
    v27 = 0uLL;
    v28 = 0;
    v29 = v12;
    v30 = v14;
    v31 = 1;
    [v15 setClipRect:&v27];
    [*&self->super._chunk setEdgeMode:0];
  }

  if (!self->super.super._executedOnGPU || (result = [(VCPCNNData *)self->super.super._output reallocGPUTemporalBuffers]) == 0)
  {
    v17 = [(VCPCNNMetalContext *)self->super.super._context commandBuffer];
    if (v17)
    {
      v18 = v17;
      v19 = objc_loadWeakRetained(&self->super.super._input);
      v20 = [v19 mpsImg];
      if (v20)
      {
        v21 = [(VCPCNNData *)self->super.super._output mpsImg];

        if (v21)
        {
          v22 = *&self->super._chunk;
          v23 = [(VCPCNNMetalContext *)self->super.super._context commandBuffer];
          v24 = objc_loadWeakRetained(&self->super.super._input);
          v25 = [v24 mpsImg];
          v26 = [(VCPCNNData *)self->super.super._output mpsImg];
          [v22 encodeToCommandBuffer:v23 sourceImage:v25 destinationImage:v26];

          result = 0;
          self->super.super._executedOnGPU = 1;
          return result;
        }
      }

      else
      {
      }
    }

    return -108;
  }

  return result;
}

@end