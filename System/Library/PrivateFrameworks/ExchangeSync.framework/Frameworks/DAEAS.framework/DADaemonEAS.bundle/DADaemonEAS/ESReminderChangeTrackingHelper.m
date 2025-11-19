@interface ESReminderChangeTrackingHelper
- (BOOL)_checkAndMarkChangeConsumed;
- (BOOL)_recordAddedLists;
- (BOOL)_recordChangesInChangeSet;
- (BOOL)_recordDeletedLists;
- (BOOL)_recordDeletedReminders;
- (BOOL)_recordLazyDeletedLists;
- (BOOL)_recordLazyDeletedReminders;
- (BOOL)_recordModifiedLists;
- (BOOL)_recordModifiedReminders;
- (BOOL)_recordReminders:(id)a3;
- (BOOL)_recordUndeletedLists;
- (BOOL)_recordUndeletedReminders;
- (BOOL)fetchChangesSinceLastConsumed;
- (BOOL)markListAdditionConsumedForFolderUUID:(id)a3 folderID:(id)a4;
- (BOOL)markListChangeConsumedForFolderID:(id)a3;
- (BOOL)markReminderChangesConsumedForFolderID:(id)a3;
- (ESReminderChangeTrackingHelper)initWithAccount:(id)a3 reminderStore:(id)a4;
- (id)_addedListsInSubset:(id)a3;
- (id)_deletedReminderFolderIDsInChangeSet;
- (id)_fetchChangeTrackingState;
- (id)_fethAuxiliaryChangeInfosForReminderChangeObject:(id)a3;
- (id)_lazyDeletedReminderFolderIDsInChangeSet;
- (id)_modifiedListsInSubset:(id)a3;
- (id)_modifiedRemindersInSubset:(id)a3;
- (id)_pendingChangesInReminderDB;
- (id)_remListExternalIdentifierForDeletedReminderChangeObject:(id)a3;
- (id)addedAndModifiedRemindersInChangeSet;
- (id)addedListsInChangeSet;
- (id)deletedListsInChangeSet;
- (id)deletedRemindersInChangeSetForFolderID:(id)a3;
- (id)lazyDeletedListsInChangeSet;
- (id)lazyDeletedRemindersInChangeSetForFolderID:(id)a3;
- (id)modifiedListsInChangeSet;
- (id)peekAddedListsInReminderDB;
- (id)peekUndeletedListsInReminderDB;
- (id)undeletedListsInChangeSet;
- (id)undeletedRemindersInChangeSet;
- (void)_initializeChangeTrackingState;
- (void)_initializeChangeTrackingStateIfNeeded;
- (void)_markChangesConsumed;
@end

@implementation ESReminderChangeTrackingHelper

- (ESReminderChangeTrackingHelper)initWithAccount:(id)a3 reminderStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v30.receiver = self;
    v30.super_class = ESReminderChangeTrackingHelper;
    v8 = [(ESReminderChangeTrackingHelper *)&v30 init];
    if (v8)
    {
      v9 = objc_opt_new();
      foldersContainingReminderChangesInChangeSet = v8->_foldersContainingReminderChangesInChangeSet;
      v8->_foldersContainingReminderChangesInChangeSet = v9;

      v11 = objc_opt_new();
      foldersAddedInChangeSet = v8->_foldersAddedInChangeSet;
      v8->_foldersAddedInChangeSet = v11;

      v13 = objc_opt_new();
      foldersChangedInChangeSet = v8->_foldersChangedInChangeSet;
      v8->_foldersChangedInChangeSet = v13;

      v15 = [v6 accountID];
      v16 = [v15 copy];
      accountID = v8->_accountID;
      v8->_accountID = v16;

      objc_storeStrong(&v8->_reminderStore, a4);
      v18 = [[NSUUID alloc] initWithUUIDString:v8->_accountID];
      v19 = [REMAccount objectIDWithUUID:v18];
      accountObjID = v8->_accountObjID;
      v8->_accountObjID = v19;

      v21 = [(REMStore *)v8->_reminderStore provideChangeTrackingForAccountID:v8->_accountObjID clientName:@"com.apple.exchangesyncd"];
      changeTracking = v8->_changeTracking;
      v8->_changeTracking = v21;

      if (v8->_changeTracking)
      {
        [(ESReminderChangeTrackingHelper *)v8 _initializeChangeTrackingStateIfNeeded];
      }

      else
      {
        v26 = DALoggingwithCategory();
        v27 = _CPLog_to_os_log_type[3];
        if (os_log_type_enabled(v26, v27))
        {
          v28 = v8->_accountID;
          *buf = 138412290;
          v32 = v28;
          _os_log_impl(&dword_0, v26, v27, "ReminderSupport: Failed to get REMChangeTracking for accountID: %@", buf, 0xCu);
        }
      }
    }

    self = v8;
    v25 = self;
  }

  else
  {
    v23 = DALoggingwithCategory();
    v24 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v23, v24))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v23, v24, "ReminderSupport: Trying to initialize ESReminderChangeTrackingHelper without an account.", buf, 2u);
    }

    v25 = 0;
  }

  return v25;
}

- (void)_initializeChangeTrackingStateIfNeeded
{
  v3 = [(ESReminderChangeTrackingHelper *)self changeTracking];
  v13 = 0;
  v4 = [v3 getTrackingStateWithError:&v13];
  v5 = v13;

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (v6)
  {
    [(ESReminderChangeTrackingHelper *)self _initializeChangeTrackingState];
  }

  else
  {
    v7 = DALoggingwithCategory();
    v8 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v7, v8))
    {
      v10 = [(ESReminderChangeTrackingHelper *)self accountID];
      v11 = [v4 lastConsumedChangeToken];
      v12 = [v4 lastConsumedDate];
      *buf = 138412802;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_0, v7, v8, "ReminderSupport: Found an existing change tracking state for {accountID: %@, lastSyncToken: %@, lastSyncDate: %@}", buf, 0x20u);
    }
  }
}

- (void)_initializeChangeTrackingState
{
  v3 = [(ESReminderChangeTrackingHelper *)self changeTracking];
  v26 = 0;
  v4 = [v3 currentChangeTokenWithError:&v26];
  v5 = v26;

  v6 = DALoggingwithCategory();
  v7 = v6;
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = v4 == 0;
  }

  if (v8)
  {
    v9 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v6, v9))
    {
      v10 = [(ESReminderChangeTrackingHelper *)self accountID];
      *buf = 138412290;
      v28 = v10;
      _os_log_impl(&dword_0, v7, v9, "ReminderSupport: Due to error or nil current change token, couldn't initialize tracking state for accountID: %@", buf, 0xCu);
    }
  }

  else
  {
    v11 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v6, v11))
    {
      v13 = [(ESReminderChangeTrackingHelper *)self accountID];
      *buf = 138412290;
      v28 = v13;
      _os_log_impl(&dword_0, v7, v11, "ReminderSupport: Creating a new change tracking state object for accountID: %@", buf, 0xCu);
    }

    v7 = objc_alloc_init(REMChangeTrackingState);
    [v7 setLastConsumedChangeToken:v4];
    v14 = DALoggingwithCategory();
    v15 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v14, v15))
    {
      v16 = [(ESReminderChangeTrackingHelper *)self accountID];
      v17 = [v7 lastConsumedChangeToken];
      *buf = 138412546;
      v28 = v16;
      v29 = 2112;
      v30 = v17;
      _os_log_impl(&dword_0, v14, v15, "ReminderSupport: Ignoring prior changes. Initializing a new change tracking state for {accountID: %@, nowToken: %@}", buf, 0x16u);
    }

    v18 = [(ESReminderChangeTrackingHelper *)self changeTracking];
    v25 = 0;
    [v18 saveTrackingState:v7 error:&v25];
    v5 = v25;

    v19 = DALoggingwithCategory();
    v20 = v19;
    if (v5)
    {
      v21 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v19, v21))
      {
        v22 = [(ESReminderChangeTrackingHelper *)self accountID];
        v23 = [v5 localizedDescription];
        *buf = 138412546;
        v28 = v22;
        v29 = 2112;
        v30 = v23;
        _os_log_impl(&dword_0, v20, v21, "ReminderSupport: Failed to save an initialization of tracking state with error {accountID: %@, error: %@}", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v19, v11))
    {
      v24 = [(ESReminderChangeTrackingHelper *)self accountID];
      *buf = 138412290;
      v28 = v24;
      _os_log_impl(&dword_0, v20, v11, "ReminderSupport: Initial change tracking state is saved for accountID: %@", buf, 0xCu);
    }
  }
}

