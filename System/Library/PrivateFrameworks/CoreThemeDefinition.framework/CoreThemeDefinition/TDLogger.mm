@interface TDLogger
+ (id)defaultLogger;
+ (id)logger;
- (TDLogger)init;
- (int)verbosity;
- (void)dealloc;
- (void)logErrorWithFormat:(id)format;
- (void)logExtraWithFormat:(id)format;
- (void)logInfoWithFormat:(id)format;
- (void)logMessage:(id)message whenVerbosity:(int)verbosity;
- (void)logWarningWithFormat:(id)format;
- (void)setVerbosity:(int)verbosity;
- (void)waitForLoggingToComplete;
@end

@implementation TDLogger

+ (id)logger
{
  v2 = objc_alloc_init(self);

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

- (void)setVerbosity:(int)verbosity
{
  if (self->_verbosity != verbosity)
  {
    self->_verbosity = verbosity;
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

- (void)logMessage:(id)message whenVerbosity:(int)verbosity
{
  if ([(TDLogger *)self verbosity]>= verbosity)
  {
    loggingQueue = self->_loggingQueue;
    if (loggingQueue)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __37__TDLogger_logMessage_whenVerbosity___block_invoke;
      block[3] = &unk_278EBB568;
      block[4] = message;
      dispatch_async(loggingQueue, block);
    }

    else
    {
      NSLog(&cfstr_Distill.isa, message);
    }
  }
}

uint64_t __37__TDLogger_logMessage_whenVerbosity___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) UTF8String];

  return puts(v1);
}

- (void)logExtraWithFormat:(id)format
{
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:format arguments:&v5];
  [(TDLogger *)self logExtra:v4];
}

- (void)logInfoWithFormat:(id)format
{
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:format arguments:&v5];
  [(TDLogger *)self logInfo:v4];
}

- (void)logWarningWithFormat:(id)format
{
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:format arguments:&v5];
  [(TDLogger *)self logWarning:v4];
}

- (void)logErrorWithFormat:(id)format
{
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:format arguments:&v5];
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