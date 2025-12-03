@interface _HDSampleEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
- (id)orderedProperties;
@end

@implementation _HDSampleEntityEncoder

- (id)orderedProperties
{
  v9[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"data_type";
  v9[1] = @"start_date";
  v9[2] = @"end_date";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
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
    v10 = objc_alloc_init(HDCodableSample);
    [(HDCodableSample *)v10 setObject:v9];
    [(HDCodableSample *)v10 setDataType:HDSQLiteColumnWithNameAsInt64()];
    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      HDSQLiteColumnWithNameAsDouble();
      [(HDCodableSample *)v10 setStartDate:?];
    }

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      HDSQLiteColumnWithNameAsDouble();
      [(HDCodableSample *)v10 setEndDate:?];
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
  _init = [objc_alloc(MEMORY[0x277CCD8A8]) _init];

  return _init;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  objectCopy = object;
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [superclassEncoder applyPropertiesToObject:objectCopy persistentID:d row:row error:error];

  if (v12)
  {
    HDSQLiteColumnWithNameAsDouble();
    [objectCopy _setStartTimestamp:?];
    HDSQLiteColumnWithNameAsDouble();
    [objectCopy _setEndTimestamp:?];
    v13 = HDSQLiteColumnWithName();
    if (MEMORY[0x22AAC6CD0](row, v13))
    {
      v14 = 0;
    }

    else
    {
      v14 = [MEMORY[0x277CCD8D8] dataTypeWithCode:HDSQLiteColumnAsInt64()];
    }

    [objectCopy _setSampleType:v14];
  }

  return v12;
}

@end