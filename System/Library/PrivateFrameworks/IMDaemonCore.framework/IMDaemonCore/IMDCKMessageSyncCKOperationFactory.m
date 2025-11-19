@interface IMDCKMessageSyncCKOperationFactory
- (id)_messageFetchRecordZoneChangesOptionsDictionaryUsingToken:(id)a3 zoneID:(id)a4 resultsLimit:(unint64_t)a5;
- (id)_operationGroupWithName:(id)a3;
- (id)deleteMessageCKOperationUsingRecordIDstoDelete:(id)a3;
- (id)deleteRecoverableMessageCKOperationUsingRecordIDstoDelete:(id)a3;
- (id)fetchArchivedRecordsOperationWithSyncToken:(id)a3 zoneID:(id)a4 activity:(id)a5;
- (id)fetchMessageZoneChangesCKOperationUsingToken:(id)a3 zoneID:(id)a4 resultsLimit:(unint64_t)a5 operationGroupName:(id)a6 activity:(id)a7;
- (id)saveMessagesCKOperationUsingRecordsToSave:(id)a3 operationGroupName:(id)a4 activity:(id)a5;
@end

@implementation IMDCKMessageSyncCKOperationFactory

- (id)_messageFetchRecordZoneChangesOptionsDictionaryUsingToken:(id)a3 zoneID:(id)a4 resultsLimit:(unint64_t)a5
{
  v7 = MEMORY[0x277CBEB38];
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(v7);
  v11 = objc_alloc_init(MEMORY[0x277CBC3A0]);
  [v11 setDesiredKeys:0];
  [v11 setPreviousServerChangeToken:v9];

  [v11 setResultsLimit:a5];
  [v11 setFetchNewestChangesFirst:v9 == 0];
  [v10 setObject:v11 forKey:v8];

  return v10;
}

- (id)_operationGroupWithName:(id)a3
{
  v3 = MEMORY[0x277CBC4F8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setName:v4];

  return v5;
}

- (id)fetchMessageZoneChangesCKOperationUsingToken:(id)a3 zoneID:(id)a4 resultsLimit:(unint64_t)a5 operationGroupName:(id)a6 activity:(id)a7
{
  v33 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v28 = v12;
  v16 = [(IMDCKMessageSyncCKOperationFactory *)self _messageFetchRecordZoneChangesOptionsDictionaryUsingToken:v12 zoneID:v13 resultsLimit:a5];
  v17 = objc_alloc(MEMORY[0x277CBC3B8]);
  v18 = IMSingleObjectArray();
  v19 = [v17 initWithRecordZoneIDs:v18 configurationsByRecordZoneID:v16];

  v20 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v20 setQualityOfService:17];
  [v20 setAllowsCellularAccess:1];
  [v20 im_setActivity:v15];
  v21 = [(IMDCKMessageSyncCKOperationFactory *)self _operationGroupWithName:v14];
  [v19 setGroup:v21];

  [v19 setConfiguration:v20];
  [v19 setFetchAllChanges:0];
  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = [v19 operationID];
      v24 = [v19 group];
      v25 = [v24 name];
      *buf = 138412546;
      v30 = v23;
      v31 = 2112;
      v32 = v25;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Created fetch message operation ID %@ operationGroupName %@", buf, 0x16u);
    }
  }

  v26 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)saveMessagesCKOperationUsingRecordsToSave:(id)a3 operationGroupName:(id)a4 activity:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:v8 recordIDsToDelete:0];
  [v11 setAtomic:0];
  v12 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v12 setQualityOfService:17];
  [v12 setAllowsCellularAccess:1];
  v13 = [(IMDCKMessageSyncCKOperationFactory *)self _operationGroupWithName:v9];
  [v13 setQuantity:{objc_msgSend(v8, "count")}];
  [v11 setConfiguration:v12];
  [v11 setGroup:v13];
  [v11 setSavePolicy:1];
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v11 operationID];
      v16 = [v11 group];
      v17 = [v16 name];
      v20 = 138412546;
      v21 = v15;
      v22 = 2112;
      v23 = v17;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Created modify message operation ID %@ operationGroupName %@", &v20, 0x16u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)deleteMessageCKOperationUsingRecordIDstoDelete:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:0 recordIDsToDelete:v3];
  [v4 setAtomic:0];
  v5 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v5 setQualityOfService:17];
  [v5 setAllowsCellularAccess:1];
  v6 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  [v6 setName:@"MessageDelete"];
  [v6 setQuantity:{objc_msgSend(v3, "count")}];
  [v4 setConfiguration:v5];
  [v4 setGroup:v6];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v4 operationID];
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Created deleted message operation ID %@", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)deleteRecoverableMessageCKOperationUsingRecordIDstoDelete:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:0 recordIDsToDelete:v3];
  [v4 setAtomic:0];
  v5 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v5 setQualityOfService:17];
  [v5 setAllowsCellularAccess:1];
  v6 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  [v6 setName:@"RecoverableMessageDelete"];
  [v6 setQuantity:{objc_msgSend(v3, "count")}];
  [v4 setConfiguration:v5];
  [v4 setGroup:v6];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v4 operationID];
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Created recoverable deleted message operation ID %@", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)fetchArchivedRecordsOperationWithSyncToken:(id)a3 zoneID:(id)a4 activity:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x277CBC378]);
  [v11 setPreviousServerChangeToken:v8];
  v12 = [(IMDCKMessageSyncCKOperationFactory *)self _fetchOptionsDictionaryWithFetchOptions:v11 andZoneID:v9];
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
      v18 = [v16 operationID];
      v21 = 138412546;
      v22 = v18;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Created fetched archived operation ID %@ using zone id %@", &v21, 0x16u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

@end