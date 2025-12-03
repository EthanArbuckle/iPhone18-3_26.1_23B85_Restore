@interface _HDPauseRingsScheduleEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
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
  superclassEncoder = [(HDEntityEncoder *)&v9 superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:orderedProperties];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _init = [objc_alloc(MEMORY[0x277CCD788]) _init];

  return _init;
}

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v9 = [superclassEncoder codableRepresentationForPersistentID:d row:row error:error];

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

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  objectCopy = object;
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [superclassEncoder applyPropertiesToObject:objectCopy persistentID:d row:row error:error];

  if (v12)
  {
    [objectCopy setStartDateIndex:HDSQLiteColumnWithNameAsInt64()];
    [objectCopy setEndDateIndex:HDSQLiteColumnWithNameAsInt64()];
  }

  return v12;
}

@end