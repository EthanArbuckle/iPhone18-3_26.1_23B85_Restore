@interface HDWorkoutEventEntity
+ (BOOL)enumerateEventsForOwner:(int64_t)owner withStatement:(id)statement error:(id *)error eventHandler:(id)handler;
+ (BOOL)insertWorkoutEventsFromWorkout:(id)workout ownerID:(id)d transaction:(id)transaction error:(id *)error;
+ (id)deleteStatementForWorkoutEventsWithTransaction:(id)transaction;
+ (id)foreignKeys;
+ (id)indices;
+ (id)insertPersistableWorkoutEvent:(id)event ownerID:(id)d database:(id)database error:(id *)error;
+ (id)statementForEnumeratingEventsForOwnerInDatabase:(id)database error:(id *)error;
+ (id)workoutEventsForOwner:(id)owner transaction:(id)transaction error:(id *)error;
+ (id)workoutEventsWithOwnerID:(id)d database:(id)database error:(id *)error;
@end

@implementation HDWorkoutEventEntity

+ (id)foreignKeys
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = @"owner_id";
  v3 = objc_alloc(MEMORY[0x277D10B38]);
  ownerEntityClass = [self ownerEntityClass];
  ownerEntityReferenceColumn = [self ownerEntityReferenceColumn];
  v6 = [v3 initWithEntityClass:ownerEntityClass property:ownerEntityReferenceColumn deletionAction:2];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)indices
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D10B40]);
  v4 = MEMORY[0x277CCACA8];
  databaseTable = [self databaseTable];
  v6 = [v4 stringWithFormat:@"%@_owners", databaseTable];
  v12 = @"owner_id";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  v8 = [v3 initWithEntity:self name:v6 columns:v7];
  v13[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)insertPersistableWorkoutEvent:(id)event ownerID:(id)d database:(id)database error:(id *)error
{
  v23[7] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dCopy = d;
  v23[0] = @"owner_id";
  v23[1] = @"date";
  v23[2] = @"type";
  v23[3] = @"duration";
  v23[4] = @"metadata";
  v23[5] = @"session_uuid";
  v23[6] = @"error";
  v12 = MEMORY[0x277CBEA60];
  databaseCopy = database;
  v14 = [v12 arrayWithObjects:v23 count:7];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __77__HDWorkoutEventEntity_insertPersistableWorkoutEvent_ownerID_database_error___block_invoke;
  v20[3] = &unk_278613DE8;
  v21 = dCopy;
  v22 = eventCopy;
  v15 = eventCopy;
  v16 = dCopy;
  v17 = [self insertOrReplaceEntity:1 database:databaseCopy properties:v14 error:error bindingHandler:v20];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void __77__HDWorkoutEventEntity_insertPersistableWorkoutEvent_ownerID_database_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6BB0](a2, @"owner_id", *(a1 + 32));
  v10 = [*(a1 + 40) dateInterval];
  v4 = [v10 startDate];
  MEMORY[0x22AAC6B50](a2, @"date", v4);

  MEMORY[0x22AAC6B90](a2, @"type", [*(a1 + 40) workoutEventType]);
  [v10 duration];
  MEMORY[0x22AAC6B60](a2, @"duration");
  v5 = [*(a1 + 40) metadata];
  if ([v5 count])
  {
    v6 = [v5 hk_codableMetadata];
    v7 = [v6 data];
    MEMORY[0x22AAC6B40](a2, @"metadata", v7);
  }

  else
  {
    MEMORY[0x22AAC6BA0](a2, @"metadata");
  }

  v8 = [*(a1 + 40) sessionUUID];
  MEMORY[0x22AAC6C00](a2, @"session_uuid", v8);

  v9 = [*(a1 + 40) error];
  HDSQLiteBindSecureCodingObjectToProperty();
}

