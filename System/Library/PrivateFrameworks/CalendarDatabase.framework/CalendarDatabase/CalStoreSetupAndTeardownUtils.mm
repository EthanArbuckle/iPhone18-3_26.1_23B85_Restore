@interface CalStoreSetupAndTeardownUtils
+ (BOOL)_clearAllEventsFromStore:(void *)store inDatabase:(CalDatabase *)database;
+ (BOOL)_mergeEntityType:(int)type fromStore:(void *)store toStore:(void *)toStore inDatabase:(CalDatabase *)database;
+ (BOOL)clearAllEventsFromStoreForParentAccount:(id)account withChildren:(id)children inDatabase:(CalDatabase *)database;
+ (BOOL)drainLocalStoreInDatabase:(CalDatabase *)database;
+ (BOOL)isLocalStoreEmptyInDatabase:(CalDatabase *)database;
+ (BOOL)isLocalStoreEnabledInDatabase:(CalDatabase *)database;
+ (BOOL)isReadOnlyAccount:(id)account;
+ (BOOL)isStoreEmptyForAccount:(id)account inDatabase:(CalDatabase *)database;
+ (BOOL)mergeEventsFromLocalStoreIntoStore:(void *)store inDatabase:(CalDatabase *)database;
+ (BOOL)mergeEventsIntoLocalStoreFromStore:(void *)store inDatabase:(CalDatabase *)database;
+ (BOOL)setUpCalStoreForParentAccount:(id)account withChildren:(id)children inDatabase:(CalDatabase *)database;
+ (void)_cleanKeepAwayFromServerCalsInStore:(void *)store;
+ (void)_copyStoreWithExternalIdentifier:(id)identifier inDatabase:(CalDatabase *)database;
+ (void)_enableLocalStoreIfNecessaryIgnoringAccount:(id)account inDatabase:(CalDatabase *)database accountStore:(id)store;
+ (void)cleanupAuxDatabaseIfNeededForAccountID:(id)d auxDatabase:(CalDatabase *)database mainDatabase:(CalDatabase *)mainDatabase;
+ (void)copyStoreForAccount:(id)account withChildren:(id)children inDatabase:(CalDatabase *)database;
+ (void)removeStoreForAccount:(id)account withChildren:(id)children inDatabase:(CalDatabase *)database mainDatabase:(CalDatabase *)mainDatabase accountStore:(id)store;
+ (void)removeStoreForDeletedAccountWithIdentifier:(id)identifier inDatabase:(CalDatabase *)database mainDatabase:(CalDatabase *)mainDatabase accountStore:(id)store;
+ (void)setLocalStoreEnabled:(BOOL)enabled inDatabase:(CalDatabase *)database;
@end

@implementation CalStoreSetupAndTeardownUtils

+ (void)_cleanKeepAwayFromServerCalsInStore:(void *)store
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v4, OS_LOG_TYPE_INFO, "Cleaning out keep away from server calendars", buf, 2u);
  }

  v5 = CalStoreCopyCalendars(store);
  if (v5)
  {
    v6 = v5;
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; i != v8; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
        v11 = CalCalendarCopyType(ValueAtIndex);
        if (CalCalendarIsSubscribed(ValueAtIndex) || CalCalendarIsInbox(ValueAtIndex) || CalCalendarIsNotificationsCollection(ValueAtIndex) || CalCalendarGetSharingStatus(ValueAtIndex) == 3 || v11 && (CFStringCompare(v11, @"caldav", 0) == kCFCompareEqualTo || CFStringCompare(v11, @"urlsubscribe", 0) == kCFCompareEqualTo) || CalCalendarGetSharingStatus(ValueAtIndex) == 2 || CalCalendarIsAlwaysReadOnly(ValueAtIndex))
        {
          v12 = CalCalendarCopyTitle(ValueAtIndex);
          UID = CalCalendarGetUID();
          v14 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
          {
            v15 = MEMORY[0x1E696AD98];
            v16 = v14;
            v17 = [v15 numberWithInt:UID];
            *buf = 138412546;
            v20 = v12;
            v21 = 2112;
            v22 = v17;
            _os_log_impl(&dword_1DEBB1000, v16, OS_LOG_TYPE_INFO, "Dropping calendar %@ (%@) from merge since we don't want it going up to the server", buf, 0x16u);
          }

          CalRemoveCalendar(ValueAtIndex);
        }

        if (v11)
        {
          CFRelease(v11);
        }
      }
    }

    CFRelease(v6);
  }

  v18 = *MEMORY[0x1E69E9840];
}

