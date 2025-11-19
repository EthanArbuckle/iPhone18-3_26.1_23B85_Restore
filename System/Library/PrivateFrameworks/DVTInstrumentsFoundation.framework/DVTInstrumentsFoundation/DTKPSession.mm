@interface DTKPSession
+ (int)blessPid:(int)a3;
+ (void)initialize;
- (BOOL)isActive;
- (BOOL)isPaused;
- (BOOL)pause:(id *)a3;
- (BOOL)resume:(id *)a3;
- (BOOL)start:(id *)a3;
- (BOOL)stop:(id *)a3;
- (DTKPSession)initWithConfig:(id)a3 andAggregator:(id)a4;
- (id).cxx_construct;
- (id)_lockKPerf;
- (int)_unlockKperf;
- (void)dealloc;
@end

@implementation DTKPSession

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    DTKPSetupLogging();
  }
}

+ (int)blessPid:(int)a3
{
  if (kperf_bless_set())
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

- (DTKPSession)initWithConfig:(id)a3 andAggregator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DTKPSession;
  v9 = [(DTKPSession *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 11, a3);
    objc_storeStrong(v10 + 12, a4);
    *(v10 + 2) = atomic_fetch_add_explicit(dword_27EE84300, 1u, memory_order_relaxed);
    *(v10 + 104) = 10;
  }

  return v10;
}

- (void)dealloc
{
  v6 = 0;
  [(DTKPSession *)self stop:&v6];
  v3 = v6;
  v4 = v3;
  if (v3)
  {
    NSLog(&cfstr_ErrorStoppingR.isa, v3);
  }

  v5.receiver = self;
  v5.super_class = DTKPSession;
  [(DTKPSession *)&v5 dealloc];
}

- (id)_lockKPerf
{
  v4 = 0;
  v5 = 0;
  atomic_compare_exchange_strong_explicit(&qword_27EE84308, &v4, self, memory_order_release, memory_order_relaxed);
  if (v4)
  {
    v5 = sub_247FAC0A8(@"_lockKPerf: could not lock kperf. Likely another session just started.", -1);
  }

  return v5;
}

- (int)_unlockKperf
{
  v2 = atomic_load(&qword_27EE84308);
  if (v2 != self)
  {
    return -1;
  }

  result = 0;
  atomic_store(0, &qword_27EE84308);
  return result;
}

- (BOOL)start:(id *)a3
{
  v25 = *MEMORY[0x277D85DE8];
  std::mutex::lock((self + 16));
  v5 = *MEMORY[0x277D85F48];
  if (CSTaskIsTranslated())
  {
    v6 = sub_247FAC0A8(@"ktrace cannot trace the system under Rosetta translation", -500);
    if (a3)
    {
      *a3 = v6;
    }

    v7 = 0;
    *(self + 20) = 4;
  }

  else
  {
    v8 = *(self + 20);
    if (v8)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot start session unless it's idle. Current state: %s", sub_247FAC4F4(v8)];
      v10 = sub_247FAC0A8(v9, -500);
      if (a3)
      {
        *a3 = v10;
      }
    }

    else
    {
      v11 = sDTKPLogClient;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v24 = [(DTKPSession *)self sessionID];
        _os_log_impl(&dword_247F67000, v11, OS_LOG_TYPE_INFO, "DTKPSession: Starting recording. ID %d.", buf, 8u);
      }

      v12 = [(DTKPSession *)self _lockKPerf];
      v13 = v12;
      if (a3)
      {
        v13 = 0;
        *a3 = v12;
      }

      if (!v12)
      {
        [(DTKPSession *)self recordingPriority];
        if (kperf_bless_allow_preemption())
        {
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not set the recording priority."];
          v15 = sub_247FAC0A8(v14, -6);
          if (a3)
          {
            *a3 = v15;
          }

          else
          {
            v13 = v15;
          }
        }

        else
        {
          v16 = [*(self + 11) apply];
          v17 = v16;
          if (a3)
          {
            *a3 = v16;
            v17 = v13;
          }

          if (v16)
          {
            v13 = v17;
          }

          else
          {
            v21 = [*(self + 12) start];
            v13 = v21;
            if (a3)
            {
              *a3 = v21;
              v13 = v17;
            }

            if (!v21)
            {
              v7 = 1;
              *(self + 20) = 1;
              goto LABEL_29;
            }

            v22 = [*(self + 11) reset];
          }
        }

        [(DTKPSession *)self _unlockKperf];
      }

      *(self + 20) = 4;
      if (!a3)
      {
        v18 = v13;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [v18 localizedDescription];
          objc_claimAutoreleasedReturnValue();
          sub_24802E6BC();
        }
      }
    }

    v7 = 0;
  }

