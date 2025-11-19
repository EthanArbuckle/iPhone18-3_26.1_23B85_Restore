@interface MTLLegacySVTexture
- (MTLLegacySVTexture)initWithTexture:(id)a3 heap:(id)a4 device:(id)a5;
- (MTLLegacySVTexture)initWithTextureView:(id)a3 parentBuffer:(id)a4 heap:(id)a5 device:(id)a6;
- (MTLLegacySVTexture)initWithTextureView:(id)a3 parentTexture:(id)a4 heap:(id)a5 device:(id)a6;
- (id)newCompressedTextureViewWithPixelFormat:(unint64_t)a3 textureType:(unint64_t)a4 level:(unint64_t)a5 slice:(unint64_t)a6;
- (id)newTextureViewWithDescriptor:(id)a3;
- (id)newTextureViewWithPixelFormat:(unint64_t)a3;
- (id)newTextureViewWithPixelFormat:(unint64_t)a3 resourceIndex:(unint64_t)a4;
- (id)newTextureViewWithPixelFormat:(unint64_t)a3 textureType:(unint64_t)a4 levels:(_NSRange)a5 slices:(_NSRange)a6;
- (id)newTextureViewWithPixelFormat:(unint64_t)a3 textureType:(unint64_t)a4 levels:(_NSRange)a5 slices:(_NSRange)a6 resourceIndex:(unint64_t)a7;
- (id)newTextureViewWithPixelFormat:(unint64_t)a3 textureType:(unint64_t)a4 levels:(_NSRange)a5 slices:(_NSRange)a6 swizzle:(id)a7;
- (id)newTextureViewWithPixelFormat:(unint64_t)a3 textureType:(unint64_t)a4 levels:(_NSRange)a5 slices:(_NSRange)a6 swizzle:(id)a7 resourceIndex:(unint64_t)a8;
@end

@implementation MTLLegacySVTexture

- (MTLLegacySVTexture)initWithTexture:(id)a3 heap:(id)a4 device:(id)a5
{
  v7.receiver = self;
  v7.super_class = MTLLegacySVTexture;
  v5 = [(MTLToolsResource *)&v7 initWithBaseObject:a3 parent:a5 heap:a4];
  InitResourceIdentifier(v5);
  return v5;
}

- (MTLLegacySVTexture)initWithTextureView:(id)a3 parentBuffer:(id)a4 heap:(id)a5 device:(id)a6
{
  v8.receiver = self;
  v8.super_class = MTLLegacySVTexture;
  v6 = [(MTLToolsTexture *)&v8 initWithBaseObject:a3 parent:a6 buffer:a4];
  InitResourceIdentifier(v6);
  return v6;
}

- (MTLLegacySVTexture)initWithTextureView:(id)a3 parentTexture:(id)a4 heap:(id)a5 device:(id)a6
{
  v8.receiver = self;
  v8.super_class = MTLLegacySVTexture;
  v6 = [(MTLToolsTexture *)&v8 initWithBaseObject:a3 parent:a6 parentTexture:a4];
  InitResourceIdentifier(v6);
  return v6;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)a3
{
  result = [(MTLToolsObject *)self->super.super.super._baseObject newTextureViewWithPixelFormat:a3];
  if (result)
  {
    v5 = result;
    v6 = [[MTLLegacySVTexture alloc] initWithTextureView:result parentTexture:self heap:[(MTLToolsResource *)self heap] device:self->super.super.super._device];

    return v6;
  }

  return result;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)a3 textureType:(unint64_t)a4 levels:(_NSRange)a5 slices:(_NSRange)a6
{
  result = [(MTLToolsObject *)self->super.super.super._baseObject newTextureViewWithPixelFormat:a3 textureType:a4 levels:a5.location slices:a5.length, a6.location, a6.length];
  if (result)
  {
    v8 = result;
    v9 = [[MTLLegacySVTexture alloc] initWithTextureView:result parentTexture:self heap:[(MTLToolsResource *)self heap] device:self->super.super.super._device];

    return v9;
  }

  return result;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)a3 textureType:(unint64_t)a4 levels:(_NSRange)a5 slices:(_NSRange)a6 swizzle:(id)a7
{
  result = [(MTLToolsObject *)self->super.super.super._baseObject newTextureViewWithPixelFormat:a3 textureType:a4 levels:a5.location slices:a5.length swizzle:a6.location, a6.length, *&a7];
  if (result)
  {
    v9 = result;
    v10 = [[MTLLegacySVTexture alloc] initWithTextureView:result parentTexture:self heap:[(MTLToolsResource *)self heap] device:self->super.super.super._device];

    return v10;
  }

  return result;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)a3 resourceIndex:(unint64_t)a4
{
  result = [(MTLToolsObject *)self->super.super.super._baseObject newTextureViewWithPixelFormat:a3 resourceIndex:a4];
  if (result)
  {
    v6 = result;
    v7 = [[MTLLegacySVTexture alloc] initWithTextureView:result parentTexture:self heap:[(MTLToolsResource *)self heap] device:self->super.super.super._device];

    return v7;
  }

  return result;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)a3 textureType:(unint64_t)a4 levels:(_NSRange)a5 slices:(_NSRange)a6 resourceIndex:(unint64_t)a7
{
  result = [(MTLToolsObject *)self->super.super.super._baseObject newTextureViewWithPixelFormat:a3 textureType:a4 levels:a5.location slices:a5.length resourceIndex:a6.location, a6.length, a7];
  if (result)
  {
    v9 = result;
    v10 = [[MTLLegacySVTexture alloc] initWithTextureView:result parentTexture:self heap:[(MTLToolsResource *)self heap] device:self->super.super.super._device];

    return v10;
  }

  return result;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)a3 textureType:(unint64_t)a4 levels:(_NSRange)a5 slices:(_NSRange)a6 swizzle:(id)a7 resourceIndex:(unint64_t)a8
{
  result = [(MTLToolsObject *)self->super.super.super._baseObject newTextureViewWithPixelFormat:a3 textureType:a4 levels:a5.location slices:a5.length swizzle:a6.location resourceIndex:a6.length, *&a7, a8];
  if (result)
  {
    v10 = result;
    v11 = [[MTLLegacySVTexture alloc] initWithTextureView:result parentTexture:self heap:[(MTLToolsResource *)self heap] device:self->super.super.super._device];

    return v11;
  }

  return result;
}

- (id)newCompressedTextureViewWithPixelFormat:(unint64_t)a3 textureType:(unint64_t)a4 level:(unint64_t)a5 slice:(unint64_t)a6
{
  result = [(MTLToolsObject *)self->super.super.super._baseObject newCompressedTextureViewWithPixelFormat:a3 textureType:a4 level:a5 slice:a6];
  if (result)
  {
    v8 = result;
    v9 = [[MTLLegacySVTexture alloc] initWithTextureView:result parentTexture:self heap:[(MTLToolsResource *)self heap] device:self->super.super.super._device];

    return v9;
  }

  return result;
}

- (id)newTextureViewWithDescriptor:(id)a3
{
  result = [(MTLToolsObject *)self->super.super.super._baseObject newTextureViewWithDescriptor:a3];
  if (result)
  {
    v5 = result;
    v6 = [[MTLLegacySVTexture alloc] initWithTextureView:result parentTexture:self heap:[(MTLToolsResource *)self heap] device:self->super.super.super._device];

    return v6;
  }

  return result;
}

@end