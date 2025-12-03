@interface IMDCKChatSyncController
+ (id)sharedInstance;
- (BOOL)_chatZoneCreated;
- (BOOL)_eligibleForTruthZone;
- (BOOL)_lockRecordHadConflict:(id)conflict;
- (BOOL)_shouldMarkAllChatsAsNeedingSync;
- (BOOL)_shouldResyncChatsForError:(id)error;
- (CKServerChangeToken)latestSyncToken;
- (IMDCKChatSyncController)init;
- (IMDCKChatSyncController)initWithSyncTokenStore:(id)store;
- (IMDChatRegistry)chatRegistry;
- (id)_chatZoneID;
- (id)_copyChatsToUploadWithLimit:(unint64_t)limit;
- (id)_copyRecordIDsToDelete;
- (id)_fetchChatRecordOperationWithActivity:(id)activity;
- (id)_generateLockRecord;
- (id)recordStore;
- (unint64_t)_numberOfChatsToFetch;
- (unint64_t)_numberOfChatsToWrite;
- (void)_anyChatExistsOnServerWithResultsLimit:(int)limit changeToken:(id)token activity:(id)activity completion:(id)completion;
- (void)_deleteChatRecordsWithRecordIDs:(id)ds completion:(id)completion;
- (void)_filterRecordIDsToChatsWithNoRecentModifications:(id)modifications completion:(id)completion;
- (void)_handleChatDeletionCompletionForRecordIDs:(id)ds error:(id)error;
- (void)_hasMarkedAllChatsAsNeedingSync;
- (void)_logGreenTeaLogsForChats:(id)chats;
- (void)_markChatAsDefferedForSyncingUsingRecord:(id)record;
- (void)_migrateServerChangeToken;
- (void)_needsToMarkAllChatsAsNeedingSync;
- (void)_processModifyPerRecordCallBack:(id)back error:(id)error recordIDtoGUIDmap:(id)dmap;
- (void)_processModifyRecordCompletion:(id)completion deletedRecordIDs:(id)ds error:(id)error completionBlock:(id)block;
- (void)_processRecordChanged:(id)changed;
- (void)_processRecordDeletion:(id)deletion;
- (void)_resolveChatConflictUsingCKRecord:(id)record localGUID:(id)d;
- (void)_scheduleOperation:(id)operation;
- (void)_updateChatUsingCKRecord:(id)record onRead:(BOOL)read didSucceed:(BOOL)succeed dispatchToMain:(BOOL)main;
- (void)_writeCKRecordsToChatZone:(id)zone activity:(id)activity withCompletion:(id)completion;
- (void)clearLocalSyncState:(unint64_t)state;
- (void)deleteChat1SyncToken;
- (void)deleteChatSyncToken;
- (void)deleteChatZone;
- (void)setLatestSyncToken:(id)token;
- (void)syncPendingDeletionWithCompletion:(id)completion;
@end

@implementation IMDCKChatSyncController

+ (id)sharedInstance
{
  if (qword_2814211D0 != -1)
  {
    sub_22B7D90F0();
  }

  v3 = qword_281421058;

  return v3;
}

- (IMDCKChatSyncController)initWithSyncTokenStore:(id)store
{
  storeCopy = store;
  v14.receiver = self;
  v14.super_class = IMDCKChatSyncController;
  v6 = [(IMDCKChatSyncController *)&v14 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.private.IMDCKChatSyncController", 0);
    ckQueue = v6->_ckQueue;
    v6->_ckQueue = v7;

    v9 = +[IMDRecordZoneManager sharedInstance];
    recordZoneManager = v6->_recordZoneManager;
    v6->_recordZoneManager = v9;

    objc_storeStrong(&v6->_syncTokenStore, store);
    v11 = objc_alloc_init(IMDCKChatSyncCKOperationFactory);
    CKOperationFactory = v6->_CKOperationFactory;
    v6->_CKOperationFactory = v11;

    [(IMDCKChatSyncController *)v6 _migrateServerChangeToken];
  }

  return v6;
}

- (IMDCKChatSyncController)init
{
  v3 = objc_alloc_init(IMDCKSyncTokenStore);
  v4 = [(IMDCKChatSyncController *)self initWithSyncTokenStore:v3];

  return v4;
}

- (IMDChatRegistry)chatRegistry
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6AF670;
  block[3] = &unk_278702FF0;
  block[4] = self;
  if (qword_281421360 != -1)
  {
    dispatch_once(&qword_281421360, block);
  }

  return self->_chatRegistry;
}

