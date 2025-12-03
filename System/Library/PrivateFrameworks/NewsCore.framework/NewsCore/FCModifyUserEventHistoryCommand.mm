@interface FCModifyUserEventHistoryCommand
- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord;
- (FCModifyUserEventHistoryCommand)initWithSessionID:(id)d data:(id)data recordZoneID:(id)iD;
- (FCModifyUserEventHistoryCommand)initWithSessions:(id)sessions recordZoneID:(id)d;
- (id)ckRecordWithSessionID:(id)d data:(id)data recordZoneID:(id)iD;
@end

@implementation FCModifyUserEventHistoryCommand

- (id)ckRecordWithSessionID:(id)d data:(id)data recordZoneID:(id)iD
{
  v7 = MEMORY[0x1E695BA70];
  iDCopy = iD;
  dataCopy = data;
  dCopy = d;
  v11 = [[v7 alloc] initWithRecordName:dCopy zoneID:iDCopy];

  v12 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"UserEventHistorySession" recordID:v11];
  [v12 setObject:dataCopy forKeyedSubscript:@"sessionData"];

  return v12;
}

- (FCModifyUserEventHistoryCommand)initWithSessionID:(id)d data:(id)data recordZoneID:(id)iD
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = [(FCModifyUserEventHistoryCommand *)self ckRecordWithSessionID:d data:data recordZoneID:iD];
  v12[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v11.receiver = self;
  v11.super_class = FCModifyUserEventHistoryCommand;
  v8 = [(FCModifyRecordsCommand *)&v11 initWithLocalRecords:v7 merge:0];

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (FCModifyUserEventHistoryCommand)initWithSessions:(id)sessions recordZoneID:(id)d
{
  dCopy = d;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__FCModifyUserEventHistoryCommand_initWithSessions_recordZoneID___block_invoke;
  v13[3] = &unk_1E7C45CA8;
  selfCopy = self;
  v14 = selfCopy;
  v15 = dCopy;
  v8 = dCopy;
  v9 = [sessions fc_arrayByTransformingWithBlock:v13];
  v12.receiver = selfCopy;
  v12.super_class = FCModifyUserEventHistoryCommand;
  v10 = [(FCModifyRecordsCommand *)&v12 initWithLocalRecords:v9 merge:0];

  return v10;
}

id __65__FCModifyUserEventHistoryCommand_initWithSessions_recordZoneID___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 sessionID];
  v6 = [v4 compressedData];

  v7 = [v3 ckRecordWithSessionID:v5 data:v6 recordZoneID:*(a1 + 40)];

  return v7;
}

- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord
{
  v20 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v8 = MEMORY[0x1E696AEC0];
    remoteRecordCopy = remoteRecord;
    recordCopy = record;
    remoteRecordCopy = [[v8 alloc] initWithFormat:@"FCModifyUserEventHistoryCommand Asked to merge local and remote records Local Record: %@, Remote Record: %@", recordCopy, remoteRecordCopy];

    *buf = 136315906;
    v13 = "[FCModifyUserEventHistoryCommand mergeLocalRecord:withRemoteRecord:]";
    v14 = 2080;
    v15 = "FCModifyUserEventHistoryCommand.m";
    v16 = 1024;
    v17 = 39;
    v18 = 2114;
    v19 = remoteRecordCopy;
    _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: UnexpectedUserEventHistoryMerge) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

@end