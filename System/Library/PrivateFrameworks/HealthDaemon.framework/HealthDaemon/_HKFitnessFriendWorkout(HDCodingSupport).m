@interface _HKFitnessFriendWorkout(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport;
- (HDCodableFitnessFriendWorkout)codableRepresentationForSync;
@end

@implementation _HKFitnessFriendWorkout(HDCodingSupport)

- (HDCodableFitnessFriendWorkout)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableFitnessFriendWorkout);
  v30.receiver = a1;
  v30.super_class = &off_283D41EA0;
  v3 = objc_msgSendSuper2(&v30, sel_codableRepresentationForSync);
  [(HDCodableFitnessFriendWorkout *)v2 setSample:v3];
  v4 = [a1 friendUUID];
  v5 = [v4 hk_dataForUUIDBytes];
  [(HDCodableFitnessFriendWorkout *)v2 setFriendUUID:v5];

  [a1 duration];
  [(HDCodableFitnessFriendWorkout *)v2 setDuration:?];
  v6 = [a1 totalEnergyBurned];

  if (v6)
  {
    v7 = [a1 totalEnergyBurned];
    v8 = _HKWorkoutCanonicalEnergyBurnedUnit();
    [v7 doubleValueForUnit:v8];
    [(HDCodableFitnessFriendWorkout *)v2 setTotalEnergyBurnedInCanonicalUnit:?];
  }

  v9 = [a1 totalBasalEnergyBurned];

  if (v9)
  {
    v10 = [a1 totalBasalEnergyBurned];
    v11 = _HKWorkoutCanonicalEnergyBurnedUnit();
    [v10 doubleValueForUnit:v11];
    [(HDCodableFitnessFriendWorkout *)v2 setTotalBasalEnergyBurnedInCanonicalUnit:?];
  }

  v12 = [a1 totalDistance];

  if (v12)
  {
    v13 = [a1 totalDistance];
    v14 = _HKWorkoutCanonicalDistanceUnit();
    [v13 doubleValueForUnit:v14];
    [(HDCodableFitnessFriendWorkout *)v2 setTotalDistanceInCanonicalUnit:?];
  }

  -[HDCodableFitnessFriendWorkout setType:](v2, "setType:", [a1 workoutActivityType]);
  -[HDCodableFitnessFriendWorkout setGoalType:](v2, "setGoalType:", [a1 goalType]);
  v15 = [a1 goal];
  if (v15)
  {
    v16 = v15;
    [a1 goalType];
    IsValidForGoal = _HKWorkoutGoalTypeIsValidForGoal();

    if (IsValidForGoal)
    {
      v18 = [a1 goal];
      [a1 goalType];
      v19 = _HKWorkoutCanonicalUnitForGoalType();
      [v18 doubleValueForUnit:v19];
      [(HDCodableFitnessFriendWorkout *)v2 setGoal:?];
    }
  }

  v20 = [a1 bundleID];
  [(HDCodableFitnessFriendWorkout *)v2 setBundleID:v20];

  -[HDCodableFitnessFriendWorkout setIsWatchWorkout:](v2, "setIsWatchWorkout:", [a1 isWatchWorkout]);
  -[HDCodableFitnessFriendWorkout setIsIndoorWorkout:](v2, "setIsIndoorWorkout:", [a1 isIndoorWorkout]);
  v21 = [a1 deviceManufacturer];

  if (v21)
  {
    v22 = [a1 deviceManufacturer];
    [(HDCodableFitnessFriendWorkout *)v2 setDeviceManufacturer:v22];
  }

  v23 = [a1 deviceModel];

  if (v23)
  {
    v24 = [a1 deviceModel];
    [(HDCodableFitnessFriendWorkout *)v2 setDeviceModel:v24];
  }

  -[HDCodableFitnessFriendWorkout setAmm:](v2, "setAmm:", [a1 amm]);
  v25 = [a1 seymourCatalogWorkoutIdentifier];

  if (v25)
  {
    v26 = [a1 seymourCatalogWorkoutIdentifier];
    [(HDCodableFitnessFriendWorkout *)v2 setSeymourCatalogWorkoutIdentifier:v26];
  }

  v27 = [a1 seymourMediaType];

  if (v27)
  {
    v28 = [a1 seymourMediaType];
    [(HDCodableFitnessFriendWorkout *)v2 setSeymourMediaType:v28];
  }

  return v2;
}

- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport
{
  v4 = a3;
  v5 = [a1 codableRepresentationForSync];
  if (v5)
  {
    [v4 addFitnessFriendWorkouts:v5];
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