- (id)recordStore
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_22B4D77F0;
  v9 = sub_22B4D7960;
  v10 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6AF7E0;
  block[3] = &unk_278703200;
  block[4] = &v5;
  if (qword_27D8D0078 != -1)
  {
    dispatch_once(&qword_27D8D0078, block);
  }

  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)_generateLockRecord
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "************ CREATING CHAT LOCK RECORD **************** OH BOY **************", v11, 2u);
    }
  }

  v4 = objc_alloc(MEMORY[0x277CBC5D0]);
  recordZoneManager = [(IMDCKChatSyncController *)self recordZoneManager];
  chatRecordZoneID = [recordZoneManager chatRecordZoneID];
  v7 = [v4 initWithRecordName:@"chatLockRecordName" zoneID:chatRecordZoneID];

  v8 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"chatLockRecordType" recordID:v7];
  stringGUID = [MEMORY[0x277CCACA8] stringGUID];
  [v8 setValue:stringGUID forKey:@"lRKey"];

  return v8;
}

- (void)_migrateServerChangeToken
{
  syncTokenStore = [(IMDCKChatSyncController *)self syncTokenStore];
  [syncTokenStore migrateKey:@"changeToken" fromDatabase:@"/var/mobile/Library/SMS/CloudKitMetaData/ChatSyncZoneMetaData.db"];
}

- (void)setLatestSyncToken:(id)token
{
  tokenCopy = token;
  syncTokenStore = [(IMDCKChatSyncController *)self syncTokenStore];
  _changeTokenKey = [(IMDCKChatSyncController *)self _changeTokenKey];
  if (tokenCopy)
  {
    v6 = tokenCopy;
  }

  else
  {
    v6 = 0;
  }

  [syncTokenStore persistToken:v6 forKey:_changeTokenKey];
}

- (CKServerChangeToken)latestSyncToken
{
  syncTokenStore = [(IMDCKChatSyncController *)self syncTokenStore];
  _changeTokenKey = [(IMDCKChatSyncController *)self _changeTokenKey];
  v5 = [syncTokenStore tokenForKey:_changeTokenKey];

  return v5;
}

- (id)_copyChatsToUploadWithLimit:(unint64_t)limit
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_22B4D77F0;
  v14 = sub_22B4D7960;
  v15 = 0;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "**** Do not call [IMDCKChatSyncController _chatsToUpload] on main thread *******", v8, 2u);
      }
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B6AFC64;
    block[3] = &unk_278707D90;
    block[4] = self;
    block[5] = &v10;
    block[6] = limit;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)_chatZoneID
{
  recordZoneManager = [(IMDCKChatSyncController *)self recordZoneManager];
  chatRecordZoneID = [recordZoneManager chatRecordZoneID];

  return chatRecordZoneID;
}

- (void)_scheduleOperation:(id)operation
{
  operationCopy = operation;
  v5 = +[IMDCKDatabaseManager sharedInstance];
  truthDatabase = [v5 truthDatabase];
  [truthDatabase addOperation:operationCopy];
}

- (void)_updateChatUsingCKRecord:(id)record onRead:(BOOL)read didSucceed:(BOOL)succeed dispatchToMain:(BOOL)main
{
  mainCopy = main;
  recordCopy = record;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B6AFE78;
  aBlock[3] = &unk_278707DB8;
  aBlock[4] = self;
  v15 = recordCopy;
  readCopy = read;
  succeedCopy = succeed;
  v11 = recordCopy;
  v12 = _Block_copy(aBlock);
  v13 = v12;
  if (mainCopy)
  {
    dispatch_sync(MEMORY[0x277D85CD0], v12);
  }

  else
  {
    v12[2](v12);
  }
}

- (void)_resolveChatConflictUsingCKRecord:(id)record localGUID:(id)d
{
  recordCopy = record;
  dCopy = d;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6AFF94;
  block[3] = &unk_2787038F8;
  block[4] = self;
  v11 = recordCopy;
  v12 = dCopy;
  v8 = dCopy;
  v9 = recordCopy;
  dispatch_sync(MEMORY[0x277D85CD0], block);
}

- (void)_markChatAsDefferedForSyncingUsingRecord:(id)record
{
  recordCopy = record;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22B6B0080;
  v6[3] = &unk_278702FA0;
  v6[4] = self;
  v7 = recordCopy;
  v5 = recordCopy;
  dispatch_sync(MEMORY[0x277D85CD0], v6);
}

