@interface FPDDownloadOperation
+ (BOOL)_validateInfo:(id)info;
- (FPDDownloadOperation)initWithActionInfo:(id)info request:(id)request server:(id)server;
- (void)_finishedDownloadingLocator:(id)locator withError:(id)error;
- (void)_setupCreatedItemForRoot:(id)root;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
- (void)sendPastUpdatesToClient:(id)client;
@end

@implementation FPDDownloadOperation

+ (BOOL)_validateInfo:(id)info
{
  infoCopy = info;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (FPDDownloadOperation)initWithActionInfo:(id)info request:(id)request server:(id)server
{
  infoCopy = info;
  requestCopy = request;
  serverCopy = server;
  if ([FPDDownloadOperation _validateInfo:infoCopy])
  {
    v21.receiver = self;
    v21.super_class = FPDDownloadOperation;
    v11 = [(FPDActionOperation *)&v21 initWithActionInfo:infoCopy request:requestCopy server:serverCopy];
    if (v11)
    {
      v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v13 = dispatch_queue_create("FileProvider.download-operation", v12);
      queue = v11->_queue;
      v11->_queue = v13;

      v15 = [FPDCoordinator alloc];
      manager = [(FPDActionOperation *)v11 manager];
      v17 = [(FPDCoordinator *)v15 initWithExtensionManager:manager callbackQueue:v11->_queue];
      coordinator = v11->_coordinator;
      v11->_coordinator = v17;
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)finishWithResult:(id)result error:(id)error
{
  errorCopy = error;
  resultCopy = result;
  callbackQueue = [(FPOperation *)self callbackQueue];
  dispatch_assert_queue_V2(callbackQueue);

  [(FPDActionOperation *)self setError:errorCopy];
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [FPDDownloadOperation finishWithResult:? error:?];
  }

  v10.receiver = self;
  v10.super_class = FPDDownloadOperation;
  [(FPDActionOperation *)&v10 finishWithResult:resultCopy error:errorCopy];
}

- (void)sendPastUpdatesToClient:(id)client
{
  v28 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  callbackQueue = [(FPOperation *)self callbackQueue];
  dispatch_assert_queue_V2(callbackQueue);

  section = __fp_create_section();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [FPDDownloadOperation sendPastUpdatesToClient:?];
  }

  if ([(FPOperation *)self isFinished])
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [FPDDownloadOperation sendPastUpdatesToClient:];
    }

    [(FPDActionOperation *)self unregisterClientsAfterCompletion];
  }

  else
  {
    if ([(FPDActionOperation *)self hasFinishedPreflight])
    {
      [clientCopy remoteOperationProgressesAreReady];
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      createdItemByRoot = [(FPDActionOperation *)self createdItemByRoot];
      allKeys = [createdItemByRoot allKeys];

      v9 = [allKeys countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v9)
      {
        v10 = *v23;
        do
        {
          v11 = 0;
          do
          {
            if (*v23 != v10)
            {
              objc_enumerationMutation(allKeys);
            }

            v12 = *(*(&v22 + 1) + 8 * v11);
            createdItemByRoot2 = [(FPDActionOperation *)self createdItemByRoot];
            v14 = [createdItemByRoot2 objectForKeyedSubscript:v12];

            completedRoots = [(FPDActionOperation *)self completedRoots];
            v16 = [completedRoots containsObject:v12];

            errorsByRoot = [(FPDActionOperation *)self errorsByRoot];
            v18 = [errorsByRoot objectForKeyedSubscript:v12];

            if (v16)
            {
              [clientCopy remoteOperationCompletedRoot:v12 resultingItem:v14 error:v18 completion:&__block_literal_global_8];
            }

            else if (v14)
            {
              [clientCopy remoteOperationCreatedRoot:v12 resultingItem:v14 completion:&__block_literal_global_7];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [allKeys countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v9);
      }
    }

    v19 = fp_current_or_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [FPDMoveOperation sendPastUpdatesToClient:];
    }

    [clientCopy remoteOperationFinishedSendingPastUpdates];
  }

  __fp_leave_section_Debug();

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_setupCreatedItemForRoot:(id)root
{
  rootCopy = root;
  callbackQueue = [(FPOperation *)self callbackQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__FPDDownloadOperation__setupCreatedItemForRoot___block_invoke;
  v7[3] = &unk_1E83BE158;
  v8 = rootCopy;
  selfCopy = self;
  v6 = rootCopy;
  dispatch_async(callbackQueue, v7);
}

void __49__FPDDownloadOperation__setupCreatedItemForRoot___block_invoke(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __49__FPDDownloadOperation__setupCreatedItemForRoot___block_invoke_cold_1(a1);
  }

  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) createdItemByRoot];
  [v4 setObject:v3 forKeyedSubscript:*(a1 + 32)];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__FPDDownloadOperation__setupCreatedItemForRoot___block_invoke_8;
  v6[3] = &unk_1E83BF2E8;
  v5 = *(a1 + 40);
  v7 = *(a1 + 32);
  [v5 forAllClients:v6];
}

