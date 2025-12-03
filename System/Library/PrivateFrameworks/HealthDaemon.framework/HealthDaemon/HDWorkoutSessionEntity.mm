@interface HDWorkoutSessionEntity
+ (id)createSessionWithIdentifier:(id)identifier source:(id)source configuration:(id)configuration state:(int64_t)state profile:(id)profile error:(id *)error;
+ (id)foreignKeys;
+ (id)lookupSessionWithIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (id)privateSubEntities;
+ (id)sessionIdentifierForRecoveryInProfile:(id)profile expirationInterval:(double)interval error:(id *)error;
+ (id)sessionIdentifiersForRecoveryInProfile:(id)profile expirationInterval:(double)interval error:(id *)error;
+ (id)sessionsExcludingIdentifiers:(id)identifiers profile:(id)profile error:(id *)error;
+ (id)sessionsForSource:(id)source profile:(id)profile error:(id *)error;
- (BOOL)finishWithTransaction:(id)transaction error:(id *)error;
- (BOOL)insertWorkoutEvent:(id)event transaction:(id)transaction error:(id *)error;
- (BOOL)setActivityConfigurations:(id)configurations transaction:(id)transaction error:(id *)error;
- (BOOL)setCurrentActivity:(id)activity transaction:(id)transaction error:(id *)error;
- (BOOL)setFailureError:(id)error transaction:(id)transaction error:(id *)a5;
- (BOOL)setFirstActivityConfiguration:(id)configuration transaction:(id)transaction error:(id *)error;
- (BOOL)setRequestedTargetState:(int64_t)state transaction:(id)transaction error:(id *)error;
- (BOOL)setState:(int64_t)state transaction:(id)transaction error:(id *)error;
- (BOOL)setWorkoutConfiguration:(id)configuration transaction:(id)transaction error:(id *)error;
- (BOOL)updateLatestActivityDate:(id)date transaction:(id)transaction error:(id *)error;
- (BOOL)updateLatestActivityDateWithTransaction:(id)transaction error:(id *)error;
- (id)activityConfigurationsWithTransaction:(id)transaction error:(id *)error;
- (id)associatedBuilderWithTransaction:(id)transaction error:(id *)error;
- (id)currentActivityWithTransaction:(id)transaction error:(id *)error;
- (id)failureErrorInTransaction:(id)transaction error:(id *)error;
- (id)firstActivityConfigurationWithTransaction:(id)transaction error:(id *)error;
- (id)requestedTargetStateWithTransaction:(id)transaction error:(id *)error;
- (id)sessionIdentifierWithTransaction:(id)transaction error:(id *)error;
- (id)sourceWithTransaction:(id)transaction error:(id *)error;
- (id)stateWithTransaction:(id)transaction error:(id *)error;
- (id)workoutConfigurationWithTransaction:(id)transaction error:(id *)error;
@end

@implementation HDWorkoutSessionEntity

+ (id)lookupSessionWithIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  v8 = MEMORY[0x277D10B18];
  profileCopy = profile;
  v10 = [v8 predicateWithProperty:@"uuid" equalToValue:identifier];
  database = [profileCopy database];

  v12 = [self anyWithPredicate:v10 healthDatabase:database error:error];

  return v12;
}

