@interface IMDCKMessageSyncController
+ (id)sharedInstance;
- (BOOL)_deviceConditionsAllowsMessageSyncForActivity:(id)activity deviceConditionsToCheck:(unint64_t)check currentBatchCount:(int64_t)count maxBatchCount:(int64_t)batchCount;
- (BOOL)_deviceConditionsAllowsMessageSyncForCurrentBatchCount:(int64_t)count maxBatchCount:(int64_t)batchCount activity:(id)activity;
- (BOOL)_isDiskSpaceAvailableForSyncType:(int64_t)type currentBatchCount:(int64_t)count;
- (BOOL)_isValidCKRecordToSync:(id)sync;
- (BOOL)_kickOffWriteIfNeededForSyncType:(int64_t)type activity:(id)activity completion:(id)completion;
- (BOOL)_messageZoneCreated;
- (BOOL)_shouldDeferCoreDuetMessagesSyncWithActivity:(id)activity;
- (BOOL)_shouldFetchArchivedRecords:(id)records;
- (BOOL)_shouldMarkAllMessagesAsNeedingSync;
- (CKServerChangeToken)archivedRecordSyncToken;
- (CKServerChangeToken)latestSyncToken;
- (IMDCKMessageSyncController)init;
- (IMDCKMessageSyncController)initWithSyncTokenStore:(id)store;
- (id)_constructMessageRecordIDUsingTombStoneDictionary:(id)dictionary;
- (id)_copyRecordIDsToDeleteWithLimit:(unint64_t)limit;
- (id)_messageRecordSalt;
- (id)_messageZoneID;
- (id)_operationErrorForModifyingRecordCompletion:(id)completion;
- (id)_recordsToSaveWithAttemptCount:(unint64_t)count;
- (id)_syncOperationGroupName;
- (int64_t)_numberOfBatchesOfMessagesToFetchInInitialSync;
- (unint64_t)_messageDeleteBatchSize;
- (void)_deleteMessagesWithRecordIDs:(id)ds completion:(id)completion;
- (void)_fetchArchivedRecordsIfNeeded:(BOOL)needed currentBatchCount:(int64_t)count maxNumberOfBatches:(int64_t)batches activity:(id)activity withCompletionBlock:(id)block;
- (void)_fetchMessageZoneChangesSyncType:(int64_t)type currentBatchCount:(int64_t)count maxNumberOfBatches:(int64_t)batches activity:(id)activity completionBlock:(id)block;
- (void)_hasMarkedAllMessagesAsNeedingSync;
- (void)_kickOffWriteOnCKQueueWithActivity:(id)activity completion:(id)completion;
- (void)_markAllIncompatibleMessagesForDeletion;
- (void)_migrateSyncTokens;
- (void)_needsToMarkAllMessagesAsNeedingSync;
- (void)_noteSyncEnded;
- (void)_processArchivedRecordsFetchCompletionZoneID:(id)d serverChangeToken:(id)token moreComing:(BOOL)coming currentBatchCount:(int64_t)count maxNumberOfBatches:(int64_t)batches activity:(id)activity error:(id)error completionBlock:(id)self0;
- (void)_processFetchArchivedRecordCompletionWithError:(id)error WithCompletionBlock:(id)block;
- (void)_processFetchRecordZoneChangesCompletionWithError:(id)error completionBlock:(id)block;
- (void)_processModifyRecordsCompletion:(id)completion deletedRecordIDs:(id)ds operationError:(id)error isLastBatchOfWrite:(BOOL)write activity:(id)activity writeCompletionBlock:(id)block;
- (void)_processRecordChange:(id)change;
- (void)_processRecordDeletionCompletion:(id)completion error:(id)error completionBlock:(id)block;
- (void)_processRecordWriteCompletionForRecord:(id)record NSError:(id)error;
- (void)_processRecordZoneFetchCompletionZoneID:(id)d serverChangeToken:(id)token clientChangeTokenData:(id)data moreComing:(BOOL)coming NSError:(id)error syncType:(int64_t)type currentBatchCount:(int64_t)count maxNumberOfBatches:(int64_t)self0 shouldFetchArchivedRecords:(BOOL)self1 activity:(id)self2 completionBlock:(id)self3;
- (void)_resetArvchivedRecordSyncToken;
- (void)_resetSyncToken;
- (void)_scheduleOperation:(id)operation;
- (void)_updateDeviceConditionsToCheckIfNeededForCurrentBatchCount:(int64_t)count maxBatchCount:(int64_t)batchCount;
- (void)_writeDirtyMessagesToCloudKitWithActivity:(id)activity completion:(id)completion;
- (void)clearLocalSyncState:(unint64_t)state;
- (void)deleteChatBotMessageSyncToken;
- (void)deleteMessageSyncToken;
- (void)deleteMessagesZone;
- (void)setArchivedRecordSyncToken:(id)token;
- (void)setLatestSyncToken:(id)token;
- (void)syncDeletedMessagesToCloudKitWithCompletion:(id)completion;
- (void)syncMessagesWithSyncType:(int64_t)type deviceConditionsToCheck:(unint64_t)check activity:(id)activity completionBlock:(id)block;
@end

@implementation IMDCKMessageSyncController

