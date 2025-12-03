@interface IMDCKMessageSyncCKOperationFactory
- (id)_messageFetchRecordZoneChangesOptionsDictionaryUsingToken:(id)token zoneID:(id)d resultsLimit:(unint64_t)limit;
- (id)_operationGroupWithName:(id)name;
- (id)deleteMessageCKOperationUsingRecordIDstoDelete:(id)delete;
- (id)deleteRecoverableMessageCKOperationUsingRecordIDstoDelete:(id)delete;
- (id)fetchArchivedRecordsOperationWithSyncToken:(id)token zoneID:(id)d activity:(id)activity;
- (id)fetchMessageZoneChangesCKOperationUsingToken:(id)token zoneID:(id)d resultsLimit:(unint64_t)limit operationGroupName:(id)name activity:(id)activity;
- (id)saveMessagesCKOperationUsingRecordsToSave:(id)save operationGroupName:(id)name activity:(id)activity;
@end

@implementation IMDCKMessageSyncCKOperationFactory

- (id)_messageFetchRecordZoneChangesOptionsDictionaryUsingToken:(id)token zoneID:(id)d resultsLimit:(unint64_t)limit
{
  v7 = MEMORY[0x277CBEB38];
  dCopy = d;
  tokenCopy = token;
  v10 = objc_alloc_init(v7);
  v11 = objc_alloc_init(MEMORY[0x277CBC3A0]);
  [v11 setDesiredKeys:0];
  [v11 setPreviousServerChangeToken:tokenCopy];

  [v11 setResultsLimit:limit];
  [v11 setFetchNewestChangesFirst:tokenCopy == 0];
  [v10 setObject:v11 forKey:dCopy];

  return v10;
}

- (id)_operationGroupWithName:(id)name
{
  v3 = MEMORY[0x277CBC4F8];
  nameCopy = name;
  v5 = objc_alloc_init(v3);
  [v5 setName:nameCopy];

  return v5;
}

- (id)fetchMessageZoneChangesCKOperationUsingToken:(id)token zoneID:(id)d resultsLimit:(unint64_t)limit operationGroupName:(id)name activity:(id)activity
{
  v33 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  dCopy = d;
  nameCopy = name;
  activityCopy = activity;
  v28 = tokenCopy;
  v16 = [(IMDCKMessageSyncCKOperationFactory *)self _messageFetchRecordZoneChangesOptionsDictionaryUsingToken:tokenCopy zoneID:dCopy resultsLimit:limit];
  v17 = objc_alloc(MEMORY[0x277CBC3B8]);
  v18 = IMSingleObjectArray();
  v19 = [v17 initWithRecordZoneIDs:v18 configurationsByRecordZoneID:v16];

  v20 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v20 setQualityOfService:17];
  [v20 setAllowsCellularAccess:1];
  [v20 im_setActivity:activityCopy];
  v21 = [(IMDCKMessageSyncCKOperationFactory *)self _operationGroupWithName:nameCopy];
  [v19 setGroup:v21];

  [v19 setConfiguration:v20];
  [v19 setFetchAllChanges:0];
  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      operationID = [v19 operationID];
      group = [v19 group];
      name = [group name];
      *buf = 138412546;
      v30 = operationID;
      v31 = 2112;
      v32 = name;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Created fetch message operation ID %@ operationGroupName %@", buf, 0x16u);
    }
  }

  v26 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)saveMessagesCKOperationUsingRecordsToSave:(id)save operationGroupName:(id)name activity:(id)activity
{
  v24 = *MEMORY[0x277D85DE8];
  saveCopy = save;
  nameCopy = name;
  activityCopy = activity;
  v11 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:saveCopy recordIDsToDelete:0];
  [v11 setAtomic:0];
  v12 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v12 setQualityOfService:17];
  [v12 setAllowsCellularAccess:1];
  v13 = [(IMDCKMessageSyncCKOperationFactory *)self _operationGroupWithName:nameCopy];
  [v13 setQuantity:{objc_msgSend(saveCopy, "count")}];
  [v11 setConfiguration:v12];
  [v11 setGroup:v13];
  [v11 setSavePolicy:1];
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      operationID = [v11 operationID];
      group = [v11 group];
      name = [group name];
      v20 = 138412546;
      v21 = operationID;
      v22 = 2112;
      v23 = name;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Created modify message operation ID %@ operationGroupName %@", &v20, 0x16u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)deleteMessageCKOperationUsingRecordIDstoDelete:(id)delete
{
  v13 = *MEMORY[0x277D85DE8];
  deleteCopy = delete;
  v4 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:0 recordIDsToDelete:deleteCopy];
  [v4 setAtomic:0];
  v5 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v5 setQualityOfService:17];
  [v5 setAllowsCellularAccess:1];
  v6 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  [v6 setName:@"MessageDelete"];
  [v6 setQuantity:{objc_msgSend(deleteCopy, "count")}];
  [v4 setConfiguration:v5];
  [v4 setGroup:v6];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      operationID = [v4 operationID];
      v11 = 138412290;
      v12 = operationID;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Created deleted message operation ID %@", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)deleteRecoverableMessageCKOperationUsingRecordIDstoDelete:(id)delete
{
  v13 = *MEMORY[0x277D85DE8];
  deleteCopy = delete;
  v4 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:0 recordIDsToDelete:deleteCopy];
  [v4 setAtomic:0];
  v5 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v5 setQualityOfService:17];
  [v5 setAllowsCellularAccess:1];
  v6 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  [v6 setName:@"RecoverableMessageDelete"];
  [v6 setQuantity:{objc_msgSend(deleteCopy, "count")}];
  [v4 setConfiguration:v5];
  [v4 setGroup:v6];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      operationID = [v4 operationID];
      v11 = 138412290;
      v12 = operationID;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Created recoverable deleted message operation ID %@", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)fetchArchivedRecordsOperationWithSyncToken:(id)token zoneID:(id)d activity:(id)activity
{
  v25 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  dCopy = d;
  activityCopy = activity;
  v11 = objc_alloc_init(MEMORY[0x277CBC378]);
  [v11 setPreviousServerChangeToken:tokenCopy];
  v12 = [(IMDCKMessageSyncCKOperationFactory *)self _fetchOptionsDictionaryWithFetchOptions:v11 andZoneID:dCopy];
  v13 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v13 setAllowsCellularAccess:1];
  [v13 setQualityOfService:17];
  v14 = objc_alloc(MEMORY[0x277CBC370]);
  v15 = IMSingleObjectArray();
  v16 = [v14 initWithRecordZoneIDs:v15 configurationsByRecordZoneID:v12];

  [v16 setFetchAllChanges:0];
  [v16 setConfiguration:v13];
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      operationID = [v16 operationID];
      v21 = 138412546;
      v22 = operationID;
      v23 = 2112;
      v24 = dCopy;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Created fetched archived operation ID %@ using zone id %@", &v21, 0x16u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

@end