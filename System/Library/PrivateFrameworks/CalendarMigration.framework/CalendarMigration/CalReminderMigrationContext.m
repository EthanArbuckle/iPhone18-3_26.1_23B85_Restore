@interface CalReminderMigrationContext
- (BOOL)_setup;
- (BOOL)_tryBeginMigration;
- (BOOL)ensureAccountsExist:(id)a3;
- (BOOL)finishMigrationWithSave:(BOOL)a3;
- (BOOL)isCurrentOrderedListItemsContextEmpty;
- (REMAccountChangeItem)localAccountChangeItem;
- (REMSaveRequest)saveRequest;
- (id)_initWithReminderKitProvider:(id)a3;
- (id)_sortedAddedListChangeItems;
- (id)accountsForAccountIdentifiers;
- (id)existingAccountChangeItemWithAccountIdentifier:(id)a3;
- (id)reminderStore;
- (void)_loadAccountsIfNeeded;
- (void)_sortAddedReminderListsInAccountChangeItem:(id)a3;
- (void)_verifyAccountHasNoLists:(id)a3 withAccountIdentifier:(id)a4;
- (void)popOrderedListItemsContextAndSortListsInAccountChangeItem:(id)a3;
- (void)pushOrderedListItemsContext;
- (void)recordAddedListChangeItem:(id)a3 withOriginalIdentifier:(id)a4 order:(id)a5;
@end

@implementation CalReminderMigrationContext

- (BOOL)_tryBeginMigration
{
  v3 = [(CalReminderMigrationContext *)self _setup];
  if (!v3)
  {
    [(CalReminderMigrationContext *)self finishMigrationWithSave:0];
  }

  return v3;
}

- (id)_initWithReminderKitProvider:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = CalReminderMigrationContext;
  v6 = [(CalReminderMigrationContext *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reminderKitProvider, a3);
    v8 = [v5 newDatabaseMigrationContext];
    remDatabaseMigrationContext = v7->_remDatabaseMigrationContext;
    v7->_remDatabaseMigrationContext = v8;

    v10 = objc_opt_new();
    orderedListChangeItemsStack = v7->_orderedListChangeItemsStack;
    v7->_orderedListChangeItemsStack = v10;
  }

  return v7;
}

- (BOOL)_setup
{
  if (![(CalReminderMigrationContext *)self shouldPerformMigration])
  {
    return 1;
  }

  [(CalReminderMigrationContext *)self _willBeginMigration];
  v3 = [(CalReminderMigrationContext *)self reminderStore];
  if (v3)
  {
    v4 = [(CalReminderMigrationContext *)self saveRequest];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)ensureAccountsExist:(id)a3
{
  remDatabaseMigrationContext = self->_remDatabaseMigrationContext;
  v9 = 0;
  v5 = [(CalReminderKitDatabaseMigrationContext *)remDatabaseMigrationContext ensureAccountsExist:a3 error:&v9];
  v6 = v9;
  if ((v5 & 1) == 0)
  {
    v7 = +[CalMigrationLog reminders];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CalReminderMigrationContext ensureAccountsExist:];
    }

    [(CalReminderMigrationContext *)self recordMigrationFailureWithDescription:@"Failed to create accounts" inStage:2 underlyingError:v6];
  }

  return v5;
}

- (id)reminderStore
{
  reminderStore = self->_reminderStore;
  if (!reminderStore)
  {
    v4 = [(CalReminderKitDatabaseMigrationContext *)self->_remDatabaseMigrationContext reminderStore];
    v5 = self->_reminderStore;
    self->_reminderStore = v4;

    reminderStore = self->_reminderStore;
    if (!reminderStore)
    {
      v6 = +[CalMigrationLog reminders];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [CalReminderMigrationContext reminderStore];
      }

      [(CalReminderMigrationContext *)self recordMigrationFailureWithDescription:@"Failed to get reminder store" inStage:1 underlyingError:0];
      reminderStore = self->_reminderStore;
    }
  }

  return reminderStore;
}

