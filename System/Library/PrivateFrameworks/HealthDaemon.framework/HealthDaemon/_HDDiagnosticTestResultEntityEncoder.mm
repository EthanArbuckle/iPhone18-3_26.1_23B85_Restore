@interface _HDDiagnosticTestResultEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
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
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:orderedProperties];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _init = [objc_alloc(MEMORY[0x277CCD348]) _init];

  return _init;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  objectCopy = object;
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  LODWORD(error) = [superclassEncoder applyPropertiesToObject:objectCopy persistentID:d row:row error:error];

  if (error)
  {
    errorCopy = error;
    objc_opt_class();
    v37 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setDiagnosticTestCodingCollection:v37];
    objc_opt_class();
    v36 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setValue:v36];
    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v35 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [objectCopy _setReferenceRanges:v35];
    objc_opt_class();
    v34 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setEffectiveStartDate:v34];
    v33 = HDSQLiteColumnWithNameAsString();
    [objectCopy _setCategory:v33];
    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v32 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [objectCopy _setCategoriesCodingCollections:v32];
    objc_opt_class();
    v31 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setIssueDate:v31];
    objc_opt_class();
    v18 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setEffectiveEndDate:v18];
    objc_opt_class();
    v19 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setStatusCoding:v19];
    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [objectCopy _setInterpretationCodingCollections:v23];
    v24 = HDSQLiteColumnWithNameAsString();
    [objectCopy _setComments:v24];
    objc_opt_class();
    v25 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setBodySiteCodingCollection:v25];
    objc_opt_class();
    v26 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setMethodCodingCollection:v26];
    v27 = MEMORY[0x277CBEB98];
    v28 = objc_opt_class();
    error = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v29 = HDSQLiteColumnWithNameAsObjectWithClasses();

    LOBYTE(error) = errorCopy;
    [objectCopy _setPerformers:v29];
    [objectCopy _setReferenceRangeStatus:HDSQLiteColumnWithNameAsInt64()];
  }

  return error;
}

@end