- (void)_finishedDownloadingLocator:(id)locator withError:(id)error
{
  locatorCopy = locator;
  errorCopy = error;
  callbackQueue = [(FPOperation *)self callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__FPDDownloadOperation__finishedDownloadingLocator_withError___block_invoke;
  block[3] = &unk_1E83BDE60;
  v12 = errorCopy;
  v13 = locatorCopy;
  selfCopy = self;
  v9 = locatorCopy;
  v10 = errorCopy;
  dispatch_async(callbackQueue, block);
}

void __62__FPDDownloadOperation__finishedDownloadingLocator_withError___block_invoke(id *a1)
{
  v2 = a1 + 4;
  v3 = a1[4];
  v4 = fp_current_or_default_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __62__FPDDownloadOperation__finishedDownloadingLocator_withError___block_invoke_cold_1(a1, v2, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __62__FPDDownloadOperation__finishedDownloadingLocator_withError___block_invoke_cold_2(a1);
  }

  v6 = [a1[6] completedRoots];
  [v6 addObject:a1[5]];

  v7 = a1[4];
  v8 = [a1[6] errorsByRoot];
  [v8 setObject:v7 forKeyedSubscript:a1[5]];

  v9 = [a1[6] createdItemByRoot];
  v10 = [v9 objectForKeyedSubscript:a1[5]];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__FPDDownloadOperation__finishedDownloadingLocator_withError___block_invoke_12;
  v13[3] = &unk_1E83BEC08;
  v11 = a1[6];
  v14 = a1[5];
  v15 = v10;
  v16 = a1[4];
  v12 = v10;
  [v11 forAllClients:v13];
}

- (void)main
{
  v4 = @"no";
  if (self)
  {
    v4 = @"yes";
  }

  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = v4;
  _os_log_debug_impl(&dword_1CEFC7000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] download-operation: Request to download %lu roots; recursively ? %@", buf, 0x16u);
}

void __28__FPDDownloadOperation_main__block_invoke(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a1[4];
  v7 = a1[5];
  v8 = a4;
  [v6 _finishedDownloadingLocator:v7 withError:a3];
  v8[2](v8);

  v9 = a1[6];

  dispatch_group_leave(v9);
}

uint64_t __28__FPDDownloadOperation_main__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setHasFinishedPreflight:1];
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __28__FPDDownloadOperation_main__block_invoke_2_cold_1();
  }

  return [*(a1 + 32) forAllClients:&__block_literal_global_23];
}

void __28__FPDDownloadOperation_main__block_invoke_2_24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __28__FPDDownloadOperation_main__block_invoke_2_24_cold_1(a1);
    }

    v4 = dispatch_group_create();
    v5 = [*(a1 + 32) createdItemByRoot];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __28__FPDDownloadOperation_main__block_invoke_25;
    v11[3] = &unk_1E83BF388;
    v6 = *(a1 + 32);
    v12 = v4;
    v13 = v6;
    v7 = v4;
    [v5 enumerateKeysAndObjectsUsingBlock:v11];

    v8 = [*(a1 + 32) callbackQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __28__FPDDownloadOperation_main__block_invoke_2_31;
    v10[3] = &unk_1E83BE158;
    v9 = *(a1 + 32);
    v10[4] = WeakRetained;
    v10[5] = v9;
    dispatch_group_notify(v7, v8, v10);
  }
}

