@interface BRTimer
- (BRTimer)initWithName:(id)a3 interval:(double)a4 callbackQueue:(id)a5 block:(id)a6;
- (void)dealloc;
- (void)stop;
@end

@implementation BRTimer

- (BRTimer)initWithName:(id)a3 interval:(double)a4 callbackQueue:(id)a5 block:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v32.receiver = self;
  v32.super_class = BRTimer;
  v14 = [(BRTimer *)&v32 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_name, a3);
    objc_storeStrong(&v15->_queue, a5);
    v16 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v15->_queue);
    timer = v15->_timer;
    v15->_timer = v16;

    v18 = dispatch_time(0, (a4 * 1000000000.0));
    dispatch_source_set_timer(v15->_timer, v18, (a4 * 1000000000.0), (a4 * 1000000000.0) / 0xAuLL);
    objc_initWeak(&location, v15);
    v19 = v15->_timer;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __53__BRTimer_initWithName_interval_callbackQueue_block___block_invoke;
    v28[3] = &unk_1E7A16430;
    objc_copyWeak(&v30, &location);
    v29 = v13;
    v20 = v19;
    v21 = v28;
    v22 = v20;
    v23 = v21;
    v24 = v23;
    v25 = v23;
    if (brc_block_remember_persona)
    {
      v25 = brc_block_remember_persona(v23);
    }

    v26 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v25);
    dispatch_source_set_event_handler(v22, v26);

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v15;
}

void __53__BRTimer_initWithName_interval_callbackQueue_block___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (((*(*(a1 + 32) + 16))() & 1) == 0)
  {
    [WeakRetained stop];
  }
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v2, v3, "[DEBUG] dealloc timer %@%@");
  v4 = *MEMORY[0x1E69E9840];
}

- (void)stop
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v2, v3, "[DEBUG] stop timer %@%@");
  v4 = *MEMORY[0x1E69E9840];
}

@end