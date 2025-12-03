@interface IMDCKAttachmentSyncController
+ (id)sharedInstance;
- (BOOL)_attachmentZoneCreated;
- (BOOL)_deviceConditionsAllowsMessageSyncForCurrentBatchCount:(int64_t)count maxBatchCount:(int64_t)batchCount activity:(id)activity;
- (BOOL)_deviceConditionsAllowsMessageSyncIgnoreFeatureEnabled:(BOOL)enabled activity:(id)activity;
- (BOOL)_fetchedAllChangesFromCloudKit;
- (BOOL)_kickOffWriteIfNeededForSyncType:(int64_t)type activity:(id)activity completion:(id)completion;
- (BOOL)_shouldMarkAllAttachmentsAsNeedingSync;
- (BOOL)_shouldMarkAttachmentsAsNeedingReupload;
- (IMDCKAttachmentSyncController)init;
- (IMDCKAttachmentSyncController)initWithSyncTokenStore:(id)store;
- (id)__databaseRequestForAttachmentsWithAssets;
- (id)_attachmentZoneID;
- (id)_attachmentZoneSalt;
- (id)_constructAttachmentRecordIDUsingTombStoneDictionary:(id)dictionary;
- (id)_copyRecordIDsToDeleteWithLimit:(unint64_t)limit;
- (id)_fetchAndPrepareRecordsToWrite:(BOOL *)write;
- (id)_operationErrorForModifyingRecordCompletion:(id)completion;
- (id)_readNextDeleteAfterRow;
- (id)_recordsToProcessWithError:(id)error error:(id)a4;
- (id)_updateAttachmentGUIDIfNeededAndReturnTransfersToForceMarkAsSync:(id)sync transfersToSyncRowIDs:(id)ds;
- (id)latestSyncTokenForSyncType:(int64_t)type;
- (id)purgedAttachmentsForChat:(id)chat services:(id)services limit:(int64_t)limit;
- (id)recordStore;
- (int)_resyncForDeleteRecoveryState;
- (int64_t)_numberOfBatchesOfAttachmentsToFetchInInitialSync;
- (int64_t)_numberOfMetadataBatchesOfAttachmentsToFetchInInitialSync;
- (unint64_t)purgedAttachmentsCountForChatsWithChatIdentifiers:(id)identifiers services:(id)services;
- (void)_deleteAttachmentsWithRecordIDs:(id)ds completion:(id)completion;
- (void)_downloadAttachmentAssetsWithActivity:(id)activity restoringAttachments:(BOOL)attachments retryCount:(unint64_t)count numAttachmentsDownloaded:(unint64_t)downloaded transfers:(id)transfers completion:(id)completion;
- (void)_fetchAttachmentZoneChangesShouldWriteBackChanges:(BOOL)changes desiredKeys:(int64_t)keys syncType:(int64_t)type currentBatchCount:(int64_t)count maxBatchCount:(int64_t)batchCount syncToken:(id)token activity:(id)activity completionBlock:(id)self0;
- (void)_fetchAttachmentZoneRecords:(id)records desiredKeys:(int64_t)keys ognSuffix:(id)suffix removeTombstones:(BOOL)tombstones activity:(id)activity completion:(id)completion;
- (void)_hasMarkedAllAttachmentsAsNeedingSync;
- (void)_initResyncForDeleteRecovery;
- (void)_kickOffAssetFetchForTransfersIfNeededWithActivity:(id)activity;
- (void)_kickOffWriteOnCKQueueWithActivity:(id)activity completion:(id)completion;
- (void)_markAllFailedAttachmentsAsNeedingSync;
- (void)_markTransferAsNotBeingAbleToSync:(id)sync;
- (void)_markTransferAsNotBeingAbleToSyncUsingCKRecord:(id)record;
- (void)_migrateSyncToken;
- (void)_needsToMarkAllAttachmentsAsNeedingSync;
- (void)_processAndValidateAttachmentRecordsEligibleForPurge:(id)purge recordIDsToTransfers:(id)transfers capturedWithABC:(BOOL)c completion:(id)completion;
- (void)_processAssetFetchOperationCompletionBlock:(id)block removeTombstones:(BOOL)tombstones operationID:(id)d error:(id)error;
- (void)_processAssetFetchPerRecordCompletionBlock:(id)block recordID:(id)d error:(id)error;
- (void)_processAssetFetchPerRecordProgressBlock:(id)block progress:(double)progress;
- (void)_processFetchRecordChangesCompleted:(id)completed completionBlock:(id)block;
- (void)_processModifyPerRecordCallBack:(id)back error:(id)error;
- (void)_processModifyRecordCompletion:(id)completion deletedRecordIDs:(id)ds error:(id)error completionBlock:(id)block;
- (void)_processRecordChanged:(id)changed;
- (void)_processRecordDeletion:(id)deletion;
- (void)_processRecordZoneChangeTokenUpdated:(id)updated zoneID:(id)d clienChangeToken:(id)token syncType:(int64_t)type;
- (void)_processRecordZoneFetchCompletion:(id)completion zoneID:(id)d clientChangeTokenData:(id)data moreComing:(BOOL)coming shouldWriteBackChanges:(BOOL)changes desiredKeys:(int64_t)keys syncType:(int64_t)type error:(id)self0 currentBatchCount:(int64_t)self1 maxBatchCount:(int64_t)self2 activity:(id)self3 completionBlock:(id)self4;
- (void)_removeTransferFromiCloudBackupWithGuid:(id)guid;
- (void)_resetAttachmentSyncStateForRecord:(id)record toState:(int64_t)state;
- (void)_scheduleOperation:(id)operation;
- (void)_setNextDeleteAfterRow:(id)row;
- (void)_updateDeviceConditionsToCheckIfNeededForCurrentBatchCount:(int64_t)count maxBatchCount:(int64_t)batchCount;
- (void)_updateTransferUsingCKRecord:(id)record wasFetched:(BOOL)fetched dispatchToMain:(BOOL)main;
- (void)_validateTransferFromCloudKit:(id)kit localTransfer:(id)transfer validateCompletion:(id)completion;
- (void)_writeAttachmentsToCloudKitWithActivity:(id)activity completionBlock:(id)block;
- (void)_writeCKRecordsToAttachmentZone:(id)zone activity:(id)activity withCompletion:(id)completion;
- (void)acceptFileTransfer:(id)transfer completion:(id)completion;
- (void)acceptFileTransfers:(id)transfers completion:(id)completion;
- (void)clearLocalSyncState:(unint64_t)state;
- (void)deleteAttachmentSyncToken;
- (void)deleteAttachmentZone;
- (void)deleteChatBotAttachmentSyncToken;
- (void)downloadAttachmentAssetsForChatIDs:(id)ds services:(id)services style:(unsigned __int8)style completion:(id)completion;
- (void)fetchAttachmentDataForTransfers:(id)transfers highQuality:(BOOL)quality perTransferProgress:(id)progress activity:(id)activity completion:(id)completion;
- (void)setLatestSyncToken:(id)token forSyncType:(int64_t)type;
- (void)syncAttachmentDeletesToCloudKitWithActivity:(id)activity completion:(id)completion;
- (void)syncAttachmentsWithSyncType:(int64_t)type deviceConditionsToCheck:(unint64_t)check activity:(id)activity completionBlock:(id)block;
@end

@implementation IMDCKAttachmentSyncController

+ (id)sharedInstance
{
  if (qword_281421120 != -1)
  {
    sub_22B7D2498();
  }

  v3 = qword_281420F98;

  return v3;
}

- (IMDCKAttachmentSyncController)initWithSyncTokenStore:(id)store
{
  storeCopy = store;
  v20.receiver = self;
  v20.super_class = IMDCKAttachmentSyncController;
  v6 = [(IMDCKAttachmentSyncController *)&v20 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.private.IMDCKAttachmentSyncController", 0);
    ckQueue = v6->_ckQueue;
    v6->_ckQueue = v7;

    v9 = +[IMDRecordZoneManager sharedInstance];
    recordZoneManager = v6->_recordZoneManager;
    v6->_recordZoneManager = v9;

    v11 = objc_alloc_init(IMDCKAttachmentSyncCKOperationFactory);
    CKOperationFactory = v6->_CKOperationFactory;
    v6->_CKOperationFactory = v11;

    v6->_deviceConditionsToCheck = 0;
    objc_storeStrong(&v6->_syncTokenStore, store);
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    downloadAssetsForTransferGUIDs = v6->_downloadAssetsForTransferGUIDs;
    v6->_downloadAssetsForTransferGUIDs = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    recordIDToTransferMap = v6->_recordIDToTransferMap;
    v6->_recordIDToTransferMap = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    completionBlocksForAssetFetchOperations = v6->_completionBlocksForAssetFetchOperations;
    v6->_completionBlocksForAssetFetchOperations = v17;

    [(IMDCKAttachmentSyncController *)v6 _migrateSyncToken];
  }

  return v6;
}

- (IMDCKAttachmentSyncController)init
{
  v3 = objc_alloc_init(IMDCKSyncTokenStore);
  v4 = [(IMDCKAttachmentSyncController *)self initWithSyncTokenStore:v3];

  return v4;
}

- (id)recordStore
{
  if (qword_27D8CFE28 != -1)
  {
    sub_22B7D24AC();
  }

  v3 = qword_27D8CFE20;

  return v3;
}

- (void)_needsToMarkAllAttachmentsAsNeedingSync
{
  mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
  [mEMORY[0x277D1A990] setBool:0 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A28]];
}

- (BOOL)_shouldMarkAllAttachmentsAsNeedingSync
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
    v4 = [mEMORY[0x277D1A990] getBoolFromDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A28]] ^ 1;
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
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "_shouldMarkAllAttachmentsAsNeedingSync %@", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)_hasMarkedAllAttachmentsAsNeedingSync
{
  mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
  [mEMORY[0x277D1A990] setBool:1 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A28]];
}

