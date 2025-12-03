@interface _HDFitnessFriendActivitySnapshotEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
- (id)orderedProperties;
@end

@implementation _HDFitnessFriendActivitySnapshotEntityEncoder

- (id)orderedProperties
{
  v9[18] = *MEMORY[0x277D85DE8];
  v9[0] = @"friend_uuid";
  v9[1] = @"active_hours";
  v9[2] = @"active_hours_goal";
  v9[3] = @"brisk_minutes";
  v9[4] = @"brisk_minutes_goal";
  v9[5] = @"energy_burned";
  v9[6] = @"energy_burned_goal";
  v9[7] = @"move_minutes";
  v9[8] = @"move_minutes_goal";
  v9[9] = @"activity_move_mode";
  v9[10] = @"steps";
  v9[11] = @"walk_run_distance";
  v9[12] = @"snapshot_index";
  v9[13] = @"source_uuid";
  v9[14] = @"uploaded_date";
  v9[15] = @"vulcan_count";
  v9[16] = @"vulcan_condition";
  v9[17] = @"timezone_offset";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:18];
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:orderedProperties];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v9 = [superclassEncoder codableRepresentationForPersistentID:d row:row error:error];

  if (v9)
  {
    v10 = objc_alloc_init(HDCodableFitnessFriendActivitySnapshot);
    [(HDCodableFitnessFriendActivitySnapshot *)v10 setSample:v9];
    v11 = HDSQLiteColumnWithNameAsData();
    [(HDCodableFitnessFriendActivitySnapshot *)v10 setFriendUUID:v11];

    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableFitnessFriendActivitySnapshot *)v10 setActiveHours:?];
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableFitnessFriendActivitySnapshot *)v10 setActiveHoursGoal:?];
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableFitnessFriendActivitySnapshot *)v10 setBriskMinutes:?];
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableFitnessFriendActivitySnapshot *)v10 setBriskMinutesGoal:?];
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableFitnessFriendActivitySnapshot *)v10 setEnergyBurned:?];
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableFitnessFriendActivitySnapshot *)v10 setEnergyBurnedGoal:?];
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableFitnessFriendActivitySnapshot *)v10 setMmv:?];
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableFitnessFriendActivitySnapshot *)v10 setMmg:?];
    [(HDCodableFitnessFriendActivitySnapshot *)v10 setAmm:HDEntityActivityModeModeForRowAndColumnName(row)];
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableFitnessFriendActivitySnapshot *)v10 setWalkingAndRunningDistance:?];
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableFitnessFriendActivitySnapshot *)v10 setStepCount:?];
    v12 = HDSQLiteColumnWithNameAsData();
    [(HDCodableFitnessFriendActivitySnapshot *)v10 setSourceUUID:v12];

    [(HDCodableFitnessFriendActivitySnapshot *)v10 setSnapshotIndex:HDSQLiteColumnWithNameAsInt64()];
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableFitnessFriendActivitySnapshot *)v10 setUploadedDate:?];
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableFitnessFriendActivitySnapshot *)v10 setPushCount:?];
    [(HDCodableFitnessFriendActivitySnapshot *)v10 setWheelchairUse:HDSQLiteColumnWithNameAsInt64()];
    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      [(HDCodableFitnessFriendActivitySnapshot *)v10 setTimeZoneOffsetFromUTCForNoon:HDSQLiteColumnWithNameAsInt64()];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _init = [objc_alloc(MEMORY[0x277CCDDC8]) _init];

  return _init;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  objectCopy = object;
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [superclassEncoder applyPropertiesToObject:objectCopy persistentID:d row:row error:error];

  if (v12)
  {
    v13 = HDSQLiteColumnWithNameAsUUID();
    [objectCopy setFriendUUID:v13];

    HDSQLiteColumnWithNameAsDouble();
    [objectCopy setActiveHours:?];
    HDSQLiteColumnWithNameAsDouble();
    [objectCopy setActiveHoursGoal:?];
    HDSQLiteColumnWithNameAsDouble();
    [objectCopy setBriskMinutes:?];
    HDSQLiteColumnWithNameAsDouble();
    [objectCopy setBriskMinutesGoal:?];
    HDSQLiteColumnWithNameAsDouble();
    [objectCopy setEnergyBurned:?];
    HDSQLiteColumnWithNameAsDouble();
    [objectCopy setEnergyBurnedGoal:?];
    HDSQLiteColumnWithNameAsDouble();
    [objectCopy setMmv:?];
    HDSQLiteColumnWithNameAsDouble();
    [objectCopy setMmg:?];
    [objectCopy setAmm:HDEntityActivityModeModeForRowAndColumnName(row)];
    HDSQLiteColumnWithNameAsDouble();
    [objectCopy setWalkingAndRunningDistance:?];
    HDSQLiteColumnWithNameAsDouble();
    [objectCopy setStepCount:?];
    v14 = HDSQLiteColumnWithNameAsUUID();
    [objectCopy setSourceUUID:v14];

    [objectCopy setSnapshotIndex:HDSQLiteColumnWithNameAsInt64()];
    v15 = HDSQLiteColumnWithNameAsDate();
    [objectCopy setSnapshotUploadedDate:v15];

    HDSQLiteColumnWithNameAsDouble();
    [objectCopy setPushCount:?];
    [objectCopy setWheelchairUse:HDSQLiteColumnWithNameAsInt64()];
    v16 = HDSQLiteColumnWithName();
    if ((MEMORY[0x22AAC6CD0](row, v16) & 1) == 0)
    {
      v17 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnAsInt64()];
      [objectCopy setTimeZoneOffsetFromUTCForNoon:v17];
    }
  }

  return v12;
}

@end