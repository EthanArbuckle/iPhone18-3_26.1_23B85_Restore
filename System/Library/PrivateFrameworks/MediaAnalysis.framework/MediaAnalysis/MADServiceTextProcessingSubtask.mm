@interface MADServiceTextProcessingSubtask
+ (id)subtaskForRequest:(id)a3 asset:(id)a4;
- (MADServiceTextProcessingSubtask)initWithRequest:(id)a3 asset:(id)a4;
@end

@implementation MADServiceTextProcessingSubtask

+ (id)subtaskForRequest:(id)a3 asset:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 isMemberOfClass:objc_opt_class()])
  {
    v7 = [objc_alloc(objc_opt_class()) initWithRequest:v5 asset:v6];
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

- (MADServiceTextProcessingSubtask)initWithRequest:(id)a3 asset:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MADServiceTextProcessingSubtask;
  v9 = [(MADServiceTextProcessingSubtask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, a3);
    objc_storeStrong(&v10->_asset, a4);
  }

  return v10;
}

@end