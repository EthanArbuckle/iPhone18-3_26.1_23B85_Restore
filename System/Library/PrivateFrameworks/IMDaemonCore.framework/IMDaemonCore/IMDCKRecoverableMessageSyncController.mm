@interface IMDCKRecoverableMessageSyncController
+ (id)_fetchOperationFactory:(id)factory token:(id)token batchSize:(unint64_t)size activity:(id)activity;
+ (id)_fetchRecoverableMessagesCKConfiguration:(id)configuration;
+ (id)_zoneChangesOptionsDictionaryUsingToken:(id)token zoneID:(id)d resultsLimit:(unint64_t)limit;
+ (id)sharedInstance;
- (BOOL)_zoneCreated;
- (IMDCKRecoverableMessageSyncController)init;
- (IMDCKRecoverableMessageSyncController)initWithSyncTokenStore:(id)store;
- (id)_constructRecoverableMessageRecordIDUsingTombStoneDictionary:(id)dictionary;
- (id)_copyRecordIDsToDeleteWithLimit:(unint64_t)limit;
- (id)_fetchRecordsOperationWithActivity:(id)activity;
- (id)_saveRecordsOperationWithMap:(id)map activity:(id)activity;
- (id)_saveRecoverableMessagesOperationFactory:(id)factory token:(id)token batchSize:(unint64_t)size recordNameToPartIndexAndRowID:(id)d activity:(id)activity;
- (id)_writeRecoverableMessagesCKConfiguration:(id)configuration;
- (id)createCKRecordforRecoverableMessageMetadata:(id)metadata zoneID:(id)d recordNameToPartIndexAndRowID:(id)iD;
- (unint64_t)_deleteBatchSize;
- (void)_deleteRecoverableMessagesWithRecordIDs:(id)ds completion:(id)completion;
- (void)_onChangeTokenUpdated:(id)updated token:(id)token data:(id)data;
- (void)_onReadComplete:(int64_t)complete error:(id)error activity:(id)activity completion:(id)completion;
- (void)_onRecordDeleted:(id)deleted type:(id)type;
- (void)_onRecordRead:(id)read;
- (void)_onRecordWrite:(id)write error:(id)error recordNameToPartIndexAndRowID:(id)d;
- (void)_onRecordZoneFetchComplete:(id)complete token:(id)token tokenData:(id)data moreComing:(BOOL)coming error:(id)error;
- (void)_onRecoverableMessagePartRecordReadWithDeleteDate:(id)date messageGUID:(id)d partBody:(id)body;
- (void)_onWriteComplete:(int64_t)complete error:(id)error shouldWriteMore:(BOOL)more activity:(id)activity completion:(id)completion;
- (void)_processRecordDeletionCompletion:(id)completion error:(id)error completionBlock:(id)block;
- (void)_readRecordsWithType:(int64_t)type attemptCount:(unint64_t)count activity:(id)activity completion:(id)completion;
- (void)_scheduleOperation:(id)operation;
- (void)_writeRecordsWithType:(int64_t)type activity:(id)activity completion:(id)completion;
- (void)clearLocalSyncState:(unint64_t)state;
- (void)deleteChatBotRecoverableMessageSyncToken;
- (void)deleteRecoverableMessageZone;
- (void)syncRemovedRecoverableMessagesToCloudKitWithCompletion:(id)completion;
@end

@implementation IMDCKRecoverableMessageSyncController

+ (id)sharedInstance
{
  if (qword_2814211A8 != -1)
  {
    sub_22B7D7ED4();
  }

  v3 = qword_281421028;

  return v3;
}

- (IMDCKRecoverableMessageSyncController)init
{
  v3 = objc_alloc_init(IMDCKSyncTokenStore);
  v4 = [(IMDCKRecoverableMessageSyncController *)self initWithSyncTokenStore:v3];

  return v4;
}

