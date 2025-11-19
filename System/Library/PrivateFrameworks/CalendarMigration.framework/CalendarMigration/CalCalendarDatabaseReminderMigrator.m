@interface CalCalendarDatabaseReminderMigrator
+ (BOOL)_attemptMigrationForStore:(void *)a3 withContext:(id)a4;
+ (BOOL)_preCheckStoreForPossibleMigrationDisablingRemindersIfNeeded:(void *)a3 withContext:(id)a4 accountType:(int64_t *)a5 identifier:(id *)a6;
+ (BOOL)_shouldMigrateCalendarAsReminderList:(void *)a3;
+ (id)_attemptAccountMigrationForStore:(void *)a3 withContext:(id)a4 accountType:(int64_t *)a5;
+ (id)_colorStringForCalendar:(void *)a3;
+ (id)_identifierForCalendar:(void *)a3;
+ (id)_identifierForReminder:(void *)a3;
+ (id)_identifierForStore:(void *)a3;
+ (int64_t)_accountTypeForStore:(void *)a3;
+ (void)_migrateCalendarAsReminderList:(void *)a3 withContext:(id)a4 accountChangeItem:(id)a5 accountType:(int64_t)a6;
+ (void)_migrateReminder:(void *)a3 withContext:(id)a4 listChangeItem:(id)a5;
+ (void)_migrateReminderListsInStore:(void *)a3 withContext:(id)a4 accountChangeItem:(id)a5 accountType:(int64_t)a6;
+ (void)_migrateRemindersInCalendar:(void *)a3 withContext:(id)a4 listChangeItem:(id)a5;
+ (void)_removeRemindersDataAfterSuccessfulMigrationFromDatabase:(CalDatabase *)a3 withContext:(id)a4;
+ (void)_setWasMigratedAndClearSyncTokenInAllCalendarsForStore:(void *)a3 withContext:(id)a4;
+ (void)_visitCalendarForMigrationAsReminderList:(void *)a3 withContext:(id)a4 accountChangeItem:(id)a5 accountType:(int64_t)a6;
- (BOOL)_attemptMigrationForDatabase:(CalDatabase *)a3 inCalendarDirectory:(id)a4 withContext:(id)a5;
- (BOOL)_attemptMigrationWithCalendarDatabase:(CalDatabase *)a3;
- (BOOL)_attemptMigrationWithHomeDirectory:(id)a3;
- (BOOL)_performMigrationForCalendarDatabase:(CalDatabase *)a3 inCalendarDirectory:(id)a4 withContext:(id)a5;
- (BOOL)attemptMigrationWithCalendarDatabase:(CalDatabase *)a3;
- (BOOL)attemptMigrationWithHomeDirectory:(id)a3;
- (CalCalendarDatabaseReminderMigrator)initWithReminderKitProvider:(id)a3 defaultsProvider:(id)a4;
- (void)_performPreMigrationTasksInCalendarDirectory:(id)a3 withContext:(id)a4;
@end

@implementation CalCalendarDatabaseReminderMigrator

- (CalCalendarDatabaseReminderMigrator)initWithReminderKitProvider:(id)a3 defaultsProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CalCalendarDatabaseReminderMigrator;
  v9 = [(CalCalendarDatabaseReminderMigrator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_reminderKitProvider, a3);
    objc_storeStrong(&v10->_defaultsProvider, a4);
  }

  return v10;
}

- (BOOL)attemptMigrationWithHomeDirectory:(id)a3
{
  v4 = a3;
  v5 = +[CalMigrationLog reminders];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2428EA000, v5, OS_LOG_TYPE_DEFAULT, "Beginning CalendarDatabase reminder migration", buf, 2u);
  }

  v6 = [(CalCalendarDatabaseReminderMigrator *)self _attemptMigrationWithHomeDirectory:v4];
  v7 = +[CalMigrationLog reminders];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_2428EA000, v7, OS_LOG_TYPE_DEFAULT, "Finished CalendarDatabase reminder migration", v9, 2u);
  }

  return v6;
}

- (BOOL)attemptMigrationWithCalendarDatabase:(CalDatabase *)a3
{
  v5 = +[CalMigrationLog reminders];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2428EA000, v5, OS_LOG_TYPE_DEFAULT, "Beginning CalendarDatabase reminder migration", buf, 2u);
  }

  v6 = [(CalCalendarDatabaseReminderMigrator *)self _attemptMigrationWithCalendarDatabase:a3];
  v7 = +[CalMigrationLog reminders];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_2428EA000, v7, OS_LOG_TYPE_DEFAULT, "Finished CalendarDatabase reminder migration", v9, 2u);
  }

  return v6;
}