- (BOOL)_chatZoneCreated
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v3 = dispatch_semaphore_create(0);
  recordZoneManager = [(IMDCKChatSyncController *)self recordZoneManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22B6B0278;
  v11[3] = &unk_278703880;
  v13 = &v14;
  v5 = v3;
  v12 = v5;
  [recordZoneManager createChatZoneIfNeededWithCompletionBlock:v11];

  v6 = dispatch_time(0, 300000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    *(v15 + 24) = 0;
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "***** Timed out creating chat zone *******", v10, 2u);
      }
    }
  }

  v8 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v8;
}

- (void)_processModifyPerRecordCallBack:(id)back error:(id)error recordIDtoGUIDmap:(id)dmap
{
  v30 = *MEMORY[0x277D85DE8];
  backCopy = back;
  errorCopy = error;
  dmapCopy = dmap;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      recordID = [backCopy recordID];
      recordChangeTag = [backCopy recordChangeTag];
      *buf = 138412802;
      v25 = recordID;
      v26 = 2112;
      v27 = recordChangeTag;
      v28 = 2112;
      v29 = errorCopy;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "per record completion block record %@ changeTag %@ error %@", buf, 0x20u);
    }
  }

  ckQueue = [(IMDCKChatSyncController *)self ckQueue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22B6B0574;
  v19[3] = &unk_278705748;
  v20 = errorCopy;
  v21 = backCopy;
  selfCopy = self;
  v23 = dmapCopy;
  v15 = dmapCopy;
  v16 = backCopy;
  v17 = errorCopy;
  dispatch_sync(ckQueue, v19);

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_lockRecordHadConflict:(id)conflict
{
  v25 = *MEMORY[0x277D85DE8];
  conflictCopy = conflict;
  if ([conflictCopy code] == 2)
  {
    userInfo = [conflictCopy userInfo];
    v5 = [userInfo valueForKey:*MEMORY[0x277CBBFB0]];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    allKeys = [v5 allKeys];
    v7 = [allKeys countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v7)
    {
      v8 = *v19;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(allKeys);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          recordName = [v10 recordName];
          v12 = [recordName isEqualToString:@"chatLockRecordName"];

          if (v12)
          {
            v13 = [v5 objectForKey:v10];
            if ([v13 code] == 14)
            {
              if (IMOSLoggingEnabled())
              {
                v15 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v23 = v10;
                  _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Got a conflict while fetching lock record %@", buf, 0xCu);
                }
              }

              v14 = 1;
              goto LABEL_19;
            }
          }
        }

        v7 = [allKeys countByEnumeratingWithState:&v18 objects:v24 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_19:
  }

  else
  {
    v14 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)_processModifyRecordCompletion:(id)completion deletedRecordIDs:(id)ds error:(id)error completionBlock:(id)block
{
  v30 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dsCopy = ds;
  errorCopy = error;
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = errorCopy;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "modifyRecordsCompletionBlock error %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(completionCopy, "count")}];
      *buf = 138412290;
      v29 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Number of records saved %@", buf, 0xCu);
    }
  }

  v17 = errorCopy;
  errorAnalyzer = [(IMDCKAbstractSyncController *)self errorAnalyzer];
  v19 = [errorAnalyzer errorIndicatesQuotaExceeded:v17];

  if (v19)
  {
    v20 = v17;
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "We got back that we have exceeded quota in chat sync -- failing to continue writes", buf, 2u);
      }

      v20 = v17;
    }
  }

  else
  {
    v20 = v17;
    if ([v17 code] == 2)
    {
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "We only had partial error and the whole batch failed ", buf, 2u);
        }
      }

      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D19CF8] code:2 userInfo:0];
    }
  }

  if (blockCopy)
  {
    ckQueue = [(IMDCKChatSyncController *)self ckQueue];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_22B6B0F5C;
    v25[3] = &unk_2787028B0;
    v27 = blockCopy;
    v26 = v20;
    dispatch_async(ckQueue, v25);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_writeCKRecordsToChatZone:(id)zone activity:(id)activity withCompletion:(id)completion
{
  v44 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  activityCopy = activity;
  completionCopy = completion;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = zoneCopy;
  v9 = [v8 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v9)
  {
    v10 = 0;
    v11 = *v38;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v38 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v37 + 1) + 8 * i);
        recordType = [v13 recordType];
        v15 = [recordType isEqualToString:@"chatLockRecordType"];

        if (v15)
        {
          if (IMOSLoggingEnabled())
          {
            v16 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "lock record is present amongst chats", buf, 2u);
            }
          }

          v10 = 1;
        }

        else
        {
          v17 = [v13 _stringForKey:@"guid"];
          recordID = [v13 recordID];
          recordName = [recordID recordName];
          [dictionary setObject:v17 forKey:recordName];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v9);

    if (v10)
    {
      cKOperationFactory = [(IMDCKChatSyncController *)self CKOperationFactory];
      v21 = [cKOperationFactory saveChatsCKOperationUsingRecordsToSave:v8 activity:activityCopy];

      [v21 setPerRecordProgressBlock:&unk_283F1B128];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = sub_22B6B14E8;
      v33[3] = &unk_278707DE0;
      v33[4] = self;
      v34 = dictionary;
      [v21 setPerRecordCompletionBlock:v33];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = sub_22B6B14FC;
      v31[3] = &unk_278703858;
      v31[4] = self;
      v32 = completionCopy;
      [v21 setModifyRecordsCompletionBlock:v31];
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
          *buf = 138412290;
          v42 = v23;
          _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Attempting to write %@ records to truth zone ", buf, 0xCu);
        }
      }

      [(IMDCKChatSyncController *)self _scheduleOperation:v21];

      goto LABEL_28;
    }
  }

  else
  {
  }

  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "******** LOCK RECORD IS NOT PRESENT ******", buf, 2u);
    }
  }

  if (completionCopy)
  {
    ckQueue = [(IMDCKChatSyncController *)self ckQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B6B146C;
    block[3] = &unk_2787028D8;
    v36 = completionCopy;
    dispatch_async(ckQueue, block);

    v21 = v36;
LABEL_28:
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_numberOfChatsToFetch
{
  ckUtilities = [(IMDCKAbstractSyncController *)self ckUtilities];
  overrideNumberOfChatsToFetch = [ckUtilities overrideNumberOfChatsToFetch];

  if (overrideNumberOfChatsToFetch <= 0)
  {
    return 200;
  }

  else
  {
    return overrideNumberOfChatsToFetch;
  }
}

- (unint64_t)_numberOfChatsToWrite
{
  ckUtilities = [(IMDCKAbstractSyncController *)self ckUtilities];
  overrideNumberOfChatsToWrite = [ckUtilities overrideNumberOfChatsToWrite];

  if (overrideNumberOfChatsToWrite <= 0)
  {
    return 200;
  }

  else
  {
    return overrideNumberOfChatsToWrite;
  }
}

- (BOOL)_shouldResyncChatsForError:(id)error
{
  v12 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  domain = [errorCopy domain];
  if (![domain isEqualToString:*MEMORY[0x277D19CF8]])
  {

    goto LABEL_9;
  }

  code = [errorCopy code];

  if (code != 2)
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = errorCopy;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "We failed to sync Chats due to op lock Not doing ABC %@", &v10, 0xCu);
    }
  }

  v7 = 1;
