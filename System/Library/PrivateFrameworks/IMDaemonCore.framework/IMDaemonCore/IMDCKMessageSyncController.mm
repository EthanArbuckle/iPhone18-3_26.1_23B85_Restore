@interface IMDCKMessageSyncController
+ (id)sharedInstance;
- (BOOL)_deviceConditionsAllowsMessageSyncForActivity:(id)a3 deviceConditionsToCheck:(unint64_t)a4 currentBatchCount:(int64_t)a5 maxBatchCount:(int64_t)a6;
- (BOOL)_deviceConditionsAllowsMessageSyncForCurrentBatchCount:(int64_t)a3 maxBatchCount:(int64_t)a4 activity:(id)a5;
- (BOOL)_isDiskSpaceAvailableForSyncType:(int64_t)a3 currentBatchCount:(int64_t)a4;
- (BOOL)_isValidCKRecordToSync:(id)a3;
- (BOOL)_kickOffWriteIfNeededForSyncType:(int64_t)a3 activity:(id)a4 completion:(id)a5;
- (BOOL)_messageZoneCreated;
- (BOOL)_shouldDeferCoreDuetMessagesSyncWithActivity:(id)a3;
- (BOOL)_shouldFetchArchivedRecords:(id)a3;
- (BOOL)_shouldMarkAllMessagesAsNeedingSync;
- (CKServerChangeToken)archivedRecordSyncToken;
- (CKServerChangeToken)latestSyncToken;
- (IMDCKMessageSyncController)init;
- (IMDCKMessageSyncController)initWithSyncTokenStore:(id)a3;
- (id)_constructMessageRecordIDUsingTombStoneDictionary:(id)a3;
- (id)_copyRecordIDsToDeleteWithLimit:(unint64_t)a3;
- (id)_messageRecordSalt;
- (id)_messageZoneID;
- (id)_operationErrorForModifyingRecordCompletion:(id)a3;
- (id)_recordsToSaveWithAttemptCount:(unint64_t)a3;
- (id)_syncOperationGroupName;
- (int64_t)_numberOfBatchesOfMessagesToFetchInInitialSync;
- (unint64_t)_messageDeleteBatchSize;
- (void)_deleteMessagesWithRecordIDs:(id)a3 completion:(id)a4;
- (void)_fetchArchivedRecordsIfNeeded:(BOOL)a3 currentBatchCount:(int64_t)a4 maxNumberOfBatches:(int64_t)a5 activity:(id)a6 withCompletionBlock:(id)a7;
- (void)_fetchMessageZoneChangesSyncType:(int64_t)a3 currentBatchCount:(int64_t)a4 maxNumberOfBatches:(int64_t)a5 activity:(id)a6 completionBlock:(id)a7;
- (void)_hasMarkedAllMessagesAsNeedingSync;
- (void)_kickOffWriteOnCKQueueWithActivity:(id)a3 completion:(id)a4;
- (void)_markAllIncompatibleMessagesForDeletion;
- (void)_migrateSyncTokens;
- (void)_needsToMarkAllMessagesAsNeedingSync;
- (void)_noteSyncEnded;
- (void)_processArchivedRecordsFetchCompletionZoneID:(id)a3 serverChangeToken:(id)a4 moreComing:(BOOL)a5 currentBatchCount:(int64_t)a6 maxNumberOfBatches:(int64_t)a7 activity:(id)a8 error:(id)a9 completionBlock:(id)a10;
- (void)_processFetchArchivedRecordCompletionWithError:(id)a3 WithCompletionBlock:(id)a4;
- (void)_processFetchRecordZoneChangesCompletionWithError:(id)a3 completionBlock:(id)a4;
- (void)_processModifyRecordsCompletion:(id)a3 deletedRecordIDs:(id)a4 operationError:(id)a5 isLastBatchOfWrite:(BOOL)a6 activity:(id)a7 writeCompletionBlock:(id)a8;
- (void)_processRecordChange:(id)a3;
- (void)_processRecordDeletionCompletion:(id)a3 error:(id)a4 completionBlock:(id)a5;
- (void)_processRecordWriteCompletionForRecord:(id)a3 NSError:(id)a4;
- (void)_processRecordZoneFetchCompletionZoneID:(id)a3 serverChangeToken:(id)a4 clientChangeTokenData:(id)a5 moreComing:(BOOL)a6 NSError:(id)a7 syncType:(int64_t)a8 currentBatchCount:(int64_t)a9 maxNumberOfBatches:(int64_t)a10 shouldFetchArchivedRecords:(BOOL)a11 activity:(id)a12 completionBlock:(id)a13;
- (void)_resetArvchivedRecordSyncToken;
- (void)_resetSyncToken;
- (void)_scheduleOperation:(id)a3;
- (void)_updateDeviceConditionsToCheckIfNeededForCurrentBatchCount:(int64_t)a3 maxBatchCount:(int64_t)a4;
- (void)_writeDirtyMessagesToCloudKitWithActivity:(id)a3 completion:(id)a4;
- (void)clearLocalSyncState:(unint64_t)a3;
- (void)deleteChatBotMessageSyncToken;
- (void)deleteMessageSyncToken;
- (void)deleteMessagesZone;
- (void)setArchivedRecordSyncToken:(id)a3;
- (void)setLatestSyncToken:(id)a3;
- (void)syncDeletedMessagesToCloudKitWithCompletion:(id)a3;
- (void)syncMessagesWithSyncType:(int64_t)a3 deviceConditionsToCheck:(unint64_t)a4 activity:(id)a5 completionBlock:(id)a6;
@end

@implementation IMDCKMessageSyncController

- (IMDCKMessageSyncController)initWithSyncTokenStore:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = IMDCKMessageSyncController;
  v6 = [(IMDCKMessageSyncController *)&v17 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.private.IMDCKMessageSyncController", 0);
    ckQueue = v6->_ckQueue;
    v6->_ckQueue = v7;

    v9 = +[IMDRecordZoneManager sharedInstance];
    recordZoneManager = v6->_recordZoneManager;
    v6->_recordZoneManager = v9;

    objc_storeStrong(&v6->_syncTokenStore, a3);
    v11 = objc_alloc_init(IMDCKMessageSyncCKOperationFactory);
    CKOperationFactory = v6->_CKOperationFactory;
    v6->_CKOperationFactory = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    visitedChats = v6->_visitedChats;
    v6->_visitedChats = v13;

    v6->_deviceConditionsToCheck = 0;
    v6->_encounteredIncompatibleMessage = 0;
    [(IMDCKMessageSyncController *)v6 _migrateSyncTokens];
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:v6 selector:sel_incompatibleMessageDeleteDetected_ name:@"__kCKRecordIMMessageIncompatibleDeleteNotification" object:0];
  }

  return v6;
}

