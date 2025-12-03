@interface MTLLegacySVCommandQueue
- (MTLLegacySVCommandQueue)initWithCommandQueue:(id)queue device:(id)device;
- (id)commandBuffer;
- (id)commandBufferWithDescriptor:(id)descriptor;
@end

@implementation MTLLegacySVCommandQueue

- (MTLLegacySVCommandQueue)initWithCommandQueue:(id)queue device:(id)device
{
  v6.receiver = self;
  v6.super_class = MTLLegacySVCommandQueue;
  result = [(MTLToolsCommandQueue *)&v6 initWithBaseObject:queue parent:?];
  if (result)
  {
    result->_deviceOptions = (device + 292);
  }

  return result;
}

- (id)commandBuffer
{
  v2 = -[MTLLegacySVCommandBuffer initWithCommandBuffer:commandQueue:descriptor:]([MTLLegacySVCommandBuffer alloc], "initWithCommandBuffer:commandQueue:descriptor:", [-[MTLToolsObject baseObject](self "baseObject")], self, 0);

  return v2;
}

- (id)commandBufferWithDescriptor:(id)descriptor
{
  v5 = objc_autoreleasePoolPush();
  v6 = [(MTLToolsDevice *)self->super.super._device unwrapMTLCommandBufferDescriptor:descriptor alwaysCopy:1];
  [v6 setRetainedReferences:1];
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v7)
  {
    v8 = [[MTLLegacySVCommandBuffer alloc] initWithCommandBuffer:v7 commandQueue:self descriptor:descriptor];
    objc_autoreleasePoolPop(v5);

    return v8;
  }

  else
  {
    objc_autoreleasePoolPop(v5);
    return 0;
  }
}

@end