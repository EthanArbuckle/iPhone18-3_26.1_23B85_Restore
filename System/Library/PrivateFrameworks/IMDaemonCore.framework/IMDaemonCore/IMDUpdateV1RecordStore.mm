@interface IMDUpdateV1RecordStore
- (id)batchOfRecordsToWriteWithFilter:(unint64_t)a3 limit:(int64_t)a4 error:(id *)a5;
- (void)recordUpdateFailedWithID:(id)a3 localGUID:(id)a4 error:(id)a5;
- (void)recordUpdateSucceededWithRecord:(id)a3;
@end

@implementation IMDUpdateV1RecordStore

- (id)batchOfRecordsToWriteWithFilter:(unint64_t)a3 limit:(int64_t)a4 error:(id *)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = [IMDMessageStore sharedInstance:a3];
  v8 = [v7 messagesPendingUpdateT1ToCloudKitWithLimit:a4];

  v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  recordNameToRowIDMap = self->_recordNameToRowIDMap;
  self->_recordNameToRowIDMap = v9;

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v8;
  v11 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v11)
  {
    v13 = *v42;
    *&v12 = 138412290;
    v38 = v12;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v41 + 1) + 8 * i);
        v16 = MEMORY[0x277D1AA28];
        v17 = +[IMDRecordZoneManager sharedInstance];
        v18 = [v17 updateRecordZoneID];
        v19 = +[IMDCKRecordSaltManager sharedInstance];
        v20 = [v19 cachedSalt];
        v21 = [v16 createCKRecordForUpdateT1:v15 zoneID:v18 salt:v20];

        if (v21)
        {
          v22 = [(IMDUpdateV1RecordStore *)self recordNameToRowIDMap];
          v23 = [v21 recordID];
          v24 = [v23 recordName];
          v25 = [v22 objectForKeyedSubscript:v24];
          v26 = v25 == 0;

          if (!v26)
          {
            goto LABEL_15;
          }

          v27 = [v15 objectForKeyedSubscript:@"MID"];
          v28 = [v27 stringValue];

          [v39 setObject:v21 forKey:v28];
          v29 = [v15 objectForKeyedSubscript:@"ROWID"];
          v30 = [(IMDUpdateV1RecordStore *)self recordNameToRowIDMap];
          v31 = [v21 recordID];
          v32 = [v31 recordName];
          [v30 setObject:v29 forKeyedSubscript:v32];
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v33 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              *buf = v38;
              v46 = v15;
              _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "**** T1 Update item [%@] could not be converted to CKRecord, marking it as clean and moving on.", buf, 0xCu);
            }
          }

          v34 = [v15 objectForKeyedSubscript:@"ROWID"];
          v35 = [v34 longLongValue];

          v28 = +[IMDMessageStore sharedInstance];
          [v28 markMessageAsCleanWithROWID:v35];
        }

LABEL_15:
      }

      v11 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v11);
  }

  v36 = *MEMORY[0x277D85DE8];

  return v39;
}

- (void)recordUpdateSucceededWithRecord:(id)a3
{
  v4 = a3;
  v5 = [(IMDUpdateV1RecordStore *)self recordNameToRowIDMap];
  v6 = [v4 recordID];
  v7 = [v6 recordName];
  v8 = [v5 objectForKeyedSubscript:v7];

  if (v8)
  {
    [v8 longLongValue];
    IMDMessageRecordMarkMessageWithROWIDAsSyncedWithCloudKit();
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "No rowID present in recordNameToRowIDMap! ", v10, 2u);
    }
  }
}

- (void)recordUpdateFailedWithID:(id)a3 localGUID:(id)a4 error:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v8 recordName];
      v23 = 138412546;
      v24 = v10;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Error %@ while writing up record %@", &v23, 0x16u);
    }
  }

  v13 = +[IMDCKUtilities sharedInstance];
  v14 = [v13 extractServerRecordFromCKServerErrorRecordChanged:v10];

  v15 = [(IMDUpdateV1RecordStore *)self recordNameToRowIDMap];
  v16 = [v8 recordName];
  v17 = [v15 objectForKeyedSubscript:v16];

  v18 = [v17 longLongValue];
  if (v14)
  {
    v19 = v18;
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v23 = 138412290;
        v24 = v10;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Extracted record from server error %@", &v23, 0xCu);
      }
    }

    v21 = +[IMDChatRegistry sharedInstance];
    [v21 handleMessageUpdateConflictType:@"UT1" serverRecord:v14 localRowID:v19];
  }

  v22 = *MEMORY[0x277D85DE8];
}

@end