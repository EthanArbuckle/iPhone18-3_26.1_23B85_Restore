@interface BRRTCMigrationMetric
- (BRRTCMigrationMetric)init;
- (id)dictionaryRepresentation;
@end

@implementation BRRTCMigrationMetric

- (BRRTCMigrationMetric)init
{
  v6.receiver = self;
  v6.super_class = BRRTCMigrationMetric;
  v2 = [(BRRTCMigrationMetric *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    transactionPhases = v2->_transactionPhases;
    v2->_transactionPhases = v3;
  }

  return v2;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = v3;
  migrationBeganTime = self->_migrationBeganTime;
  if (migrationBeganTime)
  {
    [v3 setObject:migrationBeganTime forKey:@"MigrationBeganTime"];
  }

  if (self->_isAutomation)
  {
    v6 = MEMORY[0x277CBEC38];
  }

  else
  {
    v6 = MEMORY[0x277CBEC28];
  }

  [v4 setObject:v6 forKey:@"IsAutomation"];
  suspectTransaction = self->_suspectTransaction;
  if (suspectTransaction)
  {
    [v4 setObject:suspectTransaction forKey:@"SuspectTransaction"];
  }

  migrationFailureCode = self->_migrationFailureCode;
  if (migrationFailureCode)
  {
    [v4 setObject:migrationFailureCode forKey:@"MigrationErrorCode"];
  }

  migrationFailureDescription = self->_migrationFailureDescription;
  if (migrationFailureDescription)
  {
    [v4 setObject:migrationFailureDescription forKey:@"MigrationErrorDescription"];
  }

  migrationFailureDomain = self->_migrationFailureDomain;
  if (migrationFailureDomain)
  {
    [v4 setObject:migrationFailureDomain forKey:@"MigrationErrorDomain"];
  }

  if (self->_sessionID)
  {
    sessionID = self->_sessionID;
  }

  else
  {
    sessionID = @"nil";
  }

  [v4 setObject:sessionID forKey:@"MetricSessionID"];
  if (self->_migrationFailedBTKeysNotSynced)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v4 setObject:v12 forKey:@"MigrationFailedBTKeysNotSynced"];
  }

  if (self->_migrationDeviceUnpairedBecauseKeychainIsOff)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v4 setObject:v13 forKey:@"MigrationDeviceUnpairedBecauseKeychainIsOff"];
  }

  if (self->_migrationDeviceUnpairedBecauseStale)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v4 setObject:v14 forKey:@"MigrationDeviceUnpairedBecauseStale"];
  }

  if (self->_migrationDeviceUnpairedByUserAction)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v4 setObject:v15 forKey:@"MigrationDeviceUnpairedByUserAction"];
  }

  lastActiveDate = self->_lastActiveDate;
  if (lastActiveDate)
  {
    [v4 setObject:lastActiveDate forKey:@"MigrationLastActiveDate"];
  }

  if (self->_migrationSucceeded)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v4 setObject:v17 forKey:@"MigrationSucceeded"];
  }

  else
  {
    [v4 setObject:MEMORY[0x277CBEC28] forKey:@"MigrationSucceeded"];
  }

  v18 = [(BRRTCMigrationMetric *)self deviceDetails];
  v19 = [v18 dictionaryOfMetricKeysWithRecordedValues];
  [v4 addEntriesFromDictionary:v19];

  [v4 addEntriesFromDictionary:self->_transactionPhases];

  return v4;
}

@end