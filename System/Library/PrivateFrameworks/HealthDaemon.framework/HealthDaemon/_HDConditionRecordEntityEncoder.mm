@interface _HDConditionRecordEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
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
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:orderedProperties];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _init = [objc_alloc(MEMORY[0x277CCD200]) _init];

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
    v29 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setConditionCodingCollection:v29];
    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v28 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [objectCopy _setCategoriesCodingCollections:v28];
    v27 = HDSQLiteColumnWithNameAsString();
    [objectCopy _setAsserter:v27];
    objc_opt_class();
    v26 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setAbatement:v26];
    objc_opt_class();
    v25 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setOnset:v25];
    objc_opt_class();
    v16 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setRecordedDate:v16];
    objc_opt_class();
    v17 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setClinicalStatusCoding:v17];
    objc_opt_class();
    v18 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setVerificationStatusCoding:v18];
    objc_opt_class();
    v19 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setSeverityCodingCollection:v19];
    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [objectCopy _setBodySitesCodingCollections:v23];
  }

  return v12;
}

@end