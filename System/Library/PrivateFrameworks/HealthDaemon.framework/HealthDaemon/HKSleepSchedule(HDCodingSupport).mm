@interface HKSleepSchedule(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport;
- (HDCodableSleepSchedule)codableRepresentationForSync;
@end

@implementation HKSleepSchedule(HDCodingSupport)

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

- (HDCodableSleepSchedule)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableSleepSchedule);
  v14.receiver = self;
  v14.super_class = &off_283D44CF8;
  v3 = objc_msgSendSuper2(&v14, sel_codableRepresentationForSync);
  [(HDCodableSleepSchedule *)v2 setSample:v3];

  weekdays = [self weekdays];
  [(HDCodableSleepSchedule *)v2 setMonday:weekdays & 1];
  [(HDCodableSleepSchedule *)v2 setTuesday:(weekdays >> 1) & 1];
  [(HDCodableSleepSchedule *)v2 setWednesday:(weekdays >> 2) & 1];
  [(HDCodableSleepSchedule *)v2 setThursday:(weekdays >> 3) & 1];
  [(HDCodableSleepSchedule *)v2 setFriday:(weekdays >> 4) & 1];
  [(HDCodableSleepSchedule *)v2 setSaturday:(weekdays >> 5) & 1];
  [(HDCodableSleepSchedule *)v2 setSunday:(weekdays >> 6) & 1];
  wakeTimeComponents = [self wakeTimeComponents];

  if (wakeTimeComponents)
  {
    wakeTimeComponents2 = [self wakeTimeComponents];
    -[HDCodableSleepSchedule setWakeHour:](v2, "setWakeHour:", [wakeTimeComponents2 hour]);

    wakeTimeComponents3 = [self wakeTimeComponents];
    -[HDCodableSleepSchedule setWakeMinute:](v2, "setWakeMinute:", [wakeTimeComponents3 minute]);
  }

  bedTimeComponents = [self bedTimeComponents];

  if (bedTimeComponents)
  {
    bedTimeComponents2 = [self bedTimeComponents];
    -[HDCodableSleepSchedule setBedHour:](v2, "setBedHour:", [bedTimeComponents2 hour]);

    bedTimeComponents3 = [self bedTimeComponents];
    -[HDCodableSleepSchedule setBedMinute:](v2, "setBedMinute:", [bedTimeComponents3 minute]);
  }

  overrideDayIndex = [self overrideDayIndex];

  if (overrideDayIndex)
  {
    overrideDayIndex2 = [self overrideDayIndex];
    -[HDCodableSleepSchedule setOverrideDayIndex:](v2, "setOverrideDayIndex:", [overrideDayIndex2 integerValue]);
  }

  return v2;
}

- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport
{
  v4 = a3;
  codableRepresentationForSync = [self codableRepresentationForSync];
  if (codableRepresentationForSync)
  {
    [v4 addSleepSchedules:codableRepresentationForSync];
  }

  return codableRepresentationForSync != 0;
}

@end