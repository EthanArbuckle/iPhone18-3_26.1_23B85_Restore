@interface CalMigrationToolCalendarMigrationDefaultsProvider
- (BOOL)isHolidayCalendarEnabled;
- (BOOL)needsMigrationCleanupWithDestinationDirectory:(id)directory;
- (BOOL)shouldBackupBeforeMigration;
- (BOOL)shouldDeleteMigratedData;
- (BOOL)shouldPerformMigrationWithDestinationDirectory:(id)directory;
- (CalMigrationToolCalendarMigrationDefaultsProvider)initWithToolOptions:(id)options defaultProvider:(id)provider;
- (NSString)defaultCalendarUUID;
- (void)clearLegacyDefaults;
- (void)migrateLegacyDefaults;
- (void)recordMigrationDidBeginWithDestinationDirectory:(id)directory;
- (void)recordMigrationDidEndWithReason:(unint64_t)reason;
- (void)setDefaultAllDayAlarmOffset:(id)offset;
- (void)setDefaultCalendarUUID:(id)d;
- (void)setDefaultTimedAlarmOffset:(id)offset;
@end

@implementation CalMigrationToolCalendarMigrationDefaultsProvider

- (CalMigrationToolCalendarMigrationDefaultsProvider)initWithToolOptions:(id)options defaultProvider:(id)provider
{
  optionsCopy = options;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = CalMigrationToolCalendarMigrationDefaultsProvider;
  v9 = [(CalMigrationToolCalendarMigrationDefaultsProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_toolOptions, options);
    objc_storeStrong(&v10->_defaultProvider, provider);
  }

  return v10;
}

- (BOOL)shouldPerformMigrationWithDestinationDirectory:(id)directory
{
  toolOptions = [(CalMigrationToolCalendarMigrationDefaultsProvider *)self toolOptions];
  performCalendarMigration = [toolOptions performCalendarMigration];

  if (performCalendarMigration == 1)
  {
    return 1;
  }

  if (performCalendarMigration != -1)
  {
    return 0;
  }

  defaultProvider = [(CalMigrationToolCalendarMigrationDefaultsProvider *)self defaultProvider];
  toolOptions2 = [(CalMigrationToolCalendarMigrationDefaultsProvider *)self toolOptions];
  destinationDirectory = [toolOptions2 destinationDirectory];
  v9 = [defaultProvider shouldPerformMigrationWithDestinationDirectory:destinationDirectory];

  return v9;
}

- (BOOL)shouldBackupBeforeMigration
{
  toolOptions = [(CalMigrationToolCalendarMigrationDefaultsProvider *)self toolOptions];
  backupBeforeCalendarMigration = [toolOptions backupBeforeCalendarMigration];

  if (backupBeforeCalendarMigration == 1)
  {
    return 1;
  }

  if (backupBeforeCalendarMigration != -1)
  {
    return 0;
  }

  defaultProvider = [(CalMigrationToolCalendarMigrationDefaultsProvider *)self defaultProvider];
  shouldBackupBeforeMigration = [defaultProvider shouldBackupBeforeMigration];

  return shouldBackupBeforeMigration;
}

- (BOOL)shouldDeleteMigratedData
{
  toolOptions = [(CalMigrationToolCalendarMigrationDefaultsProvider *)self toolOptions];
  deleteMigratedData = [toolOptions deleteMigratedData];

  if (deleteMigratedData == 1)
  {
    return 1;
  }

  if (deleteMigratedData != -1)
  {
    return 0;
  }

  defaultProvider = [(CalMigrationToolCalendarMigrationDefaultsProvider *)self defaultProvider];
  shouldDeleteMigratedData = [defaultProvider shouldDeleteMigratedData];

  return shouldDeleteMigratedData;
}

- (BOOL)needsMigrationCleanupWithDestinationDirectory:(id)directory
{
  directoryCopy = directory;
  defaultProvider = [(CalMigrationToolCalendarMigrationDefaultsProvider *)self defaultProvider];
  v6 = [defaultProvider needsMigrationCleanupWithDestinationDirectory:directoryCopy];

  return v6;
}

- (BOOL)isHolidayCalendarEnabled
{
  defaultProvider = [(CalMigrationToolCalendarMigrationDefaultsProvider *)self defaultProvider];
  isHolidayCalendarEnabled = [defaultProvider isHolidayCalendarEnabled];

  return isHolidayCalendarEnabled;
}

- (void)migrateLegacyDefaults
{
  defaultProvider = [(CalMigrationToolCalendarMigrationDefaultsProvider *)self defaultProvider];
  [defaultProvider migrateLegacyDefaults];
}

- (void)clearLegacyDefaults
{
  defaultProvider = [(CalMigrationToolCalendarMigrationDefaultsProvider *)self defaultProvider];
  [defaultProvider clearLegacyDefaults];
}

- (void)recordMigrationDidBeginWithDestinationDirectory:(id)directory
{
  directoryCopy = directory;
  defaultProvider = [(CalMigrationToolCalendarMigrationDefaultsProvider *)self defaultProvider];
  [defaultProvider recordMigrationDidBeginWithDestinationDirectory:directoryCopy];
}

- (void)recordMigrationDidEndWithReason:(unint64_t)reason
{
  defaultProvider = [(CalMigrationToolCalendarMigrationDefaultsProvider *)self defaultProvider];
  [defaultProvider recordMigrationDidEndWithReason:reason];
}

- (void)setDefaultTimedAlarmOffset:(id)offset
{
  offsetCopy = offset;
  defaultProvider = [(CalMigrationToolCalendarMigrationDefaultsProvider *)self defaultProvider];
  [defaultProvider setDefaultTimedAlarmOffset:offsetCopy];
}

- (void)setDefaultAllDayAlarmOffset:(id)offset
{
  offsetCopy = offset;
  defaultProvider = [(CalMigrationToolCalendarMigrationDefaultsProvider *)self defaultProvider];
  [defaultProvider setDefaultAllDayAlarmOffset:offsetCopy];
}

- (NSString)defaultCalendarUUID
{
  defaultProvider = [(CalMigrationToolCalendarMigrationDefaultsProvider *)self defaultProvider];
  defaultCalendarUUID = [defaultProvider defaultCalendarUUID];

  return defaultCalendarUUID;
}

- (void)setDefaultCalendarUUID:(id)d
{
  dCopy = d;
  defaultProvider = [(CalMigrationToolCalendarMigrationDefaultsProvider *)self defaultProvider];
  [defaultProvider setDefaultCalendarUUID:dCopy];
}

@end