@interface HMFHTTPClientHandleReachabilityChange
@end

@implementation HMFHTTPClientHandleReachabilityChange

void ____HMFHTTPClientHandleReachabilityChange_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!a3)
  {
    v5 = WeakRetained;
    [WeakRetained setReachable:1];
    WeakRetained = v5;
  }
}

@end