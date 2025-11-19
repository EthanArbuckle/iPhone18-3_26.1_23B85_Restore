@interface MTL4ToolsCommandEncoder
- (BOOL)commandBatchIdRangeMin:(unsigned int *)a3 max:(unsigned int *)a4;
- (MTL4ToolsCommandEncoder)initWithBaseObject:(id)a3 parent:(id)a4;
- (MTL4ToolsCommandEncoder)initWithCommandEncoder:(id)a3 commandBuffer:(id)a4;
- (NSString)label;
- (id)endEncodingAndRetrieveProgramAddressTable;
- (unsigned)commandBatchIdOffset;
- (void)barrierAfterEncoderStages:(unint64_t)a3 beforeEncoderStages:(unint64_t)a4 visibilityOptions:(unint64_t)a5;
- (void)barrierAfterQueueStages:(unint64_t)a3 beforeStages:(unint64_t)a4 visibilityOptions:(unint64_t)a5;
- (void)barrierAfterStages:(unint64_t)a3 beforeQueueStages:(unint64_t)a4 visibilityOptions:(unint64_t)a5;
- (void)dealloc;
- (void)endEncoding;
- (void)insertDebugSignpost:(id)a3;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)a3;
- (void)setLabel:(id)a3;
- (void)updateFence:(id)a3 afterEncoderStages:(unint64_t)a4;
- (void)waitForFence:(id)a3 beforeEncoderStages:(unint64_t)a4;
@end

@implementation MTL4ToolsCommandEncoder

- (MTL4ToolsCommandEncoder)initWithCommandEncoder:(id)a3 commandBuffer:(id)a4
{
  v7 = [a4 commandAllocator];
  v10.receiver = self;
  v10.super_class = MTL4ToolsCommandEncoder;
  v8 = [(MTLToolsObject *)&v10 initWithBaseObject:a3 parent:v7];
  if (v8)
  {
    v8->_commandBuffer = a4;
    v8->_commandAllocator = v7;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4ToolsCommandEncoder;
  [(MTLToolsObject *)&v3 dealloc];
}

- (MTL4ToolsCommandEncoder)initWithBaseObject:(id)a3 parent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MTL4ToolsCommandEncoder;
  return [(MTLToolsObject *)&v5 initWithBaseObject:a3 parent:a4];
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

- (void)barrierAfterQueueStages:(unint64_t)a3 beforeStages:(unint64_t)a4 visibilityOptions:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  [v8 barrierAfterQueueStages:a3 beforeStages:a4 visibilityOptions:a5];
}

- (void)barrierAfterStages:(unint64_t)a3 beforeQueueStages:(unint64_t)a4 visibilityOptions:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  [v8 barrierAfterStages:a3 beforeQueueStages:a4 visibilityOptions:a5];
}

- (void)barrierAfterEncoderStages:(unint64_t)a3 beforeEncoderStages:(unint64_t)a4 visibilityOptions:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];

  [v8 barrierAfterEncoderStages:a3 beforeEncoderStages:a4 visibilityOptions:a5];
}

- (void)updateFence:(id)a3 afterEncoderStages:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 updateFence:v7 afterEncoderStages:a4];
}

- (void)waitForFence:(id)a3 beforeEncoderStages:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 waitForFence:v7 beforeEncoderStages:a4];
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

- (void)endEncoding
{
  self->_commandBuffer = 0;
  v3 = [(MTLToolsObject *)self baseObject];

  [v3 endEncoding];
}

- (id)endEncodingAndRetrieveProgramAddressTable
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 endEncodingAndRetrieveProgramAddressTable];
}

- (BOOL)commandBatchIdRangeMin:(unsigned int *)a3 max:(unsigned int *)a4
{
  v6 = [(MTLToolsObject *)self baseObject];

  return [v6 commandBatchIdRangeMin:a3 max:a4];
}

- (unsigned)commandBatchIdOffset
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 commandBatchIdOffset];
}

@end