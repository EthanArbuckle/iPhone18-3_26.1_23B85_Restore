@interface ESReminderKitHelper
+ (id)sharedReminderKitHelper;
- (BOOL)_addReminderFolders:(id)a3 forAccount:(id)a4;
- (BOOL)_deleteList:(id)a3 forAccount:(id)a4;
- (BOOL)_populateChangeItem:(id)a3 forRecurrence:(id)a4 forReminder:(id)a5 forFolderWithId:(id)a6 forAccount:(id)a7;
- (BOOL)_populateChangeItem:(id)a3 forReminder:(id)a4 folderWithId:(id)a5 forAccount:(id)a6;
- (BOOL)addFolder:(id)a3 forAccount:(id)a4;
- (BOOL)addOrModifyReminder:(id)a3 forFolderWithId:(id)a4 forAccount:(id)a5;
- (BOOL)bestEffortApplyNewFolders:(id)a3 oldFolders:(id)a4 forAccount:(id)a5 shouldCreateFoldersMissingInDB:(BOOL)a6;
- (BOOL)commitChangesToStore;
- (BOOL)deleteFolder:(id)a3 forAccount:(id)a4;
- (BOOL)deleteReminder:(id)a3 forFolderWithId:(id)a4 forAccount:(id)a5;
- (BOOL)initialSyncReminder:(id)a3 forFolderWithId:(id)a4 forAccount:(id)a5 resultingAction:(id *)a6;
- (BOOL)isFolderExistsWithId:(id)a3 forAccount:(id)a4;
- (BOOL)updateExtenalIDForFolder:(id)a3 forAccount:(id)a4;
- (BOOL)updateExtenalIDForReminder:(id)a3 forFolderWithId:(id)a4 forAccount:(id)a5;
- (BOOL)updateSyncKey:(id)a3 forFolderWithId:(id)a4 forAccount:(id)a5;
- (BOOL)verifyDefaultFolderId:(id)a3 forAccount:(id)a4;
- (ESReminderKitHelper)init;
- (id)_getReminderSaveRequest;
- (id)_loadAttributesFromReminder:(id)a3 forAccount:(id)a4;
- (id)_loadAttributesFromRemlist:(id)a3 forAccount:(id)a4;
- (id)_localDeletedReminderActionsForFolderId:(id)a3 forAccount:(id)a4;
- (id)_localLazyDeletedReminderActionsForFolderId:(id)a3 forAccount:(id)a4;
- (id)_localModifiedReminderActionsForFolderId:(id)a3 forAccount:(id)a4;
- (id)_localUndeletedReminderActionsForFolderId:(id)a3 forAccount:(id)a4;
- (id)_remDaysOfWeekFromASDayOfWeek:(int)a3 weekOfMonth:(int)a4;
- (id)_remExternalRepresentationClasses;
- (id)_reminderAccountForAccount:(id)a3;
- (id)_reminderListWithExternalId:(id)a3 forReminderAccount:(id)a4;
- (id)_reminderListWithObjectUUID:(id)a3 forReminderAccount:(id)a4;
- (id)_reminderListsForAccount:(id)a3;
- (id)_reminderMatchingAttributesInReminder:(id)a3 list:(id)a4;
- (id)_reminderWithExternalId:(id)a3 list:(id)a4;
- (id)_reminderWithObjectUUID:(id)a3 list:(id)a4;
- (id)getFolderIdsForAccount:(id)a3;
- (id)localAddedFoldersForAccount:(id)a3;
- (id)localChangedReminderActionsForFolderId:(id)a3 forAccount:(id)a4;
- (id)localDeletedFoldersForAccount:(id)a3;
- (id)localModifiedFoldersForAccount:(id)a3;
- (id)localUnsyncedReminderActionsForFolderId:(id)a3 forAccount:(id)a4;
- (id)pendingLocalAddedFoldersForAccount:(id)a3;
- (id)syncKeyForFolderWithId:(id)a3 forAccount:(id)a4;
- (int)_ASMonthOfYearFromREMMonthOfYear:(int64_t)a3;
- (int64_t)_ASDayOfWeekFromREMDaysOfWeek:(id)a3 outWeekOfMonth:(int64_t *)a4;
- (int64_t)_remMonthOfYearFromASMonthOfYear:(int)a3;
- (void)_loadRecurrenceRulesFromReminder:(id)a3 intoTask:(id)a4 forAccount:(id)a5;
- (void)_processReminderNotification:(id)a3;
- (void)_setupReminderAccountForAccount:(id)a3;
- (void)clearFolderAdditionForFolderUUID:(id)a3 folderID:(id)a4 forAccount:(id)a5;
- (void)clearFolderChangeForFolderID:(id)a3 forAccount:(id)a4;
- (void)clearReminderChangesForFolderID:(id)a3 forAccount:(id)a4;
- (void)didReceiveReminderNotification:(id)a3;
- (void)registerReminderChangeNotificationsForAccount:(id)a3 withChangedBlock:(id)a4;
- (void)removeReminderChangeNotificationsForAccount:(id)a3;
@end

@implementation ESReminderKitHelper

+ (id)sharedReminderKitHelper
{
  if (qword_74998 != -1)
  {
    sub_485B0();
  }

  v3 = qword_74990;

  return v3;
}

- (ESReminderKitHelper)init
{
  v8.receiver = self;
  v8.super_class = ESReminderKitHelper;
  v2 = [(ESReminderKitHelper *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    reminderStore = v2->_reminderStore;
    v2->_reminderStore = v3;

    v5 = objc_opt_new();
    accountIDToChangeTrackingTable = v2->_accountIDToChangeTrackingTable;
    v2->_accountIDToChangeTrackingTable = v5;
  }

  return v2;
}

- (void)registerReminderChangeNotificationsForAccount:(id)a3 withChangedBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = DALoggingwithCategory();
  v10 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v9, v10))
  {
    *buf = 138412290;
    v24 = v7;
    _os_log_impl(&dword_0, v9, v10, "Registering reminder change notification for account: %@", buf, 0xCu);
  }

  v11 = self;
  objc_sync_enter(v11);
  accountIDToChangeTrackingTable = v11->_accountIDToChangeTrackingTable;
  v13 = [v7 accountID];
  v14 = [(NSMutableDictionary *)accountIDToChangeTrackingTable objectForKey:v13];
  LOBYTE(accountIDToChangeTrackingTable) = v14 == 0;

  if ((accountIDToChangeTrackingTable & 1) == 0)
  {
    v21 = +[NSAssertionHandler currentHandler];
    [v21 handleFailureInMethod:a2 object:v11 file:@"ESReminderKitHelper.m" lineNumber:105 description:{@"Someone registered themselves for the Reminders notification more than once: %@", v7}];
  }

  v15 = [[ESReminderChangeTrackingHelper alloc] initWithAccount:v7 reminderStore:v11->_reminderStore];
  v16 = [v8 copy];
  [(ESReminderChangeTrackingHelper *)v15 setBlock:v16];

  v17 = v11->_accountIDToChangeTrackingTable;
  v18 = [v7 accountID];
  [(NSMutableDictionary *)v17 setObject:v15 forKey:v18];

  if ([(NSMutableDictionary *)v11->_accountIDToChangeTrackingTable count]== &dword_0 + 1)
  {
    if (!v11->_reminderStore)
    {
      v22 = +[NSAssertionHandler currentHandler];
      [v22 handleFailureInMethod:a2 object:v11 file:@"ESReminderKitHelper.m" lineNumber:113 description:@"REMStore was not created!"];
    }

    v19 = +[NSNotificationCenter defaultCenter];
    v20 = +[REMStore storeDidChangeNotificationName];
    [v19 addObserver:v11 selector:"didReceiveReminderNotification:" name:v20 object:0];
  }

  objc_sync_exit(v11);
}

- (void)removeReminderChangeNotificationsForAccount:(id)a3
{
  v12 = a3;
  v4 = self;
  objc_sync_enter(v4);
  accountIDToChangeTrackingTable = v4->_accountIDToChangeTrackingTable;
  v6 = [v12 accountID];
  v7 = [(NSMutableDictionary *)accountIDToChangeTrackingTable objectForKey:v6];

  if (v7)
  {
    v8 = v4->_accountIDToChangeTrackingTable;
    v9 = [v12 accountID];
    [(NSMutableDictionary *)v8 removeObjectForKey:v9];
  }

  if (![(NSMutableDictionary *)v4->_accountIDToChangeTrackingTable count])
  {
    v10 = +[NSNotificationCenter defaultCenter];
    v11 = +[REMStore storeDidChangeNotificationName];
    [v10 removeObserver:v4 name:v11 object:0];
  }

  objc_sync_exit(v4);
}

- (void)didReceiveReminderNotification:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2EE60;
  block[3] = &unk_6D2F8;
  block[4] = self;
  v6 = a3;
  v7 = objc_opt_new();
  v3 = v7;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_processReminderNotification:(id)a3
{
  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v4, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, v5, "ReminderConversion: Received reminders database did change.", buf, 2u);
  }

  v6 = objc_opt_new();
  v7 = DALoggingwithCategory();
  if (os_log_type_enabled(v7, v5))
  {
    v8 = [v6 transactionId];
    *buf = 138412290;
    v17 = v8;
    _os_log_impl(&dword_0, v7, v5, "ReminderConversion: DADREMLocalDBWatcher: DATransaction starting, ID: %@", buf, 0xCu);
  }

  v9 = [(NSMutableDictionary *)self->_accountIDToChangeTrackingTable objectEnumerator];
  v10 = [v9 nextObject];
  if (v10)
  {
    v11 = v10;
    do
    {
      if ([v11 fetchChangesSinceLastConsumed])
      {
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_2F074;
        v13[3] = &unk_6D260;
        v14 = v11;
        v15 = v6;
        dispatch_async(&_dispatch_main_q, v13);
      }

      v12 = [v9 nextObject];

      v11 = v12;
    }

    while (v12);
  }
}

- (BOOL)bestEffortApplyNewFolders:(id)a3 oldFolders:(id)a4 forAccount:(id)a5 shouldCreateFoldersMissingInDB:(BOOL)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v8, "count")}];
  v12 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v8, "count")}];
  v81 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v9, "count")}];
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v107 objects:v120 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v108;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v108 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v107 + 1) + 8 * i);
        if ([v10 enabledForDADataclass:16] && objc_msgSend(v18, "dataclass") == &dword_10)
        {
          v19 = [v18 folderName];
          [v11 setObject:v18 forKeyedSubscript:v19];

          v20 = [v18 folderID];
          [v12 setObject:v18 forKeyedSubscript:v20];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v107 objects:v120 count:16];
    }

    while (v15);
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v21 = v9;
  v22 = [v21 countByEnumeratingWithState:&v103 objects:v119 count:16];
  v91 = v21;
  if (v22)
  {
    v23 = v22;
    v24 = *v104;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v104 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v103 + 1) + 8 * j);
        if ([v10 enabledForDADataclass:16] && objc_msgSend(v26, "dataclass") == &dword_10)
        {
          v27 = [v26 folderID];
          [v81 setObject:v26 forKeyedSubscript:v27];

          v21 = v91;
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v103 objects:v119 count:16];
    }

    while (v23);
  }

  v78 = v13;
  v84 = v12;
  v87 = v11;

  v90 = [(ESReminderKitHelper *)self _reminderListsForAccount:v10];
  v89 = objc_opt_new();
  v28 = objc_opt_new();
  v85 = v10;
  [(ESReminderKitHelper *)self localAddedFoldersForAccount:v10];
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  obj = v102 = 0u;
  v29 = [obj countByEnumeratingWithState:&v99 objects:v118 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v100;
    v32 = _CPLog_to_os_log_type[7];
    do
    {
      for (k = 0; k != v30; k = k + 1)
      {
        if (*v100 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v99 + 1) + 8 * k);
        v35 = DALoggingwithCategory();
        if (os_log_type_enabled(v35, v32))
        {
          v36 = [v34 localUUID];
          *buf = 138412290;
          v112 = v36;
          _os_log_impl(&dword_0, v35, v32, "Found added folder with local id %@", buf, 0xCu);
        }

        v37 = [v34 localUUID];
        [v28 addObject:v37];
      }

      v30 = [obj countByEnumeratingWithState:&v99 objects:v118 count:16];
    }

    while (v30);
  }

  [(ESReminderKitHelper *)self pendingLocalAddedFoldersForAccount:v10, v78];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v93 = v98 = 0u;
  v38 = [v93 countByEnumeratingWithState:&v95 objects:v117 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v96;
    v41 = _CPLog_to_os_log_type[7];
    do
    {
      for (m = 0; m != v39; m = m + 1)
      {
        if (*v96 != v40)
        {
          objc_enumerationMutation(v93);
        }

        v43 = *(*(&v95 + 1) + 8 * m);
        v44 = DALoggingwithCategory();
        if (os_log_type_enabled(v44, v41))
        {
          v45 = [v43 localUUID];
          *buf = 138412290;
          v112 = v45;
          _os_log_impl(&dword_0, v44, v41, "Found pending added folder with local id %@", buf, 0xCu);
        }

        v46 = [v43 localUUID];
        [v28 addObject:v46];
      }

      v39 = [v93 countByEnumeratingWithState:&v95 objects:v117 count:16];
    }

    while (v39);
  }

  v47 = v90;
  if ([v90 count])
  {
    v86 = 0;
    v48 = 0;
    type = _CPLog_to_os_log_type[6];
    while (1)
    {
      v49 = [v47 objectAtIndexedSubscript:v48];
      v50 = [v49 name];
      v51 = [v49 externalIdentifier];
      v52 = [v49 daIsImmutable];
      if (v51)
      {
        if ([v89 containsObject:v51])
        {
          goto LABEL_53;
        }

        v53 = v84;
        v54 = v51;
      }

      else
      {
        if (!v50)
        {
          goto LABEL_53;
        }

        v53 = v87;
        v54 = v50;
      }

      v55 = [v53 objectForKeyedSubscript:v54];
      v56 = v55;
      if (!v55)
      {
LABEL_53:
        v65 = v51;
        v66 = v50;
        v56 = [v49 objectID];
        v67 = [v56 uuid];
        v68 = [v67 UUIDString];

        v57 = v68;
        LODWORD(v67) = [v28 containsObject:v68];
        v69 = DALoggingwithCategory();
        v70 = os_log_type_enabled(v69, type);
        if (v67)
        {
          if (v70)
          {
            v71 = [v56 uuid];
            v72 = [v71 UUIDString];
            *buf = 138412290;
            v112 = v72;
            _os_log_impl(&dword_0, v69, type, "Not deleting reminder list with id %@, as it has a pending add", buf, 0xCu);
          }
        }

        else
        {
          if (v70)
          {
            v73 = [v56 uuid];
            v74 = [v73 UUIDString];
            *buf = 138412802;
            v112 = v74;
            v113 = 2112;
            v114 = v65;
            v115 = 2112;
            v116 = v66;
            _os_log_impl(&dword_0, v69, type, "Deleting reminder list with local id %@, external id %@, title %@, as we couldn't find an exchange folder for it", buf, 0x20u);
          }

          [(ESReminderKitHelper *)self _deleteList:v49 forAccount:v85];
          v86 = 1;
        }

        v50 = v66;
        v51 = v65;
        goto LABEL_61;
      }

      v57 = [v55 folderID];
      v58 = [v56 folderName];
      v59 = [v56 isDefault];
      [v89 addObject:v57];
      if (![v51 isEqualToString:v57])
      {
        goto LABEL_51;
      }

      if (((v59 ^ 1 | v52) & 1) == 0)
      {
        goto LABEL_51;
      }

      if (((v59 | v52 ^ 1) & 1) == 0)
      {
        goto LABEL_51;
      }

      v82 = v59;
      [v81 objectForKeyedSubscript:v51];
      v83 = v57;
      v60 = v51;
      v62 = v61 = v50;
      v63 = [v62 folderName];
      v64 = [v63 isEqualToString:v58];

      v59 = v82;
      v50 = v61;
      v51 = v60;
      v57 = v83;
      if ((v64 & 1) == 0)
      {
LABEL_51:
        [(ESReminderKitHelper *)self _updateList:v49 external:v57 name:v58 isDefault:v59];
        v86 = 1;
      }

      [v87 removeObjectForKey:v58];

LABEL_61:
      ++v48;
      v47 = v90;
      if (v48 >= [v90 count])
      {
        goto LABEL_64;
      }
    }
  }

  v86 = 0;
