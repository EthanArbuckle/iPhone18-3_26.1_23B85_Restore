@interface CESRTaskCoalescer
+ (BOOL)isTaskCoalescenceDisabled;
- (BOOL)_didIncomingTask:(id)a3 arriveInCoalescingWindowWithLastTask:(id)a4;
- (CESRTaskCoalescer)init;
- (CESRTaskCoalescer)initWithManagerName:(id)a3 coalescenceInterval:(double)a4 coalescenceDelay:(double)a5 executionQueue:(id)a6;
- (void)_beginTransaction;
- (void)_endTransaction;
- (void)wait;
@end

@implementation CESRTaskCoalescer

- (BOOL)_didIncomingTask:(id)a3 arriveInCoalescingWindowWithLastTask:(id)a4
{
  v6 = a4;
  v7 = [a3 date];
  [v7 timeIntervalSince1970];
  v9 = v8;
  v10 = [v6 date];

  [v10 timeIntervalSince1970];
  v12 = v9 - v11;

  return v12 < self->_coalescenceInterval;
}

- (void)_endTransaction
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_transactionCounter - 1;
  v2->_transactionCounter = v3;
  if (!v3)
  {
    v4 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      managerName = v2->_managerName;
      transaction = v2->_transaction;
      v9 = 136315650;
      v10 = "[CESRTaskCoalescer _endTransaction]";
      v11 = 2112;
      v12 = managerName;
      v13 = 2112;
      v14 = transaction;
      _os_log_debug_impl(&dword_225EEB000, v4, OS_LOG_TYPE_DEBUG, "%s (%@) Releasing OS transaction: %@", &v9, 0x20u);
    }

    v5 = v2->_transaction;
    v2->_transaction = 0;
  }

  objc_sync_exit(v2);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_beginTransaction
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  transactionCounter = v2->_transactionCounter;
  v2->_transactionCounter = transactionCounter + 1;
  if (!transactionCounter)
  {
    v4 = os_transaction_create();
    transaction = v2->_transaction;
    v2->_transaction = v4;

    v6 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      managerName = v2->_managerName;
      v9 = v2->_transaction;
      v10 = 136315650;
      v11 = "[CESRTaskCoalescer _beginTransaction]";
      v12 = 2112;
      v13 = managerName;
      v14 = 2112;
      v15 = v9;
      _os_log_debug_impl(&dword_225EEB000, v6, OS_LOG_TYPE_DEBUG, "%s (%@) Acquired OS transaction: %@", &v10, 0x20u);
    }
  }

  objc_sync_exit(v2);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)wait
{
  dispatch_sync(self->_taskRegistryQueue, &__block_literal_global_196);
  taskExecutionQueue = self->_taskExecutionQueue;

  dispatch_sync(taskExecutionQueue, &__block_literal_global_55);
}

