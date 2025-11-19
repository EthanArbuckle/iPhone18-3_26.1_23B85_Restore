@interface IDSCloudKitTransportLog
+ (id)_messageFromRecord:(id)a3;
- (IDSCloudKitTransportLog)initWithDatabase:(id)a3 queue:(id)a4;
- (id)_recordIDsToFetch;
- (id)_transportRecordZoneID;
- (void)createZone:(id)a3;
- (void)disabled_fetchChangesSinceToken:(id)a3 completion:(id)a4;
- (void)dropZone:(id)a3;
- (void)fetchChangesSinceToken:(id)a3 completion:(id)a4;
@end

@implementation IDSCloudKitTransportLog

- (IDSCloudKitTransportLog)initWithDatabase:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IDSCloudKitTransportLog;
  v9 = [(IDSCloudKitTransportLog *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_database, a3);
    objc_storeStrong(&v10->_queue, a4);
  }

  return v10;
}

- (id)_recordIDsToFetch
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(&unk_1F1B20B58, "count")}];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [&unk_1F1B20B58 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(&unk_1F1B20B58);
        }

        v7 = [[IDSCKRecordID alloc] initWithRecordName:*(*(&v9 + 1) + 8 * i)];
        [v2 addObject:v7];
      }

      v4 = [&unk_1F1B20B58 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return v2;
}

- (void)fetchChangesSinceToken:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v17 = _os_activity_create(&dword_1A7AD9000, "Fetching hard-coded transport log changes", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v17, &state);
  v8 = +[IDSFoundationLog cloudKit];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "!setState serverChangeToken=%@", buf, 0xCu);
  }

  v9 = [IDSCKFetchRecordsOperation alloc];
  v10 = [(IDSCloudKitTransportLog *)self _recordIDsToFetch];
  v11 = [(IDSCKFetchRecordsOperation *)v9 initWithRecordIDs:v10];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1A7C1605C;
  v14[3] = &unk_1E77E1968;
  v14[4] = self;
  v12 = v7;
  v15 = v12;
  [(IDSCKFetchRecordsOperation *)v11 setFetchRecordsCompletionBlock:v14];
  v13 = [(IDSCloudKitTransportLog *)self database];
  [v13 addOperation:v11];

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)createZone:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSFoundationLog cloudKit];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "TransportRecordZone - Create - Begin", buf, 2u);
  }

  v6 = [IDSCKRecordZone alloc];
  v7 = [(IDSCloudKitTransportLog *)self _transportRecordZoneID];
  v8 = [(IDSCKRecordZone *)v6 initWithZoneID:v7];

  v9 = [IDSCKModifyRecordZonesOperation alloc];
  v21[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v11 = [(IDSCKModifyRecordZonesOperation *)v9 initWithRecordZonesToSave:v10 recordZoneIDsToDelete:0];

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = sub_1A7C16570;
  v17 = &unk_1E77E09D0;
  v18 = self;
  v19 = v4;
  v12 = v4;
  [(IDSCKModifyRecordZonesOperation *)v11 setModifyRecordZonesCompletionBlock:&v14];
  v13 = [(IDSCloudKitTransportLog *)self database:v14];
  [v13 addOperation:v11];
}

- (void)dropZone:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSFoundationLog cloudKit];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "TransportRecordZone - Drop - Begin", buf, 2u);
  }

  v6 = [IDSCKModifyRecordZonesOperation alloc];
  v7 = [(IDSCloudKitTransportLog *)self _transportRecordZoneID];
  v19[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v9 = [(IDSCKModifyRecordZonesOperation *)v6 initWithRecordZonesToSave:0 recordZoneIDsToDelete:v8];

  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = sub_1A7C16898;
  v15 = &unk_1E77E09D0;
  v16 = self;
  v17 = v4;
  v10 = v4;
  [(IDSCKModifyRecordZonesOperation *)v9 setModifyRecordZonesCompletionBlock:&v12];
  v11 = [(IDSCloudKitTransportLog *)self database:v12];
  [v11 addOperation:v9];
}

- (id)_transportRecordZoneID
{
  v2 = [IDSCKRecordZoneID alloc];
  v3 = sub_1A7BDB988();
  v4 = [(IDSCKRecordZoneID *)v2 initWithZoneName:@"TransportZone" ownerName:v3];

  return v4;
}

- (void)disabled_fetchChangesSinceToken:(id)a3 completion:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v30 = _os_activity_create(&dword_1A7AD9000, "Fetch transport log changes", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v30, &state);
  v8 = +[IDSFoundationLog cloudKit];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v6;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "!setState serverChangeToken=%@", buf, 0xCu);
  }

  v9 = [IDSCKRecordZoneID alloc];
  v10 = sub_1A7BDB8F4();
  v11 = sub_1A7BDB988();
  v12 = [(IDSCKRecordZoneID *)v9 initWithZoneName:v10 ownerName:v11];

  v13 = objc_alloc_init(IDSCKFetchRecordZoneChangesOptions);
  v14 = [v6 ckToken];
  [(IDSCKFetchRecordZoneChangesOptions *)v13 setPreviousServerChangeToken:v14];

  v15 = [IDSCKFetchRecordZoneChangesOperation alloc];
  v33 = v12;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  v31 = v12;
  v32 = v13;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v18 = [(IDSCKFetchRecordZoneChangesOperation *)v15 initWithRecordZoneIDs:v16 optionsByRecordZoneID:v17];

  [(IDSCKFetchRecordZoneChangesOperation *)v18 setFetchAllChanges:0];
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_1A7C16E08;
  v27[3] = &unk_1E77E1990;
  v27[4] = self;
  v20 = v19;
  v28 = v20;
  [(IDSCKFetchRecordZoneChangesOperation *)v18 setRecordChangedBlock:v27];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_1A7C16E88;
  v24[3] = &unk_1E77E19E0;
  v24[4] = self;
  v21 = v7;
  v26 = v21;
  v22 = v20;
  v25 = v22;
  [(IDSCKFetchRecordZoneChangesOperation *)v18 setRecordZoneFetchCompletionBlock:v24];
  v23 = [(IDSCloudKitTransportLog *)self database];
  [v23 addOperation:v18];

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

+ (id)_messageFromRecord:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(IDSCloudKitTransportLogMessage);
  v5 = [v3 objectForKey:@"secondary_id"];
  [(IDSCloudKitTransportLogMessage *)v4 setSecondaryID:v5];

  v6 = [v3 objectForKey:@"payload"];
  [(IDSCloudKitTransportLogMessage *)v4 setPayload:v6];

  v7 = [v3 objectForKey:@"encryption_type"];
  [(IDSCloudKitTransportLogMessage *)v4 setEncryptionType:v7];

  v8 = [v3 objectForKey:@"device_id"];
  [(IDSCloudKitTransportLogMessage *)v4 setDeviceID:v8];

  v9 = [v3 objectForKey:@"payload"];
  if (!v9)
  {
    goto LABEL_4;
  }

  v15 = 0;
  v10 = [MEMORY[0x1E696AE40] propertyListWithData:v9 options:0 format:0 error:&v15];
  v11 = v15;
  if (v10)
  {
    [(IDSCloudKitTransportLogMessage *)v4 setPayload:v10];

LABEL_4:
    v12 = v4;
    goto LABEL_8;
  }

  v13 = +[IDSFoundationLog cloudKit];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E1BF54();
  }

  v12 = 0;
LABEL_8:

  return v12;
}

@end