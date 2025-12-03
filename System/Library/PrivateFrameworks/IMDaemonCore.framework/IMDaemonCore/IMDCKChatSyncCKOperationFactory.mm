@interface IMDCKChatSyncCKOperationFactory
- (id)_chatFetchRecordZoneChangesCKConfiguration:(id)configuration;
- (id)_chatFetchRecordZoneChangesOptionsDictionaryUsingToken:(id)token zoneID:(id)d resultsLimit:(unint64_t)limit;
- (id)_chatSyncOperationGroupWithName:(id)name;
- (id)_chatWriteRecordsCKConfiguration:(id)configuration;
- (id)deleteChatCKOperationUsingRecordIDstoDelete:(id)delete;
- (id)fetchChatCKOperationUsingRecordIDs:(id)ds;
- (id)fetchChatZoneChangesCKOperationUsingToken:(id)token zone:(id)zone resultsLimit:(unint64_t)limit groupName:(id)name activity:(id)activity;
- (id)saveChatsCKOperationUsingRecordsToSave:(id)save activity:(id)activity;
@end

@implementation IMDCKChatSyncCKOperationFactory

- (id)_chatFetchRecordZoneChangesOptionsDictionaryUsingToken:(id)token zoneID:(id)d resultsLimit:(unint64_t)limit
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

- (id)_chatFetchRecordZoneChangesCKConfiguration:(id)configuration
{
  v3 = MEMORY[0x277CBC4F0];
  configurationCopy = configuration;
  v5 = objc_alloc_init(v3);
  [v5 setQualityOfService:17];
  [v5 setAllowsCellularAccess:1];
  [v5 im_setActivity:configurationCopy];

  return v5;
}

- (id)_chatSyncOperationGroupWithName:(id)name
{
  nameCopy = name;
  if (![(__CFString *)nameCopy length])
  {

    nameCopy = @"ChatSync";
  }

  v4 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  [v4 setName:nameCopy];

  return v4;
}

- (id)fetchChatZoneChangesCKOperationUsingToken:(id)token zone:(id)zone resultsLimit:(unint64_t)limit groupName:(id)name activity:(id)activity
{
  v29 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  zoneCopy = zone;
  nameCopy = name;
  activityCopy = activity;
  if (zoneCopy)
  {
    v16 = objc_alloc(MEMORY[0x277CBC3B8]);
    v17 = IMSingleObjectArray();
    v18 = [(IMDCKChatSyncCKOperationFactory *)self _chatFetchRecordZoneChangesOptionsDictionaryUsingToken:tokenCopy zoneID:zoneCopy resultsLimit:limit];
    v19 = [v16 initWithRecordZoneIDs:v17 configurationsByRecordZoneID:v18];

    v20 = [(IMDCKChatSyncCKOperationFactory *)self _chatFetchRecordZoneChangesCKConfiguration:activityCopy];
    [v19 setConfiguration:v20];

    v21 = [(IMDCKChatSyncCKOperationFactory *)self _chatSyncOperationGroupWithName:nameCopy];
    [v19 setGroup:v21];

    [v19 setFetchAllChanges:1];
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        operationID = [v19 operationID];
        v27 = 138412290;
        v28 = operationID;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Created fetch chat operation ID %@", &v27, 0xCu);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "fetchChatZoneChangesCKOperationUsingToken was passed in a nil zone", &v27, 2u);
      }
    }

    v19 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_chatWriteRecordsCKConfiguration:(id)configuration
{
  v3 = MEMORY[0x277CBC4F0];
  configurationCopy = configuration;
  v5 = objc_alloc_init(v3);
  [v5 setQualityOfService:17];
  [v5 setAllowsCellularAccess:1];
  [v5 im_setActivity:configurationCopy];

  return v5;
}

- (id)saveChatsCKOperationUsingRecordsToSave:(id)save activity:(id)activity
{
  v19 = *MEMORY[0x277D85DE8];
  saveCopy = save;
  activityCopy = activity;
  if (saveCopy)
  {
    v8 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:saveCopy recordIDsToDelete:0];
    [v8 setAtomic:1];
    [v8 setSavePolicy:1];
    v9 = [(IMDCKChatSyncCKOperationFactory *)self _chatWriteRecordsCKConfiguration:activityCopy];
    [v8 setConfiguration:v9];

    _chatSyncOperationGroup = [(IMDCKChatSyncCKOperationFactory *)self _chatSyncOperationGroup];
    [v8 setGroup:_chatSyncOperationGroup];

    group = [v8 group];
    [group setQuantity:{objc_msgSend(saveCopy, "count")}];

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        operationID = [v8 operationID];
        v17 = 138412290;
        v18 = operationID;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Created modify chat operation ID %@", &v17, 0xCu);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "writeChatsOperationUsingRecordsToSave was passed in a nil records array", &v17, 2u);
      }
    }

    v8 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)deleteChatCKOperationUsingRecordIDstoDelete:(id)delete
{
  v14 = *MEMORY[0x277D85DE8];
  deleteCopy = delete;
  v5 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:0 recordIDsToDelete:deleteCopy];
  [v5 setAtomic:0];
  v6 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v6 setQualityOfService:17];
  [v6 setAllowsCellularAccess:1];
  _chatSyncOperationGroup = [(IMDCKChatSyncCKOperationFactory *)self _chatSyncOperationGroup];
  [_chatSyncOperationGroup setQuantity:{objc_msgSend(deleteCopy, "count")}];
  [v5 setConfiguration:v6];
  [v5 setGroup:_chatSyncOperationGroup];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      operationID = [v5 operationID];
      v12 = 138412290;
      v13 = operationID;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Created deleted chat operation ID %@", &v12, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)fetchChatCKOperationUsingRecordIDs:(id)ds
{
  v14 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v5 = [objc_alloc(MEMORY[0x277CBC3E0]) initWithRecordIDs:dsCopy];
  v6 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v6 setQualityOfService:17];
  [v6 setAllowsCellularAccess:1];
  _chatSyncOperationGroup = [(IMDCKChatSyncCKOperationFactory *)self _chatSyncOperationGroup];
  [_chatSyncOperationGroup setQuantity:{objc_msgSend(dsCopy, "count")}];
  [v5 setConfiguration:v6];
  [v5 setGroup:_chatSyncOperationGroup];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      operationID = [v5 operationID];
      v12 = 138412290;
      v13 = operationID;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Created fetch chat operation ID %@", &v12, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

@end