+ (id)createSessionWithIdentifier:(id)identifier source:(id)source configuration:(id)configuration state:(int64_t)state profile:(id)profile error:(id *)error
{
  v31[7] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  sourceCopy = source;
  configurationCopy = configuration;
  v31[0] = @"uuid";
  v31[1] = @"workout_configuration";
  v31[2] = @"source_id";
  v31[3] = @"state";
  v31[4] = @"requested_target_state";
  v31[5] = @"creation_date";
  v31[6] = @"latest_activity_date";
  v16 = MEMORY[0x277CBEA60];
  profileCopy = profile;
  v18 = [v16 arrayWithObjects:v31 count:7];
  database = [profileCopy database];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __95__HDWorkoutSessionEntity_createSessionWithIdentifier_source_configuration_state_profile_error___block_invoke;
  v26[3] = &unk_27861E1A8;
  v27 = identifierCopy;
  v28 = configurationCopy;
  v29 = sourceCopy;
  stateCopy = state;
  v20 = sourceCopy;
  v21 = configurationCopy;
  v22 = identifierCopy;
  v23 = [(HDHealthEntity *)HDWorkoutSessionEntity insertOrReplaceEntity:0 healthDatabase:database properties:v18 error:error bindingHandler:v26];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

void __95__HDWorkoutSessionEntity_createSessionWithIdentifier_source_configuration_state_profile_error___block_invoke(void *a1, uint64_t a2)
{
  MEMORY[0x22AAC6C00](a2, @"uuid", a1[4]);
  v4 = a1[5];
  HDSQLiteBindSecureCodingObjectToProperty();
  v5 = a1[6];
  if (v5)
  {
    MEMORY[0x22AAC6B90](a2, @"source_id", [v5 persistentID]);
  }

  else
  {
    MEMORY[0x22AAC6BA0](a2, @"source_id");
  }

  MEMORY[0x22AAC6B90](a2, @"state", a1[7]);
  MEMORY[0x22AAC6B90](a2, @"requested_target_state", 1);
  v6 = [MEMORY[0x277CBEAA8] date];
  MEMORY[0x22AAC6B50](a2, @"creation_date", v6);
  MEMORY[0x22AAC6B50](a2, @"latest_activity_date", v6);
}

+ (id)sessionsForSource:(id)source profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  if (source)
  {
    v9 = MEMORY[0x277D10B18];
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(source, "persistentID")}];
    source = [v9 predicateWithProperty:@"source_id" equalToValue:v10];
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  database = [profileCopy database];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __58__HDWorkoutSessionEntity_sessionsForSource_profile_error___block_invoke;
  v19[3] = &unk_278614698;
  v21 = v11;
  selfCopy = self;
  sourceCopy = source;
  v13 = v11;
  sourceCopy2 = source;
  v15 = [self performReadTransactionWithHealthDatabase:database error:error block:v19];

  if (v15)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  return v16;
}

uint64_t __58__HDWorkoutSessionEntity_sessionsForSource_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  v6 = [a2 databaseForEntityClass:v5];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__HDWorkoutSessionEntity_sessionsForSource_profile_error___block_invoke_2;
  v10[3] = &unk_27861E8D0;
  v7 = *(a1 + 32);
  v11 = *(a1 + 40);
  v8 = [v5 enumerateEntitiesInDatabase:v6 predicate:v7 error:a3 enumerationHandler:v10];

  return v8;
}

+ (id)sessionsExcludingIdentifiers:(id)identifiers profile:(id)profile error:(id *)error
{
  v8 = MEMORY[0x277D10B28];
  profileCopy = profile;
  v10 = [v8 doesNotContainPredicateWithProperty:@"uuid" values:identifiers];
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  database = [profileCopy database];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __69__HDWorkoutSessionEntity_sessionsExcludingIdentifiers_profile_error___block_invoke;
  v18[3] = &unk_278614698;
  v20 = v11;
  selfCopy = self;
  v19 = v10;
  v13 = v11;
  v14 = v10;
  LODWORD(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v18];

  if (error)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v15;
}

uint64_t __69__HDWorkoutSessionEntity_sessionsExcludingIdentifiers_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  v6 = [a2 databaseForEntityClass:v5];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__HDWorkoutSessionEntity_sessionsExcludingIdentifiers_profile_error___block_invoke_2;
  v10[3] = &unk_27861E8D0;
  v7 = *(a1 + 32);
  v11 = *(a1 + 40);
  v8 = [v5 enumerateEntitiesInDatabase:v6 predicate:v7 error:a3 enumerationHandler:v10];

  return v8;
}

+ (id)sessionIdentifierForRecoveryInProfile:(id)profile expirationInterval:(double)interval error:(id *)error
{
  v5 = [HDWorkoutSessionEntity sessionIdentifiersForRecoveryInProfile:profile expirationInterval:error error:interval];
  firstObject = [v5 firstObject];

  return firstObject;
}

