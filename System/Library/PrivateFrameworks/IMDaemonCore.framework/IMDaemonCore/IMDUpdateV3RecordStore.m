@interface IMDUpdateV3RecordStore
- (id)batchOfRecordsToWriteWithFilter:(unint64_t)a3 limit:(int64_t)a4 error:(id *)a5;
- (void)recordUpdateFailedWithID:(id)a3 localGUID:(id)a4 error:(id)a5;
- (void)recordUpdateSucceededWithRecord:(id)a3;
@end

@implementation IMDUpdateV3RecordStore

- (id)batchOfRecordsToWriteWithFilter:(unint64_t)a3 limit:(int64_t)a4 error:(id *)a5
{
  v58 = *MEMORY[0x277D85DE8];
  v6 = [IMDMessageStore sharedInstance:a3];
  v7 = [v6 messagesPendingUpdateT3ToCloudKitWithLimit:a4];

  v43 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  recordNameToRowIDMap = self->_recordNameToRowIDMap;
  self->_recordNameToRowIDMap = v8;

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v7;
  v47 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v47)
  {
    v46 = *v50;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v50 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v49 + 1) + 8 * i);
        v48 = [v11 objectForKeyedSubscript:@"MID"];
        v12 = +[IMDMessageStore sharedInstance];
        v13 = [v12 chatForMessageGUID:v48];

        if (v13)
        {
          v14 = [v11 objectForKeyedSubscript:@"service"];
          v15 = [v13 cloudKitChatIDForServiceName:v14];

          if (v15)
          {
            v53[0] = @"MID";
            v53[1] = @"CHATID";
            v54[0] = v48;
            v54[1] = v15;
            v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
            v17 = MEMORY[0x277D1AA28];
            v18 = +[IMDRecordZoneManager sharedInstance];
            v19 = [v18 updateRecordZoneID];
            v20 = +[IMDCKRecordSaltManager sharedInstance];
            v21 = [v20 cachedSalt];
            v22 = [v17 createCKRecordForUpdateT3:v16 zoneID:v19 salt:v21];

            if (v22)
            {
              v23 = [(IMDUpdateV3RecordStore *)self recordNameToRowIDMap];
              v24 = [v22 recordID];
              v25 = [v24 recordName];
              v26 = [v23 objectForKeyedSubscript:v25];
              v27 = v26 == 0;

              if (v27)
              {
                [v43 setObject:v22 forKey:v48];
                v28 = [v11 objectForKeyedSubscript:@"ROWID"];
                v29 = [(IMDUpdateV3RecordStore *)self recordNameToRowIDMap];
                v30 = [v22 recordID];
                v31 = [v30 recordName];
                [v29 setObject:v28 forKeyedSubscript:v31];

                goto LABEL_26;
              }
            }

            else
            {
              if (IMOSLoggingEnabled())
              {
                v38 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v56 = v11;
                  _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "**** T3 Update item [%@] could not be converted to CKRecord, marking it as clean and moving on.", buf, 0xCu);
                }
              }

              v39 = [v11 objectForKeyedSubscript:@"ROWID"];
              v40 = [v39 longLongValue];

              v28 = +[IMDMessageStore sharedInstance];
              [v28 markMessageAsCleanWithROWID:v40];
LABEL_26:
            }
          }

          else
          {
            if (IMOSLoggingEnabled())
            {
              v35 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v56 = v11;
                _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "**** T3 Update item [%@] chat had no cloudKitChatID!, marking it as clean and moving on.", buf, 0xCu);
              }
            }

            v36 = [v11 objectForKeyedSubscript:@"ROWID"];
            v37 = [v36 longLongValue];

            v16 = +[IMDMessageStore sharedInstance];
            [v16 markMessageAsCleanWithROWID:v37];
          }

          goto LABEL_29;
        }

        if (IMOSLoggingEnabled())
        {
          v32 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v56 = v11;
            _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "**** T3 Update item [%@] could not find a chat as a source of truth, marking it as clean and moving on.", buf, 0xCu);
          }
        }

        v33 = [v11 objectForKeyedSubscript:@"ROWID"];
        v34 = [v33 longLongValue];

        v15 = +[IMDMessageStore sharedInstance];
        [v15 markMessageAsCleanWithROWID:v34];
LABEL_29:
      }

      v47 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v47);
  }

  v41 = *MEMORY[0x277D85DE8];

  return v43;
}

- (void)recordUpdateSucceededWithRecord:(id)a3
{
  v4 = a3;
  v5 = [(IMDUpdateV3RecordStore *)self recordNameToRowIDMap];
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

  v15 = [(IMDUpdateV3RecordStore *)self recordNameToRowIDMap];
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
    [v21 handleMessageUpdateConflictType:@"UT3" serverRecord:v14 localRowID:v19];
  }

  v22 = *MEMORY[0x277D85DE8];
}

@end