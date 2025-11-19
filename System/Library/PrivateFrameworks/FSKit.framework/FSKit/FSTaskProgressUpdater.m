@interface FSTaskProgressUpdater
+ (id)progressUpdaterWithProgress:(id)a3;
- (FSTaskProgressUpdater)initWithProgress:(id)a3;
- (id)startPhase:(id)a3 parentUnitCount:(int64_t)a4 phaseTotalCount:(int64_t)a5 completedCounter:(const unsigned int *)a6;
- (void)dealloc;
- (void)endPhase:(id)a3;
@end

@implementation FSTaskProgressUpdater

- (FSTaskProgressUpdater)initWithProgress:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = FSTaskProgressUpdater;
  v6 = [(FSTaskProgressUpdater *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parentProgress, a3);
    timerSource = v7->_timerSource;
    v7->_timerSource = 0;

    childProgress = v7->_childProgress;
    v7->_childProgress = 0;
  }

  return v7;
}

+ (id)progressUpdaterWithProgress:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithProgress:v4];

  return v5;
}

- (id)startPhase:(id)a3 parentUnitCount:(int64_t)a4 phaseTotalCount:(int64_t)a5 completedCounter:(const unsigned int *)a6
{
  if (self->_childProgress)
  {
    v7 = fskit_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [FSTaskProgressUpdater startPhase:v7 parentUnitCount:? phaseTotalCount:? completedCounter:?];
    }

    v8 = fs_errorForPOSIXError(22);
  }

  else
  {
    [(NSProgress *)self->_parentProgress setLocalizedDescription:a3];
    v12 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:a5];
    childProgress = self->_childProgress;
    self->_childProgress = v12;

    [(NSProgress *)self->_parentProgress addChild:self->_childProgress withPendingUnitCount:a4];
    v14 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, 0);
    timerSource = self->_timerSource;
    self->_timerSource = v14;

    v16 = self->_timerSource;
    if (v16)
    {
      v17 = dispatch_time(0, 1000000000);
      dispatch_source_set_timer(v16, v17, 0x3B9ACA00uLL, 0x5F5E100uLL);
      v18 = [(FSTaskProgressUpdater *)self childProgress];
      v19 = self->_timerSource;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __85__FSTaskProgressUpdater_startPhase_parentUnitCount_phaseTotalCount_completedCounter___block_invoke;
      v22[3] = &unk_278FED1C8;
      v23 = v18;
      v24 = a6;
      v20 = v18;
      dispatch_source_set_event_handler(v19, v22);
      dispatch_resume(self->_timerSource);
    }

    v8 = 0;
  }

  return v8;
}

- (void)endPhase:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_childProgress)
  {
    timerSource = self->_timerSource;
    v9 = v5;
    if (timerSource)
    {
      dispatch_source_cancel(timerSource);
      v7 = self->_timerSource;
      self->_timerSource = 0;
    }

    [(NSProgress *)self->_parentProgress setLocalizedDescription:v9];
    [(NSProgress *)self->_childProgress setCompletedUnitCount:[(NSProgress *)self->_childProgress totalUnitCount]];
    childProgress = self->_childProgress;
    self->_childProgress = 0;

    v5 = v9;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)dealloc
{
  timerSource = self->_timerSource;
  if (timerSource)
  {
    dispatch_source_cancel(timerSource);
    v4 = self->_timerSource;
    self->_timerSource = 0;
  }

  v5.receiver = self;
  v5.super_class = FSTaskProgressUpdater;
  [(FSTaskProgressUpdater *)&v5 dealloc];
}

- (void)startPhase:(uint64_t)a1 parentUnitCount:(NSObject *)a2 phaseTotalCount:completedCounter:.cold.1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 8) localizedDescription];
  v5 = 136315394;
  v6 = "[FSTaskProgressUpdater startPhase:parentUnitCount:phaseTotalCount:completedCounter:]";
  v7 = 2112;
  v8 = v3;
  _os_log_fault_impl(&dword_24A929000, a2, OS_LOG_TYPE_FAULT, "%s missing endPhase call for %@", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end