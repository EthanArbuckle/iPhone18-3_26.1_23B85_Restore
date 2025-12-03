@interface CalDefaultReminderKitDatabaseMigrationContext
+ (unint64_t)remMigrationStageFromCalMigrationStage:(unint64_t)stage;
- (BOOL)ensureAccountsExist:(id)exist error:(id *)error;
- (BOOL)shouldDeleteMigratedData;
- (BOOL)shouldPerformMigration;
- (CalDefaultReminderKitDatabaseMigrationContext)init;
- (REMStore)reminderStore;
- (void)migrationDidFinishWithResult:(unint64_t)result;
- (void)recordMigrationFailure:(id)failure;
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
  remDatabaseMigrationContext = [(CalDefaultReminderKitDatabaseMigrationContext *)self remDatabaseMigrationContext];
  [remDatabaseMigrationContext reportMigrationWillBegin];
}

- (void)recordMigrationFailure:(id)failure
{
  failureCopy = failure;
  v5 = [objc_opt_class() remMigrationStageFromCalMigrationStage:{objc_msgSend(failureCopy, "stage")}];
  remDatabaseMigrationContext = [(CalDefaultReminderKitDatabaseMigrationContext *)self remDatabaseMigrationContext];
  failureDescription = [failureCopy failureDescription];
  underlyingError = [failureCopy underlyingError];
  relatedPath = [failureCopy relatedPath];

  [remDatabaseMigrationContext reportMigrationErrorWithIdentifier:failureDescription atStage:v5 error:underlyingError objectLocator:relatedPath];
}

+ (unint64_t)remMigrationStageFromCalMigrationStage:(unint64_t)stage
{
  if (stage > 7)
  {
    return 1;
  }

  else
  {
    return qword_2428FD048[stage];
  }
}

- (BOOL)ensureAccountsExist:(id)exist error:(id *)error
{
  existCopy = exist;
  remDatabaseMigrationContext = [(CalDefaultReminderKitDatabaseMigrationContext *)self remDatabaseMigrationContext];
  LOBYTE(error) = [remDatabaseMigrationContext ensureAccountsExist:existCopy error:error];

  return error;
}

- (REMStore)reminderStore
{
  remDatabaseMigrationContext = [(CalDefaultReminderKitDatabaseMigrationContext *)self remDatabaseMigrationContext];
  remStore = [remDatabaseMigrationContext remStore];

  return remStore;
}

- (BOOL)shouldPerformMigration
{
  v10 = *MEMORY[0x277D85DE8];
  remDatabaseMigrationContext = [(CalDefaultReminderKitDatabaseMigrationContext *)self remDatabaseMigrationContext];
  isDatabaseMigrated = [remDatabaseMigrationContext isDatabaseMigrated];

  v4 = +[CalMigrationLog reminders];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:isDatabaseMigrated];
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_2428EA000, v4, OS_LOG_TYPE_INFO, "ReminderKit says isDatabaseMigrated = %{public}@", &v8, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
  return isDatabaseMigrated ^ 1;
}

- (BOOL)shouldDeleteMigratedData
{
  remDatabaseMigrationContext = [(CalDefaultReminderKitDatabaseMigrationContext *)self remDatabaseMigrationContext];
  shouldDeleteMigratedData = [remDatabaseMigrationContext shouldDeleteMigratedData];

  return shouldDeleteMigratedData;
}

- (void)migrationDidFinishWithResult:(unint64_t)result
{
  if (!result)
  {
    [(CalDefaultReminderKitDatabaseMigrationContext *)self willBeginMigration];

    [(CalDefaultReminderKitDatabaseMigrationContext *)self didEndMigrationWithSuccess:1];
  }
}

@end