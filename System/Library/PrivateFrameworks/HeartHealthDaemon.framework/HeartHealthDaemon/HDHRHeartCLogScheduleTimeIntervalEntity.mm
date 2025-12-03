@interface HDHRHeartCLogScheduleTimeIntervalEntity
+ (BOOL)enumerateJournalScheduleIntervalWithOwnerID:(int64_t)d transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler;
+ (id)_journalScheduleIntervalFromRow:(HDSQLiteRow *)row;
+ (id)_journalScheduleTimeIntervalEntityProperties;
+ (id)foreignKeys;
+ (id)insertJournalScheduleInterval:(id)interval ownerID:(id)d database:(id)database error:(id *)error;
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

+ (id)_journalScheduleIntervalFromRow:(HDSQLiteRow *)row
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

+ (BOOL)enumerateJournalScheduleIntervalWithOwnerID:(int64_t)d transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler
{
  handlerCopy = handler;
  transactionCopy = transaction;
  v12 = _BPJournalScheduleIntervalPredicateForOwnerID(d);
  v13 = [transactionCopy databaseForEntityClass:self];

  v14 = [self queryWithDatabase:v13 predicate:v12];

  _journalScheduleTimeIntervalEntityProperties = [self _journalScheduleTimeIntervalEntityProperties];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __124__HDHRHeartCLogScheduleTimeIntervalEntity_enumerateJournalScheduleIntervalWithOwnerID_transaction_error_enumerationHandler___block_invoke;
  v18[3] = &unk_27865FF68;
  v19 = handlerCopy;
  selfCopy = self;
  v16 = handlerCopy;
  LOBYTE(error) = [v14 enumerateProperties:_journalScheduleTimeIntervalEntityProperties error:error enumerationHandler:v18];

  return error;
}

uint64_t __124__HDHRHeartCLogScheduleTimeIntervalEntity_enumerateJournalScheduleIntervalWithOwnerID_transaction_error_enumerationHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) _journalScheduleIntervalFromRow:?];
  v3 = (*(*(a1 + 32) + 16))();

  return v3;
}

+ (id)insertJournalScheduleInterval:(id)interval ownerID:(id)d database:(id)database error:(id *)error
{
  intervalCopy = interval;
  dCopy = d;
  databaseCopy = database;
  _journalScheduleTimeIntervalEntityProperties = [self _journalScheduleTimeIntervalEntityProperties];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __96__HDHRHeartCLogScheduleTimeIntervalEntity_insertJournalScheduleInterval_ownerID_database_error___block_invoke;
  v18[3] = &unk_27865FF90;
  v19 = dCopy;
  v20 = intervalCopy;
  v14 = intervalCopy;
  v15 = dCopy;
  v16 = [self insertOrReplaceEntity:1 database:databaseCopy properties:_journalScheduleTimeIntervalEntityProperties error:error bindingHandler:v18];

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