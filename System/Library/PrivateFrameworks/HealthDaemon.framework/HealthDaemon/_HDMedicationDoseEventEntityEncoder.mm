@interface _HDMedicationDoseEventEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (_HDMedicationDoseEventEntityEncoder)initWithHealthEntityClass:(Class)class profile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
- (id)orderedProperties;
@end

@implementation _HDMedicationDoseEventEntityEncoder

- (_HDMedicationDoseEventEntityEncoder)initWithHealthEntityClass:(Class)class profile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  optionsCopy = options;
  v18.receiver = self;
  v18.super_class = _HDMedicationDoseEventEntityEncoder;
  v15 = [(HDEntityEncoder *)&v18 initWithHealthEntityClass:class profile:profile transaction:transaction purpose:purpose encodingOptions:optionsCopy authorizationFilter:filter];
  if (v15)
  {
    v16 = [optionsCopy objectForKeyedSubscript:@"HDMedicationDoseEventEntityEncodingOptionExcludePrivateMedicationInfo"];
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

  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v8 = [v3 arrayByAddingObjectsFromArray:orderedProperties];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v9 = [superclassEncoder codableRepresentationForPersistentID:d row:row error:error];

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
    hk_dataForUUIDBytes = [v12 hk_dataForUUIDBytes];
    [(HDCodableMedicationDoseEvent *)v10 setMedicationUuid:hk_dataForUUIDBytes];

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

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _init = [objc_alloc(MEMORY[0x277CCD650]) _init];

  return _init;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  v32[1] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  LODWORD(error) = [superclassEncoder applyPropertiesToObject:objectCopy persistentID:d row:row error:error];

  if (error)
  {
    [objectCopy _setLogOrigin:HDSQLiteColumnWithNameAsInt64()];
    [objectCopy _setLogStatus:HDSQLiteColumnWithNameAsInt64()];
    v12 = HDSQLiteColumnWithNameAsUUID();
    [objectCopy _setMedicationUUID:v12];

    if (self->_includeMedicationAndScheduledItemDetails)
    {
      if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
      {
        v13 = HDSQLiteColumnWithNameAsString();
        [objectCopy _setScheduleItemIdentifier:v13];
      }

      v14 = HDSQLiteColumnWithNameAsString();
      [objectCopy _setMedicationIdentifier:v14];
    }

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      v15 = HDSQLiteColumnWithNameAsNumber();
      [objectCopy _setScheduledDoseQuantity:v15];
    }

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      v16 = HDSQLiteColumnWithNameAsNumber();
      [objectCopy _setDoseQuantity:v16];
    }

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      v17 = HDSQLiteColumnWithNameAsDate();
      [objectCopy _setScheduledDate:v17];
    }

    v18 = HDSQLiteColumnWithNameAsString();
    v19 = objc_alloc(MEMORY[0x277CCD4B0]);
    v20 = [v19 initWithDomain:*MEMORY[0x277CCC190] underlyingIdentifier:v18];
    [objectCopy _setMedicationConceptIdentifier:v20];
    v21 = HDSQLiteColumnWithNameAsString();
    [objectCopy _setDoseUnitString:v21];

    medicationIdentifier = [objectCopy medicationIdentifier];

    if (medicationIdentifier)
    {
      v23 = objectCopy;
    }

    else
    {
      v23 = [objectCopy copy];
      v25 = HDSQLiteColumnWithNameAsString();
      [v23 _setMedicationIdentifier:v25];
    }

    v32[0] = v23;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    authorizationFilter = [(HDEntityEncoder *)self authorizationFilter];
    v28 = authorizationFilter;
    if (authorizationFilter)
    {
      v29 = (*(authorizationFilter + 16))(authorizationFilter, v26);

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