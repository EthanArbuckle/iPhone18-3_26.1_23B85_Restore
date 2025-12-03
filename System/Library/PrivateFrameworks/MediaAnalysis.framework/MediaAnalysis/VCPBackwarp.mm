@interface VCPBackwarp
- (VCPBackwarp)initWithDevice:(id)device;
- (int)configureGPU;
- (int)encodeToCommandBuffer:(id)buffer input:(id)input output:(id)output flow:(id)flow upscaledFlow:(id)upscaledFlow;
@end

@implementation VCPBackwarp

- (VCPBackwarp)initWithDevice:(id)device
{
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = VCPBackwarp;
  v6 = [(VCPBackwarp *)&v11 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_device, device), [(VCPBackwarp *)v7 configureGPU]))
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;

  return v9;
}

- (int)configureGPU
{
  vcp_mediaAnalysisBundle = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
  device = self->_device;
  v16 = 0;
  v5 = [(MTLDevice *)device newDefaultLibraryWithBundle:vcp_mediaAnalysisBundle error:&v16];
  v6 = v16;
  mtlLibrary = self->_mtlLibrary;
  self->_mtlLibrary = v5;

  v8 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"backwarpNonInterleaved"];
  if (v8)
  {
    v9 = self->_device;
    v15 = v6;
    v10 = [(MTLDevice *)v9 newComputePipelineStateWithFunction:v8 error:&v15];
    v11 = v15;

    backwarpKernel = self->_backwarpKernel;
    self->_backwarpKernel = v10;

    if (self->_backwarpKernel)
    {
      v13 = 0;
    }

    else
    {
      v13 = -108;
    }

    v6 = v11;
  }

  else
  {
    v13 = -4;
  }

  return v13;
}

- (int)encodeToCommandBuffer:(id)buffer input:(id)input output:(id)output flow:(id)flow upscaledFlow:(id)upscaledFlow
{
  bufferCopy = buffer;
  inputCopy = input;
  outputCopy = output;
  flowCopy = flow;
  upscaledFlowCopy = upscaledFlow;
  v17 = upscaledFlowCopy;
  v18 = -50;
  if (inputCopy && outputCopy && flowCopy && upscaledFlowCopy)
  {
    computeCommandEncoder = [bufferCopy computeCommandEncoder];
    if (computeCommandEncoder)
    {
      width = [v17 width];
      width2 = [flowCopy width];
      v22 = [(MTLDevice *)self->_device newBufferWithLength:4 options:0];
      *[v22 contents] = width / width2;
      width3 = [inputCopy width];
      height = [inputCopy height];
      [computeCommandEncoder setComputePipelineState:self->_backwarpKernel];
      [computeCommandEncoder setTexture:inputCopy atIndex:0];
      [computeCommandEncoder setTexture:outputCopy atIndex:1];
      [computeCommandEncoder setTexture:flowCopy atIndex:2];
      [computeCommandEncoder setTexture:v17 atIndex:3];
      [computeCommandEncoder setBuffer:v22 offset:0 atIndex:0];
      v28[0] = (width3 + 15) >> 4;
      v28[1] = (height + 15) >> 4;
      v28[2] = 1;
      v26 = vdupq_n_s64(0x10uLL);
      v27 = 1;
      [computeCommandEncoder dispatchThreadgroups:v28 threadsPerThreadgroup:&v26];
      [computeCommandEncoder endEncoding];

      v18 = 0;
    }

    else
    {
      v18 = -108;
    }
  }

  return v18;
}

@end