- (int64_t)_numberOfBatchesOfAttachmentsToFetchInInitialSync
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
    v8 = [serverBag objectForKey:@"ck-max-number-of-attachment-batches"];

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
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, " overriding max number of attachment batches to fetch %@", &v13, 0xCu);
        }
      }
    }

    else
    {
      integerValue = 50;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return integerValue;
}

- (BOOL)_shouldMarkAttachmentsAsNeedingReupload
{
  mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
  v3 = [mEMORY[0x277D1A990] getValueFromDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D196C0]];

  if (v3)
  {
    v4 = MEMORY[0x277CBEAA8];
    v5 = v3;
    date = [v4 date];
    [date timeIntervalSinceDate:v5];
    v8 = v7;

    v9 = v8 > 604800.0;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_markAllFailedAttachmentsAsNeedingSync
{
  v16 = *MEMORY[0x277D85DE8];
  _shouldMarkAttachmentsAsNeedingReupload = [(IMDCKAttachmentSyncController *)self _shouldMarkAttachmentsAsNeedingReupload];
  v3 = IMOSLoggingEnabled();
  if (_shouldMarkAttachmentsAsNeedingReupload)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Marking any unsuccessfully synced attachments as needing sync", &v14, 2u);
      }
    }

    IMDAttachmentMarkAllFailedAttachmentsAsNeedingSync();
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Finished Marking any unsuccessfully synced attachments as needing sync", &v14, 2u);
      }
    }

    date = [MEMORY[0x277CBEAA8] date];
    v7 = *MEMORY[0x277D19A08];
    v8 = *MEMORY[0x277D196C0];
    IMSetDomainValueForKey();
  }

  else if (v3)
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *MEMORY[0x277D19A08];
      v11 = *MEMORY[0x277D196C0];
      v12 = IMGetCachedDomainValueForKey();
      v14 = 138412290;
      v15 = v12;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Not marking unsuccessful attachments as needing sync. Last attempt date %@", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (int64_t)_numberOfMetadataBatchesOfAttachmentsToFetchInInitialSync
{
  v16 = *MEMORY[0x277D85DE8];
  ckUtilities = [(IMDCKAbstractSyncController *)self ckUtilities];
  isInCloudKitDemoMode = [ckUtilities isInCloudKitDemoMode];

  if (isInCloudKitDemoMode)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "overriding max number of attachment metadata batches to fetch as this is in demo mode.", &v14, 2u);
      }
    }

    integerValue = 1;
  }

  else
  {
    ckUtilities2 = [(IMDCKAbstractSyncController *)self ckUtilities];
    serverBag = [ckUtilities2 serverBag];
    v9 = [serverBag objectForKey:@"ck-max-number-of-attachment-metadata-batches"];

    if (v9 && [v9 integerValue] >= 1)
    {
      integerValue = [v9 integerValue];
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:integerValue];
          v14 = 138412290;
          v15 = v11;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "overriding max number of attachment metadata batches to fetch %@", &v14, 0xCu);
        }
      }
    }

    else
    {
      integerValue = 5;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return integerValue;
}

- (void)syncAttachmentsWithSyncType:(int64_t)type deviceConditionsToCheck:(unint64_t)check activity:(id)activity completionBlock:(id)block
{
  v37 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      typeCopy = type;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Initiating attachment syncing with type %ld", buf, 0xCu);
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B559F24;
  aBlock[3] = &unk_2787043F0;
  v33 = blockCopy;
  typeCopy2 = type;
  aBlock[4] = self;
  v13 = blockCopy;
  v14 = _Block_copy(aBlock);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_22B55A0E4;
  v29[3] = &unk_278704418;
  v29[4] = self;
  v15 = activityCopy;
  v30 = v15;
  v16 = v14;
  v31 = v16;
  v17 = _Block_copy(v29);
  [(IMDCKAbstractSyncController *)self resetRecordCounts];
  ckQueue = [(IMDCKAttachmentSyncController *)self ckQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_22B55A270;
  v23[3] = &unk_278704468;
  typeCopy3 = type;
  checkCopy = check;
  v23[4] = self;
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v19 = v17;
  v20 = v16;
  v21 = v15;
  dispatch_async(ckQueue, v23);

  v22 = *MEMORY[0x277D85DE8];
}

- (void)fetchAttachmentDataForTransfers:(id)transfers highQuality:(BOOL)quality perTransferProgress:(id)progress activity:(id)activity completion:(id)completion
{
  qualityCopy = quality;
  v34 = *MEMORY[0x277D85DE8];
  transfersCopy = transfers;
  progressCopy = progress;
  activityCopy = activity;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = @"NO";
      if (qualityCopy)
      {
        v17 = @"YES";
      }

      *buf = 138412546;
      v31 = transfersCopy;
      v32 = 2112;
      v33 = v17;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "fetchAttachmentDataForTransferGUIDs %@ HQ %@", buf, 0x16u);
    }
  }

  ckQueue = [(IMDCKAttachmentSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B55A7F4;
  block[3] = &unk_2787044D8;
  v25 = transfersCopy;
  selfCopy = self;
  v28 = progressCopy;
  v29 = completionCopy;
  v27 = activityCopy;
  v19 = activityCopy;
  v20 = completionCopy;
  v21 = progressCopy;
  v22 = transfersCopy;
  dispatch_async(ckQueue, block);

  v23 = *MEMORY[0x277D85DE8];
}

- (void)acceptFileTransfer:(id)transfer completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = transferCopy;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "accepting file transfer %@", buf, 0xCu);
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B55AF28;
  aBlock[3] = &unk_278704500;
  v9 = transferCopy;
  v23 = v9;
  v10 = _Block_copy(aBlock);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_22B55B0B8;
  v19 = &unk_278704528;
  v20 = v9;
  v21 = completionCopy;
  v11 = v9;
  v12 = completionCopy;
  v13 = _Block_copy(&v16);
  v24 = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:{1, v16, v17, v18, v19}];
  [(IMDCKAttachmentSyncController *)self fetchAttachmentDataForTransfers:v14 highQuality:0 perTransferProgress:v10 activity:0 completion:v13];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)acceptFileTransfers:(id)transfers completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  transfersCopy = transfers;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = transfersCopy;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "accepting file transfers %@", buf, 0xCu);
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B55B2BC;
  aBlock[3] = &unk_278704550;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = _Block_copy(aBlock);
  [(IMDCKAttachmentSyncController *)self fetchAttachmentDataForTransfers:transfersCopy highQuality:0 perTransferProgress:0 activity:0 completion:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_downloadAttachmentAssetsWithActivity:(id)activity restoringAttachments:(BOOL)attachments retryCount:(unint64_t)count numAttachmentsDownloaded:(unint64_t)downloaded transfers:(id)transfers completion:(id)completion
{
  v57 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  transfersCopy = transfers;
  completionCopy = completion;
  [(IMDCKAttachmentSyncController *)self setAssetDownloadInProgress:1];
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  downloadedCopy = downloaded;
  v33 = transfersCopy;
  if ([transfersCopy count])
  {
    __databaseRequestForAttachmentsWithAssets = transfersCopy;
  }

  else
  {
    __databaseRequestForAttachmentsWithAssets = [(IMDCKAttachmentSyncController *)self __databaseRequestForAttachmentsWithAssets];
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [__databaseRequestForAttachmentsWithAssets count];
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
      *buf = 134218242;
      v54 = v16;
      v55 = 2112;
      v56 = v17;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Starting attachment download batch with %lu items retries %@", buf, 0x16u);
    }
  }

  if ([__databaseRequestForAttachmentsWithAssets count])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_22B55B910;
    aBlock[3] = &unk_2787045A0;
    v45 = &v48;
    v18 = __databaseRequestForAttachmentsWithAssets;
    v40 = v18;
    v41 = transfersCopy;
    selfCopy = self;
    countCopy = count;
    attachmentsCopy = attachments;
    v19 = v31;
    v43 = v19;
    v44 = completionCopy;
    v20 = _Block_copy(aBlock);
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v21 = v18;
    v22 = [v21 countByEnumeratingWithState:&v35 objects:v52 count:16];
    if (v22)
    {
      v23 = *v36;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v36 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(*(&v35 + 1) + 8 * i);
          fileTransferCenter = [(IMDCKAttachmentSyncController *)self fileTransferCenter];
          guid = [v25 guid];
          [fileTransferCenter addTransfer:v25 forGUID:guid];
        }

        v22 = [v21 countByEnumeratingWithState:&v35 objects:v52 count:16];
      }

      while (v22);
    }

    [(IMDCKAttachmentSyncController *)self fetchAttachmentDataForTransfers:v21 highQuality:0 perTransferProgress:0 activity:v19 completion:v20];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "No assets to downloand", buf, 2u);
      }
    }

    [(IMDCKAttachmentSyncController *)self setAssetDownloadInProgress:0];
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 1, v49[3], 0);
    }
  }

  _Block_object_dispose(&v48, 8);
  v29 = *MEMORY[0x277D85DE8];
}

- (id)purgedAttachmentsForChat:(id)chat services:(id)services limit:(int64_t)limit
{
  v33 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  servicesCopy = services;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v30 = chatCopy;
      v31 = 2112;
      v32 = servicesCopy;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "purgedAttachmentsForChat Request to download purged assets for chats %@ on services %@", buf, 0x16u);
    }
  }

  v7 = IMDAttachmentRecordCopyPurgedAttachmentsForChatIdentifiersOnServices();
  v8 = IMOSLoggingEnabled();
  if (v7)
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v7 count];
      *buf = 134217984;
      v30 = v10;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Got %lu purged assets to download", buf, 0xCu);
    }
  }

  else
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "No assets that have been purged", buf, 2u);
    }
  }

