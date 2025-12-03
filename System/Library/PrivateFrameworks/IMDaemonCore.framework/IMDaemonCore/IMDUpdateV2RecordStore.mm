@interface IMDUpdateV2RecordStore
- (id)batchOfRecordsToWriteWithFilter:(unint64_t)filter limit:(int64_t)limit error:(id *)error;
- (void)recordUpdateFailedWithID:(id)d localGUID:(id)iD error:(id)error;
- (void)recordUpdateSucceededWithRecord:(id)record;
@end

@implementation IMDUpdateV2RecordStore

- (id)batchOfRecordsToWriteWithFilter:(unint64_t)filter limit:(int64_t)limit error:(id *)error
{
  v50 = *MEMORY[0x277D85DE8];
  v7 = [IMDMessageStore sharedInstance:filter];
  v8 = [v7 messagesPendingUpdateT2ToCloudKitWithLimit:limit];

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
        updateRecordZoneID = [v17 updateRecordZoneID];
        v19 = +[IMDCKRecordSaltManager sharedInstance];
        cachedSalt = [v19 cachedSalt];
        v21 = [v16 createCKRecordForUpdateT2:v15 zoneID:updateRecordZoneID salt:cachedSalt];

        if (v21)
        {
          recordNameToMessageItemMap = [(IMDUpdateV2RecordStore *)self recordNameToMessageItemMap];
          recordID = [v21 recordID];
          recordName = [recordID recordName];
          v25 = [recordNameToMessageItemMap objectForKeyedSubscript:recordName];
          v26 = v25 == 0;

          if (!v26)
          {
            goto LABEL_20;
          }

          recordNameToMessageItemMap2 = [(IMDUpdateV2RecordStore *)self recordNameToMessageItemMap];
          recordID2 = [v21 recordID];
          recordName2 = [recordID2 recordName];
          [recordNameToMessageItemMap2 setObject:v15 forKeyedSubscript:recordName2];

          v30 = [v15 objectForKeyedSubscript:@"MID"];
          stringValue = [v30 stringValue];

          if (stringValue)
          {
            [v40 setObject:v21 forKey:stringValue];
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
          stringValue = [v33 stringValue];

          if (stringValue)
          {
            synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
            v46 = stringValue;
            v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
            [synchronousDatabase updateMessagesSyncedSyndicationRangesForGUIDs:v35 toStatus:1];
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

- (void)recordUpdateSucceededWithRecord:(id)record
{
  recordCopy = record;
  recordNameToMessageItemMap = [(IMDUpdateV2RecordStore *)self recordNameToMessageItemMap];
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  v8 = [recordNameToMessageItemMap objectForKeyedSubscript:recordName];

  if (v8)
  {
    v9 = [v8 objectForKeyedSubscript:@"MID"];
    stringValue = [v9 stringValue];

    v11 = [v8 objectForKeyedSubscript:@"SR"];
    stringValue2 = [v11 stringValue];

    v13 = +[IMDChatRegistry sharedInstance];
    [v13 updateSyncedSyndicationRanges:stringValue2 forGUID:stringValue];
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

- (void)recordUpdateFailedWithID:(id)d localGUID:(id)iD error:(id)error
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  errorCopy = error;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      recordName = [dCopy recordName];
      v24 = 138412546;
      v25 = errorCopy;
      v26 = 2112;
      v27 = recordName;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Error %@ while writing up record %@", &v24, 0x16u);
    }
  }

  v13 = +[IMDCKUtilities sharedInstance];
  v14 = [v13 extractServerRecordFromCKServerErrorRecordChanged:errorCopy];

  recordNameToMessageItemMap = [(IMDUpdateV2RecordStore *)self recordNameToMessageItemMap];
  recordName2 = [dCopy recordName];
  v17 = [recordNameToMessageItemMap objectForKeyedSubscript:recordName2];

  v18 = [v17 objectForKeyedSubscript:@"ROWID"];
  longLongValue = [v18 longLongValue];
  if (v14)
  {
    v20 = longLongValue;
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v24 = 138412290;
        v25 = errorCopy;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Extracted record from server error %@", &v24, 0xCu);
      }
    }

    v22 = +[IMDChatRegistry sharedInstance];
    [v22 handleMessageUpdateConflictType:@"UT2" serverRecord:v14 localRowID:v20];
  }

  v23 = *MEMORY[0x277D85DE8];
}

@end