@interface IMDCKAttachmentSyncController
+ (id)sharedInstance;
- (BOOL)_attachmentZoneCreated;
- (BOOL)_deviceConditionsAllowsMessageSyncForCurrentBatchCount:(int64_t)a3 maxBatchCount:(int64_t)a4 activity:(id)a5;
- (BOOL)_deviceConditionsAllowsMessageSyncIgnoreFeatureEnabled:(BOOL)a3 activity:(id)a4;
- (BOOL)_fetchedAllChangesFromCloudKit;
- (BOOL)_kickOffWriteIfNeededForSyncType:(int64_t)a3 activity:(id)a4 completion:(id)a5;
- (BOOL)_shouldMarkAllAttachmentsAsNeedingSync;
- (BOOL)_shouldMarkAttachmentsAsNeedingReupload;
- (IMDCKAttachmentSyncController)init;
- (IMDCKAttachmentSyncController)initWithSyncTokenStore:(id)a3;
- (id)__databaseRequestForAttachmentsWithAssets;
- (id)_attachmentZoneID;
- (id)_attachmentZoneSalt;
- (id)_constructAttachmentRecordIDUsingTombStoneDictionary:(id)a3;
- (id)_copyRecordIDsToDeleteWithLimit:(unint64_t)a3;
- (id)_fetchAndPrepareRecordsToWrite:(BOOL *)a3;
- (id)_operationErrorForModifyingRecordCompletion:(id)a3;
- (id)_readNextDeleteAfterRow;
- (id)_recordsToProcessWithError:(id)a3 error:(id)a4;
- (id)_updateAttachmentGUIDIfNeededAndReturnTransfersToForceMarkAsSync:(id)a3 transfersToSyncRowIDs:(id)a4;
- (id)latestSyncTokenForSyncType:(int64_t)a3;
- (id)purgedAttachmentsForChat:(id)a3 services:(id)a4 limit:(int64_t)a5;
- (id)recordStore;
- (int)_resyncForDeleteRecoveryState;
- (int64_t)_numberOfBatchesOfAttachmentsToFetchInInitialSync;
- (int64_t)_numberOfMetadataBatchesOfAttachmentsToFetchInInitialSync;
- (unint64_t)purgedAttachmentsCountForChatsWithChatIdentifiers:(id)a3 services:(id)a4;
- (void)_deleteAttachmentsWithRecordIDs:(id)a3 completion:(id)a4;
- (void)_downloadAttachmentAssetsWithActivity:(id)a3 restoringAttachments:(BOOL)a4 retryCount:(unint64_t)a5 numAttachmentsDownloaded:(unint64_t)a6 transfers:(id)a7 completion:(id)a8;
- (void)_fetchAttachmentZoneChangesShouldWriteBackChanges:(BOOL)a3 desiredKeys:(int64_t)a4 syncType:(int64_t)a5 currentBatchCount:(int64_t)a6 maxBatchCount:(int64_t)a7 syncToken:(id)a8 activity:(id)a9 completionBlock:(id)a10;
- (void)_fetchAttachmentZoneRecords:(id)a3 desiredKeys:(int64_t)a4 ognSuffix:(id)a5 removeTombstones:(BOOL)a6 activity:(id)a7 completion:(id)a8;
- (void)_hasMarkedAllAttachmentsAsNeedingSync;
- (void)_initResyncForDeleteRecovery;
- (void)_kickOffAssetFetchForTransfersIfNeededWithActivity:(id)a3;
- (void)_kickOffWriteOnCKQueueWithActivity:(id)a3 completion:(id)a4;
- (void)_markAllFailedAttachmentsAsNeedingSync;
- (void)_markTransferAsNotBeingAbleToSync:(id)a3;
- (void)_markTransferAsNotBeingAbleToSyncUsingCKRecord:(id)a3;
- (void)_migrateSyncToken;
- (void)_needsToMarkAllAttachmentsAsNeedingSync;
- (void)_processAndValidateAttachmentRecordsEligibleForPurge:(id)a3 recordIDsToTransfers:(id)a4 capturedWithABC:(BOOL)a5 completion:(id)a6;
- (void)_processAssetFetchOperationCompletionBlock:(id)a3 removeTombstones:(BOOL)a4 operationID:(id)a5 error:(id)a6;
- (void)_processAssetFetchPerRecordCompletionBlock:(id)a3 recordID:(id)a4 error:(id)a5;
- (void)_processAssetFetchPerRecordProgressBlock:(id)a3 progress:(double)a4;
- (void)_processFetchRecordChangesCompleted:(id)a3 completionBlock:(id)a4;
- (void)_processModifyPerRecordCallBack:(id)a3 error:(id)a4;
- (void)_processModifyRecordCompletion:(id)a3 deletedRecordIDs:(id)a4 error:(id)a5 completionBlock:(id)a6;
- (void)_processRecordChanged:(id)a3;
- (void)_processRecordDeletion:(id)a3;
- (void)_processRecordZoneChangeTokenUpdated:(id)a3 zoneID:(id)a4 clienChangeToken:(id)a5 syncType:(int64_t)a6;
- (void)_processRecordZoneFetchCompletion:(id)a3 zoneID:(id)a4 clientChangeTokenData:(id)a5 moreComing:(BOOL)a6 shouldWriteBackChanges:(BOOL)a7 desiredKeys:(int64_t)a8 syncType:(int64_t)a9 error:(id)a10 currentBatchCount:(int64_t)a11 maxBatchCount:(int64_t)a12 activity:(id)a13 completionBlock:(id)a14;
- (void)_removeTransferFromiCloudBackupWithGuid:(id)a3;
- (void)_resetAttachmentSyncStateForRecord:(id)a3 toState:(int64_t)a4;
- (void)_scheduleOperation:(id)a3;
- (void)_setNextDeleteAfterRow:(id)a3;
- (void)_updateDeviceConditionsToCheckIfNeededForCurrentBatchCount:(int64_t)a3 maxBatchCount:(int64_t)a4;
- (void)_updateTransferUsingCKRecord:(id)a3 wasFetched:(BOOL)a4 dispatchToMain:(BOOL)a5;
- (void)_validateTransferFromCloudKit:(id)a3 localTransfer:(id)a4 validateCompletion:(id)a5;
- (void)_writeAttachmentsToCloudKitWithActivity:(id)a3 completionBlock:(id)a4;
- (void)_writeCKRecordsToAttachmentZone:(id)a3 activity:(id)a4 withCompletion:(id)a5;
- (void)acceptFileTransfer:(id)a3 completion:(id)a4;
- (void)acceptFileTransfers:(id)a3 completion:(id)a4;
- (void)clearLocalSyncState:(unint64_t)a3;
- (void)deleteAttachmentSyncToken;
- (void)deleteAttachmentZone;
- (void)deleteChatBotAttachmentSyncToken;
- (void)downloadAttachmentAssetsForChatIDs:(id)a3 services:(id)a4 style:(unsigned __int8)a5 completion:(id)a6;
- (void)fetchAttachmentDataForTransfers:(id)a3 highQuality:(BOOL)a4 perTransferProgress:(id)a5 activity:(id)a6 completion:(id)a7;
- (void)setLatestSyncToken:(id)a3 forSyncType:(int64_t)a4;
- (void)syncAttachmentDeletesToCloudKitWithActivity:(id)a3 completion:(id)a4;
- (void)syncAttachmentsWithSyncType:(int64_t)a3 deviceConditionsToCheck:(unint64_t)a4 activity:(id)a5 completionBlock:(id)a6;
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

