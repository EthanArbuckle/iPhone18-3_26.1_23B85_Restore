@interface TDLogger
+ (id)defaultLogger;
+ (id)logger;
- (TDLogger)init;
- (int)verbosity;
- (void)dealloc;
- (void)logErrorWithFormat:(id)a3;
- (void)logExtraWithFormat:(id)a3;
- (void)logInfoWithFormat:(id)a3;
- (void)logMessage:(id)a3 whenVerbosity:(int)a4;
- (void)logWarningWithFormat:(id)a3;
- (void)setVerbosity:(int)a3;
- (void)waitForLoggingToComplete;
@end

@implementation TDLogger

+ (id)logger
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (TDLogger)init
{
  v5.receiver = self;
  v5.super_class = TDLogger;
  v2 = [(TDLogger *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_verbosity = 1;
    if (getenv("CoreUI_LogDistill"))
    {
      v3->_verbosity = 3;
    }

    else
    {
      v3->_loggingQueue = dispatch_queue_create("com.apple.CoreThemeDefinition.logger", 0);
    }
  }

  return v3;
}

+ (id)defaultLogger
{
  if (defaultLogger_onceToken != -1)
  {
    +[TDLogger defaultLogger];
  }

  return defaultLogger_instance;
}

TDLogger *__25__TDLogger_defaultLogger__block_invoke()
{
  result = objc_alloc_init(TDLogger);
  defaultLogger_instance = result;
  return result;
}

- (void)setVerbosity:(int)a3
{
  if (self->_verbosity != a3)
  {
    self->_verbosity = a3;
  }
}

- (int)verbosity
{
  if (self->_logMaxVerbosity)
  {
    return 3;
  }

  else
  {
    return self->_verbosity;
  }
}

- (void)dealloc
{
  loggingQueue = self->_loggingQueue;
  if (loggingQueue)
  {
    dispatch_release(loggingQueue);
  }

  v4.receiver = self;
  v4.super_class = TDLogger;
  [(TDLogger *)&v4 dealloc];
}

- (void)logMessage:(id)a3 whenVerbosity:(int)a4
{
  if ([(TDLogger *)self verbosity]>= a4)
  {
    loggingQueue = self->_loggingQueue;
    if (loggingQueue)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __37__TDLogger_logMessage_whenVerbosity___block_invoke;
      block[3] = &unk_278EBB568;
      block[4] = a3;
      dispatch_async(loggingQueue, block);
    }

    else
    {
      NSLog(&cfstr_Distill.isa, a3);
    }
  }
}

uint64_t __37__TDLogger_logMessage_whenVerbosity___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) UTF8String];

  return puts(v1);
}

- (void)logExtraWithFormat:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:a3 arguments:&v5];
  [(TDLogger *)self logExtra:v4];
}

- (void)logInfoWithFormat:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:a3 arguments:&v5];
  [(TDLogger *)self logInfo:v4];
}

- (void)logWarningWithFormat:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:a3 arguments:&v5];
  [(TDLogger *)self logWarning:v4];
}

- (void)logErrorWithFormat:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:a3 arguments:&v5];
  [(TDLogger *)self logError:v4];
}

- (void)waitForLoggingToComplete
{
  loggingQueue = self->_loggingQueue;
  if (loggingQueue)
  {
    dispatch_sync(loggingQueue, &__block_literal_global_9);
  }
}

@end