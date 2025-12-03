@interface HDMedicationScheduleIntervalDataEntity
+ (BOOL)addIntervalDataToCodable:(id)codable withScheduleID:(int64_t)d transaction:(id)transaction error:(id *)error;
+ (BOOL)enumerateMedicationScheduleIntervalDataWithOwnerID:(int64_t)d transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler;
+ (id)_medicationScheduleIntervalDataEntityPropertiesForModel;
+ (id)_medicationScheduleIntervalDataFromRow:(HDSQLiteRow *)row;
+ (id)foreignKeys;
+ (id)insertPersistableMedicationScheduleIntervalData:(id)data ownerID:(id)d database:(id)database error:(id *)error;
@end

@implementation HDMedicationScheduleIntervalDataEntity

+ (id)_medicationScheduleIntervalDataEntityPropertiesForModel
{
  v5[6] = *MEMORY[0x277D85DE8];
  v5[0] = @"schedule_id";
  v5[1] = @"start_time_components";
  v5[2] = @"day_of_week";
  v5[3] = @"cycle_index";
  v5[4] = @"cycle_interval_days";
  v5[5] = @"dose";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:6];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)_medicationScheduleIntervalDataFromRow:(HDSQLiteRow *)row
{
  objc_opt_class();
  v3 = HDSQLiteColumnWithNameAsObject();
  v4 = HDSQLiteColumnWithNameAsInt64();
  v5 = HDSQLiteColumnWithNameAsNumber();
  v6 = HDSQLiteColumnWithNameAsNumber();
  v7 = HDSQLiteColumnWithNameAsNumber();
  v8 = [objc_alloc(MEMORY[0x277D11580]) initWithStartTimeComponent:v3 daysOfWeek:v4 cycleIndex:v5 cycleIntervalDays:v6 dose:v7];

  return v8;
}

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"schedule_id";
  v2 = +[(HDHealthEntity *)HDMedicationScheduleEntity];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (BOOL)enumerateMedicationScheduleIntervalDataWithOwnerID:(int64_t)d transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler
{
  v25[6] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v11 = MEMORY[0x277D10B18];
  v12 = MEMORY[0x277CCABB0];
  transactionCopy = transaction;
  v14 = [v12 numberWithLongLong:d];
  v15 = [v11 predicateWithProperty:@"schedule_id" equalToValue:v14];

  v16 = [transactionCopy databaseForEntityClass:self];

  v17 = [self queryWithDatabase:v16 predicate:v15];

  v25[0] = @"schedule_id";
  v25[1] = @"start_time_components";
  v25[2] = @"day_of_week";
  v25[3] = @"cycle_index";
  v25[4] = @"cycle_interval_days";
  v25[5] = @"dose";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:6];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __130__HDMedicationScheduleIntervalDataEntity_enumerateMedicationScheduleIntervalDataWithOwnerID_transaction_error_enumerationHandler___block_invoke;
  v22[3] = &unk_2796CEDB8;
  v23 = handlerCopy;
  selfCopy = self;
  v19 = handlerCopy;
  LOBYTE(error) = [v17 enumerateProperties:v18 error:error enumerationHandler:v22];

  v20 = *MEMORY[0x277D85DE8];
  return error;
}

uint64_t __130__HDMedicationScheduleIntervalDataEntity_enumerateMedicationScheduleIntervalDataWithOwnerID_transaction_error_enumerationHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) _medicationScheduleIntervalDataFromRow:?];
  v3 = (*(*(a1 + 32) + 16))();

  return v3;
}

+ (id)insertPersistableMedicationScheduleIntervalData:(id)data ownerID:(id)d database:(id)database error:(id *)error
{
  dataCopy = data;
  dCopy = d;
  databaseCopy = database;
  _medicationScheduleIntervalDataEntityPropertiesForModel = [self _medicationScheduleIntervalDataEntityPropertiesForModel];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __113__HDMedicationScheduleIntervalDataEntity_insertPersistableMedicationScheduleIntervalData_ownerID_database_error___block_invoke;
  v18[3] = &unk_2796CEDE0;
  v19 = dCopy;
  v20 = dataCopy;
  v14 = dataCopy;
  v15 = dCopy;
  v16 = [self insertOrReplaceEntity:0 database:databaseCopy properties:_medicationScheduleIntervalDataEntityPropertiesForModel error:error bindingHandler:v18];

  return v16;
}

void __113__HDMedicationScheduleIntervalDataEntity_insertPersistableMedicationScheduleIntervalData_ownerID_database_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x253084400](a2, @"schedule_id", *(a1 + 32));
  v4 = [*(a1 + 40) startTimeComponent];
  HDSQLiteBindSecureCodingObjectToProperty();

  MEMORY[0x2530843E0](a2, @"day_of_week", [*(a1 + 40) daysOfWeek]);
  v5 = [*(a1 + 40) cycleIndex];
  v10 = v5;
  if (v5)
  {
    MEMORY[0x2530843C0](a2, @"cycle_index", [v5 integerValue]);
  }

  else
  {
    MEMORY[0x2530843F0](a2, @"cycle_index");
  }

  v6 = [*(a1 + 40) cycleIntervalDays];
  v7 = v6;
  if (v6)
  {
    MEMORY[0x2530843C0](a2, @"cycle_interval_days", [v6 integerValue]);
  }

  else
  {
    MEMORY[0x2530843F0](a2, @"cycle_interval_days");
  }

  v8 = [*(a1 + 40) dose];
  v9 = v8;
  if (v8)
  {
    [v8 doubleValue];
    MEMORY[0x2530843C0](a2, @"dose");
  }

  else
  {
    MEMORY[0x2530843F0](a2, @"dose");
  }
}

+ (BOOL)addIntervalDataToCodable:(id)codable withScheduleID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  codableCopy = codable;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __100__HDMedicationScheduleIntervalDataEntity_addIntervalDataToCodable_withScheduleID_transaction_error___block_invoke;
  v13[3] = &unk_2796CEE08;
  v14 = codableCopy;
  selfCopy = self;
  v11 = codableCopy;
  LOBYTE(error) = [self enumerateMedicationScheduleIntervalDataWithOwnerID:d transaction:transaction error:error enumerationHandler:v13];

  return error;
}

uint64_t __100__HDMedicationScheduleIntervalDataEntity_addIntervalDataToCodable_withScheduleID_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _codableRepresentationForMedicationScheduleIntervalData:a2];
  [v2 addIntervalData:v3];

  return 1;
}

@end