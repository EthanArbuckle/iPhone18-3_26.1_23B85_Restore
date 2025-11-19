@interface IDSCloudKitGroupServer
- (IDSCloudKitGroupServer)initWithDatabase:(id)a3 queue:(id)a4;
- (void)fetchGroupWithID:(id)a3 inContext:(id)a4 completion:(id)a5;
- (void)fetchGroupsWithStableGroupID:(id)a3 inContext:(id)a4 completion:(id)a5;
- (void)q_groupFromRecord:(id)a3 inContext:(id)a4 completion:(id)a5;
- (void)saveGroup:(id)a3 inContext:(id)a4 completion:(id)a5;
@end

@implementation IDSCloudKitGroupServer

- (IDSCloudKitGroupServer)initWithDatabase:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IDSCloudKitGroupServer;
  v9 = [(IDSCloudKitGroupServer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a4);
    objc_storeStrong(&v10->_database, a3);
  }

  return v10;
}

- (void)saveGroup:(id)a3 inContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x1E699BB90];
  v11 = a4;
  v12 = [v10 groupContext];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_INFO, "Save to group server", buf, 2u);
  }

  v13 = [v8 groupID];
  v14 = [v13 dataRepresentation];
  v15 = [v14 base64EncodedStringWithOptions:0];

  v16 = [[IDSCKRecordID alloc] initWithRecordName:v15];
  v17 = [[IDSCKRecord alloc] initWithRecordType:@"Group" recordID:v16];
  v18 = [v8 groupID];
  v19 = [v18 dataRepresentation];
  v20 = [v19 base64EncodedStringWithOptions:0];
  [(IDSCKRecord *)v17 setObject:v20 forKey:@"groupID"];

  v21 = [v8 destinations];
  v22 = [v21 allObjects];
  v23 = [v22 componentsJoinedByString:{@", "}];

  [(IDSCKRecord *)v17 setObject:v23 forKey:@"destinations"];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_1A7C903C4;
  v27[3] = &unk_1E77E2828;
  v28 = v17;
  v29 = self;
  v30 = v8;
  v31 = v9;
  v24 = v8;
  v25 = v9;
  v26 = v17;
  [v11 _publicDataRepresentationForGroup:v24 completion:v27];
}

- (void)fetchGroupWithID:(id)a3 inContext:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 dataRepresentation];
  v11 = [v10 base64EncodedStringWithOptions:0];

  v12 = [[IDSCKRecordID alloc] initWithRecordName:v11];
  v13 = [(IDSCloudKitGroupServer *)self database];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1A7C907E4;
  v16[3] = &unk_1E77E28A0;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v14 = v9;
  v15 = v8;
  [v13 fetchRecordWithID:v12 completionHandler:v16];
}

- (void)fetchGroupsWithStableGroupID:(id)a3 inContext:(id)a4 completion:(id)a5
{
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E699BB60];
  v8 = a5;
  v9 = [v6 errorWithDomain:v7 code:-1000 userInfo:0];
  (*(a5 + 2))(v8, 0, v9);
}

- (void)q_groupFromRecord:(id)a3 inContext:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [a3 objectForKey:@"payload"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A7C90B78;
  v11[3] = &unk_1E77E2850;
  v12 = v7;
  v10 = v7;
  [v8 _groupFromPublicDataRepresentation:v9 completion:v11];
}

@end