+ (BOOL)_mergeEntityType:(int)type fromStore:(void *)store toStore:(void *)toStore inDatabase:(CalDatabase *)database
{
  storeCopy = store;
  v28[6] = *MEMORY[0x1E69E9840];
  if (store)
  {
    CountOfCalendarItemsInStore = CalDatabaseGetCountOfCalendarItemsInStore(database, type, store);
    if (toStore)
    {
      v12 = CalDatabaseGetCountOfCalendarItemsInStore(database, type, toStore);
    }

    else
    {
      v12 = 0;
    }

    if (type == 2)
    {
      [self _cleanKeepAwayFromServerCalsInStore:storeCopy];
    }

    v13 = CalDatabaseMigrateCalendarsWithEntityType(database, type, storeCopy, toStore);
    v14 = !v13;
    storeCopy = CalDatabaseGetCountOfCalendarItemsInStore(database, type, storeCopy);
    if (toStore)
    {
      goto LABEL_10;
    }

LABEL_5:
    v15 = 0;
    goto LABEL_11;
  }

  v13 = 0;
  CountOfCalendarItemsInStore = 0;
  v14 = 0;
  v12 = 0;
  if (!toStore)
  {
    goto LABEL_5;
  }

LABEL_10:
  v15 = CalDatabaseGetCountOfCalendarItemsInStore(database, type, toStore);
LABEL_11:
  v16 = CountOfCalendarItemsInStore != v15 - v12;
  v27[0] = @"PreMergeSourceCalendarItemCount";
  v17 = [MEMORY[0x1E696AD98] numberWithInt:CountOfCalendarItemsInStore];
  v28[0] = v17;
  v27[1] = @"PreMergeDestiniationCalendarItemCount";
  v18 = [MEMORY[0x1E696AD98] numberWithInt:v12];
  v28[1] = v18;
  v27[2] = @"PostMergeSourceCalendarItemCount";
  v19 = [MEMORY[0x1E696AD98] numberWithInt:storeCopy];
  v28[2] = v19;
  v27[3] = @"PostMergeDestinationCalendarItemCount";
  v20 = [MEMORY[0x1E696AD98] numberWithInt:v15];
  v28[3] = v20;
  v27[4] = @"ErrorCount";
  v21 = [MEMORY[0x1E696AD98] numberWithInt:v14];
  v28[4] = v21;
  v27[5] = @"CountMismatch";
  v22 = [MEMORY[0x1E696AD98] numberWithBool:v16];
  v28[5] = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:6];

  CalAnalyticsSendEvent();
  if (v13)
  {
    v24 = CalDatabaseSave(database);
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

+ (BOOL)setUpCalStoreForParentAccount:(id)account withChildren:(id)children inDatabase:(CalDatabase *)database
{
  v41 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v9 = [accountCopy calSyncingAccountUsingChildAccounts:children];
  v10 = v9;
  if (v9)
  {
    identifier = [v9 identifier];
    v12 = [self _copyStoreWithExternalIdentifier:identifier inDatabase:database];

    if (v12)
    {
      v13 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
      {
        LOWORD(v39) = 0;
        _os_log_impl(&dword_1DEBB1000, v13, OS_LOG_TYPE_INFO, "Found existing Cal store. Updating...", &v39, 2u);
      }

      CalStoreSetAllowsEvents(v12, 1);
      goto LABEL_20;
    }

    Store = CalDatabaseCreateStore(database);
    v15 = CDBLogHandle;
    if (Store)
    {
      v12 = Store;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
      {
        v16 = v15;
        identifier2 = [v10 identifier];
        v39 = 138543362;
        v40 = identifier2;
        _os_log_impl(&dword_1DEBB1000, v16, OS_LOG_TYPE_INFO, "Creating new Cal store with External ID: %{public}@", &v39, 0xCu);
      }

      accountType = [v10 accountType];
      identifier3 = [accountType identifier];
      v20 = [identifier3 isEqualToString:*MEMORY[0x1E6959818]];

      if (v20)
      {
        v21 = v12;
        goto LABEL_18;
      }

      accountType2 = [v10 accountType];
      identifier4 = [accountType2 identifier];
      if ([identifier4 isEqualToString:*MEMORY[0x1E6959840]])
      {
      }

      else
      {
        accountType3 = [v10 accountType];
        identifier5 = [accountType3 identifier];
        v27 = [identifier5 isEqualToString:*MEMORY[0x1E6959878]];

        if (!v27)
        {
          accountType4 = [v10 accountType];
          identifier6 = [accountType4 identifier];
          v35 = [identifier6 isEqualToString:*MEMORY[0x1E69598F8]];

          if (!v35)
          {
            v36 = CDBLogHandle;
            if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
            {
              v37 = v36;
              accountType5 = [accountCopy accountType];
              v39 = 138543362;
              v40 = accountType5;
              _os_log_impl(&dword_1DEBB1000, v37, OS_LOG_TYPE_ERROR, "Don't know what CalStoreType to set for ACAccountType %{public}@", &v39, 0xCu);
            }

            goto LABEL_19;
          }

          v21 = v12;
LABEL_18:
          CalStoreSetType(v21);
LABEL_19:
          identifier7 = [v10 identifier];
          CalStoreSetExternalID(v12);

          identifier8 = [v10 identifier];
          CalStoreSetUUID(v12, identifier8);

          CalStoreSetAllowsEvents(v12, 1);
          accountDescription = [accountCopy accountDescription];
          CalStoreSetName(v12);

LABEL_20:
          CFRelease(v12);
          v22 = CalDatabaseSave(database);
          goto LABEL_21;
        }
      }

      v21 = v12;
      goto LABEL_18;
    }

    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v39) = 0;
      _os_log_impl(&dword_1DEBB1000, v15, OS_LOG_TYPE_ERROR, "No new Cal store: CalDatabaseCreateStore failed.", &v39, 2u);
    }
  }

  v22 = 0;