- (id)_fetchChangeTrackingState
{
  v3 = [(ESReminderChangeTrackingHelper *)self changeTracking];
  v4 = [v3 changeTrackingClientID];

  v5 = [(ESReminderChangeTrackingHelper *)self changeTracking];
  v17 = 0;
  v6 = [v5 getTrackingStateWithError:&v17];
  v7 = v17;

  if (v7)
  {

    v8 = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v8, v9))
    {
      v10 = [v7 localizedDescription];
      *buf = 138412546;
      v19 = v4;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_0, v8, v9, "ReminderSupport: Failed to get change tracking state with error {clientID: %@, error: %@}", buf, 0x16u);
    }

LABEL_4:
    v6 = 0;
    goto LABEL_5;
  }

  v12 = DALoggingwithCategory();
  v8 = v12;
  if (!v6)
  {
    v16 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v12, _CPLog_to_os_log_type[3]))
    {
      *buf = 138412290;
      v19 = v4;
      _os_log_impl(&dword_0, v8, v16, "ReminderSupport: The change tracking state does not exist {clientID: %@}", buf, 0xCu);
    }

    goto LABEL_4;
  }

  v13 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v12, v13))
  {
    v14 = [v6 lastConsumedChangeToken];
    v15 = [v6 lastConsumedDate];
    *buf = 138412802;
    v19 = v4;
    v20 = 2112;
    v21 = v14;
    v22 = 2112;
    v23 = v15;
    _os_log_impl(&dword_0, v8, v13, "ReminderSupport: Found and fetched change tracking state for {clientID: %@, lastSyncToken: %@, lastSyncDate: %@}", buf, 0x20u);
  }

LABEL_5:

  return v6;
}

- (BOOL)fetchChangesSinceLastConsumed
{
  v3 = [(ESReminderChangeTrackingHelper *)self changeSet];

  if (!v3)
  {
    v8 = [(ESReminderChangeTrackingHelper *)self changeTracking];

    if (!v8)
    {
      v9 = [(ESReminderChangeTrackingHelper *)self reminderStore];
      v10 = [(ESReminderChangeTrackingHelper *)self accountObjID];
      v11 = [v9 provideChangeTrackingForAccountID:v10 clientName:@"com.apple.exchangesyncd"];
      [(ESReminderChangeTrackingHelper *)self setChangeTracking:v11];
    }

    v12 = [(ESReminderChangeTrackingHelper *)self changeTracking];

    if (!v12)
    {
      v14 = DALoggingwithCategory();
      v25 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v14, v25))
      {
        v26 = [(ESReminderChangeTrackingHelper *)self accountID];
        *buf = 138412290;
        v41 = v26;
        _os_log_impl(&dword_0, v14, v25, "ReminderSupport: Could not fetch changes because change tracking client does not exist for account %@", buf, 0xCu);
      }

      goto LABEL_26;
    }

    v13 = [(ESReminderChangeTrackingHelper *)self changeTracking];
    v14 = [v13 changeTrackingClientID];

    v15 = [(ESReminderChangeTrackingHelper *)self _fetchChangeTrackingState];
    v16 = v15;
    if (!v15)
    {
      v27 = DALoggingwithCategory();
      v28 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v27, v28))
      {
        v29 = [(ESReminderChangeTrackingHelper *)self accountID];
        *buf = 138412290;
        v41 = v29;
        _os_log_impl(&dword_0, v27, v28, "ReminderSupport: Not processing local changes. Had problem getting change history for account %@", buf, 0xCu);
      }

      [(ESReminderChangeTrackingHelper *)self _initializeChangeTrackingStateIfNeeded];
      goto LABEL_25;
    }

    v17 = [v15 lastConsumedChangeToken];
    v18 = [(ESReminderChangeTrackingHelper *)self changeTracking];
    v38 = 0;
    v19 = [v18 fetchHistoryAfterToken:v17 error:&v38];
    v20 = v38;

    v21 = [v19 error];

    if (v21)
    {
      v22 = DALoggingwithCategory();
      v23 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v22, v23))
      {
        v24 = [v20 localizedDescription];
        *buf = 138412802;
        v41 = v14;
        v42 = 2112;
        v43 = v17;
        v44 = 2112;
        v45 = v24;
        _os_log_impl(&dword_0, v22, v23, "ReminderSupport: Failed to fetch change history with error {clientID: %@, token: %@, error: %@}", buf, 0x20u);
      }

      [(ESReminderChangeTrackingHelper *)self _initializeChangeTrackingState];
      goto LABEL_24;
    }

    if ([v19 isTruncated])
    {
      v30 = DALoggingwithCategory();
      v31 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v30, v31))
      {
        *buf = 138412546;
        v41 = v14;
        v42 = 2112;
        v43 = v17;
        _os_log_impl(&dword_0, v30, v31, "ReminderSupport: Fetched truncated change history.  {clientID: %@, token: %@}", buf, 0x16u);
      }

      [(ESReminderChangeTrackingHelper *)self setSinceToken:v17];
      v32 = [(ESReminderChangeTrackingHelper *)self accountObjID];
      v33 = [v19 lastChangeTokenForAccountID:v32];
      [(ESReminderChangeTrackingHelper *)self setUpToToken:v33];
    }

    else
    {
      v39[0] = @"com.apple.exchangesyncd";
      v39[1] = kCalReminderMigrationAuthor;
      v39[2] = RDStoreControllerDefaultValuesMigrationAuthor;
      v39[3] = RDStoreControllerJSONPropertiesMigrationAuthor;
      v34 = [NSArray arrayWithObjects:v39 count:4];
      [v19 applyFilterByTransactionAuthors:v34 isExclusion:1];

      [(ESReminderChangeTrackingHelper *)self setChangeSet:v19];
      [(ESReminderChangeTrackingHelper *)self setSinceToken:v17];
      v35 = [(ESReminderChangeTrackingHelper *)self accountObjID];
      v36 = [v19 lastChangeTokenForAccountID:v35];
      [(ESReminderChangeTrackingHelper *)self setUpToToken:v36];

      if ([(ESReminderChangeTrackingHelper *)self _recordChangesInChangeSet])
      {
LABEL_24:

LABEL_25:
LABEL_26:

        v4 = [(ESReminderChangeTrackingHelper *)self changeSet];
        v7 = v4 != 0;
        goto LABEL_27;
      }
    }

    [(ESReminderChangeTrackingHelper *)self _markChangesConsumed];
    goto LABEL_24;
  }

  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v4, v5))
  {
    v6 = [(ESReminderChangeTrackingHelper *)self accountID];
    *buf = 138412290;
    v41 = v6;
    _os_log_impl(&dword_0, v4, v5, "ReminderSupport: Not fetching changes because we have unprocessed changes for account %@", buf, 0xCu);
  }

  v7 = 0;
LABEL_27:

  return v7;
}

