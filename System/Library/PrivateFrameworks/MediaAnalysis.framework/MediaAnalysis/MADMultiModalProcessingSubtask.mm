@interface MADMultiModalProcessingSubtask
+ (BOOL)prewarmRequest:(id)a3 error:(id *)a4;
+ (id)subtaskForRequest:(id)a3 inputs:(id)a4;
- (MADMultiModalProcessingSubtask)initWithRequest:(id)a3 inputs:(id)a4;
@end

@implementation MADMultiModalProcessingSubtask

+ (BOOL)prewarmRequest:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = *MEMORY[0x1E696A768];
    v13 = *MEMORY[0x1E696A578];
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v7 stringWithFormat:@"Pre-warming not implemented for %@", v9, v13];
    v14[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *a4 = [v5 errorWithDomain:v6 code:-4 userInfo:v11];
  }

  return 0;
}

+ (id)subtaskForRequest:(id)a3 inputs:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 isMemberOfClass:objc_opt_class()])
  {
    v7 = [objc_alloc(objc_opt_class()) initWithRequest:v5 inputs:v6];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "No subtask implemented for %@", &v11, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (MADMultiModalProcessingSubtask)initWithRequest:(id)a3 inputs:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MADMultiModalProcessingSubtask;
  v9 = [(MADMultiModalProcessingSubtask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, a3);
    objc_storeStrong(&v10->_inputs, a4);
  }

  return v10;
}

@end