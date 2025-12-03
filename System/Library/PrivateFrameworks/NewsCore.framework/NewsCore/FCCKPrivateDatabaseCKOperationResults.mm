@interface FCCKPrivateDatabaseCKOperationResults
- (FCCKPrivateDatabaseCKOperationResults)init;
- (NSArray)combinedResultItems;
- (NSError)combinedError;
- (void)notifyWhenFinishWithQoS:(int64_t)s completionHandler:(id)handler;
- (void)operationDidFinishWithItemIDs:(id)ds resultItems:(id)items error:(id)error;
- (void)operationWillStart;
@end

@implementation FCCKPrivateDatabaseCKOperationResults

- (FCCKPrivateDatabaseCKOperationResults)init
{
  v10.receiver = self;
  v10.super_class = FCCKPrivateDatabaseCKOperationResults;
  v2 = [(FCCKPrivateDatabaseCKOperationResults *)&v10 init];
  if (v2)
  {
    v3 = dispatch_group_create();
    group = v2->_group;
    v2->_group = v3;

    v5 = objc_alloc_init(FCThreadSafeMutableArray);
    threadSafeItems = v2->_threadSafeItems;
    v2->_threadSafeItems = v5;

    v7 = objc_alloc_init(FCThreadSafeMutableArray);
    threadSafeErrorsAndItemIDs = v2->_threadSafeErrorsAndItemIDs;
    v2->_threadSafeErrorsAndItemIDs = v7;
  }

  return v2;
}

- (void)operationWillStart
{
  group = [(FCCKPrivateDatabaseCKOperationResults *)self group];
  dispatch_group_enter(group);
}

- (void)operationDidFinishWithItemIDs:(id)ds resultItems:(id)items error:(id)error
{
  v25 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  itemsCopy = items;
  errorCopy = error;
  if (!dsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "itemIDs"];
    *buf = 136315906;
    v18 = "[FCCKPrivateDatabaseCKOperationResults operationDidFinishWithItemIDs:resultItems:error:]";
    v19 = 2080;
    v20 = "FCCKPrivateDatabaseOperation.m";
    v21 = 1024;
    v22 = 227;
    v23 = 2114;
    v24 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if ([itemsCopy count])
  {
    threadSafeItems = [(FCCKPrivateDatabaseCKOperationResults *)self threadSafeItems];
    [threadSafeItems addObjectsFromArray:itemsCopy];
  }

  threadSafeErrorsAndItemIDs = [(FCCKPrivateDatabaseCKOperationResults *)self threadSafeErrorsAndItemIDs];
  v13 = [FCPair pairWithFirst:dsCopy second:errorCopy];
  [threadSafeErrorsAndItemIDs addObject:v13];

  group = [(FCCKPrivateDatabaseCKOperationResults *)self group];
  dispatch_group_leave(group);

  v15 = *MEMORY[0x1E69E9840];
}

- (void)notifyWhenFinishWithQoS:(int64_t)s completionHandler:(id)handler
{
  handlerCopy = handler;
  group = [(FCCKPrivateDatabaseCKOperationResults *)self group];
  v8 = FCDispatchQueueForQualityOfService(s);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__FCCKPrivateDatabaseCKOperationResults_notifyWhenFinishWithQoS_completionHandler___block_invoke;
  v10[3] = &unk_1E7C37778;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  dispatch_group_notify(group, v8, v10);
}

void __83__FCCKPrivateDatabaseCKOperationResults_notifyWhenFinishWithQoS_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) combinedResultItems];
  v3 = [*(a1 + 32) combinedError];
  (*(v2 + 16))(v2, v4, v3);
}

- (NSArray)combinedResultItems
{
  threadSafeItems = [(FCCKPrivateDatabaseCKOperationResults *)self threadSafeItems];
  readOnlyArray = [threadSafeItems readOnlyArray];

  return readOnlyArray;
}

- (NSError)combinedError
{
  v22[2] = *MEMORY[0x1E69E9840];
  threadSafeErrorsAndItemIDs = [(FCCKPrivateDatabaseCKOperationResults *)self threadSafeErrorsAndItemIDs];
  readOnlyArray = [threadSafeErrorsAndItemIDs readOnlyArray];

  if ([readOnlyArray count] <= 1)
  {
    goto LABEL_2;
  }

  if ([readOnlyArray fc_allObjectsPassTest:&__block_literal_global_5])
  {
    second = 0;
  }

  else
  {
    v6 = [readOnlyArray fc_allObjectsPassTest:&__block_literal_global_54];
    v7 = [readOnlyArray fc_allObjectsPassTest:&__block_literal_global_56];
    if (v6 && v7)
    {
LABEL_2:
      firstObject = [readOnlyArray firstObject];
      second = [firstObject second];

      goto LABEL_8;
    }

    v8 = MEMORY[0x1E695DF20];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __54__FCCKPrivateDatabaseCKOperationResults_combinedError__block_invoke_4;
    v19 = &unk_1E7C36EC8;
    v20 = readOnlyArray;
    v9 = [v8 fc_dictionary:&v16];
    v10 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E695B740];
    v12 = *MEMORY[0x1E696A578];
    v21[0] = *MEMORY[0x1E695B798];
    v21[1] = v12;
    v22[0] = v9;
    v22[1] = @"Some private database CK operations failed.";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:{2, v16, v17, v18, v19}];
    second = [v10 errorWithDomain:v11 code:2 userInfo:v13];
  }

LABEL_8:

  v14 = *MEMORY[0x1E69E9840];

  return second;
}

BOOL __54__FCCKPrivateDatabaseCKOperationResults_combinedError__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 second];
  v3 = v2 == 0;

  return v3;
}

BOOL __54__FCCKPrivateDatabaseCKOperationResults_combinedError__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 second];
  v3 = v2 != 0;

  return v3;
}

BOOL __54__FCCKPrivateDatabaseCKOperationResults_combinedError__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 second];
  v3 = [v2 code] != 2;

  return v3;
}

void __54__FCCKPrivateDatabaseCKOperationResults_combinedError__block_invoke_4(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v43 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v31;
    v25 = *MEMORY[0x1E695B798];
    *&v6 = 136315906;
    v23 = v6;
    do
    {
      v9 = 0;
      v24 = v7;
      do
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v30 + 1) + 8 * v9);
        v11 = [v10 first];
        v12 = [v10 second];
        v13 = v12;
        if (v12)
        {
          if ([v12 code] == 2)
          {
            v14 = [v13 userInfo];
            v15 = [v14 objectForKeyedSubscript:v25];

            if (!v15 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"all partial failures should have a dictionary from IDs to errors"];
              *buf = v23;
              v36 = "[FCCKPrivateDatabaseCKOperationResults combinedError]_block_invoke_4";
              v37 = 2080;
              v38 = "FCCKPrivateDatabaseOperation.m";
              v39 = 1024;
              v40 = 298;
              v41 = 2114;
              v42 = v21;
              _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
            }

            [v3 addEntriesFromDictionary:v15];
          }

          else
          {
            v28 = 0u;
            v29 = 0u;
            v26 = 0u;
            v27 = 0u;
            v15 = v11;
            v16 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = v8;
              v19 = *v27;
              do
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v27 != v19)
                  {
                    objc_enumerationMutation(v15);
                  }

                  [v3 setObject:v13 forKey:*(*(&v26 + 1) + 8 * i)];
                }

                v17 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
              }

              while (v17);
              v8 = v18;
              v7 = v24;
            }
          }
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [v4 countByEnumeratingWithState:&v30 objects:v43 count:16];
    }

    while (v7);
  }

  v22 = *MEMORY[0x1E69E9840];
}

@end