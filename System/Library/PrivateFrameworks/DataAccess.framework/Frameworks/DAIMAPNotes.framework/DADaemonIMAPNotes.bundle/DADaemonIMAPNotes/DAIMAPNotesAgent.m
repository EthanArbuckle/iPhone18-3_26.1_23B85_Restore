@interface DAIMAPNotesAgent
- (BOOL)_clearChangeHistoriesInContext:(id)a3 changeSet:(id)a4;
- (DAIMAPNotesAgent)initWithAccount:(id)a3;
- (id)_copyDAActionsFromNoteChanges:(id)a3 inStore:(id)a4 mutableNotesToDeleteAfterSync:(id)a5;
- (id)waiterID;
- (void)_appendSyncRequest:(id)a3;
- (void)_callShutdownBlockIfAppropriate;
- (void)_finishSyncResultOnMainThreadForFolderWithDictionary:(id)a3;
- (void)_fireWaitingFolderItemSyncRequests;
- (void)_handlePushNotificationWithName:(id)a3;
- (void)_notifyContentSyncComplete;
- (void)_notifyContentSyncFailed;
- (void)_notifyFolderSyncComplete;
- (void)_notifyFolderSyncFailed;
- (void)_reallySyncRequest:(id)a3;
- (void)_serverUpdatedNoteFolder:(id)a3;
- (void)_setLastFolderSetRegisteredForPush:(id)a3;
- (void)_setUpNotesNotifications;
- (void)_syncInLockRequest:(id)a3;
- (void)_syncRequest:(id)a3;
- (void)_tearDownNotesNotifications;
- (void)connectionManager:(id)a3 handleEvent:(int)a4;
- (void)dealloc;
- (void)failedToRetrieveFolderListWithStatus:(int64_t)a3 andError:(id)a4;
- (void)notesFolderWithId:(id)a3 failedToSyncWithStatus:(int64_t)a4 error:(id)a5;
- (void)requestAgentStopMonitoringWithCompletionBlock:(id)a3;
- (void)startMonitoring;
- (void)successfullyRetrievedFolderList;
- (void)syncFolderIDs:(id)a3 forDataclasses:(int64_t)a4 isUserRequested:(BOOL)a5;
- (void)syncResultForNotesFolder:(id)a3 noteContext:(id)a4 newTag:(id)a5 previousTag:(id)a6 actions:(id)a7 results:(id)a8 changeSet:(id)a9 notesToDeleteAfterSync:(id)a10 isInitialSync:(BOOL)a11 moreAvailable:(BOOL)a12 moreLocalChangesAvailable:(BOOL)a13;
@end

@implementation DAIMAPNotesAgent

- (id)_copyDAActionsFromNoteChanges:(id)a3 inStore:(id)a4 mutableNotesToDeleteAfterSync:(id)a5
{
  v7 = a3;
  v47 = a4;
  v55 = a5;
  v54 = objc_opt_new();
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v7;
  v49 = [obj countByEnumeratingWithState:&v65 objects:v75 count:16];
  if (v49)
  {
    v48 = *v66;
    v51 = _CPLog_to_os_log_type[6];
    v9 = _CPLog_to_os_log_type[3];
    *&v8 = 138412546;
    v45 = v8;
    type = v9;
    do
    {
      v10 = 0;
      do
      {
        if (*v66 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v65 + 1) + 8 * v10);
        v12 = [v11 changeType];
        v13 = [v12 intValue];

        if (v13)
        {
          if (v13 == 2)
          {
            v50 = v10;
            v53 = 0;
            v14 = 1;
            v15 = 2;
          }

          else
          {
            if (v13 != 1)
            {
              v19 = DALoggingwithCategory();
              if (os_log_type_enabled(v19, v9))
              {
                v42 = [v11 changeType];
                *buf = v45;
                v72 = v42;
                v73 = 2112;
                v74 = v11;
                _os_log_impl(&dword_0, v19, v9, "Unknown change type %@ from change object %@", buf, 0x16u);
              }

              goto LABEL_46;
            }

            v50 = v10;
            v14 = 0;
            v53 = 0;
            v15 = 1;
          }

          v52 = v15;
        }

        else
        {
          v50 = v10;
          v14 = 0;
          v52 = 0;
          v53 = 1;
        }

        v16 = [v11 noteIntegerIds];
        v17 = [v47 notesForIntegerIds:v16];

        v18 = objc_opt_new();
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v19 = v17;
        v20 = [v19 countByEnumeratingWithState:&v61 objects:v70 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v62;
          do
          {
            for (i = 0; i != v21; i = i + 1)
            {
              if (*v62 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v61 + 1) + 8 * i);
              v25 = [v24 integerId];
              [v18 setObject:v24 forKeyedSubscript:v25];
            }

            v21 = [v19 countByEnumeratingWithState:&v61 objects:v70 count:16];
          }

          while (v21);
        }

        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v26 = [v11 noteIntegerIds];
        v27 = [v26 countByEnumeratingWithState:&v57 objects:v69 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v58;
          do
          {
            v30 = 0;
            do
            {
              if (*v58 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v57 + 1) + 8 * v30);
              v32 = [v18 objectForKeyedSubscript:v31];
              v33 = v32;
              if (!v32)
              {
                v37 = DALoggingwithCategory();
                if (os_log_type_enabled(v37, type))
                {
                  *buf = 138412290;
                  v72 = v31;
                  _os_log_impl(&dword_0, v37, type, "Looking at a change to note with integer id %@, but that note doesn't exist in the notes db.  Ignoring this change", buf, 0xCu);
                }

                goto LABEL_39;
              }

              if (v14)
              {
                if ([v32 hasValidServerIntId])
                {
                  v34 = [DAAction alloc];
                  v35 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v33 serverIntId]);
                  v36 = [v34 initWithItemChangeType:2 changedItem:0 serverId:v35];

                  [v54 addObject:v36];
                }

                [v55 addObject:v33];
              }

              else
              {
                if (![v32 isMarkedForDeletion])
                {
                  v37 = [[DAAction alloc] initWithItemChangeType:v52 changedItem:v31 serverId:0];
                  goto LABEL_38;
                }

                [v55 addObject:v33];
                if (v53)
                {
                  v38 = DALoggingwithCategory();
                  if (os_log_type_enabled(v38, v51))
                  {
                    *buf = 138412290;
                    v72 = v33;
                    _os_log_impl(&dword_0, v38, v51, "Skipping add of marked-deleted note %@", buf, 0xCu);
                  }
                }

                else if ([v33 hasValidServerIntId])
                {
                  v39 = [DAAction alloc];
                  v40 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v33 serverIntId]);
                  v37 = [v39 initWithItemChangeType:2 changedItem:0 serverId:v40];

LABEL_38:
                  [v54 addObject:v37];
LABEL_39:
                }
              }

              v30 = v30 + 1;
            }

            while (v28 != v30);
            v41 = [v26 countByEnumeratingWithState:&v57 objects:v69 count:16];
            v28 = v41;
          }

          while (v41);
        }

        v9 = type;
        v10 = v50;
