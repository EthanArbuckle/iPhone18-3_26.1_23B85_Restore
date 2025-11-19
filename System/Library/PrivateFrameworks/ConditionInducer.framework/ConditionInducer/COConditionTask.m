@interface COConditionTask
- (BOOL)launchTask:(id *)a3;
- (BOOL)start;
- (BOOL)waitForTaskWithTimeout:(unsigned int)a3;
- (COConditionTask)initWithCommand:(id)a3 arguments:(id)a4;
- (id)description;
- (id)stderrFromResults;
- (id)stdoutFromResults;
- (void)stderrFromResults;
- (void)stdoutFromResults;
- (void)stop;
- (void)stopTask;
- (void)waitForExitInformation:(int)a3;
@end

@implementation COConditionTask

- (COConditionTask)initWithCommand:(id)a3 arguments:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [COConditionTask initWithCommand:v7 arguments:v8];
  }

  v41.receiver = self;
  v41.super_class = COConditionTask;
  v9 = [(COConditionTask *)&v41 init];
  if (v9)
  {
    v10 = [MEMORY[0x277CCAD78] UUID];
    v11 = [v10 UUIDString];

    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v13 = [v7 lastPathComponent];
    v14 = [v12 initWithFormat:@"/tmp/%@.%@.stdout.txt", v13, v11];
    stdoutFname = v9->_stdoutFname;
    v9->_stdoutFname = v14;

    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = [v7 lastPathComponent];
    v18 = [v16 initWithFormat:@"/tmp/%@.%@.stderr.txt", v17, v11];
    stderrFname = v9->_stderrFname;
    v9->_stderrFname = v18;

    v20 = objc_alloc(MEMORY[0x277CCACA8]);
    v21 = [v7 lastPathComponent];
    v22 = [v20 initWithFormat:@"/tmp/%@.%@.stdin.txt", v21, v11];
    stdinFname = v9->_stdinFname;
    v9->_stdinFname = v22;

    v24 = open([(NSString *)v9->_stdinFname fileSystemRepresentation], 514, 438);
    if (v24 != -1)
    {
      v25 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v24];
      stdinFileHandle = v9->_stdinFileHandle;
      v9->_stdinFileHandle = v25;
    }

    v27 = open([(NSString *)v9->_stdoutFname fileSystemRepresentation], 514, 438);
    if (v27 != -1)
    {
      v28 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v27];
      stdoutFileHandle = v9->_stdoutFileHandle;
      v9->_stdoutFileHandle = v28;
    }

    v30 = open([(NSString *)v9->_stderrFname fileSystemRepresentation], 514, 438);
    if (v30 != -1)
    {
      v31 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v30];
      stderrFileHandle = v9->_stderrFileHandle;
      v9->_stderrFileHandle = v31;
    }

    if (!v9->_stdinFileHandle || !v9->_stdoutFileHandle || !v8 || !v7 || !v9->_stderrFileHandle)
    {

      v39 = 0;
      goto LABEL_18;
    }

    v9->_processIdentifier = -1;
    objc_storeStrong(&v9->_launchPath, a3);
    objc_storeStrong(&v9->_arguments, a4);
    v33 = dispatch_semaphore_create(0);
    termination_sem = v9->_termination_sem;
    v9->_termination_sem = v33;

    v35 = dispatch_queue_create("com.apple.ConditionInducer.common", 0);
    taskQueue = v9->_taskQueue;
    v9->_taskQueue = v35;

    v37 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v9->_stdinFileHandle, v9->_stdoutFileHandle, v9->_stderrFileHandle, 0}];
    taskFileHandleArray = v9->_taskFileHandleArray;
    v9->_taskFileHandleArray = v37;
  }

  v39 = v9;
LABEL_18:

  return v39;
}

