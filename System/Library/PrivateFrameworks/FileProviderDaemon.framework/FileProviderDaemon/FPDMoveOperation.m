@interface FPDMoveOperation
+ (BOOL)_validateInfo:(id)a3;
- (FPDMoveOperation)initWithActionInfo:(id)a3 request:(id)a4 server:(id)a5;
- (void)_t_unblockReader;
- (void)cancel;
- (void)cancelRoot:(id)a3;
- (void)dumpStateTo:(id)a3;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)main;
- (void)sendPastUpdatesToClient:(id)a3;
@end

@implementation FPDMoveOperation

+ (BOOL)_validateInfo:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (FPDMoveOperation)initWithActionInfo:(id)a3 request:(id)a4 server:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([FPDMoveOperation _validateInfo:v8])
  {
    v23.receiver = self;
    v23.super_class = FPDMoveOperation;
    v11 = [(FPDActionOperation *)&v23 initWithActionInfo:v8 request:v9 server:v10];
    if (v11)
    {
      v12 = [FPDActionOperationQueue alloc];
      v13 = [(FPDActionOperation *)v11 info];
      v14 = [(FPDActionOperationQueue *)v12 initWithMoveInfo:v13];
      queue = v11->_queue;
      v11->_queue = v14;

      v16 = [[FPDMoveWriter alloc] initWithOperation:v11 queue:v11->_queue];
      writer = v11->_writer;
      v11->_writer = v16;

      v18 = NSClassFromString(&cfstr_Fpdmovereader.isa);
      v19 = [[v18 alloc] initWithMoveWriter:v11->_writer operation:v11 queue:v11->_queue];
      reader = v11->_reader;
      v11->_reader = v19;
    }

    self = v11;
    v21 = self;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)main
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

void __24__FPDMoveOperation_main__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = objc_loadWeakRetained((a1 + 32));
    v12 = [v11 callbackQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __24__FPDMoveOperation_main__block_invoke_2;
    v13[3] = &unk_1E83BEA58;
    v16[1] = a3;
    v16[2] = a4;
    v16[3] = a5;
    v14 = v9;
    objc_copyWeak(v16, (a1 + 32));
    v15 = WeakRetained;
    dispatch_async(v12, v13);

    objc_destroyWeak(v16);
  }
}

void __24__FPDMoveOperation_main__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:*(a1 + 64) + 200 * *(a1 + 56) + *(a1 + 72)];
  [v2 setCancellable:1];
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __24__FPDMoveOperation_main__block_invoke_3;
  v7 = &unk_1E83BEA30;
  v8 = *(a1 + 32);
  objc_copyWeak(&v9, (a1 + 48));
  [v2 setCancellationHandler:&v4];
  v3 = [*(a1 + 40) progressByRoot];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 32)];

  objc_destroyWeak(&v9);
}

void __24__FPDMoveOperation_main__block_invoke_3(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __24__FPDMoveOperation_main__block_invoke_3_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained cancelRoot:*(a1 + 32)];
}

void __24__FPDMoveOperation_main__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __24__FPDMoveOperation_main__block_invoke_2_8;
    block[3] = &unk_1E83BE068;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

uint64_t __24__FPDMoveOperation_main__block_invoke_2_8(uint64_t a1)
{
  [*(a1 + 32) setHasFinishedPreflight:1];
  v2 = *(a1 + 32);

  return [v2 forAllClients:&__block_literal_global_2];
}

void __24__FPDMoveOperation_main__block_invoke_4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained startDownloadOfItem:v8 shouldMaterializeRecursively:a3 completionHandler:v7];
}

void __24__FPDMoveOperation_main__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained callbackQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __24__FPDMoveOperation_main__block_invoke_6;
    v7[3] = &unk_1E83BE158;
    v8 = v3;
    v9 = v5;
    dispatch_async(v6, v7);
  }
}

