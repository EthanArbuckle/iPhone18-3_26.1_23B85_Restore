@interface MTLToolsCommandEncoder
- (MTLToolsCommandEncoder)initWithBaseObject:(id)object parallelRenderCommandEncoder:(id)encoder;
- (MTLToolsCommandEncoder)initWithBaseObject:(id)object parent:(id)parent;
- (NSString)label;
- (unint64_t)globalTraceObjectID;
- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages;
- (void)endEncoding;
- (void)insertDebugSignpost:(id)signpost;
- (void)insertSplit;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)group;
- (void)setLabel:(id)label;
@end

@implementation MTLToolsCommandEncoder

- (MTLToolsCommandEncoder)initWithBaseObject:(id)object parent:(id)parent
{
  v6.receiver = self;
  v6.super_class = MTLToolsCommandEncoder;
  result = [(MTLToolsObject *)&v6 initWithBaseObject:object parent:?];
  if (result)
  {
    result->_commandBuffer = parent;
  }

  return result;
}

- (MTLToolsCommandEncoder)initWithBaseObject:(id)object parallelRenderCommandEncoder:(id)encoder
{
  v7.receiver = self;
  v7.super_class = MTLToolsCommandEncoder;
  v5 = [(MTLToolsObject *)&v7 initWithBaseObject:object parent:?];
  if (v5)
  {
    v5->_commandBuffer = [encoder commandBuffer];
  }

  return v5;
}

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

- (unint64_t)globalTraceObjectID
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject globalTraceObjectID];
}

- (void)endEncoding
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject endEncoding];
}

- (void)insertSplit
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject insertSplit];
}

- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject barrierAfterQueueStages:stages beforeStages:beforeStages];
}

- (void)insertDebugSignpost:(id)signpost
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject insertDebugSignpost:signpost];
}

- (void)pushDebugGroup:(id)group
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject pushDebugGroup:group];
}

- (void)popDebugGroup
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject popDebugGroup];
}

@end