@interface IMDCKUpdateSyncController
+ (id)_fetchUpdatesCKConfiguration:(id)configuration;
+ (id)_zoneChangesOptionsDictionaryUsingToken:(id)token zoneID:(id)d resultsLimit:(unint64_t)limit;
+ (id)fetchOperationFactory:(id)factory token:(id)token batchSize:(unint64_t)size activity:(id)activity;
+ (id)sharedInstance;
+ (int64_t)stepAfter:(int64_t)after;
- (BOOL)_zoneCreated;
- (IMDCKUpdateSyncController)init;
- (IMDCKUpdateSyncController)initWithSyncTokenStore:(id)store;
- (id)_fetchRecordsOperationWithActivity:(id)activity;
- (id)_saveRecordsT1OperationWithMap:(id)map activity:(id)activity;
- (id)_saveRecordsT2OperationWithMap:(id)map activity:(id)activity;
- (id)_writeUpdatesCKConfiguration:(id)configuration;
- (id)saveT1UpdatesOperationFactory:(id)factory token:(id)token batchSize:(unint64_t)size recordNameToRowIDMap:(id)map activity:(id)activity;
- (id)saveT2UpdatesOperationFactory:(id)factory token:(id)token batchSize:(unint64_t)size recordNameToRowIDMap:(id)map activity:(id)activity;
- (void)_onChangeTokenUpdated:(id)updated token:(id)token data:(id)data;
- (void)_onReadComplete:(int64_t)complete error:(id)error activity:(id)activity completion:(id)completion;
- (void)_onRecordDeleted:(id)deleted type:(id)type;
- (void)_onRecordRead:(id)read;
- (void)_onRecordT1Write:(id)write error:(id)error recordNameToRowIDMap:(id)map;
- (void)_onRecordT2Write:(id)write error:(id)error recordNameToItemMap:(id)map;
- (void)_onRecordZoneFetchComplete:(id)complete token:(id)token tokenData:(id)data moreComing:(BOOL)coming error:(id)error;
- (void)_onWriteT1Complete:(int64_t)complete error:(id)error shouldWriteMore:(BOOL)more activity:(id)activity completion:(id)completion;
- (void)_onWriteT2Complete:(int64_t)complete error:(id)error shouldWriteMore:(BOOL)more activity:(id)activity completion:(id)completion;
- (void)_readRecordsWithType:(int64_t)type attemptCount:(unint64_t)count activity:(id)activity completion:(id)completion;
- (void)_scheduleOperation:(id)operation;
- (void)_writeT1RecordUpdatesWithType:(int64_t)type activity:(id)activity completion:(id)completion;
- (void)_writeT2RecordUpdatesWithType:(int64_t)type activity:(id)activity completion:(id)completion;
- (void)_writeUpdatesWithType:(int64_t)type updateStep:(int64_t)step activity:(id)activity completion:(id)completion;
- (void)clearLocalSyncState:(unint64_t)state;
- (void)deleteUpdateSyncToken;
- (void)deleteUpdateZone;
- (void)syncWithType:(int64_t)type withActivity:(id)activity withCompletion:(id)completion;
@end

@implementation IMDCKUpdateSyncController

+ (id)sharedInstance
{
  if (qword_2814211E8 != -1)
  {
    sub_22B7D9810();
  }

  v3 = qword_281421070;

  return v3;
}

- (IMDCKUpdateSyncController)initWithSyncTokenStore:(id)store
{
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = IMDCKUpdateSyncController;
  v6 = [(IMDCKUpdateSyncController *)&v12 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.private.IMDCKUpdateSyncController", 0);
    ckQueue = v6->_ckQueue;
    v6->_ckQueue = v7;

    v9 = +[IMDRecordZoneManager sharedInstance];
    recordZoneManager = v6->_recordZoneManager;
    v6->_recordZoneManager = v9;

    objc_storeStrong(&v6->_syncTokenStore, store);
  }

  return v6;
}