- (IMDCKMessageSyncController)init
{
  v3 = objc_alloc_init(IMDCKSyncTokenStore);
  v4 = [(IMDCKMessageSyncController *)self initWithSyncTokenStore:v3];

  return v4;
}

+ (id)sharedInstance
{
  if (qword_2814211A0 != -1)
  {
    sub_22B7D7EC0();
  }

  v3 = qword_281421020;

  return v3;
}

- (id)_messageZoneID
{
  v2 = [(IMDCKMessageSyncController *)self recordZoneManager];
  v3 = [v2 messageRecordZoneID];

  return v3;
}

- (id)_messageRecordSalt
{
  v2 = [(IMDCKMessageSyncController *)self _recordKeyManagerSharedInstance];
  v3 = [v2 cachedSalt];

  return v3;
}

- (unint64_t)_messageDeleteBatchSize
{
  v2 = [(IMDCKAbstractSyncController *)self ckUtilities];
  v3 = [v2 isInCloudKitDemoMode];

  if (v3)
  {
    return 5;
  }

  else
  {
    return 20;
  }
}

- (int64_t)_numberOfBatchesOfMessagesToFetchInInitialSync
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(IMDCKAbstractSyncController *)self ckUtilities];
  v4 = [v3 isInCloudKitDemoMode];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(IMDCKAbstractSyncController *)self ckUtilities];
    v7 = [v6 serverBag];
    v8 = [v7 objectForKey:@"ck-max-number-of-message-batches"];

    if (v8 && [v8 integerValue] >= 1)
    {
      v5 = [v8 integerValue];
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
          v13 = 138412290;
          v14 = v10;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, " overriding max number of message batches to fetch %@", &v13, 0xCu);
        }
      }
    }

    else
    {
      v5 = 5;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)_isValidCKRecordToSync:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 size];
  if (v4 > 0xA000 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 134217984;
      v9 = [v3 size];
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "**** Message %lu CKRecord size exceeds max limit.", &v8, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4 <= 0xA000;
}

- (id)_recordsToSaveWithAttemptCount:(unint64_t)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = v5;
  if (a3 < 0x32)
  {
    *buf = 0;
    v18 = buf;
    v19 = 0x2020000000;
    v20 = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B649250;
    block[3] = &unk_278702C50;
    block[4] = self;
    v16 = buf;
    v9 = v5;
    v15 = v9;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    if (v18[24] == 1)
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *v21 = 134217984;
          v22 = a3;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "We had invalid records attempting to load records again. Attempt count %lu", v21, 0xCu);
        }
      }

      v11 = [(IMDCKMessageSyncController *)self _recordsToSaveWithAttemptCount:a3 + 1];
    }

    else
    {
      v11 = v9;
    }

    v8 = v11;

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "**** We hit max number of attempts to creat CKRecords", buf, 2u);
      }
    }

    v8 = v6;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)_messageZoneCreated
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = [(IMDCKMessageSyncController *)self recordZoneManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22B6497B8;
  v11[3] = &unk_278703880;
  v13 = &v14;
  v5 = v3;
  v12 = v5;
  [v4 createMessageZoneIfNeededWithCompletionBlock:v11];

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
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "***** Timed out creating message zone *******", v10, 2u);
      }
    }
  }

  v8 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v8;
}

- (void)_scheduleOperation:(id)a3
{
  v3 = a3;
  v5 = +[IMDCKDatabaseManager sharedInstance];
  v4 = [v5 truthDatabase];
  [v4 addOperation:v3];
}

- (void)_processRecordWriteCompletionForRecord:(id)a3 NSError:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v6 _stringForKey:@"guid"];
      v10 = [v6 recordID];
      *buf = 138412802;
      v32 = v9;
      v33 = 2112;
      v34 = v7;
      v35 = 2112;
      v36 = v10;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Wrote message with GUID %@, error %@, recordName:%@", buf, 0x20u);
    }
  }

  if (!v7)
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_22B649E4C;
    v29[3] = &unk_278702FA0;
    v29[4] = self;
    v11 = &v30;
    v30 = v6;
    v12 = MEMORY[0x277D85CD0];
    v13 = v29;
LABEL_26:
    dispatch_sync(v12, v13);
    goto LABEL_27;
  }

  if ([v7 code] != 14)
  {
    if ([v7 code] == 26)
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = sub_22B64A0B8;
      v24[3] = &unk_278702FA0;
      v24[4] = self;
      v11 = &v25;
      v25 = v6;
      v12 = MEMORY[0x277D85CD0];
      v13 = v24;
    }

    else if ([v7 code] == 12 || objc_msgSend(v7, "code") == 11)
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Record had invalid arguments, we'll try this record again on the next sync", buf, 2u);
        }
      }

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = sub_22B64A110;
      v22[3] = &unk_278702FA0;
      v22[4] = self;
      v11 = &v23;
      v23 = v6;
      v12 = MEMORY[0x277D85CD0];
      v13 = v22;
    }

    else if ([v7 code] == 2050 || objc_msgSend(v7, "code") == 100)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_22B64A168;
      v20[3] = &unk_278702FA0;
      v20[4] = self;
      v11 = &v21;
      v21 = v6;
      v12 = MEMORY[0x277D85CD0];
      v13 = v20;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = [v7 code];
          *buf = 134217984;
          v32 = v16;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Encountered an unknown error.  We'll try syncing this message again on the next sync. Error code: %llu", buf, 0xCu);
        }
      }

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = sub_22B64A1C0;
      v18[3] = &unk_278702FA0;
      v18[4] = self;
      v11 = &v19;
      v19 = v6;
      v12 = MEMORY[0x277D85CD0];
      v13 = v18;
    }

    goto LABEL_26;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B649EAC;
  block[3] = &unk_2787038F8;
  block[4] = self;
  v27 = v7;
  v28 = v6;
  dispatch_sync(MEMORY[0x277D85CD0], block);

  v11 = &v27;
