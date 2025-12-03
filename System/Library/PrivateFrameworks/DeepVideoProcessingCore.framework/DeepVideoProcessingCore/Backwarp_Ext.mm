@interface Backwarp_Ext
- (BOOL)setupMetal;
- (Backwarp_Ext)initWithDevice:(id)device commmandQueue:(id)queue interleaved:(BOOL)interleaved;
- (int64_t)encodeBackwarpLossToCommandBuffer:(id)buffer first:(id)first second:(id)second flow:(id)flow timeScale:(float)scale destination:(id)destination;
- (int64_t)encodeUpscaleFlowToCommandBuffer:(id)buffer source:(id)source destination:(id)destination;
- (int64_t)encodeUpscaleFlowToCommandBuffer:(id)buffer source:(id)source upscaleRatio:(float)ratio destination:(id)destination;
- (void)dealloc;
@end

@implementation Backwarp_Ext

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = Backwarp_Ext;
  [(Backwarp_Ext *)&v2 dealloc];
}

- (Backwarp_Ext)initWithDevice:(id)device commmandQueue:(id)queue interleaved:(BOOL)interleaved
{
  v9.receiver = self;
  v9.super_class = Backwarp_Ext;
  interleaved = [(VEMetalBase *)&v9 initWithDevice:device commmandQueue:queue, interleaved];
  v6 = interleaved;
  if (interleaved && [(Backwarp_Ext *)interleaved setupMetal])
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

- (int64_t)encodeUpscaleFlowToCommandBuffer:(id)buffer source:(id)source destination:(id)destination
{
  if (!source || !destination)
  {
    return 12;
  }

  destinationCopy = destination;
  sourceCopy = source;
  bufferCopy = buffer;
  width = [destinationCopy width];
  *&v12 = width / [sourceCopy width];
  v13 = [(Backwarp_Ext *)self encodeUpscaleFlowToCommandBuffer:bufferCopy source:sourceCopy upscaleRatio:destinationCopy destination:v12];

  return v13;
}

- (int64_t)encodeUpscaleFlowToCommandBuffer:(id)buffer source:(id)source upscaleRatio:(float)ratio destination:(id)destination
{
  sourceCopy = source;
  ratioCopy = ratio;
  destinationCopy = destination;
  v12 = destinationCopy;
  v13 = 12;
  if (sourceCopy && destinationCopy)
  {
    computeCommandEncoder = [buffer computeCommandEncoder];
    if (computeCommandEncoder)
    {
      if ([sourceCopy arrayLength] < 2 || objc_msgSend(v12, "arrayLength") <= 1)
      {
        if ([sourceCopy arrayLength] >= 2 && objc_msgSend(v12, "arrayLength") == 1)
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

      [computeCommandEncoder setComputePipelineState:*(&self->super.super.isa + *v15)];
      [computeCommandEncoder setTexture:sourceCopy atIndex:0];
      [computeCommandEncoder setTexture:v12 atIndex:1];
      [computeCommandEncoder setBytes:&ratioCopy length:4 atIndex:0];
      v19[0] = ([v12 width] + 15) >> 4;
      v19[1] = ([v12 height] + 15) >> 4;
      v19[2] = 1;
      v17 = vdupq_n_s64(0x10uLL);
      v18 = 1;
      [computeCommandEncoder dispatchThreadgroups:v19 threadsPerThreadgroup:&v17];
      [computeCommandEncoder endEncoding];
      v13 = 0;
    }

    else
    {
      v13 = 9;
    }
  }

  return v13;
}

- (int64_t)encodeBackwarpLossToCommandBuffer:(id)buffer first:(id)first second:(id)second flow:(id)flow timeScale:(float)scale destination:(id)destination
{
  firstCopy = first;
  secondCopy = second;
  flowCopy = flow;
  destinationCopy = destination;
  v18 = destinationCopy;
  v19 = 12;
  if (firstCopy && secondCopy && flowCopy && destinationCopy)
  {
    computeCommandEncoder = [buffer computeCommandEncoder];
    if (computeCommandEncoder)
    {
      v21 = [(MTLDevice *)self->super._device newBufferWithLength:4 options:0];
      *[v21 contents] = scale;
      arrayLength = [flowCopy arrayLength];
      v23 = &OBJC_IVAR___Backwarp_Ext__backwarpLossInterleavedKernel;
      if (arrayLength > 1)
      {
        v23 = &OBJC_IVAR___Backwarp_Ext__backwarpLossKernel;
      }

      [computeCommandEncoder setComputePipelineState:*(&self->super.super.isa + *v23)];
      [computeCommandEncoder setTexture:firstCopy atIndex:0];
      [computeCommandEncoder setTexture:secondCopy atIndex:1];
      [computeCommandEncoder setTexture:flowCopy atIndex:2];
      [computeCommandEncoder setTexture:v18 atIndex:3];
      [computeCommandEncoder setBuffer:v21 offset:0 atIndex:0];
      v27[0] = ([v18 width] + 15) >> 4;
      v27[1] = ([v18 height] + 15) >> 4;
      v27[2] = 1;
      v25 = vdupq_n_s64(0x10uLL);
      v26 = 1;
      [computeCommandEncoder dispatchThreadgroups:v27 threadsPerThreadgroup:&v25];
      [computeCommandEncoder endEncoding];

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