- (IMDCKUpdateSyncController)init
{
  v3 = objc_alloc_init(IMDCKSyncTokenStore);
  v4 = [(IMDCKUpdateSyncController *)self initWithSyncTokenStore:v3];

  return v4;
}

- (void)deleteUpdateZone
{
  ckQueue = [(IMDCKUpdateSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6BDB74;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_async(ckQueue, block);
}

- (void)clearLocalSyncState:(unint64_t)state
{
  stateCopy = state;
  v8 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7[0] = 67109120;
      v7[1] = stateCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Clearing local updates sync state, flags 0x%x", v7, 8u);
    }
  }

  if (stateCopy)
  {
    [(IMDCKUpdateSyncController *)self deleteUpdateSyncToken];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)deleteUpdateSyncToken
{
  ckQueue = [(IMDCKUpdateSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6BDD34;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_async(ckQueue, block);
}

- (void)syncWithType:(int64_t)type withActivity:(id)activity withCompletion:(id)completion
{
  activityCopy = activity;
  completionCopy = completion;
  mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
  v11 = [mEMORY[0x277D1A990] getBoolFromDomain:@"com.apple.madrid" forKey:@"mic-delete-update-zone"];

  if (v11)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Deleting zone based on default, and skipping Update syncs", v14, 2u);
      }
    }

    v13 = +[IMDRecordZoneManager sharedInstance];
    [v13 deleteUpdateZone];

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }
  }

  else
  {
    [(IMDCKUpdateSyncController *)self _readRecordsWithType:type attemptCount:0 activity:activityCopy completion:completionCopy];
  }
}

- (void)_readRecordsWithType:(int64_t)type attemptCount:(unint64_t)count activity:(id)activity completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  completionCopy = completion;
  v11 = [(IMDCKUpdateSyncController *)self _fetchRecordsOperationWithActivity:activityCopy];
  v12 = v11;
  if (v11)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_22B6BE220;
    v26[3] = &unk_2787046E0;
    v26[4] = self;
    [v11 setRecordChangedBlock:v26];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_22B6BE22C;
    v25[3] = &unk_278704728;
    v25[4] = self;
    [v12 setRecordWithIDWasDeletedBlock:v25];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_22B6BE23C;
    v24[3] = &unk_278706FE8;
    v24[4] = self;
    [v12 setRecordZoneChangeTokensUpdatedBlock:v24];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_22B6BE250;
    v23[3] = &unk_278707010;
    v23[4] = self;
    [v12 setRecordZoneFetchCompletionBlock:v23];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = sub_22B6BE26C;
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
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Scheduling a fetch update zone changes operation %@", buf, 0xCu);
      }
    }

    [(IMDCKUpdateSyncController *)self _scheduleOperation:v12, v15, v16, v17, v18, selfCopy];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_onRecordRead:(id)read
{
  v12 = *MEMORY[0x277D85DE8];
  readCopy = read;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [readCopy _stringForKey:@"ut"];
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Fetched update record with type %@", buf, 0xCu);
    }
  }

  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v6 = +[IMDChatRegistry sharedInstance];
    [v6 handleMessageUpdate:readCopy];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B6BE410;
    block[3] = &unk_278702FF0;
    v9 = readCopy;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    v6 = v9;
  }

  v7 = *MEMORY[0x277D85DE8];
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

  ckQueue = [(IMDCKUpdateSyncController *)self ckQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22B6BE6B0;
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

  [(IMDCKUpdateSyncController *)self _onChangeTokenUpdated:completeCopy token:tokenCopy data:dataCopy];

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
  v33 = sub_22B4D7820;
  v34 = sub_22B4D7978;
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
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "We got a %@ error while fetching updates. %@", buf, 0x16u);
      }
    }

    ckQueue = [(IMDCKUpdateSyncController *)self ckQueue];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_22B6BEC90;
    v29[3] = &unk_278707088;
    v29[4] = self;
    v29[5] = &v30;
    dispatch_sync(ckQueue, v29);
  }

  if (v31[5])
  {
    errorAnalyzer3 = [(IMDCKAbstractSyncController *)self errorAnalyzer];
    v22 = [errorAnalyzer3 CKPartialError:v31[5] hasErrorCode:&unk_283F4ED50];

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
          _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "We got an expired server change token back so resetting local sync state, and fetching the updates again %@", buf, 0xCu);
        }
      }

      [(IMDCKUpdateSyncController *)self clearLocalSyncState:17];
    }

    else if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = v31[5];
        *buf = 138412290;
        v37 = v27;
        _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "********* We got an error fetching changes from update zone %@", buf, 0xCu);
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
        _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "We completed fetching changes from update zone with no error", buf, 2u);
      }
    }

    [(IMDCKUpdateSyncController *)self _writeRecordsWithType:complete activity:activityCopy completion:completionCopy];
  }

  _Block_object_dispose(&v30, 8);

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)_zoneCreated
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v3 = dispatch_semaphore_create(0);
  recordZoneManager = [(IMDCKUpdateSyncController *)self recordZoneManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22B6BEF9C;
  v11[3] = &unk_278703880;
  v13 = &v14;
  v5 = v3;
  v12 = v5;
  [recordZoneManager createUpdateZoneIfNeededWithCompletionBlock:v11];

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
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "***** Timed out creating update zone *******", v10, 2u);
      }
    }
  }

  v8 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v8;
}