- (id)_pendingChangesInReminderDB
{
  v3 = [(ESReminderChangeTrackingHelper *)self upToToken];

  v4 = [(ESReminderChangeTrackingHelper *)self changeTracking];
  v5 = v4;
  if (v3)
  {
    v6 = [(ESReminderChangeTrackingHelper *)self upToToken];
    v18 = 0;
    v7 = [v5 fetchHistoryAfterToken:v6 error:&v18];
    v8 = v18;
    goto LABEL_3;
  }

  if (!v5)
  {
    v11 = [(ESReminderChangeTrackingHelper *)self reminderStore];
    v12 = [(ESReminderChangeTrackingHelper *)self accountObjID];
    v13 = [v11 provideChangeTrackingForAccountID:v12 clientName:@"com.apple.exchangesyncd"];
    [(ESReminderChangeTrackingHelper *)self setChangeTracking:v13];
  }

  v14 = [(ESReminderChangeTrackingHelper *)self changeTracking];

  if (v14)
  {
    v15 = [(ESReminderChangeTrackingHelper *)self _fetchChangeTrackingState];
    v5 = v15;
    if (!v15)
    {
      v8 = 0;
      v7 = 0;
      goto LABEL_4;
    }

    v6 = [v15 lastConsumedChangeToken];
    v16 = [(ESReminderChangeTrackingHelper *)self changeTracking];
    v17 = 0;
    v7 = [v16 fetchHistoryAfterToken:v6 error:&v17];
    v8 = v17;

LABEL_3:
LABEL_4:

    goto LABEL_5;
  }

  v8 = 0;
  v7 = 0;
LABEL_5:
  v19 = @"com.apple.exchangesyncd";
  v9 = [NSArray arrayWithObjects:&v19 count:1];
  [v7 applyFilterByTransactionAuthors:v9 isExclusion:1];

  return v7;
}

- (id)peekAddedListsInReminderDB
{
  v3 = objc_opt_new();
  v4 = [(ESReminderChangeTrackingHelper *)self _pendingChangesInReminderDB];
  v5 = v4;
  if (v4 && ([v4 isTruncated] & 1) == 0)
  {
    v6 = [v5 inserts];
    v7 = [(ESReminderChangeTrackingHelper *)self _addedListsInSubset:v6];

    [v3 addObjectsFromArray:v7];
    v8 = [v5 updates];
    v9 = [(ESReminderChangeTrackingHelper *)self _addedListsInSubset:v8];

    [v3 addObjectsFromArray:v9];
  }

  return v3;
}

- (id)addedListsInChangeSet
{
  v3 = objc_opt_new();
  v4 = [(ESReminderChangeTrackingHelper *)self changeSet];
  if (v4)
  {
    v5 = v4;
    v6 = [(ESReminderChangeTrackingHelper *)self changeSet];
    v7 = [v6 isTruncated];

    if ((v7 & 1) == 0)
    {
      v8 = [(ESReminderChangeTrackingHelper *)self changeSet];
      v9 = [v8 inserts];
      v10 = [(ESReminderChangeTrackingHelper *)self _addedListsInSubset:v9];

      [v3 addObjectsFromArray:v10];
      v11 = [(ESReminderChangeTrackingHelper *)self changeSet];
      v12 = [v11 updates];
      v13 = [(ESReminderChangeTrackingHelper *)self _addedListsInSubset:v12];

      [v3 addObjectsFromArray:v13];
    }
  }

  return v3;
}

- (id)_addedListsInSubset:(id)a3
{
  v3 = a3;
  v32 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v39;
    v33 = _CPLog_to_os_log_type[4];
    type = _CPLog_to_os_log_type[7];
    *&v5 = 138412546;
    v31 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v38 + 1) + 8 * i);
        v11 = [v10 changedObjectID];
        v12 = [v11 entityName];
        v13 = +[REMList cdEntityName];
        v14 = [v12 isEqualToString:v13];

        if (v14)
        {
          reminderStore = self->_reminderStore;
          v16 = [v10 changedObjectID];
          v37 = v7;
          v17 = [(REMStore *)reminderStore fetchListWithObjectID:v16 error:&v37];
          v18 = v37;

          if (v17)
          {
            v19 = [v17 externalIdentifier];

            if (!v19)
            {
              v20 = DALoggingwithCategory();
              if (os_log_type_enabled(v20, type))
              {
                v21 = [v11 uuid];
                v22 = [v21 UUIDString];
                v23 = [(ESReminderChangeTrackingHelper *)self accountID];
                *buf = v31;
                v43 = v22;
                v44 = 2112;
                v45 = v23;
                _os_log_impl(&dword_0, v20, type, "ReminderSupport: Change set contains added list: %@, for account %@", buf, 0x16u);
              }

              [v32 addObject:v17];
            }
          }

          else
          {
            v24 = [v10 updatedProperties];
            v25 = [v24 containsObject:@"markedForDeletion"];

            if ((v25 & 1) == 0)
            {
              v26 = DALoggingwithCategory();
              if (os_log_type_enabled(v26, v33))
              {
                v27 = [v11 uuid];
                v28 = [v27 UUIDString];
                v29 = [(ESReminderChangeTrackingHelper *)self accountID];
                *buf = v31;
                v43 = v28;
                v44 = 2112;
                v45 = v29;
                _os_log_impl(&dword_0, v26, v33, "ReminderSupport: Change set contains list: %@, for account %@. But it is not found in reminder store!", buf, 0x16u);
              }
            }
          }

          v7 = v18;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v32;
}

- (id)peekUndeletedListsInReminderDB
{
  v21 = objc_opt_new();
  v22 = self;
  v3 = [(ESReminderChangeTrackingHelper *)self _pendingChangesInReminderDB];
  v4 = v3;
  if (!v3 || ([v3 isTruncated] & 1) != 0)
  {
    v5 = 0;
    goto LABEL_21;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v20 = v4;
  obj = [v4 updates];
  v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v6)
  {
    v23 = 0;
    goto LABEL_20;
  }

  v7 = v6;
  v23 = 0;
  v8 = *v27;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v27 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v26 + 1) + 8 * i);
      v11 = [v10 changedObjectID];
      v12 = [v11 entityName];
      v13 = +[REMList cdEntityName];
      if ([v12 isEqualToString:v13])
      {
        v14 = [v10 updatedProperties];
        v15 = [v14 containsObject:@"markedForDeletion"];

        if (!v15)
        {
          goto LABEL_16;
        }

        reminderStore = v22->_reminderStore;
        v17 = [v10 changedObjectID];
        v25 = v23;
        v12 = [(REMStore *)reminderStore fetchListWithObjectID:v17 error:&v25];
        v18 = v25;

        if (v12)
        {
          [v21 addObject:v12];
        }

        v23 = v18;
      }

      else
      {
      }

LABEL_16:
    }

    v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v7);
LABEL_20:

  v4 = v20;
  v5 = v23;
LABEL_21:

  return v21;
}

