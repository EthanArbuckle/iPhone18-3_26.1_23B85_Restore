@interface IMDCKChatSyncController
+ (id)sharedInstance;
- (BOOL)_chatZoneCreated;
- (BOOL)_eligibleForTruthZone;
- (BOOL)_lockRecordHadConflict:(id)a3;
- (BOOL)_shouldMarkAllChatsAsNeedingSync;
- (BOOL)_shouldResyncChatsForError:(id)a3;
- (CKServerChangeToken)latestSyncToken;
- (IMDCKChatSyncController)init;
- (IMDCKChatSyncController)initWithSyncTokenStore:(id)a3;
- (IMDChatRegistry)chatRegistry;
- (id)_chatZoneID;
- (id)_copyChatsToUploadWithLimit:(unint64_t)a3;
- (id)_copyRecordIDsToDelete;
- (id)_fetchChatRecordOperationWithActivity:(id)a3;
- (id)_generateLockRecord;
- (id)recordStore;
- (unint64_t)_numberOfChatsToFetch;
- (unint64_t)_numberOfChatsToWrite;
- (void)_anyChatExistsOnServerWithResultsLimit:(int)a3 changeToken:(id)a4 activity:(id)a5 completion:(id)a6;
- (void)_deleteChatRecordsWithRecordIDs:(id)a3 completion:(id)a4;
- (void)_filterRecordIDsToChatsWithNoRecentModifications:(id)a3 completion:(id)a4;
- (void)_handleChatDeletionCompletionForRecordIDs:(id)a3 error:(id)a4;
- (void)_hasMarkedAllChatsAsNeedingSync;
- (void)_logGreenTeaLogsForChats:(id)a3;
- (void)_markChatAsDefferedForSyncingUsingRecord:(id)a3;
- (void)_migrateServerChangeToken;
- (void)_needsToMarkAllChatsAsNeedingSync;
- (void)_processModifyPerRecordCallBack:(id)a3 error:(id)a4 recordIDtoGUIDmap:(id)a5;
- (void)_processModifyRecordCompletion:(id)a3 deletedRecordIDs:(id)a4 error:(id)a5 completionBlock:(id)a6;
- (void)_processRecordChanged:(id)a3;
- (void)_processRecordDeletion:(id)a3;
- (void)_resolveChatConflictUsingCKRecord:(id)a3 localGUID:(id)a4;
- (void)_scheduleOperation:(id)a3;
- (void)_updateChatUsingCKRecord:(id)a3 onRead:(BOOL)a4 didSucceed:(BOOL)a5 dispatchToMain:(BOOL)a6;
- (void)_writeCKRecordsToChatZone:(id)a3 activity:(id)a4 withCompletion:(id)a5;
- (void)clearLocalSyncState:(unint64_t)a3;
- (void)deleteChat1SyncToken;
- (void)deleteChatSyncToken;
- (void)deleteChatZone;
- (void)setLatestSyncToken:(id)a3;
- (void)syncPendingDeletionWithCompletion:(id)a3;
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

- (IMDCKChatSyncController)initWithSyncTokenStore:(id)a3
{
  v5 = a3;
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

    objc_storeStrong(&v6->_syncTokenStore, a3);
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
  v5 = [(IMDCKChatSyncController *)self recordZoneManager];
  v6 = [v5 chatRecordZoneID];
  v7 = [v4 initWithRecordName:@"chatLockRecordName" zoneID:v6];

  v8 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"chatLockRecordType" recordID:v7];
  v9 = [MEMORY[0x277CCACA8] stringGUID];
  [v8 setValue:v9 forKey:@"lRKey"];

  return v8;
}

- (void)_migrateServerChangeToken
{
  v2 = [(IMDCKChatSyncController *)self syncTokenStore];
  [v2 migrateKey:@"changeToken" fromDatabase:@"/var/mobile/Library/SMS/CloudKitMetaData/ChatSyncZoneMetaData.db"];
}

