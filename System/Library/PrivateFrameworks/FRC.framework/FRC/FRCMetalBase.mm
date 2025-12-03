@interface FRCMetalBase
- (FRCMetalBase)initWithDevice:(id)device commmandQueue:(id)queue;
- (id)createKernel:(id)kernel constantValues:(id)values;
- (id)createRenderKernel:(id)kernel renderTargetFormat:(unint64_t)format;
- (id)newTextureCoordinateBufferWithWidth:(double)width height:(double)height;
@end

@implementation FRCMetalBase

- (FRCMetalBase)initWithDevice:(id)device commmandQueue:(id)queue
{
  deviceCopy = device;
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = FRCMetalBase;
  v9 = [(FRCMetalBase *)&v20 init];
  v10 = v9;
  if (v9)
  {
    if (deviceCopy && queueCopy)
    {
      objc_storeStrong(&v9->_device, device);
      newCommandQueue = queueCopy;
    }

    else
    {
      v12 = MTLCreateSystemDefaultDevice();
      device = v10->_device;
      v10->_device = v12;

      newCommandQueue = [(MTLDevice *)v10->_device newCommandQueue];
    }

    commandQueue = v10->_commandQueue;
    v10->_commandQueue = newCommandQueue;

    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 URLForResource:@"default" withExtension:@"metallib"];
    v17 = [(MTLDevice *)v10->_device newLibraryWithURL:v16 error:0];
    mtlLibrary = v10->_mtlLibrary;
    v10->_mtlLibrary = v17;
  }

  return v10;
}

- (id)createKernel:(id)kernel constantValues:(id)values
{
  kernelCopy = kernel;
  valuesCopy = values;
  mtlLibrary = self->_mtlLibrary;
  if (valuesCopy)
  {
    v9 = [(MTLLibrary *)mtlLibrary newFunctionWithName:kernelCopy constantValues:valuesCopy error:0];
  }

  else
  {
    v9 = [(MTLLibrary *)mtlLibrary newFunctionWithName:kernelCopy];
  }

  v10 = v9;
  if (!v9)
  {
    NSLog(&cfstr_ErrorFailedCre.isa, kernelCopy);
  }

  v16 = 0;
  v11 = objc_alloc_init(MEMORY[0x277CD6D30]);
  [v11 setThreadGroupSizeIsMultipleOfThreadExecutionWidth:1];
  [v11 setComputeFunction:v10];
  device = self->_device;
  v15 = 0;
  v13 = [(MTLDevice *)device newComputePipelineStateWithDescriptor:v11 options:0 reflection:&v16 error:&v15];
  if (!v13)
  {
    NSLog(&cfstr_ErrorFailedToC.isa, kernelCopy);
  }

  return v13;
}

- (id)createRenderKernel:(id)kernel renderTargetFormat:(unint64_t)format
{
  mtlLibrary = self->_mtlLibrary;
  kernelCopy = kernel;
  v8 = [(MTLLibrary *)mtlLibrary newFunctionWithName:@"texturedQuadVertex"];
  v9 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:kernelCopy];

  v10 = objc_alloc_init(MEMORY[0x277CD6F78]);
  [v10 setVertexFunction:v8];
  [v10 setFragmentFunction:v9];
  colorAttachments = [v10 colorAttachments];
  v12 = [colorAttachments objectAtIndexedSubscript:0];
  [v12 setPixelFormat:format];

  device = self->_device;
  v18 = 0;
  v14 = [(MTLDevice *)device newRenderPipelineStateWithDescriptor:v10 error:&v18];
  v15 = v18;
  v16 = v15;
  if (!v14)
  {
    NSLog(&cfstr_FailedToCreate.isa, v15);
  }

  return v14;
}

- (id)newTextureCoordinateBufferWithWidth:(double)width height:(double)height
{
  *&v4 = height;
  LODWORD(v5) = 0;
  DWORD1(v5) = v4;
  *&v6 = width;
  *&v7 = __PAIR64__(v4, v6);
  *(&v5 + 1) = COERCE_UNSIGNED_INT(1.0);
  v11 = *MEMORY[0x277D85DE8];
  *(&v7 + 1) = COERCE_UNSIGNED_INT(1.0);
  v10[0] = v5;
  v10[1] = v7;
  DWORD1(v6) = 0;
  *(&v6 + 1) = COERCE_UNSIGNED_INT(1.0);
  v10[2] = xmmword_24A8FEFC0;
  v10[3] = v6;
  result = [(MTLDevice *)self->_device newBufferWithBytes:v10 length:64 options:0];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

@end