- (id)undeletedListsInChangeSet
{
  v30 = objc_opt_new();
  v3 = [(ESReminderChangeTrackingHelper *)self changeSet];
  if (!v3 || (v4 = v3, -[ESReminderChangeTrackingHelper changeSet](self, "changeSet"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isTruncated], v5, v4, (v6 & 1) != 0))
  {
    v7 = 0;
    goto LABEL_24;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = [(ESReminderChangeTrackingHelper *)self changeSet];
  v9 = [v8 updates];

  v10 = [v9 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (!v10)
  {
    v7 = 0;
    goto LABEL_23;
  }

  v12 = v10;
  v32 = self;
  v7 = 0;
  v13 = *v36;
  type = _CPLog_to_os_log_type[7];
  *&v11 = 138412546;
  v29 = v11;
  do
  {
    v14 = 0;
    v33 = v12;
    do
    {
      if (*v36 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v35 + 1) + 8 * v14);
      v16 = [v15 changedObjectID];
      v17 = [v16 entityName];
      v18 = +[REMList cdEntityName];
      if (([v17 isEqualToString:v18] & 1) == 0)
      {

        v23 = v7;
LABEL_17:

        v7 = v23;
        goto LABEL_19;
      }

      v19 = [v15 updatedProperties];
      v20 = [v19 containsObject:@"markedForDeletion"];

      if (v20)
      {
        reminderStore = v32->_reminderStore;
        v22 = [v15 changedObjectID];
        v34 = v7;
        v17 = [(REMStore *)reminderStore fetchListWithObjectID:v22 error:&v34];
        v23 = v34;

        if (v17)
        {
          v24 = DALoggingwithCategory();
          if (os_log_type_enabled(v24, type))
          {
            v25 = [v16 uuid];
            v26 = [v25 UUIDString];
            v27 = [(ESReminderChangeTrackingHelper *)v32 accountID];
            *buf = v29;
            v40 = v26;
            v41 = 2112;
            v42 = v27;
            _os_log_impl(&dword_0, v24, type, "ReminderSupport: Change set updates contains undeleted list: %@, for account %@.", buf, 0x16u);
          }

          [v30 addObject:v17];
        }

        v12 = v33;
        goto LABEL_17;
      }

      v12 = v33;
LABEL_19:

      v14 = v14 + 1;
    }

    while (v12 != v14);
    v12 = [v9 countByEnumeratingWithState:&v35 objects:v43 count:16];
  }

  while (v12);
LABEL_23:

LABEL_24:

  return v30;
}

- (id)modifiedListsInChangeSet
{
  v3 = objc_opt_new();
  v4 = [(ESReminderChangeTrackingHelper *)self changeSet];
  if (v4)
  {
    v5 = v4;
    v6 = [(ESReminderChangeTrackingHelper *)self changeSet];
    v7 = [v6 isTruncated];

    if ((v7 & 1) == 0)
    {
      v8 = [(ESReminderChangeTrackingHelper *)self changeSet];
      v9 = [v8 inserts];
      v10 = [(ESReminderChangeTrackingHelper *)self _modifiedListsInSubset:v9];

      [v3 addObjectsFromArray:v10];
      v11 = [(ESReminderChangeTrackingHelper *)self changeSet];
      v12 = [v11 updates];
      v13 = [(ESReminderChangeTrackingHelper *)self _modifiedListsInSubset:v12];

      [v3 addObjectsFromArray:v13];
    }
  }

  return v3;
}

- (id)_modifiedListsInSubset:(id)a3
{
  v3 = a3;
  v38 = objc_opt_new();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v45;
    type = _CPLog_to_os_log_type[7];
    v36 = _CPLog_to_os_log_type[4];
    v9 = &PLLogRegisteredEvent_ptr;
    *&v5 = 138412546;
    v35 = v5;
    v40 = *v45;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v45 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v44 + 1) + 8 * i);
        v12 = [v11 changedObjectID];
        v13 = [v12 entityName];
        v14 = [v9[271] cdEntityName];
        v15 = [v13 isEqualToString:v14];

        if (v15)
        {
          v16 = [v11 updatedProperties];
          v17 = [v16 mutableCopy];

          [v17 removeObject:@"reminderIDsMergeableOrdering"];
          [v17 removeObject:@"reminders"];
          [v17 removeObject:@"resolutionTokenMap"];
          if ([v17 count])
          {
            v18 = v6;
            reminderStore = self->_reminderStore;
            v20 = [v11 changedObjectID];
            v43 = v7;
            v21 = [(REMStore *)reminderStore fetchListWithObjectID:v20 error:&v43];
            v22 = v43;

            if (v21)
            {
              v23 = [v21 externalIdentifier];

              v6 = v18;
              if (v23)
              {
                v24 = DALoggingwithCategory();
                if (os_log_type_enabled(v24, type))
                {
                  v37 = [v12 uuid];
                  v25 = [v37 UUIDString];
                  v26 = [v21 externalIdentifier];
                  v27 = [(ESReminderChangeTrackingHelper *)self accountID];
                  *buf = 138412802;
                  v49 = v25;
                  v50 = 2112;
                  v51 = v26;
                  v52 = 2112;
                  v53 = v27;
                  _os_log_impl(&dword_0, v24, type, "ReminderSupport: Change set contains modified list: %@, with external ID: %@, for account %@", buf, 0x20u);

                  v6 = v18;
                }

                [v38 addObject:v21];
              }
            }

            else
            {
              v28 = [v11 updatedProperties];
              v29 = [v28 containsObject:@"markedForDeletion"];

              v6 = v18;
              if ((v29 & 1) == 0)
              {
                v30 = DALoggingwithCategory();
                if (os_log_type_enabled(v30, v36))
                {
                  v31 = [v12 uuid];
                  v32 = [v31 UUIDString];
                  v33 = [(ESReminderChangeTrackingHelper *)self accountID];
                  *buf = v35;
                  v49 = v32;
                  v50 = 2112;
                  v51 = v33;
                  _os_log_impl(&dword_0, v30, v36, "ReminderSupport: Change set contains list: %@, for account %@. But it is not found in reminder store!", buf, 0x16u);

                  v6 = v18;
                }
              }
            }

            v7 = v22;
            v8 = v40;
            v9 = &PLLogRegisteredEvent_ptr;
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v38;
}

- (id)deletedListsInChangeSet
{
  v3 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v4 = [(ESReminderChangeTrackingHelper *)self changeSet];
  v5 = [v4 deletes];

  v37 = [v5 countByEnumeratingWithState:&v39 objects:v49 count:16];
  v7 = 0;
  if (v37)
  {
    v36 = *v40;
    type = _CPLog_to_os_log_type[7];
    v33 = _CPLog_to_os_log_type[4];
    *&v6 = 138412546;
    v30 = v6;
    v34 = self;
    v31 = v3;
    v32 = v5;
    do
    {
      for (i = 0; i != v37; i = i + 1)
      {
        if (*v40 != v36)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v39 + 1) + 8 * i);
        v10 = [v9 changedObjectID];
        v11 = [v10 entityName];
        v12 = +[REMList cdEntityName];
        v13 = [v11 isEqualToString:v12];

        if (v13)
        {
          reminderStore = self->_reminderStore;
          v15 = [v9 changedObjectID];
          v38 = v7;
          v16 = [(REMStore *)reminderStore fetchListIncludingMarkedForDeleteWithObjectID:v15 error:&v38];
          v17 = v38;

          if (v16)
          {
            v18 = [v16 externalIdentifier];

            if (v18)
            {
              v19 = DALoggingwithCategory();
              if (os_log_type_enabled(v19, type))
              {
                v20 = [v16 objectID];
                v21 = [v20 uuid];
                v22 = [v21 UUIDString];
                v23 = [v16 externalIdentifier];
                v24 = [(ESReminderChangeTrackingHelper *)v34 accountID];
                *buf = 138412802;
                v44 = v22;
                v45 = 2112;
                v46 = v23;
                v47 = 2112;
                v48 = v24;
                _os_log_impl(&dword_0, v19, type, "ReminderSupport: Change set contains deleted list with local ID: %@, external ID: %@, for account %@", buf, 0x20u);

                v5 = v32;
                self = v34;

                v3 = v31;
              }

              [v3 addObject:v16];
            }
          }

          else
          {
            v25 = DALoggingwithCategory();
            if (os_log_type_enabled(v25, v33))
            {
              v26 = [v10 uuid];
              v27 = [v26 UUIDString];
              v28 = [(ESReminderChangeTrackingHelper *)self accountID];
              *buf = v30;
              v44 = v27;
              v45 = 2112;
              v46 = v28;
              _os_log_impl(&dword_0, v25, v33, "ReminderSupport: Change set contains deleted list: %@, for account %@. But it is not found in reminder store!", buf, 0x16u);

              self = v34;
              v5 = v32;
            }
          }

          v7 = v17;
        }
      }

      v37 = [v5 countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v37);
  }

  return v3;
}