- (IMDCKRecoverableMessageSyncController)initWithSyncTokenStore:(id)store
{
  storeCopy = store;
  v14.receiver = self;
  v14.super_class = IMDCKRecoverableMessageSyncController;
  v6 = [(IMDCKRecoverableMessageSyncController *)&v14 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.private.IMDCKRecoverableMessageSyncController", 0);
    ckQueue = v6->_ckQueue;
    v6->_ckQueue = v7;

    v9 = +[IMDRecordZoneManager sharedInstance];
    recordZoneManager = v6->_recordZoneManager;
    v6->_recordZoneManager = v9;

    objc_storeStrong(&v6->_syncTokenStore, store);
    v11 = objc_alloc_init(IMDCKMessageSyncCKOperationFactory);
    CKOperationFactory = v6->_CKOperationFactory;
    v6->_CKOperationFactory = v11;
  }

  return v6;
}

- (void)_readRecordsWithType:(int64_t)type attemptCount:(unint64_t)count activity:(id)activity completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  completionCopy = completion;
  v11 = [(IMDCKRecoverableMessageSyncController *)self _fetchRecordsOperationWithActivity:activityCopy];
  v12 = v11;
  if (v11)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_22B65171C;
    v26[3] = &unk_2787046E0;
    v26[4] = self;
    [v11 setRecordChangedBlock:v26];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_22B651728;
    v25[3] = &unk_278704728;
    v25[4] = self;
    [v12 setRecordWithIDWasDeletedBlock:v25];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_22B651738;
    v24[3] = &unk_278706FE8;
    v24[4] = self;
    [v12 setRecordZoneChangeTokensUpdatedBlock:v24];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_22B65174C;
    v23[3] = &unk_278707010;
    v23[4] = self;
    [v12 setRecordZoneFetchCompletionBlock:v23];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = sub_22B651768;
    v18 = &unk_278707038;
    selfCopy = self;
    typeCopy = type;
    v20 = activityCopy;
    v21 = completionCopy;
    [v12 setFetchRecordZoneChangesCompletionBlock:&v15];
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v28 = v12;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Scheduling a fetch recoverable message zone changes operation %@", buf, 0xCu);
      }
    }

    [(IMDCKRecoverableMessageSyncController *)self _scheduleOperation:v12, v15, v16, v17, v18, selfCopy];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_onRecordRead:(id)read
{
  v14 = *MEMORY[0x277D85DE8];
  readCopy = read;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      recordID = [readCopy recordID];
      recordName = [recordID recordName];
      *buf = 138412290;
      v13 = recordName;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Recently Deleted | Reading recoverable message record: %@", buf, 0xCu);
    }
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22B6518F4;
  v10[3] = &unk_278702FA0;
  v10[4] = self;
  v11 = readCopy;
  v8 = readCopy;
  dispatch_sync(MEMORY[0x277D85CD0], v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_onRecoverableMessagePartRecordReadWithDeleteDate:(id)date messageGUID:(id)d partBody:(id)body
{
  v54 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dCopy = d;
  bodyCopy = body;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Recently Deleted | Reading recoverable message part record", buf, 2u);
    }
  }

  v11 = +[IMDMessageStore sharedInstance];
  v12 = [v11 messageWithGUID:dCopy];

  dateRecovered = [v12 dateRecovered];
  v14 = [dateRecovered compare:dateCopy] == 1;

  if (v14)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        dateRecovered2 = [v12 dateRecovered];
        *buf = 138412546;
        *&buf[4] = dateRecovered2;
        *&buf[12] = 2112;
        *&buf[14] = dateCopy;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Recently Deleted | Ignoring deletion for recovered part, recovered %@ after it was deleted %@", buf, 0x16u);
      }
    }
  }

  else
  {
    dateRecovered3 = [v12 dateRecovered];

    if (dateRecovered3 && IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        dateRecovered4 = [v12 dateRecovered];
        *buf = 138412802;
        *&buf[4] = dCopy;
        *&buf[12] = 2112;
        *&buf[14] = dateRecovered4;
        *&buf[22] = 2112;
        v51 = dateCopy;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Recently Deleted | Recoverably deleting part of message %@ that was recovered on %@, re-deleting on %@", buf, 0x20u);
      }
    }

    body = [v12 body];
    v21 = *MEMORY[0x277D19160];
    v22 = [bodyCopy attribute:*MEMORY[0x277D19160] atIndex:0 effectiveRange:0];
    integerValue = [v22 integerValue];

    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
        *buf = 138412290;
        *&buf[4] = v25;
        _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Recently Deleted | Found stored part number %@", buf, 0xCu);
      }
    }

    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v51 = sub_22B4D77A0;
    v52 = sub_22B4D7934;
    v53 = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = sub_22B4D77A0;
    v40 = sub_22B4D7934;
    v41 = 0;
    v26 = [body length];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_22B652168;
    v35[3] = &unk_278707060;
    v35[4] = &v42;
    v35[5] = buf;
    v35[6] = &v36;
    v35[7] = integerValue;
    [body enumerateAttribute:v21 inRange:0 options:v26 usingBlock:{0, v35}];
    if (*(v43 + 24) == 1)
    {
      v27 = [MEMORY[0x277D1AA70] _messageItemWithIndexesDeleted:*(*&buf[8] + 40) subRangesToDeleteMapping:v37[5] deleteSubject:0 deleteTransferCallback:0 createItemCallback:0 fromMessageItem:v12];
      if (v27)
      {
        v28 = +[IMDBroadcastController sharedProvider];
        broadcasterForChatListeners = [v28 broadcasterForChatListeners];
        accountID = [v27 accountID];
        [broadcasterForChatListeners account:accountID chat:0 style:0 messageUpdated:v27];
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
        *v46 = 138412546;
        v47 = v32;
        v48 = 2112;
        v49 = dCopy;
        _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Did not find partIndex: %@ in message GUID: %@", v46, 0x16u);
      }
    }

    database = [MEMORY[0x277D18EB0] database];
    [database storeRecoverableMessagePartWithBody:bodyCopy forMessageWithGUID:dCopy deleteDate:dateCopy];

    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(&v42, 8);
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_onRecordDeleted:(id)deleted type:(id)type
{
  deletedCopy = deleted;
  typeCopy = type;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Delete record operation unsupported.", v8, 2u);
    }
  }
}

