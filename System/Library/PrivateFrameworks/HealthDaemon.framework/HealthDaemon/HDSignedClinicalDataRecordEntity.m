@interface HDSignedClinicalDataRecordEntity
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7;
@end

@implementation HDSignedClinicalDataRecordEntity

+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7
{
  v28[11] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  v14 = a5;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:a1 file:@"HDSignedClinicalDataRecordEntity.m" lineNumber:69 description:{@"Subclasses must override %s", "+[HDSignedClinicalDataRecordEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  v28[0] = @"data_id";
  v28[1] = @"credential_types";
  v28[2] = @"issuer_identifier";
  v28[3] = @"issued_date";
  v28[4] = @"relevant_date";
  v28[5] = @"expiration_date";
  v28[6] = @"signature_status";
  v28[7] = @"subject";
  v28[8] = @"items";
  v28[9] = @"data_value";
  v28[10] = @"source_type";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:11];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __98__HDSignedClinicalDataRecordEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
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

void __98__HDSignedClinicalDataRecordEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"data_id", [*(a1 + 32) longLongValue]);
  v4 = [*(a1 + 40) credentialTypes];
  HDSQLiteBindSecureCodingObjectToProperty();

  v5 = [*(a1 + 40) issuerIdentifier];
  MEMORY[0x22AAC6BD0](a2, @"issuer_identifier", v5);

  v6 = [*(a1 + 40) issuedDate];
  MEMORY[0x22AAC6B50](a2, @"issued_date", v6);

  v7 = [*(a1 + 40) relevantDate];
  MEMORY[0x22AAC6B50](a2, @"relevant_date", v7);

  v8 = [*(a1 + 40) expirationDate];
  MEMORY[0x22AAC6B50](a2, @"expiration_date", v8);

  MEMORY[0x22AAC6B90](a2, @"signature_status", [*(a1 + 40) signatureStatus]);
  v9 = [*(a1 + 40) subject];
  HDSQLiteBindSecureCodingObjectToProperty();

  v10 = [*(a1 + 40) items];
  HDSQLiteBindSecureCodingObjectToProperty();

  v11 = [*(a1 + 40) dataValue];
  MEMORY[0x22AAC6B40](a2, @"data_value", v11);

  [*(a1 + 40) sourceType];

  JUMPOUT(0x22AAC6B90);
}

+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [(_HDMedicalRecordEntityEncoder *)[_HDSignedClinicalDataRecordEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:v14 transaction:v13 purpose:a5 encodingOptions:v12 authorizationFilter:v11];

  return v15;
}

@end