LABEL_21:

  v31 = *MEMORY[0x1E69E9840];
  return v22;
}

+ (BOOL)_clearAllEventsFromStore:(void *)store inDatabase:(CalDatabase *)database
{
  v4 = 0;
  v20 = *MEMORY[0x1E69E9840];
  if (store && database)
  {
    v7 = CalStoreCopyCalendars(store);
    if (v7)
    {
      v8 = v7;
      Count = CFArrayGetCount(v7);
      if (Count >= 1)
      {
        v10 = Count;
        for (i = 0; i != v10; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v8, i);
          v13 = CalCalendarCopyTitle(ValueAtIndex);
          v14 = [self _calDAVInfoStringForTitle:v13];
          CalDatabaseSetProperty(database, v14, 0);
          v15 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v19 = v13;
            _os_log_impl(&dword_1DEBB1000, v15, OS_LOG_TYPE_INFO, "Removing calendar with name: %@", buf, 0xCu);
          }

          CalRemoveCalendar(ValueAtIndex);
        }
      }

      v4 = CalDatabaseSave(database);
      CFRelease(v8);
    }

    else
    {
      v4 = 0;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v4;
}

+ (BOOL)clearAllEventsFromStoreForParentAccount:(id)account withChildren:(id)children inDatabase:(CalDatabase *)database
{
  v19 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v9 = [self copyStoreForAccount:accountCopy withChildren:children inDatabase:database];
  if (v9)
  {
    v10 = v9;
    v11 = [self _clearAllEventsFromStore:v9 inDatabase:database];
    CFRelease(v10);
  }

  else
  {
    v12 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v13 = v12;
      identifier = [accountCopy identifier];
      v17 = 138543362;
      v18 = identifier;
      _os_log_impl(&dword_1DEBB1000, v13, OS_LOG_TYPE_ERROR, "Could not clear events from store for account with identifier %{public}@ because no store was found.", &v17, 0xCu);
    }

    v11 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (BOOL)drainLocalStoreInDatabase:(CalDatabase *)database
{
  if (!database)
  {
    return 0;
  }

  v5 = CalDatabaseCopyLocalStore(database);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [self _clearAllEventsFromStore:v5 inDatabase:database];
  CFRelease(v6);
  return v7;
}

+ (void)copyStoreForAccount:(id)account withChildren:(id)children inDatabase:(CalDatabase *)database
{
  v7 = [account calSyncingAccountUsingChildAccounts:children];
  v8 = v7;
  if (v7)
  {
    identifier = [v7 identifier];
    v10 = [self _copyStoreWithExternalIdentifier:identifier inDatabase:database];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)_copyStoreWithExternalIdentifier:(id)identifier inDatabase:(CalDatabase *)database
{
  if (database)
  {
    return CalDatabaseCopyStoreWithExternalID(database, identifier);
  }

  else
  {
    return 0;
  }
}

+ (BOOL)isLocalStoreEnabledInDatabase:(CalDatabase *)database
{
  if (!database)
  {
    return 0;
  }

  v3 = CalDatabaseCopyLocalStore(database);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CalStoreAllowsEvents(v3);
  CFRelease(v4);
  return v5;
}

+ (BOOL)isLocalStoreEmptyInDatabase:(CalDatabase *)database
{
  v18 = *MEMORY[0x1E69E9840];
  if (database)
  {
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = CalDatabaseCopyOfAllStores(database);
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if (!CalStoreGetType(v9) && CalStoreAllowsEvents(v9) && CalDatabaseGetCountOfEventsInStore(database, v9))
          {
            v10 = 0;
            goto LABEL_15;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v10 = 1;
LABEL_15:
  }

  else
  {
    v10 = 1;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)isStoreEmptyForAccount:(id)account inDatabase:(CalDatabase *)database
{
  accountCopy = account;
  childAccounts = [accountCopy childAccounts];
  v8 = [self copyStoreForAccount:accountCopy withChildren:childAccounts inDatabase:database];

  if (v8)
  {
    if (database)
    {
      LOBYTE(database) = CalDatabaseGetCountOfEventsInStore(database, v8) == 0;
    }

    CFRelease(v8);
  }

  else
  {
    LOBYTE(database) = 1;
  }

  return database;
}

+ (void)setLocalStoreEnabled:(BOOL)enabled inDatabase:(CalDatabase *)database
{
  v34 = *MEMORY[0x1E69E9840];
  if (!database)
  {
    goto LABEL_37;
  }

  enabledCopy = enabled;
  if (CalDatabaseIsAuxiliaryDatabase(database))
  {
    [CalStoreSetupAndTeardownUtils setLocalStoreEnabled:a2 inDatabase:self];
  }

  v8 = CalDatabaseCopyLocalStore(database);
  if (!v8)
  {
    if (enabledCopy)
    {
LABEL_37:
      v22 = *MEMORY[0x1E69E9840];
      return;
    }

    v15 = 0;
    goto LABEL_25;
  }

  v9 = v8;
  v23 = CalStoreCopyCalendars(v8);
  if (CalStoreAllowsEvents(v9) != enabledCopy)
  {
    goto LABEL_6;
  }

  if (!enabledCopy)
  {
    v15 = 0;
LABEL_24:
    CFRelease(v9);

LABEL_25:
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = CalDatabaseCopyOfAllStores(database);
    v18 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v25;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v17);
          }

          if (!CalStoreGetType(*(*(&v24 + 1) + 8 * i)) && CalStoreGetUID() != 1)
          {
            CalRemoveStore();
            v15 = 1;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v19);
    }

    if ((v15 & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (![(__CFArray *)v23 count])
  {
LABEL_6:
    CalStoreSetAllowsEvents(v9, enabledCopy);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = v23;
    v11 = [(__CFArray *)v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v10);
          }

          CalStoreRemoveCalendar(v9, *(*(&v28 + 1) + 8 * j));
        }

        v12 = [(__CFArray *)v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v12);
    }

    if (enabledCopy)
    {
      CalCalendarInsertInitialLocalCalendar(database);
      CFRelease(v9);

LABEL_36:
      CalDatabaseSave(database);
      goto LABEL_37;
    }

    v15 = 1;
    goto LABEL_24;
  }

  CFRelease(v9);
  v16 = *MEMORY[0x1E69E9840];
}

+ (void)_enableLocalStoreIfNecessaryIgnoringAccount:(id)account inDatabase:(CalDatabase *)database accountStore:(id)store
{
  v46 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  storeCopy = store;
  v9 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v9, OS_LOG_TYPE_INFO, "Calendars DCO was asked to enable the local store if necessary.", buf, 2u);
  }

  [storeCopy allAccountTypes];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v41 = 0u;
  v30 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (!v30)
  {
    goto LABEL_34;
  }

  databaseCopy = database;
  v28 = *v39;
  v33 = *MEMORY[0x1E6959AE0];
  v27 = 1;
  do
  {
    for (i = 0; i != v30; ++i)
    {
      if (*v39 != v28)
      {
        objc_enumerationMutation(obj);
      }

      v11 = [storeCopy accountsWithAccountType:*(*(&v38 + 1) + 8 * i)];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v34 objects:v44 count:16];
      if (v13)
      {
        v14 = v13;
        v31 = i;
        v15 = *v35;
        while (2)
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v35 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v34 + 1) + 8 * j);
            if (accountCopy && ([*(*(&v34 + 1) + 8 * j) identifier], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(accountCopy, "identifier"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "isEqualToString:", v9)))
            {
            }

            else
            {
              parentAccountIdentifier = [v17 parentAccountIdentifier];
              if (parentAccountIdentifier || ![v17 isEnabledForDataclass:v33])
              {
                v19 = 0;
              }

              else
              {
                v19 = [self isReadOnlyAccount:v17] ^ 1;
              }

              if (accountCopy)
              {

                if (v19)
                {
                  goto LABEL_27;
                }
              }

              else if (v19)
              {
LABEL_27:
                v20 = CDBLogHandle;
                if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
                {
                  v21 = v20;
                  identifier = [v17 identifier];
                  *buf = 138543362;
                  v43 = identifier;
                  _os_log_impl(&dword_1DEBB1000, v21, OS_LOG_TYPE_INFO, "Account with identifier %{public}@ is syncing calendars. Will not enable local store!", buf, 0xCu);
                }

                v27 = 0;
                goto LABEL_30;
              }
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v34 objects:v44 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }

