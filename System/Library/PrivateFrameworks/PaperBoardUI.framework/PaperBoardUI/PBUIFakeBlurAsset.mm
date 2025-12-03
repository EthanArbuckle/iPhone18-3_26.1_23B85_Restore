@interface PBUIFakeBlurAsset
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)initWithActualStyle:(void *)style imageURL:(void *)l image:;
- (id)succinctDescription;
- (uint64_t)actualStyle;
- (uint64_t)image;
- (uint64_t)imageURL;
@end

@implementation PBUIFakeBlurAsset

- (uint64_t)imageURL
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(PBUIFakeBlurAsset *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = PBUIWallpaperStyleDescription(self->_actualStyle);
  [v4 appendString:v5 withName:@"actualStyle"];

  v6 = [v4 appendObject:self->_imageURL withName:@"imageURL"];
  v7 = [v4 appendObject:self->_image withName:@"image"];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(PBUIFakeBlurAsset *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (uint64_t)actualStyle
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (uint64_t)image
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (id)initWithActualStyle:(void *)style imageURL:(void *)l image:
{
  styleCopy = style;
  lCopy = l;
  if (self)
  {
    v13.receiver = self;
    v13.super_class = PBUIFakeBlurAsset;
    v9 = objc_msgSendSuper2(&v13, sel_init);
    self = v9;
    if (v9)
    {
      v9[1] = a2;
      v10 = [styleCopy copy];
      v11 = self[2];
      self[2] = v10;

      objc_storeStrong(self + 3, l);
    }
  }

  return self;
}

@end