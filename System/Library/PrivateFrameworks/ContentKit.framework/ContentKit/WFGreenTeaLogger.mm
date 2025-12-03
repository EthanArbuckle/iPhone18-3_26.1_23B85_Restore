@interface WFGreenTeaLogger
+ (id)sharedLogger;
+ (void)log:(id)log;
- (WFGreenTeaLogger)init;
- (void)dealloc;
- (void)log:(id)log;
@end

@implementation WFGreenTeaLogger

- (void)log:(id)log
{
  v9 = *MEMORY[0x277D85DE8];
  logCopy = log;
  [(WFGreenTeaLogger *)self logger];
  v5 = getCTGreenTeaOsLogHandle();
  v6 = v5;
  if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138543362;
    v8 = logCopy;
    _os_log_impl(&dword_21E1BD000, v6, OS_LOG_TYPE_INFO, "%{public}@", &v7, 0xCu);
  }
}

- (void)dealloc
{
  ct_green_tea_logger_destroy();
  v3.receiver = self;
  v3.super_class = WFGreenTeaLogger;
  [(WFGreenTeaLogger *)&v3 dealloc];
}

- (WFGreenTeaLogger)init
{
  v5.receiver = self;
  v5.super_class = WFGreenTeaLogger;
  v2 = [(WFGreenTeaLogger *)&v5 init];
  if (v2)
  {
    v2->_logger = ct_green_tea_logger_create();
    v3 = v2;
  }

  return v2;
}

+ (void)log:(id)log
{
  logCopy = log;
  v4 = +[WFGreenTeaLogger sharedLogger];
  [v4 log:logCopy];
}

+ (id)sharedLogger
{
  if (sharedLogger_onceToken != -1)
  {
    dispatch_once(&sharedLogger_onceToken, &__block_literal_global_3927);
  }

  v3 = sharedLogger_sharedLogger;

  return v3;
}

uint64_t __32__WFGreenTeaLogger_sharedLogger__block_invoke()
{
  sharedLogger_sharedLogger = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

@end