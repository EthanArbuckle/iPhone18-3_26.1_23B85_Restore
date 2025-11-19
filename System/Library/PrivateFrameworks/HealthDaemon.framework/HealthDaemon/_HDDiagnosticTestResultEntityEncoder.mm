@interface _HDDiagnosticTestResultEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (id)createBareObjectWithRow:(HDSQLiteRow *)a3;
- (id)orderedProperties;
@end

@implementation _HDDiagnosticTestResultEntityEncoder

- (id)orderedProperties
{
  v9[15] = *MEMORY[0x277D85DE8];
  v9[0] = @"diagnostic_test_coding_collection";
  v9[1] = @"value";
  v9[2] = @"reference_ranges";
  v9[3] = @"effective_start_date";
  v9[4] = @"category";
  v9[5] = @"categories_coding_collections";
  v9[6] = @"issue_date";
  v9[7] = @"effective_end_date";
  v9[8] = @"status_coding";
  v9[9] = @"interpretation_coding_collections";
  v9[10] = @"comments";
  v9[11] = @"body_site_coding_collection";
  v9[12] = @"method_coding_collection";
  v9[13] = @"performers";
  v9[14] = @"reference_range_status";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:15];
  v4 = [(HDEntityEncoder *)self superclassEncoder];
  v5 = [v4 orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCD348]) _init];

  return v3;
}

- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6
{
  v9 = a3;
  v10 = [(HDEntityEncoder *)self superclassEncoder];
  LODWORD(a6) = [v10 applyPropertiesToObject:v9 persistentID:a4 row:a5 error:a6];

  if (a6)
  {
    v38 = a6;
    objc_opt_class();
    v37 = HDSQLiteColumnWithNameAsObject();
    [v9 _setDiagnosticTestCodingCollection:v37];
    objc_opt_class();
    v36 = HDSQLiteColumnWithNameAsObject();
    [v9 _setValue:v36];
    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v35 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [v9 _setReferenceRanges:v35];
    objc_opt_class();
    v34 = HDSQLiteColumnWithNameAsObject();
    [v9 _setEffectiveStartDate:v34];
    v33 = HDSQLiteColumnWithNameAsString();
    [v9 _setCategory:v33];
    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v32 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [v9 _setCategoriesCodingCollections:v32];
    objc_opt_class();
    v31 = HDSQLiteColumnWithNameAsObject();
    [v9 _setIssueDate:v31];
    objc_opt_class();
    v18 = HDSQLiteColumnWithNameAsObject();
    [v9 _setEffectiveEndDate:v18];
    objc_opt_class();
    v19 = HDSQLiteColumnWithNameAsObject();
    [v9 _setStatusCoding:v19];
    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [v9 _setInterpretationCodingCollections:v23];
    v24 = HDSQLiteColumnWithNameAsString();
    [v9 _setComments:v24];
    objc_opt_class();
    v25 = HDSQLiteColumnWithNameAsObject();
    [v9 _setBodySiteCodingCollection:v25];
    objc_opt_class();
    v26 = HDSQLiteColumnWithNameAsObject();
    [v9 _setMethodCodingCollection:v26];
    v27 = MEMORY[0x277CBEB98];
    v28 = objc_opt_class();
    a6 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v29 = HDSQLiteColumnWithNameAsObjectWithClasses();

    LOBYTE(a6) = v38;
    [v9 _setPerformers:v29];
    [v9 _setReferenceRangeStatus:HDSQLiteColumnWithNameAsInt64()];
  }

  return a6;
}

@end