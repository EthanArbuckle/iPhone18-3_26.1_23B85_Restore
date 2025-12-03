@interface HKWorkoutRoute(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport;
- (HDCodableLocationSeries)codableRepresentationForSync;
@end

@implementation HKWorkoutRoute(HDCodingSupport)

- (HDCodableLocationSeries)codableRepresentationForSync
{
  _codableWorkoutRoute = [self _codableWorkoutRoute];
  if (!_codableWorkoutRoute)
  {
    _codableWorkoutRoute = objc_alloc_init(HDCodableLocationSeries);
    v6.receiver = self;
    v6.super_class = &off_283D43AE0;
    v3 = objc_msgSendSuper2(&v6, sel_codableRepresentationForSync);
    [(HDCodableLocationSeries *)_codableWorkoutRoute setSample:v3];

    -[HDCodableLocationSeries setFrozen:](_codableWorkoutRoute, "setFrozen:", [self _isFrozen]);
  }

  v4 = _codableWorkoutRoute;

  return v4;
}

- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport
{
  v4 = a3;
  codableRepresentationForSync = [self codableRepresentationForSync];
  if (codableRepresentationForSync)
  {
    [v4 addLocationSeries:codableRepresentationForSync];
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

  return v11;
}

@end