LABEL_46:

        v10 = v10 + 1;
      }

      while (v10 != v49);
      v43 = [obj countByEnumeratingWithState:&v65 objects:v75 count:16];
      v49 = v43;
    }

    while (v43);
  }

  return v54;
}

- (DAIMAPNotesAgent)initWithAccount:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = DAIMAPNotesAgent;
  v5 = [(DAIMAPNotesAgent *)&v18 initWithAccount:v4];
  if (v5)
  {
    v6 = objc_opt_new();
    folderItemSyncRequestLock = v5->_folderItemSyncRequestLock;
    v5->_folderItemSyncRequestLock = v6;

    v8 = [PCConnectionManager alloc];
    v9 = dataaccess_get_global_queue();
    v10 = [v4 scheduleIdentifier];
    v11 = [v8 initWithConnectionClass:1 delegate:v5 delegateQueue:v9 serviceIdentifier:v10];
    pcManager = v5->_pcManager;
    v5->_pcManager = v11;

    [(PCConnectionManager *)v5->_pcManager setOnlyAllowedStyle:1];
    v13 = [v4 imapMailAccount];
    [v13 setSourceApplicationBundleIdentifier:@"com.apple.mobilenotes"];
    objc_initWeak(&location, v5);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_969C;
    v15[3] = &unk_1C640;
    objc_copyWeak(&v16, &location);
    [v13 setHandlerForOfflineCacheFlush:v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)dealloc
{
  [(PCConnectionManager *)self->_pcManager stopManager];
  [(PCConnectionManager *)self->_pcManager setDelegate:0];
  v3 = DALoggingwithCategory();
  v4 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, v4, "IMAPNotesAgent deallocing - Tearing down PCConnectionManager and stopping ImapNotes agent", buf, 2u);
  }

  fullyShutDownCallback = self->_fullyShutDownCallback;
  if (fullyShutDownCallback)
  {
    v6 = objc_retainBlock(fullyShutDownCallback);
    v7 = self->_fullyShutDownCallback;
    self->_fullyShutDownCallback = 0;

    v6[2](v6, self);
  }

  v8.receiver = self;
  v8.super_class = DAIMAPNotesAgent;
  [(DAIMAPNotesAgent *)&v8 dealloc];
}

- (void)_setUpNotesNotifications
{
  v3 = +[DALocalDBWatcher sharedDBWatcher];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_986C;
  v4[3] = &unk_1C588;
  v4[4] = self;
  [v3 registerConcernedNoteParty:self withChangedBlock:v4];
}

- (void)_tearDownNotesNotifications
{
  v3 = +[DALocalDBWatcher sharedDBWatcher];
  [v3 removeConcernedNoteParty:self];
}

- (void)startMonitoring
{
  v3 = [(DAIMAPNotesAgent *)self account];
  v4 = [v3 enabledForDADataclass:32];

  if (v4)
  {
    [(DAIMAPNotesAgent *)self setIsMonitoring:1];
    [(DAIMAPNotesAgent *)self refreshFolderListRequireChangedFolders:0 isUserRequested:1];
    [(DAIMAPNotesAgent *)self _setUpNotesNotifications];
    pcManager = self->_pcManager;

    [(PCConnectionManager *)pcManager startManager];
  }
}

