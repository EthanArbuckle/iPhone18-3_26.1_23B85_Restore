@interface TestProbe
+ (id)testProbeStatusString:(unsigned int)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)startPeriodicTimerAt:(unint64_t)a3 repeatInterval:(unint64_t)a4;
- (TestProbe)initWithQueue:(id)a3;
- (void)cancelTest:(id)a3;
- (void)stopPeriodicTimer;
- (void)stopTest;
@end

@implementation TestProbe

- (TestProbe)initWithQueue:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TestProbe;
  v5 = [(TestProbe *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_queue = v4;
    v5->_uuid = [MEMORY[0x277CCAD78] UUID];
    v6->_status = -1;
    v7 = [MEMORY[0x277CBEB18] array];
    probeOutputFilePaths = v6->_probeOutputFilePaths;
    v6->_probeOutputFilePaths = v7;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(TestProbe *)v4 uuid];
      v6 = [v5 isEqual:self->_uuid];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)stopTest
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v5 = 136315650;
  v6 = "[TestProbe stopTest]";
  v7 = 1024;
  v8 = 49;
  v9 = 2112;
  v10 = v3;
  _os_log_debug_impl(&dword_25B859000, v1, OS_LOG_TYPE_DEBUG, "%s:%u - Nothing to stop for this probe %@", &v5, 0x1Cu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)cancelTest:(id)a3
{
  v5 = a3;
  [(TestProbe *)self stopTest];
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 4);
    v4 = v5;
  }
}

+ (id)testProbeStatusString:(unsigned int)a3
{
  if (a3 + 1 > 6)
  {
    return @"UNEXPECTED PROBE STATUS!";
  }

  else
  {
    return *(&off_279968378 + a3 + 1);
  }
}

- (BOOL)startPeriodicTimerAt:(unint64_t)a3 repeatInterval:(unint64_t)a4
{
  v7 = [(TestProbe *)self queue];
  v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v7);

  if (v8)
  {
    dispatch_source_set_timer(v8, a3, a4, 0);
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __49__TestProbe_startPeriodicTimerAt_repeatInterval___block_invoke;
    v14 = &unk_2799682B8;
    v15 = self;
    v9 = v8;
    v16 = v9;
    dispatch_source_set_event_handler(v9, &v11);
    [(TestProbe *)self setPeriodicTimer:v9, v11, v12, v13, v14, v15];
    dispatch_resume(v9);
  }

  return v8 != 0;
}

- (void)stopPeriodicTimer
{
  v3 = [(TestProbe *)self periodicTimer];

  if (v3)
  {
    v4 = [(TestProbe *)self periodicTimer];
    dispatch_source_cancel(v4);

    [(TestProbe *)self setPeriodicTimer:0];
  }
}

@end