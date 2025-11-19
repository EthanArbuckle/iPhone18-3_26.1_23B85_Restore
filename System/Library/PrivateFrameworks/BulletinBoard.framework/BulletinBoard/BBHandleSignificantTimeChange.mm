@interface BBHandleSignificantTimeChange
@end

@implementation BBHandleSignificantTimeChange

void ___BBHandleSignificantTimeChange_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  [__server _handleSignificantTimeChange];

  objc_autoreleasePoolPop(v0);
}

@end