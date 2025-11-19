@interface IDSCloudKitKeyValueStore
- (IDSCloudKitKeyValueStore)initWithContainer:(id)a3 queue:(id)a4;
- (void)fetchDataForKey:(id)a3 completion:(id)a4;
- (void)fetchObjectForKey:(id)a3 completion:(id)a4;
- (void)setData:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)setObject:(id)a3 forKey:(id)a4 completion:(id)a5;
@end

@implementation IDSCloudKitKeyValueStore

- (IDSCloudKitKeyValueStore)initWithContainer:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IDSCloudKitKeyValueStore;
  v9 = [(IDSCloudKitKeyValueStore *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a4);
    objc_storeStrong(&v10->_container, a3);
  }

  return v10;
}

- (void)fetchDataForKey:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[IDSCKRecordID alloc] initWithRecordName:v7];

  v9 = [(IDSCloudKitKeyValueStore *)self container];
  v10 = [v9 privateCloudDatabase];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A7B5B74C;
  v12[3] = &unk_1E77E09A8;
  v12[4] = self;
  v13 = v6;
  v11 = v6;
  [v10 fetchRecordWithID:v8 completionHandler:v12];
}

- (void)setData:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v25[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[IDSCKRecordID alloc] initWithRecordName:v9];

  v12 = [[IDSCKRecord alloc] initWithRecordType:@"IDSKeyValueStore" recordID:v11];
  [(IDSCKRecord *)v12 setObject:v10 forKey:@"kPayloadKey"];

  v13 = [IDSCKModifyRecordsOperation alloc];
  v25[0] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v15 = [(IDSCKModifyRecordsOperation *)v13 initWithRecordsToSave:v14 recordIDsToDelete:0];

  [(IDSCKModifyRecordsOperation *)v15 setSavePolicy:1];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = sub_1A7B5BAC0;
  v22 = &unk_1E77E09D0;
  v23 = self;
  v24 = v8;
  v16 = v8;
  [(IDSCKModifyRecordsOperation *)v15 setModifyRecordsCompletionBlock:&v19];
  v17 = [(IDSCloudKitKeyValueStore *)self container:v19];
  v18 = [v17 privateCloudDatabase];
  [v18 addOperation:v15];
}

- (void)fetchObjectForKey:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A7B5BC3C;
  v8[3] = &unk_1E77E0A20;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(IDSCloudKitKeyValueStore *)self fetchDataForKey:a3 completion:v8];
}

- (void)setObject:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = MEMORY[0x1E696ACC8];
  v10 = a4;
  v11 = [v9 archivedDataWithRootObject:a3 requiringSecureCoding:0 error:0];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1A7B5BE30;
  v14[3] = &unk_1E77E0A48;
  v14[4] = self;
  v15 = v8;
  v12 = v8;
  v13 = self;
  [(IDSCloudKitKeyValueStore *)v13 setData:v11 forKey:v10 completion:v14];
}

@end