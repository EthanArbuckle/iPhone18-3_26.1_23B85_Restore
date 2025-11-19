@interface MTLGPUDebugTexture
- (MTLGPUDebugTexture)initWithTexture:(id)a3 heap:(id)a4 device:(id)a5;
- (MTLGPUDebugTexture)initWithTextureView:(id)a3 parentBuffer:(id)a4 heap:(id)a5 device:(id)a6;
- (MTLGPUDebugTexture)initWithTextureView:(id)a3 parentTexture:(id)a4 heap:(id)a5 device:(id)a6;
- (id).cxx_construct;
- (id)newCompressedTextureViewWithPixelFormat:(unint64_t)a3 textureType:(unint64_t)a4 level:(unint64_t)a5 slice:(unint64_t)a6;
- (id)newTextureViewWithDescriptor:(id)a3;
- (id)newTextureViewWithPixelFormat:(unint64_t)a3;
- (id)newTextureViewWithPixelFormat:(unint64_t)a3 resourceIndex:(unint64_t)a4;
- (id)newTextureViewWithPixelFormat:(unint64_t)a3 textureType:(unint64_t)a4 levels:(_NSRange)a5 slices:(_NSRange)a6;
- (id)newTextureViewWithPixelFormat:(unint64_t)a3 textureType:(unint64_t)a4 levels:(_NSRange)a5 slices:(_NSRange)a6 resourceIndex:(unint64_t)a7;
- (id)newTextureViewWithPixelFormat:(unint64_t)a3 textureType:(unint64_t)a4 levels:(_NSRange)a5 slices:(_NSRange)a6 swizzle:(id)a7;
- (id)newTextureViewWithPixelFormat:(unint64_t)a3 textureType:(unint64_t)a4 levels:(_NSRange)a5 slices:(_NSRange)a6 swizzle:(id)a7 resourceIndex:(unint64_t)a8;
- (void)dealloc;
@end

@implementation MTLGPUDebugTexture

- (MTLGPUDebugTexture)initWithTexture:(id)a3 heap:(id)a4 device:(id)a5
{
  v7.receiver = self;
  v7.super_class = MTLGPUDebugTexture;
  v5 = [(MTLToolsResource *)&v7 initWithBaseObject:a3 parent:a5 heap:a4];
  *(v5 + 9) = [v5 uniqueIdentifier];
  TextureTypeTable::addResource((*(v5 + 3) + 432), *(v5 + 3), v5);
  return v5;
}

- (MTLGPUDebugTexture)initWithTextureView:(id)a3 parentBuffer:(id)a4 heap:(id)a5 device:(id)a6
{
  v8.receiver = self;
  v8.super_class = MTLGPUDebugTexture;
  v6 = [(MTLToolsTexture *)&v8 initWithBaseObject:a3 parent:a6 buffer:a4];
  *(v6 + 9) = [v6 uniqueIdentifier];
  TextureTypeTable::addResource((*(v6 + 3) + 432), *(v6 + 3), v6);
  return v6;
}

- (MTLGPUDebugTexture)initWithTextureView:(id)a3 parentTexture:(id)a4 heap:(id)a5 device:(id)a6
{
  v8.receiver = self;
  v8.super_class = MTLGPUDebugTexture;
  v6 = [(MTLToolsTexture *)&v8 initWithBaseObject:a3 parent:a6 parentTexture:a4];
  *(v6 + 9) = [v6 uniqueIdentifier];
  TextureTypeTable::addResource((*(v6 + 3) + 432), *(v6 + 3), v6);
  return v6;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self->super.super.super._baseObject newTextureViewWithPixelFormat:a3];
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

- (id)newTextureViewWithPixelFormat:(unint64_t)a3 textureType:(unint64_t)a4 levels:(_NSRange)a5 slices:(_NSRange)a6
{
  v7 = [(MTLToolsObject *)self->super.super.super._baseObject newTextureViewWithPixelFormat:a3 textureType:a4 levels:a5.location slices:a5.length, a6.location, a6.length];
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

- (id)newTextureViewWithPixelFormat:(unint64_t)a3 textureType:(unint64_t)a4 levels:(_NSRange)a5 slices:(_NSRange)a6 swizzle:(id)a7
{
  v8 = [(MTLToolsObject *)self->super.super.super._baseObject newTextureViewWithPixelFormat:a3 textureType:a4 levels:a5.location slices:a5.length swizzle:a6.location, a6.length, *&a7];
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

- (id)newTextureViewWithPixelFormat:(unint64_t)a3 resourceIndex:(unint64_t)a4
{
  v5 = [(MTLToolsObject *)self->super.super.super._baseObject newTextureViewWithPixelFormat:a3 resourceIndex:a4];
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

- (id)newTextureViewWithPixelFormat:(unint64_t)a3 textureType:(unint64_t)a4 levels:(_NSRange)a5 slices:(_NSRange)a6 resourceIndex:(unint64_t)a7
{
  v8 = [(MTLToolsObject *)self->super.super.super._baseObject newTextureViewWithPixelFormat:a3 textureType:a4 levels:a5.location slices:a5.length resourceIndex:a6.location, a6.length, a7];
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

- (id)newTextureViewWithPixelFormat:(unint64_t)a3 textureType:(unint64_t)a4 levels:(_NSRange)a5 slices:(_NSRange)a6 swizzle:(id)a7 resourceIndex:(unint64_t)a8
{
  v9 = [(MTLToolsObject *)self->super.super.super._baseObject newTextureViewWithPixelFormat:a3 textureType:a4 levels:a5.location slices:a5.length swizzle:a6.location resourceIndex:a6.length, *&a7, a8];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = [[MTLGPUDebugTexture alloc] initWithTextureView:v9 parentTexture:self heap:[(MTLToolsResource *)self heap] device:self->super.super.super._device];

  [(MTLGPUDebugTexture *)self addView:[(MTLToolsTexture *)v11 gpuResourceID]];
  [(MTLGPUDebugTexture *)v11 setParentViewable:self];
  return v11;
}

- (id)newCompressedTextureViewWithPixelFormat:(unint64_t)a3 textureType:(unint64_t)a4 level:(unint64_t)a5 slice:(unint64_t)a6
{
  v7 = [(MTLToolsObject *)self->super.super.super._baseObject newCompressedTextureViewWithPixelFormat:a3 textureType:a4 level:a5 slice:a6];
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

- (id)newTextureViewWithDescriptor:(id)a3
{
  v4 = [(MTLToolsObject *)self->super.super.super._baseObject newTextureViewWithDescriptor:a3];
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