- (void)_serverUpdatedNoteFolder:(id)a3
{
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_0, v5, v6, "Received push notification for name %@", buf, 0xCu);
  }

  v7 = dataaccess_get_global_queue();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_9AE8;
  v9[3] = &unk_1C668;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_async(v7, v9);
}

- (void)_setLastFolderSetRegisteredForPush:(id)a3
{
  v5 = a3;
  v6 = DALoggingwithCategory();
  v7 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v6, v7))
  {
    *buf = 138412290;
    v62 = v5;
    _os_log_impl(&dword_0, v6, v7, "Want the following mailbox uids registered for push: %@", buf, 0xCu);
  }

  if (self->_lastFolderSetRegisteredForPush != v5)
  {
    v42 = a3;
    v8 = objc_opt_new();
    daFoldersByPushNotificationName = self->_daFoldersByPushNotificationName;
    self->_daFoldersByPushNotificationName = v8;

    v10 = [(DAIMAPNotesAgent *)self account];
    v11 = [v10 imapMailAccount];

    v12 = [(NSSet *)self->_lastFolderSetRegisteredForPush allObjects];
    v13 = [v11 notificationNamesForPrefix:@"com.apple.dataaccessd" mailboxUids:v12];

    v43 = v5;
    v14 = [(NSSet *)v5 allObjects];
    v44 = v11;
    v49 = [v11 registerPushNotificationPrefix:@"com.apple.dataaccessd" forMailboxUids:v14];

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = v13;
    v15 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
    v48 = self;
    if (v15)
    {
      v16 = v15;
      v17 = *v56;
      v18 = _CPLog_to_os_log_type[7];
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v56 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v55 + 1) + 8 * i);
          if (([v49 containsObject:v20] & 1) == 0)
          {
            v21 = DALoggingwithCategory();
            if (os_log_type_enabled(v21, v18))
            {
              *buf = 138412290;
              v62 = v20;
              _os_log_impl(&dword_0, v21, v18, "unregistering notification for push: %@", buf, 0xCu);
            }

            self = v48;
            [CalDistributedNotificationCenter removeObserver:v48 name:v20];
          }
        }

        v16 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
      }

      while (v16);
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v47 = v43;
    v22 = [(NSSet *)v47 countByEnumeratingWithState:&v51 objects:v59 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v52;
      type = _CPLog_to_os_log_type[7];
      v25 = @"com.apple.dataaccessd";
      v26 = &DACPLoggingAddCustomLogFile_ptr;
      do
      {
        v27 = 0;
        v28 = v44;
        v46 = v23;
        do
        {
          if (*v52 != v24)
          {
            objc_enumerationMutation(v47);
          }

          v29 = *(*(&v51 + 1) + 8 * v27);
          v30 = [v26[145] arrayWithObject:v29];
          v31 = [v28 notificationNamesForPrefix:v25 mailboxUids:v30];

          if ([v31 count] == &dword_0 + 1)
          {
            v32 = v24;
            v33 = v26;
            v34 = v25;
            v35 = [v31 objectAtIndex:0];
            v36 = [v29 URLString];

            if (v36)
            {
              v37 = [(DAIMAPNotesAgent *)self account];
              v38 = [v37 notesFoldersByFolderId];
              v39 = [v29 URLString];
              v40 = [v38 objectForKey:v39];

              self = v48;
              if (v40)
              {
                [(NSMutableDictionary *)v48->_daFoldersByPushNotificationName setObject:v40 forKey:v35];
              }

              v28 = v44;
            }

            v25 = v34;
            v26 = v33;
            v24 = v32;
            v23 = v46;
            if (([obj containsObject:v35] & 1) == 0)
            {
              v41 = DALoggingwithCategory();
              if (os_log_type_enabled(v41, type))
              {
                *buf = 138412290;
                v62 = v35;
                _os_log_impl(&dword_0, v41, type, "registering notification for push: %@", buf, 0xCu);
              }

              [CalDistributedNotificationCenter addObserver:self selector:"_serverUpdatedNoteFolder:" name:v35];
            }
          }

          v27 = v27 + 1;
        }

        while (v23 != v27);
        v23 = [(NSSet *)v47 countByEnumeratingWithState:&v51 objects:v59 count:16];
      }

      while (v23);
    }

    objc_storeStrong(&self->_lastFolderSetRegisteredForPush, v42);
    v5 = v43;
  }
}

- (void)successfullyRetrievedFolderList
{
  if (self->_isShuttingDown)
  {

    [(DAIMAPNotesAgent *)self _notifyFolderSyncFailed];
  }

  else
  {
    v3 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = [(DAIMAPNotesAgent *)self account];
    v5 = [v4 notesFoldersByFolderId];
    v6 = [v5 allValues];

    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v15 + 1) + 8 * i) mailboxUid];
          if (v11)
          {
            [v3 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    if (!self->_lastFolderSetRegisteredForPush || ([v3 isEqual:?] & 1) == 0)
    {
      [(DAIMAPNotesAgent *)self _setLastFolderSetRegisteredForPush:v3];
    }

    v12 = DALoggingwithCategory();
    v13 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v12, v13))
    {
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "Got Folder List from my account, going to sync my folders", v14, 2u);
    }

    [(DAIMAPNotesAgent *)self _syncAllNotesFoldersWithRemoteChanges:1];
    [(DAIMAPNotesAgent *)self _notifyFolderSyncComplete];
  }
}