- (IMDCKAttachmentSyncController)initWithSyncTokenStore:(id)a3
{
  v5 = a3;
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
    objc_storeStrong(&v6->_syncTokenStore, a3);
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
  v2 = [MEMORY[0x277D1A990] sharedInstance];
  [v2 setBool:0 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A28]];
}

- (BOOL)_shouldMarkAllAttachmentsAsNeedingSync
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
    v4 = [v5 getBoolFromDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A28]] ^ 1;
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
  v2 = [MEMORY[0x277D1A990] sharedInstance];
  [v2 setBool:1 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A28]];
}

- (int64_t)_numberOfBatchesOfAttachmentsToFetchInInitialSync
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
    v8 = [v7 objectForKey:@"ck-max-number-of-attachment-batches"];

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
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, " overriding max number of attachment batches to fetch %@", &v13, 0xCu);
        }
      }
    }

    else
    {
      v5 = 50;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)_shouldMarkAttachmentsAsNeedingReupload
{
  v2 = [MEMORY[0x277D1A990] sharedInstance];
  v3 = [v2 getValueFromDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D196C0]];

  if (v3)
  {
    v4 = MEMORY[0x277CBEAA8];
    v5 = v3;
    v6 = [v4 date];
    [v6 timeIntervalSinceDate:v5];
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
  v2 = [(IMDCKAttachmentSyncController *)self _shouldMarkAttachmentsAsNeedingReupload];
  v3 = IMOSLoggingEnabled();
  if (v2)
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

    v6 = [MEMORY[0x277CBEAA8] date];
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
  v3 = [(IMDCKAbstractSyncController *)self ckUtilities];
  v4 = [v3 isInCloudKitDemoMode];

  if (v4)
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

    v6 = 1;
  }

  else
  {
    v7 = [(IMDCKAbstractSyncController *)self ckUtilities];
    v8 = [v7 serverBag];
    v9 = [v8 objectForKey:@"ck-max-number-of-attachment-metadata-batches"];

    if (v9 && [v9 integerValue] >= 1)
    {
      v6 = [v9 integerValue];
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
          v14 = 138412290;
          v15 = v11;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "overriding max number of attachment metadata batches to fetch %@", &v14, 0xCu);
        }
      }
    }

    else
    {
      v6 = 5;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)syncAttachmentsWithSyncType:(int64_t)a3 deviceConditionsToCheck:(unint64_t)a4 activity:(id)a5 completionBlock:(id)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v36 = a3;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Initiating attachment syncing with type %ld", buf, 0xCu);
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B559F24;
  aBlock[3] = &unk_2787043F0;
  v33 = v11;
  v34 = a3;
  aBlock[4] = self;
  v13 = v11;
  v14 = _Block_copy(aBlock);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_22B55A0E4;
  v29[3] = &unk_278704418;
  v29[4] = self;
  v15 = v10;
  v30 = v15;
  v16 = v14;
  v31 = v16;
  v17 = _Block_copy(v29);
  [(IMDCKAbstractSyncController *)self resetRecordCounts];
  v18 = [(IMDCKAttachmentSyncController *)self ckQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_22B55A270;
  v23[3] = &unk_278704468;
  v27 = a3;
  v28 = a4;
  v23[4] = self;
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v19 = v17;
  v20 = v16;
  v21 = v15;
  dispatch_async(v18, v23);

  v22 = *MEMORY[0x277D85DE8];
}

- (void)fetchAttachmentDataForTransfers:(id)a3 highQuality:(BOOL)a4 perTransferProgress:(id)a5 activity:(id)a6 completion:(id)a7
{
  v10 = a4;
  v34 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = @"NO";
      if (v10)
      {
        v17 = @"YES";
      }

      *buf = 138412546;
      v31 = v12;
      v32 = 2112;
      v33 = v17;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "fetchAttachmentDataForTransferGUIDs %@ HQ %@", buf, 0x16u);
    }
  }

  v18 = [(IMDCKAttachmentSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B55A7F4;
  block[3] = &unk_2787044D8;
  v25 = v12;
  v26 = self;
  v28 = v13;
  v29 = v15;
  v27 = v14;
  v19 = v14;
  v20 = v15;
  v21 = v13;
  v22 = v12;
  dispatch_async(v18, block);

  v23 = *MEMORY[0x277D85DE8];
}

- (void)acceptFileTransfer:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = v6;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "accepting file transfer %@", buf, 0xCu);
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B55AF28;
  aBlock[3] = &unk_278704500;
  v9 = v6;
  v23 = v9;
  v10 = _Block_copy(aBlock);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_22B55B0B8;
  v19 = &unk_278704528;
  v20 = v9;
  v21 = v7;
  v11 = v9;
  v12 = v7;
  v13 = _Block_copy(&v16);
  v24 = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:{1, v16, v17, v18, v19}];
  [(IMDCKAttachmentSyncController *)self fetchAttachmentDataForTransfers:v14 highQuality:0 perTransferProgress:v10 activity:0 completion:v13];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)acceptFileTransfers:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "accepting file transfers %@", buf, 0xCu);
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B55B2BC;
  aBlock[3] = &unk_278704550;
  v13 = v7;
  v9 = v7;
  v10 = _Block_copy(aBlock);
  [(IMDCKAttachmentSyncController *)self fetchAttachmentDataForTransfers:v6 highQuality:0 perTransferProgress:0 activity:0 completion:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_downloadAttachmentAssetsWithActivity:(id)a3 restoringAttachments:(BOOL)a4 retryCount:(unint64_t)a5 numAttachmentsDownloaded:(unint64_t)a6 transfers:(id)a7 completion:(id)a8
{
  v57 = *MEMORY[0x277D85DE8];
  v30 = a3;
  v14 = a7;
  v32 = a8;
  [(IMDCKAttachmentSyncController *)self setAssetDownloadInProgress:1];
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = a6;
  v33 = v14;
  if ([v14 count])
  {
    v34 = v14;
  }

  else
  {
    v34 = [(IMDCKAttachmentSyncController *)self __databaseRequestForAttachmentsWithAssets];
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v34 count];
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
      *buf = 134218242;
      v54 = v16;
      v55 = 2112;
      v56 = v17;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Starting attachment download batch with %lu items retries %@", buf, 0x16u);
    }
  }

  if ([v34 count])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_22B55B910;
    aBlock[3] = &unk_2787045A0;
    v45 = &v48;
    v18 = v34;
    v40 = v18;
    v41 = v14;
    v42 = self;
    v46 = a5;
    v47 = a4;
    v19 = v31;
    v43 = v19;
    v44 = v32;
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
          v26 = [(IMDCKAttachmentSyncController *)self fileTransferCenter];
          v27 = [v25 guid];
          [v26 addTransfer:v25 forGUID:v27];
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
    if (v32)
    {
      (*(v32 + 2))(v32, 1, v49[3], 0);
    }
  }

  _Block_object_dispose(&v48, 8);
  v29 = *MEMORY[0x277D85DE8];
}

