@interface CKVCoalescedTask
- (CKVCoalescedTask)initWithTaskId:(id)a3 eventId:(id)a4 date:(id)a5 taskBlock:(id)a6 completionQueue:(id)a7 completion:(id)a8;
- (id)_runBlockForTask:(id)a3 completionQueue:(id)a4 completion:(id)a5;
- (id)description;
- (void)executeAfterDelay:(double)a3 onQueue:(id)a4;
@end

@implementation CKVCoalescedTask

- (void)executeAfterDelay:(double)a3 onQueue:(id)a4
{
  v5 = (a3 * 1000000000.0);
  v6 = a4;
  v7 = dispatch_time(0, v5);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CKVCoalescedTask_executeAfterDelay_onQueue___block_invoke;
  block[3] = &unk_1E831E828;
  block[4] = self;
  dispatch_after(v7, v6, block);
}

- (id)_runBlockForTask:(id)a3 completionQueue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(CKVCoalescedTask *)self description];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__CKVCoalescedTask__runBlockForTask_completionQueue_completion___block_invoke;
  block[3] = &unk_1E831E850;
  v21 = v11;
  v22 = v8;
  v12 = v8;
  v13 = v11;
  v14 = dispatch_block_create(0, block);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __64__CKVCoalescedTask__runBlockForTask_completionQueue_completion___block_invoke_2;
  v18[3] = &unk_1E831E850;
  v18[4] = self;
  v19 = v9;
  v15 = v9;
  dispatch_block_notify(v14, v10, v18);

  v16 = _Block_copy(v14);

  return v16;
}

void __64__CKVCoalescedTask__runBlockForTask_completionQueue_completion___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[CKVCoalescedTask _runBlockForTask:completionQueue:completion:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1C8683000, v2, OS_LOG_TYPE_INFO, "%s Executing task - (%@)", &v6, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v4 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[CKVCoalescedTask _runBlockForTask:completionQueue:completion:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_1C8683000, v4, OS_LOG_TYPE_INFO, "%s Finished executing task - (%@)", &v6, 0x16u);
  }
}

uint64_t __64__CKVCoalescedTask__runBlockForTask_completionQueue_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  taskId = self->_taskId;
  eventId = self->_eventId;
  v5 = [(NSDate *)self->_date ISO8601String];
  v6 = [v2 stringWithFormat:@"taskId: %@, eventId: %@, received: %@", taskId, eventId, v5];

  return v6;
}

- (CKVCoalescedTask)initWithTaskId:(id)a3 eventId:(id)a4 date:(id)a5 taskBlock:(id)a6 completionQueue:(id)a7 completion:(id)a8
{
  v25 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v26.receiver = self;
  v26.super_class = CKVCoalescedTask;
  v20 = [(CKVCoalescedTask *)&v26 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_taskId, a3);
    objc_storeStrong(&v21->_eventId, a4);
    objc_storeStrong(&v21->_date, a5);
    v22 = [(CKVCoalescedTask *)v21 _runBlockForTask:v17 completionQueue:v18 completion:v19];
    runBlock = v21->_runBlock;
    v21->_runBlock = v22;

    atomic_store(0, &v21->_executed);
  }

  return v21;
}

@end