- (void)failedToRetrieveFolderListWithStatus:(int64_t)a3 andError:(id)a4
{
  v7 = a4;
  v8 = [v7 domain];
  if ([v8 isEqualToString:MFMessageErrorDomain])
  {
    if ([v7 code] == &stru_3D8.offset)
    {

LABEL_11:
      v13 = DALoggingwithCategory();
      v14 = _CPLog_to_os_log_type[5];
      if (os_log_type_enabled(v13, v14))
      {
        *buf = 67109120;
        LODWORD(Name) = [v7 code];
        _os_log_impl(&dword_0, v13, v14, "Got an auth error (%d) for IMAPNotes. Attempting to renew credentials.", buf, 8u);
      }

      [(DAIMAPNotesAgent *)self setIsWaitingForPassword:1];
      v15 = [(DAIMAPNotesAgent *)self account];
      v16 = dataaccess_get_global_queue();
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_A4E8;
      v17[3] = &unk_1C690;
      v17[4] = self;
      [v15 dropAssertionsAndRenewCredentialsInQueue:v16 withHandler:v17];

      goto LABEL_14;
    }

    v12 = [v7 code];

    if (v12 == &stru_3D8.reserved1 + 3)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v9 = [v7 domain];
  if (([v9 isEqualToString:DAErrorDomain]& 1) == 0)
  {
    v10 = [v7 code];

    if (v10 != &dword_4 + 2)
    {
      goto LABEL_14;
    }

    v9 = DALoggingwithCategory();
    v11 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v9, v11))
    {
      *buf = 136315650;
      Name = sel_getName(a2);
      v20 = 2048;
      v21 = a3;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_0, v9, v11, "Yikes: %s %ld %@", buf, 0x20u);
    }
  }

LABEL_14:
  [(DAIMAPNotesAgent *)self _notifyFolderSyncFailed];
}

- (void)syncFolderIDs:(id)a3 forDataclasses:(int64_t)a4 isUserRequested:(BOOL)a5
{
  v6 = a3;
  v7 = v6;
  if (self->_isShuttingDown)
  {
    [(DAIMAPNotesAgent *)self _notifyContentSyncFailed];
  }

  else if (v6)
  {
    v8 = [(DAIMAPNotesAgent *)self account];
    v9 = [v8 notesFoldersByFolderId];

    if ([v9 count])
    {
      v20 = self;
      v10 = objc_opt_new();
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v21 = v7;
      v11 = v7;
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        v15 = _CPLog_to_os_log_type[3];
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v22 + 1) + 8 * i);
            v18 = [v9 objectForKeyedSubscript:{v17, v20}];
            if (v18)
            {
              [v10 addObject:v18];
            }

            else
            {
              v19 = DALoggingwithCategory();
              if (os_log_type_enabled(v19, v15))
              {
                *buf = 138412546;
                v27 = v17;
                v28 = 2112;
                v29 = v9;
                _os_log_impl(&dword_0, v19, v15, "Asked to sync folder with id %@, but I only know of these folders %@", buf, 0x16u);
              }
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
        }

        while (v13);
      }

      [(DAIMAPNotesAgent *)v20 _appendSyncRequestsForFolders:v10 remoteChanges:1];
      v7 = v21;
    }

    else
    {
      [(DAIMAPNotesAgent *)self _validateAndSyncWithRemoteChanges:1];
    }
  }

  else
  {
    [(DAIMAPNotesAgent *)self _validateAndSyncWithRemoteChanges:1];
  }
}

- (BOOL)_clearChangeHistoriesInContext:(id)a3 changeSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_isShuttingDown || ![v7 count])
  {
    v9 = 0;
  }

  else
  {
    [v6 deleteChanges:v8];
    v9 = 1;
  }

  return v9;
}

- (void)_finishSyncResultOnMainThreadForFolderWithDictionary:(id)a3
{
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"folderID"];
  [(NSMutableSet *)self->_currentlySyncingFolderIds removeObject:v6];
  if (!self->_isShuttingDown)
  {
    v7 = +[DALocalDBGateKeeper sharedGateKeeper];
    [v7 relinquishLocksForWaiter:self dataclasses:32 moreComing:0];

    [(DAIMAPNotesAgent *)self _fireWaitingFolderItemSyncRequests];
  }

  outstandingInvocationCount = self->_outstandingInvocationCount;
  self->_outstandingInvocationCount = outstandingInvocationCount - 1;
  if (outstandingInvocationCount <= 0)
  {
    sub_FBE0(a2, self);
  }

  v9 = DALoggingwithCategory();
  v10 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v9, v10))
  {
    v11 = self->_outstandingInvocationCount;
    v13 = 138412546;
    v14 = self;
    v15 = 1024;
    v16 = v11;
    _os_log_impl(&dword_0, v9, v10, "IMAP agent %@ finished sync, decremented _outstandingInvocationCount to %d", &v13, 0x12u);
  }

  if (!self->_outstandingInvocationCount && ![(NSMutableArray *)self->_outstandingFolderRequests count]&& ![(NSMutableSet *)self->_currentlySyncingFolderIds count])
  {
    v12 = [v5 objectForKeyedSubscript:@"error"];

    if (v12)
    {
      [(DAIMAPNotesAgent *)self _notifyContentSyncFailed];
    }

    else
    {
      [(DAIMAPNotesAgent *)self _notifyContentSyncComplete];
    }
  }

  [(DAIMAPNotesAgent *)self _callShutdownBlockIfAppropriate];
}

