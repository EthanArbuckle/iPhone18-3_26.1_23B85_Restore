@interface IMDCKAttachmentSyncCKOperationFactory
+ (id)_desiredKeysArrayForType:(int64_t)a3;
- (BOOL)_defaultsSayWeHaveSyncedOnce;
- (id)_attachmentFetchRecordZoneChangesOptionsDictionaryUsingToken:(id)a3 zoneID:(id)a4 resultsLimit:(unint64_t)a5 desiredKeys:(int64_t)a6;
- (id)_operationGroupWithName:(id)a3;
- (id)deleteAttachmentCKOperationUsingRecordIDstoDelete:(id)a3;
- (id)fetchAttachmentZoneChangesCKOperationUsingToken:(id)a3 zoneID:(id)a4 resultsLimit:(unint64_t)a5 desiredKeys:(int64_t)a6 operationGroupName:(id)a7 activity:(id)a8;
- (id)fetchAttachmentZoneRecords:(id)a3 desiredKeys:(int64_t)a4 operationGroupName:(id)a5 activity:(id)a6;
- (id)saveAttachmentsCKOperationUsingRecordsToSave:(id)a3 operationGroupName:(id)a4 activity:(id)a5;
@end

@implementation IMDCKAttachmentSyncCKOperationFactory

- (id)fetchAttachmentZoneChangesCKOperationUsingToken:(id)a3 zoneID:(id)a4 resultsLimit:(unint64_t)a5 desiredKeys:(int64_t)a6 operationGroupName:(id)a7 activity:(id)a8
{
  v32 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  v18 = [(IMDCKAttachmentSyncCKOperationFactory *)self _attachmentFetchRecordZoneChangesOptionsDictionaryUsingToken:v14 zoneID:v15 resultsLimit:a5 desiredKeys:a6];
  v19 = objc_alloc(MEMORY[0x277CBC3B8]);
  v20 = IMSingleObjectArray();
  v21 = [v19 initWithRecordZoneIDs:v20 configurationsByRecordZoneID:v18];

  v22 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v22 setQualityOfService:17];
  [v22 setAllowsCellularAccess:1];
  [v22 im_setActivity:v17];
  v23 = [(IMDCKAttachmentSyncCKOperationFactory *)self _operationGroupWithName:v16];
  [v21 setGroup:v23];

  [v21 setConfiguration:v22];
  [v21 setFetchAllChanges:0];
  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [v21 operationID];
      v28 = 138412546;
      v29 = v25;
      v30 = 2112;
      v31 = v18;
      _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Created fetch attachment operation  ID %@ fetch operation dictionary %@", &v28, 0x16u);
    }
  }

  v26 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)fetchAttachmentZoneRecords:(id)a3 desiredKeys:(int64_t)a4 operationGroupName:(id)a5 activity:(id)a6
{
  v10 = MEMORY[0x277CBC3E0];
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = [[v10 alloc] initWithRecordIDs:v13];

  v15 = [objc_opt_class() _desiredKeysArrayForType:a4];
  [v14 setDesiredKeys:v15];
  v16 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v16 setQualityOfService:17];
  [v16 setAllowsCellularAccess:1];
  [v16 im_setActivity:v11];

  v17 = [(IMDCKAttachmentSyncCKOperationFactory *)self _operationGroupWithName:v12];

  [v14 setGroup:v17];
  [v14 setConfiguration:v16];

  return v14;
}

- (id)saveAttachmentsCKOperationUsingRecordsToSave:(id)a3 operationGroupName:(id)a4 activity:(id)a5
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
  [v12 im_setActivity:v10];
  v13 = [(IMDCKAttachmentSyncCKOperationFactory *)self _operationGroupWithName:v9];
  [v13 setQuantity:{objc_msgSend(v8, "count")}];
  [v11 setConfiguration:v12];
  [v11 setGroup:v13];
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
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Created modify attachment operation ID %@ operationGroupName %@", &v20, 0x16u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)_defaultsSayWeHaveSyncedOnce
{
  v2 = +[IMDCKUtilities sharedInstance];
  v3 = [v2 syncState];
  v4 = [v3 lastSyncDate];
  v5 = v4 != 0;

  return v5;
}

- (id)_operationGroupWithName:(id)a3
{
  v3 = MEMORY[0x277CBC4F8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setName:v4];

  return v5;
}

- (id)_attachmentFetchRecordZoneChangesOptionsDictionaryUsingToken:(id)a3 zoneID:(id)a4 resultsLimit:(unint64_t)a5 desiredKeys:(int64_t)a6
{
  v9 = MEMORY[0x277CBEB38];
  v10 = a4;
  v11 = a3;
  v12 = objc_alloc_init(v9);
  v13 = objc_alloc_init(MEMORY[0x277CBC3A0]);
  v14 = [objc_opt_class() _desiredKeysArrayForType:a6];
  [v13 setDesiredKeys:v14];
  [v13 setPreviousServerChangeToken:v11];

  [v13 setResultsLimit:a5];
  [v13 setFetchNewestChangesFirst:v11 == 0];
  [v12 setObject:v13 forKey:v10];

  return v12;
}

+ (id)_desiredKeysArrayForType:(int64_t)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    v9[0] = @"cm";
    v9[1] = @"m";
    v9[2] = @"lqa";
    v9[3] = @"avid";
    v3 = MEMORY[0x277CBEA60];
    v4 = v9;
    v5 = 4;
    goto LABEL_5;
  }

  if (!a3)
  {
    v10[0] = @"cm";
    v10[1] = @"m";
    v3 = MEMORY[0x277CBEA60];
    v4 = v10;
    v5 = 2;
LABEL_5:
    v6 = [v3 arrayWithObjects:v4 count:v5];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)deleteAttachmentCKOperationUsingRecordIDstoDelete:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:0 recordIDsToDelete:v3];
  [v4 setAtomic:0];
  v5 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v5 setQualityOfService:17];
  [v5 setAllowsCellularAccess:1];
  v6 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  [v6 setName:@"AttachmentDelete"];
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
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Created deleted attachment operation ID %@", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

@end