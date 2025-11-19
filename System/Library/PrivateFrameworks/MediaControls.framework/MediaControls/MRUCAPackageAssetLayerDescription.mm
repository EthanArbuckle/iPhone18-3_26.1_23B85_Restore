@interface MRUCAPackageAssetLayerDescription
+ (id)descriptionWithInterval:(double)a3 numberingSystem:(id)a4;
- (BOOL)isEqual:(id)a3;
- (MRUCAPackageAssetLayerDescription)initWithInterval:(double)a3 numberingSystem:(id)a4;
@end

@implementation MRUCAPackageAssetLayerDescription

+ (id)descriptionWithInterval:(double)a3 numberingSystem:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithInterval:v6 numberingSystem:a3];

  return v7;
}

- (MRUCAPackageAssetLayerDescription)initWithInterval:(double)a3 numberingSystem:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MRUCAPackageAssetLayerDescription;
  v8 = [(MRUCAPackageAssetLayerDescription *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_interval = a3;
    objc_storeStrong(&v8->_numberingSystem, a4);
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(MRUCAPackageAssetLayerDescription *)self interval];
      v7 = v6;
      [(MRUCAPackageAssetLayerDescription *)v5 interval];
      if (v7 == v8)
      {
        v9 = [(MRUCAPackageAssetLayerDescription *)self numberingSystem];
        v10 = [(MRUCAPackageAssetLayerDescription *)v5 numberingSystem];
        v11 = [v9 isEqualToString:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

@end