LABEL_64:
  v75 = v86;
  if (a6)
  {
    v76 = [v87 allValues];
    v75 = [(ESReminderKitHelper *)self _addReminderFolders:v76 forAccount:v85];
  }

  return v75 & 1;
}

- (id)getFolderIdsForAccount:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(ESReminderKitHelper *)self _reminderListsForAccount:v4];
  v7 = v6;
  if (v6)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = [v12 externalIdentifier];

          if (v13)
          {
            v14 = [v12 externalIdentifier];
            [v5 addObject:v14];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  return v5;
}

- (BOOL)verifyDefaultFolderId:(id)a3 forAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 length])
  {
    v8 = [(ESReminderKitHelper *)self _reminderListsForAccount:v7];
    v9 = v8;
    v22 = v7;
    if (!v8 || (v25 = 0u, v26 = 0u, v23 = 0u, v24 = 0u, (v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16]) == 0))
    {
      v12 = 0;
      goto LABEL_19;
    }

    v11 = v10;
    v12 = 0;
    v13 = *v24;
    while (1)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = [v15 externalIdentifier];
        v17 = [v6 isEqualToString:v16];

        v18 = [v15 daIsImmutable];
        if (!v17)
        {
          if (!v18)
          {
            continue;
          }

LABEL_13:
          v19 = [v15 externalIdentifier];
          v20 = [v15 name];
          v12 = 1;
          [(ESReminderKitHelper *)self _updateList:v15 external:v19 name:v20 isDefault:1];

          continue;
        }

        if ((v18 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (!v11)
      {
LABEL_19:

        v7 = v22;
        goto LABEL_20;
      }
    }
  }

  v12 = 0;
LABEL_20:

  return v12 & 1;
}

- (BOOL)_deleteList:(id)a3 forAccount:(id)a4
{
  v5 = a3;
  v6 = [(ESReminderKitHelper *)self _getReminderSaveRequest];
  v7 = [v6 updateList:v5];
  [v7 removeFromParent];
  v8 = DALoggingwithCategory();
  v9 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v8, v9))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_0, v8, v9, "ReminderSupport: reminder list %@ is deleted", &v11, 0xCu);
  }

  return 1;
}

- (id)_reminderListsForAccount:(id)a3
{
  v3 = [(ESReminderKitHelper *)self _reminderAccountForAccount:a3];
  v6 = 0;
  v4 = [v3 fetchListsWithError:&v6];

  return v4;
}

- (BOOL)_addReminderFolders:(id)a3 forAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(ESReminderKitHelper *)self _reminderAccountForAccount:v7];
    v9 = v8 != 0;
    if (v8)
    {
      v26 = v7;
      v10 = [(ESReminderKitHelper *)self _getReminderSaveRequest];
      v25 = v8;
      v11 = [v10 updateAccount:v8];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v27 = v6;
      obj = v6;
      v12 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v30;
        v15 = _CPLog_to_os_log_type[7];
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v30 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v29 + 1) + 8 * i);
            v18 = [v17 folderName];
            v19 = [v17 folderID];
            v20 = [v10 addListWithName:v18 toAccountChangeItem:v11];
            [v20 setExternalIdentifier:v19];
            [v20 setDaIsImmutable:{objc_msgSend(v17, "isDefault")}];
            v21 = DALoggingwithCategory();
            if (os_log_type_enabled(v21, v15))
            {
              *buf = 138412546;
              v34 = v18;
              v35 = 2112;
              v36 = v19;
              _os_log_impl(&dword_0, v21, v15, "ReminderSupport: reminder list change with folder title: %@ and ID: %@", buf, 0x16u);
            }
          }

          v13 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v13);
      }

      v7 = v26;
      v6 = v27;
      v9 = 1;
      v8 = v25;
    }

    else
    {
      v10 = DALoggingwithCategory();
      v22 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v10, v22))
      {
        v23 = [v7 accountID];
        *buf = 138412290;
        v34 = v23;
        _os_log_impl(&dword_0, v10, v22, "ReminderSupport: missing reminder account %@, when adding folders.", buf, 0xCu);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)addFolder:(id)a3 forAccount:(id)a4
{
  v6 = a3;
  v7 = [(ESReminderKitHelper *)self _reminderAccountForAccount:a4];
  v8 = [(ESReminderKitHelper *)self _getReminderSaveRequest];
  v9 = [v8 updateAccount:v7];
  v10 = [v6 folderName];
  v11 = [v6 folderID];
  v12 = [v8 addListWithName:v10 toAccountChangeItem:v9];
  [v12 setExternalIdentifier:v11];
  v13 = [v6 isDefault];

  [v12 setDaIsImmutable:v13];
  v14 = DALoggingwithCategory();
  v15 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v14, v15))
  {
    v17 = 138412546;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_0, v14, v15, "ReminderSupport: reminder list added with folder title: %@ and ID: %@", &v17, 0x16u);
  }

  return 1;
}

- (BOOL)updateExtenalIDForFolder:(id)a3 forAccount:(id)a4
{
  v6 = a3;
  v7 = [(ESReminderKitHelper *)self _reminderAccountForAccount:a4];
  v8 = [(ESReminderKitHelper *)self _getReminderSaveRequest];
  v9 = [v6 localUUID];
  v10 = [(ESReminderKitHelper *)self _reminderListWithObjectUUID:v9 forReminderAccount:v7];

  v11 = [v8 updateList:v10];
  v12 = [v6 serverID];
  [v11 setExternalIdentifier:v12];

  v13 = DALoggingwithCategory();
  v14 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v13, v14))
  {
    v15 = [v6 localUUID];
    v16 = [v6 serverID];
    v18 = 138412546;
    v19 = v15;
    v20 = 2112;
    v21 = v16;
    _os_log_impl(&dword_0, v13, v14, "ReminderSupport: reminder list with object ID: %@ and ID: %@", &v18, 0x16u);
  }

  return 1;
}

- (id)_reminderAccountForAccount:(id)a3
{
  v4 = a3;
  v5 = [NSUUID alloc];
  v6 = [v4 accountID];
  v7 = [v5 initWithUUIDString:v6];

  v8 = [REMAccount objectIDWithUUID:v7];
  reminderStore = self->_reminderStore;
  v19 = 0;
  v10 = [(REMStore *)reminderStore fetchAccountWithObjectID:v8 error:&v19];
  v11 = v19;
  if (v11 || !v10)
  {
    v12 = DALoggingwithCategory();
    v13 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v12, v13))
    {
      v14 = [v4 accountID];
      *buf = 138412546;
      v21 = v14;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_0, v12, v13, "Fetch account failed for accountID: %@, with error: %@", buf, 0x16u);
    }

    v15 = DALoggingwithCategory();
    v16 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v15, v16))
    {
      v17 = [v4 accountID];
      *buf = 138412290;
      v21 = v17;
      _os_log_impl(&dword_0, v15, v16, "Setting reminderAccountMissing to TRUE for account %@ and asking ReminderKit to set up the REMAccount", buf, 0xCu);
    }

    [v4 setReminderAccountMissing:1];
    [(ESReminderKitHelper *)self _setupReminderAccountForAccount:v4];
  }

  return v10;
}

- (void)_setupReminderAccountForAccount:(id)a3
{
  v4 = a3;
  reminderStore = self->_reminderStore;
  v6 = [v4 accountID];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_308EC;
  v8[3] = &unk_6D348;
  v9 = v4;
  v7 = v4;
  [(REMStore *)reminderStore updateAccountWithAccountID:v6 completion:v8];
}

- (id)_reminderListWithExternalId:(id)a3 forReminderAccount:(id)a4
{
  v5 = a3;
  v11 = 0;
  v6 = [a4 fetchListIncludingSpecialContainerWithExternalIdentifier:v5 error:&v11];
  v7 = v11;
  if (!v6)
  {
    v8 = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v8, v9))
    {
      *buf = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_0, v8, v9, "Fetching reminder lists returned nil {folderID: %@, error: %@}", buf, 0x16u);
    }
  }

  return v6;
}

- (id)_reminderWithObjectUUID:(id)a3 list:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[NSUUID alloc] initWithUUIDString:v5];
  v8 = [REMReminder objectIDWithUUID:v7];
  v9 = [v6 store];

  v15 = 0;
  v10 = [v9 fetchReminderWithObjectID:v8 error:&v15];
  v11 = v15;

  if (!v10)
  {
    v12 = DALoggingwithCategory();
    v13 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v12, v13))
    {
      *buf = 138412546;
      v17 = v5;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_0, v12, v13, "Fetching reminder returned nil {ObjectID: %@, error: %@}", buf, 0x16u);
    }
  }

  return v10;
}

- (id)_reminderListWithObjectUUID:(id)a3 forReminderAccount:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[NSUUID alloc] initWithUUIDString:v5];
  v8 = [REMList objectIDWithUUID:v7];
  v9 = [v6 store];

  v15 = 0;
  v10 = [v9 fetchListWithObjectID:v8 error:&v15];
  v11 = v15;

  if (!v10)
  {
    v12 = DALoggingwithCategory();
    v13 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v12, v13))
    {
      *buf = 138412546;
      v17 = v5;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_0, v12, v13, "Fetching list returned nil {ObjectID: %@, error: %@}", buf, 0x16u);
    }
  }

  return v10;
}

- (id)_reminderWithExternalId:(id)a3 list:(id)a4
{
  v5 = a3;
  v11 = 0;
  v6 = [a4 fetchReminderWithExternalIdentifier:v5 error:&v11];
  v7 = v11;
  if (!v6)
  {
    v8 = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v8, v9))
    {
      *buf = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_0, v8, v9, "Fetching reminder returned nil {serverID: %@, error: %@}", buf, 0x16u);
    }
  }

  return v6;
}

- (id)_reminderMatchingAttributesInReminder:(id)a3 list:(id)a4
{
  v5 = a3;
  v38 = 0;
  v6 = [a4 fetchRemindersWithError:&v38];
  v7 = v38;
  if (v7)
  {
    v8 = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[3];
    if (!os_log_type_enabled(v8, v9))
    {
LABEL_5:
      v14 = 0;
      goto LABEL_6;
    }

    *buf = 138412290;
    v41 = v7;
    v10 = "Error getting reminders: %@";
    v11 = v8;
    v12 = v9;
    v13 = 12;
LABEL_4:
    _os_log_impl(&dword_0, v11, v12, v10, buf, v13);
    goto LABEL_5;
  }

  if (!v6)
  {
    v8 = DALoggingwithCategory();
    v31 = _CPLog_to_os_log_type[7];
    if (!os_log_type_enabled(v8, v31))
    {
      goto LABEL_5;
    }

    *buf = 0;
    v10 = "Could not get reminders";
    v11 = v8;
    v12 = v31;
    v13 = 2;
    goto LABEL_4;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = v6;
  v17 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (!v17)
  {
    goto LABEL_5;
  }

  v18 = v17;
  v32 = 0;
  v33 = v6;
  v19 = *v35;
  while (2)
  {
    for (i = 0; i != v18; i = i + 1)
    {
      if (*v35 != v19)
      {
        objc_enumerationMutation(v8);
      }

      v21 = *(*(&v34 + 1) + 8 * i);
      v22 = [v5 subject];
      v23 = [v21 titleAsString];
      v24 = [v22 isEqualToString:v23];

      if (v24)
      {
        v25 = [v21 dueDateComponents];

        if (v25)
        {
          v26 = [v21 dueDateComponents];
          v27 = [NSTimeZone timeZoneWithName:@"UTC"];
          v28 = [NSDateComponents rem_dateWithDateComponents:v26 timeZone:v27];

          if (v28)
          {
            v29 = [v5 utcDueDate];
            v30 = [v29 isEqualToDate:v28];

            if (v30)
            {
              v14 = v21;

              goto LABEL_24;
            }
          }
        }
      }
    }

    v18 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v18)
    {
      continue;
    }

    break;
  }

  v14 = 0;
LABEL_24:
  v7 = v32;
  v6 = v33;
LABEL_6:

  v15 = v14;
  return v14;
}

- (id)syncKeyForFolderWithId:(id)a3 forAccount:(id)a4
{
  v6 = a3;
  v7 = [(ESReminderKitHelper *)self _reminderAccountForAccount:a4];
  v8 = [(ESReminderKitHelper *)self _reminderListWithExternalId:v6 forReminderAccount:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 externalModificationTag];
    v11 = DALoggingwithCategory();
    v12 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v11, v12))
    {
      v15 = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_0, v11, v12, "_syncKeyForFolderWithId Reminder external tag %@ for folder ID %@", &v15, 0x16u);
    }
  }

  else
  {
    v11 = DALoggingwithCategory();
    v13 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v11, v13))
    {
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&dword_0, v11, v13, "_syncKeyForFolderWithId Reminder containing folder with folder ID %@ not found", &v15, 0xCu);
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)isFolderExistsWithId:(id)a3 forAccount:(id)a4
{
  v6 = a3;
  v7 = [(ESReminderKitHelper *)self _reminderAccountForAccount:a4];
  v8 = [(ESReminderKitHelper *)self _reminderListWithExternalId:v6 forReminderAccount:v7];

  return v8 != 0;
}

