@interface ICReindexAllItemsOperation
- (NSData)clientStateData;
- (void)clientStateData;
- (void)main;
@end

@implementation ICReindexAllItemsOperation

- (void)main
{
  v29 = *MEMORY[0x1E69E9840];
  if (ICVerboseSearchLogging())
  {
    v3 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [ICReindexAllItemsOperation main];
    }
  }

  if (ICReindexAlertEnabled())
  {
    [ICAssert handleFailedAssertWithCondition:"NO" functionName:"[ICReindexAllItemsOperation main]" simulateCrash:0 showAlert:1 alertMessage:@"An unintended reindexing may have happened. Do you want to file a radar?" format:@"Possibly unintended reindexing operation %@", self];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [(ICIndexItemsOperation *)self dataSources];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        if (ICVerboseSearchLogging())
        {
          v10 = os_log_create("com.apple.notes", "SearchIndexer");
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v25 = v9;
            v26 = 2112;
            v27 = self;
            _os_log_debug_impl(&dword_1D4576000, v10, OS_LOG_TYPE_DEBUG, "Staging data source %@ for reindexing in operation %@", buf, 0x16u);
          }
        }

        v11 = [(ICIndexItemsOperation *)self managedObjectContextForDataSource:v9];
        [v9 stageForReindexingWithContext:v11];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v6);
  }

  [ICSettingsUtilities setObject:0 forKey:@"ReindexOnLaunch"];
  if (ICVerboseSearchLogging())
  {
    v12 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ICReindexAllItemsOperation main];
    }
  }

  v13 = [(ICIndexItemsOperation *)self searchableIndex];
  [v13 beginIndexBatch];

  if (ICVerboseSearchLogging())
  {
    v14 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [ICReindexAllItemsOperation main];
    }
  }

  v15 = [(ICIndexItemsOperation *)self searchableIndex];
  v16 = [(ICReindexAllItemsOperation *)self clientStateData];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __34__ICReindexAllItemsOperation_main__block_invoke;
  v19[3] = &unk_1E84850C8;
  v19[4] = self;
  [v15 endIndexBatchWithClientState:v16 completionHandler:v19];

  v18.receiver = self;
  v18.super_class = ICReindexAllItemsOperation;
  [(ICIndexItemsOperation *)&v18 main];
  if (ICVerboseSearchLogging())
  {
    v17 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [ICReindexAllItemsOperation main];
    }
  }
}

void __34__ICReindexAllItemsOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (ICVerboseSearchLogging())
  {
    v4 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __34__ICReindexAllItemsOperation_main__block_invoke_cold_1(a1, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (v3)
  {
    v11 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __34__ICReindexAllItemsOperation_main__block_invoke_cold_2();
    }
  }
}

- (NSData)clientStateData
{
  clientStateData = self->_clientStateData;
  if (!clientStateData)
  {
    v4 = [ICSettingsUtilities objectForKey:@"ClientStateData"];
    if (v4)
    {
      v5 = v4;
      objc_storeStrong(&self->_clientStateData, v4);
LABEL_12:

      clientStateData = self->_clientStateData;
      goto LABEL_13;
    }

    v10 = 0;
    v5 = [MEMORY[0x1E695DEF0] ic_random128BitData:&v10];
    v6 = v10;
    if (v6)
    {
      v7 = os_log_create("com.apple.notes", "SearchIndexer");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [ICReindexAllItemsOperation clientStateData];
      }

      if (!v5)
      {
        goto LABEL_11;
      }
    }

    else if (!v5)
    {
      v9 = os_log_create("com.apple.notes", "SearchIndexer");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(ICReindexAllItemsOperation *)v9 clientStateData];
      }

      goto LABEL_11;
    }

    objc_storeStrong(&self->_clientStateData, v5);
    [ICSettingsUtilities setObject:v5 forKey:@"ClientStateData"];
LABEL_11:

    goto LABEL_12;
  }

LABEL_13:

  return clientStateData;
}

void __34__ICReindexAllItemsOperation_main__block_invoke_cold_2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1D4576000, v0, OS_LOG_TYPE_ERROR, "Error writing client state data into CoreSpotlight %@", v1, 0xCu);
}

- (void)clientStateData
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1D4576000, v0, OS_LOG_TYPE_ERROR, "Error generating random NSData for CoreSpotlight client state data. %@", v1, 0xCu);
}

@end