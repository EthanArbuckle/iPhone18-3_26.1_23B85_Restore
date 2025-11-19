@interface CalStoreSetupAndTeardownUtils
+ (BOOL)_clearAllEventsFromStore:(void *)a3 inDatabase:(CalDatabase *)a4;
+ (BOOL)_mergeEntityType:(int)a3 fromStore:(void *)a4 toStore:(void *)a5 inDatabase:(CalDatabase *)a6;
+ (BOOL)clearAllEventsFromStoreForParentAccount:(id)a3 withChildren:(id)a4 inDatabase:(CalDatabase *)a5;
+ (BOOL)drainLocalStoreInDatabase:(CalDatabase *)a3;
+ (BOOL)isLocalStoreEmptyInDatabase:(CalDatabase *)a3;
+ (BOOL)isLocalStoreEnabledInDatabase:(CalDatabase *)a3;
+ (BOOL)isReadOnlyAccount:(id)a3;
+ (BOOL)isStoreEmptyForAccount:(id)a3 inDatabase:(CalDatabase *)a4;
+ (BOOL)mergeEventsFromLocalStoreIntoStore:(void *)a3 inDatabase:(CalDatabase *)a4;
+ (BOOL)mergeEventsIntoLocalStoreFromStore:(void *)a3 inDatabase:(CalDatabase *)a4;
+ (BOOL)setUpCalStoreForParentAccount:(id)a3 withChildren:(id)a4 inDatabase:(CalDatabase *)a5;
+ (void)_cleanKeepAwayFromServerCalsInStore:(void *)a3;
+ (void)_copyStoreWithExternalIdentifier:(id)a3 inDatabase:(CalDatabase *)a4;
+ (void)_enableLocalStoreIfNecessaryIgnoringAccount:(id)a3 inDatabase:(CalDatabase *)a4 accountStore:(id)a5;
+ (void)cleanupAuxDatabaseIfNeededForAccountID:(id)a3 auxDatabase:(CalDatabase *)a4 mainDatabase:(CalDatabase *)a5;
+ (void)copyStoreForAccount:(id)a3 withChildren:(id)a4 inDatabase:(CalDatabase *)a5;
+ (void)removeStoreForAccount:(id)a3 withChildren:(id)a4 inDatabase:(CalDatabase *)a5 mainDatabase:(CalDatabase *)a6 accountStore:(id)a7;
+ (void)removeStoreForDeletedAccountWithIdentifier:(id)a3 inDatabase:(CalDatabase *)a4 mainDatabase:(CalDatabase *)a5 accountStore:(id)a6;
+ (void)setLocalStoreEnabled:(BOOL)a3 inDatabase:(CalDatabase *)a4;
@end

@implementation CalStoreSetupAndTeardownUtils

+ (void)_cleanKeepAwayFromServerCalsInStore:(void *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v4, OS_LOG_TYPE_INFO, "Cleaning out keep away from server calendars", buf, 2u);
  }

  v5 = CalStoreCopyCalendars(a3);
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

