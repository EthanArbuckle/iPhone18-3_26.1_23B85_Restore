@interface IMDCKAttachmentSyncCKOperationFactory
+ (id)_desiredKeysArrayForType:(int64_t)type;
- (BOOL)_defaultsSayWeHaveSyncedOnce;
- (id)_attachmentFetchRecordZoneChangesOptionsDictionaryUsingToken:(id)token zoneID:(id)d resultsLimit:(unint64_t)limit desiredKeys:(int64_t)keys;
- (id)_operationGroupWithName:(id)name;
- (id)deleteAttachmentCKOperationUsingRecordIDstoDelete:(id)delete;
- (id)fetchAttachmentZoneChangesCKOperationUsingToken:(id)token zoneID:(id)d resultsLimit:(unint64_t)limit desiredKeys:(int64_t)keys operationGroupName:(id)name activity:(id)activity;
- (id)fetchAttachmentZoneRecords:(id)records desiredKeys:(int64_t)keys operationGroupName:(id)name activity:(id)activity;
- (id)saveAttachmentsCKOperationUsingRecordsToSave:(id)save operationGroupName:(id)name activity:(id)activity;
@end

@implementation IMDCKAttachmentSyncCKOperationFactory

- (id)fetchAttachmentZoneChangesCKOperationUsingToken:(id)token zoneID:(id)d resultsLimit:(unint64_t)limit desiredKeys:(int64_t)keys operationGroupName:(id)name activity:(id)activity
{
  v32 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  dCopy = d;
  nameCopy = name;
  activityCopy = activity;
  v18 = [(IMDCKAttachmentSyncCKOperationFactory *)self _attachmentFetchRecordZoneChangesOptionsDictionaryUsingToken:tokenCopy zoneID:dCopy resultsLimit:limit desiredKeys:keys];
  v19 = objc_alloc(MEMORY[0x277CBC3B8]);
  v20 = IMSingleObjectArray();
  v21 = [v19 initWithRecordZoneIDs:v20 configurationsByRecordZoneID:v18];

  v22 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v22 setQualityOfService:17];
  [v22 setAllowsCellularAccess:1];
  [v22 im_setActivity:activityCopy];
  v23 = [(IMDCKAttachmentSyncCKOperationFactory *)self _operationGroupWithName:nameCopy];
  [v21 setGroup:v23];

  [v21 setConfiguration:v22];
  [v21 setFetchAllChanges:0];
  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      operationID = [v21 operationID];
      v28 = 138412546;
      v29 = operationID;
      v30 = 2112;
      v31 = v18;
      _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Created fetch attachment operation  ID %@ fetch operation dictionary %@", &v28, 0x16u);
    }
  }

  v26 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)fetchAttachmentZoneRecords:(id)records desiredKeys:(int64_t)keys operationGroupName:(id)name activity:(id)activity
{
  v10 = MEMORY[0x277CBC3E0];
  activityCopy = activity;
  nameCopy = name;
  recordsCopy = records;
  v14 = [[v10 alloc] initWithRecordIDs:recordsCopy];

  v15 = [objc_opt_class() _desiredKeysArrayForType:keys];
  [v14 setDesiredKeys:v15];
  v16 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v16 setQualityOfService:17];
  [v16 setAllowsCellularAccess:1];
  [v16 im_setActivity:activityCopy];

  v17 = [(IMDCKAttachmentSyncCKOperationFactory *)self _operationGroupWithName:nameCopy];

  [v14 setGroup:v17];
  [v14 setConfiguration:v16];

  return v14;
}

- (id)saveAttachmentsCKOperationUsingRecordsToSave:(id)save operationGroupName:(id)name activity:(id)activity
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
  [v12 im_setActivity:activityCopy];
  v13 = [(IMDCKAttachmentSyncCKOperationFactory *)self _operationGroupWithName:nameCopy];
  [v13 setQuantity:{objc_msgSend(saveCopy, "count")}];
  [v11 setConfiguration:v12];
  [v11 setGroup:v13];
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
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Created modify attachment operation ID %@ operationGroupName %@", &v20, 0x16u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)_defaultsSayWeHaveSyncedOnce
{
  v2 = +[IMDCKUtilities sharedInstance];
  syncState = [v2 syncState];
  lastSyncDate = [syncState lastSyncDate];
  v5 = lastSyncDate != 0;

  return v5;
}

- (id)_operationGroupWithName:(id)name
{
  v3 = MEMORY[0x277CBC4F8];
  nameCopy = name;
  v5 = objc_alloc_init(v3);
  [v5 setName:nameCopy];

  return v5;
}

- (id)_attachmentFetchRecordZoneChangesOptionsDictionaryUsingToken:(id)token zoneID:(id)d resultsLimit:(unint64_t)limit desiredKeys:(int64_t)keys
{
  v9 = MEMORY[0x277CBEB38];
  dCopy = d;
  tokenCopy = token;
  v12 = objc_alloc_init(v9);
  v13 = objc_alloc_init(MEMORY[0x277CBC3A0]);
  v14 = [objc_opt_class() _desiredKeysArrayForType:keys];
  [v13 setDesiredKeys:v14];
  [v13 setPreviousServerChangeToken:tokenCopy];

  [v13 setResultsLimit:limit];
  [v13 setFetchNewestChangesFirst:tokenCopy == 0];
  [v12 setObject:v13 forKey:dCopy];

  return v12;
}

+ (id)_desiredKeysArrayForType:(int64_t)type
{
  v10[2] = *MEMORY[0x277D85DE8];
  if (type == 1)
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

  if (!type)
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

- (id)deleteAttachmentCKOperationUsingRecordIDstoDelete:(id)delete
{
  v13 = *MEMORY[0x277D85DE8];
  deleteCopy = delete;
  v4 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:0 recordIDsToDelete:deleteCopy];
  [v4 setAtomic:0];
  v5 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  [v5 setQualityOfService:17];
  [v5 setAllowsCellularAccess:1];
  v6 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  [v6 setName:@"AttachmentDelete"];
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
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Created deleted attachment operation ID %@", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

@end