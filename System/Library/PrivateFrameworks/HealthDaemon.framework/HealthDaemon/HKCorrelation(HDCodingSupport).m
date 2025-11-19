@interface HKCorrelation(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport;
- (HDCodableCorrelation)codableRepresentationForSync;
@end

@implementation HKCorrelation(HDCodingSupport)

- (HDCodableCorrelation)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableCorrelation);
  v5.receiver = a1;
  v5.super_class = &off_283D43988;
  v3 = objc_msgSendSuper2(&v5, sel_codableRepresentationForSync);
  [(HDCodableCorrelation *)v2 setSample:v3];

  return v2;
}

- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport
{
  v4 = a3;
  v5 = [a1 codableRepresentationForSync];
  if (v5)
  {
    [v4 addCorrelations:v5];
  }

  return v5 != 0;
}

+ (id)createWithCodable:()HDCodingSupport
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [objc_alloc(MEMORY[0x277CCDD50]) _init];
    if ([v4 applyToObject:v5])
    {
      v6 = HKDefaultObjectValidationConfigurationIgnoringAllOptions();
      v8 = [v5 _validateWithConfiguration:{v6, v7}];
      if (v8)
      {
        v9 = 0;
      }

      else
      {
        v9 = v5;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end