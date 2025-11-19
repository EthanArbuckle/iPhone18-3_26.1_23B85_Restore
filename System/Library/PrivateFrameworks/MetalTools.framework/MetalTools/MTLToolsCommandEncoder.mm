@interface MTLToolsCommandEncoder
- (MTLToolsCommandEncoder)initWithBaseObject:(id)a3 parallelRenderCommandEncoder:(id)a4;
- (MTLToolsCommandEncoder)initWithBaseObject:(id)a3 parent:(id)a4;
- (NSString)label;
- (unint64_t)globalTraceObjectID;
- (void)barrierAfterQueueStages:(unint64_t)a3 beforeStages:(unint64_t)a4;
- (void)endEncoding;
- (void)insertDebugSignpost:(id)a3;
- (void)insertSplit;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)a3;
- (void)setLabel:(id)a3;
@end

@implementation MTLToolsCommandEncoder

- (MTLToolsCommandEncoder)initWithBaseObject:(id)a3 parent:(id)a4
{
  v6.receiver = self;
  v6.super_class = MTLToolsCommandEncoder;
  result = [(MTLToolsObject *)&v6 initWithBaseObject:a3 parent:?];
  if (result)
  {
    result->_commandBuffer = a4;
  }

  return result;
}

- (MTLToolsCommandEncoder)initWithBaseObject:(id)a3 parallelRenderCommandEncoder:(id)a4
{
  v7.receiver = self;
  v7.super_class = MTLToolsCommandEncoder;
  v5 = [(MTLToolsObject *)&v7 initWithBaseObject:a3 parent:?];
  if (v5)
  {
    v5->_commandBuffer = [a4 commandBuffer];
  }

  return v5;
}

- (NSString)label
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 label];
}

- (void)setLabel:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setLabel:a3];
}

- (unint64_t)globalTraceObjectID
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 globalTraceObjectID];
}

- (void)endEncoding
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 endEncoding];
}

- (void)insertSplit
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 insertSplit];
}

- (void)barrierAfterQueueStages:(unint64_t)a3 beforeStages:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 barrierAfterQueueStages:a3 beforeStages:a4];
}

- (void)insertDebugSignpost:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 insertDebugSignpost:a3];
}

- (void)pushDebugGroup:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 pushDebugGroup:a3];
}

- (void)popDebugGroup
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 popDebugGroup];
}

@end