- (IMDCKMessageSyncController)initWithSyncTokenStore:(id)store
{
  storeCopy = store;
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

    objc_storeStrong(&v6->_syncTokenStore, store);
    v11 = objc_alloc_init(IMDCKMessageSyncCKOperationFactory);
    CKOperationFactory = v6->_CKOperationFactory;
    v6->_CKOperationFactory = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    visitedChats = v6->_visitedChats;
    v6->_visitedChats = v13;

    v6->_deviceConditionsToCheck = 0;
    v6->_encounteredIncompatibleMessage = 0;
    [(IMDCKMessageSyncController *)v6 _migrateSyncTokens];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel_incompatibleMessageDeleteDetected_ name:@"__kCKRecordIMMessageIncompatibleDeleteNotification" object:0];
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
  recordZoneManager = [(IMDCKMessageSyncController *)self recordZoneManager];
  messageRecordZoneID = [recordZoneManager messageRecordZoneID];

  return messageRecordZoneID;
}

- (id)_messageRecordSalt
{
  _recordKeyManagerSharedInstance = [(IMDCKMessageSyncController *)self _recordKeyManagerSharedInstance];
  cachedSalt = [_recordKeyManagerSharedInstance cachedSalt];

  return cachedSalt;
}

- (unint64_t)_messageDeleteBatchSize
{
  ckUtilities = [(IMDCKAbstractSyncController *)self ckUtilities];
  isInCloudKitDemoMode = [ckUtilities isInCloudKitDemoMode];

  if (isInCloudKitDemoMode)
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
  ckUtilities = [(IMDCKAbstractSyncController *)self ckUtilities];
  isInCloudKitDemoMode = [ckUtilities isInCloudKitDemoMode];

  if (isInCloudKitDemoMode)
  {
    integerValue = 1;
  }

  else
  {
    ckUtilities2 = [(IMDCKAbstractSyncController *)self ckUtilities];
    serverBag = [ckUtilities2 serverBag];
    v8 = [serverBag objectForKey:@"ck-max-number-of-message-batches"];

    if (v8 && [v8 integerValue] >= 1)
    {
      integerValue = [v8 integerValue];
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:integerValue];
          v13 = 138412290;
          v14 = v10;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, " overriding max number of message batches to fetch %@", &v13, 0xCu);
        }
      }
    }

    else
    {
      integerValue = 5;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return integerValue;
}

- (BOOL)_isValidCKRecordToSync:(id)sync
{
  v10 = *MEMORY[0x277D85DE8];
  syncCopy = sync;
  v4 = [syncCopy size];
  if (v4 > 0xA000 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 134217984;
      v9 = [syncCopy size];
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "**** Message %lu CKRecord size exceeds max limit.", &v8, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4 <= 0xA000;
}

- (id)_recordsToSaveWithAttemptCount:(unint64_t)count
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = v5;
  if (count < 0x32)
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
          countCopy = count;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "We had invalid records attempting to load records again. Attempt count %lu", v21, 0xCu);
        }
      }

      v11 = [(IMDCKMessageSyncController *)self _recordsToSaveWithAttemptCount:count + 1];
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
  recordZoneManager = [(IMDCKMessageSyncController *)self recordZoneManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22B6497B8;
  v11[3] = &unk_278703880;
  v13 = &v14;
  v5 = v3;
  v12 = v5;
  [recordZoneManager createMessageZoneIfNeededWithCompletionBlock:v11];

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

- (void)_scheduleOperation:(id)operation
{
  operationCopy = operation;
  v5 = +[IMDCKDatabaseManager sharedInstance];
  truthDatabase = [v5 truthDatabase];
  [truthDatabase addOperation:operationCopy];
}

- (void)_processRecordWriteCompletionForRecord:(id)record NSError:(id)error
{
  v37 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  errorCopy = error;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [recordCopy _stringForKey:@"guid"];
      recordID = [recordCopy recordID];
      *buf = 138412802;
      v32 = v9;
      v33 = 2112;
      v34 = errorCopy;
      v35 = 2112;
      v36 = recordID;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Wrote message with GUID %@, error %@, recordName:%@", buf, 0x20u);
    }
  }

  if (!errorCopy)
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_22B649E4C;
    v29[3] = &unk_278702FA0;
    v29[4] = self;
    v11 = &v30;
    v30 = recordCopy;
    v12 = MEMORY[0x277D85CD0];
    v13 = v29;
LABEL_26:
    dispatch_sync(v12, v13);
    goto LABEL_27;
  }

  if ([errorCopy code] != 14)
  {
    if ([errorCopy code] == 26)
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = sub_22B64A0B8;
      v24[3] = &unk_278702FA0;
      v24[4] = self;
      v11 = &v25;
      v25 = recordCopy;
      v12 = MEMORY[0x277D85CD0];
      v13 = v24;
    }

    else if ([errorCopy code] == 12 || objc_msgSend(errorCopy, "code") == 11)
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
      v23 = recordCopy;
      v12 = MEMORY[0x277D85CD0];
      v13 = v22;
    }

    else if ([errorCopy code] == 2050 || objc_msgSend(errorCopy, "code") == 100)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_22B64A168;
      v20[3] = &unk_278702FA0;
      v20[4] = self;
      v11 = &v21;
      v21 = recordCopy;
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
          code = [errorCopy code];
          *buf = 134217984;
          v32 = code;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Encountered an unknown error.  We'll try syncing this message again on the next sync. Error code: %llu", buf, 0xCu);
        }
      }

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = sub_22B64A1C0;
      v18[3] = &unk_278702FA0;
      v18[4] = self;
      v11 = &v19;
      v19 = recordCopy;
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
  v27 = errorCopy;
  v28 = recordCopy;
  dispatch_sync(MEMORY[0x277D85CD0], block);

  v11 = &v27;