+ (BOOL)_mergeEntityType:(int)a3 fromStore:(void *)a4 toStore:(void *)a5 inDatabase:(CalDatabase *)a6
{
  v8 = a4;
  v28[6] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    CountOfCalendarItemsInStore = CalDatabaseGetCountOfCalendarItemsInStore(a6, a3, a4);
    if (a5)
    {
      v12 = CalDatabaseGetCountOfCalendarItemsInStore(a6, a3, a5);
    }

    else
    {
      v12 = 0;
    }

    if (a3 == 2)
    {
      [a1 _cleanKeepAwayFromServerCalsInStore:v8];
    }

    v13 = CalDatabaseMigrateCalendarsWithEntityType(a6, a3, v8, a5);
    v14 = !v13;
    v8 = CalDatabaseGetCountOfCalendarItemsInStore(a6, a3, v8);
    if (a5)
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
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_10:
  v15 = CalDatabaseGetCountOfCalendarItemsInStore(a6, a3, a5);
LABEL_11:
  v16 = CountOfCalendarItemsInStore != v15 - v12;
  v27[0] = @"PreMergeSourceCalendarItemCount";
  v17 = [MEMORY[0x1E696AD98] numberWithInt:CountOfCalendarItemsInStore];
  v28[0] = v17;
  v27[1] = @"PreMergeDestiniationCalendarItemCount";
  v18 = [MEMORY[0x1E696AD98] numberWithInt:v12];
  v28[1] = v18;
  v27[2] = @"PostMergeSourceCalendarItemCount";
  v19 = [MEMORY[0x1E696AD98] numberWithInt:v8];
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
    v24 = CalDatabaseSave(a6);
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

+ (BOOL)setUpCalStoreForParentAccount:(id)a3 withChildren:(id)a4 inDatabase:(CalDatabase *)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [v8 calSyncingAccountUsingChildAccounts:a4];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 identifier];
    v12 = [a1 _copyStoreWithExternalIdentifier:v11 inDatabase:a5];

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

    Store = CalDatabaseCreateStore(a5);
    v15 = CDBLogHandle;
    if (Store)
    {
      v12 = Store;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
      {
        v16 = v15;
        v17 = [v10 identifier];
        v39 = 138543362;
        v40 = v17;
        _os_log_impl(&dword_1DEBB1000, v16, OS_LOG_TYPE_INFO, "Creating new Cal store with External ID: %{public}@", &v39, 0xCu);
      }

      v18 = [v10 accountType];
      v19 = [v18 identifier];
      v20 = [v19 isEqualToString:*MEMORY[0x1E6959818]];

      if (v20)
      {
        v21 = v12;
        goto LABEL_18;
      }

      v23 = [v10 accountType];
      v24 = [v23 identifier];
      if ([v24 isEqualToString:*MEMORY[0x1E6959840]])
      {
      }

      else
      {
        v25 = [v10 accountType];
        v26 = [v25 identifier];
        v27 = [v26 isEqualToString:*MEMORY[0x1E6959878]];

        if (!v27)
        {
          v33 = [v10 accountType];
          v34 = [v33 identifier];
          v35 = [v34 isEqualToString:*MEMORY[0x1E69598F8]];

          if (!v35)
          {
            v36 = CDBLogHandle;
            if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
            {
              v37 = v36;
              v38 = [v8 accountType];
              v39 = 138543362;
              v40 = v38;
              _os_log_impl(&dword_1DEBB1000, v37, OS_LOG_TYPE_ERROR, "Don't know what CalStoreType to set for ACAccountType %{public}@", &v39, 0xCu);
            }

            goto LABEL_19;
          }

          v21 = v12;
LABEL_18:
          CalStoreSetType(v21);
LABEL_19:
          v28 = [v10 identifier];
          CalStoreSetExternalID(v12);

          v29 = [v10 identifier];
          CalStoreSetUUID(v12, v29);

          CalStoreSetAllowsEvents(v12, 1);
          v30 = [v8 accountDescription];
          CalStoreSetName(v12);

LABEL_20:
          CFRelease(v12);
          v22 = CalDatabaseSave(a5);
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

+ (BOOL)_clearAllEventsFromStore:(void *)a3 inDatabase:(CalDatabase *)a4
{
  v4 = 0;
  v20 = *MEMORY[0x1E69E9840];
  if (a3 && a4)
  {
    v7 = CalStoreCopyCalendars(a3);
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
          v14 = [a1 _calDAVInfoStringForTitle:v13];
          CalDatabaseSetProperty(a4, v14, 0);
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

      v4 = CalDatabaseSave(a4);
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

+ (BOOL)clearAllEventsFromStoreForParentAccount:(id)a3 withChildren:(id)a4 inDatabase:(CalDatabase *)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [a1 copyStoreForAccount:v8 withChildren:a4 inDatabase:a5];
  if (v9)
  {
    v10 = v9;
    v11 = [a1 _clearAllEventsFromStore:v9 inDatabase:a5];
    CFRelease(v10);
  }

  else
  {
    v12 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v13 = v12;
      v14 = [v8 identifier];
      v17 = 138543362;
      v18 = v14;
      _os_log_impl(&dword_1DEBB1000, v13, OS_LOG_TYPE_ERROR, "Could not clear events from store for account with identifier %{public}@ because no store was found.", &v17, 0xCu);
    }

    v11 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (BOOL)drainLocalStoreInDatabase:(CalDatabase *)a3
{
  if (!a3)
  {
    return 0;
  }

  v5 = CalDatabaseCopyLocalStore(a3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [a1 _clearAllEventsFromStore:v5 inDatabase:a3];
  CFRelease(v6);
  return v7;
}

+ (void)copyStoreForAccount:(id)a3 withChildren:(id)a4 inDatabase:(CalDatabase *)a5
{
  v7 = [a3 calSyncingAccountUsingChildAccounts:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 identifier];
    v10 = [a1 _copyStoreWithExternalIdentifier:v9 inDatabase:a5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)_copyStoreWithExternalIdentifier:(id)a3 inDatabase:(CalDatabase *)a4
{
  if (a4)
  {
    return CalDatabaseCopyStoreWithExternalID(a4, a3);
  }

  else
  {
    return 0;
  }
}

+ (BOOL)isLocalStoreEnabledInDatabase:(CalDatabase *)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = CalDatabaseCopyLocalStore(a3);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CalStoreAllowsEvents(v3);
  CFRelease(v4);
  return v5;
}

+ (BOOL)isLocalStoreEmptyInDatabase:(CalDatabase *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = CalDatabaseCopyOfAllStores(a3);
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
          if (!CalStoreGetType(v9) && CalStoreAllowsEvents(v9) && CalDatabaseGetCountOfEventsInStore(a3, v9))
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

+ (BOOL)isStoreEmptyForAccount:(id)a3 inDatabase:(CalDatabase *)a4
{
  v6 = a3;
  v7 = [v6 childAccounts];
  v8 = [a1 copyStoreForAccount:v6 withChildren:v7 inDatabase:a4];

  if (v8)
  {
    if (a4)
    {
      LOBYTE(a4) = CalDatabaseGetCountOfEventsInStore(a4, v8) == 0;
    }

    CFRelease(v8);
  }

  else
  {
    LOBYTE(a4) = 1;
  }

  return a4;
}

+ (void)setLocalStoreEnabled:(BOOL)a3 inDatabase:(CalDatabase *)a4
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    goto LABEL_37;
  }

  v5 = a3;
  if (CalDatabaseIsAuxiliaryDatabase(a4))
  {
    [CalStoreSetupAndTeardownUtils setLocalStoreEnabled:a2 inDatabase:a1];
  }

  v8 = CalDatabaseCopyLocalStore(a4);
  if (!v8)
  {
    if (v5)
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
  if (CalStoreAllowsEvents(v9) != v5)
  {
    goto LABEL_6;
  }

  if (!v5)
  {
    v15 = 0;
LABEL_24:
    CFRelease(v9);

LABEL_25:
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = CalDatabaseCopyOfAllStores(a4);
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
    CalStoreSetAllowsEvents(v9, v5);
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

    if (v5)
    {
      CalCalendarInsertInitialLocalCalendar(a4);
      CFRelease(v9);

LABEL_36:
      CalDatabaseSave(a4);
      goto LABEL_37;
    }

    v15 = 1;
    goto LABEL_24;
  }

  CFRelease(v9);
  v16 = *MEMORY[0x1E69E9840];
}

+ (void)_enableLocalStoreIfNecessaryIgnoringAccount:(id)a3 inDatabase:(CalDatabase *)a4 accountStore:(id)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v29 = a5;
  v9 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v9, OS_LOG_TYPE_INFO, "Calendars DCO was asked to enable the local store if necessary.", buf, 2u);
  }

  [v29 allAccountTypes];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v41 = 0u;
  v30 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (!v30)
  {
    goto LABEL_34;
  }

  v25 = a4;
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

      v11 = [v29 accountsWithAccountType:*(*(&v38 + 1) + 8 * i)];
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
            if (v8 && ([*(*(&v34 + 1) + 8 * j) identifier], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "identifier"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "isEqualToString:", v9)))
            {
            }

            else
            {
              v18 = [v17 parentAccountIdentifier];
              if (v18 || ![v17 isEnabledForDataclass:v33])
              {
                v19 = 0;
              }

              else
              {
                v19 = [a1 isReadOnlyAccount:v17] ^ 1;
              }

              if (v8)
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
                  v22 = [v17 identifier];
                  *buf = 138543362;
                  v43 = v22;
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
  a4 = v25;
  if (v27)
  {
LABEL_34:
    v23 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v23, OS_LOG_TYPE_INFO, "Enabling local store for events because we didn't find any syncing accounts", buf, 2u);
    }

    [a1 setLocalStoreEnabled:1 inDatabase:a4];
  }

  v24 = *MEMORY[0x1E69E9840];
}

+ (void)cleanupAuxDatabaseIfNeededForAccountID:(id)a3 auxDatabase:(CalDatabase *)a4 mainDatabase:(CalDatabase *)a5
{
  v7 = CalDatabaseCopyAuxDatabaseAccountForAccountID(a5);
  if (v7)
  {
    v8 = v7;
    v9 = CalAuxDatabaseAccountCopyAuxDatabase(v7);
    CalRemoveAuxDatabaseAccount(v8);
    CalDatabaseSave(a5);
    CFRelease(v8);
    if (v9)
    {
      v10 = CalAuxDatabaseCopyAccounts(v9);
      if (v10)
      {
        v11 = v10;
        if (!CFArrayGetCount(v10))
        {
          CalDatabaseVacuum(a4);
        }

        CFRelease(v11);
      }

      CFRelease(v9);
    }
  }
}

+ (void)removeStoreForAccount:(id)a3 withChildren:(id)a4 inDatabase:(CalDatabase *)a5 mainDatabase:(CalDatabase *)a6 accountStore:(id)a7
{
  v12 = a3;
  v13 = a7;
  v14 = [a1 copyStoreForAccount:v12 withChildren:a4 inDatabase:a5];
  v15 = v14;
  if (a5 && v14)
  {
    v16 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&dword_1DEBB1000, v16, OS_LOG_TYPE_INFO, "Removing store because events were disabled or the account was deleted.", v18, 2u);
    }

    CalRemoveStore();
    CalDatabaseSave(a5);
    v17 = [v12 identifier];
    [a1 cleanupAuxDatabaseIfNeededForAccountID:v17 auxDatabase:a5 mainDatabase:a6];

    goto LABEL_7;
  }

  if (v14)
  {
LABEL_7:
    CFRelease(v15);
  }

  [a1 _enableLocalStoreIfNecessaryIgnoringAccount:v12 inDatabase:a6 accountStore:v13];
}

