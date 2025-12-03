@interface ESReminderKitHelper
+ (id)sharedReminderKitHelper;
- (BOOL)_addReminderFolders:(id)folders forAccount:(id)account;
- (BOOL)_deleteList:(id)list forAccount:(id)account;
- (BOOL)_populateChangeItem:(id)item forRecurrence:(id)recurrence forReminder:(id)reminder forFolderWithId:(id)id forAccount:(id)account;
- (BOOL)_populateChangeItem:(id)item forReminder:(id)reminder folderWithId:(id)id forAccount:(id)account;
- (BOOL)addFolder:(id)folder forAccount:(id)account;
- (BOOL)addOrModifyReminder:(id)reminder forFolderWithId:(id)id forAccount:(id)account;
- (BOOL)bestEffortApplyNewFolders:(id)folders oldFolders:(id)oldFolders forAccount:(id)account shouldCreateFoldersMissingInDB:(BOOL)b;
- (BOOL)commitChangesToStore;
- (BOOL)deleteFolder:(id)folder forAccount:(id)account;
- (BOOL)deleteReminder:(id)reminder forFolderWithId:(id)id forAccount:(id)account;
- (BOOL)initialSyncReminder:(id)reminder forFolderWithId:(id)id forAccount:(id)account resultingAction:(id *)action;
- (BOOL)isFolderExistsWithId:(id)id forAccount:(id)account;
- (BOOL)updateExtenalIDForFolder:(id)folder forAccount:(id)account;
- (BOOL)updateExtenalIDForReminder:(id)reminder forFolderWithId:(id)id forAccount:(id)account;
- (BOOL)updateSyncKey:(id)key forFolderWithId:(id)id forAccount:(id)account;
- (BOOL)verifyDefaultFolderId:(id)id forAccount:(id)account;
- (ESReminderKitHelper)init;
- (id)_getReminderSaveRequest;
- (id)_loadAttributesFromReminder:(id)reminder forAccount:(id)account;
- (id)_loadAttributesFromRemlist:(id)remlist forAccount:(id)account;
- (id)_localDeletedReminderActionsForFolderId:(id)id forAccount:(id)account;
- (id)_localLazyDeletedReminderActionsForFolderId:(id)id forAccount:(id)account;
- (id)_localModifiedReminderActionsForFolderId:(id)id forAccount:(id)account;
- (id)_localUndeletedReminderActionsForFolderId:(id)id forAccount:(id)account;
- (id)_remDaysOfWeekFromASDayOfWeek:(int)week weekOfMonth:(int)month;
- (id)_remExternalRepresentationClasses;
- (id)_reminderAccountForAccount:(id)account;
- (id)_reminderListWithExternalId:(id)id forReminderAccount:(id)account;
- (id)_reminderListWithObjectUUID:(id)d forReminderAccount:(id)account;
- (id)_reminderListsForAccount:(id)account;
- (id)_reminderMatchingAttributesInReminder:(id)reminder list:(id)list;
- (id)_reminderWithExternalId:(id)id list:(id)list;
- (id)_reminderWithObjectUUID:(id)d list:(id)list;
- (id)getFolderIdsForAccount:(id)account;
- (id)localAddedFoldersForAccount:(id)account;
- (id)localChangedReminderActionsForFolderId:(id)id forAccount:(id)account;
- (id)localDeletedFoldersForAccount:(id)account;
- (id)localModifiedFoldersForAccount:(id)account;
- (id)localUnsyncedReminderActionsForFolderId:(id)id forAccount:(id)account;
- (id)pendingLocalAddedFoldersForAccount:(id)account;
- (id)syncKeyForFolderWithId:(id)id forAccount:(id)account;
- (int)_ASMonthOfYearFromREMMonthOfYear:(int64_t)year;
- (int64_t)_ASDayOfWeekFromREMDaysOfWeek:(id)week outWeekOfMonth:(int64_t *)month;
- (int64_t)_remMonthOfYearFromASMonthOfYear:(int)year;
- (void)_loadRecurrenceRulesFromReminder:(id)reminder intoTask:(id)task forAccount:(id)account;
- (void)_processReminderNotification:(id)notification;
- (void)_setupReminderAccountForAccount:(id)account;
- (void)clearFolderAdditionForFolderUUID:(id)d folderID:(id)iD forAccount:(id)account;
- (void)clearFolderChangeForFolderID:(id)d forAccount:(id)account;
- (void)clearReminderChangesForFolderID:(id)d forAccount:(id)account;
- (void)didReceiveReminderNotification:(id)notification;
- (void)registerReminderChangeNotificationsForAccount:(id)account withChangedBlock:(id)block;
- (void)removeReminderChangeNotificationsForAccount:(id)account;
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

- (void)registerReminderChangeNotificationsForAccount:(id)account withChangedBlock:(id)block
{
  accountCopy = account;
  blockCopy = block;
  v9 = DALoggingwithCategory();
  v10 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v9, v10))
  {
    *buf = 138412290;
    v24 = accountCopy;
    _os_log_impl(&dword_0, v9, v10, "Registering reminder change notification for account: %@", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  accountIDToChangeTrackingTable = selfCopy->_accountIDToChangeTrackingTable;
  accountID = [accountCopy accountID];
  v14 = [(NSMutableDictionary *)accountIDToChangeTrackingTable objectForKey:accountID];
  LOBYTE(accountIDToChangeTrackingTable) = v14 == 0;

  if ((accountIDToChangeTrackingTable & 1) == 0)
  {
    v21 = +[NSAssertionHandler currentHandler];
    [v21 handleFailureInMethod:a2 object:selfCopy file:@"ESReminderKitHelper.m" lineNumber:105 description:{@"Someone registered themselves for the Reminders notification more than once: %@", accountCopy}];
  }

  v15 = [[ESReminderChangeTrackingHelper alloc] initWithAccount:accountCopy reminderStore:selfCopy->_reminderStore];
  v16 = [blockCopy copy];
  [(ESReminderChangeTrackingHelper *)v15 setBlock:v16];

  v17 = selfCopy->_accountIDToChangeTrackingTable;
  accountID2 = [accountCopy accountID];
  [(NSMutableDictionary *)v17 setObject:v15 forKey:accountID2];

  if ([(NSMutableDictionary *)selfCopy->_accountIDToChangeTrackingTable count]== &dword_0 + 1)
  {
    if (!selfCopy->_reminderStore)
    {
      v22 = +[NSAssertionHandler currentHandler];
      [v22 handleFailureInMethod:a2 object:selfCopy file:@"ESReminderKitHelper.m" lineNumber:113 description:@"REMStore was not created!"];
    }

    v19 = +[NSNotificationCenter defaultCenter];
    v20 = +[REMStore storeDidChangeNotificationName];
    [v19 addObserver:selfCopy selector:"didReceiveReminderNotification:" name:v20 object:0];
  }

  objc_sync_exit(selfCopy);
}

- (void)removeReminderChangeNotificationsForAccount:(id)account
{
  accountCopy = account;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  accountIDToChangeTrackingTable = selfCopy->_accountIDToChangeTrackingTable;
  accountID = [accountCopy accountID];
  v7 = [(NSMutableDictionary *)accountIDToChangeTrackingTable objectForKey:accountID];

  if (v7)
  {
    v8 = selfCopy->_accountIDToChangeTrackingTable;
    accountID2 = [accountCopy accountID];
    [(NSMutableDictionary *)v8 removeObjectForKey:accountID2];
  }

  if (![(NSMutableDictionary *)selfCopy->_accountIDToChangeTrackingTable count])
  {
    v10 = +[NSNotificationCenter defaultCenter];
    v11 = +[REMStore storeDidChangeNotificationName];
    [v10 removeObserver:selfCopy name:v11 object:0];
  }

  objc_sync_exit(selfCopy);
}

- (void)didReceiveReminderNotification:(id)notification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2EE60;
  block[3] = &unk_6D2F8;
  block[4] = self;
  notificationCopy = notification;
  v7 = objc_opt_new();
  v3 = v7;
  v4 = notificationCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_processReminderNotification:(id)notification
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
    transactionId = [v6 transactionId];
    *buf = 138412290;
    v17 = transactionId;
    _os_log_impl(&dword_0, v7, v5, "ReminderConversion: DADREMLocalDBWatcher: DATransaction starting, ID: %@", buf, 0xCu);
  }

  objectEnumerator = [(NSMutableDictionary *)self->_accountIDToChangeTrackingTable objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    v11 = nextObject;
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

      nextObject2 = [objectEnumerator nextObject];

      v11 = nextObject2;
    }

    while (nextObject2);
  }
}

- (BOOL)bestEffortApplyNewFolders:(id)folders oldFolders:(id)oldFolders forAccount:(id)account shouldCreateFoldersMissingInDB:(BOOL)b
{
  foldersCopy = folders;
  oldFoldersCopy = oldFolders;
  accountCopy = account;
  v11 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(foldersCopy, "count")}];
  v12 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(foldersCopy, "count")}];
  v81 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(oldFoldersCopy, "count")}];
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v13 = foldersCopy;
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
        if ([accountCopy enabledForDADataclass:16] && objc_msgSend(v18, "dataclass") == &dword_10)
        {
          folderName = [v18 folderName];
          [v11 setObject:v18 forKeyedSubscript:folderName];

          folderID = [v18 folderID];
          [v12 setObject:v18 forKeyedSubscript:folderID];
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
  v21 = oldFoldersCopy;
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
        if ([accountCopy enabledForDADataclass:16] && objc_msgSend(v26, "dataclass") == &dword_10)
        {
          folderID2 = [v26 folderID];
          [v81 setObject:v26 forKeyedSubscript:folderID2];

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

  v90 = [(ESReminderKitHelper *)self _reminderListsForAccount:accountCopy];
  v89 = objc_opt_new();
  v28 = objc_opt_new();
  v85 = accountCopy;
  [(ESReminderKitHelper *)self localAddedFoldersForAccount:accountCopy];
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
          localUUID = [v34 localUUID];
          *buf = 138412290;
          v112 = localUUID;
          _os_log_impl(&dword_0, v35, v32, "Found added folder with local id %@", buf, 0xCu);
        }

        localUUID2 = [v34 localUUID];
        [v28 addObject:localUUID2];
      }

      v30 = [obj countByEnumeratingWithState:&v99 objects:v118 count:16];
    }

    while (v30);
  }

  [(ESReminderKitHelper *)self pendingLocalAddedFoldersForAccount:accountCopy, v78];
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
          localUUID3 = [v43 localUUID];
          *buf = 138412290;
          v112 = localUUID3;
          _os_log_impl(&dword_0, v44, v41, "Found pending added folder with local id %@", buf, 0xCu);
        }

        localUUID4 = [v43 localUUID];
        [v28 addObject:localUUID4];
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
      name = [v49 name];
      externalIdentifier = [v49 externalIdentifier];
      daIsImmutable = [v49 daIsImmutable];
      if (externalIdentifier)
      {
        if ([v89 containsObject:externalIdentifier])
        {
          goto LABEL_53;
        }

        v53 = v84;
        v54 = externalIdentifier;
      }

      else
      {
        if (!name)
        {
          goto LABEL_53;
        }

        v53 = v87;
        v54 = name;
      }

      v55 = [v53 objectForKeyedSubscript:v54];
      objectID = v55;
      if (!v55)
      {
LABEL_53:
        v65 = externalIdentifier;
        v66 = name;
        objectID = [v49 objectID];
        uuid = [objectID uuid];
        uUIDString = [uuid UUIDString];

        folderID3 = uUIDString;
        LODWORD(uuid) = [v28 containsObject:uUIDString];
        v69 = DALoggingwithCategory();
        v70 = os_log_type_enabled(v69, type);
        if (uuid)
        {
          if (v70)
          {
            uuid2 = [objectID uuid];
            uUIDString2 = [uuid2 UUIDString];
            *buf = 138412290;
            v112 = uUIDString2;
            _os_log_impl(&dword_0, v69, type, "Not deleting reminder list with id %@, as it has a pending add", buf, 0xCu);
          }
        }

        else
        {
          if (v70)
          {
            uuid3 = [objectID uuid];
            uUIDString3 = [uuid3 UUIDString];
            *buf = 138412802;
            v112 = uUIDString3;
            v113 = 2112;
            v114 = v65;
            v115 = 2112;
            v116 = v66;
            _os_log_impl(&dword_0, v69, type, "Deleting reminder list with local id %@, external id %@, title %@, as we couldn't find an exchange folder for it", buf, 0x20u);
          }

          [(ESReminderKitHelper *)self _deleteList:v49 forAccount:v85];
          v86 = 1;
        }

        name = v66;
        externalIdentifier = v65;
        goto LABEL_61;
      }

      folderID3 = [v55 folderID];
      folderName2 = [objectID folderName];
      isDefault = [objectID isDefault];
      [v89 addObject:folderID3];
      if (![externalIdentifier isEqualToString:folderID3])
      {
        goto LABEL_51;
      }

      if (((isDefault ^ 1 | daIsImmutable) & 1) == 0)
      {
        goto LABEL_51;
      }

      if (((isDefault | daIsImmutable ^ 1) & 1) == 0)
      {
        goto LABEL_51;
      }

      v82 = isDefault;
      [v81 objectForKeyedSubscript:externalIdentifier];
      v83 = folderID3;
      v60 = externalIdentifier;
      v62 = v61 = name;
      folderName3 = [v62 folderName];
      v64 = [folderName3 isEqualToString:folderName2];

      isDefault = v82;
      name = v61;
      externalIdentifier = v60;
      folderID3 = v83;
      if ((v64 & 1) == 0)
      {
LABEL_51:
        [(ESReminderKitHelper *)self _updateList:v49 external:folderID3 name:folderName2 isDefault:isDefault];
        v86 = 1;
      }

      [v87 removeObjectForKey:folderName2];

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
  if (b)
  {
    allValues = [v87 allValues];
    v75 = [(ESReminderKitHelper *)self _addReminderFolders:allValues forAccount:v85];
  }

  return v75 & 1;
}

