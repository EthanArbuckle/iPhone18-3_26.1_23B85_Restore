@interface MRUCAPackageAssetLayerDescription
+ (id)descriptionWithInterval:(double)interval numberingSystem:(id)system;
- (BOOL)isEqual:(id)equal;
- (MRUCAPackageAssetLayerDescription)initWithInterval:(double)interval numberingSystem:(id)system;
@end

@implementation MRUCAPackageAssetLayerDescription

+ (id)descriptionWithInterval:(double)interval numberingSystem:(id)system
{
  systemCopy = system;
  v7 = [[self alloc] initWithInterval:systemCopy numberingSystem:interval];

  return v7;
}

- (MRUCAPackageAssetLayerDescription)initWithInterval:(double)interval numberingSystem:(id)system
{
  systemCopy = system;
  v11.receiver = self;
  v11.super_class = MRUCAPackageAssetLayerDescription;
  v8 = [(MRUCAPackageAssetLayerDescription *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_interval = interval;
    objc_storeStrong(&v8->_numberingSystem, system);
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(MRUCAPackageAssetLayerDescription *)self interval];
      v7 = v6;
      [(MRUCAPackageAssetLayerDescription *)v5 interval];
      if (v7 == v8)
      {
        numberingSystem = [(MRUCAPackageAssetLayerDescription *)self numberingSystem];
        numberingSystem2 = [(MRUCAPackageAssetLayerDescription *)v5 numberingSystem];
        v11 = [numberingSystem isEqualToString:numberingSystem2];
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