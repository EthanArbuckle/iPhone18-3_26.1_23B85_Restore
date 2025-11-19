@interface COTimerManager(Home)
+ (id)hf_TimerManagerForAccessory:()Home;
@end

@implementation COTimerManager(Home)

+ (id)hf_TimerManagerForAccessory:()Home
{
  v3 = a3;
  v4 = objc_alloc_init(_HFTimerConnectionProvider);
  v5 = [objc_alloc(MEMORY[0x277CFD0F0]) initForAccessory:v3 withConnectionProvider:v4];

  return v5;
}

@end