- (id)getFolderIdsForAccount:(id)account
{
  accountCopy = account;
  v5 = objc_opt_new();
  v6 = [(ESReminderKitHelper *)self _reminderListsForAccount:accountCopy];
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
          externalIdentifier = [v12 externalIdentifier];

          if (externalIdentifier)
          {
            externalIdentifier2 = [v12 externalIdentifier];
            [v5 addObject:externalIdentifier2];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  return v5;
}

- (BOOL)verifyDefaultFolderId:(id)id forAccount:(id)account
{
  idCopy = id;
  accountCopy = account;
  if (idCopy && [idCopy length])
  {
    v8 = [(ESReminderKitHelper *)self _reminderListsForAccount:accountCopy];
    v9 = v8;
    v22 = accountCopy;
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
        externalIdentifier = [v15 externalIdentifier];
        v17 = [idCopy isEqualToString:externalIdentifier];

        daIsImmutable = [v15 daIsImmutable];
        if (!v17)
        {
          if (!daIsImmutable)
          {
            continue;
          }

LABEL_13:
          externalIdentifier2 = [v15 externalIdentifier];
          name = [v15 name];
          v12 = 1;
          [(ESReminderKitHelper *)self _updateList:v15 external:externalIdentifier2 name:name isDefault:1];

          continue;
        }

        if ((daIsImmutable & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (!v11)
      {
LABEL_19:

        accountCopy = v22;
        goto LABEL_20;
      }
    }
  }

  v12 = 0;
LABEL_20:

  return v12 & 1;
}

- (BOOL)_deleteList:(id)list forAccount:(id)account
{
  listCopy = list;
  _getReminderSaveRequest = [(ESReminderKitHelper *)self _getReminderSaveRequest];
  v7 = [_getReminderSaveRequest updateList:listCopy];
  [v7 removeFromParent];
  v8 = DALoggingwithCategory();
  v9 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v8, v9))
  {
    v11 = 138412290;
    v12 = listCopy;
    _os_log_impl(&dword_0, v8, v9, "ReminderSupport: reminder list %@ is deleted", &v11, 0xCu);
  }

  return 1;
}

- (id)_reminderListsForAccount:(id)account
{
  v3 = [(ESReminderKitHelper *)self _reminderAccountForAccount:account];
  v6 = 0;
  v4 = [v3 fetchListsWithError:&v6];

  return v4;
}

- (BOOL)_addReminderFolders:(id)folders forAccount:(id)account
{
  foldersCopy = folders;
  accountCopy = account;
  if ([foldersCopy count])
  {
    v8 = [(ESReminderKitHelper *)self _reminderAccountForAccount:accountCopy];
    v9 = v8 != 0;
    if (v8)
    {
      v26 = accountCopy;
      _getReminderSaveRequest = [(ESReminderKitHelper *)self _getReminderSaveRequest];
      v25 = v8;
      v11 = [_getReminderSaveRequest updateAccount:v8];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v27 = foldersCopy;
      obj = foldersCopy;
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
            folderName = [v17 folderName];
            folderID = [v17 folderID];
            v20 = [_getReminderSaveRequest addListWithName:folderName toAccountChangeItem:v11];
            [v20 setExternalIdentifier:folderID];
            [v20 setDaIsImmutable:{objc_msgSend(v17, "isDefault")}];
            v21 = DALoggingwithCategory();
            if (os_log_type_enabled(v21, v15))
            {
              *buf = 138412546;
              v34 = folderName;
              v35 = 2112;
              v36 = folderID;
              _os_log_impl(&dword_0, v21, v15, "ReminderSupport: reminder list change with folder title: %@ and ID: %@", buf, 0x16u);
            }
          }

          v13 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v13);
      }

      accountCopy = v26;
      foldersCopy = v27;
      v9 = 1;
      v8 = v25;
    }

    else
    {
      _getReminderSaveRequest = DALoggingwithCategory();
      v22 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(_getReminderSaveRequest, v22))
      {
        accountID = [accountCopy accountID];
        *buf = 138412290;
        v34 = accountID;
        _os_log_impl(&dword_0, _getReminderSaveRequest, v22, "ReminderSupport: missing reminder account %@, when adding folders.", buf, 0xCu);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)addFolder:(id)folder forAccount:(id)account
{
  folderCopy = folder;
  v7 = [(ESReminderKitHelper *)self _reminderAccountForAccount:account];
  _getReminderSaveRequest = [(ESReminderKitHelper *)self _getReminderSaveRequest];
  v9 = [_getReminderSaveRequest updateAccount:v7];
  folderName = [folderCopy folderName];
  folderID = [folderCopy folderID];
  v12 = [_getReminderSaveRequest addListWithName:folderName toAccountChangeItem:v9];
  [v12 setExternalIdentifier:folderID];
  isDefault = [folderCopy isDefault];

  [v12 setDaIsImmutable:isDefault];
  v14 = DALoggingwithCategory();
  v15 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v14, v15))
  {
    v17 = 138412546;
    v18 = folderName;
    v19 = 2112;
    v20 = folderID;
    _os_log_impl(&dword_0, v14, v15, "ReminderSupport: reminder list added with folder title: %@ and ID: %@", &v17, 0x16u);
  }

  return 1;
}

- (BOOL)updateExtenalIDForFolder:(id)folder forAccount:(id)account
{
  folderCopy = folder;
  v7 = [(ESReminderKitHelper *)self _reminderAccountForAccount:account];
  _getReminderSaveRequest = [(ESReminderKitHelper *)self _getReminderSaveRequest];
  localUUID = [folderCopy localUUID];
  v10 = [(ESReminderKitHelper *)self _reminderListWithObjectUUID:localUUID forReminderAccount:v7];

  v11 = [_getReminderSaveRequest updateList:v10];
  serverID = [folderCopy serverID];
  [v11 setExternalIdentifier:serverID];

  v13 = DALoggingwithCategory();
  v14 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v13, v14))
  {
    localUUID2 = [folderCopy localUUID];
    serverID2 = [folderCopy serverID];
    v18 = 138412546;
    v19 = localUUID2;
    v20 = 2112;
    v21 = serverID2;
    _os_log_impl(&dword_0, v13, v14, "ReminderSupport: reminder list with object ID: %@ and ID: %@", &v18, 0x16u);
  }

  return 1;
}

- (id)_reminderAccountForAccount:(id)account
{
  accountCopy = account;
  v5 = [NSUUID alloc];
  accountID = [accountCopy accountID];
  v7 = [v5 initWithUUIDString:accountID];

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
      accountID2 = [accountCopy accountID];
      *buf = 138412546;
      v21 = accountID2;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_0, v12, v13, "Fetch account failed for accountID: %@, with error: %@", buf, 0x16u);
    }

    v15 = DALoggingwithCategory();
    v16 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v15, v16))
    {
      accountID3 = [accountCopy accountID];
      *buf = 138412290;
      v21 = accountID3;
      _os_log_impl(&dword_0, v15, v16, "Setting reminderAccountMissing to TRUE for account %@ and asking ReminderKit to set up the REMAccount", buf, 0xCu);
    }

    [accountCopy setReminderAccountMissing:1];
    [(ESReminderKitHelper *)self _setupReminderAccountForAccount:accountCopy];
  }

  return v10;
}

- (void)_setupReminderAccountForAccount:(id)account
{
  accountCopy = account;
  reminderStore = self->_reminderStore;
  accountID = [accountCopy accountID];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_308EC;
  v8[3] = &unk_6D348;
  v9 = accountCopy;
  v7 = accountCopy;
  [(REMStore *)reminderStore updateAccountWithAccountID:accountID completion:v8];
}

- (id)_reminderListWithExternalId:(id)id forReminderAccount:(id)account
{
  idCopy = id;
  v11 = 0;
  v6 = [account fetchListIncludingSpecialContainerWithExternalIdentifier:idCopy error:&v11];
  v7 = v11;
  if (!v6)
  {
    v8 = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v8, v9))
    {
      *buf = 138412546;
      v13 = idCopy;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_0, v8, v9, "Fetching reminder lists returned nil {folderID: %@, error: %@}", buf, 0x16u);
    }
  }

  return v6;
}

- (id)_reminderWithObjectUUID:(id)d list:(id)list
{
  dCopy = d;
  listCopy = list;
  v7 = [[NSUUID alloc] initWithUUIDString:dCopy];
  v8 = [REMReminder objectIDWithUUID:v7];
  store = [listCopy store];

  v15 = 0;
  v10 = [store fetchReminderWithObjectID:v8 error:&v15];
  v11 = v15;

  if (!v10)
  {
    v12 = DALoggingwithCategory();
    v13 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v12, v13))
    {
      *buf = 138412546;
      v17 = dCopy;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_0, v12, v13, "Fetching reminder returned nil {ObjectID: %@, error: %@}", buf, 0x16u);
    }
  }

  return v10;
}

- (id)_reminderListWithObjectUUID:(id)d forReminderAccount:(id)account
{
  dCopy = d;
  accountCopy = account;
  v7 = [[NSUUID alloc] initWithUUIDString:dCopy];
  v8 = [REMList objectIDWithUUID:v7];
  store = [accountCopy store];

  v15 = 0;
  v10 = [store fetchListWithObjectID:v8 error:&v15];
  v11 = v15;

  if (!v10)
  {
    v12 = DALoggingwithCategory();
    v13 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v12, v13))
    {
      *buf = 138412546;
      v17 = dCopy;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_0, v12, v13, "Fetching list returned nil {ObjectID: %@, error: %@}", buf, 0x16u);
    }
  }

  return v10;
}

- (id)_reminderWithExternalId:(id)id list:(id)list
{
  idCopy = id;
  v11 = 0;
  v6 = [list fetchReminderWithExternalIdentifier:idCopy error:&v11];
  v7 = v11;
  if (!v6)
  {
    v8 = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v8, v9))
    {
      *buf = 138412546;
      v13 = idCopy;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_0, v8, v9, "Fetching reminder returned nil {serverID: %@, error: %@}", buf, 0x16u);
    }
  }

  return v6;
}