- (BOOL)deleteFolder:(id)a3 forAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ESReminderKitHelper *)self _reminderAccountForAccount:v7];
  if (v8)
  {
    v9 = [(ESReminderKitHelper *)self _getReminderSaveRequest];
    v10 = [v6 folderID];
    v11 = [(ESReminderKitHelper *)self _reminderListWithExternalId:v10 forReminderAccount:v8];

    v12 = v11 != 0;
    if (v11)
    {
      v13 = [v9 updateList:v11];
      [v13 removeFromParent];
    }

    else
    {
      v13 = DALoggingwithCategory();
      v16 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v13, v16))
      {
        v17 = [v6 folderID];
        v19 = 138412290;
        v20 = v17;
        _os_log_impl(&dword_0, v13, v16, "Fail to delete a reminder folder because Reminder list doesn't exist. Folder ID: %@", &v19, 0xCu);
      }
    }
  }

  else
  {
    v9 = DALoggingwithCategory();
    v14 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v9, v14))
    {
      v15 = [v7 accountID];
      v19 = 138412290;
      v20 = v15;
      _os_log_impl(&dword_0, v9, v14, "Fail to delete a reminder folder because Reminder account doesn't exist. Account ID: %@", &v19, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)updateSyncKey:(id)a3 forFolderWithId:(id)a4 forAccount:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ESReminderKitHelper *)self _reminderAccountForAccount:v10];
  if (v11)
  {
    v12 = [(ESReminderKitHelper *)self _getReminderSaveRequest];
    v13 = [(ESReminderKitHelper *)self _reminderListWithExternalId:v9 forReminderAccount:v11];
    v14 = v13 != 0;
    v15 = DALoggingwithCategory();
    v16 = v15;
    if (v13)
    {
      v17 = _CPLog_to_os_log_type[7];
      if (os_log_type_enabled(v15, v17))
      {
        v23 = 138412546;
        v24 = v8;
        v25 = 2112;
        v26 = v9;
        _os_log_impl(&dword_0, v16, v17, "Updating sync key %@ for reminder folder ID:%@", &v23, 0x16u);
      }

      v16 = [v12 updateList:v13];
      [v16 setExternalModificationTag:v8];
    }

    else
    {
      v20 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v15, v20))
      {
        v21 = [v10 accountID];
        v23 = 138412546;
        v24 = v21;
        v25 = 2112;
        v26 = v9;
        _os_log_impl(&dword_0, v16, v20, "Fail to set sync key for reminder folder because Reminder list doesn't exist. Account ID: %@, folder ID:%@", &v23, 0x16u);
      }
    }
  }

  else
  {
    v12 = DALoggingwithCategory();
    v18 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v12, v18))
    {
      v19 = [v10 accountID];
      v23 = 138412546;
      v24 = v19;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_0, v12, v18, "Fail to set sync key for reminder folder because Reminder account doesn't exist. Account ID: %@, folder ID:%@", &v23, 0x16u);
    }

    v14 = 0;
  }

  return v14;
}

- (id)_getReminderSaveRequest
{
  if (!self->_reminderSaveRequest)
  {
    v3 = [[REMSaveRequest alloc] initWithStore:self->_reminderStore];
    reminderSaveRequest = self->_reminderSaveRequest;
    self->_reminderSaveRequest = v3;

    v5 = self->_reminderSaveRequest;
    if (v5)
    {
      [(REMSaveRequest *)v5 setCloneCompletedRecurrentRemindersAtSave:0];
    }

    else
    {
      v6 = DALoggingwithCategory();
      v7 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v6, v7))
      {
        *v10 = 0;
        _os_log_impl(&dword_0, v6, v7, "Couldn't create reminder save request", v10, 2u);
      }
    }
  }

  v8 = self->_reminderSaveRequest;

  return v8;
}

- (BOOL)initialSyncReminder:(id)a3 forFolderWithId:(id)a4 forAccount:(id)a5 resultingAction:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 serverID];
  if (v12)
  {
    v13 = [(ESReminderKitHelper *)self _getReminderSaveRequest];
    v14 = [(ESReminderKitHelper *)self _reminderAccountForAccount:v11];
    if (!v14)
    {
      v15 = DALoggingwithCategory();
      v26 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v15, v26))
      {
        *buf = 138412546;
        v35 = v11;
        v36 = 2112;
        v37 = v9;
        _os_log_impl(&dword_0, v15, v26, "Account %@ does not existing when adding reminder %@", buf, 0x16u);
      }

      v25 = 0;
      goto LABEL_23;
    }

    v15 = [(ESReminderKitHelper *)self _reminderListWithExternalId:v10 forReminderAccount:v14];
    if (!v15)
    {
      v17 = DALoggingwithCategory();
      v27 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v17, v27))
      {
        *buf = 138412546;
        v35 = v10;
        v36 = 2112;
        v37 = v9;
        _os_log_impl(&dword_0, v17, v27, "Folder %@ does not existing when adding reminder %@", buf, 0x16u);
      }

      v25 = 0;
      goto LABEL_22;
    }

    v33 = v10;
    v16 = [(ESReminderKitHelper *)self _reminderWithExternalId:v12 list:v15];
    if (v16)
    {
      v17 = v16;
      v18 = DALoggingwithCategory();
      v19 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v18, v19))
      {
        *buf = 138412546;
        v35 = v9;
        v36 = 2112;
        v37 = v12;
        v20 = "During initial sync, merge task with existing local reminder with the same external id {task: %@, externalIdentifier: %@}";
        v21 = v18;
        v22 = v19;
        v23 = 22;
LABEL_19:
        _os_log_impl(&dword_0, v21, v22, v20, buf, v23);
      }
    }

    else
    {
      v17 = [(ESReminderKitHelper *)self _reminderMatchingAttributesInReminder:v9 list:v15];
      v18 = DALoggingwithCategory();
      v28 = _CPLog_to_os_log_type[6];
      v29 = os_log_type_enabled(v18, v28);
      if (!v17)
      {
        if (v29)
        {
          *buf = 138412290;
          v35 = v9;
          _os_log_impl(&dword_0, v18, v28, "Adding new reminder during intial sync %@", buf, 0xCu);
        }

        v17 = [v13 updateList:v15];
        v32 = [v17 saveRequest];
        v30 = [v32 addReminderWithTitle:@"__untitled__" toListChangeItem:v17];

        goto LABEL_21;
      }

      if (v29)
      {
        *buf = 138412290;
        v35 = v9;
        v20 = "Found existing reminder during intial sync %@";
        v21 = v18;
        v22 = v28;
        v23 = 12;
        goto LABEL_19;
      }
    }

    v30 = [v13 updateReminder:v17];
LABEL_21:
    v25 = [(ESReminderKitHelper *)self _populateChangeItem:v30 forReminder:v9 folderWithId:v33 forAccount:v11];

    v10 = v33;
LABEL_22:

LABEL_23:
    goto LABEL_24;
  }

  v13 = DALoggingwithCategory();
  v24 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v13, v24))
  {
    *buf = 138412290;
    v35 = v9;
    _os_log_impl(&dword_0, v13, v24, "ServerID missing from task. Failed to initial sync reminder {task: %@}", buf, 0xCu);
  }

  v25 = 0;
LABEL_24:

  return v25;
}

- (BOOL)_populateChangeItem:(id)a3 forRecurrence:(id)a4 forReminder:(id)a5 forFolderWithId:(id)a6 forAccount:(id)a7
{
  v9 = a3;
  v10 = a4;
  v11 = [v10 interval];
  v12 = [v11 integerValue];

  v13 = [v10 firstDayOfWeek];

  if (v13)
  {
    v14 = [v10 firstDayOfWeek];
    v15 = [v14 intValue];

    if (v15 >= 7)
    {
      v16 = 1;
    }

    else
    {
      v16 = v15;
    }
  }

  else
  {
    v17 = CFCalendarCopyCurrent();
    if (v17)
    {
      v18 = v17;
      FirstWeekday = CFCalendarGetFirstWeekday(v17);
      CFRelease(v18);
      if (FirstWeekday <= 0)
      {
        v20 = 0;
      }

      else
      {
        v20 = FirstWeekday - 1;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = DALoggingwithCategory();
    v22 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v21, v22))
    {
      *buf = 67109120;
      LODWORD(v76) = v20;
      _os_log_impl(&dword_0, v21, v22, "Setting arbitrary week start to %d", buf, 8u);
    }

    v16 = v20;
  }

  v23 = [v10 type];
  v24 = [v23 intValue];

  if (v24 > 2)
  {
    switch(v24)
    {
      case 3:
        v38 = [v10 weekOfMonth];
        LODWORD(v39) = [v38 intValue];

        if (v39 == 5)
        {
          v39 = 0xFFFFFFFFLL;
        }

        else
        {
          v39 = v39;
        }

        v40 = [v10 dayOfWeek];
        v41 = [v40 intValue];

        v69 = v16;
        v70 = v12;
        if (v41)
        {
          if (v39 >= 1)
          {
            v42 = 0;
          }

          else
          {
            v42 = 0xFFFFFFFFLL;
          }

          v43 = [(ESReminderKitHelper *)self _remDaysOfWeekFromASDayOfWeek:v41 weekOfMonth:v42];
          if (v43)
          {
            v44 = [NSNumber numberWithInt:v39];
            v78 = v44;
            v73 = [NSArray arrayWithObjects:&v78 count:1];
          }

          else
          {
            v73 = 0;
          }

          goto LABEL_60;
        }

LABEL_48:
        v73 = 0;
LABEL_60:
        v71 = 0;
        v72 = 0;
LABEL_61:
        v74 = 0;
        v51 = 2;
LABEL_62:
        v55 = [v10 occurrences];
        v56 = [v55 intValue];

        v57 = [v10 until];
        v58 = v57;
        if (v56)
        {
          v59 = [REMRecurrenceEnd recurrenceEndWithOccurrenceCount:v56];
        }

        else
        {
          if (!v57)
          {
            v60 = 0;
            goto LABEL_67;
          }

          v59 = [REMRecurrenceEnd recurrenceEndWithEndDate:v57];
        }

        v60 = v59;
LABEL_67:
        v61 = +[REMRecurrenceRule newObjectID];
        v62 = [v9 accountID];
        v63 = v9;
        v64 = [v9 objectID];
        v65 = [[REMRecurrenceRule alloc] initRecurrenceRuleWithObjectID:v61 accountID:v62 reminderID:v64 frequency:v51 interval:v70 firstDayOfTheWeek:v69 daysOfTheWeek:v74 daysOfTheMonth:v71 monthsOfTheYear:v72 weeksOfTheYear:0 daysOfTheYear:0 setPositions:v73 end:v60];
        v66 = DALoggingwithCategory();
        v67 = _CPLog_to_os_log_type[7];
        if (os_log_type_enabled(v66, v67))
        {
          *buf = 138412290;
          v76 = v65;
          _os_log_impl(&dword_0, v66, v67, "SET recurrence <- %@", buf, 0xCu);
        }

        v9 = v63;
        [v63 removeAllRecurrenceRules];
        [v63 addRecurrenceRule:v65];

        v48 = 1;
        v45 = v74;
        goto LABEL_70;
      case 5:
        v69 = v16;
        v70 = v12;
        v72 = 0;
        v73 = 0;
        v71 = 0;
        v74 = 0;
        break;
      case 6:
        v29 = [v10 weekOfMonth];
        v30 = [v29 intValue];

        v31 = [v10 dayOfWeek];
        v32 = [v31 intValue];

        if (v32)
        {
          if (v30 == 5)
          {
            v33 = 0xFFFFFFFFLL;
          }

          else
          {
            v33 = v30;
          }

          v34 = [(ESReminderKitHelper *)self _remDaysOfWeekFromASDayOfWeek:v32 weekOfMonth:v33];
        }

        else
        {
          v34 = 0;
        }

        v74 = v34;
        v69 = v16;
        v70 = v12;
        v52 = [v10 monthOfYear];
        v53 = [v52 intValue];

        if (v53)
        {
          v54 = [NSNumber numberWithInteger:[(ESReminderKitHelper *)self _remMonthOfYearFromASMonthOfYear:v53]];
          v77 = v54;
          v72 = [NSArray arrayWithObjects:&v77 count:1];
        }

        else
        {
          v72 = 0;
        }

        v73 = 0;
        v71 = 0;
        break;
      default:
        goto LABEL_41;
    }

    v51 = 3;
    goto LABEL_62;
  }

  switch(v24)
  {
    case 0:
      v69 = v16;
      v70 = v12;
      v35 = [v10 dayOfWeek];
      v36 = [v35 intValue];

      if (!v36)
      {
        v72 = 0;
        v73 = 0;
        v71 = 0;
        v74 = 0;
        v51 = 0;
        goto LABEL_62;
      }

      v37 = [v10 dayOfWeek];
      v74 = -[ESReminderKitHelper _remDaysOfWeekFromASDayOfWeek:weekOfMonth:](self, "_remDaysOfWeekFromASDayOfWeek:weekOfMonth:", [v37 intValue], 0);

      goto LABEL_46;
    case 1:
      v69 = v16;
      v70 = v12;
      v49 = [v10 dayOfWeek];
      v50 = [v49 intValue];

      if (!v50)
      {
        v72 = 0;
        v73 = 0;
        v71 = 0;
        v74 = 0;
        goto LABEL_57;
      }

      v74 = [(ESReminderKitHelper *)self _remDaysOfWeekFromASDayOfWeek:v50 weekOfMonth:0];
LABEL_46:
      v72 = 0;
      v73 = 0;
      v71 = 0;
LABEL_57:
      v51 = 1;
      goto LABEL_62;
    case 2:
      v69 = v16;
      v70 = v12;
      v25 = [v10 dayOfMonth];
      v26 = [v25 intValue];

      if (v26)
      {
        if (v26 == 127)
        {
          v27 = 0xFFFFFFFFLL;
        }

        else
        {
          v27 = v26;
        }

        v28 = [NSNumber numberWithInt:v27];
        v79 = v28;
        v71 = [NSArray arrayWithObjects:&v79 count:1];

        v72 = 0;
        v73 = 0;
        goto LABEL_61;
      }

      goto LABEL_48;
  }

LABEL_41:
  v45 = DALoggingwithCategory();
  v46 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v45, v46))
  {
    v47 = [v10 type];
    *buf = 138412290;
    v76 = v47;
    _os_log_impl(&dword_0, v45, v46, "Recurrence rule has invalid frequency %@", buf, 0xCu);
  }

  v48 = 0;
