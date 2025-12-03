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
- (BOOL)_recordReminders:(id)reminders;
- (BOOL)_recordUndeletedLists;
- (BOOL)_recordUndeletedReminders;
- (BOOL)fetchChangesSinceLastConsumed;
- (BOOL)markListAdditionConsumedForFolderUUID:(id)d folderID:(id)iD;
- (BOOL)markListChangeConsumedForFolderID:(id)d;
- (BOOL)markReminderChangesConsumedForFolderID:(id)d;
- (ESReminderChangeTrackingHelper)initWithAccount:(id)account reminderStore:(id)store;
- (id)_addedListsInSubset:(id)subset;
- (id)_deletedReminderFolderIDsInChangeSet;
- (id)_fetchChangeTrackingState;
- (id)_fethAuxiliaryChangeInfosForReminderChangeObject:(id)object;
- (id)_lazyDeletedReminderFolderIDsInChangeSet;
- (id)_modifiedListsInSubset:(id)subset;
- (id)_modifiedRemindersInSubset:(id)subset;
- (id)_pendingChangesInReminderDB;
- (id)_remListExternalIdentifierForDeletedReminderChangeObject:(id)object;
- (id)addedAndModifiedRemindersInChangeSet;
- (id)addedListsInChangeSet;
- (id)deletedListsInChangeSet;
- (id)deletedRemindersInChangeSetForFolderID:(id)d;
- (id)lazyDeletedListsInChangeSet;
- (id)lazyDeletedRemindersInChangeSetForFolderID:(id)d;
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

- (ESReminderChangeTrackingHelper)initWithAccount:(id)account reminderStore:(id)store
{
  accountCopy = account;
  storeCopy = store;
  if (accountCopy)
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

      accountID = [accountCopy accountID];
      v16 = [accountID copy];
      accountID = v8->_accountID;
      v8->_accountID = v16;

      objc_storeStrong(&v8->_reminderStore, store);
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
    selfCopy = self;
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

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_initializeChangeTrackingStateIfNeeded
{
  changeTracking = [(ESReminderChangeTrackingHelper *)self changeTracking];
  v13 = 0;
  v4 = [changeTracking getTrackingStateWithError:&v13];
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
      accountID = [(ESReminderChangeTrackingHelper *)self accountID];
      lastConsumedChangeToken = [v4 lastConsumedChangeToken];
      lastConsumedDate = [v4 lastConsumedDate];
      *buf = 138412802;
      v15 = accountID;
      v16 = 2112;
      v17 = lastConsumedChangeToken;
      v18 = 2112;
      v19 = lastConsumedDate;
      _os_log_impl(&dword_0, v7, v8, "ReminderSupport: Found an existing change tracking state for {accountID: %@, lastSyncToken: %@, lastSyncDate: %@}", buf, 0x20u);
    }
  }
}

- (void)_initializeChangeTrackingState
{
  changeTracking = [(ESReminderChangeTrackingHelper *)self changeTracking];
  v26 = 0;
  v4 = [changeTracking currentChangeTokenWithError:&v26];
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
      accountID = [(ESReminderChangeTrackingHelper *)self accountID];
      *buf = 138412290;
      v28 = accountID;
      _os_log_impl(&dword_0, v7, v9, "ReminderSupport: Due to error or nil current change token, couldn't initialize tracking state for accountID: %@", buf, 0xCu);
    }
  }

  else
  {
    v11 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v6, v11))
    {
      accountID2 = [(ESReminderChangeTrackingHelper *)self accountID];
      *buf = 138412290;
      v28 = accountID2;
      _os_log_impl(&dword_0, v7, v11, "ReminderSupport: Creating a new change tracking state object for accountID: %@", buf, 0xCu);
    }

    v7 = objc_alloc_init(REMChangeTrackingState);
    [v7 setLastConsumedChangeToken:v4];
    v14 = DALoggingwithCategory();
    v15 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v14, v15))
    {
      accountID3 = [(ESReminderChangeTrackingHelper *)self accountID];
      lastConsumedChangeToken = [v7 lastConsumedChangeToken];
      *buf = 138412546;
      v28 = accountID3;
      v29 = 2112;
      v30 = lastConsumedChangeToken;
      _os_log_impl(&dword_0, v14, v15, "ReminderSupport: Ignoring prior changes. Initializing a new change tracking state for {accountID: %@, nowToken: %@}", buf, 0x16u);
    }

    changeTracking2 = [(ESReminderChangeTrackingHelper *)self changeTracking];
    v25 = 0;
    [changeTracking2 saveTrackingState:v7 error:&v25];
    v5 = v25;

    v19 = DALoggingwithCategory();
    v20 = v19;
    if (v5)
    {
      v21 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v19, v21))
      {
        accountID4 = [(ESReminderChangeTrackingHelper *)self accountID];
        localizedDescription = [v5 localizedDescription];
        *buf = 138412546;
        v28 = accountID4;
        v29 = 2112;
        v30 = localizedDescription;
        _os_log_impl(&dword_0, v20, v21, "ReminderSupport: Failed to save an initialization of tracking state with error {accountID: %@, error: %@}", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v19, v11))
    {
      accountID5 = [(ESReminderChangeTrackingHelper *)self accountID];
      *buf = 138412290;
      v28 = accountID5;
      _os_log_impl(&dword_0, v20, v11, "ReminderSupport: Initial change tracking state is saved for accountID: %@", buf, 0xCu);
    }
  }
}

- (id)_fetchChangeTrackingState
{
  changeTracking = [(ESReminderChangeTrackingHelper *)self changeTracking];
  changeTrackingClientID = [changeTracking changeTrackingClientID];

  changeTracking2 = [(ESReminderChangeTrackingHelper *)self changeTracking];
  v17 = 0;
  v6 = [changeTracking2 getTrackingStateWithError:&v17];
  v7 = v17;

  if (v7)
  {

    v8 = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v8, v9))
    {
      localizedDescription = [v7 localizedDescription];
      *buf = 138412546;
      v19 = changeTrackingClientID;
      v20 = 2112;
      v21 = localizedDescription;
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
      v19 = changeTrackingClientID;
      _os_log_impl(&dword_0, v8, v16, "ReminderSupport: The change tracking state does not exist {clientID: %@}", buf, 0xCu);
    }

    goto LABEL_4;
  }

  v13 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v12, v13))
  {
    lastConsumedChangeToken = [v6 lastConsumedChangeToken];
    lastConsumedDate = [v6 lastConsumedDate];
    *buf = 138412802;
    v19 = changeTrackingClientID;
    v20 = 2112;
    v21 = lastConsumedChangeToken;
    v22 = 2112;
    v23 = lastConsumedDate;
    _os_log_impl(&dword_0, v8, v13, "ReminderSupport: Found and fetched change tracking state for {clientID: %@, lastSyncToken: %@, lastSyncDate: %@}", buf, 0x20u);
  }

LABEL_5:

  return v6;
}

