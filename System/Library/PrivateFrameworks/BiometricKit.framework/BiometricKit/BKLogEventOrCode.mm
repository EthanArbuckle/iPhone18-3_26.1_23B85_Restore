@interface BKLogEventOrCode
@end

@implementation BKLogEventOrCode

uint64_t ___BKLogEventOrCode_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];
  _BKLogEventOrCode_isDaemon = [v1 hasSuffix:@"biometrickitd"];

  _BKLogEventOrCode_queue = dispatch_queue_create("com.apple.BKLogEvent.dispatch", 0);

  return MEMORY[0x1EEE66BB8]();
}

void ___BKLogEventOrCode_block_invoke_2(uint64_t a1)
{
  v2 = [NSClassFromString(&cfstr_Biometrickit.isa) manager];
  [v2 logEventOrCode:*(a1 + 32)];
}

@end