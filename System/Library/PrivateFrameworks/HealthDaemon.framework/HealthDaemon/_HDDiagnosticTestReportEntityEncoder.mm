@interface _HDDiagnosticTestReportEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
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
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:orderedProperties];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _init = [objc_alloc(MEMORY[0x277CCD338]) _init];

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
    v13 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setDiagnosticTestCodingCollection:v13];
    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [objectCopy _setResults:v17];
    objc_opt_class();
    v18 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setEffectiveStartDate:v18];
    objc_opt_class();
    v19 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setStatusCoding:v19];
    objc_opt_class();
    v20 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setEffectiveEndDate:v20];
    objc_opt_class();
    v21 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setIssueDate:v21];
  }

  return v12;
}

@end