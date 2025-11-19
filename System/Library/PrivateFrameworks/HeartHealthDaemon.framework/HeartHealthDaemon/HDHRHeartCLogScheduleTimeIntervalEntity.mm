@interface HDHRHeartCLogScheduleTimeIntervalEntity
+ (BOOL)enumerateJournalScheduleIntervalWithOwnerID:(int64_t)a3 transaction:(id)a4 error:(id *)a5 enumerationHandler:(id)a6;
+ (id)_journalScheduleIntervalFromRow:(HDSQLiteRow *)a3;
+ (id)_journalScheduleTimeIntervalEntityProperties;
+ (id)foreignKeys;
+ (id)insertJournalScheduleInterval:(id)a3 ownerID:(id)a4 database:(id)a5 error:(id *)a6;
@end

@implementation HDHRHeartCLogScheduleTimeIntervalEntity

+ (id)_journalScheduleTimeIntervalEntityProperties
{
  v5[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"c_log_id";
  v5[1] = @"schedule_time";
  v5[2] = @"day_window_type";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)_journalScheduleIntervalFromRow:(HDSQLiteRow *)a3
{
  objc_opt_class();
  v3 = HDSQLiteColumnWithNameAsObject();
  v4 = [objc_alloc(MEMORY[0x277D12F90]) initWithDayWindowType:HDSQLiteColumnWithNameAsInt64() scheduledTime:v3];

  return v4;
}

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"c_log_id";
  v2 = +[(HDHealthEntity *)HDHRHeartCLogEntity];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (BOOL)enumerateJournalScheduleIntervalWithOwnerID:(int64_t)a3 transaction:(id)a4 error:(id *)a5 enumerationHandler:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = _BPJournalScheduleIntervalPredicateForOwnerID(a3);
  v13 = [v11 databaseForEntityClass:a1];

  v14 = [a1 queryWithDatabase:v13 predicate:v12];

  v15 = [a1 _journalScheduleTimeIntervalEntityProperties];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __124__HDHRHeartCLogScheduleTimeIntervalEntity_enumerateJournalScheduleIntervalWithOwnerID_transaction_error_enumerationHandler___block_invoke;
  v18[3] = &unk_27865FF68;
  v19 = v10;
  v20 = a1;
  v16 = v10;
  LOBYTE(a5) = [v14 enumerateProperties:v15 error:a5 enumerationHandler:v18];

  return a5;
}

uint64_t __124__HDHRHeartCLogScheduleTimeIntervalEntity_enumerateJournalScheduleIntervalWithOwnerID_transaction_error_enumerationHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) _journalScheduleIntervalFromRow:?];
  v3 = (*(*(a1 + 32) + 16))();

  return v3;
}

+ (id)insertJournalScheduleInterval:(id)a3 ownerID:(id)a4 database:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [a1 _journalScheduleTimeIntervalEntityProperties];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __96__HDHRHeartCLogScheduleTimeIntervalEntity_insertJournalScheduleInterval_ownerID_database_error___block_invoke;
  v18[3] = &unk_27865FF90;
  v19 = v11;
  v20 = v10;
  v14 = v10;
  v15 = v11;
  v16 = [a1 insertOrReplaceEntity:1 database:v12 properties:v13 error:a6 bindingHandler:v18];

  return v16;
}

void __96__HDHRHeartCLogScheduleTimeIntervalEntity_insertJournalScheduleInterval_ownerID_database_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AACD1C0](a2, @"c_log_id", *(a1 + 32));
  MEMORY[0x22AACD1B0](a2, @"day_window_type", [*(a1 + 40) dayWindowType]);
  v4 = [*(a1 + 40) scheduledTime];
  HDSQLiteBindSecureCodingObjectToProperty();
}

@end