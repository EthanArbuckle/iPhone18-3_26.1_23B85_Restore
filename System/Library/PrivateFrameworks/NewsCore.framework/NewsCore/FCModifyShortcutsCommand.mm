@interface FCModifyShortcutsCommand
- (BOOL)mergeLocalRecord:(id)a3 withRemoteRecord:(id)a4;
@end

@implementation FCModifyShortcutsCommand

- (BOOL)mergeLocalRecord:(id)a3 withRemoteRecord:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:@"dateAdded"];
  v8 = [v6 objectForKeyedSubscript:@"dateAdded"];
  v9 = [v7 compare:v8];
  if (v9 == 1)
  {
    v10 = [v5 objectForKeyedSubscript:@"dateAdded"];
    [v6 setObject:v10 forKeyedSubscript:@"dateAdded"];

    v11 = [v5 objectForKeyedSubscript:@"order"];
    [v6 setObject:v11 forKeyedSubscript:@"order"];

    v12 = [v5 objectForKeyedSubscript:@"type"];
    [v6 setObject:v12 forKeyedSubscript:@"type"];
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