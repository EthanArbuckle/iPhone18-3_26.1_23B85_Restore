@interface DKSyncSerializer
@end

@implementation DKSyncSerializer

uint64_t __35___DKSyncSerializer_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_dispatcher;
  sharedInstance_dispatcher = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end