LABEL_10:

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)_logGreenTeaLogsForChats:(id)chats
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  chatsCopy = chats;
  v4 = [chatsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v4)
  {

    goto LABEL_23;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  v8 = *v19;
  v9 = MEMORY[0x277D1A610];
  while (2)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v19 != v8)
      {
        objc_enumerationMutation(chatsCopy);
      }

      v11 = *(*(&v18 + 1) + 8 * i);
      serviceName = [v11 serviceName];
      v13 = [serviceName isEqualToString:*v9];

      if (v13)
      {
        v6 = 1;
        if ((v7 & 1) == 0)
        {
          continue;
        }
      }

      else
      {
        serviceName2 = [v11 serviceName];
        if ([serviceName2 isEqualToString:*MEMORY[0x277D1A620]])
        {
          lastAddressedLocalHandle = [v11 lastAddressedLocalHandle];
          v16 = MEMORY[0x231897A50]();
        }

        else
        {
          v16 = 0;
        }

        v7 |= v16;
        if ((v7 & 1) == 0)
        {
          continue;
        }
      }

      if (v6)
      {

        IMGreenTeaMessageTransmitLog();
LABEL_21:
        IMGreenTeaPhoneNumberTransmitLog();
        goto LABEL_23;
      }
    }

    v5 = [chatsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

  if (v6)
  {
    IMGreenTeaMessageTransmitLog();
  }

  if (v7)
  {
    goto LABEL_21;
  }

LABEL_23:

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_fetchChatRecordOperationWithActivity:(id)activity
{
  v21 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      latestSyncToken = [(IMDCKChatSyncController *)self latestSyncToken];
      _chatZoneID = [(IMDCKChatSyncController *)self _chatZoneID];
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[IMDCKChatSyncController _numberOfChatsToFetch](self, "_numberOfChatsToFetch")}];
      v15 = 138412802;
      v16 = latestSyncToken;
      v17 = 2112;
      v18 = _chatZoneID;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Creating a fetch chat record operation using sync token %@ for zone %@ limit %@", &v15, 0x20u);
    }
  }

  cKOperationFactory = [(IMDCKChatSyncController *)self CKOperationFactory];
  latestSyncToken2 = [(IMDCKChatSyncController *)self latestSyncToken];
  _chatZoneID2 = [(IMDCKChatSyncController *)self _chatZoneID];
  v12 = [cKOperationFactory fetchChatZoneChangesCKOperationUsingToken:latestSyncToken2 zone:_chatZoneID2 resultsLimit:-[IMDCKChatSyncController _numberOfChatsToFetch](self activity:{"_numberOfChatsToFetch"), activityCopy}];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)_processRecordDeletion:(id)deletion
{
  deletionCopy = deletion;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "**** _processRecordDeletion:Dropping delete as IDS syncs it real time. ***", v5, 2u);
    }
  }
}