- (void)setLatestSyncToken:(id)a3
{
  v7 = a3;
  v4 = [(IMDCKChatSyncController *)self syncTokenStore];
  v5 = [(IMDCKChatSyncController *)self _changeTokenKey];
  if (v7)
  {
    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  [v4 persistToken:v6 forKey:v5];
}

- (CKServerChangeToken)latestSyncToken
{
  v3 = [(IMDCKChatSyncController *)self syncTokenStore];
  v4 = [(IMDCKChatSyncController *)self _changeTokenKey];
  v5 = [v3 tokenForKey:v4];

  return v5;
}

- (id)_copyChatsToUploadWithLimit:(unint64_t)a3
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
    block[6] = a3;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)_chatZoneID
{
  v2 = [(IMDCKChatSyncController *)self recordZoneManager];
  v3 = [v2 chatRecordZoneID];

  return v3;
}

- (void)_scheduleOperation:(id)a3
{
  v3 = a3;
  v5 = +[IMDCKDatabaseManager sharedInstance];
  v4 = [v5 truthDatabase];
  [v4 addOperation:v3];
}

- (void)_updateChatUsingCKRecord:(id)a3 onRead:(BOOL)a4 didSucceed:(BOOL)a5 dispatchToMain:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B6AFE78;
  aBlock[3] = &unk_278707DB8;
  aBlock[4] = self;
  v15 = v10;
  v16 = a4;
  v17 = a5;
  v11 = v10;
  v12 = _Block_copy(aBlock);
  v13 = v12;
  if (v6)
  {
    dispatch_sync(MEMORY[0x277D85CD0], v12);
  }

  else
  {
    v12[2](v12);
  }
}

- (void)_resolveChatConflictUsingCKRecord:(id)a3 localGUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6AFF94;
  block[3] = &unk_2787038F8;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_sync(MEMORY[0x277D85CD0], block);
}

- (void)_markChatAsDefferedForSyncingUsingRecord:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22B6B0080;
  v6[3] = &unk_278702FA0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_sync(MEMORY[0x277D85CD0], v6);
}

