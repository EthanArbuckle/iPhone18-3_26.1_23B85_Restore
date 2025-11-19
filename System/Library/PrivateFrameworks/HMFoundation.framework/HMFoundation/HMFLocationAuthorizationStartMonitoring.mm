@interface HMFLocationAuthorizationStartMonitoring
@end

@implementation HMFLocationAuthorizationStartMonitoring

uint64_t ____HMFLocationAuthorizationStartMonitoring_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 72))
  {
    v3 = [objc_alloc(getCLLocationManagerClass()) initWithEffectiveBundleIdentifier:*(*(a1 + 32) + 72) delegate:*(a1 + 32) onQueue:*(*(a1 + 32) + 64)];
  }

  else
  {
    v4 = *(v2 + 80);
    v5 = objc_alloc(getCLLocationManagerClass());
    v6 = *(a1 + 32);
    if (v4)
    {
      v3 = [v5 initWithEffectiveBundlePath:*(v6 + 80) delegate:v6 onQueue:*(v6 + 64)];
    }

    else
    {
      v3 = [v5 _initWithDelegate:*(a1 + 32) onQueue:*(v6 + 64)];
    }
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 88);
  *(v7 + 88) = v3;

  return MEMORY[0x2821F96F8]();
}

@end