- (void)_onChangeTokenUpdated:(id)updated token:(id)token data:(id)data
{
  v23 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  tokenCopy = token;
  dataCopy = data;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v18 = updatedCopy;
      v19 = 2112;
      v20 = tokenCopy;
      v21 = 2112;
      v22 = dataCopy;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "recordZoneChangeTokensUpdatedBlock recordZoneID %@ serverChangeToken %@ clientChangeToken %@", buf, 0x20u);
    }
  }

  ckQueue = [(IMDCKRecoverableMessageSyncController *)self ckQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22B652494;
  v15[3] = &unk_278702FA0;
  v15[4] = self;
  v16 = tokenCopy;
  v13 = tokenCopy;
  dispatch_sync(ckQueue, v15);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_onRecordZoneFetchComplete:(id)complete token:(id)token tokenData:(id)data moreComing:(BOOL)coming error:(id)error
{
  comingCopy = coming;
  v28 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  tokenCopy = token;
  dataCopy = data;
  errorCopy = error;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = 138413314;
      v19 = completeCopy;
      v20 = 2112;
      v21 = tokenCopy;
      v22 = 2112;
      v23 = dataCopy;
      v24 = 1024;
      v25 = comingCopy;
      v26 = 2112;
      v27 = errorCopy;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Record Zone fetch complete zoneID %@ changeToken %@ tokenData %@ moreComing %d error %@", &v18, 0x30u);
    }
  }

  [(IMDCKRecoverableMessageSyncController *)self _onChangeTokenUpdated:completeCopy token:tokenCopy data:dataCopy];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_onReadComplete:(int64_t)complete error:(id)error activity:(id)activity completion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  activityCopy = activity;
  completionCopy = completion;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_22B4D77A0;
  v34 = sub_22B4D7934;
  v13 = errorCopy;
  v35 = v13;
  errorAnalyzer = [(IMDCKAbstractSyncController *)self errorAnalyzer];
  v15 = [errorAnalyzer errorIndicatesZoneNotCreated:v31[5]];

  errorAnalyzer2 = [(IMDCKAbstractSyncController *)self errorAnalyzer];
  v17 = [errorAnalyzer2 errorIndicatesUserDeletedZone:v31[5]];

  if ((v15 | v17))
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = @"zone not created";
        if (v17)
        {
          v19 = @"user deleted zone";
        }

        *buf = 138412546;
        v37 = v19;
        v38 = 2112;
        v39 = v13;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "We got a %@ error while fetching recoverable messages. %@", buf, 0x16u);
      }
    }

    ckQueue = [(IMDCKRecoverableMessageSyncController *)self ckQueue];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_22B652A74;
    v29[3] = &unk_278707088;
    v29[4] = self;
    v29[5] = &v30;
    dispatch_sync(ckQueue, v29);
  }

  if (v31[5])
  {
    errorAnalyzer3 = [(IMDCKAbstractSyncController *)self errorAnalyzer];
    v22 = [errorAnalyzer3 CKPartialError:v31[5] hasErrorCode:&unk_283F4EC30];

    if (v22)
    {
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = v31[5];
          *buf = 138412290;
          v37 = v24;
          _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "We got an expired server change token back so resetting local sync state, and fetching the recoverable messages again %@", buf, 0xCu);
        }
      }

      [(IMDCKRecoverableMessageSyncController *)self clearLocalSyncState:17];
    }

    else if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = v31[5];
        *buf = 138412290;
        v37 = v27;
        _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "********* We got an error fetching changes from recoverable messages zone %@", buf, 0xCu);
      }
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, v31[5]);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "We completed fetching changes from recoverable message zone with no error", buf, 2u);
      }
    }

    [(IMDCKRecoverableMessageSyncController *)self _writeRecordsWithType:complete activity:activityCopy completion:completionCopy];
  }

  _Block_object_dispose(&v30, 8);

  v28 = *MEMORY[0x277D85DE8];
}

