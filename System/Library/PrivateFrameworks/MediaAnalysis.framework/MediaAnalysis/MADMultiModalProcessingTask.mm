@interface MADMultiModalProcessingTask
- (BOOL)run:(id *)a3;
- (MADMultiModalProcessingTask)initWithRequests:(id)a3 inputs:(id)a4 cancelBlock:(id)a5 completionHandler:(id)a6;
- (void)cancel;
@end

@implementation MADMultiModalProcessingTask

- (MADMultiModalProcessingTask)initWithRequests:(id)a3 inputs:(id)a4 cancelBlock:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __85__MADMultiModalProcessingTask_initWithRequests_inputs_cancelBlock_completionHandler___block_invoke;
  v25[3] = &unk_1E834CF90;
  v15 = v14;
  v26 = v15;
  v24.receiver = self;
  v24.super_class = MADMultiModalProcessingTask;
  v16 = [(VCPMABaseTask *)&v24 initWithCompletionHandler:v25];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_requests, a3);
    objc_storeStrong(&v17->_inputs, a4);
    signpostPayload = v17->_signpostPayload;
    v17->_signpostPayload = &stru_1F496CB30;

    v19 = [MEMORY[0x1E695DF70] array];
    subtasks = v17->_subtasks;
    v17->_subtasks = v19;

    [(VCPMABaseTask *)v17 setCancelBlock:v13];
    v21 = dispatch_queue_create("MADMultiModalProcessingTask", 0);
    cancelQueue = v17->_cancelQueue;
    v17->_cancelQueue = v21;
  }

  return v17;
}

void __85__MADMultiModalProcessingTask_initWithRequests_inputs_cancelBlock_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:@"Replies"];
  (*(v4 + 16))(v4, v6, v5);
}

- (BOOL)run:(id *)a3
{
  v73[1] = *MEMORY[0x1E69E9840];
  v5 = VCPSignPostLog();
  v6 = os_signpost_id_generate(v5);

  v7 = VCPSignPostLog();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    signpostPayload = self->_signpostPayload;
    *buf = 138412290;
    v66 = signpostPayload;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "MADMultiModalProcessingTask_Run", "%@", buf, 0xCu);
  }

  cancelQueue = self->_cancelQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__MADMultiModalProcessingTask_run___block_invoke;
  block[3] = &unk_1E834C010;
  block[4] = self;
  dispatch_sync(cancelQueue, block);
  if ([(VCPMABaseTask *)self isCanceled])
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Request canceled", buf, 2u);
    }

    if (!a3)
    {
      return 0;
    }

    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A768];
    v72 = *MEMORY[0x1E696A578];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request was canceled"];
    v73[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:&v72 count:1];
    v15 = [v11 errorWithDomain:v12 code:-128 userInfo:v14];
    v16 = *a3;
    *a3 = v15;

LABEL_39:
    v41 = 0;
  }

  else
  {
    spid = v6;
    v51 = v6 - 1;
    v52 = a3;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v13 = self->_subtasks;
    v17 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v57 objects:v71 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v58;
      v20 = MEMORY[0x1E69E9C10];
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v58 != v19)
          {
            objc_enumerationMutation(v13);
          }

          v22 = *(*(&v57 + 1) + 8 * i);
          v23 = objc_autoreleasePoolPush();
          v24 = [v22 run];
          if (v24)
          {
            v25 = v24;
            if (v24 == -128)
            {
              if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Request canceled", buf, 2u);
              }

              if (v52)
              {
                v43 = MEMORY[0x1E696ABC0];
                v44 = *MEMORY[0x1E696A768];
                v69 = *MEMORY[0x1E696A578];
                v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request was canceled"];
                v70 = v45;
                v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
                v47 = [v43 errorWithDomain:v44 code:-128 userInfo:v46];
                v48 = *v52;
                *v52 = v47;
              }

              objc_autoreleasePoolPop(v23);
              goto LABEL_39;
            }

            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v26 = objc_opt_class();
              v27 = NSStringFromClass(v26);
              *buf = 138412546;
              v66 = v27;
              v67 = 1024;
              v68 = v25;
              _os_log_impl(&dword_1C9B70000, v20, OS_LOG_TYPE_DEFAULT, "%@ returned unexpected status (%d)", buf, 0x12u);
            }
          }

          objc_autoreleasePoolPop(v23);
        }

        v18 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v57 objects:v71 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v13 = [MEMORY[0x1E695DF70] array];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v28 = self->_requests;
    v29 = [(NSArray *)v28 countByEnumeratingWithState:&v53 objects:v64 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v54;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v54 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v53 + 1) + 8 * j);
          v34 = objc_alloc_init(MEMORY[0x1E69AE368]);
          v35 = [v33 results];
          [v34 setResults:v35];

          v36 = [v33 error];
          [v34 setError:v36];

          [(NSMutableArray *)v13 addObject:v34];
        }

        v30 = [(NSArray *)v28 countByEnumeratingWithState:&v53 objects:v64 count:16];
      }

      while (v30);
    }

    v37 = VCPSignPostLog();
    v38 = v37;
    if (v51 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
    {
      v39 = self->_signpostPayload;
      *buf = 138412290;
      v66 = v39;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v38, OS_SIGNPOST_INTERVAL_END, spid, "MADMultiModalProcessingTask_Run", "%@", buf, 0xCu);
    }

    v40 = [(VCPMABaseTask *)self completionHandler];
    v62 = @"Replies";
    v63 = v13;
    v41 = 1;
    v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    (v40)[2](v40, v42, 0);
  }

  return v41;
}

void __35__MADMultiModalProcessingTask_run___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *(*(a1 + 32) + 32);
  v2 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v24;
    v20 = *MEMORY[0x1E696A768];
    v19 = *MEMORY[0x1E696A578];
    p_superclass = &OBJC_METACLASS___MADProtoFaceAsset.superclass;
    v6 = 0x1EC42C000uLL;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v24 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [p_superclass + 409 subtaskForRequest:v8 inputs:*(*(a1 + 32) + *(v6 + 3872))];
        if (v9)
        {
          [*(*(a1 + 32) + 56) addObject:v9];
        }

        else
        {
          v10 = MEMORY[0x1E696ABC0];
          v27 = v19;
          v11 = MEMORY[0x1E696AEC0];
          v12 = objc_opt_class();
          v22 = NSStringFromClass(v12);
          v13 = [v11 stringWithFormat:@"%@ not currently implemented", v22];
          v28 = v13;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
          v14 = v3;
          v15 = v4;
          v17 = v16 = p_superclass;
          v18 = [v10 errorWithDomain:v20 code:-4 userInfo:v17];
          [v8 setError:v18];

          v6 = 0x1EC42C000;
          p_superclass = v16;
          v4 = v15;
          v3 = v14;
        }
      }

      v3 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v3);
  }
}

- (void)cancel
{
  cancelQueue = self->_cancelQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__MADMultiModalProcessingTask_cancel__block_invoke;
  block[3] = &unk_1E834C010;
  block[4] = self;
  dispatch_sync(cancelQueue, block);
}

void __37__MADMultiModalProcessingTask_cancel__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v11.receiver = *(a1 + 32);
  v11.super_class = MADMultiModalProcessingTask;
  objc_msgSendSuper2(&v11, sel_cancel);
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(*(a1 + 32) + 56);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) cancel];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v12 count:16];
    }

    while (v4);
  }
}

@end