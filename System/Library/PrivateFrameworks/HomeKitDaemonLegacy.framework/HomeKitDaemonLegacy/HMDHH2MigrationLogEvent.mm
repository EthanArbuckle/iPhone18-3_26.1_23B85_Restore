@interface HMDHH2MigrationLogEvent
- (HMDHH2MigrationLogEvent)initWithAutoMigration:(BOOL)a3 isDryRun:(BOOL)a4 migrationSuccessful:(BOOL)a5 totalMigrationTime:(int64_t)a6 totalMigrationAttempt:(int64_t)a7 migrationError:(id)a8 failureReason:(id)a9 coreDataValidationEntityClassName:(id)a10 coreDataValidationAttributeName:(id)a11 localizedErrorDescription:(id)a12;
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

  v10 = [(HMDHH2MigrationLogEvent *)self failureReason];
  [v3 setObject:v10 forKeyedSubscript:@"migrationFailureReason"];

  v11 = [(HMDHH2MigrationLogEvent *)self coreDataValidationEntityClassName];
  [v3 setObject:v11 forKeyedSubscript:@"validationEntityClassName"];

  v12 = [(HMDHH2MigrationLogEvent *)self coreDataValidationAttributeName];
  [v3 setObject:v12 forKeyedSubscript:@"validationAttributeName"];

  v13 = [(HMDHH2MigrationLogEvent *)self localizedErrorDescription];
  [v3 setObject:v13 forKeyedSubscript:@"localizedDescription"];

  v14 = objc_autoreleasePoolPush();
  v15 = objc_alloc_init(HMDHH2MigrationStateLogger);
  [(HMDHH2MigrationStateLogger *)v15 resetStoredMigrationState];

  objc_autoreleasePoolPop(v14);
  v16 = [v3 copy];

  return v16;
}

- (HMDHH2MigrationLogEvent)initWithAutoMigration:(BOOL)a3 isDryRun:(BOOL)a4 migrationSuccessful:(BOOL)a5 totalMigrationTime:(int64_t)a6 totalMigrationAttempt:(int64_t)a7 migrationError:(id)a8 failureReason:(id)a9 coreDataValidationEntityClassName:(id)a10 coreDataValidationAttributeName:(id)a11 localizedErrorDescription:(id)a12
{
  v15 = a8;
  v25 = a9;
  v24 = a10;
  v16 = a11;
  v17 = a12;
  v26.receiver = self;
  v26.super_class = HMDHH2MigrationLogEvent;
  v18 = [(HMMLogEvent *)&v26 init];
  v19 = v18;
  if (v18)
  {
    v18->_autoMigration = a3;
    v18->_dryRun = a4;
    v18->_migrationSuccessful = a5;
    v18->_totalTimeTakenForMigration = a6;
    v18->_migrationAttempt = a7;
    objc_storeStrong(&v18->_failureReason, a9);
    objc_storeStrong(&v19->_coreDataValidationAttributeName, a11);
    objc_storeStrong(&v19->_coreDataValidationEntityClassName, a10);
    objc_storeStrong(&v19->_localizedErrorDescription, a12);
    [(HMMLogEvent *)v19 setError:v15];
  }

  return v19;
}

@end