+ (void)removeStoreForDeletedAccountWithIdentifier:(id)a3 inDatabase:(CalDatabase *)a4 mainDatabase:(CalDatabase *)a5 accountStore:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [a1 _copyStoreForAccountWithIdentifier:v10 inDatabase:a4];
  v13 = v12;
  if (a4 && v12)
  {
    v14 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_1DEBB1000, v14, OS_LOG_TYPE_INFO, "Removing store because the account was deleted.", v15, 2u);
    }

    CalRemoveStore();
    CalDatabaseSave(a4);
    [a1 cleanupAuxDatabaseIfNeededForAccountID:v10 auxDatabase:a4 mainDatabase:a5];
    goto LABEL_7;
  }

  if (v12)
  {
LABEL_7:
    CFRelease(v13);
  }

  [a1 _enableLocalStoreIfNecessaryIgnoringAccount:0 inDatabase:a5 accountStore:v11];
}

+ (BOOL)mergeEventsFromLocalStoreIntoStore:(void *)a3 inDatabase:(CalDatabase *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v7, OS_LOG_TYPE_INFO, "Attempting to move local store events into a sync store.", buf, 2u);
  }

  LOBYTE(v8) = 0;
  if (a3 && a4)
  {
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = CalDatabaseCopyOfAllStores(a4);
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
            v10 |= [a1 _mergeEntityType:2 fromStore:v14 toStore:a3 inDatabase:{a4, v17}] ^ 1;
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

+ (BOOL)mergeEventsIntoLocalStoreFromStore:(void *)a3 inDatabase:(CalDatabase *)a4
{
  v7 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_1DEBB1000, v7, OS_LOG_TYPE_INFO, "Attempting to move sync store events into local store.", v12, 2u);
  }

  v8 = 0;
  if (a3 && a4)
  {
    v9 = CalDatabaseCopyLocalStore(a4);
    if (v9)
    {
      v10 = v9;
      v8 = [a1 _mergeEntityType:2 fromStore:a3 toStore:v9 inDatabase:a4];
      CFRelease(v10);
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

+ (BOOL)isReadOnlyAccount:(id)a3
{
  v3 = [a3 accountType];
  v4 = [v3 identifier];

  if ([v4 isEqualToString:*MEMORY[0x1E69598F8]])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:*MEMORY[0x1E6959870]];
  }

  return v5;
}

+ (void)setLocalStoreEnabled:(uint64_t)a1 inDatabase:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CalStoreSetupAndTeardownUtils.m" lineNumber:296 description:@"Cannot enable/disable local store in an auxiliary database"];
}

@end