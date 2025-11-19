@interface MTLGPUDebugArgumentEncoder
- (MTLGPUDebugArgumentEncoder)initWithArgumentEncoder:(id)a3 layout:(const void *)a4 device:(id)a5;
- (id)newArgumentEncoderForBufferAtIndex:(unint64_t)a3;
- (void)setAccelerationStructure:(id)a3 atIndex:(unint64_t)a4;
- (void)setComputePipelineState:(id)a3 atIndex:(unint64_t)a4;
- (void)setComputePipelineStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setIndirectCommandBuffer:(id)a3 atIndex:(unint64_t)a4;
- (void)setIndirectCommandBuffers:(const void *)a3 withRange:(_NSRange)a4;
- (void)setRenderPipelineState:(id)a3 atIndex:(unint64_t)a4;
- (void)setRenderPipelineStates:(const void *)a3 withRange:(_NSRange)a4;
@end

@implementation MTLGPUDebugArgumentEncoder

- (MTLGPUDebugArgumentEncoder)initWithArgumentEncoder:(id)a3 layout:(const void *)a4 device:(id)a5
{
  v7.receiver = self;
  v7.super_class = MTLGPUDebugArgumentEncoder;
  result = [(MTLToolsObject *)&v7 initWithBaseObject:a3 parent:a5];
  if (result)
  {
    result->_layout = a4;
  }

  return result;
}

- (void)setAccelerationStructure:(id)a3 atIndex:(unint64_t)a4
{
  baseObject = self->super.super._baseObject;
  v6 = [a3 debugBuf];

  [(MTLToolsObject *)baseObject setBuffer:v6 offset:0 atIndex:a4];
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
      [(MTLGPUDebugArgumentEncoder *)self setRenderPipelineState:a3[v8] atIndex:v8 + location];
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
      [(MTLGPUDebugArgumentEncoder *)self setComputePipelineState:a3[v8] atIndex:v8 + location];
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
      [(MTLGPUDebugArgumentEncoder *)self setIndirectCommandBuffer:a3[v8] atIndex:v8 + location];
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

  v5 = GPUDebugArgumentEncoderLayout::sublayout(layout, a3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [-[MTLToolsObject baseObject](self->super.super._device "baseObject")];
  v8 = [[MTLGPUDebugArgumentEncoder alloc] initWithArgumentEncoder:v7 layout:v6 device:self->super.super._device];

  return v8;
}

@end