- (void)_processRecordChanged:(id)changed
{
  changedCopy = changed;
  ckQueue = [(IMDCKChatSyncController *)self ckQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B6B1B9C;
  v7[3] = &unk_278702FA0;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_sync(ckQueue, v7);
}

- (void)deleteChatSyncToken
{
  ckQueue = [(IMDCKChatSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6B1E70;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_async(ckQueue, block);
}

- (void)deleteChat1SyncToken
{
  syncTokenStore = [(IMDCKChatSyncController *)self syncTokenStore];
  [syncTokenStore persistToken:0 forKey:@"chat1ChangeToken"];
}

- (void)_anyChatExistsOnServerWithResultsLimit:(int)limit changeToken:(id)token activity:(id)activity completion:(id)completion
{
  v48[1] = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  activityCopy = activity;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = limit;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "chatExistsWithCompletion (batch size %d)", buf, 8u);
    }
  }

  _chatZoneID = [(IMDCKChatSyncController *)self _chatZoneID];
  if (_chatZoneID)
  {
    cKOperationFactory = [(IMDCKChatSyncController *)self CKOperationFactory];
    v13 = [cKOperationFactory fetchChatZoneChangesCKOperationUsingToken:tokenCopy zone:_chatZoneID resultsLimit:limit groupName:@"ChatsExistCheck" activity:activityCopy];

    [v13 setFetchAllChanges:0];
    v14 = objc_alloc_init(MEMORY[0x277CBC3A0]);
    [v14 setResultsLimit:limit];
    [v14 setDesiredKeys:MEMORY[0x277CBEBF8]];
    v47 = _chatZoneID;
    v48[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
    [v13 setConfigurationsByRecordZoneID:v15];

    v16 = objc_alloc_init(MEMORY[0x277CBC4F0]);
    [v16 setQualityOfService:17];
    [v16 setAllowsCellularAccess:1];
    [v16 im_setActivity:activityCopy];
    [v13 setConfiguration:v16];
    operationID = [v13 operationID];
    *buf = 0;
    v44 = buf;
    v45 = 0x2020000000;
    v46 = 0;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_22B6B2418;
    v35[3] = &unk_278707E08;
    v18 = _chatZoneID;
    v36 = v18;
    v38 = buf;
    v19 = completionCopy;
    v37 = v19;
    [v13 setRecordChangedBlock:v35];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_22B6B256C;
    v27[3] = &unk_278707E30;
    v20 = operationID;
    v28 = v20;
    v33 = buf;
    v29 = v18;
    selfCopy = self;
    limitCopy = limit;
    v31 = activityCopy;
    v32 = v19;
    [v13 setRecordZoneFetchCompletionBlock:v27];
    [(IMDCKChatSyncController *)self _scheduleOperation:v13];
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        operationID2 = [v13 operationID];
        *v39 = 138412546;
        v40 = operationID2;
        v41 = 1024;
        limitCopy2 = limit;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Scheduled fetch changes operation to check for the existence of a single chat with identifier: %@ (batch size %d)", v39, 0x12u);
      }
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_13;
  }

  if (completionCopy)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D19CF8] code:1 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v13);
