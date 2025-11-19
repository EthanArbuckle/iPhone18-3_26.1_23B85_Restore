@interface IMDCKUpdateSyncController
+ (id)_fetchUpdatesCKConfiguration:(id)a3;
+ (id)_zoneChangesOptionsDictionaryUsingToken:(id)a3 zoneID:(id)a4 resultsLimit:(unint64_t)a5;
+ (id)fetchOperationFactory:(id)a3 token:(id)a4 batchSize:(unint64_t)a5 activity:(id)a6;
+ (id)sharedInstance;
+ (int64_t)stepAfter:(int64_t)a3;
- (BOOL)_zoneCreated;
- (IMDCKUpdateSyncController)init;
- (IMDCKUpdateSyncController)initWithSyncTokenStore:(id)a3;
- (id)_fetchRecordsOperationWithActivity:(id)a3;
- (id)_saveRecordsT1OperationWithMap:(id)a3 activity:(id)a4;
- (id)_saveRecordsT2OperationWithMap:(id)a3 activity:(id)a4;
- (id)_writeUpdatesCKConfiguration:(id)a3;
- (id)saveT1UpdatesOperationFactory:(id)a3 token:(id)a4 batchSize:(unint64_t)a5 recordNameToRowIDMap:(id)a6 activity:(id)a7;
- (id)saveT2UpdatesOperationFactory:(id)a3 token:(id)a4 batchSize:(unint64_t)a5 recordNameToRowIDMap:(id)a6 activity:(id)a7;
- (void)_onChangeTokenUpdated:(id)a3 token:(id)a4 data:(id)a5;
- (void)_onReadComplete:(int64_t)a3 error:(id)a4 activity:(id)a5 completion:(id)a6;
- (void)_onRecordDeleted:(id)a3 type:(id)a4;
- (void)_onRecordRead:(id)a3;
- (void)_onRecordT1Write:(id)a3 error:(id)a4 recordNameToRowIDMap:(id)a5;
- (void)_onRecordT2Write:(id)a3 error:(id)a4 recordNameToItemMap:(id)a5;
- (void)_onRecordZoneFetchComplete:(id)a3 token:(id)a4 tokenData:(id)a5 moreComing:(BOOL)a6 error:(id)a7;
- (void)_onWriteT1Complete:(int64_t)a3 error:(id)a4 shouldWriteMore:(BOOL)a5 activity:(id)a6 completion:(id)a7;
- (void)_onWriteT2Complete:(int64_t)a3 error:(id)a4 shouldWriteMore:(BOOL)a5 activity:(id)a6 completion:(id)a7;
- (void)_readRecordsWithType:(int64_t)a3 attemptCount:(unint64_t)a4 activity:(id)a5 completion:(id)a6;
- (void)_scheduleOperation:(id)a3;
- (void)_writeT1RecordUpdatesWithType:(int64_t)a3 activity:(id)a4 completion:(id)a5;
- (void)_writeT2RecordUpdatesWithType:(int64_t)a3 activity:(id)a4 completion:(id)a5;
- (void)_writeUpdatesWithType:(int64_t)a3 updateStep:(int64_t)a4 activity:(id)a5 completion:(id)a6;
- (void)clearLocalSyncState:(unint64_t)a3;
- (void)deleteUpdateSyncToken;
- (void)deleteUpdateZone;
- (void)syncWithType:(int64_t)a3 withActivity:(id)a4 withCompletion:(id)a5;
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