- (id)purgedAttachmentsForChat:(id)a3 services:(id)a4 limit:(int64_t)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v23 = a4;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v30 = v22;
      v31 = 2112;
      v32 = v23;
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
          v18 = [v16 rowID];
          if (IMOSLoggingEnabled())
          {
            v19 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = 134217984;
              v30 = v18;
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

- (unint64_t)purgedAttachmentsCountForChatsWithChatIdentifiers:(id)a3 services:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v16 = 138412546;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "purgedAttachmentsCountForChat Request to get count of purged assets for chats %@ on services %@", &v16, 0x16u);
    }
  }

  v8 = IMDAttachmentRecordCopyPurgedAttachmentsCountForChatIdentifiersOnServices();
  v9 = v8;
  if (v8)
  {
    v10 = [v8 firstObject];
    v11 = [v10 unsignedIntegerValue];

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v16 = 134217984;
        v17 = v11;
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

    v11 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)downloadAttachmentAssetsForChatIDs:(id)a3 services:(id)a4 style:(unsigned __int8)a5 completion:(id)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v24 = a3;
  v23 = a4;
  v19 = a6;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v35 = v24;
      v36 = 2112;
      v37 = v23;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Request to download purged assets for chats %@ on services %@", buf, 0x16u);
    }
  }

  v21 = [MEMORY[0x277D18A10] sharedInstanceForBagType:{1, v19}];
  v25 = [v21 objectForKey:@"ck-client-download-purged-attachments-batch-size"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v25 intValue] >= 1)
  {
    v9 = [v25 intValue];
  }

  else
  {
    v9 = 10;
  }

  [(IMDCKAttachmentSyncController *)self purgedAttachmentsForChat:v24 services:v23 limit:v9];
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
  v27 = v24;
  v28 = v20;
  v16 = v20;
  v17 = v24;
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
          v11 = [v9 rowID];
          if (IMOSLoggingEnabled())
          {
            v12 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              *buf = 134217984;
              v21 = v11;
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

- (void)_updateDeviceConditionsToCheckIfNeededForCurrentBatchCount:(int64_t)a3 maxBatchCount:(int64_t)a4
{
  v15 = *MEMORY[0x277D85DE8];
  if (![(IMDCKAttachmentSyncController *)self deviceConditionsToCheck])
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
      [(IMDCKAttachmentSyncController *)self setDeviceConditionsToCheck:1];
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
  [(IMDCKAttachmentSyncController *)self _updateDeviceConditionsToCheckIfNeededForCurrentBatchCount:a3 maxBatchCount:a4];
  LOBYTE(a4) = [(IMDCKAttachmentSyncController *)self _deviceConditionsAllowsMessageSyncWithActivity:v8];

  return a4;
}

- (BOOL)_deviceConditionsAllowsMessageSyncIgnoreFeatureEnabled:(BOOL)a3 activity:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(IMDCKAttachmentSyncController *)self _ckUtilitiesInstance];
  v8 = [v7 cloudKitSyncingEnabled];

  if (a3 || v8)
  {
    v10 = [(IMDCKAttachmentSyncController *)self _ckUtilitiesInstance];
    v9 = [v10 iCloudAccountMatchesiMessageAccount];

    if (!v6)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v9 = 0;
    if (!v6)
    {
      goto LABEL_16;
    }
  }

  if ((v9 & xpc_activity_should_defer(v6)) == 1)
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

    if (!xpc_activity_set_state(v6, 3) && IMOSLoggingEnabled())
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
  if (!v9)
  {
    goto LABEL_34;
  }

  v13 = [(IMDCKAttachmentSyncController *)self deviceConditionsToCheck];
  if (v6 || !v13)
  {
    goto LABEL_34;
  }

  v14 = [(IMDCKAttachmentSyncController *)self deviceConditionsToCheck];
  if (v14 == 2)
  {
    v15 = [(IMDCKAttachmentSyncController *)self _ckUtilitiesInstance];
    v16 = [v15 isDeviceOnWifi];
    goto LABEL_23;
  }

  if (v14 == 1)
  {
    v15 = [(IMDCKAttachmentSyncController *)self _ckUtilitiesInstance];
    v16 = [v15 deviceConditionsAllowPeriodicSync];
LABEL_23:
    v17 = v16;

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
    LOBYTE(v9) = 0;
  }

LABEL_34:

  v21 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)_attachmentZoneID
{
  v2 = [(IMDCKAttachmentSyncController *)self recordZoneManager];
  v3 = [v2 attachmentRecordZoneID];

  return v3;
}

- (id)_attachmentZoneSalt
{
  v2 = [(IMDCKAttachmentSyncController *)self _recordKeyManagerSharedInstance];
  v3 = [v2 cachedSalt];

  return v3;
}

- (void)_scheduleOperation:(id)a3
{
  v3 = a3;
  v5 = +[IMDCKDatabaseManager sharedInstance];
  v4 = [v5 truthDatabase];
  [v4 addOperation:v3];
}

