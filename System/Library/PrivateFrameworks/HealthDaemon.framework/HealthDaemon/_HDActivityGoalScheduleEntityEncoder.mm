@interface _HDActivityGoalScheduleEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)_quantityForRow:(uint64_t)row unit:(uint64_t)unit columnName:(void *)name;
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
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
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:orderedProperties];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _init = [objc_alloc(MEMORY[0x277CCCFA8]) _init];

  return _init;
}

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v9 = [superclassEncoder codableRepresentationForPersistentID:d row:row error:error];

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

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  objectCopy = object;
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [superclassEncoder applyPropertiesToObject:objectCopy persistentID:d row:row error:error];

  if (v12)
  {
    [objectCopy setGoalType:HDSQLiteColumnWithNameAsInt64()];
    v22 = HDSQLiteColumnWithNameAsString();
    v13 = [MEMORY[0x277CCDAB0] unitFromString:v22];
    v21 = [_HDActivityGoalScheduleEntityEncoder _quantityForRow:row unit:v13 columnName:?];
    [objectCopy setMondayGoal:v21];
    v14 = [_HDActivityGoalScheduleEntityEncoder _quantityForRow:row unit:v13 columnName:?];
    [objectCopy setTuesdayGoal:v14];
    v15 = [_HDActivityGoalScheduleEntityEncoder _quantityForRow:row unit:v13 columnName:?];
    [objectCopy setWednesdayGoal:v15];
    v16 = [_HDActivityGoalScheduleEntityEncoder _quantityForRow:row unit:v13 columnName:?];
    [objectCopy setThursdayGoal:v16];
    v17 = [_HDActivityGoalScheduleEntityEncoder _quantityForRow:row unit:v13 columnName:?];
    [objectCopy setFridayGoal:v17];
    v18 = [_HDActivityGoalScheduleEntityEncoder _quantityForRow:row unit:v13 columnName:?];
    [objectCopy setSaturdayGoal:v18];
    v19 = [_HDActivityGoalScheduleEntityEncoder _quantityForRow:row unit:v13 columnName:?];
    [objectCopy setSundayGoal:v19];
  }

  return v12;
}

- (id)_quantityForRow:(uint64_t)row unit:(uint64_t)unit columnName:(void *)name
{
  if (row)
  {
    nameCopy = name;
    HDSQLiteColumnWithNameAsDouble();
    v4 = [MEMORY[0x277CCD7E8] quantityWithUnit:nameCopy doubleValue:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end