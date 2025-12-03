@interface MADGenerationService
+ (id)service;
- (id)service;
- (void)requestAlchemistProcessingForPixelBuffer:(__CVBuffer *)buffer options:(id)options progressHandler:(id)handler completionHandler:(id)completionHandler;
- (void)requestAlchemistProcessingForURL:(id)l options:(id)options progressHandler:(id)handler completionHandler:(id)completionHandler;
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

- (void)requestAlchemistProcessingForPixelBuffer:(__CVBuffer *)buffer options:(id)options progressHandler:(id)handler completionHandler:(id)completionHandler
{
  v23[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  completionHandlerCopy = completionHandler;
  v11 = [optionsCopy objectForKeyedSubscript:@"InProcess"];
  bOOLValue = [v11 BOOLValue];

  if (bOOLValue)
  {
    v13 = [[MADAlchemistAnalzyer alloc] initWithOptions:optionsCopy];
    v21 = 0;
    v14 = [(MADAlchemistAnalzyer *)v13 performAlchemistForPixelBuffer:buffer options:optionsCopy results:&v21 cancel:0];
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
      completionHandlerCopy[2](completionHandlerCopy, 0, v18);
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *v20 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADGenerationService] Completed Alchemist processing", v20, 2u);
      }

      (completionHandlerCopy)[2](completionHandlerCopy, v15, 0);
    }
  }

  else
  {
    service = [(MADGenerationService *)self service];
    [service requestAlchemistProcessingForPixelBuffer:buffer options:optionsCopy completionHandler:completionHandlerCopy];
  }
}

- (void)requestAlchemistProcessingForURL:(id)l options:(id)options progressHandler:(id)handler completionHandler:(id)completionHandler
{
  v24[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  optionsCopy = options;
  completionHandlerCopy = completionHandler;
  v12 = [optionsCopy objectForKeyedSubscript:@"InProcess"];
  bOOLValue = [v12 BOOLValue];

  if (bOOLValue)
  {
    v14 = [[MADAlchemistAnalzyer alloc] initWithOptions:optionsCopy];
    v22 = 0;
    v15 = [(MADAlchemistAnalzyer *)v14 performAlchemistForURL:lCopy options:optionsCopy results:&v22 cancel:0];
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
      completionHandlerCopy[2](completionHandlerCopy, 0, v19);
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *v21 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADGenerationService] Completed Alchemist processing", v21, 2u);
      }

      (completionHandlerCopy)[2](completionHandlerCopy, v16, 0);
    }
  }

  else
  {
    service = [(MADGenerationService *)self service];
    [service requestAlchemistProcessingForURL:lCopy options:optionsCopy completionHandler:completionHandlerCopy];
  }
}

@end