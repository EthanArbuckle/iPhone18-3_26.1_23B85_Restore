@interface MTLDebugIOCommandQueue
- (id)commandBuffer;
- (id)commandBufferWithUnretainedReferences;
- (unint64_t)globalTraceObjectID;
- (void)barrier;
@end

@implementation MTLDebugIOCommandQueue

- (id)commandBuffer
{
  v3 = objc_autoreleasePoolPush();
  v4 = -[MTLToolsIOCommandBuffer initWithBaseObject:parent:]([MTLDebugIOCommandBuffer alloc], "initWithBaseObject:parent:", [-[MTLToolsObject baseObject](self "baseObject")], self);
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (id)commandBufferWithUnretainedReferences
{
  v3 = objc_autoreleasePoolPush();
  v4 = -[MTLToolsIOCommandBuffer initWithBaseObject:parent:]([MTLDebugIOCommandBuffer alloc], "initWithBaseObject:parent:", [-[MTLToolsObject baseObject](self "baseObject")], self);
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (void)barrier
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 barrier];
}

- (unint64_t)globalTraceObjectID
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 globalTraceObjectID];
}

@end