+ (BOOL)insertWorkoutEventsFromWorkout:(id)workout ownerID:(id)d transaction:(id)transaction error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  workoutCopy = workout;
  dCopy = d;
  v12 = [transaction databaseForEntityClass:self];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  workoutEvents = [workoutCopy workoutEvents];
  v14 = [workoutEvents countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(workoutEvents);
        }

        v18 = [self insertPersistableWorkoutEvent:*(*(&v22 + 1) + 8 * i) ownerID:dCopy database:v12 error:error];

        if (!v18)
        {
          v19 = 0;
          goto LABEL_11;
        }
      }

      v15 = [workoutEvents countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v19 = 1;
LABEL_11:

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (id)workoutEventsWithOwnerID:(id)d database:(id)database error:(id *)error
{
  v26[6] = *MEMORY[0x277D85DE8];
  v26[0] = @"date";
  v26[1] = @"type";
  v26[2] = @"duration";
  v26[3] = @"metadata";
  v26[4] = @"session_uuid";
  v26[5] = @"error";
  v8 = MEMORY[0x277CBEA60];
  databaseCopy = database;
  dCopy = d;
  v11 = [v8 arrayWithObjects:v26 count:6];
  v12 = MEMORY[0x277D10B18];
  v13 = _HDSQLiteValueForNumber();

  v14 = [v12 predicateWithProperty:@"owner_id" equalToValue:v13];

  v15 = [self queryWithDatabase:databaseCopy predicate:v14];

  workoutEventClass = [self workoutEventClass];
  array = [MEMORY[0x277CBEB18] array];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __64__HDWorkoutEventEntity_workoutEventsWithOwnerID_database_error___block_invoke;
  v23[3] = &unk_278621050;
  v24 = array;
  v25 = workoutEventClass;
  v18 = array;
  if ([v15 enumerateProperties:v11 error:error enumerationHandler:v23])
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t __64__HDWorkoutEventEntity_workoutEventsWithOwnerID_database_error___block_invoke(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsDate();
  v3 = HDSQLiteColumnWithNameAsInt64();
  HDSQLiteColumnWithNameAsDouble();
  v5 = v4;
  v6 = HDSQLiteColumnWithNameAsData();
  v7 = [HDCodableMetadataDictionary decodeMetadataFromData:v6];
  v8 = HDSQLiteColumnWithNameAsUUID();
  objc_opt_class();
  v9 = HDSQLiteColumnWithNameAsObject();
  v10 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v2 duration:v5];
  v11 = [objc_alloc(*(a1 + 40)) initWithWorkoutEventType:v3 sessionUUID:v8 dateInterval:v10 metadata:v7 error:v9];
  [*(a1 + 32) addObject:v11];

  return 1;
}

+ (id)deleteStatementForWorkoutEventsWithTransaction:(id)transaction
{
  v4 = [transaction databaseForEntityClass:self];
  v5 = [self deleteStatementWithProperty:@"owner_id" database:v4];

  return v5;
}

+ (id)statementForEnumeratingEventsForOwnerInDatabase:(id)database error:(id *)error
{
  v5 = MEMORY[0x277CCACA8];
  databaseCopy = database;
  disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
  v8 = [v5 stringWithFormat:@"SELECT %@, %@, %@, %@, %@, %@ FROM %@ WHERE %@ = ?", @"date", @"type", @"duration", @"metadata", @"session_uuid", @"error", disambiguatedDatabaseTable, @"owner_id"];

  v9 = [objc_alloc(MEMORY[0x277D10B98]) initWithSQL:v8 database:databaseCopy];

  return v9;
}

+ (BOOL)enumerateEventsForOwner:(int64_t)owner withStatement:(id)statement error:(id *)error eventHandler:(id)handler
{
  handlerCopy = handler;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__HDWorkoutEventEntity_enumerateEventsForOwner_withStatement_error_eventHandler___block_invoke;
  v13[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v13[4] = owner;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__HDWorkoutEventEntity_enumerateEventsForOwner_withStatement_error_eventHandler___block_invoke_2;
  v11[3] = &unk_278613B30;
  v9 = handlerCopy;
  LOBYTE(error) = [statement enumerateStatementWithError:error bindingHandler:v13 block:v11];

  return error;
}

uint64_t __81__HDWorkoutEventEntity_enumerateEventsForOwner_withStatement_error_eventHandler___block_invoke_2(uint64_t a1)
{
  HDSQLiteColumnWithNameAsDouble();
  v3 = v2;
  HDSQLiteColumnWithNameAsDouble();
  v5 = v4;
  HDSQLiteColumnWithNameAsInt64();
  v6 = HDSQLiteColumnWithNameAsData();
  v7 = [HDCodableMetadataDictionary decodeMetadataFromData:v6];
  v8 = HDSQLiteColumnWithNameAsUUID();
  objc_opt_class();
  v9 = HDSQLiteColumnWithNameAsObject();
  (*(*(a1 + 32) + 16))(v3, v5);

  return 1;
}

+ (id)workoutEventsForOwner:(id)owner transaction:(id)transaction error:(id *)error
{
  ownerCopy = owner;
  v9 = [transaction databaseForEntityClass:self];
  v10 = [self statementForEnumeratingEventsForOwnerInDatabase:v9 error:error];

  if (v10)
  {
    workoutEventClass = [self workoutEventClass];
    array = [MEMORY[0x277CBEB18] array];
    persistentID = [ownerCopy persistentID];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __64__HDWorkoutEventEntity_workoutEventsForOwner_transaction_error___block_invoke;
    v18[3] = &unk_278621078;
    v19 = array;
    v20 = workoutEventClass;
    v14 = array;
    if ([self enumerateEventsForOwner:persistentID withStatement:v10 error:error eventHandler:v18])
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __64__HDWorkoutEventEntity_workoutEventsForOwner_transaction_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, double a6, double a7)
{
  v13 = MEMORY[0x277CCA970];
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [v13 alloc];
  v18 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a6];
  v20 = [v17 initWithStartDate:v18 duration:a7];

  v19 = [objc_alloc(*(a1 + 40)) initWithWorkoutEventType:a2 sessionUUID:v15 dateInterval:v20 metadata:v16 error:v14];
  [*(a1 + 32) addObject:v19];
}

@end