- (BOOL)_attemptMigrationWithHomeDirectory:(id)a3
{
  v4 = a3;
  v5 = [(CalCalendarDatabaseReminderMigrator *)self reminderKitProvider];
  v6 = [CalCalendarDatabaseReminderMigrationContext reminderMigrationContextWithReminderKitProvider:v5];

  if (v6)
  {
    v7 = [v4 URLByAppendingPathComponent:@"Library/Calendar"];
    v8 = [v7 path];
    v9 = [v8 stringByAppendingString:@"/"];

    v10 = objc_alloc(MEMORY[0x277CF7520]);
    v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9];
    v12 = [v10 initWithDirectoryURL:v11];

    [v12 setOptions:13];
    v13 = CalDatabaseCreateWithConfiguration();
    if (v13)
    {
      v14 = v13;
      v15 = [(CalCalendarDatabaseReminderMigrator *)self _attemptMigrationForDatabase:v13 inCalendarDirectory:v7 withContext:v6];
      CFRelease(v14);
    }

    else
    {
      v16 = +[CalMigrationLog reminders];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CalCalendarDatabaseReminderMigrator _attemptMigrationWithHomeDirectory:];
      }

      [v6 recordMigrationFailureWithDescription:@"Failed to open calendar database" inStage:1 underlyingError:0];
      [v6 finishMigrationWithSave:0];
      v15 = 0;
    }
  }

  else
  {
    v7 = +[CalMigrationLog reminders];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [CalCalendarDatabaseReminderMigrator _attemptMigrationWithHomeDirectory:];
    }

    v15 = 0;
  }

  return v15;
}

- (BOOL)_attemptMigrationWithCalendarDatabase:(CalDatabase *)a3
{
  v5 = [(CalCalendarDatabaseReminderMigrator *)self reminderKitProvider];
  v6 = [CalCalendarDatabaseReminderMigrationContext reminderMigrationContextWithReminderKitProvider:v5];

  if (v6)
  {
    v7 = CalDatabaseCopyDirectoryPathForDatabase();
    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
    if (v8)
    {
      v9 = [(CalCalendarDatabaseReminderMigrator *)self _attemptMigrationForDatabase:a3 inCalendarDirectory:v8 withContext:v6];
    }

    else
    {
      v10 = +[CalMigrationLog reminders];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CalCalendarDatabaseReminderMigrator _attemptMigrationWithCalendarDatabase:];
      }

      [v6 recordMigrationFailureWithDescription:@"Failed to get path for database" inStage:1 underlyingError:0];
      [v6 finishMigrationWithSave:0];
      v9 = 0;
    }
  }

  else
  {
    v7 = +[CalMigrationLog reminders];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [CalCalendarDatabaseReminderMigrator _attemptMigrationWithHomeDirectory:];
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)_attemptMigrationForDatabase:(CalDatabase *)a3 inCalendarDirectory:(id)a4 withContext:(id)a5
{
  v8 = a4;
  v9 = a5;
  [(CalCalendarDatabaseReminderMigrator *)self _performPreMigrationTasksInCalendarDirectory:v8 withContext:v9];
  if ([v9 shouldPerformMigration])
  {
    v10 = [(CalCalendarDatabaseReminderMigrator *)self _performMigrationForCalendarDatabase:a3 inCalendarDirectory:v8 withContext:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(CalCalendarDatabaseReminderMigrator *)self defaultsProvider];
  [v11 setHavePerformedReminderMigrationCleanup:1];

  return v10;
}

- (void)_performPreMigrationTasksInCalendarDirectory:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CalCalendarDatabaseReminderMigrator *)self defaultsProvider];
  v9 = [v8 shouldBackupBeforeMigration];

  v10 = +[CalMigrationLog reminders];
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_2428EA000, v10, OS_LOG_TYPE_INFO, "Defaults indicate to create a backup. Checking if the backup would be too large.", buf, 2u);
    }

    if ([CalMigrationBackup shouldBackupCalendarDirectory:v6 withPrivacySafePathProvider:v7])
    {
      v19 = 0;
      v12 = [CalMigrationBackup backupCalendarDirectory:v6 intoArchiveNamed:@"ReminderMigrationBackup.zip" error:&v19];
      v13 = v19;
      if (!v12)
      {
        v14 = +[CalMigrationLog reminders];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [CalCalendarDatabaseReminderMigrator _performPreMigrationTasksInCalendarDirectory:v6 withContext:?];
        }

        v15 = [v6 path];
        [v7 recordMigrationFailureWithDescription:@"Failed to back up calendar directory" inStage:6 underlyingError:v13 relatedTo:v15];
LABEL_16:

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  else
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_2428EA000, v10, OS_LOG_TYPE_INFO, "Defaults indicate not to create backup", buf, 2u);
    }
  }

  v18 = 0;
  v16 = [CalMigrationBackup removeExistingBackupWithArchiveName:@"ReminderMigrationBackup.zip" inCalendarDirectory:v6 error:&v18];
  v13 = v18;
  if (!v16)
  {
    v17 = +[CalMigrationLog reminders];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CalCalendarDatabaseReminderMigrator _performPreMigrationTasksInCalendarDirectory:v6 withContext:?];
    }

    v15 = [v6 path];
    [v7 recordMigrationFailureWithDescription:@"Failed to remove existing backup" inStage:6 underlyingError:v13 relatedTo:v15 isFatal:0];
    goto LABEL_16;
  }