- (id)_reminderMatchingAttributesInReminder:(id)reminder list:(id)list
{
  reminderCopy = reminder;
  v38 = 0;
  v6 = [list fetchRemindersWithError:&v38];
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
      subject = [reminderCopy subject];
      titleAsString = [v21 titleAsString];
      v24 = [subject isEqualToString:titleAsString];

      if (v24)
      {
        dueDateComponents = [v21 dueDateComponents];

        if (dueDateComponents)
        {
          dueDateComponents2 = [v21 dueDateComponents];
          v27 = [NSTimeZone timeZoneWithName:@"UTC"];
          v28 = [NSDateComponents rem_dateWithDateComponents:dueDateComponents2 timeZone:v27];

          if (v28)
          {
            utcDueDate = [reminderCopy utcDueDate];
            v30 = [utcDueDate isEqualToDate:v28];

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

- (id)syncKeyForFolderWithId:(id)id forAccount:(id)account
{
  idCopy = id;
  v7 = [(ESReminderKitHelper *)self _reminderAccountForAccount:account];
  v8 = [(ESReminderKitHelper *)self _reminderListWithExternalId:idCopy forReminderAccount:v7];
  v9 = v8;
  if (v8)
  {
    externalModificationTag = [v8 externalModificationTag];
    v11 = DALoggingwithCategory();
    v12 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v11, v12))
    {
      v15 = 138412546;
      v16 = externalModificationTag;
      v17 = 2112;
      v18 = idCopy;
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
      v16 = idCopy;
      _os_log_impl(&dword_0, v11, v13, "_syncKeyForFolderWithId Reminder containing folder with folder ID %@ not found", &v15, 0xCu);
    }

    externalModificationTag = 0;
  }

  return externalModificationTag;
}

- (BOOL)isFolderExistsWithId:(id)id forAccount:(id)account
{
  idCopy = id;
  v7 = [(ESReminderKitHelper *)self _reminderAccountForAccount:account];
  v8 = [(ESReminderKitHelper *)self _reminderListWithExternalId:idCopy forReminderAccount:v7];

  return v8 != 0;
}

- (BOOL)deleteFolder:(id)folder forAccount:(id)account
{
  folderCopy = folder;
  accountCopy = account;
  v8 = [(ESReminderKitHelper *)self _reminderAccountForAccount:accountCopy];
  if (v8)
  {
    _getReminderSaveRequest = [(ESReminderKitHelper *)self _getReminderSaveRequest];
    folderID = [folderCopy folderID];
    v11 = [(ESReminderKitHelper *)self _reminderListWithExternalId:folderID forReminderAccount:v8];

    v12 = v11 != 0;
    if (v11)
    {
      v13 = [_getReminderSaveRequest updateList:v11];
      [v13 removeFromParent];
    }

    else
    {
      v13 = DALoggingwithCategory();
      v16 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v13, v16))
      {
        folderID2 = [folderCopy folderID];
        v19 = 138412290;
        v20 = folderID2;
        _os_log_impl(&dword_0, v13, v16, "Fail to delete a reminder folder because Reminder list doesn't exist. Folder ID: %@", &v19, 0xCu);
      }
    }
  }

  else
  {
    _getReminderSaveRequest = DALoggingwithCategory();
    v14 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(_getReminderSaveRequest, v14))
    {
      accountID = [accountCopy accountID];
      v19 = 138412290;
      v20 = accountID;
      _os_log_impl(&dword_0, _getReminderSaveRequest, v14, "Fail to delete a reminder folder because Reminder account doesn't exist. Account ID: %@", &v19, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)updateSyncKey:(id)key forFolderWithId:(id)id forAccount:(id)account
{
  keyCopy = key;
  idCopy = id;
  accountCopy = account;
  v11 = [(ESReminderKitHelper *)self _reminderAccountForAccount:accountCopy];
  if (v11)
  {
    _getReminderSaveRequest = [(ESReminderKitHelper *)self _getReminderSaveRequest];
    v13 = [(ESReminderKitHelper *)self _reminderListWithExternalId:idCopy forReminderAccount:v11];
    v14 = v13 != 0;
    v15 = DALoggingwithCategory();
    v16 = v15;
    if (v13)
    {
      v17 = _CPLog_to_os_log_type[7];
      if (os_log_type_enabled(v15, v17))
      {
        v23 = 138412546;
        v24 = keyCopy;
        v25 = 2112;
        v26 = idCopy;
        _os_log_impl(&dword_0, v16, v17, "Updating sync key %@ for reminder folder ID:%@", &v23, 0x16u);
      }

      v16 = [_getReminderSaveRequest updateList:v13];
      [v16 setExternalModificationTag:keyCopy];
    }

    else
    {
      v20 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v15, v20))
      {
        accountID = [accountCopy accountID];
        v23 = 138412546;
        v24 = accountID;
        v25 = 2112;
        v26 = idCopy;
        _os_log_impl(&dword_0, v16, v20, "Fail to set sync key for reminder folder because Reminder list doesn't exist. Account ID: %@, folder ID:%@", &v23, 0x16u);
      }
    }
  }

  else
  {
    _getReminderSaveRequest = DALoggingwithCategory();
    v18 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(_getReminderSaveRequest, v18))
    {
      accountID2 = [accountCopy accountID];
      v23 = 138412546;
      v24 = accountID2;
      v25 = 2112;
      v26 = idCopy;
      _os_log_impl(&dword_0, _getReminderSaveRequest, v18, "Fail to set sync key for reminder folder because Reminder account doesn't exist. Account ID: %@, folder ID:%@", &v23, 0x16u);
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

- (BOOL)initialSyncReminder:(id)reminder forFolderWithId:(id)id forAccount:(id)account resultingAction:(id *)action
{
  reminderCopy = reminder;
  idCopy = id;
  accountCopy = account;
  serverID = [reminderCopy serverID];
  if (serverID)
  {
    _getReminderSaveRequest = [(ESReminderKitHelper *)self _getReminderSaveRequest];
    v14 = [(ESReminderKitHelper *)self _reminderAccountForAccount:accountCopy];
    if (!v14)
    {
      v15 = DALoggingwithCategory();
      v26 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v15, v26))
      {
        *buf = 138412546;
        v35 = accountCopy;
        v36 = 2112;
        v37 = reminderCopy;
        _os_log_impl(&dword_0, v15, v26, "Account %@ does not existing when adding reminder %@", buf, 0x16u);
      }

      v25 = 0;
      goto LABEL_23;
    }

    v15 = [(ESReminderKitHelper *)self _reminderListWithExternalId:idCopy forReminderAccount:v14];
    if (!v15)
    {
      v17 = DALoggingwithCategory();
      v27 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v17, v27))
      {
        *buf = 138412546;
        v35 = idCopy;
        v36 = 2112;
        v37 = reminderCopy;
        _os_log_impl(&dword_0, v17, v27, "Folder %@ does not existing when adding reminder %@", buf, 0x16u);
      }

      v25 = 0;
      goto LABEL_22;
    }

    v33 = idCopy;
    v16 = [(ESReminderKitHelper *)self _reminderWithExternalId:serverID list:v15];
    if (v16)
    {
      v17 = v16;
      v18 = DALoggingwithCategory();
      v19 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v18, v19))
      {
        *buf = 138412546;
        v35 = reminderCopy;
        v36 = 2112;
        v37 = serverID;
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
      v17 = [(ESReminderKitHelper *)self _reminderMatchingAttributesInReminder:reminderCopy list:v15];
      v18 = DALoggingwithCategory();
      v28 = _CPLog_to_os_log_type[6];
      v29 = os_log_type_enabled(v18, v28);
      if (!v17)
      {
        if (v29)
        {
          *buf = 138412290;
          v35 = reminderCopy;
          _os_log_impl(&dword_0, v18, v28, "Adding new reminder during intial sync %@", buf, 0xCu);
        }

        v17 = [_getReminderSaveRequest updateList:v15];
        saveRequest = [v17 saveRequest];
        v30 = [saveRequest addReminderWithTitle:@"__untitled__" toListChangeItem:v17];

        goto LABEL_21;
      }

      if (v29)
      {
        *buf = 138412290;
        v35 = reminderCopy;
        v20 = "Found existing reminder during intial sync %@";
        v21 = v18;
        v22 = v28;
        v23 = 12;
        goto LABEL_19;
      }
    }

    v30 = [_getReminderSaveRequest updateReminder:v17];
LABEL_21:
    v25 = [(ESReminderKitHelper *)self _populateChangeItem:v30 forReminder:reminderCopy folderWithId:v33 forAccount:accountCopy];

    idCopy = v33;
LABEL_22:

LABEL_23:
    goto LABEL_24;
  }

  _getReminderSaveRequest = DALoggingwithCategory();
  v24 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(_getReminderSaveRequest, v24))
  {
    *buf = 138412290;
    v35 = reminderCopy;
    _os_log_impl(&dword_0, _getReminderSaveRequest, v24, "ServerID missing from task. Failed to initial sync reminder {task: %@}", buf, 0xCu);
  }

  v25 = 0;
LABEL_24:

  return v25;
}