- (void)waitForExitInformation:(int)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0;
  memset(&v12, 0, sizeof(v12));
    ;
  }

  v5 = v13;
  if ((v13 & 0x7F) == 0x7F)
  {
    v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (v5 >> 8 == 19)
    {
      if (v10)
      {
        v6 = [(COConditionTask *)self launchPath:*&v12.ru_utime];
        v7 = [v6 lastPathComponent];
        *buf = 138412546;
        v15 = v7;
        v16 = 1024;
        v17 = v13;
        v8 = MEMORY[0x277D86220];
        v9 = "Unknown state of child process '%@' with wstatus %04x";
        goto LABEL_15;
      }
    }

    else if (v10)
    {
      v6 = [(COConditionTask *)self launchPath:*&v12.ru_utime];
      v7 = [v6 lastPathComponent];
      *buf = 138412546;
      v15 = v7;
      v16 = 1024;
      v17 = v13 >> 8;
      v8 = MEMORY[0x277D86220];
      v9 = "Child process '%@' stopped (but did not terminate) due to signal %d";
      goto LABEL_15;
    }
  }

  else if ((v13 & 0x7F) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = [(COConditionTask *)self launchPath:*&v12.ru_utime];
      v7 = [v6 lastPathComponent];
      *buf = 138412546;
      v15 = v7;
      v16 = 1024;
      v17 = v13 & 0x7F;
      v8 = MEMORY[0x277D86220];
      v9 = "Child process '%@' terminated due to signal %d";
      goto LABEL_15;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = [(COConditionTask *)self launchPath:*&v12.ru_utime];
    v7 = [v6 lastPathComponent];
    *buf = 138412546;
    v15 = v7;
    v16 = 1024;
    v17 = BYTE1(v13);
    v8 = MEMORY[0x277D86220];
    v9 = "Child process '%@' exited with status %d";
LABEL_15:
    _os_log_impl(&dword_243E0F000, v8, OS_LOG_TYPE_INFO, v9, buf, 0x12u);
  }

  [(COConditionTask *)self setRunning:0, *&v12.ru_utime, *&v12.ru_stime, *&v12.ru_maxrss, *&v12.ru_idrss, *&v12.ru_minflt, *&v12.ru_nswap, *&v12.ru_oublock, *&v12.ru_msgrcv, *&v12.ru_nvcsw];
  [(COConditionTask *)self setEndStatus:BYTE1(v13)];
  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)waitForTaskWithTimeout:(unsigned int)a3
{
  if ([(COConditionTask *)self running]&& (!a3 ? (v5 = -1) : (v5 = dispatch_time(0, 1000000000 * a3)), [(COConditionTask *)self termination_sem], v6 = objc_claimAutoreleasedReturnValue(), v7 = dispatch_semaphore_wait(v6, v5), v6, v7))
  {
    v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v8)
    {
      [COConditionTask waitForTaskWithTimeout:?];
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  return v8;
}

- (BOOL)launchTask:(id *)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v50 = -1;
  v48 = 0;
  v49 = 0;
  v4 = [(COConditionTask *)self taskQueue];
  dispatch_assert_queue_V2(v4);

  if ([(COConditionTask *)self running])
  {
    v5 = 0;
    v6 = 0;
LABEL_3:
    v7 = 1;
    goto LABEL_35;
  }

  v8 = [(COConditionTask *)self launchPath];

  if (v8)
  {
    v9 = [(COConditionTask *)self arguments];
    v6 = malloc_type_calloc([v9 count] + 2, 8uLL, 0x10040436913F5uLL);

    if (v6)
    {
      v10 = [(COConditionTask *)self launchPath];
      *v6 = [v10 fileSystemRepresentation];

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v11 = [(COConditionTask *)self arguments];
      v12 = [v11 countByEnumeratingWithState:&v44 objects:v55 count:16];
      if (v12)
      {
        v13 = v12;
        LODWORD(v14) = 0;
        v15 = *v45;
        do
        {
          v16 = 0;
          v14 = v14;
          do
          {
            if (*v45 != v15)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v44 + 1) + 8 * v16);
            if ([v17 length])
            {
              v18 = [v17 fileSystemRepresentation];
            }

            else
            {
              v18 = "";
            }

            v6[v14 + 1] = v18;
            ++v16;
            ++v14;
          }

          while (v13 != v16);
          v13 = [v11 countByEnumeratingWithState:&v44 objects:v55 count:16];
        }

        while (v13);
      }

      posix_spawn_file_actions_init(&v49);
      if (!v49)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [COConditionTask launchTask:];
        }

        goto LABEL_33;
      }

      v19 = [(COConditionTask *)self taskFileHandleArray];
      v20 = [v19 objectAtIndexedSubscript:0];
      v21 = posix_spawn_file_actions_adddup2(&v49, [v20 fileDescriptor], 0);

      if (v21)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
