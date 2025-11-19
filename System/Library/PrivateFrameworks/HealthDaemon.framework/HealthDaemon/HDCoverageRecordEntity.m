@interface HDCoverageRecordEntity
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7;
@end

@implementation HDCoverageRecordEntity

+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7
{
  v28[15] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  v14 = a5;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:a1 file:@"HDCoverageRecordEntity.m" lineNumber:77 description:{@"Subclasses must override %s", "+[HDCoverageRecordEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  v28[0] = @"data_id";
  v28[1] = @"status_coding";
  v28[2] = @"coverage_type_coding_collection";
  v28[3] = @"subscriber";
  v28[4] = @"subscriber_id";
  v28[5] = @"beneficiary";
  v28[6] = @"policy_holder";
  v28[7] = @"payor";
  v28[8] = @"relationship_coding_collection";
  v28[9] = @"classification";
  v28[10] = @"network";
  v28[11] = @"period_start_date";
  v28[12] = @"period_end_date";
  v28[13] = @"subscriber_identifier";
  v28[14] = @"beneficiary_identifier";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:15];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __88__HDCoverageRecordEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
  v25[3] = &unk_278613DE8;
  v26 = v13;
  v27 = v12;
  v17 = v12;
  v18 = v13;
  v19 = [a1 insertOrReplaceEntity:1 database:v14 properties:v16 error:a7 bindingHandler:v25];

  if (v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

void __88__HDCoverageRecordEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"data_id", [*(a1 + 32) longLongValue]);
  v4 = [*(a1 + 40) statusCoding];
  HDSQLiteBindSecureCodingObjectToProperty();

  v5 = [*(a1 + 40) coverageTypeCodingCollection];
  HDSQLiteBindSecureCodingObjectToProperty();

  v6 = [*(a1 + 40) subscriber];
  MEMORY[0x22AAC6BD0](a2, @"subscriber", v6);

  v7 = [*(a1 + 40) subscriberId];
  MEMORY[0x22AAC6BD0](a2, @"subscriber_id", v7);

  v8 = [*(a1 + 40) beneficiary];
  MEMORY[0x22AAC6BD0](a2, @"beneficiary", v8);

  v9 = [*(a1 + 40) policyHolder];
  MEMORY[0x22AAC6BD0](a2, @"policy_holder", v9);

  v10 = [*(a1 + 40) payor];
  HDSQLiteBindSecureCodingObjectToProperty();

  v11 = [*(a1 + 40) relationshipCodingCollection];
  HDSQLiteBindSecureCodingObjectToProperty();

  v12 = [*(a1 + 40) classification];
  HDSQLiteBindSecureCodingObjectToProperty();

  v13 = [*(a1 + 40) network];
  MEMORY[0x22AAC6BD0](a2, @"network", v13);

  v14 = [*(a1 + 40) periodStartDate];
  HDSQLiteBindSecureCodingObjectToProperty();

  v15 = [*(a1 + 40) periodEndDate];
  HDSQLiteBindSecureCodingObjectToProperty();

  v16 = [*(a1 + 40) subscriberIdentifier];
  HDSQLiteBindSecureCodingObjectToProperty();

  v17 = [*(a1 + 40) beneficiaryIdentifier];
  HDSQLiteBindSecureCodingObjectToProperty();
}

+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [(_HDMedicalRecordEntityEncoder *)[_HDCoverageRecordEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:v14 transaction:v13 purpose:a5 encodingOptions:v12 authorizationFilter:v11];

  return v15;
}

@end