LABEL_29:
  std::mutex::unlock((self + 16));
  v19 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)pause:(id *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  std::mutex::lock((self + 16));
  v5 = *(self + 20);
  if (v5 != 1)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot pause session session unless it's running. Current state: %s", sub_247FAC4F4(v5)];
    v12 = sub_247FAC0A8(v11, -500);

    v13 = v12;
    v14 = v13;
    if (a3)
    {
      v15 = v13;
      *a3 = v14;
    }

    else
    {
      v17 = v13;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [v17 localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_24802E6BC();
      }
    }

    goto LABEL_18;
  }

  v6 = sDTKPLogClient;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v22 = [(DTKPSession *)self sessionID];
    _os_log_impl(&dword_247F67000, v6, OS_LOG_TYPE_INFO, "DTKPSession: Pausing recording. ID %d.", buf, 8u);
  }

  v7 = [*(self + 12) pause];
  if (v7)
  {
    v8 = v7;
    v9 = v8;
    if (a3)
    {
      v10 = v8;
      *a3 = v9;
    }

    else
    {
      v18 = v8;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [v18 localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_24802E6BC();
      }
    }

    *(self + 20) = 4;
LABEL_18:
    v16 = 0;
    goto LABEL_19;
  }

  *(self + 20) = 2;
  v16 = 1;
LABEL_19:
  std::mutex::unlock((self + 16));
  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)resume:(id *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  std::mutex::lock((self + 16));
  v5 = *(self + 20);
  if (v5 != 2)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot resume session unless it's paused. Current state: %s", sub_247FAC4F4(v5)];
    v12 = sub_247FAC0A8(v11, -500);

    v13 = v12;
    v14 = v13;
    if (a3)
    {
      v15 = v13;
      *a3 = v14;
    }

    else
    {
      v17 = v13;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [v17 localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_24802E6BC();
      }
    }

    goto LABEL_18;
  }

  v6 = sDTKPLogClient;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v22 = [(DTKPSession *)self sessionID];
    _os_log_impl(&dword_247F67000, v6, OS_LOG_TYPE_INFO, "DTKPSession: Resuming recording. ID %d.", buf, 8u);
  }

  v7 = [*(self + 12) resume];
  if (v7)
  {
    v8 = v7;
    v9 = v8;
    if (a3)
    {
      v10 = v8;
      *a3 = v9;
    }

    else
    {
      v18 = v8;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [v18 localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_24802E6BC();
      }
    }

    *(self + 20) = 4;
LABEL_18:
    v16 = 0;
    goto LABEL_19;
  }

  v16 = 1;
  *(self + 20) = 1;
LABEL_19:
  std::mutex::unlock((self + 16));
  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)stop:(id *)a3
{
  v30 = *MEMORY[0x277D85DE8];
  std::mutex::lock((self + 16));
  v5 = *(self + 20);
  if ((v5 - 1) < 2)
  {
    v12 = sDTKPLogClient;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v29 = [(DTKPSession *)self sessionID];
      _os_log_impl(&dword_247F67000, v12, OS_LOG_TYPE_INFO, "DTKPSession: Stopping recording. ID %d.", buf, 8u);
    }

    v13 = [*(self + 12) stop];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
      v16 = v15;
      if (a3)
      {
        v17 = v15;
        *a3 = v16;
      }

      else
      {
        v18 = v15;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [v18 localizedDescription];
          objc_claimAutoreleasedReturnValue();
          sub_24802E6BC();
        }
      }
    }

    v19 = [*(self + 11) reset];

    if (v19)
    {
      v20 = v19;
      v21 = v20;
      if (a3)
      {
        v22 = v20;
        *a3 = v21;
      }

      else
      {
        v24 = v20;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [v24 localizedDescription];
          objc_claimAutoreleasedReturnValue();
          sub_24802E6BC();
        }
      }
    }

    else if (!v14)
    {
      v23 = 3;
      v6 = 1;
LABEL_25:
      *(self + 20) = v23;

      goto LABEL_26;
    }

    v6 = 0;
    v23 = 4;
    goto LABEL_25;
  }

  v6 = 1;
  if (v5 == 4)
  {
LABEL_26:
    [(DTKPSession *)self _unlockKperf];
    goto LABEL_31;
  }

  if (!v5)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot stop a session which is currently idle."];
    v8 = sub_247FAC0A8(v7, -500);

    v9 = v8;
    v10 = v9;
    if (a3)
    {
      v11 = v9;
      *a3 = v10;
    }

    else
    {
      v25 = v9;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [v25 localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_24802E6BC();
      }
    }

    v6 = 0;
  }

LABEL_31:
  std::mutex::unlock((self + 16));
  v26 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isActive
{
  std::mutex::lock((self + 16));
  v3 = (*(self + 20) - 1) < 2;
  std::mutex::unlock((self + 16));
  return v3;
}

- (BOOL)isPaused
{
  std::mutex::lock((self + 16));
  v3 = *(self + 20) == 2;
  std::mutex::unlock((self + 16));
  return v3;
}

- (id).cxx_construct
{
  *(self + 2) = 850045863;
  *(self + 24) = 0u;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 9) = 0;
  return self;
}

@end