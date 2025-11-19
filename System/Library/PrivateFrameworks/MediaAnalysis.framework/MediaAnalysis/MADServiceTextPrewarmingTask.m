@interface MADServiceTextPrewarmingTask
- (BOOL)run:(id *)p_isa;
- (MADServiceTextPrewarmingTask)initWithRequests:(id)a3 cancelBlock:(id)a4 completionHandler:(id)a5;
@end

@implementation MADServiceTextPrewarmingTask

- (MADServiceTextPrewarmingTask)initWithRequests:(id)a3 cancelBlock:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __79__MADServiceTextPrewarmingTask_initWithRequests_cancelBlock_completionHandler___block_invoke;
  v20[3] = &unk_1E834CF90;
  v12 = v11;
  v21 = v12;
  v19.receiver = self;
  v19.super_class = MADServiceTextPrewarmingTask;
  v13 = [(VCPMABaseTask *)&v19 initWithCompletionHandler:v20];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_requests, a3);
    signpostPayload = v14->_signpostPayload;
    v14->_signpostPayload = &stru_1F496CB30;

    [(VCPMABaseTask *)v14 setCancelBlock:v10];
    v16 = dispatch_queue_create("MADServiceTextProcessingTask", 0);
    cancelQueue = v14->_cancelQueue;
    v14->_cancelQueue = v16;
  }

  return v14;
}

- (BOOL)run:(id *)p_isa
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = VCPSignPostLog();
  v6 = os_signpost_id_generate(v5);

  v7 = VCPSignPostLog();
  v8 = v7;
  v9 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    signpostPayload = self->_signpostPayload;
    *buf = 138412290;
    v52 = signpostPayload;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "MADServiceTextPrewarmingTask_Run", "%@", buf, 0xCu);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v11 = self->_requests;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v43;
    obj = v11;
    v38 = v6 - 1;
    v39 = v6;
LABEL_6:
    v15 = 0;
    while (1)
    {
      if (*v43 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v42 + 1) + 8 * v15);
      if ([(VCPMABaseTask *)self isCanceled])
      {
        break;
      }

      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v52 = v18;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Prewarming %@", buf, 0xCu);
      }

      if (![v16 isMemberOfClass:objc_opt_class()])
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v52 = v18;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ does not support prewarming", buf, 0xCu);
        }

        v27 = obj;
        if (p_isa)
        {
          v33 = MEMORY[0x1E696ABC0];
          v34 = *MEMORY[0x1E696A768];
          v46 = *MEMORY[0x1E696A578];
          v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ does not support prewarming", v18];
          v47 = v30;
          v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
          v35 = [v33 errorWithDomain:v34 code:-50 userInfo:v32];
          v36 = *p_isa;
          *p_isa = v35;

LABEL_34:
        }

        LOBYTE(p_isa) = 0;
        goto LABEL_37;
      }

      v19 = objc_autoreleasePoolPush();
      v41 = 0;
      v20 = [MADTextEmbeddingTask prewarmRequest:v16 error:&v41];
      v21 = v41;
      v22 = v21;
      if (p_isa && !v20)
      {
        v23 = [v21 copy];
        v24 = *p_isa;
        *p_isa = v23;
      }

      objc_autoreleasePoolPop(v19);
      if (!v20)
      {
        LOBYTE(p_isa) = 0;
        v27 = obj;
        goto LABEL_37;
      }

      if (v13 == ++v15)
      {
        v11 = obj;
        v13 = [(NSArray *)obj countByEnumeratingWithState:&v42 objects:v50 count:16];
        v9 = v38;
        v6 = v39;
        if (v13)
        {
          goto LABEL_6;
        }

        goto LABEL_20;
      }
    }

    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Request canceled", buf, 2u);
    }

    v27 = obj;
    if (p_isa)
    {
      v28 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A768];
      v48 = *MEMORY[0x1E696A578];
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request was canceled"];
      v49 = v18;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v31 = [v28 errorWithDomain:v29 code:-128 userInfo:v30];
      v32 = *p_isa;
      *p_isa = v31;
      goto LABEL_34;
    }
  }

  else
  {
LABEL_20:

    v25 = VCPSignPostLog();
    p_isa = &v25->isa;
    if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      v26 = self->_signpostPayload;
      *buf = 138412290;
      v52 = v26;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, p_isa, OS_SIGNPOST_INTERVAL_END, v6, "MADServiceTextPrewarmingTask_Run", "%@", buf, 0xCu);
    }

    v27 = [(VCPMABaseTask *)self completionHandler];
    v27[2](v27, 0, 0);
    LOBYTE(p_isa) = 1;
  }

LABEL_37:

  return p_isa;
}

@end