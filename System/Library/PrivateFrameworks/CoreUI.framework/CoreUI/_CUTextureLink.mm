@interface _CUTextureLink
- (id)provideImageInfoAtLevel:(unint64_t)level element:(unint64_t)element face:(unint64_t)face;
- (id)provideTextureInfo;
- (void)dealloc;
- (void)setBufferAllocator:(id)allocator;
- (void)setNamedTexture:(id)texture;
@end

@implementation _CUTextureLink

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CUTextureLink;
  [(_CUTextureLink *)&v3 dealloc];
}

- (id)provideTextureInfo
{
  v2 = [-[_CUTextureLink namedTexture](self "namedTexture")];

  return [v2 provideTextureInfo];
}

- (void)setNamedTexture:(id)texture
{
  if (self->_namedTexture != texture)
  {
    self->_namedTexture = texture;
  }
}

- (void)setBufferAllocator:(id)allocator
{
  if (self->_bufferAllocator != allocator)
  {
    self->_bufferAllocator = allocator;
  }
}

- (id)provideImageInfoAtLevel:(unint64_t)level element:(unint64_t)element face:(unint64_t)face
{
  v9 = [-[_CUTextureLink namedTexture](self "namedTexture")];
  bufferAllocator = [(_CUTextureLink *)self bufferAllocator];

  return [v9 provideImageInfoAtLevel:level element:element face:face withBufferAllocator:bufferAllocator];
}

@end