- (IMDCKUpdateSyncController)initWithSyncTokenStore:(id)a3
{
  v5 = a3;
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

    objc_storeStrong(&v6->_syncTokenStore, a3);
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
  v3 = [(IMDCKUpdateSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6BDB74;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)clearLocalSyncState:(unint64_t)a3
{
  v3 = a3;
  v8 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7[0] = 67109120;
      v7[1] = v3;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Clearing local updates sync state, flags 0x%x", v7, 8u);
    }
  }

  if (v3)
  {
    [(IMDCKUpdateSyncController *)self deleteUpdateSyncToken];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)deleteUpdateSyncToken
{
  v3 = [(IMDCKUpdateSyncController *)self ckQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6BDD34;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)syncWithType:(int64_t)a3 withActivity:(id)a4 withCompletion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277D1A990] sharedInstance];
  v11 = [v10 getBoolFromDomain:@"com.apple.madrid" forKey:@"mic-delete-update-zone"];

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

    if (v9)
    {
      v9[2](v9, 1, 0);
    }
  }

  else
  {
    [(IMDCKUpdateSyncController *)self _readRecordsWithType:a3 attemptCount:0 activity:v8 completion:v9];
  }
}

- (void)_readRecordsWithType:(int64_t)a3 attemptCount:(unint64_t)a4 activity:(id)a5 completion:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = a6;
  v11 = [(IMDCKUpdateSyncController *)self _fetchRecordsOperationWithActivity:v9];
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
    v19 = self;
    v22 = a3;
    v20 = v9;
    v21 = v10;
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

    [(IMDCKUpdateSyncController *)self _scheduleOperation:v12, v15, v16, v17, v18, v19];
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, 0, 0);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_onRecordRead:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [v3 _stringForKey:@"ut"];
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Fetched update record with type %@", buf, 0xCu);
    }
  }

  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v6 = +[IMDChatRegistry sharedInstance];
    [v6 handleMessageUpdate:v3];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B6BE410;
    block[3] = &unk_278702FF0;
    v9 = v3;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    v6 = v9;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_onRecordDeleted:(id)a3 type:(id)a4
{
  v5 = a3;
  v6 = a4;
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

- (void)_onChangeTokenUpdated:(id)a3 token:(id)a4 data:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "recordZoneChangeTokensUpdatedBlock recordZoneID %@ serverChangeToken %@ clientChangeToken %@", buf, 0x20u);
    }
  }

  v12 = [(IMDCKUpdateSyncController *)self ckQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22B6BE6B0;
  v15[3] = &unk_278702FA0;
  v15[4] = self;
  v16 = v9;
  v13 = v9;
  dispatch_sync(v12, v15);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_onRecordZoneFetchComplete:(id)a3 token:(id)a4 tokenData:(id)a5 moreComing:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v28 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = 138413314;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      v24 = 1024;
      v25 = v8;
      v26 = 2112;
      v27 = v15;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Record Zone fetch complete zoneID %@ changeToken %@ tokenData %@ moreComing %d error %@", &v18, 0x30u);
    }
  }

  [(IMDCKUpdateSyncController *)self _onChangeTokenUpdated:v12 token:v13 data:v14];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_onReadComplete:(int64_t)a3 error:(id)a4 activity:(id)a5 completion:(id)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_22B4D7820;
  v34 = sub_22B4D7978;
  v13 = v10;
  v35 = v13;
  v14 = [(IMDCKAbstractSyncController *)self errorAnalyzer];
  v15 = [v14 errorIndicatesZoneNotCreated:v31[5]];

  v16 = [(IMDCKAbstractSyncController *)self errorAnalyzer];
  v17 = [v16 errorIndicatesUserDeletedZone:v31[5]];

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

    v20 = [(IMDCKUpdateSyncController *)self ckQueue];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_22B6BEC90;
    v29[3] = &unk_278707088;
    v29[4] = self;
    v29[5] = &v30;
    dispatch_sync(v20, v29);
  }

  if (v31[5])
  {
    v21 = [(IMDCKAbstractSyncController *)self errorAnalyzer];
    v22 = [v21 CKPartialError:v31[5] hasErrorCode:&unk_283F4ED50];

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

    if (v12)
    {
      v12[2](v12, 0, v31[5]);
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

    [(IMDCKUpdateSyncController *)self _writeRecordsWithType:a3 activity:v11 completion:v12];
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
  v4 = [(IMDCKUpdateSyncController *)self recordZoneManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22B6BEF9C;
  v11[3] = &unk_278703880;
  v13 = &v14;
  v5 = v3;
  v12 = v5;
  [v4 createUpdateZoneIfNeededWithCompletionBlock:v11];

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

+ (int64_t)stepAfter:(int64_t)a3
{
  v3 = 3;
  if (a3 != 2)
  {
    v3 = 0;
  }

  if (a3 == 1)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

- (void)_writeUpdatesWithType:(int64_t)a3 updateStep:(int64_t)a4 activity:(id)a5 completion:(id)a6
{
  v10 = a5;
  v11 = a6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B6BF214;
  aBlock[3] = &unk_2787081F8;
  v18 = a4;
  v19 = a3;
  aBlock[4] = self;
  v12 = v10;
  v16 = v12;
  v13 = v11;
  v17 = v13;
  v14 = _Block_copy(aBlock);
  if (a4 == 3)
  {
    goto LABEL_5;
  }

  if (a4 == 2)
  {
    [(IMDCKUpdateSyncController *)self _writeT2RecordUpdatesWithType:a3 activity:v12 completion:v14];
    goto LABEL_8;
  }

  if (a4 != 1)
  {
LABEL_5:
    if (v13)
    {
      (*(v13 + 2))(v13, 1, 0);
    }
  }

  else
  {
    [(IMDCKUpdateSyncController *)self _writeT1RecordUpdatesWithType:a3 activity:v12 completion:v14];
  }

LABEL_8:
}

- (void)_writeT1RecordUpdatesWithType:(int64_t)a3 activity:(id)a4 completion:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_22B4D7820;
  v24 = sub_22B4D7978;
  v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = [(IMDCKUpdateSyncController *)self _saveRecordsT1OperationWithMap:v21[5] activity:v8];
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
    v18 = a3;
    v14[4] = self;
    v15 = v8;
    v16 = v9;
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

  else if (v9)
  {
    (*(v9 + 2))(v9, 1, 0);
  }

  _Block_object_dispose(&v20, 8);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_onRecordT1Write:(id)a3 error:(id)a4 recordNameToRowIDMap:(id)a5
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
      v26 = 138412546;
      v27 = v8;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Wrote T1 update record %@ with error %@", &v26, 0x16u);
    }
  }

  if (!v9)
  {
    v22 = [v8 recordID];
    v14 = [v22 recordName];

    v17 = [v10 objectForKey:v14];
    v23 = [v17 longLongValue];
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v26 = 134218242;
        v27 = v23;
        v28 = 2112;
        v29 = v14;
        _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Marking row %lld for %@ as clean", &v26, 0x16u);
      }
    }

    v21 = +[IMDMessageStore sharedInstance];
    [v21 markMessageAsCleanWithROWID:v23];
    goto LABEL_21;
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v26 = 138412546;
      v27 = v9;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Error %@ while writing up record %@ ", &v26, 0x16u);
    }
  }

  v13 = [(IMDCKAbstractSyncController *)self ckUtilities];
  v14 = [v13 extractServerRecordFromCKServerErrorRecordChanged:v9];

  v15 = [v14 recordID];
  v16 = [v15 recordName];
  v17 = [v10 objectForKey:v16];

  v18 = [v17 longLongValue];
  if (v14)
  {
    v19 = v18;
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v26 = 138412290;
        v27 = v14;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Extracted record from server error%@ ", &v26, 0xCu);
      }
    }

    v21 = +[IMDChatRegistry sharedInstance];
    [v21 handleMessageUpdateConflictType:@"UT1" serverRecord:v14 localRowID:v19];