LABEL_17:
}

- (BOOL)_performMigrationForCalendarDatabase:(CalDatabase *)a3 inCalendarDirectory:(id)a4 withContext:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = CalDatabaseCopyDefaultCalendarForNewTasksForReminderMigration();
  if (v10)
  {
    v11 = v10;
    v12 = CalCalendarCopyUUID();
    [v9 setDefaultListOriginalIdentifier:v12];

    CFRelease(v11);
  }

  v13 = CalDatabaseCopyOfAllStores();
  v14 = v13;
  if (v13)
  {
    v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v13, "count")}];
    v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v14, "count")}];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __108__CalCalendarDatabaseReminderMigrator__performMigrationForCalendarDatabase_inCalendarDirectory_withContext___block_invoke;
    v34[3] = &unk_278D6D5A0;
    v34[4] = self;
    v17 = v9;
    v35 = v17;
    v18 = v15;
    v36 = v18;
    v19 = v16;
    v37 = v19;
    [v14 enumerateCalStoreRefsUsingBlock:v34];
    if ([v17 ensureAccountsExist:v19])
    {
      v30 = 0;
      v31 = &v30;
      v32 = 0x2020000000;
      v33 = 0;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __108__CalCalendarDatabaseReminderMigrator__performMigrationForCalendarDatabase_inCalendarDirectory_withContext___block_invoke_2;
      v27[3] = &unk_278D6D5C8;
      v29 = &v30;
      v27[4] = self;
      v20 = v17;
      v28 = v20;
      [v18 enumerateCalStoreRefsUsingBlock:v27];
      if (v31[3])
      {
        v21 = 1;
      }

      else
      {
        v24 = +[CalMigrationLog reminders];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *v26 = 0;
          _os_log_impl(&dword_2428EA000, v24, OS_LOG_TYPE_DEFAULT, "No reminder data was migrated", v26, 2u);
        }

        v21 = *(v31 + 24);
      }

      if ([v20 finishMigrationWithSave:v21 & 1])
      {
        if ([v20 shouldDeleteMigratedData])
        {
          [objc_opt_class() _removeRemindersDataAfterSuccessfulMigrationFromDatabase:a3 withContext:v20];
        }

        v23 = *(v31 + 24);
      }

      else
      {
        v23 = 0;
      }

      _Block_object_dispose(&v30, 8);
    }

    else
    {
      [v17 finishMigrationWithSave:0];
      v23 = 0;
    }
  }

  else
  {
    v22 = +[CalMigrationLog reminders];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [CalCalendarDatabaseReminderMigrator _performMigrationForCalendarDatabase:inCalendarDirectory:withContext:];
    }

    [v9 recordMigrationFailureWithDescription:@"Failed to get array of stores" inStage:1 underlyingError:0];
    [v9 finishMigrationWithSave:0];
    v23 = 0;
  }

  return v23 & 1;
}

void __108__CalCalendarDatabaseReminderMigrator__performMigrationForCalendarDatabase_inCalendarDirectory_withContext___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v15 = 0;
  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  v8 = *(a1 + 40);
  v14 = 0;
  v9 = [v7 _preCheckStoreForPossibleMigrationDisablingRemindersIfNeeded:a3 withContext:v8 accountType:&v15 identifier:&v14];
  v10 = v14;
  if (v9)
  {
    [*(a1 + 48) addObject:v5];
    if (v15 != 1)
    {
      v16[0] = @"identifier";
      v16[1] = @"type";
      v17[0] = v10;
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:?];
      v17[1] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

      [*(a1 + 56) addObject:v12];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __108__CalCalendarDatabaseReminderMigrator__performMigrationForCalendarDatabase_inCalendarDirectory_withContext___block_invoke_2(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[4];
  result = [objc_opt_class() _attemptMigrationForStore:a3 withContext:a1[5]];
  *(*(a1[6] + 8) + 24) |= result;
  return result;
}

+ (BOOL)_preCheckStoreForPossibleMigrationDisablingRemindersIfNeeded:(void *)a3 withContext:(id)a4 accountType:(int64_t *)a5 identifier:(id *)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = a4;
  *a5 = 0;
  *a6 = 0;
  v11 = [a1 _identifierForStore:a3];
  v12 = [a1 _accountTypeForStore:a3];
  if (!v12)
  {
    v20 = +[CalMigrationLog reminders];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138543362;
      v25 = v11;
      v21 = "Skipping store %{public}@ with unknown account type";
LABEL_11:
      _os_log_impl(&dword_2428EA000, v20, OS_LOG_TYPE_DEFAULT, v21, &v24, 0xCu);
    }

LABEL_12:

    [v10 addStoreToDisableReminders:a3];
LABEL_13:
    v19 = 0;
    goto LABEL_14;
  }

  v13 = v12;
  if ((CalStoreIsEnabled() & 1) == 0)
  {
    v20 = +[CalMigrationLog reminders];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138543362;
      v25 = v11;
      v21 = "Skipping store %{public}@ because it is disabled";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  [a1 _setWasMigratedAndClearSyncTokenInAllCalendarsForStore:a3 withContext:v10];
  v14 = CalStoreAllowsTasksPrivate();
  v15 = +[CalMigrationLog reminders];
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if ((v14 & 1) == 0)
  {
    if (v16)
    {
      v24 = 138543362;
      v25 = v11;
      _os_log_impl(&dword_2428EA000, v15, OS_LOG_TYPE_DEFAULT, "Skipping store %{public}@ because it does not support reminders", &v24, 0xCu);
    }

    goto LABEL_13;
  }

  if (v16)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
    v24 = 138543618;
    v25 = v11;
    v26 = 2114;
    v27 = v17;
    _os_log_impl(&dword_2428EA000, v15, OS_LOG_TYPE_DEFAULT, "Including store %{public}@ with type %{public}@", &v24, 0x16u);
  }

  *a5 = v13;
  v18 = v11;
  *a6 = v11;
  v19 = 1;
