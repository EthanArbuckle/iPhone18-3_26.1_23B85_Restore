@interface FCModifyShortcutsCommand
- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord;
@end

@implementation FCModifyShortcutsCommand

- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord
{
  v17 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  remoteRecordCopy = remoteRecord;
  v7 = [recordCopy objectForKeyedSubscript:@"dateAdded"];
  v8 = [remoteRecordCopy objectForKeyedSubscript:@"dateAdded"];
  v9 = [v7 compare:v8];
  if (v9 == 1)
  {
    v10 = [recordCopy objectForKeyedSubscript:@"dateAdded"];
    [remoteRecordCopy setObject:v10 forKeyedSubscript:@"dateAdded"];

    v11 = [recordCopy objectForKeyedSubscript:@"order"];
    [remoteRecordCopy setObject:v11 forKeyedSubscript:@"order"];

    v12 = [recordCopy objectForKeyedSubscript:@"type"];
    [remoteRecordCopy setObject:v12 forKeyedSubscript:@"type"];
  }

  v13 = FCShortcutListLog;
  if (os_log_type_enabled(FCShortcutListLog, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67109120;
    v16[1] = v9 == 1;
    _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "Merge favorites local record %d", v16, 8u);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9 == 1;
}

@end