LABEL_30:
        i = v31;
      }
    }

    v30 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
  }

  while (v30);
  database = databaseCopy;
  if (v27)
  {
LABEL_34:
    v23 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v23, OS_LOG_TYPE_INFO, "Enabling local store for events because we didn't find any syncing accounts", buf, 2u);
    }

    [self setLocalStoreEnabled:1 inDatabase:database];
  }

  v24 = *MEMORY[0x1E69E9840];
}

+ (void)cleanupAuxDatabaseIfNeededForAccountID:(id)d auxDatabase:(CalDatabase *)database mainDatabase:(CalDatabase *)mainDatabase
{
  v7 = CalDatabaseCopyAuxDatabaseAccountForAccountID(mainDatabase);
  if (v7)
  {
    v8 = v7;
    v9 = CalAuxDatabaseAccountCopyAuxDatabase(v7);
    CalRemoveAuxDatabaseAccount(v8);
    CalDatabaseSave(mainDatabase);
    CFRelease(v8);
    if (v9)
    {
      v10 = CalAuxDatabaseCopyAccounts(v9);
      if (v10)
      {
        v11 = v10;
        if (!CFArrayGetCount(v10))
        {
          CalDatabaseVacuum(database);
        }

        CFRelease(v11);
      }

      CFRelease(v9);
    }
  }
}

