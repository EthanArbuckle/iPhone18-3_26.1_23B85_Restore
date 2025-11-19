@interface HTMonitorPidHangEvent
+ (void)_updateRunningBoardProcessMonitor;
+ (void)checkHangForPid:(int)a3;
+ (void)removePidFromProcessMonitoring:(int)a3;
- (id)initHTMonitorPidHangEvent:(id *)a3 shmem_size:(unint64_t)a4;
- (void)dealloc;
@end

@implementation HTMonitorPidHangEvent

- (id)initHTMonitorPidHangEvent:(id *)a3 shmem_size:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = HTMonitorPidHangEvent;
  result = [(HTMonitorPidHangEvent *)&v7 init];
  if (result)
  {
    *(result + 1) = a3;
    *(result + 2) = a4;
  }

  return result;
}

- (void)dealloc
{
  munmap(self->_shmem_region, self->_shmem_size);
  self->_shmem_region = 0;
  self->_shmem_size = 0;
  v3.receiver = self;
  v3.super_class = HTMonitorPidHangEvent;
  [(HTMonitorPidHangEvent *)&v3 dealloc];
}

+ (void)checkHangForPid:(int)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__HTMonitorPidHangEvent_checkHangForPid___block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v4 = a3;
  dispatch_async(_htMonitorConnectionQueue, block);
}

void __41__HTMonitorPidHangEvent_checkHangForPid___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = pidHangEventDict;
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 32)];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = shared_ht_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = pidHangEventDict;
    _os_log_impl(&dword_1C8286000, v5, OS_LOG_TYPE_INFO, "HangTracerMonitor:checkHangForPid pidHangEventDict  %@", buf, 0xCu);
  }

  if (v4)
  {
    v6 = *(v4[1] + 4);
    v7 = shared_ht_log_handle();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (v6)
    {
      if (!v8)
      {
        goto LABEL_13;
      }

      v9 = *(v4[1] + 4);
      *buf = 67109120;
      LODWORD(v26) = v9;
      v10 = "HangTracerMonitor:checkHangForPid number of hang Events =  %d";
      v11 = v7;
      v12 = 8;
    }

    else
    {
      if (!v8)
      {
        goto LABEL_13;
      }

      *buf = 0;
      v10 = "HangTracerMonitor:checkHangForPid number of hang Events is 0";
      v11 = v7;
      v12 = 2;
    }

    _os_log_impl(&dword_1C8286000, v11, OS_LOG_TYPE_INFO, v10, buf, v12);
LABEL_13:

    v15 = mach_absolute_time();
    v16 = v4[1];
    if (*(v16 + 4))
    {
      v17 = v15;
      v18 = 0;
      v19 = 32;
      do
      {
        v20 = (v16 + v19);
        v21 = (v20 - 6);
        LODWORD(v20) = atomic_load(v20);
        if (v20)
        {
          v22 = shared_ht_log_handle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v23 = *(a1 + 32);
            *buf = 67109120;
            LODWORD(v26) = v23;
            _os_log_impl(&dword_1C8286000, v22, OS_LOG_TYPE_INFO, "HangTracerMonitor:checkHangForPid hang event suspend count is not 0 for pid=%u ", buf, 8u);
          }
        }

        else
        {
          HTCheckForHangForHTMonitor(v21, v4[1] + 4680, v17);
        }

        HTForegroundTrackingEnd(v21, v17, 3);
        ++v18;
        v16 = v4[1];
        v19 += 584;
      }

      while (v18 < *(v16 + 4));
    }

    goto LABEL_21;
  }

  v13 = shared_ht_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    *buf = 67109120;
    LODWORD(v26) = v14;
    _os_log_impl(&dword_1C8286000, v13, OS_LOG_TYPE_DEFAULT, "HangTracerMonitor:checkHangForPid(pid=%u) is not present in pidHangEventDict ", buf, 8u);
  }

LABEL_21:
  v24 = *MEMORY[0x1E69E9840];
}

+ (void)_updateRunningBoardProcessMonitor
{
  if (*monitor)
  {
    [monitor updateConfiguration:&__block_literal_global_7];
  }
}

void __58__HTMonitorPidHangEvent__updateRunningBoardProcessMonitor__block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C7610];
  v3 = processIdentifiers;
  v4 = a2;
  v5 = [v2 predicateMatchingIdentifiers:v3];
  v8[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v4 setPredicates:v6];

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)removePidFromProcessMonitoring:(int)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = processIdentifiers;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 pid] == a3)
        {
          [processIdentifiers removeObject:v9];
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  +[HTMonitorPidHangEvent _updateRunningBoardProcessMonitor];
  v10 = *MEMORY[0x1E69E9840];
}

