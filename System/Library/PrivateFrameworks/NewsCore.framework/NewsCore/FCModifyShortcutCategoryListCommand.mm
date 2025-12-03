@interface FCModifyShortcutCategoryListCommand
- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord;
@end

@implementation FCModifyShortcutCategoryListCommand

- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord
{
  v18 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  remoteRecordCopy = remoteRecord;
  v7 = [recordCopy objectForKeyedSubscript:@"dateAdded"];
  v8 = [remoteRecordCopy objectForKeyedSubscript:@"dateAdded"];
  v9 = [v7 compare:v8];
  if (v9 == 1)
  {
    v10 = [recordCopy objectForKeyedSubscript:@"dateAdded"];
    [remoteRecordCopy setObject:v10 forKeyedSubscript:@"dateAdded"];

    v11 = [recordCopy objectForKeyedSubscript:@"type"];
    [remoteRecordCopy setObject:v11 forKeyedSubscript:@"type"];

    v12 = [recordCopy objectForKeyedSubscript:@"categoryID"];
    [remoteRecordCopy setObject:v12 forKeyedSubscript:@"categoryID"];

    v13 = [recordCopy objectForKeyedSubscript:@"status"];
    [remoteRecordCopy setObject:v13 forKeyedSubscript:@"status"];
  }

  v14 = FCShortcutCategoryListLog;
  if (os_log_type_enabled(FCShortcutCategoryListLog, OS_LOG_TYPE_DEFAULT))
  {
    v17[0] = 67109120;
    v17[1] = v9 == 1;
    _os_log_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_DEFAULT, "Merge shortcut categories local record %d", v17, 8u);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v9 == 1;
}

@end