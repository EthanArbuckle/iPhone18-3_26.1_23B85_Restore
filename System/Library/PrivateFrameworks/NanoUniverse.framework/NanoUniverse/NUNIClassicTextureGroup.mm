@interface NUNIClassicTextureGroup
- (NUNIClassicTextureGroup)initWithTextures:(id)textures;
@end

@implementation NUNIClassicTextureGroup

- (NUNIClassicTextureGroup)initWithTextures:(id)textures
{
  texturesCopy = textures;
  v9.receiver = self;
  v9.super_class = NUNIClassicTextureGroup;
  v6 = [(NUNIClassicTextureGroup *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_textures, textures);
  }

  return v7;
}

@end