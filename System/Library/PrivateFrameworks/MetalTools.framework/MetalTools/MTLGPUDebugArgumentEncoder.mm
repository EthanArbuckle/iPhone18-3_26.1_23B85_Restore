@interface MTLGPUDebugArgumentEncoder
- (MTLGPUDebugArgumentEncoder)initWithArgumentEncoder:(id)encoder layout:(const void *)layout device:(id)device;
- (id)newArgumentEncoderForBufferAtIndex:(unint64_t)index;
- (void)setAccelerationStructure:(id)structure atIndex:(unint64_t)index;
- (void)setComputePipelineState:(id)state atIndex:(unint64_t)index;
- (void)setComputePipelineStates:(const void *)states withRange:(_NSRange)range;
- (void)setIndirectCommandBuffer:(id)buffer atIndex:(unint64_t)index;
- (void)setIndirectCommandBuffers:(const void *)buffers withRange:(_NSRange)range;
- (void)setRenderPipelineState:(id)state atIndex:(unint64_t)index;
- (void)setRenderPipelineStates:(const void *)states withRange:(_NSRange)range;
@end

@implementation MTLGPUDebugArgumentEncoder

- (MTLGPUDebugArgumentEncoder)initWithArgumentEncoder:(id)encoder layout:(const void *)layout device:(id)device
{
  v7.receiver = self;
  v7.super_class = MTLGPUDebugArgumentEncoder;
  result = [(MTLToolsObject *)&v7 initWithBaseObject:encoder parent:device];
  if (result)
  {
    result->_layout = layout;
  }

  return result;
}

- (void)setAccelerationStructure:(id)structure atIndex:(unint64_t)index
{
  baseObject = self->super.super._baseObject;
  debugBuf = [structure debugBuf];

  [(MTLToolsObject *)baseObject setBuffer:debugBuf offset:0 atIndex:index];
}

- (void)setRenderPipelineState:(id)state atIndex:(unint64_t)index
{
  baseObject = self->super.super._baseObject;
  v6 = [objc_msgSend(state "indirectStateBuffer")];

  [(MTLToolsObject *)baseObject setBuffer:v6 offset:0 atIndex:index];
}

- (void)setRenderPipelineStates:(const void *)states withRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    v8 = 0;
    v9 = 1;
    do
    {
      [(MTLGPUDebugArgumentEncoder *)self setRenderPipelineState:states[v8] atIndex:v8 + location];
      v8 = v9;
    }

    while (length > v9++);
  }
}

- (void)setComputePipelineState:(id)state atIndex:(unint64_t)index
{
  baseObject = self->super.super._baseObject;
  v6 = [objc_msgSend(state "indirectStateBuffer")];

  [(MTLToolsObject *)baseObject setBuffer:v6 offset:0 atIndex:index];
}

- (void)setComputePipelineStates:(const void *)states withRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    v8 = 0;
    v9 = 1;
    do
    {
      [(MTLGPUDebugArgumentEncoder *)self setComputePipelineState:states[v8] atIndex:v8 + location];
      v8 = v9;
    }

    while (length > v9++);
  }
}

- (void)setIndirectCommandBuffer:(id)buffer atIndex:(unint64_t)index
{
  baseObject = self->super.super._baseObject;
  internalICBBuffer = [buffer internalICBBuffer];

  [(MTLToolsObject *)baseObject setBuffer:internalICBBuffer offset:0 atIndex:index];
}

- (void)setIndirectCommandBuffers:(const void *)buffers withRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    v8 = 0;
    v9 = 1;
    do
    {
      [(MTLGPUDebugArgumentEncoder *)self setIndirectCommandBuffer:buffers[v8] atIndex:v8 + location];
      v8 = v9;
    }

    while (length > v9++);
  }
}

- (id)newArgumentEncoderForBufferAtIndex:(unint64_t)index
{
  layout = self->_layout;
  if (!layout)
  {
    return 0;
  }

  v5 = GPUDebugArgumentEncoderLayout::sublayout(layout, index);
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