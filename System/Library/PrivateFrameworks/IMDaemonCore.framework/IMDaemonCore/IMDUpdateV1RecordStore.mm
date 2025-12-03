@interface IMDUpdateV1RecordStore
- (id)batchOfRecordsToWriteWithFilter:(unint64_t)filter limit:(int64_t)limit error:(id *)error;
- (void)recordUpdateFailedWithID:(id)d localGUID:(id)iD error:(id)error;
- (void)recordUpdateSucceededWithRecord:(id)record;
@end

@implementation IMDUpdateV1RecordStore

- (id)batchOfRecordsToWriteWithFilter:(unint64_t)filter limit:(int64_t)limit error:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = [IMDMessageStore sharedInstance:filter];
  v8 = [v7 messagesPendingUpdateT1ToCloudKitWithLimit:limit];

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
        updateRecordZoneID = [v17 updateRecordZoneID];
        v19 = +[IMDCKRecordSaltManager sharedInstance];
        cachedSalt = [v19 cachedSalt];
        v21 = [v16 createCKRecordForUpdateT1:v15 zoneID:updateRecordZoneID salt:cachedSalt];

        if (v21)
        {
          recordNameToRowIDMap = [(IMDUpdateV1RecordStore *)self recordNameToRowIDMap];
          recordID = [v21 recordID];
          recordName = [recordID recordName];
          v25 = [recordNameToRowIDMap objectForKeyedSubscript:recordName];
          v26 = v25 == 0;

          if (!v26)
          {
            goto LABEL_15;
          }

          v27 = [v15 objectForKeyedSubscript:@"MID"];
          stringValue = [v27 stringValue];

          [v39 setObject:v21 forKey:stringValue];
          v29 = [v15 objectForKeyedSubscript:@"ROWID"];
          recordNameToRowIDMap2 = [(IMDUpdateV1RecordStore *)self recordNameToRowIDMap];
          recordID2 = [v21 recordID];
          recordName2 = [recordID2 recordName];
          [recordNameToRowIDMap2 setObject:v29 forKeyedSubscript:recordName2];
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
          longLongValue = [v34 longLongValue];

          stringValue = +[IMDMessageStore sharedInstance];
          [stringValue markMessageAsCleanWithROWID:longLongValue];
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

- (void)recordUpdateSucceededWithRecord:(id)record
{
  recordCopy = record;
  recordNameToRowIDMap = [(IMDUpdateV1RecordStore *)self recordNameToRowIDMap];
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

  recordNameToRowIDMap = [(IMDUpdateV1RecordStore *)self recordNameToRowIDMap];
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
    [v21 handleMessageUpdateConflictType:@"UT1" serverRecord:v14 localRowID:v19];
  }

  v22 = *MEMORY[0x277D85DE8];
}

@end