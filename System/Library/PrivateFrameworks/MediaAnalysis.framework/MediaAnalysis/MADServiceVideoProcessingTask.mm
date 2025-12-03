@interface MADServiceVideoProcessingTask
+ (id)taskWithRequests:(id)requests forAsset:(id)asset cancelBlock:(id)block progressHandler:(id)handler resultHandler:(id)resultHandler andCompletionHandler:(id)completionHandler;
- (BOOL)cachesResources;
- (BOOL)run:(id *)run;
- (MADServiceVideoProcessingTask)initWithRequests:(id)requests forAsset:(id)asset cancelBlock:(id)block progressHandler:(id)handler resultHandler:(id)resultHandler andCompletionHandler:(id)completionHandler;
@end

@implementation MADServiceVideoProcessingTask

- (MADServiceVideoProcessingTask)initWithRequests:(id)requests forAsset:(id)asset cancelBlock:(id)block progressHandler:(id)handler resultHandler:(id)resultHandler andCompletionHandler:(id)completionHandler
{
  requestsCopy = requests;
  assetCopy = asset;
  blockCopy = block;
  handlerCopy = handler;
  resultHandlerCopy = resultHandler;
  completionHandlerCopy = completionHandler;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __122__MADServiceVideoProcessingTask_initWithRequests_forAsset_cancelBlock_progressHandler_resultHandler_andCompletionHandler___block_invoke;
  v32[3] = &unk_1E834CF90;
  v21 = completionHandlerCopy;
  v33 = v21;
  v31.receiver = self;
  v31.super_class = MADServiceVideoProcessingTask;
  v22 = [(VCPMABaseTask *)&v31 initWithCompletionHandler:v32];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_requests, requests);
    objc_storeStrong(&v23->_asset, asset);
    v24 = _Block_copy(handlerCopy);
    progressHandler = v23->_progressHandler;
    v23->_progressHandler = v24;

    v26 = _Block_copy(resultHandlerCopy);
    resultHandler = v23->_resultHandler;
    v23->_resultHandler = v26;

    v28 = _Block_copy(v21);
    completionHandler = v23->_completionHandler;
    v23->_completionHandler = v28;

    [(VCPMABaseTask *)v23 setCancelBlock:blockCopy];
  }

  return v23;
}

+ (id)taskWithRequests:(id)requests forAsset:(id)asset cancelBlock:(id)block progressHandler:(id)handler resultHandler:(id)resultHandler andCompletionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  resultHandlerCopy = resultHandler;
  handlerCopy = handler;
  blockCopy = block;
  assetCopy = asset;
  requestsCopy = requests;
  v19 = [objc_alloc(objc_opt_class()) initWithRequests:requestsCopy forAsset:assetCopy cancelBlock:blockCopy progressHandler:handlerCopy resultHandler:resultHandlerCopy andCompletionHandler:completionHandlerCopy];

  return v19;
}

- (BOOL)cachesResources
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_requests;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if (([v7 isMemberOfClass:{objc_opt_class(), v10}] & 1) == 0 && !objc_msgSend(v7, "isMemberOfClass:", objc_opt_class()))
        {
          v8 = 0;
          goto LABEL_12;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_12:

  return v8;
}

