@interface NUNIClassicTextureGroup
- (NUNIClassicTextureGroup)initWithTextures:(id)a3;
@end

@implementation NUNIClassicTextureGroup

- (NUNIClassicTextureGroup)initWithTextures:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NUNIClassicTextureGroup;
  v6 = [(NUNIClassicTextureGroup *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_textures, a3);
  }

  return v7;
}

@end