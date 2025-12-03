@interface MetalToolBox
- (BOOL)setupMetal;
- (MetalToolBox)initWithDevice:(id)device commmandQueue:(id)queue;
- (int64_t)ConvertRGB:(id)b toGray:(id)gray withCoef:(BOOL)coef waitForComplete:;
- (int64_t)ConvertYUV:(id)v toGray:(id)gray waitForComplete:(BOOL)complete;
- (int64_t)encodeConvertRGBAFromSource:(id)source output:(id)output withCoef:(BOOL)coef waitForComplete:;
- (int64_t)encodeRGB2GrayToCommandBuffer:(id)buffer InputRGB:(id)b ToOutput:(id)output withCoef:;
- (int64_t)encodeYUV2GrayToCommandBuffer:(id)buffer InputYUV:(id)v ToOutput:(id)output;
@end

@implementation MetalToolBox

- (MetalToolBox)initWithDevice:(id)device commmandQueue:(id)queue
{
  v13.receiver = self;
  v13.super_class = MetalToolBox;
  v4 = [(VEMetalBase *)&v13 initWithDevice:device commmandQueue:queue];
  if (v4 && ([MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "pathForResource:ofType:", @"opticalFlowMetalLib.metallib", 0), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(objc_alloc(MEMORY[0x277CBEBC0]), "initWithString:", v6), v8 = -[MTLDevice newLibraryWithURL:error:](v4->super._device, "newLibraryWithURL:error:", v7, 0), mtlLibrary = v4->super._mtlLibrary, v4->super._mtlLibrary = v8, mtlLibrary, v10 = -[MetalToolBox setupMetal](v4, "setupMetal"), v7, v6, v5, v10))
  {
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)setupMetal
{
  v3 = [(VEMetalBase *)self createKernel:@"convertYUVToGray"];
  OUTLINED_FUNCTION_6(v3);
  result = 0;
  if (self->_yuv2gray)
  {
    v4 = [(VEMetalBase *)self createKernel:@"convertRGBToGray"];
    OUTLINED_FUNCTION_6(v4);
    if (self->_rgb2gray)
    {
      v5 = [(VEMetalBase *)self createKernel:@"convertPackedRGBA2Gray"];
      OUTLINED_FUNCTION_6(v5);
      if (self->_convertPackedRGBA2Gray)
      {
        v6 = [(VEMetalBase *)self createKernel:@"convertPlanarRGBA2Gray"];
        OUTLINED_FUNCTION_6(v6);
        if (self->_convertPlanerRGBA2Gray)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

- (int64_t)encodeYUV2GrayToCommandBuffer:(id)buffer InputYUV:(id)v ToOutput:(id)output
{
  vCopy = v;
  outputCopy = output;
  v10 = outputCopy;
  v11 = 12;
  if (vCopy && outputCopy)
  {
    computeCommandEncoder = [buffer computeCommandEncoder];
    if (computeCommandEncoder)
    {
      width = [v10 width];
      v18 = width / [vCopy width];
      [computeCommandEncoder setComputePipelineState:self->_yuv2gray];
      [computeCommandEncoder setTexture:vCopy atIndex:0];
      OUTLINED_FUNCTION_1_14();
      [computeCommandEncoder setBytes:&v18 length:4 atIndex:0];
      v17[0] = ([v10 width] + 15) >> 4;
      v17[1] = ([v10 height] + 15) >> 4;
      v17[2] = self;
      v15 = vdupq_n_s64(0x10uLL);
      selfCopy = self;
      [computeCommandEncoder dispatchThreadgroups:v17 threadsPerThreadgroup:&v15];
      [computeCommandEncoder endEncoding];
      v11 = 0;
    }

    else
    {
      v11 = 9;
    }
  }

  return v11;
}

- (int64_t)ConvertYUV:(id)v toGray:(id)gray waitForComplete:(BOOL)complete
{
  v5 = 12;
  if (v && gray)
  {
    completeCopy = complete;
    commandQueue = self->super._commandQueue;
    grayCopy = gray;
    vCopy = v;
    [(MTLCommandQueue *)commandQueue commandBuffer];
    objc_claimAutoreleasedReturnValue();
    v5 = [OUTLINED_FUNCTION_0_13() encodeYUV2GrayToCommandBuffer:? InputYUV:? ToOutput:?];

    if (!v5)
    {
      [v commit];
      [(VEMetalBase *)self commandBufferWait:v flag:completeCopy];
    }
  }

  return v5;
}

- (int64_t)encodeRGB2GrayToCommandBuffer:(id)buffer InputRGB:(id)b ToOutput:(id)output withCoef:
{
  v16 = v5;
  bCopy = b;
  outputCopy = output;
  v11 = outputCopy;
  v12 = 12;
  if (bCopy && outputCopy)
  {
    computeCommandEncoder = [buffer computeCommandEncoder];
    if (computeCommandEncoder)
    {
      v21 = v16;
      width = [v11 width];
      v20 = width / [bCopy width];
      [computeCommandEncoder setComputePipelineState:self->_rgb2gray];
      [computeCommandEncoder setTexture:bCopy atIndex:0];
      OUTLINED_FUNCTION_1_14();
      [computeCommandEncoder setBytes:&v21 length:16 atIndex:0];
      [computeCommandEncoder setBytes:&v20 length:4 atIndex:1];
      v19[0] = ([v11 width] + 15) >> 4;
      v19[1] = ([v11 height] + 15) >> 4;
      v19[2] = self;
      v17 = vdupq_n_s64(0x10uLL);
      selfCopy = self;
      [computeCommandEncoder dispatchThreadgroups:v19 threadsPerThreadgroup:&v17];
      [computeCommandEncoder endEncoding];
      v12 = 0;
    }

    else
    {
      v12 = 9;
    }
  }

  return v12;
}

- (int64_t)ConvertRGB:(id)b toGray:(id)gray withCoef:(BOOL)coef waitForComplete:
{
  v6 = 12;
  if (b && gray)
  {
    coefCopy = coef;
    commandQueue = self->super._commandQueue;
    v14 = v5;
    grayCopy = gray;
    bCopy = b;
    [(MTLCommandQueue *)commandQueue commandBuffer];
    objc_claimAutoreleasedReturnValue();
    v6 = [OUTLINED_FUNCTION_0_13() encodeRGB2GrayToCommandBuffer:v14 InputRGB:? ToOutput:? withCoef:?];

    if (!v6)
    {
      [b commit];
      [(VEMetalBase *)self commandBufferWait:b flag:coefCopy];
    }
  }

  return v6;
}

- (int64_t)encodeConvertRGBAFromSource:(id)source output:(id)output withCoef:(BOOL)coef waitForComplete:
{
  coefCopy = coef;
  v22 = v5;
  sourceCopy = source;
  outputCopy = output;
  v11 = outputCopy;
  v12 = 12;
  if (sourceCopy && outputCopy)
  {
    commandBuffer = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
    width = [v11 width];
    height = [v11 height];
    computeCommandEncoder = [commandBuffer computeCommandEncoder];
    if (computeCommandEncoder)
    {
      v17 = (height + 15) >> 4;
      v18 = (width + 15) >> 4;
      arrayLength = [sourceCopy arrayLength];
      v20 = &OBJC_IVAR___MetalToolBox__convertPlanerRGBA2Gray;
      if (arrayLength == 1)
      {
        v20 = &OBJC_IVAR___MetalToolBox__convertPackedRGBA2Gray;
      }

      [computeCommandEncoder setComputePipelineState:{*(&self->super.super.isa + *v20), v22}];
      [computeCommandEncoder setTexture:sourceCopy atIndex:0];
      [computeCommandEncoder setTexture:v11 atIndex:1];
      v27 = v23;
      [computeCommandEncoder setBytes:&v27 length:16 atIndex:0];
      v26[0] = v18;
      v26[1] = v17;
      v26[2] = 1;
      v24 = vdupq_n_s64(0x10uLL);
      v25 = 1;
      [computeCommandEncoder dispatchThreadgroups:v26 threadsPerThreadgroup:&v24];
      [computeCommandEncoder endEncoding];
      [commandBuffer commit];
      [(VEMetalBase *)self commandBufferWait:commandBuffer flag:coefCopy];
      v12 = 0;
    }

    else
    {
      v12 = 9;
    }
  }

  return v12;
}

@end