- (void)clearLocalSyncState:(unint64_t)state
{
  stateCopy = state;
  v11 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v10 = stateCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Recently Deleted | Clearing local recoverable sync state, flags 0x%x", buf, 8u);
    }
  }

  if (stateCopy)
  {
    ckQueue = [(IMDCKRecoverableMessageSyncController *)self ckQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B652CFC;
    block[3] = &unk_278702FF0;
    block[4] = self;
    dispatch_async(ckQueue, block);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)_zoneCreated
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v3 = dispatch_semaphore_create(0);
  recordZoneManager = [(IMDCKRecoverableMessageSyncController *)self recordZoneManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22B652F64;
  v11[3] = &unk_278703880;
  v13 = &v14;
  v5 = v3;
  v12 = v5;
  [recordZoneManager createRecoverableMessageZoneIfNeededWithCompletionBlock:v11];

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
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "***** Timed out creating recoverable message zone *******", v10, 2u);
      }
    }
  }

  v8 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v8;
}

- (void)_writeRecordsWithType:(int64_t)type activity:(id)activity completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  completionCopy = completion;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_22B4D77A0;
  v25 = sub_22B4D7934;
  v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = [(IMDCKRecoverableMessageSyncController *)self _saveRecordsOperationWithMap:v22[5] activity:activityCopy];
  v11 = v10;
  if (v10)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_22B653334;
    v20[3] = &unk_2787070B0;
    v20[4] = self;
    v20[5] = &v21;
    [v10 setPerRecordCompletionBlock:v20];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_22B653350;
    v15[3] = &unk_2787070D8;
    v18 = &v21;
    typeCopy = type;
    v15[4] = self;
    v16 = activityCopy;
    v12 = completionCopy;
    v17 = v12;
    [v11 setModifyRecordsCompletionBlock:v15];
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v28 = v11;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Scheduling write recoverable message operation %@", buf, 0xCu);
      }
    }

    [(IMDCKRecoverableMessageSyncController *)self _scheduleOperation:v11];
    if (v12)
    {
      (*(v12 + 2))(v12, 1, 0);
    }
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }

  _Block_object_dispose(&v21, 8);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_onRecordWrite:(id)write error:(id)error recordNameToPartIndexAndRowID:(id)d
{
  v31 = *MEMORY[0x277D85DE8];
  writeCopy = write;
  errorCopy = error;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v25 = 138412546;
      v26 = writeCopy;
      v27 = 2112;
      v28 = errorCopy;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Wrote recoverable message record %@ with error %@", &v25, 0x16u);
    }
  }

  if (errorCopy)
  {
    [(IMDCKAbstractSyncController *)self setRecordsWriteFailed:[(IMDCKAbstractSyncController *)self recordsWriteFailed]+ 1];
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v25 = 138412546;
        v26 = writeCopy;
        v27 = 2112;
        v28 = errorCopy;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "IMDCKRecoverableMessageSyncController | Recently Deleted: could not write record: %@ encountered error: %@", &v25, 0x16u);
      }
    }
  }

  else
  {
    [(IMDCKAbstractSyncController *)self setRecordsWritten:[(IMDCKAbstractSyncController *)self recordsWritten]+ 1];
    recordID = [writeCopy recordID];
    recordName = [recordID recordName];

    v15 = [dCopy objectForKey:recordName];
    v16 = [v15 objectForKeyedSubscript:@"messageRowID"];
    longLongValue = [v16 longLongValue];

    v18 = [v15 objectForKeyedSubscript:@"partIndex"];
    longLongValue2 = [v18 longLongValue];

    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [MEMORY[0x277CCABB0] numberWithLongLong:longLongValue];
        v22 = [MEMORY[0x277CCABB0] numberWithLongLong:longLongValue2];
        v25 = 138412802;
        v26 = v21;
        v27 = 2112;
        v28 = v22;
        v29 = 2112;
        v30 = recordName;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Recently Deleted | Marking row %@ with partIndex: %@ for %@ as clean", &v25, 0x20u);
      }
    }

    v23 = +[IMDChatRegistry sharedInstance];
    [v23 updateRecoverableMessageSyncState:1 forMessageRowID:longLongValue onPartIndex:longLongValue2];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_onWriteComplete:(int64_t)complete error:(id)error shouldWriteMore:(BOOL)more activity:(id)activity completion:(id)completion
{
  moreCopy = more;
  v22 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  activityCopy = activity;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = @"NO";
      if (!errorCopy)
      {
        v16 = @"YES";
      }

      v18 = 138412546;
      v19 = v16;
      v20 = 2112;
      v21 = errorCopy;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Recoverable messages writes completed sucess: %@ error %@", &v18, 0x16u);
    }
  }

  if (errorCopy)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, errorCopy);
    }
  }

  else if (moreCopy)
  {
    [(IMDCKRecoverableMessageSyncController *)self _writeRecordsWithType:complete activity:activityCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)syncRemovedRecoverableMessagesToCloudKitWithCompletion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = +[IMDCKUtilities sharedInstance];
  cloudKitSyncingEnabled = [v5 cloudKitSyncingEnabled];

  if (cloudKitSyncingEnabled)
  {
    v7 = [(IMDCKRecoverableMessageSyncController *)self _copyRecordIDsToDeleteWithLimit:[(IMDCKRecoverableMessageSyncController *)self _deleteBatchSize]];
    v8 = +[IMDCKUtilities sharedInstance];
    v9 = [v8 newfilteredArrayRemovingCKRecordIDDupes:v7];

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v20 = [v7 count];
        v21 = 2048;
        v22 = [v9 count];
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Recently Deleted | Got %lu recordIDs to sync, filtered to %lu unique recordID", buf, 0x16u);
      }
    }

    if ([v9 count])
    {
      [(IMDCKAbstractSyncController *)self setBroadcastedSyncStateToDeleting];
      ckQueue = [(IMDCKRecoverableMessageSyncController *)self ckQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B653BCC;
      block[3] = &unk_2787037B8;
      block[4] = self;
      v17 = v9;
      v18 = completionCopy;
      dispatch_async(ckQueue, block);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Recently Deleted | No pending recoverable messages to delete from CloudKit", buf, 2u);
        }
      }

      v14 = +[IMDChatRegistry sharedInstance];
      [v14 clearRecoverableMessageTombStones];

      if (completionCopy)
      {
        (*(completionCopy + 2))(completionCopy, 1, 0);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Recently Deleted | Not performing CloudKit recoverable message deletes as CK syncing is off", buf, 2u);
      }
    }

    (*(completionCopy + 2))(completionCopy, 1, 0);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_deleteRecoverableMessagesWithRecordIDs:(id)ds completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  completionCopy = completion;
  if ([dsCopy count])
  {
    cKOperationFactory = [(IMDCKRecoverableMessageSyncController *)self CKOperationFactory];
    v9 = [cKOperationFactory deleteRecoverableMessageCKOperationUsingRecordIDstoDelete:dsCopy];

    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = sub_22B6540F8;
    v16 = &unk_278703858;
    selfCopy = self;
    v18 = completionCopy;
    [v9 setModifyRecordsCompletionBlock:&v13];
    [v9 setPerRecordCompletionBlock:{&unk_283F1AA08, v13, v14, v15, v16, selfCopy}];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v20 = dsCopy;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Recently Deleted | Kicking off recoverable delete of recordIDs %@", buf, 0xCu);
      }
    }

    [(IMDCKRecoverableMessageSyncController *)self _scheduleOperation:v9];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Recently Deleted | No GUIDs passed in to delete", buf, 2u);
      }
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_copyRecordIDsToDeleteWithLimit:(unint64_t)limit
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = +[IMDChatRegistry sharedInstance];
  v6 = [v5 recoverableMessagesMetadataPendingCloudKitDeleteWithLimit:limit];

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_autoreleasePoolPush();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(IMDCKRecoverableMessageSyncController *)self _constructRecoverableMessageRecordIDUsingTombStoneDictionary:*(*(&v18 + 1) + 8 * i), v18];
        v15 = v14;
        if (v7 && v14)
        {
          CFArrayAppendValue(v7, v14);
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  objc_autoreleasePoolPop(v8);
  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)_constructRecoverableMessageRecordIDUsingTombStoneDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"messageGUID"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"chatGUID"];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"partIndex"];

  intValue = [v7 intValue];
  v9 = +[IMDCKRecordSaltManager sharedInstance];
  cachedSalt = [v9 cachedSalt];

  v11 = [(IMDCKRecoverableMessageSyncController *)self recoverableGUIDFromMessageGUID:v5 chatGUID:v6 partIndex:intValue];
  recordZoneManager = [(IMDCKRecoverableMessageSyncController *)self recordZoneManager];
  recoverableMessageRecordZoneID = [recordZoneManager recoverableMessageRecordZoneID];

  v14 = [CKRecordUtilities recordIDUsingSalt:cachedSalt zoneID:recoverableMessageRecordZoneID guid:v11];

  return v14;
}

