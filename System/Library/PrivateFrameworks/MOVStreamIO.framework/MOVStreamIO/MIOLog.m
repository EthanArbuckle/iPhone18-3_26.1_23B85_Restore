@interface MIOLog
+ (BOOL)debugEnabled;
+ (OS_os_log)defaultLog;
+ (void)recheckDebugEnabled;
@end

@implementation MIOLog

+ (void)recheckDebugEnabled
{
  obj = objc_opt_class();
  objc_sync_enter(obj);
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.movstreamio.framework"];
  sMIOLogDebugEnabled = [v2 BOOLForKey:@"DEBUG_LOG"];

  objc_sync_exit(obj);
}

+ (BOOL)debugEnabled
{
  if (debugEnabled_onceToken != -1)
  {
    +[MIOLog debugEnabled];
  }

  return sMIOLogDebugEnabled;
}

+ (OS_os_log)defaultLog
{
  if (defaultLog_onceToken != -1)
  {
    +[MIOLog defaultLog];
  }

  v3 = defaultLog_log;

  return v3;
}

uint64_t __20__MIOLog_defaultLog__block_invoke()
{
  defaultLog_log = os_log_create("com.apple.movstreamio.defaultlog", "MOVStreamIO");

  return MEMORY[0x2821F96F8]();
}

@end