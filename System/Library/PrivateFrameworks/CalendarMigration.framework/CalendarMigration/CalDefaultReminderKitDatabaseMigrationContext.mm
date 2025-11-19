@interface CalDefaultReminderKitDatabaseMigrationContext
+ (unint64_t)remMigrationStageFromCalMigrationStage:(unint64_t)a3;
- (BOOL)ensureAccountsExist:(id)a3 error:(id *)a4;
- (BOOL)shouldDeleteMigratedData;
- (BOOL)shouldPerformMigration;
- (CalDefaultReminderKitDatabaseMigrationContext)init;
- (REMStore)reminderStore;
- (void)migrationDidFinishWithResult:(unint64_t)a3;
- (void)recordMigrationFailure:(id)a3;
- (void)willBeginMigration;
@end

@implementation CalDefaultReminderKitDatabaseMigrationContext

- (CalDefaultReminderKitDatabaseMigrationContext)init
{
  v8.receiver = self;
  v8.super_class = CalDefaultReminderKitDatabaseMigrationContext;
  v2 = [(CalDefaultReminderKitDatabaseMigrationContext *)&v8 init];
  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = getREMDatabaseMigrationContextClass_softClass;
    v13 = getREMDatabaseMigrationContextClass_softClass;
    if (!getREMDatabaseMigrationContextClass_softClass)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __getREMDatabaseMigrationContextClass_block_invoke;
      v9[3] = &unk_278D6D390;
      v9[4] = &v10;
      __getREMDatabaseMigrationContextClass_block_invoke(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v5 = objc_opt_new();
    remDatabaseMigrationContext = v2->_remDatabaseMigrationContext;
    v2->_remDatabaseMigrationContext = v5;
  }

  return v2;
}

- (void)willBeginMigration
{
  v2 = [(CalDefaultReminderKitDatabaseMigrationContext *)self remDatabaseMigrationContext];
  [v2 reportMigrationWillBegin];
}

- (void)recordMigrationFailure:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() remMigrationStageFromCalMigrationStage:{objc_msgSend(v4, "stage")}];
  v9 = [(CalDefaultReminderKitDatabaseMigrationContext *)self remDatabaseMigrationContext];
  v6 = [v4 failureDescription];
  v7 = [v4 underlyingError];
  v8 = [v4 relatedPath];

  [v9 reportMigrationErrorWithIdentifier:v6 atStage:v5 error:v7 objectLocator:v8];
}

+ (unint64_t)remMigrationStageFromCalMigrationStage:(unint64_t)a3
{
  if (a3 > 7)
  {
    return 1;
  }

  else
  {
    return qword_2428FD048[a3];
  }
}

- (BOOL)ensureAccountsExist:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CalDefaultReminderKitDatabaseMigrationContext *)self remDatabaseMigrationContext];
  LOBYTE(a4) = [v7 ensureAccountsExist:v6 error:a4];

  return a4;
}

- (REMStore)reminderStore
{
  v2 = [(CalDefaultReminderKitDatabaseMigrationContext *)self remDatabaseMigrationContext];
  v3 = [v2 remStore];

  return v3;
}

- (BOOL)shouldPerformMigration
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [(CalDefaultReminderKitDatabaseMigrationContext *)self remDatabaseMigrationContext];
  v3 = [v2 isDatabaseMigrated];

  v4 = +[CalMigrationLog reminders];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_2428EA000, v4, OS_LOG_TYPE_INFO, "ReminderKit says isDatabaseMigrated = %{public}@", &v8, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3 ^ 1;
}

- (BOOL)shouldDeleteMigratedData
{
  v2 = [(CalDefaultReminderKitDatabaseMigrationContext *)self remDatabaseMigrationContext];
  v3 = [v2 shouldDeleteMigratedData];

  return v3;
}

- (void)migrationDidFinishWithResult:(unint64_t)a3
{
  if (!a3)
  {
    [(CalDefaultReminderKitDatabaseMigrationContext *)self willBeginMigration];

    [(CalDefaultReminderKitDatabaseMigrationContext *)self didEndMigrationWithSuccess:1];
  }
}

@end