LABEL_14:
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = IMFileTransferFromIMDAttachmentRecordRef(v16);
        if (v17)
        {
          [v11 addObject:v17];
        }

        else
        {
          rowID = [v16 rowID];
          if (IMOSLoggingEnabled())
          {
            v19 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = 134217984;
              v30 = rowID;
              _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "**** failed to create IMFileTransfer from IMDAttachmentRecordRef rowid: %lld, marking as synced ***", buf, 0xCu);
            }
          }

          IMDAttachmentRecordMarkAttachmentWithROWIDWithSyncState();
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v11;
}

- (unint64_t)purgedAttachmentsCountForChatsWithChatIdentifiers:(id)identifiers services:(id)services
{
  v20 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  servicesCopy = services;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v16 = 138412546;
      v17 = identifiersCopy;
      v18 = 2112;
      v19 = servicesCopy;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "purgedAttachmentsCountForChat Request to get count of purged assets for chats %@ on services %@", &v16, 0x16u);
    }
  }

  v8 = IMDAttachmentRecordCopyPurgedAttachmentsCountForChatIdentifiersOnServices();
  v9 = v8;
  if (v8)
  {
    firstObject = [v8 firstObject];
    unsignedIntegerValue = [firstObject unsignedIntegerValue];

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v16 = 134217984;
        v17 = unsignedIntegerValue;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Got %lu purged assets to download", &v16, 0xCu);
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
        LOWORD(v16) = 0;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "No assets that have been purged", &v16, 2u);
      }
    }

    unsignedIntegerValue = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return unsignedIntegerValue;
}

- (void)downloadAttachmentAssetsForChatIDs:(id)ds services:(id)services style:(unsigned __int8)style completion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  servicesCopy = services;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v35 = dsCopy;
      v36 = 2112;
      v37 = servicesCopy;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Request to download purged assets for chats %@ on services %@", buf, 0x16u);
    }
  }

  v21 = [MEMORY[0x277D18A10] sharedInstanceForBagType:{1, completionCopy}];
  v25 = [v21 objectForKey:@"ck-client-download-purged-attachments-batch-size"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v25 intValue] >= 1)
  {
    intValue = [v25 intValue];
  }

  else
  {
    intValue = 10;
  }

  [(IMDCKAttachmentSyncController *)self purgedAttachmentsForChat:dsCopy services:servicesCopy limit:intValue];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v10 = v30 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = *v30;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v35 = v14;
            _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Got %@", buf, 0xCu);
          }
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v11);
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_22B55CC60;
  v26[3] = &unk_2787045F0;
  v27 = dsCopy;
  v28 = v20;
  v16 = v20;
  v17 = dsCopy;
  [(IMDCKAttachmentSyncController *)self _downloadAttachmentAssetsWithActivity:0 restoringAttachments:0 retryCount:0 numAttachmentsDownloaded:0 transfers:v10 completion:v26];

  v18 = *MEMORY[0x277D85DE8];
}

- (id)__databaseRequestForAttachmentsWithAssets
{
  v22 = *MEMORY[0x277D85DE8];
  [(IMDCKAttachmentSyncController *)self _numberOfAttachmentsToDownload];
  v2 = IMDAttachmentRecordCopyAttachmentsForQueryWithLimit();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v2;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Found records to donwload {%@}", buf, 0xCu);
    }
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = IMFileTransferFromIMDAttachmentRecordRef(v9);
        if (v10)
        {
          [v4 addObject:v10];
        }

        else
        {
          rowID = [v9 rowID];
          if (IMOSLoggingEnabled())
          {
            v12 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              *buf = 134217984;
              v21 = rowID;
              _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "**** failed to create IMFileTransfer from IMDAttachmentRecordRef rowid: %lld, marking as failed to sync ***", buf, 0xCu);
            }
          }

          IMDAttachmentRecordMarkAttachmentWithROWIDWithSyncState();
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_updateDeviceConditionsToCheckIfNeededForCurrentBatchCount:(int64_t)count maxBatchCount:(int64_t)batchCount
{
  v15 = *MEMORY[0x277D85DE8];
  if (![(IMDCKAttachmentSyncController *)self deviceConditionsToCheck])
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
      [(IMDCKAttachmentSyncController *)self setDeviceConditionsToCheck:1];
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
  [(IMDCKAttachmentSyncController *)self _updateDeviceConditionsToCheckIfNeededForCurrentBatchCount:count maxBatchCount:batchCount];
  LOBYTE(batchCount) = [(IMDCKAttachmentSyncController *)self _deviceConditionsAllowsMessageSyncWithActivity:activityCopy];

  return batchCount;
}

- (BOOL)_deviceConditionsAllowsMessageSyncIgnoreFeatureEnabled:(BOOL)enabled activity:(id)activity
{
  v27 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  _ckUtilitiesInstance = [(IMDCKAttachmentSyncController *)self _ckUtilitiesInstance];
  cloudKitSyncingEnabled = [_ckUtilitiesInstance cloudKitSyncingEnabled];

  if (enabled || cloudKitSyncingEnabled)
  {
    _ckUtilitiesInstance2 = [(IMDCKAttachmentSyncController *)self _ckUtilitiesInstance];
    iCloudAccountMatchesiMessageAccount = [_ckUtilitiesInstance2 iCloudAccountMatchesiMessageAccount];

    if (!activityCopy)
    {
      goto LABEL_16;
    }
  }

  else
  {
    iCloudAccountMatchesiMessageAccount = 0;
    if (!activityCopy)
    {
      goto LABEL_16;
    }
  }

  if ((iCloudAccountMatchesiMessageAccount & xpc_activity_should_defer(activityCopy)) == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Setting xpc_activity_t to XPC_ACTIVITY_STATE_DEFER because conditions are no longer met", &v23, 2u);
      }
    }

    if (!xpc_activity_set_state(activityCopy, 3) && IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Error forcing xpc_activity_t to XPC_ACTIVITY_STATE_DEFER", &v23, 2u);
      }
    }

    goto LABEL_33;
  }

LABEL_16:
  if (!iCloudAccountMatchesiMessageAccount)
  {
    goto LABEL_34;
  }

  deviceConditionsToCheck = [(IMDCKAttachmentSyncController *)self deviceConditionsToCheck];
  if (activityCopy || !deviceConditionsToCheck)
  {
    goto LABEL_34;
  }

  deviceConditionsToCheck2 = [(IMDCKAttachmentSyncController *)self deviceConditionsToCheck];
  if (deviceConditionsToCheck2 == 2)
  {
    _ckUtilitiesInstance3 = [(IMDCKAttachmentSyncController *)self _ckUtilitiesInstance];
    isDeviceOnWifi = [_ckUtilitiesInstance3 isDeviceOnWifi];
    goto LABEL_23;
  }

  if (deviceConditionsToCheck2 == 1)
  {
    _ckUtilitiesInstance3 = [(IMDCKAttachmentSyncController *)self _ckUtilitiesInstance];
    isDeviceOnWifi = [_ckUtilitiesInstance3 deviceConditionsAllowPeriodicSync];
LABEL_23:
    v17 = isDeviceOnWifi;

    goto LABEL_25;
  }

  v17 = 0;
LABEL_25:
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      if (v17)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[IMDCKAttachmentSyncController deviceConditionsToCheck](self, "deviceConditionsToCheck")}];
      v23 = 138412546;
      v24 = v19;
      v25 = 2112;
      v26 = v20;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Attachment sync: device conditions allow sync: %@ deviceConditionsToCheck %@", &v23, 0x16u);
    }
  }

  if (!v17)
  {
LABEL_33:
    LOBYTE(iCloudAccountMatchesiMessageAccount) = 0;
  }

LABEL_34:

  v21 = *MEMORY[0x277D85DE8];
  return iCloudAccountMatchesiMessageAccount;
}

- (id)_attachmentZoneID
{
  recordZoneManager = [(IMDCKAttachmentSyncController *)self recordZoneManager];
  attachmentRecordZoneID = [recordZoneManager attachmentRecordZoneID];

  return attachmentRecordZoneID;
}

- (id)_attachmentZoneSalt
{
  _recordKeyManagerSharedInstance = [(IMDCKAttachmentSyncController *)self _recordKeyManagerSharedInstance];
  cachedSalt = [_recordKeyManagerSharedInstance cachedSalt];

  return cachedSalt;
}

- (void)_scheduleOperation:(id)operation
{
  operationCopy = operation;
  v5 = +[IMDCKDatabaseManager sharedInstance];
  truthDatabase = [v5 truthDatabase];
  [truthDatabase addOperation:operationCopy];
}

- (id)_updateAttachmentGUIDIfNeededAndReturnTransfersToForceMarkAsSync:(id)sync transfersToSyncRowIDs:(id)ds
{
  v35 = *MEMORY[0x277D85DE8];
  syncCopy = sync;
  dsCopy = ds;
  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = syncCopy;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v7)
  {
    v9 = 0;
    v10 = *v27;
    *&v8 = 138412546;
    v22 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        guid = [v12 guid];
        v14 = +[IMDAttachmentStore sharedInstance];
        v15 = [v14 updateTemporaryTransferGUIDsIfNeeded:v12 transfersToSync:v6];

        if (v15)
        {
          if (IMOSLoggingEnabled())
          {
            v16 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              guid2 = [v12 guid];
              *buf = v22;
              v31 = guid;
              v32 = 2112;
              v33 = guid2;
              _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Fixed up guid for transfer old guid: %@ new guid: %@", buf, 0x16u);
            }
          }
        }

        else if (IMFileTransferGUIDIsTemporary())
        {
          v18 = [dsCopy objectAtIndexedSubscript:v9];
          if (IMOSLoggingEnabled())
          {
            v19 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = v22;
              v31 = guid;
              v32 = 2112;
              v33 = v18;
              _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "******** Marking attachment with final failure, as we could not update it's guid %@ (rowid %@)", buf, 0x16u);
            }
          }

          -[IMDCKAttachmentSyncController _markAttachmentWithROWID:withSyncState:](self, "_markAttachmentWithROWID:withSyncState:", [v18 longLongValue], 64);
          [v24 addObject:v12];
        }

        ++v9;
      }

      v7 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v7);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v24;
}

