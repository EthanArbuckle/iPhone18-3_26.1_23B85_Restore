@interface CESRCoalescedTask
- (CESRCoalescedTask)initWithTaskId:(id)id eventId:(id)eventId date:(id)date taskBlock:(id)block completionQueue:(id)queue completion:(id)completion;
- (id)_runBlockForTask:(id)task completionQueue:(id)queue completion:(id)completion;
- (id)description;
- (void)executeAfterDelay:(double)delay onQueue:(id)queue;
@end

@implementation CESRCoalescedTask

- (void)executeAfterDelay:(double)delay onQueue:(id)queue
{
  v5 = (delay * 1000000000.0);
  queueCopy = queue;
  v7 = dispatch_time(0, v5);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__CESRCoalescedTask_executeAfterDelay_onQueue___block_invoke;
  block[3] = &unk_27857FFE8;
  block[4] = self;
  dispatch_after(v7, queueCopy, block);
}

- (id)_runBlockForTask:(id)task completionQueue:(id)queue completion:(id)completion
{
  taskCopy = task;
  completionCopy = completion;
  queueCopy = queue;
  v11 = [(CESRCoalescedTask *)self description];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__CESRCoalescedTask__runBlockForTask_completionQueue_completion___block_invoke;
  block[3] = &unk_27857FF48;
  v21 = v11;
  v22 = taskCopy;
  v12 = taskCopy;
  v13 = v11;
  v14 = dispatch_block_create(0, block);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__CESRCoalescedTask__runBlockForTask_completionQueue_completion___block_invoke_5;
  v18[3] = &unk_27857FF48;
  v18[4] = self;
  v19 = completionCopy;
  v15 = completionCopy;
  dispatch_block_notify(v14, queueCopy, v18);

  v16 = _Block_copy(v14);

  return v16;
}

void __65__CESRCoalescedTask__runBlockForTask_completionQueue_completion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CEF0E8];
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v8 = 136315394;
    v9 = "[CESRCoalescedTask _runBlockForTask:completionQueue:completion:]_block_invoke";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_225EEB000, v3, OS_LOG_TYPE_INFO, "%s Executing task - (%@)", &v8, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v5 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v8 = 136315394;
    v9 = "[CESRCoalescedTask _runBlockForTask:completionQueue:completion:]_block_invoke";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_225EEB000, v5, OS_LOG_TYPE_INFO, "%s Finished executing task - (%@)", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __65__CESRCoalescedTask__runBlockForTask_completionQueue_completion___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  taskId = self->_taskId;
  eventId = self->_eventId;
  v5 = CESRISO8601StringForDate(self->_date);
  v6 = [v2 stringWithFormat:@"taskId: %@, eventId: %@, received: %@", taskId, eventId, v5];

  return v6;
}

- (CESRCoalescedTask)initWithTaskId:(id)id eventId:(id)eventId date:(id)date taskBlock:(id)block completionQueue:(id)queue completion:(id)completion
{
  idCopy = id;
  eventIdCopy = eventId;
  dateCopy = date;
  blockCopy = block;
  queueCopy = queue;
  completionCopy = completion;
  v26.receiver = self;
  v26.super_class = CESRCoalescedTask;
  v20 = [(CESRCoalescedTask *)&v26 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_taskId, id);
    objc_storeStrong(&v21->_eventId, eventId);
    objc_storeStrong(&v21->_date, date);
    v22 = [(CESRCoalescedTask *)v21 _runBlockForTask:blockCopy completionQueue:queueCopy completion:completionCopy];
    runBlock = v21->_runBlock;
    v21->_runBlock = v22;

    atomic_store(0, &v21->_executed);
  }

  return v21;
}

@end