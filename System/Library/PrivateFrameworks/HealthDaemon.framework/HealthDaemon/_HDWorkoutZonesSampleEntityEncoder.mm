@interface _HDWorkoutZonesSampleEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
- (id)createBareObjectWithRow:(HDSQLiteRow *)a3;
- (id)orderedProperties;
@end

@implementation _HDWorkoutZonesSampleEntityEncoder

- (id)orderedProperties
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = @"zones";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v4 = [(HDEntityEncoder *)self superclassEncoder];
  v5 = [v4 orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCDCE8]) _init];

  return v3;
}

- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [v11 applyPropertiesToObject:v10 persistentID:a4 row:a5 error:a6];

  if (v12)
  {
    objc_opt_class();
    v13 = HDSQLiteColumnWithNameAsArrayOfClass();
    if (v13)
    {
      [v10 _setZones:v13];
      LOBYTE(v12) = 1;
    }

    else
    {
      v14 = [MEMORY[0x277CCA9B8] hk_error:129 description:@"Failed unarchiving zones"];
      LOBYTE(v12) = v14 == 0;
      if (v14)
      {
        if (a6)
        {
          v15 = v14;
          *a6 = v14;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  return v12;
}

- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v8 = [(HDEntityEncoder *)self superclassEncoder];
  v9 = [v8 codableRepresentationForPersistentID:a3 row:a4 error:a5];

  if (v9)
  {
    v10 = objc_alloc_init(HDCodableWorkoutZones);
    [(HDCodableWorkoutZones *)v10 setSample:v9];
    v11 = HDSQLiteColumnWithNameAsData();
    [(HDCodableWorkoutZones *)v10 setZones:v11];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end