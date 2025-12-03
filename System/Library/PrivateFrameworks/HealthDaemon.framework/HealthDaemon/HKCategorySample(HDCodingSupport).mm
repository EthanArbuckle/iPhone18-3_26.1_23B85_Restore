@interface HKCategorySample(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport;
- (HDCodableCategorySample)codableRepresentationForSync;
@end

@implementation HKCategorySample(HDCodingSupport)

- (HDCodableCategorySample)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableCategorySample);
  v5.receiver = self;
  v5.super_class = &off_283D40F58;
  v3 = objc_msgSendSuper2(&v5, sel_codableRepresentationForSync);
  [(HDCodableCategorySample *)v2 setSample:v3];

  -[HDCodableCategorySample setValue:](v2, "setValue:", [self value]);

  return v2;
}

- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport
{
  v4 = a3;
  codableRepresentationForSync = [self codableRepresentationForSync];
  if (codableRepresentationForSync)
  {
    [v4 addCategorySamples:codableRepresentationForSync];
  }

  return codableRepresentationForSync != 0;
}

+ (id)createWithCodable:()HDCodingSupport
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ([v5 hasValue])
    {
      _init = [[self alloc] _init];
      if ([v5 applyToObject:_init])
      {
        v7 = HKDefaultObjectValidationConfigurationIgnoringAllOptions();
        v9 = [_init _validateWithConfiguration:{v7, v8}];
        if (v9)
        {
          v10 = 0;
        }

        else
        {
          v10 = _init;
        }

        v11 = v10;
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

  else
  {
    v11 = 0;
  }

  return v11;
}

@end