LABEL_13:
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)deleteChatZone
{
  ckQueue = [(IMDCKChatSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6B2834;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_async(ckQueue, block);

  [(IMDCKChatSyncController *)self clearLocalSyncState:3];
}

- (BOOL)_eligibleForTruthZone
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v3 = dispatch_semaphore_create(0);
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "chat sync controller checking eligibility", buf, 2u);
    }
  }

  ckUtilities = [(IMDCKAbstractSyncController *)self ckUtilities];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_22B6B2BA0;
  v16[3] = &unk_278707E58;
  v18 = &v19;
  v16[4] = self;
  v6 = v3;
  v17 = v6;
  [ckUtilities fetchCloudKitAccountStatusAndUpdateEligibilityAndNeedsRepairStatusWithCompletion:v16];

  v7 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v6, v7))
  {
    syncState = [(IMDCKAbstractSyncController *)self syncState];
    isEligibleForTruthZone = [syncState isEligibleForTruthZone];
    *(v20 + 24) = isEligibleForTruthZone;

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "***** Timed out checking truth zone eligibility *******", buf, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        if (*(v20 + 24))
        {
          v12 = @"YES";
        }

        else
        {
          v12 = @"NO";
        }

        *buf = 138412290;
        v24 = v12;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Returning cached value: %@", buf, 0xCu);
      }
    }
  }

  v13 = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  v14 = *MEMORY[0x277D85DE8];
  return v13 & 1;
}

- (void)_needsToMarkAllChatsAsNeedingSync
{
  mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
  [mEMORY[0x277D1A990] setBool:0 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A30]];
}

- (BOOL)_shouldMarkAllChatsAsNeedingSync
{
  v12 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D1ACB8] = [MEMORY[0x277D1ACB8] sharedInstance];
  isUnderFirstDataProtectionLock = [mEMORY[0x277D1ACB8] isUnderFirstDataProtectionLock];

  if (isUnderFirstDataProtectionLock)
  {
    v4 = 0;
  }

  else
  {
    mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
    v4 = [mEMORY[0x277D1A990] getBoolFromDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A30]] ^ 1;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (v4)
      {
        v7 = @"YES";
      }

      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "_shouldMarkAllChatsAsNeedingSync %@", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)_hasMarkedAllChatsAsNeedingSync
{
  mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
  [mEMORY[0x277D1A990] setBool:1 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A30]];
}

