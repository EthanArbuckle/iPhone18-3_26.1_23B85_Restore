@interface MTLGPUDebugTextureViewPool
- (MTLGPUDebugTextureViewPool)initWithTextureViewPool:(id)a3 device:(id)a4;
- (MTLResourceID)copyResourceViewsFromPool:(id)a3 sourceRange:(_NSRange)a4 destinationIndex:(unint64_t)a5;
- (MTLResourceID)setTextureView:(id)a3 atIndex:(unint64_t)a4;
- (MTLResourceID)setTextureView:(id)a3 descriptor:(id)a4 atIndex:(unint64_t)a5;
- (MTLResourceID)setTextureViewFromBuffer:(id)a3 descriptor:(id)a4 offset:(unint64_t)a5 bytesPerRow:(unint64_t)a6 atIndex:(unint64_t)a7;
- (id).cxx_construct;
- (void)copyResourceStatesFromPool:(id)a3 sourceRange:(_NSRange)a4 destinationLocation:(unint64_t)a5;
- (void)dealloc;
- (void)setView:(id)a3 resourceID:(unint64_t)a4 type:(unint64_t)a5 index:(unint64_t)a6;
@end

@implementation MTLGPUDebugTextureViewPool

- (MTLGPUDebugTextureViewPool)initWithTextureViewPool:(id)a3 device:(id)a4
{
  v10.receiver = self;
  v10.super_class = MTLGPUDebugTextureViewPool;
  v5 = [(MTLToolsTextureViewPool *)&v10 initWithBaseObject:a3 parent:a4];
  std::vector<objc_object  {objcproto19MTLGPUDebugViewable}*>::vector[abi:ne200100](&v8, [a3 resourceViewCount]);
  begin = v5->viewables.__begin_;
  if (begin)
  {
    v5->viewables.var0 = begin;
    operator delete(begin);
  }

  *&v5->viewables.__begin_ = v8;
  v5->viewables.var1 = v9;
  return v5;
}

- (void)dealloc
{
  p_viewables = &self->viewables;
  begin = self->viewables.__begin_;
  var0 = self->viewables.var0;
  if (var0 != begin)
  {
    v6 = 0;
    do
    {
      if (begin[v6])
      {
        TextureTypeTable::setType(&self->super.super._device[3]._integrated, [(MTLToolsTextureViewPool *)self baseResourceID]+ v6, MTLTextureTypeTextureBuffer|MTLTextureTypeCubeArray);
        begin = p_viewables->__begin_;
        var0 = p_viewables->var0;
      }

      ++v6;
    }

    while (v6 < var0 - begin);
  }

  v7.receiver = self;
  v7.super_class = MTLGPUDebugTextureViewPool;
  [(MTLToolsTextureViewPool *)&v7 dealloc];
}

- (MTLResourceID)copyResourceViewsFromPool:(id)a3 sourceRange:(_NSRange)a4 destinationIndex:(unint64_t)a5
{
  v5 = a5;
  length = a4.length;
  location = a4.location;
  for (v10._impl = [-[MTLToolsObject baseObject](self "baseObject")]; length; --length)
  {
    -[MTLGPUDebugTextureViewPool setView:resourceID:type:index:](self, "setView:resourceID:type:index:", [a3 getViewableAt:location], -[MTLToolsTextureViewPool baseResourceID](self, "baseResourceID") + v5, TextureTypeTable::getType(&self->super.super._device[3]._integrated, objc_msgSend(a3, "baseResourceID") + location), v5);
    ++v5;
    ++location;
  }

  return v10;
}

- (void)copyResourceStatesFromPool:(id)a3 sourceRange:(_NSRange)a4 destinationLocation:(unint64_t)a5
{
  v5 = a5;
  length = a4.length;
  location = a4.location;
  [-[MTLToolsObject baseObject](self "baseObject")];
  for (; length; --length)
  {
    -[MTLGPUDebugTextureViewPool setView:resourceID:type:index:](self, "setView:resourceID:type:index:", [a3 getViewableAt:location], -[MTLToolsTextureViewPool baseResourceID](self, "baseResourceID") + v5, TextureTypeTable::getType(&self->super.super._device[3]._integrated, objc_msgSend(a3, "baseResourceID") + location), v5);
    ++v5;
    ++location;
  }
}

- (void)setView:(id)a3 resourceID:(unint64_t)a4 type:(unint64_t)a5 index:(unint64_t)a6
{
  begin = self->viewables.__begin_;
  v12 = begin[a6];
  if (v12)
  {
    [(__end_ *)v12 removeView:a4];
    begin = self->viewables.__begin_;
  }

  begin[a6] = a3;
  [a3 addView:a4];
  p_integrated = &self->super.super._device[3]._integrated;

  TextureTypeTable::setType(p_integrated, a4, a5);
}

- (MTLResourceID)setTextureView:(id)a3 descriptor:(id)a4 atIndex:(unint64_t)a5
{
  v9._impl = [-[MTLToolsObject baseObject](self "baseObject")];
  -[MTLGPUDebugTextureViewPool setView:resourceID:type:index:](self, "setView:resourceID:type:index:", a3, v9._impl, [a4 textureType], a5);
  return v9;
}

- (MTLResourceID)setTextureViewFromBuffer:(id)a3 descriptor:(id)a4 offset:(unint64_t)a5 bytesPerRow:(unint64_t)a6 atIndex:(unint64_t)a7
{
  v11._impl = [-[MTLToolsObject baseObject](self "baseObject")];
  -[MTLGPUDebugTextureViewPool setView:resourceID:type:index:](self, "setView:resourceID:type:index:", a3, v11._impl, [a4 textureType], a7);
  return v11;
}

- (MTLResourceID)setTextureView:(id)a3 atIndex:(unint64_t)a4
{
  v7._impl = [-[MTLToolsObject baseObject](self "baseObject")];
  -[MTLGPUDebugTextureViewPool setView:resourceID:type:index:](self, "setView:resourceID:type:index:", a3, v7._impl, [a3 textureType], a4);
  return v7;
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 5) = 0;
  return self;
}

@end