+ (int64_t)stepAfter:(int64_t)after
{
  v3 = 3;
  if (after != 2)
  {
    v3 = 0;
  }

  if (after == 1)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

- (void)_writeUpdatesWithType:(int64_t)type updateStep:(int64_t)step activity:(id)activity completion:(id)completion
{
  activityCopy = activity;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B6BF214;
  aBlock[3] = &unk_2787081F8;
  stepCopy = step;
  typeCopy = type;
  aBlock[4] = self;
  v12 = activityCopy;
  v16 = v12;
  v13 = completionCopy;
  v17 = v13;
  v14 = _Block_copy(aBlock);
  if (step == 3)
  {
    goto LABEL_5;
  }

  if (step == 2)
  {
    [(IMDCKUpdateSyncController *)self _writeT2RecordUpdatesWithType:type activity:v12 completion:v14];
    goto LABEL_8;
  }

  if (step != 1)
  {
LABEL_5:
    if (v13)
    {
      (*(v13 + 2))(v13, 1, 0);
    }
  }

  else
  {
    [(IMDCKUpdateSyncController *)self _writeT1RecordUpdatesWithType:type activity:v12 completion:v14];
  }

LABEL_8:
}

- (void)_writeT1RecordUpdatesWithType:(int64_t)type activity:(id)activity completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  completionCopy = completion;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_22B4D7820;
  v24 = sub_22B4D7978;
  v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = [(IMDCKUpdateSyncController *)self _saveRecordsT1OperationWithMap:v21[5] activity:activityCopy];
  v11 = v10;
  if (v10)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_22B6BF550;
    v19[3] = &unk_2787070B0;
    v19[4] = self;
    v19[5] = &v20;
    [v10 setPerRecordCompletionBlock:v19];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_22B6BF630;
    v14[3] = &unk_2787070D8;
    v17 = &v20;
    typeCopy = type;
    v14[4] = self;
    v15 = activityCopy;
    v16 = completionCopy;
    [v11 setModifyRecordsCompletionBlock:v14];
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v27 = v11;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Scheduling write updates T1 operation %@", buf, 0xCu);
      }
    }

    [(IMDCKUpdateSyncController *)self _scheduleOperation:v11];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }

  _Block_object_dispose(&v20, 8);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_onRecordT1Write:(id)write error:(id)error recordNameToRowIDMap:(id)map
{
  v30 = *MEMORY[0x277D85DE8];
  writeCopy = write;
  errorCopy = error;
  mapCopy = map;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v26 = 138412546;
      v27 = writeCopy;
      v28 = 2112;
      v29 = errorCopy;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Wrote T1 update record %@ with error %@", &v26, 0x16u);
    }
  }

  if (!errorCopy)
  {
    recordID = [writeCopy recordID];
    recordName = [recordID recordName];

    v17 = [mapCopy objectForKey:recordName];
    longLongValue = [v17 longLongValue];
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v26 = 134218242;
        v27 = longLongValue;
        v28 = 2112;
        v29 = recordName;
        _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Marking row %lld for %@ as clean", &v26, 0x16u);
      }
    }

    v21 = +[IMDMessageStore sharedInstance];
    [v21 markMessageAsCleanWithROWID:longLongValue];
    goto LABEL_21;
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v26 = 138412546;
      v27 = errorCopy;
      v28 = 2112;
      v29 = writeCopy;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Error %@ while writing up record %@ ", &v26, 0x16u);
    }
  }

  ckUtilities = [(IMDCKAbstractSyncController *)self ckUtilities];
  recordName = [ckUtilities extractServerRecordFromCKServerErrorRecordChanged:errorCopy];

  recordID2 = [recordName recordID];
  recordName2 = [recordID2 recordName];
  v17 = [mapCopy objectForKey:recordName2];

  longLongValue2 = [v17 longLongValue];
  if (recordName)
  {
    v19 = longLongValue2;
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v26 = 138412290;
        v27 = recordName;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Extracted record from server error%@ ", &v26, 0xCu);
      }
    }

    v21 = +[IMDChatRegistry sharedInstance];
    [v21 handleMessageUpdateConflictType:@"UT1" serverRecord:recordName localRowID:v19];
