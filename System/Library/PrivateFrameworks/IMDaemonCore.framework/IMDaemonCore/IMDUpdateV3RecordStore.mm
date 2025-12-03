@interface IMDUpdateV3RecordStore
- (id)batchOfRecordsToWriteWithFilter:(unint64_t)filter limit:(int64_t)limit error:(id *)error;
- (void)recordUpdateFailedWithID:(id)d localGUID:(id)iD error:(id)error;
- (void)recordUpdateSucceededWithRecord:(id)record;
@end

@implementation IMDUpdateV3RecordStore

- (id)batchOfRecordsToWriteWithFilter:(unint64_t)filter limit:(int64_t)limit error:(id *)error
{
  v58 = *MEMORY[0x277D85DE8];
  v6 = [IMDMessageStore sharedInstance:filter];
  v7 = [v6 messagesPendingUpdateT3ToCloudKitWithLimit:limit];

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
            updateRecordZoneID = [v18 updateRecordZoneID];
            v20 = +[IMDCKRecordSaltManager sharedInstance];
            cachedSalt = [v20 cachedSalt];
            v22 = [v17 createCKRecordForUpdateT3:v16 zoneID:updateRecordZoneID salt:cachedSalt];

            if (v22)
            {
              recordNameToRowIDMap = [(IMDUpdateV3RecordStore *)self recordNameToRowIDMap];
              recordID = [v22 recordID];
              recordName = [recordID recordName];
              v26 = [recordNameToRowIDMap objectForKeyedSubscript:recordName];
              v27 = v26 == 0;

              if (v27)
              {
                [v43 setObject:v22 forKey:v48];
                v28 = [v11 objectForKeyedSubscript:@"ROWID"];
                recordNameToRowIDMap2 = [(IMDUpdateV3RecordStore *)self recordNameToRowIDMap];
                recordID2 = [v22 recordID];
                recordName2 = [recordID2 recordName];
                [recordNameToRowIDMap2 setObject:v28 forKeyedSubscript:recordName2];

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
              longLongValue = [v39 longLongValue];

              v28 = +[IMDMessageStore sharedInstance];
              [v28 markMessageAsCleanWithROWID:longLongValue];
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
            longLongValue2 = [v36 longLongValue];

            v16 = +[IMDMessageStore sharedInstance];
            [v16 markMessageAsCleanWithROWID:longLongValue2];
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
        longLongValue3 = [v33 longLongValue];

        v15 = +[IMDMessageStore sharedInstance];
        [v15 markMessageAsCleanWithROWID:longLongValue3];
LABEL_29:
      }

      v47 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v47);
  }

  v41 = *MEMORY[0x277D85DE8];

  return v43;
}

- (void)recordUpdateSucceededWithRecord:(id)record
{
  recordCopy = record;
  recordNameToRowIDMap = [(IMDUpdateV3RecordStore *)self recordNameToRowIDMap];
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  v8 = [recordNameToRowIDMap objectForKeyedSubscript:recordName];

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

- (void)recordUpdateFailedWithID:(id)d localGUID:(id)iD error:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  errorCopy = error;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      recordName = [dCopy recordName];
      v23 = 138412546;
      v24 = errorCopy;
      v25 = 2112;
      v26 = recordName;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Error %@ while writing up record %@", &v23, 0x16u);
    }
  }

  v13 = +[IMDCKUtilities sharedInstance];
  v14 = [v13 extractServerRecordFromCKServerErrorRecordChanged:errorCopy];

  recordNameToRowIDMap = [(IMDUpdateV3RecordStore *)self recordNameToRowIDMap];
  recordName2 = [dCopy recordName];
  v17 = [recordNameToRowIDMap objectForKeyedSubscript:recordName2];

  longLongValue = [v17 longLongValue];
  if (v14)
  {
    v19 = longLongValue;
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v23 = 138412290;
        v24 = errorCopy;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Extracted record from server error %@", &v23, 0xCu);
      }
    }

    v21 = +[IMDChatRegistry sharedInstance];
    [v21 handleMessageUpdateConflictType:@"UT3" serverRecord:v14 localRowID:v19];
  }

  v22 = *MEMORY[0x277D85DE8];
}

@end