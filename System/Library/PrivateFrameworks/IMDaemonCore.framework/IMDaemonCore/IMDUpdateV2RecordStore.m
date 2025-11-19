@interface IMDUpdateV2RecordStore
- (id)batchOfRecordsToWriteWithFilter:(unint64_t)a3 limit:(int64_t)a4 error:(id *)a5;
- (void)recordUpdateFailedWithID:(id)a3 localGUID:(id)a4 error:(id)a5;
- (void)recordUpdateSucceededWithRecord:(id)a3;
@end

@implementation IMDUpdateV2RecordStore

- (id)batchOfRecordsToWriteWithFilter:(unint64_t)a3 limit:(int64_t)a4 error:(id *)a5
{
  v50 = *MEMORY[0x277D85DE8];
  v7 = [IMDMessageStore sharedInstance:a3];
  v8 = [v7 messagesPendingUpdateT2ToCloudKitWithLimit:a4];

  v40 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  recordNameToMessageItemMap = self->_recordNameToMessageItemMap;
  self->_recordNameToMessageItemMap = v9;

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v8;
  v11 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v11)
  {
    v13 = *v43;
    *&v12 = 138412290;
    v39 = v12;
    do
    {
      v14 = 0;
      do
      {
        if (*v43 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v42 + 1) + 8 * v14);
        v16 = MEMORY[0x277D1AA28];
        v17 = +[IMDRecordZoneManager sharedInstance];
        v18 = [v17 updateRecordZoneID];
        v19 = +[IMDCKRecordSaltManager sharedInstance];
        v20 = [v19 cachedSalt];
        v21 = [v16 createCKRecordForUpdateT2:v15 zoneID:v18 salt:v20];

        if (v21)
        {
          v22 = [(IMDUpdateV2RecordStore *)self recordNameToMessageItemMap];
          v23 = [v21 recordID];
          v24 = [v23 recordName];
          v25 = [v22 objectForKeyedSubscript:v24];
          v26 = v25 == 0;

          if (!v26)
          {
            goto LABEL_20;
          }

          v27 = [(IMDUpdateV2RecordStore *)self recordNameToMessageItemMap];
          v28 = [v21 recordID];
          v29 = [v28 recordName];
          [v27 setObject:v15 forKeyedSubscript:v29];

          v30 = [v15 objectForKeyedSubscript:@"MID"];
          v31 = [v30 stringValue];

          if (v31)
          {
            [v40 setObject:v21 forKey:v31];
          }

          else
          {
            v36 = IMLogHandleForCategory();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              *buf = v39;
              v48 = v15;
              _os_log_error_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_ERROR, "messageItem guid is nil when setting batch of update records: %@", buf, 0xCu);
            }
          }
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v32 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              *buf = v39;
              v48 = v15;
              _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "**** T2 Update item [%@] could not be converted to CKRecord, marking it as clean and moving on.", buf, 0xCu);
            }
          }

          v33 = [v15 objectForKey:@"MID"];
          v31 = [v33 stringValue];

          if (v31)
          {
            v34 = [MEMORY[0x277D18EB0] synchronousDatabase];
            v46 = v31;
            v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
            [v34 updateMessagesSyncedSyndicationRangesForGUIDs:v35 toStatus:1];
          }
        }

LABEL_20:
        ++v14;
      }

      while (v11 != v14);
      v11 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
    }

    while (v11);
  }

  v37 = *MEMORY[0x277D85DE8];

  return v40;
}

- (void)recordUpdateSucceededWithRecord:(id)a3
{
  v4 = a3;
  v5 = [(IMDUpdateV2RecordStore *)self recordNameToMessageItemMap];
  v6 = [v4 recordID];
  v7 = [v6 recordName];
  v8 = [v5 objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = [v8 objectForKeyedSubscript:@"MID"];
    v10 = [v9 stringValue];

    v11 = [v8 objectForKeyedSubscript:@"SR"];
    v12 = [v11 stringValue];

    v13 = +[IMDChatRegistry sharedInstance];
    [v13 updateSyncedSyndicationRanges:v12 forGUID:v10];
  }

  else if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "No message item present in recordNameToMessageItemMap!", v15, 2u);
    }
  }
}

- (void)recordUpdateFailedWithID:(id)a3 localGUID:(id)a4 error:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v8 recordName];
      v24 = 138412546;
      v25 = v10;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Error %@ while writing up record %@", &v24, 0x16u);
    }
  }

  v13 = +[IMDCKUtilities sharedInstance];
  v14 = [v13 extractServerRecordFromCKServerErrorRecordChanged:v10];

  v15 = [(IMDUpdateV2RecordStore *)self recordNameToMessageItemMap];
  v16 = [v8 recordName];
  v17 = [v15 objectForKeyedSubscript:v16];

  v18 = [v17 objectForKeyedSubscript:@"ROWID"];
  v19 = [v18 longLongValue];
  if (v14)
  {
    v20 = v19;
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v24 = 138412290;
        v25 = v10;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Extracted record from server error %@", &v24, 0xCu);
      }
    }

    v22 = +[IMDChatRegistry sharedInstance];
    [v22 handleMessageUpdateConflictType:@"UT2" serverRecord:v14 localRowID:v20];
  }

  v23 = *MEMORY[0x277D85DE8];
}

@end