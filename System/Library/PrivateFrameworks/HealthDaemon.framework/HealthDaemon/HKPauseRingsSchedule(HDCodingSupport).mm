@interface HKPauseRingsSchedule(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport;
- (HDCodablePauseRingsSchedule)codableRepresentationForSync;
@end

@implementation HKPauseRingsSchedule(HDCodingSupport)

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

- (HDCodablePauseRingsSchedule)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodablePauseRingsSchedule);
  v5.receiver = self;
  v5.super_class = &off_283D42A60;
  v3 = objc_msgSendSuper2(&v5, sel_codableRepresentationForSync);
  [(HDCodablePauseRingsSchedule *)v2 setSample:v3];
  -[HDCodablePauseRingsSchedule setStartDateIndex:](v2, "setStartDateIndex:", [self startDateIndex]);
  -[HDCodablePauseRingsSchedule setEndDateIndex:](v2, "setEndDateIndex:", [self endDateIndex]);

  return v2;
}

- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport
{
  v4 = a3;
  codableRepresentationForSync = [self codableRepresentationForSync];
  if (codableRepresentationForSync)
  {
    [v4 addPauseRingsSchedules:codableRepresentationForSync];
  }

  return codableRepresentationForSync != 0;
}

@end