- (BOOL)_populateChangeItem:(id)item forRecurrence:(id)recurrence forReminder:(id)reminder forFolderWithId:(id)id forAccount:(id)account
{
  itemCopy = item;
  recurrenceCopy = recurrence;
  interval = [recurrenceCopy interval];
  integerValue = [interval integerValue];

  firstDayOfWeek = [recurrenceCopy firstDayOfWeek];

  if (firstDayOfWeek)
  {
    firstDayOfWeek2 = [recurrenceCopy firstDayOfWeek];
    intValue = [firstDayOfWeek2 intValue];

    if (intValue >= 7)
    {
      v16 = 1;
    }

    else
    {
      v16 = intValue;
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

  type = [recurrenceCopy type];
  intValue2 = [type intValue];

  if (intValue2 > 2)
  {
    switch(intValue2)
    {
      case 3:
        weekOfMonth = [recurrenceCopy weekOfMonth];
        LODWORD(v39) = [weekOfMonth intValue];

        if (v39 == 5)
        {
          v39 = 0xFFFFFFFFLL;
        }

        else
        {
          v39 = v39;
        }

        dayOfWeek = [recurrenceCopy dayOfWeek];
        intValue3 = [dayOfWeek intValue];

        v69 = v16;
        v70 = integerValue;
        if (intValue3)
        {
          if (v39 >= 1)
          {
            v42 = 0;
          }

          else
          {
            v42 = 0xFFFFFFFFLL;
          }

          v43 = [(ESReminderKitHelper *)self _remDaysOfWeekFromASDayOfWeek:intValue3 weekOfMonth:v42];
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
        occurrences = [recurrenceCopy occurrences];
        intValue4 = [occurrences intValue];

        until = [recurrenceCopy until];
        v58 = until;
        if (intValue4)
        {
          v59 = [REMRecurrenceEnd recurrenceEndWithOccurrenceCount:intValue4];
        }

        else
        {
          if (!until)
          {
            v60 = 0;
            goto LABEL_67;
          }

          v59 = [REMRecurrenceEnd recurrenceEndWithEndDate:until];
        }

        v60 = v59;
LABEL_67:
        v61 = +[REMRecurrenceRule newObjectID];
        accountID = [itemCopy accountID];
        v63 = itemCopy;
        objectID = [itemCopy objectID];
        v65 = [[REMRecurrenceRule alloc] initRecurrenceRuleWithObjectID:v61 accountID:accountID reminderID:objectID frequency:v51 interval:v70 firstDayOfTheWeek:v69 daysOfTheWeek:v74 daysOfTheMonth:v71 monthsOfTheYear:v72 weeksOfTheYear:0 daysOfTheYear:0 setPositions:v73 end:v60];
        v66 = DALoggingwithCategory();
        v67 = _CPLog_to_os_log_type[7];
        if (os_log_type_enabled(v66, v67))
        {
          *buf = 138412290;
          v76 = v65;
          _os_log_impl(&dword_0, v66, v67, "SET recurrence <- %@", buf, 0xCu);
        }

        itemCopy = v63;
        [v63 removeAllRecurrenceRules];
        [v63 addRecurrenceRule:v65];

        v48 = 1;
        v45 = v74;
        goto LABEL_70;
      case 5:
        v69 = v16;
        v70 = integerValue;
        v72 = 0;
        v73 = 0;
        v71 = 0;
        v74 = 0;
        break;
      case 6:
        weekOfMonth2 = [recurrenceCopy weekOfMonth];
        intValue5 = [weekOfMonth2 intValue];

        dayOfWeek2 = [recurrenceCopy dayOfWeek];
        intValue6 = [dayOfWeek2 intValue];

        if (intValue6)
        {
          if (intValue5 == 5)
          {
            v33 = 0xFFFFFFFFLL;
          }

          else
          {
            v33 = intValue5;
          }

          v34 = [(ESReminderKitHelper *)self _remDaysOfWeekFromASDayOfWeek:intValue6 weekOfMonth:v33];
        }

        else
        {
          v34 = 0;
        }

        v74 = v34;
        v69 = v16;
        v70 = integerValue;
        monthOfYear = [recurrenceCopy monthOfYear];
        intValue7 = [monthOfYear intValue];

        if (intValue7)
        {
          v54 = [NSNumber numberWithInteger:[(ESReminderKitHelper *)self _remMonthOfYearFromASMonthOfYear:intValue7]];
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

  switch(intValue2)
  {
    case 0:
      v69 = v16;
      v70 = integerValue;
      dayOfWeek3 = [recurrenceCopy dayOfWeek];
      intValue8 = [dayOfWeek3 intValue];

      if (!intValue8)
      {
        v72 = 0;
        v73 = 0;
        v71 = 0;
        v74 = 0;
        v51 = 0;
        goto LABEL_62;
      }

      dayOfWeek4 = [recurrenceCopy dayOfWeek];
      v74 = -[ESReminderKitHelper _remDaysOfWeekFromASDayOfWeek:weekOfMonth:](self, "_remDaysOfWeekFromASDayOfWeek:weekOfMonth:", [dayOfWeek4 intValue], 0);

      goto LABEL_46;
    case 1:
      v69 = v16;
      v70 = integerValue;
      dayOfWeek5 = [recurrenceCopy dayOfWeek];
      intValue9 = [dayOfWeek5 intValue];

      if (!intValue9)
      {
        v72 = 0;
        v73 = 0;
        v71 = 0;
        v74 = 0;
        goto LABEL_57;
      }

      v74 = [(ESReminderKitHelper *)self _remDaysOfWeekFromASDayOfWeek:intValue9 weekOfMonth:0];
LABEL_46:
      v72 = 0;
      v73 = 0;
      v71 = 0;
LABEL_57:
      v51 = 1;
      goto LABEL_62;
    case 2:
      v69 = v16;
      v70 = integerValue;
      dayOfMonth = [recurrenceCopy dayOfMonth];
      intValue10 = [dayOfMonth intValue];

      if (intValue10)
      {
        if (intValue10 == 127)
        {
          v27 = 0xFFFFFFFFLL;
        }

        else
        {
          v27 = intValue10;
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
    type2 = [recurrenceCopy type];
    *buf = 138412290;
    v76 = type2;
    _os_log_impl(&dword_0, v45, v46, "Recurrence rule has invalid frequency %@", buf, 0xCu);
  }

  v48 = 0;
LABEL_70:

  return v48;
}

- (BOOL)addOrModifyReminder:(id)reminder forFolderWithId:(id)id forAccount:(id)account
{
  reminderCopy = reminder;
  idCopy = id;
  accountCopy = account;
  serverID = [reminderCopy serverID];
  if (serverID)
  {
    v12 = [(ESReminderKitHelper *)self _reminderAccountForAccount:accountCopy];
    if (v12)
    {
      v13 = [(ESReminderKitHelper *)self _reminderListWithExternalId:idCopy forReminderAccount:v12];
      if (v13)
      {
        log = [(ESReminderKitHelper *)self _getReminderSaveRequest];
        v14 = [(ESReminderKitHelper *)self _reminderWithExternalId:serverID list:v13];
        v15 = DALoggingwithCategory();
        v16 = _CPLog_to_os_log_type[6];
        v17 = os_log_type_enabled(v15, v16);
        if (v14)
        {
          if (v17)
          {
            *buf = 138412546;
            v30 = reminderCopy;
            v31 = 2112;
            v32 = serverID;
            _os_log_impl(&dword_0, v15, v16, "Merge task with existing local reminder {task: %@, externalIdentifier: %@}", buf, 0x16u);
          }

          v18 = v14;
          v19 = [log updateReminder:v14];
          v20 = [(ESReminderKitHelper *)self _populateChangeItem:v19 forReminder:reminderCopy folderWithId:idCopy forAccount:accountCopy];
        }

        else
        {
          if (v17)
          {
            *buf = 138412546;
            v30 = reminderCopy;
            v31 = 2112;
            v32 = serverID;
            _os_log_impl(&dword_0, v15, v16, "Adding a new reminder {task: %@, externalIdentifier: %@}", buf, 0x16u);
          }

          v19 = [log updateList:v13];
          saveRequest = [v19 saveRequest];
          v26 = [saveRequest addReminderWithTitle:@"__untitled__" toListChangeItem:v19];

          v20 = [(ESReminderKitHelper *)self _populateChangeItem:v26 forReminder:reminderCopy folderWithId:idCopy forAccount:accountCopy];
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
          v30 = reminderCopy;
          v31 = 2112;
          v32 = idCopy;
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
        v30 = reminderCopy;
        v31 = 2112;
        v32 = accountCopy;
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
      v30 = reminderCopy;
      _os_log_impl(&dword_0, v12, v21, "ServerID missing from task. Failed to modify reminder {task: %@}", buf, 0xCu);
    }

    v20 = 0;
  }

  return v20;
}

- (BOOL)deleteReminder:(id)reminder forFolderWithId:(id)id forAccount:(id)account
{
  reminderCopy = reminder;
  idCopy = id;
  accountCopy = account;
  serverID = [reminderCopy serverID];
  if (serverID)
  {
    v12 = [(ESReminderKitHelper *)self _reminderAccountForAccount:accountCopy];
    if (v12)
    {
      v13 = [(ESReminderKitHelper *)self _reminderListWithExternalId:idCopy forReminderAccount:v12];
      if (v13)
      {
        v14 = [(ESReminderKitHelper *)self _reminderWithExternalId:serverID list:v13];
        if (v14)
        {
          _getReminderSaveRequest = [(ESReminderKitHelper *)self _getReminderSaveRequest];
          v16 = [_getReminderSaveRequest updateReminder:v14];
          [v16 removeFromList];
        }

        else
        {
          _getReminderSaveRequest = DALoggingwithCategory();
          v20 = _CPLog_to_os_log_type[3];
          if (os_log_type_enabled(_getReminderSaveRequest, v20))
          {
            v22 = 138412546;
            v23 = reminderCopy;
            v24 = 2112;
            v25 = serverID;
            _os_log_impl(&dword_0, _getReminderSaveRequest, v20, "Could not fetch reminder. Failed to delete reminder {task: %@, externalIdentifier: %@}", &v22, 0x16u);
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
          v23 = reminderCopy;
          v24 = 2112;
          v25 = idCopy;
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
        v23 = reminderCopy;
        v24 = 2112;
        v25 = accountCopy;
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
      v23 = reminderCopy;
      _os_log_impl(&dword_0, v12, v17, "ServerID missing from task. Failed to delete reminder {task: %@}", &v22, 0xCu);
    }
  }

  return 0;
}

- (BOOL)updateExtenalIDForReminder:(id)reminder forFolderWithId:(id)id forAccount:(id)account
{
  reminderCopy = reminder;
  idCopy = id;
  accountCopy = account;
  serverID = [reminderCopy serverID];
  if (serverID)
  {
    v12 = [(ESReminderKitHelper *)self _reminderAccountForAccount:accountCopy];
    if (v12)
    {
      v13 = [(ESReminderKitHelper *)self _reminderListWithExternalId:idCopy forReminderAccount:v12];
      if (v13)
      {
        clientID = [reminderCopy clientID];
        v15 = [(ESReminderKitHelper *)self _reminderWithObjectUUID:clientID list:v13];

        if (v15)
        {
          _getReminderSaveRequest = [(ESReminderKitHelper *)self _getReminderSaveRequest];
          v17 = [_getReminderSaveRequest updateReminder:v15];
          serverID2 = [reminderCopy serverID];
          [v17 setExternalIdentifier:serverID2];
        }

        else
        {
          _getReminderSaveRequest = DALoggingwithCategory();
          v22 = _CPLog_to_os_log_type[3];
          if (os_log_type_enabled(_getReminderSaveRequest, v22))
          {
            v24 = 138412546;
            v25 = reminderCopy;
            v26 = 2112;
            v27 = serverID;
            _os_log_impl(&dword_0, _getReminderSaveRequest, v22, "Could not get reminder. Failed to modify reminder {task: %@, externalIdentifier: %@}", &v24, 0x16u);
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
          v25 = reminderCopy;
          v26 = 2112;
          v27 = idCopy;
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
        v25 = reminderCopy;
        v26 = 2112;
        v27 = accountCopy;
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
      v25 = reminderCopy;
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

- (id)localAddedFoldersForAccount:(id)account
{
  accountCopy = account;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[7];
  v44 = accountCopy;
  if (os_log_type_enabled(v5, v6))
  {
    accountID = [accountCopy accountID];
    *buf = 138412290;
    v56 = accountID;
    _os_log_impl(&dword_0, v5, v6, "ReminderSupport: Get local added folders for account %@", buf, 0xCu);

    accountCopy = v44;
  }

  accountIDToChangeTrackingTable = self->_accountIDToChangeTrackingTable;
  accountID2 = [accountCopy accountID];
  v10 = [(NSMutableDictionary *)accountIDToChangeTrackingTable objectForKeyedSubscript:accountID2];

  v45 = objc_opt_new();
  v40 = v10;
  [v10 addedListsInChangeSet];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v53 = 0u;
  v11 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
  selfCopy = self;
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
        v17 = [(ESReminderKitHelper *)self _loadAttributesFromRemlist:v16 forAccount:accountCopy];
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
            objectID = [v16 objectID];
            uuid = [objectID uuid];
            uUIDString = [uuid UUIDString];
            accountID3 = [accountCopy accountID];
            *buf = 138412546;
            v56 = uUIDString;
            v57 = 2112;
            v58 = accountID3;
            _os_log_impl(&dword_0, v20, v14, "ReminderSupport: Could not add folder for a REMList with local ID: %@, for account %@", buf, 0x16u);

            accountCopy = v44;
            self = selfCopy;
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
    }

    while (v12);
  }

  undeletedListsInChangeSet = [v40 undeletedListsInChangeSet];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v26 = undeletedListsInChangeSet;
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
        v32 = [(ESReminderKitHelper *)self _loadAttributesFromRemlist:v31 forAccount:accountCopy];
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
            objectID2 = [v31 objectID];
            uuid2 = [objectID2 uuid];
            uUIDString2 = [uuid2 UUIDString];
            accountID4 = [accountCopy accountID];
            *buf = 138412546;
            v56 = uUIDString2;
            v57 = 2112;
            v58 = accountID4;
            _os_log_impl(&dword_0, v34, obja, "ReminderSupport: Could not add folder for a REMList with local ID: %@, for account %@", buf, 0x16u);

            accountCopy = v44;
            self = selfCopy;
          }
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v28);
  }

  return v45;
}

- (id)pendingLocalAddedFoldersForAccount:(id)account
{
  accountCopy = account;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[7];
  v44 = accountCopy;
  if (os_log_type_enabled(v5, v6))
  {
    accountID = [accountCopy accountID];
    *buf = 138412290;
    v56 = accountID;
    _os_log_impl(&dword_0, v5, v6, "ReminderSupport: Peek local added folders for account %@", buf, 0xCu);

    accountCopy = v44;
  }

  accountIDToChangeTrackingTable = self->_accountIDToChangeTrackingTable;
  accountID2 = [accountCopy accountID];
  v10 = [(NSMutableDictionary *)accountIDToChangeTrackingTable objectForKeyedSubscript:accountID2];

  v45 = objc_opt_new();
  v40 = v10;
  [v10 peekAddedListsInReminderDB];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v53 = 0u;
  v11 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
  selfCopy = self;
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
        v17 = [(ESReminderKitHelper *)self _loadAttributesFromRemlist:v16 forAccount:accountCopy];
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
            objectID = [v16 objectID];
            uuid = [objectID uuid];
            uUIDString = [uuid UUIDString];
            accountID3 = [accountCopy accountID];
            *buf = 138412546;
            v56 = uUIDString;
            v57 = 2112;
            v58 = accountID3;
            _os_log_impl(&dword_0, v20, v14, "ReminderSupport: Could not add folder for a REMList with local ID: %@, for account %@", buf, 0x16u);

            accountCopy = v44;
            self = selfCopy;
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
    }

    while (v12);
  }

  peekUndeletedListsInReminderDB = [v40 peekUndeletedListsInReminderDB];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v26 = peekUndeletedListsInReminderDB;
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
        v32 = [(ESReminderKitHelper *)self _loadAttributesFromRemlist:v31 forAccount:accountCopy];
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
            objectID2 = [v31 objectID];
            uuid2 = [objectID2 uuid];
            uUIDString2 = [uuid2 UUIDString];
            accountID4 = [accountCopy accountID];
            *buf = 138412546;
            v56 = uUIDString2;
            v57 = 2112;
            v58 = accountID4;
            _os_log_impl(&dword_0, v34, obja, "ReminderSupport: Could not add folder for a REMList with local ID: %@, for account %@", buf, 0x16u);

            accountCopy = v44;
            self = selfCopy;
          }
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v28);
  }

  return v45;
}

- (id)localModifiedFoldersForAccount:(id)account
{
  accountCopy = account;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v5, v6))
  {
    accountID = [accountCopy accountID];
    *buf = 138412290;
    v39 = accountID;
    _os_log_impl(&dword_0, v5, v6, "ReminderSupport: Get local modified folders for account %@", buf, 0xCu);
  }

  accountIDToChangeTrackingTable = self->_accountIDToChangeTrackingTable;
  v30 = accountCopy;
  accountID2 = [accountCopy accountID];
  v10 = [(NSMutableDictionary *)accountIDToChangeTrackingTable objectForKeyedSubscript:accountID2];

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
            objectID = [v16 objectID];
            [objectID uuid];
            v23 = v22 = self;
            uUIDString = [v23 UUIDString];
            serverID = [v18 serverID];
            accountID3 = [v15 accountID];
            *buf = 138412802;
            v39 = uUIDString;
            v40 = 2112;
            v41 = serverID;
            v42 = 2112;
            v43 = accountID3;
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

- (id)localDeletedFoldersForAccount:(id)account
{
  accountCopy = account;
  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[7];
  v46 = accountCopy;
  if (os_log_type_enabled(v4, v5))
  {
    accountID = [accountCopy accountID];
    *buf = 138412290;
    v60 = accountID;
    _os_log_impl(&dword_0, v4, v5, "ReminderSupport: Get local deleted folders for account %@", buf, 0xCu);

    accountCopy = v46;
  }

  accountIDToChangeTrackingTable = self->_accountIDToChangeTrackingTable;
  accountID2 = [accountCopy accountID];
  v9 = accountIDToChangeTrackingTable;
  selfCopy3 = self;
  v11 = [(NSMutableDictionary *)v9 objectForKeyedSubscript:accountID2];

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
        v17 = [(ESReminderKitHelper *)selfCopy3 _loadAttributesFromRemlist:v16 forAccount:accountCopy];
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
            objectID = [v16 objectID];
            uuid = [objectID uuid];
            uUIDString = [uuid UUIDString];
            serverID = [v18 serverID];
            accountID3 = [v46 accountID];
            *buf = 138412802;
            v60 = uUIDString;
            v61 = 2112;
            v62 = serverID;
            v63 = 2112;
            v64 = accountID3;
            _os_log_impl(&dword_0, v20, type, "ReminderSupport: Could not delete folder for a REMList with local ID: %@, external ID: %@, for account %@", buf, 0x20u);

            accountCopy = v46;
            selfCopy3 = self;
          }
        }
      }

      v13 = [obj countByEnumeratingWithState:&v54 objects:v65 count:16];
    }

    while (v13);
  }

  lazyDeletedListsInChangeSet = [v42 lazyDeletedListsInChangeSet];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v27 = lazyDeletedListsInChangeSet;
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
        v33 = [(ESReminderKitHelper *)selfCopy3 _loadAttributesFromRemlist:v32 forAccount:accountCopy];
        if (v33)
        {
          externalIdentifierForMarkedForDeletionObject = [v32 externalIdentifierForMarkedForDeletionObject];
          [v33 setServerID:externalIdentifierForMarkedForDeletionObject];

          [v33 setChangeType:2];
          [v49 addObject:v33];
        }

        else
        {
          v35 = DALoggingwithCategory();
          if (os_log_type_enabled(v35, typea))
          {
            objectID2 = [v32 objectID];
            uuid2 = [objectID2 uuid];
            uUIDString2 = [uuid2 UUIDString];
            externalIdentifierForMarkedForDeletionObject2 = [v32 externalIdentifierForMarkedForDeletionObject];
            accountID4 = [accountCopy accountID];
            *buf = 138412802;
            v60 = uUIDString2;
            v61 = 2112;
            v62 = externalIdentifierForMarkedForDeletionObject2;
            v63 = 2112;
            v64 = accountID4;
            _os_log_impl(&dword_0, v35, typea, "ReminderSupport: Could not delete folder for a REMList with local ID: %@, external ID: %@, for account %@", buf, 0x20u);

            accountCopy = v46;
            selfCopy3 = self;

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

- (id)_loadAttributesFromRemlist:(id)remlist forAccount:(id)account
{
  remlistCopy = remlist;
  if (remlistCopy)
  {
    accountCopy = account;
    externalIdentifier = [remlistCopy externalIdentifier];
    name = [remlistCopy name];
    defaultToDosFolder = [accountCopy defaultToDosFolder];

    folderID = [defaultToDosFolder folderID];

    if ([folderID isEqualToString:externalIdentifier])
    {

      folderID = 0;
    }

    v11 = [[ASFolder alloc] initWithFolderType:15 serverID:externalIdentifier parentID:folderID displayName:name localID:0];
    objectID = [remlistCopy objectID];
    uuid = [objectID uuid];
    uUIDString = [uuid UUIDString];
    [v11 setLocalUUID:uUIDString];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)localChangedReminderActionsForFolderId:(id)id forAccount:(id)account
{
  idCopy = id;
  accountCopy = account;
  v8 = objc_opt_new();
  v9 = [(ESReminderKitHelper *)self _localModifiedReminderActionsForFolderId:idCopy forAccount:accountCopy];
  [v8 addObjectsFromArray:v9];
  v10 = DALoggingwithCategory();
  v11 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v10, v11))
  {
    v12 = [v9 count];
    accountID = [accountCopy accountID];
    *buf = 134218498;
    v37 = v12;
    v38 = 2112;
    v39 = idCopy;
    v40 = 2112;
    v41 = accountID;
    _os_log_impl(&dword_0, v10, v11, "ReminderSupport: Collected %lu updated reminder changes for folder: %@, for account %@", buf, 0x20u);
  }

  v14 = [(ESReminderKitHelper *)self _localUndeletedReminderActionsForFolderId:idCopy forAccount:accountCopy];
  [v8 addObjectsFromArray:v14];
  v15 = DALoggingwithCategory();
  if (os_log_type_enabled(v15, v11))
  {
    v16 = [v14 count];
    accountID2 = [accountCopy accountID];
    *buf = 134218498;
    v37 = v16;
    v38 = 2112;
    v39 = idCopy;
    v40 = 2112;
    v41 = accountID2;
    _os_log_impl(&dword_0, v15, v11, "ReminderSupport: Collected %lu undeleted reminder changes for folder: %@, for account %@", buf, 0x20u);
  }

  v18 = [(ESReminderKitHelper *)self _localLazyDeletedReminderActionsForFolderId:idCopy forAccount:accountCopy];
  [v8 addObjectsFromArray:v18];
  v19 = DALoggingwithCategory();
  if (os_log_type_enabled(v19, v11))
  {
    v20 = [v18 count];
    [accountCopy accountID];
    *type = v8;
    v21 = v14;
    v23 = v22 = v9;
    *buf = 134218498;
    v37 = v20;
    v38 = 2112;
    v39 = idCopy;
    v40 = 2112;
    v41 = v23;
    _os_log_impl(&dword_0, v19, v11, "ReminderSupport: Collected %lu lazy deleted reminder changes for folder: %@, for account %@", buf, 0x20u);

    v9 = v22;
    v14 = v21;
    v8 = *type;
  }

  v24 = [(ESReminderKitHelper *)self _localDeletedReminderActionsForFolderId:idCopy forAccount:accountCopy];
  [v8 addObjectsFromArray:v24];
  v25 = DALoggingwithCategory();
  if (os_log_type_enabled(v25, v11))
  {
    typea = v11;
    v26 = idCopy;
    v27 = v18;
    v28 = v8;
    v29 = v14;
    v30 = v9;
    v31 = [v24 count];
    accountID3 = [accountCopy accountID];
    *buf = 134218498;
    v37 = v31;
    v9 = v30;
    v14 = v29;
    v8 = v28;
    v18 = v27;
    idCopy = v26;
    v38 = 2112;
    v39 = v26;
    v40 = 2112;
    v41 = accountID3;
    _os_log_impl(&dword_0, v25, typea, "ReminderSupport: Collected %lu deleted reminder changes for folder: %@, for account %@", buf, 0x20u);
  }

  return v8;
}

- (id)_localModifiedReminderActionsForFolderId:(id)id forAccount:(id)account
{
  idCopy = id;
  accountCopy = account;
  selfCopy = self;
  accountIDToChangeTrackingTable = self->_accountIDToChangeTrackingTable;
  v52 = accountCopy;
  accountID = [accountCopy accountID];
  v10 = [(NSMutableDictionary *)accountIDToChangeTrackingTable objectForKeyedSubscript:accountID];

  v48 = objc_opt_new();
  v46 = v10;
  addedAndModifiedRemindersInChangeSet = [v10 addedAndModifiedRemindersInChangeSet];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v12 = [addedAndModifiedRemindersInChangeSet countByEnumeratingWithState:&v55 objects:v67 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v56;
    v15 = _CPLog_to_os_log_type[4];
    v49 = idCopy;
    v51 = addedAndModifiedRemindersInChangeSet;
    v53 = *v56;
    do
    {
      v16 = 0;
      v54 = v13;
      do
      {
        if (*v56 != v14)
        {
          objc_enumerationMutation(addedAndModifiedRemindersInChangeSet);
        }

        v17 = *(*(&v55 + 1) + 8 * v16);
        list = [v17 list];
        v19 = list;
        if (list && ([list externalIdentifier], v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
        {
          externalIdentifier = [v19 externalIdentifier];
          v22 = [idCopy isEqualToString:externalIdentifier];

          if (!v22)
          {
            goto LABEL_23;
          }

          v23 = [(ESReminderKitHelper *)selfCopy _loadAttributesFromReminder:v17 forAccount:v52];
          externalIdentifier2 = [v17 externalIdentifier];
          if (externalIdentifier2 && (v25 = externalIdentifier2, [v17 externalIdentifier], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "length"), v26, addedAndModifiedRemindersInChangeSet = v51, v25, v27))
          {
            v28 = DALoggingwithCategory();
            if (os_log_type_enabled(v28, v15))
            {
              objectID = [v17 objectID];
              uuid = [objectID uuid];
              uUIDString = [uuid UUIDString];
              externalIdentifier3 = [v17 externalIdentifier];
              accountID2 = [v52 accountID];
              *buf = 138413058;
              v60 = uUIDString;
              v61 = 2112;
              v62 = externalIdentifier3;
              v63 = 2112;
              v64 = v49;
              v65 = 2112;
              v66 = accountID2;
              _os_log_impl(&dword_0, v28, v15, "ReminderSupport: Modifying a reminder with local ID: %@, external ID: %@, folder ID: %@, account %@", buf, 0x2Au);

              addedAndModifiedRemindersInChangeSet = v51;
              idCopy = v49;
            }

            v33 = [ASAction alloc];
            externalIdentifier4 = [v17 externalIdentifier];
            v35 = [v33 initWithItemChangeType:1 changedItem:v23 serverId:externalIdentifier4];

            v14 = v53;
          }

          else
          {
            v39 = DALoggingwithCategory();
            if (os_log_type_enabled(v39, v15))
            {
              objectID2 = [v17 objectID];
              uuid2 = [objectID2 uuid];
              uUIDString2 = [uuid2 UUIDString];
              externalIdentifier5 = [v17 externalIdentifier];
              accountID3 = [v52 accountID];
              *buf = 138413058;
              v60 = uUIDString2;
              v61 = 2112;
              v62 = externalIdentifier5;
              v63 = 2112;
              v64 = v49;
              v65 = 2112;
              v66 = accountID3;
              _os_log_impl(&dword_0, v39, v15, "ReminderSupport: Adding a reminder with local ID: %@, external ID: %@, folder ID: %@, account %@", buf, 0x2Au);

              idCopy = v49;
              v14 = v53;

              addedAndModifiedRemindersInChangeSet = v51;
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
            objectID3 = [v17 objectID];
            uuid3 = [objectID3 uuid];
            uUIDString3 = [uuid3 UUIDString];
            *buf = 138412290;
            v60 = uUIDString3;
            _os_log_impl(&dword_0, v23, v15, "ReminderSupport: Could not modify reminder with local ID: %@", buf, 0xCu);

            v13 = v54;
            v14 = v53;
          }
        }

LABEL_23:
        v16 = v16 + 1;
      }

      while (v13 != v16);
      v13 = [addedAndModifiedRemindersInChangeSet countByEnumeratingWithState:&v55 objects:v67 count:16];
    }

    while (v13);
  }

  return v48;
}

- (id)_localUndeletedReminderActionsForFolderId:(id)id forAccount:(id)account
{
  idCopy = id;
  accountCopy = account;
  accountIDToChangeTrackingTable = self->_accountIDToChangeTrackingTable;
  accountID = [accountCopy accountID];
  v10 = [(NSMutableDictionary *)accountIDToChangeTrackingTable objectForKeyedSubscript:accountID];

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
    v34 = accountCopy;
    do
    {
      for (i = 0; i != v40; i = i + 1)
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v41 + 1) + 8 * i);
        list = [v14 list];
        v16 = list;
        if (list && ([list externalIdentifier], v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
        {
          externalIdentifier = [v16 externalIdentifier];
          v19 = [idCopy isEqualToString:externalIdentifier];

          if (!v19)
          {
            goto LABEL_17;
          }

          v20 = [(ESReminderKitHelper *)self _loadAttributesFromReminder:v14 forAccount:accountCopy];
          v21 = DALoggingwithCategory();
          if (os_log_type_enabled(v21, v12))
          {
            objectID = [v14 objectID];
            uuid = [objectID uuid];
            uUIDString = [uuid UUIDString];
            externalIdentifier2 = [v14 externalIdentifier];
            [accountCopy accountID];
            selfCopy = self;
            v27 = v26 = idCopy;
            *buf = 138413058;
            v46 = uUIDString;
            v47 = 2112;
            v48 = externalIdentifier2;
            v49 = 2112;
            v50 = v26;
            v51 = 2112;
            v52 = v27;
            _os_log_impl(&dword_0, v21, type, "ReminderSupport: Adding a reminder with local ID: %@, external ID: %@, folder ID: %@, account %@", buf, 0x2Au);

            idCopy = v26;
            self = selfCopy;
            accountCopy = v34;

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
            objectID2 = [v14 objectID];
            uuid2 = [objectID2 uuid];
            uUIDString2 = [uuid2 UUIDString];
            *buf = 138412290;
            v46 = uUIDString2;
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

- (id)_localLazyDeletedReminderActionsForFolderId:(id)id forAccount:(id)account
{
  idCopy = id;
  accountCopy = account;
  accountIDToChangeTrackingTable = self->_accountIDToChangeTrackingTable;
  accountID = [accountCopy accountID];
  v10 = [(NSMutableDictionary *)accountIDToChangeTrackingTable objectForKeyedSubscript:accountID];

  v33 = objc_opt_new();
  v28 = v10;
  v31 = idCopy;
  [v10 lazyDeletedRemindersInChangeSetForFolderID:idCopy];
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
    selfCopy = self;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v36 + 1) + 8 * i);
        v16 = [(ESReminderKitHelper *)self _loadAttributesFromReminder:v15 forAccount:accountCopy];
        v17 = DALoggingwithCategory();
        if (os_log_type_enabled(v17, type))
        {
          objectID = [v15 objectID];
          uuid = [objectID uuid];
          uUIDString = [uuid UUIDString];
          externalIdentifier = [v15 externalIdentifier];
          [accountCopy accountID];
          v21 = v12;
          v23 = v22 = accountCopy;
          *buf = 138413058;
          v41 = uUIDString;
          v42 = 2112;
          v43 = externalIdentifier;
          v44 = 2112;
          v45 = v31;
          v46 = 2112;
          v47 = v23;
          _os_log_impl(&dword_0, v17, type, "ReminderSupport: Adding a reminder with local ID: %@, external ID: %@, folder ID: %@, account %@", buf, 0x2Au);

          accountCopy = v22;
          v12 = v21;

          v13 = v29;
          self = selfCopy;
        }

        v24 = [ASAction alloc];
        externalIdentifierForMarkedForDeletionObject = [v15 externalIdentifierForMarkedForDeletionObject];
        v26 = [v24 initWithItemChangeType:2 changedItem:v16 serverId:externalIdentifierForMarkedForDeletionObject];

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

- (id)_localDeletedReminderActionsForFolderId:(id)id forAccount:(id)account
{
  idCopy = id;
  accountCopy = account;
  accountIDToChangeTrackingTable = self->_accountIDToChangeTrackingTable;
  accountID = [accountCopy accountID];
  v10 = [(NSMutableDictionary *)accountIDToChangeTrackingTable objectForKeyedSubscript:accountID];

  v33 = objc_opt_new();
  v28 = v10;
  v31 = idCopy;
  [v10 deletedRemindersInChangeSetForFolderID:idCopy];
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
    selfCopy = self;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v36 + 1) + 8 * i);
        v16 = [(ESReminderKitHelper *)self _loadAttributesFromReminder:v15 forAccount:accountCopy];
        v17 = DALoggingwithCategory();
        if (os_log_type_enabled(v17, type))
        {
          objectID = [v15 objectID];
          uuid = [objectID uuid];
          uUIDString = [uuid UUIDString];
          externalIdentifier = [v15 externalIdentifier];
          [accountCopy accountID];
          v21 = v12;
          v23 = v22 = accountCopy;
          *buf = 138413058;
          v41 = uUIDString;
          v42 = 2112;
          v43 = externalIdentifier;
          v44 = 2112;
          v45 = v31;
          v46 = 2112;
          v47 = v23;
          _os_log_impl(&dword_0, v17, type, "ReminderSupport: Adding a reminder with local ID: %@, external ID: %@, folder ID: %@, account %@", buf, 0x2Au);

          accountCopy = v22;
          v12 = v21;

          v13 = v29;
          self = selfCopy;
        }

        v24 = [ASAction alloc];
        externalIdentifierForMarkedForDeletionObject = [v15 externalIdentifierForMarkedForDeletionObject];
        v26 = [v24 initWithItemChangeType:0 changedItem:v16 serverId:externalIdentifierForMarkedForDeletionObject];

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

- (id)localUnsyncedReminderActionsForFolderId:(id)id forAccount:(id)account
{
  idCopy = id;
  accountCopy = account;
  v8 = [(ESReminderKitHelper *)self _reminderAccountForAccount:accountCopy];
  if (v8)
  {
    v9 = [(ESReminderKitHelper *)self _reminderListWithExternalId:idCopy forReminderAccount:v8];
    if (!v9)
    {
      v12 = DALoggingwithCategory();
      v21 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v12, v21))
      {
        *buf = 138412290;
        v42 = idCopy;
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
        v42 = idCopy;
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
              externalIdentifier = [v27 externalIdentifier];

              if (!externalIdentifier)
              {
                v29 = [(ESReminderKitHelper *)self _loadAttributesFromReminder:v27 forAccount:accountCopy];
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
        v42 = idCopy;
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
    v42 = accountCopy;
    _os_log_impl(&dword_0, v9, v20, "Could not fetch reminder account for account: %@", buf, 0xCu);
  }

  v10 = 0;
LABEL_16:

  return v10;
}

- (id)_loadAttributesFromReminder:(id)reminder forAccount:(id)account
{
  reminderCopy = reminder;
  accountCopy = account;
  if (!reminderCopy)
  {
    v8 = 0;
    goto LABEL_54;
  }

  v8 = objc_opt_new();
  objectID = [reminderCopy objectID];
  uuid = [objectID uuid];
  uUIDString = [uuid UUIDString];
  [v8 setClientID:uUIDString];

  title = [reminderCopy title];
  string = [title string];
  [v8 setSubject:string];

  notesAsString = [reminderCopy notesAsString];
  [v8 setBody:notesAsString];

  startDateComponents = [reminderCopy startDateComponents];
  dueDateComponents = [reminderCopy dueDateComponents];
  v17 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  timeZone = [dueDateComponents timeZone];

  if (timeZone)
  {
    [dueDateComponents timeZone];
  }

  else
  {
    +[NSTimeZone localTimeZone];
  }
  v19 = ;
  timeZone2 = [startDateComponents timeZone];

  if (timeZone2)
  {
    timeZone3 = [startDateComponents timeZone];
  }

  else
  {
    timeZone4 = [dueDateComponents timeZone];

    if (timeZone4)
    {
      timeZone3 = v17;
    }

    else
    {
      timeZone3 = +[NSTimeZone localTimeZone];
    }
  }

  v23 = timeZone3;
  if (startDateComponents)
  {
    v24 = [NSDateComponents rem_dateWithDateComponents:startDateComponents timeZone:v17];
    [v8 setStartTime:v24];

    v25 = [NSDateComponents rem_dateWithDateComponents:startDateComponents timeZone:v23];
    [v8 setUTCStartTime:v25];
  }

  if (dueDateComponents)
  {
    v26 = [NSDateComponents rem_dateWithDateComponents:dueDateComponents timeZone:v17];
    [v8 setDueDate:v26];

    v27 = [NSDateComponents rem_dateWithDateComponents:dueDateComponents timeZone:v19];
    [v8 setUTCDueDate:v27];
  }

  alarms = [reminderCopy alarms];
  if (![alarms count])
  {
    [v8 setReminderIsSet:&off_6E4C8];
    goto LABEL_32;
  }

  v70 = startDateComponents;
  v71 = v19;
  v69 = dueDateComponents;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v68 = alarms;
  v29 = alarms;
  v30 = [v29 countByEnumeratingWithState:&v73 objects:v79 count:16];
  if (!v30)
  {
    v40 = 0;
    goto LABEL_31;
  }

  v31 = v30;
  v32 = *v74;
  selfCopy = self;
  v67 = reminderCopy;
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
      trigger = [v34 trigger];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      trigger2 = [v34 trigger];
      trigger3 = trigger2;
      if (isKindOfClass)
      {
        [trigger2 timeInterval];
        dateComponents = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
        [v8 setReminderDateTime:dateComponents];
LABEL_30:

        v40 = 1;
        self = selfCopy;
        reminderCopy = v67;
        v23 = v65;
        goto LABEL_31;
      }

      objc_opt_class();
      v39 = objc_opt_isKindOfClass();

      if (v39)
      {
        trigger3 = [v34 trigger];
        dateComponents = [trigger3 dateComponents];
        v42 = [NSDateComponents rem_dateWithDateComponents:dateComponents timeZone:v71];
        [v8 setReminderDateTime:v42];

        goto LABEL_30;
      }
    }

    v31 = [v29 countByEnumeratingWithState:&v73 objects:v79 count:16];
    v40 = 0;
    self = selfCopy;
    reminderCopy = v67;
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
  dueDateComponents = v69;
  startDateComponents = v70;
  alarms = v68;
LABEL_32:

  [v8 setSensitivity:&off_6E4C8];
  [reminderCopy priority];
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

  [(ESReminderKitHelper *)self _loadRecurrenceRulesFromReminder:reminderCopy intoTask:v8 forAccount:accountCopy];
  completionDate = [reminderCopy completionDate];
  if (completionDate)
  {
    [v8 setDateCompleted:completionDate];
  }

  dateCompleted = [v8 dateCompleted];
  [dateCompleted timeIntervalSinceReferenceDate];
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
  complete = [v8 complete];
  bOOLValue = [complete BOOLValue];

  if (bOOLValue)
  {
    recurrence = [v8 recurrence];
    [recurrence setDeadOccur:&off_6E4F8];

    protocol = [accountCopy protocol];
    allowsReminderOnCompletedTasks = [protocol allowsReminderOnCompletedTasks];

    if ((allowsReminderOnCompletedTasks & 1) == 0)
    {
      [v8 setReminderDateTime:0];
      [v8 setReminderIsSet:&off_6E4C8];
    }
  }

  importedICSData = [reminderCopy importedICSData];
  if (importedICSData)
  {
    v57 = +[ASEvent calendarItemExternalRepClasses];
    v72 = 0;
    v58 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v57 fromData:importedICSData error:&v72];
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

- (void)_loadRecurrenceRulesFromReminder:(id)reminder intoTask:(id)task forAccount:(id)account
{
  reminderCopy = reminder;
  taskCopy = task;
  recurrenceRules = [reminderCopy recurrenceRules];
  v10 = [recurrenceRules count];

  if (!v10)
  {
    goto LABEL_111;
  }

  recurrenceRules2 = [reminderCopy recurrenceRules];
  firstObject = [recurrenceRules2 firstObject];

  v13 = [[ASToDoRecurrence alloc] initWithParentToDo:taskCopy];
  v14 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  v15 = +[NSCalendar currentCalendar];
  [v15 setTimeZone:v14];
  v16 = +[NSDate date];
  dueDateComponents = [reminderCopy dueDateComponents];

  if (dueDateComponents)
  {
    dueDateComponents2 = [reminderCopy dueDateComponents];
    v19 = [NSDateComponents rem_dateWithDateComponents:dueDateComponents2 timeZone:v14];

    v16 = v19;
  }

  [v13 setStartTime:v16];
  v20 = &PLLogRegisteredEvent_ptr;
  v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [firstObject interval]);
  [v13 setInterval:v21];

  frequency = [firstObject frequency];
  v23 = 1;
  if (frequency > 1)
  {
    if (frequency != (&dword_0 + 2))
    {
      if (frequency != (&dword_0 + 3))
      {
        if (frequency == &dword_4)
        {
          v24 = DALoggingwithCategory();
          v25 = _CPLog_to_os_log_type[3];
          if (os_log_type_enabled(v24, v25))
          {
            *buf = 138412290;
            v113 = firstObject;
            _os_log_impl(&dword_0, v24, v25, "Hourly recurrence is not supported {recurrenceRule: %@}", buf, 0xCu);
          }

          v23 = 0;
        }

        goto LABEL_97;
      }

      daysOfTheMonth = [firstObject daysOfTheMonth];
      monthsOfTheYear = [firstObject monthsOfTheYear];
      daysOfTheWeek = [firstObject daysOfTheWeek];
      v101 = daysOfTheMonth;
      if ([daysOfTheMonth count] && objc_msgSend(monthsOfTheYear, "count") && !objc_msgSend(daysOfTheWeek, "count"))
      {
        [v13 setType:&off_6E5D0];
        [daysOfTheMonth firstObject];
        v109 = v16;
        v58 = v57 = v14;
        integerValue = [v58 integerValue];

        if (integerValue == -1)
        {
          v60 = 127;
        }

        else
        {
          v60 = integerValue;
        }

        v61 = [NSNumber numberWithInteger:v60];
        [v13 setDayOfMonth:v61];

        firstObject2 = [monthsOfTheYear firstObject];
        v63 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", -[ESReminderKitHelper _ASMonthOfYearFromREMMonthOfYear:](self, "_ASMonthOfYearFromREMMonthOfYear:", [firstObject2 integerValue]));
        [v13 setMonthOfYear:v63];

        v14 = v57;
        v16 = v109;
      }

      else
      {
        if (![daysOfTheMonth count] && objc_msgSend(monthsOfTheYear, "count") && objc_msgSend(daysOfTheWeek, "count"))
        {
          v108 = v14;
          [v13 setType:&off_6E5E8];
          v111 = -1;
          daysOfTheWeek2 = [firstObject daysOfTheWeek];
          v42 = [(ESReminderKitHelper *)self _ASDayOfWeekFromREMDaysOfWeek:daysOfTheWeek2 outWeekOfMonth:&v111];

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
              v113 = reminderCopy;
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
          firstObject3 = [monthsOfTheYear firstObject];
          v84 = [v82 numberWithUnsignedInt:{-[ESReminderKitHelper _ASMonthOfYearFromREMMonthOfYear:](self, "_ASMonthOfYearFromREMMonthOfYear:", objc_msgSend(firstObject3, "integerValue"))}];
          [v13 setMonthOfYear:v84];

          v20 = &PLLogRegisteredEvent_ptr;
          v14 = v108;
          goto LABEL_96;
        }

        if ([daysOfTheMonth count] || objc_msgSend(monthsOfTheYear, "count") || objc_msgSend(daysOfTheWeek, "count"))
        {
          if (![daysOfTheMonth count] || objc_msgSend(monthsOfTheYear, "count") || objc_msgSend(daysOfTheMonth, "count"))
          {
            v35 = DALoggingwithCategory();
            v36 = _CPLog_to_os_log_type[3];
            if (os_log_type_enabled(v35, v36))
            {
              *buf = 138412290;
              v113 = reminderCopy;
              _os_log_impl(&dword_0, v35, v36, "Malformed Yearly recurrence  (need either (byMonthDayDays && byMonthMonths && !byDayDays) OR (!byMonthDayDays && byMonthMonths && byDayDays) OR (!byMonthDayDays && !byMonthMonths && !byDayDays).  reminder is %@", buf, 0xCu);
            }

            v23 = 0;
            v20 = &PLLogRegisteredEvent_ptr;
            goto LABEL_96;
          }

          [v13 setType:&off_6E5D0];
          [daysOfTheMonth firstObject];
          v67 = v110 = v14;
          integerValue2 = [v67 integerValue];

          if (integerValue2 == -1)
          {
            v69 = 127;
          }

          else
          {
            v69 = integerValue2;
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
    daysOfTheMonth2 = [firstObject daysOfTheMonth];
    if ([daysOfTheMonth2 count])
    {
      daysOfTheWeek3 = [firstObject daysOfTheWeek];
      v31 = [daysOfTheWeek3 count];

      if (!v31)
      {
        [v13 setType:&off_6E4E0];
        daysOfTheMonth3 = [firstObject daysOfTheMonth];
        firstObject4 = [daysOfTheMonth3 firstObject];

        if ([firstObject4 integerValue] == -1)
        {

          firstObject4 = &off_6E5A0;
        }

        v14 = v107;
        v20 = &PLLogRegisteredEvent_ptr;
        [v13 setDayOfMonth:firstObject4];

        goto LABEL_20;
      }
    }

    else
    {
    }

    daysOfTheMonth4 = [firstObject daysOfTheMonth];
    if ([daysOfTheMonth4 count])
    {

      goto LABEL_38;
    }

    daysOfTheWeek4 = [firstObject daysOfTheWeek];
    v47 = [daysOfTheWeek4 count];

    if (!v47)
    {
LABEL_38:
      daysOfTheMonth5 = [firstObject daysOfTheMonth];
      if ([daysOfTheMonth5 count])
      {

        v20 = &PLLogRegisteredEvent_ptr;
      }

      else
      {
        daysOfTheWeek5 = [firstObject daysOfTheWeek];
        v54 = [daysOfTheWeek5 count];

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
        v113 = reminderCopy;
        _os_log_impl(&dword_0, v55, v56, "Malformed Monthly recurrence (both daysOfTheMonth and daysOfTheWeek are set).  reminder is %@", buf, 0xCu);
      }

      v23 = 0;
      goto LABEL_60;
    }

    [v13 setType:&off_6E5B8];
    v111 = -1;
    daysOfTheWeek6 = [firstObject daysOfTheWeek];
    v49 = [(ESReminderKitHelper *)self _ASDayOfWeekFromREMDaysOfWeek:daysOfTheWeek6 outWeekOfMonth:&v111];

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
          v113 = reminderCopy;
          _os_log_impl(&dword_0, v51, v52, "Malformed Monthly recurrence (weekDays has multiple weekOfMonths).  reminder is %@", buf, 0xCu);
        }

        v23 = 0;
        goto LABEL_122;
      }

LABEL_20:
      v23 = 1;
      goto LABEL_97;
    }

    setPositions = [firstObject setPositions];
    v105 = setPositions;
    if (setPositions)
    {
      v73 = setPositions;
      if ([setPositions count]== &dword_0 + 1)
      {
        v74 = [v73 objectAtIndexedSubscript:0];
        integerValue3 = [v74 integerValue];

        if ((integerValue3 - 1) <= 3)
        {
          v76 = integerValue3;
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
          v113 = integerValue3;
          v114 = 2112;
          v115 = reminderCopy;
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
      v113 = reminderCopy;
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
      v113 = reminderCopy;
    }

    _os_log_impl(&dword_0, v77, v98, "Malformed Monthly recurrence (has dayOfWeek but no setPosition).  reminder is %@", buf, 0xCu);
    goto LABEL_120;
  }

  if (!frequency)
  {
    [v13 setType:&off_6E4C8];
    goto LABEL_97;
  }

  if (frequency != (&dword_0 + 1))
  {
    goto LABEL_97;
  }

  [v13 setType:&off_6E4F8];
  daysOfTheWeek7 = [firstObject daysOfTheWeek];

  if (daysOfTheWeek7)
  {
    daysOfTheWeek8 = [firstObject daysOfTheWeek];
    v28 = [NSNumber numberWithInteger:[(ESReminderKitHelper *)self _ASDayOfWeekFromREMDaysOfWeek:daysOfTheWeek8 outWeekOfMonth:0]];
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
  recurrenceEnd = [firstObject recurrenceEnd];
  v86 = recurrenceEnd;
  if (recurrenceEnd)
  {
    v103 = v23;
    v106 = firstObject;
    v87 = reminderCopy;
    v88 = taskCopy;
    v89 = v15;
    v90 = v14;
    endDate = [recurrenceEnd endDate];

    if (endDate)
    {
      endDate2 = [v86 endDate];
      v93 = [NSDateComponents rem_dateComponentsWithDate:endDate2 timeZone:v90 isAllDay:1];

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
    taskCopy = v88;
    reminderCopy = v87;
    firstObject = v106;
    v23 = v103;
  }

  if (![firstObject firstDayOfTheWeek])
  {
    v96 = &off_6E4F8;
    goto LABEL_106;
  }

  v95 = [firstObject firstDayOfTheWeek] - 1;
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

  [taskCopy setRecurrence:v97];

LABEL_111:
}

- (void)clearReminderChangesForFolderID:(id)d forAccount:(id)account
{
  dCopy = d;
  accountIDToChangeTrackingTable = self->_accountIDToChangeTrackingTable;
  accountID = [account accountID];
  v8 = [(NSMutableDictionary *)accountIDToChangeTrackingTable objectForKey:accountID];

  if (v8 && [v8 markReminderChangesConsumedForFolderID:dCopy])
  {
    [(ESReminderKitHelper *)self _processReminderNotification:0];
  }
}

- (void)clearFolderAdditionForFolderUUID:(id)d folderID:(id)iD forAccount:(id)account
{
  dCopy = d;
  iDCopy = iD;
  accountIDToChangeTrackingTable = self->_accountIDToChangeTrackingTable;
  accountID = [account accountID];
  v11 = [(NSMutableDictionary *)accountIDToChangeTrackingTable objectForKey:accountID];

  if (v11 && [v11 markListAdditionConsumedForFolderUUID:dCopy folderID:iDCopy])
  {
    [(ESReminderKitHelper *)self _processReminderNotification:0];
  }
}

- (void)clearFolderChangeForFolderID:(id)d forAccount:(id)account
{
  dCopy = d;
  accountIDToChangeTrackingTable = self->_accountIDToChangeTrackingTable;
  accountID = [account accountID];
  v8 = [(NSMutableDictionary *)accountIDToChangeTrackingTable objectForKey:accountID];

  if (v8 && [v8 markListChangeConsumedForFolderID:dCopy])
  {
    [(ESReminderKitHelper *)self _processReminderNotification:0];
  }
}

- (BOOL)_populateChangeItem:(id)item forReminder:(id)reminder folderWithId:(id)id forAccount:(id)account
{
  itemCopy = item;
  reminderCopy = reminder;
  idCopy = id;
  accountCopy = account;
  v13 = DALoggingwithCategory();
  v14 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v13, v14))
  {
    objectID = [itemCopy objectID];
    serverID = [reminderCopy serverID];
    *buf = 138412546;
    v107 = objectID;
    v108 = 2112;
    v109 = serverID;
    _os_log_impl(&dword_0, v13, v14, "UPDATE {objectID: %@, task.serverID: %@}", buf, 0x16u);
  }

  serverID2 = [reminderCopy serverID];

  if (serverID2)
  {
    serverID3 = [reminderCopy serverID];
    [itemCopy setExternalIdentifier:serverID3];

    v19 = DALoggingwithCategory();
    v20 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v19, v20))
    {
      serverID4 = [reminderCopy serverID];
      *buf = 138412290;
      v107 = serverID4;
      _os_log_impl(&dword_0, v19, v20, "SET externalIdentifier <- %@", buf, 0xCu);
    }
  }

  v103 = accountCopy;
  body = [reminderCopy body];

  if (body)
  {
    v23 = DALoggingwithCategory();
    v24 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v23, v24))
    {
      body2 = [reminderCopy body];
      *buf = 138412290;
      v107 = body2;
      _os_log_impl(&dword_0, v23, v24, "SET notes <- %@", buf, 0xCu);
    }

    v26 = [NSAttributedString alloc];
    body3 = [reminderCopy body];
    v28 = [v26 initWithString:body3];
    [itemCopy setNotes:v28];
  }

  subject = [reminderCopy subject];

  if (subject)
  {
    v30 = DALoggingwithCategory();
    v31 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v30, v31))
    {
      subject2 = [reminderCopy subject];
      *buf = 138412290;
      v107 = subject2;
      _os_log_impl(&dword_0, v30, v31, "SET title <- %@", buf, 0xCu);
    }

    v33 = [NSAttributedString alloc];
    subject3 = [reminderCopy subject];
    v35 = [v33 initWithString:subject3];
    [itemCopy setTitle:v35];
  }

  utcStartTime = [reminderCopy utcStartTime];

  if (utcStartTime)
  {
    startTime = [reminderCopy startTime];
    utcStartTime2 = [reminderCopy utcStartTime];
    v39 = [reminderCopy bestGuessTimeZoneWithLocalDate:startTime utcDate:utcStartTime2];

    utcStartTime3 = [reminderCopy utcStartTime];
    v41 = [NSDateComponents rem_dateComponentsWithDate:utcStartTime3 timeZone:v39 isAllDay:1];

    [v41 setTimeZone:0];
    v42 = DALoggingwithCategory();
    v43 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v42, v43))
    {
      *buf = 138412290;
      v107 = v41;
      _os_log_impl(&dword_0, v42, v43, "SET startDateComponents <- %@", buf, 0xCu);
    }

    [itemCopy setStartDateComponents:v41];
  }

  utcDueDate = [reminderCopy utcDueDate];

  if (utcDueDate)
  {
    dueDate = [reminderCopy dueDate];
    utcDueDate2 = [reminderCopy utcDueDate];
    v47 = [reminderCopy bestGuessTimeZoneWithLocalDate:dueDate utcDate:utcDueDate2];

    utcDueDate3 = [reminderCopy utcDueDate];
    v49 = [NSDateComponents rem_dateComponentsWithDate:utcDueDate3 timeZone:v47 isAllDay:1];

    [v49 setTimeZone:0];
    v50 = DALoggingwithCategory();
    v51 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v50, v51))
    {
      *buf = 138412290;
      v107 = v49;
      _os_log_impl(&dword_0, v50, v51, "SET dueDateComponents <- %@", buf, 0xCu);
    }

    [itemCopy setDueDateComponents:v49];
  }

  dateCompleted = [reminderCopy dateCompleted];

  v53 = DALoggingwithCategory();
  v54 = _CPLog_to_os_log_type[7];
  v55 = os_log_type_enabled(v53, v54);
  if (dateCompleted)
  {
    if (v55)
    {
      dateCompleted2 = [reminderCopy dateCompleted];
      *buf = 138412290;
      v107 = dateCompleted2;
      _os_log_impl(&dword_0, v53, v54, "SET completionDate <- %@", buf, 0xCu);
    }

    v57 = DALoggingwithCategory();
    if (os_log_type_enabled(v57, v54))
    {
      *buf = 138412290;
      v107 = &__kCFBooleanTrue;
      _os_log_impl(&dword_0, v57, v54, "SET completed <- %@", buf, 0xCu);
    }

    dateCompleted3 = [reminderCopy dateCompleted];
    [itemCopy setCompletionDate:dateCompleted3];
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

    [itemCopy setCompletionDate:0];
  }

  [itemCopy setCompleted:dateCompleted != 0];
  importance = [reminderCopy importance];

  if (importance && ([reminderCopy importance], v61 = objc_claimAutoreleasedReturnValue(), v62 = objc_msgSend(v61, "intValue"), v61, v62 <= 2))
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

  [itemCopy setPriority:v63];
  reminderIsSet = [reminderCopy reminderIsSet];
  v101 = idCopy;
  if ([reminderIsSet BOOLValue])
  {
    reminderDateTime = [reminderCopy reminderDateTime];

    if (reminderDateTime)
    {
      [itemCopy removeAllAlarms];
      reminderDateTime2 = [reminderCopy reminderDateTime];
      v69 = +[NSTimeZone localTimeZone];
      v70 = [NSDateComponents rem_dateComponentsWithDate:reminderDateTime2 timeZone:v69 isAllDay:0];

      v71 = [[REMAlarmDateTrigger alloc] initWithDateComponents:v70];
      v72 = DALoggingwithCategory();
      if (os_log_type_enabled(v72, v54))
      {
        *buf = 138412290;
        v107 = v71;
        _os_log_impl(&dword_0, v72, v54, "SET alarms <- [%@]", buf, 0xCu);
      }

      v73 = [itemCopy addAlarmWithTrigger:v71];
      goto LABEL_53;
    }
  }

  else
  {
  }

  alarms = [itemCopy alarms];
  v75 = [alarms count];

  if (v75)
  {
    v76 = DALoggingwithCategory();
    if (os_log_type_enabled(v76, v14))
    {
      objectID2 = [itemCopy objectID];
      *buf = 138412290;
      v107 = objectID2;
      _os_log_impl(&dword_0, v76, v14, "Removing all alarms from reminderChangeItem {objectID: %@}", buf, 0xCu);
    }
  }

  v78 = DALoggingwithCategory();
  if (os_log_type_enabled(v78, v54))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v78, v54, "SET alarms <- nil", buf, 2u);
  }

  [itemCopy removeAllAlarms];
LABEL_53:
  importedICSData = [itemCopy importedICSData];
  if (!importedICSData)
  {
    v87 = 0;
    goto LABEL_67;
  }

  _remExternalRepresentationClasses = [(ESReminderKitHelper *)self _remExternalRepresentationClasses];
  v105 = 0;
  v81 = [NSKeyedUnarchiver unarchivedObjectOfClasses:_remExternalRepresentationClasses fromData:importedICSData error:&v105];
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
  categories = [reminderCopy categories];

  if (categories)
  {
    categories2 = [reminderCopy categories];
    [v88 addObjectsFromArray:categories2];
  }

  v91 = [v87 objectForKeyedSubscript:&off_6E510];

  if (v91)
  {
    v92 = [v87 objectForKeyedSubscript:&off_6E510];
    [v88 addObjectsFromArray:v92];
  }

  if ([v88 count])
  {
    allObjects = [v88 allObjects];
    [v87 setObject:allObjects forKeyedSubscript:&off_6E510];
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

  [itemCopy setImportedICSData:v94];
  recurrence = [reminderCopy recurrence];

  if (recurrence)
  {
    recurrence2 = [reminderCopy recurrence];
    v98 = v103;
    [(ESReminderKitHelper *)self _populateChangeItem:itemCopy forRecurrence:recurrence2 forReminder:reminderCopy forFolderWithId:v102 forAccount:v103];
  }

  else
  {
    v99 = DALoggingwithCategory();
    if (os_log_type_enabled(v99, v54))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v99, v54, "SET recurrenceRules <- nil", buf, 2u);
    }

    [itemCopy removeAllRecurrenceRules];
    v98 = v103;
  }

  return 1;
}