void __24__FPDMoveOperation_main__block_invoke_6(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __24__FPDMoveOperation_main__block_invoke_6_cold_1(a1);
  }

  [*(a1 + 40) setHasFinishedPreflight:1];
  v3 = *(a1 + 40);
  v4 = [v3 createdItemByRoot];
  [v3 completedWithResult:v4 error:*(a1 + 32)];
}

void __24__FPDMoveOperation_main__block_invoke_13(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __24__FPDMoveOperation_main__block_invoke_2_14;
    block[3] = &unk_1E83BEB18;
    block[4] = v7;
    v10 = v5;
    v11 = a3;
    dispatch_async(v8, block);
  }
}

void __24__FPDMoveOperation_main__block_invoke_2_14(uint64_t a1)
{
  v2 = [*(a1 + 32) progressByRoot];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  [v3 setCompletedUnitCount:{objc_msgSend(v3, "completedUnitCount") + *(a1 + 48)}];
}

void __24__FPDMoveOperation_main__block_invoke_3_16(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained callbackQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __24__FPDMoveOperation_main__block_invoke_4_17;
    v12[3] = &unk_1E83BEB68;
    v12[4] = v10;
    v13 = v7;
    v15 = a4;
    v14 = v8;
    dispatch_async(v11, v12);
  }
}

void __24__FPDMoveOperation_main__block_invoke_4_17(uint64_t a1)
{
  v2 = [*(a1 + 32) progressByRoot];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  [v3 setCompletedUnitCount:{objc_msgSend(*(a1 + 48), "size") * *(a1 + 56) + 200 + objc_msgSend(v3, "completedUnitCount")}];
}

void __24__FPDMoveOperation_main__block_invoke_5_19(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __24__FPDMoveOperation_main__block_invoke_6_20;
    block[3] = &unk_1E83BDE60;
    block[4] = v8;
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);
  }
}

void __24__FPDMoveOperation_main__block_invoke_6_20(id *a1)
{
  v2 = a1[6];
  v3 = [a1[4] createdItemByRoot];
  [v3 setObject:v2 forKeyedSubscript:a1[5]];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __24__FPDMoveOperation_main__block_invoke_7;
  v5[3] = &unk_1E83BEBB8;
  v4 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  [v4 forAllClients:v5];
}

void __24__FPDMoveOperation_main__block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = [v8 callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __24__FPDMoveOperation_main__block_invoke_10;
    block[3] = &unk_1E83BDE60;
    v11 = v6;
    v12 = v5;
    v13 = WeakRetained;
    dispatch_async(v9, block);
  }
}

void __24__FPDMoveOperation_main__block_invoke_10(id *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = a1 + 4;
  v3 = a1[4];
  v4 = fp_current_or_default_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __24__FPDMoveOperation_main__block_invoke_10_cold_1(a1, v2);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __24__FPDMoveOperation_main__block_invoke_10_cold_2(a1);
  }

  v6 = [a1[6] progressByRoot];
  v7 = [v6 objectForKeyedSubscript:a1[5]];

  [v7 setCompletedUnitCount:{objc_msgSend(v7, "totalUnitCount")}];
  v8 = [a1[6] completedRoots];
  [v8 addObject:a1[5]];

  v9 = a1[4];
  v10 = [a1[6] errorsByRoot];
  [v10 setObject:v9 forKeyedSubscript:a1[5]];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = [a1[6] progressCompletionsByRoot];
  v12 = [v11 objectForKeyedSubscript:a1[5]];

  v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      v16 = 0;
      do
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v12);
        }

        (*(*(*(&v28 + 1) + 8 * v16++) + 16))();
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v14);
  }

  v17 = [a1[6] progressCompletionsByRoot];
  v18 = [v17 objectForKeyedSubscript:a1[5]];
  [v18 removeAllObjects];

  v19 = [a1[6] createdItemByRoot];
  v20 = [v19 objectForKeyedSubscript:a1[5]];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __24__FPDMoveOperation_main__block_invoke_24;
  v24[3] = &unk_1E83BEC08;
  v21 = a1[6];
  v25 = a1[5];
  v26 = v20;
  v27 = a1[4];
  v22 = v20;
  [v21 forAllClients:v24];

  v23 = *MEMORY[0x1E69E9840];
}