LABEL_27:

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_operationErrorForModifyingRecordCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IMDCKAbstractSyncController *)self errorAnalyzer];
  v6 = [v5 CKPartialError:v4 onlyHasErrorCodes:&unk_283F4EF48];

  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Modify message had conflicts or the zone was not found, so treating this as a non error case", v10, 2u);
      }
    }

    v8 = 0;
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

- (void)_processModifyRecordsCompletion:(id)a3 deletedRecordIDs:(id)a4 operationError:(id)a5 isLastBatchOfWrite:(BOOL)a6 activity:(id)a7 writeCompletionBlock:(id)a8
{
  v10 = a6;
  v37 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v32 = v16;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "_processModifyRecordsCompletion error %@", buf, 0xCu);
    }
  }

  v20 = [(IMDCKMessageSyncController *)self _operationErrorForModifyingRecordCompletion:v16];

  if (v20)
  {
    goto LABEL_28;
  }

  if (IMIsRunningInAutomation())
  {
    v21 = [MEMORY[0x277D1A970] sharedInstance];
    [v21 addNewMessagesSyncedCount:{objc_msgSend(v14, "count")}];
  }

  if (v10)
  {
LABEL_28:
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = @"NO";
        if (v10)
        {
          v24 = @"YES";
        }

        else
        {
          v24 = @"NO";
        }

        *buf = 138412802;
        v32 = v24;
        v33 = 2112;
        v34 = v20;
        if (!v20)
        {
          v23 = @"YES";
        }

        v35 = 2112;
        v36 = v23;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "We completed writing messages. isLastBatch %@, write error %@, writeSuccess %@", buf, 0x20u);
      }
    }

    if (v18)
    {
      v18[2](v18, v20 == 0, v20);
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
        _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Kicking off another batch of message writes to cloudKit", buf, 2u);
      }
    }

    v26 = [(IMDCKMessageSyncController *)self ckQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B64A664;
    block[3] = &unk_2787037B8;
    block[4] = self;
    v29 = v17;
    v30 = v18;
    dispatch_async(v26, block);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (id)_syncOperationGroupName
{
  v2 = [(IMDCKAbstractSyncController *)self syncState];
  v3 = [v2 lastSyncDate];

  if (v3)
  {
    return @"PeriodicMessageSync";
  }

  else
  {
    return @"BackFillMessageSync";
  }
}

- (void)_writeDirtyMessagesToCloudKitWithActivity:(id)a3 completion:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(IMDCKMessageSyncController *)self _deviceConditionsAllowsMessageSyncForCurrentBatchCount:1 maxBatchCount:-1 activity:v6])
  {
    v8 = [(IMDCKMessageSyncController *)self _recordsToSave];
    v9 = [(IMDCKAbstractSyncController *)self ckUtilities];
    v10 = [v9 newfilteredArrayRemovingCKRecordDupes:v8];

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
        *buf = 138412546;
        v33 = v12;
        v34 = 2112;
        v35 = v13;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Got %@ records to sync, filtered to %@ unique records", buf, 0x16u);
      }
    }

    if ([v8 count])
    {
      v14 = [v8 count];
      v15 = [(IMDCKMessageSyncController *)self _numberOfMessagesToUpload];
      if (v14 < v15)
      {
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = [v8 count];
            v18 = [(IMDCKMessageSyncController *)self _numberOfMessagesToUpload];
            *buf = 134218240;
            v33 = v17;
            v34 = 2048;
            v35 = v18;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Number of messages to upload %lu < max batch size. %lu ", buf, 0x16u);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "**** This is the last batch of messages we will write", buf, 2u);
          }
        }
      }

      v20 = v14 < v15;
      [(IMDCKAbstractSyncController *)self setBroadcastedSyncStateToUploading];
      v21 = [(IMDCKMessageSyncController *)self CKOperationFactory];
      v22 = [(IMDCKMessageSyncController *)self _syncOperationGroupName];
      v23 = [v21 saveMessagesCKOperationUsingRecordsToSave:v10 operationGroupName:v22 activity:v6];

      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = sub_22B64AC28;
      v31[3] = &unk_2787047C0;
      v31[4] = self;
      [v23 setPerRecordCompletionBlock:v31];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = sub_22B64AC38;
      v27[3] = &unk_278703920;
      v27[4] = self;
      v30 = v20;
      v28 = v6;
      v29 = v7;
      [v23 setModifyRecordsCompletionBlock:v27];
      [(IMDCKMessageSyncController *)self _scheduleOperation:v23];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "**** We completed writing up messages. No more messages to write up. ***", buf, 2u);
        }
      }

      if (v7)
      {
        (*(v7 + 2))(v7, 1, 0);
      }
    }

    goto LABEL_30;
  }

  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v33 = @"NO";
      _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Did not schedule a write. Device Conditions suitable to write:%@", buf, 0xCu);
    }
  }

  if (v7)
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D19D18] code:2 userInfo:0];
    (*(v7 + 2))(v7, 0, v8);
LABEL_30:
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_processRecordChange:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 _stringForKey:@"guid"];
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Fetched message record with GUID %@", buf, 0xCu);
    }
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22B64ADC4;
  v9[3] = &unk_278702FA0;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_sync(MEMORY[0x277D85CD0], v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_updateDeviceConditionsToCheckIfNeededForCurrentBatchCount:(int64_t)a3 maxBatchCount:(int64_t)a4
{
  v15 = *MEMORY[0x277D85DE8];
  if (![(IMDCKMessageSyncController *)self deviceConditionsToCheck])
  {
    if (a4 == -1)
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          LOWORD(v11) = 0;
          _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "This is a periodic sync and deviceConditionstoCheck is set to IMCheckNoDeviceConditions, changing it to IMCheckAllDeviceConditions", &v11, 2u);
        }

        goto LABEL_12;
      }

