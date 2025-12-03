@interface HDWorkoutSessionControllerEntity
+ (BOOL)retrieveArchivedStateFromRecoveryIdentifier:(id)identifier workoutSession:(id)session transaction:(id)transaction error:(id *)error block:(id)block;
+ (BOOL)storeArchivedStateWithRecoveryIdentifier:(id)identifier archivedState:(id)state workoutSession:(id)session transaction:(id)transaction error:(id *)error;
+ (id)foreignKeys;
+ (id)uniquedColumns;
@end

@implementation HDWorkoutSessionControllerEntity

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"workout_session_id";
  v2 = +[(HDHealthEntity *)HDWorkoutSessionEntity];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)uniquedColumns
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"workout_session_id";
  v5[1] = @"recovery_identifier";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (BOOL)storeArchivedStateWithRecoveryIdentifier:(id)identifier archivedState:(id)state workoutSession:(id)session transaction:(id)transaction error:(id *)error
{
  v29[3] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  stateCopy = state;
  sessionCopy = session;
  v29[0] = @"workout_session_id";
  v29[1] = @"recovery_identifier";
  v29[2] = @"archived_state";
  v15 = MEMORY[0x277CBEA60];
  transactionCopy = transaction;
  v17 = [v15 arrayWithObjects:v29 count:3];
  v18 = [transactionCopy databaseForEntityClass:self];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __124__HDWorkoutSessionControllerEntity_storeArchivedStateWithRecoveryIdentifier_archivedState_workoutSession_transaction_error___block_invoke;
  v25[3] = &unk_278624170;
  v26 = sessionCopy;
  v27 = identifierCopy;
  v28 = stateCopy;
  v19 = stateCopy;
  v20 = identifierCopy;
  v21 = sessionCopy;
  v22 = [self insertOrReplaceEntity:1 database:v18 properties:v17 error:error bindingHandler:v25];

  v23 = *MEMORY[0x277D85DE8];
  return v22 != 0;
}

void __124__HDWorkoutSessionControllerEntity_storeArchivedStateWithRecoveryIdentifier_archivedState_workoutSession_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"workout_session_id", [*(a1 + 32) persistentID]);
  MEMORY[0x22AAC6BD0](a2, @"recovery_identifier", *(a1 + 40));
  v4 = *(a1 + 48);

  JUMPOUT(0x22AAC6B40);
}

+ (BOOL)retrieveArchivedStateFromRecoveryIdentifier:(id)identifier workoutSession:(id)session transaction:(id)transaction error:(id *)error block:(id)block
{
  v37[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  blockCopy = block;
  transactionCopy = transaction;
  sessionCopy = session;
  v16 = identifierCopy;
  objc_opt_self();
  v17 = [MEMORY[0x277D10B18] predicateWithProperty:@"recovery_identifier" equalToValue:v16];

  v18 = MEMORY[0x277D10B18];
  v19 = MEMORY[0x277CCABB0];
  persistentID = [sessionCopy persistentID];

  v21 = [v19 numberWithLongLong:persistentID];
  v22 = [v18 predicateWithProperty:@"workout_session_id" equalToValue:v21];

  v23 = MEMORY[0x277D10B20];
  v37[0] = v17;
  v37[1] = v22;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  v25 = [v23 predicateMatchingAllPredicates:v24];

  v26 = [transactionCopy databaseForEntityClass:self];

  v27 = [self queryWithDatabase:v26 predicate:v25];

  v36 = @"archived_state";
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __119__HDWorkoutSessionControllerEntity_retrieveArchivedStateFromRecoveryIdentifier_workoutSession_transaction_error_block___block_invoke;
  v33[3] = &unk_27862AFF0;
  v34 = v16;
  v35 = blockCopy;
  v29 = v16;
  v30 = blockCopy;
  LOBYTE(error) = [v27 enumeratePersistentIDsAndProperties:v28 error:error enumerationHandler:v33];

  v31 = *MEMORY[0x277D85DE8];
  return error;
}

uint64_t __119__HDWorkoutSessionControllerEntity_retrieveArchivedStateFromRecoveryIdentifier_workoutSession_transaction_error_block___block_invoke(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsData();
  v3 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  return 0;
}

@end