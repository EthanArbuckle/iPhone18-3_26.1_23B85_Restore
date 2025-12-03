@interface _HDWorkoutZonesSampleEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
- (id)orderedProperties;
@end

@implementation _HDWorkoutZonesSampleEntityEncoder

- (id)orderedProperties
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = @"zones";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:orderedProperties];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _init = [objc_alloc(MEMORY[0x277CCDCE8]) _init];

  return _init;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  objectCopy = object;
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [superclassEncoder applyPropertiesToObject:objectCopy persistentID:d row:row error:error];

  if (v12)
  {
    objc_opt_class();
    v13 = HDSQLiteColumnWithNameAsArrayOfClass();
    if (v13)
    {
      [objectCopy _setZones:v13];
      LOBYTE(v12) = 1;
    }

    else
    {
      v14 = [MEMORY[0x277CCA9B8] hk_error:129 description:@"Failed unarchiving zones"];
      LOBYTE(v12) = v14 == 0;
      if (v14)
      {
        if (error)
        {
          v15 = v14;
          *error = v14;
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

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v9 = [superclassEncoder codableRepresentationForPersistentID:d row:row error:error];

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