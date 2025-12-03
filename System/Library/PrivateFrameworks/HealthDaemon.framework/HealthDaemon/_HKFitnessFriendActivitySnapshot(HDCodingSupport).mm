@interface _HKFitnessFriendActivitySnapshot(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport;
- (HDCodableFitnessFriendActivitySnapshot)codableRepresentationForSync;
@end

@implementation _HKFitnessFriendActivitySnapshot(HDCodingSupport)

- (HDCodableFitnessFriendActivitySnapshot)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableFitnessFriendActivitySnapshot);
  v12.receiver = self;
  v12.super_class = &off_283D419E8;
  v3 = objc_msgSendSuper2(&v12, sel_codableRepresentationForSync);
  [(HDCodableFitnessFriendActivitySnapshot *)v2 setSample:v3];
  friendUUID = [self friendUUID];
  hk_dataForUUIDBytes = [friendUUID hk_dataForUUIDBytes];
  [(HDCodableFitnessFriendActivitySnapshot *)v2 setFriendUUID:hk_dataForUUIDBytes];

  sourceUUID = [self sourceUUID];
  hk_dataForUUIDBytes2 = [sourceUUID hk_dataForUUIDBytes];
  [(HDCodableFitnessFriendActivitySnapshot *)v2 setSourceUUID:hk_dataForUUIDBytes2];

  [self activeHours];
  [(HDCodableFitnessFriendActivitySnapshot *)v2 setActiveHours:?];
  [self activeHoursGoal];
  [(HDCodableFitnessFriendActivitySnapshot *)v2 setActiveHoursGoal:?];
  [self briskMinutes];
  [(HDCodableFitnessFriendActivitySnapshot *)v2 setBriskMinutes:?];
  [self briskMinutesGoal];
  [(HDCodableFitnessFriendActivitySnapshot *)v2 setBriskMinutesGoal:?];
  [self energyBurned];
  [(HDCodableFitnessFriendActivitySnapshot *)v2 setEnergyBurned:?];
  [self energyBurnedGoal];
  [(HDCodableFitnessFriendActivitySnapshot *)v2 setEnergyBurnedGoal:?];
  [self mmv];
  [(HDCodableFitnessFriendActivitySnapshot *)v2 setMmv:?];
  [self mmg];
  [(HDCodableFitnessFriendActivitySnapshot *)v2 setMmg:?];
  -[HDCodableFitnessFriendActivitySnapshot setAmm:](v2, "setAmm:", [self amm]);
  [self walkingAndRunningDistance];
  [(HDCodableFitnessFriendActivitySnapshot *)v2 setWalkingAndRunningDistance:?];
  [self stepCount];
  [(HDCodableFitnessFriendActivitySnapshot *)v2 setStepCount:?];
  -[HDCodableFitnessFriendActivitySnapshot setSnapshotIndex:](v2, "setSnapshotIndex:", [self snapshotIndex]);
  snapshotUploadedDate = [self snapshotUploadedDate];
  [snapshotUploadedDate timeIntervalSinceReferenceDate];
  [(HDCodableFitnessFriendActivitySnapshot *)v2 setUploadedDate:?];

  [self pushCount];
  [(HDCodableFitnessFriendActivitySnapshot *)v2 setPushCount:?];
  -[HDCodableFitnessFriendActivitySnapshot setWheelchairUse:](v2, "setWheelchairUse:", [self wheelchairUse]);
  timeZoneOffsetFromUTCForNoon = [self timeZoneOffsetFromUTCForNoon];

  if (timeZoneOffsetFromUTCForNoon)
  {
    timeZoneOffsetFromUTCForNoon2 = [self timeZoneOffsetFromUTCForNoon];
    -[HDCodableFitnessFriendActivitySnapshot setTimeZoneOffsetFromUTCForNoon:](v2, "setTimeZoneOffsetFromUTCForNoon:", [timeZoneOffsetFromUTCForNoon2 integerValue]);
  }

  return v2;
}

- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport
{
  v4 = a3;
  codableRepresentationForSync = [self codableRepresentationForSync];
  if (codableRepresentationForSync)
  {
    [v4 addFitnessFriendActivitySnapshots:codableRepresentationForSync];
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