LABEL_70:

  return v48;
}

- (BOOL)addOrModifyReminder:(id)a3 forFolderWithId:(id)a4 forAccount:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 serverID];
  if (v11)
  {
    v12 = [(ESReminderKitHelper *)self _reminderAccountForAccount:v10];
    if (v12)
    {
      v13 = [(ESReminderKitHelper *)self _reminderListWithExternalId:v9 forReminderAccount:v12];
      if (v13)
      {
        log = [(ESReminderKitHelper *)self _getReminderSaveRequest];
        v14 = [(ESReminderKitHelper *)self _reminderWithExternalId:v11 list:v13];
        v15 = DALoggingwithCategory();
        v16 = _CPLog_to_os_log_type[6];
        v17 = os_log_type_enabled(v15, v16);
        if (v14)
        {
          if (v17)
          {
            *buf = 138412546;
            v30 = v8;
            v31 = 2112;
            v32 = v11;
            _os_log_impl(&dword_0, v15, v16, "Merge task with existing local reminder {task: %@, externalIdentifier: %@}", buf, 0x16u);
          }

          v18 = v14;
          v19 = [log updateReminder:v14];
          v20 = [(ESReminderKitHelper *)self _populateChangeItem:v19 forReminder:v8 folderWithId:v9 forAccount:v10];
        }

        else
        {
          if (v17)
          {
            *buf = 138412546;
            v30 = v8;
            v31 = 2112;
            v32 = v11;
            _os_log_impl(&dword_0, v15, v16, "Adding a new reminder {task: %@, externalIdentifier: %@}", buf, 0x16u);
          }

          v19 = [log updateList:v13];
          v25 = [v19 saveRequest];
          v26 = [v25 addReminderWithTitle:@"__untitled__" toListChangeItem:v19];

          v20 = [(ESReminderKitHelper *)self _populateChangeItem:v26 forReminder:v8 folderWithId:v9 forAccount:v10];
          v18 = 0;
        }
      }

      else
      {
        v23 = DALoggingwithCategory();
        v24 = _CPLog_to_os_log_type[3];
        log = v23;
        if (os_log_type_enabled(v23, v24))
        {
          *buf = 138412546;
          v30 = v8;
          v31 = 2112;
          v32 = v9;
          _os_log_impl(&dword_0, log, v24, "Could not get list. Failed to modify reminder {task: %@, folderID: %@}", buf, 0x16u);
        }

        v20 = 0;
      }
    }

    else
    {
      v13 = DALoggingwithCategory();
      v22 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v13, v22))
      {
        *buf = 138412546;
        v30 = v8;
        v31 = 2112;
        v32 = v10;
        _os_log_impl(&dword_0, v13, v22, "Could not fetch account. Failed to modify reminder {task: %@, account: %@}", buf, 0x16u);
      }

      v20 = 0;
    }
  }

  else
  {
    v12 = DALoggingwithCategory();
    v21 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v12, v21))
    {
      *buf = 138412290;
      v30 = v8;
      _os_log_impl(&dword_0, v12, v21, "ServerID missing from task. Failed to modify reminder {task: %@}", buf, 0xCu);
    }

    v20 = 0;
  }

  return v20;
}

- (BOOL)deleteReminder:(id)a3 forFolderWithId:(id)a4 forAccount:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 serverID];
  if (v11)
  {
    v12 = [(ESReminderKitHelper *)self _reminderAccountForAccount:v10];
    if (v12)
    {
      v13 = [(ESReminderKitHelper *)self _reminderListWithExternalId:v9 forReminderAccount:v12];
      if (v13)
      {
        v14 = [(ESReminderKitHelper *)self _reminderWithExternalId:v11 list:v13];
        if (v14)
        {
          v15 = [(ESReminderKitHelper *)self _getReminderSaveRequest];
          v16 = [v15 updateReminder:v14];
          [v16 removeFromList];
        }

        else
        {
          v15 = DALoggingwithCategory();
          v20 = _CPLog_to_os_log_type[3];
          if (os_log_type_enabled(v15, v20))
          {
            v22 = 138412546;
            v23 = v8;
            v24 = 2112;
            v25 = v11;
            _os_log_impl(&dword_0, v15, v20, "Could not fetch reminder. Failed to delete reminder {task: %@, externalIdentifier: %@}", &v22, 0x16u);
          }
        }
      }

      else
      {
        v14 = DALoggingwithCategory();
        v19 = _CPLog_to_os_log_type[3];
        if (os_log_type_enabled(v14, v19))
        {
          v22 = 138412546;
          v23 = v8;
          v24 = 2112;
          v25 = v9;
          _os_log_impl(&dword_0, v14, v19, "Could not fetch reminder list. Failed to delete reminder {task: %@, folderID: %@}", &v22, 0x16u);
        }
      }
    }

    else
    {
      v13 = DALoggingwithCategory();
      v18 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v13, v18))
      {
        v22 = 138412546;
        v23 = v8;
        v24 = 2112;
        v25 = v10;
        _os_log_impl(&dword_0, v13, v18, "Could not fetch reminder account. Failed to delete reminder {task: %@, account: %@}", &v22, 0x16u);
      }
    }
  }

  else
  {
    v12 = DALoggingwithCategory();
    v17 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v12, v17))
    {
      v22 = 138412290;
      v23 = v8;
      _os_log_impl(&dword_0, v12, v17, "ServerID missing from task. Failed to delete reminder {task: %@}", &v22, 0xCu);
    }
  }

  return 0;
}

- (BOOL)updateExtenalIDForReminder:(id)a3 forFolderWithId:(id)a4 forAccount:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 serverID];
  if (v11)
  {
    v12 = [(ESReminderKitHelper *)self _reminderAccountForAccount:v10];
    if (v12)
    {
      v13 = [(ESReminderKitHelper *)self _reminderListWithExternalId:v9 forReminderAccount:v12];
      if (v13)
      {
        v14 = [v8 clientID];
        v15 = [(ESReminderKitHelper *)self _reminderWithObjectUUID:v14 list:v13];

        if (v15)
        {
          v16 = [(ESReminderKitHelper *)self _getReminderSaveRequest];
          v17 = [v16 updateReminder:v15];
          v18 = [v8 serverID];
          [v17 setExternalIdentifier:v18];
        }

        else
        {
          v16 = DALoggingwithCategory();
          v22 = _CPLog_to_os_log_type[3];
          if (os_log_type_enabled(v16, v22))
          {
            v24 = 138412546;
            v25 = v8;
            v26 = 2112;
            v27 = v11;
            _os_log_impl(&dword_0, v16, v22, "Could not get reminder. Failed to modify reminder {task: %@, externalIdentifier: %@}", &v24, 0x16u);
          }
        }
      }

      else
      {
        v15 = DALoggingwithCategory();
        v21 = _CPLog_to_os_log_type[3];
        if (os_log_type_enabled(v15, v21))
        {
          v24 = 138412546;
          v25 = v8;
          v26 = 2112;
          v27 = v9;
          _os_log_impl(&dword_0, v15, v21, "Could not get list. Failed to modify reminder {task: %@, folderID: %@}", &v24, 0x16u);
        }
      }
    }

    else
    {
      v13 = DALoggingwithCategory();
      v20 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v13, v20))
      {
        v24 = 138412546;
        v25 = v8;
        v26 = 2112;
        v27 = v10;
        _os_log_impl(&dword_0, v13, v20, "Could not fetch account. Failed to modify reminder {task: %@, account: %@}", &v24, 0x16u);
      }
    }
  }

  else
  {
    v12 = DALoggingwithCategory();
    v19 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v12, v19))
    {
      v24 = 138412290;
      v25 = v8;
      _os_log_impl(&dword_0, v12, v19, "ServerID missing from task. Failed to modify reminder {task: %@}", &v24, 0xCu);
    }
  }

  return 0;
}

- (BOOL)commitChangesToStore
{
  [(REMSaveRequest *)self->_reminderSaveRequest setAuthor:@"com.apple.exchangesyncd"];
  reminderSaveRequest = self->_reminderSaveRequest;
  v10 = 0;
  v4 = [(REMSaveRequest *)reminderSaveRequest saveSynchronouslyWithError:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = DALoggingwithCategory();
    v7 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v6, v7))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&dword_0, v6, v7, "ReminderSupport: The saveSynchronouslyWithError returned with error %@", buf, 0xCu);
    }

    v4 = 0;
  }

  v8 = self->_reminderSaveRequest;
  self->_reminderSaveRequest = 0;

  return v4;
}

- (id)localAddedFoldersForAccount:(id)a3
{
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[7];
  v44 = v4;
  if (os_log_type_enabled(v5, v6))
  {
    v7 = [v4 accountID];
    *buf = 138412290;
    v56 = v7;
    _os_log_impl(&dword_0, v5, v6, "ReminderSupport: Get local added folders for account %@", buf, 0xCu);

    v4 = v44;
  }

  accountIDToChangeTrackingTable = self->_accountIDToChangeTrackingTable;
  v9 = [v4 accountID];
  v10 = [(NSMutableDictionary *)accountIDToChangeTrackingTable objectForKeyedSubscript:v9];

  v45 = objc_opt_new();
  v40 = v10;
  [v10 addedListsInChangeSet];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v53 = 0u;
  v11 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
  v43 = self;
  if (v11)
  {
    v12 = v11;
    v13 = *v51;
    v14 = _CPLog_to_os_log_type[4];
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v51 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v50 + 1) + 8 * i);
        v17 = [(ESReminderKitHelper *)self _loadAttributesFromRemlist:v16 forAccount:v4];
        v18 = v17;
        if (v17 && ([v17 serverID], v19 = objc_claimAutoreleasedReturnValue(), v19, !v19))
        {
          [v18 setChangeType:0];
          [v45 addObject:v18];
        }

        else
        {
          v20 = DALoggingwithCategory();
          if (os_log_type_enabled(v20, v14))
          {
            v21 = [v16 objectID];
            v22 = [v21 uuid];
            v23 = [v22 UUIDString];
            v24 = [v4 accountID];
            *buf = 138412546;
            v56 = v23;
            v57 = 2112;
            v58 = v24;
            _os_log_impl(&dword_0, v20, v14, "ReminderSupport: Could not add folder for a REMList with local ID: %@, for account %@", buf, 0x16u);

            v4 = v44;
            self = v43;
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
    }

    while (v12);
  }

  v25 = [v40 undeletedListsInChangeSet];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v26 = v25;
  v27 = [v26 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v47;
    obja = _CPLog_to_os_log_type[4];
    do
    {
      for (j = 0; j != v28; j = j + 1)
      {
        if (*v47 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v46 + 1) + 8 * j);
        v32 = [(ESReminderKitHelper *)self _loadAttributesFromRemlist:v31 forAccount:v4];
        v33 = v32;
        if (v32)
        {
          [v32 setServerID:0];
          [v33 setChangeType:0];
          [v45 addObject:v33];
        }

        else
        {
          v34 = DALoggingwithCategory();
          if (os_log_type_enabled(v34, obja))
          {
            v35 = [v31 objectID];
            v36 = [v35 uuid];
            v37 = [v36 UUIDString];
            v38 = [v4 accountID];
            *buf = 138412546;
            v56 = v37;
            v57 = 2112;
            v58 = v38;
            _os_log_impl(&dword_0, v34, obja, "ReminderSupport: Could not add folder for a REMList with local ID: %@, for account %@", buf, 0x16u);

            v4 = v44;
            self = v43;
          }
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v28);
  }

  return v45;
}

- (id)pendingLocalAddedFoldersForAccount:(id)a3
{
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[7];
  v44 = v4;
  if (os_log_type_enabled(v5, v6))
  {
    v7 = [v4 accountID];
    *buf = 138412290;
    v56 = v7;
    _os_log_impl(&dword_0, v5, v6, "ReminderSupport: Peek local added folders for account %@", buf, 0xCu);

    v4 = v44;
  }

  accountIDToChangeTrackingTable = self->_accountIDToChangeTrackingTable;
  v9 = [v4 accountID];
  v10 = [(NSMutableDictionary *)accountIDToChangeTrackingTable objectForKeyedSubscript:v9];

  v45 = objc_opt_new();
  v40 = v10;
  [v10 peekAddedListsInReminderDB];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v53 = 0u;
  v11 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
  v43 = self;
  if (v11)
  {
    v12 = v11;
    v13 = *v51;
    v14 = _CPLog_to_os_log_type[4];
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v51 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v50 + 1) + 8 * i);
        v17 = [(ESReminderKitHelper *)self _loadAttributesFromRemlist:v16 forAccount:v4];
        v18 = v17;
        if (v17 && ([v17 serverID], v19 = objc_claimAutoreleasedReturnValue(), v19, !v19))
        {
          [v18 setChangeType:0];
          [v45 addObject:v18];
        }

        else
        {
          v20 = DALoggingwithCategory();
          if (os_log_type_enabled(v20, v14))
          {
            v21 = [v16 objectID];
            v22 = [v21 uuid];
            v23 = [v22 UUIDString];
            v24 = [v4 accountID];
            *buf = 138412546;
            v56 = v23;
            v57 = 2112;
            v58 = v24;
            _os_log_impl(&dword_0, v20, v14, "ReminderSupport: Could not add folder for a REMList with local ID: %@, for account %@", buf, 0x16u);

            v4 = v44;
            self = v43;
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
    }

    while (v12);
  }

  v25 = [v40 peekUndeletedListsInReminderDB];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v26 = v25;
  v27 = [v26 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v47;
    obja = _CPLog_to_os_log_type[4];
    do
    {
      for (j = 0; j != v28; j = j + 1)
      {
        if (*v47 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v46 + 1) + 8 * j);
        v32 = [(ESReminderKitHelper *)self _loadAttributesFromRemlist:v31 forAccount:v4];
        v33 = v32;
        if (v32)
        {
          [v32 setServerID:0];
          [v33 setChangeType:0];
          [v45 addObject:v33];
        }

        else
        {
          v34 = DALoggingwithCategory();
          if (os_log_type_enabled(v34, obja))
          {
            v35 = [v31 objectID];
            v36 = [v35 uuid];
            v37 = [v36 UUIDString];
            v38 = [v4 accountID];
            *buf = 138412546;
            v56 = v37;
            v57 = 2112;
            v58 = v38;
            _os_log_impl(&dword_0, v34, obja, "ReminderSupport: Could not add folder for a REMList with local ID: %@, for account %@", buf, 0x16u);

            v4 = v44;
            self = v43;
          }
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v28);
  }

  return v45;
}