- (BOOL)run:(id *)run
{
  v168 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v157 = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  v3 = self->_requests;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v155 objects:v167 count:16];
  if (v4)
  {
    v119 = 0uLL;
    v5 = *v156;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v156 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v155 + 1) + 8 * i);
        if (*(&v119 + 1) || ![v7 isMemberOfClass:objc_opt_class()])
        {
          if (v119 || ![v7 isMemberOfClass:objc_opt_class()])
          {
            if ([MADServiceVideoProcessingSubtask taskClassForRequest:v7])
            {
              [array2 addObject:v7];
            }

            else
            {
              [array addObject:v7];
            }
          }

          else
          {
            *&v119 = v7;
          }
        }

        else
        {
          *(&v119 + 1) = v7;
        }
      }

      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v155 objects:v167 count:16];
    }

    while (v4);
  }

  else
  {
    v119 = 0uLL;
  }

  v149 = 0;
  v150 = &v149;
  v151 = 0x3032000000;
  v152 = __Block_byref_object_copy__77;
  v153 = __Block_byref_object_dispose__77;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__MADServiceVideoProcessingTask_run___block_invoke;
  aBlock[3] = &unk_1E8352160;
  aBlock[4] = self;
  aBlock[5] = &v149;
  v114 = _Block_copy(aBlock);
  selfCopy4 = self;
  if ([array count])
  {
    v9 = [VCPVideoProcessor alloc];
    v10 = [(MADServiceVideoAsset *)self->_asset url];
    context = [(VCPVideoProcessor *)v9 initWithURL:v10];

    if (self->_progressHandler)
    {
      v146[0] = MEMORY[0x1E69E9820];
      v146[1] = 3221225472;
      v146[2] = __37__MADServiceVideoProcessingTask_run___block_invoke_196;
      v146[3] = &unk_1E8352188;
      v146[4] = self;
      v147 = array;
      [(VCPVideoProcessor *)context setProgressHandler:v146];
    }

    array3 = [MEMORY[0x1E695DF70] array];
    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    v12 = array;
    v13 = [v12 countByEnumeratingWithState:&v142 objects:v166 count:16];
    if (v13)
    {
      v14 = *v143;
      v15 = MEMORY[0x1E69E9C10];
      v111 = 138412290;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v143 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v142 + 1) + 8 * j);
          v18 = [MADServiceVideoTask taskForRequest:v17];
          v19 = v18;
          if (v18)
          {
            [v18 configureVideoProcessor:context];
            [array3 addObject:v19];
          }

          else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v17;
            _os_log_impl(&dword_1C9B70000, v15, OS_LOG_TYPE_ERROR, "Failed to create task for request (%@)", buf, 0xCu);
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v142 objects:v166 count:16];
      }

      while (v13);
    }

    v20 = VCPSignPostLog();
    v21 = os_signpost_id_generate(v20);

    v22 = VCPSignPostLog();
    v23 = v22;
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      signpostPayload = self->_signpostPayload;
      *buf = 138412290;
      *&buf[4] = signpostPayload;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v21, "VCPVideoProcessor_Analyze", "%@", buf, 0xCu);
    }

    v141 = 0;
    *buf = *MEMORY[0x1E6960CC0];
    v165 = *(MEMORY[0x1E6960CC0] + 16);
    v139 = *MEMORY[0x1E6960C88];
    v140 = *(MEMORY[0x1E6960C88] + 16);
    v25 = [(VCPVideoProcessor *)context analyzeWithStart:buf andDuration:&v139 error:&v141];
    v26 = v141;
    if (!v25)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v42 = MEMORY[0x1E69E9C10];
        v43 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v44 = [v26 description];
          *buf = 138412290;
          *&buf[4] = v44;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to process video (%@)", buf, 0xCu);
        }
      }

      if (run)
      {
        v45 = [v26 copy];
        v46 = *run;
        *run = v45;
      }

      v47 = 0;
      goto LABEL_117;
    }

    v27 = VCPSignPostLog();
    v28 = v27;
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      v29 = self->_signpostPayload;
      *buf = 138412290;
      *&buf[4] = v29;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v28, OS_SIGNPOST_INTERVAL_END, v21, "VCPVideoProcessor_Analyze", "%@", buf, 0xCu);
    }

    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v30 = array3;
    v31 = [v30 countByEnumeratingWithState:&v135 objects:v163 count:16];
    if (v31)
    {
      v32 = *v136;
      do
      {
        for (k = 0; k != v31; ++k)
        {
          if (*v136 != v32)
          {
            objc_enumerationMutation(v30);
          }

          v34 = *(*(&v135 + 1) + 8 * k);
          v35 = [v34 finalize];
          request = [v34 request];
          v114[2](v114, request, v35);
        }

        v31 = [v30 countByEnumeratingWithState:&v135 objects:v163 count:16];
      }

      while (v31);
    }

    selfCopy4 = self;
  }

  if (v119 != 0)
  {
    v37 = objc_autoreleasePoolPush();
    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      if (v119)
      {
        v39 = *(&v119 + 1) == 0;
      }

      else
      {
        v39 = 1;
      }

      if (v39)
      {
        v40 = 1;
      }

      else
      {
        v40 = 2;
      }

      v41 = v133;
      v133[0] = MEMORY[0x1E69E9820];
      v133[1] = 3221225472;
      v133[2] = __37__MADServiceVideoProcessingTask_run___block_invoke_200;
      v133[3] = &unk_1E83521B0;
      v133[4] = self;
      v111 = v134;
      v134[0] = array;
      v134[1] = v40;
    }

    else
    {
      v41 = 0;
    }

    contexta = _Block_copy(v41);
    v129[0] = MEMORY[0x1E69E9820];
    v129[1] = 3221225472;
    v129[2] = __37__MADServiceVideoProcessingTask_run___block_invoke_2;
    v129[3] = &unk_1E83521D8;
    v48 = *(&v119 + 1);
    v130 = v48;
    v49 = v114;
    v132 = v49;
    v50 = v119;
    v131 = v50;
    v51 = _Block_copy(v129);
    asset = self->_asset;
    v128[0] = MEMORY[0x1E69E9820];
    v128[1] = 3221225472;
    v128[2] = __37__MADServiceVideoProcessingTask_run___block_invoke_3;
    v128[3] = &unk_1E8352200;
    v128[4] = self;
    v53 = [MADVideoRemoveBackgroundCropTask taskWithAsset:asset previewRequest:v48 generationRequest:v50 cancelBlock:v128 progressHandler:contexta resultHandler:v49 completionHandler:v51];
    [v53 setSignpostPayload:self->_signpostPayload];
    v54 = VCPSignPostLog();
    v55 = os_signpost_id_generate(v54);

    v56 = VCPSignPostLog();
    v57 = v56;
    if (v55 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v56))
    {
      v58 = self->_signpostPayload;
      *buf = 138412290;
      *&buf[4] = v58;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v57, OS_SIGNPOST_INTERVAL_BEGIN, v55, "MADServiceVideoProcessingSubtask_Run", "%@", buf, 0xCu);
    }

    if ([v53 run] && MediaAnalysisLogLevel() >= 3)
    {
      v59 = MEMORY[0x1E69E9C10];
      v60 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        v61 = objc_opt_class();
        *buf = 138412290;
        *&buf[4] = v61;
        v62 = v61;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to perform subtask %@", buf, 0xCu);
      }
    }

    v63 = VCPSignPostLog();
    v64 = v63;
    if (v55 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v63))
    {
      v65 = self->_signpostPayload;
      *buf = 138412290;
      *&buf[4] = v65;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v64, OS_SIGNPOST_INTERVAL_END, v55, "MADServiceVideoProcessingSubtask_Run", "%@", buf, 0xCu);
    }

    if (progressHandler)
    {
    }

    objc_autoreleasePoolPop(v37);
    selfCopy4 = self;
  }

  v66 = 0;
  v108 = *MEMORY[0x1E696A768];
  v109 = *MEMORY[0x1E696A578];
  while (v66 < [array2 count])
  {
    contextb = objc_autoreleasePoolPush();
    v67 = self->_progressHandler;
    if (v67)
    {
      v68 = v125;
      v125[0] = MEMORY[0x1E69E9820];
      v125[1] = 3221225472;
      v125[2] = __37__MADServiceVideoProcessingTask_run___block_invoke_205;
      v125[3] = &unk_1E83521B0;
      v125[4] = self;
      v126 = array;
      v127 = v66;
    }

    else
    {
      v68 = 0;
    }

    v69 = _Block_copy(v68);
    v121[0] = MEMORY[0x1E69E9820];
    v121[1] = 3221225472;
    v121[2] = __37__MADServiceVideoProcessingTask_run___block_invoke_2_206;
    v121[3] = &unk_1E8352228;
    v123 = v114;
    v70 = array2;
    v122 = v70;
    v124 = v66;
    v71 = _Block_copy(v121);
    v72 = [v70 objectAtIndexedSubscript:v66];
    v73 = self->_asset;
    v120[0] = MEMORY[0x1E69E9820];
    v120[1] = 3221225472;
    v120[2] = __37__MADServiceVideoProcessingTask_run___block_invoke_3_208;
    v120[3] = &unk_1E8352200;
    v120[4] = self;
    v74 = [MADServiceVideoProcessingSubtask taskWithRequest:v72 forAsset:v73 cancelBlock:v120 progressHandler:v69 andCompletionHandler:v71];

    if (v74)
    {
      [v74 setSignpostPayload:self->_signpostPayload];
      v75 = VCPSignPostLog();
      v76 = os_signpost_id_generate(v75);

      v77 = VCPSignPostLog();
      v78 = v77;
      if (v76 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v77))
      {
        v79 = self->_signpostPayload;
        *buf = 138412290;
        *&buf[4] = v79;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v78, OS_SIGNPOST_INTERVAL_BEGIN, v76, "MADServiceVideoProcessingSubtask_Run", "%@", buf, 0xCu);
      }

      if ([v74 run] && MediaAnalysisLogLevel() >= 3)
      {
        v80 = MEMORY[0x1E69E9C10];
        v81 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          v82 = objc_opt_class();
          *buf = 138412290;
          *&buf[4] = v82;
          v83 = v82;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to perform subtask %@", buf, 0xCu);
        }
      }

      v84 = VCPSignPostLog();
      v85 = v84;
      if (v76 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v84))
      {
        v86 = self->_signpostPayload;
        *buf = 138412290;
        *&buf[4] = v86;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v85, OS_SIGNPOST_INTERVAL_END, v76, "MADServiceVideoProcessingSubtask_Run", "%@", buf, 0xCu);
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v87 = MEMORY[0x1E69E9C10];
        v88 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
        {
          v89 = [v70 objectAtIndexedSubscript:v66];
          v90 = objc_opt_class();
          *buf = 138412290;
          *&buf[4] = v90;
          v91 = v90;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to create subtask for unrecognized request %@", buf, 0xCu);
        }
      }

      if (!run)
      {
        goto LABEL_104;
      }

      v92 = MEMORY[0x1E696ABC0];
      v161 = v109;
      v93 = MEMORY[0x1E696AEC0];
      v85 = [v70 objectAtIndexedSubscript:v66];
      v94 = [v93 stringWithFormat:@"Unable to create subtask for unrecognized request %@", objc_opt_class()];
      v162 = v94;
      v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v162 forKeys:&v161 count:1];
      v96 = [v92 errorWithDomain:v108 code:-50 userInfo:v95];
      v97 = *run;
      *run = v96;
    }

