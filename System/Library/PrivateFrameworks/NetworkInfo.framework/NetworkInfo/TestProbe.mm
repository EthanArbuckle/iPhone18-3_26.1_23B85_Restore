@interface TestProbe
+ (id)testProbeStatusString:(unsigned int)string;
- (BOOL)isEqual:(id)equal;
- (BOOL)startPeriodicTimerAt:(unint64_t)at repeatInterval:(unint64_t)interval;
- (TestProbe)initWithQueue:(id)queue;
- (void)cancelTest:(id)test;
- (void)stopPeriodicTimer;
- (void)stopTest;
@end

@implementation TestProbe

- (TestProbe)initWithQueue:(id)queue
{
  queueCopy = queue;
  v10.receiver = self;
  v10.super_class = TestProbe;
  v5 = [(TestProbe *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_queue = queueCopy;
    v5->_uuid = [MEMORY[0x277CCAD78] UUID];
    v6->_status = -1;
    array = [MEMORY[0x277CBEB18] array];
    probeOutputFilePaths = v6->_probeOutputFilePaths;
    v6->_probeOutputFilePaths = array;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uuid = [(TestProbe *)equalCopy uuid];
      v6 = [uuid isEqual:self->_uuid];
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
  selfCopy = self;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v5 = 136315650;
  v6 = "[TestProbe stopTest]";
  v7 = 1024;
  v8 = 49;
  v9 = 2112;
  v10 = v3;
  _os_log_debug_impl(&dword_25B859000, selfCopy, OS_LOG_TYPE_DEBUG, "%s:%u - Nothing to stop for this probe %@", &v5, 0x1Cu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)cancelTest:(id)test
{
  testCopy = test;
  [(TestProbe *)self stopTest];
  v4 = testCopy;
  if (testCopy)
  {
    (*(testCopy + 2))(testCopy, 4);
    v4 = testCopy;
  }
}

+ (id)testProbeStatusString:(unsigned int)string
{
  if (string + 1 > 6)
  {
    return @"UNEXPECTED PROBE STATUS!";
  }

  else
  {
    return *(&off_279968378 + string + 1);
  }
}

- (BOOL)startPeriodicTimerAt:(unint64_t)at repeatInterval:(unint64_t)interval
{
  queue = [(TestProbe *)self queue];
  v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);

  if (v8)
  {
    dispatch_source_set_timer(v8, at, interval, 0);
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __49__TestProbe_startPeriodicTimerAt_repeatInterval___block_invoke;
    v14 = &unk_2799682B8;
    selfCopy = self;
    v9 = v8;
    v16 = v9;
    dispatch_source_set_event_handler(v9, &v11);
    [(TestProbe *)self setPeriodicTimer:v9, v11, v12, v13, v14, selfCopy];
    dispatch_resume(v9);
  }

  return v8 != 0;
}

- (void)stopPeriodicTimer
{
  periodicTimer = [(TestProbe *)self periodicTimer];

  if (periodicTimer)
  {
    periodicTimer2 = [(TestProbe *)self periodicTimer];
    dispatch_source_cancel(periodicTimer2);

    [(TestProbe *)self setPeriodicTimer:0];
  }
}

@end