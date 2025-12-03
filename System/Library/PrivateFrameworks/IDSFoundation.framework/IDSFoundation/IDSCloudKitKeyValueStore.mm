@interface IDSCloudKitKeyValueStore
- (IDSCloudKitKeyValueStore)initWithContainer:(id)container queue:(id)queue;
- (void)fetchDataForKey:(id)key completion:(id)completion;
- (void)fetchObjectForKey:(id)key completion:(id)completion;
- (void)setData:(id)data forKey:(id)key completion:(id)completion;
- (void)setObject:(id)object forKey:(id)key completion:(id)completion;
@end

@implementation IDSCloudKitKeyValueStore

- (IDSCloudKitKeyValueStore)initWithContainer:(id)container queue:(id)queue
{
  containerCopy = container;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = IDSCloudKitKeyValueStore;
  v9 = [(IDSCloudKitKeyValueStore *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(&v10->_container, container);
  }

  return v10;
}

- (void)fetchDataForKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  v8 = [[IDSCKRecordID alloc] initWithRecordName:keyCopy];

  container = [(IDSCloudKitKeyValueStore *)self container];
  privateCloudDatabase = [container privateCloudDatabase];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A7B5B74C;
  v12[3] = &unk_1E77E09A8;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  [privateCloudDatabase fetchRecordWithID:v8 completionHandler:v12];
}

- (void)setData:(id)data forKey:(id)key completion:(id)completion
{
  v25[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  keyCopy = key;
  dataCopy = data;
  v11 = [[IDSCKRecordID alloc] initWithRecordName:keyCopy];

  v12 = [[IDSCKRecord alloc] initWithRecordType:@"IDSKeyValueStore" recordID:v11];
  [(IDSCKRecord *)v12 setObject:dataCopy forKey:@"kPayloadKey"];

  v13 = [IDSCKModifyRecordsOperation alloc];
  v25[0] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v15 = [(IDSCKModifyRecordsOperation *)v13 initWithRecordsToSave:v14 recordIDsToDelete:0];

  [(IDSCKModifyRecordsOperation *)v15 setSavePolicy:1];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = sub_1A7B5BAC0;
  v22 = &unk_1E77E09D0;
  selfCopy = self;
  v24 = completionCopy;
  v16 = completionCopy;
  [(IDSCKModifyRecordsOperation *)v15 setModifyRecordsCompletionBlock:&v19];
  v17 = [(IDSCloudKitKeyValueStore *)self container:v19];
  privateCloudDatabase = [v17 privateCloudDatabase];
  [privateCloudDatabase addOperation:v15];
}

- (void)fetchObjectForKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A7B5BC3C;
  v8[3] = &unk_1E77E0A20;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [(IDSCloudKitKeyValueStore *)self fetchDataForKey:key completion:v8];
}

- (void)setObject:(id)object forKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  v9 = MEMORY[0x1E696ACC8];
  keyCopy = key;
  v11 = [v9 archivedDataWithRootObject:object requiringSecureCoding:0 error:0];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1A7B5BE30;
  v14[3] = &unk_1E77E0A48;
  v14[4] = self;
  v15 = completionCopy;
  v12 = completionCopy;
  selfCopy = self;
  [(IDSCloudKitKeyValueStore *)selfCopy setData:v11 forKey:keyCopy completion:v14];
}

@end