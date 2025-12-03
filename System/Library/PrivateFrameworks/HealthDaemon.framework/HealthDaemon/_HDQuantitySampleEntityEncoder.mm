@interface _HDQuantitySampleEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
- (id)orderedProperties;
@end

@implementation _HDQuantitySampleEntityEncoder

- (id)orderedProperties
{
  v12[3] = *MEMORY[0x277D85DE8];
  purpose = [(HDEntityEncoder *)self purpose];
  if (purpose == 1)
  {
    v11 = @"quantity";
    v5 = &v11;
  }

  else
  {
    if (purpose)
    {
      goto LABEL_6;
    }

    v12[0] = @"quantity";
    v5 = v12;
  }

  v5[1] = @"original_quantity";
  v5[2] = @"unit_strings.unit_string";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v2 = [v6 arrayByAddingObjectsFromArray:orderedProperties];

LABEL_6:
  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v9 = [superclassEncoder codableRepresentationForPersistentID:d row:row error:error];

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

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _init = [objc_alloc(MEMORY[0x277CCD800]) _init];

  return _init;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  objectCopy = object;
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [superclassEncoder applyPropertiesToObject:objectCopy persistentID:d row:row error:error];

  if (v12)
  {
    if (HDSQLiteColumnWithNameIsNull())
    {
      v13 = MEMORY[0x277CCD7E8];
      quantityType = [objectCopy quantityType];
      [quantityType canonicalUnit];
    }

    else
    {
      quantityType = HDSQLiteColumnWithNameAsString();
      v13 = MEMORY[0x277CCD7E8];
      [MEMORY[0x277CCDAB0] unitFromString:quantityType];
    }
    v15 = ;
    HDSQLiteColumnWithNameAsDouble();
    v16 = [v13 quantityWithUnit:v15 doubleValue:?];

    [objectCopy _setQuantity:v16];
  }

  return v12;
}

@end