- (id)_updateAttachmentGUIDIfNeededAndReturnTransfersToForceMarkAsSync:(id)a3 transfersToSyncRowIDs:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v25 = a4;
  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = v5;
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
        v13 = [v12 guid];
        v14 = +[IMDAttachmentStore sharedInstance];
        v15 = [v14 updateTemporaryTransferGUIDsIfNeeded:v12 transfersToSync:v6];

        if (v15)
        {
          if (IMOSLoggingEnabled())
          {
            v16 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v17 = [v12 guid];
              *buf = v22;
              v31 = v13;
              v32 = 2112;
              v33 = v17;
              _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Fixed up guid for transfer old guid: %@ new guid: %@", buf, 0x16u);
            }
          }
        }

        else if (IMFileTransferGUIDIsTemporary())
        {
          v18 = [v25 objectAtIndexedSubscript:v9];
          if (IMOSLoggingEnabled())
          {
            v19 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = v22;
              v31 = v13;
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

- (id)_fetchAndPrepareRecordsToWrite:(BOOL *)a3
{
  v77 = *MEMORY[0x277D85DE8];
  v5 = [(IMDCKAttachmentSyncController *)self _numberOfAttachmentsToWriteUp];
  v6 = IMDAttachmentRecordCopyAttachmentsForQueryWithLimit();
  v7 = [v6 count];
  if (a3)
  {
    *a3 = v7 < v5;
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
              v17 = [v13 rowID];
              *buf = 134217984;
              *&buf[4] = v17;
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
          v34 = [(IMDCKAttachmentSyncController *)self recordZoneManager];
          v35 = [v34 attachmentRecordZoneID];
          v36 = [(IMDCKAttachmentSyncController *)self _attachmentZoneSalt];
          v37 = [v33 copyCKRecordRepresentationWithZoneID:v35 salt:v36];

          if (v37)
          {
            [v28 addObject:v37];
          }
        }

        v30 = [v29 countByEnumeratingWithState:&v50 objects:v70 count:16];
      }

      while (v30);
    }

    v38 = [(IMDCKAbstractSyncController *)self ckUtilities];
    v39 = [v38 newfilteredArrayRemovingCKRecordDupes:v28];

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

- (void)_writeAttachmentsToCloudKitWithActivity:(id)a3 completionBlock:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Writing up a batch of attachments to cloudKit", buf, 2u);
    }
  }

  if ([(IMDCKAttachmentSyncController *)self _deviceConditionsAllowsMessageSyncForCurrentBatchCount:1 maxBatchCount:-1 activity:v6])
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
          v14 = [(IMDCKAttachmentSyncController *)self _numberOfAttachmentsToWriteUp];
          *buf = 134218240;
          v33 = v13;
          v34 = 2048;
          v35 = v14;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "*** This is the last batch of attachments to write up. Number of records to write %lu < max batch size %lu", buf, 0x16u);
        }
      }

      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = sub_22B55E678;
      v25[3] = &unk_278704640;
      v29 = v7;
      v30 = v11;
      v26 = v9;
      v27 = self;
      v28 = v6;
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
            v19 = [(IMDCKAttachmentSyncController *)self _numberOfAttachmentsToWriteUp];
            *buf = 134217984;
            v33 = v19;
            _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Failed to write any of these %lu dirty attachments, looks like there's nothing left to do", buf, 0xCu);
          }
        }

        if (v7)
        {
          (*(v7 + 2))(v7, 0);
        }
      }

      else
      {
        if (v17)
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = [(IMDCKAttachmentSyncController *)self _numberOfAttachmentsToWriteUp];
            *buf = 134217984;
            v33 = v21;
            _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Failed to write any of these %lu dirty attachments, looking for more attachments to write", buf, 0xCu);
          }
        }

        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = sub_22B55E998;
        v23[3] = &unk_278702930;
        v24 = v7;
        [(IMDCKAttachmentSyncController *)self _kickOffWriteOnCKQueueWithActivity:v6 completion:v23];
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

    if (v7)
    {
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D19CF0] code:4 userInfo:0];
      (*(v7 + 2))(v7, v16);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_fetchAttachmentZoneRecords:(id)a3 desiredKeys:(int64_t)a4 ognSuffix:(id)a5 removeTombstones:(BOOL)a6 activity:(id)a7 completion:(id)a8
{
  v40 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a5;
  v31 = a7;
  v16 = a8;
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v39 = v14;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Fetching assets for %@", buf, 0xCu);
    }
  }

  v18 = v15;
  if (v15)
  {
    goto LABEL_8;
  }

  if ([(IMDCKAttachmentSyncController *)self isDoingDeleteRecoverySync])
  {
    v18 = @"-DRR";
LABEL_8:
    v19 = [@"OptimizeRedownload" stringByAppendingString:{v18, v31}];
    goto LABEL_9;
  }

  v19 = @"OptimizeRedownload";
LABEL_9:
  v20 = [(IMDCKAttachmentSyncController *)self CKOperationFactory];
  v21 = [v20 fetchAttachmentZoneRecords:v14 desiredKeys:a4 operationGroupName:v19 activity:v32];

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
  v22 = [v21 operationID];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_22B55ED1C;
  v33[3] = &unk_2787046B8;
  v35 = a6;
  v33[4] = self;
  v34 = v22;
  v23 = v22;
  [v21 setFetchRecordsCompletionBlock:v33];
  if (v16)
  {
    v24 = [(IMDCKAttachmentSyncController *)self completionBlocksForAssetFetchOperations];
    v25 = [v16 copy];
    v26 = _Block_copy(v25);
    v27 = [v21 operationID];
    [v24 setObject:v26 forKey:v27];
  }

  v28 = +[IMDCKDatabaseManager sharedInstance];
  v29 = [v28 manateeDataBase];
  [v29 addOperation:v21];

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
  v2 = [MEMORY[0x277D1A990] sharedInstance];
  v3 = [v2 getValueFromDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19768]];
  v4 = [v3 intValue];

  return v4;
}

