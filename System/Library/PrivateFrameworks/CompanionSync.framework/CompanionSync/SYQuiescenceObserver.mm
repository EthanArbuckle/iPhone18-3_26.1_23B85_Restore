@interface SYQuiescenceObserver
@end

@implementation SYQuiescenceObserver

void __54___SYQuiescenceObserver_notifyOnDeallocationComplete___block_invoke(uint64_t a1)
{
  v3 = +[_SYQuiescenceObserver sharedInstance];
  v2 = v3[3];
  objc_sync_enter(v2);
  _CleanupAllocations(v3[3]);
  objc_sync_exit(v2);

  (*(*(a1 + 32) + 16))();
}

@end