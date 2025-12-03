@interface LICacheClearScheduler
+ (id)transactionDescription:(id)description;
- (LICacheClearScheduler)initWithObject:(id)object delay:(double)delay holdTransaction:(BOOL)transaction clearHandler:(id)handler;
- (id)object;
- (void)_queue_clearCache;
@end

@implementation LICacheClearScheduler

- (LICacheClearScheduler)initWithObject:(id)object delay:(double)delay holdTransaction:(BOOL)transaction clearHandler:(id)handler
{
  objectCopy = object;
  handlerCopy = handler;
  v31.receiver = self;
  v31.super_class = LICacheClearScheduler;
  v12 = [(LICacheClearScheduler *)&v31 init];
  if (v12)
  {
    v13 = [handlerCopy copy];
    v14 = *(v12 + 9);
    *(v12 + 9) = v13;

    *(v12 + 3) = delay;
    objc_initWeak(&location, v12);
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("delayed evitor queue", v15);
    v17 = *(v12 + 8);
    *(v12 + 8) = v16;

    *(v12 + 9) = transaction;
    *(v12 + 8) = 0;
    v18 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v12 + 8));
    v19 = dispatch_time(0, (*(v12 + 3) * 1000000000.0));
    dispatch_source_set_timer(v18, v19, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __75__LICacheClearScheduler_initWithObject_delay_holdTransaction_clearHandler___block_invoke;
    handler[3] = &unk_2798E5D40;
    v20 = v18;
    v28 = v20;
    objc_copyWeak(&v29, &location);
    dispatch_source_set_event_handler(v20, handler);
    [v12 setTimer:v20];
    dispatch_resume(v20);
    *(v12 + 6) = 1;
    v21 = dispatch_source_create(MEMORY[0x277D85D18], 0, 7uLL, *(v12 + 8));
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __75__LICacheClearScheduler_initWithObject_delay_holdTransaction_clearHandler___block_invoke_2;
    v24[3] = &unk_2798E5D68;
    objc_copyWeak(&v26, &location);
    v22 = v12;
    v25 = v22;
    dispatch_source_set_event_handler(v21, v24);
    [v22 setMemoryPreasure:v21];
    dispatch_resume(v21);

    objc_destroyWeak(&v26);
    objc_destroyWeak(&v29);

    objc_destroyWeak(&location);
  }

  return v12;
}

void __75__LICacheClearScheduler_initWithObject_delay_holdTransaction_clearHandler___block_invoke(uint64_t a1)
{
  dispatch_source_set_timer(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setTimerFired:1];

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 _queue_clearCache];
}

void __75__LICacheClearScheduler_initWithObject_delay_holdTransaction_clearHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) memoryPreasure];
  mask = dispatch_source_get_mask(v2);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setMemoryPreasureState:mask];

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 _queue_clearCache];
}

+ (id)transactionDescription:(id)description
{
  descriptionCopy = description;
  if (descriptionCopy && (v4 = os_transaction_copy_description()) != 0)
  {
    v5 = v4;
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
    free(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)object
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__LICacheClearScheduler_object__block_invoke;
  v5[3] = &unk_2798E5D90;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __31__LICacheClearScheduler_object__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 16));
  if (*(*v1 + 9) == 1)
  {
    if (*(*v1 + 7))
    {
      if (_LIDefaultLog_onceToken_0 != -1)
      {
        __31__LICacheClearScheduler_object__block_invoke_cold_1();
      }

      v2 = _LIDefaultLog_log_0;
      if (os_log_type_enabled(_LIDefaultLog_log_0, OS_LOG_TYPE_DEBUG))
      {
        __31__LICacheClearScheduler_object__block_invoke_cold_2(v1, v2);
      }

      os_transaction_needs_more_time();
    }

    else
    {
      v3 = os_transaction_create();
      v4 = *(*v1 + 7);
      *(*v1 + 7) = v3;

      if (_LIDefaultLog_onceToken_0 != -1)
      {
        __31__LICacheClearScheduler_object__block_invoke_cold_1();
      }

      v5 = _LIDefaultLog_log_0;
      if (os_log_type_enabled(_LIDefaultLog_log_0, OS_LOG_TYPE_DEBUG))
      {
        __31__LICacheClearScheduler_object__block_invoke_cold_4(v1, v5);
      }
    }
  }

  *(*v1 + 8) = 0;
  v6 = dispatch_time(0, (*(*v1 + 3) * 1000000000.0));
  v7 = [*v1 timer];
  dispatch_source_set_timer(v7, v6, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

  if (_LIDefaultLog_onceToken_0 != -1)
  {
    __31__LICacheClearScheduler_object__block_invoke_cold_5();
  }

  if (os_log_type_enabled(_LIDefaultLog_log_0, OS_LOG_TYPE_DEBUG))
  {
    __31__LICacheClearScheduler_object__block_invoke_cold_6();
  }
}

- (void)_queue_clearCache
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_1() transactionDescription:?];
  OUTLINED_FUNCTION_0(&dword_259AA3000, v5, v6, "Release transaction %@", v7, v8, v9, v10, 2u);
}

void __31__LICacheClearScheduler_object__block_invoke_cold_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_1() transactionDescription:?];
  OUTLINED_FUNCTION_0(&dword_259AA3000, v5, v6, "Extending transaction %@", v7, v8, v9, v10, 2u);
}

void __31__LICacheClearScheduler_object__block_invoke_cold_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_1() transactionDescription:?];
  OUTLINED_FUNCTION_0(&dword_259AA3000, v5, v6, "Created transaction %@", v7, v8, v9, v10, 2u);
}

@end