- (void)_initResyncForDeleteRecovery
{
  v3 = [(IMDCKAttachmentSyncController *)self _resyncForDeleteRecoveryState];
  if (v3 <= 0)
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
    if (v3 >= 1 && IMOSLoggingEnabled())
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

- (void)_fetchAttachmentZoneChangesShouldWriteBackChanges:(BOOL)a3 desiredKeys:(int64_t)a4 syncType:(int64_t)a5 currentBatchCount:(int64_t)a6 maxBatchCount:(int64_t)a7 syncToken:(id)a8 activity:(id)a9 completionBlock:(id)a10
{
  v68 = *MEMORY[0x277D85DE8];
  v40 = a8;
  v45 = a9;
  v42 = a10;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:a6];
      v16 = [MEMORY[0x277CCABB0] numberWithInteger:a7];
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
      *buf = 138413314;
      v59 = v15;
      v60 = 2112;
      v61 = v16;
      v62 = 2112;
      v63 = v17;
      v64 = 2112;
      v65 = &unk_283F4E540;
      v66 = 2112;
      v67 = v40;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Fetching attachment batch count %@ (max: %@) syncType %@ batch size %@ token %@", buf, 0x34u);
    }
  }

  v18 = @"AttachmentSync";
  if (a5 == 1)
  {
    v18 = @"PeriodicSync";
  }

  if (!a5)
  {
    v18 = @"FullRestore";
  }

  v44 = v18;
  if ([(IMDCKAttachmentSyncController *)self isDoingDeleteRecoverySync])
  {
    v44 = [v44 stringByAppendingString:@"-DRR"];
  }

  v20 = a7 >= 0 && a6 >= a7 && a5 == 0;
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
  v24 = [v23 canWriteFileOfEstimatedSize:819200 refreshCachedValue:a6 % 0x64uLL == 0];

  v25 = a4;
  if (a5 == 1)
  {
    v25 = a4;
    if (![(IMDCKAttachmentSyncController *)self _fetchedAllChangesFromCloudKit])
    {
      v26 = +[IMDCKCacheDeleteManager sharedInstance];
      v27 = [v26 shouldDownloadAssetsOfSize:819200 refreshCachedValue:a6 % 0x64uLL == 0];

      v25 = a4;
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

        v25 = 1;
      }
    }
  }

  if ((v41 | [(IMDCKAttachmentSyncController *)self _deviceConditionsAllowsMessageSyncForCurrentBatchCount:a6 maxBatchCount:a7 activity:v45]& v24 ^ 1))
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

    if (v42)
    {
      v42[2]();
    }
  }

  else
  {
    [(IMDCKAbstractSyncController *)self setBroadcastedSyncStateToDownloading];
    v34 = [(IMDCKAttachmentSyncController *)self CKOperationFactory];
    v35 = [(IMDCKAttachmentSyncController *)self _attachmentZoneID];
    v33 = [v34 fetchAttachmentZoneChangesCKOperationUsingToken:v40 zoneID:v35 resultsLimit:20 desiredKeys:v25 operationGroupName:v44 activity:v45];

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
    v55 = a3;
    v48[4] = self;
    v51 = a4;
    v52 = a5;
    v53 = a6;
    v54 = a7;
    v49 = v45;
    v36 = v42;
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

- (void)_writeCKRecordsToAttachmentZone:(id)a3 activity:(id)a4 withCompletion:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IMDCKAttachmentSyncController *)self _fetchedAllChangesFromCloudKit];
  v12 = @"BackfillAttachmentSync";
  if (v11)
  {
    v12 = @"PeriodicAttachmentSync";
  }

  v13 = v12;
  if ([(IMDCKAttachmentSyncController *)self isDoingDeleteRecoverySync])
  {
    v14 = [(__CFString *)v13 stringByAppendingString:@"-DRR"];

    v13 = v14;
  }

  v15 = [(IMDCKAttachmentSyncController *)self CKOperationFactory];
  v16 = [v15 saveAttachmentsCKOperationUsingRecordsToSave:v8 operationGroupName:v13 activity:v9];

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
  v17 = v10;
  v22 = v17;
  [v16 setModifyRecordsCompletionBlock:v21];
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
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
  v4 = [(IMDCKAttachmentSyncController *)self recordZoneManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22B55FCD0;
  v11[3] = &unk_278703880;
  v13 = &v14;
  v5 = v3;
  v12 = v5;
  [v4 createAttachmentZoneIfNeededWithCompletionBlock:v11];

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
  v3 = [(IMDCKAbstractSyncController *)self ckUtilities];
  [v3 reportMOCDebuggingErrorWithString:@"ChangeTokenExpired" internalOnly:1 initialSync:0 reasonString:@"ChangeTokenExpired"];

  [(IMDCKAttachmentSyncController *)self setLatestSyncToken:0 forSyncType:1];

  [(IMDCKAttachmentSyncController *)self setLatestSyncToken:0 forSyncType:5];
}

- (void)deleteChatBotAttachmentSyncToken
{
  v2 = [(IMDCKAttachmentSyncController *)self syncTokenStore];
  [v2 persistToken:0 forKey:@"chatBotAttachmentChangeToken"];
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
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Kicking off an attachment write after fetching messages", buf, 2u);
    }
  }

  v9 = [(IMDCKAttachmentSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B55FFDC;
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
  v10 = [(IMDCKAttachmentSyncController *)self _ckUtilitiesInstance];
  LODWORD(a3) = [v10 shouldKickOffWriteForSyncType:a3];

  if (!a3)
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

    if (v9)
    {
      v9[2](v9, 1, 0);
    }

    goto LABEL_16;
  }

  v11 = [(IMDCKAttachmentSyncController *)self _ckUtilitiesInstance];
  v12 = [v11 isLocalCachedSaltPresent];

  if (!v12)
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

      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D19CF0] code:7 userInfo:0];
      (v9)[2](v9, 0, v16);
    }

LABEL_16:
    v13 = 0;
    goto LABEL_17;
  }

  [(IMDCKAttachmentSyncController *)self _kickOffWriteOnCKQueueWithActivity:v8 completion:v9];
  v13 = 1;
LABEL_17:

  return v13;
}