LABEL_14:

  v22 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (BOOL)_attemptMigrationForStore:(void *)a3 withContext:(id)a4
{
  v6 = a4;
  v9 = 0;
  v7 = [a1 _attemptAccountMigrationForStore:a3 withContext:v6 accountType:&v9];
  if (v7)
  {
    [v6 pushOrderedListItemsContext];
    [a1 _migrateReminderListsInStore:a3 withContext:v6 accountChangeItem:v7 accountType:v9];
    [v6 popOrderedListItemsContextAndSortListsInAccountChangeItem:v7];
  }

  return v7 != 0;
}

+ (id)_attemptAccountMigrationForStore:(void *)a3 withContext:(id)a4 accountType:(int64_t *)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a4;
  *a5 = 0;
  v9 = [a1 _identifierForStore:a3];
  v10 = [a1 _accountTypeForStore:a3];
  *a5 = v10;
  if (v10 == 1)
  {
    v11 = [v8 localAccountChangeItem];
  }

  else
  {
    v11 = [v8 existingAccountChangeItemWithAccountIdentifier:v9];
    v12 = CalStoreCopyName();
    [v11 setName:v12];

    [v11 setDaWasMigrated:1];
  }

  v13 = CalStoreAllowsEvents();
  v14 = +[CalMigrationLog reminders];
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
  if (v13)
  {
    if (v15)
    {
      v18 = 138543362;
      v19 = v9;
      _os_log_impl(&dword_2428EA000, v14, OS_LOG_TYPE_INFO, "Adding %{public}@ to list of stores to disable reminders because has both data classes enabled", &v18, 0xCu);
    }

    [v8 addStoreToDisableReminders:a3];
  }

  else
  {
    if (v15)
    {
      v18 = 138543362;
      v19 = v9;
      _os_log_impl(&dword_2428EA000, v14, OS_LOG_TYPE_INFO, "Adding %{public}@ to list of stores to delete because only reminders are enabled", &v18, 0xCu);
    }

    [v8 addStoreToDelete:a3];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (int64_t)_accountTypeForStore:(void *)a3
{
  Type = CalStoreGetType();
  if (Type > 2)
  {
    return 0;
  }

  else
  {
    return qword_2428FD0D8[Type];
  }
}

+ (void)_migrateReminderListsInStore:(void *)a3 withContext:(id)a4 accountChangeItem:(id)a5 accountType:(int64_t)a6
{
  v10 = a4;
  v11 = a5;
  v12 = CalStoreCopyCalendars();
  if (v12)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __110__CalCalendarDatabaseReminderMigrator__migrateReminderListsInStore_withContext_accountChangeItem_accountType___block_invoke;
    v15[3] = &unk_278D6D5F0;
    v18 = a1;
    v16 = v10;
    v17 = v11;
    v19 = a6;
    [v12 enumerateCalCalendarRefsUsingBlock:v15];

    v13 = v16;
  }

  else
  {
    v13 = [a1 _identifierForStore:a3];
    v14 = +[CalMigrationLog reminders];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[CalCalendarDatabaseReminderMigrator _migrateReminderListsInStore:withContext:accountChangeItem:accountType:];
    }

    [v10 recordMigrationFailureWithDescription:@"Failed to get calendars from store" inStage:3 underlyingError:0 relatedTo:v13];
  }
}

uint64_t __110__CalCalendarDatabaseReminderMigrator__migrateReminderListsInStore_withContext_accountChangeItem_accountType___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 48) _shouldMigrateCalendarAsReminderList:?];
  if (result)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);

    return [v8 _visitCalendarForMigrationAsReminderList:a3 withContext:v6 accountChangeItem:v7 accountType:v9];
  }

  return result;
}

