@interface _HDPauseRingsScheduleEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
- (id)createBareObjectWithRow:(HDSQLiteRow *)a3;
- (id)orderedProperties;
@end

@implementation _HDPauseRingsScheduleEntityEncoder

- (id)orderedProperties
{
  v10[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"start_date_index";
  v10[1] = @"end_date_index";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v9.receiver = self;
  v9.super_class = _HDPauseRingsScheduleEntityEncoder;
  v4 = [(HDEntityEncoder *)&v9 superclassEncoder];
  v5 = [v4 orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCD788]) _init];

  return v3;
}

- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v8 = [(HDEntityEncoder *)self superclassEncoder];
  v9 = [v8 codableRepresentationForPersistentID:a3 row:a4 error:a5];

  if (v9)
  {
    v10 = objc_alloc_init(HDCodablePauseRingsSchedule);
    [(HDCodablePauseRingsSchedule *)v10 setSample:v9];
    [(HDCodablePauseRingsSchedule *)v10 setStartDateIndex:HDSQLiteColumnWithNameAsInt64()];
    [(HDCodablePauseRingsSchedule *)v10 setEndDateIndex:HDSQLiteColumnWithNameAsInt64()];
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
    [v10 setStartDateIndex:HDSQLiteColumnWithNameAsInt64()];
    [v10 setEndDateIndex:HDSQLiteColumnWithNameAsInt64()];
  }

  return v12;
}

@end