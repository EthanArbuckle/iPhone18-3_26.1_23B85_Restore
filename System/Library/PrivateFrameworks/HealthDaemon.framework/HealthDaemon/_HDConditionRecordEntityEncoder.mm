@interface _HDConditionRecordEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (id)createBareObjectWithRow:(HDSQLiteRow *)a3;
- (id)orderedProperties;
@end

@implementation _HDConditionRecordEntityEncoder

- (id)orderedProperties
{
  v9[10] = *MEMORY[0x277D85DE8];
  v9[0] = @"condition_coding_collection";
  v9[1] = @"categories_coding_collections";
  v9[2] = @"asserter";
  v9[3] = @"abatement";
  v9[4] = @"onset";
  v9[5] = @"recorded_date";
  v9[6] = @"clinical_status_coding";
  v9[7] = @"verification_status_coding";
  v9[8] = @"severity_coding_collection";
  v9[9] = @"body_sites_coding_collections";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:10];
  v4 = [(HDEntityEncoder *)self superclassEncoder];
  v5 = [v4 orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCD200]) _init];

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
    v29 = HDSQLiteColumnWithNameAsObject();
    [v10 _setConditionCodingCollection:v29];
    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v28 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [v10 _setCategoriesCodingCollections:v28];
    v27 = HDSQLiteColumnWithNameAsString();
    [v10 _setAsserter:v27];
    objc_opt_class();
    v26 = HDSQLiteColumnWithNameAsObject();
    [v10 _setAbatement:v26];
    objc_opt_class();
    v25 = HDSQLiteColumnWithNameAsObject();
    [v10 _setOnset:v25];
    objc_opt_class();
    v16 = HDSQLiteColumnWithNameAsObject();
    [v10 _setRecordedDate:v16];
    objc_opt_class();
    v17 = HDSQLiteColumnWithNameAsObject();
    [v10 _setClinicalStatusCoding:v17];
    objc_opt_class();
    v18 = HDSQLiteColumnWithNameAsObject();
    [v10 _setVerificationStatusCoding:v18];
    objc_opt_class();
    v19 = HDSQLiteColumnWithNameAsObject();
    [v10 _setSeverityCodingCollection:v19];
    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [v10 _setBodySitesCodingCollections:v23];
  }

  return v12;
}

@end