- (id)localModifiedFoldersForAccount:(id)a3
{
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v5, v6))
  {
    v7 = [v4 accountID];
    *buf = 138412290;
    v39 = v7;
    _os_log_impl(&dword_0, v5, v6, "ReminderSupport: Get local modified folders for account %@", buf, 0xCu);
  }

  accountIDToChangeTrackingTable = self->_accountIDToChangeTrackingTable;
  v30 = v4;
  v9 = [v4 accountID];
  v10 = [(NSMutableDictionary *)accountIDToChangeTrackingTable objectForKeyedSubscript:v9];

  v31 = objc_opt_new();
  v28 = v10;
  [v10 modifiedListsInChangeSet];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v37 = 0u;
  v11 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v35;
    type = _CPLog_to_os_log_type[4];
    v29 = *v35;
    do
    {
      v14 = 0;
      v15 = v30;
      do
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v34 + 1) + 8 * v14);
        v17 = [(ESReminderKitHelper *)self _loadAttributesFromRemlist:v16 forAccount:v15];
        v18 = v17;
        if (v17 && ([v17 serverID], v19 = objc_claimAutoreleasedReturnValue(), v19, v19))
        {
          [v18 setChangeType:1];
          [v31 addObject:v18];
        }

        else
        {
          v20 = DALoggingwithCategory();
          if (os_log_type_enabled(v20, type))
          {
            v21 = [v16 objectID];
            [v21 uuid];
            v23 = v22 = self;
            v24 = [v23 UUIDString];
            v25 = [v18 serverID];
            v26 = [v15 accountID];
            *buf = 138412802;
            v39 = v24;
            v40 = 2112;
            v41 = v25;
            v42 = 2112;
            v43 = v26;
            _os_log_impl(&dword_0, v20, type, "ReminderSupport: Could not modify folder for a REMList with local ID: %@, external ID: %@, for account %@", buf, 0x20u);

            v15 = v30;
            self = v22;
            v13 = v29;
          }
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v12);
  }

  return v31;
}

- (id)localDeletedFoldersForAccount:(id)a3
{
  v3 = a3;
  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[7];
  v46 = v3;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = [v3 accountID];
    *buf = 138412290;
    v60 = v6;
    _os_log_impl(&dword_0, v4, v5, "ReminderSupport: Get local deleted folders for account %@", buf, 0xCu);

    v3 = v46;
  }

  accountIDToChangeTrackingTable = self->_accountIDToChangeTrackingTable;
  v8 = [v3 accountID];
  v9 = accountIDToChangeTrackingTable;
  v10 = self;
  v11 = [(NSMutableDictionary *)v9 objectForKeyedSubscript:v8];

  v49 = objc_opt_new();
  v42 = v11;
  [v11 deletedListsInChangeSet];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v57 = 0u;
  v12 = [obj countByEnumeratingWithState:&v54 objects:v65 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v55;
    type = _CPLog_to_os_log_type[4];
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v55 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v54 + 1) + 8 * i);
        v17 = [(ESReminderKitHelper *)v10 _loadAttributesFromRemlist:v16 forAccount:v3];
        v18 = v17;
        if (v17 && ([v17 serverID], v19 = objc_claimAutoreleasedReturnValue(), v19, v19))
        {
          [v18 setChangeType:2];
          [v49 addObject:v18];
        }

        else
        {
          v20 = DALoggingwithCategory();
          if (os_log_type_enabled(v20, type))
          {
            v21 = [v16 objectID];
            v22 = [v21 uuid];
            v23 = [v22 UUIDString];
            v24 = [v18 serverID];
            v25 = [v46 accountID];
            *buf = 138412802;
            v60 = v23;
            v61 = 2112;
            v62 = v24;
            v63 = 2112;
            v64 = v25;
            _os_log_impl(&dword_0, v20, type, "ReminderSupport: Could not delete folder for a REMList with local ID: %@, external ID: %@, for account %@", buf, 0x20u);

            v3 = v46;
            v10 = self;
          }
        }
      }

      v13 = [obj countByEnumeratingWithState:&v54 objects:v65 count:16];
    }

    while (v13);
  }

  v26 = [v42 lazyDeletedListsInChangeSet];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v27 = v26;
  v28 = [v27 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v51;
    typea = _CPLog_to_os_log_type[4];
    obja = v27;
    do
    {
      for (j = 0; j != v29; j = j + 1)
      {
        if (*v51 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v50 + 1) + 8 * j);
        v33 = [(ESReminderKitHelper *)v10 _loadAttributesFromRemlist:v32 forAccount:v3];
        if (v33)
        {
          v34 = [v32 externalIdentifierForMarkedForDeletionObject];
          [v33 setServerID:v34];

          [v33 setChangeType:2];
          [v49 addObject:v33];
        }

        else
        {
          v35 = DALoggingwithCategory();
          if (os_log_type_enabled(v35, typea))
          {
            v36 = [v32 objectID];
            v37 = [v36 uuid];
            v38 = [v37 UUIDString];
            v39 = [v32 externalIdentifierForMarkedForDeletionObject];
            v40 = [v3 accountID];
            *buf = 138412802;
            v60 = v38;
            v61 = 2112;
            v62 = v39;
            v63 = 2112;
            v64 = v40;
            _os_log_impl(&dword_0, v35, typea, "ReminderSupport: Could not delete folder for a REMList with local ID: %@, external ID: %@, for account %@", buf, 0x20u);

            v3 = v46;
            v10 = self;

            v27 = obja;
          }
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v29);
  }

  return v49;
}

- (id)_loadAttributesFromRemlist:(id)a3 forAccount:(id)a4
{
  v5 = a3;
  if (v5)
  {
    v6 = a4;
    v7 = [v5 externalIdentifier];
    v8 = [v5 name];
    v9 = [v6 defaultToDosFolder];

    v10 = [v9 folderID];

    if ([v10 isEqualToString:v7])
    {

      v10 = 0;
    }

    v11 = [[ASFolder alloc] initWithFolderType:15 serverID:v7 parentID:v10 displayName:v8 localID:0];
    v12 = [v5 objectID];
    v13 = [v12 uuid];
    v14 = [v13 UUIDString];
    [v11 setLocalUUID:v14];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)localChangedReminderActionsForFolderId:(id)a3 forAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [(ESReminderKitHelper *)self _localModifiedReminderActionsForFolderId:v6 forAccount:v7];
  [v8 addObjectsFromArray:v9];
  v10 = DALoggingwithCategory();
  v11 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v10, v11))
  {
    v12 = [v9 count];
    v13 = [v7 accountID];
    *buf = 134218498;
    v37 = v12;
    v38 = 2112;
    v39 = v6;
    v40 = 2112;
    v41 = v13;
    _os_log_impl(&dword_0, v10, v11, "ReminderSupport: Collected %lu updated reminder changes for folder: %@, for account %@", buf, 0x20u);
  }

  v14 = [(ESReminderKitHelper *)self _localUndeletedReminderActionsForFolderId:v6 forAccount:v7];
  [v8 addObjectsFromArray:v14];
  v15 = DALoggingwithCategory();
  if (os_log_type_enabled(v15, v11))
  {
    v16 = [v14 count];
    v17 = [v7 accountID];
    *buf = 134218498;
    v37 = v16;
    v38 = 2112;
    v39 = v6;
    v40 = 2112;
    v41 = v17;
    _os_log_impl(&dword_0, v15, v11, "ReminderSupport: Collected %lu undeleted reminder changes for folder: %@, for account %@", buf, 0x20u);
  }

  v18 = [(ESReminderKitHelper *)self _localLazyDeletedReminderActionsForFolderId:v6 forAccount:v7];
  [v8 addObjectsFromArray:v18];
  v19 = DALoggingwithCategory();
  if (os_log_type_enabled(v19, v11))
  {
    v20 = [v18 count];
    [v7 accountID];
    *type = v8;
    v21 = v14;
    v23 = v22 = v9;
    *buf = 134218498;
    v37 = v20;
    v38 = 2112;
    v39 = v6;
    v40 = 2112;
    v41 = v23;
    _os_log_impl(&dword_0, v19, v11, "ReminderSupport: Collected %lu lazy deleted reminder changes for folder: %@, for account %@", buf, 0x20u);

    v9 = v22;
    v14 = v21;
    v8 = *type;
  }

  v24 = [(ESReminderKitHelper *)self _localDeletedReminderActionsForFolderId:v6 forAccount:v7];
  [v8 addObjectsFromArray:v24];
  v25 = DALoggingwithCategory();
  if (os_log_type_enabled(v25, v11))
  {
    typea = v11;
    v26 = v6;
    v27 = v18;
    v28 = v8;
    v29 = v14;
    v30 = v9;
    v31 = [v24 count];
    v32 = [v7 accountID];
    *buf = 134218498;
    v37 = v31;
    v9 = v30;
    v14 = v29;
    v8 = v28;
    v18 = v27;
    v6 = v26;
    v38 = 2112;
    v39 = v26;
    v40 = 2112;
    v41 = v32;
    _os_log_impl(&dword_0, v25, typea, "ReminderSupport: Collected %lu deleted reminder changes for folder: %@, for account %@", buf, 0x20u);
  }

  return v8;
}

- (id)_localModifiedReminderActionsForFolderId:(id)a3 forAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v50 = self;
  accountIDToChangeTrackingTable = self->_accountIDToChangeTrackingTable;
  v52 = v7;
  v9 = [v7 accountID];
  v10 = [(NSMutableDictionary *)accountIDToChangeTrackingTable objectForKeyedSubscript:v9];

  v48 = objc_opt_new();
  v46 = v10;
  v11 = [v10 addedAndModifiedRemindersInChangeSet];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v55 objects:v67 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v56;
    v15 = _CPLog_to_os_log_type[4];
    v49 = v6;
    v51 = v11;
    v53 = *v56;
    do
    {
      v16 = 0;
      v54 = v13;
      do
      {
        if (*v56 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v55 + 1) + 8 * v16);
        v18 = [v17 list];
        v19 = v18;
        if (v18 && ([v18 externalIdentifier], v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
        {
          v21 = [v19 externalIdentifier];
          v22 = [v6 isEqualToString:v21];

          if (!v22)
          {
            goto LABEL_23;
          }

          v23 = [(ESReminderKitHelper *)v50 _loadAttributesFromReminder:v17 forAccount:v52];
          v24 = [v17 externalIdentifier];
          if (v24 && (v25 = v24, [v17 externalIdentifier], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "length"), v26, v11 = v51, v25, v27))
          {
            v28 = DALoggingwithCategory();
            if (os_log_type_enabled(v28, v15))
            {
              v47 = [v17 objectID];
              v29 = [v47 uuid];
              v30 = [v29 UUIDString];
              v31 = [v17 externalIdentifier];
              v32 = [v52 accountID];
              *buf = 138413058;
              v60 = v30;
              v61 = 2112;
              v62 = v31;
              v63 = 2112;
              v64 = v49;
              v65 = 2112;
              v66 = v32;
              _os_log_impl(&dword_0, v28, v15, "ReminderSupport: Modifying a reminder with local ID: %@, external ID: %@, folder ID: %@, account %@", buf, 0x2Au);

              v11 = v51;
              v6 = v49;
            }

            v33 = [ASAction alloc];
            v34 = [v17 externalIdentifier];
            v35 = [v33 initWithItemChangeType:1 changedItem:v23 serverId:v34];

            v14 = v53;
          }

          else
          {
            v39 = DALoggingwithCategory();
            if (os_log_type_enabled(v39, v15))
            {
              v40 = [v17 objectID];
              v41 = [v40 uuid];
              v42 = [v41 UUIDString];
              v43 = [v17 externalIdentifier];
              v44 = [v52 accountID];
              *buf = 138413058;
              v60 = v42;
              v61 = 2112;
              v62 = v43;
              v63 = 2112;
              v64 = v49;
              v65 = 2112;
              v66 = v44;
              _os_log_impl(&dword_0, v39, v15, "ReminderSupport: Adding a reminder with local ID: %@, external ID: %@, folder ID: %@, account %@", buf, 0x2Au);

              v6 = v49;
              v14 = v53;

              v11 = v51;
            }

            v35 = [[ASAction alloc] initWithItemChangeType:0 changedItem:v23 serverId:0];
          }

          v13 = v54;
          if (v35)
          {
            [v48 addObject:v35];
          }
        }

        else
        {
          v23 = DALoggingwithCategory();
          if (os_log_type_enabled(v23, v15))
          {
            v36 = [v17 objectID];
            v37 = [v36 uuid];
            v38 = [v37 UUIDString];
            *buf = 138412290;
            v60 = v38;
            _os_log_impl(&dword_0, v23, v15, "ReminderSupport: Could not modify reminder with local ID: %@", buf, 0xCu);

            v13 = v54;
            v14 = v53;
          }
        }

LABEL_23:
        v16 = v16 + 1;
      }

      while (v13 != v16);
      v13 = [v11 countByEnumeratingWithState:&v55 objects:v67 count:16];
    }

    while (v13);
  }

  return v48;
}

