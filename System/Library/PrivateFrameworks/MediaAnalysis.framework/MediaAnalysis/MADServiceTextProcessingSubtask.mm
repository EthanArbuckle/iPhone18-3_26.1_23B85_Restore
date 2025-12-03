@interface MADServiceTextProcessingSubtask
+ (id)subtaskForRequest:(id)request asset:(id)asset;
- (MADServiceTextProcessingSubtask)initWithRequest:(id)request asset:(id)asset;
@end

@implementation MADServiceTextProcessingSubtask

+ (id)subtaskForRequest:(id)request asset:(id)asset
{
  v13 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  assetCopy = asset;
  if ([requestCopy isMemberOfClass:objc_opt_class()])
  {
    v7 = [objc_alloc(objc_opt_class()) initWithRequest:requestCopy asset:assetCopy];
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

- (MADServiceTextProcessingSubtask)initWithRequest:(id)request asset:(id)asset
{
  requestCopy = request;
  assetCopy = asset;
  v12.receiver = self;
  v12.super_class = MADServiceTextProcessingSubtask;
  v9 = [(MADServiceTextProcessingSubtask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    objc_storeStrong(&v10->_asset, asset);
  }

  return v10;
}

@end