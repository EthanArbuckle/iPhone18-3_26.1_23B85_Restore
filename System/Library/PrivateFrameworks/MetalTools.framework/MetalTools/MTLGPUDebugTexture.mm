@interface MTLGPUDebugTexture
- (MTLGPUDebugTexture)initWithTexture:(id)texture heap:(id)heap device:(id)device;
- (MTLGPUDebugTexture)initWithTextureView:(id)view parentBuffer:(id)buffer heap:(id)heap device:(id)device;
- (MTLGPUDebugTexture)initWithTextureView:(id)view parentTexture:(id)texture heap:(id)heap device:(id)device;
- (id).cxx_construct;
- (id)newCompressedTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type level:(unint64_t)level slice:(unint64_t)slice;
- (id)newTextureViewWithDescriptor:(id)descriptor;
- (id)newTextureViewWithPixelFormat:(unint64_t)format;
- (id)newTextureViewWithPixelFormat:(unint64_t)format resourceIndex:(unint64_t)index;
- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices;
- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices resourceIndex:(unint64_t)index;
- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices swizzle:(id)swizzle;
- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices swizzle:(id)swizzle resourceIndex:(unint64_t)index;
- (void)dealloc;
@end

@implementation MTLGPUDebugTexture

- (MTLGPUDebugTexture)initWithTexture:(id)texture heap:(id)heap device:(id)device
{
  v7.receiver = self;
  v7.super_class = MTLGPUDebugTexture;
  v5 = [(MTLToolsResource *)&v7 initWithBaseObject:texture parent:device heap:heap];
  *(v5 + 9) = [v5 uniqueIdentifier];
  TextureTypeTable::addResource((*(v5 + 3) + 432), *(v5 + 3), v5);
  return v5;
}

- (MTLGPUDebugTexture)initWithTextureView:(id)view parentBuffer:(id)buffer heap:(id)heap device:(id)device
{
  v8.receiver = self;
  v8.super_class = MTLGPUDebugTexture;
  v6 = [(MTLToolsTexture *)&v8 initWithBaseObject:view parent:device buffer:buffer];
  *(v6 + 9) = [v6 uniqueIdentifier];
  TextureTypeTable::addResource((*(v6 + 3) + 432), *(v6 + 3), v6);
  return v6;
}

