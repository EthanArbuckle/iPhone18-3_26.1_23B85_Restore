@interface VEMetalBase
- (VEMetalBase)initWithDevice:(id)a3 commmandQueue:(id)a4;
- (id)createKernel:(id)a3 constantValues:(id)a4;
- (id)createRenderKernel:(id)a3 renderTargetFormat:(unint64_t)a4;
- (id)newTextureCoordinateBufferWithWidth:(double)a3 height:(double)a4;
- (void)commandBufferWait:(id)a3 flag:(BOOL)a4;
@end

@implementation VEMetalBase

- (id)createKernel:(id)a3 constantValues:(id)a4
{
  v6 = a3;
  v7 = a4;
  mtlLibrary = self->_mtlLibrary;
  if (v7)
  {
    v9 = [(MTLLibrary *)mtlLibrary newFunctionWithName:v6 constantValues:v7 error:0];
  }

  else
  {
    v9 = [(MTLLibrary *)mtlLibrary newFunctionWithName:v6];
  }

  v10 = v9;
  if (v9)
  {
    v18 = 0;
    v11 = objc_alloc_init(MEMORY[0x277CD6D30]);
    [v11 setThreadGroupSizeIsMultipleOfThreadExecutionWidth:1];
    [v11 setComputeFunction:v10];
    device = self->_device;
    v17 = 0;
    v13 = [(MTLDevice *)device newComputePipelineStateWithDescriptor:v11 options:0 reflection:&v18 error:&v17];
    v14 = v17;
    if (v13)
    {
    }

    else
    {
      if ((global_logLevel & 0x10) != 0)
      {
        v16 = global_logger;
        if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
        {
          [VEMetalBase createKernel:v6 constantValues:v16];
        }
      }

      v13 = 0;
    }
  }

  else
  {
    [VEMetalBase createKernel:v6 constantValues:&v18];
    v13 = v18;
  }

  return v13;
}

- (id)createRenderKernel:(id)a3 renderTargetFormat:(unint64_t)a4
{
  mtlLibrary = self->_mtlLibrary;
  v7 = a3;
  v8 = [(MTLLibrary *)mtlLibrary newFunctionWithName:@"texturedQuadVertex"];
  v9 = [(MTLLibrary *)self->_mtlLibrary newFunctionWithName:v7];

  v10 = objc_alloc_init(MEMORY[0x277CD6F78]);
  [v10 setVertexFunction:v8];
  [v10 setFragmentFunction:v9];
  v11 = [v10 colorAttachments];
  v12 = [v11 objectAtIndexedSubscript:0];
  [v12 setPixelFormat:a4];

  device = self->_device;
  v18 = 0;
  v14 = [(MTLDevice *)device newRenderPipelineStateWithDescriptor:v10 error:&v18];
  v15 = v18;
  if (!v14 && (global_logLevel & 0x10) != 0)
  {
    v16 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      [VEMetalBase createRenderKernel:v15 renderTargetFormat:v16];
    }
  }

  return v14;
}

- (id)newTextureCoordinateBufferWithWidth:(double)a3 height:(double)a4
{
  *&v4 = a4;
  LODWORD(v5) = 0;
  DWORD1(v5) = v4;
  *&v6 = a3;
  *&v7 = __PAIR64__(v4, v6);
  *(&v5 + 1) = COERCE_UNSIGNED_INT(1.0);
  v10 = *MEMORY[0x277D85DE8];
  *(&v7 + 1) = COERCE_UNSIGNED_INT(1.0);
  v9[0] = v5;
  v9[1] = v7;
  DWORD1(v6) = 0;
  *(&v6 + 1) = COERCE_UNSIGNED_INT(1.0);
  v9[2] = xmmword_2487C38A0;
  v9[3] = v6;
  return [(MTLDevice *)self->_device newBufferWithBytes:v9 length:64 options:0];
}

- (void)commandBufferWait:(id)a3 flag:(BOOL)a4
{
  if (a4)
  {
    [a3 waitUntilCompleted];
  }

  else
  {
    [a3 waitUntilScheduled];
  }
}

- (VEMetalBase)initWithDevice:(id)a3 commmandQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = VEMetalBase;
  v9 = [(VEMetalBase *)&v17 init];
  v10 = v9;
  if (v9 && (!v7 || !v8 ? (v12 = MTLCreateSystemDefaultDevice(), device = v10->_device, v10->_device = v12, device, v11 = [(MTLDevice *)v10->_device newCommandQueue]) : (objc_storeStrong(&v9->_device, a3), v11 = v8), (commandQueue = v10->_commandQueue, v10->_commandQueue = v11, commandQueue, v10->_device) && v10->_commandQueue))
  {
    v10->_EnableGpuWaitForComplete = 0;
    v15 = v10;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)createKernel:(uint64_t)a1 constantValues:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24874B000, a2, OS_LOG_TYPE_ERROR, ">> ERROR: Failed to create kernel: %@", &v2, 0xCu);
}

- (void)createKernel:(uint64_t)a1 constantValues:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if ((global_logLevel & 0x10) != 0)
  {
    v4 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = a1;
      _os_log_error_impl(&dword_24874B000, v4, OS_LOG_TYPE_ERROR, ">> ERROR: Failed creating function %@", &v5, 0xCu);
    }
  }

  *a2 = 0;
}

- (void)createRenderKernel:(uint64_t)a1 renderTargetFormat:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24874B000, a2, OS_LOG_TYPE_ERROR, "Failed to create pipeline state, error %@", &v2, 0xCu);
}

@end