- (REMSaveRequest)saveRequest
{
  saveRequest = self->_saveRequest;
  if (!saveRequest)
  {
    v4 = [(CalReminderMigrationContext *)self reminderKitProvider];
    v5 = [(CalReminderMigrationContext *)self reminderStore];
    v6 = [v4 newSaveRequestWithStore:v5];
    v7 = self->_saveRequest;
    self->_saveRequest = v6;

    v8 = self->_saveRequest;
    if (!v8)
    {
      v9 = +[CalMigrationLog reminders];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CalReminderMigrationContext saveRequest];
      }

      [(CalReminderMigrationContext *)self recordMigrationFailureWithDescription:@"Failed to create save request" inStage:1 underlyingError:0];
      v8 = self->_saveRequest;
    }

    [(REMSaveRequest *)v8 setAuthor:*MEMORY[0x277CF7900]];
    [(REMSaveRequest *)self->_saveRequest setCloneCompletedRecurrentRemindersAtSave:0];
    saveRequest = self->_saveRequest;
  }

  return saveRequest;
}

- (REMAccountChangeItem)localAccountChangeItem
{
  localAccountChangeItem = self->_localAccountChangeItem;
  if (!localAccountChangeItem)
  {
    [(CalReminderMigrationContext *)self _loadAccountsIfNeeded];
    if (self->_localAccount)
    {
      v4 = [(CalReminderMigrationContext *)self saveRequest];
      v5 = [v4 updateAccount:self->_localAccount];
    }

    else
    {
      v6 = +[CalMigrationLog reminders];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [CalReminderMigrationContext localAccountChangeItem];
      }

      v4 = [(CalReminderMigrationContext *)self saveRequest];
      v5 = [v4 _addAccountWithType:1 name:@"Local"];
    }

    v7 = self->_localAccountChangeItem;
    self->_localAccountChangeItem = v5;

    localAccountChangeItem = self->_localAccountChangeItem;
  }

  v8 = localAccountChangeItem;

  return v8;
}

- (id)existingAccountChangeItemWithAccountIdentifier:(id)a3
{
  v4 = a3;
  accountChangeItemsForAccountIdentifiers = self->_accountChangeItemsForAccountIdentifiers;
  if (!accountChangeItemsForAccountIdentifiers)
  {
    v6 = objc_opt_new();
    v7 = self->_accountChangeItemsForAccountIdentifiers;
    self->_accountChangeItemsForAccountIdentifiers = v6;

    accountChangeItemsForAccountIdentifiers = self->_accountChangeItemsForAccountIdentifiers;
  }

  v8 = [(NSMutableDictionary *)accountChangeItemsForAccountIdentifiers objectForKeyedSubscript:v4];
  if (!v8)
  {
    v9 = [(CalReminderMigrationContext *)self accountsForAccountIdentifiers];
    v10 = [v9 objectForKeyedSubscript:v4];

    if (v10)
    {
      v11 = [(CalReminderMigrationContext *)self saveRequest];
      v8 = [v11 updateAccount:v10];

      if (v8)
      {
        [(NSMutableDictionary *)self->_accountChangeItemsForAccountIdentifiers setObject:v8 forKeyedSubscript:v4];
      }

      else
      {
        v13 = +[CalMigrationLog reminders];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [CalReminderMigrationContext existingAccountChangeItemWithAccountIdentifier:];
        }
      }

      [(CalReminderMigrationContext *)self _verifyAccountHasNoLists:v10 withAccountIdentifier:v4];
    }

    else
    {
      v12 = +[CalMigrationLog reminders];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CalReminderMigrationContext existingAccountChangeItemWithAccountIdentifier:];
      }

      v8 = 0;
    }
  }

  return v8;
}

