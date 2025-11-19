@interface HDVaccinationRecordEntity
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7;
@end

@implementation HDVaccinationRecordEntity

+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7
{
  v28[16] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  v14 = a5;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:a1 file:@"HDVaccinationRecordEntity.m" lineNumber:79 description:{@"Subclasses must override %s", "+[HDVaccinationRecordEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  v28[0] = @"data_id";
  v28[1] = @"vaccination_codings";
  v28[2] = @"expiration_date";
  v28[3] = @"dose_number";
  v28[4] = @"dose_quantity";
  v28[5] = @"lot_number";
  v28[6] = @"performer";
  v28[7] = @"body_site_codings";
  v28[8] = @"reaction";
  v28[9] = @"not_given";
  v28[10] = @"administration_date";
  v28[11] = @"status_coding";
  v28[12] = @"patient_reported";
  v28[13] = @"route_codings";
  v28[14] = @"reasons_codings";
  v28[15] = @"reasons_not_given_codings";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:16];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __91__HDVaccinationRecordEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
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

void __91__HDVaccinationRecordEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"data_id", [*(a1 + 32) longLongValue]);
  v4 = [*(a1 + 40) vaccinationCodings];
  HDSQLiteBindSecureCodingObjectToProperty();

  v5 = [*(a1 + 40) expirationDate];
  HDSQLiteBindSecureCodingObjectToProperty();

  v6 = [*(a1 + 40) doseNumber];
  MEMORY[0x22AAC6BD0](a2, @"dose_number", v6);

  v7 = [*(a1 + 40) doseQuantity];
  MEMORY[0x22AAC6BD0](a2, @"dose_quantity", v7);

  v8 = [*(a1 + 40) lotNumber];
  MEMORY[0x22AAC6BD0](a2, @"lot_number", v8);

  v9 = [*(a1 + 40) performer];
  MEMORY[0x22AAC6BD0](a2, @"performer", v9);

  v10 = [*(a1 + 40) bodySiteCodings];
  HDSQLiteBindSecureCodingObjectToProperty();

  v11 = [*(a1 + 40) reaction];
  MEMORY[0x22AAC6BD0](a2, @"reaction", v11);

  MEMORY[0x22AAC6B30](a2, @"not_given", [*(a1 + 40) notGiven]);
  v12 = [*(a1 + 40) administrationDate];
  HDSQLiteBindSecureCodingObjectToProperty();

  v13 = [*(a1 + 40) statusCoding];
  HDSQLiteBindSecureCodingObjectToProperty();

  MEMORY[0x22AAC6B30](a2, @"patient_reported", [*(a1 + 40) patientReported]);
  v14 = [*(a1 + 40) routeCodings];
  HDSQLiteBindSecureCodingObjectToProperty();

  v15 = [*(a1 + 40) reasonsCodings];
  HDSQLiteBindSecureCodingObjectToProperty();

  v16 = [*(a1 + 40) reasonsNotGivenCodings];
  HDSQLiteBindSecureCodingObjectToProperty();
}

+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [(_HDMedicalRecordEntityEncoder *)[_HDVaccinationRecordEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:v14 transaction:v13 purpose:a5 encodingOptions:v12 authorizationFilter:v11];

  return v15;
}

@end