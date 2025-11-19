@interface MTLLegacySVArgumentEncoder
- (MTLLegacySVArgumentEncoder)initWithArgumentEncoder:(id)a3 layout:(const void *)a4 device:(id)a5;
- (id)newArgumentEncoderForBufferAtIndex:(unint64_t)a3;
- (void)setArgumentBuffer:(id)a3 offset:(unint64_t)a4;
- (void)setArgumentBuffer:(id)a3 startOffset:(unint64_t)a4 arrayElement:(unint64_t)a5;
- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setComputePipelineState:(id)a3 atIndex:(unint64_t)a4;
- (void)setComputePipelineStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setIndirectCommandBuffer:(id)a3 atIndex:(unint64_t)a4;
- (void)setIndirectCommandBuffers:(const void *)a3 withRange:(_NSRange)a4;
- (void)setRenderPipelineState:(id)a3 atIndex:(unint64_t)a4;
- (void)setRenderPipelineStates:(const void *)a3 withRange:(_NSRange)a4;
@end

@implementation MTLLegacySVArgumentEncoder

- (MTLLegacySVArgumentEncoder)initWithArgumentEncoder:(id)a3 layout:(const void *)a4 device:(id)a5
{
  v7.receiver = self;
  v7.super_class = MTLLegacySVArgumentEncoder;
  result = [(MTLToolsObject *)&v7 initWithBaseObject:a3 parent:a5];
  if (result)
  {
    result->_layout = a4;
  }

  return result;
}

- (void)setArgumentBuffer:(id)a3 offset:(unint64_t)a4
{
  baseObject = self->super.super._baseObject;
  v7 = [a3 baseObject];
  v8 = [a3 offset] + a4;

  [(MTLToolsObject *)baseObject setArgumentBuffer:v7 offset:v8];
}

- (void)setArgumentBuffer:(id)a3 startOffset:(unint64_t)a4 arrayElement:(unint64_t)a5
{
  baseObject = self->super.super._baseObject;
  v9 = [a3 baseObject];
  v10 = [a3 offset] + a4;

  [(MTLToolsObject *)baseObject setArgumentBuffer:v9 startOffset:v10 arrayElement:a5];
}

- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  if (a5.length)
  {
    length = a5.length;
    location = a5.location;
    v10 = 0;
    v11 = 1;
    do
    {
      [(MTLLegacySVArgumentEncoder *)self setBuffer:a3[v10] offset:a4[v10] atIndex:v10 + location];
      v10 = v11;
    }

    while (length > v11++);
  }
}

- (void)setRenderPipelineState:(id)a3 atIndex:(unint64_t)a4
{
  baseObject = self->super.super._baseObject;
  v6 = [objc_msgSend(a3 "indirectStateBuffer")];

  [(MTLToolsObject *)baseObject setBuffer:v6 offset:0 atIndex:a4];
}

- (void)setRenderPipelineStates:(const void *)a3 withRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    v8 = 0;
    v9 = 1;
    do
    {
      [(MTLLegacySVArgumentEncoder *)self setRenderPipelineState:a3[v8] atIndex:v8 + location];
      v8 = v9;
    }

    while (length > v9++);
  }
}

- (void)setComputePipelineState:(id)a3 atIndex:(unint64_t)a4
{
  baseObject = self->super.super._baseObject;
  v6 = [objc_msgSend(a3 "indirectStateBuffer")];

  [(MTLToolsObject *)baseObject setBuffer:v6 offset:0 atIndex:a4];
}

- (void)setComputePipelineStates:(const void *)a3 withRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    v8 = 0;
    v9 = 1;
    do
    {
      [(MTLLegacySVArgumentEncoder *)self setComputePipelineState:a3[v8] atIndex:v8 + location];
      v8 = v9;
    }

    while (length > v9++);
  }
}

- (void)setIndirectCommandBuffer:(id)a3 atIndex:(unint64_t)a4
{
  baseObject = self->super.super._baseObject;
  v6 = [a3 internalICBBuffer];

  [(MTLToolsObject *)baseObject setBuffer:v6 offset:0 atIndex:a4];
}

- (void)setIndirectCommandBuffers:(const void *)a3 withRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    v8 = 0;
    v9 = 1;
    do
    {
      [(MTLLegacySVArgumentEncoder *)self setIndirectCommandBuffer:a3[v8] atIndex:v8 + location];
      v8 = v9;
    }

    while (length > v9++);
  }
}

- (id)newArgumentEncoderForBufferAtIndex:(unint64_t)a3
{
  layout = self->_layout;
  if (!layout)
  {
    return 0;
  }

  v5 = LegacySVArgumentEncoderLayout::sublayout(layout, a3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [-[MTLToolsObject baseObject](self->super.super._device "baseObject")];
  v8 = [[MTLLegacySVArgumentEncoder alloc] initWithArgumentEncoder:v7 layout:v6 device:self->super.super._device];

  return v8;
}

@end