LABEL_32:
          [COConditionTask launchTask:v21];
        }
      }

      else
      {
        v22 = [(COConditionTask *)self taskFileHandleArray];
        v23 = [v22 objectAtIndexedSubscript:1];
        v21 = posix_spawn_file_actions_adddup2(&v49, [v23 fileDescriptor], 1);

        if (v21)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_32;
          }
        }

        else
        {
          v24 = [(COConditionTask *)self taskFileHandleArray];
          v25 = [v24 objectAtIndexedSubscript:2];
          v21 = posix_spawn_file_actions_adddup2(&v49, [v25 fileDescriptor], 2);

          if (!v21)
          {
            v48 = copyPOSIXSpawnAttributes();
            if (v48)
            {
              signal(20, 0);
              v28 = [(COConditionTask *)self launchPath];
              v29 = [v28 fileSystemRepresentation];
              v30 = _NSGetEnviron();
              v31 = posix_spawn(&v50, v29, &v49, &v48, v6, *v30);

              if (v31)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  [COConditionTask launchTask:v31];
                }
              }

              else
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  v32 = [(COConditionTask *)self launchPath];
                  v33 = [(COConditionTask *)self arguments];
                  v34 = [v33 componentsJoinedByString:@" "];
                  *buf = 138412546;
                  v52 = v32;
                  v53 = 2112;
                  v54 = v34;
                  _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Spawned %@ with arguments: %@.", buf, 0x16u);
                }

                v35 = v50;
                [(COConditionTask *)self setProcessIdentifier:v50];
                [(COConditionTask *)self setRunning:1];
                v36 = dispatch_get_global_queue(0, 0);
                v37 = dispatch_source_create(MEMORY[0x277D85D20], v35, 0x80000000uLL, v36);

                if (v37)
                {
                  handler[0] = MEMORY[0x277D85DD0];
                  handler[1] = 3221225472;
                  handler[2] = __30__COConditionTask_launchTask___block_invoke;
                  handler[3] = &unk_278DF7E18;
                  v5 = v37;
                  v41 = v5;
                  v42 = self;
                  v43 = v35;
                  dispatch_source_set_event_handler(v5, handler);
                  v38[0] = MEMORY[0x277D85DD0];
                  v38[1] = 3221225472;
                  v38[2] = __30__COConditionTask_launchTask___block_invoke_2;
                  v38[3] = &unk_278DF7E40;
                  v39 = v35;
                  v38[4] = self;
                  dispatch_source_set_registration_handler(v5, v38);

                  dispatch_resume(v5);
                  goto LABEL_3;
                }

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  [COConditionTask launchTask:];
                }
              }
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [COConditionTask launchTask:];
            }

            goto LABEL_33;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_32;
          }
        }
      }

LABEL_33:
      v5 = 0;
      goto LABEL_34;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [COConditionTask launchTask:];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [COConditionTask launchTask:];
  }

  v5 = 0;
  v6 = 0;
LABEL_34:
  v7 = 0;
LABEL_35:
  if (v48)
  {
    posix_spawnattr_destroy(&v48);
  }

  if (v49)
  {
    posix_spawn_file_actions_destroy(&v49);
  }

  if (v6)
  {
    free(v6);
  }

  v26 = *MEMORY[0x277D85DE8];
  return v7;
}

void __30__COConditionTask_launchTask___block_invoke(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  [*(a1 + 40) waitForExitInformation:*(a1 + 48)];
  v2 = [*(a1 + 40) termination_sem];

  if (v2)
  {
    v3 = [*(a1 + 40) termination_sem];
    dispatch_semaphore_signal(v3);
  }
}

void __30__COConditionTask_launchTask___block_invoke_2(uint64_t a1)
{
  if (kill(*(a1 + 40), 19))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __30__COConditionTask_launchTask___block_invoke_2_cold_1(a1);
    }
  }
}

- (void)stopTask
{
  *&v32[5] = *MEMORY[0x277D85DE8];
  v3 = [(COConditionTask *)self taskQueue];
  dispatch_assert_queue_V2(v3);

  if (![(COConditionTask *)self running])
  {
    goto LABEL_30;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = [(COConditionTask *)self description];
    v31 = 138412290;
    *v32 = v4;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Stopping task %@", &v31, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = [(COConditionTask *)self launchPath];
    v6 = [v5 lastPathComponent];
    v31 = 138412290;
    *v32 = v6;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "-->\tInterrupting: '%@'", &v31, 0xCu);
  }

  [(COConditionTask *)self interrupt];
  if ([(COConditionTask *)self slowTimeout])
  {
    v7 = 5500000;
  }

  else
  {
    v7 = 500000;
  }

  usleep(v7);
  v8 = [(COConditionTask *)self running];
  v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_30;
    }

    v23 = [(COConditionTask *)self launchPath];
    v24 = [v23 lastPathComponent];
    v31 = 138412290;
    *v32 = v24;
    v25 = MEMORY[0x277D86220];
    v26 = "-->\tInterrupted: '%@'";
