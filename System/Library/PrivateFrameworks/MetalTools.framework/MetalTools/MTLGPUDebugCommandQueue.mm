@interface MTLGPUDebugCommandQueue
- (MTLGPUDebugCommandQueue)initWithCommandQueue:(id)a3 device:(id)a4;
- (id)commandBuffer;
- (id)commandBufferWithDescriptor:(id)a3;
@end

@implementation MTLGPUDebugCommandQueue

- (MTLGPUDebugCommandQueue)initWithCommandQueue:(id)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MTLGPUDebugCommandQueue;
  result = [(MTLToolsCommandQueue *)&v6 initWithBaseObject:a3 parent:?];
  if (result)
  {
    result->_deviceOptions = (a4 + 292);
  }

  return result;
}

- (id)commandBuffer
{
  v3 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (![v3 privateData])
  {
    v4 = [(MTLToolsObject *)self baseObject];
    [v4 getPrivateDataAndOffset:&v3[*MEMORY[0x277CD70C0]] privateDataOffset:&v3[*MEMORY[0x277CD70C8]]];
  }

  v5 = [[MTLGPUDebugCommandBuffer alloc] initWithCommandBuffer:v3 commandQueue:self descriptor:0];

  return v5;
}

- (id)commandBufferWithDescriptor:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [(MTLToolsDevice *)self->super.super._device unwrapMTLCommandBufferDescriptor:a3 alwaysCopy:1];
  [v6 setRetainedReferences:1];
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v7)
  {
    v8 = v7;
    if (![v7 privateData])
    {
      v9 = [(MTLToolsObject *)self baseObject];
      [v9 getPrivateDataAndOffset:&v8[*MEMORY[0x277CD70C0]] privateDataOffset:&v8[*MEMORY[0x277CD70C8]]];
    }

    v10 = [[MTLGPUDebugCommandBuffer alloc] initWithCommandBuffer:v8 commandQueue:self descriptor:a3];
    objc_autoreleasePoolPop(v5);

    return v10;
  }

  else
  {
    objc_autoreleasePoolPop(v5);
    return 0;
  }
}

@end