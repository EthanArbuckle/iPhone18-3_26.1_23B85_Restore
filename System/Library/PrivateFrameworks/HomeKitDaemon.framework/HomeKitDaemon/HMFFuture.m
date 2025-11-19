@interface HMFFuture
@end

@implementation HMFFuture

uint64_t __35__HMFFuture_HMDUtilities__naFuture__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    [*(a1 + 32) finishWithNoResult];
  }

  [*(a1 + 32) finishWithResult:v3];

  return 1;
}

@end