LABEL_104:
    if (v67)
    {
    }

    objc_autoreleasePoolPop(contextb);
    selfCopy4 = self;
    ++v66;
    if (!v74)
    {
      v47 = 0;
      goto LABEL_118;
    }
  }

  if (!selfCopy4->_resultHandler)
  {
    context = [MEMORY[0x1E695DF70] array];
    for (m = 0; m < [(NSArray *)self->_requests count]; ++m)
    {
      v99 = v150[5];
      v100 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:m];
      v101 = [v99 objectForKeyedSubscript:v100];

      if (v101)
      {
        [(VCPVideoProcessor *)context addObject:v101];
      }

      else
      {
        v102 = objc_alloc_init(MEMORY[0x1E69AE4E8]);
        v103 = MEMORY[0x1E696ABC0];
        v159 = v109;
        v104 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request produced no payload"];
        v160 = v104;
        v105 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v160 forKeys:&v159 count:1];
        v106 = [v103 errorWithDomain:v108 code:-18 userInfo:v105];
        [v102 setError:v106];

        [(VCPVideoProcessor *)context addObject:v102];
      }
    }

    (*(self->_completionHandler + 2))();
    v47 = 1;
LABEL_117:

    goto LABEL_118;
  }

  (*(selfCopy4->_completionHandler + 2))();
  v47 = 1;