- (void)_processRecordZoneFetchCompletion:(id)a3 zoneID:(id)a4 clientChangeTokenData:(id)a5 moreComing:(BOOL)a6 shouldWriteBackChanges:(BOOL)a7 desiredKeys:(int64_t)a8 syncType:(int64_t)a9 error:(id)a10 currentBatchCount:(int64_t)a11 maxBatchCount:(int64_t)a12 activity:(id)a13 completionBlock:(id)a14
{
  v14 = a6;
  v76 = *MEMORY[0x277D85DE8];
  v46 = a3;
  v43 = a4;
  v44 = a5;
  v18 = a10;
  v45 = a13;
  v19 = a14;
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = @"NO";
      *buf = 138413314;
      v67 = v43;
      if (v14)
      {
        v21 = @"YES";
      }

      v68 = 2112;
      v69 = v46;
      v70 = 2112;
      v71 = v44;
      v72 = 2112;
      v73 = v21;
      v74 = 2112;
      v75 = v18;
      _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "recordZoneChangeTokensUpdatedBlock recordZoneID %@ serverChangeToken %@ clientChangeToken %@ moreComing %@ recordZoneError %@", buf, 0x34u);
    }
  }

  v22 = [(IMDCKAbstractSyncController *)self errorAnalyzer];
  v23 = [v22 errorIndicatesZoneNotCreated:v18];

  v24 = [(IMDCKAbstractSyncController *)self errorAnalyzer];
  v25 = [v24 errorIndicatesUserDeletedZone:v18];

  v39 = a12;
  if (v18)
  {
    v26 = [(IMDCKAbstractSyncController *)self errorAnalyzer];
    v27 = [v26 CKPartialError:v18 hasErrorCode:&unk_283F4E558];

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

      [(IMDCKAttachmentSyncController *)self clearLocalSyncState:17, a12];
      if (v19)
      {
LABEL_38:
        v19[2](v19, 0, v18);
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
            v67 = v18;
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
          v69 = v18;
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

        [(IMDCKAttachmentSyncController *)self clearLocalSyncState:3, a12];
        v34 = [(IMDCKAbstractSyncController *)self ckUtilities];
        [v34 resetLastSyncDate];
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

      v36 = [(IMDCKAttachmentSyncController *)self ckQueue];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = sub_22B560E50;
      v47[3] = &unk_278704838;
      v54 = a7;
      v47[4] = self;
      v50 = a8;
      v51 = a9;
      v52 = a11;
      v53 = v40;
      v48 = v45;
      v49 = v19;
      dispatch_async(v36, v47);
    }
  }

  else
  {
    v29 = [(IMDCKAttachmentSyncController *)self ckQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B5608DC;
    block[3] = &unk_278704810;
    v56 = v46;
    v57 = self;
    v64 = v14;
    v65 = a7;
    v60 = a9;
    v61 = a8;
    v62 = a11;
    v63 = a12;
    v58 = v45;
    v59 = v19;
    dispatch_async(v29, block);
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_processModifyPerRecordCallBack:(id)a3 error:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v6 recordID];
      v10 = [v6 recordChangeTag];
      *buf = 138412802;
      v46 = v9;
      v47 = 2112;
      v48 = v10;
      v49 = 2112;
      v50 = v7;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Attachment per-record completion %@ changeTag %@ error %@", buf, 0x20u);
    }
  }

  if (v7 && [v7 code] != 16)
  {
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = sub_22B561754;
    v41[3] = &unk_278702FF0;
    v41[4] = self;
    dispatch_sync(MEMORY[0x277D85CD0], v41);
    if ([v7 code] == 14)
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

      v15 = [(IMDCKAttachmentSyncController *)self _ckUtilitiesInstance];
      v16 = [v15 extractServerRecordFromCKServerErrorRecordChanged:v7];

      v17 = [(IMDCKAttachmentSyncController *)self ckQueue];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = sub_22B561764;
      v37[3] = &unk_2787038F8;
      v38 = v6;
      v39 = v16;
      v40 = self;
      v18 = v16;
      dispatch_sync(v17, v37);
    }

    else if ([v7 code] == 12 || objc_msgSend(v7, "code") == 35)
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

      v20 = [(IMDCKAttachmentSyncController *)self ckQueue];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = sub_22B561A60;
      v35[3] = &unk_278702FA0;
      v35[4] = self;
      v36 = v6;
      dispatch_sync(v20, v35);
    }

    else if ([v7 code] == 11)
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

      v22 = [(IMDCKAttachmentSyncController *)self ckQueue];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = sub_22B561A6C;
      v33[3] = &unk_278702FA0;
      v33[4] = self;
      v34 = v6;
      dispatch_sync(v22, v33);
    }

    else
    {
      v23 = [v7 code] == 26;
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

        v26 = [(IMDCKAttachmentSyncController *)self ckQueue];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = sub_22B561A7C;
        v31[3] = &unk_278702FA0;
        v31[4] = self;
        v32 = v6;
        dispatch_sync(v26, v31);
      }

      else
      {
        if (v24)
        {
          v27 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v46 = v7;
            _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "_writeCKRecordsToAttachmentZone perRecordCompletionBlock encountered an error.  Will try this record again on next sync. %@", buf, 0xCu);
          }
        }

        v28 = [(IMDCKAttachmentSyncController *)self ckQueue];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = sub_22B561A8C;
        v29[3] = &unk_278702FA0;
        v29[4] = self;
        v30 = v6;
        dispatch_sync(v28, v29);
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

    v12 = [(IMDCKAttachmentSyncController *)self ckQueue];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = sub_22B561740;
    v42[3] = &unk_278702FA0;
    v42[4] = self;
    v43 = v6;
    dispatch_sync(v12, v42);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_processFetchRecordChangesCompleted:(id)a3 completionBlock:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "_processFetchRecordChangesCompleted error %@", buf, 0xCu);
    }
  }

  if (v6)
  {
    v9 = [(IMDCKAbstractSyncController *)self errorAnalyzer];
    v10 = [v9 errorIndicatesZoneNotCreated:v6];

    if (v7)
    {
      v11 = v10;
    }

    else
    {
      v11 = 1;
    }

    if ((v11 & 1) == 0)
    {
      v12 = [(IMDCKAttachmentSyncController *)self ckQueue];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = sub_22B561C48;
      v14[3] = &unk_2787028B0;
      v16 = v7;
      v15 = v6;
      dispatch_async(v12, v14);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_processRecordDeletion:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "_processRecordDeletion deleted record %@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_processRecordChanged:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 recordID];
      v7 = [MEMORY[0x277D1A9C0] transferGUIDOfRecord:v4];
      *buf = 138412546;
      v15 = v6;
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
  v8 = [(IMDCKAttachmentSyncController *)self ckQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22B561F44;
  v11[3] = &unk_278702FA0;
  v11[4] = self;
  v12 = v4;
  v9 = v4;
  dispatch_sync(v8, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_processRecordZoneChangeTokenUpdated:(id)a3 zoneID:(id)a4 clienChangeToken:(id)a5 syncType:(int64_t)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v21 = v11;
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "recordZoneChangeTokensUpdatedBlock recordZoneID %@ serverChangeToken %@ clientChangeToken %@", buf, 0x20u);
    }
  }

  v14 = [(IMDCKAttachmentSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B5620FC;
  block[3] = &unk_278703DE8;
  block[4] = self;
  v18 = v10;
  v19 = a6;
  v15 = v10;
  dispatch_sync(v14, block);

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_operationErrorForModifyingRecordCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:{&unk_283F4E570, &unk_283F4E588, &unk_283F4E5A0, &unk_283F4E5B8, &unk_283F4E5D0, &unk_283F4E5E8, 0}];
  v6 = [(IMDCKAbstractSyncController *)self errorAnalyzer];
  v7 = [v6 CKPartialError:v4 onlyHasErrorCodes:v5];

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
    v9 = v4;
  }

  return v9;
}

