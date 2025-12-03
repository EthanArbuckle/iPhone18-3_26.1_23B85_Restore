@interface IDSCloudKitKeyElectionStore
+ (BOOL)isItemNotFoundError:(id)error;
- (IDSCloudKitKeyElectionStore)initWithDatabase:(id)database queue:(id)queue;
- (id)_itemFromRecord:(id)record error:(id *)error;
- (id)_recordFromItem:(id)item;
- (id)_recordID;
- (void)fetchAccountIdentityItemWithCompletion:(id)completion;
- (void)removeAccountIdentityItemWithCompletion:(id)completion;
- (void)storeAccountIdentityItem:(id)item withCompletion:(id)completion;
@end

@implementation IDSCloudKitKeyElectionStore

+ (BOOL)isItemNotFoundError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = sub_1A7BDBA1C();
  if ([domain isEqualToString:v5])
  {
    v6 = [errorCopy code] == 11;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (IDSCloudKitKeyElectionStore)initWithDatabase:(id)database queue:(id)queue
{
  databaseCopy = database;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = IDSCloudKitKeyElectionStore;
  v9 = [(IDSCloudKitKeyElectionStore *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_database, database);
    objc_storeStrong(&v10->_queue, queue);
  }

  return v10;
}

- (void)fetchAccountIdentityItemWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(IDSCloudKitKeyElectionStore *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_INFO, "Fetching account identity item", buf, 2u);
  }

  _recordID = [(IDSCloudKitKeyElectionStore *)self _recordID];
  database = [(IDSCloudKitKeyElectionStore *)self database];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A7C0E614;
  v10[3] = &unk_1E77E09A8;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [database fetchRecordWithID:_recordID completionHandler:v10];
}

- (void)removeAccountIdentityItemWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(IDSCloudKitKeyElectionStore *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_INFO, "Fetching account identity item", buf, 2u);
  }

  _recordID = [(IDSCloudKitKeyElectionStore *)self _recordID];
  database = [(IDSCloudKitKeyElectionStore *)self database];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A7C0EAD4;
  v10[3] = &unk_1E77E1870;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [database deleteRecordWithID:_recordID completionHandler:v10];
}

- (void)storeAccountIdentityItem:(id)item withCompletion:(id)completion
{
  v30[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  completionCopy = completion;
  queue = [(IDSCloudKitKeyElectionStore *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_INFO, "Storing account identity item", buf, 2u);
  }

  if (!itemCopy)
  {
    sub_1A7E1B7B4(a2, self);
  }

  groupName = [itemCopy groupName];

  if (!groupName)
  {
    sub_1A7E1B82C(a2, self);
  }

  groupID = [itemCopy groupID];

  if (!groupID)
  {
    sub_1A7E1B8A4(a2, self);
  }

  v13 = [(IDSCloudKitKeyElectionStore *)self _recordFromItem:itemCopy];
  v14 = [IDSCKModifyRecordsOperation alloc];
  v30[0] = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v16 = [(IDSCKModifyRecordsOperation *)v14 initWithRecordsToSave:v15 recordIDsToDelete:0];

  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = sub_1A7C0EE00;
  v24 = &unk_1E77E1898;
  selfCopy = self;
  v26 = v13;
  v27 = itemCopy;
  v28 = completionCopy;
  v17 = itemCopy;
  v18 = completionCopy;
  v19 = v13;
  [(IDSCKModifyRecordsOperation *)v16 setModifyRecordsCompletionBlock:&v21];
  v20 = [(IDSCloudKitKeyElectionStore *)self database:v21];
  [v20 addOperation:v16];
}

- (id)_itemFromRecord:(id)record error:(id *)error
{
  recordCopy = record;
  v6 = [recordCopy objectForKeyedSubscript:@"kGroupNameKey"];
  v7 = [recordCopy objectForKeyedSubscript:@"kGroupIDKey"];
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
        sub_1A7E1BA18(recordCopy, v12, v19, v20, v21, v22, v23, v24);
      }
    }
  }

  else
  {
    v12 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E1B9AC(recordCopy, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSCloudKitKeyElectionStoreErrorDomain" code:-1000 userInfo:0];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_14:

  return v11;
}

- (id)_recordFromItem:(id)item
{
  itemCopy = item;
  groupID = [itemCopy groupID];
  dataRepresentation = [groupID dataRepresentation];

  _recordID = [(IDSCloudKitKeyElectionStore *)self _recordID];
  v8 = [[IDSCKRecord alloc] initWithRecordType:@"IDSCloudKitKeyElectionStoreItem" recordID:_recordID];
  groupName = [itemCopy groupName];

  [(IDSCKRecord *)v8 setObject:groupName forKeyedSubscript:@"kGroupNameKey"];
  [(IDSCKRecord *)v8 setObject:dataRepresentation forKeyedSubscript:@"kGroupIDKey"];

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