LABEL_13:
      [(IMDCKMessageSyncController *)self setDeviceConditionsToCheck:1];
      goto LABEL_14;
    }

    if ((a4 & 0x8000000000000000) == 0 && a3 > a4)
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
          v9 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
          v11 = 138412546;
          v12 = v8;
          v13 = 2112;
          v14 = v9;
          _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "This is an initial sync but current batch count [%@] >= maxBatchCount [%@] and deviceConditionstoCheck is set to IMCheckNoDeviceConditions, changing it to IMCheckAllDeviceConditions", &v11, 0x16u);
        }

LABEL_12:

        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

LABEL_14:
  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_deviceConditionsAllowsMessageSyncForCurrentBatchCount:(int64_t)a3 maxBatchCount:(int64_t)a4 activity:(id)a5
{
  v8 = a5;
  [(IMDCKMessageSyncController *)self _updateDeviceConditionsToCheckIfNeededForCurrentBatchCount:a3 maxBatchCount:a4];
  LOBYTE(a4) = [(IMDCKMessageSyncController *)self _deviceConditionsAllowsMessageSyncForActivity:v8 deviceConditionsToCheck:[(IMDCKMessageSyncController *)self deviceConditionsToCheck] currentBatchCount:a3 maxBatchCount:a4];

  return a4;
}

- (BOOL)_shouldDeferCoreDuetMessagesSyncWithActivity:(id)a3
{
  v3 = a3;
  should_defer = xpc_activity_should_defer(v3);
  if (should_defer)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Setting xpc_activity_t to XPC_ACTIVITY_STATE_DEFER because conditions are no longer met", buf, 2u);
      }
    }

    if (!xpc_activity_set_state(v3, 3) && IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Error forcing xpc_activity_t to XPC_ACTIVITY_STATE_DEFER", v8, 2u);
      }
    }
  }

  return should_defer;
}

- (BOOL)_deviceConditionsAllowsMessageSyncForActivity:(id)a3 deviceConditionsToCheck:(unint64_t)a4 currentBatchCount:(int64_t)a5 maxBatchCount:(int64_t)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = [(IMDCKMessageSyncController *)self _ckUtilitiesInstance];
  v11 = [v10 cloudKitSyncingEnabled];

  v12 = [(IMDCKMessageSyncController *)self _ckUtilitiesInstance];
  v13 = [v12 iCloudAccountMatchesiMessageAccount];

  if ((v11 & v13) == 1)
  {
    if ([(IMDCKMessageSyncController *)self _isCoreDuetSyncForMaxBatchCount:a6 activity:v9])
    {
      v14 = [(IMDCKMessageSyncController *)self _shouldDeferCoreDuetMessagesSyncWithActivity:v9];
      v15 = IMOSLoggingEnabled();
      if (v14)
      {
        if (v15)
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
            v35 = 138412290;
            v36 = v17;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "This is a coreduet sync at currentBatchCount %@, coreduet says to defer syncing", &v35, 0xCu);
          }
        }

        LOBYTE(v11) = 0;
        goto LABEL_46;
      }

      if (v15)
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
          v35 = 138412290;
          v36 = v25;
          _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "This is a coreduet sync at currentBatchCount %@, coreduet says to continue syncing", &v35, 0xCu);
        }

LABEL_34:

        goto LABEL_35;
      }

      goto LABEL_35;
    }

    if ([(IMDCKMessageSyncController *)self _numberOfBatchesOfMessagesToFetchInInitialSync]>= a5)
    {
      v26 = IMOSLoggingEnabled();
      if (a6 == -1)
      {
        if (v26)
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v28 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
            v35 = 138412546;
            v36 = v28;
            v37 = 2112;
            v38 = @"NO";
            _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Message sync: Not checking device conditions for full sync at current batch count %@ isCoreDuetSync %@", &v35, 0x16u);
          }

          goto LABEL_34;
        }
      }

      else if (v26)
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v27 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
          v35 = 138412290;
          v36 = v27;
          _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Message sync: Not checking device conditions for initial sync at current batchCount %@", &v35, 0xCu);
        }

        goto LABEL_34;
      }

LABEL_35:
      LOBYTE(v11) = 1;
      goto LABEL_46;
    }

    v21 = [(IMDCKMessageSyncController *)self deviceConditionsToCheck];
    if (v21 == 2)
    {
      v22 = [(IMDCKMessageSyncController *)self _ckUtilitiesInstance];
      v23 = [v22 isDeviceOnWifi];
    }

    else
    {
      if (v21 != 1)
      {
        v11 = 1;
LABEL_39:
        if (IMOSLoggingEnabled())
        {
          v29 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            if (v11)
            {
              v30 = @"YES";
            }

            else
            {
              v30 = @"NO";
            }

            v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[IMDCKMessageSyncController deviceConditionsToCheck](self, "deviceConditionsToCheck")}];
            v32 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
            v35 = 138412802;
            v36 = v30;
            v37 = 2112;
            v38 = v31;
            v39 = 2112;
            v40 = v32;
            _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Message sync: device conditions allow sync: %@ deviceConditionsToCheck %@ currentBatchCount %@", &v35, 0x20u);
          }
        }

        goto LABEL_46;
      }

      v22 = [(IMDCKMessageSyncController *)self _ckUtilitiesInstance];
      v23 = [v22 deviceConditionsAllowPeriodicSync];
    }

    v11 = v23;

    goto LABEL_39;
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = @"NO";
      if (v11)
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      if (v13)
      {
        v19 = @"YES";
      }

      v35 = 138412546;
      v36 = v20;
      v37 = 2112;
      v38 = v19;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Message sync: Stop syncing, feature enabled %@ hasMatchingAccounts %@.", &v35, 0x16u);
    }
  }

LABEL_46:

  v33 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)_migrateSyncTokens
{
  v3 = [(IMDCKMessageSyncController *)self syncTokenStore];
  [v3 migrateKey:@"archivedMessagesChangeToken" fromDatabase:@"/var/mobile/Library/SMS/CloudKitMetaData/MessageSyncArchivedRecordMetaData.db"];

  v4 = [(IMDCKMessageSyncController *)self syncTokenStore];
  [v4 migrateKey:@"messagesChangeToken" fromDatabase:@"/var/mobile/Library/SMS/CloudKitMetaData/MessageSyncZoneMetaData.db"];
}