- (id)lazyDeletedListsInChangeSet
{
  v33 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v3 = [(ESReminderChangeTrackingHelper *)self changeSet];
  v4 = [v3 updates];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (!v5)
  {
    v8 = 0;
    goto LABEL_23;
  }

  v7 = v5;
  v8 = 0;
  v38 = *v41;
  type = _CPLog_to_os_log_type[7];
  v34 = _CPLog_to_os_log_type[4];
  *&v6 = 138412546;
  v31 = v6;
  v35 = self;
  do
  {
    v9 = 0;
    do
    {
      if (*v41 != v38)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v40 + 1) + 8 * v9);
      v11 = [v10 changedObjectID];
      v12 = [v11 entityName];
      v13 = +[REMList cdEntityName];
      if ([v12 isEqualToString:v13])
      {
        v14 = [v10 updatedProperties];
        v15 = [v14 containsObject:@"markedForDeletion"];

        if (!v15)
        {
          goto LABEL_15;
        }

        reminderStore = self->_reminderStore;
        v17 = [v10 changedObjectID];
        v39 = v8;
        v12 = [(REMStore *)reminderStore fetchListIncludingMarkedForDeleteWithObjectID:v17 error:&v39];
        v18 = v39;

        if (v12)
        {
          v19 = [v12 externalIdentifierForMarkedForDeletionObject];

          if (v19)
          {
            v20 = DALoggingwithCategory();
            if (os_log_type_enabled(v20, type))
            {
              v21 = [v12 externalIdentifierForMarkedForDeletionObject];
              v32 = [v12 objectID];
              v22 = [v32 uuid];
              v23 = [v22 UUIDString];
              v24 = [(ESReminderChangeTrackingHelper *)self accountID];
              *buf = 138412802;
              v45 = v21;
              v46 = 2112;
              v47 = v23;
              v48 = 2112;
              v49 = v24;
              _os_log_impl(&dword_0, v20, type, "ReminderSupport: Change set contains lazy deleted folder with external ID: %@, local ID: %@, for account %@", buf, 0x20u);

              self = v35;
            }

            [v33 addObject:v12];
          }
        }

        else
        {
          v25 = DALoggingwithCategory();
          if (os_log_type_enabled(v25, v34))
          {
            v26 = [v11 uuid];
            v27 = [v26 UUIDString];
            v28 = [(ESReminderChangeTrackingHelper *)v35 accountID];
            *buf = v31;
            v45 = v27;
            v46 = 2112;
            v47 = v28;
            _os_log_impl(&dword_0, v25, v34, "ReminderSupport: Change set contains lazy deleted list: %@, for account %@. But it is not found in reminder store!", buf, 0x16u);

            self = v35;
          }
        }
      }

      else
      {

        v18 = v8;
      }

      v8 = v18;
LABEL_15:

      v9 = v9 + 1;
    }

    while (v7 != v9);
    v29 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
    v7 = v29;
  }

  while (v29);
LABEL_23:

  return v33;
}

- (id)addedAndModifiedRemindersInChangeSet
{
  v3 = objc_opt_new();
  v4 = [(ESReminderChangeTrackingHelper *)self changeSet];
  if (v4)
  {
    v5 = v4;
    v6 = [(ESReminderChangeTrackingHelper *)self changeSet];
    v7 = [v6 isTruncated];

    if ((v7 & 1) == 0)
    {
      v8 = [(ESReminderChangeTrackingHelper *)self changeSet];
      v9 = [v8 inserts];
      v10 = [(ESReminderChangeTrackingHelper *)self _modifiedRemindersInSubset:v9];

      [v3 addObjectsFromArray:v10];
      v11 = [(ESReminderChangeTrackingHelper *)self changeSet];
      v12 = [v11 updates];
      v13 = [(ESReminderChangeTrackingHelper *)self _modifiedRemindersInSubset:v12];

      [v3 addObjectsFromArray:v13];
    }
  }

  return v3;
}

- (id)_modifiedRemindersInSubset:(id)a3
{
  v3 = a3;
  v26 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (!v4)
  {
    v7 = 0;
    goto LABEL_21;
  }

  v6 = v4;
  v7 = 0;
  v8 = *v32;
  type = _CPLog_to_os_log_type[4];
  *&v5 = 138412546;
  v24 = v5;
  do
  {
    v9 = 0;
    v28 = v6;
    do
    {
      if (*v32 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v31 + 1) + 8 * v9);
      v11 = [v10 changedObjectID];
      v12 = [v11 entityName];
      v13 = +[REMReminder cdEntityName];
      if ([v12 isEqualToString:v13])
      {
        v14 = [v10 updatedProperties];
        v15 = [v14 containsObject:@"markedForDeletion"];

        if (v15)
        {
          v6 = v28;
          goto LABEL_17;
        }

        reminderStore = self->_reminderStore;
        v18 = [v10 changedObjectID];
        v30 = v7;
        v12 = [(REMStore *)reminderStore fetchReminderWithObjectID:v18 error:&v30];
        v16 = v30;

        if (v12)
        {
          [v26 addObject:v12];
        }

        else
        {
          v19 = DALoggingwithCategory();
          if (os_log_type_enabled(v19, type))
          {
            v20 = [v11 uuid];
            v21 = [v20 UUIDString];
            v22 = [(ESReminderChangeTrackingHelper *)self accountID];
            *buf = v24;
            v36 = v21;
            v37 = 2112;
            v38 = v22;
            _os_log_impl(&dword_0, v19, type, "ReminderSupport: Change set contains reminder: %@, for account %@. But it is not found in reminder store!", buf, 0x16u);
          }
        }

        v6 = v28;
      }

      else
      {

        v16 = v7;
      }

      v7 = v16;
LABEL_17:

      v9 = v9 + 1;
    }

    while (v6 != v9);
    v6 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  }

  while (v6);
LABEL_21:

  return v26;
}

- (id)undeletedRemindersInChangeSet
{
  v19 = objc_opt_new();
  v20 = self;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = [(ESReminderChangeTrackingHelper *)self changeSet];
  v4 = [v3 updates];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v5)
  {
    v21 = 0;
    goto LABEL_17;
  }

  v6 = v5;
  v21 = 0;
  v7 = *v25;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v25 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v24 + 1) + 8 * i);
      v10 = [v9 changedObjectID];
      v11 = [v10 entityName];
      v12 = +[REMReminder cdEntityName];
      if ([v11 isEqualToString:v12])
      {
        v13 = [v9 updatedProperties];
        v14 = [v13 containsObject:@"markedForDeletion"];

        if (!v14)
        {
          goto LABEL_13;
        }

        reminderStore = v20->_reminderStore;
        v16 = [v9 changedObjectID];
        v23 = v21;
        v11 = [(REMStore *)reminderStore fetchReminderWithObjectID:v16 error:&v23];
        v17 = v23;

        if (v11)
        {
          [v19 addObject:v11];
        }

        v21 = v17;
      }

      else
      {
      }

LABEL_13:
    }

    v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v6);
LABEL_17:

  return v19;
}

- (id)lazyDeletedRemindersInChangeSetForFolderID:(id)a3
{
  v25 = a3;
  v24 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = [(ESReminderChangeTrackingHelper *)self changeSet];
  v5 = [v4 updates];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_22;
  }

  v7 = v6;
  v27 = self;
  v8 = 0;
  v9 = *v32;
  v10 = &PLLogRegisteredEvent_ptr;
  v26 = *v32;
  do
  {
    v11 = 0;
    v28 = v7;
    do
    {
      if (*v32 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v31 + 1) + 8 * v11);
      v13 = [v12 changedObjectID];
      v14 = [v13 entityName];
      v15 = [v10[275] cdEntityName];
      if (![v14 isEqualToString:v15])
      {
        v21 = v8;
        goto LABEL_13;
      }

      v16 = v10;
      v17 = [v12 updatedProperties];
      v18 = [v17 containsObject:@"markedForDeletion"];

      if (v18)
      {
        reminderStore = v27->_reminderStore;
        v20 = [v12 changedObjectID];
        v30 = v8;
        v14 = [(REMStore *)reminderStore fetchReminderIncludingConcealedWithObjectID:v20 error:&v30];
        v21 = v30;

        if (v14)
        {
          v15 = [(ESReminderChangeTrackingHelper *)v27 _remListExternalIdentifierForDeletedReminderChangeObject:v12];
          v10 = v16;
          if ([v25 isEqualToString:v15])
          {
            [v24 addObject:v14];
          }

          v9 = v26;
          v7 = v28;
LABEL_13:
        }

        else
        {
          v9 = v26;
          v10 = v16;
          v7 = v28;
        }

        v8 = v21;
        goto LABEL_16;
      }

      v10 = v16;
      v7 = v28;
LABEL_16:

      v11 = v11 + 1;
    }

    while (v7 != v11);
    v22 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    v7 = v22;
  }

  while (v22);
LABEL_22:

  return v24;
}

