@interface ICOSLogCreate
@end

@implementation ICOSLogCreate

void ____ICOSLogCreate_block_invoke()
{
  v3 = [MEMORY[0x29EDBA0B0] processInfo];
  v0 = [v3 processName];
  v1 = os_log_create([ICLoggingDomain UTF8String], objc_msgSend(v0, "UTF8String"));
  v2 = _gICOSLog;
  _gICOSLog = v1;
}

@end