- (void)_verifyAccountHasNoLists:(id)a3 withAccountIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = 0;
  v8 = [v6 fetchListsWithError:&v12];
  v9 = v12;
  if (!v8)
  {
    v10 = +[CalMigrationLog reminders];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CalReminderMigrationContext *)v7 _verifyAccountHasNoLists:v6 withAccountIdentifier:v10];
    }
  }

  if ([v8 count])
  {
    v11 = +[CalMigrationLog reminders];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CalReminderMigrationContext _verifyAccountHasNoLists:withAccountIdentifier:];
    }

    [(CalReminderMigrationContext *)self recordMigrationFailureWithDescription:@"Migrating data into account with existing lists" inStage:2 underlyingError:0 relatedTo:v7];
  }
}

- (id)accountsForAccountIdentifiers
{
  [(CalReminderMigrationContext *)self _loadAccountsIfNeeded];
  accountsForAccountIdentifiers = self->_accountsForAccountIdentifiers;

  return accountsForAccountIdentifiers;
}

- (void)_loadAccountsIfNeeded
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)recordAddedListChangeItem:(id)a3 withOriginalIdentifier:(id)a4 order:(id)a5
{
  v19 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    v10 = [(CalReminderMigrationContext *)self defaultListOriginalIdentifier];
    if (v10)
    {
      v11 = v10;
      v12 = [(CalReminderMigrationContext *)self defaultListOriginalIdentifier];
      v13 = [v8 isEqualToString:v12];

      if (v13)
      {
        v14 = [v19 objectID];
        defaultListMigratedIdentifier = self->_defaultListMigratedIdentifier;
        self->_defaultListMigratedIdentifier = v14;
      }
    }
  }

  v16 = objc_opt_new();
  [v16 setListChangeItem:v19];
  if (v9)
  {
    v17 = [v9 integerValue];
  }

  else
  {
    v17 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [v16 setOrder:v17];
  v18 = [(NSMutableArray *)self->_orderedListChangeItemsStack lastObject];
  [v18 addObject:v16];
}

- (void)pushOrderedListItemsContext
{
  orderedListChangeItemsStack = self->_orderedListChangeItemsStack;
  v3 = objc_opt_new();
  [(NSMutableArray *)orderedListChangeItemsStack addObject:v3];
}

- (void)popOrderedListItemsContextAndSortListsInAccountChangeItem:(id)a3
{
  [(CalReminderMigrationContext *)self _sortAddedReminderListsInAccountChangeItem:a3];
  orderedListChangeItemsStack = self->_orderedListChangeItemsStack;

  [(NSMutableArray *)orderedListChangeItemsStack removeLastObject];
}

- (BOOL)isCurrentOrderedListItemsContextEmpty
{
  v2 = [(NSMutableArray *)self->_orderedListChangeItemsStack lastObject];
  v3 = [v2 count] == 0;

  return v3;
}

