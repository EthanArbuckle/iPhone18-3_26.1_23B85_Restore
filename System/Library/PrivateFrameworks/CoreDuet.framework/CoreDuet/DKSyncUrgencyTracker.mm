@interface DKSyncUrgencyTracker
@end

@implementation DKSyncUrgencyTracker

uint64_t __39___DKSyncUrgencyTracker_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_tracker;
  sharedInstance_tracker = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end