- (BOOL)_chatZoneCreated
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = [(IMDCKChatSyncController *)self recordZoneManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22B6B0278;
  v11[3] = &unk_278703880;
  v13 = &v14;
  v5 = v3;
  v12 = v5;
  [v4 createChatZoneIfNeededWithCompletionBlock:v11];

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

- (void)_processModifyPerRecordCallBack:(id)a3 error:(id)a4 recordIDtoGUIDmap:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v8 recordID];
      v13 = [v8 recordChangeTag];
      *buf = 138412802;
      v25 = v12;
      v26 = 2112;
      v27 = v13;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "per record completion block record %@ changeTag %@ error %@", buf, 0x20u);
    }
  }

  v14 = [(IMDCKChatSyncController *)self ckQueue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22B6B0574;
  v19[3] = &unk_278705748;
  v20 = v9;
  v21 = v8;
  v22 = self;
  v23 = v10;
  v15 = v10;
  v16 = v8;
  v17 = v9;
  dispatch_sync(v14, v19);

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_lockRecordHadConflict:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 code] == 2)
  {
    v4 = [v3 userInfo];
    v5 = [v4 valueForKey:*MEMORY[0x277CBBFB0]];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [v5 allKeys];
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v7)
    {
      v8 = *v19;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          v11 = [v10 recordName];
          v12 = [v11 isEqualToString:@"chatLockRecordName"];

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

        v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
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

- (void)_processModifyRecordCompletion:(id)a3 deletedRecordIDs:(id)a4 error:(id)a5 completionBlock:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = v12;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "modifyRecordsCompletionBlock error %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
      *buf = 138412290;
      v29 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Number of records saved %@", buf, 0xCu);
    }
  }

  v17 = v12;
  v18 = [(IMDCKAbstractSyncController *)self errorAnalyzer];
  v19 = [v18 errorIndicatesQuotaExceeded:v17];

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

  if (v13)
  {
    v23 = [(IMDCKChatSyncController *)self ckQueue];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_22B6B0F5C;
    v25[3] = &unk_2787028B0;
    v27 = v13;
    v26 = v20;
    dispatch_async(v23, v25);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_writeCKRecordsToChatZone:(id)a3 activity:(id)a4 withCompletion:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v27 = a4;
  v29 = a5;
  v30 = [MEMORY[0x277CBEB38] dictionary];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = v7;
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
        v14 = [v13 recordType];
        v15 = [v14 isEqualToString:@"chatLockRecordType"];

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
          v18 = [v13 recordID];
          v19 = [v18 recordName];
          [v30 setObject:v17 forKey:v19];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v9);

    if (v10)
    {
      v20 = [(IMDCKChatSyncController *)self CKOperationFactory];
      v21 = [v20 saveChatsCKOperationUsingRecordsToSave:v8 activity:v27];

      [v21 setPerRecordProgressBlock:&unk_283F1B128];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = sub_22B6B14E8;
      v33[3] = &unk_278707DE0;
      v33[4] = self;
      v34 = v30;
      [v21 setPerRecordCompletionBlock:v33];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = sub_22B6B14FC;
      v31[3] = &unk_278703858;
      v31[4] = self;
      v32 = v29;
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

  if (v29)
  {
    v25 = [(IMDCKChatSyncController *)self ckQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B6B146C;
    block[3] = &unk_2787028D8;
    v36 = v29;
    dispatch_async(v25, block);

    v21 = v36;
LABEL_28:
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_numberOfChatsToFetch
{
  v2 = [(IMDCKAbstractSyncController *)self ckUtilities];
  v3 = [v2 overrideNumberOfChatsToFetch];

  if (v3 <= 0)
  {
    return 200;
  }

  else
  {
    return v3;
  }
}

- (unint64_t)_numberOfChatsToWrite
{
  v2 = [(IMDCKAbstractSyncController *)self ckUtilities];
  v3 = [v2 overrideNumberOfChatsToWrite];

  if (v3 <= 0)
  {
    return 200;
  }

  else
  {
    return v3;
  }
}

- (BOOL)_shouldResyncChatsForError:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 domain];
  if (![v4 isEqualToString:*MEMORY[0x277D19CF8]])
  {

    goto LABEL_9;
  }

  v5 = [v3 code];

  if (v5 != 2)
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
      v11 = v3;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "We failed to sync Chats due to op lock Not doing ABC %@", &v10, 0xCu);
    }
  }

  v7 = 1;
