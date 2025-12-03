@interface MTLGPUDebugCommandQueue
- (MTLGPUDebugCommandQueue)initWithCommandQueue:(id)queue device:(id)device;
- (id)commandBuffer;
- (id)commandBufferWithDescriptor:(id)descriptor;
@end

@implementation MTLGPUDebugCommandQueue

- (MTLGPUDebugCommandQueue)initWithCommandQueue:(id)queue device:(id)device
{
  v6.receiver = self;
  v6.super_class = MTLGPUDebugCommandQueue;
  result = [(MTLToolsCommandQueue *)&v6 initWithBaseObject:queue parent:?];
  if (result)
  {
    result->_deviceOptions = (device + 292);
  }

  return result;
}

- (id)commandBuffer
{
  v3 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (![v3 privateData])
  {
    baseObject = [(MTLToolsObject *)self baseObject];
    [baseObject getPrivateDataAndOffset:&v3[*MEMORY[0x277CD70C0]] privateDataOffset:&v3[*MEMORY[0x277CD70C8]]];
  }

  v5 = [[MTLGPUDebugCommandBuffer alloc] initWithCommandBuffer:v3 commandQueue:self descriptor:0];

  return v5;
}

- (id)commandBufferWithDescriptor:(id)descriptor
{
  v5 = objc_autoreleasePoolPush();
  v6 = [(MTLToolsDevice *)self->super.super._device unwrapMTLCommandBufferDescriptor:descriptor alwaysCopy:1];
  [v6 setRetainedReferences:1];
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v7)
  {
    v8 = v7;
    if (![v7 privateData])
    {
      baseObject = [(MTLToolsObject *)self baseObject];
      [baseObject getPrivateDataAndOffset:&v8[*MEMORY[0x277CD70C0]] privateDataOffset:&v8[*MEMORY[0x277CD70C8]]];
    }

    v10 = [[MTLGPUDebugCommandBuffer alloc] initWithCommandBuffer:v8 commandQueue:self descriptor:descriptor];
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