- (id)_fetchAndPrepareRecordsToWrite:(BOOL *)write
{
  v77 = *MEMORY[0x277D85DE8];
  _numberOfAttachmentsToWriteUp = [(IMDCKAttachmentSyncController *)self _numberOfAttachmentsToWriteUp];
  v6 = IMDAttachmentRecordCopyAttachmentsForQueryWithLimit();
  v7 = [v6 count];
  if (write)
  {
    *write = v7 < _numberOfAttachmentsToWriteUp;
  }

  v47 = v7;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v6;
  v10 = [obj countByEnumeratingWithState:&v62 objects:v76 count:16];
  if (v10)
  {
    v11 = *v63;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v63 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v62 + 1) + 8 * i);
        v14 = IMFileTransferFromIMDAttachmentRecordRef(v13);
        if (v14)
        {
          [v8 addObject:v14];
          v15 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v13, "rowID")}];
          [v9 addObject:v15];
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v16 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              rowID = [v13 rowID];
              *buf = 134217984;
              *&buf[4] = rowID;
              _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "**** failed to create IMFileTransfer from IMDAttachmentRecordRef rowid: %lld, marking as clean ***", buf, 0xCu);
            }
          }

          [v13 rowID];
          IMDAttachmentRecordMarkAttachmentWithROWIDWithSyncState();
        }
      }

      v10 = [obj countByEnumeratingWithState:&v62 objects:v76 count:16];
    }

    while (v10);
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [v8 count];
      *buf = 134218240;
      *&buf[4] = v47;
      *&buf[12] = 2048;
      *&buf[14] = v19;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Got %lu dirty results to sync, filtered to %lu", buf, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Fixing up attachment GUIDs if needed", buf, 2u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v73 = sub_22B4D7670;
  v74 = sub_22B4D7890;
  v75 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B55E188;
  block[3] = &unk_278704618;
  v61 = buf;
  block[4] = self;
  v48 = v8;
  v59 = v48;
  v45 = v9;
  v60 = v45;
  dispatch_sync(MEMORY[0x277D85CD0], block);
  if ([*(*&buf[8] + 40) count])
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *v66 = 0;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Removing attachments that were marked as clean ", v66, 2u);
      }
    }

    [v48 removeObjectsInArray:{*(*&buf[8] + 40), v45}];
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v22 = v48;
    v23 = [v22 countByEnumeratingWithState:&v54 objects:v71 count:16];
    if (v23)
    {
      v24 = *v55;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v55 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v54 + 1) + 8 * j);
          if (IMOSLoggingEnabled())
          {
            v27 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              *v66 = 138412290;
              v67 = v26;
              _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Transfer to sync %@ ", v66, 0xCu);
            }
          }
        }

        v23 = [v22 countByEnumeratingWithState:&v54 objects:v71 count:16];
      }

      while (v23);
    }
  }

  if ([v48 count])
  {
    v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v29 = v48;
    v30 = [v29 countByEnumeratingWithState:&v50 objects:v70 count:16];
    if (v30)
    {
      v31 = *v51;
      do
      {
        for (k = 0; k != v30; ++k)
        {
          if (*v51 != v31)
          {
            objc_enumerationMutation(v29);
          }

          v33 = *(*(&v50 + 1) + 8 * k);
          recordZoneManager = [(IMDCKAttachmentSyncController *)self recordZoneManager];
          attachmentRecordZoneID = [recordZoneManager attachmentRecordZoneID];
          _attachmentZoneSalt = [(IMDCKAttachmentSyncController *)self _attachmentZoneSalt];
          v37 = [v33 copyCKRecordRepresentationWithZoneID:attachmentRecordZoneID salt:_attachmentZoneSalt];

          if (v37)
          {
            [v28 addObject:v37];
          }
        }

        v30 = [v29 countByEnumeratingWithState:&v50 objects:v70 count:16];
      }

      while (v30);
    }

    ckUtilities = [(IMDCKAbstractSyncController *)self ckUtilities];
    v39 = [ckUtilities newfilteredArrayRemovingCKRecordDupes:v28];

    if (IMOSLoggingEnabled())
    {
      v40 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = [v28 count];
        v42 = [v39 count];
        *v66 = 134218240;
        v67 = v41;
        v68 = 2048;
        v69 = v42;
        _os_log_impl(&dword_22B4CC000, v40, OS_LOG_TYPE_INFO, "Got %lu records to sync, filtered to %lu unique records", v66, 0x16u);
      }
    }
  }

  else
  {
    v39 = 0;
  }

  _Block_object_dispose(buf, 8);
  v43 = *MEMORY[0x277D85DE8];

  return v39;
}

- (void)_writeAttachmentsToCloudKitWithActivity:(id)activity completionBlock:(id)block
{
  v36 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Writing up a batch of attachments to cloudKit", buf, 2u);
    }
  }

  if ([(IMDCKAttachmentSyncController *)self _deviceConditionsAllowsMessageSyncForCurrentBatchCount:1 maxBatchCount:-1 activity:activityCopy])
  {
    [(IMDCKAbstractSyncController *)self setBroadcastedSyncStateToUploading];
    v31 = 0;
    v9 = [(IMDCKAttachmentSyncController *)self _fetchAndPrepareRecordsToWrite:&v31];
    v10 = [v9 count];
    v11 = v31;
    if (v10)
    {
      if (v31 && IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [v9 count];
          _numberOfAttachmentsToWriteUp = [(IMDCKAttachmentSyncController *)self _numberOfAttachmentsToWriteUp];
          *buf = 134218240;
          v33 = v13;
          v34 = 2048;
          v35 = _numberOfAttachmentsToWriteUp;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "*** This is the last batch of attachments to write up. Number of records to write %lu < max batch size %lu", buf, 0x16u);
        }
      }

      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = sub_22B55E678;
      v25[3] = &unk_278704640;
      v29 = blockCopy;
      v30 = v11;
      v26 = v9;
      selfCopy = self;
      v28 = activityCopy;
      [(IMDCKAttachmentSyncController *)self _writeCKRecordsToAttachmentZone:v26 activity:v28 withCompletion:v25];
    }

    else
    {
      v17 = IMOSLoggingEnabled();
      if (v11)
      {
        if (v17)
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            _numberOfAttachmentsToWriteUp2 = [(IMDCKAttachmentSyncController *)self _numberOfAttachmentsToWriteUp];
            *buf = 134217984;
            v33 = _numberOfAttachmentsToWriteUp2;
            _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Failed to write any of these %lu dirty attachments, looks like there's nothing left to do", buf, 0xCu);
          }
        }

        if (blockCopy)
        {
          (*(blockCopy + 2))(blockCopy, 0);
        }
      }

      else
      {
        if (v17)
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            _numberOfAttachmentsToWriteUp3 = [(IMDCKAttachmentSyncController *)self _numberOfAttachmentsToWriteUp];
            *buf = 134217984;
            v33 = _numberOfAttachmentsToWriteUp3;
            _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Failed to write any of these %lu dirty attachments, looking for more attachments to write", buf, 0xCu);
          }
        }

        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = sub_22B55E998;
        v23[3] = &unk_278702930;
        v24 = blockCopy;
        [(IMDCKAttachmentSyncController *)self _kickOffWriteOnCKQueueWithActivity:activityCopy completion:v23];
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Device conditions dont allow us to sync", buf, 2u);
      }
    }

    if (blockCopy)
    {
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D19CF0] code:4 userInfo:0];
      (*(blockCopy + 2))(blockCopy, v16);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_fetchAttachmentZoneRecords:(id)records desiredKeys:(int64_t)keys ognSuffix:(id)suffix removeTombstones:(BOOL)tombstones activity:(id)activity completion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  suffixCopy = suffix;
  activityCopy = activity;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v39 = recordsCopy;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Fetching assets for %@", buf, 0xCu);
    }
  }

  v18 = suffixCopy;
  if (suffixCopy)
  {
    goto LABEL_8;
  }

  if ([(IMDCKAttachmentSyncController *)self isDoingDeleteRecoverySync])
  {
    v18 = @"-DRR";
LABEL_8:
    v19 = [@"OptimizeRedownload" stringByAppendingString:{v18, activityCopy}];
    goto LABEL_9;
  }

  v19 = @"OptimizeRedownload";
LABEL_9:
  cKOperationFactory = [(IMDCKAttachmentSyncController *)self CKOperationFactory];
  v21 = [cKOperationFactory fetchAttachmentZoneRecords:recordsCopy desiredKeys:keys operationGroupName:v19 activity:v32];

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_22B55ECFC;
  v37[3] = &unk_278704668;
  v37[4] = self;
  [v21 setPerRecordProgressBlock:v37];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_22B55ED08;
  v36[3] = &unk_278704690;
  v36[4] = self;
  [v21 setPerRecordCompletionBlock:v36];
  operationID = [v21 operationID];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_22B55ED1C;
  v33[3] = &unk_2787046B8;
  tombstonesCopy = tombstones;
  v33[4] = self;
  v34 = operationID;
  v23 = operationID;
  [v21 setFetchRecordsCompletionBlock:v33];
  if (completionCopy)
  {
    completionBlocksForAssetFetchOperations = [(IMDCKAttachmentSyncController *)self completionBlocksForAssetFetchOperations];
    v25 = [completionCopy copy];
    v26 = _Block_copy(v25);
    operationID2 = [v21 operationID];
    [completionBlocksForAssetFetchOperations setObject:v26 forKey:operationID2];
  }

  v28 = +[IMDCKDatabaseManager sharedInstance];
  manateeDataBase = [v28 manateeDataBase];
  [manateeDataBase addOperation:v21];

  v30 = *MEMORY[0x277D85DE8];
}

