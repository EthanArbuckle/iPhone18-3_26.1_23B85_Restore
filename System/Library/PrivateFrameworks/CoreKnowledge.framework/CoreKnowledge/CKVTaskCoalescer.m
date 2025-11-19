@interface CKVTaskCoalescer
- (BOOL)_didIncomingTask:(id)a3 arriveInCoalescingWindowWithLastTask:(id)a4;
- (CKVTaskCoalescer)init;
- (CKVTaskCoalescer)initWithManagerName:(id)a3 coalescenceInterval:(double)a4 coalescenceDelay:(double)a5 dispatchQoS:(unsigned int)a6 settings:(id)a7;
- (void)_beginTransaction;
- (void)_endTransaction;
- (void)submitTaskWithId:(unsigned __int16)a3 taskBlock:(id)a4 completion:(id)a5;
@end

@implementation CKVTaskCoalescer

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
  v14 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_transactionCounter - 1;
  v2->_transactionCounter = v3;
  if (!v3)
  {
    v4 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_DEBUG))
    {
      managerName = v2->_managerName;
      transaction = v2->_transaction;
      v8 = 136315650;
      v9 = "[CKVTaskCoalescer _endTransaction]";
      v10 = 2112;
      v11 = managerName;
      v12 = 2112;
      v13 = transaction;
      _os_log_debug_impl(&dword_1C8683000, v4, OS_LOG_TYPE_DEBUG, "%s (%@) Releasing OS transaction: %@", &v8, 0x20u);
    }

    v5 = v2->_transaction;
    v2->_transaction = 0;
  }

  objc_sync_exit(v2);
}

- (void)_beginTransaction
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  transactionCounter = v2->_transactionCounter;
  v2->_transactionCounter = transactionCounter + 1;
  if (!transactionCounter)
  {
    v4 = os_transaction_create();
    transaction = v2->_transaction;
    v2->_transaction = v4;

    v6 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_DEBUG))
    {
      managerName = v2->_managerName;
      v8 = v2->_transaction;
      v9 = 136315650;
      v10 = "[CKVTaskCoalescer _beginTransaction]";
      v11 = 2112;
      v12 = managerName;
      v13 = 2112;
      v14 = v8;
      _os_log_debug_impl(&dword_1C8683000, v6, OS_LOG_TYPE_DEBUG, "%s (%@) Acquired OS transaction: %@", &v9, 0x20u);
    }
  }

  objc_sync_exit(v2);
}

- (void)submitTaskWithId:(unsigned __int16)a3 taskBlock:(id)a4 completion:(id)a5
{
  v6 = a3;
  v40 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  [(CKVTaskCoalescer *)self _beginTransaction];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v6];
  v11 = MEMORY[0x1E696AD98];
  atomic_fetch_add(&self->_eventIdCounter, 1u);
  v12 = [v11 numberWithUnsignedInteger:?];
  v13 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_DEBUG))
  {
    managerName = self->_managerName;
    *buf = 136315906;
    v33 = "[CKVTaskCoalescer submitTaskWithId:taskBlock:completion:]";
    v34 = 2112;
    v35 = managerName;
    v36 = 2112;
    v37 = v10;
    v38 = 2112;
    v39 = v12;
    _os_log_debug_impl(&dword_1C8683000, v13, OS_LOG_TYPE_DEBUG, "%s (%@) Received task with taskId: %@ and eventId: %@", buf, 0x2Au);
  }

  v14 = [MEMORY[0x1E695DF00] now];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__CKVTaskCoalescer_submitTaskWithId_taskBlock_completion___block_invoke;
  aBlock[3] = &unk_1E831E850;
  aBlock[4] = self;
  v31 = v9;
  v15 = v9;
  v16 = _Block_copy(aBlock);
  taskRegistryQueue = self->_taskRegistryQueue;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __58__CKVTaskCoalescer_submitTaskWithId_taskBlock_completion___block_invoke_2;
  v24[3] = &unk_1E831E408;
  v24[4] = self;
  v25 = v10;
  v26 = v12;
  v27 = v14;
  v28 = v16;
  v29 = v8;
  v18 = v8;
  v19 = v14;
  v20 = v16;
  v21 = v12;
  v22 = v10;
  dispatch_async(taskRegistryQueue, v24);
}