LABEL_118:

  _Block_object_dispose(&v149, 8);
  return v47;
}

void __37__MADServiceVideoProcessingTask_run___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 32) indexOfObject:v5];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = 67109120;
      LODWORD(v23) = -1;
      v8 = MEMORY[0x1E69E9C10];
      v9 = "Failed to find request at index %d to update increment result";
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 8;
LABEL_9:
      _os_log_impl(&dword_1C9B70000, v8, v10, v9, &v22, v11);
    }
  }

  else
  {
    v12 = v7;
    v13 = *(*(*(a1 + 40) + 8) + 40);
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    v15 = [v13 objectForKeyedSubscript:v14];

    if (v15)
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412546;
        v23 = objc_opt_class();
        v24 = 1024;
        v25 = v12;
        v8 = MEMORY[0x1E69E9C10];
        v9 = "Request %@ (index %d) already has result, skip updating";
        v10 = OS_LOG_TYPE_DEFAULT;
        v11 = 18;
        goto LABEL_9;
      }
    }

    else
    {
      v16 = *(*(a1 + 32) + 56);
      if (v16)
      {
        (*(v16 + 16))(v16, v6, v12);
        v17 = objc_alloc_init(MEMORY[0x1E69AE4E8]);
        v18 = *(*(*(a1 + 40) + 8) + 40);
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
        [v18 setObject:v17 forKeyedSubscript:v19];
      }

      else
      {
        v20 = *(*(*(a1 + 40) + 8) + 40);
        v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
        [v20 setObject:v6 forKeyedSubscript:v21];
      }
    }
  }
}

