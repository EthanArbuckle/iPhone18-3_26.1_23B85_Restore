@interface HDMedicationOrderEntity
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7;
@end

@implementation HDMedicationOrderEntity

+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7
{
  v28[12] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  v14 = a5;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:a1 file:@"HDMedicationOrderEntity.m" lineNumber:71 description:{@"Subclasses must override %s", "+[HDMedicationOrderEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  v28[0] = @"data_id";
  v28[1] = @"medication_coding_collection";
  v28[2] = @"prescriber";
  v28[3] = @"number_of_fills";
  v28[4] = @"dosages";
  v28[5] = @"earliest_dosage_date";
  v28[6] = @"written_date";
  v28[7] = @"ended_date";
  v28[8] = @"status_coding";
  v28[9] = @"reason_coding_collections";
  v28[10] = @"reason_ended_coding_collection";
  v28[11] = @"status_reason_coding_collection";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:12];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __89__HDMedicationOrderEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
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

void __89__HDMedicationOrderEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"data_id", [*(a1 + 32) longLongValue]);
  v4 = [*(a1 + 40) medicationCodingCollection];
  HDSQLiteBindSecureCodingObjectToProperty();

  v5 = [*(a1 + 40) prescriber];
  MEMORY[0x22AAC6BD0](a2, @"prescriber", v5);

  MEMORY[0x22AAC6B90](a2, @"number_of_fills", [*(a1 + 40) numberOfFills]);
  v6 = [*(a1 + 40) dosages];
  HDSQLiteBindSecureCodingObjectToProperty();

  v7 = [*(a1 + 40) earliestDosageDate];
  HDSQLiteBindSecureCodingObjectToProperty();

  v8 = [*(a1 + 40) writtenDate];
  HDSQLiteBindSecureCodingObjectToProperty();

  v9 = [*(a1 + 40) endedDate];
  HDSQLiteBindSecureCodingObjectToProperty();

  v10 = [*(a1 + 40) statusCoding];
  HDSQLiteBindSecureCodingObjectToProperty();

  v11 = [*(a1 + 40) reasonCodingCollections];
  HDSQLiteBindSecureCodingObjectToProperty();

  v12 = [*(a1 + 40) reasonEndedCodingCollection];
  HDSQLiteBindSecureCodingObjectToProperty();

  v13 = [*(a1 + 40) statusReasonCodingCollection];
  HDSQLiteBindSecureCodingObjectToProperty();
}

+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [(_HDMedicalRecordEntityEncoder *)[_HDMedicationOrderEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:v14 transaction:v13 purpose:a5 encodingOptions:v12 authorizationFilter:v11];

  return v15;
}

@end