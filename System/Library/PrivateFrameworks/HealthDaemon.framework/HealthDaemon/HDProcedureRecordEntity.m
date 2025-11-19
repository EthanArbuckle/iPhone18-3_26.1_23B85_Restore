@interface HDProcedureRecordEntity
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7;
@end

@implementation HDProcedureRecordEntity

+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7
{
  v28[14] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  v14 = a5;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:a1 file:@"HDProcedureRecordEntity.m" lineNumber:75 description:{@"Subclasses must override %s", "+[HDProcedureRecordEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  v28[0] = @"data_id";
  v28[1] = @"procedure_coding_collection";
  v28[2] = @"performers";
  v28[3] = @"execution_start_date";
  v28[4] = @"execution_end_date";
  v28[5] = @"not_performed";
  v28[6] = @"status_coding";
  v28[7] = @"category_coding_collection";
  v28[8] = @"reason_coding_collections";
  v28[9] = @"reasons_not_performed_coding_collections";
  v28[10] = @"outcome_coding_collection";
  v28[11] = @"complications_coding_collections";
  v28[12] = @"follow_ups_coding_collections";
  v28[13] = @"body_sites_coding_collections";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:14];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __89__HDProcedureRecordEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
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

void __89__HDProcedureRecordEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"data_id", [*(a1 + 32) longLongValue]);
  v4 = [*(a1 + 40) procedureCodingCollection];
  HDSQLiteBindSecureCodingObjectToProperty();

  v5 = [*(a1 + 40) performers];
  HDSQLiteBindSecureCodingObjectToProperty();

  v6 = [*(a1 + 40) executionStartDate];
  HDSQLiteBindSecureCodingObjectToProperty();

  v7 = [*(a1 + 40) executionEndDate];
  HDSQLiteBindSecureCodingObjectToProperty();

  MEMORY[0x22AAC6B30](a2, @"not_performed", [*(a1 + 40) notPerformed]);
  v8 = [*(a1 + 40) statusCoding];
  HDSQLiteBindSecureCodingObjectToProperty();

  v9 = [*(a1 + 40) categoryCodingCollection];
  HDSQLiteBindSecureCodingObjectToProperty();

  v10 = [*(a1 + 40) reasonCodingCollections];
  HDSQLiteBindSecureCodingObjectToProperty();

  v11 = [*(a1 + 40) reasonsNotPerformedCodingCollections];
  HDSQLiteBindSecureCodingObjectToProperty();

  v12 = [*(a1 + 40) outcomeCodingCollection];
  HDSQLiteBindSecureCodingObjectToProperty();

  v13 = [*(a1 + 40) complicationsCodingCollections];
  HDSQLiteBindSecureCodingObjectToProperty();

  v14 = [*(a1 + 40) followUpsCodingCollections];
  HDSQLiteBindSecureCodingObjectToProperty();

  v15 = [*(a1 + 40) bodySitesCodingCollections];
  HDSQLiteBindSecureCodingObjectToProperty();
}

+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [(_HDMedicalRecordEntityEncoder *)[_HDProcedureRecordEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:v14 transaction:v13 purpose:a5 encodingOptions:v12 authorizationFilter:v11];

  return v15;
}

@end