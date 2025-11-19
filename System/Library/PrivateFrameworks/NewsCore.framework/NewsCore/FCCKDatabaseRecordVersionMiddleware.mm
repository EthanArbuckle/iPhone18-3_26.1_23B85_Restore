@interface FCCKDatabaseRecordVersionMiddleware
- (id)clientToServerRecord:(id)a3 inDatabase:(id)a4 error:(id *)a5;
- (id)serverToClientRecord:(id)a3 inDatabase:(id)a4 error:(id *)a5;
- (int64_t)database:(id)a3 willEnqueueOperation:(id)a4 error:(id *)a5;
@end

@implementation FCCKDatabaseRecordVersionMiddleware

- (id)serverToClientRecord:(id)a3 inDatabase:(id)a4 error:(id *)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"readerMinimumRequiredVersion"];
  v7 = v6;
  v8 = v5;
  if (v6)
  {
    v8 = v5;
    if ([v6 integerValue] >= 2)
    {
      v9 = FCPrivateDataEncryptionLog;
      if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412546;
        v14 = v5;
        v15 = 2112;
        v16 = &unk_1F2E6FF18;
        _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "Cannot handle version due minimumRequiredVersion {Record: %@, readingVersion: %@}", &v13, 0x16u);
      }

      v8 = 0;
    }
  }

  v10 = v8;

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)clientToServerRecord:(id)a3 inDatabase:(id)a4 error:(id *)a5
{
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"writerVersionHighWatermark"];
  v7 = v6;
  if (!v6 || [v6 integerValue] <= 0)
  {
    [v5 setObject:&unk_1F2E6FF18 forKeyedSubscript:@"writerVersionHighWatermark"];
  }

  v8 = [v5 objectForKeyedSubscript:@"readerMinimumRequiredVersion"];
  if (!v8)
  {
    [v5 setObject:&unk_1F2E6FF18 forKeyedSubscript:@"readerMinimumRequiredVersion"];
  }

  return v5;
}

- (int64_t)database:(id)a3 willEnqueueOperation:(id)a4 error:(id *)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a4;
  objc_opt_class();
  v22 = v5;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [v7 recordZoneIDs];
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [v7 configurationsByRecordZoneID];
        v15 = [v14 objectForKey:v13];

        if (v15)
        {
          v16 = [v15 desiredKeys];
          v17 = [v16 mutableCopy];

          if (v17)
          {
            v27[0] = @"writerVersionHighWatermark";
            v27[1] = @"readerMinimumRequiredVersion";
            v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
            [v17 removeObjectsInArray:v18];
            [v17 addObjectsFromArray:v18];
            v19 = [v17 copy];
            [v15 setDesiredKeys:v19];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v10);
  }

  v20 = *MEMORY[0x1E69E9840];
  return 0;
}

@end