- (unint64_t)_deleteBatchSize
{
  v2 = +[IMDCKUtilities sharedInstance];
  isInCloudKitDemoMode = [v2 isInCloudKitDemoMode];

  if (isInCloudKitDemoMode)
  {
    return 5;
  }

  else
  {
    return 20;
  }
}

- (id)_fetchRecordsOperationWithActivity:(id)activity
{
  activityCopy = activity;
  recordZoneManager = [(IMDCKRecoverableMessageSyncController *)self recordZoneManager];
  recoverableMessageRecordZoneID = [recordZoneManager recoverableMessageRecordZoneID];
  latestSyncToken = [(IMDCKAbstractSyncController *)self latestSyncToken];
  v8 = [IMDCKRecoverableMessageSyncController _fetchOperationFactory:recoverableMessageRecordZoneID token:latestSyncToken batchSize:200 activity:activityCopy];

  return v8;
}

- (id)_saveRecordsOperationWithMap:(id)map activity:(id)activity
{
  activityCopy = activity;
  mapCopy = map;
  recordZoneManager = [(IMDCKRecoverableMessageSyncController *)self recordZoneManager];
  recoverableMessageRecordZoneID = [recordZoneManager recoverableMessageRecordZoneID];
  latestSyncToken = [(IMDCKAbstractSyncController *)self latestSyncToken];
  v11 = [(IMDCKRecoverableMessageSyncController *)self _saveRecoverableMessagesOperationFactory:recoverableMessageRecordZoneID token:latestSyncToken batchSize:200 recordNameToPartIndexAndRowID:mapCopy activity:activityCopy];

  return v11;
}