- (void)syncResultForNotesFolder:(id)a3 noteContext:(id)a4 newTag:(id)a5 previousTag:(id)a6 actions:(id)a7 results:(id)a8 changeSet:(id)a9 notesToDeleteAfterSync:(id)a10 isInitialSync:(BOOL)a11 moreAvailable:(BOOL)a12 moreLocalChangesAvailable:(BOOL)a13
{
  v16 = a3;
  v17 = a4;
  v18 = a9;
  v19 = a10;
  v52 = @"folderID";
  v53 = v16;
  v20 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  v21 = [v20 mutableCopy];

  if (!self->_isShuttingDown)
  {
    v41 = a2;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v22 = v19;
    v23 = [v22 countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v46;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v46 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [v17 deleteNoteRegardlessOfConstraints:*(*(&v45 + 1) + 8 * i)];
        }

        v24 = [v22 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v24);
    }

    [(DAIMAPNotesAgent *)self _clearChangeHistoriesInContext:v17 changeSet:v18];
    v44 = 0;
    v27 = [v17 save:&v44];
    v28 = v44;
    if ((v27 & 1) == 0)
    {
      v29 = DALoggingwithCategory();
      v30 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v29, v30))
      {
        v31 = [v28 DAExtendedDescription];
        *buf = 138412290;
        v50 = v31;
        _os_log_impl(&dword_0, v29, v30, "Failed to save: %@", buf, 0xCu);
      }

      if (v28)
      {
        [v21 setObject:v28 forKeyedSubscript:@"error"];
      }

      if ([NoteContext databaseIsCorrupt:v28])
      {
        v32 = DALoggingwithCategory();
        if (os_log_type_enabled(v32, v30))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v32, v30, "Notes database was corrupted! This is a fatal error, so let's try that again.", buf, 2u);
        }

        v33 = +[NSAssertionHandler currentHandler];
        [v33 handleFailureInMethod:v41 object:self file:@"DAIMAPNotesAgent.m" lineNumber:384 description:{@"Notes db was corrupted.  Crashing the daemon to get a second chance at it (err %@)", v28}];
      }
    }

    v34 = DALoggingwithCategory();
    v35 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v34, v35))
    {
      *buf = 138412290;
      v50 = v16;
      _os_log_impl(&dword_0, v34, v35, "Finished syncing folder %@", buf, 0xCu);
    }
  }

  v36 = [(DAIMAPNotesAgent *)self account];
  v37 = [v36 imapMailAccount];
  v38 = [v37 isOffline];

  if (v38)
  {
    v39 = [NSError errorWithDomain:DAErrorDomain code:0 userInfo:0];
    [v21 setObject:v39 forKeyedSubscript:@"error"];
  }

  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_B240;
  v42[3] = &unk_1C668;
  v42[4] = self;
  v43 = v21;
  v40 = v21;
  [DAIMAPNotesUtils drainWorkerThreadAndInvokeBlock:v42];
}

- (void)notesFolderWithId:(id)a3 failedToSyncWithStatus:(int64_t)a4 error:(id)a5
{
  v7 = a3;
  v8 = a5;
  v14 = @"folderID";
  v15 = v7;
  v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v10 = [v9 mutableCopy];

  if (v8)
  {
    [v10 setObject:v8 forKeyedSubscript:@"error"];
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_B398;
  v12[3] = &unk_1C668;
  v12[4] = self;
  v13 = v10;
  v11 = v10;
  [DAIMAPNotesUtils drainWorkerThreadAndInvokeBlock:v12];
}

- (void)_reallySyncRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 folder];
  v6 = [v5 folderID];
  v27 = @"folderID";
  v28 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v22 = [v7 mutableCopy];

  v8 = [(DAIMAPNotesAgent *)self account];
  v9 = [v4 noteContext];
  v10 = [v8 localNotesAccountInContext:v9];
  v11 = [v10 storeForExternalId:v6];

  if (!v11)
  {
    v17 = DALoggingwithCategory();
    v18 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v17, v18))
    {
      *buf = 138412290;
      v26 = v6;
      _os_log_impl(&dword_0, v17, v18, "Asked to sync folder with id %@, but I have no matching container", buf, 0xCu);
    }

    v11 = [NSError errorWithDomain:DAErrorDomain code:10 userInfo:0];
    [v22 setObject:v11 forKeyedSubscript:@"error"];
    goto LABEL_11;
  }

  v12 = [v11 changes];
  if (([v4 hasRemoteChanges] & 1) == 0 && !objc_msgSend(v12, "count"))
  {
    v19 = DALoggingwithCategory();
    v20 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v19, v20))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v19, v20, "Asked to sync, but there are no local or remote changes.  Ignoring that request", buf, 2u);
    }

