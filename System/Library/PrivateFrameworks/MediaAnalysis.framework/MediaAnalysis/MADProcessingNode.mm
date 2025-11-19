@interface MADProcessingNode
- (BOOL)addChild:(id)a3 error:(id *)a4;
- (BOOL)processInput:(id)a3 error:(id *)a4;
- (MADProcessingNode)init;
- (MADProcessingNode)initWithQueue:(id)a3;
- (id)combineResults:(id)a3 withOtherResults:(id)a4;
- (id)waitForResultsWithError:(id *)a3;
- (void)cancelProcessing;
@end

@implementation MADProcessingNode

- (MADProcessingNode)init
{
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADProcessingNode init] is not available", v4, 2u);
  }

  return 0;
}

- (MADProcessingNode)initWithQueue:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([objc_opt_class() conformsToProtocol:&unk_1F49EC7E8])
  {
    v35.receiver = self;
    v35.super_class = MADProcessingNode;
    v6 = [(MADProcessingNode *)&v35 init];
    if (v6)
    {
      v7 = dispatch_semaphore_create(20);
      v8 = *(v6 + 2);
      *(v6 + 2) = v7;

      v9 = [@"com.apple.mediaanalysisd.node." stringByAppendingString:@"inputQueue"];
      v10 = v9;
      v11 = [v9 UTF8String];
      v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v13 = dispatch_queue_create(v11, v12);
      v14 = *(v6 + 1);
      *(v6 + 1) = v13;

      v15 = [@"com.apple.mediaanalysisd.node." stringByAppendingString:@"processQueue"];
      v16 = v15;
      v17 = [v15 UTF8String];
      v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v19 = dispatch_queue_create(v17, v18);
      v20 = *(v6 + 3);
      *(v6 + 3) = v19;

      objc_storeStrong(v6 + 4, a3);
      v21 = [@"com.apple.mediaanalysisd.node." stringByAppendingString:@"childrenQueue"];
      v22 = v21;
      v23 = [v21 UTF8String];
      v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v25 = dispatch_queue_create(v23, v24);
      v26 = *(v6 + 5);
      *(v6 + 5) = v25;

      v27 = [MEMORY[0x1E695DF70] array];
      v28 = *(v6 + 8);
      *(v6 + 8) = v27;

      v29 = dispatch_group_create();
      v30 = *(v6 + 6);
      *(v6 + 6) = v29;

      *(v6 + 59) = 0;
      *(v6 + 14) = 0;
    }

    self = v6;
    v31 = self;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      *buf = 138412290;
      v37 = v33;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ does not implement MADProcessingNodeProtocol", buf, 0xCu);
    }

    v31 = 0;
  }

  return v31;
}

- (BOOL)addChild:(id)a3 error:(id *)a4
{
  v31[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (self->_isRunning)
  {
    if (a4)
    {
      v8 = MEMORY[0x1E696ABC0];
      v30 = *MEMORY[0x1E696A578];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADProcessingNode] Modification after input is not allowed"];
      v31[0] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      v11 = [v8 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v10];
      v12 = *a4;
      *a4 = v11;

LABEL_8:
      LOBYTE(a4) = 0;
    }
  }

  else if (v6)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 1;
    childrenQueue = self->_childrenQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__MADProcessingNode_addChild_error___block_invoke;
    block[3] = &unk_1E834D5D8;
    block[4] = self;
    v22 = &v24;
    v23 = a4;
    v21 = v6;
    dispatch_sync(childrenQueue, block);
    LOBYTE(a4) = *(v25 + 24);

    _Block_object_dispose(&v24, 8);
  }

  else if (a4)
  {
    v14 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADProcessingNode] cannot add nil child"];
    v29 = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v17 = [v14 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v16];
    v18 = *a4;
    *a4 = v17;

    goto LABEL_8;
  }

  return a4 & 1;
}

