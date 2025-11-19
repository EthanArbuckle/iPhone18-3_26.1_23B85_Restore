@interface CATLogFSM
@end

@implementation CATLogFSM

uint64_t ___CATLogFSM_block_invoke()
{
  v0 = os_log_create("com.apple.catalyst", "FSM");
  v1 = _CATLogFSM_logObj;
  _CATLogFSM_logObj = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end