+ (BOOL)_shouldMigrateCalendarAsReminderList:(void *)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if (CalCalendarCanContainEntityType())
  {
    if (CalCalendarIsHidden())
    {
      v5 = +[CalMigrationLog reminders];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [a1 _identifierForCalendar:a3];
        v10 = 138543362;
        v11 = v6;
        v7 = "Skipping calendar %{public}@ because it is hidden";
LABEL_7:
        _os_log_impl(&dword_2428EA000, v5, OS_LOG_TYPE_INFO, v7, &v10, 0xCu);
      }
    }

    else
    {
      if (CalCalendarIsInbox())
      {
        v5 = +[CalMigrationLog reminders];
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          goto LABEL_8;
        }

        v6 = [a1 _identifierForCalendar:a3];
        v10 = 138543362;
        v11 = v6;
        v7 = "Skipping calendar %{public}@ because it is an inbox calendar";
        goto LABEL_7;
      }

      if (CalCalendarIsNotificationsCollection())
      {
        v5 = +[CalMigrationLog reminders];
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          goto LABEL_8;
        }

        v6 = [a1 _identifierForCalendar:a3];
        v10 = 138543362;
        v11 = v6;
        v7 = "Skipping calendar %{public}@ because it is a notification collection";
        goto LABEL_7;
      }

      if (CalCalendarIsSharingInvitation())
      {
        v5 = +[CalMigrationLog reminders];
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          goto LABEL_8;
        }

        v6 = [a1 _identifierForCalendar:a3];
        v10 = 138543362;
        v11 = v6;
        v7 = "Skipping calendar %{public}@ because it is a sharing invitation";
        goto LABEL_7;
      }

      if (!CalCalendarIsSubscribed())
      {
        result = 1;
        goto LABEL_9;
      }

      v5 = +[CalMigrationLog reminders];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [a1 _identifierForCalendar:a3];
        v10 = 138543362;
        v11 = v6;
        v7 = "Skipping calendar %{public}@ because it is a subscribed calendar";
        goto LABEL_7;
      }
    }
  }

  else
  {
    v5 = +[CalMigrationLog reminders];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [a1 _identifierForCalendar:a3];
      v10 = 138543362;
      v11 = v6;
      v7 = "Skipping calendar %{public}@ because it doesn't support reminders";
      goto LABEL_7;
    }
  }

LABEL_8:

  result = 0;
LABEL_9:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

+ (void)_visitCalendarForMigrationAsReminderList:(void *)a3 withContext:(id)a4 accountChangeItem:(id)a5 accountType:(int64_t)a6
{
  v17 = *MEMORY[0x277D85DE8];
  v10 = a4;
  [a1 _migrateCalendarAsReminderList:a3 withContext:v10 accountChangeItem:a5 accountType:a6];
  v11 = [a1 _identifierForCalendar:a3];
  LODWORD(a1) = CalCalendarCanContainEntityType();
  v12 = +[CalMigrationLog reminders];
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (a1)
  {
    if (v13)
    {
      v15 = 138543362;
      v16 = v11;
      _os_log_impl(&dword_2428EA000, v12, OS_LOG_TYPE_INFO, "Adding calendar %{public}@ to list of calendars to disable reminders because it supports both entity types", &v15, 0xCu);
    }

    [v10 addCalendarToDisableReminders:a3];
  }

  else
  {
    if (v13)
    {
      v15 = 138543362;
      v16 = v11;
      _os_log_impl(&dword_2428EA000, v12, OS_LOG_TYPE_INFO, "Adding calendar %{public}@ to list of calendars to delete because it only supports reminders", &v15, 0xCu);
    }

    [v10 addCalendarToDelete:a3];
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)_migrateCalendarAsReminderList:(void *)a3 withContext:(id)a4 accountChangeItem:(id)a5 accountType:(int64_t)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v28 = a5;
  v9 = [v8 saveRequest];
  v10 = [v9 addListWithName:@"Reminders" toAccountChangeItem:v28];

  v11 = CalCalendarCopyTitle();
  if (v11)
  {
    [v10 setName:v11];
  }

  v12 = [a1 _colorStringForCalendar:a3];
  if (v12)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2050000000;
    v13 = getREMColorClass_softClass;
    v33 = getREMColorClass_softClass;
    if (!getREMColorClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getREMColorClass_block_invoke;
      v35 = &unk_278D6D390;
      v36 = &v30;
      __getREMColorClass_block_invoke(buf);
      v13 = v31[3];
    }

    v14 = v13;
    _Block_object_dispose(&v30, 8);
    v15 = [CalReminderMigrationReminderKitUtils hexColorStringByRemovingAlphaFromHexString:v12];
    v16 = [v13 colorWithHexString:v15];
    [v10 setColor:v16];
  }

  DisplayOrder = CalCalendarGetDisplayOrder();
  v18 = CalCalendarCopyUUID();
  v19 = +[CalMigrationLog reminders];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v10 name];
    v21 = [v10 objectID];
    *buf = 138412802;
    *&buf[4] = v20;
    *&buf[12] = 2114;
    *&buf[14] = v21;
    *&buf[22] = 1024;
    LODWORD(v35) = DisplayOrder;
    _os_log_impl(&dword_2428EA000, v19, OS_LOG_TYPE_DEFAULT, "Recording migrated list %@ (%{public}@) with old order %i", buf, 0x1Cu);
  }

  v22 = [MEMORY[0x277CCABB0] numberWithInt:DisplayOrder];
  [v8 recordAddedListChangeItem:v10 withOriginalIdentifier:v18 order:v22];

  v23 = CalCalendarCopyExternalID();
  [v10 setExternalIdentifier:v23];

  v24 = CalCalendarCopyPushKey();
  [v10 setDaPushKey:v24];

  if (a6 == 4)
  {
    v25 = CalCalendarCopyExternalModificationTag();
    [v10 setExternalModificationTag:v25];
  }

  [a1 _migrateRemindersInCalendar:a3 withContext:v8 listChangeItem:v10];

  v26 = *MEMORY[0x277D85DE8];
}

