@interface CalMigrationToolOptions
+ (id)_stringForTriStateOption:(int64_t)option;
- (id)_initWithHomeDirectory:(id)directory sourceCalendarDirectory:(id)calendarDirectory destinationDirectory:(id)destinationDirectory migrateUsingCalendarDaemon:(BOOL)daemon waitForRemindersOnly:(BOOL)only performCalendarMigration:(int64_t)migration performReminderMigration:(int64_t)reminderMigration performCleanup:(int64_t)self0 deleteMigratedData:(int64_t)self1 backupBeforeCalendarMigration:(int64_t)self2 backupBeforeReminderMigration:(int64_t)self3 saveAccountsChangesToFile:(id)self4 accountsDatabaseFile:(id)self5;
- (id)description;
@end

@implementation CalMigrationToolOptions

- (id)_initWithHomeDirectory:(id)directory sourceCalendarDirectory:(id)calendarDirectory destinationDirectory:(id)destinationDirectory migrateUsingCalendarDaemon:(BOOL)daemon waitForRemindersOnly:(BOOL)only performCalendarMigration:(int64_t)migration performReminderMigration:(int64_t)reminderMigration performCleanup:(int64_t)self0 deleteMigratedData:(int64_t)self1 backupBeforeCalendarMigration:(int64_t)self2 backupBeforeReminderMigration:(int64_t)self3 saveAccountsChangesToFile:(id)self4 accountsDatabaseFile:(id)self5
{
  directoryCopy = directory;
  calendarDirectoryCopy = calendarDirectory;
  destinationDirectoryCopy = destinationDirectory;
  fileCopy = file;
  databaseFileCopy = databaseFile;
  v30.receiver = self;
  v30.super_class = CalMigrationToolOptions;
  v23 = [(CalMigrationToolOptions *)&v30 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_homeDirectory, directory);
    objc_storeStrong(&v24->_sourceCalendarDirectory, calendarDirectory);
    objc_storeStrong(&v24->_destinationDirectory, destinationDirectory);
    v24->_migrateUsingCalendarDaemon = daemon;
    v24->_waitForRemindersOnly = only;
    v24->_performCalendarMigration = migration;
    v24->_performReminderMigration = reminderMigration;
    v24->_performCleanup = cleanup;
    v24->_deleteMigratedData = data;
    v24->_backupBeforeCalendarMigration = calendarMigration;
    v24->_backupBeforeReminderMigration = beforeReminderMigration;
    objc_storeStrong(&v24->_accountsChangesFile, file);
    objc_storeStrong(&v24->_accountsDatabaseFile, databaseFile);
  }

  return v24;
}

+ (id)_stringForTriStateOption:(int64_t)option
{
  v3 = @"default";
  if (option == 1)
  {
    v3 = @"enable";
  }

  if (option)
  {
    return v3;
  }

  else
  {
    return @"disable";
  }
}

- (id)description
{
  if ([(CalMigrationToolOptions *)self migrateUsingCalendarDaemon])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    waitForRemindersOnly = [(CalMigrationToolOptions *)self waitForRemindersOnly];
    v6 = @"NO";
    if (waitForRemindersOnly)
    {
      v6 = @"YES";
    }

    v7 = [v3 stringWithFormat:@"<%@: %p>(\n migrateUsingCalendarDaemon = YES, \n waitForRemindersOnly = %@\n)", v4, self, v6];
  }

  else
  {
    homeDirectory = [(CalMigrationToolOptions *)self homeDirectory];

    if (homeDirectory)
    {
      homeDirectory2 = [(CalMigrationToolOptions *)self homeDirectory];
      v10 = @"homeDirectory";
    }

    else
    {
      homeDirectory2 = [(CalMigrationToolOptions *)self sourceCalendarDirectory];
      v10 = @"sourceCalendarDirectory";
    }

    v23 = v10;
    path = [homeDirectory2 path];

    v22 = MEMORY[0x1E696AEC0];
    v20 = objc_opt_class();
    destinationDirectory = [(CalMigrationToolOptions *)self destinationDirectory];
    path2 = [destinationDirectory path];
    v26 = [objc_opt_class() _stringForTriStateOption:{-[CalMigrationToolOptions performCalendarMigration](self, "performCalendarMigration")}];
    v25 = [objc_opt_class() _stringForTriStateOption:{-[CalMigrationToolOptions performReminderMigration](self, "performReminderMigration")}];
    v11 = [objc_opt_class() _stringForTriStateOption:{-[CalMigrationToolOptions performCleanup](self, "performCleanup")}];
    v12 = [objc_opt_class() _stringForTriStateOption:{-[CalMigrationToolOptions deleteMigratedData](self, "deleteMigratedData")}];
    v13 = [objc_opt_class() _stringForTriStateOption:{-[CalMigrationToolOptions backupBeforeCalendarMigration](self, "backupBeforeCalendarMigration")}];
    v14 = [objc_opt_class() _stringForTriStateOption:{-[CalMigrationToolOptions backupBeforeCalendarMigration](self, "backupBeforeCalendarMigration")}];
    accountsChangesFile = [(CalMigrationToolOptions *)self accountsChangesFile];
    path3 = [accountsChangesFile path];
    accountsDatabaseFile = [(CalMigrationToolOptions *)self accountsDatabaseFile];
    path4 = [accountsDatabaseFile path];
    v7 = [v22 stringWithFormat:@"<%@: %p>(\n %@ = %@, \n destinationDirectory = %@, \n performCalendarMigration = %@, \n performReminderMigration = %@, \n performCleanup = %@, \n deleteMigratedData = %@, \n backupBeforeCalendarMigration = %@, \n backupBeforeReminderMigration = %@, \n accountChangesFile = %@, \n accountsDatabaseFile = %@, \n)", v20, self, v23, path, path2, v26, v25, v11, v12, v13, v14, path3, path4];
  }

  return v7;
}

@end