+ (id)sessionIdentifiersForRecoveryInProfile:(id)profile expirationInterval:(double)interval error:(id *)error
{
  profileCopy = profile;
  v9 = MEMORY[0x277CCACA8];
  disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
  v11 = [v9 stringWithFormat:@"SELECT %@ FROM %@ WHERE %@ >= ? ORDER BY %@ DESC LIMIT 2", @"uuid", disambiguatedDatabaseTable, @"latest_activity_date", @"creation_date"];

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__167;
  v26 = __Block_byref_object_dispose__167;
  v27 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
  database = [profileCopy database];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __90__HDWorkoutSessionEntity_sessionIdentifiersForRecoveryInProfile_expirationInterval_error___block_invoke;
  v17[3] = &unk_27861F0A0;
  selfCopy = self;
  v13 = v11;
  intervalCopy = interval;
  v18 = v13;
  v19 = &v22;
  LODWORD(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v17];

  if (error)
  {
    v14 = v23[5];
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  _Block_object_dispose(&v22, 8);

  return v15;
}

uint64_t __90__HDWorkoutSessionEntity_sessionIdentifiersForRecoveryInProfile_expirationInterval_error___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:a1[6]];
  v6 = a1[4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __90__HDWorkoutSessionEntity_sessionIdentifiersForRecoveryInProfile_expirationInterval_error___block_invoke_2;
  v10[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v10[4] = a1[7];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __90__HDWorkoutSessionEntity_sessionIdentifiersForRecoveryInProfile_expirationInterval_error___block_invoke_3;
  v9[3] = &unk_278614620;
  v9[4] = a1[5];
  v7 = [v5 executeSQL:v6 error:a3 bindingHandler:v10 enumerationHandler:v9];

  return v7;
}

uint64_t __90__HDWorkoutSessionEntity_sessionIdentifiersForRecoveryInProfile_expirationInterval_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = CFAbsoluteTimeGetCurrent() - *(a1 + 32);

  return sqlite3_bind_double(a2, 1, v3);
}

uint64_t __90__HDWorkoutSessionEntity_sessionIdentifiersForRecoveryInProfile_expirationInterval_error___block_invoke_3(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  v2 = HDSQLiteColumnWithNameAsUUID();
  [v1 addObject:v2];

  return 1;
}

