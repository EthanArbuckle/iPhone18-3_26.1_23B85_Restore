@interface Backwarp_Ext
- (BOOL)setupMetal;
- (Backwarp_Ext)initWithDevice:(id)a3 commmandQueue:(id)a4 interleaved:(BOOL)a5;
- (int64_t)encodeBackwarpLossToCommandBuffer:(id)a3 first:(id)a4 second:(id)a5 flow:(id)a6 timeScale:(float)a7 destination:(id)a8;
- (int64_t)encodeUpscaleFlowToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5;
- (int64_t)encodeUpscaleFlowToCommandBuffer:(id)a3 source:(id)a4 upscaleRatio:(float)a5 destination:(id)a6;
- (void)dealloc;
@end

@implementation Backwarp_Ext

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = Backwarp_Ext;
  [(Backwarp_Ext *)&v2 dealloc];
}

- (Backwarp_Ext)initWithDevice:(id)a3 commmandQueue:(id)a4 interleaved:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = Backwarp_Ext;
  v5 = [(VEMetalBase *)&v9 initWithDevice:a3 commmandQueue:a4, a5];
  v6 = v5;
  if (v5 && [(Backwarp_Ext *)v5 setupMetal])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)setupMetal
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"opticalFlowMetalLib.metallib" ofType:0];
  v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v4];
  v6 = [(MTLDevice *)self->super._device newLibraryWithURL:v5 error:0];
  mtlLibrary = self->super._mtlLibrary;
  self->super._mtlLibrary = v6;

  v8 = [(VEMetalBase *)self createKernel:@"upscaleFlow1C"];
  OUTLINED_FUNCTION_0_14(v8);
  if (self->_flowUpscale1CKernel && ([(VEMetalBase *)self createKernel:@"upscaleFlowBothInterleaved"], v9 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_0_14(v9), self->_flowUpscaleBothInterleavedKernel) && ([(VEMetalBase *)self createKernel:@"upscaleFlowInterleaved"], v10 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_0_14(v10), self->_flowUpscaleOutputInterleavedKernel) && ([(VEMetalBase *)self createKernel:@"backwarpLossNonInterleaved"], v11 = objc_claimAutoreleasedReturnValue(), OUTLINED_FUNCTION_0_14(v11), self->_backwarpLossKernel))
  {
    v12 = [(VEMetalBase *)self createKernel:@"backwarpLossInterleaved"];
    OUTLINED_FUNCTION_0_14(v12);
    v13 = self->_backwarpLossInterleavedKernel != 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (int64_t)encodeUpscaleFlowToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5
{
  if (!a4 || !a5)
  {
    return 12;
  }

  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v8 width];
  *&v12 = v11 / [v9 width];
  v13 = [(Backwarp_Ext *)self encodeUpscaleFlowToCommandBuffer:v10 source:v9 upscaleRatio:v8 destination:v12];

  return v13;
}

- (int64_t)encodeUpscaleFlowToCommandBuffer:(id)a3 source:(id)a4 upscaleRatio:(float)a5 destination:(id)a6
{
  v10 = a4;
  v20 = a5;
  v11 = a6;
  v12 = v11;
  v13 = 12;
  if (v10 && v11)
  {
    v14 = [a3 computeCommandEncoder];
    if (v14)
    {
      if ([v10 arrayLength] < 2 || objc_msgSend(v12, "arrayLength") <= 1)
      {
        if ([v10 arrayLength] >= 2 && objc_msgSend(v12, "arrayLength") == 1)
        {
          v15 = &OBJC_IVAR___Backwarp_Ext__flowUpscaleOutputInterleavedKernel;
        }

        else
        {
          v15 = &OBJC_IVAR___Backwarp_Ext__flowUpscaleBothInterleavedKernel;
        }
      }

      else
      {
        v15 = &OBJC_IVAR___Backwarp_Ext__flowUpscale1CKernel;
      }

      [v14 setComputePipelineState:*(&self->super.super.isa + *v15)];
      [v14 setTexture:v10 atIndex:0];
      [v14 setTexture:v12 atIndex:1];
      [v14 setBytes:&v20 length:4 atIndex:0];
      v19[0] = ([v12 width] + 15) >> 4;
      v19[1] = ([v12 height] + 15) >> 4;
      v19[2] = 1;
      v17 = vdupq_n_s64(0x10uLL);
      v18 = 1;
      [v14 dispatchThreadgroups:v19 threadsPerThreadgroup:&v17];
      [v14 endEncoding];
      v13 = 0;
    }

    else
    {
      v13 = 9;
    }
  }

  return v13;
}

- (int64_t)encodeBackwarpLossToCommandBuffer:(id)a3 first:(id)a4 second:(id)a5 flow:(id)a6 timeScale:(float)a7 destination:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v18 = v17;
  v19 = 12;
  if (v14 && v15 && v16 && v17)
  {
    v20 = [a3 computeCommandEncoder];
    if (v20)
    {
      v21 = [(MTLDevice *)self->super._device newBufferWithLength:4 options:0];
      *[v21 contents] = a7;
      v22 = [v16 arrayLength];
      v23 = &OBJC_IVAR___Backwarp_Ext__backwarpLossInterleavedKernel;
      if (v22 > 1)
      {
        v23 = &OBJC_IVAR___Backwarp_Ext__backwarpLossKernel;
      }

      [v20 setComputePipelineState:*(&self->super.super.isa + *v23)];
      [v20 setTexture:v14 atIndex:0];
      [v20 setTexture:v15 atIndex:1];
      [v20 setTexture:v16 atIndex:2];
      [v20 setTexture:v18 atIndex:3];
      [v20 setBuffer:v21 offset:0 atIndex:0];
      v27[0] = ([v18 width] + 15) >> 4;
      v27[1] = ([v18 height] + 15) >> 4;
      v27[2] = 1;
      v25 = vdupq_n_s64(0x10uLL);
      v26 = 1;
      [v20 dispatchThreadgroups:v27 threadsPerThreadgroup:&v25];
      [v20 endEncoding];

      v19 = 0;
    }

    else
    {
      v19 = 9;
    }
  }

  return v19;
}

@end