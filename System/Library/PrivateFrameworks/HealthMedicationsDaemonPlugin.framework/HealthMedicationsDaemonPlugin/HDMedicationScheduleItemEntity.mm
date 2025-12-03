@interface HDMedicationScheduleItemEntity
+ (BOOL)deleteMedicationScheduleItemsWithPredicate:(id)predicate transaction:(id)transaction error:(id *)error;
+ (BOOL)enumerateItemsWithPredicate:(id)predicate orderingTerms:(id)terms transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)updateNotification:(BOOL)notification itemIdentifier:(id)identifier transaction:(id)transaction error:(id *)error;
+ (id)insertMedicationScheduleItem:(id)item transaction:(id)transaction error:(id *)error;
+ (id)medicationScheduleItemEntityPropertiesForModel;
+ (id)medicationScheduleItemFromRow:error:;
+ (id)medicationScheduleItemWithIdentifier:(id)identifier transaction:(id)transaction error:(id *)error;
@end

@implementation HDMedicationScheduleItemEntity

+ (id)medicationScheduleItemEntityPropertiesForModel
{
  v3[4] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v3[0] = @"identifier";
  v3[1] = @"scheduled_date_time";
  v3[2] = @"notification_sent";
  v3[3] = @"doses";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:4];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

+ (id)medicationScheduleItemFromRow:error:
{
  objc_opt_self();
  v0 = HDSQLiteColumnWithNameAsDate();
  v1 = HDSQLiteColumnWithNameAsBoolean();
  objc_opt_class();
  v2 = HDSQLiteColumnWithNameAsArrayOfClass();
  v3 = [objc_alloc(MEMORY[0x277D11588]) initWithScheduledDateTime:v0 notificationSent:v1 doses:v2];

  return v3;
}

+ (id)medicationScheduleItemWithIdentifier:(id)identifier transaction:(id)transaction error:(id *)error
{
  identifierCopy = identifier;
  transactionCopy = transaction;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__8;
  v23 = __Block_byref_object_dispose__8;
  v24 = 0;
  v10 = [transactionCopy databaseForEntityClass:self];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __89__HDMedicationScheduleItemEntity_medicationScheduleItemWithIdentifier_transaction_error___block_invoke;
  v18[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v18[4] = self;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __89__HDMedicationScheduleItemEntity_medicationScheduleItemWithIdentifier_transaction_error___block_invoke_2;
  v16[3] = &unk_2796CE028;
  v11 = identifierCopy;
  v17 = v11;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __89__HDMedicationScheduleItemEntity_medicationScheduleItemWithIdentifier_transaction_error___block_invoke_3;
  v15[3] = &unk_2796CE050;
  v15[4] = &v19;
  v15[5] = self;
  LODWORD(error) = [v10 executeCachedStatementForKey:&medicationScheduleItemWithIdentifier_transaction_error__lookupKey error:error SQLGenerator:v18 bindingHandler:v16 enumerationHandler:v15];

  if (error)
  {
    v12 = v20[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  _Block_object_dispose(&v19, 8);

  return v13;
}

id __89__HDMedicationScheduleItemEntity_medicationScheduleItemWithIdentifier_transaction_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() disambiguatedDatabaseTable];
  v4 = [v1 stringWithFormat:@"SELECT %@, %@, %@, %@ FROM %@ WHERE %@ = ?", @"identifier", @"scheduled_date_time", @"notification_sent", @"doses", v3, @"identifier", 0];

  return v4;
}

uint64_t __89__HDMedicationScheduleItemEntity_medicationScheduleItemWithIdentifier_transaction_error___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = +[HDMedicationScheduleItemEntity medicationScheduleItemFromRow:error:];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

+ (BOOL)enumerateItemsWithPredicate:(id)predicate orderingTerms:(id)terms transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler
{
  handlerCopy = handler;
  termsCopy = terms;
  predicateCopy = predicate;
  v15 = [transaction databaseForEntityClass:self];
  v16 = [self queryWithDatabase:v15 predicate:predicateCopy limit:0 orderingTerms:termsCopy groupBy:0];

  v17 = +[HDMedicationScheduleItemEntity medicationScheduleItemEntityPropertiesForModel];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __113__HDMedicationScheduleItemEntity_enumerateItemsWithPredicate_orderingTerms_transaction_error_enumerationHandler___block_invoke;
  v20[3] = &unk_2796CE078;
  v21 = handlerCopy;
  selfCopy = self;
  v18 = handlerCopy;
  LOBYTE(error) = [v16 enumeratePersistentIDsAndProperties:v17 error:error enumerationHandler:v20];

  return error;
}

uint64_t __113__HDMedicationScheduleItemEntity_enumerateItemsWithPredicate_orderingTerms_transaction_error_enumerationHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = +[HDMedicationScheduleItemEntity medicationScheduleItemFromRow:error:];
  v4 = (*(*(a1 + 32) + 16))();

  return v4;
}

+ (id)insertMedicationScheduleItem:(id)item transaction:(id)transaction error:(id *)error
{
  itemCopy = item;
  v9 = [transaction databaseForEntityClass:self];
  v10 = +[HDMedicationScheduleItemEntity medicationScheduleItemEntityPropertiesForModel];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__HDMedicationScheduleItemEntity_insertMedicationScheduleItem_transaction_error___block_invoke;
  v14[3] = &unk_2796CDFD8;
  v15 = itemCopy;
  v11 = itemCopy;
  v12 = [self insertOrReplaceEntity:1 database:v9 properties:v10 error:error bindingHandler:v14];

  return v12;
}

void __81__HDMedicationScheduleItemEntity_insertMedicationScheduleItem_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) identifier];
  MEMORY[0x253084420](a2, @"identifier", v4);

  v5 = [*(a1 + 32) scheduledDateTime];
  MEMORY[0x2530843B0](a2, @"scheduled_date_time", v5);

  MEMORY[0x2530843A0](a2, @"notification_sent", [*(a1 + 32) notificationSent]);
  v6 = [*(a1 + 32) doses];
  HDSQLiteBindSecureCodingObjectToProperty();
}

+ (BOOL)updateNotification:(BOOL)notification itemIdentifier:(id)identifier transaction:(id)transaction error:(id *)error
{
  v19[1] = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277D10B18];
  transactionCopy = transaction;
  v12 = [v10 predicateWithProperty:@"identifier" equalToValue:identifier];
  v19[0] = @"notification_sent";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v14 = [transactionCopy databaseForEntityClass:objc_opt_class()];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __86__HDMedicationScheduleItemEntity_updateNotification_itemIdentifier_transaction_error___block_invoke;
  v17[3] = &__block_descriptor_33_e34_v16__0__HDSQLiteStatementBinder__8l;
  notificationCopy = notification;
  LOBYTE(error) = [self updateProperties:v13 predicate:v12 database:v14 error:error bindingHandler:v17];

  v15 = *MEMORY[0x277D85DE8];
  return error;
}

+ (BOOL)deleteMedicationScheduleItemsWithPredicate:(id)predicate transaction:(id)transaction error:(id *)error
{
  predicateCopy = predicate;
  v9 = [transaction databaseForEntityClass:self];
  LOBYTE(error) = [self deleteEntitiesInDatabase:v9 predicate:predicateCopy error:error];

  return error;
}

@end