- (BOOL)_fetchedAllChangesFromCloudKit
{
  v2 = *MEMORY[0x277D19A08];
  v3 = *MEMORY[0x277D19750];
  return IMGetDomainBoolForKey();
}

- (int)_resyncForDeleteRecoveryState
{
  mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
  v3 = [mEMORY[0x277D1A990] getValueFromDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19768]];
  intValue = [v3 intValue];

  return intValue;
}

- (void)_initResyncForDeleteRecovery
{
  _resyncForDeleteRecoveryState = [(IMDCKAttachmentSyncController *)self _resyncForDeleteRecoveryState];
  if (_resyncForDeleteRecoveryState <= 0)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Starting Delete Recovery Resync", buf, 2u);
      }
    }

    [(IMDCKAttachmentSyncController *)self clearLocalSyncState:3];
    [(IMDCKAttachmentSyncController *)self _markResyncForDeleteRecoveryAs:1];
  }

  if ([(IMDCKAttachmentSyncController *)self _resyncForDeleteRecoveryState]< 1 || [(IMDCKAttachmentSyncController *)self _resyncForDeleteRecoveryState]> 1)
  {
    [(IMDCKAttachmentSyncController *)self setIsDoingDeleteRecoverySync:0];
  }

  else
  {
    [(IMDCKAttachmentSyncController *)self setIsDoingDeleteRecoverySync:1];
    if (_resyncForDeleteRecoveryState >= 1 && IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Continuing Delete Recovery Resync", v6, 2u);
      }
    }
  }
}

- (void)_fetchAttachmentZoneChangesShouldWriteBackChanges:(BOOL)changes desiredKeys:(int64_t)keys syncType:(int64_t)type currentBatchCount:(int64_t)count maxBatchCount:(int64_t)batchCount syncToken:(id)token activity:(id)activity completionBlock:(id)self0
{
  v68 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  activityCopy = activity;
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:count];
      v16 = [MEMORY[0x277CCABB0] numberWithInteger:batchCount];
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:type];
      *buf = 138413314;
      v59 = v15;
      v60 = 2112;
      v61 = v16;
      v62 = 2112;
      v63 = v17;
      v64 = 2112;
      v65 = &unk_283F4E540;
      v66 = 2112;
      v67 = tokenCopy;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Fetching attachment batch count %@ (max: %@) syncType %@ batch size %@ token %@", buf, 0x34u);
    }
  }

  v18 = @"AttachmentSync";
  if (type == 1)
  {
    v18 = @"PeriodicSync";
  }

  if (!type)
  {
    v18 = @"FullRestore";
  }

  v44 = v18;
  if ([(IMDCKAttachmentSyncController *)self isDoingDeleteRecoverySync])
  {
    v44 = [v44 stringByAppendingString:@"-DRR"];
  }

  v20 = batchCount >= 0 && count >= batchCount && type == 0;
  v21 = v20;
  v41 = v21;
  if (v20 && IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "*** Exceeded max number of attachment batches to fetch. Stopping attachment fetch ***", buf, 2u);
    }
  }

  v23 = +[IMDCKCacheDeleteManager sharedInstance];
  v24 = [v23 canWriteFileOfEstimatedSize:819200 refreshCachedValue:count % 0x64uLL == 0];

  keysCopy3 = keys;
  if (type == 1)
  {
    keysCopy3 = keys;
    if (![(IMDCKAttachmentSyncController *)self _fetchedAllChangesFromCloudKit])
    {
      v26 = +[IMDCKCacheDeleteManager sharedInstance];
      v27 = [v26 shouldDownloadAssetsOfSize:819200 refreshCachedValue:count % 0x64uLL == 0];

      keysCopy3 = keys;
      if (v27)
      {
        if (IMOSLoggingEnabled())
        {
          v28 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Downloading asset while performing periodic syncing with cloudkit", buf, 2u);
          }
        }

        keysCopy3 = 1;
      }
    }
  }

  if ((v41 | [(IMDCKAttachmentSyncController *)self _deviceConditionsAllowsMessageSyncForCurrentBatchCount:count maxBatchCount:batchCount activity:activityCopy]& v24 ^ 1))
  {
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = @"YES";
        if (v41)
        {
          v31 = @"NO";
        }

        else
        {
          v31 = @"YES";
        }

        if (!v24)
        {
          v30 = @"NO";
        }

        *buf = 138412546;
        v59 = v31;
        v60 = 2112;
        v61 = v30;
        _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Device conditions dont allow sync OR continueFetching %@. Disk Space Available: %@", buf, 0x16u);
      }
    }

    v32 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D19CF0] code:4 userInfo:0];
    v33 = v32;
    if (v41)
    {

      v33 = 0;
    }

    if (blockCopy)
    {
      blockCopy[2]();
    }
  }

  else
  {
    [(IMDCKAbstractSyncController *)self setBroadcastedSyncStateToDownloading];
    cKOperationFactory = [(IMDCKAttachmentSyncController *)self CKOperationFactory];
    _attachmentZoneID = [(IMDCKAttachmentSyncController *)self _attachmentZoneID];
    v33 = [cKOperationFactory fetchAttachmentZoneChangesCKOperationUsingToken:tokenCopy zoneID:_attachmentZoneID resultsLimit:20 desiredKeys:keysCopy3 operationGroupName:v44 activity:activityCopy];

    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = sub_22B55F720;
    v57[3] = &unk_2787046E0;
    v57[4] = self;
    [v33 setRecordChangedBlock:v57];
    [v33 setRecordZoneChangeTokensUpdatedBlock:&unk_283F19C08];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = sub_22B55F7F0;
    v56[3] = &unk_278704728;
    v56[4] = self;
    [v33 setRecordWithIDWasDeletedBlock:v56];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = sub_22B55F7FC;
    v48[3] = &unk_278704750;
    changesCopy = changes;
    v48[4] = self;
    keysCopy4 = keys;
    typeCopy = type;
    countCopy = count;
    batchCountCopy = batchCount;
    v49 = activityCopy;
    v36 = blockCopy;
    v50 = v36;
    [v33 setRecordZoneFetchCompletionBlock:v48];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = sub_22B55F854;
    v46[3] = &unk_278704778;
    v46[4] = self;
    v47 = v36;
    [v33 setFetchRecordZoneChangesCompletionBlock:v46];
    if (IMOSLoggingEnabled())
    {
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "Scheduling a fetch operation from attachment zone", buf, 2u);
      }
    }

    [(IMDCKAttachmentSyncController *)self _scheduleOperation:v33];
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_writeCKRecordsToAttachmentZone:(id)zone activity:(id)activity withCompletion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  activityCopy = activity;
  completionCopy = completion;
  _fetchedAllChangesFromCloudKit = [(IMDCKAttachmentSyncController *)self _fetchedAllChangesFromCloudKit];
  v12 = @"BackfillAttachmentSync";
  if (_fetchedAllChangesFromCloudKit)
  {
    v12 = @"PeriodicAttachmentSync";
  }

  v13 = v12;
  if ([(IMDCKAttachmentSyncController *)self isDoingDeleteRecoverySync])
  {
    v14 = [(__CFString *)v13 stringByAppendingString:@"-DRR"];

    v13 = v14;
  }

  cKOperationFactory = [(IMDCKAttachmentSyncController *)self CKOperationFactory];
  v16 = [cKOperationFactory saveAttachmentsCKOperationUsingRecordsToSave:zoneCopy operationGroupName:v13 activity:activityCopy];

  [v16 setPerRecordProgressBlock:&unk_283F19C28];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_22B55FB04;
  v23[3] = &unk_2787047C0;
  v23[4] = self;
  [v16 setPerRecordCompletionBlock:v23];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_22B55FB14;
  v21[3] = &unk_278703858;
  v21[4] = self;
  v17 = completionCopy;
  v22 = v17;
  [v16 setModifyRecordsCompletionBlock:v21];
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(zoneCopy, "count")}];
      *buf = 138412290;
      v25 = v19;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Attempting to write %@ records to truth zone ", buf, 0xCu);
    }
  }

  [(IMDCKAttachmentSyncController *)self _scheduleOperation:v16];

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)_attachmentZoneCreated
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v3 = dispatch_semaphore_create(0);
  recordZoneManager = [(IMDCKAttachmentSyncController *)self recordZoneManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22B55FCD0;
  v11[3] = &unk_278703880;
  v13 = &v14;
  v5 = v3;
  v12 = v5;
  [recordZoneManager createAttachmentZoneIfNeededWithCompletionBlock:v11];

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
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "***** Timed out creating attachment zone *******", v10, 2u);
      }
    }
  }

  v8 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v8;
}

- (void)deleteAttachmentSyncToken
{
  ckUtilities = [(IMDCKAbstractSyncController *)self ckUtilities];
  [ckUtilities reportMOCDebuggingErrorWithString:@"ChangeTokenExpired" internalOnly:1 initialSync:0 reasonString:@"ChangeTokenExpired"];

  [(IMDCKAttachmentSyncController *)self setLatestSyncToken:0 forSyncType:1];

  [(IMDCKAttachmentSyncController *)self setLatestSyncToken:0 forSyncType:5];
}