- (BOOL)fetchChangesSinceLastConsumed
{
  changeSet = [(ESReminderChangeTrackingHelper *)self changeSet];

  if (!changeSet)
  {
    changeTracking = [(ESReminderChangeTrackingHelper *)self changeTracking];

    if (!changeTracking)
    {
      reminderStore = [(ESReminderChangeTrackingHelper *)self reminderStore];
      accountObjID = [(ESReminderChangeTrackingHelper *)self accountObjID];
      v11 = [reminderStore provideChangeTrackingForAccountID:accountObjID clientName:@"com.apple.exchangesyncd"];
      [(ESReminderChangeTrackingHelper *)self setChangeTracking:v11];
    }

    changeTracking2 = [(ESReminderChangeTrackingHelper *)self changeTracking];

    if (!changeTracking2)
    {
      changeTrackingClientID = DALoggingwithCategory();
      v25 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(changeTrackingClientID, v25))
      {
        accountID = [(ESReminderChangeTrackingHelper *)self accountID];
        *buf = 138412290;
        v41 = accountID;
        _os_log_impl(&dword_0, changeTrackingClientID, v25, "ReminderSupport: Could not fetch changes because change tracking client does not exist for account %@", buf, 0xCu);
      }

      goto LABEL_26;
    }

    changeTracking3 = [(ESReminderChangeTrackingHelper *)self changeTracking];
    changeTrackingClientID = [changeTracking3 changeTrackingClientID];

    _fetchChangeTrackingState = [(ESReminderChangeTrackingHelper *)self _fetchChangeTrackingState];
    v16 = _fetchChangeTrackingState;
    if (!_fetchChangeTrackingState)
    {
      v27 = DALoggingwithCategory();
      v28 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v27, v28))
      {
        accountID2 = [(ESReminderChangeTrackingHelper *)self accountID];
        *buf = 138412290;
        v41 = accountID2;
        _os_log_impl(&dword_0, v27, v28, "ReminderSupport: Not processing local changes. Had problem getting change history for account %@", buf, 0xCu);
      }

      [(ESReminderChangeTrackingHelper *)self _initializeChangeTrackingStateIfNeeded];
      goto LABEL_25;
    }

    lastConsumedChangeToken = [_fetchChangeTrackingState lastConsumedChangeToken];
    changeTracking4 = [(ESReminderChangeTrackingHelper *)self changeTracking];
    v38 = 0;
    v19 = [changeTracking4 fetchHistoryAfterToken:lastConsumedChangeToken error:&v38];
    v20 = v38;

    error = [v19 error];

    if (error)
    {
      v22 = DALoggingwithCategory();
      v23 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v22, v23))
      {
        localizedDescription = [v20 localizedDescription];
        *buf = 138412802;
        v41 = changeTrackingClientID;
        v42 = 2112;
        v43 = lastConsumedChangeToken;
        v44 = 2112;
        v45 = localizedDescription;
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
        v41 = changeTrackingClientID;
        v42 = 2112;
        v43 = lastConsumedChangeToken;
        _os_log_impl(&dword_0, v30, v31, "ReminderSupport: Fetched truncated change history.  {clientID: %@, token: %@}", buf, 0x16u);
      }

      [(ESReminderChangeTrackingHelper *)self setSinceToken:lastConsumedChangeToken];
      accountObjID2 = [(ESReminderChangeTrackingHelper *)self accountObjID];
      v33 = [v19 lastChangeTokenForAccountID:accountObjID2];
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
      [(ESReminderChangeTrackingHelper *)self setSinceToken:lastConsumedChangeToken];
      accountObjID3 = [(ESReminderChangeTrackingHelper *)self accountObjID];
      v36 = [v19 lastChangeTokenForAccountID:accountObjID3];
      [(ESReminderChangeTrackingHelper *)self setUpToToken:v36];

      if ([(ESReminderChangeTrackingHelper *)self _recordChangesInChangeSet])
      {
LABEL_24:

LABEL_25:
LABEL_26:

        changeSet2 = [(ESReminderChangeTrackingHelper *)self changeSet];
        v7 = changeSet2 != 0;
        goto LABEL_27;
      }
    }

    [(ESReminderChangeTrackingHelper *)self _markChangesConsumed];
    goto LABEL_24;
  }

  changeSet2 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(changeSet2, v5))
  {
    accountID3 = [(ESReminderChangeTrackingHelper *)self accountID];
    *buf = 138412290;
    v41 = accountID3;
    _os_log_impl(&dword_0, changeSet2, v5, "ReminderSupport: Not fetching changes because we have unprocessed changes for account %@", buf, 0xCu);
  }

  v7 = 0;
LABEL_27:

  return v7;
}