- (MTLGPUDebugTexture)initWithTextureView:(id)view parentTexture:(id)texture heap:(id)heap device:(id)device
{
  v8.receiver = self;
  v8.super_class = MTLGPUDebugTexture;
  v6 = [(MTLToolsTexture *)&v8 initWithBaseObject:view parent:device parentTexture:texture];
  *(v6 + 9) = [v6 uniqueIdentifier];
  TextureTypeTable::addResource((*(v6 + 3) + 432), *(v6 + 3), v6);
  return v6;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)format
{
  v4 = [(MTLToolsObject *)self->super.super.super._baseObject newTextureViewWithPixelFormat:format];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [[MTLGPUDebugTexture alloc] initWithTextureView:v4 parentTexture:self heap:[(MTLToolsResource *)self heap] device:self->super.super.super._device];

  [(MTLGPUDebugTexture *)self addView:[(MTLToolsTexture *)v6 gpuResourceID]];
  [(MTLGPUDebugTexture *)v6 setParentViewable:self];
  return v6;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices
{
  v7 = [(MTLToolsObject *)self->super.super.super._baseObject newTextureViewWithPixelFormat:format textureType:type levels:levels.location slices:levels.length, slices.location, slices.length];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = [[MTLGPUDebugTexture alloc] initWithTextureView:v7 parentTexture:self heap:[(MTLToolsResource *)self heap] device:self->super.super.super._device];

  [(MTLGPUDebugTexture *)self addView:[(MTLToolsTexture *)v9 gpuResourceID]];
  [(MTLGPUDebugTexture *)v9 setParentViewable:self];
  return v9;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices swizzle:(id)swizzle
{
  v8 = [(MTLToolsObject *)self->super.super.super._baseObject newTextureViewWithPixelFormat:format textureType:type levels:levels.location slices:levels.length swizzle:slices.location, slices.length, *&swizzle];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = [[MTLGPUDebugTexture alloc] initWithTextureView:v8 parentTexture:self heap:[(MTLToolsResource *)self heap] device:self->super.super.super._device];

  [(MTLGPUDebugTexture *)self addView:[(MTLToolsTexture *)v10 gpuResourceID]];
  [(MTLGPUDebugTexture *)v10 setParentViewable:self];
  return v10;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)format resourceIndex:(unint64_t)index
{
  v5 = [(MTLToolsObject *)self->super.super.super._baseObject newTextureViewWithPixelFormat:format resourceIndex:index];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [[MTLGPUDebugTexture alloc] initWithTextureView:v5 parentTexture:self heap:[(MTLToolsResource *)self heap] device:self->super.super.super._device];

  [(MTLGPUDebugTexture *)self addView:[(MTLToolsTexture *)v7 gpuResourceID]];
  [(MTLGPUDebugTexture *)v7 setParentViewable:self];
  return v7;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices resourceIndex:(unint64_t)index
{
  index = [(MTLToolsObject *)self->super.super.super._baseObject newTextureViewWithPixelFormat:format textureType:type levels:levels.location slices:levels.length resourceIndex:slices.location, slices.length, index];
  if (!index)
  {
    return 0;
  }

  v9 = index;
  v10 = [[MTLGPUDebugTexture alloc] initWithTextureView:index parentTexture:self heap:[(MTLToolsResource *)self heap] device:self->super.super.super._device];

  [(MTLGPUDebugTexture *)self addView:[(MTLToolsTexture *)v10 gpuResourceID]];
  [(MTLGPUDebugTexture *)v10 setParentViewable:self];
  return v10;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices swizzle:(id)swizzle resourceIndex:(unint64_t)index
{
  index = [(MTLToolsObject *)self->super.super.super._baseObject newTextureViewWithPixelFormat:format textureType:type levels:levels.location slices:levels.length swizzle:slices.location resourceIndex:slices.length, *&swizzle, index];
  if (!index)
  {
    return 0;
  }

  v10 = index;
  v11 = [[MTLGPUDebugTexture alloc] initWithTextureView:index parentTexture:self heap:[(MTLToolsResource *)self heap] device:self->super.super.super._device];

  [(MTLGPUDebugTexture *)self addView:[(MTLToolsTexture *)v11 gpuResourceID]];
  [(MTLGPUDebugTexture *)v11 setParentViewable:self];
  return v11;
}

- (id)newCompressedTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type level:(unint64_t)level slice:(unint64_t)slice
{
  v7 = [(MTLToolsObject *)self->super.super.super._baseObject newCompressedTextureViewWithPixelFormat:format textureType:type level:level slice:slice];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = [[MTLGPUDebugTexture alloc] initWithTextureView:v7 parentTexture:self heap:[(MTLToolsResource *)self heap] device:self->super.super.super._device];

  [(MTLGPUDebugTexture *)self addView:[(MTLToolsTexture *)v9 gpuResourceID]];
  [(MTLGPUDebugTexture *)v9 setParentViewable:self];
  return v9;
}

- (id)newTextureViewWithDescriptor:(id)descriptor
{
  v4 = [(MTLToolsObject *)self->super.super.super._baseObject newTextureViewWithDescriptor:descriptor];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [[MTLGPUDebugTexture alloc] initWithTextureView:v4 parentTexture:self heap:[(MTLToolsResource *)self heap] device:self->super.super.super._device];

  [(MTLGPUDebugTexture *)self addView:[(MTLToolsTexture *)v6 gpuResourceID]];
  [(MTLGPUDebugTexture *)v6 setParentViewable:self];
  return v6;
}

- (void)dealloc
{
  device = self->super.super.super._device;
  TextureTypeTable::removeResource(&device[3]._integrated, device, self);
  for (i = self->_activeViews.__table_.__first_node_.__next_; i; i = *i)
  {
    TextureTypeTable::setType(&device[3]._integrated, i[2], MTLTextureTypeTextureBuffer|MTLTextureTypeCubeArray);
  }

  parentViewable = self->_parentViewable;
  if (parentViewable)
  {
    [(MTLGPUDebugViewable *)parentViewable removeView:[(MTLToolsTexture *)self gpuResourceID]];
    [(MTLGPUDebugViewable *)self->_parentViewable release];
  }

  v6.receiver = self;
  v6.super_class = MTLGPUDebugTexture;
  [(MTLToolsTexture *)&v6 dealloc];
}

- (id).cxx_construct
{
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 28) = 1065353216;
  return self;
}

@end