void __24__FPDMoveOperation_main__block_invoke_3_29(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained callbackQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __24__FPDMoveOperation_main__block_invoke_4_30;
    v7[3] = &unk_1E83BE158;
    v8 = v3;
    v9 = v5;
    dispatch_async(v6, v7);
  }
}

void __24__FPDMoveOperation_main__block_invoke_4_30(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __24__FPDMoveOperation_main__block_invoke_4_30_cold_1(v2);
    }
  }

  v4 = *(a1 + 40);
  v5 = [v4 createdItemByRoot];
  [v4 completedWithResult:v5 error:*(a1 + 32)];
}

- (void)sendPastUpdatesToClient:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v4 = [(FPOperation *)self callbackQueue];
  dispatch_assert_queue_V2(v4);

  section = __fp_create_section();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [FPDMoveOperation sendPastUpdatesToClient:?];
  }

  if ([(FPOperation *)self isFinished])
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [FPDMoveOperation sendPastUpdatesToClient:];
    }

    [(FPDActionOperation *)self unregisterClientsAfterCompletion];
  }

  else
  {
    if ([(FPDActionOperation *)self hasFinishedPreflight])
    {
      [v20 remoteOperationProgressesAreReady];
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v7 = [(FPDActionOperation *)self progressByRoot];
      v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v8)
      {
        v9 = *v22;
        do
        {
          v10 = 0;
          do
          {
            if (*v22 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v21 + 1) + 8 * v10);
            v12 = [(FPDActionOperation *)self createdItemByRoot];
            v13 = [v12 objectForKeyedSubscript:v11];

            v14 = [(FPDActionOperation *)self completedRoots];
            v15 = [v14 containsObject:v11];

            v16 = [(FPDActionOperation *)self errorsByRoot];
            v17 = [v16 objectForKeyedSubscript:v11];

            if (v15)
            {
              [v20 remoteOperationCompletedRoot:v11 resultingItem:v13 error:v17 completion:&__block_literal_global_32];
            }

            else if (v13)
            {
              [v20 remoteOperationCreatedRoot:v11 resultingItem:v13 completion:&__block_literal_global_34];
            }

            ++v10;
          }

          while (v8 != v10);
          v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v8);
      }
    }

    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [FPDMoveOperation sendPastUpdatesToClient:];
    }

    [v20 remoteOperationFinishedSendingPastUpdates];
  }

  __fp_leave_section_Debug();

  v19 = *MEMORY[0x1E69E9840];
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FPOperation *)self callbackQueue];
  dispatch_assert_queue_V2(v8);

  [(FPDActionOperationQueue *)self->_queue cancel];
  [(FPDMoveReader *)self->_reader cancel];
  [(FPDMoveWriter *)self->_writer cancel];
  reader = self->_reader;
  self->_reader = 0;

  writer = self->_writer;
  self->_writer = 0;

  queue = self->_queue;
  self->_queue = 0;

  [(FPDActionOperation *)self setError:v6];
  v12 = fp_current_or_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [FPDMoveOperation finishWithResult:v12 error:?];
  }

  v13.receiver = self;
  v13.super_class = FPDMoveOperation;
  [(FPDActionOperation *)&v13 finishWithResult:v7 error:v6];
}

- (void)cancelRoot:(id)a3
{
  v4 = a3;
  v5 = [(FPOperation *)self callbackQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__FPDMoveOperation_cancelRoot___block_invoke;
  v7[3] = &unk_1E83BE158;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(v5, v7);
}

uint64_t __31__FPDMoveOperation_cancelRoot___block_invoke(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __31__FPDMoveOperation_cancelRoot___block_invoke_cold_1(a1);
  }

  [*(*(a1 + 40) + 416) cancelRoot:*(a1 + 32)];
  return [*(*(a1 + 40) + 424) cancelRoot:*(a1 + 32)];
}

