@interface _HDMedicationDoseEventEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (_HDMedicationDoseEventEntityEncoder)initWithHealthEntityClass:(Class)a3 profile:(id)a4 transaction:(id)a5 purpose:(int64_t)a6 encodingOptions:(id)a7 authorizationFilter:(id)a8;
- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
- (id)createBareObjectWithRow:(HDSQLiteRow *)a3;
- (id)orderedProperties;
@end

@implementation _HDMedicationDoseEventEntityEncoder

- (_HDMedicationDoseEventEntityEncoder)initWithHealthEntityClass:(Class)a3 profile:(id)a4 transaction:(id)a5 purpose:(int64_t)a6 encodingOptions:(id)a7 authorizationFilter:(id)a8
{
  v14 = a7;
  v18.receiver = self;
  v18.super_class = _HDMedicationDoseEventEntityEncoder;
  v15 = [(HDEntityEncoder *)&v18 initWithHealthEntityClass:a3 profile:a4 transaction:a5 purpose:a6 encodingOptions:v14 authorizationFilter:a8];
  if (v15)
  {
    v16 = [v14 objectForKeyedSubscript:@"HDMedicationDoseEventEntityEncodingOptionExcludePrivateMedicationInfo"];
    v15->_includeMedicationAndScheduledItemDetails = [v16 BOOLValue] ^ 1;
  }

  return v15;
}

- (id)orderedProperties
{
  v12[9] = *MEMORY[0x277D85DE8];
  v12[0] = @"log_origin";
  v12[1] = @"medication_uuid";
  v12[2] = @"scheduled_dose_quantity";
  v12[3] = @"dose_quantity";
  v12[4] = @"scheduled_date";
  v12[5] = @"status";
  v12[6] = @"hashed_medication_identifier";
  v12[7] = @"medication_identifier";
  v12[8] = @"unit_string";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:9];
  if (self->_includeMedicationAndScheduledItemDetails)
  {
    v11 = @"schedule_item_identifier";
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    v5 = [v3 arrayByAddingObjectsFromArray:v4];

    v3 = v5;
  }

  v6 = [(HDEntityEncoder *)self superclassEncoder];
  v7 = [v6 orderedProperties];
  v8 = [v3 arrayByAddingObjectsFromArray:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v8 = [(HDEntityEncoder *)self superclassEncoder];
  v9 = [v8 codableRepresentationForPersistentID:a3 row:a4 error:a5];

  if (v9)
  {
    v10 = objc_alloc_init(HDCodableMedicationDoseEvent);
    [(HDCodableMedicationDoseEvent *)v10 setSample:v9];
    [(HDCodableMedicationDoseEvent *)v10 setLogOrigin:HDSQLiteColumnWithNameAsInt64()];
    [(HDCodableMedicationDoseEvent *)v10 setStatus:HDSQLiteColumnWithNameAsInt64()];
    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      v11 = HDSQLiteColumnWithNameAsString();
      [(HDCodableMedicationDoseEvent *)v10 setScheduleItemIdentifier:v11];
    }

    v12 = HDSQLiteColumnWithNameAsUUID();
    v13 = [v12 hk_dataForUUIDBytes];
    [(HDCodableMedicationDoseEvent *)v10 setMedicationUuid:v13];

    v14 = HDSQLiteColumnWithNameAsString();
    [(HDCodableMedicationDoseEvent *)v10 setMedicationIdentifier:v14];

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      HDSQLiteColumnWithNameAsDouble();
      [(HDCodableMedicationDoseEvent *)v10 setScheduledDoseQuantity:?];
    }

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      HDSQLiteColumnWithNameAsDouble();
      [(HDCodableMedicationDoseEvent *)v10 setDoseQuantity:?];
    }

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      HDSQLiteColumnWithNameAsDouble();
      [(HDCodableMedicationDoseEvent *)v10 setScheduledDate:?];
    }

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      v15 = HDSQLiteColumnWithNameAsString();
      [(HDCodableMedicationDoseEvent *)v10 setDoseUnitString:v15];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCD650]) _init];

  return v3;
}

- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6
{
  v32[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = [(HDEntityEncoder *)self superclassEncoder];
  LODWORD(a6) = [v11 applyPropertiesToObject:v10 persistentID:a4 row:a5 error:a6];

  if (a6)
  {
    [v10 _setLogOrigin:HDSQLiteColumnWithNameAsInt64()];
    [v10 _setLogStatus:HDSQLiteColumnWithNameAsInt64()];
    v12 = HDSQLiteColumnWithNameAsUUID();
    [v10 _setMedicationUUID:v12];

    if (self->_includeMedicationAndScheduledItemDetails)
    {
      if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
      {
        v13 = HDSQLiteColumnWithNameAsString();
        [v10 _setScheduleItemIdentifier:v13];
      }

      v14 = HDSQLiteColumnWithNameAsString();
      [v10 _setMedicationIdentifier:v14];
    }

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      v15 = HDSQLiteColumnWithNameAsNumber();
      [v10 _setScheduledDoseQuantity:v15];
    }

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      v16 = HDSQLiteColumnWithNameAsNumber();
      [v10 _setDoseQuantity:v16];
    }

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      v17 = HDSQLiteColumnWithNameAsDate();
      [v10 _setScheduledDate:v17];
    }

    v18 = HDSQLiteColumnWithNameAsString();
    v19 = objc_alloc(MEMORY[0x277CCD4B0]);
    v20 = [v19 initWithDomain:*MEMORY[0x277CCC190] underlyingIdentifier:v18];
    [v10 _setMedicationConceptIdentifier:v20];
    v21 = HDSQLiteColumnWithNameAsString();
    [v10 _setDoseUnitString:v21];

    v22 = [v10 medicationIdentifier];

    if (v22)
    {
      v23 = v10;
    }

    else
    {
      v23 = [v10 copy];
      v25 = HDSQLiteColumnWithNameAsString();
      [v23 _setMedicationIdentifier:v25];
    }

    v32[0] = v23;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    v27 = [(HDEntityEncoder *)self authorizationFilter];
    v28 = v27;
    if (v27)
    {
      v29 = (*(v27 + 16))(v27, v26);

      v26 = v29;
    }

    v24 = [v26 count] != 0;
  }

  else
  {
    v24 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v24;
}

@end