LABEL_27:

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_operationErrorForModifyingRecordCompletion:(id)completion
{
  completionCopy = completion;
  errorAnalyzer = [(IMDCKAbstractSyncController *)self errorAnalyzer];
  v6 = [errorAnalyzer CKPartialError:completionCopy onlyHasErrorCodes:&unk_283F4EF48];

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
    v8 = completionCopy;
  }

  return v8;
}

- (void)_processModifyRecordsCompletion:(id)completion deletedRecordIDs:(id)ds operationError:(id)error isLastBatchOfWrite:(BOOL)write activity:(id)activity writeCompletionBlock:(id)block
{
  writeCopy = write;
  v37 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dsCopy = ds;
  errorCopy = error;
  activityCopy = activity;
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v32 = errorCopy;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "_processModifyRecordsCompletion error %@", buf, 0xCu);
    }
  }

  v20 = [(IMDCKMessageSyncController *)self _operationErrorForModifyingRecordCompletion:errorCopy];

  if (v20)
  {
    goto LABEL_28;
  }

  if (IMIsRunningInAutomation())
  {
    mEMORY[0x277D1A970] = [MEMORY[0x277D1A970] sharedInstance];
    [mEMORY[0x277D1A970] addNewMessagesSyncedCount:{objc_msgSend(completionCopy, "count")}];
  }

  if (writeCopy)
  {
LABEL_28:
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = @"NO";
        if (writeCopy)
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

    if (blockCopy)
    {
      blockCopy[2](blockCopy, v20 == 0, v20);
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

    ckQueue = [(IMDCKMessageSyncController *)self ckQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B64A664;
    block[3] = &unk_2787037B8;
    block[4] = self;
    v29 = activityCopy;
    v30 = blockCopy;
    dispatch_async(ckQueue, block);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (id)_syncOperationGroupName
{
  syncState = [(IMDCKAbstractSyncController *)self syncState];
  lastSyncDate = [syncState lastSyncDate];

  if (lastSyncDate)
  {
    return @"PeriodicMessageSync";
  }

  else
  {
    return @"BackFillMessageSync";
  }
}

- (void)_writeDirtyMessagesToCloudKitWithActivity:(id)activity completion:(id)completion
{
  v36 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  completionCopy = completion;
  if ([(IMDCKMessageSyncController *)self _deviceConditionsAllowsMessageSyncForCurrentBatchCount:1 maxBatchCount:-1 activity:activityCopy])
  {
    _recordsToSave = [(IMDCKMessageSyncController *)self _recordsToSave];
    ckUtilities = [(IMDCKAbstractSyncController *)self ckUtilities];
    v10 = [ckUtilities newfilteredArrayRemovingCKRecordDupes:_recordsToSave];

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(_recordsToSave, "count")}];
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
        *buf = 138412546;
        v33 = v12;
        v34 = 2112;
        v35 = v13;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Got %@ records to sync, filtered to %@ unique records", buf, 0x16u);
      }
    }

    if ([_recordsToSave count])
    {
      v14 = [_recordsToSave count];
      _numberOfMessagesToUpload = [(IMDCKMessageSyncController *)self _numberOfMessagesToUpload];
      if (v14 < _numberOfMessagesToUpload)
      {
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = [_recordsToSave count];
            _numberOfMessagesToUpload2 = [(IMDCKMessageSyncController *)self _numberOfMessagesToUpload];
            *buf = 134218240;
            v33 = v17;
            v34 = 2048;
            v35 = _numberOfMessagesToUpload2;
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

      v20 = v14 < _numberOfMessagesToUpload;
      [(IMDCKAbstractSyncController *)self setBroadcastedSyncStateToUploading];
      cKOperationFactory = [(IMDCKMessageSyncController *)self CKOperationFactory];
      _syncOperationGroupName = [(IMDCKMessageSyncController *)self _syncOperationGroupName];
      v23 = [cKOperationFactory saveMessagesCKOperationUsingRecordsToSave:v10 operationGroupName:_syncOperationGroupName activity:activityCopy];

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
      v28 = activityCopy;
      v29 = completionCopy;
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

      if (completionCopy)
      {
        (*(completionCopy + 2))(completionCopy, 1, 0);
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

  if (completionCopy)
  {
    _recordsToSave = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D19D18] code:2 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, _recordsToSave);
LABEL_30:
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_processRecordChange:(id)change
{
  v13 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [changeCopy _stringForKey:@"guid"];
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
  v10 = changeCopy;
  v7 = changeCopy;
  dispatch_sync(MEMORY[0x277D85CD0], v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_updateDeviceConditionsToCheckIfNeededForCurrentBatchCount:(int64_t)count maxBatchCount:(int64_t)batchCount
{
  v15 = *MEMORY[0x277D85DE8];
  if (![(IMDCKMessageSyncController *)self deviceConditionsToCheck])
  {
    if (batchCount == -1)
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

    if ((batchCount & 0x8000000000000000) == 0 && count > batchCount)
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = [MEMORY[0x277CCABB0] numberWithInteger:count];
          v9 = [MEMORY[0x277CCABB0] numberWithInteger:batchCount];
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

- (BOOL)_deviceConditionsAllowsMessageSyncForCurrentBatchCount:(int64_t)count maxBatchCount:(int64_t)batchCount activity:(id)activity
{
  activityCopy = activity;
  [(IMDCKMessageSyncController *)self _updateDeviceConditionsToCheckIfNeededForCurrentBatchCount:count maxBatchCount:batchCount];
  LOBYTE(batchCount) = [(IMDCKMessageSyncController *)self _deviceConditionsAllowsMessageSyncForActivity:activityCopy deviceConditionsToCheck:[(IMDCKMessageSyncController *)self deviceConditionsToCheck] currentBatchCount:count maxBatchCount:batchCount];

  return batchCount;
}

- (BOOL)_shouldDeferCoreDuetMessagesSyncWithActivity:(id)activity
{
  activityCopy = activity;
  should_defer = xpc_activity_should_defer(activityCopy);
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

    if (!xpc_activity_set_state(activityCopy, 3) && IMOSLoggingEnabled())
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

- (BOOL)_deviceConditionsAllowsMessageSyncForActivity:(id)activity deviceConditionsToCheck:(unint64_t)check currentBatchCount:(int64_t)count maxBatchCount:(int64_t)batchCount
{
  v41 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  _ckUtilitiesInstance = [(IMDCKMessageSyncController *)self _ckUtilitiesInstance];
  cloudKitSyncingEnabled = [_ckUtilitiesInstance cloudKitSyncingEnabled];

  _ckUtilitiesInstance2 = [(IMDCKMessageSyncController *)self _ckUtilitiesInstance];
  iCloudAccountMatchesiMessageAccount = [_ckUtilitiesInstance2 iCloudAccountMatchesiMessageAccount];

  if ((cloudKitSyncingEnabled & iCloudAccountMatchesiMessageAccount) == 1)
  {
    if ([(IMDCKMessageSyncController *)self _isCoreDuetSyncForMaxBatchCount:batchCount activity:activityCopy])
    {
      v14 = [(IMDCKMessageSyncController *)self _shouldDeferCoreDuetMessagesSyncWithActivity:activityCopy];
      v15 = IMOSLoggingEnabled();
      if (v14)
      {
        if (v15)
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = [MEMORY[0x277CCABB0] numberWithInteger:count];
            v35 = 138412290;
            v36 = v17;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "This is a coreduet sync at currentBatchCount %@, coreduet says to defer syncing", &v35, 0xCu);
          }
        }

        LOBYTE(cloudKitSyncingEnabled) = 0;
        goto LABEL_46;
      }

      if (v15)
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = [MEMORY[0x277CCABB0] numberWithInteger:count];
          v35 = 138412290;
          v36 = v25;
          _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "This is a coreduet sync at currentBatchCount %@, coreduet says to continue syncing", &v35, 0xCu);
        }

LABEL_34:

        goto LABEL_35;
      }

      goto LABEL_35;
    }

    if ([(IMDCKMessageSyncController *)self _numberOfBatchesOfMessagesToFetchInInitialSync]>= count)
    {
      v26 = IMOSLoggingEnabled();
      if (batchCount == -1)
      {
        if (v26)
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v28 = [MEMORY[0x277CCABB0] numberWithInteger:count];
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
          v27 = [MEMORY[0x277CCABB0] numberWithInteger:count];
          v35 = 138412290;
          v36 = v27;
          _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Message sync: Not checking device conditions for initial sync at current batchCount %@", &v35, 0xCu);
        }

        goto LABEL_34;
      }

LABEL_35:
      LOBYTE(cloudKitSyncingEnabled) = 1;
      goto LABEL_46;
    }

    deviceConditionsToCheck = [(IMDCKMessageSyncController *)self deviceConditionsToCheck];
    if (deviceConditionsToCheck == 2)
    {
      _ckUtilitiesInstance3 = [(IMDCKMessageSyncController *)self _ckUtilitiesInstance];
      isDeviceOnWifi = [_ckUtilitiesInstance3 isDeviceOnWifi];
    }

    else
    {
      if (deviceConditionsToCheck != 1)
      {
        cloudKitSyncingEnabled = 1;
LABEL_39:
        if (IMOSLoggingEnabled())
        {
          v29 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            if (cloudKitSyncingEnabled)
            {
              v30 = @"YES";
            }

            else
            {
              v30 = @"NO";
            }

            v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[IMDCKMessageSyncController deviceConditionsToCheck](self, "deviceConditionsToCheck")}];
            v32 = [MEMORY[0x277CCABB0] numberWithInteger:count];
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

      _ckUtilitiesInstance3 = [(IMDCKMessageSyncController *)self _ckUtilitiesInstance];
      isDeviceOnWifi = [_ckUtilitiesInstance3 deviceConditionsAllowPeriodicSync];
    }

    cloudKitSyncingEnabled = isDeviceOnWifi;

    goto LABEL_39;
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = @"NO";
      if (cloudKitSyncingEnabled)
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      if (iCloudAccountMatchesiMessageAccount)
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
  return cloudKitSyncingEnabled;
}

- (void)_migrateSyncTokens
{
  syncTokenStore = [(IMDCKMessageSyncController *)self syncTokenStore];
  [syncTokenStore migrateKey:@"archivedMessagesChangeToken" fromDatabase:@"/var/mobile/Library/SMS/CloudKitMetaData/MessageSyncArchivedRecordMetaData.db"];

  syncTokenStore2 = [(IMDCKMessageSyncController *)self syncTokenStore];
  [syncTokenStore2 migrateKey:@"messagesChangeToken" fromDatabase:@"/var/mobile/Library/SMS/CloudKitMetaData/MessageSyncZoneMetaData.db"];
}

- (void)setArchivedRecordSyncToken:(id)token
{
  tokenCopy = token;
  if (tokenCopy)
  {
    if (self->_archivedRecordSyncToken == tokenCopy)
    {
      goto LABEL_6;
    }

    v9 = tokenCopy;
    objc_storeStrong(&self->_archivedRecordSyncToken, token);
    syncTokenStore = [(IMDCKMessageSyncController *)self syncTokenStore];
    v7 = syncTokenStore;
    v8 = v9;
  }

  else
  {
    v9 = 0;
    syncTokenStore = [(IMDCKMessageSyncController *)self syncTokenStore];
    v7 = syncTokenStore;
    v8 = 0;
  }

  [syncTokenStore persistToken:v8 forKey:@"archivedMessagesChangeToken"];

  tokenCopy = v9;
LABEL_6:
}

- (CKServerChangeToken)archivedRecordSyncToken
{
  syncTokenStore = [(IMDCKMessageSyncController *)self syncTokenStore];
  v4 = [syncTokenStore tokenForKey:@"archivedMessagesChangeToken"];
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

  ckQueue = [(IMDCKMessageSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B64BB08;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_sync(ckQueue, block);
}

- (void)setLatestSyncToken:(id)token
{
  tokenCopy = token;
  syncTokenStore = [(IMDCKMessageSyncController *)self syncTokenStore];
  _changeTokenKey = [(IMDCKMessageSyncController *)self _changeTokenKey];
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
  syncTokenStore = [(IMDCKMessageSyncController *)self syncTokenStore];
  _changeTokenKey = [(IMDCKMessageSyncController *)self _changeTokenKey];
  v5 = [syncTokenStore tokenForKey:_changeTokenKey];

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

  ckQueue = [(IMDCKMessageSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B64BD18;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_async(ckQueue, block);
}

- (void)_processArchivedRecordsFetchCompletionZoneID:(id)d serverChangeToken:(id)token moreComing:(BOOL)coming currentBatchCount:(int64_t)count maxNumberOfBatches:(int64_t)batches activity:(id)activity error:(id)error completionBlock:(id)self0
{
  tokenCopy = token;
  activityCopy = activity;
  errorCopy = error;
  blockCopy = block;
  ckQueue = [(IMDCKMessageSyncController *)self ckQueue];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_22B64BEC0;
  v24[3] = &unk_278706DE8;
  comingCopy = coming;
  v25 = tokenCopy;
  v26 = errorCopy;
  countCopy = count;
  batchesCopy = batches;
  selfCopy = self;
  v28 = activityCopy;
  v29 = blockCopy;
  v20 = blockCopy;
  v21 = activityCopy;
  v22 = errorCopy;
  v23 = tokenCopy;
  dispatch_sync(ckQueue, v24);
}

- (void)_fetchArchivedRecordsIfNeeded:(BOOL)needed currentBatchCount:(int64_t)count maxNumberOfBatches:(int64_t)batches activity:(id)activity withCompletionBlock:(id)block
{
  neededCopy = needed;
  v47 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  blockCopy = block;
  if (batches < 0 || count < batches)
  {
    v15 = [(IMDCKMessageSyncController *)self _deviceConditionsAllowsMessageSyncForCurrentBatchCount:count maxBatchCount:batches activity:activityCopy];
    v16 = IMOSLoggingEnabled();
    if (v15 && neededCopy)
    {
      if (v16)
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = [MEMORY[0x277CCABB0] numberWithInteger:count];
          v19 = [MEMORY[0x277CCABB0] numberWithInteger:batches];
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
          archivedRecordSyncToken = [(IMDCKMessageSyncController *)self archivedRecordSyncToken];
          *buf = 138412290;
          v44 = archivedRecordSyncToken;
          _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "******** Fetching archived records ***** sync token is %@", buf, 0xCu);
        }
      }

      cKOperationFactory = [(IMDCKMessageSyncController *)self CKOperationFactory];
      archivedRecordSyncToken2 = [(IMDCKMessageSyncController *)self archivedRecordSyncToken];
      _messageZoneID = [(IMDCKMessageSyncController *)self _messageZoneID];
      v25 = [cKOperationFactory fetchArchivedRecordsOperationWithSyncToken:archivedRecordSyncToken2 zoneID:_messageZoneID activity:activityCopy];

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
      countCopy = count;
      batchesCopy = batches;
      v38 = activityCopy;
      v26 = blockCopy;
      v39 = v26;
      [v25 setRecordZoneFetchCompletionBlock:v37];
      v31 = MEMORY[0x277D85DD0];
      v32 = 3221225472;
      v33 = sub_22B64CB78;
      v34 = &unk_278704778;
      selfCopy = self;
      v36 = v26;
      [v25 setFetchArchivedRecordsCompletionBlock:&v31];
      [(IMDCKMessageSyncController *)self _scheduleOperation:v25, v31, v32, v33, v34, selfCopy];
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

      if (blockCopy)
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

      if (blockCopy)
      {
        v29 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D19D18] code:2 userInfo:0];
        (*(blockCopy + 2))(blockCopy, 0, 0, v29);
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

    if (blockCopy)
    {
LABEL_8:
      (*(blockCopy + 2))(blockCopy, 1, 1, 0);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_processFetchArchivedRecordCompletionWithError:(id)error WithCompletionBlock:(id)block
{
  v13 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  blockCopy = block;
  v7 = IMOSLoggingEnabled();
  if (errorCopy)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = errorCopy;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "*** Encountered error while fetching archived records %@", &v11, 0xCu);
      }
    }

    if (blockCopy)
    {
      (*(blockCopy + 2))(blockCopy, 0, 0, errorCopy);
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

- (void)_processRecordZoneFetchCompletionZoneID:(id)d serverChangeToken:(id)token clientChangeTokenData:(id)data moreComing:(BOOL)coming NSError:(id)error syncType:(int64_t)type currentBatchCount:(int64_t)count maxNumberOfBatches:(int64_t)self0 shouldFetchArchivedRecords:(BOOL)self1 activity:(id)self2 completionBlock:(id)self3
{
  tokenCopy = token;
  errorCopy = error;
  activityCopy = activity;
  blockCopy = block;
  ckQueue = [(IMDCKMessageSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B64CE54;
  block[3] = &unk_278706E80;
  comingCopy = coming;
  v27 = tokenCopy;
  v28 = errorCopy;
  recordsCopy = records;
  batchesCopy = batches;
  typeCopy = type;
  selfCopy = self;
  v30 = activityCopy;
  v31 = blockCopy;
  countCopy = count;
  v21 = blockCopy;
  v22 = activityCopy;
  v23 = errorCopy;
  v24 = tokenCopy;
  dispatch_sync(ckQueue, block);
}

- (void)_processFetchRecordZoneChangesCompletionWithError:(id)error completionBlock:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  blockCopy = block;
  if (!errorCopy)
  {
    goto LABEL_5;
  }

  errorAnalyzer = [(IMDCKAbstractSyncController *)self errorAnalyzer];
  if ([errorAnalyzer errorIndicatesZoneNotCreated:errorCopy])
  {

    goto LABEL_5;
  }

  errorAnalyzer2 = [(IMDCKAbstractSyncController *)self errorAnalyzer];
  v10 = [errorAnalyzer2 errorIndicatesUserDeletedZone:errorCopy];

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
      v19 = errorCopy;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Failed fetching messages %@", buf, 0xCu);
    }
  }

  if (blockCopy)
  {
    ckQueue = [(IMDCKMessageSyncController *)self ckQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_22B64D9C8;
    v15[3] = &unk_2787028B0;
    v17 = blockCopy;
    v16 = errorCopy;
    dispatch_async(ckQueue, v15);
  }

LABEL_9:

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldFetchArchivedRecords:(id)records
{
  recordZoneIDsWithPendingArchivedRecords = [records recordZoneIDsWithPendingArchivedRecords];
  LOBYTE(self) = -[IMDCKMessageSyncController _doesAnyRecordZoneIDHavePendingArchivedRecords:](self, "_doesAnyRecordZoneIDHavePendingArchivedRecords:", [recordZoneIDsWithPendingArchivedRecords count]);

  return self;
}

- (BOOL)_isDiskSpaceAvailableForSyncType:(int64_t)type currentBatchCount:(int64_t)count
{
  v6 = __ROR8__(0x8F5C28F5C28F5C29 * count, 2) < 0x28F5C28F5C28F5DuLL;
  v7 = +[IMDCKCacheDeleteManager sharedInstance];
  LOBYTE(type) = [v7 canWriteFileOfEstimatedSize:40960 * -[IMDCKMessageSyncController _numberOfRecordsToFetchForSyncType:](self refreshCachedValue:{"_numberOfRecordsToFetchForSyncType:", type), v6}];

  return type;
}

- (void)_fetchMessageZoneChangesSyncType:(int64_t)type currentBatchCount:(int64_t)count maxNumberOfBatches:(int64_t)batches activity:(id)activity completionBlock:(id)block
{
  v67 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  blockCopy = block;
  if (batches < 1 || count < batches)
  {
    _numberOfBatchesOfMessagesToFetchInInitialSync = [(IMDCKMessageSyncController *)self _numberOfBatchesOfMessagesToFetchInInitialSync];
    if (batches == -1)
    {
      v23 = _numberOfBatchesOfMessagesToFetchInInitialSync;
      if (_numberOfBatchesOfMessagesToFetchInInitialSync < count)
      {
        date = [MEMORY[0x277CBEAA8] date];
        if (IMOSLoggingEnabled())
        {
          v25 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = [MEMORY[0x277CCABB0] numberWithInteger:v23];
            *buf = 138412546;
            *&buf[4] = v26;
            *&buf[12] = 2112;
            *&buf[14] = date;
            _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "We completed fetching %@ batches of messages during a full sync, setting fullPartialSyncFirstCompletedDate to %@", buf, 0x16u);
          }
        }

        syncState = [(IMDCKAbstractSyncController *)self syncState];
        [syncState setAnalyticSyncDatesDictionaryObject:date forKey:*MEMORY[0x277D19AF0] shouldOverrideIfExists:0];
      }
    }

    v28 = [(IMDCKMessageSyncController *)self _isDiskSpaceAvailableForSyncType:type currentBatchCount:count];
    v29 = [(IMDCKMessageSyncController *)self _deviceConditionsAllowsMessageSyncForCurrentBatchCount:count maxBatchCount:batches activity:activityCopy];
    v30 = IMOSLoggingEnabled();
    if (v29 && v28)
    {
      if (v30)
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = [MEMORY[0x277CCABB0] numberWithInteger:count];
          v33 = [MEMORY[0x277CCABB0] numberWithInteger:batches];
          *buf = 138412546;
          *&buf[4] = v32;
          *&buf[12] = 2112;
          *&buf[14] = v33;
          _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Fetching live messages, currentBatchCount %@ maxNumberOfBatches %@", buf, 0x16u);
        }
      }

      [(IMDCKAbstractSyncController *)self setBroadcastedSyncStateToDownloading];
      cKOperationFactory = [(IMDCKMessageSyncController *)self CKOperationFactory];
      latestSyncToken = [(IMDCKMessageSyncController *)self latestSyncToken];
      _messageZoneID = [(IMDCKMessageSyncController *)self _messageZoneID];
      v37 = [(IMDCKMessageSyncController *)self _numberOfRecordsToFetchForSyncType:type];
      _syncOperationGroupName = [(IMDCKMessageSyncController *)self _syncOperationGroupName];
      v39 = [cKOperationFactory fetchMessageZoneChangesCKOperationUsingToken:latestSyncToken zoneID:_messageZoneID resultsLimit:v37 operationGroupName:_syncOperationGroupName activity:activityCopy];

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
      typeCopy = type;
      countCopy = count;
      batchesCopy = batches;
      v54 = activityCopy;
      v41 = blockCopy;
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
          latestSyncToken2 = [(IMDCKMessageSyncController *)self latestSyncToken];
          *v61 = 138412290;
          v62 = latestSyncToken2;
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

      if (blockCopy)
      {
        v48 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D19D18] code:2 userInfo:0];
        (*(blockCopy + 2))(blockCopy, 0, 0, 0, v48);
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
    shouldForceArchivedMessagesSync = [v14 shouldForceArchivedMessagesSync];

    if (shouldForceArchivedMessagesSync)
    {
      v16 = *MEMORY[0x277D19A08];
      v17 = *MEMORY[0x277D19BE0];
      v18 = IMGetDomainBoolForKeyWithDefaultValue();
      if (blockCopy)
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

        (*(blockCopy + 2))(blockCopy, 1, v19, 0, 0);
      }
    }

    else if (blockCopy)
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

      (*(blockCopy + 2))(blockCopy, 1, 0, 0, 0);
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"__kCKRecordIMMessageIncompatibleDeleteNotification" object:0];
}

- (void)_needsToMarkAllMessagesAsNeedingSync
{
  mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
  [mEMORY[0x277D1A990] setBool:0 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A40]];
}