- (id)_lazyDeletedReminderFolderIDsInChangeSet
{
  v23 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v3 = [(ESReminderChangeTrackingHelper *)self changeSet];
  v4 = [v3 updates];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v5)
  {
    v7 = 0;
    goto LABEL_19;
  }

  v6 = v5;
  v25 = self;
  v7 = 0;
  v8 = *v30;
  v9 = &PLLogRegisteredEvent_ptr;
  v24 = *v30;
  do
  {
    v10 = 0;
    v26 = v6;
    do
    {
      if (*v30 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v29 + 1) + 8 * v10);
      v12 = [v11 changedObjectID];
      v13 = [v12 entityName];
      v14 = [v9[275] cdEntityName];
      if (![v13 isEqualToString:v14])
      {
        goto LABEL_10;
      }

      v15 = v7;
      v16 = v9;
      v17 = [v11 updatedProperties];
      v18 = [v17 containsObject:@"markedForDeletion"];

      if (v18)
      {
        reminderStore = v25->_reminderStore;
        v20 = [v11 changedObjectID];
        v28 = v15;
        v13 = [(REMStore *)reminderStore fetchReminderIncludingConcealedWithObjectID:v20 error:&v28];
        v7 = v28;

        if (v13)
        {
          v14 = [(ESReminderChangeTrackingHelper *)v25 _remListExternalIdentifierForDeletedReminderChangeObject:v11];
          [v23 addObject:v14];
          v8 = v24;
          v9 = v16;
          v6 = v26;
LABEL_10:
        }

        else
        {
          v8 = v24;
          v9 = v16;
          v6 = v26;
        }

        goto LABEL_13;
      }

      v9 = v16;
      v6 = v26;
      v7 = v15;
LABEL_13:

      v10 = v10 + 1;
    }

    while (v6 != v10);
    v21 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    v6 = v21;
  }

  while (v21);
LABEL_19:

  return v23;
}

- (id)deletedRemindersInChangeSetForFolderID:(id)a3
{
  v31 = a3;
  v29 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v4 = [(ESReminderChangeTrackingHelper *)self changeSet];
  v5 = [v4 deletes];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    v10 = *v36;
    type = _CPLog_to_os_log_type[4];
    *&v7 = 138412546;
    v28 = v7;
    do
    {
      v11 = 0;
      v32 = v8;
      do
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v35 + 1) + 8 * v11);
        v13 = [v12 changedObjectID];
        v14 = [v13 entityName];
        v15 = +[REMReminder cdEntityName];
        v16 = [v14 isEqualToString:v15];

        if (v16)
        {
          v17 = v10;
          reminderStore = self->_reminderStore;
          [v12 changedObjectID];
          v20 = v19 = self;
          v34 = v9;
          v21 = [(REMStore *)reminderStore fetchReminderIncludingConcealedWithObjectID:v20 error:&v34];
          v22 = v34;

          if (v21)
          {
            v23 = [(ESReminderChangeTrackingHelper *)v19 _remListExternalIdentifierForDeletedReminderChangeObject:v12];
            self = v19;
            if ([v31 isEqualToString:v23])
            {
              [v29 addObject:v21];
            }
          }

          else
          {
            v23 = DALoggingwithCategory();
            if (os_log_type_enabled(v23, type))
            {
              v24 = [v13 uuid];
              v25 = [v24 UUIDString];
              v26 = [(ESReminderChangeTrackingHelper *)v19 accountID];
              *buf = v28;
              v40 = v25;
              v41 = 2112;
              v42 = v26;
              _os_log_impl(&dword_0, v23, type, "ReminderSupport: Change set contains deleted reminder: %@, for account %@. But it is not found in reminder store!", buf, 0x16u);

              self = v19;
            }

            else
            {
              self = v19;
            }
          }

          v10 = v17;

          v9 = v22;
          v8 = v32;
        }

        v11 = v11 + 1;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v29;
}

- (id)_deletedReminderFolderIDsInChangeSet
{
  v21 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = [(ESReminderChangeTrackingHelper *)self changeSet];
  v4 = [v3 deletes];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v25;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [v10 changedObjectID];
        v12 = [v11 entityName];
        v13 = +[REMReminder cdEntityName];
        v14 = [v12 isEqualToString:v13];

        if (v14)
        {
          reminderStore = self->_reminderStore;
          v16 = [v10 changedObjectID];
          v23 = v7;
          v17 = [(REMStore *)reminderStore fetchReminderIncludingConcealedWithObjectID:v16 error:&v23];
          v18 = v23;

          if (v17)
          {
            v19 = [(ESReminderChangeTrackingHelper *)self _remListExternalIdentifierForDeletedReminderChangeObject:v10];
            [v21 addObject:v19];
          }

          v7 = v18;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v21;
}

- (BOOL)_recordChangesInChangeSet
{
  v3 = [(ESReminderChangeTrackingHelper *)self changeSet];
  if (v3 && (v4 = v3, -[ESReminderChangeTrackingHelper changeSet](self, "changeSet"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isTruncated], v5, v4, (v6 & 1) == 0))
  {
    v8 = [(ESReminderChangeTrackingHelper *)self _recordAddedLists];
    v9 = v8 | [(ESReminderChangeTrackingHelper *)self _recordUndeletedLists];
    v10 = [(ESReminderChangeTrackingHelper *)self _recordModifiedLists];
    v11 = v9 | v10 | [(ESReminderChangeTrackingHelper *)self _recordDeletedLists];
    v12 = [(ESReminderChangeTrackingHelper *)self _recordLazyDeletedLists];
    v13 = v12 | [(ESReminderChangeTrackingHelper *)self _recordModifiedReminders];
    v14 = v11 | v13 | [(ESReminderChangeTrackingHelper *)self _recordUndeletedReminders];
    LOBYTE(v13) = [(ESReminderChangeTrackingHelper *)self _recordDeletedReminders];
    v7 = v14 | v13 | [(ESReminderChangeTrackingHelper *)self _recordLazyDeletedReminders];
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (BOOL)_recordAddedLists
{
  v3 = [(ESReminderChangeTrackingHelper *)self addedListsInChangeSet];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v16 + 1) + 8 * i) objectID];
        v10 = [v9 uuid];
        v11 = [v10 UUIDString];

        if (v11)
        {
          v12 = [(ESReminderChangeTrackingHelper *)self foldersAddedInChangeSet];
          v13 = [v12 containsObject:v11];

          if ((v13 & 1) == 0)
          {
            v14 = [(ESReminderChangeTrackingHelper *)self foldersAddedInChangeSet];
            [v14 addObject:v11];

            v6 = 1;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)_recordUndeletedLists
{
  v3 = [(ESReminderChangeTrackingHelper *)self undeletedListsInChangeSet];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v16 + 1) + 8 * i) objectID];
        v10 = [v9 uuid];
        v11 = [v10 UUIDString];

        if (v11)
        {
          v12 = [(ESReminderChangeTrackingHelper *)self foldersAddedInChangeSet];
          v13 = [v12 containsObject:v11];

          if ((v13 & 1) == 0)
          {
            v14 = [(ESReminderChangeTrackingHelper *)self foldersAddedInChangeSet];
            [v14 addObject:v11];

            v6 = 1;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)_recordModifiedLists
{
  v3 = [(ESReminderChangeTrackingHelper *)self modifiedListsInChangeSet];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) externalIdentifier];
        if (v9)
        {
          v10 = [(ESReminderChangeTrackingHelper *)self foldersChangedInChangeSet];
          v11 = [v10 containsObject:v9];

          if ((v11 & 1) == 0)
          {
            v12 = [(ESReminderChangeTrackingHelper *)self foldersChangedInChangeSet];
            [v12 addObject:v9];

            v6 = 1;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)_recordDeletedLists
{
  v3 = [(ESReminderChangeTrackingHelper *)self deletedListsInChangeSet];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) externalIdentifierForMarkedForDeletionObject];
        if (v9)
        {
          v10 = [(ESReminderChangeTrackingHelper *)self foldersChangedInChangeSet];
          v11 = [v10 containsObject:v9];

          if ((v11 & 1) == 0)
          {
            v12 = [(ESReminderChangeTrackingHelper *)self foldersChangedInChangeSet];
            [v12 addObject:v9];

            v6 = 1;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)_recordLazyDeletedLists
{
  v3 = [(ESReminderChangeTrackingHelper *)self lazyDeletedListsInChangeSet];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) externalIdentifierForMarkedForDeletionObject];
        if (v9)
        {
          v10 = [(ESReminderChangeTrackingHelper *)self foldersChangedInChangeSet];
          v11 = [v10 containsObject:v9];

          if ((v11 & 1) == 0)
          {
            v12 = [(ESReminderChangeTrackingHelper *)self foldersChangedInChangeSet];
            [v12 addObject:v9];

            v6 = 1;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)_recordModifiedReminders
{
  v2 = self;
  v3 = [(ESReminderChangeTrackingHelper *)self addedAndModifiedRemindersInChangeSet];
  LOBYTE(v2) = [(ESReminderChangeTrackingHelper *)v2 _recordReminders:v3];

  return v2;
}

- (BOOL)_recordUndeletedReminders
{
  v2 = self;
  v3 = [(ESReminderChangeTrackingHelper *)self undeletedRemindersInChangeSet];
  LOBYTE(v2) = [(ESReminderChangeTrackingHelper *)v2 _recordReminders:v3];

  return v2;
}

- (BOOL)_recordReminders:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v20;
    while (1)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v19 + 1) + 8 * i) list];
        v11 = [v10 externalIdentifier];
        if (v11)
        {
          v12 = v11;
        }

        else
        {
          v13 = [v10 objectID];
          v14 = [v13 uuid];
          v12 = [v14 UUIDString];

          if (!v12)
          {
            goto LABEL_11;
          }
        }

        v15 = [(ESReminderChangeTrackingHelper *)self foldersContainingReminderChangesInChangeSet];
        v16 = [v15 containsObject:v12];

        if ((v16 & 1) == 0)
        {
          v17 = [(ESReminderChangeTrackingHelper *)self foldersContainingReminderChangesInChangeSet];
          [v17 addObject:v12];

          v7 = 1;
        }