LABEL_21:
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_onWriteT1Complete:(int64_t)complete error:(id)error shouldWriteMore:(BOOL)more activity:(id)activity completion:(id)completion
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
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Update T1 writes completed sucess: %@ error %@", &v18, 0x16u);
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
    [(IMDCKUpdateSyncController *)self _writeRecordsWithType:complete activity:activityCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_writeT2RecordUpdatesWithType:(int64_t)type activity:(id)activity completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  completionCopy = completion;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_22B4D7820;
  v24 = sub_22B4D7978;
  v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = [(IMDCKUpdateSyncController *)self _saveRecordsT2OperationWithMap:v21[5] activity:activityCopy];
  v11 = v10;
  if (v10)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_22B6BFF30;
    v19[3] = &unk_2787070B0;
    v19[4] = self;
    v19[5] = &v20;
    [v10 setPerRecordCompletionBlock:v19];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_22B6C0010;
    v14[3] = &unk_2787070D8;
    v17 = &v20;
    typeCopy = type;
    v14[4] = self;
    v15 = activityCopy;
    v16 = completionCopy;
    [v11 setModifyRecordsCompletionBlock:v14];
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v27 = v11;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Scheduling write updates T2 operation %@", buf, 0xCu);
      }
    }

    [(IMDCKUpdateSyncController *)self _scheduleOperation:v11];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }

  _Block_object_dispose(&v20, 8);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_onRecordT2Write:(id)write error:(id)error recordNameToItemMap:(id)map
{
  v31 = *MEMORY[0x277D85DE8];
  writeCopy = write;
  errorCopy = error;
  mapCopy = map;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v27 = 138412546;
      v28 = writeCopy;
      v29 = 2112;
      v30 = errorCopy;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Wrote T2 update record %@ with error %@", &v27, 0x16u);
    }
  }

  if (!errorCopy)
  {
    recordID = [writeCopy recordID];
    recordName = [recordID recordName];

    v17 = [mapCopy objectForKey:recordName];
    v18 = [v17 objectForKey:@"MID"];
    v22 = [v17 objectForKey:@"SR"];
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v27 = 138412290;
        v28 = v18;
        _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Successful write of T2 update to the server, updating syncedSyndicationRanges for message guid %@ ", &v27, 0xCu);
      }
    }

    v25 = +[IMDChatRegistry sharedInstance];
    [v25 updateSyncedSyndicationRanges:v22 forGUID:v18];

    goto LABEL_21;
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v27 = 138412546;
      v28 = errorCopy;
      v29 = 2112;
      v30 = writeCopy;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Error %@ while writing up record %@ ", &v27, 0x16u);
    }
  }

  ckUtilities = [(IMDCKAbstractSyncController *)self ckUtilities];
  recordName = [ckUtilities extractServerRecordFromCKServerErrorRecordChanged:errorCopy];

  recordID2 = [recordName recordID];
  recordName2 = [recordID2 recordName];
  v17 = [mapCopy objectForKey:recordName2];

  v18 = [v17 objectForKey:@"ROWID"];
  longLongValue = [v18 longLongValue];
  if (recordName)
  {
    v20 = longLongValue;
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v27 = 138412290;
        v28 = recordName;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Extracted record from server error%@ ", &v27, 0xCu);
      }
    }

    v22 = +[IMDChatRegistry sharedInstance];
    [v22 handleMessageUpdateConflictType:@"UT2" serverRecord:recordName localRowID:v20];
