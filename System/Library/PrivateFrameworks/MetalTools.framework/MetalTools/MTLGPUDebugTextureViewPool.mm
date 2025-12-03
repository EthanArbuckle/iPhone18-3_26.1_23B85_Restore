@interface MTLGPUDebugTextureViewPool
- (MTLGPUDebugTextureViewPool)initWithTextureViewPool:(id)pool device:(id)device;
- (MTLResourceID)copyResourceViewsFromPool:(id)pool sourceRange:(_NSRange)range destinationIndex:(unint64_t)index;
- (MTLResourceID)setTextureView:(id)view atIndex:(unint64_t)index;
- (MTLResourceID)setTextureView:(id)view descriptor:(id)descriptor atIndex:(unint64_t)index;
- (MTLResourceID)setTextureViewFromBuffer:(id)buffer descriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row atIndex:(unint64_t)index;
- (id).cxx_construct;
- (void)copyResourceStatesFromPool:(id)pool sourceRange:(_NSRange)range destinationLocation:(unint64_t)location;
- (void)dealloc;
- (void)setView:(id)view resourceID:(unint64_t)d type:(unint64_t)type index:(unint64_t)index;
@end

@implementation MTLGPUDebugTextureViewPool

- (MTLGPUDebugTextureViewPool)initWithTextureViewPool:(id)pool device:(id)device
{
  v10.receiver = self;
  v10.super_class = MTLGPUDebugTextureViewPool;
  v5 = [(MTLToolsTextureViewPool *)&v10 initWithBaseObject:pool parent:device];
  std::vector<objc_object  {objcproto19MTLGPUDebugViewable}*>::vector[abi:ne200100](&v8, [pool resourceViewCount]);
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

- (MTLResourceID)copyResourceViewsFromPool:(id)pool sourceRange:(_NSRange)range destinationIndex:(unint64_t)index
{
  indexCopy = index;
  length = range.length;
  location = range.location;
  for (v10._impl = [-[MTLToolsObject baseObject](self "baseObject")]; length; --length)
  {
    -[MTLGPUDebugTextureViewPool setView:resourceID:type:index:](self, "setView:resourceID:type:index:", [pool getViewableAt:location], -[MTLToolsTextureViewPool baseResourceID](self, "baseResourceID") + indexCopy, TextureTypeTable::getType(&self->super.super._device[3]._integrated, objc_msgSend(pool, "baseResourceID") + location), indexCopy);
    ++indexCopy;
    ++location;
  }

  return v10;
}

- (void)copyResourceStatesFromPool:(id)pool sourceRange:(_NSRange)range destinationLocation:(unint64_t)location
{
  locationCopy = location;
  length = range.length;
  location = range.location;
  [-[MTLToolsObject baseObject](self "baseObject")];
  for (; length; --length)
  {
    -[MTLGPUDebugTextureViewPool setView:resourceID:type:index:](self, "setView:resourceID:type:index:", [pool getViewableAt:location], -[MTLToolsTextureViewPool baseResourceID](self, "baseResourceID") + locationCopy, TextureTypeTable::getType(&self->super.super._device[3]._integrated, objc_msgSend(pool, "baseResourceID") + location), locationCopy);
    ++locationCopy;
    ++location;
  }
}

- (void)setView:(id)view resourceID:(unint64_t)d type:(unint64_t)type index:(unint64_t)index
{
  begin = self->viewables.__begin_;
  v12 = begin[index];
  if (v12)
  {
    [(__end_ *)v12 removeView:d];
    begin = self->viewables.__begin_;
  }

  begin[index] = view;
  [view addView:d];
  p_integrated = &self->super.super._device[3]._integrated;

  TextureTypeTable::setType(p_integrated, d, type);
}

- (MTLResourceID)setTextureView:(id)view descriptor:(id)descriptor atIndex:(unint64_t)index
{
  v9._impl = [-[MTLToolsObject baseObject](self "baseObject")];
  -[MTLGPUDebugTextureViewPool setView:resourceID:type:index:](self, "setView:resourceID:type:index:", view, v9._impl, [descriptor textureType], index);
  return v9;
}

- (MTLResourceID)setTextureViewFromBuffer:(id)buffer descriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row atIndex:(unint64_t)index
{
  v11._impl = [-[MTLToolsObject baseObject](self "baseObject")];
  -[MTLGPUDebugTextureViewPool setView:resourceID:type:index:](self, "setView:resourceID:type:index:", buffer, v11._impl, [descriptor textureType], index);
  return v11;
}

- (MTLResourceID)setTextureView:(id)view atIndex:(unint64_t)index
{
  v7._impl = [-[MTLToolsObject baseObject](self "baseObject")];
  -[MTLGPUDebugTextureViewPool setView:resourceID:type:index:](self, "setView:resourceID:type:index:", view, v7._impl, [view textureType], index);
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