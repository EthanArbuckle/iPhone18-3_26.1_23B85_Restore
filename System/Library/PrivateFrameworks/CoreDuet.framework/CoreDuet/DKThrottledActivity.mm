@interface DKThrottledActivity
@end

@implementation DKThrottledActivity

void __40___DKThrottledActivity_standardInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2 = [v1 initWithStore:v4 namespace:@"_DKThrottledActivity standardInstance"];
  v3 = standardInstance_standardInstance;
  standardInstance_standardInstance = v2;
}

uint64_t __41___DKThrottledActivity_activityThrottler__block_invoke()
{
  v0 = objc_opt_new();
  v1 = activityThrottler_sharedInstances;
  activityThrottler_sharedInstances = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end