- (BOOL)_shouldMarkAllMessagesAsNeedingSync
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
    v4 = [mEMORY[0x277D1A990] getBoolFromDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A40]] ^ 1;
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
  mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
  [mEMORY[0x277D1A990] setBool:1 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A40]];
}

- (void)_kickOffWriteOnCKQueueWithActivity:(id)activity completion:(id)completion
{
  activityCopy = activity;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Kicking off a message write after fetching messages", buf, 2u);
    }
  }

  ckQueue = [(IMDCKMessageSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B64EC4C;
  block[3] = &unk_2787037B8;
  block[4] = self;
  v13 = activityCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = activityCopy;
  dispatch_async(ckQueue, block);
}

- (BOOL)_kickOffWriteIfNeededForSyncType:(int64_t)type activity:(id)activity completion:(id)completion
{
  activityCopy = activity;
  completionCopy = completion;
  _ckUtilitiesInstance = [(IMDCKMessageSyncController *)self _ckUtilitiesInstance];
  LODWORD(type) = [_ckUtilitiesInstance shouldKickOffWriteForSyncType:type];

  if (!type)
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

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }

    goto LABEL_16;
  }

  _ckUtilitiesInstance2 = [(IMDCKMessageSyncController *)self _ckUtilitiesInstance];
  isLocalCachedSaltPresent = [_ckUtilitiesInstance2 isLocalCachedSaltPresent];

  if ((isLocalCachedSaltPresent & 1) == 0)
  {
    if (completionCopy)
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
      (completionCopy)[2](completionCopy, 0, v16);
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

  [(IMDCKMessageSyncController *)self _kickOffWriteOnCKQueueWithActivity:activityCopy completion:completionCopy];
  v13 = 1;
LABEL_17:

  return v13;
}

