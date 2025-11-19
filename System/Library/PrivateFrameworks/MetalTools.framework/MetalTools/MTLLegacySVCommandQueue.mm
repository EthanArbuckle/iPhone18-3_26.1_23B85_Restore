@interface MTLLegacySVCommandQueue
- (MTLLegacySVCommandQueue)initWithCommandQueue:(id)a3 device:(id)a4;
- (id)commandBuffer;
- (id)commandBufferWithDescriptor:(id)a3;
@end

@implementation MTLLegacySVCommandQueue

- (MTLLegacySVCommandQueue)initWithCommandQueue:(id)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MTLLegacySVCommandQueue;
  result = [(MTLToolsCommandQueue *)&v6 initWithBaseObject:a3 parent:?];
  if (result)
  {
    result->_deviceOptions = (a4 + 292);
  }

  return result;
}

- (id)commandBuffer
{
  v2 = -[MTLLegacySVCommandBuffer initWithCommandBuffer:commandQueue:descriptor:]([MTLLegacySVCommandBuffer alloc], "initWithCommandBuffer:commandQueue:descriptor:", [-[MTLToolsObject baseObject](self "baseObject")], self, 0);

  return v2;
}

- (id)commandBufferWithDescriptor:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [(MTLToolsDevice *)self->super.super._device unwrapMTLCommandBufferDescriptor:a3 alwaysCopy:1];
  [v6 setRetainedReferences:1];
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v7)
  {
    v8 = [[MTLLegacySVCommandBuffer alloc] initWithCommandBuffer:v7 commandQueue:self descriptor:a3];
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