LABEL_29:
    _os_log_impl(&dword_243E0F000, v25, OS_LOG_TYPE_INFO, v26, &v31, 0xCu);

    goto LABEL_30;
  }

  if (v9)
  {
    v10 = [(COConditionTask *)self launchPath];
    v11 = [v10 lastPathComponent];
    v31 = 138412290;
    *v32 = v11;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "-->\tTerminating: '%@'", &v31, 0xCu);
  }

  [(COConditionTask *)self terminate];
  if ([(COConditionTask *)self slowTimeout])
  {
    v12 = 2750000;
  }

  else
  {
    v12 = 250000;
  }

  usleep(v12);
  v13 = [(COConditionTask *)self running];
  v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (v14)
  {
    v15 = [(COConditionTask *)self launchPath];
    v16 = [v15 lastPathComponent];
    v31 = 138412290;
    *v32 = v16;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "-->\tTask is taking a while to terminate: '%@'", &v31, 0xCu);
  }

  sleep(3u);
  if (![(COConditionTask *)self running])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_30;
    }

LABEL_28:
    v23 = [(COConditionTask *)self launchPath];
    v24 = [v23 lastPathComponent];
    v31 = 138412290;
    *v32 = v24;
    v25 = MEMORY[0x277D86220];
    v26 = "-->\tTerminated: '%@'";
    goto LABEL_29;
  }

  v17 = [(COConditionTask *)self processIdentifier];
  v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v17 <= 0)
  {
    if (v18)
    {
      v28 = [(COConditionTask *)self processIdentifier];
      v29 = [(COConditionTask *)self launchPath];
      v30 = [v29 lastPathComponent];
      v31 = 67109378;
      v32[0] = v28;
      LOWORD(v32[1]) = 2112;
      *(&v32[1] + 2) = v30;
      _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "-->\t*** [self.task processIdentifier] returned %d; assuming process is dead: '%@'", &v31, 0x12u);
    }
  }

  else
  {
    if (v18)
    {
      v19 = [(COConditionTask *)self processIdentifier];
      v20 = [(COConditionTask *)self launchPath];
      v21 = [v20 lastPathComponent];
      v31 = 67109378;
      v32[0] = v19;
      LOWORD(v32[1]) = 2112;
      *(&v32[1] + 2) = v21;
      _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "-->\tKilling (pid %d): '%@'", &v31, 0x12u);
    }

    [(COConditionTask *)self signalRunningTask:9];
    v22 = [(COConditionTask *)self termination_sem];
    dispatch_semaphore_signal(v22);
  }

LABEL_30:
  v27 = *MEMORY[0x277D85DE8];
}

- (id)stdoutFromResults
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(COConditionTask *)self stdoutFname];
  v9 = 0;
  v5 = [v3 stringWithContentsOfFile:v4 encoding:4 error:&v9];
  v6 = v9;

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(COConditionTask *)self stdoutFromResults];
    }

    v7 = &stru_28570BA10;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (id)stderrFromResults
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(COConditionTask *)self stderrFname];
  v9 = 0;
  v5 = [v3 stringWithContentsOfFile:v4 encoding:4 error:&v9];
  v6 = v9;

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(COConditionTask *)self stderrFromResults];
    }

    v7 = &stru_28570BA10;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (BOOL)start
{
  v2 = self;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = __Block_byref_object_copy_;
  v6[4] = __Block_byref_object_dispose_;
  v7 = 0;
  v3 = [(COConditionTask *)self taskQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__COConditionTask_start__block_invoke;
  block[3] = &unk_278DF7E68;
  block[4] = v2;
  block[5] = &v8;
  block[6] = v6;
  dispatch_sync(v3, block);

  LOBYTE(v2) = *(v9 + 24);
  _Block_object_dispose(v6, 8);

  _Block_object_dispose(&v8, 8);
  return v2;
}

void __24__COConditionTask_start__block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 launchTask:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
}

- (void)stop
{
  v3 = [(COConditionTask *)self taskQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__COConditionTask_stop__block_invoke;
  block[3] = &unk_278DF7E90;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(COConditionTask *)self launchPath];
  v5 = [(COConditionTask *)self arguments];
  v6 = [v5 componentsJoinedByString:@" "];
  v7 = [v3 stringWithFormat:@"%@ %@ (running with PID: %d)", v4, v6, -[COConditionTask processIdentifier](self, "processIdentifier")];

  return v7;
}

- (void)initWithCommand:(uint64_t)a1 arguments:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a2 componentsJoinedByString:@" "];
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "COCondition Task Create: %@, %@", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)waitForTaskWithTimeout:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 launchPath];
  v2 = [v1 lastPathComponent];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)launchTask:(int)a1 .cold.1(int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  strerror(a1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)launchTask:(int)a1 .cold.4(int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  strerror(a1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)launchTask:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)launchTask:.cold.7()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x277D85DE8];
}

void __30__COConditionTask_launchTask___block_invoke_2_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) launchPath];
  v2 = [v1 lastPathComponent];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)stdoutFromResults
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 stdoutFname];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stderrFromResults
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 stderrFname];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end