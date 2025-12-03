@interface HMDHH2MigrationDailyTotalsLogEvent
- (HMDHH2MigrationDailyTotalsLogEvent)initWithMigrationEventType:(unint64_t)type attemptCount:(id)count error:(id)error;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)initEndWithAutoMigration:(BOOL)migration dryRun:(BOOL)run attemptCount:(id)count error:(id)error;
- (id)initStartWithAutoMigration:(BOOL)migration dryRun:(BOOL)run attemptCount:(id)count;
@end

@implementation HMDHH2MigrationDailyTotalsLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([(HMDHH2MigrationDailyTotalsLogEvent *)self migrationEventType]>= 4)
  {
    v4 = &unk_283E75410;
  }

  else
  {
    v4 = &unk_283E753F8;
  }

  [v3 setObject:v4 forKeyedSubscript:@"startCount"];
  if ([(HMDHH2MigrationDailyTotalsLogEvent *)self migrationEventType]== 1)
  {
    v5 = &unk_283E753F8;
  }

  else
  {
    v5 = &unk_283E75410;
  }

  [v3 setObject:v5 forKeyedSubscript:@"autoStartCount"];
  if ([(HMDHH2MigrationDailyTotalsLogEvent *)self migrationEventType]== 2)
  {
    v6 = &unk_283E753F8;
  }

  else
  {
    v6 = &unk_283E75410;
  }

  [v3 setObject:v6 forKeyedSubscript:@"manualStartCount"];
  if ([(HMDHH2MigrationDailyTotalsLogEvent *)self migrationEventType]== 3)
  {
    v7 = &unk_283E753F8;
  }

  else
  {
    v7 = &unk_283E75410;
  }

  [v3 setObject:v7 forKeyedSubscript:@"dryRunStartCount"];
  if ([(HMDHH2MigrationDailyTotalsLogEvent *)self migrationEventType]<= 3)
  {
    v8 = &unk_283E75410;
  }

  else
  {
    v8 = &unk_283E753F8;
  }

  [v3 setObject:v8 forKeyedSubscript:@"endCount"];
  if ([(HMDHH2MigrationDailyTotalsLogEvent *)self migrationEventType]== 4)
  {
    v9 = &unk_283E753F8;
  }

  else
  {
    v9 = &unk_283E75410;
  }

  [v3 setObject:v9 forKeyedSubscript:@"autoEndCount"];
  if ([(HMDHH2MigrationDailyTotalsLogEvent *)self migrationEventType]== 5)
  {
    v10 = &unk_283E753F8;
  }

  else
  {
    v10 = &unk_283E75410;
  }

  [v3 setObject:v10 forKeyedSubscript:@"manualEndCount"];
  if ([(HMDHH2MigrationDailyTotalsLogEvent *)self migrationEventType]== 6)
  {
    v11 = &unk_283E753F8;
  }

  else
  {
    v11 = &unk_283E75410;
  }

  [v3 setObject:v11 forKeyedSubscript:@"dryRunEndCount"];
  attemptCount = [(HMDHH2MigrationDailyTotalsLogEvent *)self attemptCount];
  if (attemptCount)
  {
    attemptCount2 = [(HMDHH2MigrationDailyTotalsLogEvent *)self attemptCount];
    [v3 setObject:attemptCount2 forKeyedSubscript:@"attemptCount"];
  }

  else
  {
    [v3 setObject:&unk_283E75410 forKeyedSubscript:@"attemptCount"];
  }

  error = [(HMMLogEvent *)self error];
  if (error)
  {
    v15 = &unk_283E753F8;
  }

  else
  {
    v15 = &unk_283E75410;
  }

  [v3 setObject:v15 forKeyedSubscript:@"errorCount"];

  [v3 setObject:&unk_283E753F8 forKeyedSubscript:@"isHH2EnabledCount"];
  v16 = [v3 copy];

  return v16;
}

- (HMDHH2MigrationDailyTotalsLogEvent)initWithMigrationEventType:(unint64_t)type attemptCount:(id)count error:(id)error
{
  countCopy = count;
  errorCopy = error;
  v14.receiver = self;
  v14.super_class = HMDHH2MigrationDailyTotalsLogEvent;
  v11 = [(HMMLogEvent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_migrationEventType = type;
    objc_storeStrong(&v11->_attemptCount, count);
    [(HMMLogEvent *)v12 setError:errorCopy];
  }

  return v12;
}

- (id)initEndWithAutoMigration:(BOOL)migration dryRun:(BOOL)run attemptCount:(id)count error:(id)error
{
  v6 = 5;
  if (run)
  {
    v6 = 6;
  }

  if (migration)
  {
    v7 = 4;
  }

  else
  {
    v7 = v6;
  }

  return [(HMDHH2MigrationDailyTotalsLogEvent *)self initWithMigrationEventType:v7 attemptCount:count error:error];
}

- (id)initStartWithAutoMigration:(BOOL)migration dryRun:(BOOL)run attemptCount:(id)count
{
  v5 = 2;
  if (run)
  {
    v5 = 3;
  }

  if (migration)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  return [(HMDHH2MigrationDailyTotalsLogEvent *)self initWithMigrationEventType:v6 attemptCount:count error:0];
}

@end