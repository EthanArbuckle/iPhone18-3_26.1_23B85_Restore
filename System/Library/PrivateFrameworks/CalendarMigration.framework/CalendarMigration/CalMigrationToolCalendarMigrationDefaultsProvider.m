@interface CalMigrationToolCalendarMigrationDefaultsProvider
- (BOOL)isHolidayCalendarEnabled;
- (BOOL)needsMigrationCleanupWithDestinationDirectory:(id)a3;
- (BOOL)shouldBackupBeforeMigration;
- (BOOL)shouldDeleteMigratedData;
- (BOOL)shouldPerformMigrationWithDestinationDirectory:(id)a3;
- (CalMigrationToolCalendarMigrationDefaultsProvider)initWithToolOptions:(id)a3 defaultProvider:(id)a4;
- (NSString)defaultCalendarUUID;
- (void)clearLegacyDefaults;
- (void)migrateLegacyDefaults;
- (void)recordMigrationDidBeginWithDestinationDirectory:(id)a3;
- (void)recordMigrationDidEndWithReason:(unint64_t)a3;
- (void)setDefaultAllDayAlarmOffset:(id)a3;
- (void)setDefaultCalendarUUID:(id)a3;
- (void)setDefaultTimedAlarmOffset:(id)a3;
@end

@implementation CalMigrationToolCalendarMigrationDefaultsProvider

- (CalMigrationToolCalendarMigrationDefaultsProvider)initWithToolOptions:(id)a3 defaultProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CalMigrationToolCalendarMigrationDefaultsProvider;
  v9 = [(CalMigrationToolCalendarMigrationDefaultsProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_toolOptions, a3);
    objc_storeStrong(&v10->_defaultProvider, a4);
  }

  return v10;
}

- (BOOL)shouldPerformMigrationWithDestinationDirectory:(id)a3
{
  v4 = [(CalMigrationToolCalendarMigrationDefaultsProvider *)self toolOptions];
  v5 = [v4 performCalendarMigration];

  if (v5 == 1)
  {
    return 1;
  }

  if (v5 != -1)
  {
    return 0;
  }

  v6 = [(CalMigrationToolCalendarMigrationDefaultsProvider *)self defaultProvider];
  v7 = [(CalMigrationToolCalendarMigrationDefaultsProvider *)self toolOptions];
  v8 = [v7 destinationDirectory];
  v9 = [v6 shouldPerformMigrationWithDestinationDirectory:v8];

  return v9;
}

- (BOOL)shouldBackupBeforeMigration
{
  v3 = [(CalMigrationToolCalendarMigrationDefaultsProvider *)self toolOptions];
  v4 = [v3 backupBeforeCalendarMigration];

  if (v4 == 1)
  {
    return 1;
  }

  if (v4 != -1)
  {
    return 0;
  }

  v5 = [(CalMigrationToolCalendarMigrationDefaultsProvider *)self defaultProvider];
  v6 = [v5 shouldBackupBeforeMigration];

  return v6;
}

- (BOOL)shouldDeleteMigratedData
{
  v3 = [(CalMigrationToolCalendarMigrationDefaultsProvider *)self toolOptions];
  v4 = [v3 deleteMigratedData];

  if (v4 == 1)
  {
    return 1;
  }

  if (v4 != -1)
  {
    return 0;
  }

  v5 = [(CalMigrationToolCalendarMigrationDefaultsProvider *)self defaultProvider];
  v6 = [v5 shouldDeleteMigratedData];

  return v6;
}

- (BOOL)needsMigrationCleanupWithDestinationDirectory:(id)a3
{
  v4 = a3;
  v5 = [(CalMigrationToolCalendarMigrationDefaultsProvider *)self defaultProvider];
  v6 = [v5 needsMigrationCleanupWithDestinationDirectory:v4];

  return v6;
}

- (BOOL)isHolidayCalendarEnabled
{
  v2 = [(CalMigrationToolCalendarMigrationDefaultsProvider *)self defaultProvider];
  v3 = [v2 isHolidayCalendarEnabled];

  return v3;
}

- (void)migrateLegacyDefaults
{
  v2 = [(CalMigrationToolCalendarMigrationDefaultsProvider *)self defaultProvider];
  [v2 migrateLegacyDefaults];
}

- (void)clearLegacyDefaults
{
  v2 = [(CalMigrationToolCalendarMigrationDefaultsProvider *)self defaultProvider];
  [v2 clearLegacyDefaults];
}

- (void)recordMigrationDidBeginWithDestinationDirectory:(id)a3
{
  v4 = a3;
  v5 = [(CalMigrationToolCalendarMigrationDefaultsProvider *)self defaultProvider];
  [v5 recordMigrationDidBeginWithDestinationDirectory:v4];
}

- (void)recordMigrationDidEndWithReason:(unint64_t)a3
{
  v4 = [(CalMigrationToolCalendarMigrationDefaultsProvider *)self defaultProvider];
  [v4 recordMigrationDidEndWithReason:a3];
}

- (void)setDefaultTimedAlarmOffset:(id)a3
{
  v4 = a3;
  v5 = [(CalMigrationToolCalendarMigrationDefaultsProvider *)self defaultProvider];
  [v5 setDefaultTimedAlarmOffset:v4];
}

- (void)setDefaultAllDayAlarmOffset:(id)a3
{
  v4 = a3;
  v5 = [(CalMigrationToolCalendarMigrationDefaultsProvider *)self defaultProvider];
  [v5 setDefaultAllDayAlarmOffset:v4];
}

- (NSString)defaultCalendarUUID
{
  v2 = [(CalMigrationToolCalendarMigrationDefaultsProvider *)self defaultProvider];
  v3 = [v2 defaultCalendarUUID];

  return v3;
}

- (void)setDefaultCalendarUUID:(id)a3
{
  v4 = a3;
  v5 = [(CalMigrationToolCalendarMigrationDefaultsProvider *)self defaultProvider];
  [v5 setDefaultCalendarUUID:v4];
}

@end