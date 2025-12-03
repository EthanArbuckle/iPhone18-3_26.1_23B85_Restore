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
    intValue = [v4 intValue];

    v6 = objc_loadWeakRetained(&self->super.super._inputSize);
    v7 = [v6 objectAtIndexedSubscript:2];
    LODWORD(WeakRetained) = [v7 intValue];

    v8 = objc_alloc(MEMORY[0x1E69749C0]);
    device = [(VCPCNNMetalContext *)self->super.super._context device];
    v10 = [v8 initWithDevice:device kernelWidth:*(&self->super.super._executedOnGPU + 3) kernelHeight:self->super._px strideInPixelsX:*(&self->super.super._executedOnGPU + 3) strideInPixelsY:self->super._px];
    v11 = *&self->super._chunk;
    *&self->super._chunk = v10;

    v12 = WeakRetained / *(&self->super.super._executedOnGPU + 3);
    v13 = *&self->super._chunk;
    v14 = intValue / self->super._px;
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
    commandBuffer = [(VCPCNNMetalContext *)self->super.super._context commandBuffer];
    if (commandBuffer)
    {
      v18 = commandBuffer;
      v19 = objc_loadWeakRetained(&self->super.super._input);
      mpsImg = [v19 mpsImg];
      if (mpsImg)
      {
        mpsImg2 = [(VCPCNNData *)self->super.super._output mpsImg];

        if (mpsImg2)
        {
          v22 = *&self->super._chunk;
          commandBuffer2 = [(VCPCNNMetalContext *)self->super.super._context commandBuffer];
          v24 = objc_loadWeakRetained(&self->super.super._input);
          mpsImg3 = [v24 mpsImg];
          mpsImg4 = [(VCPCNNData *)self->super.super._output mpsImg];
          [v22 encodeToCommandBuffer:commandBuffer2 sourceImage:mpsImg3 destinationImage:mpsImg4];

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