- (void)_sortAddedReminderListsInAccountChangeItem:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(CalReminderMigrationContext *)self _sortedAddedListChangeItems];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v30 = 0u;
  v5 = [obj countByEnumeratingWithState:&v27 objects:v41 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = 0;
    v10 = *v28;
    v11 = 0x278D6D000uLL;
    *&v6 = 138413314;
    v23 = v6;
    v24 = v4;
    do
    {
      v12 = 0;
      v13 = v9;
      v25 = v7;
      do
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v27 + 1) + 8 * v12);
        v9 = [v14 listChangeItem];
        v15 = [v14 order];
        if (v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          ++v8;
        }

        else
        {
          v8 = v15;
        }

        v16 = [*(v11 + 312) reminders];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v9 name];
          v18 = [v9 objectID];
          v19 = [v13 name];
          [v13 objectID];
          v21 = v20 = v10;
          *buf = v23;
          v32 = v17;
          v33 = 2114;
          v34 = v18;
          v35 = 2112;
          v36 = v19;
          v37 = 2114;
          v38 = v21;
          v39 = 2048;
          v40 = v8;
          _os_log_impl(&dword_2428EA000, v16, OS_LOG_TYPE_DEFAULT, "Inserting List %@ (%{public}@) after list %@ (%{public}@) and assigning it order %li", buf, 0x34u);

          v10 = v20;
          v7 = v25;

          v4 = v24;
          v11 = 0x278D6D000;
        }

        [v9 setDaDisplayOrder:v8];
        [v4 insertListChangeItem:v9 afterListChangeItem:v13];

        ++v12;
        v13 = v9;
      }

      while (v7 != v12);
      v7 = [obj countByEnumeratingWithState:&v27 objects:v41 count:16];
    }

    while (v7);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)_sortedAddedListChangeItems
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"order" ascending:1];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v5 = [(NSMutableArray *)self->_orderedListChangeItemsStack lastObject];
  v6 = [v5 sortedArrayUsingDescriptors:v4];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)finishMigrationWithSave:(BOOL)a3
{
  v23 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = [(CalReminderMigrationContext *)self saveRequest];
    v18 = 0;
    v5 = [v4 saveSynchronouslyWithError:&v18];
    v6 = v18;

    if ((v5 & 1) == 0)
    {
      v7 = +[CalMigrationLog reminders];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [CalReminderMigrationContext finishMigrationWithSave:];
      }

      [(CalReminderMigrationContext *)self recordMigrationFailureWithDescription:@"Failed to save reminder store" inStage:5 underlyingError:v6];
    }
  }

  else
  {
    v6 = 0;
  }

  recordedAnyFatalFailures = self->_recordedAnyFatalFailures;
  if (!recordedAnyFatalFailures)
  {
    v9 = [(CalReminderMigrationContext *)self defaultListOriginalIdentifier];

    if (v9)
    {
      defaultListMigratedIdentifier = self->_defaultListMigratedIdentifier;
      v11 = +[CalMigrationLog reminders];
      v12 = v11;
      if (defaultListMigratedIdentifier)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [(CalReminderMigrationContext *)self defaultListOriginalIdentifier];
          v14 = [(CalReminderMigrationContext *)self defaultListMigratedIdentifier];
          *buf = 138543618;
          v20 = v13;
          v21 = 2114;
          v22 = v14;
          _os_log_impl(&dword_2428EA000, v12, OS_LOG_TYPE_DEFAULT, "Migrating default reminder list with original identifier %{public}@ and migrated identifier %{public}@", buf, 0x16u);
        }

        v15 = [(CalReminderMigrationContext *)self reminderKitProvider];
        [v15 setDefaultReminderListIdentifier:self->_defaultListMigratedIdentifier];
      }

      else
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [(CalReminderMigrationContext *)self finishMigrationWithSave:v12];
        }

        v15 = [(CalReminderMigrationContext *)self defaultListOriginalIdentifier];
        [(CalReminderMigrationContext *)self recordMigrationFailureWithDescription:@"Failed to find migrated default reminder list" inStage:5 underlyingError:0 relatedTo:v15 isFatal:0];
      }
    }

    else
    {
      v15 = +[CalMigrationLog reminders];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2428EA000, v15, OS_LOG_TYPE_DEFAULT, "No default reminder list was set.", buf, 2u);
      }
    }
  }

  [(CalReminderMigrationContext *)self _didEndMigrationWithSuccess:!recordedAnyFatalFailures];

  v16 = *MEMORY[0x277D85DE8];
  return !recordedAnyFatalFailures;
}

- (void)ensureAccountsExist:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)existingAccountChangeItemWithAccountIdentifier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)existingAccountChangeItemWithAccountIdentifier:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_verifyAccountHasNoLists:(NSObject *)a3 withAccountIdentifier:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a2 objectID];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_2428EA000, a3, OS_LOG_TYPE_ERROR, "Failed to fetch lists for account with identifier = %{public}@, objectID = %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_verifyAccountHasNoLists:withAccountIdentifier:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)finishMigrationWithSave:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)finishMigrationWithSave:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 defaultListOriginalIdentifier];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_2428EA000, a2, OS_LOG_TYPE_ERROR, "Failed to find migrated default reminder list with original identifier %{public}@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end