- (id)sessionIdentifierWithTransaction:(id)transaction error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__167;
  v18 = __Block_byref_object_dispose__167;
  v19 = 0;
  v20[0] = @"uuid";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v8 = [transactionCopy databaseForEntity:self];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__HDWorkoutSessionEntity_sessionIdentifierWithTransaction_error___block_invoke;
  v13[3] = &unk_278618B98;
  v13[4] = &v14;
  LODWORD(error) = [(HDSQLiteEntity *)self getValuesForProperties:v7 database:v8 error:error handler:v13];

  if (error)
  {
    v9 = v15[5];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  _Block_object_dispose(&v14, 8);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __65__HDWorkoutSessionEntity_sessionIdentifierWithTransaction_error___block_invoke(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsUUID();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)workoutConfigurationWithTransaction:(id)transaction error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__167;
  v18 = __Block_byref_object_dispose__167;
  v19 = 0;
  v20[0] = @"workout_configuration";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v8 = [transactionCopy databaseForEntity:self];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__HDWorkoutSessionEntity_workoutConfigurationWithTransaction_error___block_invoke;
  v13[3] = &unk_278618B98;
  v13[4] = &v14;
  LODWORD(error) = [(HDSQLiteEntity *)self getValuesForProperties:v7 database:v8 error:error handler:v13];

  if (error)
  {
    v9 = v15[5];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  _Block_object_dispose(&v14, 8);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __68__HDWorkoutSessionEntity_workoutConfigurationWithTransaction_error___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = HDSQLiteColumnWithNameAsObject();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (BOOL)setWorkoutConfiguration:(id)configuration transaction:(id)transaction error:(id *)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v18[0] = @"workout_configuration";
  v9 = MEMORY[0x277CBEA60];
  transactionCopy = transaction;
  v11 = [v9 arrayWithObjects:v18 count:1];
  v12 = [transactionCopy databaseForEntity:self];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__HDWorkoutSessionEntity_setWorkoutConfiguration_transaction_error___block_invoke;
  v16[3] = &unk_278614508;
  v17 = configurationCopy;
  v13 = configurationCopy;
  LOBYTE(error) = [(HDSQLiteEntity *)self updateProperties:v11 database:v12 error:error bindingHandler:v16];

  v14 = *MEMORY[0x277D85DE8];
  return error;
}

- (id)currentActivityWithTransaction:(id)transaction error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__167;
  v18 = __Block_byref_object_dispose__167;
  v19 = 0;
  v20[0] = @"current_activity";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v8 = [transactionCopy databaseForEntity:self];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__HDWorkoutSessionEntity_currentActivityWithTransaction_error___block_invoke;
  v13[3] = &unk_278618B98;
  v13[4] = &v14;
  LODWORD(error) = [(HDSQLiteEntity *)self getValuesForProperties:v7 database:v8 error:error handler:v13];

  if (error)
  {
    v9 = v15[5];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  _Block_object_dispose(&v14, 8);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __63__HDWorkoutSessionEntity_currentActivityWithTransaction_error___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = HDSQLiteColumnWithNameAsObject();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (BOOL)setCurrentActivity:(id)activity transaction:(id)transaction error:(id *)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v18[0] = @"current_activity";
  v9 = MEMORY[0x277CBEA60];
  transactionCopy = transaction;
  v11 = [v9 arrayWithObjects:v18 count:1];
  v12 = [transactionCopy databaseForEntity:self];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__HDWorkoutSessionEntity_setCurrentActivity_transaction_error___block_invoke;
  v16[3] = &unk_278614508;
  v17 = activityCopy;
  v13 = activityCopy;
  LOBYTE(error) = [(HDSQLiteEntity *)self updateProperties:v11 database:v12 error:error bindingHandler:v16];

  v14 = *MEMORY[0x277D85DE8];
  return error;
}

- (id)activityConfigurationsWithTransaction:(id)transaction error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__167;
  v18 = __Block_byref_object_dispose__167;
  v19 = 0;
  v20[0] = @"activity_configurations";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v8 = [transactionCopy databaseForEntity:self];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__HDWorkoutSessionEntity_activityConfigurationsWithTransaction_error___block_invoke;
  v13[3] = &unk_278618B98;
  v13[4] = &v14;
  LODWORD(error) = [(HDSQLiteEntity *)self getValuesForProperties:v7 database:v8 error:error handler:v13];

  if (error)
  {
    v9 = v15[5];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  _Block_object_dispose(&v14, 8);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __70__HDWorkoutSessionEntity_activityConfigurationsWithTransaction_error___block_invoke(uint64_t a1)
{
  if (HDSQLiteColumnWithNameIsNull())
  {
    v2 = *(*(a1 + 32) + 8);
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;
  }

  else
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = objc_opt_class();
    v9 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
    v6 = HDSQLiteColumnWithNameAsObjectWithClasses();
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v3 = v9;
  }
}

- (BOOL)setActivityConfigurations:(id)configurations transaction:(id)transaction error:(id *)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  configurationsCopy = configurations;
  v18[0] = @"activity_configurations";
  v9 = MEMORY[0x277CBEA60];
  transactionCopy = transaction;
  v11 = [v9 arrayWithObjects:v18 count:1];
  v12 = [transactionCopy databaseForEntity:self];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__HDWorkoutSessionEntity_setActivityConfigurations_transaction_error___block_invoke;
  v16[3] = &unk_278614508;
  v17 = configurationsCopy;
  v13 = configurationsCopy;
  LOBYTE(error) = [(HDSQLiteEntity *)self updateProperties:v11 database:v12 error:error bindingHandler:v16];

  v14 = *MEMORY[0x277D85DE8];
  return error;
}

- (id)firstActivityConfigurationWithTransaction:(id)transaction error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__167;
  v18 = __Block_byref_object_dispose__167;
  v19 = 0;
  v20[0] = @"first_activity_configuration";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v8 = [transactionCopy databaseForEntity:self];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__HDWorkoutSessionEntity_firstActivityConfigurationWithTransaction_error___block_invoke;
  v13[3] = &unk_278618B98;
  v13[4] = &v14;
  LODWORD(error) = [(HDSQLiteEntity *)self getValuesForProperties:v7 database:v8 error:error handler:v13];

  if (error)
  {
    v9 = v15[5];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  _Block_object_dispose(&v14, 8);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __74__HDWorkoutSessionEntity_firstActivityConfigurationWithTransaction_error___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = HDSQLiteColumnWithNameAsObject();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (BOOL)setFirstActivityConfiguration:(id)configuration transaction:(id)transaction error:(id *)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v18[0] = @"first_activity_configuration";
  v9 = MEMORY[0x277CBEA60];
  transactionCopy = transaction;
  v11 = [v9 arrayWithObjects:v18 count:1];
  v12 = [transactionCopy databaseForEntity:self];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__HDWorkoutSessionEntity_setFirstActivityConfiguration_transaction_error___block_invoke;
  v16[3] = &unk_278614508;
  v17 = configurationCopy;
  v13 = configurationCopy;
  LOBYTE(error) = [(HDSQLiteEntity *)self updateProperties:v11 database:v12 error:error bindingHandler:v16];

  v14 = *MEMORY[0x277D85DE8];
  return error;
}

