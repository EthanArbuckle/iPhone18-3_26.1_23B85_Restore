@interface Correlation
- (Correlation)initWithDevice:(id)device interleaved:(BOOL)interleaved;
- (void)calcCorrelation:(id)correlation with:(id)with output:(id)output;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)buffer first:(id)first second:(id)second destination:(id)destination;
- (void)setupMetal;
@end

@implementation Correlation

- (Correlation)initWithDevice:(id)device interleaved:(BOOL)interleaved
{
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = Correlation;
  v8 = [(Correlation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, device);
    v9->_interleaved = interleaved;
    [(Correlation *)v9 setupMetal];
  }

  return v9;
}

- (void)setupMetal
{
  newCommandQueue = [(MTLDevice *)self->_device newCommandQueue];
  commandQueue = self->_commandQueue;
  self->_commandQueue = newCommandQueue;

  v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.FRC"];
  v6 = [v5 URLForResource:@"default" withExtension:@"metallib"];
  device = self->_device;
  if (v6)
  {
    newDefaultLibrary = [(MTLDevice *)device newLibraryWithURL:v6 error:0];
  }

  else
  {
    newDefaultLibrary = [(MTLDevice *)device newDefaultLibrary];
  }

  mtlLibrary = self->_mtlLibrary;
  self->_mtlLibrary = newDefaultLibrary;

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

- (void)calcCorrelation:(id)correlation with:(id)with output:(id)output
{
  commandQueue = self->_commandQueue;
  outputCopy = output;
  withCopy = with;
  correlationCopy = correlation;
  commandBuffer = [(MTLCommandQueue *)commandQueue commandBuffer];
  [(Correlation *)self encodeToCommandBuffer:commandBuffer first:correlationCopy second:withCopy destination:outputCopy];

  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
}

- (void)encodeToCommandBuffer:(id)buffer first:(id)first second:(id)second destination:(id)destination
{
  firstCopy = first;
  secondCopy = second;
  destinationCopy = destination;
  v13 = destinationCopy;
  if (firstCopy && secondCopy && destinationCopy)
  {
    computeCommandEncoder = [buffer computeCommandEncoder];
    if (computeCommandEncoder)
    {
      arrayLength = [v13 arrayLength];
      v16 = 48;
      if (arrayLength > 0x51)
      {
        v16 = 56;
      }

      v17 = 32;
      if (arrayLength > 0x51)
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

      [computeCommandEncoder setComputePipelineState:v20];
      [computeCommandEncoder setTexture:firstCopy atIndex:0];
      [computeCommandEncoder setTexture:secondCopy atIndex:1];
      [computeCommandEncoder setTexture:v13 atIndex:2];
      v24[0] = (v19 + [v13 width] - 1) >> v21;
      v24[1] = ([v13 height] + 15) >> 4;
      v24[2] = 1;
      v22 = v19;
      v23 = xmmword_24A8FF080;
      [computeCommandEncoder dispatchThreadgroups:v24 threadsPerThreadgroup:&v22];
      [computeCommandEncoder endEncoding];
    }
  }

  else
  {
    NSLog(&cfstr_InputsAndDesti.isa, firstCopy, secondCopy, destinationCopy);
  }
}

@end