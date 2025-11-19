@interface CalMigrationToolOptions
+ (id)_stringForTriStateOption:(int64_t)a3;
- (id)_initWithHomeDirectory:(id)a3 sourceCalendarDirectory:(id)a4 destinationDirectory:(id)a5 migrateUsingCalendarDaemon:(BOOL)a6 waitForRemindersOnly:(BOOL)a7 performCalendarMigration:(int64_t)a8 performReminderMigration:(int64_t)a9 performCleanup:(int64_t)a10 deleteMigratedData:(int64_t)a11 backupBeforeCalendarMigration:(int64_t)a12 backupBeforeReminderMigration:(int64_t)a13 saveAccountsChangesToFile:(id)a14 accountsDatabaseFile:(id)a15;
- (id)description;
@end

@implementation CalMigrationToolOptions

- (id)_initWithHomeDirectory:(id)a3 sourceCalendarDirectory:(id)a4 destinationDirectory:(id)a5 migrateUsingCalendarDaemon:(BOOL)a6 waitForRemindersOnly:(BOOL)a7 performCalendarMigration:(int64_t)a8 performReminderMigration:(int64_t)a9 performCleanup:(int64_t)a10 deleteMigratedData:(int64_t)a11 backupBeforeCalendarMigration:(int64_t)a12 backupBeforeReminderMigration:(int64_t)a13 saveAccountsChangesToFile:(id)a14 accountsDatabaseFile:(id)a15
{
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v29 = a14;
  v28 = a15;
  v30.receiver = self;
  v30.super_class = CalMigrationToolOptions;
  v23 = [(CalMigrationToolOptions *)&v30 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_homeDirectory, a3);
    objc_storeStrong(&v24->_sourceCalendarDirectory, a4);
    objc_storeStrong(&v24->_destinationDirectory, a5);
    v24->_migrateUsingCalendarDaemon = a6;
    v24->_waitForRemindersOnly = a7;
    v24->_performCalendarMigration = a8;
    v24->_performReminderMigration = a9;
    v24->_performCleanup = a10;
    v24->_deleteMigratedData = a11;
    v24->_backupBeforeCalendarMigration = a12;
    v24->_backupBeforeReminderMigration = a13;
    objc_storeStrong(&v24->_accountsChangesFile, a14);
    objc_storeStrong(&v24->_accountsDatabaseFile, a15);
  }

  return v24;
}

+ (id)_stringForTriStateOption:(int64_t)a3
{
  v3 = @"default";
  if (a3 == 1)
  {
    v3 = @"enable";
  }

  if (a3)
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
    v5 = [(CalMigrationToolOptions *)self waitForRemindersOnly];
    v6 = @"NO";
    if (v5)
    {
      v6 = @"YES";
    }

    v7 = [v3 stringWithFormat:@"<%@: %p>(\n migrateUsingCalendarDaemon = YES, \n waitForRemindersOnly = %@\n)", v4, self, v6];
  }

  else
  {
    v8 = [(CalMigrationToolOptions *)self homeDirectory];

    if (v8)
    {
      v9 = [(CalMigrationToolOptions *)self homeDirectory];
      v10 = @"homeDirectory";
    }

    else
    {
      v9 = [(CalMigrationToolOptions *)self sourceCalendarDirectory];
      v10 = @"sourceCalendarDirectory";
    }

    v23 = v10;
    v21 = [v9 path];

    v22 = MEMORY[0x1E696AEC0];
    v20 = objc_opt_class();
    v24 = [(CalMigrationToolOptions *)self destinationDirectory];
    v27 = [v24 path];
    v26 = [objc_opt_class() _stringForTriStateOption:{-[CalMigrationToolOptions performCalendarMigration](self, "performCalendarMigration")}];
    v25 = [objc_opt_class() _stringForTriStateOption:{-[CalMigrationToolOptions performReminderMigration](self, "performReminderMigration")}];
    v11 = [objc_opt_class() _stringForTriStateOption:{-[CalMigrationToolOptions performCleanup](self, "performCleanup")}];
    v12 = [objc_opt_class() _stringForTriStateOption:{-[CalMigrationToolOptions deleteMigratedData](self, "deleteMigratedData")}];
    v13 = [objc_opt_class() _stringForTriStateOption:{-[CalMigrationToolOptions backupBeforeCalendarMigration](self, "backupBeforeCalendarMigration")}];
    v14 = [objc_opt_class() _stringForTriStateOption:{-[CalMigrationToolOptions backupBeforeCalendarMigration](self, "backupBeforeCalendarMigration")}];
    v15 = [(CalMigrationToolOptions *)self accountsChangesFile];
    v16 = [v15 path];
    v17 = [(CalMigrationToolOptions *)self accountsDatabaseFile];
    v18 = [v17 path];
    v7 = [v22 stringWithFormat:@"<%@: %p>(\n %@ = %@, \n destinationDirectory = %@, \n performCalendarMigration = %@, \n performReminderMigration = %@, \n performCleanup = %@, \n deleteMigratedData = %@, \n backupBeforeCalendarMigration = %@, \n backupBeforeReminderMigration = %@, \n accountChangesFile = %@, \n accountsDatabaseFile = %@, \n)", v20, self, v23, v21, v27, v26, v25, v11, v12, v13, v14, v16, v18];
  }

  return v7;
}

@end