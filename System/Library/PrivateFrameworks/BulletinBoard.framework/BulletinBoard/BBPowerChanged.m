@interface BBPowerChanged
@end

@implementation BBPowerChanged

void ___BBPowerChanged_block_invoke_2()
{
  v0 = objc_autoreleasePoolPush();
  [__server _handleSystemWake];

  objc_autoreleasePoolPop(v0);
}

void ___BBPowerChanged_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  [__server _handleSystemSleep];

  objc_autoreleasePoolPop(v0);
}

@end