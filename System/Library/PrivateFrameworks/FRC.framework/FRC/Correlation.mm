@interface Correlation
- (Correlation)initWithDevice:(id)a3 interleaved:(BOOL)a4;
- (void)calcCorrelation:(id)a3 with:(id)a4 output:(id)a5;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)a3 first:(id)a4 second:(id)a5 destination:(id)a6;
- (void)setupMetal;
@end

@implementation Correlation

- (Correlation)initWithDevice:(id)a3 interleaved:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = Correlation;
  v8 = [(Correlation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, a3);
    v9->_interleaved = a4;
    [(Correlation *)v9 setupMetal];
  }

  return v9;
}

- (void)setupMetal
{
  v3 = [(MTLDevice *)self->_device newCommandQueue];
  commandQueue = self->_commandQueue;
  self->_commandQueue = v3;

  v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.FRC"];
  v6 = [v5 URLForResource:@"default" withExtension:@"metallib"];
  device = self->_device;
  if (v6)
  {
    v8 = [(MTLDevice *)device newLibraryWithURL:v6 error:0];
  }

  else
  {
    v8 = [(MTLDevice *)device newDefaultLibrary];
  }

  mtlLibrary = self->_mtlLibrary;
  self->_mtlLibrary = v8;

  v10 = objc_opt_new();
  v36 = 0;
  v35 = 0;
  v11 = objc_alloc_init(MEMORY[0x277CD6D30]);
  [v11 setThreadGroupSizeIsMultipleOfThreadExecutionWidth:1];
  [v10 setConstantValue:&v36 type:53 withName:@"concatenateInputTensor"];
  v12 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"correlationNonInterleaved" constantValues:v10 error:0];
  [v11 setComputeFunction:v12];

  v13 = self->_device;
  v34 = 0;
  v14 = [(MTLDevice *)v13 newComputePipelineStateWithDescriptor:v11 options:0 reflection:&v35 error:&v34];
  v15 = v34;
  correlationKernel = self->_correlationKernel;
  self->_correlationKernel = v14;

  if (!self->_correlationKernel)
  {
    NSLog(&cfstr_ErrorFailedToC_0.isa);
  }

  v36 = 1;
  [v10 setConstantValue:&v36 type:53 withName:@"concatenateInputTensor"];
  v17 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"correlationNonInterleaved" constantValues:v10 error:0];
  [v11 setComputeFunction:v17];

  v18 = self->_device;
  v33 = v15;
  v19 = [(MTLDevice *)v18 newComputePipelineStateWithDescriptor:v11 options:0 reflection:&v35 error:&v33];
  v20 = v33;

  correlationWithConcatKernel = self->_correlationWithConcatKernel;
  self->_correlationWithConcatKernel = v19;

  if (!self->_correlationWithConcatKernel)
  {
    NSLog(&cfstr_ErrorFailedToC_0.isa);
  }

  if ([(MTLDevice *)self->_device supportsFamily:1008])
  {
    v36 = 0;
    [v10 setConstantValue:&v36 type:53 withName:@"concatenateInputTensor"];
    v22 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"correlation9x9SIMD" constantValues:v10 error:0];
    [v11 setComputeFunction:v22];

    v23 = self->_device;
    v32 = v20;
    v24 = [(MTLDevice *)v23 newComputePipelineStateWithDescriptor:v11 options:0 reflection:&v35 error:&v32];
    v25 = v32;

    correlationSIMDKernel = self->_correlationSIMDKernel;
    self->_correlationSIMDKernel = v24;

    if (!self->_correlationSIMDKernel)
    {
      NSLog(&cfstr_ErrorFailedToC_0.isa);
    }

    v36 = 1;
    [v10 setConstantValue:&v36 type:53 withName:@"concatenateInputTensor"];
    v27 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:@"correlation9x9SIMD" constantValues:v10 error:0];
    [v11 setComputeFunction:v27];

    v28 = self->_device;
    v31 = v25;
    v29 = [(MTLDevice *)v28 newComputePipelineStateWithDescriptor:v11 options:0 reflection:&v35 error:&v31];
    v20 = v31;

    correlationWithConcatSIMDKernel = self->_correlationWithConcatSIMDKernel;
    self->_correlationWithConcatSIMDKernel = v29;

    if (!self->_correlationWithConcatSIMDKernel)
    {
      NSLog(&cfstr_ErrorFailedToC_0.isa);
    }
  }

  [(Correlation *)self setUseSIMDShuffle:1];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = Correlation;
  [(Correlation *)&v2 dealloc];
}

- (void)calcCorrelation:(id)a3 with:(id)a4 output:(id)a5
{
  commandQueue = self->_commandQueue;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(MTLCommandQueue *)commandQueue commandBuffer];
  [(Correlation *)self encodeToCommandBuffer:v12 first:v11 second:v10 destination:v9];

  [v12 commit];
  [v12 waitUntilCompleted];
}

- (void)encodeToCommandBuffer:(id)a3 first:(id)a4 second:(id)a5 destination:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (v10 && v11 && v12)
  {
    v14 = [a3 computeCommandEncoder];
    if (v14)
    {
      v15 = [v13 arrayLength];
      v16 = 48;
      if (v15 > 0x51)
      {
        v16 = 56;
      }

      v17 = 32;
      if (v15 > 0x51)
      {
        v17 = 40;
      }

      if (self->_useSIMDShuffle)
      {
        v18 = v16;
      }

      else
      {
        v18 = v17;
      }

      if (self->_useSIMDShuffle)
      {
        v19 = 8;
      }

      else
      {
        v19 = 16;
      }

      v20 = *(&self->super.isa + v18);
      if (self->_useSIMDShuffle)
      {
        v21 = 3;
      }

      else
      {
        v21 = 4;
      }

      [v14 setComputePipelineState:v20];
      [v14 setTexture:v10 atIndex:0];
      [v14 setTexture:v11 atIndex:1];
      [v14 setTexture:v13 atIndex:2];
      v24[0] = (v19 + [v13 width] - 1) >> v21;
      v24[1] = ([v13 height] + 15) >> 4;
      v24[2] = 1;
      v22 = v19;
      v23 = xmmword_24A8FF080;
      [v14 dispatchThreadgroups:v24 threadsPerThreadgroup:&v22];
      [v14 endEncoding];
    }
  }

  else
  {
    NSLog(&cfstr_InputsAndDesti.isa, v10, v11, v12);
  }
}

@end