void __28__FPDDownloadOperation_main__block_invoke_25(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  dispatch_group_enter(v6);
  LOBYTE(v6) = [v7 isProviderItem];

  if (v6)
  {
    v8 = [v5 asFPItem];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __28__FPDDownloadOperation_main__block_invoke_2_26;
    aBlock[3] = &unk_1E83BF338;
    v9 = v8;
    v10 = *(a1 + 40);
    v27 = v9;
    v28 = v10;
    v29 = v5;
    v30 = *(a1 + 32);
    v11 = _Block_copy(aBlock);
    v12 = [*(a1 + 40) manager];
    v13 = [v9 itemID];
    v14 = [v12 domainFromItemID:v13 reason:0];

    v15 = [v14 defaultBackend];
    v16 = [v9 itemID];
    v17 = [*(a1 + 40) request];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __28__FPDDownloadOperation_main__block_invoke_29;
    v21[3] = &unk_1E83BF360;
    v22 = v14;
    v23 = v9;
    v24 = *(a1 + 40);
    v25 = v11;
    v18 = v11;
    v19 = v9;
    v20 = v14;
    [v15 itemForItemID:v16 creatingPlaceholderIfMissing:0 ignoreAlternateContentsURL:1 request:v17 completionHandler:v21];
  }

  else
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

void __28__FPDDownloadOperation_main__block_invoke_2_26(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = fp_current_or_default_log();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __28__FPDDownloadOperation_main__block_invoke_2_26_cold_1(a1);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __28__FPDDownloadOperation_main__block_invoke_2_26_cold_2(v5);
    }

    v8 = [MEMORY[0x1E69672A8] locatorForItem:v5];
    v9 = [*(a1 + 40) createdItemByRoot];
    [v9 setObject:v8 forKeyedSubscript:*(a1 + 48)];
  }

  dispatch_group_leave(*(a1 + 56));
}

void __28__FPDDownloadOperation_main__block_invoke_29(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 | a3)
  {
    v4 = *(a1 + 56);
    v5 = *(*(a1 + 56) + 16);

    v5();
  }

  else
  {
    v8 = [*(a1 + 32) defaultBackend];
    v6 = [*(a1 + 40) formerItemID];
    v7 = [*(a1 + 48) request];
    [v8 itemForItemID:v6 creatingPlaceholderIfMissing:0 ignoreAlternateContentsURL:1 request:v7 completionHandler:*(a1 + 56)];
  }
}

uint64_t __28__FPDDownloadOperation_main__block_invoke_2_31(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 createdItemByRoot];
  [v2 completedWithResult:v3 error:0];

  v4 = *(*(a1 + 40) + 424);

  return [v4 stopAccessingAllURLs];
}

- (void)finishWithResult:(void *)a1 error:.cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [a1 createdItemByRoot];
  v3 = [a1 errorsByRoot];
  v4 = [a1 error];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)sendPastUpdatesToClient:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_2_5();
  _os_log_debug_impl(&dword_1CEFC7000, v2, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx download-op sending past updates to %@", v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void __49__FPDDownloadOperation__setupCreatedItemForRoot___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __62__FPDDownloadOperation__finishedDownloadingLocator_withError___block_invoke_cold_1(uint64_t a1, id *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = [*a2 fp_prettyDescription];
  OUTLINED_FUNCTION_3_0();
  v9 = v6;
  _os_log_error_impl(&dword_1CEFC7000, a3, OS_LOG_TYPE_ERROR, "[ERROR] Download root %@ failed with error: %@", v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __62__FPDDownloadOperation__finishedDownloadingLocator_withError___block_invoke_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 40);
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __28__FPDDownloadOperation_main__block_invoke_2_24_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) createdItemByRoot];
  v8 = [v1 allKeys];
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __28__FPDDownloadOperation_main__block_invoke_2_26_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_2_5();
  _os_log_error_impl(&dword_1CEFC7000, v2, OS_LOG_TYPE_ERROR, "[ERROR] download-operation: Unable to fetch item %@, ignoring error: %@", v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void __28__FPDDownloadOperation_main__block_invoke_2_26_cold_2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 isDownloaded];
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x1E69E9840];
}

@end