+ (id)_zoneChangesOptionsDictionaryUsingToken:(id)token zoneID:(id)d resultsLimit:(unint64_t)limit
{
  v7 = MEMORY[0x277CBEB38];
  dCopy = d;
  tokenCopy = token;
  v10 = objc_alloc_init(v7);
  v11 = objc_alloc_init(MEMORY[0x277CBC3A0]);
  [v11 setDesiredKeys:0];
  [v11 setPreviousServerChangeToken:tokenCopy];

  [v11 setResultsLimit:limit];
  [v10 setObject:v11 forKey:dCopy];

  return v10;
}

+ (id)_fetchRecoverableMessagesCKConfiguration:(id)configuration
{
  v3 = MEMORY[0x277CBC4F0];
  configurationCopy = configuration;
  v5 = objc_alloc_init(v3);
  [v5 setQualityOfService:17];
  [v5 setAllowsCellularAccess:1];
  [v5 im_setActivity:configurationCopy];

  return v5;
}

+ (id)_fetchOperationFactory:(id)factory token:(id)token batchSize:(unint64_t)size activity:(id)activity
{
  factoryCopy = factory;
  tokenCopy = token;
  activityCopy = activity;
  if (factoryCopy)
  {
    v13 = objc_alloc(MEMORY[0x277CBC3B8]);
    v14 = IMSingleObjectArray();
    v15 = [self _zoneChangesOptionsDictionaryUsingToken:tokenCopy zoneID:factoryCopy resultsLimit:size];
    v16 = [v13 initWithRecordZoneIDs:v14 configurationsByRecordZoneID:v15];

    v17 = [self _fetchRecoverableMessagesCKConfiguration:activityCopy];
    [v16 setConfiguration:v17];

    [v16 setFetchAllChanges:1];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *v20 = 0;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "_fetchOperationFactory was passed in a nil zone", v20, 2u);
      }
    }

    v16 = 0;
  }

  return v16;
}

