@interface MADMultiModalPrewarmingTask
- (BOOL)run:(id *)a3;
- (MADMultiModalPrewarmingTask)initWithRequests:(id)a3 cancelBlock:(id)a4 completionHandler:(id)a5;
@end

@implementation MADMultiModalPrewarmingTask

- (MADMultiModalPrewarmingTask)initWithRequests:(id)a3 cancelBlock:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __78__MADMultiModalPrewarmingTask_initWithRequests_cancelBlock_completionHandler___block_invoke;
  v18[3] = &unk_1E834CF90;
  v12 = v11;
  v19 = v12;
  v17.receiver = self;
  v17.super_class = MADMultiModalPrewarmingTask;
  v13 = [(VCPMABaseTask *)&v17 initWithCompletionHandler:v18];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_requests, a3);
    signpostPayload = v14->_signpostPayload;
    v14->_signpostPayload = &stru_1F496CB30;

    [(VCPMABaseTask *)v14 setCancelBlock:v10];
  }

  return v14;
}

- (BOOL)run:(id *)a3
{
  v66 = *MEMORY[0x1E69E9840];
  v5 = VCPSignPostLog();
  v6 = os_signpost_id_generate(v5);

  v7 = VCPSignPostLog();
  v8 = v7;
  v9 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    signpostPayload = self->_signpostPayload;
    *buf = 138412290;
    v60 = signpostPayload;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "MADMultiModalPrewarmingTask_Run", "%@", buf, 0xCu);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v11 = self->_requests;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v51 objects:v65 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v52;
    obj = v11;
    v47 = v6;
    v48 = a3;
    v46 = v6 - 1;
LABEL_6:
    v15 = 0;
    while (1)
    {
      if (*v52 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v51 + 1) + 8 * v15);
      if ([(VCPMABaseTask *)self isCanceled])
      {
        break;
      }

      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v60 = v18;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Prewarming %@", buf, 0xCu);
      }

      if (![v16 isMemberOfClass:objc_opt_class()])
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v60 = v18;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ does not support prewarming", buf, 0xCu);
        }

        v26 = obj;
        if (v48)
        {
          v33 = MEMORY[0x1E696ABC0];
          v34 = *MEMORY[0x1E696A768];
          v55 = *MEMORY[0x1E696A578];
          v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ does not support prewarming", v18];
          v56 = v30;
          v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
          v36 = [v33 errorWithDomain:v34 code:-50 userInfo:v35];
          v37 = *v48;
          *v48 = v36;

LABEL_31:
        }

LABEL_38:

LABEL_39:
        v27 = 0;
        goto LABEL_40;
      }

      v19 = objc_autoreleasePoolPush();
      v20 = v16;
      v50 = 0;
      v21 = [MADPersonalizedEmbeddingTask prewarmRequest:v20 error:&v50];
      v22 = v50;
      if (!v21)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v38 = [v22 description];
          *buf = 138412546;
          v60 = v18;
          v61 = 2112;
          v62 = v38;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to prewarm %@ (%@)", buf, 0x16u);
        }

        v26 = obj;
        if (v48)
        {
          v39 = MEMORY[0x1E696ABC0];
          v40 = *MEMORY[0x1E696A768];
          v57 = *MEMORY[0x1E696A578];
          v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to prewarm %@", v18];
          v58 = v41;
          v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
          v43 = [v39 errorWithDomain:v40 code:-50 userInfo:v42];
          v44 = *v48;
          *v48 = v43;
        }

        objc_autoreleasePoolPop(v19);
        goto LABEL_38;
      }

      objc_autoreleasePoolPop(v19);
      if (v13 == ++v15)
      {
        v11 = obj;
        v13 = [(NSArray *)obj countByEnumeratingWithState:&v51 objects:v65 count:16];
        v9 = v46;
        v6 = v47;
        if (v13)
        {
          goto LABEL_6;
        }

        goto LABEL_17;
      }
    }

    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Request canceled", buf, 2u);
    }

    v26 = obj;
    if (v48)
    {
      v28 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A768];
      v63 = *MEMORY[0x1E696A578];
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request was canceled"];
      v64 = v18;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
      v31 = [v28 errorWithDomain:v29 code:-128 userInfo:v30];
      v32 = *v48;
      *v48 = v31;

      goto LABEL_31;
    }

    goto LABEL_39;
  }

LABEL_17:

  v23 = VCPSignPostLog();
  v24 = v23;
  if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    v25 = self->_signpostPayload;
    *buf = 138412290;
    v60 = v25;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v24, OS_SIGNPOST_INTERVAL_END, v6, "MADMultiModalPrewarmingTask_Run", "%@", buf, 0xCu);
  }

  v26 = [(VCPMABaseTask *)self completionHandler];
  v26[2](v26, 0, 0);
  v27 = 1;
LABEL_40:

  return v27;
}

@end