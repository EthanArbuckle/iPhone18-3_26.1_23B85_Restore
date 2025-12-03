@interface HDAlarmEventEntity
+ (BOOL)deleteAlarmEvent:(id)event transaction:(id)transaction error:(id *)error;
+ (BOOL)deleteAlarmEvents:(id)events transaction:(id)transaction error:(id *)error;
+ (BOOL)deleteAllAlarmEventsWithClientIdentifier:(id)identifier transaction:(id)transaction enumerationHandler:(id)handler error:(id *)error;
+ (BOOL)deleteAllAlarmEventsWithClientIdentifier:(id)identifier transaction:(id)transaction error:(id *)error;
+ (BOOL)enumerateAllAlarmEventsWithClientIdentifier:(id)identifier transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)insertOrReplaceAlarmEvents:(id)events transaction:(id)transaction error:(id *)error;
+ (id)_alarmEventFromAllPropertiesRow:;
+ (id)checkConstraints;
+ (id)insertOrReplaceAlarmEvent:(id)event transaction:(id)transaction error:(id *)error;
+ (id)uniquedColumns;
+ (uint64_t)_enumerateAllAlarmEventsWithTransaction:(void *)transaction predicate:(uint64_t)predicate error:(void *)error enumerationHandler:;
- (id)alarmEventWithTransaction:(id)transaction error:(id *)error;
@end

@implementation HDAlarmEventEntity

+ (BOOL)enumerateAllAlarmEventsWithClientIdentifier:(id)identifier transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler
{
  v10 = MEMORY[0x277D10B18];
  handlerCopy = handler;
  transactionCopy = transaction;
  v13 = [v10 predicateWithProperty:@"client_identifier" equalToValue:identifier];
  LOBYTE(error) = [(HDAlarmEventEntity *)self _enumerateAllAlarmEventsWithTransaction:transactionCopy predicate:v13 error:error enumerationHandler:handlerCopy];

  return error;
}

+ (uint64_t)_enumerateAllAlarmEventsWithTransaction:(void *)transaction predicate:(uint64_t)predicate error:(void *)error enumerationHandler:
{
  v24[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  transactionCopy = transaction;
  v10 = a2;
  v11 = objc_opt_self();
  v12 = [v10 databaseForEntityClass:v11];

  v13 = [MEMORY[0x277D10B68] orderingTermWithProperty:*MEMORY[0x277D10A40] entityClass:v11 ascending:1];
  v24[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v15 = [v11 queryWithDatabase:v12 predicate:transactionCopy limit:0 orderingTerms:v14 groupBy:0];

  v16 = HDAlarmEventEntityAllProperties();
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __97__HDAlarmEventEntity__enumerateAllAlarmEventsWithTransaction_predicate_error_enumerationHandler___block_invoke;
  v21[3] = &unk_278618B48;
  v22 = errorCopy;
  v23 = v11;
  v17 = errorCopy;
  v18 = [v15 enumerateProperties:v16 error:predicate enumerationHandler:v21];

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t __97__HDAlarmEventEntity__enumerateAllAlarmEventsWithTransaction_predicate_error_enumerationHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = +[HDAlarmEventEntity _alarmEventFromAllPropertiesRow:];
  v4 = (*(*(a1 + 32) + 16))();

  return v4;
}

+ (id)_alarmEventFromAllPropertiesRow:
{
  objc_opt_self();
  v0 = HDSQLiteColumnWithNameAsString();
  v1 = HDSQLiteColumnWithNameAsString();
  v2 = HDSQLiteColumnWithNameAsDate();
  objc_opt_class();
  v3 = HDSQLiteColumnWithNameAsObject();
  v4 = HDSQLiteColumnWithNameAsInt64();
  v5 = [[HDAlarmEvent alloc] _initWithClientIdentifier:v0 eventIdentifier:v1 dueDate:v2 dueDateComponents:v3 eventOptions:v4 clientOptions:HDSQLiteColumnWithNameAsInt64()];

  return v5;
}

+ (id)insertOrReplaceAlarmEvent:(id)event transaction:(id)transaction error:(id *)error
{
  eventCopy = event;
  v9 = [transaction databaseForEntityClass:self];
  v10 = HDAlarmEventEntityAllProperties();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__HDAlarmEventEntity_insertOrReplaceAlarmEvent_transaction_error___block_invoke;
  v14[3] = &unk_278614508;
  v15 = eventCopy;
  v11 = eventCopy;
  v12 = [self insertOrReplaceEntity:1 database:v9 properties:v10 error:error bindingHandler:v14];

  return v12;
}

void __66__HDAlarmEventEntity_insertOrReplaceAlarmEvent_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) clientIdentifier];
  MEMORY[0x22AAC6BD0](a2, @"client_identifier", v4);

  v5 = [*(a1 + 32) eventIdentifier];
  MEMORY[0x22AAC6BD0](a2, @"event_identifier", v5);

  v6 = [*(a1 + 32) dueDate];
  MEMORY[0x22AAC6B50](a2, @"due_date", v6);

  v7 = [*(a1 + 32) dueDateComponents];
  HDSQLiteBindSecureCodingObjectToProperty();

  MEMORY[0x22AAC6B90](a2, @"event_options", [*(a1 + 32) eventOptions]);
  [*(a1 + 32) clientOptions];

  JUMPOUT(0x22AAC6B90);
}

