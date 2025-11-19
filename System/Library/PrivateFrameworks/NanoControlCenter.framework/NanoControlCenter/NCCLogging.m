@interface NCCLogging
+ (OS_os_log)ncc;
@end

@implementation NCCLogging

+ (OS_os_log)ncc
{
  if (ncc_onceToken[0] != -1)
  {
    +[NCCLogging ncc];
  }

  v3 = ncc_log;

  return v3;
}

uint64_t __17__NCCLogging_ncc__block_invoke()
{
  ncc_log = os_log_create("com.apple.nanocontrolcenter", "general");

  return MEMORY[0x2821F96F8]();
}

@end