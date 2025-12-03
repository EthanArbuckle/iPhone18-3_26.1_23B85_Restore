@interface MTL4DebugArgumentTable
- (MTL4DebugArgumentTable)initWithArgumentTable:(id)table device:(id)device descriptor:(id)descriptor;
- (const)bufferBindingAtIndex:(unsigned int)index;
- (const)samplerBindingAtIndex:(unsigned int)index;
- (const)textureBindingAtIndex:(unsigned int)index;
- (id).cxx_construct;
- (void)setAddress:(unint64_t)address atIndex:(unint64_t)index;
- (void)setAddress:(unint64_t)address attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setResource:(MTLResourceID)resource atBufferIndex:(unint64_t)index;
- (void)setSamplerState:(MTLResourceID)state atIndex:(unint64_t)index;
- (void)setTexture:(MTLResourceID)texture atIndex:(unint64_t)index;
@end

@implementation MTL4DebugArgumentTable

- (MTL4DebugArgumentTable)initWithArgumentTable:(id)table device:(id)device descriptor:(id)descriptor
{
  v12.receiver = self;
  v12.super_class = MTL4DebugArgumentTable;
  v6 = [(MTL4ToolsArgumentTable *)&v12 initWithBaseObject:table parent:device];
  if (v6)
  {
    maxBufferBindCount = [descriptor maxBufferBindCount];
    LODWORD(v11) = 0;
    BYTE4(v11) = [descriptor initializeBindings];
    std::vector<MTL4DebugBindingInfo>::resize(&v6->_bufferBindings.__begin_, maxBufferBindCount, &v11);
    maxTextureBindCount = [descriptor maxTextureBindCount];
    LODWORD(v11) = 0;
    BYTE4(v11) = [descriptor initializeBindings];
    std::vector<MTL4DebugBindingInfo>::resize(&v6->_textureBindings.__begin_, maxTextureBindCount, &v11);
    maxSamplerStateBindCount = [descriptor maxSamplerStateBindCount];
    LODWORD(v11) = 0;
    BYTE4(v11) = [descriptor initializeBindings];
    std::vector<MTL4DebugBindingInfo>::resize(&v6->_samplerBindings.__begin_, maxSamplerStateBindCount, &v11);
    v6->_supportsAttributeStrides = [descriptor supportAttributeStrides];
  }

  return v6;
}

- (void)setAddress:(unint64_t)address atIndex:(unint64_t)index
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (index >= self->_bufferBindings.__end_ - self->_bufferBindings.__begin_)
  {
    _MTLMessageContextPush_();
  }

  if (!v9)
  {
    v8.receiver = self;
    v8.super_class = MTL4DebugArgumentTable;
    [(MTL4ToolsArgumentTable *)&v8 setAddress:address atIndex:index];
    v7 = &self->_bufferBindings.__begin_[index];
    v7->var0 = 1;
    v7->var1 = address == 0;
  }

  _MTLMessageContextEnd();
}

- (void)setAddress:(unint64_t)address attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (!self->_supportsAttributeStrides)
  {
    _MTLMessageContextPush_();
  }

  if (index >= self->_bufferBindings.__end_ - self->_bufferBindings.__begin_)
  {
    _MTLMessageContextPush_();
  }

  if (!v11)
  {
    v10.receiver = self;
    v10.super_class = MTL4DebugArgumentTable;
    [(MTL4ToolsArgumentTable *)&v10 setAddress:address attributeStride:stride atIndex:index];
    v9 = &self->_bufferBindings.__begin_[index];
    v9->var0 = 1;
    v9->var1 = address == 0;
  }

  _MTLMessageContextEnd();
}

- (void)setResource:(MTLResourceID)resource atBufferIndex:(unint64_t)index
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (index >= self->_bufferBindings.__end_ - self->_bufferBindings.__begin_)
  {
    _MTLMessageContextPush_();
  }

  if (!v9)
  {
    v8.receiver = self;
    v8.super_class = MTL4DebugArgumentTable;
    [(MTL4ToolsArgumentTable *)&v8 setResource:resource._impl atBufferIndex:index];
    v7 = &self->_bufferBindings.__begin_[index];
    v7->var0 = 2;
    v7->var1 = resource._impl == 0;
  }

  _MTLMessageContextEnd();
}

- (void)setTexture:(MTLResourceID)texture atIndex:(unint64_t)index
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (index >= self->_textureBindings.__end_ - self->_textureBindings.__begin_)
  {
    _MTLMessageContextPush_();
  }

  if (!v9)
  {
    v8.receiver = self;
    v8.super_class = MTL4DebugArgumentTable;
    [(MTL4ToolsArgumentTable *)&v8 setTexture:texture._impl atIndex:index];
    v7 = &self->_textureBindings.__begin_[index];
    v7->var0 = 2;
    v7->var1 = texture._impl == 0;
  }

  _MTLMessageContextEnd();
}

- (void)setSamplerState:(MTLResourceID)state atIndex:(unint64_t)index
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (index >= self->_samplerBindings.__end_ - self->_samplerBindings.__begin_)
  {
    _MTLMessageContextPush_();
  }

  if (!v9)
  {
    v8.receiver = self;
    v8.super_class = MTL4DebugArgumentTable;
    [(MTL4ToolsArgumentTable *)&v8 setSamplerState:state._impl atIndex:index];
    v7 = &self->_samplerBindings.__begin_[index];
    v7->var0 = 2;
    v7->var1 = state._impl == 0;
  }

  _MTLMessageContextEnd();
}

- (const)bufferBindingAtIndex:(unsigned int)index
{
  begin = self->_bufferBindings.__begin_;
  v4 = self->_bufferBindings.__end_ - begin;
  v5 = &begin[index];
  if (index >= (v4 >> 3))
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

- (const)textureBindingAtIndex:(unsigned int)index
{
  begin = self->_textureBindings.__begin_;
  v4 = self->_textureBindings.__end_ - begin;
  v5 = &begin[index];
  if (index >= (v4 >> 3))
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

- (const)samplerBindingAtIndex:(unsigned int)index
{
  begin = self->_samplerBindings.__begin_;
  v4 = self->_samplerBindings.__end_ - begin;
  v5 = &begin[index];
  if (index >= (v4 >> 3))
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 5) = 0;
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 8) = 0;
  *(self + 12) = 0;
  *(self + 13) = 0;
  *(self + 11) = 0;
  return self;
}

@end