- (void)syncMessagesWithSyncType:(int64_t)type deviceConditionsToCheck:(unint64_t)check activity:(id)activity completionBlock:(id)block
{
  v26 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:check];
      *buf = 134218242;
      typeCopy = type;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "syncMessagesWithSyncType with type %ld deviceConditionsToCheck %@", buf, 0x16u);
    }
  }

  [(IMDCKAbstractSyncController *)self resetRecordCounts];
  [(IMDCKAbstractSyncController *)self setIsSyncing:1];
  [(IMDCKMessageSyncController *)self setDeviceConditionsToCheck:check];
  ckQueue = [(IMDCKMessageSyncController *)self ckQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_22B64F300;
  v18[3] = &unk_278706F90;
  v18[4] = self;
  v19 = activityCopy;
  v20 = blockCopy;
  typeCopy2 = type;
  v15 = blockCopy;
  v16 = activityCopy;
  dispatch_async(ckQueue, v18);

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

  latestSyncToken = [(IMDCKMessageSyncController *)self latestSyncToken];
  [(IMDCKMessageSyncController *)self setLatestSyncToken:0];
  [(IMDCKMessageSyncController *)self setArchivedRecordSyncToken:0];
}

- (void)deleteChatBotMessageSyncToken
{
  syncTokenStore = [(IMDCKMessageSyncController *)self syncTokenStore];
  [syncTokenStore persistToken:0 forKey:@"chatBotMessageChangeToken"];
}

