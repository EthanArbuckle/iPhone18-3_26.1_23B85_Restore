@interface MTLToolsArgumentEncoder
- (MTLDevice)device;
- (NSString)label;
- (_MTLIndirectArgumentBufferLayout)layout;
- (id)newArgumentEncoderForBufferAtIndex:(unint64_t)a3;
- (unint64_t)alignment;
- (unint64_t)encodedLength;
- (void)constantDataAtIndex:(unint64_t)a3;
- (void)setAccelerationStructure:(id)a3 atIndex:(unint64_t)a4;
- (void)setArgumentBuffer:(id)a3 offset:(unint64_t)a4;
- (void)setArgumentBuffer:(id)a3 startOffset:(unint64_t)a4 arrayElement:(unint64_t)a5;
- (void)setBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setComputePipelineState:(id)a3 atIndex:(unint64_t)a4;
- (void)setComputePipelineStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setDepthStencilState:(id)a3 atIndex:(unint64_t)a4;
- (void)setDepthStencilStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setIndirectCommandBuffer:(id)a3 atIndex:(unint64_t)a4;
- (void)setIndirectCommandBuffers:(const void *)a3 withRange:(_NSRange)a4;
- (void)setIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setIntersectionFunctionTable:(id)a3 atIndex:(unint64_t)a4;
- (void)setIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setIntersectionFunctionTables:(const void *)a3 withRange:(_NSRange)a4;
- (void)setLabel:(id)a3;
- (void)setRenderPipelineState:(id)a3 atIndex:(unint64_t)a4;
- (void)setRenderPipelineStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setVisibleFunctionTable:(id)a3 atIndex:(unint64_t)a4;
- (void)setVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setVisibleFunctionTables:(const void *)a3 withRange:(_NSRange)a4;
@end

@implementation MTLToolsArgumentEncoder

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

- (unint64_t)encodedLength
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 encodedLength];
}

- (void)constantDataAtIndex:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 constantDataAtIndex:a3];
}

- (unint64_t)alignment
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 alignment];
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
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 layout];
}

- (void)setArgumentBuffer:(id)a3 offset:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 setArgumentBuffer:v7 offset:a4];
}

- (void)setArgumentBuffer:(id)a3 startOffset:(unint64_t)a4 arrayElement:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];
  v9 = [a3 baseObject];

  [v8 setArgumentBuffer:v9 startOffset:a4 arrayElement:a5];
}

- (void)setBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v8 = [(MTLToolsObject *)self baseObject];
  v9 = [a3 baseObject];

  [v8 setBuffer:v9 offset:a4 atIndex:a5];
}

- (void)setTexture:(id)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 setTexture:v7 atIndex:a4];
}

- (void)setSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 setSamplerState:v7 atIndex:a4];
}

- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  std::vector<objc_object  {objcproto9MTLBuffer}*>::vector[abi:ne200100](__p, a5.length);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      v11 = [a3[i] baseObject];
      *(__p[0] + i) = v11;
    }
  }

  v12 = [(MTLToolsObject *)self baseObject];
  [v12 setBuffers:__p[0] offsets:a4 withRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setTextures:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  std::vector<objc_object  {objcproto10MTLTexture}*>::vector[abi:ne200100](__p, a4.length);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      v9 = [a3[i] baseObject];
      *(__p[0] + i) = v9;
    }
  }

  v10 = [(MTLToolsObject *)self baseObject];
  [v10 setTextures:__p[0] withRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  std::vector<objc_object  {objcproto15MTLSamplerState}*>::vector[abi:ne200100](__p, a4.length);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      v9 = [a3[i] baseObject];
      *(__p[0] + i) = v9;
    }
  }

  v10 = [(MTLToolsObject *)self baseObject];
  [v10 setSamplerStates:__p[0] withRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setRenderPipelineState:(id)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 setRenderPipelineState:v7 atIndex:a4];
}

- (void)setRenderPipelineStates:(const void *)a3 withRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3++;
      [(MTLToolsArgumentEncoder *)self setRenderPipelineState:v8 atIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setComputePipelineState:(id)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 setComputePipelineState:v7 atIndex:a4];
}

- (void)setComputePipelineStates:(const void *)a3 withRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3++;
      [(MTLToolsArgumentEncoder *)self setComputePipelineState:v8 atIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setIndirectCommandBuffer:(id)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 setIndirectCommandBuffer:v7 atIndex:a4];
}

- (void)setIndirectCommandBuffers:(const void *)a3 withRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3++;
      [(MTLToolsArgumentEncoder *)self setIndirectCommandBuffer:v8 atIndex:location++];
      --length;
    }

    while (length);
  }
}

- (id)newArgumentEncoderForBufferAtIndex:(unint64_t)a3
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

- (void)setAccelerationStructure:(id)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 setAccelerationStructure:v7 atIndex:a4];
}

- (void)setVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 setVisibleFunctionTable:v7 atBufferIndex:a4];
}

- (void)setVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3++;
      [(MTLToolsArgumentEncoder *)self setVisibleFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 setIntersectionFunctionTable:v7 atBufferIndex:a4];
}

- (void)setIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3++;
      [(MTLToolsArgumentEncoder *)self setIntersectionFunctionTable:v8 atBufferIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setVisibleFunctionTable:(id)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 setVisibleFunctionTable:v7 atIndex:a4];
}

- (void)setVisibleFunctionTables:(const void *)a3 withRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3++;
      [(MTLToolsArgumentEncoder *)self setVisibleFunctionTable:v8 atIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setIntersectionFunctionTable:(id)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 setIntersectionFunctionTable:v7 atIndex:a4];
}

- (void)setIntersectionFunctionTables:(const void *)a3 withRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    do
    {
      v8 = *a3++;
      [(MTLToolsArgumentEncoder *)self setIntersectionFunctionTable:v8 atIndex:location++];
      --length;
    }

    while (length);
  }
}

- (void)setDepthStencilState:(id)a3 atIndex:(unint64_t)a4
{
  v6 = [(MTLToolsObject *)self baseObject];
  v7 = [a3 baseObject];

  [v6 setDepthStencilState:v7 atIndex:a4];
}

- (void)setDepthStencilStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  std::vector<objc_object  {objcproto20MTLDepthStencilState}*>::vector[abi:ne200100](__p, a4.length);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      v9 = [a3[i] baseObject];
      *(__p[0] + i) = v9;
    }
  }

  v10 = [(MTLToolsObject *)self baseObject];
  [v10 setDepthStencilStates:__p[0] withRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

@end