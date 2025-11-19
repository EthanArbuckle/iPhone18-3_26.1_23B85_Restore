@interface _HDMedicationRecordEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (id)createBareObjectWithRow:(HDSQLiteRow *)a3;
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
  v4 = [(HDEntityEncoder *)self superclassEncoder];
  v5 = [v4 orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCD680]) _init];

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
    v32 = HDSQLiteColumnWithNameAsObject();
    [v10 _setMedicationCodingCollection:v32];
    [v10 _setAssertionType:HDSQLiteColumnWithNameAsInt64()];
    v31 = HDSQLiteColumnWithNameAsString();
    [v10 _setAsserter:v31];
    objc_opt_class();
    v30 = HDSQLiteColumnWithNameAsObject();
    [v10 _setAssertionDate:v30];
    objc_opt_class();
    v29 = HDSQLiteColumnWithNameAsObject();
    [v10 _setStatusCoding:v29];
    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [v10 _setDosages:v16];
    objc_opt_class();
    v17 = HDSQLiteColumnWithNameAsObject();
    [v10 _setEarliestDosageDate:v17];
    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [v10 _setReasonForUseCodingCollections:v21];
    [v10 _setNotTaken:HDSQLiteColumnWithNameAsBoolean()];
    v22 = MEMORY[0x277CBEB98];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [v10 _setReasonsNotTakenCodingCollections:v25];
    objc_opt_class();
    v26 = HDSQLiteColumnWithNameAsObject();
    [v10 _setEffectiveStartDate:v26];
    objc_opt_class();
    v27 = HDSQLiteColumnWithNameAsObject();
    [v10 _setEffectiveEndDate:v27];
  }

  return v12;
}

@end