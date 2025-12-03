@interface FCCKDatabaseRecordVersionMiddleware
- (id)clientToServerRecord:(id)record inDatabase:(id)database error:(id *)error;
- (id)serverToClientRecord:(id)record inDatabase:(id)database error:(id *)error;
- (int64_t)database:(id)database willEnqueueOperation:(id)operation error:(id *)error;
@end

@implementation FCCKDatabaseRecordVersionMiddleware

- (id)serverToClientRecord:(id)record inDatabase:(id)database error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v6 = [recordCopy objectForKeyedSubscript:@"readerMinimumRequiredVersion"];
  v7 = v6;
  v8 = recordCopy;
  if (v6)
  {
    v8 = recordCopy;
    if ([v6 integerValue] >= 2)
    {
      v9 = FCPrivateDataEncryptionLog;
      if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412546;
        v14 = recordCopy;
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

- (id)clientToServerRecord:(id)record inDatabase:(id)database error:(id *)error
{
  recordCopy = record;
  v6 = [recordCopy objectForKeyedSubscript:@"writerVersionHighWatermark"];
  v7 = v6;
  if (!v6 || [v6 integerValue] <= 0)
  {
    [recordCopy setObject:&unk_1F2E6FF18 forKeyedSubscript:@"writerVersionHighWatermark"];
  }

  v8 = [recordCopy objectForKeyedSubscript:@"readerMinimumRequiredVersion"];
  if (!v8)
  {
    [recordCopy setObject:&unk_1F2E6FF18 forKeyedSubscript:@"readerMinimumRequiredVersion"];
  }

  return recordCopy;
}

- (int64_t)database:(id)database willEnqueueOperation:(id)operation error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  objc_opt_class();
  v22 = operationCopy;
  if (operationCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = operationCopy;
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
  recordZoneIDs = [v7 recordZoneIDs];
  v9 = [recordZoneIDs countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(recordZoneIDs);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        configurationsByRecordZoneID = [v7 configurationsByRecordZoneID];
        v15 = [configurationsByRecordZoneID objectForKey:v13];

        if (v15)
        {
          desiredKeys = [v15 desiredKeys];
          v17 = [desiredKeys mutableCopy];

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

      v10 = [recordZoneIDs countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v10);
  }

  v20 = *MEMORY[0x1E69E9840];
  return 0;
}

@end