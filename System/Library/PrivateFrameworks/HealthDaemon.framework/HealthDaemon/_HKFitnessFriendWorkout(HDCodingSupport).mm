@interface _HKFitnessFriendWorkout(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport;
- (HDCodableFitnessFriendWorkout)codableRepresentationForSync;
@end

@implementation _HKFitnessFriendWorkout(HDCodingSupport)

- (HDCodableFitnessFriendWorkout)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableFitnessFriendWorkout);
  v30.receiver = self;
  v30.super_class = &off_283D41EA0;
  v3 = objc_msgSendSuper2(&v30, sel_codableRepresentationForSync);
  [(HDCodableFitnessFriendWorkout *)v2 setSample:v3];
  friendUUID = [self friendUUID];
  hk_dataForUUIDBytes = [friendUUID hk_dataForUUIDBytes];
  [(HDCodableFitnessFriendWorkout *)v2 setFriendUUID:hk_dataForUUIDBytes];

  [self duration];
  [(HDCodableFitnessFriendWorkout *)v2 setDuration:?];
  totalEnergyBurned = [self totalEnergyBurned];

  if (totalEnergyBurned)
  {
    totalEnergyBurned2 = [self totalEnergyBurned];
    v8 = _HKWorkoutCanonicalEnergyBurnedUnit();
    [totalEnergyBurned2 doubleValueForUnit:v8];
    [(HDCodableFitnessFriendWorkout *)v2 setTotalEnergyBurnedInCanonicalUnit:?];
  }

  totalBasalEnergyBurned = [self totalBasalEnergyBurned];

  if (totalBasalEnergyBurned)
  {
    totalBasalEnergyBurned2 = [self totalBasalEnergyBurned];
    v11 = _HKWorkoutCanonicalEnergyBurnedUnit();
    [totalBasalEnergyBurned2 doubleValueForUnit:v11];
    [(HDCodableFitnessFriendWorkout *)v2 setTotalBasalEnergyBurnedInCanonicalUnit:?];
  }

  totalDistance = [self totalDistance];

  if (totalDistance)
  {
    totalDistance2 = [self totalDistance];
    v14 = _HKWorkoutCanonicalDistanceUnit();
    [totalDistance2 doubleValueForUnit:v14];
    [(HDCodableFitnessFriendWorkout *)v2 setTotalDistanceInCanonicalUnit:?];
  }

  -[HDCodableFitnessFriendWorkout setType:](v2, "setType:", [self workoutActivityType]);
  -[HDCodableFitnessFriendWorkout setGoalType:](v2, "setGoalType:", [self goalType]);
  goal = [self goal];
  if (goal)
  {
    v16 = goal;
    [self goalType];
    IsValidForGoal = _HKWorkoutGoalTypeIsValidForGoal();

    if (IsValidForGoal)
    {
      goal2 = [self goal];
      [self goalType];
      v19 = _HKWorkoutCanonicalUnitForGoalType();
      [goal2 doubleValueForUnit:v19];
      [(HDCodableFitnessFriendWorkout *)v2 setGoal:?];
    }
  }

  bundleID = [self bundleID];
  [(HDCodableFitnessFriendWorkout *)v2 setBundleID:bundleID];

  -[HDCodableFitnessFriendWorkout setIsWatchWorkout:](v2, "setIsWatchWorkout:", [self isWatchWorkout]);
  -[HDCodableFitnessFriendWorkout setIsIndoorWorkout:](v2, "setIsIndoorWorkout:", [self isIndoorWorkout]);
  deviceManufacturer = [self deviceManufacturer];

  if (deviceManufacturer)
  {
    deviceManufacturer2 = [self deviceManufacturer];
    [(HDCodableFitnessFriendWorkout *)v2 setDeviceManufacturer:deviceManufacturer2];
  }

  deviceModel = [self deviceModel];

  if (deviceModel)
  {
    deviceModel2 = [self deviceModel];
    [(HDCodableFitnessFriendWorkout *)v2 setDeviceModel:deviceModel2];
  }

  -[HDCodableFitnessFriendWorkout setAmm:](v2, "setAmm:", [self amm]);
  seymourCatalogWorkoutIdentifier = [self seymourCatalogWorkoutIdentifier];

  if (seymourCatalogWorkoutIdentifier)
  {
    seymourCatalogWorkoutIdentifier2 = [self seymourCatalogWorkoutIdentifier];
    [(HDCodableFitnessFriendWorkout *)v2 setSeymourCatalogWorkoutIdentifier:seymourCatalogWorkoutIdentifier2];
  }

  seymourMediaType = [self seymourMediaType];

  if (seymourMediaType)
  {
    seymourMediaType2 = [self seymourMediaType];
    [(HDCodableFitnessFriendWorkout *)v2 setSeymourMediaType:seymourMediaType2];
  }

  return v2;
}

- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport
{
  v4 = a3;
  codableRepresentationForSync = [self codableRepresentationForSync];
  if (codableRepresentationForSync)
  {
    [v4 addFitnessFriendWorkouts:codableRepresentationForSync];
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