- (id)_writeRecoverableMessagesCKConfiguration:(id)configuration
{
  v3 = MEMORY[0x277CBC4F0];
  configurationCopy = configuration;
  v5 = objc_alloc_init(v3);
  [v5 setQualityOfService:17];
  [v5 setAllowsCellularAccess:1];
  [v5 im_setActivity:configurationCopy];

  return v5;
}

- (id)_saveRecoverableMessagesOperationFactory:(id)factory token:(id)token batchSize:(unint64_t)size recordNameToPartIndexAndRowID:(id)d activity:(id)activity
{
  sizeCopy = size;
  v39 = *MEMORY[0x277D85DE8];
  factoryCopy = factory;
  tokenCopy = token;
  dCopy = d;
  activityCopy = activity;
  if (factoryCopy)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = sub_22B654B64;
    v30 = &unk_278705748;
    selfCopy = self;
    v32 = factoryCopy;
    v33 = dCopy;
    v17 = v16;
    v34 = v17;
    dispatch_sync(MEMORY[0x277D85CD0], &v27);
    v18 = [IMDCKUtilities sharedInstance:v27];
    v19 = [v18 newfilteredArrayRemovingCKRecordDupes:v17];

    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [v19 count];
        *buf = 134218240;
        v36 = v21;
        v37 = 1024;
        v38 = sizeCopy;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Found %lu of %u max recoverable messages to write up", buf, 0x12u);
      }
    }

    if ([v19 count])
    {
      v22 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:v19 recordIDsToDelete:0];
      [v22 setSavePolicy:1];
      v23 = [(IMDCKRecoverableMessageSyncController *)self _writeRecoverableMessagesCKConfiguration:activityCopy];
      [v22 setConfiguration:v23];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "_saveRecoverableMessagesOperationFactory was passed in a nil zone", buf, 2u);
      }
    }

    v22 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v22;
}