LABEL_21:
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_onWriteT2Complete:(int64_t)complete error:(id)error shouldWriteMore:(BOOL)more activity:(id)activity completion:(id)completion
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
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Update T2 writes completed sucess: %@ error %@", &v18, 0x16u);
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
    [(IMDCKUpdateSyncController *)self _writeRecordsWithType:complete activity:activityCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_fetchRecordsOperationWithActivity:(id)activity
{
  activityCopy = activity;
  recordZoneManager = [(IMDCKUpdateSyncController *)self recordZoneManager];
  updateRecordZoneID = [recordZoneManager updateRecordZoneID];
  latestSyncToken = [(IMDCKAbstractSyncController *)self latestSyncToken];
  v8 = [IMDCKUpdateSyncController fetchOperationFactory:updateRecordZoneID token:latestSyncToken batchSize:[(IMDCKUpdateSyncController *)self _numberOfRecordsToFetchPerBatch] activity:activityCopy];

  return v8;
}

- (id)_saveRecordsT1OperationWithMap:(id)map activity:(id)activity
{
  activityCopy = activity;
  mapCopy = map;
  recordZoneManager = [(IMDCKUpdateSyncController *)self recordZoneManager];
  updateRecordZoneID = [recordZoneManager updateRecordZoneID];
  latestSyncToken = [(IMDCKAbstractSyncController *)self latestSyncToken];
  v11 = [(IMDCKUpdateSyncController *)self saveT1UpdatesOperationFactory:updateRecordZoneID token:latestSyncToken batchSize:[(IMDCKUpdateSyncController *)self _numberOfRecordsToFetchPerBatch] recordNameToRowIDMap:mapCopy activity:activityCopy];

  return v11;
}

- (id)_saveRecordsT2OperationWithMap:(id)map activity:(id)activity
{
  activityCopy = activity;
  mapCopy = map;
  recordZoneManager = [(IMDCKUpdateSyncController *)self recordZoneManager];
  updateRecordZoneID = [recordZoneManager updateRecordZoneID];
  latestSyncToken = [(IMDCKAbstractSyncController *)self latestSyncToken];
  v11 = [(IMDCKUpdateSyncController *)self saveT2UpdatesOperationFactory:updateRecordZoneID token:latestSyncToken batchSize:[(IMDCKUpdateSyncController *)self _numberOfRecordsToFetchPerBatch] recordNameToRowIDMap:mapCopy activity:activityCopy];

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

+ (id)_fetchUpdatesCKConfiguration:(id)configuration
{
  v3 = MEMORY[0x277CBC4F0];
  configurationCopy = configuration;
  v5 = objc_alloc_init(v3);
  [v5 setQualityOfService:17];
  [v5 setAllowsCellularAccess:1];
  [v5 im_setActivity:configurationCopy];

  return v5;
}

+ (id)fetchOperationFactory:(id)factory token:(id)token batchSize:(unint64_t)size activity:(id)activity
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

    v17 = [self _fetchUpdatesCKConfiguration:activityCopy];
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
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "fetchOperationFactory was passed in a nil zone", v20, 2u);
      }
    }

    v16 = 0;
  }

  return v16;
}