- (id)failureErrorInTransaction:(id)transaction error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__167;
  v18 = __Block_byref_object_dispose__167;
  v19 = 0;
  v20[0] = @"failure_error";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v8 = [transactionCopy databaseForEntity:self];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__HDWorkoutSessionEntity_failureErrorInTransaction_error___block_invoke;
  v13[3] = &unk_278618B98;
  v13[4] = &v14;
  LODWORD(error) = [(HDSQLiteEntity *)self getValuesForProperties:v7 database:v8 error:error handler:v13];

  if (error)
  {
    v9 = v15[5];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  _Block_object_dispose(&v14, 8);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __58__HDWorkoutSessionEntity_failureErrorInTransaction_error___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = HDSQLiteColumnWithNameAsObject();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (BOOL)setFailureError:(id)error transaction:(id)transaction error:(id *)a5
{
  v18[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v18[0] = @"failure_error";
  v9 = MEMORY[0x277CBEA60];
  transactionCopy = transaction;
  v11 = [v9 arrayWithObjects:v18 count:1];
  v12 = [transactionCopy databaseForEntity:self];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__HDWorkoutSessionEntity_setFailureError_transaction_error___block_invoke;
  v16[3] = &unk_278614508;
  v17 = errorCopy;
  v13 = errorCopy;
  LOBYTE(a5) = [(HDSQLiteEntity *)self updateProperties:v11 database:v12 error:a5 bindingHandler:v16];

  v14 = *MEMORY[0x277D85DE8];
  return a5;
}

- (id)sourceWithTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v7 = [(HDHealthEntity *)self foreignKeyEntity:objc_opt_class() forProperty:@"source_id" transaction:transactionCopy error:error];

  return v7;
}

- (id)associatedBuilderWithTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v7 = [(HDHealthEntity *)self foreignKeyEntity:objc_opt_class() forProperty:@"builder_id" transaction:transactionCopy error:error];

  return v7;
}

- (id)stateWithTransaction:(id)transaction error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__167;
  v18 = __Block_byref_object_dispose__167;
  v19 = 0;
  v20[0] = @"state";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v8 = [transactionCopy databaseForEntity:self];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__HDWorkoutSessionEntity_stateWithTransaction_error___block_invoke;
  v13[3] = &unk_278618B98;
  v13[4] = &v14;
  LODWORD(error) = [(HDSQLiteEntity *)self getValuesForProperties:v7 database:v8 error:error handler:v13];

  if (error)
  {
    v9 = v15[5];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  _Block_object_dispose(&v14, 8);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __53__HDWorkoutSessionEntity_stateWithTransaction_error___block_invoke(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsNumber();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (BOOL)setState:(int64_t)state transaction:(id)transaction error:(id *)error
{
  v15[2] = *MEMORY[0x277D85DE8];
  v15[0] = @"state";
  v15[1] = @"latest_activity_date";
  v8 = MEMORY[0x277CBEA60];
  transactionCopy = transaction;
  v10 = [v8 arrayWithObjects:v15 count:2];
  v11 = [transactionCopy databaseForEntity:self];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__HDWorkoutSessionEntity_setState_transaction_error___block_invoke;
  v14[3] = &__block_descriptor_40_e34_v16__0__HDSQLiteStatementBinder__8l;
  v14[4] = state;
  LOBYTE(error) = [(HDSQLiteEntity *)self updateProperties:v10 database:v11 error:error bindingHandler:v14];

  v12 = *MEMORY[0x277D85DE8];
  return error;
}

void __53__HDWorkoutSessionEntity_setState_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"state", *(a1 + 32));
  v3 = [MEMORY[0x277CBEAA8] date];
  MEMORY[0x22AAC6B50](a2, @"latest_activity_date", v3);
}