+ (void)_migrateRemindersInCalendar:(void *)a3 withContext:(id)a4 listChangeItem:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = CalCalendarCopyTasks();
  if (v10)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __94__CalCalendarDatabaseReminderMigrator__migrateRemindersInCalendar_withContext_listChangeItem___block_invoke;
    v13[3] = &unk_278D6D618;
    v16 = a1;
    v14 = v8;
    v15 = v9;
    [v10 enumerateCalTaskRefsUsingBlock:v13];

    v11 = v14;
  }

  else
  {
    v11 = [a1 _identifierForCalendar:a3];
    v12 = +[CalMigrationLog reminders];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[CalCalendarDatabaseReminderMigrator _migrateRemindersInCalendar:withContext:listChangeItem:];
    }

    [v8 recordMigrationFailureWithDescription:@"Failed to get reminders from calendar" inStage:3 underlyingError:0 relatedTo:v11];
  }
}

+ (void)_migrateReminder:(void *)a3 withContext:(id)a4 listChangeItem:(id)a5
{
  v24[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v24[0] = a3;
  v9 = MEMORY[0x277CBEA60];
  v10 = a5;
  v11 = [v9 arrayWithObjects:v24 count:1];
  v12 = CalCreateiCalendarDataFromCalEntities();
  v13 = [v8 saveRequest];
  v23 = 0;
  v14 = [v13 importRemindersFromICSData:v12 insertIntoListChangeItem:v10 error:&v23];

  v15 = v23;
  v16 = [a1 _identifierForReminder:a3];
  if (!v14)
  {
    v21 = +[CalMigrationLog reminders];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[CalCalendarDatabaseReminderMigrator _migrateReminder:withContext:listChangeItem:];
    }

    v18 = @"Failed to import ICS data";
    v19 = v8;
    v20 = v15;
    goto LABEL_9;
  }

  if (![v14 count])
  {
    v17 = +[CalMigrationLog reminders];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      +[CalCalendarDatabaseReminderMigrator _migrateReminder:withContext:listChangeItem:];
    }

    v18 = @"Imported 0 reminders from ICS data for a reminder";
    v19 = v8;
    v20 = 0;
LABEL_9:
    [v19 recordMigrationFailureWithDescription:v18 inStage:4 underlyingError:v20 relatedTo:v16];
  }

  v22 = *MEMORY[0x277D85DE8];
}

