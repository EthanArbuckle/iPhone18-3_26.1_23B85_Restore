@interface HMDHH2MigrationDailyTotalsLogEvent
- (HMDHH2MigrationDailyTotalsLogEvent)initWithMigrationEventType:(unint64_t)a3 attemptCount:(id)a4 error:(id)a5;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)initEndWithAutoMigration:(BOOL)a3 dryRun:(BOOL)a4 attemptCount:(id)a5 error:(id)a6;
- (id)initStartWithAutoMigration:(BOOL)a3 dryRun:(BOOL)a4 attemptCount:(id)a5;
@end

@implementation HMDHH2MigrationDailyTotalsLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([(HMDHH2MigrationDailyTotalsLogEvent *)self migrationEventType]>= 4)
  {
    v4 = &unk_286628B88;
  }

  else
  {
    v4 = &unk_286628B70;
  }

  [v3 setObject:v4 forKeyedSubscript:@"startCount"];
  if ([(HMDHH2MigrationDailyTotalsLogEvent *)self migrationEventType]== 1)
  {
    v5 = &unk_286628B70;
  }

  else
  {
    v5 = &unk_286628B88;
  }

  [v3 setObject:v5 forKeyedSubscript:@"autoStartCount"];
  if ([(HMDHH2MigrationDailyTotalsLogEvent *)self migrationEventType]== 2)
  {
    v6 = &unk_286628B70;
  }

  else
  {
    v6 = &unk_286628B88;
  }

  [v3 setObject:v6 forKeyedSubscript:@"manualStartCount"];
  if ([(HMDHH2MigrationDailyTotalsLogEvent *)self migrationEventType]== 3)
  {
    v7 = &unk_286628B70;
  }

  else
  {
    v7 = &unk_286628B88;
  }

  [v3 setObject:v7 forKeyedSubscript:@"dryRunStartCount"];
  if ([(HMDHH2MigrationDailyTotalsLogEvent *)self migrationEventType]<= 3)
  {
    v8 = &unk_286628B88;
  }

  else
  {
    v8 = &unk_286628B70;
  }

  [v3 setObject:v8 forKeyedSubscript:@"endCount"];
  if ([(HMDHH2MigrationDailyTotalsLogEvent *)self migrationEventType]== 4)
  {
    v9 = &unk_286628B70;
  }

  else
  {
    v9 = &unk_286628B88;
  }

  [v3 setObject:v9 forKeyedSubscript:@"autoEndCount"];
  if ([(HMDHH2MigrationDailyTotalsLogEvent *)self migrationEventType]== 5)
  {
    v10 = &unk_286628B70;
  }

  else
  {
    v10 = &unk_286628B88;
  }

  [v3 setObject:v10 forKeyedSubscript:@"manualEndCount"];
  if ([(HMDHH2MigrationDailyTotalsLogEvent *)self migrationEventType]== 6)
  {
    v11 = &unk_286628B70;
  }

  else
  {
    v11 = &unk_286628B88;
  }

  [v3 setObject:v11 forKeyedSubscript:@"dryRunEndCount"];
  v12 = [(HMDHH2MigrationDailyTotalsLogEvent *)self attemptCount];
  if (v12)
  {
    v13 = [(HMDHH2MigrationDailyTotalsLogEvent *)self attemptCount];
    [v3 setObject:v13 forKeyedSubscript:@"attemptCount"];
  }

  else
  {
    [v3 setObject:&unk_286628B88 forKeyedSubscript:@"attemptCount"];
  }

  v14 = [(HMMLogEvent *)self error];
  if (v14)
  {
    v15 = &unk_286628B70;
  }

  else
  {
    v15 = &unk_286628B88;
  }

  [v3 setObject:v15 forKeyedSubscript:@"errorCount"];

  [v3 setObject:&unk_286628B88 forKeyedSubscript:@"isHH2EnabledCount"];
  v16 = [v3 copy];

  return v16;
}

- (HMDHH2MigrationDailyTotalsLogEvent)initWithMigrationEventType:(unint64_t)a3 attemptCount:(id)a4 error:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HMDHH2MigrationDailyTotalsLogEvent;
  v11 = [(HMMLogEvent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_migrationEventType = a3;
    objc_storeStrong(&v11->_attemptCount, a4);
    [(HMMLogEvent *)v12 setError:v10];
  }

  return v12;
}

- (id)initEndWithAutoMigration:(BOOL)a3 dryRun:(BOOL)a4 attemptCount:(id)a5 error:(id)a6
{
  v6 = 5;
  if (a4)
  {
    v6 = 6;
  }

  if (a3)
  {
    v7 = 4;
  }

  else
  {
    v7 = v6;
  }

  return [(HMDHH2MigrationDailyTotalsLogEvent *)self initWithMigrationEventType:v7 attemptCount:a5 error:a6];
}

- (id)initStartWithAutoMigration:(BOOL)a3 dryRun:(BOOL)a4 attemptCount:(id)a5
{
  v5 = 2;
  if (a4)
  {
    v5 = 3;
  }

  if (a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  return [(HMDHH2MigrationDailyTotalsLogEvent *)self initWithMigrationEventType:v6 attemptCount:a5 error:0];
}

@end