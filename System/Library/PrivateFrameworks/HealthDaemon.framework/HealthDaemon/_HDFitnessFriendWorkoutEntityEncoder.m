@interface _HDFitnessFriendWorkoutEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
- (id)createBareObjectWithRow:(HDSQLiteRow *)a3;
- (id)orderedProperties;
@end

@implementation _HDFitnessFriendWorkoutEntityEncoder

- (id)orderedProperties
{
  v10[16] = *MEMORY[0x277D85DE8];
  v10[0] = @"friend_uuid";
  v10[1] = @"duration";
  v10[2] = @"total_energy_burned";
  v10[3] = @"total_basal_energy_burned";
  v10[4] = @"total_distance";
  v10[5] = @"activity_type";
  v10[6] = @"goal_type";
  v10[7] = @"goal";
  v10[8] = @"bundle_id";
  v10[9] = @"is_watch_workout";
  v10[10] = @"is_indoor_workout";
  v10[11] = @"device_manufacturer";
  v10[12] = @"device_model";
  v10[13] = @"activity_move_mode";
  v10[14] = @"seymour_catalog_workout_identifier";
  v10[15] = @"seymour_media_type";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:16];
  v9.receiver = self;
  v9.super_class = _HDFitnessFriendWorkoutEntityEncoder;
  v4 = [(HDEntityEncoder *)&v9 superclassEncoder];
  v5 = [v4 orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v8 = [(HDEntityEncoder *)self superclassEncoder];
  v9 = [v8 codableRepresentationForPersistentID:a3 row:a4 error:a5];

  if (v9)
  {
    v10 = objc_alloc_init(HDCodableFitnessFriendWorkout);
    [(HDCodableFitnessFriendWorkout *)v10 setSample:v9];
    v11 = HDSQLiteColumnWithNameAsData();
    [(HDCodableFitnessFriendWorkout *)v10 setFriendUUID:v11];

    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableFitnessFriendWorkout *)v10 setDuration:?];
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableFitnessFriendWorkout *)v10 setTotalEnergyBurnedInCanonicalUnit:?];
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableFitnessFriendWorkout *)v10 setTotalBasalEnergyBurnedInCanonicalUnit:?];
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableFitnessFriendWorkout *)v10 setTotalDistanceInCanonicalUnit:?];
    [(HDCodableFitnessFriendWorkout *)v10 setType:HDSQLiteColumnWithNameAsInt64()];
    [(HDCodableFitnessFriendWorkout *)v10 setAmm:HDEntityActivityModeModeForRowAndColumnName(a4)];
    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      [(HDCodableFitnessFriendWorkout *)v10 setGoalType:HDSQLiteColumnWithNameAsInt64()];
      HDSQLiteColumnWithNameAsDouble();
      [(HDCodableFitnessFriendWorkout *)v10 setGoal:?];
    }

    v12 = HDSQLiteColumnWithNameAsString();
    [(HDCodableFitnessFriendWorkout *)v10 setBundleID:v12];

    [(HDCodableFitnessFriendWorkout *)v10 setIsWatchWorkout:HDSQLiteColumnWithNameAsInt64()];
    [(HDCodableFitnessFriendWorkout *)v10 setIsIndoorWorkout:HDSQLiteColumnWithNameAsInt64()];
    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      v13 = HDSQLiteColumnWithNameAsString();
      [(HDCodableFitnessFriendWorkout *)v10 setDeviceManufacturer:v13];
    }

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      v14 = HDSQLiteColumnWithNameAsString();
      [(HDCodableFitnessFriendWorkout *)v10 setDeviceModel:v14];
    }

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      v15 = HDSQLiteColumnWithNameAsString();
      [(HDCodableFitnessFriendWorkout *)v10 setSeymourCatalogWorkoutIdentifier:v15];
    }

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      v16 = HDSQLiteColumnWithNameAsString();
      [(HDCodableFitnessFriendWorkout *)v10 setSeymourMediaType:v16];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCDDD0]) _init];

  return v3;
}

- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [v11 applyPropertiesToObject:v10 persistentID:a4 row:a5 error:a6];

  if (v12)
  {
    v13 = HDSQLiteColumnWithNameAsUUID();
    [v10 setFriendUUID:v13];

    HDSQLiteColumnWithNameAsDouble();
    [v10 setDuration:?];
    v14 = HDSQLiteColumnWithName();
    if ((MEMORY[0x22AAC6CD0](a5, v14) & 1) == 0)
    {
      v15 = MEMORY[0x22AAC6C50](a5, v14);
      v16 = MEMORY[0x277CCD7E8];
      v17 = _HKWorkoutCanonicalEnergyBurnedUnit();
      v18 = [v16 quantityWithUnit:v17 doubleValue:v15];

      [v10 setTotalEnergyBurned:v18];
    }

    v19 = HDSQLiteColumnWithName();
    if ((MEMORY[0x22AAC6CD0](a5, v19) & 1) == 0)
    {
      v20 = MEMORY[0x22AAC6C50](a5, v19);
      v21 = MEMORY[0x277CCD7E8];
      v22 = _HKWorkoutCanonicalEnergyBurnedUnit();
      v23 = [v21 quantityWithUnit:v22 doubleValue:v20];

      [v10 setTotalBasalEnergyBurned:v23];
    }

    v24 = HDSQLiteColumnWithName();
    if ((MEMORY[0x22AAC6CD0](a5, v24) & 1) == 0)
    {
      v25 = MEMORY[0x22AAC6C50](a5, v24);
      v26 = MEMORY[0x277CCD7E8];
      v27 = _HKWorkoutCanonicalDistanceUnit();
      v28 = [v26 quantityWithUnit:v27 doubleValue:v25];

      [v10 setTotalDistance:v28];
    }

    [v10 setWorkoutActivityType:HDSQLiteColumnWithNameAsInt64()];
    [v10 setAmm:HDEntityActivityModeModeForRowAndColumnName(a5)];
    v29 = HDSQLiteColumnWithNameAsInt64();
    v30 = HDSQLiteColumnWithName();
    if ((MEMORY[0x22AAC6CD0](a5, v30) & 1) == 0 && _HKWorkoutGoalTypeIsValidForGoal())
    {
      v31 = MEMORY[0x277CCD7E8];
      v32 = _HKWorkoutCanonicalUnitForGoalType();
      MEMORY[0x22AAC6C50](a5, v30);
      v33 = [v31 quantityWithUnit:v32 doubleValue:?];

      [v10 setGoal:v33];
      [v10 setGoalType:v29];
    }

    v34 = HDSQLiteColumnWithNameAsString();
    [v10 setBundleID:v34];

    [v10 setIsWatchWorkout:HDSQLiteColumnWithNameAsInt64() != 0];
    [v10 setIsIndoorWorkout:HDSQLiteColumnWithNameAsInt64() != 0];
    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      v35 = HDSQLiteColumnWithNameAsString();
      [v10 setDeviceManufacturer:v35];
    }

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      v36 = HDSQLiteColumnWithNameAsString();
      [v10 setDeviceModel:v36];
    }

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      v37 = HDSQLiteColumnWithNameAsString();
      [v10 setSeymourCatalogWorkoutIdentifier:v37];
    }

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      v38 = HDSQLiteColumnWithNameAsString();
      [v10 setSeymourMediaType:v38];
    }
  }

  return v12;
}

@end