LABEL_11:
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_B89C;
    v23[3] = &unk_1C668;
    v23[4] = self;
    v24 = v22;
    [DAIMAPNotesUtils drainWorkerThreadAndInvokeBlock:v23];

    goto LABEL_12;
  }

  v13 = +[NSMutableSet set];
  v14 = [(DAIMAPNotesAgent *)self _copyDAActionsFromNoteChanges:v12 inStore:v11 mutableNotesToDeleteAfterSync:v13];
  v15 = [(DAIMAPNotesAgent *)self account];
  v16 = [v4 noteContext];
  BYTE2(v21) = 0;
  LOWORD(v21) = 0;
  [v15 synchronizeNotesFolder:v6 noteContext:v16 previousTag:0 actions:v14 changeSet:v12 notesToDeleteAfterSync:v13 isInitialUberSync:v21 isResyncAfterConnectionFailed:self moreLocalChangesAvailable:? consumer:?];

LABEL_12:
}

- (void)_syncInLockRequest:(id)a3
{
  v4 = [MFMonitoredInvocation mf_invocationWithSelector:"_reallySyncRequest:" target:self object:a3];
  ++self->_outstandingInvocationCount;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    outstandingInvocationCount = self->_outstandingInvocationCount;
    v9 = 138412546;
    v10 = self;
    v11 = 1024;
    v12 = outstandingInvocationCount;
    _os_log_impl(&dword_0, v5, v6, "IMAP agent %@ starting sync, incremented _outstandingInvocationCount to %d", &v9, 0x12u);
  }

  v8 = +[MFInvocationQueue sharedInvocationQueue];
  [v8 addInvocation:v4];
}

- (void)_syncRequest:(id)a3
{
  v4 = a3;
  v5 = +[DALocalDBGateKeeper sharedGateKeeper];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_BAA4;
  v7[3] = &unk_1C6B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 registerWaiter:self forDataclassLocks:32 completionHandler:v7];
}

- (void)_fireWaitingFolderItemSyncRequests
{
  [(NSLock *)self->_folderItemSyncRequestLock lock];
  if (!self->_currentlySyncingFolderIds)
  {
    v3 = [[NSMutableSet alloc] initWithCapacity:1];
    currentlySyncingFolderIds = self->_currentlySyncingFolderIds;
    self->_currentlySyncingFolderIds = v3;
  }

  v23 = [[NSMutableArray alloc] initWithCapacity:1];
  v5 = [(NSMutableArray *)self->_outstandingFolderRequests copy];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v30;
    v10 = _CPLog_to_os_log_type[3];
    while (1)
    {
      v11 = 0;
      v12 = v8;
      do
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v29 + 1) + 8 * v11);

        v13 = [v8 folder];
        v14 = [v13 folderID];

        if (v14)
        {
          if (([(NSMutableSet *)self->_currentlySyncingFolderIds containsObject:v14]& 1) != 0)
          {
            goto LABEL_15;
          }

          [(NSMutableSet *)self->_currentlySyncingFolderIds addObject:v14];
          [v23 addObject:v8];
        }

        else
        {
          v15 = DALoggingwithCategory();
          if (os_log_type_enabled(v15, v10))
          {
            *buf = 136315394;
            v35 = "[DAIMAPNotesAgent _fireWaitingFolderItemSyncRequests]";
            v36 = 2112;
            v37 = v8;
            _os_log_impl(&dword_0, v15, v10, "%s: asked to sync folder request %@, but that has no server id.  Dropping this sync on the floor", buf, 0x16u);
          }
        }

        [(NSMutableArray *)self->_outstandingFolderRequests removeObject:v8];
LABEL_15:

        v11 = v11 + 1;
        v12 = v8;
      }

      while (v7 != v11);
      v7 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
      if (!v7)
      {

        break;
      }
    }
  }

  [(NSLock *)self->_folderItemSyncRequestLock unlock];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = v23;
  v17 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v26;
    do
    {
      v21 = 0;
      v22 = v19;
      do
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v19 = *(*(&v25 + 1) + 8 * v21);

        [(DAIMAPNotesAgent *)self _syncRequest:v19];
        v21 = v21 + 1;
        v22 = v19;
      }

      while (v18 != v21);
      v18 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v18);
  }
}