- (void)deleteChatBotAttachmentSyncToken
{
  syncTokenStore = [(IMDCKAttachmentSyncController *)self syncTokenStore];
  [syncTokenStore persistToken:0 forKey:@"chatBotAttachmentChangeToken"];
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
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Kicking off an attachment write after fetching messages", buf, 2u);
    }
  }

  ckQueue = [(IMDCKAttachmentSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B55FFDC;
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
  _ckUtilitiesInstance = [(IMDCKAttachmentSyncController *)self _ckUtilitiesInstance];
  LODWORD(type) = [_ckUtilitiesInstance shouldKickOffWriteForSyncType:type];

  if (!type)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v18[0] = 0;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Not writing up messages as sync type does not allow it", v18, 2u);
      }
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }

    goto LABEL_16;
  }

  _ckUtilitiesInstance2 = [(IMDCKAttachmentSyncController *)self _ckUtilitiesInstance];
  isLocalCachedSaltPresent = [_ckUtilitiesInstance2 isLocalCachedSaltPresent];

  if (!isLocalCachedSaltPresent)
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

      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D19CF0] code:7 userInfo:0];
      (completionCopy)[2](completionCopy, 0, v16);
    }

LABEL_16:
    v13 = 0;
    goto LABEL_17;
  }

  [(IMDCKAttachmentSyncController *)self _kickOffWriteOnCKQueueWithActivity:activityCopy completion:completionCopy];
  v13 = 1;
LABEL_17:

  return v13;
}

