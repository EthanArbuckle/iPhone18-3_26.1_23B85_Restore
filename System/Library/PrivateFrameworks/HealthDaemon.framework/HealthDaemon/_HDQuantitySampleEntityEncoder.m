@interface _HDQuantitySampleEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
- (id)createBareObjectWithRow:(HDSQLiteRow *)a3;
- (id)orderedProperties;
@end

@implementation _HDQuantitySampleEntityEncoder

- (id)orderedProperties
{
  v12[3] = *MEMORY[0x277D85DE8];
  v4 = [(HDEntityEncoder *)self purpose];
  if (v4 == 1)
  {
    v11 = @"quantity";
    v5 = &v11;
  }

  else
  {
    if (v4)
    {
      goto LABEL_6;
    }

    v12[0] = @"quantity";
    v5 = v12;
  }

  v5[1] = @"original_quantity";
  v5[2] = @"unit_strings.unit_string";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
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
    v10 = objc_alloc_init(HDCodableQuantitySample);
    [(HDCodableQuantitySample *)v10 setSample:v9];
    if (HDSQLiteColumnWithNameIsNull())
    {
      HDSQLiteColumnWithNameAsDouble();
      [(HDCodableQuantitySample *)v10 setValueInCanonicalUnit:?];
    }

    else
    {
      HDSQLiteColumnWithNameAsDouble();
      [(HDCodableQuantitySample *)v10 setValueInOriginalUnit:?];
      v11 = HDSQLiteColumnWithNameAsString();
      [(HDCodableQuantitySample *)v10 setOriginalUnitString:v11];
    }

    [(HDCodableQuantitySample *)v10 setFrozen:1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCD800]) _init];

  return v3;
}

- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [v11 applyPropertiesToObject:v10 persistentID:a4 row:a5 error:a6];

  if (v12)
  {
    if (HDSQLiteColumnWithNameIsNull())
    {
      v13 = MEMORY[0x277CCD7E8];
      v14 = [v10 quantityType];
      [v14 canonicalUnit];
    }

    else
    {
      v14 = HDSQLiteColumnWithNameAsString();
      v13 = MEMORY[0x277CCD7E8];
      [MEMORY[0x277CCDAB0] unitFromString:v14];
    }
    v15 = ;
    HDSQLiteColumnWithNameAsDouble();
    v16 = [v13 quantityWithUnit:v15 doubleValue:?];

    [v10 _setQuantity:v16];
  }

  return v12;
}

@end