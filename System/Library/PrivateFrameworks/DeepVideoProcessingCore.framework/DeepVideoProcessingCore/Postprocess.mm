@interface Postprocess
- (BOOL)createModules;
- (BOOL)setupMetal;
- (Postprocess)initWithDevice:(id)device commandQueue:(id)queue;
- (Postprocess)initWithMode;
- (int64_t)encodePostprocessOutputToCommandBuffer:(id)buffer input:(id)input loss:(id)loss fullresEdge:(id)edge destination:(id)destination;
- (int64_t)encodeSmoothAlphaMapToCommandBuffer:(id)buffer input:(id)input output:(id)output;
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

- (Postprocess)initWithDevice:(id)device commandQueue:(id)queue
{
  v8.receiver = self;
  v8.super_class = Postprocess;
  v4 = [(VEMetalBase *)&v8 initWithDevice:device commmandQueue:queue];
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

- (int64_t)encodePostprocessOutputToCommandBuffer:(id)buffer input:(id)input loss:(id)loss fullresEdge:(id)edge destination:(id)destination
{
  inputCopy = input;
  lossCopy = loss;
  edgeCopy = edge;
  destinationCopy = destination;
  v16 = 12;
  if (inputCopy && lossCopy)
  {
    computeCommandEncoder = [buffer computeCommandEncoder];
    if (computeCommandEncoder)
    {
      width = [lossCopy width];
      v25 = width / [inputCopy width];
      arrayLength = [destinationCopy arrayLength];
      v20 = &OBJC_IVAR___Postprocess__postprocessArrayOutputKernel;
      if (arrayLength == 1)
      {
        v20 = &OBJC_IVAR___Postprocess__postprocessOutputKernel;
      }

      [computeCommandEncoder setComputePipelineState:*(&self->super.super.isa + *v20)];
      [computeCommandEncoder setTexture:inputCopy atIndex:0];
      [computeCommandEncoder setTexture:lossCopy atIndex:1];
      [computeCommandEncoder setTexture:edgeCopy atIndex:2];
      [computeCommandEncoder setTexture:destinationCopy atIndex:3];
      [computeCommandEncoder setBytes:&v25 length:4 atIndex:0];
      v24[0] = ([destinationCopy width] + 15) >> 4;
      v24[1] = ([destinationCopy height] + 15) >> 4;
      v24[2] = 1;
      v22 = vdupq_n_s64(0x10uLL);
      v23 = 1;
      [computeCommandEncoder dispatchThreadgroups:v24 threadsPerThreadgroup:&v22];
      [computeCommandEncoder endEncoding];
      v16 = 0;
    }

    else
    {
      v16 = 9;
    }
  }

  return v16;
}

- (int64_t)encodeSmoothAlphaMapToCommandBuffer:(id)buffer input:(id)input output:(id)output
{
  inputCopy = input;
  outputCopy = output;
  v10 = outputCopy;
  v11 = 12;
  if (inputCopy && outputCopy)
  {
    computeCommandEncoder = [buffer computeCommandEncoder];
    v13 = computeCommandEncoder;
    if (computeCommandEncoder)
    {
      [computeCommandEncoder setComputePipelineState:self->_smoothAlphaKernel];
      [v13 setTexture:inputCopy atIndex:0];
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