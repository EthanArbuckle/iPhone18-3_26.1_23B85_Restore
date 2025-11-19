@interface HKSource(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (HDCodableSource)codableRepresentationForSync;
@end

@implementation HKSource(HDCodingSupport)

- (HDCodableSource)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableSource);
  v3 = [a1 name];
  [(HDCodableSource *)v2 setName:v3];

  v4 = [a1 bundleIdentifier];
  [(HDCodableSource *)v2 setBundleIdentifier:v4];

  v5 = [a1 _productType];
  [(HDCodableSource *)v2 setProductType:v5];

  -[HDCodableSource setOptions:](v2, "setOptions:", [a1 _options]);

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

    v6 = [a1 _sourceWithBundleIdentifier:v4[3] name:v4[4] productType:v4[6] options:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end