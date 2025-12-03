@interface HMDHH2MigrationLogEvent
- (HMDHH2MigrationLogEvent)initWithAutoMigration:(BOOL)migration isDryRun:(BOOL)run migrationSuccessful:(BOOL)successful totalMigrationTime:(int64_t)time totalMigrationAttempt:(int64_t)attempt migrationError:(id)error failureReason:(id)reason coreDataValidationEntityClassName:(id)self0 coreDataValidationAttributeName:(id)self1 localizedErrorDescription:(id)self2;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDHH2MigrationLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHH2MigrationLogEvent isAutoMigration](self, "isAutoMigration")}];
  [v3 setObject:v4 forKeyedSubscript:@"isAutoMigration"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHH2MigrationLogEvent isDryRun](self, "isDryRun")}];
  [v3 setObject:v5 forKeyedSubscript:@"isDryRun"];

  v6 = MEMORY[0x277CCABB0];
  [(HMDHH2MigrationLogEvent *)self totalTimeTakenForMigration];
  v7 = [v6 numberWithDouble:?];
  [v3 setObject:v7 forKeyedSubscript:@"migrationTotalTime"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHH2MigrationLogEvent isMigrationSuccessful](self, "isMigrationSuccessful")}];
  [v3 setObject:v8 forKeyedSubscript:@"migrationSuccess"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHH2MigrationLogEvent migrationAttempt](self, "migrationAttempt")}];
  [v3 setObject:v9 forKeyedSubscript:@"migrationAttemptCount"];

  failureReason = [(HMDHH2MigrationLogEvent *)self failureReason];
  [v3 setObject:failureReason forKeyedSubscript:@"migrationFailureReason"];

  coreDataValidationEntityClassName = [(HMDHH2MigrationLogEvent *)self coreDataValidationEntityClassName];
  [v3 setObject:coreDataValidationEntityClassName forKeyedSubscript:@"validationEntityClassName"];

  coreDataValidationAttributeName = [(HMDHH2MigrationLogEvent *)self coreDataValidationAttributeName];
  [v3 setObject:coreDataValidationAttributeName forKeyedSubscript:@"validationAttributeName"];

  localizedErrorDescription = [(HMDHH2MigrationLogEvent *)self localizedErrorDescription];
  [v3 setObject:localizedErrorDescription forKeyedSubscript:@"localizedDescription"];

  v14 = objc_autoreleasePoolPush();
  v15 = objc_alloc_init(HMDHH2MigrationStateLogger);
  [(HMDHH2MigrationStateLogger *)v15 resetStoredMigrationState];

  objc_autoreleasePoolPop(v14);
  v16 = [v3 copy];

  return v16;
}

- (HMDHH2MigrationLogEvent)initWithAutoMigration:(BOOL)migration isDryRun:(BOOL)run migrationSuccessful:(BOOL)successful totalMigrationTime:(int64_t)time totalMigrationAttempt:(int64_t)attempt migrationError:(id)error failureReason:(id)reason coreDataValidationEntityClassName:(id)self0 coreDataValidationAttributeName:(id)self1 localizedErrorDescription:(id)self2
{
  errorCopy = error;
  reasonCopy = reason;
  nameCopy = name;
  attributeNameCopy = attributeName;
  descriptionCopy = description;
  v26.receiver = self;
  v26.super_class = HMDHH2MigrationLogEvent;
  v18 = [(HMMLogEvent *)&v26 init];
  v19 = v18;
  if (v18)
  {
    v18->_autoMigration = migration;
    v18->_dryRun = run;
    v18->_migrationSuccessful = successful;
    v18->_totalTimeTakenForMigration = time;
    v18->_migrationAttempt = attempt;
    objc_storeStrong(&v18->_failureReason, reason);
    objc_storeStrong(&v19->_coreDataValidationAttributeName, attributeName);
    objc_storeStrong(&v19->_coreDataValidationEntityClassName, name);
    objc_storeStrong(&v19->_localizedErrorDescription, description);
    [(HMMLogEvent *)v19 setError:errorCopy];
  }

  return v19;
}

@end