LABEL_10:

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)_logGreenTeaLogsForChats:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
        objc_enumerationMutation(v3);
      }

      v11 = *(*(&v18 + 1) + 8 * i);
      v12 = [v11 serviceName];
      v13 = [v12 isEqualToString:*v9];

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
        v14 = [v11 serviceName];
        if ([v14 isEqualToString:*MEMORY[0x277D1A620]])
        {
          v15 = [v11 lastAddressedLocalHandle];
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

    v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (id)_fetchChatRecordOperationWithActivity:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(IMDCKChatSyncController *)self latestSyncToken];
      v7 = [(IMDCKChatSyncController *)self _chatZoneID];
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[IMDCKChatSyncController _numberOfChatsToFetch](self, "_numberOfChatsToFetch")}];
      v15 = 138412802;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Creating a fetch chat record operation using sync token %@ for zone %@ limit %@", &v15, 0x20u);
    }
  }

  v9 = [(IMDCKChatSyncController *)self CKOperationFactory];
  v10 = [(IMDCKChatSyncController *)self latestSyncToken];
  v11 = [(IMDCKChatSyncController *)self _chatZoneID];
  v12 = [v9 fetchChatZoneChangesCKOperationUsingToken:v10 zone:v11 resultsLimit:-[IMDCKChatSyncController _numberOfChatsToFetch](self activity:{"_numberOfChatsToFetch"), v4}];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)_processRecordDeletion:(id)a3
{
  v3 = a3;
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

- (void)_processRecordChanged:(id)a3
{
  v4 = a3;
  v5 = [(IMDCKChatSyncController *)self ckQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B6B1B9C;
  v7[3] = &unk_278702FA0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)deleteChatSyncToken
{
  v3 = [(IMDCKChatSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6B1E70;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)deleteChat1SyncToken
{
  v2 = [(IMDCKChatSyncController *)self syncTokenStore];
  [v2 persistToken:0 forKey:@"chat1ChangeToken"];
}

- (void)_anyChatExistsOnServerWithResultsLimit:(int)a3 changeToken:(id)a4 activity:(id)a5 completion:(id)a6
{
  v48[1] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v26 = a5;
  v25 = a6;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "chatExistsWithCompletion (batch size %d)", buf, 8u);
    }
  }

  v11 = [(IMDCKChatSyncController *)self _chatZoneID];
  if (v11)
  {
    v12 = [(IMDCKChatSyncController *)self CKOperationFactory];
    v13 = [v12 fetchChatZoneChangesCKOperationUsingToken:v9 zone:v11 resultsLimit:a3 groupName:@"ChatsExistCheck" activity:v26];

    [v13 setFetchAllChanges:0];
    v14 = objc_alloc_init(MEMORY[0x277CBC3A0]);
    [v14 setResultsLimit:a3];
    [v14 setDesiredKeys:MEMORY[0x277CBEBF8]];
    v47 = v11;
    v48[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
    [v13 setConfigurationsByRecordZoneID:v15];

    v16 = objc_alloc_init(MEMORY[0x277CBC4F0]);
    [v16 setQualityOfService:17];
    [v16 setAllowsCellularAccess:1];
    [v16 im_setActivity:v26];
    [v13 setConfiguration:v16];
    v17 = [v13 operationID];
    *buf = 0;
    v44 = buf;
    v45 = 0x2020000000;
    v46 = 0;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_22B6B2418;
    v35[3] = &unk_278707E08;
    v18 = v11;
    v36 = v18;
    v38 = buf;
    v19 = v25;
    v37 = v19;
    [v13 setRecordChangedBlock:v35];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_22B6B256C;
    v27[3] = &unk_278707E30;
    v20 = v17;
    v28 = v20;
    v33 = buf;
    v29 = v18;
    v30 = self;
    v34 = a3;
    v31 = v26;
    v32 = v19;
    [v13 setRecordZoneFetchCompletionBlock:v27];
    [(IMDCKChatSyncController *)self _scheduleOperation:v13];
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = [v13 operationID];
        *v39 = 138412546;
        v40 = v22;
        v41 = 1024;
        v42 = a3;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Scheduled fetch changes operation to check for the existence of a single chat with identifier: %@ (batch size %d)", v39, 0x12u);
      }
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_13;
  }

  if (v25)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D19CF8] code:1 userInfo:0];
    (*(v25 + 2))(v25, 0, v13);
LABEL_13:
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)deleteChatZone
{
  v3 = [(IMDCKChatSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6B2834;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_async(v3, block);

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

  v5 = [(IMDCKAbstractSyncController *)self ckUtilities];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_22B6B2BA0;
  v16[3] = &unk_278707E58;
  v18 = &v19;
  v16[4] = self;
  v6 = v3;
  v17 = v6;
  [v5 fetchCloudKitAccountStatusAndUpdateEligibilityAndNeedsRepairStatusWithCompletion:v16];

  v7 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v6, v7))
  {
    v8 = [(IMDCKAbstractSyncController *)self syncState];
    v9 = [v8 isEligibleForTruthZone];
    *(v20 + 24) = v9;

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
  v2 = [MEMORY[0x277D1A990] sharedInstance];
  [v2 setBool:0 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A30]];
}

- (BOOL)_shouldMarkAllChatsAsNeedingSync
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D1ACB8] sharedInstance];
  v3 = [v2 isUnderFirstDataProtectionLock];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277D1A990] sharedInstance];
    v4 = [v5 getBoolFromDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A30]] ^ 1;
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
  v2 = [MEMORY[0x277D1A990] sharedInstance];
  [v2 setBool:1 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A30]];
}

