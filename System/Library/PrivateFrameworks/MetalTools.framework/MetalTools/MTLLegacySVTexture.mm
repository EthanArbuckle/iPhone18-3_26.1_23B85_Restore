@interface MTLLegacySVTexture
- (MTLLegacySVTexture)initWithTexture:(id)texture heap:(id)heap device:(id)device;
- (MTLLegacySVTexture)initWithTextureView:(id)view parentBuffer:(id)buffer heap:(id)heap device:(id)device;
- (MTLLegacySVTexture)initWithTextureView:(id)view parentTexture:(id)texture heap:(id)heap device:(id)device;
- (id)newCompressedTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type level:(unint64_t)level slice:(unint64_t)slice;
- (id)newTextureViewWithDescriptor:(id)descriptor;
- (id)newTextureViewWithPixelFormat:(unint64_t)format;
- (id)newTextureViewWithPixelFormat:(unint64_t)format resourceIndex:(unint64_t)index;
- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices;
- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices resourceIndex:(unint64_t)index;
- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices swizzle:(id)swizzle;
- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices swizzle:(id)swizzle resourceIndex:(unint64_t)index;
@end

@implementation MTLLegacySVTexture

- (MTLLegacySVTexture)initWithTexture:(id)texture heap:(id)heap device:(id)device
{
  v7.receiver = self;
  v7.super_class = MTLLegacySVTexture;
  v5 = [(MTLToolsResource *)&v7 initWithBaseObject:texture parent:device heap:heap];
  InitResourceIdentifier(v5);
  return v5;
}

- (MTLLegacySVTexture)initWithTextureView:(id)view parentBuffer:(id)buffer heap:(id)heap device:(id)device
{
  v8.receiver = self;
  v8.super_class = MTLLegacySVTexture;
  v6 = [(MTLToolsTexture *)&v8 initWithBaseObject:view parent:device buffer:buffer];
  InitResourceIdentifier(v6);
  return v6;
}

- (MTLLegacySVTexture)initWithTextureView:(id)view parentTexture:(id)texture heap:(id)heap device:(id)device
{
  v8.receiver = self;
  v8.super_class = MTLLegacySVTexture;
  v6 = [(MTLToolsTexture *)&v8 initWithBaseObject:view parent:device parentTexture:texture];
  InitResourceIdentifier(v6);
  return v6;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)format
{
  result = [(MTLToolsObject *)self->super.super.super._baseObject newTextureViewWithPixelFormat:format];
  if (result)
  {
    v5 = result;
    v6 = [[MTLLegacySVTexture alloc] initWithTextureView:result parentTexture:self heap:[(MTLToolsResource *)self heap] device:self->super.super.super._device];

    return v6;
  }

  return result;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices
{
  result = [(MTLToolsObject *)self->super.super.super._baseObject newTextureViewWithPixelFormat:format textureType:type levels:levels.location slices:levels.length, slices.location, slices.length];
  if (result)
  {
    v8 = result;
    v9 = [[MTLLegacySVTexture alloc] initWithTextureView:result parentTexture:self heap:[(MTLToolsResource *)self heap] device:self->super.super.super._device];

    return v9;
  }

  return result;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices swizzle:(id)swizzle
{
  result = [(MTLToolsObject *)self->super.super.super._baseObject newTextureViewWithPixelFormat:format textureType:type levels:levels.location slices:levels.length swizzle:slices.location, slices.length, *&swizzle];
  if (result)
  {
    v9 = result;
    v10 = [[MTLLegacySVTexture alloc] initWithTextureView:result parentTexture:self heap:[(MTLToolsResource *)self heap] device:self->super.super.super._device];

    return v10;
  }

  return result;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)format resourceIndex:(unint64_t)index
{
  result = [(MTLToolsObject *)self->super.super.super._baseObject newTextureViewWithPixelFormat:format resourceIndex:index];
  if (result)
  {
    v6 = result;
    v7 = [[MTLLegacySVTexture alloc] initWithTextureView:result parentTexture:self heap:[(MTLToolsResource *)self heap] device:self->super.super.super._device];

    return v7;
  }

  return result;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices resourceIndex:(unint64_t)index
{
  result = [(MTLToolsObject *)self->super.super.super._baseObject newTextureViewWithPixelFormat:format textureType:type levels:levels.location slices:levels.length resourceIndex:slices.location, slices.length, index];
  if (result)
  {
    v9 = result;
    v10 = [[MTLLegacySVTexture alloc] initWithTextureView:result parentTexture:self heap:[(MTLToolsResource *)self heap] device:self->super.super.super._device];

    return v10;
  }

  return result;
}

- (id)newTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices swizzle:(id)swizzle resourceIndex:(unint64_t)index
{
  result = [(MTLToolsObject *)self->super.super.super._baseObject newTextureViewWithPixelFormat:format textureType:type levels:levels.location slices:levels.length swizzle:slices.location resourceIndex:slices.length, *&swizzle, index];
  if (result)
  {
    v10 = result;
    v11 = [[MTLLegacySVTexture alloc] initWithTextureView:result parentTexture:self heap:[(MTLToolsResource *)self heap] device:self->super.super.super._device];

    return v11;
  }

  return result;
}

- (id)newCompressedTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type level:(unint64_t)level slice:(unint64_t)slice
{
  result = [(MTLToolsObject *)self->super.super.super._baseObject newCompressedTextureViewWithPixelFormat:format textureType:type level:level slice:slice];
  if (result)
  {
    v8 = result;
    v9 = [[MTLLegacySVTexture alloc] initWithTextureView:result parentTexture:self heap:[(MTLToolsResource *)self heap] device:self->super.super.super._device];

    return v9;
  }

  return result;
}

- (id)newTextureViewWithDescriptor:(id)descriptor
{
  result = [(MTLToolsObject *)self->super.super.super._baseObject newTextureViewWithDescriptor:descriptor];
  if (result)
  {
    v5 = result;
    v6 = [[MTLLegacySVTexture alloc] initWithTextureView:result parentTexture:self heap:[(MTLToolsResource *)self heap] device:self->super.super.super._device];

    return v6;
  }

  return result;
}

@end