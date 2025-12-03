@interface OFCorrelation
- (OFCorrelation)initWithDevice:(id)device interleaved:(BOOL)interleaved;
- (void)calcCorrelation:(id)correlation with:(id)with output:(id)output;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)buffer first:(id)first second:(id)second destination:(id)destination;
- (void)setupMetal;
@end

@implementation OFCorrelation

- (OFCorrelation)initWithDevice:(id)device interleaved:(BOOL)interleaved
{
  deviceCopy = device;
  v15.receiver = self;
  v15.super_class = OFCorrelation;
  v8 = [(VEMetalBase *)&v15 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 pathForResource:@"opticalFlowMetalLib.metallib" ofType:0];
    v11 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v10];
    v12 = [(MTLDevice *)v8->super._device newLibraryWithURL:v11 error:0];
    mtlLibrary = v8->super._mtlLibrary;
    v8->super._mtlLibrary = v12;

    objc_storeStrong(&v8->super._device, device);
    v8->_interleaved = interleaved;
    [(OFCorrelation *)v8 setupMetal];
  }

  return v8;
}

- (void)setupMetal
{
  v3 = objc_opt_new();
  v12 = 0;
  [v3 setConstantValue:&v12 type:53 withName:@"concatenateInputTensor"];
  v4 = [(VEMetalBase *)self createKernel:@"correlationNonInterleaved" constantValues:v3];
  correlationKernel = self->_correlationKernel;
  self->_correlationKernel = v4;

  v12 = 1;
  [v3 setConstantValue:&v12 type:53 withName:@"concatenateInputTensor"];
  v6 = [(VEMetalBase *)self createKernel:@"correlationNonInterleaved" constantValues:v3];
  correlationWithConcatKernel = self->_correlationWithConcatKernel;
  self->_correlationWithConcatKernel = v6;

  if ([(MTLDevice *)self->super._device supportsFamily:1008])
  {
    v12 = 0;
    [v3 setConstantValue:&v12 type:53 withName:@"concatenateInputTensor"];
    v8 = [(VEMetalBase *)self createKernel:@"correlation9x9SIMD" constantValues:v3];
    correlationSIMDKernel = self->_correlationSIMDKernel;
    self->_correlationSIMDKernel = v8;

    v12 = 1;
    [v3 setConstantValue:&v12 type:53 withName:@"concatenateInputTensor"];
    v10 = [(VEMetalBase *)self createKernel:@"correlation9x9SIMD" constantValues:v3];
    correlationWithConcatSIMDKernel = self->_correlationWithConcatSIMDKernel;
    self->_correlationWithConcatSIMDKernel = v10;
  }

  [(OFCorrelation *)self setUseSIMDShuffle:1];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OFCorrelation;
  [(OFCorrelation *)&v2 dealloc];
}

- (void)calcCorrelation:(id)correlation with:(id)with output:(id)output
{
  commandQueue = self->super._commandQueue;
  outputCopy = output;
  withCopy = with;
  correlationCopy = correlation;
  commandBuffer = [(MTLCommandQueue *)commandQueue commandBuffer];
  [(OFCorrelation *)self encodeToCommandBuffer:commandBuffer first:correlationCopy second:withCopy destination:outputCopy];

  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
}

- (void)encodeToCommandBuffer:(id)buffer first:(id)first second:(id)second destination:(id)destination
{
  v28 = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  firstCopy = first;
  secondCopy = second;
  destinationCopy = destination;
  v14 = destinationCopy;
  if (firstCopy && secondCopy && destinationCopy)
  {
    computeCommandEncoder = [bufferCopy computeCommandEncoder];
    if (computeCommandEncoder)
    {
      arrayLength = [v14 arrayLength];
      v17 = &OBJC_IVAR___OFCorrelation__correlationSIMDKernel;
      if (arrayLength > 0x51)
      {
        v17 = &OBJC_IVAR___OFCorrelation__correlationWithConcatSIMDKernel;
      }

      v18 = &OBJC_IVAR___OFCorrelation__correlationWithConcatKernel;
      if (arrayLength <= 0x51)
      {
        v18 = &OBJC_IVAR___OFCorrelation__correlationKernel;
      }

      if (self->_useSIMDShuffle)
      {
        v19 = v17;
      }

      else
      {
        v19 = v18;
      }

      if (self->_useSIMDShuffle)
      {
        v20 = 8;
      }

      else
      {
        v20 = 16;
      }

      v21 = *(&self->super.super.isa + *v19);
      if (self->_useSIMDShuffle)
      {
        v22 = 3;
      }

      else
      {
        v22 = 4;
      }

      [computeCommandEncoder setComputePipelineState:v21];
      [computeCommandEncoder setTexture:firstCopy atIndex:0];
      [computeCommandEncoder setTexture:secondCopy atIndex:1];
      [computeCommandEncoder setTexture:v14 atIndex:2];
      *buf = (v20 + [v14 width] - 1) >> v22;
      *&buf[8] = ([v14 height] + 15) >> 4;
      *&buf[16] = 1;
      v24 = v20;
      v25 = xmmword_2487C37F0;
      [computeCommandEncoder dispatchThreadgroups:buf threadsPerThreadgroup:&v24];
      [computeCommandEncoder endEncoding];
    }
  }

  else if ((global_logLevel & 0x10) != 0)
  {
    v23 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *&buf[4] = firstCopy;
      *&buf[12] = 2112;
      *&buf[14] = secondCopy;
      *&buf[22] = 2112;
      v27 = v14;
      _os_log_error_impl(&dword_24874B000, v23, OS_LOG_TYPE_ERROR, "inputs and destination cannot be nil %@, %@, %@\n", buf, 0x20u);
    }
  }
}

@end