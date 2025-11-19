@interface _HDAllergyRecordEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (id)createBareObjectWithRow:(HDSQLiteRow *)a3;
- (id)orderedProperties;
@end

@implementation _HDAllergyRecordEntityEncoder

- (id)orderedProperties
{
  v9[11] = *MEMORY[0x277D85DE8];
  v9[0] = @"allergy_coding_collection";
  v9[1] = @"onset_date";
  v9[2] = @"asserter";
  v9[3] = @"reactions";
  v9[4] = @"criticality_coding";
  v9[5] = @"last_occurrence_date";
  v9[6] = @"recorded_date";
  v9[7] = @"verification_status_coding";
  v9[8] = @"clinical_status_coding";
  v9[9] = @"allergy_type_coding";
  v9[10] = @"category_coding";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:11];
  v4 = [(HDEntityEncoder *)self superclassEncoder];
  v5 = [v4 orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCCFD0]) _init];

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
    v27 = HDSQLiteColumnWithNameAsObject();
    [v10 _setAllergyCodingCollection:v27];
    objc_opt_class();
    v26 = HDSQLiteColumnWithNameAsObject();
    [v10 _setOnsetDate:v26];
    v25 = HDSQLiteColumnWithNameAsString();
    [v10 _setAsserter:v25];
    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v24 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [v10 _setReactions:v24];
    objc_opt_class();
    v16 = HDSQLiteColumnWithNameAsObject();
    [v10 _setCriticalityCoding:v16];
    objc_opt_class();
    v17 = HDSQLiteColumnWithNameAsObject();
    [v10 _setLastOccurrenceDate:v17];
    objc_opt_class();
    v18 = HDSQLiteColumnWithNameAsObject();
    [v10 _setRecordedDate:v18];
    objc_opt_class();
    v19 = HDSQLiteColumnWithNameAsObject();
    [v10 _setVerificationStatusCoding:v19];
    objc_opt_class();
    v20 = HDSQLiteColumnWithNameAsObject();
    [v10 _setClinicalStatusCoding:v20];
    objc_opt_class();
    v21 = HDSQLiteColumnWithNameAsObject();
    [v10 _setAllergyTypeCoding:v21];
    objc_opt_class();
    v22 = HDSQLiteColumnWithNameAsObject();
    [v10 _setCategoryCoding:v22];
  }

  return v12;
}

@end