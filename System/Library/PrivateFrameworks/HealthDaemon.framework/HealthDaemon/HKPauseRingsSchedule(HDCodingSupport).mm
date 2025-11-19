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

- (HDCodablePauseRingsSchedule)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodablePauseRingsSchedule);
  v5.receiver = a1;
  v5.super_class = &off_283D42A60;
  v3 = objc_msgSendSuper2(&v5, sel_codableRepresentationForSync);
  [(HDCodablePauseRingsSchedule *)v2 setSample:v3];
  -[HDCodablePauseRingsSchedule setStartDateIndex:](v2, "setStartDateIndex:", [a1 startDateIndex]);
  -[HDCodablePauseRingsSchedule setEndDateIndex:](v2, "setEndDateIndex:", [a1 endDateIndex]);

  return v2;
}

- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport
{
  v4 = a3;
  v5 = [a1 codableRepresentationForSync];
  if (v5)
  {
    [v4 addPauseRingsSchedules:v5];
  }

  return v5 != 0;
}

@end