- (void)_processRecordDeletionCompletion:(id)completion error:(id)error completionBlock:(id)block
{
  v25 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  errorCopy = error;
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = errorCopy;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Delete recoverable message callback with error %@", buf, 0xCu);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B655078;
  block[3] = &unk_2787038F8;
  v12 = completionCopy;
  v20 = v12;
  v13 = errorCopy;
  v21 = v13;
  selfCopy = self;
  dispatch_sync(MEMORY[0x277D85CD0], block);
  if (blockCopy)
  {
    ckQueue = [(IMDCKRecoverableMessageSyncController *)self ckQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_22B6553A8;
    v16[3] = &unk_2787028B0;
    v18 = blockCopy;
    v17 = v13;
    dispatch_async(ckQueue, v16);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)createCKRecordforRecoverableMessageMetadata:(id)metadata zoneID:(id)d recordNameToPartIndexAndRowID:(id)iD
{
  v43 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  dCopy = d;
  iDCopy = iD;
  v36 = [metadataCopy objectForKeyedSubscript:@"messageGUID"];
  v34 = [metadataCopy objectForKeyedSubscript:@"chatGUID"];
  v35 = [metadataCopy objectForKeyedSubscript:@"deleteDateInterval"];
  if ((![v36 length] || !objc_msgSend(v34, "length") || !v35) && IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v40 = v36;
      v41 = 2112;
      v42 = v35;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "IMDCKRecoverableMessageSyncController | Recently Deleted: returning nil record. messageGUID: %@, deleteDateNanosecondIntervalNumber: %@", buf, 0x16u);
    }
  }

  unsignedLongLongValue = [v35 unsignedLongLongValue];
  v31 = [MEMORY[0x277CBEAA8] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:unsignedLongLongValue];
  v11 = [metadataCopy objectForKeyedSubscript:@"partBody"];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 attributesAtIndex:0 effectiveRange:0];
    v14 = [v13 objectForKey:*MEMORY[0x277D19160]];
    integerValue = [v14 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  v16 = +[IMDCKRecordSaltManager sharedInstance];
  cachedSalt = [v16 cachedSalt];

  v17 = [(IMDCKRecoverableMessageSyncController *)self recoverableGUIDFromMessageGUID:v36 chatGUID:v34 partIndex:integerValue];
  v18 = [CKRecordUtilities recordIDUsingSalt:cachedSalt zoneID:dCopy guid:v17];
  if (v18)
  {
    v19 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"recoverableMessage" recordID:v18];
    [v19 _setCKRecordString:v36 forKey:@"guid"];
    [v19 _setCKRecordDate:v31 forKey:@"deleteDate"];
    if (v12)
    {
      v20 = JWEncodeCodableObject();
      [v19 _setCKRecordData:v20 forKey:@"partBody"];
    }

    if (v19)
    {
      v37[0] = @"messageRowID";
      v21 = [metadataCopy objectForKeyedSubscript:?];
      v37[1] = @"partIndex";
      v38[0] = v21;
      v22 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
      v38[1] = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
      recordID = [v19 recordID];
      recordName = [recordID recordName];
      [iDCopy setObject:v23 forKeyedSubscript:recordName];
    }

    else if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Recently Delete | Was not able to construct CKRecord with given data. This is bad.", buf, 2u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v40 = metadataCopy;
        _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "IMDCKRecoverableMessageSyncController | Recently Deleted: returning nil record. recordID nil for metadata: %@", buf, 0xCu);
      }
    }

    v19 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)_scheduleOperation:(id)operation
{
  operationCopy = operation;
  v5 = +[IMDCKDatabaseManager sharedInstance];
  truthDatabase = [v5 truthDatabase];
  [truthDatabase addOperation:operationCopy];
}

- (void)deleteRecoverableMessageZone
{
  ckQueue = [(IMDCKRecoverableMessageSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B655998;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_async(ckQueue, block);
}

- (void)deleteChatBotRecoverableMessageSyncToken
{
  syncTokenStore = [(IMDCKRecoverableMessageSyncController *)self syncTokenStore];
  [syncTokenStore persistToken:0 forKey:@"chatBotRecoverableMessageChangeToken"];
}

@end