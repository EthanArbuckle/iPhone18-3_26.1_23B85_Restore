@interface Postprocess
- (BOOL)createModules;
- (BOOL)setupMetal;
- (Postprocess)initWithDevice:(id)a3 commandQueue:(id)a4;
- (Postprocess)initWithMode;
- (int64_t)encodePostprocessOutputToCommandBuffer:(id)a3 input:(id)a4 loss:(id)a5 fullresEdge:(id)a6 destination:(id)a7;
- (int64_t)encodeSmoothAlphaMapToCommandBuffer:(id)a3 input:(id)a4 output:(id)a5;
- (void)dealloc;
@end

@implementation Postprocess

- (void)dealloc
{
  imageProcessUtility = self->_imageProcessUtility;
  self->_imageProcessUtility = 0;

  v4.receiver = self;
  v4.super_class = Postprocess;
  [(Postprocess *)&v4 dealloc];
}

- (BOOL)createModules
{
  device = self->super._device;
  result = 0;
  if (device || (v4 = MTLCreateSystemDefaultDevice(), v5 = self->super._device, self->super._device = v4, v5, (device = self->super._device) != 0))
  {
    if (self->super._commandQueue || (v6 = [(MTLDevice *)device newCommandQueue], commandQueue = self->super._commandQueue, self->super._commandQueue = v6, commandQueue, self->super._commandQueue))
    {
      v8 = [[ImageProcessUtility alloc] initWithDevice:self->super._device commmandQueue:self->super._commandQueue];
      imageProcessUtility = self->_imageProcessUtility;
      self->_imageProcessUtility = v8;

      if (self->_imageProcessUtility)
      {
        return 1;
      }
    }
  }

  return result;
}

- (Postprocess)initWithMode
{
  v6.receiver = self;
  v6.super_class = Postprocess;
  v2 = [(VEMetalBase *)&v6 init];
  v3 = v2;
  if (v2 && [(Postprocess *)v2 createModules]&& [(Postprocess *)v3 setupMetal])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (Postprocess)initWithDevice:(id)a3 commandQueue:(id)a4
{
  v8.receiver = self;
  v8.super_class = Postprocess;
  v4 = [(VEMetalBase *)&v8 initWithDevice:a3 commmandQueue:a4];
  v5 = v4;
  if (v4 && [(Postprocess *)v4 createModules]&& [(Postprocess *)v5 setupMetal])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)setupMetal
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"virtualShutterAngleMetalLib.metallib" ofType:0];
  v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v4];
  v6 = [(MTLDevice *)self->super._device newLibraryWithURL:v5 error:0];
  mtlLibrary = self->super._mtlLibrary;
  self->super._mtlLibrary = v6;

  v8 = [(VEMetalBase *)self createKernel:@"postprocess_output"];
  postprocessOutputKernel = self->_postprocessOutputKernel;
  self->_postprocessOutputKernel = v8;

  if (self->_postprocessOutputKernel && ([(VEMetalBase *)self createKernel:@"postprocess_planar_output"], v10 = objc_claimAutoreleasedReturnValue(), postprocessArrayOutputKernel = self->_postprocessArrayOutputKernel, self->_postprocessArrayOutputKernel = v10, postprocessArrayOutputKernel, self->_postprocessArrayOutputKernel))
  {
    v12 = [(VEMetalBase *)self createKernel:@"smoothAlpha"];
    smoothAlphaKernel = self->_smoothAlphaKernel;
    self->_smoothAlphaKernel = v12;

    v14 = self->_smoothAlphaKernel != 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (int64_t)encodePostprocessOutputToCommandBuffer:(id)a3 input:(id)a4 loss:(id)a5 fullresEdge:(id)a6 destination:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = 12;
  if (v12 && v13)
  {
    v17 = [a3 computeCommandEncoder];
    if (v17)
    {
      v18 = [v13 width];
      v25 = v18 / [v12 width];
      v19 = [v15 arrayLength];
      v20 = &OBJC_IVAR___Postprocess__postprocessArrayOutputKernel;
      if (v19 == 1)
      {
        v20 = &OBJC_IVAR___Postprocess__postprocessOutputKernel;
      }

      [v17 setComputePipelineState:*(&self->super.super.isa + *v20)];
      [v17 setTexture:v12 atIndex:0];
      [v17 setTexture:v13 atIndex:1];
      [v17 setTexture:v14 atIndex:2];
      [v17 setTexture:v15 atIndex:3];
      [v17 setBytes:&v25 length:4 atIndex:0];
      v24[0] = ([v15 width] + 15) >> 4;
      v24[1] = ([v15 height] + 15) >> 4;
      v24[2] = 1;
      v22 = vdupq_n_s64(0x10uLL);
      v23 = 1;
      [v17 dispatchThreadgroups:v24 threadsPerThreadgroup:&v22];
      [v17 endEncoding];
      v16 = 0;
    }

    else
    {
      v16 = 9;
    }
  }

  return v16;
}

- (int64_t)encodeSmoothAlphaMapToCommandBuffer:(id)a3 input:(id)a4 output:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  v11 = 12;
  if (v8 && v9)
  {
    v12 = [a3 computeCommandEncoder];
    v13 = v12;
    if (v12)
    {
      [v12 setComputePipelineState:self->_smoothAlphaKernel];
      [v13 setTexture:v8 atIndex:0];
      [v13 setTexture:v10 atIndex:1];
      v17[0] = ([v10 width] + 15) >> 4;
      v17[1] = ([v10 height] + 15) >> 4;
      v17[2] = 1;
      v15 = vdupq_n_s64(0x10uLL);
      v16 = 1;
      [v13 dispatchThreadgroups:v17 threadsPerThreadgroup:&v15];
      [v13 endEncoding];
      v11 = 0;
    }

    else
    {
      v11 = 9;
    }
  }

  return v11;
}

@end