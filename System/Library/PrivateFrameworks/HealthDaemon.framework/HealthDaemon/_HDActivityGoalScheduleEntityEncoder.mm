@interface _HDActivityGoalScheduleEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (id)_quantityForRow:(uint64_t)a1 unit:(uint64_t)a2 columnName:(void *)a3;
- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
- (id)createBareObjectWithRow:(HDSQLiteRow *)a3;
- (id)orderedProperties;
@end

@implementation _HDActivityGoalScheduleEntityEncoder

- (id)orderedProperties
{
  v9[9] = *MEMORY[0x277D85DE8];
  v9[0] = @"goal_type";
  v9[1] = @"unit_string";
  v9[2] = @"monday_goal";
  v9[3] = @"tuesday_goal";
  v9[4] = @"wednesday_goal";
  v9[5] = @"thursday_goal";
  v9[6] = @"friday_goal";
  v9[7] = @"saturday_goal";
  v9[8] = @"sunday_goal";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:9];
  v4 = [(HDEntityEncoder *)self superclassEncoder];
  v5 = [v4 orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCCFA8]) _init];

  return v3;
}

- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v8 = [(HDEntityEncoder *)self superclassEncoder];
  v9 = [v8 codableRepresentationForPersistentID:a3 row:a4 error:a5];

  if (v9)
  {
    v10 = objc_alloc_init(HDCodableActivityGoalSchedule);
    [(HDCodableActivityGoalSchedule *)v10 setSample:v9];
    [(HDCodableActivityGoalSchedule *)v10 setGoalType:HDSQLiteColumnWithNameAsInt64()];
    v11 = HDSQLiteColumnWithNameAsString();
    [(HDCodableActivityGoalSchedule *)v10 setUnitString:v11];
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableActivityGoalSchedule *)v10 setMondayGoal:?];
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableActivityGoalSchedule *)v10 setTuesdayGoal:?];
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableActivityGoalSchedule *)v10 setWednesdayGoal:?];
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableActivityGoalSchedule *)v10 setThursdayGoal:?];
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableActivityGoalSchedule *)v10 setFridayGoal:?];
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableActivityGoalSchedule *)v10 setSaturdayGoal:?];
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableActivityGoalSchedule *)v10 setSundayGoal:?];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [v11 applyPropertiesToObject:v10 persistentID:a4 row:a5 error:a6];

  if (v12)
  {
    [v10 setGoalType:HDSQLiteColumnWithNameAsInt64()];
    v22 = HDSQLiteColumnWithNameAsString();
    v13 = [MEMORY[0x277CCDAB0] unitFromString:v22];
    v21 = [_HDActivityGoalScheduleEntityEncoder _quantityForRow:a5 unit:v13 columnName:?];
    [v10 setMondayGoal:v21];
    v14 = [_HDActivityGoalScheduleEntityEncoder _quantityForRow:a5 unit:v13 columnName:?];
    [v10 setTuesdayGoal:v14];
    v15 = [_HDActivityGoalScheduleEntityEncoder _quantityForRow:a5 unit:v13 columnName:?];
    [v10 setWednesdayGoal:v15];
    v16 = [_HDActivityGoalScheduleEntityEncoder _quantityForRow:a5 unit:v13 columnName:?];
    [v10 setThursdayGoal:v16];
    v17 = [_HDActivityGoalScheduleEntityEncoder _quantityForRow:a5 unit:v13 columnName:?];
    [v10 setFridayGoal:v17];
    v18 = [_HDActivityGoalScheduleEntityEncoder _quantityForRow:a5 unit:v13 columnName:?];
    [v10 setSaturdayGoal:v18];
    v19 = [_HDActivityGoalScheduleEntityEncoder _quantityForRow:a5 unit:v13 columnName:?];
    [v10 setSundayGoal:v19];
  }

  return v12;
}

- (id)_quantityForRow:(uint64_t)a1 unit:(uint64_t)a2 columnName:(void *)a3
{
  if (a1)
  {
    v3 = a3;
    HDSQLiteColumnWithNameAsDouble();
    v4 = [MEMORY[0x277CCD7E8] quantityWithUnit:v3 doubleValue:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end