- (id)_localUndeletedReminderActionsForFolderId:(id)a3 forAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  accountIDToChangeTrackingTable = self->_accountIDToChangeTrackingTable;
  v9 = [v7 accountID];
  v10 = [(NSMutableDictionary *)accountIDToChangeTrackingTable objectForKeyedSubscript:v9];

  v35 = objc_opt_new();
  v33 = v10;
  [v10 undeletedRemindersInChangeSet];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v44 = 0u;
  v40 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v40)
  {
    v11 = *v42;
    v12 = _CPLog_to_os_log_type[4];
    v37 = *v42;
    type = v12;
    v34 = v7;
    do
    {
      for (i = 0; i != v40; i = i + 1)
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v41 + 1) + 8 * i);
        v15 = [v14 list];
        v16 = v15;
        if (v15 && ([v15 externalIdentifier], v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
        {
          v18 = [v16 externalIdentifier];
          v19 = [v6 isEqualToString:v18];

          if (!v19)
          {
            goto LABEL_17;
          }

          v20 = [(ESReminderKitHelper *)self _loadAttributesFromReminder:v14 forAccount:v7];
          v21 = DALoggingwithCategory();
          if (os_log_type_enabled(v21, v12))
          {
            v36 = [v14 objectID];
            v22 = [v36 uuid];
            v23 = [v22 UUIDString];
            v24 = [v14 externalIdentifier];
            [v7 accountID];
            v25 = self;
            v27 = v26 = v6;
            *buf = 138413058;
            v46 = v23;
            v47 = 2112;
            v48 = v24;
            v49 = 2112;
            v50 = v26;
            v51 = 2112;
            v52 = v27;
            _os_log_impl(&dword_0, v21, type, "ReminderSupport: Adding a reminder with local ID: %@, external ID: %@, folder ID: %@, account %@", buf, 0x2Au);

            v6 = v26;
            self = v25;
            v7 = v34;

            v11 = v37;
            v12 = type;
          }

          v28 = [[ASAction alloc] initWithItemChangeType:0 changedItem:v20 serverId:0];
          if (v28)
          {
            [v35 addObject:v28];
          }
        }

        else
        {
          v20 = DALoggingwithCategory();
          if (os_log_type_enabled(v20, v12))
          {
            v29 = [v14 objectID];
            v30 = [v29 uuid];
            v31 = [v30 UUIDString];
            *buf = 138412290;
            v46 = v31;
            _os_log_impl(&dword_0, v20, type, "ReminderSupport: Could not modify reminder with local ID: %@", buf, 0xCu);

            v12 = type;
            v11 = v37;
          }
        }

LABEL_17:
      }

      v40 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v40);
  }

  return v35;
}

- (id)_localLazyDeletedReminderActionsForFolderId:(id)a3 forAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  accountIDToChangeTrackingTable = self->_accountIDToChangeTrackingTable;
  v9 = [v7 accountID];
  v10 = [(NSMutableDictionary *)accountIDToChangeTrackingTable objectForKeyedSubscript:v9];

  v33 = objc_opt_new();
  v28 = v10;
  v31 = v6;
  [v10 lazyDeletedRemindersInChangeSetForFolderID:v6];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v39 = 0u;
  v11 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v37;
    type = _CPLog_to_os_log_type[4];
    v29 = *v37;
    v30 = self;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v36 + 1) + 8 * i);
        v16 = [(ESReminderKitHelper *)self _loadAttributesFromReminder:v15 forAccount:v7];
        v17 = DALoggingwithCategory();
        if (os_log_type_enabled(v17, type))
        {
          v34 = [v15 objectID];
          v18 = [v34 uuid];
          v19 = [v18 UUIDString];
          v20 = [v15 externalIdentifier];
          [v7 accountID];
          v21 = v12;
          v23 = v22 = v7;
          *buf = 138413058;
          v41 = v19;
          v42 = 2112;
          v43 = v20;
          v44 = 2112;
          v45 = v31;
          v46 = 2112;
          v47 = v23;
          _os_log_impl(&dword_0, v17, type, "ReminderSupport: Adding a reminder with local ID: %@, external ID: %@, folder ID: %@, account %@", buf, 0x2Au);

          v7 = v22;
          v12 = v21;

          v13 = v29;
          self = v30;
        }

        v24 = [ASAction alloc];
        v25 = [v15 externalIdentifierForMarkedForDeletionObject];
        v26 = [v24 initWithItemChangeType:2 changedItem:v16 serverId:v25];

        if (v26)
        {
          [v33 addObject:v26];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v12);
  }

  return v33;
}

- (id)_localDeletedReminderActionsForFolderId:(id)a3 forAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  accountIDToChangeTrackingTable = self->_accountIDToChangeTrackingTable;
  v9 = [v7 accountID];
  v10 = [(NSMutableDictionary *)accountIDToChangeTrackingTable objectForKeyedSubscript:v9];

  v33 = objc_opt_new();
  v28 = v10;
  v31 = v6;
  [v10 deletedRemindersInChangeSetForFolderID:v6];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v39 = 0u;
  v11 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v37;
    type = _CPLog_to_os_log_type[4];
    v29 = *v37;
    v30 = self;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v36 + 1) + 8 * i);
        v16 = [(ESReminderKitHelper *)self _loadAttributesFromReminder:v15 forAccount:v7];
        v17 = DALoggingwithCategory();
        if (os_log_type_enabled(v17, type))
        {
          v34 = [v15 objectID];
          v18 = [v34 uuid];
          v19 = [v18 UUIDString];
          v20 = [v15 externalIdentifier];
          [v7 accountID];
          v21 = v12;
          v23 = v22 = v7;
          *buf = 138413058;
          v41 = v19;
          v42 = 2112;
          v43 = v20;
          v44 = 2112;
          v45 = v31;
          v46 = 2112;
          v47 = v23;
          _os_log_impl(&dword_0, v17, type, "ReminderSupport: Adding a reminder with local ID: %@, external ID: %@, folder ID: %@, account %@", buf, 0x2Au);

          v7 = v22;
          v12 = v21;

          v13 = v29;
          self = v30;
        }

        v24 = [ASAction alloc];
        v25 = [v15 externalIdentifierForMarkedForDeletionObject];
        v26 = [v24 initWithItemChangeType:0 changedItem:v16 serverId:v25];

        if (v26)
        {
          [v33 addObject:v26];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v12);
  }

  return v33;
}

- (id)localUnsyncedReminderActionsForFolderId:(id)a3 forAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ESReminderKitHelper *)self _reminderAccountForAccount:v7];
  if (v8)
  {
    v9 = [(ESReminderKitHelper *)self _reminderListWithExternalId:v6 forReminderAccount:v8];
    if (!v9)
    {
      v12 = DALoggingwithCategory();
      v21 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v12, v21))
      {
        *buf = 138412290;
        v42 = v6;
        _os_log_impl(&dword_0, v12, v21, "Could not get list for folderID: %@", buf, 0xCu);
      }

      v10 = 0;
      goto LABEL_15;
    }

    v10 = objc_opt_new();
    v39 = 0;
    v11 = [v9 fetchRemindersWithError:&v39];
    v12 = v39;
    if (v12)
    {
      v13 = v11;
      v14 = DALoggingwithCategory();
      v15 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v14, v15))
      {
        *buf = 138412546;
        v42 = v6;
        v43 = 2112;
        v44 = v12;
        v16 = "Error getting reminders for folderID: %@, error: %@";
        v17 = v14;
        v18 = v15;
        v19 = 22;
LABEL_6:
        _os_log_impl(&dword_0, v17, v18, v16, buf, v19);
      }
    }

    else
    {
      if (v11)
      {
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v14 = v11;
        v23 = [v14 countByEnumeratingWithState:&v35 objects:v40 count:16];
        if (v23)
        {
          v24 = v23;
          v32 = v11;
          v33 = v9;
          v34 = v8;
          v25 = *v36;
          do
          {
            for (i = 0; i != v24; i = i + 1)
            {
              if (*v36 != v25)
              {
                objc_enumerationMutation(v14);
              }

              v27 = *(*(&v35 + 1) + 8 * i);
              v28 = [v27 externalIdentifier];

              if (!v28)
              {
                v29 = [(ESReminderKitHelper *)self _loadAttributesFromReminder:v27 forAccount:v7];
                v30 = [[ASAction alloc] initWithItemChangeType:0 changedItem:v29 serverId:0];
                if (v30)
                {
                  [v10 addObject:v30];
                }
              }
            }

            v24 = [v14 countByEnumeratingWithState:&v35 objects:v40 count:16];
          }

          while (v24);
          v8 = v34;
          v12 = 0;
          v9 = v33;
          v11 = v32;
        }

        goto LABEL_8;
      }

      v13 = 0;
      v14 = DALoggingwithCategory();
      v31 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v14, _CPLog_to_os_log_type[3]))
      {
        *buf = 138412290;
        v42 = v6;
        v16 = "Could not get reminders for folderID: %@";
        v17 = v14;
        v18 = v31;
        v19 = 12;
        goto LABEL_6;
      }
    }

    v11 = v13;
LABEL_8:

LABEL_15:
    goto LABEL_16;
  }

  v9 = DALoggingwithCategory();
  v20 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v9, v20))
  {
    *buf = 138412290;
    v42 = v7;
    _os_log_impl(&dword_0, v9, v20, "Could not fetch reminder account for account: %@", buf, 0xCu);
  }

  v10 = 0;
LABEL_16:

  return v10;
}

- (id)_loadAttributesFromReminder:(id)a3 forAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v8 = 0;
    goto LABEL_54;
  }

  v8 = objc_opt_new();
  v9 = [v6 objectID];
  v10 = [v9 uuid];
  v11 = [v10 UUIDString];
  [v8 setClientID:v11];

  v12 = [v6 title];
  v13 = [v12 string];
  [v8 setSubject:v13];

  v14 = [v6 notesAsString];
  [v8 setBody:v14];

  v15 = [v6 startDateComponents];
  v16 = [v6 dueDateComponents];
  v17 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  v18 = [v16 timeZone];

  if (v18)
  {
    [v16 timeZone];
  }

  else
  {
    +[NSTimeZone localTimeZone];
  }
  v19 = ;
  v20 = [v15 timeZone];

  if (v20)
  {
    v21 = [v15 timeZone];
  }

  else
  {
    v22 = [v16 timeZone];

    if (v22)
    {
      v21 = v17;
    }

    else
    {
      v21 = +[NSTimeZone localTimeZone];
    }
  }

  v23 = v21;
  if (v15)
  {
    v24 = [NSDateComponents rem_dateWithDateComponents:v15 timeZone:v17];
    [v8 setStartTime:v24];

    v25 = [NSDateComponents rem_dateWithDateComponents:v15 timeZone:v23];
    [v8 setUTCStartTime:v25];
  }

  if (v16)
  {
    v26 = [NSDateComponents rem_dateWithDateComponents:v16 timeZone:v17];
    [v8 setDueDate:v26];

    v27 = [NSDateComponents rem_dateWithDateComponents:v16 timeZone:v19];
    [v8 setUTCDueDate:v27];
  }

  v28 = [v6 alarms];
  if (![v28 count])
  {
    [v8 setReminderIsSet:&off_6E4C8];
    goto LABEL_32;
  }

  v70 = v15;
  v71 = v19;
  v69 = v16;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v68 = v28;
  v29 = v28;
  v30 = [v29 countByEnumeratingWithState:&v73 objects:v79 count:16];
  if (!v30)
  {
    v40 = 0;
    goto LABEL_31;
  }

  v31 = v30;
  v32 = *v74;
  v66 = self;
  v67 = v6;
  v65 = v23;
  while (2)
  {
    for (i = 0; i != v31; i = i + 1)
    {
      if (*v74 != v32)
      {
        objc_enumerationMutation(v29);
      }

      v34 = *(*(&v73 + 1) + 8 * i);
      v35 = [v34 trigger];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v37 = [v34 trigger];
      v38 = v37;
      if (isKindOfClass)
      {
        [v37 timeInterval];
        v41 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
        [v8 setReminderDateTime:v41];
LABEL_30:

        v40 = 1;
        self = v66;
        v6 = v67;
        v23 = v65;
        goto LABEL_31;
      }

      objc_opt_class();
      v39 = objc_opt_isKindOfClass();

      if (v39)
      {
        v38 = [v34 trigger];
        v41 = [v38 dateComponents];
        v42 = [NSDateComponents rem_dateWithDateComponents:v41 timeZone:v71];
        [v8 setReminderDateTime:v42];

        goto LABEL_30;
      }
    }

    v31 = [v29 countByEnumeratingWithState:&v73 objects:v79 count:16];
    v40 = 0;
    self = v66;
    v6 = v67;
    v23 = v65;
    if (v31)
    {
      continue;
    }

    break;
  }

LABEL_31:

  v43 = [NSNumber numberWithBool:v40];
  [v8 setReminderIsSet:v43];

  v19 = v71;
  v16 = v69;
  v15 = v70;
  v28 = v68;
LABEL_32:

  [v8 setSensitivity:&off_6E4C8];
  [v6 priority];
  v44 = REMReminderPriorityLevelForPriority();
  if (v44 > 2)
  {
    v45 = &off_6E4E0;
    goto LABEL_38;
  }

  if (v44 == 2)
  {
    v45 = &off_6E4F8;
    goto LABEL_38;
  }

  if (v44 >= 1)
  {
    v45 = &off_6E4C8;
LABEL_38:
    [v8 setImportance:v45];
  }

  [(ESReminderKitHelper *)self _loadRecurrenceRulesFromReminder:v6 intoTask:v8 forAccount:v7];
  v46 = [v6 completionDate];
  if (v46)
  {
    [v8 setDateCompleted:v46];
  }

  v47 = [v8 dateCompleted];
  [v47 timeIntervalSinceReferenceDate];
  v49 = v48;

  if (v49 == 0.0)
  {
    v50 = &off_6E4C8;
  }

  else
  {
    v50 = &off_6E4F8;
  }

  [v8 setComplete:v50];
  v51 = [v8 complete];
  v52 = [v51 BOOLValue];

  if (v52)
  {
    v53 = [v8 recurrence];
    [v53 setDeadOccur:&off_6E4F8];

    v54 = [v7 protocol];
    v55 = [v54 allowsReminderOnCompletedTasks];

    if ((v55 & 1) == 0)
    {
      [v8 setReminderDateTime:0];
      [v8 setReminderIsSet:&off_6E4C8];
    }
  }

  v56 = [v6 importedICSData];
  if (v56)
  {
    v57 = +[ASEvent calendarItemExternalRepClasses];
    v72 = 0;
    v58 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v57 fromData:v56 error:&v72];
    v59 = v72;

    if (!v58)
    {
      v60 = DALoggingwithCategory();
      v61 = _CPLog_to_os_log_type[4];
      if (os_log_type_enabled(v60, v61))
      {
        *buf = 138412290;
        v78 = v59;
        _os_log_impl(&dword_0, v60, v61, "Unable to decode ToDo properties: %@", buf, 0xCu);
      }
    }

    v62 = [v58 objectForKeyedSubscript:kEASExtraProperties];
    v63 = [v62 objectForKeyedSubscript:&off_6E510];
    [v8 setCategories:v63];
  }

LABEL_54:

  return v8;
}