- (void)setArchivedRecordSyncToken:(id)a3
{
  v5 = a3;
  if (v5)
  {
    if (self->_archivedRecordSyncToken == v5)
    {
      goto LABEL_6;
    }

    v9 = v5;
    objc_storeStrong(&self->_archivedRecordSyncToken, a3);
    v6 = [(IMDCKMessageSyncController *)self syncTokenStore];
    v7 = v6;
    v8 = v9;
  }

  else
  {
    v9 = 0;
    v6 = [(IMDCKMessageSyncController *)self syncTokenStore];
    v7 = v6;
    v8 = 0;
  }

  [v6 persistToken:v8 forKey:@"archivedMessagesChangeToken"];

  v5 = v9;
LABEL_6:
}

- (CKServerChangeToken)archivedRecordSyncToken
{
  v3 = [(IMDCKMessageSyncController *)self syncTokenStore];
  v4 = [v3 tokenForKey:@"archivedMessagesChangeToken"];
  archivedRecordSyncToken = self->_archivedRecordSyncToken;
  self->_archivedRecordSyncToken = v4;

  v6 = self->_archivedRecordSyncToken;

  return v6;
}

- (void)_resetArvchivedRecordSyncToken
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Resetting the archived message sync token to nil", buf, 2u);
    }
  }

  v4 = [(IMDCKMessageSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B64BB08;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_sync(v4, block);
}

- (void)setLatestSyncToken:(id)a3
{
  v7 = a3;
  v4 = [(IMDCKMessageSyncController *)self syncTokenStore];
  v5 = [(IMDCKMessageSyncController *)self _changeTokenKey];
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
  v3 = [(IMDCKMessageSyncController *)self syncTokenStore];
  v4 = [(IMDCKMessageSyncController *)self _changeTokenKey];
  v5 = [v3 tokenForKey:v4];

  return v5;
}

- (void)_resetSyncToken
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Resetting the message sync token to nil", buf, 2u);
    }
  }

  v4 = [(IMDCKMessageSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B64BD18;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)_processArchivedRecordsFetchCompletionZoneID:(id)a3 serverChangeToken:(id)a4 moreComing:(BOOL)a5 currentBatchCount:(int64_t)a6 maxNumberOfBatches:(int64_t)a7 activity:(id)a8 error:(id)a9 completionBlock:(id)a10
{
  v15 = a4;
  v16 = a8;
  v17 = a9;
  v18 = a10;
  v19 = [(IMDCKMessageSyncController *)self ckQueue];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_22B64BEC0;
  v24[3] = &unk_278706DE8;
  v32 = a5;
  v25 = v15;
  v26 = v17;
  v30 = a6;
  v31 = a7;
  v27 = self;
  v28 = v16;
  v29 = v18;
  v20 = v18;
  v21 = v16;
  v22 = v17;
  v23 = v15;
  dispatch_sync(v19, v24);
}

- (void)_fetchArchivedRecordsIfNeeded:(BOOL)a3 currentBatchCount:(int64_t)a4 maxNumberOfBatches:(int64_t)a5 activity:(id)a6 withCompletionBlock:(id)a7
{
  v10 = a3;
  v47 = *MEMORY[0x277D85DE8];
  v12 = a6;
  v13 = a7;
  if (a5 < 0 || a4 < a5)
  {
    v15 = [(IMDCKMessageSyncController *)self _deviceConditionsAllowsMessageSyncForCurrentBatchCount:a4 maxBatchCount:a5 activity:v12];
    v16 = IMOSLoggingEnabled();
    if (v15 && v10)
    {
      if (v16)
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
          v19 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
          *buf = 138412546;
          v44 = v18;
          v45 = 2112;
          v46 = v19;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Fetching archived currentBatchCount %@ maxNumberOfBatches %@", buf, 0x16u);
        }
      }

      [(IMDCKAbstractSyncController *)self setBroadcastedSyncStateToDownloading];
      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = [(IMDCKMessageSyncController *)self archivedRecordSyncToken];
          *buf = 138412290;
          v44 = v21;
          _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "******** Fetching archived records ***** sync token is %@", buf, 0xCu);
        }
      }

      v22 = [(IMDCKMessageSyncController *)self CKOperationFactory];
      v23 = [(IMDCKMessageSyncController *)self archivedRecordSyncToken];
      v24 = [(IMDCKMessageSyncController *)self _messageZoneID];
      v25 = [v22 fetchArchivedRecordsOperationWithSyncToken:v23 zoneID:v24 activity:v12];

      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = sub_22B64C940;
      v42[3] = &unk_2787046E0;
      v42[4] = self;
      [v25 setRecordFetchedBlock:v42];
      [v25 setRecordZoneChangeTokensUpdatedBlock:&unk_283F1A948];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = sub_22B64CB34;
      v37[3] = &unk_278706E30;
      v37[4] = self;
      v40 = a4;
      v41 = a5;
      v38 = v12;
      v26 = v13;
      v39 = v26;
      [v25 setRecordZoneFetchCompletionBlock:v37];
      v31 = MEMORY[0x277D85DD0];
      v32 = 3221225472;
      v33 = sub_22B64CB78;
      v34 = &unk_278704778;
      v35 = self;
      v36 = v26;
      [v25 setFetchArchivedRecordsCompletionBlock:&v31];
      [(IMDCKMessageSyncController *)self _scheduleOperation:v25, v31, v32, v33, v34, v35];
    }

    else if (v15)
    {
      if (v16)
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Did not fetch archived records from message zone as no archived hint present", buf, 2u);
        }
      }

      if (v13)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (v16)
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Did not fetch archived records from message zone as device condition does not allow sync", buf, 2u);
        }
      }

      if (v13)
      {
        v29 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D19D18] code:2 userInfo:0];
        (*(v13 + 2))(v13, 0, 0, v29);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "****** We are done fetching archived messages as max batch attempt limit reached ********", buf, 2u);
      }
    }

    if (v13)
    {
LABEL_8:
      (*(v13 + 2))(v13, 1, 1, 0);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_processFetchArchivedRecordCompletionWithError:(id)a3 WithCompletionBlock:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v5;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "*** Encountered error while fetching archived records %@", &v11, 0xCu);
      }
    }

    if (v6)
    {
      (*(v6 + 2))(v6, 0, 0, v5);
    }
  }

  else if (v7)
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "*** Did not encounter error while fetching archived records", &v11, 2u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_processRecordZoneFetchCompletionZoneID:(id)a3 serverChangeToken:(id)a4 clientChangeTokenData:(id)a5 moreComing:(BOOL)a6 NSError:(id)a7 syncType:(int64_t)a8 currentBatchCount:(int64_t)a9 maxNumberOfBatches:(int64_t)a10 shouldFetchArchivedRecords:(BOOL)a11 activity:(id)a12 completionBlock:(id)a13
{
  v16 = a4;
  v17 = a7;
  v18 = a12;
  v19 = a13;
  v20 = [(IMDCKMessageSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B64CE54;
  block[3] = &unk_278706E80;
  v35 = a6;
  v27 = v16;
  v28 = v17;
  v36 = a11;
  v33 = a10;
  v34 = a8;
  v29 = self;
  v30 = v18;
  v31 = v19;
  v32 = a9;
  v21 = v19;
  v22 = v18;
  v23 = v17;
  v24 = v16;
  dispatch_sync(v20, block);
}

- (void)_processFetchRecordZoneChangesCompletionWithError:(id)a3 completionBlock:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    goto LABEL_5;
  }

  v8 = [(IMDCKAbstractSyncController *)self errorAnalyzer];
  if ([v8 errorIndicatesZoneNotCreated:v6])
  {

    goto LABEL_5;
  }

  v9 = [(IMDCKAbstractSyncController *)self errorAnalyzer];
  v10 = [v9 errorIndicatesUserDeletedZone:v6];

  if (v10)
  {
LABEL_5:
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "_processFetchRecordZoneChangesCompletionWithError with no error", buf, 2u);
      }
    }

    goto LABEL_9;
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Failed fetching messages %@", buf, 0xCu);
    }
  }

  if (v7)
  {
    v14 = [(IMDCKMessageSyncController *)self ckQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_22B64D9C8;
    v15[3] = &unk_2787028B0;
    v17 = v7;
    v16 = v6;
    dispatch_async(v14, v15);
  }

LABEL_9:

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldFetchArchivedRecords:(id)a3
{
  v4 = [a3 recordZoneIDsWithPendingArchivedRecords];
  LOBYTE(self) = -[IMDCKMessageSyncController _doesAnyRecordZoneIDHavePendingArchivedRecords:](self, "_doesAnyRecordZoneIDHavePendingArchivedRecords:", [v4 count]);

  return self;
}

- (BOOL)_isDiskSpaceAvailableForSyncType:(int64_t)a3 currentBatchCount:(int64_t)a4
{
  v6 = __ROR8__(0x8F5C28F5C28F5C29 * a4, 2) < 0x28F5C28F5C28F5DuLL;
  v7 = +[IMDCKCacheDeleteManager sharedInstance];
  LOBYTE(a3) = [v7 canWriteFileOfEstimatedSize:40960 * -[IMDCKMessageSyncController _numberOfRecordsToFetchForSyncType:](self refreshCachedValue:{"_numberOfRecordsToFetchForSyncType:", a3), v6}];

  return a3;
}

- (void)_fetchMessageZoneChangesSyncType:(int64_t)a3 currentBatchCount:(int64_t)a4 maxNumberOfBatches:(int64_t)a5 activity:(id)a6 completionBlock:(id)a7
{
  v67 = *MEMORY[0x277D85DE8];
  v50 = a6;
  v12 = a7;
  if (a5 < 1 || a4 < a5)
  {
    v22 = [(IMDCKMessageSyncController *)self _numberOfBatchesOfMessagesToFetchInInitialSync];
    if (a5 == -1)
    {
      v23 = v22;
      if (v22 < a4)
      {
        v24 = [MEMORY[0x277CBEAA8] date];
        if (IMOSLoggingEnabled())
        {
          v25 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = [MEMORY[0x277CCABB0] numberWithInteger:v23];
            *buf = 138412546;
            *&buf[4] = v26;
            *&buf[12] = 2112;
            *&buf[14] = v24;
            _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "We completed fetching %@ batches of messages during a full sync, setting fullPartialSyncFirstCompletedDate to %@", buf, 0x16u);
          }
        }

        v27 = [(IMDCKAbstractSyncController *)self syncState];
        [v27 setAnalyticSyncDatesDictionaryObject:v24 forKey:*MEMORY[0x277D19AF0] shouldOverrideIfExists:0];
      }
    }

    v28 = [(IMDCKMessageSyncController *)self _isDiskSpaceAvailableForSyncType:a3 currentBatchCount:a4];
    v29 = [(IMDCKMessageSyncController *)self _deviceConditionsAllowsMessageSyncForCurrentBatchCount:a4 maxBatchCount:a5 activity:v50];
    v30 = IMOSLoggingEnabled();
    if (v29 && v28)
    {
      if (v30)
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
          v33 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
          *buf = 138412546;
          *&buf[4] = v32;
          *&buf[12] = 2112;
          *&buf[14] = v33;
          _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Fetching live messages, currentBatchCount %@ maxNumberOfBatches %@", buf, 0x16u);
        }
      }

      [(IMDCKAbstractSyncController *)self setBroadcastedSyncStateToDownloading];
      v34 = [(IMDCKMessageSyncController *)self CKOperationFactory];
      v35 = [(IMDCKMessageSyncController *)self latestSyncToken];
      v36 = [(IMDCKMessageSyncController *)self _messageZoneID];
      v37 = [(IMDCKMessageSyncController *)self _numberOfRecordsToFetchForSyncType:a3];
      v38 = [(IMDCKMessageSyncController *)self _syncOperationGroupName];
      v39 = [v34 fetchMessageZoneChangesCKOperationUsingToken:v35 zoneID:v36 resultsLimit:v37 operationGroupName:v38 activity:v50];

      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = sub_22B64E3A4;
      v60[3] = &unk_2787046E0;
      v60[4] = self;
      [v39 setRecordChangedBlock:v60];
      [v39 setRecordZoneChangeTokensUpdatedBlock:&unk_283F1A968];
      [v39 setRecordWithIDWasDeletedBlock:&unk_283F1A988];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v64 = sub_22B4D7790;
      v65 = sub_22B4D792C;
      v40 = v39;
      v66 = v40;
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = sub_22B64E56C;
      v53[3] = &unk_278706EC8;
      v53[4] = self;
      v56 = buf;
      v57 = a3;
      v58 = a4;
      v59 = a5;
      v54 = v50;
      v41 = v12;
      v55 = v41;
      [v40 setRecordZoneFetchCompletionBlock:v53];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = sub_22B64E650;
      v51[3] = &unk_278704778;
      v51[4] = self;
      v52 = v41;
      [v40 setFetchRecordZoneChangesCompletionBlock:v51];
      if (IMOSLoggingEnabled())
      {
        v42 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = [(IMDCKMessageSyncController *)self latestSyncToken];
          *v61 = 138412290;
          v62 = v43;
          _os_log_impl(&dword_22B4CC000, v42, OS_LOG_TYPE_INFO, "Scheduling a fetch operation from message zone, using token %@", v61, 0xCu);
        }
      }

      [(IMDCKMessageSyncController *)self _scheduleOperation:v40];

      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (v30)
      {
        v45 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v46 = @"NO";
          if (v29)
          {
            v47 = @"YES";
          }

          else
          {
            v47 = @"NO";
          }

          if (v28)
          {
            v46 = @"YES";
          }

          *buf = 138412546;
          *&buf[4] = v47;
          *&buf[12] = 2112;
          *&buf[14] = v46;
          _os_log_impl(&dword_22B4CC000, v45, OS_LOG_TYPE_INFO, "Did not fetch changes from message zone. Device condition allows sync %@. Disk Space Available %@", buf, 0x16u);
        }
      }

      if (v12)
      {
        v48 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D19D18] code:2 userInfo:0];
        (*(v12 + 2))(v12, 0, 0, 0, v48);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "****** We are done fetching live messages as max batch attempt limit reached ********", buf, 2u);
      }
    }

    v14 = +[IMDCKUtilities sharedInstance];
    v15 = [v14 shouldForceArchivedMessagesSync];

    if (v15)
    {
      v16 = *MEMORY[0x277D19A08];
      v17 = *MEMORY[0x277D19BE0];
      v18 = IMGetDomainBoolForKeyWithDefaultValue();
      if (v12)
      {
        v19 = v18;
        if (IMOSLoggingEnabled())
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = @"NO";
            if (v19)
            {
              v21 = @"YES";
            }

            *buf = 138412290;
            *&buf[4] = v21;
            _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "shouldForceArchivedMessagesSync is YES, fetched max live record batches but will also fetch initial sync archived records if needed: %@", buf, 0xCu);
          }
        }

        (*(v12 + 2))(v12, 1, v19, 0, 0);
      }
    }

    else if (v12)
    {
      if (IMOSLoggingEnabled())
      {
        v44 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v44, OS_LOG_TYPE_INFO, "Since we fetched max live batch records, we will not fetch archived records", buf, 2u);
        }
      }

      (*(v12 + 2))(v12, 1, 0, 0, 0);
    }
  }

  v49 = *MEMORY[0x277D85DE8];
}

