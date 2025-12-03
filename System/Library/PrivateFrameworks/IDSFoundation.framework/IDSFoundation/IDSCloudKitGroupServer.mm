@interface IDSCloudKitGroupServer
- (IDSCloudKitGroupServer)initWithDatabase:(id)database queue:(id)queue;
- (void)fetchGroupWithID:(id)d inContext:(id)context completion:(id)completion;
- (void)fetchGroupsWithStableGroupID:(id)d inContext:(id)context completion:(id)completion;
- (void)q_groupFromRecord:(id)record inContext:(id)context completion:(id)completion;
- (void)saveGroup:(id)group inContext:(id)context completion:(id)completion;
@end

@implementation IDSCloudKitGroupServer

- (IDSCloudKitGroupServer)initWithDatabase:(id)database queue:(id)queue
{
  databaseCopy = database;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = IDSCloudKitGroupServer;
  v9 = [(IDSCloudKitGroupServer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(&v10->_database, database);
  }

  return v10;
}

- (void)saveGroup:(id)group inContext:(id)context completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  v10 = MEMORY[0x1E699BB90];
  contextCopy = context;
  groupContext = [v10 groupContext];
  if (os_log_type_enabled(groupContext, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, groupContext, OS_LOG_TYPE_INFO, "Save to group server", buf, 2u);
  }

  groupID = [groupCopy groupID];
  dataRepresentation = [groupID dataRepresentation];
  v15 = [dataRepresentation base64EncodedStringWithOptions:0];

  v16 = [[IDSCKRecordID alloc] initWithRecordName:v15];
  v17 = [[IDSCKRecord alloc] initWithRecordType:@"Group" recordID:v16];
  groupID2 = [groupCopy groupID];
  dataRepresentation2 = [groupID2 dataRepresentation];
  v20 = [dataRepresentation2 base64EncodedStringWithOptions:0];
  [(IDSCKRecord *)v17 setObject:v20 forKey:@"groupID"];

  destinations = [groupCopy destinations];
  allObjects = [destinations allObjects];
  v23 = [allObjects componentsJoinedByString:{@", "}];

  [(IDSCKRecord *)v17 setObject:v23 forKey:@"destinations"];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_1A7C903C4;
  v27[3] = &unk_1E77E2828;
  v28 = v17;
  selfCopy = self;
  v30 = groupCopy;
  v31 = completionCopy;
  v24 = groupCopy;
  v25 = completionCopy;
  v26 = v17;
  [contextCopy _publicDataRepresentationForGroup:v24 completion:v27];
}

- (void)fetchGroupWithID:(id)d inContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  dataRepresentation = [d dataRepresentation];
  v11 = [dataRepresentation base64EncodedStringWithOptions:0];

  v12 = [[IDSCKRecordID alloc] initWithRecordName:v11];
  database = [(IDSCloudKitGroupServer *)self database];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1A7C907E4;
  v16[3] = &unk_1E77E28A0;
  v16[4] = self;
  v17 = contextCopy;
  v18 = completionCopy;
  v14 = completionCopy;
  v15 = contextCopy;
  [database fetchRecordWithID:v12 completionHandler:v16];
}

- (void)fetchGroupsWithStableGroupID:(id)d inContext:(id)context completion:(id)completion
{
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E699BB60];
  completionCopy = completion;
  v9 = [v6 errorWithDomain:v7 code:-1000 userInfo:0];
  (*(completion + 2))(completionCopy, 0, v9);
}

- (void)q_groupFromRecord:(id)record inContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  v9 = [record objectForKey:@"payload"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A7C90B78;
  v11[3] = &unk_1E77E2850;
  v12 = completionCopy;
  v10 = completionCopy;
  [contextCopy _groupFromPublicDataRepresentation:v9 completion:v11];
}

@end