- (void)_loadRecurrenceRulesFromReminder:(id)a3 intoTask:(id)a4 forAccount:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 recurrenceRules];
  v10 = [v9 count];

  if (!v10)
  {
    goto LABEL_111;
  }

  v11 = [v7 recurrenceRules];
  v12 = [v11 firstObject];

  v13 = [[ASToDoRecurrence alloc] initWithParentToDo:v8];
  v14 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  v15 = +[NSCalendar currentCalendar];
  [v15 setTimeZone:v14];
  v16 = +[NSDate date];
  v17 = [v7 dueDateComponents];

  if (v17)
  {
    v18 = [v7 dueDateComponents];
    v19 = [NSDateComponents rem_dateWithDateComponents:v18 timeZone:v14];

    v16 = v19;
  }

  [v13 setStartTime:v16];
  v20 = &PLLogRegisteredEvent_ptr;
  v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v12 interval]);
  [v13 setInterval:v21];

  v22 = [v12 frequency];
  v23 = 1;
  if (v22 > 1)
  {
    if (v22 != (&dword_0 + 2))
    {
      if (v22 != (&dword_0 + 3))
      {
        if (v22 == &dword_4)
        {
          v24 = DALoggingwithCategory();
          v25 = _CPLog_to_os_log_type[3];
          if (os_log_type_enabled(v24, v25))
          {
            *buf = 138412290;
            v113 = v12;
            _os_log_impl(&dword_0, v24, v25, "Hourly recurrence is not supported {recurrenceRule: %@}", buf, 0xCu);
          }

          v23 = 0;
        }

        goto LABEL_97;
      }

      v34 = [v12 daysOfTheMonth];
      v104 = [v12 monthsOfTheYear];
      v102 = [v12 daysOfTheWeek];
      v101 = v34;
      if ([v34 count] && objc_msgSend(v104, "count") && !objc_msgSend(v102, "count"))
      {
        [v13 setType:&off_6E5D0];
        [v34 firstObject];
        v109 = v16;
        v58 = v57 = v14;
        v59 = [v58 integerValue];

        if (v59 == -1)
        {
          v60 = 127;
        }

        else
        {
          v60 = v59;
        }

        v61 = [NSNumber numberWithInteger:v60];
        [v13 setDayOfMonth:v61];

        v62 = [v104 firstObject];
        v63 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", -[ESReminderKitHelper _ASMonthOfYearFromREMMonthOfYear:](self, "_ASMonthOfYearFromREMMonthOfYear:", [v62 integerValue]));
        [v13 setMonthOfYear:v63];

        v14 = v57;
        v16 = v109;
      }

      else
      {
        if (![v34 count] && objc_msgSend(v104, "count") && objc_msgSend(v102, "count"))
        {
          v108 = v14;
          [v13 setType:&off_6E5E8];
          v111 = -1;
          v41 = [v12 daysOfTheWeek];
          v42 = [(ESReminderKitHelper *)self _ASDayOfWeekFromREMDaysOfWeek:v41 outWeekOfMonth:&v111];

          v43 = [NSNumber numberWithInteger:v42];
          [v13 setDayOfWeek:v43];

          v23 = v111 != -2;
          if (v111 == -2)
          {
            v65 = DALoggingwithCategory();
            v66 = _CPLog_to_os_log_type[3];
            if (os_log_type_enabled(v65, v66))
            {
              *buf = 138412290;
              v113 = v7;
              _os_log_impl(&dword_0, v65, v66, "Malformed Monthly recurrence (weekDays has multiple weekOfMonths).  reminder is %@", buf, 0xCu);
            }

            v45 = v65;
            v44 = &PLLogRegisteredEvent_ptr;
          }

          else
          {
            if ((v111 - 1) > 4)
            {
              v23 = 0;
              v44 = &PLLogRegisteredEvent_ptr;
              goto LABEL_95;
            }

            v44 = &PLLogRegisteredEvent_ptr;
            v45 = [NSNumber numberWithInteger:?];
            [v13 setWeekOfMonth:v45];
          }

LABEL_95:
          v82 = v44[422];
          v83 = [v104 firstObject];
          v84 = [v82 numberWithUnsignedInt:{-[ESReminderKitHelper _ASMonthOfYearFromREMMonthOfYear:](self, "_ASMonthOfYearFromREMMonthOfYear:", objc_msgSend(v83, "integerValue"))}];
          [v13 setMonthOfYear:v84];

          v20 = &PLLogRegisteredEvent_ptr;
          v14 = v108;
          goto LABEL_96;
        }

        if ([v34 count] || objc_msgSend(v104, "count") || objc_msgSend(v102, "count"))
        {
          if (![v34 count] || objc_msgSend(v104, "count") || objc_msgSend(v34, "count"))
          {
            v35 = DALoggingwithCategory();
            v36 = _CPLog_to_os_log_type[3];
            if (os_log_type_enabled(v35, v36))
            {
              *buf = 138412290;
              v113 = v7;
              _os_log_impl(&dword_0, v35, v36, "Malformed Yearly recurrence  (need either (byMonthDayDays && byMonthMonths && !byDayDays) OR (!byMonthDayDays && byMonthMonths && byDayDays) OR (!byMonthDayDays && !byMonthMonths && !byDayDays).  reminder is %@", buf, 0xCu);
            }

            v23 = 0;
            v20 = &PLLogRegisteredEvent_ptr;
            goto LABEL_96;
          }

          [v13 setType:&off_6E5D0];
          [v34 firstObject];
          v67 = v110 = v14;
          v68 = [v67 integerValue];

          if (v68 == -1)
          {
            v69 = 127;
          }

          else
          {
            v69 = v68;
          }

          v20 = &PLLogRegisteredEvent_ptr;
          v70 = [NSNumber numberWithInteger:v69];
          [v13 setDayOfMonth:v70];

          v71 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", -[ESReminderKitHelper _ASMonthOfYearFromREMMonthOfYear:](self, "_ASMonthOfYearFromREMMonthOfYear:", [v15 ordinalityOfUnit:8 inUnit:4 forDate:v16]));
          [v13 setMonthOfYear:v71];

          v14 = v110;
          goto LABEL_93;
        }

        [v13 setType:&off_6E5D0];
        v78 = v16;
        v79 = v14;
        v80 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v15 ordinalityOfUnit:16 inUnit:8 forDate:v78]);
        [v13 setDayOfMonth:v80];

        v81 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", -[ESReminderKitHelper _ASMonthOfYearFromREMMonthOfYear:](self, "_ASMonthOfYearFromREMMonthOfYear:", [v15 ordinalityOfUnit:8 inUnit:4 forDate:v78]));
        [v13 setMonthOfYear:v81];

        v14 = v79;
        v16 = v78;
      }

      v20 = &PLLogRegisteredEvent_ptr;
LABEL_93:
      v23 = 1;
LABEL_96:

      goto LABEL_97;
    }

    v107 = v14;
    v29 = [v12 daysOfTheMonth];
    if ([v29 count])
    {
      v30 = [v12 daysOfTheWeek];
      v31 = [v30 count];

      if (!v31)
      {
        [v13 setType:&off_6E4E0];
        v32 = [v12 daysOfTheMonth];
        v33 = [v32 firstObject];

        if ([v33 integerValue] == -1)
        {

          v33 = &off_6E5A0;
        }

        v14 = v107;
        v20 = &PLLogRegisteredEvent_ptr;
        [v13 setDayOfMonth:v33];

        goto LABEL_20;
      }
    }

    else
    {
    }

    v37 = [v12 daysOfTheMonth];
    if ([v37 count])
    {

      goto LABEL_38;
    }

    v46 = [v12 daysOfTheWeek];
    v47 = [v46 count];

    if (!v47)
    {
LABEL_38:
      v38 = [v12 daysOfTheMonth];
      if ([v38 count])
      {

        v20 = &PLLogRegisteredEvent_ptr;
      }

      else
      {
        v53 = [v12 daysOfTheWeek];
        v54 = [v53 count];

        v20 = &PLLogRegisteredEvent_ptr;
        if (!v54)
        {
          [v13 setType:&off_6E4E0];
          v64 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v15 ordinalityOfUnit:16 inUnit:8 forDate:v16]);
          [v13 setDayOfMonth:v64];

          v23 = 1;
LABEL_60:
          v14 = v107;
          goto LABEL_97;
        }
      }

      v55 = DALoggingwithCategory();
      v56 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v55, v56))
      {
        *buf = 138412290;
        v113 = v7;
        _os_log_impl(&dword_0, v55, v56, "Malformed Monthly recurrence (both daysOfTheMonth and daysOfTheWeek are set).  reminder is %@", buf, 0xCu);
      }

      v23 = 0;
      goto LABEL_60;
    }

    [v13 setType:&off_6E5B8];
    v111 = -1;
    v48 = [v12 daysOfTheWeek];
    v49 = [(ESReminderKitHelper *)self _ASDayOfWeekFromREMDaysOfWeek:v48 outWeekOfMonth:&v111];

    v20 = &PLLogRegisteredEvent_ptr;
    v50 = [NSNumber numberWithInteger:v49];
    [v13 setDayOfWeek:v50];

    if (v111 == 5)
    {
      v51 = [NSNumber numberWithInteger:5];
      [v13 setWeekOfMonth:v51];
      v23 = 1;
      v14 = v107;
LABEL_122:

      goto LABEL_97;
    }

    v14 = v107;
    if (v111)
    {
      if (v111 == -2)
      {
        v51 = DALoggingwithCategory();
        v52 = _CPLog_to_os_log_type[3];
        if (os_log_type_enabled(v51, v52))
        {
          *buf = 138412290;
          v113 = v7;
          _os_log_impl(&dword_0, v51, v52, "Malformed Monthly recurrence (weekDays has multiple weekOfMonths).  reminder is %@", buf, 0xCu);
        }

        v23 = 0;
        goto LABEL_122;
      }

LABEL_20:
      v23 = 1;
      goto LABEL_97;
    }

    v72 = [v12 setPositions];
    v105 = v72;
    if (v72)
    {
      v73 = v72;
      if ([v72 count]== &dword_0 + 1)
      {
        v74 = [v73 objectAtIndexedSubscript:0];
        v75 = [v74 integerValue];

        if ((v75 - 1) <= 3)
        {
          v76 = v75;
          v20 = &PLLogRegisteredEvent_ptr;
          v77 = [NSNumber numberWithInteger:v76];
          [v13 setWeekOfMonth:v77];
          v23 = 1;
          v14 = v107;
LABEL_121:

          v51 = v105;
          goto LABEL_122;
        }

        v99 = DALoggingwithCategory();
        v100 = _CPLog_to_os_log_type[3];
        v14 = v107;
        if (os_log_type_enabled(v99, v100))
        {
          *buf = 134218242;
          v113 = v75;
          v114 = 2112;
          v115 = v7;
          _os_log_impl(&dword_0, v99, v100, "Malformed Monthly recurrence (setPosition is out of bounds (%ld)).  reminder is %@", buf, 0x16u);
        }

        v77 = v99;
LABEL_120:
        v23 = 0;
        v20 = &PLLogRegisteredEvent_ptr;
        goto LABEL_121;
      }

      v77 = DALoggingwithCategory();
      v98 = _CPLog_to_os_log_type[3];
      if (!os_log_type_enabled(v77, v98))
      {
        goto LABEL_120;
      }

      *buf = 138412290;
      v113 = v7;
    }

    else
    {
      v77 = DALoggingwithCategory();
      v98 = _CPLog_to_os_log_type[3];
      if (!os_log_type_enabled(v77, v98))
      {
        goto LABEL_120;
      }

      *buf = 138412290;
      v113 = v7;
    }

    _os_log_impl(&dword_0, v77, v98, "Malformed Monthly recurrence (has dayOfWeek but no setPosition).  reminder is %@", buf, 0xCu);
    goto LABEL_120;
  }

  if (!v22)
  {
    [v13 setType:&off_6E4C8];
    goto LABEL_97;
  }

  if (v22 != (&dword_0 + 1))
  {
    goto LABEL_97;
  }

  [v13 setType:&off_6E4F8];
  v26 = [v12 daysOfTheWeek];

  if (v26)
  {
    v27 = [v12 daysOfTheWeek];
    v28 = [NSNumber numberWithInteger:[(ESReminderKitHelper *)self _ASDayOfWeekFromREMDaysOfWeek:v27 outWeekOfMonth:0]];
    [v13 setDayOfWeek:v28];

    v20 = &PLLogRegisteredEvent_ptr;
    goto LABEL_20;
  }

  v39 = [v15 component:512 fromDate:v16];
  v23 = 1;
  if (v39 <= 3)
  {
    if (v39 == (&dword_0 + 1))
    {
      v40 = &off_6E4F8;
    }

    else if (v39 == (&dword_0 + 2))
    {
      v40 = &off_6E4E0;
    }

    else
    {
      if (v39 != (&dword_0 + 3))
      {
        goto LABEL_97;
      }

      v40 = &off_6E528;
    }
  }

  else if (v39 > 5)
  {
    if (v39 == (&dword_4 + 2))
    {
      v40 = &off_6E570;
    }

    else
    {
      if (v39 != (&dword_4 + 3))
      {
        goto LABEL_97;
      }

      v40 = &off_6E588;
    }
  }

  else if (v39 == &dword_4)
  {
    v40 = &off_6E540;
  }

  else
  {
    v40 = &off_6E558;
  }

  [v13 setDayOfWeek:v40];
LABEL_97:
  v85 = [v12 recurrenceEnd];
  v86 = v85;
  if (v85)
  {
    v103 = v23;
    v106 = v12;
    v87 = v7;
    v88 = v8;
    v89 = v15;
    v90 = v14;
    v91 = [v85 endDate];

    if (v91)
    {
      v92 = [v86 endDate];
      v93 = [NSDateComponents rem_dateComponentsWithDate:v92 timeZone:v90 isAllDay:1];

      v94 = [NSDateComponents rem_dateWithDateComponents:v93 timeZone:v90];
      [v13 setUntil:v94];
    }

    else
    {
      v93 = [v20[422] numberWithUnsignedInteger:{objc_msgSend(v86, "occurrenceCount")}];
      [v13 setOccurrences:v93];
    }

    v14 = v90;
    v15 = v89;
    v8 = v88;
    v7 = v87;
    v12 = v106;
    v23 = v103;
  }

  if (![v12 firstDayOfTheWeek])
  {
    v96 = &off_6E4F8;
    goto LABEL_106;
  }

  v95 = [v12 firstDayOfTheWeek] - 1;
  if (v95 <= 6)
  {
    v96 = off_6D368[v95];
LABEL_106:
    [v13 setFirstDayOfWeek:v96];
  }

  if (v23)
  {
    v97 = v13;
  }

  else
  {
    v97 = 0;
  }

  [v8 setRecurrence:v97];

LABEL_111:
}

- (void)clearReminderChangesForFolderID:(id)a3 forAccount:(id)a4
{
  v9 = a3;
  accountIDToChangeTrackingTable = self->_accountIDToChangeTrackingTable;
  v7 = [a4 accountID];
  v8 = [(NSMutableDictionary *)accountIDToChangeTrackingTable objectForKey:v7];

  if (v8 && [v8 markReminderChangesConsumedForFolderID:v9])
  {
    [(ESReminderKitHelper *)self _processReminderNotification:0];
  }
}

