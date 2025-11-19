@interface MRUAsset
+ (id)image:(id)a3;
+ (id)packageAsset:(id)a3;
+ (id)packageAsset:(id)a3 symbolName:(id)a4;
+ (id)packageAsset:(id)a3 symbolName:(id)a4 image:(id)a5;
+ (id)packageAssetNamed:(id)a3;
+ (id)symbolNamed:(id)a3;
+ (id)symbolNamed:(id)a3 symbolEffect:(id)a4 symbolEffectOptions:(id)a5;
- (BOOL)isEqual:(id)a3;
- (MRUAsset)initWithPackageAsset:(id)a3 symbolName:(id)a4 symbolEffect:(id)a5 symbolEffectOptions:(id)a6 image:(id)a7;
- (MRUAsset)initWithPackageAssetNamed:(id)a3;
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

+ (id)packageAsset:(id)a3 symbolName:(id)a4 image:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithPackageAsset:v10 symbolName:v9 image:v8];

  return v11;
}

+ (id)packageAsset:(id)a3 symbolName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithPackageAsset:v7 symbolName:v6 image:0];

  return v8;
}

+ (id)packageAsset:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithPackageAsset:v4];

  return v5;
}

+ (id)packageAssetNamed:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithPackageAssetNamed:v4];

  return v5;
}

+ (id)symbolNamed:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSymbolName:v4];

  return v5;
}

+ (id)symbolNamed:(id)a3 symbolEffect:(id)a4 symbolEffectOptions:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithSymbolName:v10 symbolEffect:v9 symbolEffectOptions:v8];

  return v11;
}

+ (id)image:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithImage:v4];

  return v5;
}

- (MRUAsset)initWithPackageAsset:(id)a3 symbolName:(id)a4 symbolEffect:(id)a5 symbolEffectOptions:(id)a6 image:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = MRUAsset;
  v17 = [(MRUAsset *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_packageAsset, a3);
    objc_storeStrong(&v18->_symbolName, a4);
    objc_storeStrong(&v18->_symbolEffect, a5);
    objc_storeStrong(&v18->_symbolEffectOptions, a6);
    objc_storeStrong(&v18->_image, a7);
  }

  return v18;
}

- (MRUAsset)initWithPackageAssetNamed:(id)a3
{
  v4 = [MRUCAPackageAsset packageNamed:a3];
  v5 = [(MRUAsset *)self initWithPackageAsset:v4 symbolName:0 image:0];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [v5 packageAsset];
      v7 = v6;
      if (v6 == self->_packageAsset)
      {
        v8 = 1;
      }

      else
      {
        v8 = [(MRUCAPackageAsset *)v6 isEqual:?];
      }

      v10 = [v5 symbolName];
      v11 = v10;
      if (v10 == self->_symbolName)
      {
        v12 = 1;
      }

      else
      {
        v12 = [(NSString *)v10 isEqual:?];
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