LABEL_11:
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (!v6)
      {
        goto LABEL_15;
      }
    }
  }

  v7 = 0;
LABEL_15:

  return v7 & 1;
}

- (BOOL)_recordDeletedReminders
{
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [(ESReminderChangeTrackingHelper *)self changeSet];
  v4 = [v3 deletes];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v24 = 0;
    v8 = *v28;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [v10 changedObjectID];
        v12 = [v11 entityName];
        v13 = +[REMReminder cdEntityName];
        v14 = [v12 isEqualToString:v13];

        if (v14)
        {
          reminderStore = self->_reminderStore;
          v16 = [v10 changedObjectID];
          v26 = v7;
          v17 = [(REMStore *)reminderStore fetchReminderIncludingConcealedWithObjectID:v16 error:&v26];
          v18 = v26;

          if (v17)
          {
            v19 = [(ESReminderChangeTrackingHelper *)self _remListExternalIdentifierForDeletedReminderChangeObject:v10];
            if (v19)
            {
              v20 = [(ESReminderChangeTrackingHelper *)self foldersContainingReminderChangesInChangeSet];
              v21 = [v20 containsObject:v19];

              if ((v21 & 1) == 0)
              {
                v22 = [(ESReminderChangeTrackingHelper *)self foldersContainingReminderChangesInChangeSet];
                [v22 addObject:v19];

                v24 = 1;
              }
            }
          }

          v7 = v18;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v24 = 0;
  }

  return v24 & 1;
}

- (BOOL)_recordLazyDeletedReminders
{
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v3 = [(ESReminderChangeTrackingHelper *)self changeSet];
  v4 = [v3 updates];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v5)
  {
    v7 = 0;
    v27 = 0;
    goto LABEL_23;
  }

  v6 = v5;
  v28 = self;
  v7 = 0;
  v27 = 0;
  v8 = *v33;
  v9 = &PLLogRegisteredEvent_ptr;
  do
  {
    v10 = 0;
    v29 = v6;
    do
    {
      if (*v33 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v32 + 1) + 8 * v10);
      v12 = [v11 changedObjectID];
      v13 = [v12 entityName];
      v14 = [v9[275] cdEntityName];
      if (![v13 isEqualToString:v14])
      {
        v21 = v7;
        goto LABEL_14;
      }

      v15 = v8;
      v16 = v9;
      v17 = [v11 updatedProperties];
      v18 = [v17 containsObject:@"markedForDeletion"];

      if (v18)
      {
        reminderStore = v28->_reminderStore;
        v20 = [v11 changedObjectID];
        v31 = v7;
        v13 = [(REMStore *)reminderStore fetchReminderIncludingConcealedWithObjectID:v20 error:&v31];
        v21 = v31;

        if (v13)
        {
          v14 = [(ESReminderChangeTrackingHelper *)v28 _remListExternalIdentifierForDeletedReminderChangeObject:v11];
          if (v14)
          {
            v22 = [(ESReminderChangeTrackingHelper *)v28 foldersContainingReminderChangesInChangeSet];
            v23 = [v22 containsObject:v14];

            if ((v23 & 1) == 0)
            {
              v24 = [(ESReminderChangeTrackingHelper *)v28 foldersContainingReminderChangesInChangeSet];
              [v24 addObject:v14];

              v27 = 1;
            }
          }

          v9 = v16;
          v8 = v15;
          v6 = v29;
LABEL_14:
        }

        else
        {
          v9 = v16;
          v8 = v15;
          v6 = v29;
        }

        v7 = v21;
        goto LABEL_17;
      }

      v9 = v16;
      v8 = v15;
      v6 = v29;
LABEL_17:

      v10 = v10 + 1;
    }

    while (v6 != v10);
    v25 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    v6 = v25;
  }

  while (v25);
LABEL_23:

  return v27 & 1;
}

