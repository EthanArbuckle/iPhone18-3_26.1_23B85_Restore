@interface HKGraphTileDelayedRendererReleaseManager
@end

@implementation HKGraphTileDelayedRendererReleaseManager

uint64_t __54___HKGraphTileDelayedRendererReleaseManager_singleton__block_invoke(uint64_t a1)
{
  singleton_singletonDelayedRendererReleaseManager = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

@end