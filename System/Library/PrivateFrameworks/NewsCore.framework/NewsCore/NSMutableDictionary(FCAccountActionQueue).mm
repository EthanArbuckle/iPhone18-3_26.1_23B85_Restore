@interface NSMutableDictionary(FCAccountActionQueue)
- (id)fc_dequeueTransactions;
- (uint64_t)fc_enqueueActionType:()FCAccountActionQueue;
- (void)fc_enqueueTransaction:()FCAccountActionQueue withMaxTransactionCount:;
- (void)fc_popActionTypesUpToCount:()FCAccountActionQueue;
- (void)fc_setLocalDataHintIfNeeded:()FCAccountActionQueue;
@end

@implementation NSMutableDictionary(FCAccountActionQueue)

- (void)fc_setLocalDataHintIfNeeded:()FCAccountActionQueue
{
  v5 = [self objectForKeyedSubscript:@"FCFileCoordinatedAccountActionQueueActionTypesKey"];
  v6 = [v5 count];

  if (!v6)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    [self setObject:v7 forKeyedSubscript:@"FCFileCoordinatedAccountActionQueueLocalDataHintKey"];
  }
}

- (uint64_t)fc_enqueueActionType:()FCAccountActionQueue
{
  bOOLValue = 0;
  if (a3 <= 6)
  {
    if (((1 << a3) & 0x26) != 0)
    {
      v6 = [self objectForKeyedSubscript:@"FCFileCoordinatedAccountActionQueueLocalDataHintKey"];
      bOOLValue = [v6 BOOLValue];
    }

    else if (((1 << a3) & 0x48) == 0)
    {
      return bOOLValue;
    }

    v7 = [MEMORY[0x1E696AD98] numberWithBool:bOOLValue];
    [self setObject:v7 forKeyedSubscript:@"FCFileCoordinatedAccountActionQueueLocalDataHintKey"];

    v8 = [self objectForKeyedSubscript:@"FCFileCoordinatedAccountActionQueueActionTypesKey"];
    v9 = v8;
    v10 = MEMORY[0x1E695E0F0];
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    v12 = [v11 mutableCopy];
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [v12 addObject:v13];

    [self setObject:v12 forKeyedSubscript:@"FCFileCoordinatedAccountActionQueueActionTypesKey"];
    return 1;
  }

  return bOOLValue;
}

- (void)fc_popActionTypesUpToCount:()FCAccountActionQueue
{
  v5 = MEMORY[0x1E695DF70];
  v6 = [self objectForKeyedSubscript:@"FCFileCoordinatedAccountActionQueueActionTypesKey"];
  v7 = [v5 arrayWithArray:v6];

  [v7 removeObjectsInRange:{0, a3}];
  [self setObject:v7 forKeyedSubscript:@"FCFileCoordinatedAccountActionQueueActionTypesKey"];
}

- (void)fc_enqueueTransaction:()FCAccountActionQueue withMaxTransactionCount:
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "transaction"];
    *buf = 136315906;
    v16 = "[NSMutableDictionary(FCAccountActionQueue) fc_enqueueTransaction:withMaxTransactionCount:]";
    v17 = 2080;
    v18 = "NSDictionary+FCTodayPrivateDataTransactionQueue.m";
    v19 = 1024;
    v20 = 28;
    v21 = 2114;
    v22 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v7 = [self objectForKeyedSubscript:@"a"];
  v8 = v7;
  v9 = MEMORY[0x1E695E0F0];
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = [v10 mutableCopy];
  [v11 addObject:v6];
  if ([v11 count] > a4)
  {
    v12 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v16 = a4;
      _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "transaction queue reached maximum transaction count, will drop oldest transactions, max=%lu", buf, 0xCu);
    }

    [v11 fc_trimFromFrontToMaxCount:a4];
  }

  [self setObject:v11 forKeyedSubscript:@"a"];

  v13 = *MEMORY[0x1E69E9840];
}

- (id)fc_dequeueTransactions
{
  v2 = [self objectForKeyedSubscript:@"a"];
  v3 = v2;
  v4 = MEMORY[0x1E695E0F0];
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  [self removeObjectForKey:@"a"];

  return v5;
}

@end