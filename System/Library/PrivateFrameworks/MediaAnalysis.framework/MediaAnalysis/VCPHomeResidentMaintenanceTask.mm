@interface VCPHomeResidentMaintenanceTask
+ (id)taskWithOptions:(id)a3 extendTimeoutBlock:(id)a4 completionHandler:(id)a5;
- (BOOL)isCanceled;
- (VCPHomeResidentMaintenanceTask)initWithOptions:(id)a3 extendTimeoutBlock:(id)a4 completionHandler:(id)a5;
- (int)run;
- (void)dealloc;
@end

@implementation VCPHomeResidentMaintenanceTask

- (VCPHomeResidentMaintenanceTask)initWithOptions:(id)a3 extendTimeoutBlock:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = VCPHomeResidentMaintenanceTask;
  v12 = [(VCPHomeResidentMaintenanceTask *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_options, a3);
    v14 = _Block_copy(v10);
    extendTimeoutBlock = v13->_extendTimeoutBlock;
    v13->_extendTimeoutBlock = v14;

    v16 = _Block_copy(v11);
    completionHandler = v13->_completionHandler;
    v13->_completionHandler = v16;

    v13->_taskID = -1;
  }

  return v13;
}

+ (id)taskWithOptions:(id)a3 extendTimeoutBlock:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [objc_alloc(objc_opt_class()) initWithOptions:v7 extendTimeoutBlock:v8 completionHandler:v9];

  return v10;
}

- (void)dealloc
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&self->_started);
  if ((v3 & 1) == 0)
  {
    completionHandler = self->_completionHandler;
    v5 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Home resident maintenance task cancelled"];
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [v5 errorWithDomain:*MEMORY[0x1E696A768] code:-128 userInfo:v7];
    completionHandler[2](completionHandler, 0, v8);
  }

  v9.receiver = self;
  v9.super_class = VCPHomeResidentMaintenanceTask;
  [(VCPHomeResidentMaintenanceTask *)&v9 dealloc];
}

- (BOOL)isCanceled
{
  v2 = atomic_load(&self->_cancel);
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

- (int)run
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  atomic_store(1u, &self->_started);
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Running Home Resident Maintenance task", buf, 2u);
  }

  *buf = 0;
  v30 = buf;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__32;
  v33 = __Block_byref_object_dispose__32;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2050000000;
  v4 = getHMITaskServiceClass(void)::softClass;
  v38 = getHMITaskServiceClass(void)::softClass;
  if (!getHMITaskServiceClass(void)::softClass)
  {
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = ___ZL22getHMITaskServiceClassv_block_invoke;
    v25 = &unk_1E834C0F0;
    v26 = &v35;
    ___ZL22getHMITaskServiceClassv_block_invoke(&v22);
    v4 = v36[3];
  }

  v5 = v4;
  _Block_object_dispose(&v35, 8);
  v34 = [v4 taskService];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  LODWORD(v38) = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __37__VCPHomeResidentMaintenanceTask_run__block_invoke;
  v28[3] = &unk_1E834D8F0;
  v28[4] = self;
  v28[5] = buf;
  v28[6] = &v35;
  v6 = [VCPTimer timerWithIntervalSeconds:1 isOneShot:0 andBlock:v28];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__32;
  v26 = __Block_byref_object_dispose__32;
  v27 = dispatch_semaphore_create(0);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__VCPHomeResidentMaintenanceTask_run__block_invoke_7;
  aBlock[3] = &unk_1E834E3F0;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __37__VCPHomeResidentMaintenanceTask_run__block_invoke_9;
  v16 = &unk_1E834E418;
  v8 = v6;
  v17 = v8;
  v18 = self;
  v19 = &v35;
  v20 = &v22;
  v9 = _Block_copy(&v13);
  self->_taskID = [*(v30 + 5) submitTaskWithOptions:self->_options progressHandler:v7 completionHandler:{v9, v13, v14, v15, v16}];
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    taskID = self->_taskID;
    *v39 = 67109120;
    v40 = taskID;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "HomeAI request submitted (%d)", v39, 8u);
  }

  dispatch_semaphore_wait(*(v23 + 40), 0xFFFFFFFFFFFFFFFFLL);
  v11 = *(v36 + 6);

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(buf, 8);

  objc_autoreleasePoolPop(v3);
  return v11;
}

_DWORD *__37__VCPHomeResidentMaintenanceTask_run__block_invoke(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  result = a1[4];
  if (result[7] != -1)
  {
    result = [result isCanceled];
    if (result)
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v3 = *(a1[4] + 28);
        v4[0] = 67109120;
        v4[1] = v3;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Canceling Home Resident Maintenance task (%d)", v4, 8u);
      }

      result = [*(*(a1[5] + 8) + 40) cancelTask:*(a1[4] + 28)];
      *(*(a1[6] + 8) + 24) = -128;
    }
  }

  return result;
}

uint64_t __37__VCPHomeResidentMaintenanceTask_run__block_invoke_7(uint64_t a1, double a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v5 = 134217984;
    v6 = a2;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Progress %.2f", &v5, 0xCu);
  }

  return (*(*(*(a1 + 32) + 32) + 16))();
}

void __37__VCPHomeResidentMaintenanceTask_run__block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  [*(a1 + 32) destroy];
  (*(*(*(a1 + 40) + 8) + 16))();
  if (v5)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v5 code];
  }

  dispatch_semaphore_signal(*(*(*(a1 + 56) + 8) + 40));
}

@end