- (void)_appendSyncRequest:(id)a3
{
  v5 = a3;
  [(NSLock *)self->_folderItemSyncRequestLock lock];
  outstandingFolderRequests = self->_outstandingFolderRequests;
  if (!outstandingFolderRequests)
  {
    v7 = [[NSMutableArray alloc] initWithCapacity:1];
    v8 = self->_outstandingFolderRequests;
    self->_outstandingFolderRequests = v7;

    outstandingFolderRequests = self->_outstandingFolderRequests;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = outstandingFolderRequests;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v20 = a2;
    v12 = 0;
    v13 = *v22;
    while (2)
    {
      v14 = 0;
      v15 = v12;
      do
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v12 = *(*(&v21 + 1) + 8 * v14);

        v16 = [v12 folder];
        v17 = [v5 folder];
        v18 = [v16 isEqual:v17];

        if (v18)
        {
          if ([v5 hasRemoteChanges])
          {
            [v12 setHasRemoteChanges:1];
          }

          v19 = [v5 actions];

          if (v19)
          {
            sub_FC54(v20, self, v5);
          }

          goto LABEL_17;
        }

        v14 = v14 + 1;
        v15 = v12;
      }

      while (v11 != v14);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  [(NSMutableArray *)self->_outstandingFolderRequests addObject:v5];
  v12 = 0;
LABEL_17:
  [(NSLock *)self->_folderItemSyncRequestLock unlock];
  [(DAIMAPNotesAgent *)self _fireWaitingFolderItemSyncRequests];
}

- (void)_handlePushNotificationWithName:(id)a3
{
  v4 = a3;
  if (v4 && ([(NSMutableDictionary *)self->_daFoldersByPushNotificationName objectForKey:v4], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [NSSet setWithObject:v5];
    [(DAIMAPNotesAgent *)self _appendSyncRequestsForFolders:v7 remoteChanges:1];
  }

  else
  {
    v8 = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v8, v9))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&dword_0, v8, v9, "Couldn't find folder corresponding to notification name %@. Going to sync all folders", &v14, 0xCu);
    }

    v10 = DALoggingwithCategory();
    v11 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v10, v11))
    {
      lastFolderSetRegisteredForPush = self->_lastFolderSetRegisteredForPush;
      daFoldersByPushNotificationName = self->_daFoldersByPushNotificationName;
      v14 = 138412546;
      v15 = lastFolderSetRegisteredForPush;
      v16 = 2112;
      v17 = daFoldersByPushNotificationName;
      _os_log_impl(&dword_0, v10, v11, "_lastFolderSetRegisteredForPush %@ _daFoldersByPushNotificationName %@", &v14, 0x16u);
    }

    [(DAIMAPNotesAgent *)self _syncAllNotesFoldersWithRemoteChanges:1];
  }
}

- (void)_notifyFolderSyncComplete
{
  v3 = [(DAIMAPNotesAgent *)self account];
  v4 = [v3 accountID];

  if (v4)
  {
    v5 = [(DAIMAPNotesAgent *)self account];
    v6 = [v5 accountID];
    name = [@"IMAPNotesAccountFolderHierarchySyncCompleteNotification-" stringByAppendingString:v6];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, name, 0, 0, 1u);
  }
}

- (void)_notifyFolderSyncFailed
{
  v3 = [(DAIMAPNotesAgent *)self account];
  v4 = [v3 accountID];

  if (v4)
  {
    v5 = [(DAIMAPNotesAgent *)self account];
    v6 = [v5 accountID];
    name = [@"IMAPNotesAccountFolderHierarchySyncFailedNotification-" stringByAppendingString:v6];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, name, 0, 0, 1u);
  }
}

- (void)_notifyContentSyncComplete
{
  v3 = [(DAIMAPNotesAgent *)self account];
  v4 = [v3 accountID];

  if (v4)
  {
    v5 = [(DAIMAPNotesAgent *)self account];
    v6 = [v5 accountID];
    name = [@"IMAPNotesAccountContentSyncCompleteNotification-" stringByAppendingString:v6];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, name, 0, 0, 1u);
  }
}

- (void)_notifyContentSyncFailed
{
  v3 = [(DAIMAPNotesAgent *)self account];
  v4 = [v3 accountID];

  if (v4)
  {
    v5 = [(DAIMAPNotesAgent *)self account];
    v6 = [v5 accountID];
    name = [@"IMAPNotesAccountContentSyncFailedNotification-" stringByAppendingString:v6];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, name, 0, 0, 1u);
  }
}

