@interface CLFAppAvailabilityObserver
@end

@implementation CLFAppAvailabilityObserver

void __76___CLFAppAvailabilityObserver_appProtectionSubjectsChanged_forSubscription___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) handler];
  v1[2]();
}

@end