- (int64_t)_ASDayOfWeekFromREMDaysOfWeek:(id)week outWeekOfMonth:(int64_t *)month
{
  weekCopy = week;
  v6 = weekCopy;
  if (weekCopy)
  {
    if (month)
    {
      *month = -2;
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [weekCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          dayOfTheWeek = [v11 dayOfTheWeek];
          if (dayOfTheWeek <= 3)
          {
            if (dayOfTheWeek == (&dword_0 + 1))
            {
              v8 |= 1u;
              if (month)
              {
                goto LABEL_29;
              }
            }

            else if (dayOfTheWeek == (&dword_0 + 2))
            {
              v8 |= 2u;
              if (month)
              {
                goto LABEL_29;
              }
            }

            else
            {
              if (dayOfTheWeek != (&dword_0 + 3))
              {
                goto LABEL_28;
              }

              v8 |= 4u;
              if (month)
              {
                goto LABEL_29;
              }
            }
          }

          else if (dayOfTheWeek > 5)
          {
            if (dayOfTheWeek == (&dword_4 + 2))
            {
              v8 |= 0x20u;
LABEL_28:
              if (!month)
              {
                goto LABEL_30;
              }

LABEL_29:
              *month = [v11 weekNumber];
              goto LABEL_30;
            }

            if (dayOfTheWeek != (&dword_4 + 3))
            {
              goto LABEL_28;
            }

            v8 |= 0x40u;
            if (month)
            {
              goto LABEL_29;
            }
          }

          else if (dayOfTheWeek == &dword_4)
          {
            v8 |= 8u;
            if (month)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v8 |= 0x10u;
            if (month)
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

    if (month && *month == -1)
    {
      *month = 5;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int)_ASMonthOfYearFromREMMonthOfYear:(int64_t)year
{
  if ((year - 1) < 0xC)
  {
    return year;
  }

  else
  {
    return -1;
  }
}

- (id)_remDaysOfWeekFromASDayOfWeek:(int)week weekOfMonth:(int)month
{
  weekCopy = week;
  v6 = objc_alloc_init(NSMutableArray);
  if (weekCopy)
  {
    v9 = [REMRecurrenceDayOfWeek dayOfWeek:1 weekNumber:month];
    [v6 addObject:v9];

    if ((weekCopy & 2) == 0)
    {
LABEL_3:
      if ((weekCopy & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((weekCopy & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = [REMRecurrenceDayOfWeek dayOfWeek:2 weekNumber:month];
  [v6 addObject:v10];

  if ((weekCopy & 4) == 0)
  {
LABEL_4:
    if ((weekCopy & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v11 = [REMRecurrenceDayOfWeek dayOfWeek:3 weekNumber:month];
  [v6 addObject:v11];

  if ((weekCopy & 8) == 0)
  {
LABEL_5:
    if ((weekCopy & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v12 = [REMRecurrenceDayOfWeek dayOfWeek:4 weekNumber:month];
  [v6 addObject:v12];

  if ((weekCopy & 0x10) == 0)
  {
LABEL_6:
    if ((weekCopy & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v13 = [REMRecurrenceDayOfWeek dayOfWeek:5 weekNumber:month];
  [v6 addObject:v13];

  if ((weekCopy & 0x20) == 0)
  {
LABEL_7:
    if ((weekCopy & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v14 = [REMRecurrenceDayOfWeek dayOfWeek:6 weekNumber:month];
  [v6 addObject:v14];

  if ((weekCopy & 0x40) != 0)
  {
LABEL_8:
    v7 = [REMRecurrenceDayOfWeek dayOfWeek:7 weekNumber:month];
    [v6 addObject:v7];
  }

LABEL_9:

  return v6;
}

- (int64_t)_remMonthOfYearFromASMonthOfYear:(int)year
{
  if ((year - 1) > 0xB)
  {
    return -1;
  }

  else
  {
    return qword_539C8[year - 1];
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