- (void)clearLocalSyncState:(unint64_t)state
{
  stateCopy = state;
  v22 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v21 = stateCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Clearing local chat sync state, flags 0x%x", buf, 8u);
    }
  }

  if (stateCopy)
  {
    ckUtilities = [(IMDCKAbstractSyncController *)self ckUtilities];
    [ckUtilities reportMOCDebuggingErrorWithString:@"ResetSyncDate" internalOnly:1 initialSync:0 reasonString:@"ResetSyncDate"];

    syncState = [(IMDCKAbstractSyncController *)self syncState];
    [syncState setLastSyncDate:0];

    [(IMDCKChatSyncController *)self deleteChatSyncToken];
    [(IMDCKChatSyncController *)self setLockRecord:0];
  }

  if ((stateCopy & 2) != 0)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Marking all chats as dirty", buf, 2u);
      }
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = +[IMDChatRegistry sharedInstance];
    chats = [v9 chats];

    v11 = [chats countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(chats);
          }

          [*(*(&v15 + 1) + 8 * v13++) resetCKSyncState];
        }

        while (v11 != v13);
        v11 = [chats countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  else if ((stateCopy & 0x10) != 0)
  {
    [(IMDCKChatSyncController *)self _needsToMarkAllChatsAsNeedingSync];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_copyRecordIDsToDelete
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  chatRegistry = [(IMDCKChatSyncController *)self chatRegistry];
  copyRecordIDsAndGUIDsPendingCloudKitDelete = [chatRegistry copyRecordIDsAndGUIDsPendingCloudKitDelete];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = copyRecordIDsAndGUIDsPendingCloudKitDelete;
  v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        v11 = objc_alloc(MEMORY[0x277CBC5D0]);
        v12 = [v10 valueForKey:@"recordID"];
        _chatZoneID = [(IMDCKChatSyncController *)self _chatZoneID];
        v14 = [v11 initWithRecordName:v12 zoneID:_chatZoneID];

        if (v3 && v14)
        {
          CFArrayAppendValue(v3, v14);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)_handleChatDeletionCompletionForRecordIDs:(id)ds error:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  errorCopy = error;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = errorCopy;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "_handleChatDeletionCompletionForRecordIDs error %@", buf, 0xCu);
    }
  }

  errorAnalyzer = [(IMDCKAbstractSyncController *)self errorAnalyzer];
  v10 = [errorAnalyzer acceptableErrorCodeWhileDeleting:errorCopy];

  if (v10)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_22B6B35EC;
    v13[3] = &unk_278702FA0;
    v14 = dsCopy;
    selfCopy = self;
    dispatch_sync(MEMORY[0x277D85CD0], v13);
  }

  else if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = errorCopy;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Error deleteing chats from CloudKit %@", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)syncPendingDeletionWithCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  ckUtilities = [(IMDCKAbstractSyncController *)self ckUtilities];
  cloudKitSyncingEnabled = [ckUtilities cloudKitSyncingEnabled];

  if (cloudKitSyncingEnabled)
  {
    _copyRecordIDsToDelete = [(IMDCKChatSyncController *)self _copyRecordIDsToDelete];
    ckUtilities2 = [(IMDCKAbstractSyncController *)self ckUtilities];
    v9 = [ckUtilities2 newfilteredArrayRemovingCKRecordIDDupes:_copyRecordIDsToDelete];

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v16 = [_copyRecordIDsToDelete count];
        v17 = 2048;
        v18 = [v9 count];
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Got %lu recordIDs to sync, filtered to %lu unique recordIDs", buf, 0x16u);
      }
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_22B6B3A04;
    v13[3] = &unk_2787044B0;
    v13[4] = self;
    v14 = completionCopy;
    [(IMDCKChatSyncController *)self _filterRecordIDsToChatsWithNoRecentModifications:v9 completion:v13];

    goto LABEL_13;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "CloudKit Syncing is disable", buf, 2u);
    }
  }

  if (completionCopy)
  {
    _copyRecordIDsToDelete = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.IMDCKChatSyncController" code:2 userInfo:0];
    (*(completionCopy + 2))(completionCopy, _copyRecordIDsToDelete);
LABEL_13:
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_deleteChatRecordsWithRecordIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if ([dsCopy count])
  {
    [(IMDCKAbstractSyncController *)self setBroadcastedSyncStateToDeleting];
    cKOperationFactory = [(IMDCKChatSyncController *)self CKOperationFactory];
    v9 = [cKOperationFactory deleteChatCKOperationUsingRecordIDstoDelete:dsCopy];

    [v9 setPerRecordCompletionBlock:&unk_283F1B148];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = sub_22B6B3D70;
    v14 = &unk_278703858;
    selfCopy = self;
    v16 = completionCopy;
    [v9 setModifyRecordsCompletionBlock:&v11];
    [(IMDCKChatSyncController *)self _scheduleOperation:v9, v11, v12, v13, v14, selfCopy];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "No pending chats at this moment", buf, 2u);
      }
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (void)_filterRecordIDsToChatsWithNoRecentModifications:(id)modifications completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  modificationsCopy = modifications;
  completionCopy = completion;
  date = [MEMORY[0x277CBEAA8] date];
  v9 = [date __im_dateByAddingDays:-14];

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = v9;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Filtering chat recordIDs to those with modification date after %@", buf, 0xCu);
    }
  }

  cKOperationFactory = [(IMDCKChatSyncController *)self CKOperationFactory];
  v12 = [cKOperationFactory fetchChatCKOperationUsingRecordIDs:modificationsCopy];

  [v12 setDesiredKeys:MEMORY[0x277CBEBF8]];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_22B6B4038;
  v19 = &unk_278703830;
  v20 = v9;
  v21 = completionCopy;
  v13 = completionCopy;
  v14 = v9;
  [v12 setFetchRecordsCompletionBlock:&v16];
  [(IMDCKChatSyncController *)self _scheduleOperation:v12, v16, v17, v18, v19];

  v15 = *MEMORY[0x277D85DE8];
}

@end