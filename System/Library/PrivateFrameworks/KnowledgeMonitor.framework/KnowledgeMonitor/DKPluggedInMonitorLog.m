@interface DKPluggedInMonitorLog
@end

@implementation DKPluggedInMonitorLog

uint64_t ___DKPluggedInMonitorLog_block_invoke()
{
  v0 = os_log_create("com.apple.coreduet.monitors", "_DKPluggedInMonitor");
  v1 = _DKPluggedInMonitorLog__pluggedInLog;
  _DKPluggedInMonitorLog__pluggedInLog = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end