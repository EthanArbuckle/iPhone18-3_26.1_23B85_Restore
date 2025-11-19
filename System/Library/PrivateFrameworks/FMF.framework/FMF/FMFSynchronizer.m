@interface FMFSynchronizer
- (FMFSynchronizer)initWithDescription:(id)a3 andTimeout:(double)a4;
- (id)loggingID;
- (void)signal;
- (void)wait;
@end

@implementation FMFSynchronizer

- (FMFSynchronizer)initWithDescription:(id)a3 andTimeout:(double)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = FMFSynchronizer;
  v8 = [(FMFSynchronizer *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_info, a3);
    v9->_timeout = a4;
    v10 = dispatch_semaphore_create(0);
    sem = v9->_sem;
    v9->_sem = v10;
  }

  return v9;
}

- (void)signal
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(FMFSynchronizer *)self sem];
  dispatch_semaphore_signal(v3);

  v4 = LogCategory_Daemon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(FMFSynchronizer *)self info];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_24A33F000, v4, OS_LOG_TYPE_DEFAULT, "Signaling end of wait for %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)wait
{
  v22 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v4 = v3;
  [(FMFSynchronizer *)self timeout];
  v6 = dispatch_time(0, (v5 * 1000000000.0));
  v7 = [(FMFSynchronizer *)self sem];
  v8 = dispatch_semaphore_wait(v7, v6);

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v10 = v9;
  v11 = LogCategory_Daemon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(FMFSynchronizer *)self info];
    v13 = v12;
    v14 = @"timed out";
    v16 = 134218498;
    v17 = v10 - v4;
    v18 = 2112;
    if (!v8)
    {
      v14 = @"replied";
    }

    v19 = v12;
    v20 = 2112;
    v21 = v14;
    _os_log_impl(&dword_24A33F000, v11, OS_LOG_TYPE_DEFAULT, "Done waiting (%f seconds) for %@. Status: %@", &v16, 0x20u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)loggingID
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(FMFSynchronizer *)self info];
  v5 = [v3 stringWithFormat:@"%@-%@(0x%X)", v4, objc_opt_class(), self];

  return v5;
}

@end