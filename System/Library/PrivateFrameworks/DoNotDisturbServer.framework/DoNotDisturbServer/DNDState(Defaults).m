@interface DNDState(Defaults)
+ (id)fallbackState;
@end

@implementation DNDState(Defaults)

+ (id)fallbackState
{
  v0 = objc_alloc(MEMORY[0x277D05AA0]);
  v1 = [MEMORY[0x277CBEAA8] distantPast];
  v2 = [MEMORY[0x277CBEAA8] distantFuture];
  v3 = [v0 initWithSuppressionState:0 activeModeAssertionMetadata:MEMORY[0x277CBEBF8] startDate:v1 userVisibleTransitionDate:v2 userVisibleTransitionLifetimeType:0 activeModeConfiguration:0];

  return v3;
}

@end