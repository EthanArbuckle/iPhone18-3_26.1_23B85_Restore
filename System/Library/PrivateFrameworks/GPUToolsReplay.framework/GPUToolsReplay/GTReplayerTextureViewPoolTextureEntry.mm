@interface GTReplayerTextureViewPoolTextureEntry
+ (id)entryWithTexture:(id)texture;
+ (id)entryWithTexture:(id)texture descriptor:(id)descriptor;
- (GTReplayerTextureViewPoolTextureEntry)initWithTexture:(id)texture descriptor:(id)descriptor;
- (id)materializeTextureView;
@end

@implementation GTReplayerTextureViewPoolTextureEntry

- (id)materializeTextureView
{
  v3 = [(MTLTextureViewDescriptor *)self->_descriptor copy];
  levelRange = [v3 levelRange];
  v6 = v5;
  mipmapLevelCount = [(MTLTexture *)self->_texture mipmapLevelCount];
  if (levelRange >= mipmapLevelCount)
  {
    v8 = mipmapLevelCount;
  }

  else
  {
    v8 = levelRange;
  }

  if (v6 >= mipmapLevelCount - v8)
  {
    v9 = mipmapLevelCount - v8;
  }

  else
  {
    v9 = v6;
  }

  [v3 setLevelRange:{v8, v9}];
  sliceRange = [v3 sliceRange];
  v12 = v11;
  arrayLength = [(MTLTexture *)self->_texture arrayLength];
  if (sliceRange >= arrayLength)
  {
    v14 = arrayLength;
  }

  else
  {
    v14 = sliceRange;
  }

  if (v12 >= arrayLength - v14)
  {
    v15 = arrayLength - v14;
  }

  else
  {
    v15 = v12;
  }

  [v3 setSliceRange:{v14, v15}];
  v16 = [(MTLTexture *)self->_texture newTextureViewWithDescriptor:v3];

  return v16;
}

- (GTReplayerTextureViewPoolTextureEntry)initWithTexture:(id)texture descriptor:(id)descriptor
{
  textureCopy = texture;
  descriptorCopy = descriptor;
  v12.receiver = self;
  v12.super_class = GTReplayerTextureViewPoolTextureEntry;
  v9 = [(GTReplayerTextureViewPoolTextureEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_texture, texture);
    objc_storeStrong(&v10->_descriptor, descriptor);
  }

  return v10;
}

+ (id)entryWithTexture:(id)texture
{
  textureCopy = texture;
  v5 = [[self alloc] initWithTexture:textureCopy];

  return v5;
}

+ (id)entryWithTexture:(id)texture descriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  textureCopy = texture;
  v8 = [[self alloc] initWithTexture:textureCopy descriptor:descriptorCopy];

  return v8;
}

@end