- (void)_noteSyncEnded
{
  [(IMDCKAbstractSyncController *)self setIsSyncing:0];
  [(IMDCKMessageSyncController *)self setDeviceConditionsToCheck:0];
  if ([(IMDCKMessageSyncController *)self encounteredIncompatibleMessage])
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v4 = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Need to kick off a sync of deletes because we had an incompatible message earlier.", v4, 2u);
      }
    }

    [(IMDCKMessageSyncController *)self setEncounteredIncompatibleMessage:0];
    [(IMDCKMessageSyncController *)self syncDeletedMessagesToCloudKitWithCompletion:&unk_283F1A9A8];
  }
}

- (void)_markAllIncompatibleMessagesForDeletion
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Mark all incompatible messages for deletion from cloudkit", v4, 2u);
    }
  }

  IMDAddIncompatibleGroupPhotoChangedMessagesToDeleteFromCloudKit();
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"__kCKRecordIMMessageIncompatibleDeleteNotification" object:0];
}

- (void)_needsToMarkAllMessagesAsNeedingSync
{
  v2 = [MEMORY[0x277D1A990] sharedInstance];
  [v2 setBool:0 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A40]];
}

- (BOOL)_shouldMarkAllMessagesAsNeedingSync
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
    v4 = [v5 getBoolFromDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A40]] ^ 1;
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
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "_shouldMarkAllMessagesAsNeedingSync %@", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)_hasMarkedAllMessagesAsNeedingSync
{
  v2 = [MEMORY[0x277D1A990] sharedInstance];
  [v2 setBool:1 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A40]];
}