- (id)_writeUpdatesCKConfiguration:(id)configuration
{
  v3 = MEMORY[0x277CBC4F0];
  configurationCopy = configuration;
  v5 = objc_alloc_init(v3);
  [v5 setQualityOfService:17];
  [v5 setAllowsCellularAccess:1];
  [v5 im_setActivity:configurationCopy];

  return v5;
}

- (id)saveT1UpdatesOperationFactory:(id)factory token:(id)token batchSize:(unint64_t)size recordNameToRowIDMap:(id)map activity:(id)activity
{
  sizeCopy = size;
  v35 = *MEMORY[0x277D85DE8];
  factoryCopy = factory;
  tokenCopy = token;
  mapCopy = map;
  activityCopy = activity;
  if (factoryCopy)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_22B6C0F10;
    aBlock[3] = &unk_2787038F8;
    aBlock[4] = self;
    v29 = mapCopy;
    v17 = v16;
    v30 = v17;
    v18 = _Block_copy(aBlock);
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v18[2](v18);
    }

    else
    {
      dispatch_sync(MEMORY[0x277D85CD0], v18);
    }

    v21 = +[IMDCKUtilities sharedInstance];
    v22 = [v21 newfilteredArrayRemovingCKRecordDupes:v17];

    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = [v22 count];
        *buf = 134218240;
        v32 = v24;
        v33 = 1024;
        v34 = sizeCopy;
        _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Found %lu of %u max T1 updates to write up", buf, 0x12u);
      }
    }

    if ([v22 count])
    {
      v20 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:v22 recordIDsToDelete:0];
      [v20 setSavePolicy:1];
      v25 = [(IMDCKUpdateSyncController *)self _writeUpdatesCKConfiguration:activityCopy];
      [v20 setConfiguration:v25];
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "saveT1OperationFactory was passed in a nil zone", buf, 2u);
      }
    }

    v20 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)saveT2UpdatesOperationFactory:(id)factory token:(id)token batchSize:(unint64_t)size recordNameToRowIDMap:(id)map activity:(id)activity
{
  sizeCopy = size;
  v35 = *MEMORY[0x277D85DE8];
  factoryCopy = factory;
  tokenCopy = token;
  mapCopy = map;
  activityCopy = activity;
  if (factoryCopy)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_22B6C14FC;
    aBlock[3] = &unk_2787038F8;
    aBlock[4] = self;
    v29 = mapCopy;
    v17 = v16;
    v30 = v17;
    v18 = _Block_copy(aBlock);
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v18[2](v18);
    }

    else
    {
      dispatch_sync(MEMORY[0x277D85CD0], v18);
    }

    v21 = +[IMDCKUtilities sharedInstance];
    v22 = [v21 newfilteredArrayRemovingCKRecordDupes:v17];

    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = [v22 count];
        *buf = 134218240;
        v32 = v24;
        v33 = 1024;
        v34 = sizeCopy;
        _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Found %lu of %u max T2 updates to write up", buf, 0x12u);
      }
    }

    if ([v22 count])
    {
      v20 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:v22 recordIDsToDelete:0];
      [v20 setSavePolicy:1];
      v25 = [(IMDCKUpdateSyncController *)self _writeUpdatesCKConfiguration:activityCopy];
      [v20 setConfiguration:v25];
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "saveT2OperationFactory was passed in a nil zone", buf, 2u);
      }
    }

    v20 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)_scheduleOperation:(id)operation
{
  operationCopy = operation;
  v5 = +[IMDCKDatabaseManager sharedInstance];
  truthDatabase = [v5 truthDatabase];
  [truthDatabase addOperation:operationCopy];
}

@end