- (void)_processModifyRecordCompletion:(id)a3 deletedRecordIDs:(id)a4 error:(id)a5 completionBlock:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
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
      v24 = v12;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "_processModifyRecordCompletion error: %@", buf, 0xCu);
    }
  }

  v15 = [(IMDCKAttachmentSyncController *)self _operationErrorForModifyingRecordCompletion:v12];

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
      *buf = 138412546;
      v24 = v17;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Number of records saved %@ with error %@", buf, 0x16u);
    }
  }

  if (v13)
  {
    v18 = [(IMDCKAttachmentSyncController *)self ckQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_22B5624C4;
    v20[3] = &unk_2787028B0;
    v22 = v13;
    v21 = v15;
    dispatch_async(v18, v20);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_processAssetFetchPerRecordProgressBlock:(id)a3 progress:(double)a4
{
  v6 = a3;
  v7 = [(IMDCKAttachmentSyncController *)self perTransferProgress];
  if (v7)
  {
    v8 = [(IMDCKAttachmentSyncController *)self recordIDToTransferMap];
    v9 = [v8 objectForKey:v6];

    if (v9)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B5625DC;
      block[3] = &unk_278704860;
      v12 = v7;
      v11 = v9;
      v13 = a4;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

- (void)_processAssetFetchPerRecordCompletionBlock:(id)a3 recordID:(id)a4 error:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IMDCKAttachmentSyncController *)self recordIDToTransferMap];
  v12 = [v11 objectForKey:v9];

  if (v12)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v12 guid];
        *buf = 138412546;
        v24 = v14;
        v25 = 2112;
        v26 = v10;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Asset fetch complete for %@ error %@", buf, 0x16u);
      }
    }

    v15 = [(IMDCKAttachmentSyncController *)self perTransferProgress];
    v16 = v15;
    if (v15)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B56282C;
      block[3] = &unk_278702CC8;
      v22 = v15;
      v20 = v12;
      v21 = v10;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    if (v10 && (CKCanRetryForError() & 1) == 0)
    {
      v17 = +[IMDFileTransferCenter sharedInstance];
      [v17 markTransferAsNotSuccessfullyDownloadedFromCloud:v12];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_processAssetFetchOperationCompletionBlock:(id)a3 removeTombstones:(BOOL)a4 operationID:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a5;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = sub_22B4D7670;
  v21[4] = sub_22B4D7890;
  v12 = a6;
  v22 = v12;
  v13 = [(IMDCKAttachmentSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B5629C0;
  block[3] = &unk_2787048D8;
  block[4] = self;
  v17 = v10;
  v20 = a4;
  v18 = v11;
  v19 = v21;
  v14 = v11;
  v15 = v10;
  dispatch_sync(v13, block);

  _Block_object_dispose(v21, 8);
}

- (id)_recordsToProcessWithError:(id)a3 error:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6 && [v6 code] != 2)
  {
    v9 = 0;
  }

  else
  {
    v8 = [v5 allKeys];
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v7)
    {
      v10 = [v7 userInfo];
      v11 = *MEMORY[0x277CBBFB0];
      v12 = [v10 objectForKey:*MEMORY[0x277CBBFB0]];

      if (v12)
      {
        v13 = [v7 userInfo];
        v14 = [v13 objectForKey:v11];
        v15 = [v14 allKeys];

        v16 = [v8 arrayByExcludingObjectsInArray:v15];

        v8 = v16;
      }
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v17 = v8;
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

          v22 = [v5 objectForKey:{*(*(&v25 + 1) + 8 * v21), v25}];
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

- (void)_removeTransferFromiCloudBackupWithGuid:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[IMDAttachmentStore sharedInstance];
  v5 = [v4 attachmentWithGUID:v3];

  if (v5 && [v5 cloudKitSyncState] == 1)
  {
    v6 = [v5 localPath];
    v13 = 0;
    if (v6 && ([MEMORY[0x277CCAA00] defaultManager], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "fileExistsAtPath:isDirectory:", v6, &v13), v7, v8))
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v15 = v6;
          v16 = 2112;
          v17 = v3;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Removing icloud backup attribute for path '%@' for %@ from iCloud backups", buf, 0x16u);
        }
      }

      v10 = +[IMDCKBackupController sharedInstance];
      [v10 removePathFromiCloudBackup:v6];
    }

    else if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v15 = v6;
        v16 = 2112;
        v17 = v3;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Attachment at path '%@' for %@ not found, NOT removing from iCloud backups", buf, 0x16u);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_updateTransferUsingCKRecord:(id)a3 wasFetched:(BOOL)a4 dispatchToMain:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
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
  v9 = v8;
  v21 = v6;
  v20 = &v28;
  v17 = v9;
  v18 = self;
  v10 = _Block_copy(aBlock);
  v11 = v10;
  if (v5)
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

    v14 = [(IMDCKAttachmentSyncController *)self downloadAssetsForTransferGUIDs];
    [v14 addObject:v23[5]];
  }

  if (v6)
  {
    [MEMORY[0x277D1A9C0] cleanUpAssetsOnDiskForRecord:v9];
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_kickOffAssetFetchForTransfersIfNeededWithActivity:(id)a3
{
  v4 = a3;
  v5 = [(IMDCKAttachmentSyncController *)self ckQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B563E50;
  v7[3] = &unk_278702FA0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_markTransferAsNotBeingAbleToSync:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B5642D0;
  block[3] = &unk_278702FF0;
  v6 = v3;
  v4 = v3;
  dispatch_sync(MEMORY[0x277D85CD0], block);
}

- (void)_markTransferAsNotBeingAbleToSyncUsingCKRecord:(id)a3
{
  v3 = [MEMORY[0x277D1A9C0] transferGUIDOfRecord:a3];
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

- (void)_resetAttachmentSyncStateForRecord:(id)a3 toState:(int64_t)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B5644BC;
  v7[3] = &unk_278704970;
  v8 = v5;
  v9 = a4;
  v6 = v5;
  dispatch_sync(MEMORY[0x277D85CD0], v7);
}

- (void)_migrateSyncToken
{
  v2 = [(IMDCKAttachmentSyncController *)self syncTokenStore];
  [v2 migrateKey:@"attachmentZoneChangeToken" fromDatabase:@"/var/mobile/Library/SMS/CloudKitMetaData/AttachmentSyncZoneMetaData.db"];
}

- (void)setLatestSyncToken:(id)a3 forSyncType:(int64_t)a4
{
  v6 = a3;
  v8 = [(IMDCKAttachmentSyncController *)self syncTokenStore];
  v7 = [(IMDCKAttachmentSyncController *)self _changeTokenKeyForSyncType:a4];
  [v8 persistToken:v6 forKey:v7];
}

- (id)latestSyncTokenForSyncType:(int64_t)a3
{
  v5 = [(IMDCKAttachmentSyncController *)self syncTokenStore];
  v6 = [(IMDCKAttachmentSyncController *)self _changeTokenKeyForSyncType:a3];
  v7 = [v5 tokenForKey:v6];

  return v7;
}

- (void)deleteAttachmentZone
{
  v3 = [(IMDCKAttachmentSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B564700;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)clearLocalSyncState:(unint64_t)a3
{
  v3 = a3;
  v10 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9[0] = 67109120;
      v9[1] = v3;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Clearing local attachments sync state, flags 0x%x", v9, 8u);
    }
  }

  if (v3)
  {
    v6 = [(IMDCKAttachmentSyncController *)self syncTokenStore];
    [v6 persistToken:0 forKey:@"attachmentZoneChangeToken"];

    [(IMDCKAttachmentSyncController *)self deleteChatBotAttachmentSyncToken];
  }

  if ((v3 & 2) != 0)
  {
    v7 = +[IMDAttachmentStore sharedInstance];
    [v7 markAllAttachmentsAsNeedingCloudKitSync];
  }

  else if ((v3 & 0x10) != 0)
  {
    [(IMDCKAttachmentSyncController *)self _needsToMarkAllAttachmentsAsNeedingSync];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_validateTransferFromCloudKit:(id)a3 localTransfer:(id)a4 validateCompletion:(id)a5
{
  v8 = a5;
  v6 = [MEMORY[0x277D1A9C0] validateMD5HashForRecord:a3];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D19CF0] code:3 userInfo:0];
  }

  v8[2](v8, v6, v7);
}

- (void)_processAndValidateAttachmentRecordsEligibleForPurge:(id)a3 recordIDsToTransfers:(id)a4 capturedWithABC:(BOOL)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(IMDCKAttachmentSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B564A3C;
  block[3] = &unk_278704A10;
  v22 = a5;
  v18 = v10;
  v19 = v11;
  v20 = self;
  v21 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_sync(v13, block);
}

- (id)_constructAttachmentRecordIDUsingTombStoneDictionary:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"recordID"];
  if ([v4 length])
  {
    v5 = objc_alloc(MEMORY[0x277CBC5D0]);
    v6 = [(IMDCKAttachmentSyncController *)self _attachmentZoneID];
    v7 = [v5 initWithRecordName:v4 zoneID:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_readNextDeleteAfterRow
{
  v2 = [MEMORY[0x277D1A990] sharedInstance];
  v3 = [v2 getValueFromDomain:*MEMORY[0x277D19A08] forKey:@"deleteAfterRow"];

  return v3;
}

- (void)_setNextDeleteAfterRow:(id)a3
{
  v3 = MEMORY[0x277D1A990];
  v4 = a3;
  v5 = [v3 sharedInstance];
  [v5 setValue:v4 forDomain:*MEMORY[0x277D19A08] forKey:@"deleteAfterRow"];
}

- (id)_copyRecordIDsToDeleteWithLimit:(unint64_t)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v20 = [(IMDCKAttachmentSyncController *)self _readNextDeleteAfterRow];
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
        v11 = [(IMDCKAttachmentSyncController *)self _constructAttachmentRecordIDUsingTombStoneDictionary:v10, context, v20];
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
        v15 = [v14 longLongValue];

        if (!v6 || v15 > [v6 longLongValue])
        {
          v16 = [MEMORY[0x277CCABB0] numberWithLongLong:v15];

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

- (void)_deleteAttachmentsWithRecordIDs:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    [(IMDCKAbstractSyncController *)self setBroadcastedSyncStateToDeleting];
    v8 = [(IMDCKAttachmentSyncController *)self CKOperationFactory];
    v9 = [v8 deleteAttachmentCKOperationUsingRecordIDstoDelete:v6];

    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = sub_22B566474;
    v16 = &unk_278703858;
    v17 = self;
    v18 = v7;
    [v9 setModifyRecordsCompletionBlock:&v13];
    [v9 setPerRecordSaveBlock:{&unk_283F19C88, v13, v14, v15, v16, v17}];
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

    (*(v7 + 2))(v7, 0);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)syncAttachmentDeletesToCloudKitWithActivity:(id)a3 completion:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v31 = a3;
  v32 = a4;
  v30 = self;
  v6 = [(IMDCKAttachmentSyncController *)self _ckUtilitiesInstance];
  LOBYTE(self) = [v6 cloudKitSyncingEnabled];

  if (self)
  {
    v7 = [(IMDCKAttachmentSyncController *)v30 _copyRecordIDsToDeleteWithLimit:[(IMDCKAttachmentSyncController *)v30 _attachmentDeleteBatchSize]];
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

      v23 = [(IMDCKAttachmentSyncController *)v30 ckQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B566C90;
      block[3] = &unk_278704B40;
      block[4] = v30;
      v35 = v8;
      v38 = v32;
      v36 = v33;
      v37 = v31;
      v24 = v33;
      v25 = v8;
      dispatch_async(v23, block);
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
      if (v32)
      {
        v32[2]();
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

  v27 = v32;
  if (v32)
  {
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = sub_22B566C78;
    v43[3] = &unk_2787028D8;
    v44 = v32;
    dispatch_async(MEMORY[0x277D85CD0], v43);
    v7 = v44;
LABEL_32:

    v27 = v32;
  }

  v29 = *MEMORY[0x277D85DE8];
}

@end