- (void)clearFolderAdditionForFolderUUID:(id)a3 folderID:(id)a4 forAccount:(id)a5
{
  v12 = a3;
  v8 = a4;
  accountIDToChangeTrackingTable = self->_accountIDToChangeTrackingTable;
  v10 = [a5 accountID];
  v11 = [(NSMutableDictionary *)accountIDToChangeTrackingTable objectForKey:v10];

  if (v11 && [v11 markListAdditionConsumedForFolderUUID:v12 folderID:v8])
  {
    [(ESReminderKitHelper *)self _processReminderNotification:0];
  }
}

- (void)clearFolderChangeForFolderID:(id)a3 forAccount:(id)a4
{
  v9 = a3;
  accountIDToChangeTrackingTable = self->_accountIDToChangeTrackingTable;
  v7 = [a4 accountID];
  v8 = [(NSMutableDictionary *)accountIDToChangeTrackingTable objectForKey:v7];

  if (v8 && [v8 markListChangeConsumedForFolderID:v9])
  {
    [(ESReminderKitHelper *)self _processReminderNotification:0];
  }
}

- (BOOL)_populateChangeItem:(id)a3 forReminder:(id)a4 folderWithId:(id)a5 forAccount:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = DALoggingwithCategory();
  v14 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v13, v14))
  {
    v15 = [v9 objectID];
    v16 = [v10 serverID];
    *buf = 138412546;
    v107 = v15;
    v108 = 2112;
    v109 = v16;
    _os_log_impl(&dword_0, v13, v14, "UPDATE {objectID: %@, task.serverID: %@}", buf, 0x16u);
  }

  v17 = [v10 serverID];

  if (v17)
  {
    v18 = [v10 serverID];
    [v9 setExternalIdentifier:v18];

    v19 = DALoggingwithCategory();
    v20 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v19, v20))
    {
      v21 = [v10 serverID];
      *buf = 138412290;
      v107 = v21;
      _os_log_impl(&dword_0, v19, v20, "SET externalIdentifier <- %@", buf, 0xCu);
    }
  }

  v103 = v12;
  v22 = [v10 body];

  if (v22)
  {
    v23 = DALoggingwithCategory();
    v24 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v23, v24))
    {
      v25 = [v10 body];
      *buf = 138412290;
      v107 = v25;
      _os_log_impl(&dword_0, v23, v24, "SET notes <- %@", buf, 0xCu);
    }

    v26 = [NSAttributedString alloc];
    v27 = [v10 body];
    v28 = [v26 initWithString:v27];
    [v9 setNotes:v28];
  }

  v29 = [v10 subject];

  if (v29)
  {
    v30 = DALoggingwithCategory();
    v31 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v30, v31))
    {
      v32 = [v10 subject];
      *buf = 138412290;
      v107 = v32;
      _os_log_impl(&dword_0, v30, v31, "SET title <- %@", buf, 0xCu);
    }

    v33 = [NSAttributedString alloc];
    v34 = [v10 subject];
    v35 = [v33 initWithString:v34];
    [v9 setTitle:v35];
  }

  v36 = [v10 utcStartTime];

  if (v36)
  {
    v37 = [v10 startTime];
    v38 = [v10 utcStartTime];
    v39 = [v10 bestGuessTimeZoneWithLocalDate:v37 utcDate:v38];

    v40 = [v10 utcStartTime];
    v41 = [NSDateComponents rem_dateComponentsWithDate:v40 timeZone:v39 isAllDay:1];

    [v41 setTimeZone:0];
    v42 = DALoggingwithCategory();
    v43 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v42, v43))
    {
      *buf = 138412290;
      v107 = v41;
      _os_log_impl(&dword_0, v42, v43, "SET startDateComponents <- %@", buf, 0xCu);
    }

    [v9 setStartDateComponents:v41];
  }

  v44 = [v10 utcDueDate];

  if (v44)
  {
    v45 = [v10 dueDate];
    v46 = [v10 utcDueDate];
    v47 = [v10 bestGuessTimeZoneWithLocalDate:v45 utcDate:v46];

    v48 = [v10 utcDueDate];
    v49 = [NSDateComponents rem_dateComponentsWithDate:v48 timeZone:v47 isAllDay:1];

    [v49 setTimeZone:0];
    v50 = DALoggingwithCategory();
    v51 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v50, v51))
    {
      *buf = 138412290;
      v107 = v49;
      _os_log_impl(&dword_0, v50, v51, "SET dueDateComponents <- %@", buf, 0xCu);
    }

    [v9 setDueDateComponents:v49];
  }

  v52 = [v10 dateCompleted];

  v53 = DALoggingwithCategory();
  v54 = _CPLog_to_os_log_type[7];
  v55 = os_log_type_enabled(v53, v54);
  if (v52)
  {
    if (v55)
    {
      v56 = [v10 dateCompleted];
      *buf = 138412290;
      v107 = v56;
      _os_log_impl(&dword_0, v53, v54, "SET completionDate <- %@", buf, 0xCu);
    }

    v57 = DALoggingwithCategory();
    if (os_log_type_enabled(v57, v54))
    {
      *buf = 138412290;
      v107 = &__kCFBooleanTrue;
      _os_log_impl(&dword_0, v57, v54, "SET completed <- %@", buf, 0xCu);
    }

    v58 = [v10 dateCompleted];
    [v9 setCompletionDate:v58];
  }

  else
  {
    if (v55)
    {
      *buf = 138412290;
      v107 = 0;
      _os_log_impl(&dword_0, v53, v54, "SET completionDate <- %@", buf, 0xCu);
    }

    v59 = DALoggingwithCategory();
    if (os_log_type_enabled(v59, v54))
    {
      *buf = 138412290;
      v107 = &__kCFBooleanFalse;
      _os_log_impl(&dword_0, v59, v54, "SET completed <- %@", buf, 0xCu);
    }

    [v9 setCompletionDate:0];
  }

  [v9 setCompleted:v52 != 0];
  v60 = [v10 importance];

  if (v60 && ([v10 importance], v61 = objc_claimAutoreleasedReturnValue(), v62 = objc_msgSend(v61, "intValue"), v61, v62 <= 2))
  {
    v63 = REMReminderDefaultPriorityForPriorityLevel();
  }

  else
  {
    v63 = 0;
  }

  v64 = DALoggingwithCategory();
  if (os_log_type_enabled(v64, v54))
  {
    v65 = [NSNumber numberWithInteger:v63];
    *buf = 138412290;
    v107 = v65;
    _os_log_impl(&dword_0, v64, v54, "SET priority <- %@", buf, 0xCu);
  }

  [v9 setPriority:v63];
  v66 = [v10 reminderIsSet];
  v101 = v11;
  if ([v66 BOOLValue])
  {
    v67 = [v10 reminderDateTime];

    if (v67)
    {
      [v9 removeAllAlarms];
      v68 = [v10 reminderDateTime];
      v69 = +[NSTimeZone localTimeZone];
      v70 = [NSDateComponents rem_dateComponentsWithDate:v68 timeZone:v69 isAllDay:0];

      v71 = [[REMAlarmDateTrigger alloc] initWithDateComponents:v70];
      v72 = DALoggingwithCategory();
      if (os_log_type_enabled(v72, v54))
      {
        *buf = 138412290;
        v107 = v71;
        _os_log_impl(&dword_0, v72, v54, "SET alarms <- [%@]", buf, 0xCu);
      }

      v73 = [v9 addAlarmWithTrigger:v71];
      goto LABEL_53;
    }
  }

  else
  {
  }

  v74 = [v9 alarms];
  v75 = [v74 count];

  if (v75)
  {
    v76 = DALoggingwithCategory();
    if (os_log_type_enabled(v76, v14))
    {
      v77 = [v9 objectID];
      *buf = 138412290;
      v107 = v77;
      _os_log_impl(&dword_0, v76, v14, "Removing all alarms from reminderChangeItem {objectID: %@}", buf, 0xCu);
    }
  }

  v78 = DALoggingwithCategory();
  if (os_log_type_enabled(v78, v54))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v78, v54, "SET alarms <- nil", buf, 2u);
  }

  [v9 removeAllAlarms];
LABEL_53:
  v79 = [v9 importedICSData];
  if (!v79)
  {
    v87 = 0;
    goto LABEL_67;
  }

  v80 = [(ESReminderKitHelper *)self _remExternalRepresentationClasses];
  v105 = 0;
  v81 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v80 fromData:v79 error:&v105];
  v82 = v105;
  v83 = [v81 mutableCopy];

  if (!v83)
  {
    v84 = DALoggingwithCategory();
    v85 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v84, v85))
    {
      *buf = 138412290;
      v107 = v82;
      _os_log_impl(&dword_0, v84, v85, "Unable to decode ToDo properties: %@", buf, 0xCu);
    }
  }

  v86 = [v83 objectForKeyedSubscript:kEASExtraProperties];
  v87 = [v86 mutableCopy];

  if (!v83)
  {
LABEL_67:
    v83 = objc_opt_new();
    if (v87)
    {
      goto LABEL_60;
    }

    goto LABEL_68;
  }

  if (v87)
  {
    goto LABEL_60;
  }

LABEL_68:
  v87 = objc_opt_new();
LABEL_60:
  [v83 setObject:v87 forKeyedSubscript:kEASExtraProperties];
  v88 = objc_opt_new();
  v89 = [v10 categories];

  if (v89)
  {
    v90 = [v10 categories];
    [v88 addObjectsFromArray:v90];
  }

  v91 = [v87 objectForKeyedSubscript:&off_6E510];

  if (v91)
  {
    v92 = [v87 objectForKeyedSubscript:&off_6E510];
    [v88 addObjectsFromArray:v92];
  }

  if ([v88 count])
  {
    v93 = [v88 allObjects];
    [v87 setObject:v93 forKeyedSubscript:&off_6E510];
  }

  else
  {
    [v87 removeObjectForKey:&off_6E510];
  }

  v94 = [NSKeyedArchiver archivedDataWithRootObject:v83];
  v95 = DALoggingwithCategory();
  if (os_log_type_enabled(v95, v54))
  {
    *buf = 138412290;
    v107 = v94;
    _os_log_impl(&dword_0, v95, v54, "SET importedICSData <- %@", buf, 0xCu);
  }

  [v9 setImportedICSData:v94];
  v96 = [v10 recurrence];

  if (v96)
  {
    v97 = [v10 recurrence];
    v98 = v103;
    [(ESReminderKitHelper *)self _populateChangeItem:v9 forRecurrence:v97 forReminder:v10 forFolderWithId:v102 forAccount:v103];
  }

  else
  {
    v99 = DALoggingwithCategory();
    if (os_log_type_enabled(v99, v54))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v99, v54, "SET recurrenceRules <- nil", buf, 2u);
    }

    [v9 removeAllRecurrenceRules];
    v98 = v103;
  }

  return 1;
}

- (int64_t)_ASDayOfWeekFromREMDaysOfWeek:(id)a3 outWeekOfMonth:(int64_t *)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if (a4)
    {
      *a4 = -2;
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = 0;
      v9 = *v16;
      while (1)
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          v12 = [v11 dayOfTheWeek];
          if (v12 <= 3)
          {
            if (v12 == (&dword_0 + 1))
            {
              v8 |= 1u;
              if (a4)
              {
                goto LABEL_29;
              }
            }

            else if (v12 == (&dword_0 + 2))
            {
              v8 |= 2u;
              if (a4)
              {
                goto LABEL_29;
              }
            }

            else
            {
              if (v12 != (&dword_0 + 3))
              {
                goto LABEL_28;
              }

              v8 |= 4u;
              if (a4)
              {
                goto LABEL_29;
              }
            }
          }

          else if (v12 > 5)
          {
            if (v12 == (&dword_4 + 2))
            {
              v8 |= 0x20u;
LABEL_28:
              if (!a4)
              {
                goto LABEL_30;
              }

LABEL_29:
              *a4 = [v11 weekNumber];
              goto LABEL_30;
            }

            if (v12 != (&dword_4 + 3))
            {
              goto LABEL_28;
            }

            v8 |= 0x40u;
            if (a4)
            {
              goto LABEL_29;
            }
          }

          else if (v12 == &dword_4)
          {
            v8 |= 8u;
            if (a4)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v8 |= 0x10u;
            if (a4)
            {
              goto LABEL_29;
            }
          }

LABEL_30:
          ++v10;
        }

        while (v7 != v10);
        v13 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v7 = v13;
        if (!v13)
        {
          v7 = v8;
          break;
        }
      }
    }

    if (a4 && *a4 == -1)
    {
      *a4 = 5;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int)_ASMonthOfYearFromREMMonthOfYear:(int64_t)a3
{
  if ((a3 - 1) < 0xC)
  {
    return a3;
  }

  else
  {
    return -1;
  }
}

- (id)_remDaysOfWeekFromASDayOfWeek:(int)a3 weekOfMonth:(int)a4
{
  v5 = a3;
  v6 = objc_alloc_init(NSMutableArray);
  if (v5)
  {
    v9 = [REMRecurrenceDayOfWeek dayOfWeek:1 weekNumber:a4];
    [v6 addObject:v9];

    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = [REMRecurrenceDayOfWeek dayOfWeek:2 weekNumber:a4];
  [v6 addObject:v10];

  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v11 = [REMRecurrenceDayOfWeek dayOfWeek:3 weekNumber:a4];
  [v6 addObject:v11];

  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v12 = [REMRecurrenceDayOfWeek dayOfWeek:4 weekNumber:a4];
  [v6 addObject:v12];

  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v13 = [REMRecurrenceDayOfWeek dayOfWeek:5 weekNumber:a4];
  [v6 addObject:v13];

  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v14 = [REMRecurrenceDayOfWeek dayOfWeek:6 weekNumber:a4];
  [v6 addObject:v14];

  if ((v5 & 0x40) != 0)
  {
LABEL_8:
    v7 = [REMRecurrenceDayOfWeek dayOfWeek:7 weekNumber:a4];
    [v6 addObject:v7];
  }

LABEL_9:

  return v6;
}

- (int64_t)_remMonthOfYearFromASMonthOfYear:(int)a3
{
  if ((a3 - 1) > 0xB)
  {
    return -1;
  }

  else
  {
    return qword_539C8[a3 - 1];
  }
}

- (id)_remExternalRepresentationClasses
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return [NSSet setWithObjects:v2, v3, v4, objc_opt_class(), 0];
}

@end