- (void)connectionManager:(id)a3 handleEvent:(int)a4
{
  v6 = a3;
  v7 = DALoggingwithCategory();
  v8 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v7, v8))
  {
    v19 = 136315650;
    v20 = "[DAIMAPNotesAgent connectionManager:handleEvent:]";
    v21 = 2112;
    v22 = v6;
    v23 = 1024;
    v24 = a4;
    _os_log_impl(&dword_0, v7, v8, "%s invoked: mgr %@, event %d", &v19, 0x1Cu);
  }

  if (a4 > 8)
  {
    goto LABEL_7;
  }

  if (((1 << a4) & 0x194) != 0)
  {
    goto LABEL_23;
  }

  if (a4 == 3)
  {
    v11 = [v6 currentStyle];
    if (v11 == 1)
    {
      v14 = [(DAIMAPNotesAgent *)self account];
      [v14 scheduleIdentifier];
      PollInterval = PCSettingsGetPollInterval();

      v16 = DALoggingwithCategory();
      v17 = _CPLog_to_os_log_type[7];
      v18 = os_log_type_enabled(v16, v17);
      if (PollInterval < 1)
      {
        if (v18)
        {
          v19 = 136315138;
          v20 = "[DAIMAPNotesAgent connectionManager:handleEvent:]";
          _os_log_impl(&dword_0, v16, v17, "%s not syncing, as I'm in on-power mode, behaving like manual mode", &v19, 0xCu);
        }
      }

      else
      {
        if (v18)
        {
          v19 = 136315394;
          v20 = "[DAIMAPNotesAgent connectionManager:handleEvent:]";
          v21 = 1024;
          LODWORD(v22) = 3;
          _os_log_impl(&dword_0, v16, v17, "%s syncing all folders, and scheduling another poll action, PC reason was %d", &v19, 0x12u);
        }

        [(DAIMAPNotesAgent *)self _validateAndSyncWithRemoteChanges:1];
      }
    }

    else
    {
      if (v11 != 2)
      {
        goto LABEL_23;
      }

      v12 = DALoggingwithCategory();
      v13 = _CPLog_to_os_log_type[4];
      if (os_log_type_enabled(v12, v13))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_0, v12, v13, "Told to poll, but we're in manual PC mode.", &v19, 2u);
      }
    }

LABEL_22:
    [v6 resumeManagerWithAction:4];
    goto LABEL_23;
  }

  if (a4 == 5)
  {
    goto LABEL_22;
  }

LABEL_7:
  v9 = DALoggingwithCategory();
  v10 = _CPLog_to_os_log_type[4];
  if (os_log_type_enabled(v9, v10))
  {
    v19 = 136315394;
    v20 = "[DAIMAPNotesAgent connectionManager:handleEvent:]";
    v21 = 1024;
    LODWORD(v22) = a4;
    _os_log_impl(&dword_0, v9, v10, "%s pcManager callback out to lunch, reason is: %d", &v19, 0x12u);
  }

LABEL_23:
}

- (id)waiterID
{
  v2 = [(DAIMAPNotesAgent *)self account];
  v3 = [v2 accountID];
  v4 = [NSString stringWithFormat:@"IMAPNotesAgent-%@", v3];

  return v4;
}

- (void)_callShutdownBlockIfAppropriate
{
  if (self->_fullyShutDownCallback)
  {
    v3 = DALoggingwithCategory();
    v4 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v3, v4))
    {
      v9 = 138412802;
      v10 = self;
      v11 = 1024;
      v12 = [(DAIMAPNotesAgent *)self accountHasShutDown];
      v13 = 1024;
      v14 = [(DAIMAPNotesAgent *)self outstandingInvocationCount];
      _os_log_impl(&dword_0, v3, v4, "IMAP Agent %@ seeing if it should shut down.  Account has shut down = %d, outstanding invocation count = %d", &v9, 0x18u);
    }

    if ([(DAIMAPNotesAgent *)self accountHasShutDown]&& ![(DAIMAPNotesAgent *)self outstandingInvocationCount])
    {
      v5 = self;
      objc_sync_enter(v5);
      v6 = objc_retainBlock(self->_fullyShutDownCallback);
      fullyShutDownCallback = self->_fullyShutDownCallback;
      self->_fullyShutDownCallback = 0;

      objc_sync_exit(v5);
      if (v6)
      {
        v8 = DALoggingwithCategory();
        if (os_log_type_enabled(v8, v4))
        {
          v9 = 138412290;
          v10 = v5;
          _os_log_impl(&dword_0, v8, v4, "IMAP Agent %@ invoking fully shutdown callback", &v9, 0xCu);
        }

        v6[2](v6, v5);
      }
    }
  }
}

- (void)requestAgentStopMonitoringWithCompletionBlock:(id)a3
{
  v5 = a3;
  [(DAIMAPNotesAgent *)self setIsMonitoring:0];
  if (self->_fullyShutDownCallback)
  {
    sub_FD3C(a2, self);
  }

  self->_isShuttingDown = 1;
  v6 = DALoggingwithCategory();
  v7 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v6, v7))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v6, v7, "The IMAPNotes agent was told to stop monitoring.", buf, 2u);
  }

  [(DAIMAPNotesAgent *)self _tearDownNotesNotifications];
  [(PCConnectionManager *)self->_pcManager stopManager];
  v8 = [(DAIMAPNotesAgent *)self account];
  [v8 setIsShuttingDown:1];

  v9 = +[DALocalDBGateKeeper sharedGateKeeper];
  v10 = [(DAIMAPNotesAgent *)self account];
  [v9 unregisterWaiterForDataclassLocks:v10];

  v11 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v11 unregisterWaiterForDataclassLocks:self];

  v12 = [v5 copy];
  fullyShutDownCallback = self->_fullyShutDownCallback;
  self->_fullyShutDownCallback = v12;

  v14 = [(DAIMAPNotesAgent *)self account];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_CFD0;
  v15[3] = &unk_1C588;
  v15[4] = self;
  [v14 shutDownAndCallCallback:v15];

  if (!self->_outstandingInvocationCount)
  {
    [(DAIMAPNotesAgent *)self _callShutdownBlockIfAppropriate];
  }
}

@end