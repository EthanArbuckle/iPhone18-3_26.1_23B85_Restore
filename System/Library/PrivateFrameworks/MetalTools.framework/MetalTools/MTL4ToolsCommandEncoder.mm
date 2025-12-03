@interface MTL4ToolsCommandEncoder
- (BOOL)commandBatchIdRangeMin:(unsigned int *)min max:(unsigned int *)max;
- (MTL4ToolsCommandEncoder)initWithBaseObject:(id)object parent:(id)parent;
- (MTL4ToolsCommandEncoder)initWithCommandEncoder:(id)encoder commandBuffer:(id)buffer;
- (NSString)label;
- (id)endEncodingAndRetrieveProgramAddressTable;
- (unsigned)commandBatchIdOffset;
- (void)barrierAfterEncoderStages:(unint64_t)stages beforeEncoderStages:(unint64_t)encoderStages visibilityOptions:(unint64_t)options;
- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages visibilityOptions:(unint64_t)options;
- (void)barrierAfterStages:(unint64_t)stages beforeQueueStages:(unint64_t)queueStages visibilityOptions:(unint64_t)options;
- (void)dealloc;
- (void)endEncoding;
- (void)insertDebugSignpost:(id)signpost;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)group;
- (void)setLabel:(id)label;
- (void)updateFence:(id)fence afterEncoderStages:(unint64_t)stages;
- (void)waitForFence:(id)fence beforeEncoderStages:(unint64_t)stages;
@end

@implementation MTL4ToolsCommandEncoder

- (MTL4ToolsCommandEncoder)initWithCommandEncoder:(id)encoder commandBuffer:(id)buffer
{
  commandAllocator = [buffer commandAllocator];
  v10.receiver = self;
  v10.super_class = MTL4ToolsCommandEncoder;
  v8 = [(MTLToolsObject *)&v10 initWithBaseObject:encoder parent:commandAllocator];
  if (v8)
  {
    v8->_commandBuffer = buffer;
    v8->_commandAllocator = commandAllocator;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4ToolsCommandEncoder;
  [(MTLToolsObject *)&v3 dealloc];
}

- (MTL4ToolsCommandEncoder)initWithBaseObject:(id)object parent:(id)parent
{
  v5.receiver = self;
  v5.super_class = MTL4ToolsCommandEncoder;
  return [(MTLToolsObject *)&v5 initWithBaseObject:object parent:parent];
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

- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages visibilityOptions:(unint64_t)options
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject barrierAfterQueueStages:stages beforeStages:beforeStages visibilityOptions:options];
}

- (void)barrierAfterStages:(unint64_t)stages beforeQueueStages:(unint64_t)queueStages visibilityOptions:(unint64_t)options
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject barrierAfterStages:stages beforeQueueStages:queueStages visibilityOptions:options];
}

- (void)barrierAfterEncoderStages:(unint64_t)stages beforeEncoderStages:(unint64_t)encoderStages visibilityOptions:(unint64_t)options
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject barrierAfterEncoderStages:stages beforeEncoderStages:encoderStages visibilityOptions:options];
}

- (void)updateFence:(id)fence afterEncoderStages:(unint64_t)stages
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [fence baseObject];

  [baseObject updateFence:baseObject2 afterEncoderStages:stages];
}

- (void)waitForFence:(id)fence beforeEncoderStages:(unint64_t)stages
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [fence baseObject];

  [baseObject waitForFence:baseObject2 beforeEncoderStages:stages];
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

- (void)endEncoding
{
  self->_commandBuffer = 0;
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject endEncoding];
}

- (id)endEncodingAndRetrieveProgramAddressTable
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject endEncodingAndRetrieveProgramAddressTable];
}

- (BOOL)commandBatchIdRangeMin:(unsigned int *)min max:(unsigned int *)max
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject commandBatchIdRangeMin:min max:max];
}

- (unsigned)commandBatchIdOffset
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject commandBatchIdOffset];
}

@end