@interface MTLToolsArgumentEncoder
- (MTLDevice)device;
- (NSString)label;
- (_MTLIndirectArgumentBufferLayout)layout;
- (id)newArgumentEncoderForBufferAtIndex:(unint64_t)index;
- (unint64_t)alignment;
- (unint64_t)encodedLength;
- (void)constantDataAtIndex:(unint64_t)index;
- (void)setAccelerationStructure:(id)structure atIndex:(unint64_t)index;
- (void)setArgumentBuffer:(id)buffer offset:(unint64_t)offset;
- (void)setArgumentBuffer:(id)buffer startOffset:(unint64_t)offset arrayElement:(unint64_t)element;
- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setComputePipelineState:(id)state atIndex:(unint64_t)index;
- (void)setComputePipelineStates:(const void *)states withRange:(_NSRange)range;
- (void)setDepthStencilState:(id)state atIndex:(unint64_t)index;
- (void)setDepthStencilStates:(const void *)states withRange:(_NSRange)range;
- (void)setIndirectCommandBuffer:(id)buffer atIndex:(unint64_t)index;
- (void)setIndirectCommandBuffers:(const void *)buffers withRange:(_NSRange)range;
- (void)setIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setIntersectionFunctionTable:(id)table atIndex:(unint64_t)index;
- (void)setIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setIntersectionFunctionTables:(const void *)tables withRange:(_NSRange)range;
- (void)setLabel:(id)label;
- (void)setRenderPipelineState:(id)state atIndex:(unint64_t)index;
- (void)setRenderPipelineStates:(const void *)states withRange:(_NSRange)range;
- (void)setSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setTexture:(id)texture atIndex:(unint64_t)index;
- (void)setTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setVisibleFunctionTable:(id)table atIndex:(unint64_t)index;
- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setVisibleFunctionTables:(const void *)tables withRange:(_NSRange)range;
@end

@implementation MTLToolsArgumentEncoder

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

- (unint64_t)encodedLength
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject encodedLength];
}

- (void)constantDataAtIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject constantDataAtIndex:index];
}

- (unint64_t)alignment
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject alignment];
}

- (MTLDevice)device
{
  do
  {
    self = self->super._parent;
  }

  while (![(MTLToolsArgumentEncoder *)self conformsToProtocol:&unk_284235E00]);
  return self;
}

- (_MTLIndirectArgumentBufferLayout)layout
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject layout];
}

- (void)setArgumentBuffer:(id)buffer offset:(unint64_t)offset
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject setArgumentBuffer:baseObject2 offset:offset];
}

- (void)setArgumentBuffer:(id)buffer startOffset:(unint64_t)offset arrayElement:(unint64_t)element
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject setArgumentBuffer:baseObject2 startOffset:offset arrayElement:element];
}

- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject setBuffer:baseObject2 offset:offset atIndex:index];
}

- (void)setTexture:(id)texture atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];

  [baseObject setTexture:baseObject2 atIndex:index];
}

- (void)setSamplerState:(id)state atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];

  [baseObject setSamplerState:baseObject2 atIndex:index];
}

- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  std::vector<objc_object  {objcproto9MTLBuffer}*>::vector[abi:ne200100](__p, range.length);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      baseObject = [buffers[i] baseObject];
      *(__p[0] + i) = baseObject;
    }
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 setBuffers:__p[0] offsets:offsets withRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  std::vector<objc_object  {objcproto10MTLTexture}*>::vector[abi:ne200100](__p, range.length);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      baseObject = [textures[i] baseObject];
      *(__p[0] + i) = baseObject;
    }
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 setTextures:__p[0] withRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  std::vector<objc_object  {objcproto15MTLSamplerState}*>::vector[abi:ne200100](__p, range.length);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      baseObject = [states[i] baseObject];
      *(__p[0] + i) = baseObject;
    }
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 setSamplerStates:__p[0] withRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setRenderPipelineState:(id)state atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];

  [baseObject setRenderPipelineState:baseObject2 atIndex:index];
}

- (void)setRenderPipelineStates:(const void *)states withRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *states++;
      [(MTLToolsArgumentEncoder *)self setRenderPipelineState:v8 atIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setComputePipelineState:(id)state atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];

  [baseObject setComputePipelineState:baseObject2 atIndex:index];
}

- (void)setComputePipelineStates:(const void *)states withRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *states++;
      [(MTLToolsArgumentEncoder *)self setComputePipelineState:v8 atIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setIndirectCommandBuffer:(id)buffer atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject setIndirectCommandBuffer:baseObject2 atIndex:index];
}

- (void)setIndirectCommandBuffers:(const void *)buffers withRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *buffers++;
      [(MTLToolsArgumentEncoder *)self setIndirectCommandBuffer:v8 atIndex:location++];
      --length;
    }

    while (length);
  }
}

- (id)newArgumentEncoderForBufferAtIndex:(unint64_t)index
{
  result = [-[MTLToolsObject baseObject](self "baseObject")];
  if (result)
  {
    v5 = result;
    v6 = [(MTLToolsObject *)[MTLToolsArgumentEncoder alloc] initWithBaseObject:result parent:self];

    return v6;
  }

  return result;
}

- (void)setAccelerationStructure:(id)structure atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];

  [baseObject setAccelerationStructure:baseObject2 atIndex:index];
}

- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [table baseObject];

  [baseObject setVisibleFunctionTable:baseObject2 atBufferIndex:index];
}

- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *tables++;
      [(MTLToolsArgumentEncoder *)self setVisibleFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [table baseObject];

  [baseObject setIntersectionFunctionTable:baseObject2 atBufferIndex:index];
}

- (void)setIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *tables++;
      [(MTLToolsArgumentEncoder *)self setIntersectionFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setVisibleFunctionTable:(id)table atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [table baseObject];

  [baseObject setVisibleFunctionTable:baseObject2 atIndex:index];
}

- (void)setVisibleFunctionTables:(const void *)tables withRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *tables++;
      [(MTLToolsArgumentEncoder *)self setVisibleFunctionTable:v8 atIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setIntersectionFunctionTable:(id)table atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [table baseObject];

  [baseObject setIntersectionFunctionTable:baseObject2 atIndex:index];
}

- (void)setIntersectionFunctionTables:(const void *)tables withRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    do
    {
      v8 = *tables++;
      [(MTLToolsArgumentEncoder *)self setIntersectionFunctionTable:v8 atIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setDepthStencilState:(id)state atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];

  [baseObject setDepthStencilState:baseObject2 atIndex:index];
}

- (void)setDepthStencilStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  std::vector<objc_object  {objcproto20MTLDepthStencilState}*>::vector[abi:ne200100](__p, range.length);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      baseObject = [states[i] baseObject];
      *(__p[0] + i) = baseObject;
    }
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 setDepthStencilStates:__p[0] withRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

@end