- (id)_fethAuxiliaryChangeInfosForReminderChangeObject:(id)a3
{
  v4 = a3;
  v5 = [(ESReminderChangeTrackingHelper *)self changeTracking];

  if (v5)
  {
    v6 = [(ESReminderChangeTrackingHelper *)self changeTracking];
    v12 = 0;
    v7 = [v6 fetchAuxiliaryChangeInfosOfType:objc_opt_class() withChangeObject:v4 error:&v12];
    v8 = v12;

    if (v8)
    {
      v9 = DALoggingwithCategory();
      v10 = _CPLog_to_os_log_type[7];
      if (os_log_type_enabled(v9, v10))
      {
        *buf = 138412290;
        v14 = v8;
        _os_log_impl(&dword_0, v9, v10, "ReminderSupport: fetchAuxiliaryChangeInfosOfType returns error %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_remListExternalIdentifierForDeletedReminderChangeObject:(id)a3
{
  v4 = a3;
  v5 = [(ESReminderChangeTrackingHelper *)self _fethAuxiliaryChangeInfosForReminderChangeObject:v4];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v5 auxiliaryChangeInfos];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v16 + 1) + 8 * i) storage];
        v12 = [v11 objectForKeyedSubscript:@"oldExternalIdentifier"];

        if (v12)
        {
          v13 = DALoggingwithCategory();
          v14 = _CPLog_to_os_log_type[7];
          if (os_log_type_enabled(v13, v14))
          {
            *buf = 138412546;
            v21 = v12;
            v22 = 2112;
            v23 = v4;
            _os_log_impl(&dword_0, v13, v14, "ReminderSupport: Found reminder list external identifier: %@, for change object: %@", buf, 0x16u);
          }

          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_13:

  return v12;
}

- (void)_markChangesConsumed
{
  v3 = DALoggingwithCategory();
  v4 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v3, v4))
  {
    v5 = [(ESReminderChangeTrackingHelper *)self accountID];
    v6 = [(ESReminderChangeTrackingHelper *)self upToToken];
    *buf = 138412546;
    v31 = v5;
    v32 = 2112;
    v33 = v6;
    _os_log_impl(&dword_0, v3, v4, "ReminderSupport: Marking change consumed for account %@, lastConsumedChangeToken %@", buf, 0x16u);
  }

  v7 = [(ESReminderChangeTrackingHelper *)self changeTracking];

  if (v7)
  {
    v8 = [(ESReminderChangeTrackingHelper *)self changeTracking];
    v9 = [v8 changeTrackingClientID];

    v10 = [(ESReminderChangeTrackingHelper *)self upToToken];

    if (v10)
    {
      v11 = [(ESReminderChangeTrackingHelper *)self upToToken];
      v12 = [(ESReminderChangeTrackingHelper *)self sinceToken];
      v29 = 0;
      v13 = [v11 compareToken:v12 error:&v29];
      v14 = v29;

      if (v13 == &dword_4)
      {
        v15 = objc_alloc_init(REMChangeTrackingState);
        v16 = [(ESReminderChangeTrackingHelper *)self upToToken];
        [v15 setLastConsumedChangeToken:v16];

        v17 = [(ESReminderChangeTrackingHelper *)self changeTracking];
        v28 = 0;
        [v17 saveTrackingState:v15 error:&v28];
        v18 = v28;

        v19 = DALoggingwithCategory();
        v20 = v19;
        if (v18)
        {
          v21 = _CPLog_to_os_log_type[3];
          if (os_log_type_enabled(v19, v21))
          {
            v22 = [(ESReminderChangeTrackingHelper *)self accountID];
            *buf = 138412546;
            v31 = v22;
            v32 = 2112;
            v33 = v18;
            _os_log_impl(&dword_0, v20, v21, "ReminderSupport: Failed to save tracking state for account %@, error %@", buf, 0x16u);
LABEL_17:
          }
        }

        else if (os_log_type_enabled(v19, v4))
        {
          v22 = [(ESReminderChangeTrackingHelper *)self accountID];
          v27 = [(ESReminderChangeTrackingHelper *)self upToToken];
          *buf = 138412546;
          v31 = v22;
          v32 = 2112;
          v33 = v27;
          _os_log_impl(&dword_0, v20, v4, "ReminderSupport: Saved change tracking state for account %@, lastConsumedChangeToken %@", buf, 0x16u);

          goto LABEL_17;
        }

LABEL_18:

        goto LABEL_19;
      }

      v18 = DALoggingwithCategory();
      v26 = _CPLog_to_os_log_type[4];
      if (os_log_type_enabled(v18, v26))
      {
        v15 = [(ESReminderChangeTrackingHelper *)self upToToken];
        v20 = [(ESReminderChangeTrackingHelper *)self accountID];
        *buf = 138412802;
        v31 = v15;
        v32 = 2112;
        v33 = v9;
        v34 = 2112;
        v35 = v20;
        _os_log_impl(&dword_0, v18, v26, "ReminderSupport: Not updating change tracking state, because no newer change token in this history {token: %@, clientID: %@, account: %@}", buf, 0x20u);
        goto LABEL_18;
      }
    }

    else
    {
      v14 = DALoggingwithCategory();
      v25 = _CPLog_to_os_log_type[4];
      if (!os_log_type_enabled(v14, v25))
      {
LABEL_20:

        [(ESReminderChangeTrackingHelper *)self setChangeSet:0];
        goto LABEL_21;
      }

      v18 = [(ESReminderChangeTrackingHelper *)self accountID];
      *buf = 138412546;
      v31 = v9;
      v32 = 2112;
      v33 = v18;
      _os_log_impl(&dword_0, v14, v25, "ReminderSupport: Not updating change tracking state, because no upto token in this history {clientID: %@, account: %@}", buf, 0x16u);
    }

LABEL_19:

    goto LABEL_20;
  }

  v9 = DALoggingwithCategory();
  v23 = _CPLog_to_os_log_type[4];
  if (os_log_type_enabled(v9, v23))
  {
    v24 = [(ESReminderChangeTrackingHelper *)self accountID];
    *buf = 138412290;
    v31 = v24;
    _os_log_impl(&dword_0, v9, v23, "ReminderSupport: Not updating change tracking state, because no change tracking {account: %@}", buf, 0xCu);
  }

LABEL_21:
}

- (BOOL)markReminderChangesConsumedForFolderID:(id)a3
{
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v5, v6))
  {
    v7 = [(ESReminderChangeTrackingHelper *)self accountID];
    v13 = 138412546;
    v14 = v7;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_0, v5, v6, "ReminderSupport: Marking reminder changes consumed for account %@, folder %@", &v13, 0x16u);
  }

  v8 = [(ESReminderChangeTrackingHelper *)self foldersContainingReminderChangesInChangeSet];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(ESReminderChangeTrackingHelper *)self foldersContainingReminderChangesInChangeSet];
    [v10 removeObject:v4];

    v11 = [(ESReminderChangeTrackingHelper *)self _checkAndMarkChangeConsumed];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)markListChangeConsumedForFolderID:(id)a3
{
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v5, v6))
  {
    v7 = [(ESReminderChangeTrackingHelper *)self accountID];
    v13 = 138412546;
    v14 = v7;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_0, v5, v6, "ReminderSupport: Marking reminder folder change consumed for account %@, folder %@", &v13, 0x16u);
  }

  v8 = [(ESReminderChangeTrackingHelper *)self foldersChangedInChangeSet];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(ESReminderChangeTrackingHelper *)self foldersChangedInChangeSet];
    [v10 removeObject:v4];

    v11 = [(ESReminderChangeTrackingHelper *)self _checkAndMarkChangeConsumed];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)markListAdditionConsumedForFolderUUID:(id)a3 folderID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = DALoggingwithCategory();
  v9 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v8, v9))
  {
    v10 = [(ESReminderChangeTrackingHelper *)self accountID];
    v22 = 138412546;
    v23 = v10;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&dword_0, v8, v9, "ReminderSupport: Marking reminder folder addition consumed for account %@, folderUUID %@", &v22, 0x16u);
  }

  v11 = [(ESReminderChangeTrackingHelper *)self foldersAddedInChangeSet];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [(ESReminderChangeTrackingHelper *)self foldersAddedInChangeSet];
    [v13 removeObject:v6];
  }

  v14 = [(ESReminderChangeTrackingHelper *)self foldersContainingReminderChangesInChangeSet];
  v15 = [v14 containsObject:v6];

  if (v15)
  {
    v16 = [(ESReminderChangeTrackingHelper *)self foldersContainingReminderChangesInChangeSet];
    [v16 removeObject:v6];

    v17 = [(ESReminderChangeTrackingHelper *)self foldersContainingReminderChangesInChangeSet];
    v18 = [v17 containsObject:v7];

    if ((v18 & 1) == 0)
    {
      v19 = [(ESReminderChangeTrackingHelper *)self foldersContainingReminderChangesInChangeSet];
      [v19 addObject:v7];
    }
  }

  v20 = [(ESReminderChangeTrackingHelper *)self _checkAndMarkChangeConsumed];

  return v20;
}

- (BOOL)_checkAndMarkChangeConsumed
{
  v3 = [(ESReminderChangeTrackingHelper *)self foldersContainingReminderChangesInChangeSet];
  if ([v3 count])
  {
    goto LABEL_4;
  }

  v4 = [(ESReminderChangeTrackingHelper *)self foldersAddedInChangeSet];
  if ([v4 count])
  {

LABEL_4:
LABEL_5:
    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v5, v6))
    {
      v7 = [(ESReminderChangeTrackingHelper *)self accountID];
      v8 = [(ESReminderChangeTrackingHelper *)self foldersContainingReminderChangesInChangeSet];
      v9 = [(ESReminderChangeTrackingHelper *)self foldersAddedInChangeSet];
      v10 = [(ESReminderChangeTrackingHelper *)self foldersChangedInChangeSet];
      v17 = 138413058;
      v18 = v7;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_0, v5, v6, "ReminderSupport: Changes not yet consumed for account %@, reminders in folders %@, folder additions: %@, folder changes:%@", &v17, 0x2Au);
    }

    return 0;
  }

  v12 = [(ESReminderChangeTrackingHelper *)self foldersChangedInChangeSet];
  v13 = [v12 count];

  if (v13)
  {
    goto LABEL_5;
  }

  v14 = DALoggingwithCategory();
  v15 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v14, v15))
  {
    v16 = [(ESReminderChangeTrackingHelper *)self accountID];
    v17 = 138412290;
    v18 = v16;
    _os_log_impl(&dword_0, v14, v15, "ReminderSupport: All changes are consumed for account %@", &v17, 0xCu);
  }

  [(ESReminderChangeTrackingHelper *)self _markChangesConsumed];
  return 1;
}

@end