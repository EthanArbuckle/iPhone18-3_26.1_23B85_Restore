@interface CSViolationHandlerService
+ (id)_sharedInstance;
+ (void)run;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)_init;
- (void)_start;
- (void)initializeHandlers;
- (void)reportExcessiveCPUUseBy:(id)by pid:(unint64_t)pid path:(id)path endTime:(mach_timespec)time observedValue:(int64_t)value observationWindow:(int64_t)window limitValue:(int64_t)limitValue limitWindow:(int64_t)self0 fatal:(BOOL)self1;
@end

@implementation CSViolationHandlerService

+ (void)run
{
  if (run_onceToken_0 != -1)
  {
    +[CSViolationHandlerService run];
  }
}

void __32__CSViolationHandlerService_run__block_invoke()
{
  v0 = +[CSViolationHandlerService _sharedInstance];
  [v0 _start];
}

+ (id)_sharedInstance
{
  if (_sharedInstance_onceToken != -1)
  {
    +[CSViolationHandlerService _sharedInstance];
  }

  v3 = _sharedInstance___sharedInstance;

  return v3;
}

uint64_t __44__CSViolationHandlerService__sharedInstance__block_invoke()
{
  _sharedInstance___sharedInstance = [[CSViolationHandlerService alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v10.receiver = self;
  v10.super_class = CSViolationHandlerService;
  v2 = [(CSViolationHandlerService *)&v10 initWithMachServiceName:@"com.apple.computesafeguards.violationhandler"];
  if (v2)
  {
    v3 = [CSLogger logForCategory:@"ViolationHandler"];
    logger = v2->_logger;
    v2->_logger = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.computesafeguards.violationhandler", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    [(CSViolationHandlerService *)v2 setDelegate:v2];
    [(CSViolationHandlerService *)v2 initializeHandlers];
    v8 = v2;
  }

  return v2;
}

- (void)_start
{
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_INFO, "Started CSViolationHandlerService", v4, 2u);
  }

  [(CSViolationHandlerService *)self activate];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v12 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285711248];
  [connectionCopy setExportedInterface:v6];

  [connectionCopy setExportedObject:self];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_INFO))
  {
    v8 = logger;
    v11[0] = 67109120;
    v11[1] = [connectionCopy processIdentifier];
    _os_log_impl(&dword_243DC3000, v8, OS_LOG_TYPE_INFO, "Accepted new connection from pid %d", v11, 8u);
  }

  [connectionCopy resume];

  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)initializeHandlers
{
  v3 = +[CSExcessiveCPUViolationHandler sharedInstance];
  cpuViolationHandler = self->_cpuViolationHandler;
  self->_cpuViolationHandler = v3;

  MEMORY[0x2821F96F8]();
}

- (void)reportExcessiveCPUUseBy:(id)by pid:(unint64_t)pid path:(id)path endTime:(mach_timespec)time observedValue:(int64_t)value observationWindow:(int64_t)window limitValue:(int64_t)limitValue limitWindow:(int64_t)self0 fatal:(BOOL)self1
{
  v26 = *MEMORY[0x277D85DE8];
  byCopy = by;
  pathCopy = path;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v23 = byCopy;
    v24 = 2048;
    pidCopy = pid;
    _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_INFO, "Received CPU violation for process: %@, pid: %llu.", buf, 0x16u);
  }

  LOBYTE(v20) = fatal;
  [(CSExcessiveCPUViolationHandler *)self->_cpuViolationHandler handleViolationByProcess:byCopy pid:pid path:pathCopy endTime:time observedValue:value observationWindow:window limitValue:limitValue limitWindow:limitWindow fatal:v20];

  v19 = *MEMORY[0x277D85DE8];
}

@end