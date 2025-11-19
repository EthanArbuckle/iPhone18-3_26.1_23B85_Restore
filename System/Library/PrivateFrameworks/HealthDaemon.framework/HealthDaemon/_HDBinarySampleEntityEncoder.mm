@interface _HDBinarySampleEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
- (id)objectForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
- (id)orderedProperties;
@end

@implementation _HDBinarySampleEntityEncoder

- (id)orderedProperties
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = [(HDEntityEncoder *)self purpose];
  if (v4 == 1)
  {
    v11 = @"payload";
    v5 = &v11;
  }

  else
  {
    if (v4)
    {
      goto LABEL_6;
    }

    v12[0] = @"payload";
    v5 = v12;
  }

  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v7 = [(HDEntityEncoder *)self superclassEncoder];
  v8 = [v7 orderedProperties];
  v2 = [v6 arrayByAddingObjectsFromArray:v8];

LABEL_6:
  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v8 = [(HDEntityEncoder *)self superclassEncoder];
  v9 = [v8 codableRepresentationForPersistentID:a3 row:a4 error:a5];

  if (v9)
  {
    v10 = objc_alloc_init(HDCodableBinarySample);
    [(HDCodableBinarySample *)v10 setSample:v9];
    v11 = HDSQLiteColumnWithNameAsData();
    [(HDCodableBinarySample *)v10 setPayload:v11];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)objectForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v9 = HDSQLiteColumnWithName();
  if (MEMORY[0x22AAC6CD0](a4, v9))
  {
    v10 = 0;
  }

  else
  {
    v10 = [MEMORY[0x277CCD8D8] dataTypeWithCode:HDSQLiteColumnAsInt64()];
  }

  v11 = [objc_alloc(objc_msgSend(v10 "dataObjectClass"))];
  if ([(_HDBinarySampleEntityEncoder *)self applyPropertiesToObject:v11 persistentID:a3 row:a4 error:a5])
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [v11 applyPropertiesToObject:v10 persistentID:a4 row:a5 error:a6];

  if (v12)
  {
    v13 = HDSQLiteColumnWithNameAsData();
    [v10 _setPayload:v13];
  }

  return v12;
}

@end