LABEL_21:
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_onWriteT1Complete:(int64_t)a3 error:(id)a4 shouldWriteMore:(BOOL)a5 activity:(id)a6 completion:(id)a7
{
  v9 = a5;
  v22 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a6;
  v14 = a7;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = @"NO";
      if (!v12)
      {
        v16 = @"YES";
      }

      v18 = 138412546;
      v19 = v16;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Update T1 writes completed sucess: %@ error %@", &v18, 0x16u);
    }
  }

  if (v12)
  {
    if (v14)
    {
      v14[2](v14, 0, v12);
    }
  }

  else if (v9)
  {
    [(IMDCKUpdateSyncController *)self _writeRecordsWithType:a3 activity:v13 completion:v14];
  }

  else if (v14)
  {
    v14[2](v14, 1, 0);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_writeT2RecordUpdatesWithType:(int64_t)a3 activity:(id)a4 completion:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_22B4D7820;
  v24 = sub_22B4D7978;
  v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = [(IMDCKUpdateSyncController *)self _saveRecordsT2OperationWithMap:v21[5] activity:v8];
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
    v18 = a3;
    v14[4] = self;
    v15 = v8;
    v16 = v9;
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

  else if (v9)
  {
    (*(v9 + 2))(v9, 1, 0);
  }

  _Block_object_dispose(&v20, 8);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_onRecordT2Write:(id)a3 error:(id)a4 recordNameToItemMap:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v27 = 138412546;
      v28 = v8;
      v29 = 2112;
      v30 = v9;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Wrote T2 update record %@ with error %@", &v27, 0x16u);
    }
  }

  if (!v9)
  {
    v23 = [v8 recordID];
    v14 = [v23 recordName];

    v17 = [v10 objectForKey:v14];
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
      v28 = v9;
      v29 = 2112;
      v30 = v8;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Error %@ while writing up record %@ ", &v27, 0x16u);
    }
  }

  v13 = [(IMDCKAbstractSyncController *)self ckUtilities];
  v14 = [v13 extractServerRecordFromCKServerErrorRecordChanged:v9];

  v15 = [v14 recordID];
  v16 = [v15 recordName];
  v17 = [v10 objectForKey:v16];

  v18 = [v17 objectForKey:@"ROWID"];
  v19 = [v18 longLongValue];
  if (v14)
  {
    v20 = v19;
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v27 = 138412290;
        v28 = v14;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Extracted record from server error%@ ", &v27, 0xCu);
      }
    }

    v22 = +[IMDChatRegistry sharedInstance];
    [v22 handleMessageUpdateConflictType:@"UT2" serverRecord:v14 localRowID:v20];