void __36__MADProcessingNode_addChild_error___block_invoke(void *a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if ([*(a1[4] + 64) containsObject:a1[5]])
  {
    if (a1[7])
    {
      v2 = MEMORY[0x1E696ABC0];
      v10 = *MEMORY[0x1E696A578];
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADProcessingNode] passed child is already a child"];
      v11[0] = v3;
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      v5 = [v2 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v4];
      v6 = a1[7];
      v7 = *v6;
      *v6 = v5;
    }

    *(*(a1[6] + 8) + 24) = 0;
  }

  else
  {
    v8 = a1[5];
    v9 = *(a1[4] + 64);

    [v9 addObject:v8];
  }
}

- (BOOL)processInput:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!self->_isRunning)
  {
    self->_isRunning = 1;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__62;
  v20 = __Block_byref_object_dispose__62;
  v21 = 0;
  inputQueue = self->_inputQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __40__MADProcessingNode_processInput_error___block_invoke;
  v12[3] = &unk_1E834E6A8;
  v12[4] = self;
  v14 = &v22;
  v15 = &v16;
  v8 = v6;
  v13 = v8;
  dispatch_sync(inputQueue, v12);
  v9 = v17[5];
  if (v9)
  {
    objc_storeStrong(a4, v9);
  }

  v10 = *(v23 + 24);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

void __40__MADProcessingNode_processInput_error___block_invoke(void *a1)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (*(v2 + 60) == 1)
  {
    *(*(a1[6] + 8) + 24) = 0;
    v3 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Canceled during processing"];
    v24[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v6 = [v3 errorWithDomain:*MEMORY[0x1E696A768] code:-128 userInfo:v5];
    v7 = *(a1[7] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else if (*(v2 + 62) == 1)
  {
    *(*(a1[6] + 8) + 24) = 0;
    v9 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A578];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Processing previously failed"];
    v22 = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v12 = [v9 errorWithDomain:*MEMORY[0x1E696A768] code:-128 userInfo:v11];
    v13 = *(a1[7] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  else
  {
    atomic_fetch_add_explicit((v2 + 56), 1u, memory_order_relaxed);
    dispatch_semaphore_wait(*(a1[4] + 16), 0xFFFFFFFFFFFFFFFFLL);
    v16 = a1[4];
    v15 = a1[5];
    v17 = *(v16 + 48);
    v18 = *(v16 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__MADProcessingNode_processInput_error___block_invoke_2;
    block[3] = &unk_1E834D238;
    block[4] = v16;
    v20 = v15;
    dispatch_group_async(v17, v18, block);
  }
}

void __40__MADProcessingNode_processInput_error___block_invoke_2(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__62;
  v42 = __Block_byref_object_dispose__62;
  v43 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__62;
  v36[4] = __Block_byref_object_dispose__62;
  v37 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__MADProcessingNode_processInput_error___block_invoke_3;
  block[3] = &unk_1E8351460;
  block[4] = v2;
  v33 = &v44;
  v32 = *(a1 + 40);
  v34 = &v38;
  v35 = v36;
  dispatch_sync(v3, block);
  v4 = *(a1 + 32);
  if ((*(v4 + 60) & 1) == 0 && (*(v4 + 62) & 1) == 0)
  {
    if (*(v45 + 24) == 1)
    {
      if (v39[5])
      {
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        obj = v39[5];
        v5 = [obj countByEnumeratingWithState:&v27 objects:v55 count:16];
        if (v5)
        {
          v19 = *v28;
          do
          {
            v6 = 0;
            v20 = v5;
            do
            {
              if (*v28 != v19)
              {
                objc_enumerationMutation(obj);
              }

              v7 = *(*(&v27 + 1) + 8 * v6);
              v23 = 0u;
              v24 = 0u;
              v25 = 0u;
              v26 = 0u;
              v8 = *(*(a1 + 32) + 64);
              v9 = [v8 countByEnumeratingWithState:&v23 objects:v54 count:16];
              v21 = v6;
              if (v9)
              {
                v10 = *v24;
                do
                {
                  for (i = 0; i != v9; ++i)
                  {
                    if (*v24 != v10)
                    {
                      objc_enumerationMutation(v8);
                    }

                    v12 = *(*(&v23 + 1) + 8 * i);
                    v22 = 0;
                    if (([v12 processInput:v7 error:&v22] & 1) == 0)
                    {
                      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                      {
                        v13 = objc_opt_class();
                        v14 = NSStringFromClass(v13);
                        *buf = 138412802;
                        v49 = v14;
                        v50 = 2048;
                        v51 = v12;
                        v52 = 2112;
                        v53 = v22;
                        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ (%p) child failed to process input: %@", buf, 0x20u);
                      }

                      *(*(a1 + 32) + 62) = 1;
                    }
                  }

                  v9 = [v8 countByEnumeratingWithState:&v23 objects:v54 count:16];
                }

                while (v9);
              }

              v6 = v21 + 1;
            }

            while (v21 + 1 != v20);
            v5 = [obj countByEnumeratingWithState:&v27 objects:v55 count:16];
          }

          while (v5);
        }
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = *(a1 + 32);
        *buf = 138412546;
        v49 = v16;
        v50 = 2048;
        v51 = v17;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ (%p) Failed to process input", buf, 0x16u);
      }

      *(*(a1 + 32) + 62) = 1;
    }
  }

  dispatch_semaphore_signal(*(*(a1 + 32) + 16));
  atomic_fetch_add_explicit((*(a1 + 32) + 56), 0xFFFFFFFF, memory_order_relaxed);

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(&v38, 8);

  _Block_object_dispose(&v44, 8);
}

void __40__MADProcessingNode_processInput_error___block_invoke_3(void *a1)
{
  v1 = a1[4];
  if ((v1[60] & 1) == 0 && (v1[62] & 1) == 0)
  {
    v3 = v1;
    *(*(a1[6] + 8) + 24) = [v3 processInput:a1[5] outputs:*(a1[7] + 8) + 40 error:*(a1[8] + 8) + 40];
  }
}

- (void)cancelProcessing
{
  v11 = *MEMORY[0x1E69E9840];
  self->_isCanceled = 1;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = self->_children;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v6 + 1) + 8 * v5++) cancelProcessing];
      }

      while (v3 != v5);
      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (id)waitForResultsWithError:(id *)a3
{
  v34[1] = *MEMORY[0x1E69E9840];
  if (!self->_isRunning)
  {
    v8 = MEMORY[0x1E696ABC0];
    v33 = *MEMORY[0x1E696A578];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADProcessingNode] waiting for results before any inputs"];
    v34[0] = v22;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v7 = [v8 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v6];
    goto LABEL_6;
  }

  dispatch_group_wait(self->_group, 0xFFFFFFFFFFFFFFFFLL);
  if (a3 && self->_inputCount)
  {
    v5 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A578];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADProcessingNode] Input still waiting to be processed after group is finished"];
    v32 = v22;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v7 = [v5 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v6];
LABEL_6:
    v21 = v6;
    v9 = 0;
    v10 = *a3;
    *a3 = v7;
    goto LABEL_7;
  }

  v22 = self;
  v9 = [MEMORY[0x1E695DF90] dictionary];
  v21 = [(MADProcessingNode *)v22 collectResultsWithError:a3];
  if (a3 && *a3)
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*a3 description];
      *buf = 138412290;
      v30 = v12;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADProcessingNode] Errored while collecting results: %@", buf, 0xCu);
    }
  }

  else if (v21)
  {
    [v9 addEntriesFromDictionary:v21];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v22->_children;
  v13 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = *v25;
    v15 = MEMORY[0x1E69E9C10];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        obj = 0;
        v18 = [v17 waitForResultsWithError:&obj];
        if (obj)
        {
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [obj description];
            *buf = 138412290;
            v30 = v19;
            _os_log_impl(&dword_1C9B70000, v15, OS_LOG_TYPE_DEFAULT, "[MADProcessingNode] Child errored while finishing: %@", buf, 0xCu);
          }

          if (a3)
          {
            objc_storeStrong(a3, obj);
          }
        }

        if (v18)
        {
          v20 = [(MADProcessingNode *)v22 combineResults:v9 withOtherResults:v18];

          v9 = v20;
        }
      }

      v13 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

LABEL_7:

  return v9;
}

- (id)combineResults:(id)a3 withOtherResults:(id)a4
{
  v5 = a4;
  v6 = [a3 mutableCopy];
  [v6 addEntriesFromDictionary:v5];

  return v6;
}

@end