- (void)clearLocalSyncState:(unint64_t)a3
{
  v3 = a3;
  v22 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v21 = v3;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Clearing local chat sync state, flags 0x%x", buf, 8u);
    }
  }

  if (v3)
  {
    v6 = [(IMDCKAbstractSyncController *)self ckUtilities];
    [v6 reportMOCDebuggingErrorWithString:@"ResetSyncDate" internalOnly:1 initialSync:0 reasonString:@"ResetSyncDate"];

    v7 = [(IMDCKAbstractSyncController *)self syncState];
    [v7 setLastSyncDate:0];

    [(IMDCKChatSyncController *)self deleteChatSyncToken];
    [(IMDCKChatSyncController *)self setLockRecord:0];
  }

  if ((v3 & 2) != 0)
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
    v10 = [v9 chats];

    v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v10);
          }

          [*(*(&v15 + 1) + 8 * v13++) resetCKSyncState];
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    [(IMDCKChatSyncController *)self _needsToMarkAllChatsAsNeedingSync];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_copyRecordIDsToDelete
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(IMDCKChatSyncController *)self chatRegistry];
  v5 = [v4 copyRecordIDsAndGUIDsPendingCloudKitDelete];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v5;
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
        v13 = [(IMDCKChatSyncController *)self _chatZoneID];
        v14 = [v11 initWithRecordName:v12 zoneID:v13];

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

- (void)_handleChatDeletionCompletionForRecordIDs:(id)a3 error:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "_handleChatDeletionCompletionForRecordIDs error %@", buf, 0xCu);
    }
  }

  v9 = [(IMDCKAbstractSyncController *)self errorAnalyzer];
  v10 = [v9 acceptableErrorCodeWhileDeleting:v7];

  if (v10)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_22B6B35EC;
    v13[3] = &unk_278702FA0;
    v14 = v6;
    v15 = self;
    dispatch_sync(MEMORY[0x277D85CD0], v13);
  }

  else if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Error deleteing chats from CloudKit %@", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)syncPendingDeletionWithCompletion:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDCKAbstractSyncController *)self ckUtilities];
  v6 = [v5 cloudKitSyncingEnabled];

  if (v6)
  {
    v7 = [(IMDCKChatSyncController *)self _copyRecordIDsToDelete];
    v8 = [(IMDCKAbstractSyncController *)self ckUtilities];
    v9 = [v8 newfilteredArrayRemovingCKRecordIDDupes:v7];

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v16 = [v7 count];
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
    v14 = v4;
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

  if (v4)
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.IMDCKChatSyncController" code:2 userInfo:0];
    (*(v4 + 2))(v4, v7);
LABEL_13:
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_deleteChatRecordsWithRecordIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    [(IMDCKAbstractSyncController *)self setBroadcastedSyncStateToDeleting];
    v8 = [(IMDCKChatSyncController *)self CKOperationFactory];
    v9 = [v8 deleteChatCKOperationUsingRecordIDstoDelete:v6];

    [v9 setPerRecordCompletionBlock:&unk_283F1B148];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = sub_22B6B3D70;
    v14 = &unk_278703858;
    v15 = self;
    v16 = v7;
    [v9 setModifyRecordsCompletionBlock:&v11];
    [(IMDCKChatSyncController *)self _scheduleOperation:v9, v11, v12, v13, v14, v15];
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

    if (v7)
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

- (void)_filterRecordIDsToChatsWithNoRecentModifications:(id)a3 completion:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = [v8 __im_dateByAddingDays:-14];

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

  v11 = [(IMDCKChatSyncController *)self CKOperationFactory];
  v12 = [v11 fetchChatCKOperationUsingRecordIDs:v6];

  [v12 setDesiredKeys:MEMORY[0x277CBEBF8]];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_22B6B4038;
  v19 = &unk_278703830;
  v20 = v9;
  v21 = v7;
  v13 = v7;
  v14 = v9;
  [v12 setFetchRecordsCompletionBlock:&v16];
  [(IMDCKChatSyncController *)self _scheduleOperation:v12, v16, v17, v18, v19];

  v15 = *MEMORY[0x277D85DE8];
}

@end