void __63__HTMonitorPidHangEvent_setupRunningBoardProcessMonitorForPid___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C7610];
  v3 = processIdentifiers;
  v4 = a2;
  v5 = [v2 predicateMatchingIdentifiers:v3];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [v4 setPredicates:v6];

  v7 = [MEMORY[0x1E69C7630] descriptor];
  [v7 setValues:64];
  [v4 setStateDescriptor:v7];
  [v4 setServiceClass:33];
  [v4 setUpdateHandler:&__block_literal_global_17];

  v8 = *MEMORY[0x1E69E9840];
}

void __63__HTMonitorPidHangEvent_setupRunningBoardProcessMonitorForPid___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = _htMonitorConnectionQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__HTMonitorPidHangEvent_setupRunningBoardProcessMonitorForPid___block_invoke_3;
  v10[3] = &unk_1E8302E30;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void __63__HTMonitorPidHangEvent_setupRunningBoardProcessMonitorForPid___block_invoke_3(uint64_t a1)
{
  v1 = a1;
  v54 = *MEMORY[0x1E69E9840];
  v2 = pidHangEventDict;
  v40 = (a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(a1 + 32), "pid")}];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v6 = v4[1];
    if (*(v6 + 4))
    {
      v7 = 0;
      v8 = 379;
      *&v5 = 67110146;
      v39 = v5;
      v41 = v4;
      v43 = v1;
      do
      {
        v9 = [*(v1 + 40) previousState];
        [v9 cpuRole];

        v10 = [*(v1 + 40) state];
        v11 = [v10 cpuRole];

        v12 = [*(v1 + 32) bundle];
        v13 = [v12 identifier];

        if (v13)
        {
          v14 = [*v40 bundle];
          v15 = [v14 identifier];
        }

        else
        {
          v16 = shared_ht_log_handle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1C8286000, v16, OS_LOG_TYPE_INFO, "RB Notification contained a nil bundle identifier, defaulting to event bundle id.", buf, 2u);
          }

          v17 = (v6 + v8);
          if (*(v6 + v8))
          {
            *v17 = 0;
            v31 = (v17 - 255);
            v30 = shared_ht_log_handle();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
            {
              __63__HTMonitorPidHangEvent_setupRunningBoardProcessMonitorForPid___block_invoke_3_cold_1(v31, v30, v32, v33, v34, v35, v36, v37);
            }

            goto LABEL_18;
          }

          v15 = [MEMORY[0x1E696AEC0] stringWithCString:v6 + v8 - 255 encoding:1];
        }

        v18 = shared_ht_log_handle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [*(v43 + 32) pid];
          NSStringFromRBSRole();
          v42 = v15;
          v21 = v20 = v11;
          v22 = NSStringFromRBSRole();
          v23 = [*(v43 + 40) state];
          v24 = [v23 lastStateChangeTimestamp];
          *buf = v39;
          v45 = v19;
          v46 = 2114;
          v47 = v42;
          v48 = 2114;
          v49 = v21;
          v50 = 2114;
          v51 = v22;
          v52 = 2112;
          v53 = v24;
          _os_log_impl(&dword_1C8286000, v18, OS_LOG_TYPE_DEFAULT, "Received RB Notification for CPU Role change of process(%d) '%{public}@'. Changed from %{public}@ to %{public}@ at %@", buf, 0x30u);

          v11 = v20;
          v15 = v42;
        }

        Current = CFAbsoluteTimeGetCurrent();
        v26 = mach_absolute_time();
        v1 = v43;
        v27 = [*(v43 + 40) state];
        v28 = [v27 lastStateChangeTimestamp];
        v29 = HTGetMachAbsoluteTimeFromNSDate(v28, v26, Current);

        addNewCPURoleToHangEvent(v6 + v8 - 371, v29, v11);
        ++v7;
        v4 = v41;
        v6 = v41[1];
        v8 += 584;
      }

      while (v7 < *(v6 + 4));
    }
  }

  else
  {
    v30 = shared_ht_log_handle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      __63__HTMonitorPidHangEvent_setupRunningBoardProcessMonitorForPid___block_invoke_3_cold_2(v40, v30);
    }

LABEL_18:
  }

  v38 = *MEMORY[0x1E69E9840];
}

void __63__HTMonitorPidHangEvent_setupRunningBoardProcessMonitorForPid___block_invoke_3_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3(&dword_1C8286000, a2, a3, "event->bundleID has been corrupted, final char in array is not \\0. bundleID: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __63__HTMonitorPidHangEvent_setupRunningBoardProcessMonitorForPid___block_invoke_3_cold_2(id *a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [*a1 pid];
  v5 = [*a1 bundle];
  v7[0] = 67109378;
  v7[1] = v4;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_1C8286000, a2, OS_LOG_TYPE_ERROR, "There is no HTMonitorPidHangEvent for process with pid %d and bundleInfo %{public}@", v7, 0x12u);

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)getSharedPageFromPid:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3(&dword_1C8286000, a2, a3, "HTMonitor shared page accessed on the incorrect queue: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end