- (id)requestedTargetStateWithTransaction:(id)transaction error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__167;
  v18 = __Block_byref_object_dispose__167;
  v19 = 0;
  v20[0] = @"requested_target_state";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v8 = [transactionCopy databaseForEntity:self];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__HDWorkoutSessionEntity_requestedTargetStateWithTransaction_error___block_invoke;
  v13[3] = &unk_278618B98;
  v13[4] = &v14;
  LODWORD(error) = [(HDSQLiteEntity *)self getValuesForProperties:v7 database:v8 error:error handler:v13];

  if (error)
  {
    v9 = v15[5];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  _Block_object_dispose(&v14, 8);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __68__HDWorkoutSessionEntity_requestedTargetStateWithTransaction_error___block_invoke(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsNumber();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (BOOL)setRequestedTargetState:(int64_t)state transaction:(id)transaction error:(id *)error
{
  v15[2] = *MEMORY[0x277D85DE8];
  v15[0] = @"requested_target_state";
  v15[1] = @"latest_activity_date";
  v8 = MEMORY[0x277CBEA60];
  transactionCopy = transaction;
  v10 = [v8 arrayWithObjects:v15 count:2];
  v11 = [transactionCopy databaseForEntity:self];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__HDWorkoutSessionEntity_setRequestedTargetState_transaction_error___block_invoke;
  v14[3] = &__block_descriptor_40_e34_v16__0__HDSQLiteStatementBinder__8l;
  v14[4] = state;
  LOBYTE(error) = [(HDSQLiteEntity *)self updateProperties:v10 database:v11 error:error bindingHandler:v14];

  v12 = *MEMORY[0x277D85DE8];
  return error;
}

void __68__HDWorkoutSessionEntity_setRequestedTargetState_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6B90](a2, @"requested_target_state", *(a1 + 32));
  v3 = [MEMORY[0x277CBEAA8] date];
  MEMORY[0x22AAC6B50](a2, @"latest_activity_date", v3);
}

- (BOOL)insertWorkoutEvent:(id)event transaction:(id)transaction error:(id *)error
{
  v8 = MEMORY[0x277CCABB0];
  transactionCopy = transaction;
  eventCopy = event;
  v11 = [v8 numberWithLongLong:{-[HDSQLiteEntity persistentID](self, "persistentID")}];
  v12 = [transactionCopy databaseForEntity:self];

  v13 = [(HDWorkoutEventEntity *)HDWorkoutSessionEventEntity insertPersistableWorkoutEvent:eventCopy ownerID:v11 database:v12 error:error];

  return v13 != 0;
}

- (BOOL)finishWithTransaction:(id)transaction error:(id *)error
{
  v6 = [transaction databaseForEntity:self];
  LOBYTE(error) = [(HDSQLiteEntity *)self deleteFromDatabase:v6 error:error];

  return error;
}

- (BOOL)updateLatestActivityDateWithTransaction:(id)transaction error:(id *)error
{
  v6 = MEMORY[0x277CBEAA8];
  transactionCopy = transaction;
  date = [v6 date];
  LOBYTE(error) = [(HDWorkoutSessionEntity *)self updateLatestActivityDate:date transaction:transactionCopy error:error];

  return error;
}

- (BOOL)updateLatestActivityDate:(id)date transaction:(id)transaction error:(id *)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v18[0] = @"latest_activity_date";
  v9 = MEMORY[0x277CBEA60];
  transactionCopy = transaction;
  v11 = [v9 arrayWithObjects:v18 count:1];
  v12 = [transactionCopy databaseForEntity:self];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__HDWorkoutSessionEntity_updateLatestActivityDate_transaction_error___block_invoke;
  v16[3] = &unk_278614508;
  v17 = dateCopy;
  v13 = dateCopy;
  LOBYTE(error) = [(HDSQLiteEntity *)self updateProperties:v11 database:v12 error:error bindingHandler:v16];

  v14 = *MEMORY[0x277D85DE8];
  return error;
}

+ (id)foreignKeys
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"source_id";
  v2 = +[(HDHealthEntity *)HDSourceEntity];
  v8[1] = @"builder_id";
  v9[0] = v2;
  v3 = objc_alloc(MEMORY[0x277D10B38]);
  v4 = [v3 initWithEntityClass:objc_opt_class() property:*MEMORY[0x277D10A40] deletionAction:3];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)privateSubEntities
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end