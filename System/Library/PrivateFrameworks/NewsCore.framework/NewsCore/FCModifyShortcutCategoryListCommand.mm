@interface FCModifyShortcutCategoryListCommand
- (BOOL)mergeLocalRecord:(id)a3 withRemoteRecord:(id)a4;
@end

@implementation FCModifyShortcutCategoryListCommand

- (BOOL)mergeLocalRecord:(id)a3 withRemoteRecord:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:@"dateAdded"];
  v8 = [v6 objectForKeyedSubscript:@"dateAdded"];
  v9 = [v7 compare:v8];
  if (v9 == 1)
  {
    v10 = [v5 objectForKeyedSubscript:@"dateAdded"];
    [v6 setObject:v10 forKeyedSubscript:@"dateAdded"];

    v11 = [v5 objectForKeyedSubscript:@"type"];
    [v6 setObject:v11 forKeyedSubscript:@"type"];

    v12 = [v5 objectForKeyedSubscript:@"categoryID"];
    [v6 setObject:v12 forKeyedSubscript:@"categoryID"];

    v13 = [v5 objectForKeyedSubscript:@"status"];
    [v6 setObject:v13 forKeyedSubscript:@"status"];
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