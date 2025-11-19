@interface _HKFitnessFriendActivitySnapshot(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport;
- (HDCodableFitnessFriendActivitySnapshot)codableRepresentationForSync;
@end

@implementation _HKFitnessFriendActivitySnapshot(HDCodingSupport)

- (HDCodableFitnessFriendActivitySnapshot)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableFitnessFriendActivitySnapshot);
  v12.receiver = a1;
  v12.super_class = &off_283D419E8;
  v3 = objc_msgSendSuper2(&v12, sel_codableRepresentationForSync);
  [(HDCodableFitnessFriendActivitySnapshot *)v2 setSample:v3];
  v4 = [a1 friendUUID];
  v5 = [v4 hk_dataForUUIDBytes];
  [(HDCodableFitnessFriendActivitySnapshot *)v2 setFriendUUID:v5];

  v6 = [a1 sourceUUID];
  v7 = [v6 hk_dataForUUIDBytes];
  [(HDCodableFitnessFriendActivitySnapshot *)v2 setSourceUUID:v7];

  [a1 activeHours];
  [(HDCodableFitnessFriendActivitySnapshot *)v2 setActiveHours:?];
  [a1 activeHoursGoal];
  [(HDCodableFitnessFriendActivitySnapshot *)v2 setActiveHoursGoal:?];
  [a1 briskMinutes];
  [(HDCodableFitnessFriendActivitySnapshot *)v2 setBriskMinutes:?];
  [a1 briskMinutesGoal];
  [(HDCodableFitnessFriendActivitySnapshot *)v2 setBriskMinutesGoal:?];
  [a1 energyBurned];
  [(HDCodableFitnessFriendActivitySnapshot *)v2 setEnergyBurned:?];
  [a1 energyBurnedGoal];
  [(HDCodableFitnessFriendActivitySnapshot *)v2 setEnergyBurnedGoal:?];
  [a1 mmv];
  [(HDCodableFitnessFriendActivitySnapshot *)v2 setMmv:?];
  [a1 mmg];
  [(HDCodableFitnessFriendActivitySnapshot *)v2 setMmg:?];
  -[HDCodableFitnessFriendActivitySnapshot setAmm:](v2, "setAmm:", [a1 amm]);
  [a1 walkingAndRunningDistance];
  [(HDCodableFitnessFriendActivitySnapshot *)v2 setWalkingAndRunningDistance:?];
  [a1 stepCount];
  [(HDCodableFitnessFriendActivitySnapshot *)v2 setStepCount:?];
  -[HDCodableFitnessFriendActivitySnapshot setSnapshotIndex:](v2, "setSnapshotIndex:", [a1 snapshotIndex]);
  v8 = [a1 snapshotUploadedDate];
  [v8 timeIntervalSinceReferenceDate];
  [(HDCodableFitnessFriendActivitySnapshot *)v2 setUploadedDate:?];

  [a1 pushCount];
  [(HDCodableFitnessFriendActivitySnapshot *)v2 setPushCount:?];
  -[HDCodableFitnessFriendActivitySnapshot setWheelchairUse:](v2, "setWheelchairUse:", [a1 wheelchairUse]);
  v9 = [a1 timeZoneOffsetFromUTCForNoon];

  if (v9)
  {
    v10 = [a1 timeZoneOffsetFromUTCForNoon];
    -[HDCodableFitnessFriendActivitySnapshot setTimeZoneOffsetFromUTCForNoon:](v2, "setTimeZoneOffsetFromUTCForNoon:", [v10 integerValue]);
  }

  return v2;
}

- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport
{
  v4 = a3;
  v5 = [a1 codableRepresentationForSync];
  if (v5)
  {
    [v4 addFitnessFriendActivitySnapshots:v5];
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