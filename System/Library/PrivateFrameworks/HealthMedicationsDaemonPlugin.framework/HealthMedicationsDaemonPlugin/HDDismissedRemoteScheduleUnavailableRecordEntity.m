@interface HDDismissedRemoteScheduleUnavailableRecordEntity
+ (BOOL)_insertRemoteScheduleUnavailableRecord:(void *)a3 transaction:(uint64_t)a4 error:;
+ (BOOL)enumerateDismissedRemoteScheduleUnavailableRecordEntitiesWithPredicate:(id)a3 transaction:(id)a4 error:(id *)a5 enumerationHandler:(id)a6;
+ (BOOL)insertDismissedRemoteScheduleUnavailableRecords:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)_propertiesForEntity;
+ (id)uniquedColumns;
@end

@implementation HDDismissedRemoteScheduleUnavailableRecordEntity

+ (id)uniquedColumns
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"medication_identifier";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (BOOL)enumerateDismissedRemoteScheduleUnavailableRecordEntitiesWithPredicate:(id)a3 transaction:(id)a4 error:(id *)a5 enumerationHandler:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = [a4 databaseForEntityClass:a1];
  v13 = [a1 queryWithDatabase:v12 predicate:v11];

  v14 = +[HDDismissedRemoteScheduleUnavailableRecordEntity _propertiesForEntity];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __160__HDDismissedRemoteScheduleUnavailableRecordEntity_enumerateDismissedRemoteScheduleUnavailableRecordEntitiesWithPredicate_transaction_error_enumerationHandler___block_invoke;
  v17[3] = &unk_2796CDFB0;
  v18 = v10;
  v15 = v10;
  LOBYTE(a5) = [v13 enumerateProperties:v14 error:a5 enumerationHandler:v17];

  return a5;
}

+ (id)_propertiesForEntity
{
  v3[5] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v3[0] = @"medication_identifier";
  v3[1] = @"schedule_type";
  v3[2] = @"schedule_compatibility_version";
  v3[3] = @"device_identifiers";
  v3[4] = @"creation_date";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:5];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

uint64_t __160__HDDismissedRemoteScheduleUnavailableRecordEntity_enumerateDismissedRemoteScheduleUnavailableRecordEntitiesWithPredicate_transaction_error_enumerationHandler___block_invoke(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsString();
  v3 = HDSQLiteColumnWithNameAsInt64();
  v4 = HDSQLiteColumnWithNameAsInt64();
  v5 = HDSQLiteColumnWithNameAsString();
  v6 = HDSQLiteColumnWithNameAsDate();
  v7 = [v5 componentsSeparatedByString:*MEMORY[0x277D115F8]];
  v8 = [v7 hk_map:&__block_literal_global_10];
  v9 = [objc_alloc(MEMORY[0x277D11500]) _initWithMedicationIdentifier:v2 scheduleType:v3 scheduleCompatibilityVersion:v4 deviceIdentifiers:v8 creationDate:v6];
  v10 = (*(*(a1 + 32) + 16))();

  return v10;
}

id __160__HDDismissedRemoteScheduleUnavailableRecordEntity_enumerateDismissedRemoteScheduleUnavailableRecordEntitiesWithPredicate_transaction_error_enumerationHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAD78];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

+ (BOOL)insertDismissedRemoteScheduleUnavailableRecords:(id)a3 profile:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[HDDismissedRemoteScheduleUnavailableRecordInsertOperation alloc] initWithRemoteScheduleUnavailableRecords:v8];

  LOBYTE(a5) = [(HDJournalableOperation *)v9 performOrJournalWithProfile:v7 error:a5];
  return a5;
}

+ (BOOL)_insertRemoteScheduleUnavailableRecord:(void *)a3 transaction:(uint64_t)a4 error:
{
  v6 = a2;
  v7 = a3;
  v8 = objc_opt_self();
  v9 = [v7 databaseForEntityClass:v8];

  v10 = +[HDDismissedRemoteScheduleUnavailableRecordEntity _propertiesForEntity];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __109__HDDismissedRemoteScheduleUnavailableRecordEntity__insertRemoteScheduleUnavailableRecord_transaction_error___block_invoke;
  v15[3] = &unk_2796CDFD8;
  v16 = v6;
  v11 = v6;
  v12 = [v8 insertOrReplaceEntity:1 database:v9 properties:v10 error:a4 bindingHandler:v15];
  v13 = v12 != 0;

  return v13;
}

void __109__HDDismissedRemoteScheduleUnavailableRecordEntity__insertRemoteScheduleUnavailableRecord_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) medicationIdentifier];
  MEMORY[0x253084420](a2, @"medication_identifier", v4);

  MEMORY[0x2530843E0](a2, @"schedule_type", [*(a1 + 32) scheduleType]);
  MEMORY[0x2530843E0](a2, @"schedule_compatibility_version", [*(a1 + 32) scheduleCompatibilityVersion]);
  v5 = [*(a1 + 32) deviceIdentifiersDatabaseString];
  MEMORY[0x253084420](a2, @"device_identifiers", v5);

  v6 = [*(a1 + 32) creationDate];
  MEMORY[0x2530843B0](a2, @"creation_date", v6);
}

@end