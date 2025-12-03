@interface HKSource(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (HDCodableSource)codableRepresentationForSync;
@end

@implementation HKSource(HDCodingSupport)

- (HDCodableSource)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableSource);
  name = [self name];
  [(HDCodableSource *)v2 setName:name];

  bundleIdentifier = [self bundleIdentifier];
  [(HDCodableSource *)v2 setBundleIdentifier:bundleIdentifier];

  _productType = [self _productType];
  [(HDCodableSource *)v2 setProductType:_productType];

  -[HDCodableSource setOptions:](v2, "setOptions:", [self _options]);

  return v2;
}

+ (id)createWithCodable:()HDCodingSupport
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ((*(v4 + 76) & 2) != 0)
    {
      v5 = v4[2];
    }

    else
    {
      v5 = 0;
    }

    v6 = [self _sourceWithBundleIdentifier:v4[3] name:v4[4] productType:v4[6] options:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end