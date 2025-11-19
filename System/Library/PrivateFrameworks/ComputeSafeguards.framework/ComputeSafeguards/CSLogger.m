@interface CSLogger
+ (id)logForCategory:(id)a3;
+ (void)initialize;
@end

@implementation CSLogger

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    +[CSLogger initialize];
  }
}

void __22__CSLogger_initialize__block_invoke()
{
  v0 = os_log_create("com.apple.powerexceptionsd", "default");
  v1 = csLog;
  csLog = v0;

  v2 = os_log_create("com.apple.powerexceptionsd", "PowerExceptions");
  v3 = signpostLog;
  signpostLog = v2;

  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = logCategories;
  logCategories = v4;

  lock = 0;
}

+ (id)logForCategory:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock(&lock);
  v4 = [logCategories objectForKeyedSubscript:v3];
  if (!v4)
  {
    v4 = os_log_create("com.apple.powerexceptionsd", [v3 UTF8String]);
  }

  [logCategories setObject:v4 forKeyedSubscript:v3];
  os_unfair_lock_unlock(&lock);

  return v4;
}

@end