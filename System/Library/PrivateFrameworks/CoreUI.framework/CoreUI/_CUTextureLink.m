@interface _CUTextureLink
- (id)provideImageInfoAtLevel:(unint64_t)a3 element:(unint64_t)a4 face:(unint64_t)a5;
- (id)provideTextureInfo;
- (void)dealloc;
- (void)setBufferAllocator:(id)a3;
- (void)setNamedTexture:(id)a3;
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

- (void)setNamedTexture:(id)a3
{
  if (self->_namedTexture != a3)
  {
    self->_namedTexture = a3;
  }
}

- (void)setBufferAllocator:(id)a3
{
  if (self->_bufferAllocator != a3)
  {
    self->_bufferAllocator = a3;
  }
}

- (id)provideImageInfoAtLevel:(unint64_t)a3 element:(unint64_t)a4 face:(unint64_t)a5
{
  v9 = [-[_CUTextureLink namedTexture](self "namedTexture")];
  v10 = [(_CUTextureLink *)self bufferAllocator];

  return [v9 provideImageInfoAtLevel:a3 element:a4 face:a5 withBufferAllocator:v10];
}

@end