+ (void)_removeRemindersDataAfterSuccessfulMigrationFromDatabase:(CalDatabase *)a3 withContext:(id)a4
{
  v6 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v7 = +[CalMigrationLog reminders];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2428EA000, v7, OS_LOG_TYPE_INFO, "Removing reminders data from CalendarDatabase", buf, 2u);
  }

  v8 = [v6 storesToSetWasMigrated];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __108__CalCalendarDatabaseReminderMigrator__removeRemindersDataAfterSuccessfulMigrationFromDatabase_withContext___block_invoke;
  v22[3] = &unk_278D6D640;
  v22[4] = &v24;
  v22[5] = a1;
  [v8 enumerateCalStoreRefsUsingBlock:v22];

  v9 = [v6 storesToDelete];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __108__CalCalendarDatabaseReminderMigrator__removeRemindersDataAfterSuccessfulMigrationFromDatabase_withContext___block_invoke_44;
  v21[3] = &unk_278D6D640;
  v21[4] = &v24;
  v21[5] = a1;
  [v9 enumerateCalStoreRefsUsingBlock:v21];

  v10 = [v6 calendarsToDelete];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __108__CalCalendarDatabaseReminderMigrator__removeRemindersDataAfterSuccessfulMigrationFromDatabase_withContext___block_invoke_45;
  v20[3] = &unk_278D6D640;
  v20[4] = &v24;
  v20[5] = a1;
  [v10 enumerateCalCalendarRefsUsingBlock:v20];

  v11 = [v6 storesToDisableReminders];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __108__CalCalendarDatabaseReminderMigrator__removeRemindersDataAfterSuccessfulMigrationFromDatabase_withContext___block_invoke_46;
  v19[3] = &unk_278D6D640;
  v19[4] = &v24;
  v19[5] = a1;
  [v11 enumerateCalStoreRefsUsingBlock:v19];

  v12 = [v6 calendarsToDisableReminders];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __108__CalCalendarDatabaseReminderMigrator__removeRemindersDataAfterSuccessfulMigrationFromDatabase_withContext___block_invoke_47;
  v18[3] = &unk_278D6D668;
  v18[5] = a1;
  v18[6] = a3;
  v18[4] = &v24;
  [v12 enumerateCalCalendarRefsUsingBlock:v18];

  v13 = [v6 calendarsToClearSyncToken];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __108__CalCalendarDatabaseReminderMigrator__removeRemindersDataAfterSuccessfulMigrationFromDatabase_withContext___block_invoke_48;
  v17[3] = &unk_278D6D640;
  v17[4] = &v24;
  v17[5] = a1;
  [v13 enumerateCalCalendarRefsUsingBlock:v17];

  if (*(v25 + 24) != 1)
  {
    v14 = +[CalMigrationLog reminders];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v15 = "No reminders data needed to be removed";
      goto LABEL_9;
    }

LABEL_10:

    goto LABEL_14;
  }

  if (CalDatabaseSave())
  {
    CalDatabaseClearAllChangeHistoryForAllClients();
    v14 = +[CalMigrationLog reminders];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v15 = "Finished removing reminders data from CalendarDatabase";
LABEL_9:
      _os_log_impl(&dword_2428EA000, v14, OS_LOG_TYPE_INFO, v15, buf, 2u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v16 = +[CalMigrationLog reminders];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    +[CalCalendarDatabaseReminderMigrator _removeRemindersDataAfterSuccessfulMigrationFromDatabase:withContext:];
  }

  [v6 recordMigrationFailureWithDescription:@"Failed to save database after removing reminders data" inStage:6 underlyingError:0];
LABEL_14:
  _Block_object_dispose(&v24, 8);
}

uint64_t __108__CalCalendarDatabaseReminderMigrator__removeRemindersDataAfterSuccessfulMigrationFromDatabase_withContext___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = +[CalMigrationLog reminders];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 40) _identifierForStore:a3];
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2428EA000, v5, OS_LOG_TYPE_INFO, "Setting WasMigrated on store %{public}@", &v9, 0xCu);
  }

  result = CalStoreSetWasMigrated();
  *(*(*(a1 + 32) + 8) + 24) = 1;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __108__CalCalendarDatabaseReminderMigrator__removeRemindersDataAfterSuccessfulMigrationFromDatabase_withContext___block_invoke_44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = +[CalMigrationLog reminders];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 40) _identifierForStore:a3];
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2428EA000, v5, OS_LOG_TYPE_INFO, "Deleting store %{public}@", &v9, 0xCu);
  }

  result = CalRemoveStore();
  *(*(*(a1 + 32) + 8) + 24) = 1;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __108__CalCalendarDatabaseReminderMigrator__removeRemindersDataAfterSuccessfulMigrationFromDatabase_withContext___block_invoke_45(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = +[CalMigrationLog reminders];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 40) _identifierForCalendar:a3];
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2428EA000, v5, OS_LOG_TYPE_INFO, "Deleting calendar %{public}@", &v9, 0xCu);
  }

  result = CalRemoveCalendar();
  *(*(*(a1 + 32) + 8) + 24) = 1;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __108__CalCalendarDatabaseReminderMigrator__removeRemindersDataAfterSuccessfulMigrationFromDatabase_withContext___block_invoke_46(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = +[CalMigrationLog reminders];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 40) _identifierForStore:a3];
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2428EA000, v5, OS_LOG_TYPE_INFO, "Disabling reminders in store %{public}@", &v9, 0xCu);
  }

  result = CalStoreSetAllowsTasksPrivate();
  *(*(*(a1 + 32) + 8) + 24) = 1;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __108__CalCalendarDatabaseReminderMigrator__removeRemindersDataAfterSuccessfulMigrationFromDatabase_withContext___block_invoke_47(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = +[CalMigrationLog reminders];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 40) _identifierForCalendar:a3];
    v12 = 138543362;
    v13 = v6;
    _os_log_impl(&dword_2428EA000, v5, OS_LOG_TYPE_INFO, "Disabling reminders in calendar %{public}@", &v12, 0xCu);
  }

  CalCalendarSetCanContainEntityType();
  v7 = +[CalMigrationLog reminders];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [*(a1 + 40) _identifierForCalendar:a3];
    v12 = 138543362;
    v13 = v8;
    _os_log_impl(&dword_2428EA000, v7, OS_LOG_TYPE_INFO, "Removing existing reminders from calendar %{public}@", &v12, 0xCu);
  }

  v9 = *(a1 + 48);
  result = CalDatabaseRemoveAllCalendarItemsWithCalendarAndEntityType();
  *(*(*(a1 + 32) + 8) + 24) = 1;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __108__CalCalendarDatabaseReminderMigrator__removeRemindersDataAfterSuccessfulMigrationFromDatabase_withContext___block_invoke_48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = +[CalMigrationLog reminders];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 40) _identifierForCalendar:a3];
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2428EA000, v5, OS_LOG_TYPE_INFO, "Clearing sync token in calendar %{public}@", &v9, 0xCu);
  }

  result = CalCalendarSetSyncToken();
  *(*(*(a1 + 32) + 8) + 24) = 1;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

