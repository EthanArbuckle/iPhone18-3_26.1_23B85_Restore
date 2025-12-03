@interface FLContainerStorePathManager
- (FLContainerStorePathManager)init;
- (id)containerPathForStoreId:(id)id;
- (id)performXPCForContainerPathForStoreId:(id)id;
- (void)dealloc;
@end

@implementation FLContainerStorePathManager

- (id)performXPCForContainerPathForStoreId:(id)id
{
  idCopy = id;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__403;
  v24 = __Block_byref_object_dispose__404;
  storeIdToContainerPathMap = [(FLContainerStorePathManager *)self storeIdToContainerPathMap];
  v25 = [storeIdToContainerPathMap objectForKeyedSubscript:idCopy];

  v6 = v21[5];
  if (v6)
  {
    goto LABEL_8;
  }

  date = [MEMORY[0x277CBEAA8] date];
  storeIdToLastSandboxExtensionRequestMap = [(FLContainerStorePathManager *)self storeIdToLastSandboxExtensionRequestMap];
  v9 = [storeIdToLastSandboxExtensionRequestMap objectForKeyedSubscript:idCopy];

  if (!v9 || ([date timeIntervalSinceDate:v9], v10 >= 1.0))
  {
    storeIdToLastSandboxExtensionRequestMap2 = [(FLContainerStorePathManager *)self storeIdToLastSandboxExtensionRequestMap];
    [storeIdToLastSandboxExtensionRequestMap2 setObject:date forKeyedSubscript:idCopy];

    v14 = objc_alloc_init(FeedbackLoggerFBFClient);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __68__FLContainerStorePathManager_performXPCForContainerPathForStoreId___block_invoke;
    v16[3] = &unk_278FF8C80;
    v16[4] = self;
    v17 = idCopy;
    v18 = &v20;
    [(FeedbackLoggerFBFClient *)v14 requestSandboxExtensionForBundleID:v17 completion:v16];

    v6 = v21[5];
LABEL_8:
    v12 = v6;
    goto LABEL_9;
  }

  v11 = [(FLContainerStorePathManager *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_24AB3F000, v11, OS_LOG_TYPE_ERROR, "Throttling repeat request for group container sandbox extension.", buf, 2u);
  }

  v12 = 0;
LABEL_9:
  _Block_object_dispose(&v20, 8);

  return v12;
}

void __68__FLContainerStorePathManager_performXPCForContainerPathForStoreId___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || !v6)
  {
    v19 = [*(a1 + 32) log];
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
LABEL_8:

      v18 = [*(a1 + 32) storeIdToLastSandboxExtensionRequestMap];
      [v18 removeObjectForKey:*(a1 + 40)];
      goto LABEL_9;
    }

    *v22 = 0;
    v20 = "Unable to obtain group container sandbox extension.";
LABEL_11:
    _os_log_error_impl(&dword_24AB3F000, v19, OS_LOG_TYPE_ERROR, v20, v22, 2u);
    goto LABEL_8;
  }

  [v5 UTF8String];
  v8 = sandbox_extension_consume();
  v9 = *(a1 + 32);
  if (v8 == -1)
  {
    v19 = [v9 log];
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *v22 = 0;
    v20 = "Unable to consume group container sandbox extension.";
    goto LABEL_11;
  }

  v10 = [v9 sandboxExtensionTokens];
  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:v8];
  [v10 addObject:v11];

  v12 = MEMORY[0x277CCACA8];
  v23[0] = v7;
  v23[1] = @"data.sqlite";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v14 = [v12 pathWithComponents:v13];
  v15 = *(*(a1 + 48) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  v17 = *(*(*(a1 + 48) + 8) + 40);
  v18 = [*(a1 + 32) storeIdToContainerPathMap];
  [v18 setObject:v17 forKeyedSubscript:*(a1 + 40)];
LABEL_9:

  v21 = *MEMORY[0x277D85DE8];
}

- (id)containerPathForStoreId:(id)id
{
  v15 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v5 = [(FLContainerStorePathManager *)self performXPCForContainerPathForStoreId:idCopy];
  if (!v5)
  {
    v7 = 0;
    *&v6 = 134217984;
    v12 = v6;
    do
    {
      v8 = [(FLContainerStorePathManager *)self log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v12;
        v14 = v7 + 1;
        _os_log_impl(&dword_24AB3F000, v8, OS_LOG_TYPE_DEFAULT, "Retrying xpc (%ld attempt) sandbox extension.", buf, 0xCu);
      }

      v9 = [(FLContainerStorePathManager *)self performXPCForContainerPathForStoreId:idCopy];
      v5 = v9;
      if (v7 > 1)
      {
        break;
      }

      ++v7;
    }

    while (!v9);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sandboxExtensionTokens = [(FLContainerStorePathManager *)self sandboxExtensionTokens];
  v4 = [sandboxExtensionTokens countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(sandboxExtensionTokens);
        }

        [*(*(&v10 + 1) + 8 * v7) intValue];
        sandbox_extension_release();
        ++v7;
      }

      while (v5 != v7);
      v5 = [sandboxExtensionTokens countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = FLContainerStorePathManager;
  [(FLContainerStorePathManager *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

- (FLContainerStorePathManager)init
{
  v12.receiver = self;
  v12.super_class = FLContainerStorePathManager;
  v2 = [(FLContainerStorePathManager *)&v12 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storeIdToContainerPathMap = v2->_storeIdToContainerPathMap;
    v2->_storeIdToContainerPathMap = dictionary;

    array = [MEMORY[0x277CBEB18] array];
    sandboxExtensionTokens = v2->_sandboxExtensionTokens;
    v2->_sandboxExtensionTokens = array;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    storeIdToLastSandboxExtensionRequestMap = v2->_storeIdToLastSandboxExtensionRequestMap;
    v2->_storeIdToLastSandboxExtensionRequestMap = dictionary2;

    v9 = flLogForObject(v2);
    log = v2->_log;
    v2->_log = v9;
  }

  return v2;
}

@end