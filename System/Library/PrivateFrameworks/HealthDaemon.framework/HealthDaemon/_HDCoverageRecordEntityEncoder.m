@interface _HDCoverageRecordEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (id)createBareObjectWithRow:(HDSQLiteRow *)a3;
- (id)orderedProperties;
@end

@implementation _HDCoverageRecordEntityEncoder

- (id)orderedProperties
{
  v9[14] = *MEMORY[0x277D85DE8];
  v9[0] = @"status_coding";
  v9[1] = @"coverage_type_coding_collection";
  v9[2] = @"subscriber";
  v9[3] = @"subscriber_id";
  v9[4] = @"beneficiary";
  v9[5] = @"policy_holder";
  v9[6] = @"payor";
  v9[7] = @"relationship_coding_collection";
  v9[8] = @"classification";
  v9[9] = @"network";
  v9[10] = @"period_start_date";
  v9[11] = @"period_end_date";
  v9[12] = @"subscriber_identifier";
  v9[13] = @"beneficiary_identifier";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:14];
  v4 = [(HDEntityEncoder *)self superclassEncoder];
  v5 = [v4 orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCD270]) _init];

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
    v33 = HDSQLiteColumnWithNameAsObject();
    [v10 _setStatusCoding:v33];
    objc_opt_class();
    v32 = HDSQLiteColumnWithNameAsObject();
    [v10 _setCoverageTypeCodingCollection:v32];
    v31 = HDSQLiteColumnWithNameAsString();
    [v10 _setSubscriber:v31];
    v30 = HDSQLiteColumnWithNameAsString();
    [v10 _setSubscriberId:v30];
    v29 = HDSQLiteColumnWithNameAsString();
    [v10 _setBeneficiary:v29];
    v28 = HDSQLiteColumnWithNameAsString();
    [v10 _setPolicyHolder:v28];
    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v27 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [v10 _setPayor:v27];
    objc_opt_class();
    v16 = HDSQLiteColumnWithNameAsObject();
    [v10 _setRelationshipCodingCollection:v16];
    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [v10 _setClassification:v20];
    v21 = HDSQLiteColumnWithNameAsString();
    [v10 _setNetwork:v21];
    objc_opt_class();
    v22 = HDSQLiteColumnWithNameAsObject();
    [v10 _setPeriodStartDate:v22];
    objc_opt_class();
    v23 = HDSQLiteColumnWithNameAsObject();
    [v10 _setPeriodEndDate:v23];
    objc_opt_class();
    v24 = HDSQLiteColumnWithNameAsObject();
    [v10 _setSubscriberIdentifier:v24];
    objc_opt_class();
    v25 = HDSQLiteColumnWithNameAsObject();
    [v10 _setBeneficiaryIdentifier:v25];
  }

  return v12;
}

@end