+ (BOOL)insertOrReplaceAlarmEvents:(id)events transaction:(id)transaction error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  transactionCopy = transaction;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = eventsCopy;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [self insertOrReplaceAlarmEvent:*(*(&v19 + 1) + 8 * i) transaction:transactionCopy error:{error, v19}];

        if (!v15)
        {
          v16 = 0;
          goto LABEL_11;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_11:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (BOOL)deleteAlarmEvent:(id)event transaction:(id)transaction error:(id *)error
{
  v22[2] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277D10B18];
  transactionCopy = transaction;
  eventCopy = event;
  clientIdentifier = [eventCopy clientIdentifier];
  v12 = [v8 predicateWithProperty:@"client_identifier" equalToValue:clientIdentifier];

  v13 = MEMORY[0x277D10B18];
  eventIdentifier = [eventCopy eventIdentifier];

  v15 = [v13 predicateWithProperty:@"event_identifier" equalToValue:eventIdentifier];

  v16 = MEMORY[0x277D10B20];
  v22[0] = v12;
  v22[1] = v15;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v18 = [v16 predicateMatchingAllPredicates:v17];

  v19 = [transactionCopy databaseForEntityClass:self];

  LOBYTE(error) = [self deleteEntitiesInDatabase:v19 predicate:v18 error:error];
  v20 = *MEMORY[0x277D85DE8];
  return error;
}

+ (BOOL)deleteAlarmEvents:(id)events transaction:(id)transaction error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  transactionCopy = transaction;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = eventsCopy;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if (![self deleteAlarmEvent:*(*(&v18 + 1) + 8 * i) transaction:transactionCopy error:{error, v18}])
        {
          v15 = 0;
          goto LABEL_11;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_11:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (BOOL)deleteAllAlarmEventsWithClientIdentifier:(id)identifier transaction:(id)transaction enumerationHandler:(id)handler error:(id *)error
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v12 = [transaction databaseForEntityClass:self];
  v13 = MEMORY[0x277CCACA8];
  disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
  v15 = [v13 stringWithFormat:@"DELETE FROM %@ WHERE %@ = ? RETURNING *", disambiguatedDatabaseTable, @"client_identifier"];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __100__HDAlarmEventEntity_deleteAllAlarmEventsWithClientIdentifier_transaction_enumerationHandler_error___block_invoke;
  v22[3] = &unk_278614860;
  v23 = identifierCopy;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __100__HDAlarmEventEntity_deleteAllAlarmEventsWithClientIdentifier_transaction_enumerationHandler_error___block_invoke_2;
  v19[3] = &unk_278618B70;
  v20 = handlerCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v17 = identifierCopy;
  LOBYTE(error) = [v12 executeSQL:v15 error:error bindingHandler:v22 enumerationHandler:v19];

  return error;
}

uint64_t __100__HDAlarmEventEntity_deleteAllAlarmEventsWithClientIdentifier_transaction_enumerationHandler_error___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = +[HDAlarmEventEntity _alarmEventFromAllPropertiesRow:];
  v4 = (*(*(a1 + 32) + 16))();

  return v4;
}

+ (BOOL)deleteAllAlarmEventsWithClientIdentifier:(id)identifier transaction:(id)transaction error:(id *)error
{
  v8 = MEMORY[0x277D10B18];
  transactionCopy = transaction;
  v10 = [v8 predicateWithProperty:@"client_identifier" equalToValue:identifier];
  v11 = [transactionCopy databaseForEntityClass:self];

  LOBYTE(error) = [self deleteEntitiesInDatabase:v11 predicate:v10 error:error];
  return error;
}

- (id)alarmEventWithTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__37;
  v17 = __Block_byref_object_dispose__37;
  v18 = 0;
  v7 = HDAlarmEventEntityAllProperties();
  v8 = [transactionCopy databaseForEntity:self];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__HDAlarmEventEntity_alarmEventWithTransaction_error___block_invoke;
  v12[3] = &unk_278618B98;
  v12[4] = &v13;
  LODWORD(error) = [(HDSQLiteEntity *)self getValuesForProperties:v7 database:v8 error:error handler:v12];

  if (error)
  {
    v9 = v14[5];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  _Block_object_dispose(&v13, 8);

  return v10;
}

uint64_t __54__HDAlarmEventEntity_alarmEventWithTransaction_error___block_invoke(uint64_t a1)
{
  v2 = +[HDAlarmEventEntity _alarmEventFromAllPropertiesRow:];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

+ (id)uniquedColumns
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"client_identifier";
  v5[1] = @"event_identifier";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)checkConstraints
{
  v2 = [MEMORY[0x277D10B88] checkConstraintWithSQL:@"(due_date IS NULL AND due_date_components IS NOT NULL) OR (due_date IS NOT NULL AND due_date_components IS NULL)"];
  v3 = [MEMORY[0x277CBEB98] setWithObject:v2];

  return v3;
}

@end