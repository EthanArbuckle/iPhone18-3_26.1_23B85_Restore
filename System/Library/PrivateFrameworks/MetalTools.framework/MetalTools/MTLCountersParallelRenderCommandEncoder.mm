@interface MTLCountersParallelRenderCommandEncoder
- (MTLCountersParallelRenderCommandEncoder)initWithBaseRenderPass:(id)pass commandBuffer:(id)buffer descriptor:(id)descriptor;
- (id)renderCommandEncoder;
- (id)sampledRenderCommandEncoderWithProgramInfoBuffer:(id *)buffer capacity:(unint64_t)capacity;
- (void)setColorStoreAction:(unint64_t)action atIndex:(unint64_t)index;
- (void)setDepthStoreAction:(unint64_t)action;
- (void)setStencilStoreAction:(unint64_t)action;
@end

@implementation MTLCountersParallelRenderCommandEncoder

- (MTLCountersParallelRenderCommandEncoder)initWithBaseRenderPass:(id)pass commandBuffer:(id)buffer descriptor:(id)descriptor
{
  v6.receiver = self;
  v6.super_class = MTLCountersParallelRenderCommandEncoder;
  return [(MTLToolsParallelRenderCommandEncoder *)&v6 initWithParallelRenderCommandEncoder:pass parent:buffer descriptor:descriptor];
}

- (id)sampledRenderCommandEncoderWithProgramInfoBuffer:(id *)buffer capacity:(unint64_t)capacity
{
  v7 = objc_autoreleasePoolPush();
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v8)
  {
    v9 = [[MTLCountersRenderCommandEncoder alloc] initWithRenderCommandEncoder:v8 parent:self];
    objc_autoreleasePoolPop(v7);

    return v9;
  }

  else
  {
    objc_autoreleasePoolPop(v7);
    return 0;
  }
}

- (id)renderCommandEncoder
{
  v3 = objc_autoreleasePoolPush();
  v4 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v4)
  {
    v5 = [[MTLCountersRenderCommandEncoder alloc] initWithRenderCommandEncoder:v4 parent:self];
    objc_autoreleasePoolPop(v3);

    return v5;
  }

  else
  {
    objc_autoreleasePoolPop(v3);
    return 0;
  }
}

- (void)setColorStoreAction:(unint64_t)action atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setColorStoreAction:action atIndex:index];
}

- (void)setDepthStoreAction:(unint64_t)action
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setDepthStoreAction:action];
}

- (void)setStencilStoreAction:(unint64_t)action
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setStencilStoreAction:action];
}

@end