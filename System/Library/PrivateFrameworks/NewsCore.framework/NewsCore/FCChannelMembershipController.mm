@interface FCChannelMembershipController
- (FCChannelMembershipController)initWithChannelMembershipRecordSource:(id)source;
- (id)cachedChannelMembershipsForIDs:(id)ds;
- (id)channelMembershipsFromHeldRecords:(id)records;
- (void)fetchChannelMembershipsForIDs:(id)ds maximumCachedAge:(double)age callbackQueue:(id)queue completionHandler:(id)handler;
@end

@implementation FCChannelMembershipController

- (FCChannelMembershipController)initWithChannelMembershipRecordSource:(id)source
{
  v20 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  if (!sourceCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "recordSource"];
    *buf = 136315906;
    v13 = "[FCChannelMembershipController initWithChannelMembershipRecordSource:]";
    v14 = 2080;
    v15 = "FCChannelMembershipController.m";
    v16 = 1024;
    v17 = 29;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v11.receiver = self;
  v11.super_class = FCChannelMembershipController;
  v6 = [(FCChannelMembershipController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    if (sourceCopy)
    {
      objc_storeStrong(&v6->_recordSource, source);
    }

    else
    {

      v7 = 0;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)fetchChannelMembershipsForIDs:(id)ds maximumCachedAge:(double)age callbackQueue:(id)queue completionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  queueCopy = queue;
  handlerCopy = handler;
  if (!dsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "channelMembershipIDs != nil"];
    *buf = 136315906;
    v29 = "[FCChannelMembershipController fetchChannelMembershipsForIDs:maximumCachedAge:callbackQueue:completionHandler:]";
    v30 = 2080;
    v31 = "FCChannelMembershipController.m";
    v32 = 1024;
    v33 = 50;
    v34 = 2114;
    v35 = v21;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (queueCopy)
    {
      goto LABEL_6;
    }
  }

  else if (queueCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "callbackQueue != nil"];
    *buf = 136315906;
    v29 = "[FCChannelMembershipController fetchChannelMembershipsForIDs:maximumCachedAge:callbackQueue:completionHandler:]";
    v30 = 2080;
    v31 = "FCChannelMembershipController.m";
    v32 = 1024;
    v33 = 51;
    v34 = 2114;
    v35 = v22;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (handlerCopy)
  {
    if (dsCopy && queueCopy)
    {
      if ([dsCopy count])
      {
        recordSource = [(FCChannelMembershipController *)self recordSource];
        v13 = [recordSource fetchOperationForRecordsWithIDs:dsCopy];

        [v13 setQualityOfService:9];
        [v13 setCachePolicy:1];
        [v13 setFetchCompletionQueue:queueCopy];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __112__FCChannelMembershipController_fetchChannelMembershipsForIDs_maximumCachedAge_callbackQueue_completionHandler___block_invoke;
        v25[3] = &unk_1E7C37CB0;
        v25[4] = self;
        v26 = dsCopy;
        v27 = handlerCopy;
        [v13 setFetchCompletionBlock:v25];
        v14 = FCChannelMembershipLog;
        if (os_log_type_enabled(FCChannelMembershipLog, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
          shortOperationDescription = [v13 shortOperationDescription];
          *buf = 138543362;
          v29 = shortOperationDescription;
          _os_log_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_DEFAULT, "refreshing channel memberships, operation=%{public}@", buf, 0xCu);
        }

        fc_sharedConcurrentQueue = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
        [fc_sharedConcurrentQueue addOperation:v13];
      }

      else
      {
        v19 = FCChannelMembershipLog;
        if (os_log_type_enabled(FCChannelMembershipLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEFAULT, "no channel memberships to refresh", buf, 2u);
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __112__FCChannelMembershipController_fetchChannelMembershipsForIDs_maximumCachedAge_callbackQueue_completionHandler___block_invoke_9;
        block[3] = &unk_1E7C379C8;
        v24 = handlerCopy;
        dispatch_async(queueCopy, block);
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completionHandler != nil"];
    *buf = 136315906;
    v29 = "[FCChannelMembershipController fetchChannelMembershipsForIDs:maximumCachedAge:callbackQueue:completionHandler:]";
    v30 = 2080;
    v31 = "FCChannelMembershipController.m";
    v32 = 1024;
    v33 = 52;
    v34 = 2114;
    v35 = v18;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __112__FCChannelMembershipController_fetchChannelMembershipsForIDs_maximumCachedAge_callbackQueue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 status])
  {
    v4 = [v3 error];

    if (v4)
    {
      v4 = v4;
      v9 = 0;
      v5 = 0;
      v6 = v4;
    }

    else
    {
      v6 = [MEMORY[0x1E696ABC0] fc_notAvailableError];
      v9 = 0;
      v5 = 0;
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [v3 fetchedObject];

    v9 = [v7 channelMembershipsFromHeldRecords:v8];

    v5 = [*(a1 + 40) mutableCopy];
    v4 = [v9 allKeys];
    [v5 removeObjectsInArray:v4];
    v6 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

- (id)channelMembershipsFromHeldRecords:(id)records
{
  v3 = MEMORY[0x1E695DF90];
  recordsCopy = records;
  dictionary = [v3 dictionary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__FCChannelMembershipController_channelMembershipsFromHeldRecords___block_invoke;
  v8[3] = &unk_1E7C38AD0;
  v6 = dictionary;
  v9 = v6;
  [recordsCopy enumerateRecordsAndInterestTokensWithBlock:v8];

  return v6;
}

void __67__FCChannelMembershipController_channelMembershipsFromHeldRecords___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [v13 base];
  v7 = [v6 deletedFromCloud];

  if ((v7 & 1) == 0)
  {
    v8 = [[FCChannelMembership alloc] initWithRecord:v13 interestToken:v5];
    v9 = [(FCChannelMembership *)v8 channelID];

    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = [v13 base];
      v12 = [v11 identifier];
      [v10 setObject:v8 forKey:v12];
    }
  }
}

- (id)cachedChannelMembershipsForIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    recordSource = [(FCChannelMembershipController *)self recordSource];
    v6 = [recordSource cachedRecordsWithIDs:dsCopy];

    v7 = [(FCChannelMembershipController *)self channelMembershipsFromHeldRecords:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end