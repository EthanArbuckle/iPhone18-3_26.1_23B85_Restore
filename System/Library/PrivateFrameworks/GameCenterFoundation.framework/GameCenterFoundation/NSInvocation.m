@interface NSInvocation
@end

@implementation NSInvocation

void __55__NSInvocation_GKProxyHelpers___gkClearCopiedArguments__block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  [*(a1 + 32) getArgument:&v5 atIndex:a2];
  v4 = 0;
  [*(a1 + 32) setArgument:&v4 atIndex:a2];
}

void __59__NSInvocation_GKProxyHelpers___gkCallbackWithError_queue___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _gkInvokeOnce];

  objc_autoreleasePoolPop(v2);
}

@end