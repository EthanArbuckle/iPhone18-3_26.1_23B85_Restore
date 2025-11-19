@interface CDObservationCenter
@end

@implementation CDObservationCenter

uint64_t __38___CDObservationCenter_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_new();
  v3 = sharedInstance_sharedInstance_1;
  sharedInstance_sharedInstance_1 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t __78___CDObservationCenter_addObserverChangesObserver_onName_queue_usingSelector___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  [*(a1 + 32) setArgument:&v5 atIndex:3];
  return [*(a1 + 32) invoke];
}

void __75___CDObservationCenter_addObserverChangesObserver_onName_queue_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectForKeyedSubscript:@"observerCount"];
  (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 32), [v4 unsignedIntegerValue]);
}

@end