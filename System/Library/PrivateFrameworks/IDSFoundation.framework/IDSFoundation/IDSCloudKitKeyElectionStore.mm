@interface IDSCloudKitKeyElectionStore
+ (BOOL)isItemNotFoundError:(id)a3;
- (IDSCloudKitKeyElectionStore)initWithDatabase:(id)a3 queue:(id)a4;
- (id)_itemFromRecord:(id)a3 error:(id *)a4;
- (id)_recordFromItem:(id)a3;
- (id)_recordID;
- (void)fetchAccountIdentityItemWithCompletion:(id)a3;
- (void)removeAccountIdentityItemWithCompletion:(id)a3;
- (void)storeAccountIdentityItem:(id)a3 withCompletion:(id)a4;
@end

@implementation IDSCloudKitKeyElectionStore

+ (BOOL)isItemNotFoundError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = sub_1A7BDBA1C();
  if ([v4 isEqualToString:v5])
  {
    v6 = [v3 code] == 11;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (IDSCloudKitKeyElectionStore)initWithDatabase:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IDSCloudKitKeyElectionStore;
  v9 = [(IDSCloudKitKeyElectionStore *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_database, a3);
    objc_storeStrong(&v10->_queue, a4);
  }

  return v10;
}

- (void)fetchAccountIdentityItemWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IDSCloudKitKeyElectionStore *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_INFO, "Fetching account identity item", buf, 2u);
  }

  v7 = [(IDSCloudKitKeyElectionStore *)self _recordID];
  v8 = [(IDSCloudKitKeyElectionStore *)self database];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A7C0E614;
  v10[3] = &unk_1E77E09A8;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [v8 fetchRecordWithID:v7 completionHandler:v10];
}

- (void)removeAccountIdentityItemWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IDSCloudKitKeyElectionStore *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_INFO, "Fetching account identity item", buf, 2u);
  }

  v7 = [(IDSCloudKitKeyElectionStore *)self _recordID];
  v8 = [(IDSCloudKitKeyElectionStore *)self database];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A7C0EAD4;
  v10[3] = &unk_1E77E1870;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [v8 deleteRecordWithID:v7 completionHandler:v10];
}

- (void)storeAccountIdentityItem:(id)a3 withCompletion:(id)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [(IDSCloudKitKeyElectionStore *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_INFO, "Storing account identity item", buf, 2u);
  }

  if (!v7)
  {
    sub_1A7E1B7B4(a2, self);
  }

  v11 = [v7 groupName];

  if (!v11)
  {
    sub_1A7E1B82C(a2, self);
  }

  v12 = [v7 groupID];

  if (!v12)
  {
    sub_1A7E1B8A4(a2, self);
  }

  v13 = [(IDSCloudKitKeyElectionStore *)self _recordFromItem:v7];
  v14 = [IDSCKModifyRecordsOperation alloc];
  v30[0] = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v16 = [(IDSCKModifyRecordsOperation *)v14 initWithRecordsToSave:v15 recordIDsToDelete:0];

  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = sub_1A7C0EE00;
  v24 = &unk_1E77E1898;
  v25 = self;
  v26 = v13;
  v27 = v7;
  v28 = v8;
  v17 = v7;
  v18 = v8;
  v19 = v13;
  [(IDSCKModifyRecordsOperation *)v16 setModifyRecordsCompletionBlock:&v21];
  v20 = [(IDSCloudKitKeyElectionStore *)self database:v21];
  [v20 addOperation:v16];
}

- (id)_itemFromRecord:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"kGroupNameKey"];
  v7 = [v5 objectForKeyedSubscript:@"kGroupIDKey"];
  v8 = v7;
  if (v6 && v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v9 = [objc_alloc(MEMORY[0x1E699BB88]) initWithDataRepresentation:v8];
      if (v9)
      {
        v10 = v9;
        v11 = objc_alloc_init(IDSCloudKitKeyElectionStoreItem);
        [(IDSCloudKitKeyElectionStoreItem *)v11 setGroupID:v10];
        [(IDSCloudKitKeyElectionStoreItem *)v11 setGroupName:v6];

        goto LABEL_14;
      }

      v12 = +[IDSFoundationLog accountIdentity];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_1A7E1BA84(v8, v12, v26, v27, v28, v29, v30, v31);
      }
    }

    else
    {
      v12 = +[IDSFoundationLog accountIdentity];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_1A7E1BA18(v5, v12, v19, v20, v21, v22, v23, v24);
      }
    }
  }

  else
  {
    v12 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E1B9AC(v5, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSCloudKitKeyElectionStoreErrorDomain" code:-1000 userInfo:0];
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_14:

  return v11;
}

- (id)_recordFromItem:(id)a3
{
  v4 = a3;
  v5 = [v4 groupID];
  v6 = [v5 dataRepresentation];

  v7 = [(IDSCloudKitKeyElectionStore *)self _recordID];
  v8 = [[IDSCKRecord alloc] initWithRecordType:@"IDSCloudKitKeyElectionStoreItem" recordID:v7];
  v9 = [v4 groupName];

  [(IDSCKRecord *)v8 setObject:v9 forKeyedSubscript:@"kGroupNameKey"];
  [(IDSCKRecord *)v8 setObject:v6 forKeyedSubscript:@"kGroupIDKey"];

  return v8;
}

- (id)_recordID
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = _IDSEngramKeyElectorVersion();
  v4 = [v2 stringWithFormat:@"%@-%@", @"IDSCloudKitKeyElectionStoreItem", v3];

  v5 = [[IDSCKRecordID alloc] initWithRecordName:v4];

  return v5;
}

@end