@interface Finalize
@end

@implementation Finalize

uint64_t __discoverer_Finalize_block_invoke()
{
  if (MX_FeatureFlags_IsAVODDiscoveryEnhancementEnabled())
  {
    FigRouteDiscoveryManagerRemoveCachedDiscoverers();
  }

  return FigRouteDiscoveryManagerUpdateDiscoveryMode();
}

void __routingContext_Finalize_block_invoke(uint64_t a1)
{
  FigRoutingManagerUnregisterContext(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

@end