uint64_t __58__CKVTaskCoalescer_submitTaskWithId_taskBlock_completion___block_invoke(uint64_t a1)
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

void __58__CKVTaskCoalescer_submitTaskWithId_taskBlock_completion___block_invoke_2(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 72) isTaskCoalescenceDisabled];
  if (v2)
  {
    v3 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      v5 = *(*(a1 + 32) + 8);
      v6 = *(a1 + 48);
      *buf = 136315906;
      v28 = "[CKVTaskCoalescer submitTaskWithId:taskBlock:completion:]_block_invoke_2";
      v29 = 2112;
      v30 = v5;
      v31 = 2112;
      v32 = v4;
      v33 = 2112;
      v34 = v6;
      _os_log_impl(&dword_1C8683000, v3, OS_LOG_TYPE_INFO, "%s (%@) Task coalescence is currently disabled (taskId: %@ eventId: %@)", buf, 0x2Au);
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
    v10 = [[CKVCoalescedTask alloc] initWithTaskId:*(a1 + 40) eventId:*(a1 + 48) date:*(a1 + 56) taskBlock:*(a1 + 72) completionQueue:*(*(a1 + 32) + 56) completion:*(a1 + 64)];
    [*(*(a1 + 32) + 24) setObject:v10 forKey:*(a1 + 40)];
    if ((v9 & 1) != 0 || ![*(a1 + 32) _didIncomingTask:v10 arriveInCoalescingWindowWithLastTask:v8])
    {
      v18 = CKLogContextVocabulary;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_DEBUG))
      {
        v24 = *(*(a1 + 32) + 8);
        *buf = 136315650;
        v28 = "[CKVTaskCoalescer submitTaskWithId:taskBlock:completion:]_block_invoke";
        v29 = 2112;
        v30 = v24;
        v31 = 2112;
        v32 = v10;
        _os_log_debug_impl(&dword_1C8683000, v18, OS_LOG_TYPE_DEBUG, "%s (%@) Enqueueing incoming task for execution - %@", buf, 0x20u);
      }

      v19 = *(*(a1 + 32) + 64);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __58__CKVTaskCoalescer_submitTaskWithId_taskBlock_completion___block_invoke_40;
      block[3] = &unk_1E831E828;
      v26 = v10;
      dispatch_async(v19, block);
    }

    else
    {
      v11 = CKLogContextVocabulary;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 32);
        v13 = *(v12 + 8);
        v14 = MEMORY[0x1E696AD98];
        v15 = *(v12 + 48);
        v16 = v11;
        v17 = [v14 numberWithDouble:v15];
        *buf = 136315906;
        v28 = "[CKVTaskCoalescer submitTaskWithId:taskBlock:completion:]_block_invoke";
        v29 = 2112;
        v30 = v13;
        v31 = 2112;
        v32 = v17;
        v33 = 2112;
        v34 = v10;
        _os_log_impl(&dword_1C8683000, v16, OS_LOG_TYPE_INFO, "%s (%@) Delaying %@s before executing incoming task within coalescing window - (%@)", buf, 0x2Au);
      }

      [(CKVCoalescedTask *)v10 executeAfterDelay:*(*(a1 + 32) + 64) onQueue:*(*(a1 + 32) + 48)];
    }
  }

  else
  {
    v20 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
    {
      v21 = *(a1 + 40);
      v22 = *(*(a1 + 32) + 8);
      v23 = *(a1 + 48);
      *buf = 136316162;
      v28 = "[CKVTaskCoalescer submitTaskWithId:taskBlock:completion:]_block_invoke";
      v29 = 2112;
      v30 = v22;
      v31 = 2112;
      v32 = v21;
      v33 = 2112;
      v34 = v23;
      v35 = 2112;
      v36 = v8;
      _os_log_impl(&dword_1C8683000, v20, OS_LOG_TYPE_INFO, "%s (%@) Dropping incoming task (taskId: %@ eventId: %@) as a task with the same taskId is already enqueued and has not been executed: (%@)", buf, 0x34u);
    }

    (*(*(a1 + 64) + 16))();
  }
}

