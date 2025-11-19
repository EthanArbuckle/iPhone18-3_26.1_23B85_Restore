@interface VCPMABaseTask
- (BOOL)isCanceled;
- (BOOL)run:(id *)a3;
- (VCPMABaseTask)initWithCompletionHandler:(id)a3;
- (int)run;
- (void)dealloc;
@end

@implementation VCPMABaseTask

- (VCPMABaseTask)initWithCompletionHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VCPMABaseTask;
  v5 = [(VCPMABaseTask *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    completionHandler = v5->_completionHandler;
    v5->_completionHandler = v6;
  }

  return v5;
}

- (void)dealloc
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&self->_started);
  if ((v3 & 1) == 0)
  {
    completionHandler = self->_completionHandler;
    v5 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A578];
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"%@ canceled", v8];
    v14[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v11 = [v5 errorWithDomain:*MEMORY[0x1E696A768] code:-128 userInfo:v10];
    completionHandler[2](completionHandler, 0, v11);
  }

  v12.receiver = self;
  v12.super_class = VCPMABaseTask;
  [(VCPMABaseTask *)&v12 dealloc];
}

- (BOOL)isCanceled
{
  v2 = atomic_load(&self->_canceled);
  if (v2)
  {
    LOBYTE(cancelBlock) = 1;
  }

  else
  {
    cancelBlock = self->_cancelBlock;
    if (cancelBlock)
    {
      LOBYTE(cancelBlock) = cancelBlock[2]();
    }
  }

  return cancelBlock;
}

- (BOOL)run:(id *)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ABC0];
  v13 = *MEMORY[0x1E696A578];
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"%@ is not yet implemented", v7, v13];
  v14[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [v4 errorWithDomain:*MEMORY[0x1E696A768] code:-4 userInfo:v9];
  v11 = *a3;
  *a3 = v10;

  return 0;
}

- (int)run
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  atomic_store(1u, &self->_started);
  v12 = 0;
  if ([(VCPMABaseTask *)self run:&v12])
  {
    v4 = 0;
  }

  else
  {
    if ([v12 code] == -128)
    {
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        v7 = [v12 description];
        *buf = 138412546;
        v14 = v6;
        v15 = 2112;
        v16 = v7;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ canceled (%@)", buf, 0x16u);
      }
    }

    else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [v12 description];
      *buf = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ failed (%@)", buf, 0x16u);
    }

    (*(self->_completionHandler + 2))();
    v4 = [v12 code];
  }

  objc_autoreleasePoolPop(v3);
  return v4;
}

@end