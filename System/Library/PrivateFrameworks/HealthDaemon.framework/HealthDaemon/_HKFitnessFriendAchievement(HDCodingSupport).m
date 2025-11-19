@interface _HKFitnessFriendAchievement(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport;
- (HDCodableFitnessFriendAchievement)codableRepresentationForSync;
@end

@implementation _HKFitnessFriendAchievement(HDCodingSupport)

- (HDCodableFitnessFriendAchievement)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableFitnessFriendAchievement);
  v11.receiver = a1;
  v11.super_class = &off_283D41478;
  v3 = objc_msgSendSuper2(&v11, sel_codableRepresentationForSync);
  [(HDCodableFitnessFriendAchievement *)v2 setSample:v3];
  v4 = [a1 friendUUID];
  v5 = [v4 hk_dataForUUIDBytes];
  [(HDCodableFitnessFriendAchievement *)v2 setFriendUUID:v5];

  v6 = [a1 templateUniqueName];
  [(HDCodableFitnessFriendAchievement *)v2 setTemplateUniqueName:v6];

  v7 = [a1 completedDate];
  [v7 timeIntervalSinceReferenceDate];
  [(HDCodableFitnessFriendAchievement *)v2 setCompletedDate:?];

  v8 = [a1 value];
  v9 = v8;
  if (v8)
  {
    if ([v8 hk_hasFloatingPointValue])
    {
      [v9 doubleValue];
      [(HDCodableFitnessFriendAchievement *)v2 setDoubleValue:?];
    }

    else
    {
      -[HDCodableFitnessFriendAchievement setIntValue:](v2, "setIntValue:", [v9 longLongValue]);
    }
  }

  return v2;
}

- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport
{
  v4 = a3;
  v5 = [a1 codableRepresentationForSync];
  if (v5)
  {
    [v4 addFitnessFriendAchievements:v5];
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