LABEL_21:
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_onWriteT2Complete:(int64_t)a3 error:(id)a4 shouldWriteMore:(BOOL)a5 activity:(id)a6 completion:(id)a7
{
  v9 = a5;
  v22 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a6;
  v14 = a7;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = @"NO";
      if (!v12)
      {
        v16 = @"YES";
      }

      v18 = 138412546;
      v19 = v16;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Update T2 writes completed sucess: %@ error %@", &v18, 0x16u);
    }
  }

  if (v12)
  {
    if (v14)
    {
      v14[2](v14, 0, v12);
    }
  }

  else if (v9)
  {
    [(IMDCKUpdateSyncController *)self _writeRecordsWithType:a3 activity:v13 completion:v14];
  }

  else if (v14)
  {
    v14[2](v14, 1, 0);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_fetchRecordsOperationWithActivity:(id)a3
{
  v4 = a3;
  v5 = [(IMDCKUpdateSyncController *)self recordZoneManager];
  v6 = [v5 updateRecordZoneID];
  v7 = [(IMDCKAbstractSyncController *)self latestSyncToken];
  v8 = [IMDCKUpdateSyncController fetchOperationFactory:v6 token:v7 batchSize:[(IMDCKUpdateSyncController *)self _numberOfRecordsToFetchPerBatch] activity:v4];

  return v8;
}

- (id)_saveRecordsT1OperationWithMap:(id)a3 activity:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IMDCKUpdateSyncController *)self recordZoneManager];
  v9 = [v8 updateRecordZoneID];
  v10 = [(IMDCKAbstractSyncController *)self latestSyncToken];
  v11 = [(IMDCKUpdateSyncController *)self saveT1UpdatesOperationFactory:v9 token:v10 batchSize:[(IMDCKUpdateSyncController *)self _numberOfRecordsToFetchPerBatch] recordNameToRowIDMap:v7 activity:v6];

  return v11;
}