+ (void)removeStoreForAccount:(id)account withChildren:(id)children inDatabase:(CalDatabase *)database mainDatabase:(CalDatabase *)mainDatabase accountStore:(id)store
{
  accountCopy = account;
  storeCopy = store;
  v14 = [self copyStoreForAccount:accountCopy withChildren:children inDatabase:database];
  v15 = v14;
  if (database && v14)
  {
    v16 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&dword_1DEBB1000, v16, OS_LOG_TYPE_INFO, "Removing store because events were disabled or the account was deleted.", v18, 2u);
    }

    CalRemoveStore();
    CalDatabaseSave(database);
    identifier = [accountCopy identifier];
    [self cleanupAuxDatabaseIfNeededForAccountID:identifier auxDatabase:database mainDatabase:mainDatabase];

    goto LABEL_7;
  }

  if (v14)
  {
LABEL_7:
    CFRelease(v15);
  }

  [self _enableLocalStoreIfNecessaryIgnoringAccount:accountCopy inDatabase:mainDatabase accountStore:storeCopy];
}

+ (void)removeStoreForDeletedAccountWithIdentifier:(id)identifier inDatabase:(CalDatabase *)database mainDatabase:(CalDatabase *)mainDatabase accountStore:(id)store
{
  identifierCopy = identifier;
  storeCopy = store;
  v12 = [self _copyStoreForAccountWithIdentifier:identifierCopy inDatabase:database];
  v13 = v12;
  if (database && v12)
  {
    v14 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_1DEBB1000, v14, OS_LOG_TYPE_INFO, "Removing store because the account was deleted.", v15, 2u);
    }

    CalRemoveStore();
    CalDatabaseSave(database);
    [self cleanupAuxDatabaseIfNeededForAccountID:identifierCopy auxDatabase:database mainDatabase:mainDatabase];
    goto LABEL_7;
  }

  if (v12)
  {
LABEL_7:
    CFRelease(v13);
  }

  [self _enableLocalStoreIfNecessaryIgnoringAccount:0 inDatabase:mainDatabase accountStore:storeCopy];
}

