@interface ClientRenderer
@end

@implementation ClientRenderer

void __23___ClientRenderer_init__block_invoke(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [(dispatch_semaphore_t *)WeakRetained _handleRenderStatsTime:a2 cost:a3];
    dispatch_semaphore_signal(v6[4]);
    WeakRetained = v6;
  }
}

@end