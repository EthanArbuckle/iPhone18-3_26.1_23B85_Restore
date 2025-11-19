@interface IMDCKChatSyncCKOperationFactory
- (id)_chatFetchRecordZoneChangesCKConfiguration:(id)a3;
- (id)_chatFetchRecordZoneChangesOptionsDictionaryUsingToken:(id)a3 zoneID:(id)a4 resultsLimit:(unint64_t)a5;
- (id)_chatSyncOperationGroupWithName:(id)a3;
- (id)_chatWriteRecordsCKConfiguration:(id)a3;
- (id)deleteChatCKOperationUsingRecordIDstoDelete:(id)a3;
- (id)fetchChatCKOperationUsingRecordIDs:(id)a3;
- (id)fetchChatZoneChangesCKOperationUsingToken:(id)a3 zone:(id)a4 resultsLimit:(unint64_t)a5 groupName:(id)a6 activity:(id)a7;
- (id)saveChatsCKOperationUsingRecordsToSave:(id)a3 activity:(id)a4;
@end

@implementation IMDCKChatSyncCKOperationFactory

- (id)_chatFetchRecordZoneChangesOptionsDictionaryUsingToken:(id)a3 zoneID:(id)a4 resultsLimit:(unint64_t)a5
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

- (id)_chatFetchRecordZoneChangesCKConfiguration:(id)a3
{
  v3 = MEMORY[0x277CBC4F0];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setQualityOfService:17];
  [v5 setAllowsCellularAccess:1];
  [v5 im_setActivity:v4];

  return v5;
}

- (id)_chatSyncOperationGroupWithName:(id)a3
{
  v3 = a3;
  if (![(__CFString *)v3 length])
  {

    v3 = @"ChatSync";
  }

  v4 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  [v4 setName:v3];

  return v4;
}

- (id)fetchChatZoneChangesCKOperationUsingToken:(id)a3 zone:(id)a4 resultsLimit:(unint64_t)a5 groupName:(id)a6 activity:(id)a7
{
  v29 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (v13)
  {
    v16 = objc_alloc(MEMORY[0x277CBC3B8]);
    v17 = IMSingleObjectArray();
    v18 = [(IMDCKChatSyncCKOperationFactory *)self _chatFetchRecordZoneChangesOptionsDictionaryUsingToken:v12 zoneID:v13 resultsLimit:a5];
    v19 = [v16 initWithRecordZoneIDs:v17 configurationsByRecordZoneID:v18];

    v20 = [(IMDCKChatSyncCKOperationFactory *)self _chatFetchRecordZoneChangesCKConfiguration:v15];
    [v19 setConfiguration:v20];

    v21 = [(IMDCKChatSyncCKOperationFactory *)self _chatSyncOperationGroupWithName:v14];
    [v19 setGroup:v21];

    [v19 setFetchAllChanges:1];
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [v19 operationID];
        v27 = 138412290;
        v28 = v23;
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

- (id)_chatWriteRecordsCKConfiguration:(id)a3
{
  v3 = MEMORY[0x277CBC4F0];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setQualityOfService:17];
  [v5 setAllowsCellularAccess:1];
  [v5 im_setActivity:v4];

  return v5;
}

- (id)saveChatsCKOperationUsingRecordsToSave:(id)a3 activity:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:v6 recordIDsToDelete:0];
    [v8 setAtomic:1];
    [v8 setSavePolicy:1];
    v9 = [(IMDCKChatSyncCKOperationFactory *)self _chatWriteRecordsCKConfiguration:v7];
    [v8 setConfiguration:v9];

    v10 = [(IMDCKChatSyncCKOperationFactory *)self _chatSyncOperationGroup];
    [v8 setGroup:v10];

    v11 = [v8 group];
    [v11 setQuantity:{objc_msgSend(v6, "count")}];

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [v8 operationID];
        v17 = 138412290;
        v18 = v13;
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

- (id)deleteChatCKOperationUsingRecordIDstoDelete:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:0 recordIDsToDelete:v4];
  [v5 setAtomic:0];
  v6 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v6 setQualityOfService:17];
  [v6 setAllowsCellularAccess:1];
  v7 = [(IMDCKChatSyncCKOperationFactory *)self _chatSyncOperationGroup];
  [v7 setQuantity:{objc_msgSend(v4, "count")}];
  [v5 setConfiguration:v6];
  [v5 setGroup:v7];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v5 operationID];
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Created deleted chat operation ID %@", &v12, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)fetchChatCKOperationUsingRecordIDs:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBC3E0]) initWithRecordIDs:v4];
  v6 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v6 setQualityOfService:17];
  [v6 setAllowsCellularAccess:1];
  v7 = [(IMDCKChatSyncCKOperationFactory *)self _chatSyncOperationGroup];
  [v7 setQuantity:{objc_msgSend(v4, "count")}];
  [v5 setConfiguration:v6];
  [v5 setGroup:v7];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v5 operationID];
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Created fetch chat operation ID %@", &v12, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

@end