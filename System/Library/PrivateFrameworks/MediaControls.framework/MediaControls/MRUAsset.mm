@interface MRUAsset
+ (id)image:(id)image;
+ (id)packageAsset:(id)asset;
+ (id)packageAsset:(id)asset symbolName:(id)name;
+ (id)packageAsset:(id)asset symbolName:(id)name image:(id)image;
+ (id)packageAssetNamed:(id)named;
+ (id)symbolNamed:(id)named;
+ (id)symbolNamed:(id)named symbolEffect:(id)effect symbolEffectOptions:(id)options;
- (BOOL)isEqual:(id)equal;
- (MRUAsset)initWithPackageAsset:(id)asset symbolName:(id)name symbolEffect:(id)effect symbolEffectOptions:(id)options image:(id)image;
- (MRUAsset)initWithPackageAssetNamed:(id)named;
- (UIImage)image;
@end

@implementation MRUAsset

- (UIImage)image
{
  if (self->_symbolName)
  {
    v2 = [MEMORY[0x1E69DCAB8] _systemImageNamed:?];
  }

  else
  {
    v2 = self->_image;
  }

  return v2;
}

+ (id)packageAsset:(id)asset symbolName:(id)name image:(id)image
{
  imageCopy = image;
  nameCopy = name;
  assetCopy = asset;
  v11 = [[self alloc] initWithPackageAsset:assetCopy symbolName:nameCopy image:imageCopy];

  return v11;
}

+ (id)packageAsset:(id)asset symbolName:(id)name
{
  nameCopy = name;
  assetCopy = asset;
  v8 = [[self alloc] initWithPackageAsset:assetCopy symbolName:nameCopy image:0];

  return v8;
}

+ (id)packageAsset:(id)asset
{
  assetCopy = asset;
  v5 = [[self alloc] initWithPackageAsset:assetCopy];

  return v5;
}

+ (id)packageAssetNamed:(id)named
{
  namedCopy = named;
  v5 = [[self alloc] initWithPackageAssetNamed:namedCopy];

  return v5;
}

+ (id)symbolNamed:(id)named
{
  namedCopy = named;
  v5 = [[self alloc] initWithSymbolName:namedCopy];

  return v5;
}

+ (id)symbolNamed:(id)named symbolEffect:(id)effect symbolEffectOptions:(id)options
{
  optionsCopy = options;
  effectCopy = effect;
  namedCopy = named;
  v11 = [[self alloc] initWithSymbolName:namedCopy symbolEffect:effectCopy symbolEffectOptions:optionsCopy];

  return v11;
}

+ (id)image:(id)image
{
  imageCopy = image;
  v5 = [[self alloc] initWithImage:imageCopy];

  return v5;
}

- (MRUAsset)initWithPackageAsset:(id)asset symbolName:(id)name symbolEffect:(id)effect symbolEffectOptions:(id)options image:(id)image
{
  assetCopy = asset;
  nameCopy = name;
  effectCopy = effect;
  optionsCopy = options;
  imageCopy = image;
  v21.receiver = self;
  v21.super_class = MRUAsset;
  v17 = [(MRUAsset *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_packageAsset, asset);
    objc_storeStrong(&v18->_symbolName, name);
    objc_storeStrong(&v18->_symbolEffect, effect);
    objc_storeStrong(&v18->_symbolEffectOptions, options);
    objc_storeStrong(&v18->_image, image);
  }

  return v18;
}

- (MRUAsset)initWithPackageAssetNamed:(id)named
{
  v4 = [MRUCAPackageAsset packageNamed:named];
  v5 = [(MRUAsset *)self initWithPackageAsset:v4 symbolName:0 image:0];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      packageAsset = [v5 packageAsset];
      v7 = packageAsset;
      if (packageAsset == self->_packageAsset)
      {
        v8 = 1;
      }

      else
      {
        v8 = [(MRUCAPackageAsset *)packageAsset isEqual:?];
      }

      symbolName = [v5 symbolName];
      v11 = symbolName;
      if (symbolName == self->_symbolName)
      {
        v12 = 1;
      }

      else
      {
        v12 = [(NSString *)symbolName isEqual:?];
      }

      v13 = v8 & v12;

      image = self->_image;
      v15 = v5[1];
      v16 = v15;
      if (v15 == image)
      {
        v17 = 1;
      }

      else
      {
        v17 = [(UIImage *)v15 isEqual:image];
      }

      v9 = v13 & v17;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end