- (id)_saveRecordsT2OperationWithMap:(id)a3 activity:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IMDCKUpdateSyncController *)self recordZoneManager];
  v9 = [v8 updateRecordZoneID];
  v10 = [(IMDCKAbstractSyncController *)self latestSyncToken];
  v11 = [(IMDCKUpdateSyncController *)self saveT2UpdatesOperationFactory:v9 token:v10 batchSize:[(IMDCKUpdateSyncController *)self _numberOfRecordsToFetchPerBatch] recordNameToRowIDMap:v7 activity:v6];

  return v11;
}

+ (id)_zoneChangesOptionsDictionaryUsingToken:(id)a3 zoneID:(id)a4 resultsLimit:(unint64_t)a5
{
  v7 = MEMORY[0x277CBEB38];
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(v7);
  v11 = objc_alloc_init(MEMORY[0x277CBC3A0]);
  [v11 setDesiredKeys:0];
  [v11 setPreviousServerChangeToken:v9];

  [v11 setResultsLimit:a5];
  [v10 setObject:v11 forKey:v8];

  return v10;
}

+ (id)_fetchUpdatesCKConfiguration:(id)a3
{
  v3 = MEMORY[0x277CBC4F0];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setQualityOfService:17];
  [v5 setAllowsCellularAccess:1];
  [v5 im_setActivity:v4];

  return v5;
}

+ (id)fetchOperationFactory:(id)a3 token:(id)a4 batchSize:(unint64_t)a5 activity:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v10)
  {
    v13 = objc_alloc(MEMORY[0x277CBC3B8]);
    v14 = IMSingleObjectArray();
    v15 = [a1 _zoneChangesOptionsDictionaryUsingToken:v11 zoneID:v10 resultsLimit:a5];
    v16 = [v13 initWithRecordZoneIDs:v14 configurationsByRecordZoneID:v15];

    v17 = [a1 _fetchUpdatesCKConfiguration:v12];
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

- (id)_writeUpdatesCKConfiguration:(id)a3
{
  v3 = MEMORY[0x277CBC4F0];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setQualityOfService:17];
  [v5 setAllowsCellularAccess:1];
  [v5 im_setActivity:v4];

  return v5;
}

- (id)saveT1UpdatesOperationFactory:(id)a3 token:(id)a4 batchSize:(unint64_t)a5 recordNameToRowIDMap:(id)a6 activity:(id)a7
{
  v9 = a5;
  v35 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (v12)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_22B6C0F10;
    aBlock[3] = &unk_2787038F8;
    aBlock[4] = self;
    v29 = v14;
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
        v34 = v9;
        _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Found %lu of %u max T1 updates to write up", buf, 0x12u);
      }
    }

    if ([v22 count])
    {
      v20 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:v22 recordIDsToDelete:0];
      [v20 setSavePolicy:1];
      v25 = [(IMDCKUpdateSyncController *)self _writeUpdatesCKConfiguration:v15];
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

- (id)saveT2UpdatesOperationFactory:(id)a3 token:(id)a4 batchSize:(unint64_t)a5 recordNameToRowIDMap:(id)a6 activity:(id)a7
{
  v9 = a5;
  v35 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (v12)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_22B6C14FC;
    aBlock[3] = &unk_2787038F8;
    aBlock[4] = self;
    v29 = v14;
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
        v34 = v9;
        _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Found %lu of %u max T2 updates to write up", buf, 0x12u);
      }
    }

    if ([v22 count])
    {
      v20 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:v22 recordIDsToDelete:0];
      [v20 setSavePolicy:1];
      v25 = [(IMDCKUpdateSyncController *)self _writeUpdatesCKConfiguration:v15];
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

- (void)_scheduleOperation:(id)a3
{
  v3 = a3;
  v5 = +[IMDCKDatabaseManager sharedInstance];
  v4 = [v5 truthDatabase];
  [v4 addOperation:v3];
}

@end