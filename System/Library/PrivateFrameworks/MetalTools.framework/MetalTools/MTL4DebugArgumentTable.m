@interface MTL4DebugArgumentTable
- (MTL4DebugArgumentTable)initWithArgumentTable:(id)a3 device:(id)a4 descriptor:(id)a5;
- (const)bufferBindingAtIndex:(unsigned int)a3;
- (const)samplerBindingAtIndex:(unsigned int)a3;
- (const)textureBindingAtIndex:(unsigned int)a3;
- (id).cxx_construct;
- (void)setAddress:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setAddress:(unint64_t)a3 attributeStride:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setResource:(MTLResourceID)a3 atBufferIndex:(unint64_t)a4;
- (void)setSamplerState:(MTLResourceID)a3 atIndex:(unint64_t)a4;
- (void)setTexture:(MTLResourceID)a3 atIndex:(unint64_t)a4;
@end

@implementation MTL4DebugArgumentTable

- (MTL4DebugArgumentTable)initWithArgumentTable:(id)a3 device:(id)a4 descriptor:(id)a5
{
  v12.receiver = self;
  v12.super_class = MTL4DebugArgumentTable;
  v6 = [(MTL4ToolsArgumentTable *)&v12 initWithBaseObject:a3 parent:a4];
  if (v6)
  {
    v7 = [a5 maxBufferBindCount];
    LODWORD(v11) = 0;
    BYTE4(v11) = [a5 initializeBindings];
    std::vector<MTL4DebugBindingInfo>::resize(&v6->_bufferBindings.__begin_, v7, &v11);
    v8 = [a5 maxTextureBindCount];
    LODWORD(v11) = 0;
    BYTE4(v11) = [a5 initializeBindings];
    std::vector<MTL4DebugBindingInfo>::resize(&v6->_textureBindings.__begin_, v8, &v11);
    v9 = [a5 maxSamplerStateBindCount];
    LODWORD(v11) = 0;
    BYTE4(v11) = [a5 initializeBindings];
    std::vector<MTL4DebugBindingInfo>::resize(&v6->_samplerBindings.__begin_, v9, &v11);
    v6->_supportsAttributeStrides = [a5 supportAttributeStrides];
  }

  return v6;
}

- (void)setAddress:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (a4 >= self->_bufferBindings.__end_ - self->_bufferBindings.__begin_)
  {
    _MTLMessageContextPush_();
  }

  if (!v9)
  {
    v8.receiver = self;
    v8.super_class = MTL4DebugArgumentTable;
    [(MTL4ToolsArgumentTable *)&v8 setAddress:a3 atIndex:a4];
    v7 = &self->_bufferBindings.__begin_[a4];
    v7->var0 = 1;
    v7->var1 = a3 == 0;
  }

  _MTLMessageContextEnd();
}

- (void)setAddress:(unint64_t)a3 attributeStride:(unint64_t)a4 atIndex:(unint64_t)a5
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

  if (a5 >= self->_bufferBindings.__end_ - self->_bufferBindings.__begin_)
  {
    _MTLMessageContextPush_();
  }

  if (!v11)
  {
    v10.receiver = self;
    v10.super_class = MTL4DebugArgumentTable;
    [(MTL4ToolsArgumentTable *)&v10 setAddress:a3 attributeStride:a4 atIndex:a5];
    v9 = &self->_bufferBindings.__begin_[a5];
    v9->var0 = 1;
    v9->var1 = a3 == 0;
  }

  _MTLMessageContextEnd();
}

- (void)setResource:(MTLResourceID)a3 atBufferIndex:(unint64_t)a4
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (a4 >= self->_bufferBindings.__end_ - self->_bufferBindings.__begin_)
  {
    _MTLMessageContextPush_();
  }

  if (!v9)
  {
    v8.receiver = self;
    v8.super_class = MTL4DebugArgumentTable;
    [(MTL4ToolsArgumentTable *)&v8 setResource:a3._impl atBufferIndex:a4];
    v7 = &self->_bufferBindings.__begin_[a4];
    v7->var0 = 2;
    v7->var1 = a3._impl == 0;
  }

  _MTLMessageContextEnd();
}

- (void)setTexture:(MTLResourceID)a3 atIndex:(unint64_t)a4
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (a4 >= self->_textureBindings.__end_ - self->_textureBindings.__begin_)
  {
    _MTLMessageContextPush_();
  }

  if (!v9)
  {
    v8.receiver = self;
    v8.super_class = MTL4DebugArgumentTable;
    [(MTL4ToolsArgumentTable *)&v8 setTexture:a3._impl atIndex:a4];
    v7 = &self->_textureBindings.__begin_[a4];
    v7->var0 = 2;
    v7->var1 = a3._impl == 0;
  }

  _MTLMessageContextEnd();
}

- (void)setSamplerState:(MTLResourceID)a3 atIndex:(unint64_t)a4
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  [(MTLToolsObject *)self baseObject];
  _MTLMessageContextBegin_();
  if (a4 >= self->_samplerBindings.__end_ - self->_samplerBindings.__begin_)
  {
    _MTLMessageContextPush_();
  }

  if (!v9)
  {
    v8.receiver = self;
    v8.super_class = MTL4DebugArgumentTable;
    [(MTL4ToolsArgumentTable *)&v8 setSamplerState:a3._impl atIndex:a4];
    v7 = &self->_samplerBindings.__begin_[a4];
    v7->var0 = 2;
    v7->var1 = a3._impl == 0;
  }

  _MTLMessageContextEnd();
}

- (const)bufferBindingAtIndex:(unsigned int)a3
{
  begin = self->_bufferBindings.__begin_;
  v4 = self->_bufferBindings.__end_ - begin;
  v5 = &begin[a3];
  if (a3 >= (v4 >> 3))
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

- (const)textureBindingAtIndex:(unsigned int)a3
{
  begin = self->_textureBindings.__begin_;
  v4 = self->_textureBindings.__end_ - begin;
  v5 = &begin[a3];
  if (a3 >= (v4 >> 3))
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

- (const)samplerBindingAtIndex:(unsigned int)a3
{
  begin = self->_samplerBindings.__begin_;
  v4 = self->_samplerBindings.__end_ - begin;
  v5 = &begin[a3];
  if (a3 >= (v4 >> 3))
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