- (void)cancel
{
  v3 = [(FPOperation *)self callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__FPDMoveOperation_cancel__block_invoke;
  block[3] = &unk_1E83BE068;
  block[4] = self;
  dispatch_sync(v3, block);

  v4.receiver = self;
  v4.super_class = FPDMoveOperation;
  [(FPDActionOperation *)&v4 cancel];
}

uint64_t __26__FPDMoveOperation_cancel__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 432) cancel];
  [*(*(a1 + 32) + 416) cancel];
  v2 = *(*(a1 + 32) + 424);

  return [v2 cancel];
}

- (void)dumpStateTo:(id)a3
{
  v4 = a3;
  v5 = [(FPOperation *)self callbackQueue];
  dispatch_activate(v5);

  v6 = [(FPOperation *)self callbackQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __32__FPDMoveOperation_dumpStateTo___block_invoke;
  v8[3] = &unk_1E83BE158;
  v9 = v4;
  v10 = self;
  v7 = v4;
  dispatch_sync(v6, v8);
}

uint64_t __32__FPDMoveOperation_dumpStateTo___block_invoke(uint64_t a1)
{
  [*(a1 + 32) write:@"************************\n"];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) info];
  [v2 write:{@"move-info=[[%@]]\n\n", v3}];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) clients];
  [v4 write:{@"+ clients: %@\n\n", v5}];

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) progressByRoot];
  [v6 write:{@"+ progress by root: %@\n\n", v7}];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) createdItemByRoot];
  [v8 write:{@"+ moved items by root: %@\n\n", v9}];

  v10 = *(a1 + 32);
  v11 = [*(a1 + 40) errorsByRoot];
  [v10 write:{@"+ errors by root: %@\n", v11}];

  v12 = *(a1 + 32);
  v13 = [*(a1 + 40) completedRoots];
  [v12 write:{@"+ completed roots: %@\n", v13}];

  [*(a1 + 32) write:@"\n"];
  v14 = [*(a1 + 40) error];

  if (v14)
  {
    [*(a1 + 32) startFgColor:1];
    v15 = *(a1 + 32);
    v16 = [*(a1 + 40) error];
    [v15 write:{@"+ error: %@\n", v16}];

    [*(a1 + 32) reset];
  }

  [*(*(a1 + 40) + 416) dumpStateTo:*(a1 + 32)];
  [*(*(a1 + 40) + 432) dumpStateTo:*(a1 + 32)];
  [*(*(a1 + 40) + 424) dumpStateTo:*(a1 + 32)];
  v17 = *(a1 + 32);

  return [v17 write:@"************************\n"];
}

- (void)_t_unblockReader
{
  v3 = [(FPOperation *)self callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__FPDMoveOperation__t_unblockReader__block_invoke;
  block[3] = &unk_1E83BE068;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __24__FPDMoveOperation_main__block_invoke_3_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

void __24__FPDMoveOperation_main__block_invoke_6_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [*(a1 + 32) fp_prettyDescription];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

void __24__FPDMoveOperation_main__block_invoke_10_cold_1(uint64_t a1, id *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = [*a2 fp_prettyDescription];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __24__FPDMoveOperation_main__block_invoke_10_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

void __24__FPDMoveOperation_main__block_invoke_4_30_cold_1(id *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [*a1 fp_prettyDescription];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)sendPastUpdatesToClient:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_2_2();
  v6 = 2112;
  v7 = v2;
  _os_log_debug_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx sending past updates to %@", v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)finishWithResult:(void *)a1 error:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [a1 createdItemByRoot];
  v5 = [a1 errorsByRoot];
  v6 = [a1 error];
  OUTLINED_FUNCTION_3_0();
  v11 = v5;
  v12 = v7;
  v13 = v8;
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] move operation finished with moved-roots:%@ errors-by-root:%@; %@", v10, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

void __31__FPDMoveOperation_cancelRoot___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

@end