uint64_t __59__CESRTaskCoalescer_submitTaskWithId_taskBlock_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _endTransaction];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __59__CESRTaskCoalescer_submitTaskWithId_taskBlock_completion___block_invoke_2(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = +[CESRTaskCoalescer isTaskCoalescenceDisabled];
  if (v2)
  {
    v3 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      v5 = *(*(a1 + 32) + 8);
      v6 = *(a1 + 48);
      *buf = 136315906;
      v29 = "[CESRTaskCoalescer submitTaskWithId:taskBlock:completion:]_block_invoke_2";
      v30 = 2112;
      v31 = v5;
      v32 = 2112;
      v33 = v4;
      v34 = 2112;
      v35 = v6;
      _os_log_impl(&dword_225EEB000, v3, OS_LOG_TYPE_INFO, "%s (%@) Task coalescence is currently disabled (taskId: %@ eventId: %@)", buf, 0x2Au);
    }
  }

  v7 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  v8 = v7;
  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = 1;
  }

  if (v9 & 1) != 0 || ([v7 isExecuted])
  {
    v10 = [[CESRCoalescedTask alloc] initWithTaskId:*(a1 + 40) eventId:*(a1 + 48) date:*(a1 + 56) taskBlock:*(a1 + 72) completionQueue:*(*(a1 + 32) + 56) completion:*(a1 + 64)];
    [*(*(a1 + 32) + 24) setObject:v10 forKey:*(a1 + 40)];
    if ((v9 & 1) != 0 || ![*(a1 + 32) _didIncomingTask:v10 arriveInCoalescingWindowWithLastTask:v8])
    {
      v18 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
      {
        v25 = *(*(a1 + 32) + 8);
        *buf = 136315650;
        v29 = "[CESRTaskCoalescer submitTaskWithId:taskBlock:completion:]_block_invoke";
        v30 = 2112;
        v31 = v25;
        v32 = 2112;
        v33 = v10;
        _os_log_debug_impl(&dword_225EEB000, v18, OS_LOG_TYPE_DEBUG, "%s (%@) Enqueueing incoming task for execution - %@", buf, 0x20u);
      }

      v19 = *(*(a1 + 32) + 64);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __59__CESRTaskCoalescer_submitTaskWithId_taskBlock_completion___block_invoke_53;
      block[3] = &unk_27857FFE8;
      v27 = v10;
      dispatch_async(v19, block);
    }

    else
    {
      v11 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 32);
        v13 = *(v12 + 8);
        v14 = MEMORY[0x277CCABB0];
        v15 = *(v12 + 48);
        v16 = v11;
        v17 = [v14 numberWithDouble:v15];
        *buf = 136315906;
        v29 = "[CESRTaskCoalescer submitTaskWithId:taskBlock:completion:]_block_invoke";
        v30 = 2112;
        v31 = v13;
        v32 = 2112;
        v33 = v17;
        v34 = 2112;
        v35 = v10;
        _os_log_impl(&dword_225EEB000, v16, OS_LOG_TYPE_INFO, "%s (%@) Delaying %@s before executing incoming task within coalescing window - (%@)", buf, 0x2Au);
      }

      [(CESRCoalescedTask *)v10 executeAfterDelay:*(*(a1 + 32) + 64) onQueue:*(*(a1 + 32) + 48)];
    }
  }

  else
  {
    v20 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v21 = *(a1 + 40);
      v22 = *(*(a1 + 32) + 8);
      v23 = *(a1 + 48);
      *buf = 136316162;
      v29 = "[CESRTaskCoalescer submitTaskWithId:taskBlock:completion:]_block_invoke";
      v30 = 2112;
      v31 = v22;
      v32 = 2112;
      v33 = v21;
      v34 = 2112;
      v35 = v23;
      v36 = 2112;
      v37 = v8;
      _os_log_impl(&dword_225EEB000, v20, OS_LOG_TYPE_INFO, "%s (%@) Dropping incoming task (taskId: %@ eventId: %@) as a task with the same taskId is already enqueued and has not been executed: (%@)", buf, 0x34u);
    }

    (*(*(a1 + 64) + 16))();
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (CESRTaskCoalescer)initWithManagerName:(id)a3 coalescenceInterval:(double)a4 coalescenceDelay:(double)a5 executionQueue:(id)a6
{
  v39 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v34.receiver = self;
  v34.super_class = CESRTaskCoalescer;
  v12 = [(CESRTaskCoalescer *)&v34 init];
  if (!v12)
  {
    goto LABEL_6;
  }

  v13 = [v10 copy];
  managerName = v12->_managerName;
  v12->_managerName = v13;

  if (![(NSString *)v12->_managerName length])
  {
    v23 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v24 = v12->_managerName;
      *buf = 136315394;
      v36 = "[CESRTaskCoalescer initWithManagerName:coalescenceInterval:coalescenceDelay:executionQueue:]";
      v37 = 2112;
      v38 = v24;
      _os_log_error_impl(&dword_225EEB000, v23, OS_LOG_TYPE_ERROR, "%s Manager name must be nonempty. Received: %@", buf, 0x16u);
    }

    goto LABEL_12;
  }

  atomic_store(0, &v12->_eventIdCounter);
  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  taskRegistry = v12->_taskRegistry;
  v12->_taskRegistry = v15;

  transaction = v12->_transaction;
  v12->_transaction = 0;

  v12->_transactionCounter = 0;
  v12->_coalescenceInterval = a4;
  if (a4 <= 0.0)
  {
    v25 = *MEMORY[0x277CEF0E8];
    if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      v22 = 0;
      goto LABEL_13;
    }

    v26 = MEMORY[0x277CCABB0];
    v27 = v25;
    v28 = [v26 numberWithDouble:a4];
    *buf = 136315394;
    v36 = "[CESRTaskCoalescer initWithManagerName:coalescenceInterval:coalescenceDelay:executionQueue:]";
    v37 = 2112;
    v38 = v28;
    v29 = "%s Coalescence interval must be greater than 0. Received: %@";
LABEL_15:
    _os_log_error_impl(&dword_225EEB000, v27, OS_LOG_TYPE_ERROR, v29, buf, 0x16u);

    goto LABEL_12;
  }

  v12->_coalescenceDelay = a5;
  if (a5 <= 0.0)
  {
    v30 = *MEMORY[0x277CEF0E8];
    if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v33 = MEMORY[0x277CCABB0];
    v27 = v30;
    v28 = [v33 numberWithDouble:a5];
    *buf = 136315394;
    v36 = "[CESRTaskCoalescer initWithManagerName:coalescenceInterval:coalescenceDelay:executionQueue:]";
    v37 = 2112;
    v38 = v28;
    v29 = "%s Coalescence delay must be greater than 0. Received: %@";
    goto LABEL_15;
  }

  v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v19 = dispatch_queue_attr_make_with_qos_class(v18, QOS_CLASS_DEFAULT, 0);
  v20 = dispatch_queue_create("taskRegistryQueue", v19);
  taskRegistryQueue = v12->_taskRegistryQueue;
  v12->_taskRegistryQueue = v20;

  objc_storeStrong(&v12->_taskExecutionQueue, a6);
LABEL_6:
  v22 = v12;
LABEL_13:

  v31 = *MEMORY[0x277D85DE8];
  return v22;
}

- (CESRTaskCoalescer)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"init unsupported" userInfo:MEMORY[0x277CBEC10]];
  objc_exception_throw(v2);
}

+ (BOOL)isTaskCoalescenceDisabled
{
  if (+[CESRUtilities isCustomerInstall])
  {
    return 0;
  }

  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 objectForKey:@"Disable Coalescence"];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v2 = [v4 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end