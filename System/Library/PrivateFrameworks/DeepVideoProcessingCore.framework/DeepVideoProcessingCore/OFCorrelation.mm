@interface OFCorrelation
- (OFCorrelation)initWithDevice:(id)a3 interleaved:(BOOL)a4;
- (void)calcCorrelation:(id)a3 with:(id)a4 output:(id)a5;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)a3 first:(id)a4 second:(id)a5 destination:(id)a6;
- (void)setupMetal;
@end

@implementation OFCorrelation

- (OFCorrelation)initWithDevice:(id)a3 interleaved:(BOOL)a4
{
  v7 = a3;
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

    objc_storeStrong(&v8->super._device, a3);
    v8->_interleaved = a4;
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

- (void)calcCorrelation:(id)a3 with:(id)a4 output:(id)a5
{
  commandQueue = self->super._commandQueue;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(MTLCommandQueue *)commandQueue commandBuffer];
  [(OFCorrelation *)self encodeToCommandBuffer:v12 first:v11 second:v10 destination:v9];

  [v12 commit];
  [v12 waitUntilCompleted];
}

- (void)encodeToCommandBuffer:(id)a3 first:(id)a4 second:(id)a5 destination:(id)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v11 && v12 && v13)
  {
    v15 = [v10 computeCommandEncoder];
    if (v15)
    {
      v16 = [v14 arrayLength];
      v17 = &OBJC_IVAR___OFCorrelation__correlationSIMDKernel;
      if (v16 > 0x51)
      {
        v17 = &OBJC_IVAR___OFCorrelation__correlationWithConcatSIMDKernel;
      }

      v18 = &OBJC_IVAR___OFCorrelation__correlationWithConcatKernel;
      if (v16 <= 0x51)
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

      [v15 setComputePipelineState:v21];
      [v15 setTexture:v11 atIndex:0];
      [v15 setTexture:v12 atIndex:1];
      [v15 setTexture:v14 atIndex:2];
      *buf = (v20 + [v14 width] - 1) >> v22;
      *&buf[8] = ([v14 height] + 15) >> 4;
      *&buf[16] = 1;
      v24 = v20;
      v25 = xmmword_2487C37F0;
      [v15 dispatchThreadgroups:buf threadsPerThreadgroup:&v24];
      [v15 endEncoding];
    }
  }

  else if ((global_logLevel & 0x10) != 0)
  {
    v23 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v12;
      *&buf[22] = 2112;
      v27 = v14;
      _os_log_error_impl(&dword_24874B000, v23, OS_LOG_TYPE_ERROR, "inputs and destination cannot be nil %@, %@, %@\n", buf, 0x20u);
    }
  }
}

@end