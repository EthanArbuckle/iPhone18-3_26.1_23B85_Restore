@interface MetalToolBox
- (BOOL)setupMetal;
- (MetalToolBox)initWithDevice:(id)a3 commmandQueue:(id)a4;
- (int64_t)ConvertRGB:(id)a3 toGray:(id)a4 withCoef:(BOOL)a5 waitForComplete:;
- (int64_t)ConvertYUV:(id)a3 toGray:(id)a4 waitForComplete:(BOOL)a5;
- (int64_t)encodeConvertRGBAFromSource:(id)a3 output:(id)a4 withCoef:(BOOL)a5 waitForComplete:;
- (int64_t)encodeRGB2GrayToCommandBuffer:(id)a3 InputRGB:(id)a4 ToOutput:(id)a5 withCoef:;
- (int64_t)encodeYUV2GrayToCommandBuffer:(id)a3 InputYUV:(id)a4 ToOutput:(id)a5;
@end

@implementation MetalToolBox

- (MetalToolBox)initWithDevice:(id)a3 commmandQueue:(id)a4
{
  v13.receiver = self;
  v13.super_class = MetalToolBox;
  v4 = [(VEMetalBase *)&v13 initWithDevice:a3 commmandQueue:a4];
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

- (int64_t)encodeYUV2GrayToCommandBuffer:(id)a3 InputYUV:(id)a4 ToOutput:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  v11 = 12;
  if (v8 && v9)
  {
    v12 = [a3 computeCommandEncoder];
    if (v12)
    {
      v13 = [v10 width];
      v18 = v13 / [v8 width];
      [v12 setComputePipelineState:self->_yuv2gray];
      [v12 setTexture:v8 atIndex:0];
      OUTLINED_FUNCTION_1_14();
      [v12 setBytes:&v18 length:4 atIndex:0];
      v17[0] = ([v10 width] + 15) >> 4;
      v17[1] = ([v10 height] + 15) >> 4;
      v17[2] = self;
      v15 = vdupq_n_s64(0x10uLL);
      v16 = self;
      [v12 dispatchThreadgroups:v17 threadsPerThreadgroup:&v15];
      [v12 endEncoding];
      v11 = 0;
    }

    else
    {
      v11 = 9;
    }
  }

  return v11;
}

- (int64_t)ConvertYUV:(id)a3 toGray:(id)a4 waitForComplete:(BOOL)a5
{
  v5 = 12;
  if (a3 && a4)
  {
    v6 = a5;
    commandQueue = self->super._commandQueue;
    v10 = a4;
    v11 = a3;
    [(MTLCommandQueue *)commandQueue commandBuffer];
    objc_claimAutoreleasedReturnValue();
    v5 = [OUTLINED_FUNCTION_0_13() encodeYUV2GrayToCommandBuffer:? InputYUV:? ToOutput:?];

    if (!v5)
    {
      [a3 commit];
      [(VEMetalBase *)self commandBufferWait:a3 flag:v6];
    }
  }

  return v5;
}

- (int64_t)encodeRGB2GrayToCommandBuffer:(id)a3 InputRGB:(id)a4 ToOutput:(id)a5 withCoef:
{
  v16 = v5;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  v12 = 12;
  if (v9 && v10)
  {
    v13 = [a3 computeCommandEncoder];
    if (v13)
    {
      v21 = v16;
      v14 = [v11 width];
      v20 = v14 / [v9 width];
      [v13 setComputePipelineState:self->_rgb2gray];
      [v13 setTexture:v9 atIndex:0];
      OUTLINED_FUNCTION_1_14();
      [v13 setBytes:&v21 length:16 atIndex:0];
      [v13 setBytes:&v20 length:4 atIndex:1];
      v19[0] = ([v11 width] + 15) >> 4;
      v19[1] = ([v11 height] + 15) >> 4;
      v19[2] = self;
      v17 = vdupq_n_s64(0x10uLL);
      v18 = self;
      [v13 dispatchThreadgroups:v19 threadsPerThreadgroup:&v17];
      [v13 endEncoding];
      v12 = 0;
    }

    else
    {
      v12 = 9;
    }
  }

  return v12;
}

- (int64_t)ConvertRGB:(id)a3 toGray:(id)a4 withCoef:(BOOL)a5 waitForComplete:
{
  v6 = 12;
  if (a3 && a4)
  {
    v7 = a5;
    commandQueue = self->super._commandQueue;
    v14 = v5;
    v11 = a4;
    v12 = a3;
    [(MTLCommandQueue *)commandQueue commandBuffer];
    objc_claimAutoreleasedReturnValue();
    v6 = [OUTLINED_FUNCTION_0_13() encodeRGB2GrayToCommandBuffer:v14 InputRGB:? ToOutput:? withCoef:?];

    if (!v6)
    {
      [a3 commit];
      [(VEMetalBase *)self commandBufferWait:a3 flag:v7];
    }
  }

  return v6;
}

- (int64_t)encodeConvertRGBAFromSource:(id)a3 output:(id)a4 withCoef:(BOOL)a5 waitForComplete:
{
  v6 = a5;
  v22 = v5;
  v9 = a3;
  v10 = a4;
  v11 = v10;
  v12 = 12;
  if (v9 && v10)
  {
    v13 = [(MTLCommandQueue *)self->super._commandQueue commandBuffer];
    v14 = [v11 width];
    v15 = [v11 height];
    v16 = [v13 computeCommandEncoder];
    if (v16)
    {
      v17 = (v15 + 15) >> 4;
      v18 = (v14 + 15) >> 4;
      v19 = [v9 arrayLength];
      v20 = &OBJC_IVAR___MetalToolBox__convertPlanerRGBA2Gray;
      if (v19 == 1)
      {
        v20 = &OBJC_IVAR___MetalToolBox__convertPackedRGBA2Gray;
      }

      [v16 setComputePipelineState:{*(&self->super.super.isa + *v20), v22}];
      [v16 setTexture:v9 atIndex:0];
      [v16 setTexture:v11 atIndex:1];
      v27 = v23;
      [v16 setBytes:&v27 length:16 atIndex:0];
      v26[0] = v18;
      v26[1] = v17;
      v26[2] = 1;
      v24 = vdupq_n_s64(0x10uLL);
      v25 = 1;
      [v16 dispatchThreadgroups:v26 threadsPerThreadgroup:&v24];
      [v16 endEncoding];
      [v13 commit];
      [(VEMetalBase *)self commandBufferWait:v13 flag:v6];
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