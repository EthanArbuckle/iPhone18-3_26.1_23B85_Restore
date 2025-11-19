@interface MPAVLog
@end

@implementation MPAVLog

uint64_t ___MPAVLog_block_invoke()
{
  v0 = os_log_create("com.apple.amp.mediacontrols", "ScreenMirroring");
  v1 = _MPAVLog__log;
  _MPAVLog__log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end