- (void)_kickOffWriteOnCKQueueWithActivity:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Kicking off a message write after fetching messages", buf, 2u);
    }
  }

  v9 = [(IMDCKMessageSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B64EC4C;
  block[3] = &unk_2787037B8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

- (BOOL)_kickOffWriteIfNeededForSyncType:(int64_t)a3 activity:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(IMDCKMessageSyncController *)self _ckUtilitiesInstance];
  LODWORD(a3) = [v10 shouldKickOffWriteForSyncType:a3];

  if (!a3)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Not writing up messages as sync type does not allow it", buf, 2u);
      }
    }

    if (v9)
    {
      v9[2](v9, 1, 0);
    }

    goto LABEL_16;
  }

  v11 = [(IMDCKMessageSyncController *)self _ckUtilitiesInstance];
  v12 = [v11 isLocalCachedSaltPresent];

  if ((v12 & 1) == 0)
  {
    if (v9)
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Not kicking off a write because cachedSalt is not present.", buf, 2u);
        }
      }

      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D19D18] code:3 userInfo:0];
      (v9)[2](v9, 0, v16);
    }

LABEL_16:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B64F118;
    block[3] = &unk_278702FF0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v13 = 0;
    goto LABEL_17;
  }

  [(IMDCKMessageSyncController *)self _kickOffWriteOnCKQueueWithActivity:v8 completion:v9];
  v13 = 1;