- (CKVTaskCoalescer)initWithManagerName:(id)a3 coalescenceInterval:(double)a4 coalescenceDelay:(double)a5 dispatchQoS:(unsigned int)a6 settings:(id)a7
{
  v45 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a7;
  v40.receiver = self;
  v40.super_class = CKVTaskCoalescer;
  v14 = [(CKVTaskCoalescer *)&v40 init];
  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = [v12 copy];
  managerName = v14->_managerName;
  v14->_managerName = v15;

  if (![(NSString *)v14->_managerName length])
  {
    v29 = CKLogContextVocabulary;
    if (!os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
LABEL_17:
      v28 = 0;
      goto LABEL_18;
    }

    v30 = v14->_managerName;
    *buf = 136315394;
    v42 = "[CKVTaskCoalescer initWithManagerName:coalescenceInterval:coalescenceDelay:dispatchQoS:settings:]";
    v43 = 2112;
    v44 = v30;
    v31 = "%s Manager name must be nonempty. Received: %@";
LABEL_10:
    _os_log_error_impl(&dword_1C8683000, v29, OS_LOG_TYPE_ERROR, v31, buf, 0x16u);
    goto LABEL_17;
  }

  atomic_store(0, &v14->_eventIdCounter);
  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  taskRegistry = v14->_taskRegistry;
  v14->_taskRegistry = v17;

  transaction = v14->_transaction;
  v14->_transaction = 0;

  v14->_transactionCounter = 0;
  v14->_coalescenceInterval = a4;
  if (a4 <= 0.0)
  {
    v32 = CKLogContextVocabulary;
    if (!os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v33 = MEMORY[0x1E696AD98];
    v34 = v32;
    v35 = [v33 numberWithDouble:a4];
    *buf = 136315394;
    v42 = "[CKVTaskCoalescer initWithManagerName:coalescenceInterval:coalescenceDelay:dispatchQoS:settings:]";
    v43 = 2112;
    v44 = v35;
    v36 = "%s Coalescence interval must be greater than 0. Received: %@";
LABEL_15:
    _os_log_error_impl(&dword_1C8683000, v34, OS_LOG_TYPE_ERROR, v36, buf, 0x16u);

    goto LABEL_17;
  }

  v14->_coalescenceDelay = a5;
  if (a5 <= 0.0)
  {
    v37 = CKLogContextVocabulary;
    if (!os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v38 = MEMORY[0x1E696AD98];
    v34 = v37;
    v35 = [v38 numberWithDouble:a5];
    *buf = 136315394;
    v42 = "[CKVTaskCoalescer initWithManagerName:coalescenceInterval:coalescenceDelay:dispatchQoS:settings:]";
    v43 = 2112;
    v44 = v35;
    v36 = "%s Coalescence delay must be greater than 0. Received: %@";
    goto LABEL_15;
  }

  objc_storeStrong(&v14->_settings, a7);
  if (!v14->_settings)
  {
    v29 = CKLogContextVocabulary;
    if (!os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 136315394;
    v42 = "[CKVTaskCoalescer initWithManagerName:coalescenceInterval:coalescenceDelay:dispatchQoS:settings:]";
    v43 = 2112;
    v44 = 0;
    v31 = "%s invalid settings: %@";
    goto LABEL_10;
  }

  v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v21 = dispatch_queue_attr_make_with_qos_class(v20, a6, 0);
  v22 = dispatch_queue_create("taskRegistryQueue", v21);
  taskRegistryQueue = v14->_taskRegistryQueue;
  v14->_taskRegistryQueue = v22;

  v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v25 = dispatch_queue_attr_make_with_qos_class(v24, a6, 0);
  v26 = dispatch_queue_create("taskExecutionQueue", v25);
  taskExecutionQueue = v14->_taskExecutionQueue;
  v14->_taskExecutionQueue = v26;

LABEL_7:
  v28 = v14;
LABEL_18:

  return v28;
}

- (CKVTaskCoalescer)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

@end