- (void)deleteMessagesZone
{
  ckQueue = [(IMDCKMessageSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B64FFA0;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_async(ckQueue, block);
}

- (void)clearLocalSyncState:(unint64_t)state
{
  stateCopy = state;
  v9 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8[0] = 67109120;
      v8[1] = stateCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Clearing local messages sync state, flags 0x%x", v8, 8u);
    }
  }

  if (stateCopy)
  {
    [(IMDCKMessageSyncController *)self deleteMessageSyncToken];
    [(IMDCKMessageSyncController *)self deleteChatBotMessageSyncToken];
  }

  if ((stateCopy & 2) != 0)
  {
    v6 = +[IMDMessageStore sharedInstance];
    [v6 markAllMessagesAsNeedingCloudKitSync];
  }

  else if ((stateCopy & 0x10) != 0)
  {
    [(IMDCKMessageSyncController *)self _needsToMarkAllMessagesAsNeedingSync];
  }

  v7 = *MEMORY[0x277D85DE8];
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
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Delete message callback with error %@", buf, 0xCu);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B65031C;
  block[3] = &unk_2787038F8;
  v12 = completionCopy;
  v20 = v12;
  v13 = errorCopy;
  v21 = v13;
  selfCopy = self;
  dispatch_sync(MEMORY[0x277D85CD0], block);
  if (blockCopy)
  {
    ckQueue = [(IMDCKMessageSyncController *)self ckQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_22B65064C;
    v16[3] = &unk_2787028B0;
    v18 = blockCopy;
    v17 = v13;
    dispatch_async(ckQueue, v16);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_deleteMessagesWithRecordIDs:(id)ds completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  completionCopy = completion;
  if ([dsCopy count])
  {
    cKOperationFactory = [(IMDCKMessageSyncController *)self CKOperationFactory];
    v9 = [cKOperationFactory deleteMessageCKOperationUsingRecordIDstoDelete:dsCopy];

    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = sub_22B65088C;
    v16 = &unk_278703858;
    selfCopy = self;
    v18 = completionCopy;
    [v9 setModifyRecordsCompletionBlock:&v13];
    [v9 setPerRecordCompletionBlock:{&unk_283F1A9C8, v13, v14, v15, v16, selfCopy}];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v20 = dsCopy;
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

    (*(completionCopy + 2))(completionCopy, 0);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_constructMessageRecordIDUsingTombStoneDictionary:(id)dictionary
{
  v4 = [dictionary valueForKey:@"recordID"];
  if ([v4 length])
  {
    v5 = objc_alloc(MEMORY[0x277CBC5D0]);
    _messageZoneID = [(IMDCKMessageSyncController *)self _messageZoneID];
    v7 = [v5 initWithRecordName:v4 zoneID:_messageZoneID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_copyRecordIDsToDeleteWithLimit:(unint64_t)limit
{
  v23 = *MEMORY[0x277D85DE8];
  _sharedIMDMessageStore = [(IMDCKMessageSyncController *)self _sharedIMDMessageStore];
  v6 = [_sharedIMDMessageStore copyMessagesThatNeedToBeDeletedInCloudKitWithLimit:limit];

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

- (void)syncDeletedMessagesToCloudKitWithCompletion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  _ckUtilitiesInstance = [(IMDCKMessageSyncController *)self _ckUtilitiesInstance];
  cloudKitSyncingEnabled = [_ckUtilitiesInstance cloudKitSyncingEnabled];

  if (cloudKitSyncingEnabled)
  {
    v7 = [(IMDCKMessageSyncController *)self _copyRecordIDsToDeleteWithLimit:[(IMDCKMessageSyncController *)self _messageDeleteBatchSize]];
    _ckUtilitiesInstance2 = [(IMDCKMessageSyncController *)self _ckUtilitiesInstance];
    v9 = [_ckUtilitiesInstance2 newfilteredArrayRemovingCKRecordIDDupes:v7];

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

    _sharedIMDMessageStore = [(IMDCKMessageSyncController *)self _sharedIMDMessageStore];
    [_sharedIMDMessageStore clearMessagesTombStoneTable];

    if (!completionCopy)
    {
LABEL_7:
      [(IMDCKAbstractSyncController *)self setBroadcastedSyncStateToDeleting];
      ckQueue = [(IMDCKMessageSyncController *)self ckQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B650DCC;
      block[3] = &unk_2787037B8;
      block[4] = self;
      v17 = v9;
      v18 = completionCopy;
      dispatch_async(ckQueue, block);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 1, 0);
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

    (*(completionCopy + 2))(completionCopy, 1, 0);
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end