LABEL_17:

  return v13;
}

- (void)syncMessagesWithSyncType:(int64_t)a3 deviceConditionsToCheck:(unint64_t)a4 activity:(id)a5 completionBlock:(id)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
      *buf = 134218242;
      v23 = a3;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "syncMessagesWithSyncType with type %ld deviceConditionsToCheck %@", buf, 0x16u);
    }
  }

  [(IMDCKAbstractSyncController *)self resetRecordCounts];
  [(IMDCKAbstractSyncController *)self setIsSyncing:1];
  [(IMDCKMessageSyncController *)self setDeviceConditionsToCheck:a4];
  v14 = [(IMDCKMessageSyncController *)self ckQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_22B64F300;
  v18[3] = &unk_278706F90;
  v18[4] = self;
  v19 = v10;
  v20 = v11;
  v21 = a3;
  v15 = v11;
  v16 = v10;
  dispatch_async(v14, v18);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)deleteMessageSyncToken
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Clearing local sync tokens for Messages", v5, 2u);
    }
  }

  v4 = [(IMDCKMessageSyncController *)self latestSyncToken];
  [(IMDCKMessageSyncController *)self setLatestSyncToken:0];
  [(IMDCKMessageSyncController *)self setArchivedRecordSyncToken:0];
}

- (void)deleteChatBotMessageSyncToken
{
  v2 = [(IMDCKMessageSyncController *)self syncTokenStore];
  [v2 persistToken:0 forKey:@"chatBotMessageChangeToken"];
}

- (void)deleteMessagesZone
{
  v3 = [(IMDCKMessageSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B64FFA0;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)clearLocalSyncState:(unint64_t)a3
{
  v3 = a3;
  v9 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8[0] = 67109120;
      v8[1] = v3;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Clearing local messages sync state, flags 0x%x", v8, 8u);
    }
  }

  if (v3)
  {
    [(IMDCKMessageSyncController *)self deleteMessageSyncToken];
    [(IMDCKMessageSyncController *)self deleteChatBotMessageSyncToken];
  }

  if ((v3 & 2) != 0)
  {
    v6 = +[IMDMessageStore sharedInstance];
    [v6 markAllMessagesAsNeedingCloudKitSync];
  }

  else if ((v3 & 0x10) != 0)
  {
    [(IMDCKMessageSyncController *)self _needsToMarkAllMessagesAsNeedingSync];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_processRecordDeletionCompletion:(id)a3 error:(id)a4 completionBlock:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = v9;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Delete message callback with error %@", buf, 0xCu);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B65031C;
  block[3] = &unk_2787038F8;
  v12 = v8;
  v20 = v12;
  v13 = v9;
  v21 = v13;
  v22 = self;
  dispatch_sync(MEMORY[0x277D85CD0], block);
  if (v10)
  {
    v14 = [(IMDCKMessageSyncController *)self ckQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_22B65064C;
    v16[3] = &unk_2787028B0;
    v18 = v10;
    v17 = v13;
    dispatch_async(v14, v16);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_deleteMessagesWithRecordIDs:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(IMDCKMessageSyncController *)self CKOperationFactory];
    v9 = [v8 deleteMessageCKOperationUsingRecordIDstoDelete:v6];

    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = sub_22B65088C;
    v16 = &unk_278703858;
    v17 = self;
    v18 = v7;
    [v9 setModifyRecordsCompletionBlock:&v13];
    [v9 setPerRecordCompletionBlock:{&unk_283F1A9C8, v13, v14, v15, v16, v17}];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v20 = v6;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Kicking off deleted of recordIDs %@", buf, 0xCu);
      }
    }

    [(IMDCKMessageSyncController *)self _scheduleOperation:v9];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "No GUIDs passed in to delete", buf, 2u);
      }
    }

    (*(v7 + 2))(v7, 0);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_constructMessageRecordIDUsingTombStoneDictionary:(id)a3
{
  v4 = [a3 valueForKey:@"recordID"];
  if ([v4 length])
  {
    v5 = objc_alloc(MEMORY[0x277CBC5D0]);
    v6 = [(IMDCKMessageSyncController *)self _messageZoneID];
    v7 = [v5 initWithRecordName:v4 zoneID:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_copyRecordIDsToDeleteWithLimit:(unint64_t)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [(IMDCKMessageSyncController *)self _sharedIMDMessageStore];
  v6 = [v5 copyMessagesThatNeedToBeDeletedInCloudKitWithLimit:a3];

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

        v14 = [(IMDCKMessageSyncController *)self _constructMessageRecordIDUsingTombStoneDictionary:*(*(&v18 + 1) + 8 * i), v18];
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

- (void)syncDeletedMessagesToCloudKitWithCompletion:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDCKMessageSyncController *)self _ckUtilitiesInstance];
  v6 = [v5 cloudKitSyncingEnabled];

  if (v6)
  {
    v7 = [(IMDCKMessageSyncController *)self _copyRecordIDsToDeleteWithLimit:[(IMDCKMessageSyncController *)self _messageDeleteBatchSize]];
    v8 = [(IMDCKMessageSyncController *)self _ckUtilitiesInstance];
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
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Got %lu recordIDs to sync, filtered to %lu unique recordID", buf, 0x16u);
      }
    }

    if ([v9 count])
    {
      goto LABEL_7;
    }

    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "No pending messages to delete from CloudKit", buf, 2u);
      }
    }

    v14 = [(IMDCKMessageSyncController *)self _sharedIMDMessageStore];
    [v14 clearMessagesTombStoneTable];

    if (!v4)
    {
LABEL_7:
      [(IMDCKAbstractSyncController *)self setBroadcastedSyncStateToDeleting];
      v11 = [(IMDCKMessageSyncController *)self ckQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B650DCC;
      block[3] = &unk_2787037B8;
      block[4] = self;
      v17 = v9;
      v18 = v4;
      dispatch_async(v11, block);
    }

    else
    {
      (*(v4 + 2))(v4, 1, 0);
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
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Not doing CloudKit message deletes as CK syncing is off", buf, 2u);
      }
    }

    (*(v4 + 2))(v4, 1, 0);
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end