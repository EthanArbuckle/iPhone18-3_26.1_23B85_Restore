@interface CDMemoryUsageIntervalTracker
@end

@implementation CDMemoryUsageIntervalTracker

void __47___CDMemoryUsageIntervalTracker_sharedInstance__block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v3 = [v0 processName];

  if (([v3 isEqual:@"coreduetd"] & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"knowledge-agent") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"contextstored") & 1) != 0 || objc_msgSend(v3, "isEqual:", @"ContextStoreAgent"))
  {
    v1 = objc_alloc_init(_CDMemoryUsageIntervalTracker);
    v2 = sharedInstance_instance;
    sharedInstance_instance = v1;
  }
}

@end