+ (void)_setWasMigratedAndClearSyncTokenInAllCalendarsForStore:(void *)a3 withContext:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = +[CalMigrationLog reminders];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [a1 _identifierForStore:a3];
    *buf = 138543362;
    v17 = v8;
    _os_log_impl(&dword_2428EA000, v7, OS_LOG_TYPE_INFO, "Adding store %{public}@ to list of stores to set wasMigrated", buf, 0xCu);
  }

  [v6 addStoreToSetWasMigrated:a3];
  v9 = CalStoreCopyCalendars();
  if (v9)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __106__CalCalendarDatabaseReminderMigrator__setWasMigratedAndClearSyncTokenInAllCalendarsForStore_withContext___block_invoke;
    v13[3] = &unk_278D6D558;
    v15 = a1;
    v14 = v6;
    [v9 enumerateCalCalendarRefsUsingBlock:v13];
    v10 = v14;
  }

  else
  {
    v10 = [a1 _identifierForStore:a3];
    v11 = +[CalMigrationLog reminders];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[CalCalendarDatabaseReminderMigrator _migrateReminderListsInStore:withContext:accountChangeItem:accountType:];
    }

    [v6 recordMigrationFailureWithDescription:@"Failed to get calendars from store" inStage:1 underlyingError:0 relatedTo:v10];
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __106__CalCalendarDatabaseReminderMigrator__setWasMigratedAndClearSyncTokenInAllCalendarsForStore_withContext___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = +[CalMigrationLog reminders];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 40) _identifierForCalendar:a3];
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2428EA000, v5, OS_LOG_TYPE_INFO, "Adding calendar %{public}@ to list of calendars to clear sync token", &v9, 0xCu);
  }

  result = [*(a1 + 32) addCalendarToClearSyncToken:a3];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)_identifierForStore:(void *)a3
{
  v3 = CalStoreCopyUUID();

  return v3;
}

+ (id)_identifierForCalendar:(void *)a3
{
  v3 = CalCalendarCopyUUID();

  return v3;
}

+ (id)_identifierForReminder:(void *)a3
{
  v3 = CalCalendarItemCopyUUID();

  return v3;
}

+ (id)_colorStringForCalendar:(void *)a3
{
  v3 = CalCalendarCopySymbolicColorName();
  if (!v3 || (EKSymbolicColorToRGBMapping(), v4 = objc_claimAutoreleasedReturnValue(), [v4 objectForKeyedSubscript:v3], v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    v5 = CalCalendarCopyColorStringForDisplay();
  }

  return v5;
}

- (void)_attemptMigrationWithHomeDirectory:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_attemptMigrationWithCalendarDatabase:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_attemptMigrationForDatabase:inCalendarDirectory:withContext:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_fault_impl(&dword_2428EA000, v0, OS_LOG_TYPE_FAULT, "Exception thrown during migration: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_performPreMigrationTasksInCalendarDirectory:(void *)a1 withContext:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4(&dword_2428EA000, v2, v3, "Failed to remove existing backup in calendar directory %@. error = %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_performPreMigrationTasksInCalendarDirectory:(void *)a1 withContext:.cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_4(&dword_2428EA000, v2, v3, "Failed to back up calendar directory %@. error = %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_performMigrationForCalendarDatabase:inCalendarDirectory:withContext:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_migrateReminderListsInStore:withContext:accountChangeItem:accountType:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_migrateRemindersInCalendar:withContext:listChangeItem:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_migrateReminder:withContext:listChangeItem:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_migrateReminder:withContext:listChangeItem:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  v4 = v0;
  _os_log_error_impl(&dword_2428EA000, v1, OS_LOG_TYPE_ERROR, "Failed to import ICS data for reminder %{public}@. error = %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_removeRemindersDataAfterSuccessfulMigrationFromDatabase:withContext:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end