@interface MTLToolsIOCommandQueue
- (MTLToolsIOCommandQueue)initWithBaseObject:(id)object parent:(id)parent;
- (NSString)label;
- (id)commandBuffer;
- (id)commandBufferWithUnretainedReferences;
- (unint64_t)globalTraceObjectID;
- (void)barrier;
- (void)dealloc;
- (void)enqueueBarrier;
- (void)setLabel:(id)label;
@end

@implementation MTLToolsIOCommandQueue

- (NSString)label
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject label];
}

- (void)setLabel:(id)label
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setLabel:label];
}

- (MTLToolsIOCommandQueue)initWithBaseObject:(id)object parent:(id)parent
{
  v5.receiver = self;
  v5.super_class = MTLToolsIOCommandQueue;
  return [(MTLToolsObject *)&v5 initWithBaseObject:object parent:parent];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLToolsIOCommandQueue;
  [(MTLToolsObject *)&v2 dealloc];
}

- (id)commandBuffer
{
  v3 = objc_autoreleasePoolPush();
  v4 = -[MTLToolsIOCommandBuffer initWithBaseObject:parent:]([MTLToolsIOCommandBuffer alloc], "initWithBaseObject:parent:", [-[MTLToolsObject baseObject](self "baseObject")], self);
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (id)commandBufferWithUnretainedReferences
{
  v3 = objc_autoreleasePoolPush();
  v4 = -[MTLToolsIOCommandBuffer initWithBaseObject:parent:]([MTLToolsIOCommandBuffer alloc], "initWithBaseObject:parent:", [-[MTLToolsObject baseObject](self "baseObject")], self);
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (void)barrier
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject enqueueBarrier];
}

- (void)enqueueBarrier
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject enqueueBarrier];
}

- (unint64_t)globalTraceObjectID
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject globalTraceObjectID];
}

@end