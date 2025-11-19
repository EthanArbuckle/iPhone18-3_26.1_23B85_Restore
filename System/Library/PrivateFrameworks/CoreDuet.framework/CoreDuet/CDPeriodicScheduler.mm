@interface CDPeriodicScheduler
@end

@implementation CDPeriodicScheduler

uint64_t __38___CDPeriodicScheduler_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(_CDPeriodicScheduler);
  v1 = sharedInstance_sharedInstance_2;
  sharedInstance_sharedInstance_2 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __36___CDPeriodicScheduler_registerJob___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v6 = [v5 activity];

  if (!v6)
  {
    [*v4 setActivity:v3];
  }

  state = xpc_activity_get_state(v3);
  if (!state)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*v4 jobName];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v15;
      _os_log_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Checking-in activity %@", &buf, 0xCu);
    }

    v8 = xpc_activity_copy_criteria(v3);
    if (v8)
    {
      v16 = [*v4 executionCriteria];
      v17 = xpc_equal(v8, v16);

      if (v17)
      {
        goto LABEL_29;
      }
    }

    v14 = [*v4 executionCriteria];
    xpc_activity_set_criteria(v3, v14);
LABEL_28:

LABEL_29:
    goto LABEL_30;
  }

  if (state == 2)
  {
    v8 = [*v4 handler];
    if (!v8)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        __36___CDPeriodicScheduler_registerJob___block_invoke_cold_2(v4);
      }

      v14 = [*v4 activity];
      xpc_activity_set_completion_status();
      goto LABEL_28;
    }

    v9 = [*v4 activity];
    v10 = xpc_activity_set_state(v9, 4);

    if (!v10)
    {
      v11 = [*v4 activity];
      should_defer = xpc_activity_should_defer(v11);

      if (should_defer)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v13 = [*v4 jobName];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v13;
          _os_log_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Warning: deferring activity '%@' before it started", &buf, 0xCu);
        }

        v14 = [*v4 activity];
        xpc_activity_set_state(v14, 3);
        goto LABEL_28;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        __36___CDPeriodicScheduler_registerJob___block_invoke_cold_1(v4);
      }

      v18 = [*v4 activity];
      xpc_activity_set_completion_status();
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v19 = [*v4 jobName];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v19;
      _os_log_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Running activity %@", &buf, 0xCu);
    }

    v33 = MEMORY[0x1E69E9820];
    v34 = 3221225472;
    v35 = __36___CDPeriodicScheduler_registerJob___block_invoke_61;
    v36 = &unk_1E73674E0;
    v37 = *v4;
    v8 = v8;
    v38 = v8;
    v20 = MEMORY[0x193B00C50](&v33);
    v21 = [*v4 queue];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:_CDPeriodicSchedulerDefaultQueueName];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:dispatch_queue_get_label(v21)];
    v24 = [v22 isEqualToString:v23];

    if (v24)
    {
      v25 = v20;
      v26 = v21;
      v27 = os_transaction_create();
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v40 = __cd_dispatch_async_capture_tx_block_invoke_1;
      v41 = &unk_1E7367818;
      v42 = v27;
      v43 = v25;
      v28 = v25;
      v29 = v27;
      dispatch_async(v26, &buf);
    }

    else
    {
      v30 = v21;
      v31 = v20;
      v29 = os_transaction_create();
      dispatch_sync(v30, v31);
    }

    v14 = v37;
    goto LABEL_28;
  }

LABEL_30:

  v32 = *MEMORY[0x1E69E9840];
}

void __36___CDPeriodicScheduler_registerJob___block_invoke_61(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  getpid();
  proc_set_cpumon_params();
  v2 = MEMORY[0x1E69E9C10];
  v3 = MEMORY[0x1E69E9C10];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) jobName];
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "About to run handler for %@", &v11, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  getpid();
  proc_set_cpumon_defaults();
  if (([*(a1 + 32) isHandlerAsynchronous] & 1) == 0)
  {
    v6 = [*(a1 + 32) activity];
    v7 = xpc_activity_get_state(v6) == 3;

    if (v7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v8 = [*(a1 + 32) jobName];
        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Deferring activity %@", &v11, 0xCu);
      }
    }

    else
    {
      v9 = [*(a1 + 32) activity];
      xpc_activity_set_state(v9, 5);

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 32) jobName];
        v11 = 138412290;
        v12 = v10;
        _os_log_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Done running activity %@", &v11, 0xCu);
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __36___CDPeriodicScheduler_registerJob___block_invoke_cold_1(id *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = [*a1 jobName];
  v3 = 138412290;
  v4 = v1;
  _os_log_fault_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Failed to set activity '%@' state to continue", &v3, 0xCu);

  v2 = *MEMORY[0x1E69E9840];
}

void __36___CDPeriodicScheduler_registerJob___block_invoke_cold_2(id *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = [*a1 jobName];
  v3 = 138412290;
  v4 = v1;
  _os_log_error_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Job %@ missing task to execute", &v3, 0xCu);

  v2 = *MEMORY[0x1E69E9840];
}

@end