uint64_t __37__MADServiceVideoProcessingTask_run___block_invoke_196(uint64_t a1, double a2)
{
  v4 = *(*(a1 + 32) + 48);
  v5 = [*(a1 + 40) count];
  v6.n128_f64[0] = (100 * (v5 / [*(*(a1 + 32) + 32) count])) * a2;
  v7 = *(v4 + 16);

  return v7(v4, v6);
}

uint64_t __37__MADServiceVideoProcessingTask_run___block_invoke_200(uint64_t a1, double a2)
{
  v3 = *(*(a1 + 32) + 48);
  v4 = [*(a1 + 40) count] + *(a1 + 48) * a2;
  v5.n128_f64[0] = v4 / [*(*(a1 + 32) + 32) count] * 100.0;
  v6 = *(v3 + 16);

  return v6(v3, v5);
}

void __37__MADServiceVideoProcessingTask_run___block_invoke_2(void *a1, void *a2)
{
  if (a2)
  {
    v3 = MEMORY[0x1E69AE4E8];
    v4 = a2;
    v5 = objc_alloc_init(v3);
    [v5 setError:v4];

    if (a1[4])
    {
      (*(a1[6] + 16))();
    }

    if (a1[5])
    {
      (*(a1[6] + 16))();
    }
  }
}

uint64_t __37__MADServiceVideoProcessingTask_run___block_invoke_205(uint64_t a1, double a2)
{
  v3 = *(*(a1 + 32) + 48);
  v4 = (*(a1 + 48) + [*(a1 + 40) count]) + a2;
  v5.n128_f64[0] = v4 / [*(*(a1 + 32) + 32) count] * 100.0;
  v6 = *(v3 + 16);

  return v6(v3, v5);
}

void __37__MADServiceVideoProcessingTask_run___block_invoke_2_206(void *a1, void *a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v5 = a2;
  v6 = [v3 objectAtIndexedSubscript:v4];
  (*(v2 + 16))(v2, v6, v5);
}

@end