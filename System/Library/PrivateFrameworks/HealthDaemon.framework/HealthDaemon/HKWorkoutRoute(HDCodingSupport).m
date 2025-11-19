@interface HKWorkoutRoute(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport;
- (HDCodableLocationSeries)codableRepresentationForSync;
@end

@implementation HKWorkoutRoute(HDCodingSupport)

- (HDCodableLocationSeries)codableRepresentationForSync
{
  v2 = [a1 _codableWorkoutRoute];
  if (!v2)
  {
    v2 = objc_alloc_init(HDCodableLocationSeries);
    v6.receiver = a1;
    v6.super_class = &off_283D43AE0;
    v3 = objc_msgSendSuper2(&v6, sel_codableRepresentationForSync);
    [(HDCodableLocationSeries *)v2 setSample:v3];

    -[HDCodableLocationSeries setFrozen:](v2, "setFrozen:", [a1 _isFrozen]);
  }

  v4 = v2;

  return v4;
}

- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport
{
  v4 = a3;
  v5 = [a1 codableRepresentationForSync];
  if (v5)
  {
    [v4 addLocationSeries:v5];
  }

  return v5 != 0;
}

+ (id)createWithCodable:()HDCodingSupport
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [[a1 alloc] _init];
    if ([v5 applyToObject:v6])
    {
      v7 = HKDefaultObjectValidationConfigurationIgnoringAllOptions();
      v9 = [v6 _validateWithConfiguration:{v7, v8}];
      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = v6;
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

  return v11;
}

@end