- (void)_processRecordZoneFetchCompletion:(id)completion zoneID:(id)d clientChangeTokenData:(id)data moreComing:(BOOL)coming shouldWriteBackChanges:(BOOL)changes desiredKeys:(int64_t)keys syncType:(int64_t)type error:(id)self0 currentBatchCount:(int64_t)self1 maxBatchCount:(int64_t)self2 activity:(id)self3 completionBlock:(id)self4
{
  comingCopy = coming;
  v76 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dCopy = d;
  dataCopy = data;
  errorCopy = error;
  activityCopy = activity;
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = @"NO";
      *buf = 138413314;
      v67 = dCopy;
      if (comingCopy)
      {
        v21 = @"YES";
      }

      v68 = 2112;
      v69 = completionCopy;
      v70 = 2112;
      v71 = dataCopy;
      v72 = 2112;
      v73 = v21;
      v74 = 2112;
      v75 = errorCopy;
      _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "recordZoneChangeTokensUpdatedBlock recordZoneID %@ serverChangeToken %@ clientChangeToken %@ moreComing %@ recordZoneError %@", buf, 0x34u);
    }
  }

  errorAnalyzer = [(IMDCKAbstractSyncController *)self errorAnalyzer];
  v23 = [errorAnalyzer errorIndicatesZoneNotCreated:errorCopy];

  errorAnalyzer2 = [(IMDCKAbstractSyncController *)self errorAnalyzer];
  v25 = [errorAnalyzer2 errorIndicatesUserDeletedZone:errorCopy];

  batchCountCopy = batchCount;
  if (errorCopy)
  {
    errorAnalyzer3 = [(IMDCKAbstractSyncController *)self errorAnalyzer];
    v27 = [errorAnalyzer3 CKPartialError:errorCopy hasErrorCode:&unk_283F4E558];

    if (v27)
    {
      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "We got back a change token has expired for processing the record zone for attachments going to try and fetch again", buf, 2u);
        }
      }

      [(IMDCKAttachmentSyncController *)self clearLocalSyncState:17, batchCount];
      if (blockCopy)
      {
LABEL_38:
        blockCopy[2](blockCopy, 0, errorCopy);
      }
    }

    else
    {
      v30 = IMOSLoggingEnabled();
      if (((v23 | v25) & 1) == 0)
      {
        if (v30)
        {
          v37 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v67 = errorCopy;
            _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "//---*** Error fetching attachments from CloudKit with error: %@ ---- ***//", buf, 0xCu);
          }
        }

        goto LABEL_38;
      }

      if (v30)
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = @"zone not created";
          if (v25)
          {
            v32 = @"user deleted zone";
          }

          *buf = 138412546;
          v67 = v32;
          v68 = 2112;
          v69 = errorCopy;
          _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "We got a %@ error while fetching attachments. %@", buf, 0x16u);
        }
      }

      if (v25)
      {
        if (IMOSLoggingEnabled())
        {
          v33 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Resetting local attachment sync state & last sync date after received user deleted zone error", buf, 2u);
          }
        }

        [(IMDCKAttachmentSyncController *)self clearLocalSyncState:3, batchCount];
        ckUtilities = [(IMDCKAbstractSyncController *)self ckUtilities];
        [ckUtilities resetLastSyncDate];
      }

      if (IMOSLoggingEnabled())
      {
        v35 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "Attachment zone missing, attempting to create it", buf, 2u);
        }
      }

      ckQueue = [(IMDCKAttachmentSyncController *)self ckQueue];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = sub_22B560E50;
      v47[3] = &unk_278704838;
      changesCopy = changes;
      v47[4] = self;
      keysCopy = keys;
      typeCopy = type;
      countCopy = count;
      v53 = v40;
      v48 = activityCopy;
      v49 = blockCopy;
      dispatch_async(ckQueue, v47);
    }
  }

  else
  {
    ckQueue2 = [(IMDCKAttachmentSyncController *)self ckQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B5608DC;
    block[3] = &unk_278704810;
    v56 = completionCopy;
    selfCopy = self;
    v64 = comingCopy;
    changesCopy2 = changes;
    typeCopy2 = type;
    keysCopy2 = keys;
    countCopy2 = count;
    batchCountCopy2 = batchCount;
    v58 = activityCopy;
    v59 = blockCopy;
    dispatch_async(ckQueue2, block);
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_processModifyPerRecordCallBack:(id)back error:(id)error
{
  v51 = *MEMORY[0x277D85DE8];
  backCopy = back;
  errorCopy = error;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      recordID = [backCopy recordID];
      recordChangeTag = [backCopy recordChangeTag];
      *buf = 138412802;
      v46 = recordID;
      v47 = 2112;
      v48 = recordChangeTag;
      v49 = 2112;
      v50 = errorCopy;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Attachment per-record completion %@ changeTag %@ error %@", buf, 0x20u);
    }
  }

  if (errorCopy && [errorCopy code] != 16)
  {
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = sub_22B561754;
    v41[3] = &unk_278702FF0;
    v41[4] = self;
    dispatch_sync(MEMORY[0x277D85CD0], v41);
    if ([errorCopy code] == 14)
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "_writeCKRecordsToAttachmentZone had a conflict ", buf, 2u);
        }
      }

      _ckUtilitiesInstance = [(IMDCKAttachmentSyncController *)self _ckUtilitiesInstance];
      v16 = [_ckUtilitiesInstance extractServerRecordFromCKServerErrorRecordChanged:errorCopy];

      ckQueue = [(IMDCKAttachmentSyncController *)self ckQueue];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = sub_22B561764;
      v37[3] = &unk_2787038F8;
      v38 = backCopy;
      v39 = v16;
      selfCopy = self;
      v18 = v16;
      dispatch_sync(ckQueue, v37);
    }

    else if ([errorCopy code] == 12 || objc_msgSend(errorCopy, "code") == 35)
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Record had invalid arguments, we'll try this record again on the next sync", buf, 2u);
        }
      }

      ckQueue2 = [(IMDCKAttachmentSyncController *)self ckQueue];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = sub_22B561A60;
      v35[3] = &unk_278702FA0;
      v35[4] = self;
      v36 = backCopy;
      dispatch_sync(ckQueue2, v35);
    }

    else if ([errorCopy code] == 11)
    {
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Record had unknown error code. Clearing out CK metadata", buf, 2u);
        }
      }

      ckQueue3 = [(IMDCKAttachmentSyncController *)self ckQueue];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = sub_22B561A6C;
      v33[3] = &unk_278702FA0;
      v33[4] = self;
      v34 = backCopy;
      dispatch_sync(ckQueue3, v33);
    }

    else
    {
      v23 = [errorCopy code] == 26;
      v24 = IMOSLoggingEnabled();
      if (v23)
      {
        if (v24)
        {
          v25 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "We couldn't find the attachment zone for this record so marking the attachment as dirty and clearing the state", buf, 2u);
          }
        }

        ckQueue4 = [(IMDCKAttachmentSyncController *)self ckQueue];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = sub_22B561A7C;
        v31[3] = &unk_278702FA0;
        v31[4] = self;
        v32 = backCopy;
        dispatch_sync(ckQueue4, v31);
      }

      else
      {
        if (v24)
        {
          v27 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v46 = errorCopy;
            _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "_writeCKRecordsToAttachmentZone perRecordCompletionBlock encountered an error.  Will try this record again on next sync. %@", buf, 0xCu);
          }
        }

        ckQueue5 = [(IMDCKAttachmentSyncController *)self ckQueue];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = sub_22B561A8C;
        v29[3] = &unk_278702FA0;
        v29[4] = self;
        v30 = backCopy;
        dispatch_sync(ckQueue5, v29);
      }
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B561730;
    block[3] = &unk_278702FF0;
    block[4] = self;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "_writeCKRecordsToAttachmentZone uploaded record successfully", buf, 2u);
      }
    }

    ckQueue6 = [(IMDCKAttachmentSyncController *)self ckQueue];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = sub_22B561740;
    v42[3] = &unk_278702FA0;
    v42[4] = self;
    v43 = backCopy;
    dispatch_sync(ckQueue6, v42);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_processFetchRecordChangesCompleted:(id)completed completionBlock:(id)block
{
  v19 = *MEMORY[0x277D85DE8];
  completedCopy = completed;
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = completedCopy;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "_processFetchRecordChangesCompleted error %@", buf, 0xCu);
    }
  }

  if (completedCopy)
  {
    errorAnalyzer = [(IMDCKAbstractSyncController *)self errorAnalyzer];
    v10 = [errorAnalyzer errorIndicatesZoneNotCreated:completedCopy];

    if (blockCopy)
    {
      v11 = v10;
    }

    else
    {
      v11 = 1;
    }

    if ((v11 & 1) == 0)
    {
      ckQueue = [(IMDCKAttachmentSyncController *)self ckQueue];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = sub_22B561C48;
      v14[3] = &unk_2787028B0;
      v16 = blockCopy;
      v15 = completedCopy;
      dispatch_async(ckQueue, v14);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_processRecordDeletion:(id)deletion
{
  v8 = *MEMORY[0x277D85DE8];
  deletionCopy = deletion;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = deletionCopy;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "_processRecordDeletion deleted record %@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_processRecordChanged:(id)changed
{
  v18 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      recordID = [changedCopy recordID];
      v7 = [MEMORY[0x277D1A9C0] transferGUIDOfRecord:changedCopy];
      *buf = 138412546;
      v15 = recordID;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "_processRecordChanged changed recordID:%@ for attachmentGUID %@", buf, 0x16u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B561F34;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  ckQueue = [(IMDCKAttachmentSyncController *)self ckQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22B561F44;
  v11[3] = &unk_278702FA0;
  v11[4] = self;
  v12 = changedCopy;
  v9 = changedCopy;
  dispatch_sync(ckQueue, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_processRecordZoneChangeTokenUpdated:(id)updated zoneID:(id)d clienChangeToken:(id)token syncType:(int64_t)type
{
  v26 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  dCopy = d;
  tokenCopy = token;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v21 = dCopy;
      v22 = 2112;
      v23 = updatedCopy;
      v24 = 2112;
      v25 = tokenCopy;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "recordZoneChangeTokensUpdatedBlock recordZoneID %@ serverChangeToken %@ clientChangeToken %@", buf, 0x20u);
    }
  }

  ckQueue = [(IMDCKAttachmentSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B5620FC;
  block[3] = &unk_278703DE8;
  block[4] = self;
  v18 = updatedCopy;
  typeCopy = type;
  v15 = updatedCopy;
  dispatch_sync(ckQueue, block);

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_operationErrorForModifyingRecordCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:{&unk_283F4E570, &unk_283F4E588, &unk_283F4E5A0, &unk_283F4E5B8, &unk_283F4E5D0, &unk_283F4E5E8, 0}];
  errorAnalyzer = [(IMDCKAbstractSyncController *)self errorAnalyzer];
  v7 = [errorAnalyzer CKPartialError:completionCopy onlyHasErrorCodes:v5];

  if (v7)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Modify attachment had errors we can deal with, so treating this as a non error case", buf, 2u);
      }
    }

    v9 = 0;
  }

  else
  {
    v9 = completionCopy;
  }

  return v9;
}

- (void)_processModifyRecordCompletion:(id)completion deletedRecordIDs:(id)ds error:(id)error completionBlock:(id)block
{
  v27 = *MEMORY[0x277D85DE8];
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
      v24 = errorCopy;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "_processModifyRecordCompletion error: %@", buf, 0xCu);
    }
  }

  v15 = [(IMDCKAttachmentSyncController *)self _operationErrorForModifyingRecordCompletion:errorCopy];

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(completionCopy, "count")}];
      *buf = 138412546;
      v24 = v17;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Number of records saved %@ with error %@", buf, 0x16u);
    }
  }

  if (blockCopy)
  {
    ckQueue = [(IMDCKAttachmentSyncController *)self ckQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_22B5624C4;
    v20[3] = &unk_2787028B0;
    v22 = blockCopy;
    v21 = v15;
    dispatch_async(ckQueue, v20);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_processAssetFetchPerRecordProgressBlock:(id)block progress:(double)progress
{
  blockCopy = block;
  perTransferProgress = [(IMDCKAttachmentSyncController *)self perTransferProgress];
  if (perTransferProgress)
  {
    recordIDToTransferMap = [(IMDCKAttachmentSyncController *)self recordIDToTransferMap];
    v9 = [recordIDToTransferMap objectForKey:blockCopy];

    if (v9)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B5625DC;
      block[3] = &unk_278704860;
      v12 = perTransferProgress;
      v11 = v9;
      progressCopy = progress;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

- (void)_processAssetFetchPerRecordCompletionBlock:(id)block recordID:(id)d error:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  dCopy = d;
  errorCopy = error;
  recordIDToTransferMap = [(IMDCKAttachmentSyncController *)self recordIDToTransferMap];
  v12 = [recordIDToTransferMap objectForKey:dCopy];

  if (v12)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        guid = [v12 guid];
        *buf = 138412546;
        v24 = guid;
        v25 = 2112;
        v26 = errorCopy;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Asset fetch complete for %@ error %@", buf, 0x16u);
      }
    }

    perTransferProgress = [(IMDCKAttachmentSyncController *)self perTransferProgress];
    v16 = perTransferProgress;
    if (perTransferProgress)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B56282C;
      block[3] = &unk_278702CC8;
      v22 = perTransferProgress;
      v20 = v12;
      v21 = errorCopy;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    if (errorCopy && (CKCanRetryForError() & 1) == 0)
    {
      v17 = +[IMDFileTransferCenter sharedInstance];
      [v17 markTransferAsNotSuccessfullyDownloadedFromCloud:v12];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_processAssetFetchOperationCompletionBlock:(id)block removeTombstones:(BOOL)tombstones operationID:(id)d error:(id)error
{
  blockCopy = block;
  dCopy = d;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = sub_22B4D7670;
  v21[4] = sub_22B4D7890;
  errorCopy = error;
  v22 = errorCopy;
  ckQueue = [(IMDCKAttachmentSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B5629C0;
  block[3] = &unk_2787048D8;
  block[4] = self;
  v17 = blockCopy;
  tombstonesCopy = tombstones;
  v18 = dCopy;
  v19 = v21;
  v14 = dCopy;
  v15 = blockCopy;
  dispatch_sync(ckQueue, block);

  _Block_object_dispose(v21, 8);
}

- (id)_recordsToProcessWithError:(id)error error:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = a4;
  v7 = v6;
  if (v6 && [v6 code] != 2)
  {
    v9 = 0;
  }

  else
  {
    allKeys = [errorCopy allKeys];
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v7)
    {
      userInfo = [v7 userInfo];
      v11 = *MEMORY[0x277CBBFB0];
      v12 = [userInfo objectForKey:*MEMORY[0x277CBBFB0]];

      if (v12)
      {
        userInfo2 = [v7 userInfo];
        v14 = [userInfo2 objectForKey:v11];
        allKeys2 = [v14 allKeys];

        v16 = [allKeys arrayByExcludingObjectsInArray:allKeys2];

        allKeys = v16;
      }
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v17 = allKeys;
    v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        v21 = 0;
        do
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [errorCopy objectForKey:{*(*(&v25 + 1) + 8 * v21), v25}];
          [v9 addObject:v22];

          ++v21;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v19);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_removeTransferFromiCloudBackupWithGuid:(id)guid
{
  v18 = *MEMORY[0x277D85DE8];
  guidCopy = guid;
  v4 = +[IMDAttachmentStore sharedInstance];
  v5 = [v4 attachmentWithGUID:guidCopy];

  if (v5 && [v5 cloudKitSyncState] == 1)
  {
    localPath = [v5 localPath];
    v13 = 0;
    if (localPath && ([MEMORY[0x277CCAA00] defaultManager], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "fileExistsAtPath:isDirectory:", localPath, &v13), v7, v8))
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v15 = localPath;
          v16 = 2112;
          v17 = guidCopy;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Removing icloud backup attribute for path '%@' for %@ from iCloud backups", buf, 0x16u);
        }
      }

      v10 = +[IMDCKBackupController sharedInstance];
      [v10 removePathFromiCloudBackup:localPath];
    }

    else if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v15 = localPath;
        v16 = 2112;
        v17 = guidCopy;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Attachment at path '%@' for %@ not found, NOT removing from iCloud backups", buf, 0x16u);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_updateTransferUsingCKRecord:(id)record wasFetched:(BOOL)fetched dispatchToMain:(BOOL)main
{
  mainCopy = main;
  fetchedCopy = fetched;
  v34 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_22B4D7670;
  v26 = sub_22B4D7890;
  v27 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B563CD4;
  aBlock[3] = &unk_278704900;
  v19 = &v22;
  v9 = recordCopy;
  v21 = fetchedCopy;
  v20 = &v28;
  v17 = v9;
  selfCopy = self;
  v10 = _Block_copy(aBlock);
  v11 = v10;
  if (mainCopy)
  {
    dispatch_sync(MEMORY[0x277D85CD0], v10);
  }

  else
  {
    v10[2](v10);
  }

  if (*(v29 + 24) == 1 && [v23[5] length])
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = v23[5];
        *buf = 138412290;
        v33 = v13;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Going to fetch the asset for transfer guid at the end of this batch: %@", buf, 0xCu);
      }
    }

    downloadAssetsForTransferGUIDs = [(IMDCKAttachmentSyncController *)self downloadAssetsForTransferGUIDs];
    [downloadAssetsForTransferGUIDs addObject:v23[5]];
  }

  if (fetchedCopy)
  {
    [MEMORY[0x277D1A9C0] cleanUpAssetsOnDiskForRecord:v9];
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_kickOffAssetFetchForTransfersIfNeededWithActivity:(id)activity
{
  activityCopy = activity;
  ckQueue = [(IMDCKAttachmentSyncController *)self ckQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B563E50;
  v7[3] = &unk_278702FA0;
  v7[4] = self;
  v8 = activityCopy;
  v6 = activityCopy;
  dispatch_async(ckQueue, v7);
}

- (void)_markTransferAsNotBeingAbleToSync:(id)sync
{
  syncCopy = sync;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B5642D0;
  block[3] = &unk_278702FF0;
  v6 = syncCopy;
  v4 = syncCopy;
  dispatch_sync(MEMORY[0x277D85CD0], block);
}

- (void)_markTransferAsNotBeingAbleToSyncUsingCKRecord:(id)record
{
  v3 = [MEMORY[0x277D1A9C0] transferGUIDOfRecord:record];
  v4 = v3;
  if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B5643CC;
    block[3] = &unk_278702FF0;
    v6 = v3;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }
}

- (void)_resetAttachmentSyncStateForRecord:(id)record toState:(int64_t)state
{
  recordCopy = record;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B5644BC;
  v7[3] = &unk_278704970;
  v8 = recordCopy;
  stateCopy = state;
  v6 = recordCopy;
  dispatch_sync(MEMORY[0x277D85CD0], v7);
}

- (void)_migrateSyncToken
{
  syncTokenStore = [(IMDCKAttachmentSyncController *)self syncTokenStore];
  [syncTokenStore migrateKey:@"attachmentZoneChangeToken" fromDatabase:@"/var/mobile/Library/SMS/CloudKitMetaData/AttachmentSyncZoneMetaData.db"];
}

- (void)setLatestSyncToken:(id)token forSyncType:(int64_t)type
{
  tokenCopy = token;
  syncTokenStore = [(IMDCKAttachmentSyncController *)self syncTokenStore];
  v7 = [(IMDCKAttachmentSyncController *)self _changeTokenKeyForSyncType:type];
  [syncTokenStore persistToken:tokenCopy forKey:v7];
}

- (id)latestSyncTokenForSyncType:(int64_t)type
{
  syncTokenStore = [(IMDCKAttachmentSyncController *)self syncTokenStore];
  v6 = [(IMDCKAttachmentSyncController *)self _changeTokenKeyForSyncType:type];
  v7 = [syncTokenStore tokenForKey:v6];

  return v7;
}

- (void)deleteAttachmentZone
{
  ckQueue = [(IMDCKAttachmentSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B564700;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_async(ckQueue, block);
}

- (void)clearLocalSyncState:(unint64_t)state
{
  stateCopy = state;
  v10 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9[0] = 67109120;
      v9[1] = stateCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Clearing local attachments sync state, flags 0x%x", v9, 8u);
    }
  }

  if (stateCopy)
  {
    syncTokenStore = [(IMDCKAttachmentSyncController *)self syncTokenStore];
    [syncTokenStore persistToken:0 forKey:@"attachmentZoneChangeToken"];

    [(IMDCKAttachmentSyncController *)self deleteChatBotAttachmentSyncToken];
  }

  if ((stateCopy & 2) != 0)
  {
    v7 = +[IMDAttachmentStore sharedInstance];
    [v7 markAllAttachmentsAsNeedingCloudKitSync];
  }

  else if ((stateCopy & 0x10) != 0)
  {
    [(IMDCKAttachmentSyncController *)self _needsToMarkAllAttachmentsAsNeedingSync];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_validateTransferFromCloudKit:(id)kit localTransfer:(id)transfer validateCompletion:(id)completion
{
  completionCopy = completion;
  v6 = [MEMORY[0x277D1A9C0] validateMD5HashForRecord:kit];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D19CF0] code:3 userInfo:0];
  }

  completionCopy[2](completionCopy, v6, v7);
}

- (void)_processAndValidateAttachmentRecordsEligibleForPurge:(id)purge recordIDsToTransfers:(id)transfers capturedWithABC:(BOOL)c completion:(id)completion
{
  purgeCopy = purge;
  transfersCopy = transfers;
  completionCopy = completion;
  ckQueue = [(IMDCKAttachmentSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B564A3C;
  block[3] = &unk_278704A10;
  cCopy = c;
  v18 = purgeCopy;
  v19 = transfersCopy;
  selfCopy = self;
  v21 = completionCopy;
  v14 = completionCopy;
  v15 = transfersCopy;
  v16 = purgeCopy;
  dispatch_sync(ckQueue, block);
}

- (id)_constructAttachmentRecordIDUsingTombStoneDictionary:(id)dictionary
{
  v4 = [dictionary objectForKeyedSubscript:@"recordID"];
  if ([v4 length])
  {
    v5 = objc_alloc(MEMORY[0x277CBC5D0]);
    _attachmentZoneID = [(IMDCKAttachmentSyncController *)self _attachmentZoneID];
    v7 = [v5 initWithRecordName:v4 zoneID:_attachmentZoneID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_readNextDeleteAfterRow
{
  mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
  v3 = [mEMORY[0x277D1A990] getValueFromDomain:*MEMORY[0x277D19A08] forKey:@"deleteAfterRow"];

  return v3;
}

- (void)_setNextDeleteAfterRow:(id)row
{
  v3 = MEMORY[0x277D1A990];
  rowCopy = row;
  sharedInstance = [v3 sharedInstance];
  [sharedInstance setValue:rowCopy forDomain:*MEMORY[0x277D19A08] forKey:@"deleteAfterRow"];
}

- (id)_copyRecordIDsToDeleteWithLimit:(unint64_t)limit
{
  v30 = *MEMORY[0x277D85DE8];
  _readNextDeleteAfterRow = [(IMDCKAttachmentSyncController *)self _readNextDeleteAfterRow];
  v4 = IMDAttachmentCopyRecordIDsToDeleteAfterRowWithLimit();
  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  context = objc_autoreleasePoolPush();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v4;
  v6 = 0;
  v7 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v7)
  {
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [(IMDCKAttachmentSyncController *)self _constructAttachmentRecordIDUsingTombStoneDictionary:v10, context, _readNextDeleteAfterRow];
        if ([v5 containsObject:v11])
        {
          if (IMOSLoggingEnabled())
          {
            v12 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v28 = v11;
              _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Removed duplicate recordID %@ from delete syncing", buf, 0xCu);
            }
          }
        }

        else
        {
          [v5 addObject:v11];
          v13 = [v10 objectForKey:@"guid"];
          [v21 setObject:v11 forKey:v13];
        }

        v14 = [v10 objectForKey:@"ROWID"];
        longLongValue = [v14 longLongValue];

        if (!v6 || longLongValue > [v6 longLongValue])
        {
          v16 = [MEMORY[0x277CCABB0] numberWithLongLong:longLongValue];

          v6 = v16;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v7);
  }

  objc_autoreleasePoolPop(context);
  [(IMDCKAttachmentSyncController *)self _setNextDeleteAfterRow:v6];

  v17 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)_deleteAttachmentsWithRecordIDs:(id)ds completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  completionCopy = completion;
  if ([dsCopy count])
  {
    [(IMDCKAbstractSyncController *)self setBroadcastedSyncStateToDeleting];
    cKOperationFactory = [(IMDCKAttachmentSyncController *)self CKOperationFactory];
    v9 = [cKOperationFactory deleteAttachmentCKOperationUsingRecordIDstoDelete:dsCopy];

    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = sub_22B566474;
    v16 = &unk_278703858;
    selfCopy = self;
    v18 = completionCopy;
    [v9 setModifyRecordsCompletionBlock:&v13];
    [v9 setPerRecordSaveBlock:{&unk_283F19C88, v13, v14, v15, v16, selfCopy}];
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

    [(IMDCKAttachmentSyncController *)self _scheduleOperation:v9];
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

- (void)syncAttachmentDeletesToCloudKitWithActivity:(id)activity completion:(id)completion
{
  v52 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  completionCopy = completion;
  selfCopy = self;
  _ckUtilitiesInstance = [(IMDCKAttachmentSyncController *)self _ckUtilitiesInstance];
  LOBYTE(self) = [_ckUtilitiesInstance cloudKitSyncingEnabled];

  if (self)
  {
    v7 = [(IMDCKAttachmentSyncController *)selfCopy _copyRecordIDsToDeleteWithLimit:[(IMDCKAttachmentSyncController *)selfCopy _attachmentDeleteBatchSize]];
    if ([v7 count])
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v7 = v7;
      v9 = [v7 countByEnumeratingWithState:&v39 objects:v51 count:16];
      if (v9)
      {
        v10 = *v40;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v40 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v39 + 1) + 8 * i);
            v13 = [v7 objectForKey:v12];
            v14 = +[IMDMessageStore sharedInstance];
            v15 = [v14 isAttachmentReferencedByMessage:v12];

            v16 = v8;
            if (v15)
            {
              v17 = IMOSLoggingEnabled();
              v16 = v33;
              if (v17)
              {
                v18 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v46 = v12;
                  _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Attachment %@ was to be deleted, but is still being referenced. Fetching instead.", buf, 0xCu);
                }

                v16 = v33;
              }
            }

            [v16 addObject:v13];
          }

          v9 = [v7 countByEnumeratingWithState:&v39 objects:v51 count:16];
        }

        while (v9);
      }

      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = [v7 count];
          v21 = [v33 count];
          v22 = [v8 count];
          *buf = 134218496;
          v46 = v20;
          v47 = 2048;
          v48 = v21;
          v49 = 2048;
          v50 = v22;
          _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Got %lu recordIDs queued for delete processing which split sa %lu records to RE-fetch and  %lu to delete", buf, 0x20u);
        }
      }

      ckQueue = [(IMDCKAttachmentSyncController *)selfCopy ckQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B566C90;
      block[3] = &unk_278704B40;
      block[4] = selfCopy;
      v35 = v8;
      v38 = completionCopy;
      v36 = v33;
      v37 = activityCopy;
      v24 = v33;
      v25 = v8;
      dispatch_async(ckQueue, block);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "No pending messages to delete/fetch from CloudKit", buf, 2u);
        }
      }

      IMDAttachmentRecordClearDeleteTombStones();
      if (completionCopy)
      {
        completionCopy[2]();
      }
    }

    goto LABEL_32;
  }

  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Cloudkit sync is not enabled. Not deleting attachments", buf, 2u);
    }
  }

  v27 = completionCopy;
  if (completionCopy)
  {
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = sub_22B566C78;
    v43[3] = &unk_2787028D8;
    v44 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], v43);
    v7 = v44;
LABEL_32:

    v27 = completionCopy;
  }

  v29 = *MEMORY[0x277D85DE8];
}

@end