+ (BOOL)mergeEventsFromLocalStoreIntoStore:(void *)store inDatabase:(CalDatabase *)database
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v7, OS_LOG_TYPE_INFO, "Attempting to move local store events into a sync store.", buf, 2u);
  }

  LOBYTE(v8) = 0;
  if (store && database)
  {
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = CalDatabaseCopyOfAllStores(database);
    v8 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v8)
    {
      v10 = 0;
      v11 = 0;
      v12 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          if (!CalStoreGetType(v14) && CalStoreAllowsEvents(v14))
          {
            v10 |= [self _mergeEntityType:2 fromStore:v14 toStore:store inDatabase:{database, v17}] ^ 1;
            v11 = 1;
          }
        }

        v8 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v8);
      LOBYTE(v8) = v11 & (v10 ^ 1);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v8 & 1;
}

+ (BOOL)mergeEventsIntoLocalStoreFromStore:(void *)store inDatabase:(CalDatabase *)database
{
  v7 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_1DEBB1000, v7, OS_LOG_TYPE_INFO, "Attempting to move sync store events into local store.", v12, 2u);
  }

  v8 = 0;
  if (store && database)
  {
    v9 = CalDatabaseCopyLocalStore(database);
    if (v9)
    {
      v10 = v9;
      v8 = [self _mergeEntityType:2 fromStore:store toStore:v9 inDatabase:database];
      CFRelease(v10);
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

+ (BOOL)isReadOnlyAccount:(id)account
{
  accountType = [account accountType];
  identifier = [accountType identifier];

  if ([identifier isEqualToString:*MEMORY[0x1E69598F8]])
  {
    v5 = 1;
  }

  else
  {
    v5 = [identifier isEqualToString:*MEMORY[0x1E6959870]];
  }

  return v5;
}

+ (void)setLocalStoreEnabled:(uint64_t)a1 inDatabase:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CalStoreSetupAndTeardownUtils.m" lineNumber:296 description:@"Cannot enable/disable local store in an auxiliary database"];
}

@end