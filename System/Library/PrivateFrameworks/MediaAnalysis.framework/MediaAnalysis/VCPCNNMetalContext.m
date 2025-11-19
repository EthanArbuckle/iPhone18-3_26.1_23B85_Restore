@interface VCPCNNMetalContext
+ (id)sharedCommandQueue;
- (id)initNewContext:(BOOL)a3;
- (int)execute;
@end

@implementation VCPCNNMetalContext

+ (id)sharedCommandQueue
{
  v2 = +[VCPSharedInstanceManager sharedManager];
  v3 = [v2 sharedInstanceWithIdentifier:@"MTLCommandQueue" andCreationBlock:&__block_literal_global_91];

  return v3;
}

id __40__VCPCNNMetalContext_sharedCommandQueue__block_invoke()
{
  v0 = MTLCreateSystemDefaultDevice();
  v1 = [v0 newCommandQueue];

  return v1;
}

- (id)initNewContext:(BOOL)a3
{
  v3 = a3;
  v20.receiver = self;
  v20.super_class = VCPCNNMetalContext;
  v4 = [(VCPCNNMetalContext *)&v20 init];
  if (v4 && SocType() != 246)
  {
    if (v3)
    {
      v5 = [objc_opt_class() sharedCommandQueue];
      commandQueue = v4->_commandQueue;
      v4->_commandQueue = v5;

      v7 = [(MTLCommandQueue *)v4->_commandQueue device];
      device = v4->_device;
      v4->_device = v7;

      v9 = v4->_commandQueue;
      objc_sync_enter(v9);
      v10 = [(MTLCommandQueue *)v4->_commandQueue commandBuffer];
      commandBuffer = v4->_commandBuffer;
      v4->_commandBuffer = v10;

      objc_sync_exit(v9);
    }

    else
    {
      v12 = MTLCreateSystemDefaultDevice();
      v13 = v4->_device;
      v4->_device = v12;

      v14 = [(MTLDevice *)v4->_device newCommandQueue];
      v15 = v4->_commandQueue;
      v4->_commandQueue = v14;

      v16 = [(MTLCommandQueue *)v4->_commandQueue commandBuffer];
      v9 = v4->_commandBuffer;
      v4->_commandBuffer = v16;
    }

    if (v4->_commandBuffer)
    {
      MEMORY[0x1CCA951B0](0.0);
    }
  }

  v17 = v4->_device;
  if (v17)
  {
    v17 = v4->_commandQueue;
    if (v17)
    {
      if (v4->_commandBuffer)
      {
        v17 = v4;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  v18 = v17;

  return v18;
}

- (int)execute
{
  [(MTLCommandBuffer *)self->_commandBuffer commit];
  [(MTLCommandBuffer *)self->_commandBuffer waitUntilCompleted];
  v3 = self->_commandQueue;
  objc_sync_enter(v3);
  v4 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  commandBuffer = self->_commandBuffer;
  self->_commandBuffer = v4;

  if (self->_commandBuffer)
  {
    MEMORY[0x1CCA951B0](0.0);
  }

  objc_sync_exit(v3);

  if (self->_commandBuffer)
  {
    return 0;
  }

  else
  {
    return -108;
  }
}

@end