- (id)_pendingChangesInReminderDB
{
  upToToken = [(ESReminderChangeTrackingHelper *)self upToToken];

  changeTracking = [(ESReminderChangeTrackingHelper *)self changeTracking];
  v5 = changeTracking;
  if (upToToken)
  {
    upToToken2 = [(ESReminderChangeTrackingHelper *)self upToToken];
    v18 = 0;
    v7 = [v5 fetchHistoryAfterToken:upToToken2 error:&v18];
    v8 = v18;
    goto LABEL_3;
  }

  if (!v5)
  {
    reminderStore = [(ESReminderChangeTrackingHelper *)self reminderStore];
    accountObjID = [(ESReminderChangeTrackingHelper *)self accountObjID];
    v13 = [reminderStore provideChangeTrackingForAccountID:accountObjID clientName:@"com.apple.exchangesyncd"];
    [(ESReminderChangeTrackingHelper *)self setChangeTracking:v13];
  }

  changeTracking2 = [(ESReminderChangeTrackingHelper *)self changeTracking];

  if (changeTracking2)
  {
    _fetchChangeTrackingState = [(ESReminderChangeTrackingHelper *)self _fetchChangeTrackingState];
    v5 = _fetchChangeTrackingState;
    if (!_fetchChangeTrackingState)
    {
      v8 = 0;
      v7 = 0;
      goto LABEL_4;
    }

    upToToken2 = [_fetchChangeTrackingState lastConsumedChangeToken];
    changeTracking3 = [(ESReminderChangeTrackingHelper *)self changeTracking];
    v17 = 0;
    v7 = [changeTracking3 fetchHistoryAfterToken:upToToken2 error:&v17];
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
  _pendingChangesInReminderDB = [(ESReminderChangeTrackingHelper *)self _pendingChangesInReminderDB];
  v5 = _pendingChangesInReminderDB;
  if (_pendingChangesInReminderDB && ([_pendingChangesInReminderDB isTruncated] & 1) == 0)
  {
    inserts = [v5 inserts];
    v7 = [(ESReminderChangeTrackingHelper *)self _addedListsInSubset:inserts];

    [v3 addObjectsFromArray:v7];
    updates = [v5 updates];
    v9 = [(ESReminderChangeTrackingHelper *)self _addedListsInSubset:updates];

    [v3 addObjectsFromArray:v9];
  }

  return v3;
}

- (id)addedListsInChangeSet
{
  v3 = objc_opt_new();
  changeSet = [(ESReminderChangeTrackingHelper *)self changeSet];
  if (changeSet)
  {
    v5 = changeSet;
    changeSet2 = [(ESReminderChangeTrackingHelper *)self changeSet];
    isTruncated = [changeSet2 isTruncated];

    if ((isTruncated & 1) == 0)
    {
      changeSet3 = [(ESReminderChangeTrackingHelper *)self changeSet];
      inserts = [changeSet3 inserts];
      v10 = [(ESReminderChangeTrackingHelper *)self _addedListsInSubset:inserts];

      [v3 addObjectsFromArray:v10];
      changeSet4 = [(ESReminderChangeTrackingHelper *)self changeSet];
      updates = [changeSet4 updates];
      v13 = [(ESReminderChangeTrackingHelper *)self _addedListsInSubset:updates];

      [v3 addObjectsFromArray:v13];
    }
  }

  return v3;
}

- (id)_addedListsInSubset:(id)subset
{
  subsetCopy = subset;
  v32 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = subsetCopy;
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
        changedObjectID = [v10 changedObjectID];
        entityName = [changedObjectID entityName];
        v13 = +[REMList cdEntityName];
        v14 = [entityName isEqualToString:v13];

        if (v14)
        {
          reminderStore = self->_reminderStore;
          changedObjectID2 = [v10 changedObjectID];
          v37 = v7;
          v17 = [(REMStore *)reminderStore fetchListWithObjectID:changedObjectID2 error:&v37];
          v18 = v37;

          if (v17)
          {
            externalIdentifier = [v17 externalIdentifier];

            if (!externalIdentifier)
            {
              v20 = DALoggingwithCategory();
              if (os_log_type_enabled(v20, type))
              {
                uuid = [changedObjectID uuid];
                uUIDString = [uuid UUIDString];
                accountID = [(ESReminderChangeTrackingHelper *)self accountID];
                *buf = v31;
                v43 = uUIDString;
                v44 = 2112;
                v45 = accountID;
                _os_log_impl(&dword_0, v20, type, "ReminderSupport: Change set contains added list: %@, for account %@", buf, 0x16u);
              }

              [v32 addObject:v17];
            }
          }

          else
          {
            updatedProperties = [v10 updatedProperties];
            v25 = [updatedProperties containsObject:@"markedForDeletion"];

            if ((v25 & 1) == 0)
            {
              v26 = DALoggingwithCategory();
              if (os_log_type_enabled(v26, v33))
              {
                uuid2 = [changedObjectID uuid];
                uUIDString2 = [uuid2 UUIDString];
                accountID2 = [(ESReminderChangeTrackingHelper *)self accountID];
                *buf = v31;
                v43 = uUIDString2;
                v44 = 2112;
                v45 = accountID2;
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
  selfCopy = self;
  _pendingChangesInReminderDB = [(ESReminderChangeTrackingHelper *)self _pendingChangesInReminderDB];
  v4 = _pendingChangesInReminderDB;
  if (!_pendingChangesInReminderDB || ([_pendingChangesInReminderDB isTruncated] & 1) != 0)
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
      changedObjectID = [v10 changedObjectID];
      entityName = [changedObjectID entityName];
      v13 = +[REMList cdEntityName];
      if ([entityName isEqualToString:v13])
      {
        updatedProperties = [v10 updatedProperties];
        v15 = [updatedProperties containsObject:@"markedForDeletion"];

        if (!v15)
        {
          goto LABEL_16;
        }

        reminderStore = selfCopy->_reminderStore;
        changedObjectID2 = [v10 changedObjectID];
        v25 = v23;
        entityName = [(REMStore *)reminderStore fetchListWithObjectID:changedObjectID2 error:&v25];
        v18 = v25;

        if (entityName)
        {
          [v21 addObject:entityName];
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
  changeSet = [(ESReminderChangeTrackingHelper *)self changeSet];
  if (!changeSet || (v4 = changeSet, -[ESReminderChangeTrackingHelper changeSet](self, "changeSet"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isTruncated], v5, v4, (v6 & 1) != 0))
  {
    v7 = 0;
    goto LABEL_24;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  changeSet2 = [(ESReminderChangeTrackingHelper *)self changeSet];
  updates = [changeSet2 updates];

  v10 = [updates countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (!v10)
  {
    v7 = 0;
    goto LABEL_23;
  }

  v12 = v10;
  selfCopy = self;
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
        objc_enumerationMutation(updates);
      }

      v15 = *(*(&v35 + 1) + 8 * v14);
      changedObjectID = [v15 changedObjectID];
      entityName = [changedObjectID entityName];
      v18 = +[REMList cdEntityName];
      if (([entityName isEqualToString:v18] & 1) == 0)
      {

        v23 = v7;
LABEL_17:

        v7 = v23;
        goto LABEL_19;
      }

      updatedProperties = [v15 updatedProperties];
      v20 = [updatedProperties containsObject:@"markedForDeletion"];

      if (v20)
      {
        reminderStore = selfCopy->_reminderStore;
        changedObjectID2 = [v15 changedObjectID];
        v34 = v7;
        entityName = [(REMStore *)reminderStore fetchListWithObjectID:changedObjectID2 error:&v34];
        v23 = v34;

        if (entityName)
        {
          v24 = DALoggingwithCategory();
          if (os_log_type_enabled(v24, type))
          {
            uuid = [changedObjectID uuid];
            uUIDString = [uuid UUIDString];
            accountID = [(ESReminderChangeTrackingHelper *)selfCopy accountID];
            *buf = v29;
            v40 = uUIDString;
            v41 = 2112;
            v42 = accountID;
            _os_log_impl(&dword_0, v24, type, "ReminderSupport: Change set updates contains undeleted list: %@, for account %@.", buf, 0x16u);
          }

          [v30 addObject:entityName];
        }

        v12 = v33;
        goto LABEL_17;
      }

      v12 = v33;
LABEL_19:

      v14 = v14 + 1;
    }

    while (v12 != v14);
    v12 = [updates countByEnumeratingWithState:&v35 objects:v43 count:16];
  }

  while (v12);
LABEL_23:

LABEL_24:

  return v30;
}

- (id)modifiedListsInChangeSet
{
  v3 = objc_opt_new();
  changeSet = [(ESReminderChangeTrackingHelper *)self changeSet];
  if (changeSet)
  {
    v5 = changeSet;
    changeSet2 = [(ESReminderChangeTrackingHelper *)self changeSet];
    isTruncated = [changeSet2 isTruncated];

    if ((isTruncated & 1) == 0)
    {
      changeSet3 = [(ESReminderChangeTrackingHelper *)self changeSet];
      inserts = [changeSet3 inserts];
      v10 = [(ESReminderChangeTrackingHelper *)self _modifiedListsInSubset:inserts];

      [v3 addObjectsFromArray:v10];
      changeSet4 = [(ESReminderChangeTrackingHelper *)self changeSet];
      updates = [changeSet4 updates];
      v13 = [(ESReminderChangeTrackingHelper *)self _modifiedListsInSubset:updates];

      [v3 addObjectsFromArray:v13];
    }
  }

  return v3;
}

- (id)_modifiedListsInSubset:(id)subset
{
  subsetCopy = subset;
  v38 = objc_opt_new();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = subsetCopy;
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
        changedObjectID = [v11 changedObjectID];
        entityName = [changedObjectID entityName];
        cdEntityName = [v9[271] cdEntityName];
        v15 = [entityName isEqualToString:cdEntityName];

        if (v15)
        {
          updatedProperties = [v11 updatedProperties];
          v17 = [updatedProperties mutableCopy];

          [v17 removeObject:@"reminderIDsMergeableOrdering"];
          [v17 removeObject:@"reminders"];
          [v17 removeObject:@"resolutionTokenMap"];
          if ([v17 count])
          {
            v18 = v6;
            reminderStore = self->_reminderStore;
            changedObjectID2 = [v11 changedObjectID];
            v43 = v7;
            v21 = [(REMStore *)reminderStore fetchListWithObjectID:changedObjectID2 error:&v43];
            v22 = v43;

            if (v21)
            {
              externalIdentifier = [v21 externalIdentifier];

              v6 = v18;
              if (externalIdentifier)
              {
                v24 = DALoggingwithCategory();
                if (os_log_type_enabled(v24, type))
                {
                  uuid = [changedObjectID uuid];
                  uUIDString = [uuid UUIDString];
                  externalIdentifier2 = [v21 externalIdentifier];
                  accountID = [(ESReminderChangeTrackingHelper *)self accountID];
                  *buf = 138412802;
                  v49 = uUIDString;
                  v50 = 2112;
                  v51 = externalIdentifier2;
                  v52 = 2112;
                  v53 = accountID;
                  _os_log_impl(&dword_0, v24, type, "ReminderSupport: Change set contains modified list: %@, with external ID: %@, for account %@", buf, 0x20u);

                  v6 = v18;
                }

                [v38 addObject:v21];
              }
            }

            else
            {
              updatedProperties2 = [v11 updatedProperties];
              v29 = [updatedProperties2 containsObject:@"markedForDeletion"];

              v6 = v18;
              if ((v29 & 1) == 0)
              {
                v30 = DALoggingwithCategory();
                if (os_log_type_enabled(v30, v36))
                {
                  uuid2 = [changedObjectID uuid];
                  uUIDString2 = [uuid2 UUIDString];
                  accountID2 = [(ESReminderChangeTrackingHelper *)self accountID];
                  *buf = v35;
                  v49 = uUIDString2;
                  v50 = 2112;
                  v51 = accountID2;
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
  changeSet = [(ESReminderChangeTrackingHelper *)self changeSet];
  deletes = [changeSet deletes];

  v37 = [deletes countByEnumeratingWithState:&v39 objects:v49 count:16];
  v7 = 0;
  if (v37)
  {
    v36 = *v40;
    type = _CPLog_to_os_log_type[7];
    v33 = _CPLog_to_os_log_type[4];
    *&v6 = 138412546;
    v30 = v6;
    selfCopy = self;
    v31 = v3;
    v32 = deletes;
    do
    {
      for (i = 0; i != v37; i = i + 1)
      {
        if (*v40 != v36)
        {
          objc_enumerationMutation(deletes);
        }

        v9 = *(*(&v39 + 1) + 8 * i);
        changedObjectID = [v9 changedObjectID];
        entityName = [changedObjectID entityName];
        v12 = +[REMList cdEntityName];
        v13 = [entityName isEqualToString:v12];

        if (v13)
        {
          reminderStore = self->_reminderStore;
          changedObjectID2 = [v9 changedObjectID];
          v38 = v7;
          v16 = [(REMStore *)reminderStore fetchListIncludingMarkedForDeleteWithObjectID:changedObjectID2 error:&v38];
          v17 = v38;

          if (v16)
          {
            externalIdentifier = [v16 externalIdentifier];

            if (externalIdentifier)
            {
              v19 = DALoggingwithCategory();
              if (os_log_type_enabled(v19, type))
              {
                objectID = [v16 objectID];
                uuid = [objectID uuid];
                uUIDString = [uuid UUIDString];
                externalIdentifier2 = [v16 externalIdentifier];
                accountID = [(ESReminderChangeTrackingHelper *)selfCopy accountID];
                *buf = 138412802;
                v44 = uUIDString;
                v45 = 2112;
                v46 = externalIdentifier2;
                v47 = 2112;
                v48 = accountID;
                _os_log_impl(&dword_0, v19, type, "ReminderSupport: Change set contains deleted list with local ID: %@, external ID: %@, for account %@", buf, 0x20u);

                deletes = v32;
                self = selfCopy;

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
              uuid2 = [changedObjectID uuid];
              uUIDString2 = [uuid2 UUIDString];
              accountID2 = [(ESReminderChangeTrackingHelper *)self accountID];
              *buf = v30;
              v44 = uUIDString2;
              v45 = 2112;
              v46 = accountID2;
              _os_log_impl(&dword_0, v25, v33, "ReminderSupport: Change set contains deleted list: %@, for account %@. But it is not found in reminder store!", buf, 0x16u);

              self = selfCopy;
              deletes = v32;
            }
          }

          v7 = v17;
        }
      }

      v37 = [deletes countByEnumeratingWithState:&v39 objects:v49 count:16];
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
  changeSet = [(ESReminderChangeTrackingHelper *)self changeSet];
  updates = [changeSet updates];

  obj = updates;
  v5 = [updates countByEnumeratingWithState:&v40 objects:v50 count:16];
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
  selfCopy = self;
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
      changedObjectID = [v10 changedObjectID];
      entityName = [changedObjectID entityName];
      v13 = +[REMList cdEntityName];
      if ([entityName isEqualToString:v13])
      {
        updatedProperties = [v10 updatedProperties];
        v15 = [updatedProperties containsObject:@"markedForDeletion"];

        if (!v15)
        {
          goto LABEL_15;
        }

        reminderStore = self->_reminderStore;
        changedObjectID2 = [v10 changedObjectID];
        v39 = v8;
        entityName = [(REMStore *)reminderStore fetchListIncludingMarkedForDeleteWithObjectID:changedObjectID2 error:&v39];
        v18 = v39;

        if (entityName)
        {
          externalIdentifierForMarkedForDeletionObject = [entityName externalIdentifierForMarkedForDeletionObject];

          if (externalIdentifierForMarkedForDeletionObject)
          {
            v20 = DALoggingwithCategory();
            if (os_log_type_enabled(v20, type))
            {
              externalIdentifierForMarkedForDeletionObject2 = [entityName externalIdentifierForMarkedForDeletionObject];
              objectID = [entityName objectID];
              uuid = [objectID uuid];
              uUIDString = [uuid UUIDString];
              accountID = [(ESReminderChangeTrackingHelper *)self accountID];
              *buf = 138412802;
              v45 = externalIdentifierForMarkedForDeletionObject2;
              v46 = 2112;
              v47 = uUIDString;
              v48 = 2112;
              v49 = accountID;
              _os_log_impl(&dword_0, v20, type, "ReminderSupport: Change set contains lazy deleted folder with external ID: %@, local ID: %@, for account %@", buf, 0x20u);

              self = selfCopy;
            }

            [v33 addObject:entityName];
          }
        }

        else
        {
          v25 = DALoggingwithCategory();
          if (os_log_type_enabled(v25, v34))
          {
            uuid2 = [changedObjectID uuid];
            uUIDString2 = [uuid2 UUIDString];
            accountID2 = [(ESReminderChangeTrackingHelper *)selfCopy accountID];
            *buf = v31;
            v45 = uUIDString2;
            v46 = 2112;
            v47 = accountID2;
            _os_log_impl(&dword_0, v25, v34, "ReminderSupport: Change set contains lazy deleted list: %@, for account %@. But it is not found in reminder store!", buf, 0x16u);

            self = selfCopy;
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
  changeSet = [(ESReminderChangeTrackingHelper *)self changeSet];
  if (changeSet)
  {
    v5 = changeSet;
    changeSet2 = [(ESReminderChangeTrackingHelper *)self changeSet];
    isTruncated = [changeSet2 isTruncated];

    if ((isTruncated & 1) == 0)
    {
      changeSet3 = [(ESReminderChangeTrackingHelper *)self changeSet];
      inserts = [changeSet3 inserts];
      v10 = [(ESReminderChangeTrackingHelper *)self _modifiedRemindersInSubset:inserts];

      [v3 addObjectsFromArray:v10];
      changeSet4 = [(ESReminderChangeTrackingHelper *)self changeSet];
      updates = [changeSet4 updates];
      v13 = [(ESReminderChangeTrackingHelper *)self _modifiedRemindersInSubset:updates];

      [v3 addObjectsFromArray:v13];
    }
  }

  return v3;
}

- (id)_modifiedRemindersInSubset:(id)subset
{
  subsetCopy = subset;
  v26 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = subsetCopy;
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
      changedObjectID = [v10 changedObjectID];
      entityName = [changedObjectID entityName];
      v13 = +[REMReminder cdEntityName];
      if ([entityName isEqualToString:v13])
      {
        updatedProperties = [v10 updatedProperties];
        v15 = [updatedProperties containsObject:@"markedForDeletion"];

        if (v15)
        {
          v6 = v28;
          goto LABEL_17;
        }

        reminderStore = self->_reminderStore;
        changedObjectID2 = [v10 changedObjectID];
        v30 = v7;
        entityName = [(REMStore *)reminderStore fetchReminderWithObjectID:changedObjectID2 error:&v30];
        v16 = v30;

        if (entityName)
        {
          [v26 addObject:entityName];
        }

        else
        {
          v19 = DALoggingwithCategory();
          if (os_log_type_enabled(v19, type))
          {
            uuid = [changedObjectID uuid];
            uUIDString = [uuid UUIDString];
            accountID = [(ESReminderChangeTrackingHelper *)self accountID];
            *buf = v24;
            v36 = uUIDString;
            v37 = 2112;
            v38 = accountID;
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
  selfCopy = self;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  changeSet = [(ESReminderChangeTrackingHelper *)self changeSet];
  updates = [changeSet updates];

  obj = updates;
  v5 = [updates countByEnumeratingWithState:&v24 objects:v28 count:16];
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
      changedObjectID = [v9 changedObjectID];
      entityName = [changedObjectID entityName];
      v12 = +[REMReminder cdEntityName];
      if ([entityName isEqualToString:v12])
      {
        updatedProperties = [v9 updatedProperties];
        v14 = [updatedProperties containsObject:@"markedForDeletion"];

        if (!v14)
        {
          goto LABEL_13;
        }

        reminderStore = selfCopy->_reminderStore;
        changedObjectID2 = [v9 changedObjectID];
        v23 = v21;
        entityName = [(REMStore *)reminderStore fetchReminderWithObjectID:changedObjectID2 error:&v23];
        v17 = v23;

        if (entityName)
        {
          [v19 addObject:entityName];
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

- (id)lazyDeletedRemindersInChangeSetForFolderID:(id)d
{
  dCopy = d;
  v24 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  changeSet = [(ESReminderChangeTrackingHelper *)self changeSet];
  updates = [changeSet updates];

  obj = updates;
  v6 = [updates countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_22;
  }

  v7 = v6;
  selfCopy = self;
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
      changedObjectID = [v12 changedObjectID];
      entityName = [changedObjectID entityName];
      cdEntityName = [v10[275] cdEntityName];
      if (![entityName isEqualToString:cdEntityName])
      {
        v21 = v8;
        goto LABEL_13;
      }

      v16 = v10;
      updatedProperties = [v12 updatedProperties];
      v18 = [updatedProperties containsObject:@"markedForDeletion"];

      if (v18)
      {
        reminderStore = selfCopy->_reminderStore;
        changedObjectID2 = [v12 changedObjectID];
        v30 = v8;
        entityName = [(REMStore *)reminderStore fetchReminderIncludingConcealedWithObjectID:changedObjectID2 error:&v30];
        v21 = v30;

        if (entityName)
        {
          cdEntityName = [(ESReminderChangeTrackingHelper *)selfCopy _remListExternalIdentifierForDeletedReminderChangeObject:v12];
          v10 = v16;
          if ([dCopy isEqualToString:cdEntityName])
          {
            [v24 addObject:entityName];
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
  changeSet = [(ESReminderChangeTrackingHelper *)self changeSet];
  updates = [changeSet updates];

  obj = updates;
  v5 = [updates countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v5)
  {
    v7 = 0;
    goto LABEL_19;
  }

  v6 = v5;
  selfCopy = self;
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
      changedObjectID = [v11 changedObjectID];
      entityName = [changedObjectID entityName];
      cdEntityName = [v9[275] cdEntityName];
      if (![entityName isEqualToString:cdEntityName])
      {
        goto LABEL_10;
      }

      v15 = v7;
      v16 = v9;
      updatedProperties = [v11 updatedProperties];
      v18 = [updatedProperties containsObject:@"markedForDeletion"];

      if (v18)
      {
        reminderStore = selfCopy->_reminderStore;
        changedObjectID2 = [v11 changedObjectID];
        v28 = v15;
        entityName = [(REMStore *)reminderStore fetchReminderIncludingConcealedWithObjectID:changedObjectID2 error:&v28];
        v7 = v28;

        if (entityName)
        {
          cdEntityName = [(ESReminderChangeTrackingHelper *)selfCopy _remListExternalIdentifierForDeletedReminderChangeObject:v11];
          [v23 addObject:cdEntityName];
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

- (id)deletedRemindersInChangeSetForFolderID:(id)d
{
  dCopy = d;
  v29 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  changeSet = [(ESReminderChangeTrackingHelper *)self changeSet];
  deletes = [changeSet deletes];

  obj = deletes;
  v6 = [deletes countByEnumeratingWithState:&v35 objects:v43 count:16];
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
        changedObjectID = [v12 changedObjectID];
        entityName = [changedObjectID entityName];
        v15 = +[REMReminder cdEntityName];
        v16 = [entityName isEqualToString:v15];

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
            if ([dCopy isEqualToString:v23])
            {
              [v29 addObject:v21];
            }
          }

          else
          {
            v23 = DALoggingwithCategory();
            if (os_log_type_enabled(v23, type))
            {
              uuid = [changedObjectID uuid];
              uUIDString = [uuid UUIDString];
              accountID = [(ESReminderChangeTrackingHelper *)v19 accountID];
              *buf = v28;
              v40 = uUIDString;
              v41 = 2112;
              v42 = accountID;
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
  changeSet = [(ESReminderChangeTrackingHelper *)self changeSet];
  deletes = [changeSet deletes];

  obj = deletes;
  v5 = [deletes countByEnumeratingWithState:&v24 objects:v28 count:16];
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
        changedObjectID = [v10 changedObjectID];
        entityName = [changedObjectID entityName];
        v13 = +[REMReminder cdEntityName];
        v14 = [entityName isEqualToString:v13];

        if (v14)
        {
          reminderStore = self->_reminderStore;
          changedObjectID2 = [v10 changedObjectID];
          v23 = v7;
          v17 = [(REMStore *)reminderStore fetchReminderIncludingConcealedWithObjectID:changedObjectID2 error:&v23];
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
  changeSet = [(ESReminderChangeTrackingHelper *)self changeSet];
  if (changeSet && (v4 = changeSet, -[ESReminderChangeTrackingHelper changeSet](self, "changeSet"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isTruncated], v5, v4, (v6 & 1) == 0))
  {
    _recordAddedLists = [(ESReminderChangeTrackingHelper *)self _recordAddedLists];
    v9 = _recordAddedLists | [(ESReminderChangeTrackingHelper *)self _recordUndeletedLists];
    _recordModifiedLists = [(ESReminderChangeTrackingHelper *)self _recordModifiedLists];
    v11 = v9 | _recordModifiedLists | [(ESReminderChangeTrackingHelper *)self _recordDeletedLists];
    _recordLazyDeletedLists = [(ESReminderChangeTrackingHelper *)self _recordLazyDeletedLists];
    v13 = _recordLazyDeletedLists | [(ESReminderChangeTrackingHelper *)self _recordModifiedReminders];
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
  addedListsInChangeSet = [(ESReminderChangeTrackingHelper *)self addedListsInChangeSet];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [addedListsInChangeSet countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(addedListsInChangeSet);
        }

        objectID = [*(*(&v16 + 1) + 8 * i) objectID];
        uuid = [objectID uuid];
        uUIDString = [uuid UUIDString];

        if (uUIDString)
        {
          foldersAddedInChangeSet = [(ESReminderChangeTrackingHelper *)self foldersAddedInChangeSet];
          v13 = [foldersAddedInChangeSet containsObject:uUIDString];

          if ((v13 & 1) == 0)
          {
            foldersAddedInChangeSet2 = [(ESReminderChangeTrackingHelper *)self foldersAddedInChangeSet];
            [foldersAddedInChangeSet2 addObject:uUIDString];

            v6 = 1;
          }
        }
      }

      v5 = [addedListsInChangeSet countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  undeletedListsInChangeSet = [(ESReminderChangeTrackingHelper *)self undeletedListsInChangeSet];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [undeletedListsInChangeSet countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(undeletedListsInChangeSet);
        }

        objectID = [*(*(&v16 + 1) + 8 * i) objectID];
        uuid = [objectID uuid];
        uUIDString = [uuid UUIDString];

        if (uUIDString)
        {
          foldersAddedInChangeSet = [(ESReminderChangeTrackingHelper *)self foldersAddedInChangeSet];
          v13 = [foldersAddedInChangeSet containsObject:uUIDString];

          if ((v13 & 1) == 0)
          {
            foldersAddedInChangeSet2 = [(ESReminderChangeTrackingHelper *)self foldersAddedInChangeSet];
            [foldersAddedInChangeSet2 addObject:uUIDString];

            v6 = 1;
          }
        }
      }

      v5 = [undeletedListsInChangeSet countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  modifiedListsInChangeSet = [(ESReminderChangeTrackingHelper *)self modifiedListsInChangeSet];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [modifiedListsInChangeSet countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(modifiedListsInChangeSet);
        }

        externalIdentifier = [*(*(&v14 + 1) + 8 * i) externalIdentifier];
        if (externalIdentifier)
        {
          foldersChangedInChangeSet = [(ESReminderChangeTrackingHelper *)self foldersChangedInChangeSet];
          v11 = [foldersChangedInChangeSet containsObject:externalIdentifier];

          if ((v11 & 1) == 0)
          {
            foldersChangedInChangeSet2 = [(ESReminderChangeTrackingHelper *)self foldersChangedInChangeSet];
            [foldersChangedInChangeSet2 addObject:externalIdentifier];

            v6 = 1;
          }
        }
      }

      v5 = [modifiedListsInChangeSet countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  deletedListsInChangeSet = [(ESReminderChangeTrackingHelper *)self deletedListsInChangeSet];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [deletedListsInChangeSet countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(deletedListsInChangeSet);
        }

        externalIdentifierForMarkedForDeletionObject = [*(*(&v14 + 1) + 8 * i) externalIdentifierForMarkedForDeletionObject];
        if (externalIdentifierForMarkedForDeletionObject)
        {
          foldersChangedInChangeSet = [(ESReminderChangeTrackingHelper *)self foldersChangedInChangeSet];
          v11 = [foldersChangedInChangeSet containsObject:externalIdentifierForMarkedForDeletionObject];

          if ((v11 & 1) == 0)
          {
            foldersChangedInChangeSet2 = [(ESReminderChangeTrackingHelper *)self foldersChangedInChangeSet];
            [foldersChangedInChangeSet2 addObject:externalIdentifierForMarkedForDeletionObject];

            v6 = 1;
          }
        }
      }

      v5 = [deletedListsInChangeSet countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  lazyDeletedListsInChangeSet = [(ESReminderChangeTrackingHelper *)self lazyDeletedListsInChangeSet];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [lazyDeletedListsInChangeSet countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(lazyDeletedListsInChangeSet);
        }

        externalIdentifierForMarkedForDeletionObject = [*(*(&v14 + 1) + 8 * i) externalIdentifierForMarkedForDeletionObject];
        if (externalIdentifierForMarkedForDeletionObject)
        {
          foldersChangedInChangeSet = [(ESReminderChangeTrackingHelper *)self foldersChangedInChangeSet];
          v11 = [foldersChangedInChangeSet containsObject:externalIdentifierForMarkedForDeletionObject];

          if ((v11 & 1) == 0)
          {
            foldersChangedInChangeSet2 = [(ESReminderChangeTrackingHelper *)self foldersChangedInChangeSet];
            [foldersChangedInChangeSet2 addObject:externalIdentifierForMarkedForDeletionObject];

            v6 = 1;
          }
        }
      }

      v5 = [lazyDeletedListsInChangeSet countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  selfCopy = self;
  addedAndModifiedRemindersInChangeSet = [(ESReminderChangeTrackingHelper *)self addedAndModifiedRemindersInChangeSet];
  LOBYTE(selfCopy) = [(ESReminderChangeTrackingHelper *)selfCopy _recordReminders:addedAndModifiedRemindersInChangeSet];

  return selfCopy;
}

- (BOOL)_recordUndeletedReminders
{
  selfCopy = self;
  undeletedRemindersInChangeSet = [(ESReminderChangeTrackingHelper *)self undeletedRemindersInChangeSet];
  LOBYTE(selfCopy) = [(ESReminderChangeTrackingHelper *)selfCopy _recordReminders:undeletedRemindersInChangeSet];

  return selfCopy;
}

- (BOOL)_recordReminders:(id)reminders
{
  remindersCopy = reminders;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [remindersCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(remindersCopy);
        }

        list = [*(*(&v19 + 1) + 8 * i) list];
        externalIdentifier = [list externalIdentifier];
        if (externalIdentifier)
        {
          uUIDString = externalIdentifier;
        }

        else
        {
          objectID = [list objectID];
          uuid = [objectID uuid];
          uUIDString = [uuid UUIDString];

          if (!uUIDString)
          {
            goto LABEL_11;
          }
        }

        foldersContainingReminderChangesInChangeSet = [(ESReminderChangeTrackingHelper *)self foldersContainingReminderChangesInChangeSet];
        v16 = [foldersContainingReminderChangesInChangeSet containsObject:uUIDString];

        if ((v16 & 1) == 0)
        {
          foldersContainingReminderChangesInChangeSet2 = [(ESReminderChangeTrackingHelper *)self foldersContainingReminderChangesInChangeSet];
          [foldersContainingReminderChangesInChangeSet2 addObject:uUIDString];

          v7 = 1;
        }

LABEL_11:
      }

      v6 = [remindersCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
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
  changeSet = [(ESReminderChangeTrackingHelper *)self changeSet];
  deletes = [changeSet deletes];

  obj = deletes;
  v5 = [deletes countByEnumeratingWithState:&v27 objects:v31 count:16];
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
        changedObjectID = [v10 changedObjectID];
        entityName = [changedObjectID entityName];
        v13 = +[REMReminder cdEntityName];
        v14 = [entityName isEqualToString:v13];

        if (v14)
        {
          reminderStore = self->_reminderStore;
          changedObjectID2 = [v10 changedObjectID];
          v26 = v7;
          v17 = [(REMStore *)reminderStore fetchReminderIncludingConcealedWithObjectID:changedObjectID2 error:&v26];
          v18 = v26;

          if (v17)
          {
            v19 = [(ESReminderChangeTrackingHelper *)self _remListExternalIdentifierForDeletedReminderChangeObject:v10];
            if (v19)
            {
              foldersContainingReminderChangesInChangeSet = [(ESReminderChangeTrackingHelper *)self foldersContainingReminderChangesInChangeSet];
              v21 = [foldersContainingReminderChangesInChangeSet containsObject:v19];

              if ((v21 & 1) == 0)
              {
                foldersContainingReminderChangesInChangeSet2 = [(ESReminderChangeTrackingHelper *)self foldersContainingReminderChangesInChangeSet];
                [foldersContainingReminderChangesInChangeSet2 addObject:v19];

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
  changeSet = [(ESReminderChangeTrackingHelper *)self changeSet];
  updates = [changeSet updates];

  obj = updates;
  v5 = [updates countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v5)
  {
    v7 = 0;
    v27 = 0;
    goto LABEL_23;
  }

  v6 = v5;
  selfCopy = self;
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
      changedObjectID = [v11 changedObjectID];
      entityName = [changedObjectID entityName];
      cdEntityName = [v9[275] cdEntityName];
      if (![entityName isEqualToString:cdEntityName])
      {
        v21 = v7;
        goto LABEL_14;
      }

      v15 = v8;
      v16 = v9;
      updatedProperties = [v11 updatedProperties];
      v18 = [updatedProperties containsObject:@"markedForDeletion"];

      if (v18)
      {
        reminderStore = selfCopy->_reminderStore;
        changedObjectID2 = [v11 changedObjectID];
        v31 = v7;
        entityName = [(REMStore *)reminderStore fetchReminderIncludingConcealedWithObjectID:changedObjectID2 error:&v31];
        v21 = v31;

        if (entityName)
        {
          cdEntityName = [(ESReminderChangeTrackingHelper *)selfCopy _remListExternalIdentifierForDeletedReminderChangeObject:v11];
          if (cdEntityName)
          {
            foldersContainingReminderChangesInChangeSet = [(ESReminderChangeTrackingHelper *)selfCopy foldersContainingReminderChangesInChangeSet];
            v23 = [foldersContainingReminderChangesInChangeSet containsObject:cdEntityName];

            if ((v23 & 1) == 0)
            {
              foldersContainingReminderChangesInChangeSet2 = [(ESReminderChangeTrackingHelper *)selfCopy foldersContainingReminderChangesInChangeSet];
              [foldersContainingReminderChangesInChangeSet2 addObject:cdEntityName];

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

- (id)_fethAuxiliaryChangeInfosForReminderChangeObject:(id)object
{
  objectCopy = object;
  changeTracking = [(ESReminderChangeTrackingHelper *)self changeTracking];

  if (changeTracking)
  {
    changeTracking2 = [(ESReminderChangeTrackingHelper *)self changeTracking];
    v12 = 0;
    v7 = [changeTracking2 fetchAuxiliaryChangeInfosOfType:objc_opt_class() withChangeObject:objectCopy error:&v12];
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

- (id)_remListExternalIdentifierForDeletedReminderChangeObject:(id)object
{
  objectCopy = object;
  v5 = [(ESReminderChangeTrackingHelper *)self _fethAuxiliaryChangeInfosForReminderChangeObject:objectCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  auxiliaryChangeInfos = [v5 auxiliaryChangeInfos];
  v7 = [auxiliaryChangeInfos countByEnumeratingWithState:&v16 objects:v24 count:16];
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
          objc_enumerationMutation(auxiliaryChangeInfos);
        }

        storage = [*(*(&v16 + 1) + 8 * i) storage];
        v12 = [storage objectForKeyedSubscript:@"oldExternalIdentifier"];

        if (v12)
        {
          v13 = DALoggingwithCategory();
          v14 = _CPLog_to_os_log_type[7];
          if (os_log_type_enabled(v13, v14))
          {
            *buf = 138412546;
            v21 = v12;
            v22 = 2112;
            v23 = objectCopy;
            _os_log_impl(&dword_0, v13, v14, "ReminderSupport: Found reminder list external identifier: %@, for change object: %@", buf, 0x16u);
          }

          goto LABEL_13;
        }
      }

      v8 = [auxiliaryChangeInfos countByEnumeratingWithState:&v16 objects:v24 count:16];
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
    accountID = [(ESReminderChangeTrackingHelper *)self accountID];
    upToToken = [(ESReminderChangeTrackingHelper *)self upToToken];
    *buf = 138412546;
    v31 = accountID;
    v32 = 2112;
    v33 = upToToken;
    _os_log_impl(&dword_0, v3, v4, "ReminderSupport: Marking change consumed for account %@, lastConsumedChangeToken %@", buf, 0x16u);
  }

  changeTracking = [(ESReminderChangeTrackingHelper *)self changeTracking];

  if (changeTracking)
  {
    changeTracking2 = [(ESReminderChangeTrackingHelper *)self changeTracking];
    changeTrackingClientID = [changeTracking2 changeTrackingClientID];

    upToToken2 = [(ESReminderChangeTrackingHelper *)self upToToken];

    if (upToToken2)
    {
      upToToken3 = [(ESReminderChangeTrackingHelper *)self upToToken];
      sinceToken = [(ESReminderChangeTrackingHelper *)self sinceToken];
      v29 = 0;
      v13 = [upToToken3 compareToken:sinceToken error:&v29];
      v14 = v29;

      if (v13 == &dword_4)
      {
        upToToken6 = objc_alloc_init(REMChangeTrackingState);
        upToToken4 = [(ESReminderChangeTrackingHelper *)self upToToken];
        [upToToken6 setLastConsumedChangeToken:upToToken4];

        changeTracking3 = [(ESReminderChangeTrackingHelper *)self changeTracking];
        v28 = 0;
        [changeTracking3 saveTrackingState:upToToken6 error:&v28];
        accountID4 = v28;

        v19 = DALoggingwithCategory();
        accountID3 = v19;
        if (accountID4)
        {
          v21 = _CPLog_to_os_log_type[3];
          if (os_log_type_enabled(v19, v21))
          {
            accountID2 = [(ESReminderChangeTrackingHelper *)self accountID];
            *buf = 138412546;
            v31 = accountID2;
            v32 = 2112;
            v33 = accountID4;
            _os_log_impl(&dword_0, accountID3, v21, "ReminderSupport: Failed to save tracking state for account %@, error %@", buf, 0x16u);
LABEL_17:
          }
        }

        else if (os_log_type_enabled(v19, v4))
        {
          accountID2 = [(ESReminderChangeTrackingHelper *)self accountID];
          upToToken5 = [(ESReminderChangeTrackingHelper *)self upToToken];
          *buf = 138412546;
          v31 = accountID2;
          v32 = 2112;
          v33 = upToToken5;
          _os_log_impl(&dword_0, accountID3, v4, "ReminderSupport: Saved change tracking state for account %@, lastConsumedChangeToken %@", buf, 0x16u);

          goto LABEL_17;
        }

LABEL_18:

        goto LABEL_19;
      }

      accountID4 = DALoggingwithCategory();
      v26 = _CPLog_to_os_log_type[4];
      if (os_log_type_enabled(accountID4, v26))
      {
        upToToken6 = [(ESReminderChangeTrackingHelper *)self upToToken];
        accountID3 = [(ESReminderChangeTrackingHelper *)self accountID];
        *buf = 138412802;
        v31 = upToToken6;
        v32 = 2112;
        v33 = changeTrackingClientID;
        v34 = 2112;
        v35 = accountID3;
        _os_log_impl(&dword_0, accountID4, v26, "ReminderSupport: Not updating change tracking state, because no newer change token in this history {token: %@, clientID: %@, account: %@}", buf, 0x20u);
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

      accountID4 = [(ESReminderChangeTrackingHelper *)self accountID];
      *buf = 138412546;
      v31 = changeTrackingClientID;
      v32 = 2112;
      v33 = accountID4;
      _os_log_impl(&dword_0, v14, v25, "ReminderSupport: Not updating change tracking state, because no upto token in this history {clientID: %@, account: %@}", buf, 0x16u);
    }

LABEL_19:

    goto LABEL_20;
  }

  changeTrackingClientID = DALoggingwithCategory();
  v23 = _CPLog_to_os_log_type[4];
  if (os_log_type_enabled(changeTrackingClientID, v23))
  {
    accountID5 = [(ESReminderChangeTrackingHelper *)self accountID];
    *buf = 138412290;
    v31 = accountID5;
    _os_log_impl(&dword_0, changeTrackingClientID, v23, "ReminderSupport: Not updating change tracking state, because no change tracking {account: %@}", buf, 0xCu);
  }

LABEL_21:
}

- (BOOL)markReminderChangesConsumedForFolderID:(id)d
{
  dCopy = d;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v5, v6))
  {
    accountID = [(ESReminderChangeTrackingHelper *)self accountID];
    v13 = 138412546;
    v14 = accountID;
    v15 = 2112;
    v16 = dCopy;
    _os_log_impl(&dword_0, v5, v6, "ReminderSupport: Marking reminder changes consumed for account %@, folder %@", &v13, 0x16u);
  }

  foldersContainingReminderChangesInChangeSet = [(ESReminderChangeTrackingHelper *)self foldersContainingReminderChangesInChangeSet];
  v9 = [foldersContainingReminderChangesInChangeSet count];

  if (v9)
  {
    foldersContainingReminderChangesInChangeSet2 = [(ESReminderChangeTrackingHelper *)self foldersContainingReminderChangesInChangeSet];
    [foldersContainingReminderChangesInChangeSet2 removeObject:dCopy];

    _checkAndMarkChangeConsumed = [(ESReminderChangeTrackingHelper *)self _checkAndMarkChangeConsumed];
  }

  else
  {
    _checkAndMarkChangeConsumed = 0;
  }

  return _checkAndMarkChangeConsumed;
}

- (BOOL)markListChangeConsumedForFolderID:(id)d
{
  dCopy = d;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v5, v6))
  {
    accountID = [(ESReminderChangeTrackingHelper *)self accountID];
    v13 = 138412546;
    v14 = accountID;
    v15 = 2112;
    v16 = dCopy;
    _os_log_impl(&dword_0, v5, v6, "ReminderSupport: Marking reminder folder change consumed for account %@, folder %@", &v13, 0x16u);
  }

  foldersChangedInChangeSet = [(ESReminderChangeTrackingHelper *)self foldersChangedInChangeSet];
  v9 = [foldersChangedInChangeSet count];

  if (v9)
  {
    foldersChangedInChangeSet2 = [(ESReminderChangeTrackingHelper *)self foldersChangedInChangeSet];
    [foldersChangedInChangeSet2 removeObject:dCopy];

    _checkAndMarkChangeConsumed = [(ESReminderChangeTrackingHelper *)self _checkAndMarkChangeConsumed];
  }

  else
  {
    _checkAndMarkChangeConsumed = 0;
  }

  return _checkAndMarkChangeConsumed;
}

- (BOOL)markListAdditionConsumedForFolderUUID:(id)d folderID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v8 = DALoggingwithCategory();
  v9 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v8, v9))
  {
    accountID = [(ESReminderChangeTrackingHelper *)self accountID];
    v22 = 138412546;
    v23 = accountID;
    v24 = 2112;
    v25 = dCopy;
    _os_log_impl(&dword_0, v8, v9, "ReminderSupport: Marking reminder folder addition consumed for account %@, folderUUID %@", &v22, 0x16u);
  }

  foldersAddedInChangeSet = [(ESReminderChangeTrackingHelper *)self foldersAddedInChangeSet];
  v12 = [foldersAddedInChangeSet count];

  if (v12)
  {
    foldersAddedInChangeSet2 = [(ESReminderChangeTrackingHelper *)self foldersAddedInChangeSet];
    [foldersAddedInChangeSet2 removeObject:dCopy];
  }

  foldersContainingReminderChangesInChangeSet = [(ESReminderChangeTrackingHelper *)self foldersContainingReminderChangesInChangeSet];
  v15 = [foldersContainingReminderChangesInChangeSet containsObject:dCopy];

  if (v15)
  {
    foldersContainingReminderChangesInChangeSet2 = [(ESReminderChangeTrackingHelper *)self foldersContainingReminderChangesInChangeSet];
    [foldersContainingReminderChangesInChangeSet2 removeObject:dCopy];

    foldersContainingReminderChangesInChangeSet3 = [(ESReminderChangeTrackingHelper *)self foldersContainingReminderChangesInChangeSet];
    v18 = [foldersContainingReminderChangesInChangeSet3 containsObject:iDCopy];

    if ((v18 & 1) == 0)
    {
      foldersContainingReminderChangesInChangeSet4 = [(ESReminderChangeTrackingHelper *)self foldersContainingReminderChangesInChangeSet];
      [foldersContainingReminderChangesInChangeSet4 addObject:iDCopy];
    }
  }

  _checkAndMarkChangeConsumed = [(ESReminderChangeTrackingHelper *)self _checkAndMarkChangeConsumed];

  return _checkAndMarkChangeConsumed;
}

- (BOOL)_checkAndMarkChangeConsumed
{
  foldersContainingReminderChangesInChangeSet = [(ESReminderChangeTrackingHelper *)self foldersContainingReminderChangesInChangeSet];
  if ([foldersContainingReminderChangesInChangeSet count])
  {
    goto LABEL_4;
  }

  foldersAddedInChangeSet = [(ESReminderChangeTrackingHelper *)self foldersAddedInChangeSet];
  if ([foldersAddedInChangeSet count])
  {

LABEL_4:
LABEL_5:
    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v5, v6))
    {
      accountID = [(ESReminderChangeTrackingHelper *)self accountID];
      foldersContainingReminderChangesInChangeSet2 = [(ESReminderChangeTrackingHelper *)self foldersContainingReminderChangesInChangeSet];
      foldersAddedInChangeSet2 = [(ESReminderChangeTrackingHelper *)self foldersAddedInChangeSet];
      foldersChangedInChangeSet = [(ESReminderChangeTrackingHelper *)self foldersChangedInChangeSet];
      v17 = 138413058;
      v18 = accountID;
      v19 = 2112;
      v20 = foldersContainingReminderChangesInChangeSet2;
      v21 = 2112;
      v22 = foldersAddedInChangeSet2;
      v23 = 2112;
      v24 = foldersChangedInChangeSet;
      _os_log_impl(&dword_0, v5, v6, "ReminderSupport: Changes not yet consumed for account %@, reminders in folders %@, folder additions: %@, folder changes:%@", &v17, 0x2Au);
    }

    return 0;
  }

  foldersChangedInChangeSet2 = [(ESReminderChangeTrackingHelper *)self foldersChangedInChangeSet];
  v13 = [foldersChangedInChangeSet2 count];

  if (v13)
  {
    goto LABEL_5;
  }

  v14 = DALoggingwithCategory();
  v15 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v14, v15))
  {
    accountID2 = [(ESReminderChangeTrackingHelper *)self accountID];
    v17 = 138412290;
    v18 = accountID2;
    _os_log_impl(&dword_0, v14, v15, "ReminderSupport: All changes are consumed for account %@", &v17, 0xCu);
  }

  [(ESReminderChangeTrackingHelper *)self _markChangesConsumed];
  return 1;
}

@end