@interface DTKPSession
+ (int)blessPid:(int)pid;
+ (void)initialize;
- (BOOL)isActive;
- (BOOL)isPaused;
- (BOOL)pause:(id *)pause;
- (BOOL)resume:(id *)resume;
- (BOOL)start:(id *)start;
- (BOOL)stop:(id *)stop;
- (DTKPSession)initWithConfig:(id)config andAggregator:(id)aggregator;
- (id).cxx_construct;
- (id)_lockKPerf;
- (int)_unlockKperf;
- (void)dealloc;
@end

@implementation DTKPSession

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    DTKPSetupLogging();
  }
}

+ (int)blessPid:(int)pid
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

- (DTKPSession)initWithConfig:(id)config andAggregator:(id)aggregator
{
  configCopy = config;
  aggregatorCopy = aggregator;
  v12.receiver = self;
  v12.super_class = DTKPSession;
  v9 = [(DTKPSession *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 11, config);
    objc_storeStrong(v10 + 12, aggregator);
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

- (BOOL)start:(id *)start
{
  v25 = *MEMORY[0x277D85DE8];
  std::mutex::lock((self + 16));
  v5 = *MEMORY[0x277D85F48];
  if (CSTaskIsTranslated())
  {
    v6 = sub_247FAC0A8(@"ktrace cannot trace the system under Rosetta translation", -500);
    if (start)
    {
      *start = v6;
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
      if (start)
      {
        *start = v10;
      }
    }

    else
    {
      v11 = sDTKPLogClient;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        sessionID = [(DTKPSession *)self sessionID];
        _os_log_impl(&dword_247F67000, v11, OS_LOG_TYPE_INFO, "DTKPSession: Starting recording. ID %d.", buf, 8u);
      }

      _lockKPerf = [(DTKPSession *)self _lockKPerf];
      v13 = _lockKPerf;
      if (start)
      {
        v13 = 0;
        *start = _lockKPerf;
      }

      if (!_lockKPerf)
      {
        [(DTKPSession *)self recordingPriority];
        if (kperf_bless_allow_preemption())
        {
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not set the recording priority."];
          v15 = sub_247FAC0A8(v14, -6);
          if (start)
          {
            *start = v15;
          }

          else
          {
            v13 = v15;
          }
        }

        else
        {
          apply = [*(self + 11) apply];
          v17 = apply;
          if (start)
          {
            *start = apply;
            v17 = v13;
          }

          if (apply)
          {
            v13 = v17;
          }

          else
          {
            start = [*(self + 12) start];
            v13 = start;
            if (start)
            {
              *start = start;
              v13 = v17;
            }

            if (!start)
            {
              v7 = 1;
              *(self + 20) = 1;
              goto LABEL_29;
            }

            reset = [*(self + 11) reset];
          }
        }

        [(DTKPSession *)self _unlockKperf];
      }

      *(self + 20) = 4;
      if (!start)
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

- (BOOL)pause:(id *)pause
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
    if (pause)
    {
      v15 = v13;
      *pause = v14;
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
    sessionID = [(DTKPSession *)self sessionID];
    _os_log_impl(&dword_247F67000, v6, OS_LOG_TYPE_INFO, "DTKPSession: Pausing recording. ID %d.", buf, 8u);
  }

  pause = [*(self + 12) pause];
  if (pause)
  {
    v8 = pause;
    v9 = v8;
    if (pause)
    {
      v10 = v8;
      *pause = v9;
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

- (BOOL)resume:(id *)resume
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
    if (resume)
    {
      v15 = v13;
      *resume = v14;
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
    sessionID = [(DTKPSession *)self sessionID];
    _os_log_impl(&dword_247F67000, v6, OS_LOG_TYPE_INFO, "DTKPSession: Resuming recording. ID %d.", buf, 8u);
  }

  resume = [*(self + 12) resume];
  if (resume)
  {
    v8 = resume;
    v9 = v8;
    if (resume)
    {
      v10 = v8;
      *resume = v9;
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

- (BOOL)stop:(id *)stop
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
      sessionID = [(DTKPSession *)self sessionID];
      _os_log_impl(&dword_247F67000, v12, OS_LOG_TYPE_INFO, "DTKPSession: Stopping recording. ID %d.", buf, 8u);
    }

    stop = [*(self + 12) stop];
    v14 = stop;
    if (stop)
    {
      v15 = stop;
      v16 = v15;
      if (stop)
      {
        v17 = v15;
        *stop = v16;
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

    reset = [*(self + 11) reset];

    if (reset)
    {
      v20 = reset;
      v21 = v20;
      if (stop)
      {
        v22 = v20;
        *stop = v21;
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
    if (stop)
    {
      v11 = v9;
      *stop = v10;
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