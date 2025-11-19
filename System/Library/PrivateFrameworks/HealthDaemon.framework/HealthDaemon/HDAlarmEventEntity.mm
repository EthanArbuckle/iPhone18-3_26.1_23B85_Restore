@interface HDAlarmEventEntity
+ (BOOL)deleteAlarmEvent:(id)a3 transaction:(id)a4 error:(id *)a5;
+ (BOOL)deleteAlarmEvents:(id)a3 transaction:(id)a4 error:(id *)a5;
+ (BOOL)deleteAllAlarmEventsWithClientIdentifier:(id)a3 transaction:(id)a4 enumerationHandler:(id)a5 error:(id *)a6;
+ (BOOL)deleteAllAlarmEventsWithClientIdentifier:(id)a3 transaction:(id)a4 error:(id *)a5;
+ (BOOL)enumerateAllAlarmEventsWithClientIdentifier:(id)a3 transaction:(id)a4 error:(id *)a5 enumerationHandler:(id)a6;
+ (BOOL)insertOrReplaceAlarmEvents:(id)a3 transaction:(id)a4 error:(id *)a5;
+ (id)_alarmEventFromAllPropertiesRow:;
+ (id)checkConstraints;
+ (id)insertOrReplaceAlarmEvent:(id)a3 transaction:(id)a4 error:(id *)a5;
+ (id)uniquedColumns;
+ (uint64_t)_enumerateAllAlarmEventsWithTransaction:(void *)a3 predicate:(uint64_t)a4 error:(void *)a5 enumerationHandler:;
- (id)alarmEventWithTransaction:(id)a3 error:(id *)a4;
@end

@implementation HDAlarmEventEntity

+ (BOOL)enumerateAllAlarmEventsWithClientIdentifier:(id)a3 transaction:(id)a4 error:(id *)a5 enumerationHandler:(id)a6
{
  v10 = MEMORY[0x277D10B18];
  v11 = a6;
  v12 = a4;
  v13 = [v10 predicateWithProperty:@"client_identifier" equalToValue:a3];
  LOBYTE(a5) = [(HDAlarmEventEntity *)a1 _enumerateAllAlarmEventsWithTransaction:v12 predicate:v13 error:a5 enumerationHandler:v11];

  return a5;
}

+ (uint64_t)_enumerateAllAlarmEventsWithTransaction:(void *)a3 predicate:(uint64_t)a4 error:(void *)a5 enumerationHandler:
{
  v24[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a3;
  v10 = a2;
  v11 = objc_opt_self();
  v12 = [v10 databaseForEntityClass:v11];

  v13 = [MEMORY[0x277D10B68] orderingTermWithProperty:*MEMORY[0x277D10A40] entityClass:v11 ascending:1];
  v24[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v15 = [v11 queryWithDatabase:v12 predicate:v9 limit:0 orderingTerms:v14 groupBy:0];

  v16 = HDAlarmEventEntityAllProperties();
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __97__HDAlarmEventEntity__enumerateAllAlarmEventsWithTransaction_predicate_error_enumerationHandler___block_invoke;
  v21[3] = &unk_278618B48;
  v22 = v8;
  v23 = v11;
  v17 = v8;
  v18 = [v15 enumerateProperties:v16 error:a4 enumerationHandler:v21];

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

+ (id)insertOrReplaceAlarmEvent:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a4 databaseForEntityClass:a1];
  v10 = HDAlarmEventEntityAllProperties();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__HDAlarmEventEntity_insertOrReplaceAlarmEvent_transaction_error___block_invoke;
  v14[3] = &unk_278614508;
  v15 = v8;
  v11 = v8;
  v12 = [a1 insertOrReplaceEntity:1 database:v9 properties:v10 error:a5 bindingHandler:v14];

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

+ (BOOL)insertOrReplaceAlarmEvents:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v8;
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

        v15 = [a1 insertOrReplaceAlarmEvent:*(*(&v19 + 1) + 8 * i) transaction:v9 error:{a5, v19}];

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

+ (BOOL)deleteAlarmEvent:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v22[2] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277D10B18];
  v9 = a4;
  v10 = a3;
  v11 = [v10 clientIdentifier];
  v12 = [v8 predicateWithProperty:@"client_identifier" equalToValue:v11];

  v13 = MEMORY[0x277D10B18];
  v14 = [v10 eventIdentifier];

  v15 = [v13 predicateWithProperty:@"event_identifier" equalToValue:v14];

  v16 = MEMORY[0x277D10B20];
  v22[0] = v12;
  v22[1] = v15;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v18 = [v16 predicateMatchingAllPredicates:v17];

  v19 = [v9 databaseForEntityClass:a1];

  LOBYTE(a5) = [a1 deleteEntitiesInDatabase:v19 predicate:v18 error:a5];
  v20 = *MEMORY[0x277D85DE8];
  return a5;
}

+ (BOOL)deleteAlarmEvents:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v8;
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

        if (![a1 deleteAlarmEvent:*(*(&v18 + 1) + 8 * i) transaction:v9 error:{a5, v18}])
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

+ (BOOL)deleteAllAlarmEventsWithClientIdentifier:(id)a3 transaction:(id)a4 enumerationHandler:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [a4 databaseForEntityClass:a1];
  v13 = MEMORY[0x277CCACA8];
  v14 = [a1 disambiguatedDatabaseTable];
  v15 = [v13 stringWithFormat:@"DELETE FROM %@ WHERE %@ = ? RETURNING *", v14, @"client_identifier"];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __100__HDAlarmEventEntity_deleteAllAlarmEventsWithClientIdentifier_transaction_enumerationHandler_error___block_invoke;
  v22[3] = &unk_278614860;
  v23 = v10;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __100__HDAlarmEventEntity_deleteAllAlarmEventsWithClientIdentifier_transaction_enumerationHandler_error___block_invoke_2;
  v19[3] = &unk_278618B70;
  v20 = v11;
  v21 = a1;
  v16 = v11;
  v17 = v10;
  LOBYTE(a6) = [v12 executeSQL:v15 error:a6 bindingHandler:v22 enumerationHandler:v19];

  return a6;
}

uint64_t __100__HDAlarmEventEntity_deleteAllAlarmEventsWithClientIdentifier_transaction_enumerationHandler_error___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = +[HDAlarmEventEntity _alarmEventFromAllPropertiesRow:];
  v4 = (*(*(a1 + 32) + 16))();

  return v4;
}

+ (BOOL)deleteAllAlarmEventsWithClientIdentifier:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x277D10B18];
  v9 = a4;
  v10 = [v8 predicateWithProperty:@"client_identifier" equalToValue:a3];
  v11 = [v9 databaseForEntityClass:a1];

  LOBYTE(a5) = [a1 deleteEntitiesInDatabase:v11 predicate:v10 error:a5];
  return a5;
}

- (id)alarmEventWithTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__37;
  v17 = __Block_byref_object_dispose__37;
  v18 = 0;
  v7 = HDAlarmEventEntityAllProperties();
  v8 = [v6 databaseForEntity:self];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__HDAlarmEventEntity_alarmEventWithTransaction_error___block_invoke;
  v12[3] = &unk_278618B98;
  v12[4] = &v13;
  LODWORD(a4) = [(HDSQLiteEntity *)self getValuesForProperties:v7 database:v8 error:a4 handler:v12];

  if (a4)
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