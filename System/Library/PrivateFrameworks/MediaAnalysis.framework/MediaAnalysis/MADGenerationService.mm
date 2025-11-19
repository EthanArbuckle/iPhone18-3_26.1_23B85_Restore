@interface MADGenerationService
+ (id)service;
- (id)service;
- (void)requestAlchemistProcessingForPixelBuffer:(__CVBuffer *)a3 options:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6;
- (void)requestAlchemistProcessingForURL:(id)a3 options:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6;
@end

@implementation MADGenerationService

- (id)service
{
  service = self->_service;
  if (!service)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69AE2D0]);
    v5 = self->_service;
    self->_service = v4;

    service = self->_service;
  }

  return service;
}

+ (id)service
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (void)requestAlchemistProcessingForPixelBuffer:(__CVBuffer *)a3 options:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6
{
  v23[1] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a6;
  v11 = [v9 objectForKeyedSubscript:@"InProcess"];
  v12 = [v11 BOOLValue];

  if (v12)
  {
    v13 = [[MADAlchemistAnalzyer alloc] initWithOptions:v9];
    v21 = 0;
    v14 = [(MADAlchemistAnalzyer *)v13 performAlchemistForPixelBuffer:a3 options:v9 results:&v21 cancel:0];
    v15 = v21;
    if (v14)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v20 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADGenerationService] Error performing Alchemist processing", v20, 2u);
      }

      v16 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A578];
      v23[0] = @"Error performing Alchemist processing";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v18 = [v16 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v17];
      v10[2](v10, 0, v18);
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *v20 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADGenerationService] Completed Alchemist processing", v20, 2u);
      }

      (v10)[2](v10, v15, 0);
    }
  }

  else
  {
    v19 = [(MADGenerationService *)self service];
    [v19 requestAlchemistProcessingForPixelBuffer:a3 options:v9 completionHandler:v10];
  }
}

- (void)requestAlchemistProcessingForURL:(id)a3 options:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6
{
  v24[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [v10 objectForKeyedSubscript:@"InProcess"];
  v13 = [v12 BOOLValue];

  if (v13)
  {
    v14 = [[MADAlchemistAnalzyer alloc] initWithOptions:v10];
    v22 = 0;
    v15 = [(MADAlchemistAnalzyer *)v14 performAlchemistForURL:v9 options:v10 results:&v22 cancel:0];
    v16 = v22;
    if (v15)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v21 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADGenerationService] Error performing Alchemist processing", v21, 2u);
      }

      v17 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A578];
      v24[0] = @"Error performing Alchemist processing";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v19 = [v17 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v18];
      v11[2](v11, 0, v19);
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *v21 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADGenerationService] Completed Alchemist processing", v21, 2u);
      }

      (v11)[2](v11, v16, 0);
    }
  }

  else
  {
    v20 = [(MADGenerationService *)self service];
    [v20 requestAlchemistProcessingForURL:v9 options:v10 completionHandler:v11];
  }
}

@end