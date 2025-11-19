@interface _HDDiagnosticTestReportEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (id)createBareObjectWithRow:(HDSQLiteRow *)a3;
- (id)orderedProperties;
@end

@implementation _HDDiagnosticTestReportEntityEncoder

- (id)orderedProperties
{
  v9[6] = *MEMORY[0x277D85DE8];
  v9[0] = @"diagnostic_test_coding_collection";
  v9[1] = @"results";
  v9[2] = @"effective_start_date";
  v9[3] = @"status_coding";
  v9[4] = @"effective_end_date";
  v9[5] = @"issue_date";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:6];
  v4 = [(HDEntityEncoder *)self superclassEncoder];
  v5 = [v4 orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCD338]) _init];

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
    v13 = HDSQLiteColumnWithNameAsObject();
    [v10 _setDiagnosticTestCodingCollection:v13];
    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [v10 _setResults:v17];
    objc_opt_class();
    v18 = HDSQLiteColumnWithNameAsObject();
    [v10 _setEffectiveStartDate:v18];
    objc_opt_class();
    v19 = HDSQLiteColumnWithNameAsObject();
    [v10 _setStatusCoding:v19];
    objc_opt_class();
    v20 = HDSQLiteColumnWithNameAsObject();
    [v10 _setEffectiveEndDate:v20];
    objc_opt_class();
    v21 = HDSQLiteColumnWithNameAsObject();
    [v10 _setIssueDate:v21];
  }

  return v12;
}

@end