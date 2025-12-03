@interface _HKFitnessFriendAchievement(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport;
- (HDCodableFitnessFriendAchievement)codableRepresentationForSync;
@end

@implementation _HKFitnessFriendAchievement(HDCodingSupport)

- (HDCodableFitnessFriendAchievement)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableFitnessFriendAchievement);
  v11.receiver = self;
  v11.super_class = &off_283D41478;
  v3 = objc_msgSendSuper2(&v11, sel_codableRepresentationForSync);
  [(HDCodableFitnessFriendAchievement *)v2 setSample:v3];
  friendUUID = [self friendUUID];
  hk_dataForUUIDBytes = [friendUUID hk_dataForUUIDBytes];
  [(HDCodableFitnessFriendAchievement *)v2 setFriendUUID:hk_dataForUUIDBytes];

  templateUniqueName = [self templateUniqueName];
  [(HDCodableFitnessFriendAchievement *)v2 setTemplateUniqueName:templateUniqueName];

  completedDate = [self completedDate];
  [completedDate timeIntervalSinceReferenceDate];
  [(HDCodableFitnessFriendAchievement *)v2 setCompletedDate:?];

  value = [self value];
  v9 = value;
  if (value)
  {
    if ([value hk_hasFloatingPointValue])
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
  codableRepresentationForSync = [self codableRepresentationForSync];
  if (codableRepresentationForSync)
  {
    [v4 addFitnessFriendAchievements:codableRepresentationForSync];
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