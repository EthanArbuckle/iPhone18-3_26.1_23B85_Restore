@interface _HDMedicationRecordEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
- (id)orderedProperties;
@end

@implementation _HDMedicationRecordEntityEncoder

- (id)orderedProperties
{
  v9[12] = *MEMORY[0x277D85DE8];
  v9[0] = @"medication_coding_collection";
  v9[1] = @"assertion_type";
  v9[2] = @"asserter";
  v9[3] = @"assertion_date";
  v9[4] = @"status_coding";
  v9[5] = @"dosages";
  v9[6] = @"earliest_dosage_date";
  v9[7] = @"reason_for_use_coding_collections";
  v9[8] = @"not_taken";
  v9[9] = @"reasons_not_taken_coding_collections";
  v9[10] = @"effective_start_date";
  v9[11] = @"effective_end_date";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:12];
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:orderedProperties];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _init = [objc_alloc(MEMORY[0x277CCD680]) _init];

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
    v32 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setMedicationCodingCollection:v32];
    [objectCopy _setAssertionType:HDSQLiteColumnWithNameAsInt64()];
    v31 = HDSQLiteColumnWithNameAsString();
    [objectCopy _setAsserter:v31];
    objc_opt_class();
    v30 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setAssertionDate:v30];
    objc_opt_class();
    v29 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setStatusCoding:v29];
    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [objectCopy _setDosages:v16];
    objc_opt_class();
    v17 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setEarliestDosageDate:v17];
    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [objectCopy _setReasonForUseCodingCollections:v21];
    [objectCopy _setNotTaken:HDSQLiteColumnWithNameAsBoolean()];
    v22 = MEMORY[0x277CBEB98];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [objectCopy _setReasonsNotTakenCodingCollections:v25];
    objc_opt_class();
    v26 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setEffectiveStartDate:v26];
    objc_opt_class();
    v27 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setEffectiveEndDate:v27];
  }

  return v12;
}

@end