@interface _HDSleepScheduleEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
- (id)createBareObjectWithRow:(HDSQLiteRow *)a3;
- (id)orderedProperties;
@end

@implementation _HDSleepScheduleEntityEncoder

- (id)orderedProperties
{
  v9[12] = *MEMORY[0x277D85DE8];
  v9[0] = @"monday";
  v9[1] = @"tuesday";
  v9[2] = @"wednesday";
  v9[3] = @"thursday";
  v9[4] = @"friday";
  v9[5] = @"saturday";
  v9[6] = @"sunday";
  v9[7] = @"wake_hour";
  v9[8] = @"wake_minute";
  v9[9] = @"bed_hour";
  v9[10] = @"bed_minute";
  v9[11] = @"override_day_index";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:12];
  v4 = [(HDEntityEncoder *)self superclassEncoder];
  v5 = [v4 orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCD9E8]) _init];

  return v3;
}

- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v8 = [(HDEntityEncoder *)self superclassEncoder];
  v9 = [v8 codableRepresentationForPersistentID:a3 row:a4 error:a5];

  if (v9)
  {
    v10 = objc_alloc_init(HDCodableSleepSchedule);
    [(HDCodableSleepSchedule *)v10 setSample:v9];
    [(HDCodableSleepSchedule *)v10 setMonday:HDSQLiteColumnWithNameAsBoolean()];
    [(HDCodableSleepSchedule *)v10 setTuesday:HDSQLiteColumnWithNameAsBoolean()];
    [(HDCodableSleepSchedule *)v10 setWednesday:HDSQLiteColumnWithNameAsBoolean()];
    [(HDCodableSleepSchedule *)v10 setThursday:HDSQLiteColumnWithNameAsBoolean()];
    [(HDCodableSleepSchedule *)v10 setFriday:HDSQLiteColumnWithNameAsBoolean()];
    [(HDCodableSleepSchedule *)v10 setSaturday:HDSQLiteColumnWithNameAsBoolean()];
    [(HDCodableSleepSchedule *)v10 setSunday:HDSQLiteColumnWithNameAsBoolean()];
    v11 = HDSQLiteColumnWithNameAsNumber();
    v12 = v11;
    if (v11)
    {
      -[HDCodableSleepSchedule setWakeHour:](v10, "setWakeHour:", [v11 integerValue]);
    }

    v13 = HDSQLiteColumnWithNameAsNumber();
    v14 = v13;
    if (v13)
    {
      -[HDCodableSleepSchedule setWakeMinute:](v10, "setWakeMinute:", [v13 integerValue]);
    }

    v15 = HDSQLiteColumnWithNameAsNumber();
    v16 = v15;
    if (v15)
    {
      -[HDCodableSleepSchedule setBedHour:](v10, "setBedHour:", [v15 integerValue]);
    }

    v17 = HDSQLiteColumnWithNameAsNumber();
    v18 = v17;
    if (v17)
    {
      -[HDCodableSleepSchedule setBedMinute:](v10, "setBedMinute:", [v17 integerValue]);
    }

    v19 = HDSQLiteColumnWithNameAsNumber();
    v20 = v19;
    if (v19)
    {
      -[HDCodableSleepSchedule setOverrideDayIndex:](v10, "setOverrideDayIndex:", [v19 integerValue]);
    }
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
    HDSQLiteColumnWithNameAsBoolean();
    HDSQLiteColumnWithNameAsBoolean();
    HDSQLiteColumnWithNameAsBoolean();
    HDSQLiteColumnWithNameAsBoolean();
    HDSQLiteColumnWithNameAsBoolean();
    HDSQLiteColumnWithNameAsBoolean();
    HDSQLiteColumnWithNameAsBoolean();
    [v10 _setWeekdays:HKSleepScheduleWeekdaysMake()];
    v13 = HDSQLiteColumnWithNameAsNumber();
    v14 = HDSQLiteColumnWithNameAsNumber();
    v15 = v14;
    if (v13 && v14)
    {
      v16 = [MEMORY[0x277CBEAB8] hk_componentsWithHour:objc_msgSend(v13 minute:{"integerValue"), objc_msgSend(v14, "integerValue")}];
      [v10 _setWakeTimeComponents:v16];
    }

    v17 = HDSQLiteColumnWithNameAsNumber();
    v18 = HDSQLiteColumnWithNameAsNumber();
    v19 = v18;
    if (v17 && v18)
    {
      v20 = [MEMORY[0x277CBEAB8] hk_componentsWithHour:objc_msgSend(v17 minute:{"integerValue"), objc_msgSend(v18, "integerValue")}];
      [v10 _setBedTimeComponents:v20];
    }

    v21 = HDSQLiteColumnWithNameAsNumber();
    [v10 _setOverrideDayIndex:v21];
  }

  return v12;
}

@end