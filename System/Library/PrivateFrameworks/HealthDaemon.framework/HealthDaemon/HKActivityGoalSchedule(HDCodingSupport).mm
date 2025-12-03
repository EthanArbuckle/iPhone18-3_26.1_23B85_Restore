@interface HKActivityGoalSchedule(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport;
- (HDCodableActivityGoalSchedule)codableRepresentationForSync;
@end

@implementation HKActivityGoalSchedule(HDCodingSupport)

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

- (HDCodableActivityGoalSchedule)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableActivityGoalSchedule);
  v15.receiver = self;
  v15.super_class = &off_283D428C0;
  v3 = objc_msgSendSuper2(&v15, sel_codableRepresentationForSync);
  [(HDCodableActivityGoalSchedule *)v2 setSample:v3];
  -[HDCodableActivityGoalSchedule setGoalType:](v2, "setGoalType:", [self goalType]);
  mondayGoal = [self mondayGoal];
  _unit = [mondayGoal _unit];

  unitString = [_unit unitString];
  [(HDCodableActivityGoalSchedule *)v2 setUnitString:unitString];

  mondayGoal2 = [self mondayGoal];
  [mondayGoal2 doubleValueForUnit:_unit];
  [(HDCodableActivityGoalSchedule *)v2 setMondayGoal:?];

  tuesdayGoal = [self tuesdayGoal];
  [tuesdayGoal doubleValueForUnit:_unit];
  [(HDCodableActivityGoalSchedule *)v2 setTuesdayGoal:?];

  wednesdayGoal = [self wednesdayGoal];
  [wednesdayGoal doubleValueForUnit:_unit];
  [(HDCodableActivityGoalSchedule *)v2 setWednesdayGoal:?];

  thursdayGoal = [self thursdayGoal];
  [thursdayGoal doubleValueForUnit:_unit];
  [(HDCodableActivityGoalSchedule *)v2 setThursdayGoal:?];

  fridayGoal = [self fridayGoal];
  [fridayGoal doubleValueForUnit:_unit];
  [(HDCodableActivityGoalSchedule *)v2 setFridayGoal:?];

  saturdayGoal = [self saturdayGoal];
  [saturdayGoal doubleValueForUnit:_unit];
  [(HDCodableActivityGoalSchedule *)v2 setSaturdayGoal:?];

  sundayGoal = [self sundayGoal];
  [sundayGoal doubleValueForUnit:_unit];
  [(HDCodableActivityGoalSchedule *)v2 setSundayGoal:?];

  return v2;
}

- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport
{
  v4 = a3;
  codableRepresentationForSync = [self codableRepresentationForSync];
  if (codableRepresentationForSync)
  {
    [v4 addActivityGoalSchedules:codableRepresentationForSync];
  }

  return codableRepresentationForSync != 0;
}

@end