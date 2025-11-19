@interface VCPBackwarp
- (VCPBackwarp)initWithDevice:(id)a3;
- (int)configureGPU;
- (int)encodeToCommandBuffer:(id)a3 input:(id)a4 output:(id)a5 flow:(id)a6 upscaledFlow:(id)a7;
@end

@implementation VCPBackwarp

- (VCPBackwarp)initWithDevice:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = VCPBackwarp;
  v6 = [(VCPBackwarp *)&v11 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_device, a3), [(VCPBackwarp *)v7 configureGPU]))
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
  v3 = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
  device = self->_device;
  v16 = 0;
  v5 = [(MTLDevice *)device newDefaultLibraryWithBundle:v3 error:&v16];
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

- (int)encodeToCommandBuffer:(id)a3 input:(id)a4 output:(id)a5 flow:(id)a6 upscaledFlow:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  v18 = -50;
  if (v13 && v14 && v15 && v16)
  {
    v19 = [v12 computeCommandEncoder];
    if (v19)
    {
      v20 = [v17 width];
      v21 = [v15 width];
      v22 = [(MTLDevice *)self->_device newBufferWithLength:4 options:0];
      *[v22 contents] = v20 / v21;
      v23 = [v13 width];
      v24 = [v13 height];
      [v19 setComputePipelineState:self->_backwarpKernel];
      [v19 setTexture:v13 atIndex:0];
      [v19 setTexture:v14 atIndex:1];
      [v19 setTexture:v15 atIndex:2];
      [v19 setTexture:v17 atIndex:3];
      [v19 setBuffer:v22 offset:0 atIndex:0];
      v28[0] = (v23 + 15) >> 4;
      v28[1] = (v24 + 15) >> 4;
      v28[2] = 1;
      v26 = vdupq_n_s64(0x10uLL);
      v27 = 1;
      [v19 dispatchThreadgroups:v28 threadsPerThreadgroup:&v26];
      [v19 endEncoding];

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