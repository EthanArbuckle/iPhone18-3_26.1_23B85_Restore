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

- (HDCodableActivityGoalSchedule)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableActivityGoalSchedule);
  v15.receiver = a1;
  v15.super_class = &off_283D428C0;
  v3 = objc_msgSendSuper2(&v15, sel_codableRepresentationForSync);
  [(HDCodableActivityGoalSchedule *)v2 setSample:v3];
  -[HDCodableActivityGoalSchedule setGoalType:](v2, "setGoalType:", [a1 goalType]);
  v4 = [a1 mondayGoal];
  v5 = [v4 _unit];

  v6 = [v5 unitString];
  [(HDCodableActivityGoalSchedule *)v2 setUnitString:v6];

  v7 = [a1 mondayGoal];
  [v7 doubleValueForUnit:v5];
  [(HDCodableActivityGoalSchedule *)v2 setMondayGoal:?];

  v8 = [a1 tuesdayGoal];
  [v8 doubleValueForUnit:v5];
  [(HDCodableActivityGoalSchedule *)v2 setTuesdayGoal:?];

  v9 = [a1 wednesdayGoal];
  [v9 doubleValueForUnit:v5];
  [(HDCodableActivityGoalSchedule *)v2 setWednesdayGoal:?];

  v10 = [a1 thursdayGoal];
  [v10 doubleValueForUnit:v5];
  [(HDCodableActivityGoalSchedule *)v2 setThursdayGoal:?];

  v11 = [a1 fridayGoal];
  [v11 doubleValueForUnit:v5];
  [(HDCodableActivityGoalSchedule *)v2 setFridayGoal:?];

  v12 = [a1 saturdayGoal];
  [v12 doubleValueForUnit:v5];
  [(HDCodableActivityGoalSchedule *)v2 setSaturdayGoal:?];

  v13 = [a1 sundayGoal];
  [v13 doubleValueForUnit:v5];
  [(HDCodableActivityGoalSchedule *)v2 setSundayGoal:?];

  return v2;
}

- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport
{
  v4 = a3;
  v5 = [a1 codableRepresentationForSync];
  if (v5)
  {
    [v4 addActivityGoalSchedules:v5];
  }

  return v5 != 0;
}

@end